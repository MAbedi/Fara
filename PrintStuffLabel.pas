unit PrintStuffLabel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, Mask, DBCtrls, ppParameter,
  Filter_ADO_Const, Math, FarsiReportBuilde, ppDesignLayer, System.Actions,
  Vcl.Menus, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, CedarDbGrid, search2;

type
  TPrintStuffLabelF = class(TTemplate4F)
    actFilter: TAction;
    qryStuffs: TADOQuery;
    actPrint: TAction;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    srcStuffs: TDataSource;
    qryStuffsc_StuffName: TStringField;
    qryStuffsc_StuffTecInfo: TStringField;
    qryStuffsc_UnitName: TStringField;
    qryStuffsn_StoreID: TSmallintField;
    qryStuffsc_StoreName: TStringField;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    qryStuffsc_KeepPlace: TStringField;
    rdgLimit: TRadioGroup;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine1: TppLine;
    ppDBText62: TppDBText;
    ppLabel64: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppColumnFooterBand1: TppColumnFooterBand;
    qryStuffsc_StuffCode: TLargeintField;
    qryStuffsTabaghe: TStringField;
    qryStuffsvazn: TFloatField;
    qryStuffsst2: TIntegerField;
    qryStuffspadidAvarandeh: TStringField;
    qryStuffsAndaze: TStringField;
    qryStuffsRadif: TStringField;
    qryStuffsGhafase: TStringField;
    qryStuffsEntity: TFloatField;
    qryStuffsWeight: TFloatField;
    qryStuffsStuffNote: TStringField;
    qryStuffsGenre: TStringField;
    qryStuffsFont: TStringField;
    qryStuffssd1: TStringField;
    qryStuffsStuffNote_1: TStringField;
    qryStuffssd7: TStringField;
    qryStuffsNaghash: TStringField;
    ppImage1: TppImage;
    qryStuffsSelected: TIntegerField;
    BitBtn2: TBitBtn;
    qryStuffsTeknic: TStringField;
    qryStuffsSabk: TStringField;
    BitBtn1: TSpeedButton;
    qryStuffssd2: TStringField;
    qryStuffsKhat: TStringField;
    PopPrint: TPopupMenu;
    mnuPrintStuffLabel: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    rgSort: TRadioGroup;
    DBGrid1: TCedarDbgrid;
    actSearch: TAction;
    BitBtn4: TBitBtn;
    procedure actFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppDBText3GetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
    procedure rdgLimitClick(Sender: TObject);
    procedure ppImage1Print(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure mnuPrintStuffLabelClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure actSearchExecute(Sender: TObject);
  private
    procedure UpdateList;
    procedure ToggleCheck;
  public

    procedure enter;
    { Public declarations }
  end;

var
  PrintStuffLabelF: TPrintStuffLabelF;

implementation

uses DM, filter_ADO, FilterClass_ADO, GlobalPro, main;

{$R *.dfm}

procedure TPrintStuffLabelF.enter;
begin
  PrintStuffLabelF := TPrintStuffLabelF.Create(Application);
  with PrintStuffLabelF do
  begin
    try
      ShowModal;
    finally
      Free;
    end; // try
  end; // with

end;

procedure TPrintStuffLabelF.UpdateList;
begin
  case rdgLimit.ItemIndex of
    0:
      with qryStuffs do
      begin
        Active := False;
        SQL.Text :=
          'SELECT R.StuffCode AS c_StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName AS';
        SQL.Add('c_UnitName, R.StoreID AS n_StoreID,');
        SQL.Add('R.c_StoreName, SUM(R.InputEntity - R.OutputEntity) AS Entity, SUM');
        SQL.Add('(R.InputWeight - R.OutputWeight) AS Weight,');
        SQL.Add('SCF.KeepPlace AS c_KeepPlace, StuffCoding.sd1 AS Tabaghe, StuffCoding.Carton AS vazn, StuffCoding.st2,');
        SQL.Add('LookUps_302.Name AS padidAvarandeh,');
        SQL.Add('StuffCoding.sd7 AS Andaze, SCF.KeepPlace AS Radif, StuffCoding.sd8 AS Ghafase, StuffCoding.sd9');
        SQL.Add('As Font');
        SQL.Add(', StuffCoding.StuffNote, LookUps_315.Name Genre');
        SQL.Add(',StuffCoding.sd1 ,StuffCoding.sd2,StuffCoding.StuffNote,StuffCoding.sd7 ,LookUps_306.Name AS Naghash,');
        SQL.Add('Fitful.DetailCode AS Selected');
        SQL.Add(', LookUps_400.Name AS Khat , LookUps_401.Name AS Teknic, LookUps_402.Name AS Sabk');
        SQL.Add('');

//        SQL.Add('FROM Stores INNER JOIN');
//        SQL.Add('Recipts INNER JOIN');
//        SQL.Add('ReciptItems ON R.ReciptID = Recipts.ReciptID AND R.ServerID = Recipts.ServerID AND');
//        SQL.Add('R.YearID = Recipts.YearID INNER JOIN');
//        SQL.Add('ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN');
//  ON Stores.n_StoreID = Recipts.StoreID

        SQL.Add('FROM ReciptItems_Stock R INNER JOIN');

        SQL.Add('StuffCoding ON R.StuffCode = StuffCoding.c_StuffCode INNER JOIN');

        SQL.Add('Units ON StuffCoding.n_UnitCode = Units.UnitCode  LEFT OUTER JOIN');
        SQL.Add('(SELECT Code, Name');
        SQL.Add('FROM LookUps');
        SQL.Add('WHERE (Kind = 302)) AS LookUps_302 ON StuffCoding.st2 = LookUps_302.Code LEFT OUTER JOIN');
        SQL.Add('(SELECT Code, Name');
        SQL.Add('FROM LookUps');
        SQL.Add('WHERE (Kind = 315)) AS LookUps_315 ON StuffCoding.st15 = LookUps_315.Code');
        SQL.Add('LEFT OUTER JOIN');
        SQL.Add('(SELECT Code, Name');
        SQL.Add('FROM LookUps');
        SQL.Add('WHERE (Kind = 302)) AS LookUps_306 ON StuffCoding.st6 = LookUps_306.Code');
        SQL.Add('');
        SQL.Add('');
        SQL.Add('LEFT OUTER JOIN');
        SQL.Add('(SELECT Code, Name');
        SQL.Add('FROM LookUps');
        SQL.Add('WHERE (Kind = 400)) AS LookUps_400 ON StuffCoding.st3 = LookUps_400.Code');
        SQL.Add('');
        SQL.Add('LEFT OUTER JOIN');
        SQL.Add('(SELECT Code, Name');
        SQL.Add('FROM LookUps');
        SQL.Add('WHERE (Kind = 401)) AS LookUps_401 ON StuffCoding.st4 = LookUps_401.Code');
        SQL.Add('');
        SQL.Add('LEFT OUTER JOIN');
        SQL.Add('(SELECT Code, Name');
        SQL.Add('FROM LookUps');
        SQL.Add('WHERE (Kind = 402)) AS LookUps_402 ON StuffCoding.st5 = LookUps_402.Code');
        SQL.Add('');
        SQL.Add('LEFT OUTER JOIN StuffCodingFacilities SCF ON SCF.StuffCode = StuffCoding.c_StuffCode and SCF.StoreID =  R.StoreID');

        SQL.Add('CROSS JOIN Fitful');

//        SQL.Add('WHERE (ReciptTypes.EffectType IN (2, 4))');
        SQL.Add('WHERE (R.YearID BETWEEN :YearIDFrom AND :YearIDTo)');
        SQL.Add('AND (R.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo )');
        SQL.Add('AND (R.StuffCode BETWEEN :codeFrom AND :codeTo)');
        SQL.Add('');
        SQL.Add('GROUP BY R.StuffCode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName, R.StoreID,');
        SQL.Add('R.c_StoreName, SCF.KeepPlace ,');
        SQL.Add('StuffCoding.sd1, StuffCoding.Carton, StuffCoding.st2, LookUps_302.Name, StuffCoding.sd7, StuffCoding.sd8');
        SQL.Add(', StuffCoding.StuffNote, LookUps_315.Name, StuffCoding.sd9');
        SQL.Add(',StuffCoding.sd1 ,StuffCoding.StuffNote,StuffCoding.sd7 ,LookUps_306.Name, Fitful.DetailCode');
        SQL.Add(', LookUps_400.Name , LookUps_401.Name , LookUps_402.Name,StuffCoding.sd2');
        SQL.Add('');
        SQL.Add('');
        SQL.Add('');
        SQL.Add('HAVING ((SUM(R.InputEntity - R.OutputEntity) <> 0)or(SUM(R.InputWeight - R.OutputWeight) <> 0))');
        SQL.Add('');
        case rgSort.ItemIndex of
          0:
            SQL.Add('ORDER BY R.StuffCode');
          1:
            SQL.Add('ORDER BY SCF.KeepPlace');
          2:
            SQL.Add('ORDER BY dbo.GetFirstChar(StuffCoding.c_StuffName)');
        end;

        qryStuffs.Parameters.ParamByName('YearIDFrom').Value := opt.DefaultYear;
        qryStuffs.Parameters.ParamByName('YearIDTo').Value := APPBank.Year;

      end;
    1:
      with qryStuffs do
      begin
        Active := False;
        SQL.Text := 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName';
        SQL.Add(', StuffCoding.c_StuffTecInfo, Units.UnitName AS c_UnitName,');
        SQL.Add('SCF.KeepPlace AS c_KeepPlace, StoreStuffs.n_StoreID,');
        SQL.Add('Stores.c_StoreName, 0.0 AS Entity, 0.0 AS Weight, StuffCoding.sd1 AS Tabaghe, StuffCoding.Carton AS vazn,');
        SQL.Add('StuffCoding.st2,LookUps_302.Name AS padidAvarandeh');
        SQL.Add(', StuffCoding.sd7 AS Andaze, SCF.KeepPlace AS Radif, StuffCoding.sd8 AS Ghafase, StuffCoding.sd9 Font');

        SQL.Add(', StuffCoding.StuffNote, LookUps_315.Name Genre');

        SQL.Add(',StuffCoding.sd1 ,StuffCoding.StuffNote,StuffCoding.sd7  ,LookUps_306.Name AS Naghash, Fitful.DetailCode AS Selected');

        SQL.Add(', LookUps_400.Name AS Khat, LookUps_401.Name AS Teknic, LookUps_402.Name AS Sabk,StuffCoding.sd2');

        SQL.Add('FROM StoreStuffs RIGHT OUTER JOIN');
        SQL.Add('Stores ON StoreStuffs.n_StoreID = Stores.n_StoreID RIGHT OUTER JOIN');
        SQL.Add('StuffCoding INNER JOIN');
        SQL.Add('Units ON StuffCoding.n_UnitCode = Units.UnitCode ON StoreStuffs.c_StuffCode = StuffCoding.c_StuffCode');
        SQL.Add('LEFT OUTER JOIN StuffCodingFacilities SCF ON SCF.StuffCode = StuffCoding.c_StuffCode and SCF.StoreID = StoreStuffs.n_StoreID');
        SQL.Add('LEFT OUTER JOIN');
        SQL.Add('(SELECT Code, Name');
        SQL.Add('FROM LookUps');
        SQL.Add('WHERE (Kind = 302)) AS LookUps_302 ON StuffCoding.st2 = LookUps_302.Code');
        SQL.Add('LEFT OUTER JOIN (SELECT Code, Name FROM LookUps WHERE (Kind = 315)) AS LookUps_315 ON StuffCoding.st15 = LookUps_315.Code');

        SQL.Add('LEFT OUTER JOIN');
        SQL.Add('(SELECT Code, Name');
        SQL.Add('FROM LookUps');
        SQL.Add('WHERE (Kind = 302)) AS LookUps_306 ON StuffCoding.st6 = LookUps_306.Code');

        SQL.Add('LEFT OUTER JOIN');
        SQL.Add('(SELECT Code, Name');
        SQL.Add('FROM LookUps');
        SQL.Add('WHERE (Kind = 400)) AS LookUps_400 ON StuffCoding.st3 = LookUps_400.Code');

        SQL.Add('LEFT OUTER JOIN');
        SQL.Add('(SELECT Code, Name');
        SQL.Add('FROM LookUps');
        SQL.Add('WHERE (Kind = 401)) AS LookUps_401 ON StuffCoding.st4 = LookUps_401.Code');

        SQL.Add('LEFT OUTER JOIN');
        SQL.Add('(SELECT Code, Name');
        SQL.Add('FROM LookUps');
        SQL.Add('WHERE (Kind = 402)) AS LookUps_402 ON StuffCoding.st5 = LookUps_402.Code');

        SQL.Add('CROSS JOIN Fitful');

        SQL.Add('WHERE (StuffCoding.c_StuffCode BETWEEN :codeFrom AND :codeTo)');
        SQL.Add('AND (StoreStuffs.n_StoreID BETWEEN :StoreIDfrom AND :StoreIDto)');
        SQL.Add('GROUP BY StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Units.UnitName, StoreStuffs.n_StoreID, Stores.c_StoreName,');
        SQL.Add('SCF.KeepPlace ,');
        SQL.Add('StuffCoding.c_StuffCode, StuffCoding.sd1, StuffCoding.Carton, StuffCoding.st2, LookUps_302.Name');
        SQL.Add(', StuffCoding.sd7 , StuffCoding.sd8, StuffCoding.sd9 ');
        SQL.Add(', StuffCoding.StuffNote, LookUps_315.Name');

        SQL.Add(',StuffCoding.sd1 ,StuffCoding.StuffNote,StuffCoding.sd7  ,LookUps_306.Name, Fitful.DetailCode');
        SQL.Add(', LookUps_400.Name, LookUps_401.Name, LookUps_402.Name,StuffCoding.sd2');

        case rgSort.ItemIndex of
          0:
            SQL.Add('ORDER BY StuffCoding.c_StuffCode');
          1:
            SQL.Add('ORDER BY SCF.KeepPlace');
          2:
            SQL.Add('ORDER BY dbo.GetFirstChar(StuffCoding.c_StuffName)');
        end;

      end; // with
      2:
  end; // case

  with qryStuffs do
  begin
    Active := False;
    Parameters.ParamByName('StoreIDfrom').Value :=
      GetcFrom(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('StoreIDto').Value :=
      GetcTo(myParams.ParamValues['StoreID'], ftInteger);
    Parameters.ParamByName('codefrom').Value :=
      GetcFrom(myParams.ParamValues['StuffCode'], ftString);
    Parameters.ParamByName('codeto').Value :=
      GetcTo(myParams.ParamValues['StuffCode'], ftString);
    Active := True;
    lblTopic1.Caption := ' ⁄œ«œ »—ç”»ùÂ« = ' + IntToStr(RecordCount) + #10 +
      ' ⁄œ«œ ’›Õ«  = ' + IntToStr(trunc((RecordCount / 14)) + 1);
  end; // with
end;

procedure TPrintStuffLabelF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItemFilter(GetFilter, TFilterStuffCode);

      // AddItem(DMF.adcBSell, 'StuffCode', '‰«„ ﬂ«·«', 'ﬂœ', ftString, dvMinMax,
      // '', '', ciLookup,
      // 'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName FROM StuffCoding ',
      // 'SELECT MIN(StuffCoding.c_StuffCode) AS Expr1, MAX(StuffCoding.c_StuffCode) AS Expr2 '
      // + 'FROM StuffCoding ');

      AddItem(DMF.adcBSell, 'StoreID', '«‰»«—', 'ﬂœ', ftInteger, dvMinMax, '',
        '', ciLookup, 'SELECT n_StoreID, c_StoreName FROM Stores ',
        'Select Min(n_StoreID),Max(n_StoreID) from Stores');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        UpdateList;
      end; // if
    finally
      Free;
    end; // try
end;

procedure TPrintStuffLabelF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actFilter.Execute;
  if myParams.FindParam('StoreID') = nil then
    close;
end;

procedure TPrintStuffLabelF.mnuPrintStuffLabelClick(Sender: TObject);
begin
  inherited;
  try
    qryStuffs.DisableControls;
    InitReportFile(ppReport1, (Sender as TMenuItem).Hint, True, False,
      '›—„', False);
  finally
    qryStuffs.EnableControls;
  end;
end;

procedure TPrintStuffLabelF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TPrintStuffLabelF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryStuffs);
end;

procedure TPrintStuffLabelF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  BitBtn1.Down := not BitBtn1.Down;
  qryStuffs.Filter := 'Selected = 1';
  qryStuffs.Filtered := not qryStuffs.Filtered
end;

procedure TPrintStuffLabelF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck
end;

procedure TPrintStuffLabelF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  inherited;
//  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
//  if DataCol = 0 then
//  begin
//    DBGrid1.Canvas.Rectangle(Rect);
//    if qryStuffsSelected.AsInteger = 1 then
//      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, mainf.BtmTiket)
//    else
//      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, mainf.BtmTiketNot)
//  end;

end;

procedure TPrintStuffLabelF.ToggleCheck;
begin
  with qryStuffs do
  begin
    Edit;
    qryStuffsSelected.AsInteger :=
      ifthen(qryStuffsSelected.AsInteger = 0, 1, 0);
    Post;
  end;
end;

procedure TPrintStuffLabelF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_SPACE) then
    ToggleCheck
end;

procedure TPrintStuffLabelF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryStuffsc_StuffCode)
end;

procedure TPrintStuffLabelF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TPrintStuffLabelF.ppDBText3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Text + #254;
end;

procedure TPrintStuffLabelF.ppImage1Print(Sender: TObject);
var
  flName: string;
begin
  inherited;
  (Sender as TppImage).Picture := nil;
  flName := opt._ArchivePath + '\' + qryStuffs.FieldByName('c_StuffCode')
    .AsString + '.jpg';
  if FileExists(flName) then
    (Sender as TppImage).Picture.LoadFromFile(flName);
end;

procedure TPrintStuffLabelF.FormCreate(Sender: TObject);
begin
  inherited;
  setColumns2(DBGrid1, opt.StuffTecInfoActive, 'c_StuffTecInfo');
end;

procedure TPrintStuffLabelF.rdgLimitClick(Sender: TObject);
begin
  inherited;
  UpdateList;
end;

end.
