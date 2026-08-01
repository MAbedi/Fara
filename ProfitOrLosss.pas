unit ProfitOrLosss;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, template2MDI, System.ImageList,
  Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.Win.ADODB, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, CedarDbGrid, Vcl.Mask, Vcl.DBCtrls;

type
  TProfitOrLosssF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    spl1: TSplitter;
    spl2: TSplitter;
    pnl2: TPanel;
    lblSalaryBankName: TLabel;
    pnl3_4_5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    pnl4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    pnl1_2: TPanel;
    Label6: TLabel;
    pnlItem2: TPanel;
    Panel10: TPanel;
    CedarDbgrid2: TCedarDbgrid;
    qryItems4: TADOQuery;
    srcItems4: TDataSource;
    qryItems4Comment: TWideStringField;
    qryItems4Price: TBCDField;
    qryItems4InfoPercent: TFloatField;
    qryItems4Descriptions: TWideStringField;
    qryItems3: TADOQuery;
    WideStringField1: TWideStringField;
    BCDField1: TBCDField;
    FloatField1: TFloatField;
    WideStringField2: TWideStringField;
    srcItems3: TDataSource;
    grdItems3: TCedarDbgrid;
    grdItems5: TCedarDbgrid;
    qryItems5: TADOQuery;
    WideStringField3: TWideStringField;
    BCDField2: TBCDField;
    FloatField2: TFloatField;
    WideStringField4: TWideStringField;
    srcItems5: TDataSource;
    qryItems2: TADOQuery;
    srcItems2: TDataSource;
    qryItems1: TADOQuery;
    WideStringField7: TWideStringField;
    BCDField4: TBCDField;
    FloatField4: TFloatField;
    WideStringField8: TWideStringField;
    srcItems1: TDataSource;
    grdItems2: TCedarDbgrid;
    grdItems1: TCedarDbgrid;
    qryProfitOrLosss: TADOQuery;
    srcProfitOrLosss: TDataSource;
    qryProfitOrLosssProfitOrLossID: TIntegerField;
    qryProfitOrLosssProjectCode: TIntegerField;
    qryProfitOrLosssProjectDate: TStringField;
    qryProfitOrLosssClientCode: TIntegerField;
    qryProfitOrLosssClientName: TWideStringField;
    qryProfitOrLosssAverageDIR: TFloatField;
    qryProfitOrLosssAverageDSO: TFloatField;
    qryProfitOrLosssRevenueSum: TBCDField;
    qryProfitOrLosssCostSum: TBCDField;
    qryProfitOrLosssGrossProfit: TBCDField;
    qryProfitOrLosssNetProfit: TBCDField;
    qryProfitOrLosssLatePaymentsToContractors: TBCDField;
    qryProfitOrLosssLatePaymentsToClients: TBCDField;
    Panel11: TPanel;
    Panel12: TPanel;
    Label3: TLabel;
    edtGrossProfit: TDBEdit;
    Panel13: TPanel;
    Label7: TLabel;
    edtNetProfit: TDBEdit;
    Label4: TLabel;
    edtLatePaymentsToContractors: TDBEdit;
    Label5: TLabel;
    edtLatePaymentsToClients: TDBEdit;
    Panel14: TPanel;
    qryItems6: TADOQuery;
    srcItems6: TDataSource;
    CedarDbgrid1: TCedarDbgrid;
    qryProfitOrLosssFinallProfit: TBCDField;
    Label8: TLabel;
    edtFinallProfit: TDBEdit;
    Panel4: TPanel;
    Label9: TLabel;
    edtAverageDSO: TDBEdit;
    Panel5: TPanel;
    Label10: TLabel;
    edtAverageDIR: TDBEdit;
    Label11: TLabel;
    edtClientCode: TDBEdit;
    Label12: TLabel;
    edtProjectCode: TDBEdit;
    edtClientName: TDBEdit;
    Label13: TLabel;
    edtProjectDate: TDBEdit;
    Label14: TLabel;
    btnProjectCode: TSpeedButton;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    btnDataSetDelete1_: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    qryFn_ProfitOrLoss: TADOQuery;
    qryFn_ProfitOrLossInfoID: TIntegerField;
    qryFn_ProfitOrLossProjectCode: TIntegerField;
    qryFn_ProfitOrLossKind: TWordField;
    qryFn_ProfitOrLossComment: TWideStringField;
    qryFn_ProfitOrLossPrice: TBCDField;
    qryFn_ProfitOrLossInfoPercent: TFloatField;
    qryFn_ProfitOrLossSourceInfo: TWideStringField;
    qryFn_ProfitOrLossDescriptions: TWideStringField;
    qryItems1ItemID: TIntegerField;
    qryItems1ProfitOrLossID: TIntegerField;
    qryItems1InfoID: TIntegerField;
    qryItems1Kind: TWordField;
    qryItems1SourceInfo: TWideStringField;
    qryItems3ItemID: TIntegerField;
    qryItems3ProfitOrLossID: TIntegerField;
    qryItems3InfoID: TIntegerField;
    qryItems3Kind: TWordField;
    qryItems3SourceInfo: TWideStringField;
    qryItems5ItemID: TIntegerField;
    qryItems5ProfitOrLossID: TIntegerField;
    qryItems5InfoID: TIntegerField;
    qryItems5Kind: TWordField;
    qryItems5SourceInfo: TWideStringField;
    qryItems4ItemID: TIntegerField;
    qryItems4ProfitOrLossID: TIntegerField;
    qryItems4InfoID: TIntegerField;
    qryItems4Kind: TWordField;
    qryItems4SourceInfo: TWideStringField;
    qryItems2Comment: TWideStringField;
    qryItems2Price: TBCDField;
    qryItems2InfoPercent: TFloatField;
    qryItems2Descriptions: TWideStringField;
    qryItems2ItemID: TIntegerField;
    qryItems2ProfitOrLossID: TIntegerField;
    qryItems2InfoID: TIntegerField;
    qryItems2Kind: TWordField;
    qryItems2SourceInfo: TWideStringField;
    qryItems6Comment: TWideStringField;
    qryItems6Price: TBCDField;
    qryItems6ItemID: TIntegerField;
    qryItems6ProfitOrLossID: TIntegerField;
    qryItems6InfoID: TIntegerField;
    qryItems6Kind: TWordField;
    qryItems6InfoPercent: TFloatField;
    qryItems6SourceInfo: TWideStringField;
    qryItems6Descriptions: TWideStringField;
    DBNavigator1: TDBNavigator;
    qryFn_ProfitOrLossValue: TADOQuery;
    qryFn_ProfitOrLossValueProjectCode: TIntegerField;
    qryFn_ProfitOrLossValueAverageDIR: TFloatField;
    qryFn_ProfitOrLossValueAverageDSO: TFloatField;
    procedure FormResize(Sender: TObject);
    procedure srcProfitOrLosssStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryProfitOrLosssAfterScroll(DataSet: TDataSet);
    procedure btnProjectCodeClick(Sender: TObject);
    procedure qryFn_ProfitOrLossAfterOpen(DataSet: TDataSet);
    procedure qryProfitOrLosssAfterInsert(DataSet: TDataSet);
    procedure qryProfitOrLosssAfterPost(DataSet: TDataSet);
    procedure qryProfitOrLosssLatePaymentsToContractorsChange(Sender: TField);
  private
    procedure qryItemsAfterScroll(qry: TADOQuery);
    function Getqry(kind: Integer): TADOQuery;
    procedure CalcH;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProfitOrLosssF: TProfitOrLosssF;

implementation

uses
  DM, GlobalPro, searchCode_ADO, MMESSAGE;

{$R *.dfm}

procedure TProfitOrLosssF.btnProjectCodeClick(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 1] of String;
  i: Integer;
begin
  inherited;
  txt := 'SELECT DISTINCT CustID,CustName FROM Vu_CustomersGroups ';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' Å—ÊéÂ ', txt, ['òœ', '‰«„ '],
    Results, [50, 150], alLeft);
  if b then
  begin
    for i := 1 to 6 do
      Getqry(i).Requery();
    qryProfitOrLosssProjectCode.AsString := Results[0];
    qryProfitOrLosssClientName.AsString := Results[1];
    qryProfitOrLosssClientCode.AsString := Results[0];
    qryProfitOrLosssProjectDate.AsString := var_glb_CurrentDate;
    with qryFn_ProfitOrLoss do
    begin
      Active := False;
      Parameters.ParamByName('ProjectCode').Value :=
        qryProfitOrLosssProjectCode.AsInteger;
      Active := True
    end;

    with qryFn_ProfitOrLossValue do
    begin
      Active := False;
      Parameters.ParamByName('ProjectCode').Value :=
        qryProfitOrLosssProjectCode.AsInteger;
      Active := True;
      qryProfitOrLosssAverageDIR.AsFloat :=
        qryFn_ProfitOrLossValueAverageDIR.AsFloat;
      qryProfitOrLosssAverageDSO.AsFloat :=
        qryFn_ProfitOrLossValueAverageDSO.AsFloat;
    end;

  end;
end;

procedure TProfitOrLosssF.FormCreate(Sender: TObject);
begin
  inherited;
  with qryProfitOrLosss do
  begin
    Active := False;
    Active := True
  end;
  grdItems3.SetFooter4Sum([]);
  grdItems5.SetFooter4Sum([]);
  grdItems2.SetFooter4Sum([]);
  grdItems1.SetFooter4Sum([]);
end;

procedure TProfitOrLosssF.FormResize(Sender: TObject);
begin
  inherited;
  pnl3_4_5.Width := Round(Width / 2);
  pnl4.Width := Round(pnl3_4_5.Width / 2);
  pnlItem2.Width := Round(pnl1_2.Width / 2);
  grdItems3.Height := Round(Panel6.Height / 2);
end;

procedure TProfitOrLosssF.qryProfitOrLosssAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryProfitOrLosssProfitOrLossID.AsInteger :=
    GetANewCode(Self.Name, 'cnt.ProfitOrLosss', 'ProfitOrLossID');
end;

procedure TProfitOrLosssF.qryProfitOrLosssAfterPost(DataSet: TDataSet);
begin
  inherited;
  qryItems1.UpdateBatch;
  qryItems2.UpdateBatch;
  qryItems3.UpdateBatch;
  qryItems4.UpdateBatch;
  qryItems5.UpdateBatch;
  qryItems6.UpdateBatch;
  BigMessage('À»  ‘œ.', 1);
end;

procedure TProfitOrLosssF.qryProfitOrLosssAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qryItemsAfterScroll(qryItems1);
  qryItemsAfterScroll(qryItems2);
  qryItemsAfterScroll(qryItems3);
  qryItemsAfterScroll(qryItems4);
  qryItemsAfterScroll(qryItems5);
  qryItemsAfterScroll(qryItems6);
end;

procedure TProfitOrLosssF.qryProfitOrLosssLatePaymentsToContractorsChange
  (Sender: TField);
begin
  inherited;
  CalcH
end;

function TProfitOrLosssF.Getqry(kind: Integer): TADOQuery;
begin
  case kind of
    1:
      Result := qryItems1;
    2:
      Result := qryItems2;
    3:
      Result := qryItems3;
    4:
      Result := qryItems4;
    5:
      Result := qryItems5;
    6:
      Result := qryItems6;
  else
    Result := qryItems1;

  end;
end;

procedure TProfitOrLosssF.qryFn_ProfitOrLossAfterOpen(DataSet: TDataSet);
var
  qry: TADOQuery;
begin
  inherited;
  while not qryFn_ProfitOrLoss.Eof do
  begin
    qry := Getqry(qryFn_ProfitOrLossKind.AsInteger);
    with qry do
    begin
      Insert;
      FieldByName('ProfitOrLossID').AsInteger :=
        qryProfitOrLosssProfitOrLossID.AsInteger;
      FieldByName('Kind').AsInteger := qryFn_ProfitOrLossKind.AsInteger;
      FieldByName('InfoID').AsInteger := qry.RecordCount + 1;
      FieldByName('Comment').AsString := qryFn_ProfitOrLossComment.AsString;
      FieldByName('Price').AsCurrency := qryFn_ProfitOrLossPrice.AsCurrency;
      FieldByName('InfoPercent').AsFloat :=
        qryFn_ProfitOrLossInfoPercent.AsFloat;
      FieldByName('SourceInfo').AsString :=
        qryFn_ProfitOrLossSourceInfo.AsString;
      FieldByName('Descriptions').AsString :=
        qryFn_ProfitOrLossDescriptions.AsString;
      Post;
    end;
    qryFn_ProfitOrLoss.Next;
  end;

  { C=A-B }
  qryProfitOrLosssGrossProfit.AsCurrency :=
    CalcSumFileds(qryItems2, qryItems2Price.FieldName) -
    CalcSumFileds(qryItems4, qryItems4Price.FieldName);

  { E=C-D }
  qryProfitOrLosssNetProfit.AsCurrency := qryProfitOrLosssGrossProfit.AsCurrency
    - CalcSumFileds(qryItems6, qryItems6Price.FieldName);

  CalcH;

end;

procedure TProfitOrLosssF.CalcH;
begin
  { H=E-F+G }
  qryProfitOrLosssFinallProfit.AsCurrency :=
    qryProfitOrLosssNetProfit.AsCurrency -
    qryProfitOrLosssLatePaymentsToClients.AsCurrency +
    qryProfitOrLosssLatePaymentsToContractors.AsCurrency;
end;

procedure TProfitOrLosssF.qryItemsAfterScroll(qry: TADOQuery);
begin
  inherited;
  with qry do
  begin
    Active := False;
    Parameters.ParamByName('ProfitOrLossID').Value :=
      qryProfitOrLosssProfitOrLossID.AsInteger;
    Active := True
  end;
end;

procedure TProfitOrLosssF.srcProfitOrLosssStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryProfitOrLosss.state in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
end;

end.
