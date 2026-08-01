unit RptAmval;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, ppBands, ppClass,
  ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv,
  ppDBPipe, Menus, math, ppPrnabl, ppCtrls, ppParameter, Types, StrUtils, ppVar,
  ppDesignLayer, System.ImageList, System.Actions, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, CedarDbGrid;

type
  TRptAmvalF = class(Ttemplate2MDIF)
    qryListAmval: TADOQuery;
    qryListAmvalSerialNum: TIntegerField;
    qryListAmvalPelakNum: TStringField;
    qryListAmvalDepValue: TIntegerField;
    qryListAmvalDocNum: TIntegerField;
    qryListAmvalDocDate: TStringField;
    qryListAmvalInvoiceDate: TStringField;
    qryListAmvalFormNum: TSmallintField;
    qryListAmvalFormDate: TStringField;
    qryListAmvalStuffDesc: TStringField;
    qryListAmvalStartUsingDate: TStringField;
    qryListAmvalEsqValue: TCurrencyField;
    qryListAmvalAccTopicCode: TLargeintField;
    qryListAmvalDepMode: TWordField;
    srcListAmval: TDataSource;
    qryListAmvalAmvalState: TWordField;
    qryListAmvalAssetsValue: TBCDField;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn2: TBitBtn;
    actFilter: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    actExcel: TAction;
    actKartDaraie: TAction;
    actPrint: TAction;
    popPrint: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    qryListAmvalMasterSerial: TIntegerField;
    actOther: TAction;
    BitBtn8: TBitBtn;
    popOther: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    actScan: TAction;
    actVjPrint: TAction;
    popChangeStae: TPopupMenu;
    mnuLevel1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    actChangeState: TAction;
    btnChangeState: TBitBtn;
    qryListAmvalInvoiceNum: TIntegerField;
    qryListAmvalMobile: TStringField;
    qryListAmvalWarrantyDate: TStringField;
    qryListAmvalAidField1: TWideStringField;
    qryListAmvalAidField2: TWideStringField;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    lblPageCount: TppSystemVariable;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine2: TppLine;
    lblCompanyName: TppLabel;
    lblDate: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine10: TppLine;
    ppDBText1: TppDBText;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppDBText2: TppDBText;
    ppLine17: TppLine;
    ppDBText3: TppDBText;
    ppLine18: TppLine;
    ppDBText4: TppDBText;
    ppLine19: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine21: TppLine;
    ppDBText7: TppDBText;
    ppLine22: TppLine;
    ppDBText8: TppDBText;
    ppLine23: TppLine;
    ppLine20: TppLine;
    ppDBText9: TppDBText;
    ppLine24: TppLine;
    ppDBText10: TppDBText;
    ppLine25: TppLine;
    ppDBText11: TppDBText;
    ppLine26: TppLine;
    ppDBText12: TppDBText;
    ppLine27: TppLine;
    ppDBText13: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine28: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine29: TppLine;
    qryListAmvalPlaceName: TStringField;
    qryListAmvalUserName: TStringField;
    DBGrid1: TCedarDbgrid;
    qryListAmvalSellsEmporium: TIntegerField;
    qryListAmvalSellsEmporiumName: TWideStringField;
    qryListAmvalSellerNote: TStringField;
    qryListAmvalDepModeName: TWideStringField;
    procedure qryListAmvalAmvalStateGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSort_Execute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actKartDaraieExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure lblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure lblPageCountGetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure lblDateGetText(Sender: TObject; var Text: String);
    procedure actScanExecute(Sender: TObject);
    procedure actVjPrintExecute(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure mnuLevel1Click(Sender: TObject);
    procedure actChangeStateExecute(Sender: TObject);
    procedure pplblYearIdGetText(Sender: TObject; var Text: string);
    procedure ppDBText6GetText(Sender: TObject; var Text: string);
  private
    procedure initGrid;
    procedure UpdateList;
    procedure ChangeState(st: Byte);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptAmvalF: TRptAmvalF;

implementation

uses Dm, filter_ADO, FilterClass_ADO, GlobalPro, mmessage, Amval, search2,
  sort2, DBGrid2Print, ScanImage, FaraConsts, Filter_ADO_Const;

{$R *.dfm}

procedure TRptAmvalF.qryListAmvalAmvalStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0:
      Text := 'موقت';
    1:
      Text := 'قطعي';
    2:
      Text := 'نهايي';
  end; // case
end;

procedure TRptAmvalF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItemFilter(GetFilter, TFilterSellsEmporium);
      AddItem(DMf.adcBSell, 'DocNum', 'شماره سند', 'شماره', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'Select Min(DocNum),max(DocNum) from assets.amval');
      AddItem(DMf.adcBSell, 'DocDate', 'تاريخ سند', 'تاريخ', ftDate, dvMinMax,
        '', '', ciSimple, '',
        'Select Min(DocDate),max(DocDate) from assets.amval');
      AddItem(DMf.adcBSell, 'SerialNum', 'شماره سريال', 'شماره', ftInteger,
        dvMinMax, '', '', ciSimple, '',
        'Select Min(SerialNum),max(SerialNum) from assets.amval');
      AddItem(DMf.adcBSell, 'AccCode', 'كد حساب', 'كد', ftInteger, dvMinMax,
        '', '', ciLookup, 'SELECT AccTopicCode, AccDesc FROM assets.AccTopics',
        'Select Min(AccTopicCode),max(AccTopicCode) from assets.Amval');
      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
end;

procedure TRptAmvalF.UpdateList;
begin
  with qryListAmval do
  begin
    Close;
    Parameters.ParamByName('FromSerial').Value :=
      GetcFrom(myParams.ParamValues['SerialNum'], ftInteger);
    Parameters.ParamByName('ToSerial').Value :=
      GetcTo(myParams.ParamValues['SerialNum'], ftInteger);
    Parameters.ParamByName('FromDate').Value :=
      GetcFrom(myParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('ToDate').Value :=
      GetcTo(myParams.ParamValues['DocDate'], ftString);
    Parameters.ParamByName('FromNum').Value :=
      GetcFrom(myParams.ParamValues['DocNum'], ftInteger);
    Parameters.ParamByName('ToNum').Value :=
      GetcTo(myParams.ParamValues['DocNum'], ftInteger);
    Parameters.ParamByName('AccCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['accCode'], ftString);
    Parameters.ParamByName('AccCodeTo').Value :=
      GetcTo(myParams.ParamValues['accCode'], ftString);

    Parameters.ParamByName('SellsEmporiumFrom').Value :=
      GetcFrom(myParams.ParamValues['SellsEmporium'], ftInteger);
    Parameters.ParamByName('SellsEmporiumTo').Value :=
      GetcTo(myParams.ParamValues['SellsEmporium'], ftInteger);

    Open;
  end; // with
end;

procedure TRptAmvalF.FormShow(Sender: TObject);
begin
  inherited;
  initGrid;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('SerialNum') = nil then
    Close;
  mnuLevel1.Visible := User.level > 100;

end;

procedure TRptAmvalF.initGrid;
var
  AidFieldCaption: string;
  strArray: TStringDynArray;
begin
  with DMf.qry_TempAss do
  begin
    Connection:=theMainConnection;
    Close;
    SQL.Text := 'SELECT AidFieldCaption FROM Assets.Config';
    Open;
    AidFieldCaption := Trim(Fields[0].AsString);
    Close;
  end;
  if AidFieldCaption <> EmptyStr then
  begin
    strArray := SplitString(Trim(AidFieldCaption), #13);
    qryListAmvalAidField1.DisplayLabel := Trim(strArray[0]);
    DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'AidField1')
      ].Visible := True;
    if Length(strArray) > 1 then
    begin
      qryListAmvalAidField2.DisplayLabel := Trim(strArray[1]);
      DBGrid1.Columns[ColumnIndexByFieldName(DBGrid1, 'AidField2')
        ].Visible := True;
    end;

  end;
end;

procedure TRptAmvalF.actSort_Execute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryListAmval);
end;

procedure TRptAmvalF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryListAmval);

end;

procedure TRptAmvalF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptAmvalF.actKartDaraieExecute(Sender: TObject);
begin
  inherited;
  CreateMDIForm2(TAmvalF, AmvalF, Self, qryListAmval.fieldbyname('SerialNum')
    .AsInteger)

end;

procedure TRptAmvalF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actKartDaraie.Execute;
end;

procedure TRptAmvalF.lblCompanyNameGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TRptAmvalF.lblPageCountGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TRptAmvalF.actPrintExecute(Sender: TObject);
begin
  inherited;
  popPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TRptAmvalF.N1Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RptAmval1.rtm');
end;

procedure TRptAmvalF.N2Click(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1, 'RptAmval2.rtm');
end;

procedure TRptAmvalF.ppDBText6GetText(Sender: TObject; var Text: string);
begin
  inherited;
  case StrToInt(Text) of
    // 2:
    // Text := 'نهايي';
    0:
      Text := 'مستقيم';
    1:
      Text := 'نزولي';
    2:
      Text := 'بدون استهلاک';
    3:
      Text := 'مصرفی';
    4:
      Text := 'مقدار تولید';
    5:
      Text := 'مدت قرارداد';
    6:
      Text := 'سرفصل کلی';
    7:
      Text := 'مستقیم-اصلاحی';
  end;
end;

procedure TRptAmvalF.pplblYearIdGetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := IntToStr(APPBank.Year);
end;

procedure TRptAmvalF.lblDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TRptAmvalF.actScanExecute(Sender: TObject);
begin
  inherited;
  ScanImageF.ScanImage(DMf.adcBSell, 'Amval',
    qryListAmval.fieldbyname('SerialNum').AsString, 1)
end;

procedure TRptAmvalF.actVjPrintExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(DBGrid1, 0);
end;

procedure TRptAmvalF.actOtherExecute(Sender: TObject);
begin
  inherited;
  popOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

procedure TRptAmvalF.ChangeState(st: Byte);
var
  i,sn1: Integer;
  KillCN: Integer;
begin
  if DBGrid1.SelectedRows.Count > 1 then
  begin
    KillCN := 0;
    for i := 0 to DBGrid1.SelectedRows.Count - 1 do
    begin
      qryListAmval.GotoBookmark((DBGrid1.SelectedRows[i]));
      sn1:= qryListAmval.fieldbyname('SerialNum').AsInteger;
      DmF.adcBSell.Execute
        (Format('UPDATE assets.Amval SET AmvalState = %d WHERE SerialNum =%d and AmvalState < %d',
        [st, sn1, ifthen(User.admin,
        User.level, st)]),sn1);
      inc(KillCN);
    end; // for
    qryListAmval.Requery;
    Warn(IntToStr(KillCN) + 'مورد تغيير يافت‏  ');
  end
  else
    with TfilterF.Create2(Self, DB.TParams(myParams)) do
      try
        AddItem(DMf.adcBSell, 'serial', 'شماره سريال', 'شماره', ftInteger,
          dvMinMax, '', '', ciSimple, '',
          'Select Min(SerialNum),max(SerialNum)  from assets.Amval');
        if ShowModal = mrOk then
          GetFilterString
        else
          Exit;
        if get_response('آيا از تغيير سطح  مطمئن هستيد') = mryes then
          with DMf.qry_TempAss do
          begin
            Close;
            SQL.Text :=
              'UPDATE assets.Amval SET AmvalState =:St WHERE AmvalState < :st2 and SerialNum Between :FromSerial And :ToSerial';
            Parameters.ParamByName('St').Value := st;
            if User.admin then
              Parameters.ParamByName('St2').Value := User.level
            else
              Parameters.ParamByName('St2').Value := st;
            Parameters.ParamByName('Fromserial').Value :=
              GetcFrom(myParams.ParamValues['serial']);
            Parameters.ParamByName('Toserial').Value :=
              GetcTo(myParams.ParamValues['serial']);
            try
              if ExecSQL > 0 then
                BigMessage('تغيبرات انجام شد', 1);
              qryListAmval.Requery;
            except
              Warn('اشكال در تغيير سطح');
            end; // try
          end; // with
      finally
        Free;
      end; // try
end;

procedure TRptAmvalF.mnuLevel1Click(Sender: TObject);
begin
  inherited;
  ChangeState((Sender as TMenuItem).Tag)
end;

procedure TRptAmvalF.actChangeStateExecute(Sender: TObject);
begin
  inherited;
  popChangeStae.Popup(Mouse.CursorPos.X, Mouse.CursorPos.y);
end;

end.
