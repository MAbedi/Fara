unit Forwards2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Encryption, Math, DB, Mask, Grids, Vcl.DBGrids, ComCtrls, DBCtrls, ADODB,
  System.ImageList, System.Actions;

type
  TForwards2F = class(Ttemplate2MDIF)
    qryMaster: TADOQuery;
    SrcMaster: TDataSource;
    grpMaster: TGroupBox;
    sbtnMaster: TSpeedButton;
    edtProductCode: TDBEdit;
    edtc_StuffName: TDBEdit;
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
    qryMasterProductCode: TLargeintField;
    qryMasterc_StuffName: TStringField;
    qryTicketsItemNote: TStringField;
    qryTicketsst1: TIntegerField;
    qryOtherConfirmedItemNote: TStringField;
    qryOtherConfirmedst1: TIntegerField;
    qryConfirmedItemNote: TStringField;
    qryConfirmedst1: TIntegerField;
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
  private
    // FormType: Byte;
    function GetActqry: TADOQuery;
    function GetActDBGrid: TDBGrid;
    procedure ToggleCheck;
    procedure ToggleCheck1;

    { Private declarations }

  public
    { Public declarations }
  end;

var
  Forwards2F: TForwards2F;

implementation

uses DM, GlobalPro, sort2, searchCode_ADO, FaraConsts, search2, MMESSAGE;

{$R *.dfm}

procedure TForwards2F.actConfirmedExecute(Sender: TObject);
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
          if FieldByName('EffectType').AsInteger in [3, 4, 5, 7,8] then
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

procedure TForwards2F.actFilterExecute(Sender: TObject);
begin
  inherited;
  With qryTickets do
  begin
    Active := False;
    Parameters.ParamByName('ReciptDateFrom').Value := Trim(mskDateFrom.Text);;
    Parameters.ParamByName('ReciptDateTo').Value := Trim(mskDateTo.Text);;
    Parameters.ParamByName('StuffCodeFrom').Value :=
      Trim(mskStuffCodeFrom.Text);;
    Parameters.ParamByName('StuffCodeTo').Value := Trim(mskStuffCodeTo.Text);
  end;

  With qryMaster do
  begin
    Active := False;
    Active := True;
  end;
end;

procedure TForwards2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(GetActqry);
end;

procedure TForwards2F.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(GetActDBGrid);
end;

procedure TForwards2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(GetActqry);
end;

procedure TForwards2F.btn1Click(Sender: TObject);
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

procedure TForwards2F.DBGridOtherConfirmedDblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck1;
end;

procedure TForwards2F.DBGridOtherConfirmedDrawColumnCell(Sender: TObject;
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

procedure TForwards2F.DBGridOtherConfirmedKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    ToggleCheck1;
end;

procedure TForwards2F.DBGridConfirmedDblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TForwards2F.DBGridConfirmedDrawColumnCell(Sender: TObject;
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

procedure TForwards2F.DBGridConfirmedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    ToggleCheck;
end;

procedure TForwards2F.FormCreate(Sender: TObject);
begin
  inherited;
  // FormType := var_glb_gParam;
  // if FormType = 2 then
  // begin
  // BitBtn3.Visible := False;
  // btnOthersConfirmed.Visible := False;
  // Caption := 'كارتابل  سفارشات و خرید';
  // end;

  With DMf.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT MIN(ReciptItems.StuffCode) AS MinStuffCode,';
    SQL.Add('MAX(ReciptItems.StuffCode) AS MaxStuffCode,');
    SQL.Add('MIN(Recipts.ReciptDate) AS MinReciptDate,');
    SQL.Add('MAX(Recipts.ReciptDate) AS MaxReciptDate');
    SQL.Add('FROM ReciptItems INNER JOIN');
    SQL.Add('Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ');
    SQL.Add('ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID');
    SQL.Add('WHERE (Recipts.YearID = :YearID )');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Active := True;
    mskStuffCodeFrom.Text := FieldByName('MinStuffCode').AsString;
    mskStuffCodeTo.Text := FieldByName('MaxStuffCode').AsString;
    mskDateFrom.Text := FieldByName('MinReciptDate').AsString;
    mskDateTo.Text := FieldByName('MaxReciptDate').AsString;
    Active := False;
  end;
end;

procedure TForwards2F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGridTickets);
  SaveColWidth(DBGridConfirmed);
  SaveColWidth(DBGridOtherConfirmed);
end;

procedure TForwards2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGridTickets, 3);
  SetColSize(DBGridConfirmed, 4);
  SetColSize(DBGridOtherConfirmed, 4);
end;

procedure TForwards2F.qryConfirmedBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('RollbackEntity').AsInteger >
    DataSet.FieldByName('Entity').AsInteger then
  begin
    Warn('مقدار عدم تائید نمی تواند از  مقدار خرید بیشتر باشد');
    Abort;
  end;
end;

procedure TForwards2F.qryMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With GetActqry do
  begin
    Active := False;
    Parameters.ParamByName('ProductCode').Value :=
      qryMasterProductCode.AsInteger;
    Active := True;
  end;

end;

procedure TForwards2F.qryOtherConfirmedBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('RollbackEntity').AsInteger >
    DataSet.FieldByName('Entity').AsInteger then
  begin
    Warn('مقدار عدم تائید نمی تواند از  مقدار خرید بیشتر باشد');
    Abort;
  end;
end;

procedure TForwards2F.sbtnMasterClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 2] of String;
  sqltxt: string;
begin
  inherited;
  sqltxt := 'SELECT DISTINCT ReciptItems.ProductCode, StuffCoding.c_StuffName '
    + ' FROM ReciptItems INNER JOIN ' +
    ' StuffCoding ON ReciptItems.ProductCode = StuffCoding.c_StuffCode';
  b := searchCode_ADOF.SearchCode2(qryMaster.Connection, grpMaster.Caption,
    sqltxt, ['کد', 'مشخصات '], Results, [50, 150], alLeft);
  if b then
  begin
    qryMaster.Locate('ProductCode', Results[0], [loPartialKey]);
  end; // if

end;

function TForwards2F.GetActqry(): TADOQuery;
begin
  Result := qryTickets;
  if PageControl1.TabIndex = 1 then
    Result := qryConfirmed;
  if PageControl1.TabIndex = 2 then
    Result := qryOtherConfirmed;
end;

procedure TForwards2F.PageControl1Change(Sender: TObject);
begin
  inherited;
  actFilter.Execute;
end;

function TForwards2F.GetActDBGrid(): TDBGrid;
begin
  Result := DBGridTickets;
  if PageControl1.TabIndex = 1 then
    Result := DBGridConfirmed;
end;

procedure TForwards2F.ToggleCheck;
begin
  with qryConfirmed do
  begin
    Edit;
    FieldByName('FitfulID').AsInteger :=
      ifthen(FieldByName('FitfulID').AsInteger <> 0, 0, 1);
    post;
  end;
end;

procedure TForwards2F.ToggleCheck1;
begin
  with qryOtherConfirmed do
  begin
    Edit;
    FieldByName('FitfulID').AsInteger :=
      ifthen(FieldByName('FitfulID').AsInteger <> 0, 0, 1);
    post;
  end;
end;

end.
