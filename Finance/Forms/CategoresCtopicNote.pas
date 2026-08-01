unit CategoresCtopicNote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, StdCtrls, DBActns, ActnList, Buttons, ExtCtrls,db,
  ADODB, DBCtrls, Mask, ppDB, ppDBPipe, ppBands, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, Menus, ppParameter,
  ppDesignLayer, System.Actions;

type
  TCategoresCtopicNoteF = class(TTemplate4F)
    qryCTopicNote: TADOQuery;
    srcCtopicNote: TDataSource;
    qryCTopicNoteID: TIntegerField;
    qryCTopicNoteTopicCode: TLargeintField;
    qryCTopicNoteCTopicCode: TIntegerField;
    qryCTopicNoteNote: TMemoField;
    qryCTopicNoteNoteDate: TStringField;
    qryCTopicNoteAttachFileName: TStringField;
    qryCTopicNoteMakeDate: TDateTimeField;
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
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    BitBtn1: TBitBtn;
    SrccenterTopic: TDataSource;
    SrcCategories: TDataSource;
    actExite: TAction;
    okPanel: TPanel;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    Popprint: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
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
    ppLabel5: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    actprint: TAction;
    procedure SpeedButton1Click(Sender: TObject);
    procedure srcCtopicNoteStateChange(Sender: TObject);
    procedure qryCTopicNoteAfterInsert(DataSet: TDataSet);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryCTopicNoteBeforeDelete(DataSet: TDataSet);
    procedure qryCTopicNoteAfterPost(DataSet: TDataSet);
    procedure qryCTopicNoteBeforePost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure actExiteExecute(Sender: TObject);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure actprintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Enter(tp:Integer;Ctp:Integer);
    { Public declarations }
  end;

var
  CategoresCtopicNoteF: TCategoresCtopicNoteF;

implementation

uses Dm, GlobalPro, mmessage;

{$R *.dfm}
procedure TCategoresCtopicNoteF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
    DBEdit4.Field.Value:=ExtractFileName(OpenDialog1.FileName);
end;

procedure TCategoresCtopicNoteF.Enter(tp,CTp: Integer);
begin
  CategoresCtopicNoteF:=TCategoresCtopicNoteF.Create(Application);
  with CategoresCtopicNoteF  do begin
    try
      with qryCenterTopic do begin
        Active:=False;
        Parameters.ParamByName('CTopicCode').Value:=ctp;
        Active:=True;
      end;//with
      with qryCategories do begin
        Active:=False;
        Parameters.ParamByName('TopicCode').Value:=tp;
        Active:=True;
      end;//with
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

procedure TCategoresCtopicNoteF.srcCtopicNoteStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qryCTopicNote.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
end;

procedure TCategoresCtopicNoteF.qryCTopicNoteAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ID').AsInteger:=GetANewCode('','Acc.CtopicNotes','ID',dmf.adcAccounting);
  DataSet.Fieldbyname('TopicCode').AsLargeInt:=qryCTopicNote.Parameters.ParamByName('TopicCode').Value;
  DataSet.FieldByName('cTopicCode').AsInteger:=qryCTopicNote.Parameters.ParamByName('cTopicCode').Value;
  DataSet.FieldByName('MakeDate').AsDateTime:=now;
  DataSet.FieldByName('NoteDate').AsString:=var_glb_CurrentDate;
  DBEdit3.SetFocus;

end;

procedure TCategoresCtopicNoteF.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=32 then
    SpeedButton1.Click;
end;

procedure TCategoresCtopicNoteF.qryCTopicNoteBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› „ÿ„∆‰ Â” Ìœ.')<>mryes then Abort;
end;

procedure TCategoresCtopicNoteF.qryCTopicNoteAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À‹‹»  ‘‹‹œ',1);
end;

procedure TCategoresCtopicNoteF.qryCTopicNoteBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryCTopicNote) then begin
   Abort;
   exit;
  end;//if

end;

procedure TCategoresCtopicNoteF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if qryCTopicNoteAttachFileName.AsString<>'' then RunDoc(qryCTopicNoteAttachFileName.AsString);
end;

procedure TCategoresCtopicNoteF.actExiteExecute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TCategoresCtopicNoteF.ppLabel3GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName;
end;

procedure TCategoresCtopicNoteF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text)
end;

procedure TCategoresCtopicNoteF.ppLabel6GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TCategoresCtopicNoteF.ppLabel5GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:='ﬂœ Ê ⁄‰Ê«‰ „—ò“ Â“Ì‰Â'+'  '+DBText3.Caption+'   '+DBText1.Caption;
end;

procedure TCategoresCtopicNoteF.ppLabel4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:='ﬂœ Ê ⁄‰Ê«‰ „⁄Ì‰Â«'+'  '+DBText4.Caption+'   '+DBText2.Caption;
end;

procedure TCategoresCtopicNoteF.N11Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1,'CategoresCTopicNote',nil,nil);
end;

procedure TCategoresCtopicNoteF.N21Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1,'CategoresCTopicNote2',nil,nil);
end;

procedure TCategoresCtopicNoteF.actprintExecute(Sender: TObject);
begin
  inherited;
  PopPrint.Popup(Mouse.CursorPos.X,Mouse.CursorPos.y);
end;

end.
