unit RptChecks4Print;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls,
  DBCtrls, Mask, Grids, Vcl.DBGrids, DB, ADODB, ComCtrls, jpeg, System.Actions;

type
  TRptChecks4PrintF = class(TTemplate4F)
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    qry_RptChecks: TADOQuery;
    src_RptChecks: TDataSource;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    qry_RptChecksRptCheckNo: TIntegerField;
    qry_RptChecksRptCheckName: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    qry_RptChecksLeftCheckDate: TFloatField;
    qry_RptChecksTopCheckDate: TFloatField;
    qry_RptChecksWidthCheckDate: TFloatField;
    qry_RptChecksLeftValueText: TFloatField;
    qry_RptChecksTopValueText: TFloatField;
    qry_RptChecksWidthValueText: TFloatField;
    qry_RptChecksLeftValueNum: TFloatField;
    qry_RptChecksTopValueNum: TFloatField;
    qry_RptChecksWidthValueNum: TFloatField;
    qry_RptChecksLeftHavalehCard: TFloatField;
    qry_RptChecksTopHavalehCard: TFloatField;
    qry_RptChecksWidthHavalehCard: TFloatField;
    Panel4: TPanel;
    Panel5: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Panel6: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Panel7: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Image2: TImage;
    TabSheet5: TTabSheet;
    qry_RptChecksLeftHavalehCardHide: TFloatField;
    qry_RptChecksTopHavalehCardHide: TFloatField;
    qry_RptChecksWidthHavalehCardHide: TFloatField;
    Panel8: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    qry_RptChecksWidthPaper: TFloatField;
    qry_RptChecksHeightPaper: TFloatField;
    TabSheet6: TTabSheet;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit21: TDBEdit;
    Label23: TLabel;
    DBEdit22: TDBEdit;
    qry_RptChecksLeftDateString: TFloatField;
    qry_RptChecksTopDateString: TFloatField;
    qry_RptChecksWidthDateString: TFloatField;
    DBEdit23: TDBEdit;
    Label24: TLabel;
    actSend2Excel: TAction;
    BitBtn1: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn2: TBitBtn;
    actSort: TAction;
    actSearch: TAction;
    qry_RptChecksReportFileName: TStringField;
    TabSheet7: TTabSheet;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    qry_RptChecksLeftAmountArz: TFloatField;
    qry_RptChecksTopAmountArz: TFloatField;
    qry_RptChecksWidthAmountArz: TFloatField;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    edtLeftNationalID1: TDBEdit;
    edtTopNationalID1: TDBEdit;
    edtWidthNationalID1: TDBEdit;
    qry_RptChecksLeftNationalID1: TFloatField;
    qry_RptChecksTopNationalID1: TFloatField;
    qry_RptChecksWidthNationalID1: TFloatField;
    qry_RptChecksLeftNationalID2: TFloatField;
    qry_RptChecksTopNationalID2: TFloatField;
    qry_RptChecksWidthNationalID2: TFloatField;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    edtLeftNationalID2: TDBEdit;
    edtTopNationalID2: TDBEdit;
    edtWidthNationalID2: TDBEdit;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    Panel9: TPanel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    edtLeftValueNumBox: TDBEdit;
    edtTopValueNumBox: TDBEdit;
    edtWidthValueNumBox: TDBEdit;
    Panel10: TPanel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    edtLeftCheckDateBox: TDBEdit;
    edtTopCheckDateBox: TDBEdit;
    edtWidthCheckDateBox: TDBEdit;
    qry_RptChecksLeftValueNumBox: TFloatField;
    qry_RptChecksTopValueNumBox: TFloatField;
    qry_RptChecksWidthValueNumBox: TFloatField;
    qry_RptChecksLeftCheckDateBox: TFloatField;
    qry_RptChecksTopCheckDateBox: TFloatField;
    qry_RptChecksWidthCheckDateBox: TFloatField;
    TabSheet12: TTabSheet;
    Label40: TLabel;
    edtLeftLineCorrosion: TDBEdit;
    Label41: TLabel;
    edtTopLineCorrosion: TDBEdit;
    Label42: TLabel;
    edtWidthLineCorrosion: TDBEdit;
    Label43: TLabel;
    qry_RptChecksLeftLineCorrosion: TFloatField;
    qry_RptChecksTopLineCorrosion: TFloatField;
    qry_RptChecksWidthLineCorrosion: TFloatField;
    Label44: TLabel;
    procedure qry_RptChecksAfterInsert(DataSet: TDataSet);
    procedure src_RptChecksStateChange(Sender: TObject);
    procedure qry_RptChecksBeforeDelete(DataSet: TDataSet);
    procedure qry_RptChecksAfterPost(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qry_RptChecksBeforePost(DataSet: TDataSet);
    procedure actSend2ExcelExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure enter;
  end;

var
  RptChecks4PrintF: TRptChecks4PrintF;

implementation

uses DM, GlobalPro, mmessage, sort2, search2;

{$R *.dfm}

procedure TRptChecks4PrintF.enter;
begin
  RptChecks4PrintF := TRptChecks4PrintF.Create(Application);
  with RptChecks4PrintF do
  begin
    try
      qry_RptChecks.Active := True;
      ShowModal;
    finally
      Free;
    end; // try
  end; // with
end;

procedure TRptChecks4PrintF.qry_RptChecksAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('RptCheckNo').AsInteger :=
    GetANewCode(Self.Name, 'RptChecks', 'RptCheckNo', dmF.adcBSell);
  DBEdit2.SetFocus;
end;

procedure TRptChecks4PrintF.src_RptChecksStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qry_RptChecks.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  btnClose.Cancel := newPanel.Visible;
  FreeReservedCodes(dmF.adcBSell, '', '', Self.Name);
end;

procedure TRptChecks4PrintF.qry_RptChecksBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ê“«—‘ „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TRptChecks4PrintF.qry_RptChecksAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.', 1);
end;

procedure TRptChecks4PrintF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then
  begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color := const_fixed_columns_color;
  end; // if
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TRptChecks4PrintF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TRptChecks4PrintF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TRptChecks4PrintF.qry_RptChecksBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qry_RptChecks) then
    Abort;
  if DataSet.FieldByName('LeftHavalehCardHide').IsNull then
    DataSet.FieldByName('LeftHavalehCardHide').AsFloat := 0;
  if DataSet.FieldByName('TopHavalehCardHide').IsNull then
    DataSet.FieldByName('TopHavalehCardHide').AsFloat := 0;
  if DataSet.FieldByName('WidthHavalehCardHide').IsNull then
    DataSet.FieldByName('WidthHavalehCardHide').AsFloat := 0;
  TrimStringFields(DataSet);
end;

procedure TRptChecks4PrintF.actSend2ExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptChecks4PrintF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_RptChecks);
end;

procedure TRptChecks4PrintF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_RptChecks);
end;

end.
