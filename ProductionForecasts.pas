unit ProductionForecasts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, StrUtils, FrProduction, DB, ADODB, ppParameter, FormFunctions, Math,
  ppBands, ppCache, ppClass, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid, Vcl.DBCtrls, SumDBGrid, Vcl.Mask, Vcl.Grids,
  Vcl.DBGrids;

type
  TProductionForecastsF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    frmProduction1: TfrmProduction;
    frmProduction4: TfrmProduction;
    qryItem: TADOQuery;
    srcItem: TDataSource;
    Panel4: TPanel;
    frmProduction2: TfrmProduction;
    frmProduction5: TfrmProduction;
    Panel5: TPanel;
    frmProduction3: TfrmProduction;
    frmProduction6: TfrmProduction;
    Panel6: TPanel;
    BitBtn1: TBitBtn;
    actCalc: TAction;
    qryItemLabel: TADOQuery;
    actExcel: TAction;
    actSort: TAction;
    actPrint: TAction;
    btnSort: TBitBtn;
    btnSort1: TBitBtn;
    btnSearch_: TBitBtn;
    btnPrint: TBitBtn;
    BitBtn2: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppParameterList1: TppParameterList;
    grdPrimary: TCedarDbgrid;
    chkStore: TCheckBox;
    Action1: TAction;
    Panel7: TPanel;
    DBGrid1: TDBGrid;
    pnlDelete: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Panel8: TPanel;
    pnlCustomer1: TPanel;
    lbcustomer1: TLabel;
    sbtnCustomerID1: TSpeedButton;
    edtCustomerID1: TDBEdit;
    DBEdit1: TDBEdit;
    pnlCustomer2: TPanel;
    lbcustomer2: TLabel;
    sbtnCustomerID2: TSpeedButton;
    edtCustomerID2: TDBEdit;
    DBEdit2: TDBEdit;
    Panel9: TPanel;
    lblAmount: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    btnCalcInterestLoan: TBitBtn;
    edtAmount: TDBEdit;
    btnTasviye: TBitBtn;
    grpNote: TGroupBox;
    DBMemo1: TDBMemo;
    PnlLoan: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtAmount1: TDBEdit;
    edtSubAmount: TDBEdit;
    edtRate: TDBEdit;
    edtAidInfoNo2: TDBEdit;
    grpLoan: TGroupBox;
    DBMemo2: TDBMemo;
    SumGrid1: TSumGrid;
    pnlSells: TPanel;
    pnlSellsEmporium: TPanel;
    lbl1: TLabel;
    dblkcbb_SellsEmporium: TDBLookupComboBox;
    pnlSellsMethod: TPanel;
    lbl2: TLabel;
    dblkcbb_SellsMethod: TDBLookupComboBox;
    pnlAidSubAmountCaption: TPanel;
    pnlAidInfo2NoCaption: TPanel;
    lblAidInfo2NoCaptionDate: TLabel;
    edtAidInfoDate2: TDBEdit;
    Panel10: TPanel;
    LblAidInfoNo: TLabel;
    LblAidInfoDate: TLabel;
    edtAidInfoNo1: TDBEdit;
    edtAidInfoDate1: TDBEdit;
    qryRecipts: TADOQuery;
    qryReciptItems: TADOQuery;
    qryinit: TADOQuery;
    procedure actCalcExecute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure frmProduction1SpeedButton1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    procedure AddRecipt(var ReciptID: Integer);
    procedure AddReciptItems(var ReciptID: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProductionForecastsF: TProductionForecastsF;

implementation

uses GlobalPro, DM, DBGrid2Print, search2, sort2, MMESSAGE, FaraConsts;

{$R *.dfm}

procedure TProductionForecastsF.actCalcExecute(Sender: TObject);
var
  I: Integer;
  frmProduc: TfrmProduction;
  s: string;
  b: Boolean;
begin
  inherited;
  With qryItem do
  begin
    DisableControls;
    Active := False;
    SQL.Text := 'SELECT P.StuffCode, P.c_StuffName, P.UnitName, M.SUMEntity,';
    SQL.Add('P.Formol1, P.Entity1, P.Formol2, P.Entity2, P.Formol3,');
    SQL.Add('P.Entity3, P.Formol4, P.Entity4, P.Formol5, P.Entity5,');
    SQL.Add('P.Formol6, P.Entity6 ,');
    SQL.Add('M.SUMEntity- P.Entity1 -P.Entity2');
    SQL.Add('- P.Entity3-P.Entity4-P.Entity5-P.Entity6 AS FinalEntity');

    if chkStore.Checked then
      with DmF.qryStores do
      begin
        Open;
        First;
        s := EmptyStr;
        while not Eof do
        begin
          s := s + ',SUMEntityS' + FieldByName('StoreID').AsString;
          Next;
        end;
      end;
    SQL.Add(s);

    SQL.Add('FROM dbo.ProductionForecasts( :TransFormID1 ,:TransFormID2  ,:TransFormID3  ,');
    SQL.Add(':TransFormID4  ,:TransFormID5  ,:TransFormID6 ,');
    SQL.Add(':Edit1 ,:Edit2  ,:Edit3  ,');
    SQL.Add(':Edit4  ,:Edit5  ,:Edit6 )');
    SQL.Add('AS P LEFT OUTER JOIN');
    SQL.Add('(SELECT StuffCode, ROUND(SUM(InputEntity - OutputEntity), 3) AS SUMEntity');

    if chkStore.Checked then
      with DmF.qryStores do
      begin
        First;
        s := EmptyStr;
        while not Eof do
        begin
          s := s + ',ROUND(SUM(case when StoreID = ' + FieldByName('StoreID')
            .AsString +
            ' then InputEntity -OutputEntity else 0 end), 3) AS SUMEntityS' +
            FieldByName('StoreID').AsString;
          Next;
        end;
      end;
    SQL.Add(s);

    SQL.Add('FROM ReciptItems_Stock');
    SQL.Add('WHERE ( YearID = :YearID )');
    SQL.Add('GROUP BY StuffCode) AS M ON P.StuffCode = M.StuffCode');
    SQL.Add('CROSS JOIN Fitful');

    for I := 1 to 6 do
    begin
      frmProduc := TfrmProduction
        (Self.FindComponent('frmProduction' + IntToStr(I)));
      s := Trim(frmProduc.MaskEdit1.Text);

      b := s = EmptyStr;
      if b then
        s := '0';

      Parameters.ParamByName('TransFormID' + IntToStr(I)).Value := StrToInt(s);

      s := Trim(frmProduc.MaskEdit2.Text);
      if s = EmptyStr then
        s := '0';
      Parameters.ParamByName('Edit' + IntToStr(I)).Value := StrToInt(s);

    end;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Active := True;

    FieldByName('StuffCode').DisplayLabel := 'كدكالا';
    FieldByName('c_StuffName').DisplayLabel := 'شرح كالا';
    FieldByName('UnitName').DisplayLabel := 'واحد';
    FieldByName('SUMEntity').DisplayLabel := 'موجودي انبار';
    FieldByName('FinalEntity').DisplayLabel := 'موجودي نهايي';

    if chkStore.Checked then
      with DmF.qryStores do
      begin
        First;
        s := EmptyStr;
        while not Eof do
        begin
          qryItem.FieldByName('SUMEntityS' + FieldByName('StoreID').AsString)
            .DisplayLabel := 'موجودي انبار' + FieldByName('StoreID').AsString +
            FieldByName('c_StoreName').AsString;
          Next;
        end;
      end;

    EnableControls;
    qryItemLabel.Parameters := Parameters;
  end;
  With qryItemLabel do
  begin
    Active := False;
    Parameters := qryItem.Parameters;
    Active := True;
    while not Eof do
    begin
      frmProduc := TfrmProduction
        (Self.FindComponent('frmProduction' + FieldByName('Label').AsString));
      frmProduc.Label1.Caption := FieldByName('Formol1').AsString;
      Next;
    end;
  end;
  for I := 1 to 6 do
  begin
    frmProduc := TfrmProduction(Self.FindComponent('frmProduction' +
      IntToStr(I)));
    s := Trim(frmProduc.MaskEdit1.Text);
    b := s <> EmptyStr;
    setColumns2(grdPrimary, b, 'Formol' + I.ToString);
    s := Trim(frmProduc.MaskEdit2.Text);
    b := s <> EmptyStr;
    setColumns2(grdPrimary, b, 'Entity' + I.ToString);

    qryItem.FieldByName('Formol' + I.ToString).DisplayLabel := 'فرمول' +
      I.ToString;
    qryItem.FieldByName('Entity' + I.ToString).DisplayLabel := 'تعداد' +
      I.ToString;

  end;
  grdPrimary.setSizeColDBGrid;

end;

procedure TProductionForecastsF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grdPrimary)
end;

procedure TProductionForecastsF.Action1Execute(Sender: TObject);
var
  ReciptID: Integer;
begin
  inherited;
  ///تکمیل/// نشده
  qryinit.Open;
  qryRecipts.Open;
  qryReciptItems.Open;
  ReciptID := 0;
  AddRecipt(ReciptID);
  if ReciptID <> 0 then
  begin
    AddReciptItems(ReciptID);
    BigMessage('ثبت شد.', 0);
  end;

end;

procedure TProductionForecastsF.AddRecipt(var ReciptID: Integer);
begin
  with qryRecipts Do
  begin
    Open;
    Insert;
    FieldByName('ReciptType').AsInteger := 12;
    ReciptID := GetanewID(qryRecipts, Self.Name, 'Recipts', 'ReciptID', nil, 1);
    FieldByName('StoreID').AsInteger :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);

    FieldByName('PersonID1').AsInteger := 0;

    FieldByName('PersonID2').AsInteger := 0;

    FieldByName('PersonID4').AsInteger := 0;

    FieldByName('ReciptDate').AsString := var_glb_CurrentDate;

    myStore.code := FieldByName('StoreID').AsInteger;

    GetReciptNumber(qryinit, qryRecipts, 0, myStore);
    FieldByName('UseOtherID').AsInteger := 0;
    FieldByName('OperatorID').AsInteger := user.id;
    FieldByName('InsertDate').AsDateTime := Now;
    FieldByName('ModifyDate').AsDateTime := Now;
    FieldByName('FirstUser').AsString := user.Name;
    Post;

  end;
end;

procedure TProductionForecastsF.AddReciptItems(var ReciptID: Integer);
begin
  inherited;
  try
    qryItem.DisableControls;
    qryItem.First;
    while qryItem.Eof do
      with qryReciptItems Do
      begin
        Open;
        Insert;
        FieldByName('ReciptID').AsInteger := ReciptID;
        FieldByName('ReciptItemID').AsInteger :=
          GetanewID(qryReciptItems, Self.Name, 'ReciptItems ',
          'ReciptItemID', nil, 1);
        FieldByName('StuffCode').AsLargeInt := qryItem.FieldByName('StuffCode')
          .AsLargeInt;
        FieldByName('FirstUser').AsString := user.Name;
        FieldByName('UseUnitID').AsInteger := 0;
        FieldByName('OutputEntity').AsFloat := 1;
        Post;
        qryItem.Next;
      end;

  finally
    qryItem.EnableControls;
  end;
end;

procedure TProductionForecastsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryItem.DisableControls;
    InitReportFile(ppReport1, 'ProductionForecasts', True);
  finally
    qryItem.EnableControls;
  end; // try

end;

procedure TProductionForecastsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryItem)
end;

procedure TProductionForecastsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2f.ShowSort(qryItem)
end;

procedure TProductionForecastsF.BitBtn2Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(grdPrimary, 0)
end;

procedure TProductionForecastsF.frmProduction1SpeedButton1Click
  (Sender: TObject);
begin
  inherited;
  frmProduction1.SpeedButton1Click(Sender);
end;

end.
