unit topicsNote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, StdCtrls, DBActns, ActnList, Buttons, ExtCtrls,db,
  ADODB, DBCtrls, Mask, ppBands, ppClass, ppCtrls, ppPrnabl, ppCache, ppDB,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, Menus, ppVar, ppParameter,
  ppDesignLayer, System.Actions;

type
  TtopicsNoteF = class(TTemplate4F)
    qryTopicNote: TADOQuery;
    srctopicNote: TDataSource;
    qryTopicNoteID: TIntegerField;
    qryTopicNoteTopicCode: TLargeintField;
    qryTopicNoteNoteDate: TStringField;
    qryTopicNoteAttachFileName: TStringField;
    qryTopicNoteMakeDate: TDateTimeField;
    qryCategories: TADOQuery;
    OpenDialog1: TOpenDialog;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetInsert1: TDataSetInsert;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    srcCategories: TDataSource;
    qryTopicNoteNote_L1: TMemoField;
    qryTopicNoteNote_L2: TMemoField;
    Panel_l1: TPanel;
    Panel_l2: TPanel;
    okPanel: TPanel;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    actExit: TAction;
    Panel2: TPanel;
    Label1: TLabel;
    DBText3: TDBText;
    DBText1: TDBText;
    Bevel3: TBevel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    Lbl_L1: TLabel;
    Lbl_L2: TLabel;
    DBNavigator1: TDBNavigator;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    BitBtn2: TBitBtn;
    PopPrint: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    actPrint: TAction;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine23: TppLine;
    ppLabel2: TppLabel;
    ppLabel1: TppLabel;
    ppLine4: TppLine;
    ppLabel4: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine3: TppLine;
    ppDBText5: TppDBText;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine2: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine6: TppLine;
    procedure SpeedButton1Click(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure srctopicNoteStateChange(Sender: TObject);
    procedure qryTopicNoteAfterInsert(DataSet: TDataSet);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryTopicNoteBeforeDelete(DataSet: TDataSet);
    procedure qryTopicNoteAfterPost(DataSet: TDataSet);
    procedure qryTopicNoteBeforePost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
  public
    procedure Enter(tp:Integer);
    { Public declarations }
  end;

var
  topicsNoteF: TtopicsNoteF;

implementation

uses Dm, GlobalPro, mmessage;

{$R *.dfm}
procedure TtopicsNoteF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
    DBEdit4.Field.Value:=ExtractFileName(OpenDialog1.FileName);
end;

procedure TtopicsNoteF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  DataToExcel(qryTopicNote);
end;

procedure TtopicsNoteF.Enter(tp: Integer);
begin
  topicsNoteF:=TtopicsNoteF.Create(Application);
  with topicsNoteF do begin
    try
      With qryCategories do begin
        Active:=False;
        Parameters.ParamByName('TopicCode').Value:=tp;
        Active:=True;
      end;//
      with qryTopicNote do begin
        Active:=False;
        Parameters.ParamByName('TopicCode').Value:=tp;
        Active:=True;
      end;//with
      ShowModal;
    finally
      Free;
    end;//try
  end;//with
end;

procedure TtopicsNoteF.srctopicNoteStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qryTopicNote.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
end;

procedure TtopicsNoteF.qryTopicNoteAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ID').AsInteger:=GetANewCode('','CategoriesNote','ID',dmf.adcAccounting);
  DataSet.Fieldbyname('TopicCode').AsLargeInt:=qryTopicNote.Parameters.ParamByName('TopicCode').Value;
  DataSet.FieldByName('NoteDate').AsString:=var_glb_CurrentDate;
   DataSet.FieldByName('MakeDate').AsDateTime:=now;
  DBEdit3.SetFocus;
end;

procedure TtopicsNoteF.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=32 then
    SpeedButton1.Click;
end;

procedure TtopicsNoteF.qryTopicNoteBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› „ÿ„∆‰ Â” Ìœ.')<>mryes then Abort;
end;

procedure TtopicsNoteF.qryTopicNoteAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À‹‹»  ‘‹‹œ',1);
end;

procedure TtopicsNoteF.qryTopicNoteBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryTopicNote) then begin
   Abort;
   exit;
  end;//if

end;

procedure TtopicsNoteF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if qryTopicNoteAttachFileName.AsString<>'' then RunDoc(qryTopicNoteAttachFileName.AsString);
end;

procedure TtopicsNoteF.actExitExecute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TtopicsNoteF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  ppReport1.PreviewFormSettings.SinglePageOnly := True;
  ppReport1.Print;
end;

procedure TtopicsNoteF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopPrint.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TtopicsNoteF.N11Click(Sender: TObject);
begin
  inherited;
  try
   qryTopicNote.DisableControls;
   InitReportFile(ppReport1,'topicsNote1',nil,nil)
  finally
   qryTopicNote.EnableControls;
  end;//try
end;

procedure TtopicsNoteF.N21Click(Sender: TObject);
begin
  inherited;
  try
   qryTopicNote.DisableControls;
   InitReportFile(ppReport1,'topicsNote2',nil,nil)
  finally
   qryTopicNote.EnableControls;
  end;//try
end;

procedure TtopicsNoteF.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TtopicsNoteF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
   Text:=APPBank.CompanyName;
end;

procedure TtopicsNoteF.ppLabel4GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text:=Text+'  '+DBText3.Caption+'   '+DBText1.Caption;
end;

procedure TtopicsNoteF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text)
end;

end.
