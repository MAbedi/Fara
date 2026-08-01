// Abedi 1402/06/22
unit SellsEmporiums;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DBCtrls, Mask, DB, ADODB, DBClient, Provider,
  ComCtrls, zAPIBalloon, ppPrnabl, ppClass, ppCtrls, ppDB, ppBands,
  ppCache, ppDBPipe, ppDBBDE, ppComm, ppRelatv, ppProd, ppReport, Menus,
  ppVar, ppParameter, Account, ppDesignLayer, System.ImageList, System.Actions,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type

  TSellsEmporiumsF = class(Ttemplate2MDIF)
    qrySellsEmporiums: TADOQuery;
    qrySellsEmporiumsSellsEmporium: TSmallintField;
    qrySellsEmporiumsSellsEmporiumName: TStringField;
    srcSellsEmporiums: TDataSource;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    qryOperators: TADOQuery;
    qryUsersSellsEmporium: TADOQuery;
    qryUsersSellsEmporiumUserID: TIntegerField;
    qryUsersSellsEmporiumSellsEmporium: TSmallintField;
    qryOperatorsUserID: TIntegerField;
    qryOperatorsname: TStringField;
    cliOperators: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    srcOperators: TDataSource;
    cliOperatorsUserID: TIntegerField;
    cliOperatorsname: TStringField;
    cliOperators_Checked: TBooleanField;
    ppReport1: TppReport;
    ppBDEPipeline1: TppBDEPipeline;
    actPrint: TAction;
    btnPrint: TBitBtn;
    btnExl: TBitBtn;
    actSendToExcel: TAction;
    btnSort: TBitBtn;
    PopupMenu1: TPopupMenu;
    actSort: TAction;
    N2: TMenuItem;
    N1: TMenuItem;
    DBNavigator1: TDBNavigator;
    qrySellsEmporiumsDetailCode: TStringField;
    qrySellsEmporiumsCTopicCode: TStringField;
    qrySellsEmporiumsCTopicCode2: TStringField;
    actSelectAll: TAction;
    btnSearch: TBitBtn;
    PopMnuPrint: TPopupMenu;
    AllMenuItem: TMenuItem;
    MenuItem6: TMenuItem;
    ppHeaderBand1: TppHeaderBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine3: TppLine;
    ppLabel12: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppLabel17: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine5: TppLine;
    actSelectAllStore: TAction;
    qrySellsEmporiumsCTopicCode3: TStringField;
    qrySellsEmporiumsTopicCode: TLargeintField;
    PageControl1: TPageControl;
    tsUserRelations: TTabSheet;
    tsStoreInfos: TTabSheet;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtSellsEmporium: TDBEdit;
    edtSellsEmporiumName: TDBEdit;
    actRelateToAllStore: TAction;
    Panel1: TPanel;
    btnRevertAll: TBitBtn;
    btnSelectAll: TBitBtn;
    DBGrid1: TCedarDbgrid;
    DBGrid2: TCedarDbgrid;
    BitBtn11: TBitBtn;
    qrySellsEmporiumsServerID: TIntegerField;
    qrySellsEmporiumsReportFileName: TStringField;
    Label3: TLabel;
    edtServerID: TDBEdit;
    Label4: TLabel;
    edtReportFileName: TDBEdit;
    Label5: TLabel;
    edtDetailCode: TDBEdit;
    Label6: TLabel;
    edtCTopicCode: TDBEdit;
    Label11: TLabel;
    edtCTopicCode2: TDBEdit;
    edtCTopicCode3: TDBEdit;
    Label13: TLabel;
    edtTopicCode: TDBEdit;
    Label7: TLabel;
    procedure DBGrid2DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qrySellsEmporiumsAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure srcSellsEmporiumsStateChange(Sender: TObject);
    procedure qrySellsEmporiumsAfterScroll(DataSet: TDataSet);
    procedure qrySellsEmporiumsAfterPost(DataSet: TDataSet);
    procedure ppLblCompanyGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure qrySellsEmporiumsBeforeDelete(DataSet: TDataSet);
    procedure N2Click(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure AllMenuItemClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure actSelectAllStoreExecute(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure actRelateToAllStoreExecute(Sender: TObject);
    procedure btnRevertAllClick(Sender: TObject);
    procedure qrySellsEmporiumsBeforeScroll(DataSet: TDataSet);
  private
    UserID: Integer;
    Show_Message: Boolean;
    FRevertAll: Boolean;
    procedure SaveSelected;
    procedure ReadSelected;
    function CheckTick: Boolean;

    { Private declarations }
  public

    { Public declarations }
  end;

var
  SellsEmporiumsF: TSellsEmporiumsF;

implementation

uses dm, GlobalPro, mmessage, search2, FormFunctions, FaraConsts,
  ReciptsFunctions, main;

{$R *.dfm}

procedure TSellsEmporiumsF.SaveSelected;
begin
  with qryUsersSellsEmporium do
  begin
    try
      DisableControls;
      First;
      while not eof do
      begin
        delete;
      end; // while
      cliOperators.DisableControls;
      cliOperators.First;
      cliOperators.Filtered := False;
      while not cliOperators.eof do
      begin
        if cliOperators_Checked.AsBoolean then
        begin
          Insert;
          FieldByName('UserID').AsInteger := cliOperators.FieldByName('UserID')
            .AsInteger;
          FieldByName('SellsEmporium').AsInteger :=
            qrySellsEmporiums.FieldByName('SellsEmporium').AsInteger;
          post;

        end; // if
        cliOperators.Next;
      end; // while
    finally
      UpdateBatch;
      EnableControls;
      cliOperators.EnableControls;
    end; // try
  end; // with
end;

procedure TSellsEmporiumsF.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  if not(qrySellsEmporiums.State in dseditmodes) then
    qrySellsEmporiums.Edit;
  DataSetEdit1.Execute;
  with cliOperators do
  begin
    Edit;
    FieldByName('_Checked').AsBoolean := not FieldByName('_Checked').AsBoolean;
    post;
  end; // with
end;

procedure TSellsEmporiumsF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  accSpeedButtonTopicCode(qrySellsEmporiums, (Sender as TSpeedButton).Hint)
end;

procedure TSellsEmporiumsF.qrySellsEmporiumsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('TopicCode').AsInteger := 0;
  DataSet.FieldByName('DetailCode').AsInteger := 0;
  DataSet.FieldByName('CTopicCode').AsInteger := 0;
  DataSet.FieldByName('CTopicCode2').AsInteger := 0;
  DataSet.FieldByName('CTopicCode3').AsInteger := 0;
  DataSet.FieldByName('SellsEmporium').AsInteger :=
    GetANewCode(Self.Name, 'SellsEmporiums', 'SellsEmporium');
  edtSellsEmporium.SetFocus;
end;

procedure TSellsEmporiumsF.FormCreate(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePage := tsStoreInfos;
  with qryUsersSellsEmporium do
  begin
    Active := False;
    SQL.Text := 'SELECT UserID, SellsEmporium';
    SQL.Add('FROM UsersSellsEmporium');
    SQL.Add('Where ( SellsEmporium =:SellsEmporium)');
    if CompanyFilterinLogin then
      SQL.Add('AND ( UserID in (SELECT DISTINCT UserID FROM FaraSystems.dbo.OperatorCompanies WHERE(n_subcompany = '
        + FcompanyCode.ToString + ')))');
    Active := True;
  end;

  with qryOperators do
  begin
    Active := False;
    SQL.Text := 'SELECT UserID, name';
    SQL.Add('FROM FaraSystems.dbo.Operators');
    SQL.Add('WHERE (SystemID IN(0, 18 ,40) )');
    if CompanyFilterinLogin then
      SQL.Add('AND ( UserID in (SELECT DISTINCT UserID FROM FaraSystems.dbo.OperatorCompanies WHERE(n_subcompany = '
        + FcompanyCode.ToString + ')))');
    Active := True;
  end;

  qrySellsEmporiums.Active := True;
  Show_Message := True;
end;

procedure TSellsEmporiumsF.srcSellsEmporiumsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qrySellsEmporiums.State in dseditmodes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
end;

procedure TSellsEmporiumsF.ReadSelected;
begin
  cliOperators.Active := False;
  cliOperators.Active := True;
  with qryUsersSellsEmporium do
  begin
    try
      DisableControls;
      First;
      while not eof do
      begin
        with cliOperators do
        begin
          if Locate('UserID', qryUsersSellsEmporium.FieldByName('UserID')
            .AsInteger, []) then
          begin
            Edit;
            FieldByName('_Checked').AsBoolean := True;
            post;
          end; // if
        end; // with
        Next;
      end; // while
    finally
      EnableControls;
      cliOperators.EnableControls;
    end; // try
  end; // with
end;

procedure TSellsEmporiumsF.qrySellsEmporiumsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  ReadSelected;
  cliOperators.Locate('UserID', UserID, []);

end;

procedure TSellsEmporiumsF.qrySellsEmporiumsAfterPost(DataSet: TDataSet);
begin
  inherited;
  SaveSelected;
  if Show_Message then
    BigMessage('ثبت شد.‏', 1);
end;

procedure TSellsEmporiumsF.ppLblCompanyGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := AppBank.CompanyName;
end;

procedure TSellsEmporiumsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMnuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TSellsEmporiumsF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TSellsEmporiumsF.qrySellsEmporiumsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف اين مرکزفروش مطمئن هستيد؟') <> mrYes then
    Abort;
  BigMessage('حذف شد.', 1);
end;

procedure TSellsEmporiumsF.N2Click(Sender: TObject);
begin
  inherited;
  qrySellsEmporiums.Sort := 'SellsEmporiumName';
end;

procedure TSellsEmporiumsF.actSortExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TSellsEmporiumsF.N1Click(Sender: TObject);
begin
  inherited;
  qrySellsEmporiums.Sort := 'SellsEmporium';
end;

procedure TSellsEmporiumsF.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TSellsEmporiumsF.ppSysVarPageNoGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

function TSellsEmporiumsF.CheckTick: Boolean;
begin
  Result := False;
  with cliOperators do
  begin
    DisableControls;
    Filtered := False;
    First;
    try
      while not eof do
      begin
        Result := cliOperators_Checked.AsBoolean;
        if Result then
          Break;
        Next;
      end; // while
    finally
      First;
      EnableControls;
    end; // try
  end; // with
end;

procedure TSellsEmporiumsF.qrySellsEmporiumsBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  UserID := cliOperatorsUserID.AsInteger;
end;

procedure TSellsEmporiumsF.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  if not(qrySellsEmporiums.State in dseditmodes) then
    qrySellsEmporiums.Edit;
  with cliOperators do
  begin
    try
      DisableControls;
      First;
      while not eof do
      begin
        Edit;
        if FRevertAll then
          FieldByName('_Checked').AsBoolean := not FieldByName('_Checked')
            .AsBoolean
        else
          FieldByName('_Checked').AsBoolean := True;
        post;
        Next;
      end;
    finally
      EnableControls;
    end;
  end;
  FRevertAll := False;
end;

procedure TSellsEmporiumsF.actRelateToAllStoreExecute(Sender: TObject);
var
  UserID: Integer;
  Checked: Boolean;
begin
  inherited;
  UserID := cliOperatorsUserID.AsInteger;
  Checked := cliOperators_Checked.AsBoolean;
  With qrySellsEmporiums do
  begin
    First;
    Show_Message := False;
    while not eof do
    begin
      Edit;
      with cliOperators do
      begin
        if cliOperators.Locate('UserID', UserID, []) then
        begin
          Edit;
          FieldByName('_Checked').AsBoolean := Checked;
          post;
        end;
      end; // with
      post;
      Next;
    end;
    Show_Message := True;
  end;

end;

procedure TSellsEmporiumsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySellsEmporiums);
end;

procedure TSellsEmporiumsF.AllMenuItemClick(Sender: TObject);
begin
  inherited;
  try
    qrySellsEmporiums.DisableControls;
    InitReportFile(ppReport1, 'SellsEmporiumsF' +
      IntToStr((Sender as TMenuItem).Tag));
  finally
    qrySellsEmporiums.EnableControls;
  end; // try

end;

procedure TSellsEmporiumsF.BitBtn11Click(Sender: TObject);
var
  SellsEmporium: Integer;
begin
  inherited;
  SellsEmporium := qrySellsEmporiumsSellsEmporium.AsInteger;
  try
    Accountf.enter(qrySellsEmporiums)
  finally
    qrySellsEmporiums.Requery();
    qrySellsEmporiums.Locate('SellsEmporium', SellsEmporium, []);
  end;
end;

procedure TSellsEmporiumsF.btnRevertAllClick(Sender: TObject);
begin
  inherited;
  FRevertAll := True;
  actSelectAll.Execute;
end;

procedure TSellsEmporiumsF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  if (qrySellsEmporiums.State in dseditmodes) then
    qrySellsEmporiums.post;
end;

procedure TSellsEmporiumsF.actSelectAllStoreExecute(Sender: TObject);
begin
  inherited;
  With qrySellsEmporiums do
  begin
    First;
    Show_Message := False;
    while not eof do
    begin
      actSelectAll.Execute;
      post;
      Next;
    end;
    Show_Message := True;
  end;
end;

end.
