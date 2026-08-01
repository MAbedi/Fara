unit RptReports3200;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  template2MDI, System.ImageList, Vcl.ImgList, Vcl.DBActns, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.Menus, System.StrUtils, System.DateUtils,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, ppParameter,
  ppDesignLayer, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe;

type
  ThackCedarGrid = class(TCedarDbgrid);

  TRptReports3200F = class(Ttemplate2MDIF)
    qryDetails3203: TADOQuery;
    srcDetails3203: TDataSource;
    qryDetails3204: TADOQuery;
    srcDetails3204: TDataSource;
    srcDetails3201: TDataSource;
    qryDetails3201: TADOQuery;
    qryDetails3202: TADOQuery;
    srcDetails3202: TDataSource;
    qryDetails3205: TADOQuery;
    srcDetails3205: TDataSource;
    Panel1: TPanel;
    splLeft4: TSplitter;
    splLeft3: TSplitter;
    pnlLblLimitPlace: TPanel;
    LblShowLimitPlace2: TLabel;
    LblShowLimitPlace1: TLabel;
    splLeft2: TSplitter;
    splLeft1: TSplitter;
    splTop: TSplitter;
    qryDetails3200: TADOQuery;
    srcDetails3200: TDataSource;
    actFilter: TAction;
    BitBtn2: TBitBtn;
    BtnPrint: TBitBtn;
    qryInitReports: TADOQuery;
    qryInitReportsReportID: TIntegerField;
    qryInitReportsReportDate: TStringField;
    qryInitReportsn_systemparts: TWordField;
    qryInitReportsReportName: TStringField;
    qryInitReportsMasterSql: TStringField;
    qryInitReportsRow: TIntegerField;
    qryInitReportsReportSql: TStringField;
    qryInitReportsMasterField: TStringField;
    qryInitReportsMasterCaption: TStringField;
    qryInitReportsMenuName: TStringField;
    qryInitReportsReportFileName1: TStringField;
    qryInitReportsReportFileName2: TStringField;
    qryInitReportsReportFileName3: TStringField;
    qryInitReportsReportFileName4: TStringField;
    qryInitReportsReportCaption1: TStringField;
    qryInitReportsReportCaption2: TStringField;
    qryInitReportsReportCaption3: TStringField;
    qryInitReportsReportCaption4: TStringField;
    qryInitReportsOffColumnsCount: TWordField;
    qryInitReportsFormType: TIntegerField;
    qryInitReportsFormType1: TIntegerField;
    qryInitReportsFormType2: TIntegerField;
    qryInitReportsFormType3: TIntegerField;
    qryInitReportsFormType4: TIntegerField;
    qryInitReportsRestartField: TStringField;
    qryInitReportsLocateField: TStringField;
    qryInitReportsFormCaption1: TStringField;
    qryInitReportsFormCaption2: TStringField;
    qryInitReportsFormCaption3: TStringField;
    qryInitReportsFormCaption4: TStringField;
    qryInitReportsFormKind1: TWordField;
    qryInitReportsFormKind2: TWordField;
    qryInitReportsFormKind3: TWordField;
    qryInitReportsFormKind4: TWordField;
    qryInitReportsQuickSearchField: TStringField;
    qryInitReportsReportHelp: TStringField;
    qryInitReportsRuningTotalField1: TStringField;
    qryInitReportsRuningTotalField2: TStringField;
    qryInitReportsRuningTotalField3: TStringField;
    qryInitReportsRuningTotalField4: TStringField;
    qryInitReportsRuningTotalField5: TStringField;
    qryInitReportsRuningTotalField6: TStringField;
    qryInitReportsSumCurrentRecordActive: TWordField;
    qryInitReportsSelectedRowActive: TWordField;
    qryInitReportsAddSumFieldsName: TStringField;
    qryInitReportsCrossTabSQL: TStringField;
    qryInitReportsCaptions4CrossTab: TStringField;
    qryInitReportsSql4SomeYears: TStringField;
    qryInitReportsActivateGroup: TWordField;
    qryInitReportsMasterParmCount: TWordField;
    qryInitReportsSumActive: TWordField;
    qryInitReportsMenuList4Action: TStringField;
    qryInitReportsFormCaption: TStringField;
    qryInitReportslineMenu: TWordField;
    qryinitReportsItems: TADOQuery;
    qryinitReportsItemsItemID: TIntegerField;
    qryinitReportsItemsReportID: TIntegerField;
    qryinitReportsItemsfldName: TStringField;
    qryinitReportsItemsTopic: TStringField;
    qryinitReportsItemslabelCaption: TStringField;
    qryinitReportsItemscType: TWordField;
    qryinitReportsItemscDefaultValues: TWordField;
    qryinitReportsItemscFrom: TStringField;
    qryinitReportsItemscTo: TStringField;
    qryinitReportsItemsTcInputType: TWordField;
    qryinitReportsItemsLookupSql: TStringField;
    qryinitReportsItemsMinMaxSql: TStringField;
    qryinitReportsItemsParamUse: TWordField;
    qryinitReportsItemsRow: TWordField;
    qryinitReportsItemsConnectionTag: TWordField;
    qryinitReportsItemsUseParamInOtherForms: TWordField;
    qryinitReportsItemsUseParamInMain: TWordField;
    qryinitReportsItemsUseForm1: TWordField;
    qryinitReportsItemsUseForm2: TWordField;
    qryinitReportsItemsUseForm3: TWordField;
    qryinitReportsItemsUseForm4: TWordField;
    qryinitReportsItemsShowLimitPlace: TWordField;
    qryinitReportsItemsItems: TADOQuery;
    qryinitReportsItemsItemsID: TIntegerField;
    qryinitReportsItemsItemsItemID: TIntegerField;
    qryinitReportsItemsItemsParamName: TStringField;
    PopList4Print: TPopupMenu;
    AllClikPop: TMenuItem;
    men1: TMenuItem;
    men2: TMenuItem;
    men3: TMenuItem;
    men4: TMenuItem;
    grdDetails3200: TCedarDbgrid;
    grdDetails3201: TCedarDbgrid;
    grdDetails3202: TCedarDbgrid;
    grdDetails3203: TCedarDbgrid;
    grdDetails3204: TCedarDbgrid;
    grdDetails3205: TCedarDbgrid;
    pln3200: TppDBPipeline;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLblShowLimitPlace2: TppLabel;
    ppLblShowLimitPlace1: TppLabel;
    ppLblCurrentDate: TppLabel;
    LblCurrentDate2: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    pplblYearId: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine2: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalcnum2alphabet: TppDBCalc;
    DBnum2alphabet: TppDBText;
    pdbtxtCrossXNameY: TppDBText;
    pdbclcCrossXNameY: TppDBCalc;
    pdbclc2CrossXNameY: TppDBCalc;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    pln3201: TppDBPipeline;
    pln3202: TppDBPipeline;
    pln3203: TppDBPipeline;
    pln3204: TppDBPipeline;
    pln3205: TppDBPipeline;
    actPrint: TAction;
    procedure actFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryInitReportsAfterOpen(DataSet: TDataSet);
    procedure qryinitReportsItemsAfterScroll(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure AllC_l_i_c_k_Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qryDetails3200AfterOpen(DataSet: TDataSet);
  private
    formType: Integer;
    AccountDBName: string;
    procedure UpdateFilter(qryDetails: TADOQuery);
    procedure UpdateFilterAll;
    procedure PrepareFilter;
    procedure SetSQL(qryDetails: TADOQuery; formType: Integer);
    procedure UpdateFilter2(qryDetails: TADOQuery);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptReports3200F: TRptReports3200F;

implementation

uses
  DM, FilterClass_ADO, filter_ADO, Filter_ADO_Const, GlobalPro, FaraConsts,
  RptReports, shamsiDate;

{$R *.dfm}

procedure TRptReports3200F.actFilterExecute(Sender: TObject);
begin
  inherited;
  PrepareFilter;
end;

procedure TRptReports3200F.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopList4Print.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y)
end;

procedure TRptReports3200F.FormCreate(Sender: TObject);
begin
  inherited;
  OnShow := FormShow;
  AccountDBName := dmf.ReadBankConfig('AccountDBName', 'Accounting');
  formType := var_glb_gParam;
  lblCaption.Hint := IntToStr(formType) + '  ' + IntToStr(Var_SecondType);

  SetSQL(qryDetails3200, 3200);
  SetSQL(qryDetails3201, 3201);
  SetSQL(qryDetails3202, 3202);
  SetSQL(qryDetails3203, 3203);
  SetSQL(qryDetails3204, 3204);
  SetSQL(qryDetails3205, 3205);
  grdDetails3200.SearchPanel.Visible := False;
  grdDetails3201.SearchPanel.Visible := False;
  grdDetails3202.SearchPanel.Visible := False;
  grdDetails3203.SearchPanel.Visible := False;
  grdDetails3204.SearchPanel.Visible := False;
  grdDetails3205.SearchPanel.Visible := False;

  grdDetails3200.HorzScrollBar.ExtraPanel.Visible := False;
  grdDetails3201.HorzScrollBar.ExtraPanel.Visible := False;
  grdDetails3202.HorzScrollBar.ExtraPanel.Visible := False;
  grdDetails3203.HorzScrollBar.ExtraPanel.Visible := False;
  grdDetails3204.HorzScrollBar.ExtraPanel.Visible := False;
  grdDetails3205.HorzScrollBar.ExtraPanel.Visible := False;

  with qryInitReports do
  begin
    Active := False; // Close;
    Parameters.ParamByName('Type').Value := formType;
    Active := True;

    if var_tmp_str = EmptyStr then
      Caption := '  ' + qryInitReports.FieldByName('ReportName').AsString
    else
      Caption := var_tmp_str;
    var_tmp_str := EmptyStr;
    // lblCaption.Caption:=#13+Caption;

    men1.Caption := FieldByName('ReportCaption1').AsString;
    men2.Caption := FieldByName('ReportCaption2').AsString;
    men3.Caption := FieldByName('ReportCaption3').AsString;
    men4.Caption := FieldByName('ReportCaption4').AsString;

    men1.Visible := FieldByName('ReportFileName1').AsString <> EmptyStr;
    men2.Visible := FieldByName('ReportFileName2').AsString <> EmptyStr;
    men3.Visible := FieldByName('ReportFileName3').AsString <> EmptyStr;
    men4.Visible := FieldByName('ReportFileName4').AsString <> EmptyStr;

    BtnPrint.Hint := qryInitReports.FieldByName('ReportFileName1').AsString +
      #13 + qryInitReports.FieldByName('ReportFileName2').AsString + #13 +
      qryInitReports.FieldByName('ReportFileName3').AsString + #13 +
      qryInitReports.FieldByName('ReportFileName4').AsString;

  end;

end;

procedure TRptReports3200F.FormDestroy(Sender: TObject);
begin
  inherited;
  ThackCedarGrid(grdDetails3200).DoSave;
  ThackCedarGrid(grdDetails3201).DoSave;
  ThackCedarGrid(grdDetails3202).DoSave;
  ThackCedarGrid(grdDetails3203).DoSave;
  ThackCedarGrid(grdDetails3204).DoSave;
  ThackCedarGrid(grdDetails3205).DoSave;

  SaveConfig('', Self.Name + 'grd3202Width', grdDetails3202.Width.ToString);
  SaveConfig('', Self.Name + 'grd3201Width', grdDetails3201.Width.ToString);
  SaveConfig('', Self.Name + 'grd3204Width', grdDetails3204.Width.ToString);
  SaveConfig('', Self.Name + 'grd3205Width', grdDetails3205.Width.ToString);
  SaveConfig('', Self.Name + 'Panel1.Height', Panel1.Height.ToString);

end;

procedure TRptReports3200F.FormResize(Sender: TObject);
begin
  inherited;
  grdDetails3202.Width := ReadConfig('', Self.Name + 'grd3202Width',
    grdDetails3202.Width.ToString).ToInteger;

  grdDetails3201.Width := ReadConfig('', Self.Name + 'grd3201Width',
    grdDetails3201.Width.ToString).ToInteger;

  grdDetails3204.Width := ReadConfig('', Self.Name + 'grd3204Width',
    grdDetails3204.Width.ToString).ToInteger;

  grdDetails3205.Width := ReadConfig('', Self.Name + 'grd3205Width',
    grdDetails3205.Width.ToString).ToInteger;

  Panel1.Height := ReadConfig('', Self.Name + 'Panel1.Height',
    Panel1.Height.ToString).ToInteger;

end;

procedure TRptReports3200F.SetSQL(qryDetails: TADOQuery; formType: Integer);
var
  i: Integer;
    ReportSql: String;
begin
  with qryInitReports do
  begin
    Active := False;
    Parameters.ParamByName('Type').Value := formType;
    Active := True;
    qryDetails.Close;
    qryDetails.SQL.Clear;
    ReportSql := qryInitReportsReportSql.AsString.ToLower.Replace(':accounting',
      AccountDBName);
    with qryDetails do
    begin
      Active := False;
      SQL.Text := ReportSql;
      for i := 1 to Parameters.Count do
        Parameters[i - 1].Value := '0';
    end;

  end;
end;

procedure TRptReports3200F.FormShow(Sender: TObject);
begin
  inherited;
  lblCaption.Caption := Caption;
  // lblCaption.Caption:=Caption;
  if (not qryinitReportsItems.IsEmpty) then
  begin

    myParams.Clear;
    actFilter.Execute;
    // myParams4multyReport := myParams;
    qryinitReportsItems.First;
    if myParams.FindParam(qryinitReportsItemsfldName.AsString) = nil then
      Close;

  end // if
  else
  begin
    UpdateFilterAll
  end;

end;

procedure TRptReports3200F.PrepareFilter;
var
  LookupSql, MinMaxSql, cFrom, cTo: string;
  cn: TADOConnection;

  Function PrepareParam(const aSQL: string): string;
  begin
    result := aSQL.Replace('@var_glb_currentdate',
      QuotedStr(var_glb_CurrentDate)).Replace(':accounting', AccountDBName)
      .Replace(':YearIDFrom', APPBank.Year.ToString).Replace(':YearIDTo',
      APPBank.Year.ToString).Replace('@var_glb_currentmonth',
      var_glb_CurrentMonth.ToString);
  end;

begin
  if not qryinitReportsItems.IsEmpty then
  begin
    with TfilterF.Create2(Self, myParams) do
      try
        if not qryInitReportsSql4SomeYears.AsString.IsEmpty then
        begin
          AddItem(dmf.adcFaraSystem, 'checked', 'انتخاب سالهاي مالي ', '',
            ftUnknown, dvDefaults, 'true', '', ciCheck,
            'SELECT  Sid, ''سال''+ ltrim(STR(MaliYear))+ '' - ''+ CompanyName  AS Caption  FROM  Sections  WHERE  (SysID = '
            + IntToStr(SYSID) + ')');
        end;

        with qryinitReportsItems do
        begin
          First;
          while not Eof do
          begin
            cTo := PrepareParam(qryinitReportsItemscTo.AsString);
            cFrom := PrepareParam(qryinitReportsItemscFrom.AsString);
            LookupSql := PrepareParam(qryinitReportsItemsLookupSql.AsString);
            MinMaxSql := PrepareParam(qryinitReportsItemsMinMaxSql.AsString);

            if (qryinitReportsItemsUseParamInMain.AsInteger = 1) then
            begin
              cn := theMainConnection;

              AddItem(cn, qryinitReportsItemsfldName.AsString,
                qryinitReportsItemsTopic.AsString,
                qryinitReportsItemslabelCaption.AsString,
                BaseFieldTypes[qryinitReportsItemscType.AsInteger],
                BaseTcDefaultValues
                [qryinitReportsItemscDefaultValues.AsInteger], cFrom, cTo,
                FilterClass_ADO.TcInputType
                (qryinitReportsItemsTcInputType.AsInteger), LookupSql,
                MinMaxSql);
            end;
            Next;
          end; // while
        end; // with  qryinitReportsItems
        if ShowModal = mrOk then
        begin
          GetFilterString;
          pnlLblLimitPlace.Hint := GetFilterStringCaption;
          UpdateFilterAll;

        end; // if
      finally
        Free; // goto destory
      end;
  end;
end;

procedure TRptReports3200F.UpdateFilter(qryDetails: TADOQuery);
var
  DateFromRemain: String;
  // ItemIDFrom,ItemIDTo:Integer;
begin
  with qryinitReportsItems do
  begin
    First;
    while not Eof do
    begin
      if FieldByName('ParamUse').AsInteger in [1, 2, 5, 6] then
      begin
        while not qryinitReportsItemsItems.Eof do
        begin
          if qryDetails.Parameters.FindParam
            (qryinitReportsItemsItems.FieldByName('ParamName').AsString) <> nil
          then
          begin
            if (qryinitReportsItems.FieldByName('UseParamInMain').AsInteger = 1)
              and (qryinitReportsItems.FieldByName('UseParamInOtherForms')
              .AsInteger = 0) then
            begin
              if RightStr(Trim(qryinitReportsItemsItems.FieldByName('ParamName')
                .AsString), 4) = 'From' then
                if not(FieldByName('TcInputType').AsInteger in [4]) then
                  qryDetails.Parameters.ParamByName
                    (Trim(qryinitReportsItemsItems.FieldByName('ParamName')
                    .AsString)).Value :=
                    GetcFrom(myParams.ParamValues[FieldByName('fldName')
                    .AsString], BaseFieldTypes[FieldByName('cType').AsInteger])
                else
                  qryDetails.SQL.Text := StringReplace(qryDetails.SQL.Text,
                    ':' + LowerCase(qryinitReportsItemsItems.FieldByName
                    ('ParamName').AsString),
                    GetcFrom(myParams.ParamValues[FieldByName('fldName')
                    .AsString], ftString), [rfReplaceAll]);

              if RightStr(Trim(qryinitReportsItemsItems.FieldByName('ParamName')
                .AsString), 2) = 'To' then
                if qryDetails.Parameters.FindParam
                  (Trim(qryinitReportsItemsItems.FieldByName('ParamName')
                  .AsString)) <> nil then
                  qryDetails.Parameters.ParamByName
                    (Trim(qryinitReportsItemsItems.FieldByName('ParamName')
                    .AsString)).Value :=
                    GetcTo(myParams.ParamValues[FieldByName('fldName')
                    .AsString], BaseFieldTypes[FieldByName('cType').AsInteger]);
            end // UseParamInMain
            else
            begin // UseParamInMain
              if RightStr(Trim(qryinitReportsItemsItems.FieldByName('ParamName')
                .AsString), 4) = 'From' then
                if qryDetails.Parameters.FindParam
                  (Trim(qryinitReportsItemsItems.FieldByName('ParamName')
                  .AsString)) <> nil then
                  qryDetails.Parameters.ParamByName
                    (Trim(qryinitReportsItemsItems.FieldByName('ParamName')
                    .AsString)).Value := FieldByName('CFrom').AsString;
              if RightStr(Trim(qryinitReportsItemsItems.FieldByName('ParamName')
                .AsString), 2) = 'To' then
                qryDetails.Parameters.ParamByName
                  (Trim(qryinitReportsItemsItems.FieldByName('ParamName')
                  .AsString)).Value := FieldByName('CTo').AsString;

            end; // else UseParamInMain
          end
          else
          begin
            /// if ShowFilter
            if qryDetails.Parameters.FindParam
              (qryinitReportsItemsItems.FieldByName('ParamName').AsString) <> nil
            then

              case qryinitReportsItems.FieldByName('UseParamInOtherForms')
                .AsInteger of
                0, 1:
                  begin // if (qryinitReportsItems.FieldByName('UseParamInMain').AsInteger=1) then
                    if RightStr
                      (Trim(qryinitReportsItemsItems.FieldByName('ParamName')
                      .AsString), 4) = 'From' then
                      if not(FieldByName('TcInputType').AsInteger in [4]) then
                        qryDetails.Parameters.ParamByName
                          (qryinitReportsItemsItems.FieldByName('ParamName')
                          .AsString).Value :=
                          GetcFrom(myParams.ParamValues[FieldByName('fldName')
                          .AsString],
                          BaseFieldTypes[FieldByName('cType').AsInteger])
                      else
                        qryDetails.SQL.Text :=
                          StringReplace(qryDetails.SQL.Text,
                          ':' + LowerCase(qryinitReportsItemsItems.FieldByName
                          ('ParamName').AsString),
                          GetcFrom(myParams.ParamValues[FieldByName('fldName')
                          .AsString], ftString), [rfReplaceAll]);

                    if RightStr
                      (Trim(qryinitReportsItemsItems.FieldByName('ParamName')
                      .AsString), 2) = 'To' then
                      qryDetails.Parameters.ParamByName
                        (qryinitReportsItemsItems.FieldByName('ParamName')
                        .AsString).Value :=
                        GetcTo(myParams.ParamValues[FieldByName('fldName')
                        .AsString],
                        BaseFieldTypes[FieldByName('cType').AsInteger]);
                    // end  //UseParamInMain
                    // else begin   //UseParamInMain
                    // Warn(Trim(qryinitReportsItemsItems.FieldByName('ParamName').AsString));
                    // if RightStr(Trim(qryinitReportsItemsItems.FieldByName('ParamName').AsString),4)='From' then
                    // qryDetails.Parameters.ParamByName( Trim(qryinitReportsItemsItems.FieldByName('ParamName').AsString) ).Value:=
                    // FieldByName('CFrom').AsString;
                    // if RightStr(Trim(qryinitReportsItemsItems.FieldByName('ParamName').AsString),2)='To' then
                    // qryDetails.Parameters.ParamByName( Trim(qryinitReportsItemsItems.FieldByName('ParamName').AsString) ).Value:=
                    // FieldByName('CTo').AsString;
                  end; // else UseParamInMain
                2:
                  begin

                    if RightStr
                      (Trim(qryinitReportsItemsItems.FieldByName('ParamName')
                      .AsString), 4) = 'From' then
                      qryDetails.Parameters.ParamByName
                        (qryinitReportsItemsItems.FieldByName('ParamName')
                        .AsString).Value := FieldByName('CFrom').AsString;
                    if RightStr
                      (Trim(qryinitReportsItemsItems.FieldByName('ParamName')
                      .AsString), 2) = 'To' then
                      qryDetails.Parameters.ParamByName
                        (qryinitReportsItemsItems.FieldByName('ParamName')
                        .AsString).Value := FieldByName('CTo').AsString;
                  end;

              end; // case
          end; // show
          qryinitReportsItemsItems.Next;
        end; // while
      end; // if ParamUse
      Next;
    end; // while
  end; // with  qryinitReportsItems

  if qryDetails.Parameters.FindParam('DateFromRemain') <> nil then
  begin
    DateFromRemain := GetcFrom(myParams.ParamValues['Date'], ftDate);
    DateFromRemain := miladi2Shamsi(IncDay(Shamsi2Miladi(DateFromRemain), -1));
    qryDetails.Parameters.ParamByName('DateFromRemain').Value := DateFromRemain;
  end;

  try
    if qryDetails.SQL.Text <> EmptyStr then
    begin
      qryDetails.Active := False;
      qryDetails.Active := True;
    end;
  except
    on E: Exception do
    begin
      add2log(E.Message);
      Warn('بروز رساني گزارشات پویا را اجرا كنيد.‏' + #13#10 + 'گزارش ' +
        IntToStr(formType) + 'وجود ندارد.‏' + #13#10 + #13#10 + E.Message);
      RptReportsF.Close;
      // ShowQryParam(qryDetails);
      Exit;
    end;

  end;

  LblShowLimitPlace1.Caption := '';
  LblShowLimitPlace2.Caption := '';
  with qryinitReportsItems do
  begin
    First;
    while not Eof do
    begin
      if (FieldByName('ShowLimitPlace').AsInteger > 0) then
        if FieldByName('ShowLimitPlace').AsInteger = 1 then
        begin
          LblShowLimitPlace1.Caption := LblShowLimitPlace1.Caption + ' از ' +
            FieldByName('labelCaption').AsString + ' " ' +
            VarToStr(GetcFrom(myParams.ParamValues[FieldByName('fldName')
            .AsString], BaseFieldTypes[FieldByName('cType').AsInteger])
            ) + ' " ';
          LblShowLimitPlace1.Caption := LblShowLimitPlace1.Caption + ' تا ' +
            FieldByName('labelCaption').AsString + ' " ' +
            VarToStr(GetcTo(myParams.ParamValues[FieldByName('fldName')
            .AsString], BaseFieldTypes[FieldByName('cType').AsInteger])) + ' " '
        end
        else
        begin
          LblShowLimitPlace2.Caption := LblShowLimitPlace2.Caption + ' از ' +
            FieldByName('labelCaption').AsString + ' " ' +
            VarToStr(GetcFrom(myParams.ParamValues[FieldByName('fldName')
            .AsString], BaseFieldTypes[FieldByName('cType').AsInteger])
            ) + ' " ';
          LblShowLimitPlace2.Caption := LblShowLimitPlace2.Caption + ' تا ' +
            FieldByName('labelCaption').AsString + ' " ' +
            VarToStr(GetcTo(myParams.ParamValues[FieldByName('fldName')
            .AsString], BaseFieldTypes[FieldByName('cType').AsInteger])
            ) + ' " ';
        end;
      Next;
    end; // while
  end; // with  qryinitReportsItems
  pnlLblLimitPlace.Visible := (LblShowLimitPlace1.Caption <> '') or
    (LblShowLimitPlace2.Caption <> '');
  LblShowLimitPlace1.Caption := LblShowLimitPlace1.Caption + '‏';
  LblShowLimitPlace2.Caption := LblShowLimitPlace2.Caption + '‏';

end;

procedure TRptReports3200F.UpdateFilter2(qryDetails: TADOQuery);
var
  i: Integer;
begin
  with qryDetails do
  begin
    if SQL.Text <> EmptyStr then
    begin
      Active := False;
      for i := 0 to Parameters.Count - 1 do
        Parameters[i].Value := qryDetails3200.Parameters.ParamByName
          (Parameters[i].Name).Value;
      Active := True;
    end;
  end;

end;

procedure TRptReports3200F.UpdateFilterAll;
begin
  UpdateFilter(qryDetails3200);
  UpdateFilter2(qryDetails3201);
  UpdateFilter2(qryDetails3202);
  UpdateFilter2(qryDetails3203);
  UpdateFilter2(qryDetails3204);
  UpdateFilter2(qryDetails3205);

  grdDetails3200.ColorDBGrid;
  grdDetails3201.ColorDBGrid;
  grdDetails3202.ColorDBGrid;
  grdDetails3203.ColorDBGrid;
  grdDetails3204.ColorDBGrid;
  grdDetails3205.ColorDBGrid;
  ThackCedarGrid(grdDetails3200).DoLoad;
  ThackCedarGrid(grdDetails3201).DoLoad;
  ThackCedarGrid(grdDetails3202).DoLoad;
  ThackCedarGrid(grdDetails3203).DoLoad;
  ThackCedarGrid(grdDetails3204).DoLoad;
  ThackCedarGrid(grdDetails3205).DoLoad;

end;

procedure TRptReports3200F.qryDetails3200AfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  inherited;
  with DataSet do
  begin
    for i := 0 to DataSet.FieldCount - 1 do
    begin
      if (Fields[i] is TBCDField) then
      begin
        TBCDField(Fields[i]).currency := True;
      end;
    end;
  end;
end;

procedure TRptReports3200F.qryInitReportsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  with qryinitReportsItems do
  begin
    Active := False;
    Parameters.ParamByName('ReportID').Value := TADOQuery(DataSet)
      .FieldByName('ReportID').AsInteger;
    Active := True;
  end;
end;

procedure TRptReports3200F.qryinitReportsItemsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryinitReportsItemsItems do
  begin
    Active := False;
    Parameters.ParamByName('ItemID').Value := TADOQuery(DataSet)
      .FieldByName('ItemID').AsInteger;
    Active := True;
  end;
end;

procedure TRptReports3200F.AllC_l_i_c_k_Click(Sender: TObject);
var
  GeneralFileName: String;
begin
  inherited;
  try

    qryDetails3200.DisableControls;
    qryDetails3201.DisableControls;
    qryDetails3202.DisableControls;
    qryDetails3203.DisableControls;
    qryDetails3204.DisableControls;
    qryDetails3205.DisableControls;
    GeneralFileName := qryInitReports.FieldByName
      ('ReportFileName' + (Sender as TMenuItem).Hint).AsString;
    if pos('.', GeneralFileName) = 0 THEN
      GeneralFileName := GeneralFileName + '.rtm';
    with ppReport1 do
    begin
      Template.FileName := GetReportFileWithPath(GeneralFileName);
      try
        if FileExists(Template.FileName) then
          Template.LoadFromFile
        else
          Warn('فايل چاپي ' + GeneralFileName + ' يافت نشد.!‏');
        InitReportISDEMO(ppReport1);
        SetSendToBackShapeOnPrint(Self);
        print;
      finally
      end; // try
    end; // with
  finally
    qryDetails3200.EnableControls;
    qryDetails3201.EnableControls;
    qryDetails3202.EnableControls;
    qryDetails3203.EnableControls;
    qryDetails3204.EnableControls;
    qryDetails3205.EnableControls;
  end;
  // try
end;

end.
