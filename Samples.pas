unit Samples;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, Mask, DBCtrls, Grids, Vcl.DBGrids, ComCtrls, ppDB,
  ppBands, ppCache, ppClass, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  ppPrnabl, ppCtrls, Menus, ppParameter, DM, shamsiDate, ppDesignLayer,
  System.ImageList, System.Actions, FarsiReportBuilde, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid, PivotGridsEh, DBVertGridsEh;

type
  TSamplesF = class(Ttemplate2MDIF)
    Label12: TLabel;
    edtSampleNo: TDBEdit;
    Label13: TLabel;
    edtSampleDate: TDBEdit;
    qry_LookPurchaseEffect: TADOQuery;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn6: TBitBtn;
    qry_LookStore: TADOQuery;
    qry_LookStuff: TADOQuery;
    qryEffect: TADOQuery;
    srcEffect: TDataSource;
    qryEffectEffectID: TIntegerField;
    qryEffectAmount: TFloatField;
    DBNavigator1: TDBNavigator;
    qrySamples: TADOQuery;
    srcSamples: TDataSource;
    BitBtn1: TBitBtn;
    actPrint: TAction;
    ppReport1: TppReport;
    TPipeRecipts: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    qryEffectReplaceRate: TBCDField;
    SBtnReciptNumber: TSpeedButton;
    qryinit: TADOQuery;
    DataSetDelete1: TDataSetDelete;
    actAdd: TAction;
    TPipeEffect: TppDBPipeline;
    TPipeEffectCTab: TppDBPipeline;
    qryEffectCTab: TADOQuery;
    dsEffectCTab: TDataSource;
    qryEffectReciptID: TIntegerField;
    actDeficits: TAction;
    srcDeficits4Print: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    ppDBPipeline3ppField1: TppField;
    ppDBPipeline3ppField2: TppField;
    StatusBar2: TStatusBar;
    plblPrintPayablePrice: TppLabel;
    plblPrintnum2alphabetPayebel: TppLabel;
    PopMuPrint: TPopupMenu;
    N1: TMenuItem;
    N21: TMenuItem;
    qryEffectEffectNote: TStringField;
    qryEffect_EffectName: TStringField;
    plblShift: TppLabel;
    qryEffect_CoefficientMin: TFloatField;
    qryEffect_CoefficientMax: TFloatField;
    Label2: TLabel;
    cmbHourID: TDBComboBox;
    cmbShiftID: TDBComboBox;
    Label3: TLabel;
    edtInsertDate: TDBEdit;
    qryEffectPurchaseID: TIntegerField;
    qryEffectReciptItemID: TIntegerField;
    qryItems: TADOQuery;
    srcItems: TDataSource;
    Panel1: TPanel;
    DBGrid1: TCedarDbgrid;
    CedarDbgrid1: TCedarDbgrid;
    DBGridEh1: TDBGridEh;
    qryItemsStuffCode: TLargeintField;
    qryItems_stuffName: TStringField;
    qryItemsHookupKind: TWordField;
    qryItemsHookupID: TLargeintField;
    qryItemsHookupCaption: TWideStringField;
    qryItemsDescriptions: TWideStringField;
    qryItemsConsideration: TWideStringField;
    qryItemsID: TIntegerField;
    qryItemsSampleID: TIntegerField;
    qrySamplesSampleID: TIntegerField;
    qrySamplesReciptType: TWordField;
    qrySamplesSampleNo: TIntegerField;
    qrySamplesSampleDate: TStringField;
    qrySamplesHourID: TIntegerField;
    qrySamplesShiftID: TIntegerField;
    qrySamplesInsertDate: TDateTimeField;
    qrySamplesFirstUser: TWideStringField;
    qrySamplesLastUser: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure qrySamplesAfterInsert(DataSet: TDataSet);
    procedure qrySamplesAfterPost(DataSet: TDataSet);
    procedure srcSamplesStateChange(Sender: TObject);
    procedure qrySamplesBeforeDelete(DataSet: TDataSet);
    procedure qrySamplesBeforePost(DataSet: TDataSet);
    procedure qryEffectBeforePost(DataSet: TDataSet);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure qryEffectBeforeEdit(DataSet: TDataSet);
    procedure qrySamplesAfterDelete(DataSet: TDataSet);
    procedure SBtnReciptNumberClick(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure qrySamplesAfterEdit(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure mnu4allClick(Sender: TObject);
    procedure qrySamplesInsertDateGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ALLSetText(Sender: TField; const Text: String);
    procedure qrySamplesAfterScroll(DataSet: TDataSet);
    procedure CedarDbgrid1EditButtonClick(Sender: TObject);
    procedure qryItemsAfterInsert(DataSet: TDataSet);
    procedure qryItemsAfterScroll(DataSet: TDataSet);
    procedure qryItemsAfterCancel(DataSet: TDataSet);
    procedure qryItemsAfterPost(DataSet: TDataSet);
    // procedure ALLPikGetText(Sender: TField; var Text: String;
    // DisplayText: Boolean);
    // procedure ALLPikSetText(Sender: TField; const Text: String);
    procedure SpeedButton6Click(Sender: TObject);
    procedure CedarDbgrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qryItemsBeforeEdit(DataSet: TDataSet);
    procedure qryItemsStuffCodeChange(Sender: TField);
    procedure qryItemsBeforePost(DataSet: TDataSet);
    procedure DBGrid1Enter(Sender: TObject);
    procedure CedarDbgrid1Enter(Sender: TObject);
    procedure qryItemsBeforeInsert(DataSet: TDataSet);
    procedure qryEffectCTabBeforeInsert(DataSet: TDataSet);
    procedure qryEffectCTabBeforeEdit(DataSet: TDataSet);
    procedure DBGrid1Exit(Sender: TObject);
    procedure qryItemsBeforeDelete(DataSet: TDataSet);
  private
    formtype: byte;
    insertEffectActiv, FormOutput: Boolean;
    FormInOut: String;
    procedure insert_Effect;
    procedure insertEffectItem(EffectID: Integer);
    procedure initEffect;
    procedure Allgridkeyenter(Sender: TObject; var Key: Char);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  SamplesF: TSamplesF;

implementation

uses mmessage, GlobalPro, searchCode_ADO, sort2, search2, Math, sndkey32,
  FaraConsts, FormFunctions;

{$R *.dfm}

procedure TSamplesF.FormCreate(Sender: TObject);
var
  txt: string;
  Kind: Integer;
begin
  inherited;
  myStore := DM.myStore;
  insertEffectActiv := false;
  formtype := var_glb_gParam;
  lblCaption.Hint := IntToStr(formtype);
  SetLookUpCash(qrySamples);
  initEffect;
  // SetLookUpCash(qryEffect);
  with qryinit do
  begin
    Active := false;
    Parameters.ParamByName('ReciptType').Value := formtype;
    Active := True;
  end; // with

  with qryinit do
  begin
    Caption := FieldByName('ReciptCaption').AsString;
    edtSampleNo.ReadOnly := FieldByName('EditReciptNumberActive')
      .AsInteger <> 1;

    FormOutput := qryinit.FieldByName('EffectType').AsInteger
      in [3, 4, 5, 7, 8];
    FormInOut := 'Input';
    if FormOutput then
    begin
      FormInOut := 'Output';
    end;

  end; // with
  txt := 'SELECT LookUpID,Name FROM LookUps WHERE(Kind = %d ) ORDER BY Code';
  Kind := qryinit.FieldByName('FormKindSerial').AsInteger;
  InitDBCombos(cmbHourID, Format(txt, [Kind]));
  Kind := qryinit.FieldByName('FormItemKindSerial').AsInteger;
  InitDBCombos(cmbShiftID, Format(txt, [Kind]));

  initReportName(qryinit, PopMuPrint, mnu4allClick);

  CedarDbgrid1.FieldColumns['HookupKind'].PickList.AddObject('انبار',
    TObject(0));
  CedarDbgrid1.FieldColumns['HookupKind'].PickList.AddObject('فرآیند تولید',
    TObject(1));
  CedarDbgrid1.FieldColumns['HookupKind'].PickList.AddObject('توزین',
    TObject(2));
  CedarDbgrid1.FieldColumns['HookupKind'].PickList.AddObject('فرم انبار',
    TObject(3));

  CedarDbgrid1.FieldColumns['HookupKind'].KeyList.Add('0');
  CedarDbgrid1.FieldColumns['HookupKind'].KeyList.Add('1');
  CedarDbgrid1.FieldColumns['HookupKind'].KeyList.Add('2');
  CedarDbgrid1.FieldColumns['HookupKind'].KeyList.Add('3');

  // CedarDbgrid1.FieldColumns['HookupKind'].PickList.Add('انبار');
  // CedarDbgrid1.FieldColumns['HookupKind'].PickList.Add('فرآیند تولید');
  // CedarDbgrid1.FieldColumns['HookupKind'].PickList.Add('توزین');
  // CedarDbgrid1.FieldColumns['HookupKind'].PickList.Add('فرم انبار');
  with qrySamples do
  begin
    Active := false;
    Parameters.ParamByName('ReciptType').Value := formtype;
    Parameters.ParamByName('SampleDateFrom').Value := APPBank.StartYear;
    Parameters.ParamByName('SampleDateTo').Value := APPBank.endYear;
    Active := True;
    Last;
  end; // with

end;

// procedure TSamplesF.ALLPikGetText(Sender: TField; var Text: String;
// DisplayText: Boolean);
// var
// col: TColumnEh;
// i: Integer;
// begin
// inherited;
// col := CedarDbgrid1.Columns[ColumnIndexByFieldName(CedarDbgrid1,
// (Sender as TField).FieldName)];
// if Sender.AsString = EmptyStr then
// i := -1
// else
// i := StrToInt(Sender.AsString);
// if col.PickList.IndexOfObject(TObject(i)) > -1 then
// Text := col.PickList[col.PickList.IndexOfObject(TObject(Sender.AsInteger))];
// end;
//
// procedure TSamplesF.ALLPikSetText(Sender: TField; const Text: String);
// var
// col: TColumnEh;
// i: Integer;
// begin
// inherited;
// col := CedarDbgrid1.Columns[ColumnIndexByFieldName(CedarDbgrid1,
// (Sender as TField).FieldName)];
// i := col.PickList.IndexOf(Text);
// if i <> -1 then
// Sender.AsInteger := Integer(col.PickList.Objects[i]);
// end;

procedure TSamplesF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
var
  cmb: TDBComboBox;
begin
  inherited;
  cmb := TDBComboBox(FindComponent('Cmb' + Sender.FieldName));
  Text := cmb.Items[cmb.Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TSamplesF.ALLSetText(Sender: TField; const Text: String);
var
  cmb: TDBComboBox;
begin
  inherited;
  cmb := TDBComboBox(FindComponent('Cmb' + Sender.FieldName));
  Sender.AsInteger := Integer(cmb.Items.Objects[cmb.ItemIndex]);
end;

procedure TSamplesF.CedarDbgrid1EditButtonClick(Sender: TObject);
var
  b: Boolean;
  Results: array [0 .. 1] of String;
  Name: string;
begin
  inherited;
  if not(qryItems.State in dsEditModes) then
    qryItems.Edit;

  if CedarDbgrid1.SelectedColumn.FieldName = 'StuffCode' then
    SpeedButtonStuffCoding(qryItems, 'StuffCode', '0,3', Name);

  if CedarDbgrid1.SelectedColumn.FieldName = 'HookupID' then
  begin
    case qryItemsHookupKind.AsInteger of
      0:
        b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'انبار ها',
          'SELECT n_StoreID, c_StoreName FROM Stores WHERE (StoreKind = 11)',
          ['کد', 'نام '], Results, [50, 150], alLeft);
      1:
        b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'فرآيند ها',
          'SELECT ProcessID, ProcessName FROM ProcessInfo ', ['کد', 'فرآيند '],
          Results, [50, 150], alLeft);
      2:
        b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'توزین ها',
          'SELECT TozinID, ReciptTypes1.ReciptCaption +ltrim(TozinNumber)+''-''+TozinDate AS Caption '
          + 'FROM Tozin INNER JOIN ReciptTypes1 ON Tozin.ReciptType = ReciptTypes1.ReciptType ',
          ['کد', 'عنوان '], Results, [50, 150], alLeft);
      3:
        b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'انبار ها',
          'SELECT ID, ReciptTypes1.ReciptCaption +ltrim(ReciptNumber)+''-''+ReciptDate AS Caption '
          + 'FROM Recipts INNER JOIN ReciptTypes1 ON Recipts.ReciptType = ReciptTypes1.ReciptType ',
          ['کد', 'عنوان '], Results, [50, 150], alLeft);

    else
      begin
        b := false;
      end;
    end;

    if b then
    begin
      qryItemsHookupID.AsString := Results[0];
      qryItemsHookupCaption.AsString := Results[1];
    end; // if
  end;
end;

procedure TSamplesF.CedarDbgrid1Enter(Sender: TObject);
begin
  inherited;
  CedarDbgrid1.SelectedIndex := 0;
end;

procedure TSamplesF.CedarDbgrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Allgridkeyenter(Sender, Key);
end;

procedure TSamplesF.Allgridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  // aDataset: TDataSet;
  // b: Boolean;
  // c:  String;
begin
  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13:
      begin
        if ShiftDown then
          exit;
        // aDataset := (Sender as TCedarDbgrid).DataSource.DataSet;
        Key := #0;
        if ((Sender as TCedarDbgrid).Name = CedarDbgrid1.Name) then
        begin
          case curIndex of
            0:
              nextIndex := 2;
            1:
              nextIndex := 2;
            2:
              nextIndex := 3;
            3:
              nextIndex := 5;
            4:
              nextIndex := 5;
            5:
              nextIndex := 6;
            6:
              nextIndex := -1;
          end;
        end
        else
          nextIndex := -1;

      end; // #13
    '+':
      begin
        Key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and
          (not((Sender as TCedarDbgrid).Columns[nextIndex].Visible) OR
          ((Sender as TCedarDbgrid).Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        Key := #0;
        SendKeys('000', false);
      end; // *
    #27:
      if (Sender as TCedarDbgrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
      #32, #157: if CedarDbgrid1.Columns[curIndex].ButtonStyle = cbsEllipsis
      then
    begin
      Key := #0;
      CedarDbgrid1EditButtonClick(Sender);
    end; // if
  end; // case

  if nextIndex >= 0 then
    while (nextIndex < (Sender as TCedarDbgrid).Columns.Count) and
      (not((Sender as TCedarDbgrid).Columns[nextIndex].Visible) OR
      ((Sender as TCedarDbgrid).Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TCedarDbgrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          if ((Sender as TCedarDbgrid).Name = CedarDbgrid1.Name) then
          begin
            DBGrid1.DataSource.DataSet.First;
            DBGrid1.SetFocus;
          end
          else
          begin
            if qryEffect.RecNo <> qryEffect.RecordCount then
              sendkey(vk_down, [], false)
            else
            begin
              qrySamples.Post;
              // qrySamples.Edit;
              CedarDbgrid1.SetFocus;
              // qryItems.Last;
              // qryItems.Insert;
            end;

            (Sender as TCedarDbgrid).SelectedIndex := 1;
          end;
        end; // 0
      -2:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 0, 0);
        end; // -2
      -3:
        begin
          if (Sender as TCedarDbgrid).DataSource.State in dsEditModes then
            (Sender as TCedarDbgrid).DataSource.DataSet.Cancel;
          Perform(WM_NEXTDLGCTL, 1, 0);
        end; // -3
    else
      (Sender as TCedarDbgrid).SelectedIndex := nextIndex;
end; // case

end;

procedure TSamplesF.mnu4allClick(Sender: TObject);
begin
  inherited;
  if Assigned(Sender) then
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True);
end;

procedure TSamplesF.initEffect;
begin
  with DMf.qryTmpTmp do
  begin
    Active := false;
    SQL.Text := 'SELECT * FROM PurchaseEffect';
    // SQL.Add  ('WHERE StuffCode = :StuffCode');
    // Parameters.ParamByName('StuffCode').Value:=qrySamplesStuffCode.AsLargeInt;
    Active := True;
    qryEffectCTab.SQL.Text := 'SELECT';
    while not Eof do
    begin
      qryEffectCTab.SQL.Add('SUM(CASE WHEN dbo.ReciptPurchaseEffect.EffectID = '
        + FieldByName('EffectID').AsString + ' THEN ');
      qryEffectCTab.SQL.Add
        ('dbo.ReciptPurchaseEffect.Amount ELSE 0 END) AS Amount' +
        FieldByName('EffectID').AsString + ',');

      qryEffectCTab.SQL.Add
        ('ROUND(SUM(CASE WHEN dbo.ReciptPurchaseEffect.EffectID = ' +
        FieldByName('EffectID').AsString +
        ' THEN dbo.ReciptPurchaseEffect.Amount ELSE 0 END) /');
      qryEffectCTab.SQL.Add('60, 2) AS TimeAmount' + FieldByName('EffectID')
        .AsString + ',');

      qryEffectCTab.SQL.Add('SUM(CASE WHEN dbo.ReciptPurchaseEffect.EffectID = '
        + FieldByName('EffectID').AsString +
        ' THEN dbo.ReciptPurchaseEffect.ReplaceRate ELSE 0 END) AS');
      qryEffectCTab.SQL.Add('ReplaceRate' + FieldByName('EffectID')
        .AsString + ',');

      qryEffectCTab.SQL.Add
        ('(SELECT EffectNote FROM ReciptPurchaseEffect AS ReciptPurchaseEffect_1');
      qryEffectCTab.SQL.Add
        ('WHERE  (ReciptID = ReciptPurchaseEffect.ReciptID) ');
      qryEffectCTab.SQL.Add('AND (EffectID = ' + FieldByName('EffectID')
        .AsString + ')) AS EffectNote' + FieldByName('EffectID')
        .AsString + ',');

      // qryEffectCTab.SQL.Add('max(CASE WHEN dbo.ReciptPurchaseEffect.EffectID = '+
      // FieldByName('EffectID').AsString+' THEN dbo.ReciptPurchaseEffect.EffectNote ELSE '''' END) AS');
      // qryEffectCTab.SQL.Add('EffectNote'+FieldByName('EffectID').AsString+',');

      next;
    end; // while
    qryEffectCTab.SQL.Add('Min(EffectID) FROM ReciptPurchaseEffect');
    qryEffectCTab.SQL.Add('WHERE ( ReciptID=:ReciptID )');
    qryEffectCTab.SQL.Add('GROUP BY ReciptID');

  end; // with

end;

procedure TSamplesF.insert_Effect;
begin
  qry_LookPurchaseEffect.Close;
  qry_LookPurchaseEffect.Parameters.ParamByName('StuffCode').Value :=
    qryItemsStuffCode.AsLargeInt;
  qry_LookPurchaseEffect.Open;

  with DMf.qryTmpTmp do
  begin
    Active := false;
    SQL.Text := 'SELECT * FROM PurchaseEffect';
    SQL.Add('WHERE StuffCode = :StuffCode');
    Parameters.ParamByName('StuffCode').Value := qryItemsStuffCode.AsLargeInt;
    Active := True;
    qryEffect.Requery();
    while not Eof do
    begin
      insertEffectItem(FieldByName('EffectID').AsInteger);
      next;
    end; // while
  end; // with

  insertEffectActiv := True;
end;

procedure TSamplesF.insertEffectItem;
begin
  with qryEffect do
  begin
    Insert;
    FieldByName('PurchaseID').AsInteger :=
      GetANewCode(Self.Name, 'ReciptPurchaseEffect', 'PurchaseID');
    FieldByName('EffectID').AsInteger := EffectID;
    FieldByName('ReciptID').AsInteger := qryItemsID.AsInteger;
    FieldByName('Amount').AsInteger := 0;
    FieldByName('ReplaceRate').AsInteger := 0;
    FieldByName('ReciptItemID').AsInteger := qrySamplesSampleID.AsInteger;;
    Post;
  end;
end;

procedure TSamplesF.qrySamplesAfterInsert(DataSet: TDataSet);
var
  txt: string;
begin
  inherited;
  qrySamplesSampleID.AsInteger := GetANewCode('lab.Samples', 'lab.Samples',
    'SampleID');
  // DataSet.FieldByName('SampleID').AsInteger :=
  // GetANewCode('lab.Samples', 'SampleID', 'SampleID', nil,
  // qryinit.FieldByName('StepCorrelate').AsInteger);

  DataSet.FieldByName('ReciptType').AsInteger := formtype;
  DataSet.FieldByName('SampleDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('InsertDate').AsDateTime := Now;
  txt := 'SELECT MAX(SampleNo)FROM lab.Samples WHERE(ReciptType=' +
    qryinit.FieldByName('ReciptType').AsString + ')';
  DataSet.FieldByName('SampleNo').AsInteger := GetANewCode('lab.Samples', txt,
    'SampleNo', nil, qryinit.FieldByName('StepCorrelate').AsInteger);
  DataSet.FieldByName('FirstUser').AsString := user.Name;
  edtSampleNo.SetFocus;
end;

procedure TSamplesF.qrySamplesAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryItems.State in dsEditModes then
    qryItems.Post;
  qryItems.UpdateBatch();

  if qryEffect.State in dsEditModes then
    qryEffect.Post;
  qryEffect.UpdateBatch();

  BigMessage('ثبت شد .‏', 1);

end;

procedure TSamplesF.qrySamplesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryItems do
  begin
    Active := false;
    Parameters.ParamByName('SampleID').Value := qrySamplesSampleID.AsInteger;
    Active := True;
  end;
end;

procedure TSamplesF.srcSamplesStateChange(Sender: TObject);
begin
  inherited;
  inherited;
  okPanel.Visible := qrySamples.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  actAdd.Visible := okPanel.Visible;
  DataSetDelete1.Visible := okPanel.Visible;

  FreeReservedCodes(DMf.adcBSell, '', '', 'lab.Samples');
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
  // FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);

end;

procedure TSamplesF.qrySamplesBeforeDelete(DataSet: TDataSet);
var
  txt: string;
begin
  inherited;
  if get_response('آيا براي حذف مطمئن هستيد؟') <> mrYes then
    abort;

  if not(qrySamples.State in dsEditModes) then
    qrySamples.Edit;

  txt := 'DELETE FROM ReciptPurchaseEffect ' +
    'WHERE (ReciptItemID = %d)AND(ServerID = 0)AND(YearID = 0)';
  txt := Format(txt, [qrySamplesSampleID.AsInteger]);
  DMf.adcBSell.Execute(txt);
  qryEffect.Requery();
end;

procedure TSamplesF.qrySamplesBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qrySamples) then
    abort;
end;

procedure TSamplesF.qrySamplesInsertDateGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := Format('%s %s‏', [FormatDateTime('t', Sender.AsDateTime),
    miladi2Shamsi(Sender.AsDateTime)]);
end;

procedure TSamplesF.qryEffectBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryEffect) then
    abort;

end;

procedure TSamplesF.qryEffectCTabBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qrySamples.State in dsEditModes) then
    qrySamples.Edit;
end;

procedure TSamplesF.qryEffectCTabBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qrySamples.State in dsEditModes) then
    qrySamples.Edit;

end;

procedure TSamplesF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qrySamples);
end;

procedure TSamplesF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qrySamples);
end;

procedure TSamplesF.qryItemsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  qryEffect.Cancel;
  insertEffectActiv := false;
end;

procedure TSamplesF.qryItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryItemsID.AsInteger := GetANewCode('lab.SampleItems',
    'lab.SampleItems', 'ID');
  qryItemsSampleID.AsInteger := qrySamplesSampleID.AsInteger;
end;

procedure TSamplesF.qryItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if insertEffectActiv then
  begin
    // InitDBCombos;
  end;
  insertEffectActiv := false;
end;

procedure TSamplesF.qryItemsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if not insertEffectActiv then
  begin
    insertEffectActiv := false;
  end;

  with qry_LookPurchaseEffect do
  begin
    Active := false;
    Parameters.ParamByName('StuffCode').Value := qryItemsStuffCode.AsLargeInt;
    Active := True;
  end;
  with qryEffect do
  begin
    Active := false;
    Parameters.ParamByName('ReciptID').Value := qryItemsID.AsInteger;
    Active := True;
  end;
  with qryEffectCTab do
  begin
    Active := false;
    Parameters.ParamByName('ReciptID').Value := qryItemsID.AsInteger;
    Active := True;
  end;

end;

procedure TSamplesF.qryItemsBeforeDelete(DataSet: TDataSet);
var
  txt: string;
begin
  inherited;
  if get_response('آيا براي حذف مطمئن هستيد؟') <> mrYes then
    abort;

  if not(qrySamples.State in dsEditModes) then
    qrySamples.Edit;

  txt := 'DELETE FROM ReciptPurchaseEffect ' +
    'WHERE (ReciptItemID = %d)AND(ReciptID = %d)AND(ServerID = 0)AND(YearID = 0)';
  txt := Format(txt, [qrySamplesSampleID.AsInteger, qryItemsID.AsInteger]);
  DMf.adcBSell.Execute(txt);
  qryEffect.Requery();
end;

procedure TSamplesF.qryItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qrySamples.State in dsEditModes) then
    qrySamples.Edit;
  if qryEffect.IsEmpty then
    insert_Effect
end;

procedure TSamplesF.qryItemsBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if not(qrySamples.State in dsEditModes) then
    qrySamples.Edit;
end;

procedure TSamplesF.qryItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  // if qryItemsStuffCode.AsInteger = 0 then
  // qryItems.Cancel
  // else
  if not CheckRequiredFields(qryItems) then
    abort;
end;

procedure TSamplesF.qryItemsStuffCodeChange(Sender: TField);
begin
  inherited;
  insert_Effect;
end;

procedure TSamplesF.qryEffectBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  IF not(qryItems.State IN dsEditModes) then
  begin
    qryItems.Edit;
  end;
end;

procedure TSamplesF.qrySamplesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1)
end;

procedure TSamplesF.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  DBGrid1.SelectedIndex := 1;
end;

procedure TSamplesF.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  if qrySamples.State in dsEditModes then
    qrySamples.Post;
end;

procedure TSamplesF.SBtnReciptNumberClick(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  txt := 'SELECT SampleID,SampleNo ,SampleDate  FROM lab.Samples   ' +
    'WHERE (ReciptType = ' + IntToStr(formtype) + ') ' +
    Format('AND (SampleDate BETWEEN %s AND %s)', [QuotedStr(APPBank.StartYear),
    QuotedStr(APPBank.endYear)]);
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' فرمها  ', txt,
    ['', 'شماره فرم', 'تاريخ'], Results, [0, 50, 50], alLeft);
  if b then
    qrySamples.Locate('SampleID', Results[0], []);
end;

procedure TSamplesF.SpeedButton6Click(Sender: TObject);
begin
  inherited;

end;

// procedure TSamplesF.InitDBCombos;
// begin
// cmbHourID.Clear;
// with DMf.qryTmpTmp do
// begin
// Active := false;
// SQL.Text := 'SELECT LookUpID,Name FROM LookUps WHERE(Kind = ' +
// qryinit.FieldByName('FormKindSerial').AsInteger.ToString +
// ') ORDER BY Code';
// Active := True;
// while not Eof do
// begin
// cmbHourID.Items.AddObject(Fields[1].AsString,
// TObject(Fields[0].AsInteger));
// next;
// end;
// Active := false;
// end;
// cmbShiftID.Clear;
// with DMf.qryTmpTmp do
// begin
// Active := false;
// SQL.Text := 'SELECT LookUpID,Name FROM LookUps WHERE(Kind = ' +
// qryinit.FieldByName('FormItemKindSerial').AsInteger.ToString +
// ') ORDER BY Code';
// Active := True;
// while not Eof do
// begin
// cmbShiftID.Items.AddObject(Fields[1].AsString,
// TObject(Fields[0].AsInteger));
// next;
// end;
// Active := false;
// end;
//
// end;

procedure TSamplesF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopMuPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
end;

procedure TSamplesF.qrySamplesAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.Name;
end;

procedure TSamplesF.N1Click(Sender: TObject);
begin
  inherited;
  try
    qrySamples.DisableControls;
    qryEffect.DisableControls;
    qryEffectCTab.DisableControls;
    InitReportFile(ppReport1, 'Samples', True)
  finally
    qrySamples.EnableControls;
    qryEffect.EnableControls;
  end;

end;

procedure TSamplesF.N21Click(Sender: TObject);
begin
  inherited;
  try
    qrySamples.DisableControls;

    qryEffect.DisableControls;
    qryEffectCTab.DisableControls;
    InitReportFile(ppReport1, 'Samples' + IntToStr(formtype), True)
  finally
    qrySamples.EnableControls;

    qryEffect.EnableControls
  end;

end;

end.
