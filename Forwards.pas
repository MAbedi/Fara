unit Forwards;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Encryption, Math, DB, Mask, Grids, Vcl.DBGrids, ComCtrls, DBCtrls, ADODB,
  ppDB, ppDBPipe, ppParameter, ppDesignLayer, ppBands, ppCache, ppClass, ppComm,
  ppRelatv, ppProd, ppReport, System.ImageList, System.Actions;

type
  TForwardsF = class(Ttemplate2MDIF)
    qryMaster: TADOQuery;
    SrcMaster: TDataSource;
    qryMasterCustID: TIntegerField;
    qryMasterCustName: TStringField;
    grpMaster: TGroupBox;
    sbtnMaster: TSpeedButton;
    edtCustID: TDBEdit;
    edtCustName: TDBEdit;
    DBNavigator1: TDBNavigator;
    PageControl1: TPageControl;
    tbsTickets: TTabSheet;
    tbsConfirmed: TTabSheet;
    qryTickets: TADOQuery;
    srcTickets: TDataSource;
    qryConfirmed: TADOQuery;
    srcConfirmed: TDataSource;
    qryConfirmedServerID: TIntegerField;
    qryConfirmedYearID: TIntegerField;
    qryConfirmedReciptID: TIntegerField;
    qryConfirmedReciptItemID: TIntegerField;
    qryConfirmedStoreID: TSmallintField;
    qryConfirmedReciptNumber: TIntegerField;
    qryConfirmedReciptDate: TStringField;
    qryConfirmedReciptType: TWordField;
    qryConfirmedEntity: TFloatField;
    qryConfirmedweight: TFloatField;
    qryConfirmedAidNumber: TStringField;
    qryConfirmedAidDate: TStringField;
    qryConfirmedPersonID3: TIntegerField;
    qryConfirmedPrv_ReciptNumber: TIntegerField;
    qryConfirmedPrv_ReciptDate: TStringField;
    qryTicketsشمارهدرخواست: TIntegerField;
    qryTicketsتاريخدرخواست: TStringField;
    qryTicketsكدكالا: TLargeintField;
    qryTicketsنامكالا: TStringField;
    qryTicketsواحدشمارش: TStringField;
    qryTicketsمقداردرخواست: TFloatField;
    qryTicketsتحققيافته: TFloatField;
    qryTicketsباقيمانده: TFloatField;
    qryTicketsكدقسمت: TIntegerField;
    qryTicketsCustName: TStringField;
    DBGridTickets: TDBGrid;
    DBGridConfirmed: TDBGrid;
    pnlConfirmed: TPanel;
    actSort: TAction;
    actSendExel: TAction;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    actConfirmed: TAction;
    grpFilter: TGroupBox;
    btn2: TSpeedButton;
    mskStuffCodeTo: TMaskEdit;
    lbl13: TLabel;
    btn1: TSpeedButton;
    mskStuffCodeFrom: TMaskEdit;
    lbl12: TLabel;
    mskDateFrom: TMaskEdit;
    lblDate: TLabel;
    mskDateTo: TMaskEdit;
    Label1: TLabel;
    mskpassword: TMaskEdit;
    Label2: TLabel;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    qryConfirmedFitfulID: TFMTBCDField;
    Image2: TImage;
    Image1: TImage;
    qryConfirmedConfirming: TStringField;
    qryConfirmedRollbackEntity: TBCDField;
    qryConfirmedReciptCaption: TStringField;
    qryConfirmedEffectType: TWordField;
    qryConfirmedStuffCode: TLargeintField;
    qryConfirmedc_StuffName: TStringField;
    qryConfirmedc_StuffTecInfo: TStringField;
    TabSheet1: TTabSheet;
    qryOtherConfirmed: TADOQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    FMTBCDField1: TFMTBCDField;
    SmallintField1: TSmallintField;
    IntegerField5: TIntegerField;
    StringField1: TStringField;
    WordField1: TWordField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    BCDField1: TBCDField;
    FloatField2: TFloatField;
    BCDField2: TBCDField;
    StringField3: TStringField;
    StringField5: TStringField;
    WordField2: TWordField;
    LargeintField1: TLargeintField;
    StringField6: TStringField;
    StringField7: TStringField;
    qryOtherConfirmedPersonID1: TIntegerField;
    DBGridOtherConfirmed: TDBGrid;
    srcOtherConfirmed: TDataSource;
    Panel1: TPanel;
    btnOthersConfirmed: TBitBtn;
    qryTicketsc_StuffTecInfo: TStringField;
    qryTicketsProductCode: TLargeintField;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppPageStyle1: TppPageStyle;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList1: TppParameterList;
    plnMaster: TppDBPipeline;
    plnTickets: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    ppField9: TppField;
    ppField10: TppField;
    ppField11: TppField;
    ppField12: TppField;
    ppField13: TppField;
    ppField14: TppField;
    ppField15: TppField;
    ppField16: TppField;
    ppField17: TppField;
    ppField18: TppField;
    ppField19: TppField;
    ppField20: TppField;
    ppField21: TppField;
    ppField22: TppField;
    ppField23: TppField;
    ppField24: TppField;
    ppField25: TppField;
    ppField26: TppField;
    ppField27: TppField;
    ppField28: TppField;
    ppField29: TppField;
    ppField30: TppField;
    ppField31: TppField;
    ppField32: TppField;
    ppField33: TppField;
    ppField34: TppField;
    ppField35: TppField;
    ppField36: TppField;
    ppField37: TppField;
    ppField38: TppField;
    ppField39: TppField;
    ppField40: TppField;
    ppField41: TppField;
    ppField42: TppField;
    ppField43: TppField;
    ppField44: TppField;
    ppField45: TppField;
    ppField46: TppField;
    ppField47: TppField;
    ppField48: TppField;
    ppField49: TppField;
    ppField50: TppField;
    ppField51: TppField;
    ppField52: TppField;
    ppField53: TppField;
    ppField54: TppField;
    ppField55: TppField;
    ppField56: TppField;
    ppField57: TppField;
    ppField58: TppField;
    ppField59: TppField;
    ppField60: TppField;
    ppField61: TppField;
    ppField62: TppField;
    ppField63: TppField;
    ppField64: TppField;
    ppField65: TppField;
    ppField66: TppField;
    ppField67: TppField;
    ppField68: TppField;
    ppField69: TppField;
    ppField70: TppField;
    ppField71: TppField;
    ppField72: TppField;
    ppField73: TppField;
    ppField74: TppField;
    ppField75: TppField;
    ppField76: TppField;
    ppField77: TppField;
    ppField78: TppField;
    ppField79: TppField;
    ppField80: TppField;
    plnConfirmed: TppDBPipeline;
    ppField81: TppField;
    ppField82: TppField;
    ppField83: TppField;
    ppField84: TppField;
    ppField85: TppField;
    ppField86: TppField;
    ppField87: TppField;
    ppField88: TppField;
    ppField89: TppField;
    ppField90: TppField;
    ppField91: TppField;
    ppField92: TppField;
    ppField93: TppField;
    ppField94: TppField;
    ppField95: TppField;
    ppField96: TppField;
    ppField97: TppField;
    ppField98: TppField;
    ppField99: TppField;
    ppField100: TppField;
    ppField101: TppField;
    ppField102: TppField;
    ppField103: TppField;
    ppField104: TppField;
    ppField105: TppField;
    ppField106: TppField;
    ppField107: TppField;
    ppField108: TppField;
    ppField109: TppField;
    ppField110: TppField;
    ppField111: TppField;
    ppField112: TppField;
    ppField113: TppField;
    ppField114: TppField;
    ppField115: TppField;
    ppField116: TppField;
    ppField117: TppField;
    ppField118: TppField;
    ppField119: TppField;
    ppField120: TppField;
    ppField121: TppField;
    ppField122: TppField;
    ppField123: TppField;
    ppField124: TppField;
    ppField125: TppField;
    ppField126: TppField;
    ppField127: TppField;
    ppField128: TppField;
    ppField129: TppField;
    ppField130: TppField;
    ppField131: TppField;
    ppField132: TppField;
    ppField133: TppField;
    ppField134: TppField;
    ppField135: TppField;
    ppField136: TppField;
    ppField137: TppField;
    ppField138: TppField;
    ppField139: TppField;
    ppField140: TppField;
    ppField141: TppField;
    ppField142: TppField;
    ppField143: TppField;
    ppField144: TppField;
    ppField145: TppField;
    ppField146: TppField;
    ppField147: TppField;
    ppField148: TppField;
    ppField149: TppField;
    ppField150: TppField;
    ppField151: TppField;
    ppField152: TppField;
    ppField153: TppField;
    ppField154: TppField;
    ppField155: TppField;
    ppField156: TppField;
    ppField157: TppField;
    ppField158: TppField;
    ppField159: TppField;
    ppField160: TppField;
    plnOtherConfirmed: TppDBPipeline;
    ppField161: TppField;
    ppField162: TppField;
    ppField163: TppField;
    ppField164: TppField;
    ppField165: TppField;
    ppField166: TppField;
    ppField167: TppField;
    ppField168: TppField;
    ppField169: TppField;
    ppField170: TppField;
    ppField171: TppField;
    ppField172: TppField;
    ppField173: TppField;
    ppField174: TppField;
    ppField175: TppField;
    ppField176: TppField;
    ppField177: TppField;
    ppField178: TppField;
    ppField179: TppField;
    ppField180: TppField;
    ppField181: TppField;
    ppField182: TppField;
    ppField183: TppField;
    ppField184: TppField;
    ppField185: TppField;
    ppField186: TppField;
    ppField187: TppField;
    ppField188: TppField;
    ppField189: TppField;
    ppField190: TppField;
    ppField191: TppField;
    ppField192: TppField;
    ppField193: TppField;
    ppField194: TppField;
    ppField195: TppField;
    ppField196: TppField;
    ppField197: TppField;
    ppField198: TppField;
    ppField199: TppField;
    ppField200: TppField;
    ppField201: TppField;
    ppField202: TppField;
    ppField203: TppField;
    ppField204: TppField;
    ppField205: TppField;
    ppField206: TppField;
    ppField207: TppField;
    ppField208: TppField;
    ppField209: TppField;
    ppField210: TppField;
    ppField211: TppField;
    ppField212: TppField;
    ppField213: TppField;
    ppField214: TppField;
    ppField215: TppField;
    ppField216: TppField;
    ppField217: TppField;
    ppField218: TppField;
    ppField219: TppField;
    ppField220: TppField;
    ppField221: TppField;
    ppField222: TppField;
    ppField223: TppField;
    ppField224: TppField;
    ppField225: TppField;
    ppField226: TppField;
    ppField227: TppField;
    ppField228: TppField;
    ppField229: TppField;
    ppField230: TppField;
    ppField231: TppField;
    ppField232: TppField;
    ppField233: TppField;
    ppField234: TppField;
    ppField235: TppField;
    ppField236: TppField;
    ppField237: TppField;
    ppField238: TppField;
    ppField239: TppField;
    ppField240: TppField;
    BitBtn2: TBitBtn;
    actPrint: TAction;
    CheckBox1: TCheckBox;
    qryTicketsتوضیحاتکالا: TStringField;
    SpeedButton1: TSpeedButton;
    MskStoreIDTo: TMaskEdit;
    Label3: TLabel;
    btnStore: TSpeedButton;
    MskStoreIDFrom: TMaskEdit;
    Label4: TLabel;
    btnGroup: TSpeedButton;
    Label5: TLabel;
    MskGroupIDFrom: TMaskEdit;
    Label6: TLabel;
    MskGroupIDTo: TMaskEdit;
    SpeedButton4: TSpeedButton;
    procedure actSortExecute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure qryMasterAfterScroll(DataSet: TDataSet);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExelExecute(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGridConfirmedDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridConfirmedDblClick(Sender: TObject);
    procedure DBGridConfirmedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actConfirmedExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure sbtnMasterClick(Sender: TObject);
    procedure qryConfirmedBeforePost(DataSet: TDataSet);
    procedure DBGridOtherConfirmedDblClick(Sender: TObject);
    procedure DBGridOtherConfirmedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridOtherConfirmedDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure qryOtherConfirmedBeforePost(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCaptionGetText(Sender: TObject; var Text: String);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure CheckBox1Click(Sender: TObject);
    procedure qryMasterAfterOpen(DataSet: TDataSet);
    procedure btnStoreClick(Sender: TObject);
    procedure btnGroupClick(Sender: TObject);
  private
    FormType: Byte;
    PersonID3From, PersonID3To: Integer;
    function GetActqry: TADOQuery;
    function GetActDBGrid: TDBGrid;
    procedure ToggleCheck;
    procedure ToggleCheck1;

    { Private declarations }

  public
    { Public declarations }
  end;

var
  ForwardsF: TForwardsF;

implementation

uses DM, GlobalPro, sort2, searchCode_ADO, FaraConsts, search2, MMESSAGE;

{$R *.dfm}

procedure TForwardsF.actConfirmedExecute(Sender: TObject);
var
  s, FieldNameEntity: string;
  i: Integer;
begin
  inherited;

  With GetActqry do
    try
      DisableControls;
      First;
      while not Eof do
      begin
        if FieldByName('FitfulID').AsInteger = 1 then
        begin
          if FieldByName('EffectType').AsInteger in [3, 4, 5, 7, 8] then
          begin
            FieldNameEntity := 'OutputEntity';
          end
          else
          begin
            FieldNameEntity := 'InputEntity';
          end;

          s := s + Format('UPDATE ReciptItems SET Confirming = %s ',
            [QuotedStr(User.name)])

            + Format(',RollbackEntity = %d ',
            [FieldByName('RollbackEntity').AsInteger]) +
            Format(', %s = %d ', [FieldNameEntity, FieldByName('Entity')
            .AsInteger - FieldByName('RollbackEntity').AsInteger]) +

            Format('WHERE(ReciptItemID = %D)AND(ReciptID = %D)AND(ServerID = %D)AND(YearID = %D) ',
            [FieldByName('ReciptItemID').AsInteger, FieldByName('ReciptID')
            .AsInteger, FieldByName('ServerID').AsInteger,
            FieldByName('YearID').AsInteger]);
        end;
        Next;
      end;
      if s <> EmptyStr then
      begin
        DMf.adcBSell.Execute(s, i);
        if i > 0 then
          BigMessage(' تاييد شد', 1);
      end;
      GetActqry.Requery();
    finally
      EnableControls;
    end;
end;

procedure TForwardsF.actFilterExecute(Sender: TObject);
begin
  inherited;
  if User.password <> Encrypt(Trim(mskpassword.Text), 33189) + '@@' then
  begin
    Warn('رمز صحيح نمي باشد');
    Abort;
  end;

  With qryTickets do
  begin
    Active := False;
    Parameters.ParamByName('ReciptDateFrom').Value := Trim(mskDateFrom.Text);
    Parameters.ParamByName('ReciptDateTo').Value := Trim(mskDateTo.Text);

    Parameters.ParamByName('StuffCodeFrom').Value :=
      Trim(mskStuffCodeFrom.Text);
    Parameters.ParamByName('StuffCodeTo').Value := Trim(mskStuffCodeTo.Text);

    Parameters.ParamByName('GroupIDFrom').Value := Trim(MskGroupIDFrom.Text);;
    Parameters.ParamByName('GroupIDTo').Value := Trim(MskGroupIDTo.Text);

    Parameters.ParamByName('StoreIDFrom').Value := Trim(MskStoreIDFrom.Text);
    Parameters.ParamByName('StoreIDTo').Value := Trim(MskStoreIDTo.Text);

  end;

  With qryMaster do
  begin
    Active := False;
    Parameters.ParamByName('UserID').Value := User.ID;
    Active := True;
  end;
end;

procedure TForwardsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'ForwardsF' + FormType.ToString.Trim + '_' +
    PageControl1.TabIndex.ToString.Trim);
end;

procedure TForwardsF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(GetActqry);
end;

procedure TForwardsF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(GetActDBGrid);
end;

procedure TForwardsF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(GetActqry);
end;

procedure TForwardsF.btn1Click(Sender: TObject);
var
  sqlText: String;
  Results: array [0 .. 1] of String;
begin
  inherited;
  sqlText := 'SELECT DISTINCT ReciptItems.StuffCode, StuffCoding.c_StuffName ' +
    'FROM ReciptItems INNER JOIN ' +
    'StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode';
  if searchCode_ADOF.SearchCode2(DMf.adcBSell, 'كدهاي كالا', sqlText,
    ['كد كالا', 'شرح'], Results, [80, 350], alLeft) then
    if (Sender as TSpeedButton).Tag = 0 then
      mskStuffCodeFrom.Text := Results[0]
    else
      mskStuffCodeTo.Text := Results[0]
end;

procedure TForwardsF.btnGroupClick(Sender: TObject);
var
  sqlText: String;
  Results: array [0 .. 1] of String;
begin
  inherited;
  sqlText := 'SELECT GroupID, GroupName FROM StuffGroups';
  if searchCode_ADOF.SearchCode2(DMf.adcBSell, 'كدهاي گروه', sqlText,
    ['كد گروه', 'شرح'], Results, [80, 350], alLeft) then
    if (Sender as TSpeedButton).Tag = 0 then
      MskGroupIDFrom.Text := Results[0]
    else
      MskGroupIDTo.Text := Results[0]

end;

procedure TForwardsF.btnStoreClick(Sender: TObject);
var
  sqlText: String;
  Results: array [0 .. 1] of String;
begin
  inherited;
  sqlText := 'SELECT n_StoreID, c_StoreName FROM Stores';
  if searchCode_ADOF.SearchCode2(DMf.adcBSell, 'كدهاي انبار', sqlText,
    ['كد انبار', 'شرح'], Results, [80, 350], alLeft) then
    if (Sender as TSpeedButton).Tag = 0 then
      MskStoreIDFrom.Text := Results[0]
    else
      MskStoreIDTo.Text := Results[0]
end;

procedure TForwardsF.CheckBox1Click(Sender: TObject);
begin
  inherited;
  qryMasterAfterScroll(qryMaster)
end;

procedure TForwardsF.DBGridOtherConfirmedDblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck1;
end;

procedure TForwardsF.DBGridOtherConfirmedDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGridOtherConfirmed.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGridOtherConfirmed.Canvas.Rectangle(Rect);
    if qryOtherConfirmed.FieldByName('FitfulID').AsInteger <> 0 then
      DBGridOtherConfirmed.Canvas.Draw(Rect.Left, Rect.Top,
        Image1.Picture.Graphic)
    else
      DBGridOtherConfirmed.Canvas.Draw(Rect.Left, Rect.Top,
        Image2.Picture.Graphic)
  end; // if

end;

procedure TForwardsF.DBGridOtherConfirmedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    ToggleCheck1;
end;

procedure TForwardsF.DBGridConfirmedDblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TForwardsF.DBGridConfirmedDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGridConfirmed.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGridConfirmed.Canvas.Rectangle(Rect);
    if qryConfirmed.FieldByName('FitfulID').AsInteger <> 0 then
      DBGridConfirmed.Canvas.Draw(Rect.Left, Rect.Top, Image1.Picture.Graphic)
    else
      DBGridConfirmed.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if

end;

procedure TForwardsF.DBGridConfirmedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    ToggleCheck;
end;

procedure TForwardsF.FormCreate(Sender: TObject);
begin
  inherited;
  FormType := var_glb_gParam;
  if FormType = 2 then
  begin
    BitBtn3.Visible := False;
    btnOthersConfirmed.Visible := False;
    Caption := 'كارتابل  سفارشات و خرید';
  end;

  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT MIN(ReciptItems.StuffCode) AS MinStuffCode, MAX(ReciptItems.StuffCode) AS MaxStuffCode';
    SQL.Add(', MIN(Recipts.ReciptDate) AS MinReciptDate, MAX(Recipts.ReciptDate) AS MaxReciptDate');
    SQL.Add(', MIN(Recipts.StoreID) AS StoreIDFrom, MAX(Recipts.StoreID) AS StoreIDTo');
    SQL.Add(', MIN(StuffCoding.GroupID) AS GroupIDFrom, MAX(StuffCoding.GroupID) AS GroupIDTo');
    SQL.Add('FROM ReciptItems INNER JOIN');
    SQL.Add('Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND');
    SQL.Add('ReciptItems.YearID = Recipts.YearID INNER JOIN');
    SQL.Add('StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_StuffCode');
    SQL.Add('WHERE (Recipts.YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Active := True;
    mskStuffCodeFrom.Text := FieldByName('MinStuffCode').AsString;
    mskStuffCodeTo.Text := FieldByName('MaxStuffCode').AsString;

    MskStoreIDFrom.Text := FieldByName('StoreIDFrom').AsString;
    MskStoreIDTo.Text := FieldByName('StoreIDTo').AsString;

    MskGroupIDFrom.Text := FieldByName('GroupIDFrom').AsString;
    MskGroupIDTo.Text := FieldByName('GroupIDTo').AsString;

    // mskDateFrom.Text := FieldByName('MinReciptDate').AsString;
    mskDateTo.Text := FieldByName('MaxReciptDate').AsString;
    Active := False;
  end;
end;

procedure TForwardsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGridTickets);
  SaveColWidth(DBGridConfirmed);
  SaveColWidth(DBGridOtherConfirmed);
end;

procedure TForwardsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGridTickets, 3);
  SetColSize(DBGridConfirmed, 4);
  SetColSize(DBGridOtherConfirmed, 4);
end;

procedure TForwardsF.qryConfirmedBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('RollbackEntity').AsInteger >
    DataSet.FieldByName('Entity').AsInteger then
  begin
    Warn('مقدار عدم تائید نمی تواند از  مقدار خرید بیشتر باشد');
    Abort;
  end;
end;

procedure TForwardsF.qryMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  PersonID3From := qryMasterCustID.AsInteger;
  qryMaster.last;
  PersonID3To := qryMasterCustID.AsInteger;
end;

procedure TForwardsF.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With GetActqry do
  begin
    Active := False;
    if CheckBox1.Checked then
    begin
      Parameters.ParamByName('PersonID3From').Value := PersonID3From;
      Parameters.ParamByName('PersonID3To').Value := PersonID3To;
    end
    else
    begin
      Parameters.ParamByName('PersonID3From').Value :=
        qryMasterCustID.AsInteger;
      Parameters.ParamByName('PersonID3To').Value := qryMasterCustID.AsInteger;
    end;
    Active := True;
  end;

end;

procedure TForwardsF.qryOtherConfirmedBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('RollbackEntity').AsInteger >
    DataSet.FieldByName('Entity').AsInteger then
  begin
    Warn('مقدار عدم تائید نمی تواند از  مقدار خرید بیشتر باشد');
    Abort;
  end;
end;

procedure TForwardsF.sbtnMasterClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 2] of String;
  sqltxt: string;
begin
  inherited;
  sqltxt := StringReplace(qryMaster.SQL.Text, ':UserID', IntToStr(User.ID), []);
  b := searchCode_ADOF.SearchCode2(qryMaster.Connection, grpMaster.Caption,
    sqltxt, ['کد', 'مشخصات '], Results, [50, 150], alLeft);
  if b then
  begin
    qryMaster.Locate('CustID', Results[0], [loPartialKey]);
  end; // if

end;

function TForwardsF.GetActqry(): TADOQuery;
begin
  Result := qryTickets;
  if PageControl1.TabIndex = 1 then
    Result := qryConfirmed;
  if PageControl1.TabIndex = 2 then
    Result := qryOtherConfirmed;
end;

procedure TForwardsF.PageControl1Change(Sender: TObject);
begin
  inherited;
  actFilter.Execute;
end;

function TForwardsF.GetActDBGrid(): TDBGrid;
begin
  Result := DBGridTickets;
  if PageControl1.TabIndex = 1 then
    Result := DBGridConfirmed;
end;

procedure TForwardsF.ToggleCheck;
begin
  with qryConfirmed do
  begin
    Edit;
    FieldByName('FitfulID').AsInteger :=
      ifthen(FieldByName('FitfulID').AsInteger <> 0, 0, 1);
    post;
  end;
end;

procedure TForwardsF.ToggleCheck1;
begin
  with qryOtherConfirmed do
  begin
    Edit;
    FieldByName('FitfulID').AsInteger :=
      ifthen(FieldByName('FitfulID').AsInteger <> 0, 0, 1);
    post;
  end;
end;

procedure TForwardsF.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  Text := GetPrintDate;
end;

procedure TForwardsF.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  Text := GetPageNumberString(Text)
end;

procedure TForwardsF.ppLblCaptionGetText(Sender: TObject; var Text: String);
begin
  Text := Caption;
end;

procedure TForwardsF.ppLblCompanyNameGetText(Sender: TObject; var Text: String);
begin
  Text := APPBank.CompanyName;
end;

end.
