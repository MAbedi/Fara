unit CategoresDetailNote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, StdCtrls, DBActns, ActnList, Buttons, ExtCtrls, db,
  ADODB, DBCtrls, Mask, Menus, ppDB, ppDBPipe, ppBands, ppClass, ppVar,
  ppCtrls, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppParameter,
  ppDesignLayer, System.Actions;

type
  TCategoresDetailNoteF = class(TTemplate4F)
    qrydetailNote: TADOQuery;
    srcdetailNote: TDataSource;
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
    qrydetail: TADOQuery;
    Bevel3: TBevel;
    qrydetailNoteID: TIntegerField;
    qrydetailNoteTopicCode: TLargeintField;
    qrydetailNoteDetailCode: TIntegerField;
    qrydetailNoteNote: TMemoField;
    qrydetailNoteNoteDate: TStringField;
    qrydetailNoteAttachFileName: TStringField;
    qrydetailNoteMakeDate: TDateTimeField;
    GroupBox1: TGroupBox;
    okPanel: TPanel;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    DBText4: TDBText;
    BitBtn1: TBitBtn;
    SrcDetail: TDataSource;
    srcCategories: TDataSource;
    actExit: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    BitBtn2: TBitBtn;
    actPrint: TAction;
    DBMemo1: TDBMemo;
    Popprint: TPopupMenu;
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
    ppLabel5: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    qrydetailNoteCompanyCode: TIntegerField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure srcdetailNoteStateChange(Sender: TObject);
    procedure qrydetailNoteAfterInsert(DataSet: TDataSet);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qrydetailNoteBeforeDelete(DataSet: TDataSet);
    procedure qrydetailNoteAfterPost(DataSet: TDataSet);
    procedure qrydetailNoteBeforePost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Enter(topic, detail, CompanyCode: Integer);
    { Public declarations }
  end;

var
  CategoresDetailNoteF: TCategoresDetailNoteF;

implementation

uses Dm, GlobalPro, mmessage;

{$R *.dfm}

procedure TCategoresDetailNoteF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
    DBEdit4.Field.Value := ExtractFileName(OpenDialog1.FileName);
end;

procedure TCategoresDetailNoteF.Enter(topic, detail, CompanyCode: Integer);
begin
  CategoresDetailNoteF := TCategoresDetailNoteF.Create(Application);
  with CategoresDetailNoteF do
    try
      with qrydetail do
      begin
        Active := False;
        Parameters.ParamByName('DetailCode').Value := detail;
        Parameters.ParamByName('companycode').Value := CompanyCode;
        Active := True;
      end; // with
      with qryCategories do
      begin
        Active := False;
        Parameters.ParamByName('TopicCode').Value := topic;
        Active := True;
      end; // with
      with qrydetailNote do
      begin
        Active := False;
        Parameters.ParamByName('TopicCode').Value := topic;
        Parameters.ParamByName('DetailCode').Value := detail;
        Parameters.ParamByName('CompanyCode').Value := CompanyCode;
        Active := True;
      end; // with
      ShowModal;
    finally
      Free;
    end; // try

end;

procedure TCategoresDetailNoteF.srcdetailNoteStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qrydetailNote.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
end;

procedure TCategoresDetailNoteF.qrydetailNoteAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ID').AsInteger := GetANewCode('','Acc.DetailNotes', 'ID',dmf.adcAccounting);
  DataSet.FieldByName('TopicCode').AsLargeInt :=
    qrydetailNote.Parameters.ParamByName('TopicCode').Value;
  DataSet.FieldByName('CompanyCode').AsInteger :=
    qrydetailNote.Parameters.ParamByName('CompanyCode').Value;
  DataSet.FieldByName('DetailCode').AsInteger :=
    qrydetailNote.Parameters.ParamByName('DetailCode').Value;
  DataSet.FieldByName('NoteDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('MakeDate').AsDateTime := Now;
  DBEdit3.SetFocus;

end;

procedure TCategoresDetailNoteF.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 32 then
    SpeedButton1.Click;
end;

procedure TCategoresDetailNoteF.qrydetailNoteBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› „ÿ„∆‰ Â” Ìœ.') <> mryes then
    Abort;
end;

procedure TCategoresDetailNoteF.qrydetailNoteAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À‹‹»  ‘‹‹œ', 1);
end;

procedure TCategoresDetailNoteF.qrydetailNoteBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qrydetailNote) then
  begin
    Abort;
    exit;
  end; // if

end;

procedure TCategoresDetailNoteF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if qrydetailNoteAttachFileName.AsString <> '' then
    RunDoc(qrydetailNoteAttachFileName.AsString);
end;

procedure TCategoresDetailNoteF.actExitExecute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TCategoresDetailNoteF.ppLabel1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TCategoresDetailNoteF.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TCategoresDetailNoteF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TCategoresDetailNoteF.ppLabel4GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + '  ' + DBText3.Caption + '   ' + DBText1.Caption;
end;

procedure TCategoresDetailNoteF.ppLabel5GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'ﬂœ Ê ⁄‰Ê«‰ „⁄Ì‰  ›’Ì· ' + '  ' + DBText4.Caption + '   ' +
    DBText2.Caption;
end;

procedure TCategoresDetailNoteF.actPrintExecute(Sender: TObject);
begin
  inherited;
  Popprint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TCategoresDetailNoteF.N11Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'CategoresDetailNote', nil,nil);
end;

procedure TCategoresDetailNoteF.N21Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'CategoresDetailNote2', nil,nil);
end;

end.
