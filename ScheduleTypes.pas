unit ScheduleTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DBCtrls, Mask, DB, Grids, Vcl.DBGrids, ADODB, ppDB, ppComm,
  ppRelatv, ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppParameter, ppDesignLayer, System.ImageList, System.Actions;

type
  TScheduleTypesF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    qryScheduleTypes: TADOQuery;
    SrcScheduleTypes: TDataSource;
    DBGrid1: TDBGrid;
    qryScheduleTypesCode: TIntegerField;
    qryScheduleTypesName: TStringField;
    qryScheduleTypesWorkload_Normal: TWordField;
    qryScheduleTypesWorkload_Time: TWordField;
    qryScheduleTypesWorkload_Amountd: TWordField;
    qryScheduleTypesStandardRate: TWordField;
    qryScheduleTypesNote: TWordField;
    qryScheduleTypesAccRelatedActive: TWordField;
    qryScheduleTypesKindActive: TWordField;
    qryScheduleTypesProc_Line_Active: TWordField;
    qryScheduleTypesReportName1: TStringField;
    qryScheduleTypesReportName2: TStringField;
    qryScheduleTypesMasterNo: TIntegerField;
    qryScheduleTypesProcRelatedActive: TWordField;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    SpeedButton4: TSpeedButton;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton5: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BtnInsert: TBitBtn;
    BitBtn4: TBitBtn;
    BtnDelete: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn3: TBitBtn;
    OpenDialog1: TOpenDialog;
    actPrint: TAction;
    actSendToExcel: TAction;
    actSort: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLine5: TppLine;
    ppLabel18: TppLabel;
    ppLine7: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel1: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText14: TppDBText;
    ppDBText1: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine8: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SrcScheduleTypesStateChange(Sender: TObject);
    procedure qryScheduleTypesAfterInsert(DataSet: TDataSet);
    procedure qryScheduleTypesAfterDelete(DataSet: TDataSet);
    procedure qryScheduleTypesAfterPost(DataSet: TDataSet);
    procedure qryScheduleTypesBeforeDelete(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure ppLabel9GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScheduleTypesF: TScheduleTypesF;

implementation

uses DM, GlobalPro, sort2, search2, mmessage;

{$R *.dfm}

procedure TScheduleTypesF.SpeedButton4Click(Sender: TObject);
begin
  inherited;
   OpenDialog1.FileName:=qryScheduleTypes.fieldbyname('ReportName1').AsString;
  if OpenDialog1.Execute then begin
    if not(qryScheduleTypes.State in dseditmodes) then qryScheduleTypes.Edit;
    qryScheduleTypes.fieldbyname('ReportName1').AsString:=ExtractFileName(OpenDialog1.FileName);
  end;//if
end;

procedure TScheduleTypesF.SpeedButton5Click(Sender: TObject);
begin
  inherited;
   OpenDialog1.FileName:=qryScheduleTypes.fieldbyname('ReportName2').AsString;
  if OpenDialog1.Execute then begin
    if not(qryScheduleTypes.State in dseditmodes) then qryScheduleTypes.Edit;
    qryScheduleTypes.fieldbyname('ReportName2').AsString:=ExtractFileName(OpenDialog1.FileName);
  end;//if
end;

procedure TScheduleTypesF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TScheduleTypesF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryScheduleTypes);
end;

procedure TScheduleTypesF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryScheduleTypes);
end;

procedure TScheduleTypesF.FormCreate(Sender: TObject);
begin
  inherited;
  qryScheduleTypes.Active:=true;
end;

procedure TScheduleTypesF.SrcScheduleTypesStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qryScheduleTypes.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  BtnReject.Cancel:=newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell,'','',Self.Name);
end;

procedure TScheduleTypesF.qryScheduleTypesAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('Code').AsInteger:=GetANewCode(Self.Name,'ScheduleType','Code',DMf.adcBSell);
  DBEdit5.SetFocus;
end;

procedure TScheduleTypesF.qryScheduleTypesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.',1);
end;

procedure TScheduleTypesF.qryScheduleTypesAfterPost(DataSet: TDataSet);
begin
  inherited;
   BigMessage('À»  ‘œ.',1);
end;

procedure TScheduleTypesF.qryScheduleTypesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
    if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ›—„ „ÿ„∆‰ Â” Ìœø')<> mrYes then Abort;
end;

procedure TScheduleTypesF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color:=const_fixed_columns_color;
  end;//if
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TScheduleTypesF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TScheduleTypesF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1,true);
end;

procedure TScheduleTypesF.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if key = 32 then SpeedButton4.Click;
end;

procedure TScheduleTypesF.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 32 then SpeedButton5.Click;
end;

procedure TScheduleTypesF.ppLabel7GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName;
end;

procedure TScheduleTypesF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text);
end;

procedure TScheduleTypesF.ppLabel9GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TScheduleTypesF.actPrintExecute(Sender: TObject);
begin
  inherited;
  ppReport1.Print;
end;

procedure TScheduleTypesF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key,qryScheduleTypes.FieldByName('Code'));
end;

end.
