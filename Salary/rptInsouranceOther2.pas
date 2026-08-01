unit rptInsouranceOther2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, ADODB, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, ppModule, ppCtrls, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, DBCtrls, ComCtrls, ToolWin, Menus, ppStrtch,
  ppRegion, ppParameter, ppDesignLayer, System.ImageList,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid;

type
  TrptInsouranceOther2F = class(Ttemplate2MDIF)
    qryInsouranceOther: TADOQuery;
    srcInsouranceOther: TDataSource;
    Button1: TButton;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    actPrint: TAction;
    actSendtoExcel: TAction;
    actSort: TAction;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    actFilter: TAction;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    btnMakeDisk_Tbl_List: TButton;
    qryInsouranceOtherPersonelNo: TIntegerField;
    qryInsouranceOthername_L1: TStringField;
    qryInsouranceOtherlastName_L1: TStringField;
    qryInsouranceOtherNationalID: TStringField;
    qryInsouranceOtherPrice1: TBCDField;
    qryInsouranceOtherPrice3: TBCDField;
    qryInsouranceOthersumPrice: TBCDField;
    qryInsouranceOtherFirstMounth: TWordField;
    qryInsouranceOtherEndMounth: TWordField;
    qryInsouranceOtherPrice2: TBCDField;
    qryInsouranceOtherAidNo1: TStringField;
    qryInsouranceOtherAidDate1: TStringField;
    qrydisket: TADOQuery;
    qryInsouranceOtherEmploye1: TBCDField;
    PopList4Print: TPopupMenu;
    NameHint1: TMenuItem;
    A41: TMenuItem;
    qryInsouranceOthersumPriceEmploye1: TBCDField;
    qryInsouranceOtherSumWage: TBCDField;
    CmbArchiveID: TComboBox;
    AllClick: TMenuItem;
    actMakeDisk_Tbl_List: TAction;
    qryInitForm: TADOQuery;
    qryCaption: TADOQuery;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLine16: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLblCompanyName: TppLabel;
    ppLblPrintDate: TppLabel;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLabel43: TppLabel;
    ppLblCaption: TppLabel;
    ppLabel21: TppLabel;
    ppLine5: TppLine;
    ppLine9: TppLine;
    ppDBText5: TppDBText;
    ppLabel2: TppLabel;
    ppLine2: TppLine;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppLabel4: TppLabel;
    ppLine4: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine6: TppLine;
    ppLabel1: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine8: TppLine;
    ppLabel3: TppLabel;
    ppLabel12: TppLabel;
    ppLine11: TppLine;
    ppLabel13: TppLabel;
    ppLabel7: TppLabel;
    ppLabel14: TppLabel;
    ppLine13: TppLine;
    ppLabel15: TppLabel;
    ppLine39: TppLine;
    ppLabel5: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLine7: TppLine;
    ppLine82: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText2: TppDBText;
    ppLine15: TppLine;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppDBText6: TppDBText;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine21: TppLine;
    ppDBText9: TppDBText;
    ppLine22: TppLine;
    ppDBText10: TppDBText;
    ppLine23: TppLine;
    ppDBText11: TppDBText;
    ppLine24: TppLine;
    ppDBText12: TppDBText;
    ppLine25: TppLine;
    ppDBText13: TppDBText;
    ppLine26: TppLine;
    ppDBText14: TppDBText;
    ppLine27: TppLine;
    ppLine38: TppLine;
    ppLine40: TppLine;
    ppDBText15: TppDBText;
    ppDBText30: TppDBText;
    ppLabel39: TppLabel;
    ppLine10: TppLine;
    ppLine83: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel49: TppLabel;
    ppLine62: TppLine;
    sd_col5: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLine14: TppLine;
    ppLine29: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLine30: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLine31: TppLine;
    ppDBCalc3: TppDBCalc;
    ppLine32: TppLine;
    ppDBCalc4: TppDBCalc;
    ppLine33: TppLine;
    ppDBCalc6: TppDBCalc;
    ppLine34: TppLine;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppLine12: TppLine;
    ppLine84: TppLine;
    actMakeDisk: TAction;
    popMakeDisk: TPopupMenu;
    N1: TMenuItem;
    blList1: TMenuItem;
    qryInsouranceOtherPrice4: TBCDField;
    N2: TMenuItem;
    ADOQuery1: TADOQuery;
    qryInsouranceOtherAmount1: TFloatField;
    qryInsouranceOtherAmount2: TFloatField;
    qryInsouranceOtherAmount3: TFloatField;
    qryInsouranceOtherAmount4: TFloatField;
    qryInsouranceOtherSumAmount: TFloatField;
    DBGrid1: TCedarDbgrid;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure actSendtoExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure actFilterExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure AllClickClick(Sender: TObject);
    procedure CmbArchiveIDChange(Sender: TObject);
    procedure ppDBText5GetText(Sender: TObject; var Text: String);
    procedure ppDBText1GetText(Sender: TObject; var Text: String);
    procedure actMakeDisk_Tbl_ListExecute(Sender: TObject);
    procedure btnMakeDisk_Tbl_ListClick(Sender: TObject);
    procedure actMakeDiskExecute(Sender: TObject);
  private
    MonthNo: Byte;
    FormType: Byte;
    SQLqryInsouranceOther: String;
    procedure Updatefilter;
    function MakeDisk(Tbl_Name, BimehFile: String): boolean;
    procedure Insertdisket(Tbl_Name: String);
    procedure initForm;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptInsouranceOther2F: TrptInsouranceOther2F;

implementation

uses DM, GlobalPro, sort2, search2, filter_ADO, FilterClass_ADO,
  SalaryFunctions,
  Mymostafa, mmessage;

{$R *.dfm}

procedure TrptInsouranceOther2F.FormCreate(Sender: TObject);
begin
  inherited;
  initForm
end;

procedure TrptInsouranceOther2F.initForm;
begin
  FormType := var_glb_gParam;
  MonthNo := var_glb_CurrentMonth;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  SQLqryInsouranceOther := qryInsouranceOther.SQL.Text;
  with qryInitForm do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := True;
    Caption := fieldbyname('FormCaption_L1').AsString + ' 2';
  end; // with initForm
end;

procedure TrptInsouranceOther2F.FormShow(Sender: TObject);
begin
  inherited;
  ToolBar1.Buttons[MonthNo - 1].Down := True;
  myParams.Clear;
  if actFilter.Execute then
    if myParams.FindParam('FormInfoID') = nil then
      Close;
end;

procedure TrptInsouranceOther2F.ppLblCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TrptInsouranceOther2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryInsouranceOther);
end;

procedure TrptInsouranceOther2F.actSendtoExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TrptInsouranceOther2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TrptInsouranceOther2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryInsouranceOther);
end;

procedure TrptInsouranceOther2F.ppLblPrintDateGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TrptInsouranceOther2F.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TrptInsouranceOther2F.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'FormInfoID', '⁄‰Ê«‰ ”«“„«‰', '', ftInteger,
        dvDefaults, 'true', '', ciCheck,
        'SELECT    Pay.FormsInfo.FormInfoID,ltrim(rtrim( str(Pay.FormsInfo.InfoID) ))+ Pay.FormsInfo.InfoName_L1 FROM  Pay.FixedCalculated INNER JOIN  '
        + ' Pay.FormsInfo ON Pay.FixedCalculated.OfficeCode = Pay.FormsInfo.FormInfoID WHERE  formtype=12   '
        + ' GROUP BY  Pay.FormsInfo.FormInfoID,Pay.FormsInfo.InfoID,Pay.FormsInfo.InfoName_L1 ',
        '');
      AddItem(DMf.adcSalary, 'c_PersonelNo', '„‘Œ’«  Å—”‰·Ì', '‘„«—Â',
        ftInteger, dvMinMax, '', '', ciLookup,
        'select PersonelNo, name_L1 + '' '' + lastName_L1 as pname FROM Pay.PersonelInfo ',
        'Select Min(PersonelNo),max(PersonelNo) FROM Pay.PersonelInfo ');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        Updatefilter;
      end; // if
    finally
      Free;
    end; // try
  end; // with     }
end;

procedure TrptInsouranceOther2F.Updatefilter;
var
  i: Integer;
begin
  inherited;
  GetYearMounth(MonthNo);
  with qryCaption do
  begin
    Active := False;
    Parameters.ParamByName('FormType').Value := FormType;
    Active := True;

    if (qryCaption.RecordCount < 3) or (qryCaption.RecordCount > 4) then
    begin
      Warn(' ‰ŸÌ„«  Ê Ì« „Õ«”»Â «‰Ã«„ ‰‘œÂ', mtInformation);
      Exit;
    end;

    for i := 0 to qryInsouranceOther.Parameters.Count - 1 do
      qryInsouranceOther.Parameters[i].Value := '0';

    while not Eof do
    begin
      qryInsouranceOther.Parameters.ParamByName('FormInfoID' + IntToStr(RecNo))
        .Value := fieldbyname('FormInfoID').AsInteger;

      qryInsouranceOther.Parameters.ParamByName('SalaryID' + IntToStr(RecNo))
        .Value := fieldbyname('FormInfoID').AsInteger;

      qryInsouranceOther.fieldbyname('Amount' + IntToStr(RecNo)).DisplayLabel :=
        fieldbyname('InfoName_L1').AsString + ' (  ⁄œ«œ ) ';

      qryInsouranceOther.fieldbyname('Price' + IntToStr(RecNo)).DisplayLabel :=
        fieldbyname('InfoName_L1').AsString + ' ( „»·€ ) ';
      Next;

    end;

    qryInsouranceOther.Parameters.ParamByName('FormInfoIDDarsad').Value :=
      qryInsouranceOther.Parameters.ParamByName('FormInfoID1').Value ;

  end;

  with qryInsouranceOther do
  begin
    Active := False;
    SQL.Text := StringReplace(SQLqryInsouranceOther, ':OfficeCodeFromTo',
      'AND (Interdicts.OfficeCode in(' +
      GetcFrom(myParams.ParamValues['FormInfoID'], ftString) + '))',
      [rfReplaceAll]);
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Parameters.ParamByName('YearID1').Value := APPBank.Year;
    Parameters.ParamByName('YearID2').Value := APPBank.Year;
    Parameters.ParamByName('YearID3').Value := APPBank.Year;

    Parameters.ParamByName('Mounth').Value := MonthNo;
    Parameters.ParamByName('Mounth2').Value := MonthNo;

    Parameters.ParamByName('ArchiveID').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
    Parameters.ParamByName('ArchiveID1').Value :=
      Integer(CmbArchiveID.Items.Objects[CmbArchiveID.ItemIndex]);
    Parameters.ParamByName('MonthFrom').Value := MonthNo;
    Parameters.ParamByName('MonthTo').Value := MonthNo;
    Parameters.ParamByName('FormType').Value := FormType;
    Parameters.ParamByName('PersonelNoFrom').Value :=
      GetcFrom(myParams.ParamValues['c_PersonelNo'], ftInteger);
    Parameters.ParamByName('PersonelNoTo').Value :=
      GetcTo(myParams.ParamValues['c_PersonelNo'], ftInteger);
    // Parameters.ParamByName('PrvInfoID').Value:=qryMaster.FieldByName('FormInfoID').AsInteger;
    Active := True;
  end;

end;

procedure TrptInsouranceOther2F.ToolButton1Click(Sender: TObject);
begin
  inherited;
  MonthNo := (Sender as TToolButton).tag;
  InitCmbArchiveID(CmbArchiveID, MonthNo);
  Updatefilter;
end;

procedure TrptInsouranceOther2F.AllClickClick(Sender: TObject);
begin
  inherited;
  with qryInsouranceOther do
    try
      DisableControls;
      InitReportFile(ppReport1, (Sender as TMenuItem).Hint);
    finally
      EnableControls;
    end;
end;

procedure TrptInsouranceOther2F.CmbArchiveIDChange(Sender: TObject);
begin
  inherited;
  Updatefilter
end;

function TrptInsouranceOther2F.MakeDisk(Tbl_Name, BimehFile: String): boolean;
var
  path: String;
  s: String;
  b1: boolean;
  WarnMsg: String;
begin
  Result := False;
  path := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)));
  CopyFile(pchar(path + 'Bimeh\' + BimehFile + '.fra'),
    pchar(path + '' + BimehFile + '00.fra'), False);
  try
    with qrydisket do
    begin
      ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data ' + 'Source=' +
        path + BimehFile + '00.fra;Persist Security Info=False;';
      SQL.Text := 'SELECT * FROM ' + Tbl_Name;
      Active := True;
    end; // with
  except
    Warn('«‘ﬂ«· œ— « ’«· »Â »«‰ﬂ »Ì„Â', mtError);
    Exit;
  end; // try
  // ---------------------------------------------------------------------
  try
    BigMessageProgBar('œ— Õ«·  ÂÌÂ ›«Ì· »Ì„Â ...',
      qryInsouranceOther.RecordCount);
    qryInsouranceOther.DisableControls;
    SetKeyboardLatin;
    qryInsouranceOther.First;
    while not qryInsouranceOther.Eof do
    begin
      with qrydisket do
      begin
        Insert;
        try
          Insertdisket(Tbl_Name);
          Post;
        except
          Warn('Error for personel # ' + qryInsouranceOther.fieldbyname
            ('PersonelNo').AsString);
          Exit;
        end; // try
      end; // with
      qryInsouranceOther.Next;
      GoProgressBar(qryInsouranceOther.fieldbyname('lastName_L1').AsString);
    end; // while
    CloseMessage;
    s := ' ⁄œ«œ Å—”‰· = ' + IntToStr(qryInsouranceOther.RecordCount) + #10;
    Warn(s, mtCustom);
    b1 := True;
    while b1 do
    begin
      s := get_box('–ŒÌ—Â ›«Ì· »Ì„Â',
        '·ÿ›« „”Ì— –ŒÌ—Â ›«Ì·Â«Ì »Ì„Â —« Ê«—œ ﬂ‰Ìœ:', 'A:\');
      if not System.SysUtils.DirectoryExists(s) then
      begin
        WarnMsg := '„”Ì— Ê«—œ ‘œÂ „⁄ »— ‰Ì” .';
        b1 := get_response(WarnMsg + ' œÊ»«—Â ”⁄Ì „Ìùﬂ‰Ìœø') = mrYes;
      end
      else
      begin
        b1 := False;
        if not CopyFile(pchar(path + BimehFile + '00.fra'),
          pchar(IncludeTrailingPathDelimiter(s) + BimehFile + '.mdb'), False)
        then
        begin
          WarnMsg := '«‘ﬂ«· œ— ﬂÅÌ ›«Ì·.';
          b1 := get_response(WarnMsg + ' œÊ»«—Â ”⁄Ì „Ìùﬂ‰Ìœø') = mrYes;
        end
        else
        begin
          if not CopyFile(pchar(path + BimehFile + '00.fra'),
            pchar(IncludeTrailingPathDelimiter(s) + BimehFile + '.mdb'), False)
          then
          begin
            WarnMsg := '«‘ﬂ«· œ— ﬂÅÌ ›«Ì·.';
            b1 := get_response(WarnMsg + ' œÊ»«—Â ”⁄Ì „Ìùﬂ‰Ìœø') = mrYes;
          end
          else
          begin
            b1 := False;
            Result := True;
          end; // else
        end; // else
      end; // else
    end; // while
  finally
    qryInsouranceOther.EnableControls;
    qrydisket.Active := False;
    qrydisket.ConnectionString := EmptyStr;
    DeleteFile(pchar(path + BimehFile + '00.fra'));
    CloseMessage;
    SetKeyboardFarsi;
  end; // try
end;

procedure TrptInsouranceOther2F.Insertdisket(Tbl_Name: String);
begin
  if Tbl_Name = 'disket' then
    with qrydisket do
    begin
      fieldbyname('d_entry').AsInteger :=
        StrToInt(StringReplace(qryInsouranceOther.fieldbyname('AidDate1')
        .AsString, '/', '', [rfReplaceAll]));
      fieldbyname('c_personel').AsInteger := qryInsouranceOther.fieldbyname
        ('PersonelNo').AsInteger;
      fieldbyname('c_identify').Value := 1;
      fieldbyname('name').Value := qryInsouranceOther.fieldbyname
        ('name_L1').AsString;
      fieldbyname('family').Value := qryInsouranceOther.fieldbyname
        ('lastName_L1').AsString;
      fieldbyname('n_insure').Value := qryInsouranceOther.fieldbyname('AidNo1')
        .AsVariant;
      fieldbyname('c_meli').AsString := qryInsouranceOther.fieldbyname
        ('NationalID').AsString;
      fieldbyname('td').AsInteger := qryInsouranceOther.fieldbyname('Amount1')
        .AsInteger;
      fieldbyname('td1').AsInteger := qryInsouranceOther.fieldbyname('Amount2')
        .AsInteger;
      fieldbyname('td21').AsInteger := qryInsouranceOther.fieldbyname('Amount3')
        .AsInteger;
      fieldbyname('td22').AsInteger := qryInsouranceOther.fieldbyname('Amount4')
        .AsInteger;
      // +              qryInsouranceOther.FieldByName('Amount2').AsInteger;
      fieldbyname('mb').AsCurrency := qryInsouranceOther.fieldbyname('Price1')
        .AsCurrency;
      fieldbyname('mb1').AsCurrency := qryInsouranceOther.fieldbyname('Price2')
        .AsCurrency;
      fieldbyname('mb21').AsCurrency := qryInsouranceOther.fieldbyname('Price3')
        .AsCurrency;
      fieldbyname('mb22').AsCurrency := qryInsouranceOther.fieldbyname('Price4')
        .AsCurrency;
      fieldbyname('state').Value := -1;
      fieldbyname('td01').AsInteger := qryInsouranceOther.fieldbyname('Amount1')
        .AsInteger + qryInsouranceOther.fieldbyname('Amount2').AsInteger;;
      fieldbyname('mb01').AsCurrency := qryInsouranceOther.fieldbyname('Price1')
        .AsCurrency + qryInsouranceOther.fieldbyname('Price2').AsCurrency;
      fieldbyname('Delemiter1').AsString := ';';
    end
  else
    with qrydisket do
    begin
      // FieldByName('List_ID').AsInteger:=StrToInt(IntToStr(APPBank.Year)+IntToStr(qryInsouranceOther.RecNo));
      fieldbyname('Sav_Date').AsInteger :=
        StrToInt(StringReplace(qryInsouranceOther.fieldbyname('AidDate1')
        .AsString, '/', '', [rfReplaceAll]));
      // FieldByName('Insur_No').AsInteger:=qryInsouranceOther.FieldByName('AidNo1').AsInteger;
      fieldbyname('Nat_Code').Value := qryInsouranceOther.fieldbyname
        ('NationalID').AsString;
      fieldbyname('First_N').Value := qryInsouranceOther.fieldbyname
        ('name_L1').AsString;
      fieldbyname('Last_N').Value := qryInsouranceOther.fieldbyname
        ('lastName_L1').AsString;
      fieldbyname('Sub1_Num').AsInteger := qryInsouranceOther.fieldbyname
        ('Amount1').AsInteger;
      fieldbyname('Sub2_Num').AsInteger := qryInsouranceOther.fieldbyname
        ('Amount2').AsInteger;
      fieldbyname('Sub3_Num').AsInteger := qryInsouranceOther.fieldbyname
        ('Amount3').AsInteger;
    end;

end;

procedure TrptInsouranceOther2F.actMakeDisk_Tbl_ListExecute(Sender: TObject);
begin
  inherited;
  if MakeDisk('Tbl_List', 'Disket_Bank') then
    BigMessage('œÌ”ﬂ   »« „Ê›ﬁÌ   ÂÌÂ ‘œ.', 1);
end;

procedure TrptInsouranceOther2F.ppDBText5GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := ToolBar1.Buttons[MonthNo - 1].Caption;
end;

procedure TrptInsouranceOther2F.ppDBText1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := optP.Year;
end;

procedure TrptInsouranceOther2F.btnMakeDisk_Tbl_ListClick(Sender: TObject);
begin
  inherited;
  popMakeDisk.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
end;

procedure TrptInsouranceOther2F.actMakeDiskExecute(Sender: TObject);
begin
  inherited;
  if MakeDisk('disket', 'Bimeh') then
    BigMessage('œÌ”ﬂ   »« „Ê›ﬁÌ   ÂÌÂ ‘œ.', 1);
end;

End.
