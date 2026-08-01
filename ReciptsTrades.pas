unit ReciptsTrades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Mask, DBCtrls, System.Actions, Vcl.ComCtrls;

type
  TReciptsTradesF = class(TTemplate4F)
    qryReciptsTrades: TADOQuery;
    srcItems: TDataSource;
    srcReciptsTrades: TDataSource;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    newPanel: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    actPrint: TAction;
    qryCustomers: TADOQuery;
    qryReciptsTradesReciptsTradeID: TAutoIncField;
    qryReciptsTradesReciptID: TIntegerField;
    qryReciptsTradesServerID: TIntegerField;
    qryReciptsTradesYearID: TIntegerField;
    qryReciptsTradesForoushType: TIntegerField;
    qryReciptsTradesKeshvarCode: TIntegerField;
    qryReciptsTradesKotaj_No: TIntegerField;
    qryReciptsTradesKotaj_Date: TStringField;
    qryReciptsTradesLC_No: TStringField;
    qryReciptsTradesLC_Date: TStringField;
    qryReciptsTradesGomrok_Arzyabi: TIntegerField;
    qryReciptsTradesGomrok_khoruj: TIntegerField;
    qryKeshvar: TADOQuery;
    qryReciptsTrades_KeshvarCode: TStringField;
    Panel3: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblGomrok_khoruj: TLabel;
    edtKotaj_No: TDBEdit;
    edtKotaj_Date: TDBEdit;
    edtLC_No: TDBEdit;
    edtLC_Date: TDBEdit;
    edtGomrok_Arzyabi: TDBEdit;
    edtGomrok_khoruj: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    cmbForoushType: TDBComboBox;
    lblType: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtStockNumber: TDBEdit;
    Label12: TLabel;
    edtStockDate: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edtBranchNumber: TDBEdit;
    cmbHowRecInfo: TDBComboBox;
    cmbHowToDoDeal: TDBComboBox;
    cmbRingsSupply: TDBComboBox;
    cmbClauseBuyerEligibility: TDBComboBox;
    cmbBranchStatus: TDBComboBox;
    qryReciptsTradesHowRecInfo: TIntegerField;
    qryReciptsTradesHowToDoDeal: TIntegerField;
    qryReciptsTradesStockNumber: TLargeintField;
    qryReciptsTradesStockDate: TStringField;
    qryReciptsTradesRingsSupply: TIntegerField;
    qryReciptsTradesClauseBuyerEligibility: TIntegerField;
    qryReciptsTradesBranchStatus: TIntegerField;
    qryReciptsTradesBranchNumber: TIntegerField;
    qryReciptsTradesAmountDeclaration: TFMTBCDField;
    qryReciptsTradesAmountDeclarationArz: TFMTBCDField;
    Label17: TLabel;
    Label18: TLabel;
    edtAmountDeclaration: TDBEdit;
    edtAmountDeclarationArz: TDBEdit;
    qryReciptsTradesRTCarton: TFMTBCDField;
    qryReciptsTradesRTWeight: TFMTBCDField;
    Label21: TLabel;
    lblRTWeight: TLabel;
    edtRTCarton: TDBEdit;
    edtRTWeight: TDBEdit;
    qryReciptsTradesArzType: TIntegerField;
    qryReciptsTrades_ArzType: TStringField;
    dblkcbb_ArzType: TDBLookupComboBox;
    Label1: TLabel;
    Label8: TLabel;
    procedure srcReciptsTradesStateChange(Sender: TObject);
    procedure qryReciptsTradesAfterInsert(DataSet: TDataSet);
    procedure qryReciptsTradesBeforeDelete(DataSet: TDataSet);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ALLSetText(Sender: TField; const Text: String);
  private
    FormOutput: Boolean;
    saderatVaredat: string;
    KhdridForosh: string;
    procedure initQry;
    { Private declarations }
  public
    qryRecipts: TADOQuery;
    procedure enter(qryInit, qry_Recipts: TADOQuery);
    { Public declarations }
  end;

var
  ReciptsTradesF: TReciptsTradesF;

implementation

uses DM, GlobalPro;

{$R *.dfm}

procedure TReciptsTradesF.enter(qryInit, qry_Recipts: TADOQuery);
begin
  ReciptsTradesF := TReciptsTradesF.Create(Application);
  with ReciptsTradesF do
  begin
    try
      FormOutput := qryInit.FieldByName('EffectType').AsInteger
        in [3, 4, 5, 7, 8];
      qryRecipts := qry_Recipts;
      initQry;
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TReciptsTradesF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := TDBComboBox(FindComponent('cmb' + Sender.FieldName))
    .Items[TDBComboBox(FindComponent('cmb' + Sender.FieldName))
    .Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TReciptsTradesF.ALLSetText(Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsInteger :=
    Integer(TDBComboBox(FindComponent('cmb' + Sender.FieldName)).Items.Objects
    [TDBComboBox(FindComponent('cmb' + Sender.FieldName)).ItemIndex]);
end;

procedure TReciptsTradesF.initQry;
begin
  if FormOutput then
  begin
    saderatVaredat := 'صادرات';
    KhdridForosh := 'فروش';
  end
  else
  begin
    saderatVaredat := 'واردات';
    KhdridForosh := 'خرید';
    lblGomrok_khoruj.Caption:='کد گمرک ورودی';
  end;

  lblRTWeight.Caption := opt.WeightCaption;
  lblType.Caption := 'نوع ' + KhdridForosh;

  with cmbHowRecInfo do
  begin
    Clear;
    Items.AddObject('ورود اطلاعات توسط کاربر', TObject(1066));
    Items.AddObject('استعلام از بورس کالا', TObject(1064));
  end;

  with cmbHowToDoDeal do
  begin
    Clear;
    Items.AddObject('بورس کالا', TObject(25));
    Items.AddObject('غیربورس', TObject(26));
    Items.AddObject('بورس انرژی', TObject(1062));

  end;
  with cmbRingsSupply do
  begin
    Clear;
    Items.AddObject('صادراتی', TObject(19));
    Items.AddObject('داخلی', TObject(20));

  end;
  with cmbClauseBuyerEligibility do
  begin
    Clear;
    Items.AddObject('حقوقی', TObject(1041));
    Items.AddObject('حقیقی بند الف', TObject(1042));
    Items.AddObject('حقیقی بند ب', TObject(1044));
    Items.AddObject('حقیقی بند ج', TObject(1045));
  end;
  with cmbBranchStatus do
  begin
    Clear;
    Items.AddObject('دفتر مرکزی', TObject(1039));
    Items.AddObject('شعبه', TObject(1040));
  end;

  with cmbForoushType do
  begin
    Clear;
    Items.AddObject('', TObject(0));
    Items.AddObject(saderatVaredat, TObject(1));
    Items.AddObject(KhdridForosh + ' به شخص خارجی بدون نیاز به اظهارنامه گمرکی',
      TObject(2));
  end;

  With qryReciptsTrades do
  begin
    Close;
    Parameters.ParamByName('ReciptID').Value :=
      qryRecipts.FieldByName('ReciptID').AsInteger;
    Parameters.ParamByName('ServerID').Value :=
      qryRecipts.FieldByName('ServerID').AsInteger;
    Parameters.ParamByName('YearID').Value := qryRecipts.FieldByName('YearID')
      .AsInteger;
    Open;
  end;

end;

procedure TReciptsTradesF.srcReciptsTradesStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryReciptsTrades.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  btnClose.Cancel := newPanel.Visible;
end;

procedure TReciptsTradesF.qryReciptsTradesAfterInsert(DataSet: TDataSet);
begin
  inherited;
  With qryReciptsTrades do
  begin
    FieldByName('ReciptID').AsInteger := qryRecipts.FieldByName('ReciptID')
      .AsInteger;
    FieldByName('ServerID').AsInteger := qryRecipts.FieldByName('ServerID')
      .AsInteger;
    FieldByName('YearID').AsInteger := qryRecipts.FieldByName('YearID')
      .AsInteger;

    qryReciptsTradesForoushType.AsInteger := 0;
  end;
end;

procedure TReciptsTradesF.qryReciptsTradesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف مطمئن هستيد؟') <> mrYes then
    Abort
end;

end.
