unit ProductionForecasts2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls, Math,
  Buttons, StrUtils, FrProduction, Grids, Vcl.DBGrids, DB, ADODB, ppParameter,
  ppBands, ppCache, ppClass, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  Mask, sndkey32, DateUtils, shamsiDate, SumDBGrid, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TProductionForecasts2F = class(Ttemplate2MDIF)
    qryItem: TADOQuery;
    srcItem: TDataSource;
    grdPrimary: TDBGrid;
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
    qryFitful: TADOQuery;
    srcFitful: TDataSource;
    qryFitfulStuffCode: TFMTBCDField;
    qryFitfulFinalEntity: TBCDField;
    qryStuff_Unit_TecInf: TADOQuery;
    qryFitfulc_StuffName: TStringField;
    qryFitfulTransFormID: TFMTBCDField;
    Panel1: TPanel;
    pnlPost: TPanel;
    Label4: TLabel;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    cmbEffectType2: TComboBox;
    mskNumberfrom2: TMaskEdit;
    Panel5: TPanel;
    BitBtn15: TBitBtn;
    qryReciptItems: TADOQuery;
    lblList: TLabel;
    cmbStore: TComboBox;
    BitBtn3: TBitBtn;
    lblEffectType2: TLabel;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    mskPerformanceFrom: TMaskEdit;
    mskPerformanceTo: TMaskEdit;
    cmbPerformance: TComboBox;
    Label1: TLabel;
    mskDaysFuture: TMaskEdit;
    Label2: TLabel;
    btnPerformance: TBitBtn;
    actPerformance: TAction;
    qryFitfulCalcEntity: TBCDField;
    qryFitful_OldEntity: TFloatField;
    lblDays: TLabel;
    mskAmountFuture: TMaskEdit;
    Label5: TLabel;
    lblAmount: TLabel;
    qryFitfulWithinTheRangeOfRatio: TBCDField;
    qryFitfulThanToGenerateFuture: TBCDField;
    qryTransForms: TADOQuery;
    ADOQuery1: TADOQuery;
    qryPerformance: TADOQuery;
    LargeintField1: TLargeintField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    CheckBox1: TCheckBox;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Panel7: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    lblSum: TLabel;
    BitBtn8: TBitBtn;
    btnPerformance2: TBitBtn;
    procedure actCalcExecute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbEffectType2Change(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure qryItemAfterOpen(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure cmbStoreChange(Sender: TObject);
    procedure actPerformanceExecute(Sender: TObject);
    procedure qryFitfulStuffCodeChange(Sender: TField);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure cmbPerformanceChange(Sender: TObject);
    procedure btnPerformance2Click(Sender: TObject);
  private
    Days: Integer;
    EntityFuture, Entity: Real48;
    procedure gridkeyenter(Sender: TObject; var Key: Char);
    procedure Init_Combos;
    procedure Init_Forms;
    function Ratio: Real48;
    procedure UpDateList;
    function ChkCmb: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProductionForecasts2F: TProductionForecasts2F;

implementation

uses GlobalPro, DM, DBGrid2Print, search2, sort2, searchCode_ADO, FaraConsts,
  SelectStore, MMESSAGE, FormFunctions;

{$R *.dfm}

procedure TProductionForecasts2F.actCalcExecute(Sender: TObject);
var
  SQL1, SQL2, SQL3, SQL4, TransFormIDs: string;
  i: Integer;
begin
  inherited;
  With qryFitful do
  begin
    First;
    DisableControls;
    while not Eof do
    begin
      SQL1 := SQL1 +
        Format(', ProductionForecasts.Formol%d, ProductionForecasts.Entity%d',
        [RecNo, RecNo]);

      SQL2 := SQL2 + Format(' - ProductionForecasts.Entity%d', [RecNo]);

      SQL3 := SQL3 +
        Format(',sum(case when TransFormItems.TransFormID = %d then ' +
        ' TransFormItems.Entity else 0 end) as Formol%d',
        [qryFitfulTransFormID.AsInteger, RecNo]) +
        Format(',sum(case when TransFormItems.TransFormID = %d then' +
        ' TransFormItems.Entity * %f else 0 end) as Entity%d',
        [qryFitfulTransFormID.AsInteger, qryFitfulFinalEntity.AsFloat, RecNo]);

      TransFormIDs := TransFormIDs + IfThen(TransFormIDs = EmptyStr, '', ',') +
        qryFitfulTransFormID.AsString;

      SQL4 := SQL4 + IfThen(SQL4 = EmptyStr, '', '+') +
        Format('ProductionForecasts.Entity%d', [RecNo]);

      Next;
    end;
    EnableControls;
  end;

  With qryItem do
  begin
    Active := False;
    DisableControls;
    Fields.Clear;
    SQL.Text :=
      'SELECT ProductionForecasts.StuffCode, ProductionForecasts.c_StuffName, ';
    SQL.Add('ProductionForecasts.UnitName,derivedtbl_Mojodi.SUMEntity');
    SQL.Add(SQL1);
    SQL.Add(',' + SQL4 + ' AS RequiredEntity');
    SQL.Add(', derivedtbl_Mojodi.SUMEntity' + SQL2 + ' AS FinalEntity');
    SQL.Add('FROM (SELECT	TransFormItems.StuffCode, StuffCoding.c_StuffName, Units.UnitName');
    SQL.Add(SQL3);
    SQL.Add('FROM	TransFormItems INNER JOIN');
    SQL.Add('StuffCoding ON TransFormItems.StuffCode = StuffCoding.c_StuffCode INNER JOIN');
    SQL.Add('Units ON StuffCoding.n_UnitCode = Units.UnitCode');
    SQL.Add('WHERE (TransFormItems.InfoType = 0) ');
    SQL.Add('and 	TransFormItems.TransFormID in( ' + TransFormIDs + ')');
    SQL.Add('GROUP BY TransFormItems.StuffCode, StuffCoding.c_StuffName, Units.UnitName )');
    SQL.Add('AS ProductionForecasts LEFT OUTER JOIN(');

    SQL.Add('SELECT ReciptItems_Stock.StuffCode, ');
    SQL.Add('ROUND(SUM(ReciptItems_Stock.InputEntity - ReciptItems_Stock.OutputEntity), 3)AS SUMEntity');
    SQL.Add('FROM ReciptItems_Stock INNER JOIN');
    SQL.Add('Stores ON ReciptItems_Stock.StoreID = Stores.n_StoreID');
    SQL.Add('WHERE (ReciptItems_Stock.YearID = :YearID)');
    if cmbStore.ItemIndex > 0 then
    begin
      SQL.Add('AND (ReciptItems_Stock.StoreID = :StoreID)');
      Parameters.ParamByName('StoreID').Value :=
        IntToStr(int64(cmbStore.items.Objects[cmbStore.ItemIndex]))
    end;
    SQL.Add('GROUP BY ReciptItems_Stock.StuffCode');

    SQL.Add(') AS derivedtbl_Mojodi ON ProductionForecasts.StuffCode =');
    SQL.Add('derivedtbl_Mojodi.StuffCode CROSS JOIN');
    SQL.Add('Fitful');
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Active := True;
    EnableControls;
    qryItemLabel.Parameters := Parameters;
  end;

  for i := 0 to grdPrimary.Columns.Count - 1 do
    grdPrimary.Columns[i].Width := 64;
  SetColSize(grdPrimary, 1);

  With qryFitful do
  begin
    First;
    DisableControls;
    while not Eof do
    begin
      SQL1 := SQL1 +
        Format(', ProductionForecasts.Formol%d, ProductionForecasts.Entity%d',
        [RecNo, RecNo]);

      SQL2 := SQL2 + Format(' - ProductionForecasts.Entity%d', [RecNo]);

      SQL3 := SQL3 +
        Format(',sum(case when TransFormItems.TransFormID = %d then ' +
        ' TransFormItems.Entity else 0 end) as Formol%d',
        [qryFitfulTransFormID.AsInteger, RecNo]) +
        Format(',sum(case when TransFormItems.TransFormID = %d then' +
        ' TransFormItems.Entity * %f else 0 end) as Entity%d',
        [qryFitfulTransFormID.AsInteger, qryFitfulFinalEntity.AsFloat, RecNo]);

      TransFormIDs := TransFormIDs + IfThen(TransFormIDs = EmptyStr, '', ',') +
        qryFitfulTransFormID.AsString;

      SQL4 := SQL4 + IfThen(SQL4 = EmptyStr, '', '+') +
        Format('ProductionForecasts.Entity%d', [RecNo]);

      Next;
    end;
    EnableControls;
  end;
  pnlPost.Visible := True;

  Exit;
  With qryItemLabel do
  begin
    Active := False;
    Parameters := qryItem.Parameters;
    Active := True;
    while not Eof do
    begin
      (Self.FindComponent('frmProduction' + FieldByName('Label').AsString));
      // frmProduc.Label1.Caption := FieldByName('Formol1').AsString;
      Next;
    end;
  end;
end;

procedure TProductionForecasts2F.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grdPrimary)
end;

procedure TProductionForecasts2F.UpDateList;
begin
  with qryPerformance do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value :=
      Integer(cmbPerformance.items.Objects[cmbPerformance.ItemIndex]);
    Parameters.ParamByName('ReciptDateFrom').Value := mskPerformanceFrom.Text;
    Parameters.ParamByName('ReciptDateTo').Value := mskPerformanceTo.Text;
    Active := True;
  end;
  with qryTransForms do
  begin
    Active := False;
    Parameters.ParamByName('ReciptType').Value :=
      Integer(cmbPerformance.items.Objects[cmbPerformance.ItemIndex]);
    Parameters.ParamByName('ReciptDateFrom').Value := mskPerformanceFrom.Text;
    Parameters.ParamByName('ReciptDateTo').Value := mskPerformanceTo.Text;
    Parameters.ParamByName('ShowZero').Value := IfThen(CheckBox1.Checked, 1, 0);
    Active := True;
  end;
  Days := DateUtils.DaysBetween(Shamsi2Miladi(mskPerformanceFrom.Text),
    Shamsi2Miladi(mskPerformanceTo.Text));
  lblDays.Caption := IntToStr(Days) + ' روز ';
  EntityFuture := StrToFloat(Trim(mskAmountFuture.Text));
  Entity := CalcSumFileds(qryTransForms, 'Entity');
  lblDays.Caption := lblDays.Caption + 'مقدار كل توليد=' + FloatToStr(Entity);
  if (Trim(mskAmountFuture.Text)) = '0' then
    mskAmountFuture.Text := FloatToStr(Entity);

end;

procedure TProductionForecasts2F.actPerformanceExecute(Sender: TObject);
begin
  inherited;
  if not ChkCmb then
    Exit;
  UpDateList;
  With qryFitful do
    try
      DisableControls;
      while not Eof do
        Delete;
      while not qryTransForms.Eof do
      begin
        Insert;
        qryFitfulTransFormID.AsString := qryTransForms.FieldByName
          ('TransFormID').AsString;
        qryFitfulStuffCode.AsString := qryTransForms.FieldByName
          ('StuffCode').AsString;

        qryFitfulWithinTheRangeOfRatio.AsFloat :=
          RoundTo(qryFitful_OldEntity.AsFloat * 100 / Entity, -2);

        qryFitfulThanToGenerateFuture.AsFloat :=
          RoundTo(qryFitful_OldEntity.AsFloat * 100 / EntityFuture, -2);

        qryFitfulCalcEntity.AsFloat :=
          RoundTo(EntityFuture * qryFitfulWithinTheRangeOfRatio.AsFloat
          / 100, -2);
        qryFitfulFinalEntity.AsInteger := qryFitfulCalcEntity.AsInteger;
        Post;
        qryTransForms.Next;
      end;
      qryTransForms.Active := False;
    finally
      First;
      EnableControls;
    end;
end;

procedure TProductionForecasts2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryItem.DisableControls;
    InitReportFile(ppReport1, 'ProductionForecasts', True);
  finally
    qryItem.EnableControls;
  end; // try

end;

procedure TProductionForecasts2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryItem)
end;

procedure TProductionForecasts2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2f.ShowSort(qryItem)
end;

procedure TProductionForecasts2F.BitBtn15Click(Sender: TObject);
var
  IOEntity: String;
  ReciptID: Integer;
  PostItem: Boolean;
  qry: TADOQuery;
begin
  inherited;
  qry := qryItem;
  PostItem := (Sender as TBitBtn).Tag = 2;
  if (cmbEffectType2.ItemIndex = -1) then
  begin
    Warn('فرم ورود را مشخص كنيد!!‏');
    cmbEffectType2.DroppedDown := True;
    Exit;
  end;
  try
    if PostItem then
    begin
      qryItem.Filter := 'FinalEntity<0';
      qry := qryItem;
    end
    else
    begin
      qryFitful.Filter := 'FinalEntity>0';
      qry := qryFitful;
    end;

    With qry do
    begin
      Filtered := True;
      if RecordCount = 0 then
      begin
        Warn('موردي براي ثبت وجود ندارد.‏');
        Exit;
      end;
    end;
    if myStore.code = 0 then
    begin
      Warn('كد انبار صحيح نيست');
      Exit;
    end;
    With DMF.qryTmpTmp do
    begin
      Active := False;
      SQL.Text := 'SELECT MAX(ReciptID)+1 FROM Recipts ';
      Active := True;
      mskNumberfrom2.Tag := Fields[0].AsInteger;
      Active := False;
      SQL.Text := 'SELECT top 0 * FROM Recipts ';
      Active := True;
      Insert;
      FieldByName('ReciptID').AsInteger := mskNumberfrom2.Tag;
      FieldByName('ModifyDate').AsDateTime := Now;
      FieldByName('OperatorID').AsInteger := User.id;
      FieldByName('ReciptType').AsInteger :=
        Integer(cmbEffectType2.items.Objects[cmbEffectType2.ItemIndex]);
      FieldByName('PersonID1').AsInteger := 0;
      FieldByName('PersonID2').AsInteger := 0;
      FieldByName('StoreID').AsInteger := myStore.code;
      FieldByName('ReciptDate').AsString := var_glb_CurrentDate;
      FieldByName('ReciptNumber').AsString := mskNumberfrom2.Text;
      FieldByName('UseOtherID').AsInteger := 0;
      FieldByName('YearID').AsInteger := APPBank.Year;
      FieldByName('ServerID').AsInteger := opt.ServerID;
      FieldByName('InsertDate').AsDateTime := Now;
      FieldByName('FirstUser').AsString := User.name;
      Post;
      UpdateBatch();
      Active := False;
    end;

    With qry do
    begin
      DisableControls;
      First;
      BigMessageProgBar('در حال ثبت كالاها ', RecordCount);
      qryReciptItems.Active := True;
      while not Eof do
      begin
        qryReciptItems.Insert;
        GetANewID(qryReciptItems, Self.name, 'ReciptItems',
          'ReciptItemID', nil, 1);
        IOEntity := 'Input';
        ReciptID := mskNumberfrom2.Tag;
        qryReciptItems.FieldByName('StuffCode').AsLargeInt :=
          FieldByName('StuffCode').AsLargeInt;
        qryReciptItems.FieldByName('ReciptID').Value := ReciptID;
        qryReciptItems.FieldByName(IOEntity + 'Entity').AsCurrency :=
          abs(FieldByName('FinalEntity').AsCurrency);

        if not PostItem then
          qryReciptItems.FieldByName('TransFormID').AsInteger :=
            FieldByName('TransFormID').AsInteger;

        qryReciptItems.Post;
        GoProgressBar(qry.FieldByName('c_StuffName').AsString);
        Next;
      end;
    end;
  finally
    qry.EnableControls;
    CloseMessage;
    FreeReservedCodes(DMF.adcBSell, '', '', Self.name);
    qryReciptItems.Active := False;
    qry.Filter := '';
    qry.Filtered := False;
    qryItem.Requery();
    lblEffectType2.Caption := cmbEffectType2.Text + ' ثيت شد.';
    cmbEffectType2.ItemIndex := -1;
  end

end;

procedure TProductionForecasts2F.BitBtn2Click(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(grdPrimary, 0)
end;

procedure TProductionForecasts2F.BitBtn5Click(Sender: TObject);
begin
  inherited;
  sort2f.ShowSort(qryFitful)
end;

procedure TProductionForecasts2F.BitBtn6Click(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryFitful)
end;

procedure TProductionForecasts2F.BitBtn7Click(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1)
end;

procedure TProductionForecasts2F.BitBtn8Click(Sender: TObject);
begin
  inherited;
  With qryFitful do
  begin
    DisableControls;
    while not Eof do
      Delete;
    EnableControls;
  end;
end;

function TProductionForecasts2F.ChkCmb: Boolean;
begin
  Result := (cmbPerformance.ItemIndex > -1);
  if not Result then
  begin
    Warn('فرم های موجود در برنامه تولید را مشخص كنيد!!‏');
    cmbPerformance.DroppedDown := True;
  end;

end;

procedure TProductionForecasts2F.btnPerformance2Click(Sender: TObject);
begin
  inherited;
  if not ChkCmb then
    Exit;
  UpDateList;
  With qryFitful do
    try
      DisableControls;
      First;
      while not Eof do
      begin
        Edit;
        qryFitfulWithinTheRangeOfRatio.AsFloat :=
          RoundTo(qryFitful_OldEntity.AsFloat * 100 / Entity, -2);

        qryFitfulThanToGenerateFuture.AsFloat :=
          RoundTo(qryFitful_OldEntity.AsFloat * 100 / EntityFuture, -2);

        qryFitfulCalcEntity.AsFloat :=
          RoundTo(EntityFuture * qryFitfulWithinTheRangeOfRatio.AsFloat
          / 100, -2);
        qryFitfulFinalEntity.AsInteger := qryFitfulCalcEntity.AsInteger;
        Post;
        Next;
      end;
      qryTransForms.Active := False;
    finally
      First;
      EnableControls;
    end;
end;

procedure TProductionForecasts2F.cmbEffectType2Change(Sender: TObject);
var
  Txt: String;
  formType: Byte;
begin
  inherited;
  SelectStoreF.GetStore(myStore, 'انبار', '', MyEntityDisplayType);
  if myStore.code = 0 then
  begin
    Warn('كد انبار صحيح نيست');
    Exit;
  end;
  FreeReservedCodes(DMF.adcBSell, '', '', Self.name);
  formType := Integer((Sender as TComboBox).items.Objects[(Sender as TComboBox)
    .ItemIndex]);
  Txt := 'SELECT MAX(ReciptNumber)FROM Recipts WHERE(ReciptType=' +
    IntToStr(formType) + ')';
  Txt := Txt + 'AND(StoreID=' + IntToStr(myStore.code) + ')';
  mskNumberfrom2.Text := IntToStr(GetANewCode(Self.name, Txt, 'ReciptNumber'));
end;

procedure TProductionForecasts2F.cmbPerformanceChange(Sender: TObject);
begin
  inherited;
  UpDateList
end;

procedure TProductionForecasts2F.cmbStoreChange(Sender: TObject);
begin
  inherited;
  actCalc.Execute
end;

procedure TProductionForecasts2F.DBGrid1EditButtonClick(Sender: TObject);
var
  b: Boolean;
  results: array [0 .. 9] of String;
  Txt: string;
begin
  inherited;
  // Txt := ShowQryParam(qryTransForms, True);
  // Txt := StringReplace(Txt, 'ORDER BY dev_Entity.Entity DESC', '', []);
  Txt := 'SELECT TransForms.TransFormID, ProcessProduce.ProcessID, TransForms.TransFormNo, TransForms.TransFormDate, TransForms.Note, TransForms.StuffCode,'
    + ' StuffCoding.c_StuffName, Units.UnitName, dev_Entity.Entity, dev_Entity.Weight'
    + ' FROM TransForms INNER JOIN' +
    ' ProcessProduce ON TransForms.TransFormID = ProcessProduce.TransFormID INNER JOIN'
    + ' StuffCoding ON TransForms.StuffCode = StuffCoding.c_StuffCode INNER JOIN'
    + ' Units ON StuffCoding.n_UnitCode = Units.UnitCode LEFT OUTER JOIN' +
    ' (SELECT ReciptItems.StuffCode, SUM(ReciptItems.InputEntity + ReciptItems.OutputEntity) AS Entity, '
    + 'SUM(ReciptItems.InputWeight + ReciptItems.OutputWeight) AS Weight' +
    ' FROM ReciptItems INNER JOIN' +
    ' Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID'
    + Format(' WHERE (Recipts.ReciptType = %d )',
    [Integer(cmbPerformance.items.Objects[cmbPerformance.ItemIndex])]) +
    ' GROUP BY ReciptItems.StuffCode) AS dev_Entity ON TransForms.StuffCode = dev_Entity.StuffCode'
    + ' WHERE (TransForms.TransFormState = 0)';

  b := searchCode_ADOF.SearchCode2(DMF.adcBSell, 'ضرايب تبديل', Txt,
    ['شناسه', 'كد فرآيند', 'شماره فرم', 'تاريخ', 'توضيحات', 'كدمحصول',
    'شرح محصول', 'واحد', 'مقدار', 'وزن'], results, [50, 50, 100, 80, 100, 80,
    100, 50, 50, 50], alLeft);
  if b then
  begin
    if not(qryFitful.State in dsEditModes) then
      qryFitful.Edit;
    qryFitfulTransFormID.AsString := results[0];
    qryFitfulStuffCode.AsString := results[5];
  end;
end;

procedure TProductionForecasts2F.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  gridkeyenter(Sender, Key);
end;

procedure TProductionForecasts2F.gridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataSet: TDataSet;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if shiftDown then
          Exit;
        aDataSet := (Sender as TDBGrid).DataSource.DataSet;
        Key := #0;
        case curIndex of
          0:
            If aDataSet.FieldByName('StuffCode').AsInteger = 0 then
              nextIndex := 0
            else
              nextIndex := 3;
          1:
            nextIndex := 3;
          2:
            nextIndex := 3;
          3:
            nextIndex := -1;

        end; // case
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
        SendKeys('000', False);
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;
      #32, #157: if curIndex in [0] then
    begin
      Key := #0;
      DBGrid1EditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], False);
          (Sender as TDBGrid).SelectedIndex := 0;
        end; // 0
      -2:
        begin
          if (Sender as TDBGrid).DataSource.State in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TDBGrid).DataSource.State in dsEditModes then
            (Sender as TDBGrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TDBGrid).SelectedIndex := nextIndex;
end; // case

end;

procedure TProductionForecasts2F.FormCreate(Sender: TObject);
begin
  inherited;
  Init_Forms
end;

procedure TProductionForecasts2F.Init_Forms;
begin
  qryFitful.Active := True;
  InitCombos(cmbEffectType2, 'SELECT ReciptType,ReciptCaption FROM ReciptTypes '
    + ' WHERE EffectType in(1) ');
  InitCombos(cmbPerformance, 'SELECT ReciptType,ReciptCaption FROM ReciptTypes '
    + ' WHERE EffectType in(1) ');
  Init_Combos;
  mskPerformanceFrom.Text :=
    miladi2Shamsi(DateUtils.IncDay(Shamsi2Miladi(var_glb_CurrentDate), -30));
  mskPerformanceTo.Text := var_glb_CurrentDate;
end;

procedure TProductionForecasts2F.Init_Combos;
begin
  cmbStore.Clear;
  cmbStore.items.Add('همه انبارها  ***********');
  with DMF.qryTmpTmp do
  begin
    Active := False;
    SQL.Text := 'SELECT n_StoreID, c_StoreName FROM Stores';
    Active := True;
    while not Eof do
    begin
      cmbStore.AddItem(Fields[1].AsString,
        TObject(StrToInt64(Fields[0].AsString)));
      Next;
    end;
    Active := False;
  end;
  cmbStore.ItemIndex := 0;
end;

function TProductionForecasts2F.Ratio: Real48;
begin
  Result := 0;
  if Days <> 0 then
    Result := qryFitful_OldEntity.AsFloat *
      StrToFloat(Trim(mskDaysFuture.Text)) / Days
end;

procedure TProductionForecasts2F.qryFitfulStuffCodeChange(Sender: TField);
begin
  inherited;
  if qryFitfulCalcEntity.AsFloat <> Ratio then
  begin
    qryFitfulCalcEntity.AsFloat := Ratio;
    qryFitfulFinalEntity.AsInteger := qryFitfulCalcEntity.AsInteger;
  end;
end;

procedure TProductionForecasts2F.qryItemAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  qryItem.FieldByName('StuffCode').DisplayLabel := 'كدكالا';
  qryItem.FieldByName('c_StuffName').DisplayLabel := 'شرح كالا';
  qryItem.FieldByName('UnitName').DisplayLabel := 'واحد';
  qryItem.FieldByName('SUMEntity').DisplayLabel := 'موجودي انبار';
  qryItem.FieldByName('FinalEntity').DisplayLabel := 'موجودي نهايي';
  qryItem.FieldByName('RequiredEntity').DisplayLabel := 'مقدار مورد نياز';

  With qryFitful do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      qryItem.FieldByName('Formol' + IntToStr(RecNo)).DisplayLabel := 'كدفرمول '
        + FieldByName('TransFormID').AsString;

      qryItem.FieldByName('Entity' + IntToStr(RecNo)).DisplayLabel :=
        FieldByName('c_StuffName').AsString;
      Next;
    end;

    EnableControls;
  end;

  for i := 0 to qryItem.FieldCount - 1 do
  begin
    qryItem.Fields[i].DisplayLabel :=
      StringReplace(qryItem.Fields[i].DisplayLabel, 'Formol', 'فرمول',
      [rfReplaceAll]);
    // qryItem.Fields[i].DisplayLabel :=
    // StringReplace(qryItem.Fields[i].DisplayLabel, 'Entity', 'مقدار',
    // [rfReplaceAll]);
    qryItem.Fields[i].Tag := 3;
  end;
end;

end.
