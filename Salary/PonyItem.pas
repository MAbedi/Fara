unit PonyItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Mask, DBCtrls, Grids, DBGrids, sndkey32, SumDBGrid, Menus, ppParameter,
  ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, ppDesignLayer, System.Actions;

type
  TPonyItemF = class(TTemplate4F)
    qrySeverable: TADOQuery;
    DBGrid1: TDBGrid;
    srcSeverable: TDataSource;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    qrySeverableID: TAutoIncField;
    qrySeverableFormItemID: TIntegerField;
    qrySeverableCustID: TIntegerField;
    qrySeverableDetailCode: TStringField;
    qrySeverableCTopicCode: TStringField;
    qrySeverableCTopicCode2: TStringField;
    qrySeverableBudgetCode: TIntegerField;
    qrySeverableAmount: TBCDField;
    qrySeverable_CTopicName_L1: TStringField;
    qrySeverable_CTopicName2_L1: TStringField;
    qrySeverable_DetailsName_L1: TStringField;
    qrySeverable_TopicCodeName_L1: TStringField;
    qrySeverable_Cudtomername2: TStringField;
    Panel2: TPanel;
    Panel4: TPanel;
    pnlTopicCodeDetails: TPanel;
    Label8: TLabel;
    DBEdit23: TDBEdit;
    pnlCTopicCode1Detail: TPanel;
    Label3: TLabel;
    DBEdit18: TDBEdit;
    Panel5: TPanel;
    pnlCTopicCode2Detail: TPanel;
    Label4: TLabel;
    DBEdit26: TDBEdit;
    pnlDetailCodeDetail: TPanel;
    Label6: TLabel;
    DBEdit24: TDBEdit;
    SumGrid1: TSumGrid;
    qrySeverableServerID: TIntegerField;
    qrySeverableYearID: TIntegerField;
    qrySeverableFormID: TIntegerField;
    pnl1: TPanel;
    LblFormNumber: TLabel;
    Label14: TLabel;
    EdtFormNumber: TDBEdit;
    DBEdit13: TDBEdit;
    dsForms: TDataSource;
    dsFormItems: TDataSource;
    EdtCheckNumber: TDBEdit;
    dbedtCheckDate: TDBEdit;
    dbmmoItemNote: TDBMemo;
    Label2: TLabel;
    lbl1: TLabel;
    Label1: TLabel;
    dbedtItemAmount: TDBEdit;
    qrySeverableSeverableNote: TWideStringField;
    btnSort: TBitBtn;
    btnsearch: TBitBtn;
    btnSendExcel: TBitBtn;
    btn4: TBitBtn;
    actSort: TAction;
    actsearch: TAction;
    actSendExcel: TAction;
    actGetExcel: TAction;
    actPrintVijeh: TAction;
    pop1: TPopupMenu;
    mnuPrintVijeh: TMenuItem;
    mnuGetExcel: TMenuItem;
    qrySeverableDeficitAmount: TBCDField;
    qrySeverableArzAmount: TBCDField;
    qrySeverableTopicCode: TLargeintField;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppDBCalcdcCount_TextAlign: TppDBCalc;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel2: TppLabel;
    ppParameterList1: TppParameterList;
    actPrint: TAction;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure srcSeverableStateChange(Sender: TObject);
    procedure qrySeverableAfterInsert(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qryLookUpBeforeDelete(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure qrySeverableAfterPost(DataSet: TDataSet);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure qrySeverableBeforePost(DataSet: TDataSet);
    procedure qrySeverableBeforeDelete(DataSet: TDataSet);
    procedure actSortExecute(Sender: TObject);
    procedure actsearchExecute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actGetExcelExecute(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure actPrintVijehExecute(Sender: TObject);
    procedure qrySeverableAfterDelete(DataSet: TDataSet);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);

  private
    CallForm: Integer;
    qryItems: TADOQuery;
    qryini: TADOQuery;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    function ChkSumAmount: Boolean;
    { Private declarations }
  public
    function ShowOnly(TypeForm: Integer): TForm;
    { Public declarations }
  end;

var
  PonyItemF: TPonyItemF;

implementation

uses DM, searchCode_ADO, GlobalPro, DateUtils, mmessage, PaymentCash,
  SalaryFunctions, GetCheck, sort2, search2, GetExcel, DBGrid2Print;

{$R *.dfm}

procedure TPonyItemF.FormCreate(Sender: TObject);
var
  b: Boolean;
begin
  inherited;
  case var_glb_gParam of
    0:
      begin
        SeverableF.qryItems := PaymentCashF.qryFormItems;
        SeverableF.dsForms.DataSet := PaymentCashF.qryForms;
        SeverableF.dsFormItems.DataSet := PaymentCashF.qryFormItems;
        qryini := PaymentCashF.qryInitForm;

        pnlTopicCodeDetails.Visible := PaymentCashF.pnlTopicCodeDetails.Visible;
        pnlDetailCodeDetail.Visible := PaymentCashF.pnlDetailCodeDetail.Visible;
        pnlCTopicCode1Detail.Visible :=
          PaymentCashF.pnlCTopicCode1Detail.Visible;
        pnlCTopicCode2Detail.Visible :=
          PaymentCashF.pnlCTopicCode2Detail.Visible;
      end;
    1:
      begin
        SeverableF.qryItems := GetCheckF.qryDetail_Item;
        SeverableF.dsForms.DataSet := GetCheckF.qryMaster_Forms;
        SeverableF.dsFormItems.DataSet := GetCheckF.qryDetail_Item;
        qryini := GetCheckF.qryInitQry;

        pnlTopicCodeDetails.Visible := GetCheckF.pnlTopicCodeD.Visible;
        pnlDetailCodeDetail.Visible := GetCheckF.pnlDetailCodeD.Visible;
        pnlCTopicCode1Detail.Visible := GetCheckF.pnlCTopicCodeD.Visible;
        pnlCTopicCode2Detail.Visible := GetCheckF.pnlCTopicCode2D.Visible;

        qrySeverable.FieldByName('_Cudtomername2').LookupDataSet :=
          GetCheckF.qryCustomer2Detail;
      end;
  end;
  if dsFormItems.DataSet.State in dseditmodes then
    dsFormItems.DataSet.Post;
  if dsForms.DataSet.State in dseditmodes then
    dsForms.DataSet.Post;

  with qryini do
  begin
    b := FieldByName('Customer2ActiveOnDetail').AsInteger > 0;
    setColumns2(DBGrid1, b, 'CustID');
    qrySeverable.FieldByName('CustID').DisplayLabel := ' ﬂœ ' +
      FieldByName('Customer2OnDetailLable').AsString;
    qrySeverable.FieldByName('_Cudtomername2').DisplayLabel := ' ‰«„ ' +
      FieldByName('Customer2OnDetailLable').AsString;
    qrySeverable.FieldByName('CustID').Required := b;
    qrySeverable.FieldByName('_Cudtomername2').Required := b;
    b := FieldByName('BudgetCodePosition').AsInteger in [1, 2];
    setColumns2(DBGrid1, b, 'BudgetCode');

  end;

  SetLookUpCash(qrySeverable);

  setColumns2(DBGrid1, pnlTopicCodeDetails.Visible, 'TopicCode');
  setColumns2(DBGrid1, pnlDetailCodeDetail.Visible, 'DetailCode');
  setColumns2(DBGrid1, pnlCTopicCode1Detail.Visible, 'CTopicCode');
  setColumns2(DBGrid1, pnlCTopicCode2Detail.Visible, 'CTopicCode2');

  With qrySeverable do
  begin
    Close;
    Parameters.ParamByName('FormItemID').Value :=
      qryItems.FieldByName('FormItemID').AsInteger;
    Parameters.ParamByName('ServerID').Value := qryItems.FieldByName('ServerID')
      .AsInteger;
    Parameters.ParamByName('YearID').Value := qryItems.FieldByName('YearID')
      .AsInteger;
    Parameters.ParamByName('FormID').Value := qryItems.FieldByName('FormID')
      .AsInteger;
    Open;
  end;
end;

procedure TPonyItemF.srcSeverableStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := (qrySeverable.State in dseditmodes);
  newPanel.Visible := not okPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
end;

procedure TPonyItemF.qrySeverableAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qrySeverable.FieldByName('YearID').AsInteger := qryItems.FieldByName('YearID')
    .AsInteger;
  qrySeverable.FieldByName('FormID').AsInteger := qryItems.FieldByName('FormID')
    .AsInteger;
  qrySeverable.FieldByName('ServerID').AsInteger :=
    qryItems.FieldByName('ServerID').AsInteger;
  qrySeverable.FieldByName('FormItemID').AsInteger :=
    qryItems.FieldByName('FormItemID').AsInteger;
  qrySeverable.FieldByName('SeverableNote').AsString :=
    qryItems.FieldByName('ItemNote').AsString;
  DataSet.FieldByName('TopicCode').AsLargeInt := 0;
  DataSet.FieldByName('DetailCode').AsInteger := 0;
  DataSet.FieldByName('CTopicCode').AsInteger := 0;
  DataSet.FieldByName('CTopicCode2').AsInteger := 0;

end;

procedure TPonyItemF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TPonyItemF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TPonyItemF.qryLookUpBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–›  „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TPonyItemF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  DataSetEdit1.Execute;
end;

procedure TPonyItemF.qrySeverableAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.˛', 1);
end;

procedure TPonyItemF.DBGrid1EditButtonClick(Sender: TObject);
var
  aDataSet: TDataSet;
  i: Smallint;
  sqlText: String;
  Results: array [0 .. 5] of String;
begin
  inherited;
  if (Sender as TDBGrid).ReadOnly then
    exit;
  i := (Sender as TDBGrid).SelectedIndex;
  aDataSet := (Sender as TDBGrid).DataSource.DataSet;
  (Sender as TDBGrid).SelectedIndex := i;
  if not(aDataSet.State in dseditmodes) then
    aDataSet.Edit;
  case i of
    0:
      begin
        sqlText :=
          'SELECT Customers.CustID,Customers.CustName FROM Customers LEFT OUTER JOIN '
          + ' CustomersGroup ON Customers.CustomerGrpID = CustomersGroup.CustomerGrpID '
          + ' WHERE CustomersGroup.GroupType IN(' +
          Trim(qryini.FieldByName('CustomerKind2').AsString) + ')';

        if searchCode_ADOF.SearchCode2(DMf.adcBSell, '„‘Œ’«  œ—Ì«›  ﬂ‰‰œÂ',
          sqlText, ['òœ', '‰«„ œ—Ì«›  ﬂ‰‰œÂ'], Results, [50, 150], alLeft) then
        begin
          aDataSet.FieldByName('CustID').AsString := Results[0];
          aDataSet.FieldByName('_Cudtomername2').AsString := Results[1];
        end; // if
      end; // 6

    4:
      AccSpeedButtonTopicCode(aDataSet, 'TopicCode');
    5:
      AccSpeedButtonDetailCode(aDataSet, 'DetailCode', 'TopicCode');
    6:
      AccSpeedButtonCTopicCode(aDataSet, 'CTopicCode', 'TopicCode');
    7:
      AccSpeedButtonCTopicCode2(aDataSet, 'CTopicCode2', 'CTopicCode', True,
        'TopicCode');
    8:
      AccSpeedButtonBudgetCode(aDataSet, 'BudgetCode');

  end; // case

end;

procedure TPonyItemF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TPonyItemF.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
  // c:  String;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          exit;
        aDataSet := (Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            nextIndex := 2;
          1:
            nextIndex := 2;
          2:
            nextIndex := 3;
          3:
            nextIndex := 4;
          4:
            nextIndex := 5;
          5:
            nextIndex := 6;
          6:
            nextIndex := 7;
          7:
            nextIndex := 8;
          8:
            nextIndex := 9;
          9:
            nextIndex := -1;
        end; // case
        if (curIndex > 0) and (aDataSet.FieldByName('CustID').IsNull) and
          (aDataSet.FieldByName('Amount').IsNull) then
        begin
          aDataSet.Cancel;
          exit;
        end;
      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and (not(DBGrid1.Columns[nextIndex].Visible) OR
          (DBGrid1.Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        // SendKey('000',false);
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.State in dseditmodes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;

      #32, #157: if DBGrid1.Columns[curIndex].ButtonStyle = cbsEllipsis then
    begin // if curIndex in [3,7,8,9,10,11,12] then begin
      Key := #0;
      DBGrid1EditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < DBGrid1.Columns.Count) and
      (not(DBGrid1.Columns[nextIndex].Visible) OR
      (DBGrid1.Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], false);
          (Sender as TDBGrid).SelectedIndex := 0;
        end; // 0
      -2:
        begin
          if (Sender as TDBGrid).DataSource.State in dseditmodes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TDBGrid).DataSource.State in dseditmodes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TDBGrid).SelectedIndex := nextIndex;
end; // case

end;

procedure TPonyItemF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  c: Currency;
begin
  inherited;
  if CallForm <> 0 then
    exit;
  if qrySeverable.RecordCount = 0 then
    exit;
  c := CalcSumFileds(qrySeverable, 'Amount') - CalcSumFileds(qrySeverable,
    'DeficitAmount') - dsFormItems.DataSet.FieldByName('ItemAmount').AsCurrency;
  if c <> 0 then
  begin
    Warn('Ã„⁄ ﬂ· „»«·€  ›ﬂÌﬂÌ »« „»·€ ﬂ· ' + CurrToStrF(c, ffCurrency, 0) +
      ' «Œ ·«› œ«—œ.˛');
    Abort
  end;
end;

procedure TPonyItemF.qrySeverableBeforePost(DataSet: TDataSet);
begin
  inherited;
  ChkSumAmount;
  CheckRequiredFields(DataSet);
end;

function TPonyItemF.ShowOnly(TypeForm: Integer): TForm;
begin
  var_glb_gParam := TypeForm;
  application.CreateForm(TSeverableF, SeverableF);
  SeverableF.CallForm := TypeForm;
  with TForm(SeverableF) do
  begin
    font.assign(var_glb_DefaultFont);
    Align := alNone;
    Show;
  end; // with
  Result := SeverableF;
end;

function TPonyItemF.ChkSumAmount: Boolean;
var
  Cloned: TADOQuery;
  c: Currency;
begin
  c := qrySeverable.FieldByName('Amount').AsCurrency - qrySeverable.FieldByName
    ('DeficitAmount').AsCurrency;
  Cloned := TADOQuery.Create(DMf.adcBSell);
  try
    Cloned.Clone(qrySeverable, ltReadOnly);
    Cloned.First;
    Cloned.Filter := Format('ID<>%d',
      [qrySeverable.FieldByName('ID').AsInteger]);
    Cloned.Filtered := True;
    with Cloned do
      while not Eof do
      begin
        c := c + Cloned.FieldByName('Amount').AsCurrency -
          Cloned.FieldByName('DeficitAmount').AsCurrency;
        Next;
      end;
  finally
    FreeAndNil(Cloned);
  end;
  c := qryItems.FieldByName('ItemAmount').AsCurrency - c;
  Result := c <> 0;
  if Result then
    BigMessage('Ã„⁄ ﬂ· „»«·€  ›ﬂÌﬂÌ »« „»·€ ﬂ· ' + #10#13 + CurrToStrF(c,
      ffCurrency, 0) + ' «Œ ·«› œ«—œ.˛', 2);
end;

procedure TPonyItemF.qrySeverableBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ.') <> mrYes then
    Abort;
end;

procedure TPonyItemF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySeverable);
end;

procedure TPonyItemF.actsearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySeverable);
end;

procedure TPonyItemF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TPonyItemF.actGetExcelExecute(Sender: TObject);
begin
  inherited;
  GetExcelF.ShowImPortExcel(qrySeverable);
end;

procedure TPonyItemF.btn4Click(Sender: TObject);
begin
  inherited;
  pop1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TPonyItemF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'Severable_' + qryini.FieldByName('FormType')
    .AsString, True);
end;

procedure TPonyItemF.actPrintVijehExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TPonyItemF.qrySeverableAfterDelete(DataSet: TDataSet);
begin
  inherited;
  ChkSumAmount
end;

procedure TPonyItemF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TPonyItemF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TPonyItemF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption;
end;

procedure TPonyItemF.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  Text := APPBank.CompanyName
end;

end.
