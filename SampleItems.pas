unit SampleItems;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, sndkey32,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, template2MDI, System.ImageList,
  Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask, Data.DB, Data.Win.ADODB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TSampleItemsF = class(Ttemplate2MDIF)
    qrySamples: TADOQuery;
    qrySamplesReciptType: TWordField;
    qrySamplesSampleNo: TIntegerField;
    qrySamplesSampleDate: TStringField;
    qrySamplesHourID: TIntegerField;
    qrySamplesShiftID: TIntegerField;
    qrySamplesInsertDate: TDateTimeField;
    qrySamplesStuffCode: TLargeintField;
    qrySamples_stuffName: TStringField;
    qrySamplesHookupKind: TWordField;
    qrySamplesFirstUser: TWideStringField;
    qrySamplesLastUser: TWideStringField;
    srcSamples: TDataSource;
    Panel1: TPanel;
    PnlPerson1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    cmbHourID: TDBComboBox;
    cmbShiftID: TDBComboBox;
    Panel5: TPanel;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    edt_stuffName: TDBEdit;
    edtStuffCode: TDBEdit;
    dbrgrpHookupKind: TDBRadioGroup;
    Label5: TLabel;
    Label6: TLabel;
    SBtnReciptNumber: TSpeedButton;
    edtSampleNo: TDBEdit;
    edtSampleDate: TDBEdit;
    qryinit: TADOQuery;
    qryItems: TADOQuery;
    srcSampleItems: TDataSource;
    CedarDbgrid1: TCedarDbgrid;
    qryItemsID: TAutoIncField;
    qryItemsSampleID: TIntegerField;
    qryItemsStorepit: TSmallintField;
    qryItemsHeight: TFloatField;
    qryItemsConsideration: TWideStringField;
    qryStore: TADOQuery;
    qryItems_Storepit: TStringField;
    newPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    okPanel: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    qry_LookStuff: TADOQuery;
    qrySamplesSampleID: TIntegerField;
    DBNavigator1: TDBNavigator;
    qrySamplesHectolitre: TFloatField;
    edtHectolitre: TDBEdit;
    Label1: TLabel;
    qryItemsMoisture: TFloatField;
    qryItemsGluten: TFloatField;
    qryItemsIndexs: TFloatField;
    qryItemsCustID: TIntegerField;
    qryCustomers: TADOQuery;
    qryItems_CustName: TStringField;
    qryItemsD_Hour: TIntegerField;
    qryItemsD_Minute: TIntegerField;
    qryItemsDurationHM: TFMTBCDField;
    qryItemsStuffCode: TLargeintField;
    qryItemsSiHectolitre: TFloatField;
    qryItems_StuffName: TStringField;
    procedure qrySamplesAfterInsert(DataSet: TDataSet);
    procedure qrySamplesAfterScroll(DataSet: TDataSet);
    procedure qryItemsAfterInsert(DataSet: TDataSet);
    procedure qrySamplesAfterPost(DataSet: TDataSet);
    procedure qrySamplesAfterDelete(DataSet: TDataSet);
    procedure qrySamplesAfterEdit(DataSet: TDataSet);
    procedure qrySamplesBeforeDelete(DataSet: TDataSet);
    procedure qrySamplesBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure ALLGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ALLSetText(Sender: TField; const Text: String);
    procedure srcSamplesStateChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CedarDbgrid1KeyPress(Sender: TObject; var Key: Char);
    procedure qrySamplesHookupKindChange(Sender: TField);
    procedure SBtnReciptNumberClick(Sender: TObject);
    procedure qryItemsBeforeEdit(DataSet: TDataSet);
    procedure qryItemsBeforePost(DataSet: TDataSet);
    procedure CedarDbgrid1EditButtonClick(Sender: TObject);
    procedure qryItemsHeightChange(Sender: TField);
  private
    formtype: byte;
    procedure InitForm;
    procedure Allgridkeyenter(Sender: TObject; var Key: Char);
    procedure Setcol;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SampleItemsF: TSampleItemsF;

implementation

uses
  DM, GlobalPro, FaraConsts, MMESSAGE, searchCode_ADO, FormFunctions;

{$R *.dfm}

procedure TSampleItemsF.qryItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qryItemsID.AsInteger := GetANewCode('lab.SampleItems',
    'lab.SampleItems', 'ID');
  qryItemsSampleID.AsInteger := qrySamplesSampleID.AsInteger;

end;

procedure TSampleItemsF.qryItemsBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if not(qrySamples.State in dsEditModes) then
    qrySamples.Edit;

end;

procedure TSampleItemsF.qryItemsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (DataSet.FieldByName('_Storepit').IsNull) then
    try
      DataSet.Cancel;
      CedarDbgrid1.SetFocus;
      Abort;
    except
      on E: Exception do
      begin
      end;

    end;
  if not CheckRequiredFields(qryItems) then
    Abort;

end;

procedure TSampleItemsF.qryItemsHeightChange(Sender: TField);
begin
  inherited;
  if qrySamplesHookupKind.AsInteger = 0 then
    qryItemsSiHectolitre.AsFloat := qrySamplesHectolitre.AsFloat
end;

procedure TSampleItemsF.qrySamplesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('حذف شد.', 1)
end;

procedure TSampleItemsF.qrySamplesAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('LastUser').AsString := user.Name;
end;

procedure TSampleItemsF.qrySamplesAfterInsert(DataSet: TDataSet);
var
  txt: string;
begin
  inherited;
  qrySamplesSampleID.AsInteger := GetANewCode('lab.Samples', 'lab.Samples',
    'SampleID');

  DataSet.FieldByName('ReciptType').AsInteger := formtype;
  DataSet.FieldByName('SampleDate').AsString := var_glb_CurrentDate;
  DataSet.FieldByName('InsertDate').AsDateTime := Now;
  txt := 'SELECT MAX(SampleNo)FROM lab.Samples WHERE(ReciptType=' +
    qryinit.FieldByName('ReciptType').AsString + ')';
  DataSet.FieldByName('SampleNo').AsInteger := GetANewCode('lab.Samples', txt,
    'SampleNo', nil, qryinit.FieldByName('StepCorrelate').AsInteger);
  DataSet.FieldByName('FirstUser').AsString := user.Name;

end;

procedure TSampleItemsF.qrySamplesAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qryItems.State in dsEditModes then
    qryItems.post;
  qryItems.UpdateBatch();
  BigMessage('ثبت شد .‏', 1);
end;

procedure TSampleItemsF.qrySamplesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryItems do
  begin
    Active := false;
    Parameters.ParamByName('SampleID').Value := qrySamplesSampleID.AsInteger;
    Active := True;
  end;

  try
    qryItems.DisableControls;
    if (qrySamples.State in [dsInsert]) then
      With qryStore do
      begin
        First;
        while not eof do
        begin
          qryItems.Insert;
          qryItemsStorepit.AsInteger := qryStore.FieldByName('n_StoreID')
            .AsInteger;
          qryItems.post;
          Next;
        end;
      end;
  finally
    qryItems.EnableControls;
  end;

  Setcol;
end;

procedure TSampleItemsF.SBtnReciptNumberClick(Sender: TObject);
var
  txt: String;
  b: Boolean;
  Results: array [0 .. 3] of String;
begin
  inherited;
  txt := 'SELECT SampleID,SampleNo ,SampleDate  FROM lab.Samples   ' +
    'WHERE (ReciptType = ' + IntToStr(formtype) + ') ';
  b := searchCode_ADOF.SearchCode2(DMf.adcBSell, ' فرمها  ', txt,
    ['', 'شماره فرم', 'تاريخ'], Results, [0, 50, 50], alLeft);
  if b then
    qrySamples.Locate('SampleID', Results[0], []);
end;

procedure TSampleItemsF.Setcol;
var
  b: Boolean;
begin
  b := qrySamplesHookupKind.AsInteger = 2;
  setColumns2(CedarDbgrid1, b, 'Moisture');
  setColumns2(CedarDbgrid1, b, 'Gluten');
  setColumns2(CedarDbgrid1, b, 'Indexs');

  b := qrySamplesHookupKind.AsInteger in [1, 2];
  setColumns2(CedarDbgrid1, b, 'D_Hour');
  setColumns2(CedarDbgrid1, b, 'D_Minute');

  b := qrySamplesHookupKind.AsInteger in [0, 1, 2];
  setColumns2(CedarDbgrid1, b, 'CustID');
  setColumns2(CedarDbgrid1, b, '_CustName');

  b := qrySamplesHookupKind.AsInteger = 0;
  setColumns2(CedarDbgrid1, b, 'StuffCode');
  setColumns2(CedarDbgrid1, b, '_StuffName');
  setColumns2(CedarDbgrid1, b, 'SiHectolitre');

end;

procedure TSampleItemsF.qrySamplesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('آيا براي حذف مطمئن هستيد؟') <> mrYes then
    Abort;
end;

procedure TSampleItemsF.qrySamplesBeforePost(DataSet: TDataSet);
var
  Storepit: Integer;
begin
  inherited;
  if not CheckRequiredFields(qrySamples) then
    Abort;

  if ((qryItems_Storepit.IsNull) and (qryItemsStorepit.IsNull)) then
  begin
    qryItems.Cancel;
  end;

  with qryItems do
  begin
    DisableControls;
    try
      Storepit := 0;
      Sort := 'Storepit';
      First;
      while not eof do
      begin
        if FieldByName('Storepit').AsInteger <> Storepit then
          Storepit := FieldByName('Storepit').AsInteger
        else
        begin
          Warn('سیلو تکراری وجود دارد و قابل ثبت نیست' + #13#10 + 'کد سیلو=' +
            FieldByName('Storepit').AsString);
          Abort;
        end;
        Next;
      end;
    finally
      EnableControls;
    end;
  end;

end;

procedure TSampleItemsF.qrySamplesHookupKindChange(Sender: TField);
begin
  inherited;
  Setcol
end;

procedure TSampleItemsF.Allgridkeyenter(Sender: TObject; var Key: Char);
var
  nextIndex: Integer;
  curIndex: Integer;
  aDataset: TDataSet;
  b: Boolean;
  // c:  String;
begin
  curIndex := (Sender as TCedarDbgrid).SelectedIndex;
  nextIndex := curIndex;
  case Key of
    #13, #9:
      begin
        if ShiftDown then
          Exit;
        aDataset := (Sender as TCedarDbgrid).DataSource.DataSet;
        Key := #0;
        // case curIndex of
        // // 0:
        // // nextIndex := 2;
        // // 1:
        // // nextIndex := 2;
        // 10:
        // nextIndex := -1;
        // else
        // nextIndex := curIndex;
        // end; // case

        if (curIndex > 0) and ((qryItems_Storepit.IsNull) and
          (qryItemsStorepit.IsNull)) then
        begin
          aDataset.Cancel;
          okPanel.SetFocus;
          Exit;
        end;

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
      CedarDbgrid1EditButtonClick(nil);
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
          sendkey(vk_down, [], false);
          (Sender as TCedarDbgrid).SelectedIndex := 2;
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

procedure TSampleItemsF.SpeedButton2Click(Sender: TObject);
var
  Name: string;
begin
  inherited;
  SpeedButtonStuffCoding(qrySamples, 'StuffCode', '0,3', Name)
end;

procedure TSampleItemsF.srcSamplesStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qrySamples.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  // DataSetDelete1.Visible := okPanel.Visible;

  FreeReservedCodes(DMf.adcBSell, '', '', 'lab.Samples');
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
  // FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
end;

procedure TSampleItemsF.FormCreate(Sender: TObject);
begin
  inherited;
  InitForm;
end;

procedure TSampleItemsF.InitForm;
var
  txt: string;
  Kind: Integer;
begin
  formtype := var_glb_gParam;
  lblCaption.Hint := IntToStr(formtype);
  SetLookUpCash(qrySamples);
  with qryinit do
  begin
    Active := false;
    Parameters.ParamByName('ReciptType').Value := formtype;
    Active := True;
    Caption := FieldByName('ReciptCaption').AsString;
    edtSampleNo.ReadOnly := FieldByName('EditReciptNumberActive')
      .AsInteger <> 1;

    qryCustomers.SQL.Add(GetCustomersGroupTypeSQL('Customer2DetailKind',
      qryinit));
  end; // with
  txt := 'SELECT LookUpID,Name FROM LookUps WHERE(Kind = %d ) ORDER BY Code';
  Kind := qryinit.FieldByName('FormKindSerial').AsInteger;
  InitDBCombos(cmbHourID, Format(txt, [Kind]));
  Kind := qryinit.FieldByName('FormItemKindSerial').AsInteger;
  InitDBCombos(cmbShiftID, Format(txt, [Kind]));
  with qrySamples do
  begin
    Active := false;
    Parameters.ParamByName('ReciptType').Value := formtype;
    Active := True;
    Last;
  end; // with
end;

procedure TSampleItemsF.ALLGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
var
  cmb: TDBComboBox;
begin
  inherited;
  cmb := TDBComboBox(FindComponent('Cmb' + Sender.FieldName));
  Text := cmb.Items[cmb.Items.IndexOfObject(TObject(Sender.AsInteger))];
end;

procedure TSampleItemsF.ALLSetText(Sender: TField; const Text: String);
var
  cmb: TDBComboBox;
begin
  inherited;
  cmb := TDBComboBox(FindComponent('Cmb' + Sender.FieldName));
  Sender.AsInteger := Integer(cmb.Items.Objects[cmb.ItemIndex]);
end;

procedure TSampleItemsF.CedarDbgrid1EditButtonClick(Sender: TObject);
var
  txt: string;
  b: Boolean;
  Results: array [0 .. 4] of String;
  id: Integer;
begin
  inherited;
  id := CedarDbgrid1.SelectedIndex;
  if CedarDbgrid1.Columns[id].FieldName = 'CustID' then
  begin
    txt := 'SELECT DISTINCT CustID,CustName FROM Vu_CustomersGroups ' +
      GetCustomersGroupTypeSQL('Customer2DetailKind', qryinit);
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell,
      qryinit.FieldByName('Person2DetailCaption').AsString + 'ها ', txt,
      ['کد', qryinit.FieldByName('Person2DetailCaption').AsString], Results,
      [50, 150], alLeft);
    if b then
    begin
      if not(qryItems.State in dsEditModes) then
        qryItems.Edit;
      qryItems.FieldByName('CustID').AsInteger := StrToInt(Results[0]);
    end; // if
  end;

  if CedarDbgrid1.Columns[id].FieldName = 'StuffCode' then
  begin
    txt := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Units.UnitName '
      + 'FROM StuffCoding INNER JOIN StuffGroups ON StuffCoding.GroupID = StuffGroups.GroupID INNER JOIN '
      + 'Units ON StuffCoding.n_UnitCode = Units.UnitCode ';
    // 'WHERE (StuffGroups.GroupType IN (1,2,4,5,6,9))';
    b := searchCode_ADOF.SearchCode2(DMf.adcBSell, 'کد و عنوان كالا', txt,
      ['کد', ' عنوان كالا', 'واحد'], Results, [50, 150, 50], alLeft);
    if b then
    begin
      if not(qryItems.State in dsEditModes) then
        qryItems.Edit;
      qryItems.FieldByName('StuffCode').AsString := Results[0];
    end;
  end;
end;

procedure TSampleItemsF.CedarDbgrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Allgridkeyenter(Sender, Key)
end;

end.
