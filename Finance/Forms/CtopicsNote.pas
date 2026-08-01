unit CtopicsNote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, StdCtrls, DBActns, ActnList, Buttons, ExtCtrls,db,
  ADODB, DBCtrls, Mask, ppDB, ppDBPipe, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, Menus, ppVar,
  ppParameter, ppDesignLayer, System.Actions;

type
  TCtopicsNoteF = class(TTemplate4F)
    qryCTopicNote: TADOQuery;
    srcCtopicNote: TDataSource;
    qryCTopicNoteID: TIntegerField;
    qryCTopicNoteTopicCode: TLargeintField;
    qryCTopicNoteCTopicCode: TIntegerField;
    qryCTopicNoteNote: TMemoField;
    qryCTopicNoteNoteDate: TStringField;
    qryCTopicNoteAttachFileName: TStringField;
    qryCTopicNoteMakeDate: TDateTimeField;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    qryCategories: TADOQuery;
    DBText1: TDBText;
    DBText2: TDBText;
    Bevel2: TBevel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    Label5: TLabel;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetInsert1: TDataSetInsert;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    DBNavigator1: TDBNavigator;
    DBText3: TDBText;
    DBText4: TDBText;
    qryCenterTopic: TADOQuery;
    Bevel3: TBevel;
    srcCenterTopic: TDataSource;
    srcCategories: TDataSource;
    qryCenterTopicCTopicCode: TIntegerField;
    qryCenterTopicCTopicName_L1: TStringField;
    qryCenterTopicCTopicName_L2: TStringField;
    qryCenterTopicLevelID: TIntegerField;
    qryCenterTopicAidNumber: TIntegerField;
    qryCenterTopicAidDate: TStringField;
    qryCenterTopicMakeDate: TDateTimeField;
    BitBtn1: TBitBtn;
    actExit: TAction;
    okPanel: TPanel;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    Button1: TButton;
    actPrint: TAction;
    PopPrint: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppPageStyle1: TppPageStyle;
    ppDBText2: TppDBText;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel4: TppLabel;
    ppLabel10: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLine1: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    procedure SpeedButton1Click(Sender: TObject);
    procedure srcCtopicNoteStateChange(Sender: TObject);
    procedure qryCTopicNoteAfterInsert(DataSet: TDataSet);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryCTopicNoteBeforeDelete(DataSet: TDataSet);
    procedure qryCTopicNoteAfterPost(DataSet: TDataSet);
    procedure qryCTopicNoteBeforePost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
  public
    procedure Enter(tp:Integer;Ctp:Integer);
    { Public declarations }
  end;

var
  CtopicsNoteF: TCtopicsNoteF;

implementation

uses Dm, GlobalPro, mmessage;

{$R *.dfm}
procedure TCtopicsNoteF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
    DBEdit4.Field.Value:=ExtractFileName(OpenDialog1.FileName);
end;

procedure TCtopicsNoteF.Enter(tp,CTp: Integer);
begin
  CtopicsNoteF:=tCtopicsNoteF.Create(Application);
  with CtopicsNoteF do begin
    try
      With qryCategories do begin
        Active:=False;
        Parameters.ParamByName('TopicCode').Value:=tp;
        Active:=True;
      end;//
      With qryCenterTopic do begin
        Active:=False;
        Parameters.ParamByName('CTopicCode').Value:=Ctp;
        Active:=True;
      end;//
      with qryCTopicNote do begin
        Active:=False;
        Parameters.ParamByName('TopicCode').Value:=tp;
        Parameters.ParamByName('CTopicCode').Value:=ctp;
        Active:=True;
      end;//with
      ShowModal;
    finally
      Free;
    end;//try
  end;//with
end;

procedure TCtopicsNoteF.srcCtopicNoteStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qryCTopicNote.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
end;

procedure TCtopicsNoteF.qryCTopicNoteAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ID').AsInteger:=GetANewCode('','Acc.CtopicNotes','ID',dmf.adcAccounting);
  DataSet.Fieldbyname('TopicCode').AsLargeInt:=qryCTopicNote.Parameters.ParamByName('TopicCode').Value;
  DataSet.FieldByName('cTopicCode').AsInteger:=qryCTopicNote.Parameters.ParamByName('cTopicCode').Value;
  DataSet.FieldByName('NoteDate').AsString:=var_glb_CurrentDate;
   DataSet.FieldByName('MakeDate').AsDateTime:=now;
  DBEdit3.SetFocus;
end;

procedure TCtopicsNoteF.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=32 then
    SpeedButton1.Click;
end;

procedure TCtopicsNoteF.qryCTopicNoteBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› „ÿ„∆‰ Â” Ìœ.')<>mryes then Abort;
end;

procedure TCtopicsNoteF.qryCTopicNoteAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À‹‹»  ‘‹‹œ',1);
end;

procedure TCtopicsNoteF.qryCTopicNoteBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryCTopicNote) then begin
   Abort;
   exit;
  end;//if

end;

procedure TCtopicsNoteF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if qryCTopicNoteAttachFileName.AsString<>'' then RunDoc(qryCTopicNoteAttachFileName.AsString);
end;

procedure TCtopicsNoteF.actExitExecute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TCtopicsNoteF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopPrint.Popup(Mouse.CursorPos.X,Mouse.CursorPos.y);

end;

procedure TCtopicsNoteF.ppLabel4GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text:=Text+'   '+DBText3.Caption+'   '+DBText1.Caption;
end;

procedure TCtopicsNoteF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName;
end;

procedure TCtopicsNoteF.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TCtopicsNoteF.N11Click(Sender: TObject);
begin
  inherited;
  try
   qryCTopicNote.DisableControls;
   InitReportFile(ppReport1,'ctopicsNote1',nil,nil)
  finally
   qryCTopicNote.EnableControls;
  end;//try

end;

procedure TCtopicsNoteF.N21Click(Sender: TObject);
begin
  inherited;
  try
   qryCTopicNote.DisableControls;
   InitReportFile(ppReport1,'ctopicsNote2',nil,nil)
  finally
   qryCTopicNote.EnableControls;
  end;//try

end;

procedure TCtopicsNoteF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text)
end;

end.
