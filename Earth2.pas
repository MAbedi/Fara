{ -----------------------------------------------------------------------------
  Unit Name: Earth
  Author:    Mahmood
  ----------------------------------------------------------------------------- }
unit Earth2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, ComCtrls, Grids, Vcl.DBGrids, DBCtrls, ppDB,
  ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt, ppParameter, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TEarth2F = class(Ttemplate2MDIF)
    qry_Earth: TADOQuery;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn6: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Src_Earth: TDataSource;
    actSendExcel: TAction;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    actPrint: TAction;
    ppDBPipeline2: TppDBPipeline;
    BitBtn9: TBitBtn;
    actSort: TAction;
    qry_EarthMeters: TFloatField;
    DBGrid1: TDBGrid;
    qryEarthGroups: TADOQuery;
    qryEarthGroupsEarthGrpID: TIntegerField;
    qryEarthGroupsEarthGrpName: TWideStringField;
    qryEarthGroupsAmount: TFloatField;
    srcEarthGroups: TDataSource;
    qry_EarthEarthGrpID: TIntegerField;
    qry_EarthEarthDesc: TWideStringField;
    qry_EarthUnitCode: TWordField;
    qry_EarthEarthTeckinfo: TWideStringField;
    qry_EarthOwnerDate: TWideStringField;
    qryUnits: TADOQuery;
    qry_Earth_UntilName: TStringField;
    qry_EarthGate: TIntegerField;
    Label3: TLabel;
    Panel1: TPanel;
    GrdEarthGroups: TDBGrid;
    Label1: TLabel;
    qry_EarthEarthField: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLblCompanyName: TppLabel;
    ppLblCaption: TppLabel;
    ppSysVarPageNo: TppSystemVariable;
    ppLblPrintDate: TppLabel;
    ppDBCalcdcCount_TextAlign: TppDBCalc;
    ppDetailBand1: TppDetailBand;
    ppLineDetail: TppLine;
    ppLin4Position: TppLine;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppLabel4: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    procedure qry_EarthAfterInsert(DataSet: TDataSet);
    procedure qry_EarthAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qry_EarthBeforePost(DataSet: TDataSet);
    procedure Src_EarthStateChange(Sender: TObject);
    procedure qry_EarthBeforeCancel(DataSet: TDataSet);
    procedure qry_EarthBeforeDelete(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLblCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLblPrintDateGetText(Sender: TObject; var Text: String);
    procedure ppSysVarPageNoGetText(Sender: TObject; var Text: String);
    procedure actSortExecute(Sender: TObject);
    procedure Allgridkeyenter(Sender: TObject; var key: char);
    procedure qryEarthGroupsAfterScroll(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var key: char);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure initForm;
  public
    { Public declarations }
  end;

var
  Earth2F: TEarth2F;

implementation

uses sndkey32, DM, GlobalPro, mmessage,
  search2, sort2, FaraConsts, main, searchCode_ADO;

{$R *.dfm}

procedure TEarth2F.qry_EarthAfterInsert(DataSet: TDataSet);
begin
  inherited;
  // DataSet.FieldByName('EarthID').AsInteger:=GetANewCode(Self.Name,'Earth','EarthID');
  DataSet.FieldByName('EarthGrpID').AsInteger :=
    qryEarthGroups.FieldByName('EarthGrpID').AsInteger;
  DataSet.FieldByName('EarthField').AsInteger := 0;
  DataSet.FieldByName('Gate').AsInteger := 0;
  DataSet.FieldByName('Meters').AsInteger := 0;
  DBGrid1.SetFocus;
end;

procedure TEarth2F.qry_EarthAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.', 1);
end;

procedure TEarth2F.FormCreate(Sender: TObject);
begin
  inherited;
  initForm;
end;

procedure TEarth2F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TEarth2F.qry_EarthBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qry_Earth) then
    Abort;
end;

procedure TEarth2F.Src_EarthStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qry_Earth.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell, '', '', Self.Name);
end;

procedure TEarth2F.qry_EarthBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if get_response(' €ÌÌ—«  ·€Ê ‘Ê‰œø') <> mrYes then
    Abort;
end;

procedure TEarth2F.qry_EarthBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ “„Ì‰ „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
end;

procedure TEarth2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TEarth2F.initForm;
begin
  qryUnits.Active := True;
  SetLookUpCash(qry_Earth);
  qryEarthGroups.Active := True;
  if mainF.Menu = SubsysMenu[07].sys_Menu then
  begin
    qry_Earth.FieldByName('EarthField').DisplayLabel := '„“—⁄Â';
    qry_Earth.FieldByName('Gate').DisplayLabel := 'Å«— ';
  end;
end;

procedure TEarth2F.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_Earth);
end;

procedure TEarth2F.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TEarth2F.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qry_Earth.DisableControls;
    InitReportFile(ppReport1, 'Earth2', True);
  finally
    qry_Earth.EnableControls;
  end;
end;

procedure TEarth2F.ppLblCompanyNameGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName
end;

procedure TEarth2F.ppLblPrintDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPrintDate;
end;

procedure TEarth2F.ppSysVarPageNoGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := GetPageNumberString(Text)
end;

procedure TEarth2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_Earth);
end;

procedure TEarth2F.Allgridkeyenter(Sender: TObject; var key: char);
var
  nextIndex: Integer;
  curIndex: Integer;
  // aDataSet: TDataSet;
  // c:  String;
begin
  curIndex := (Sender as TDBGrid).SelectedIndex;
  nextIndex := curIndex;
  case key of
    #13:
      begin
        if shiftDown then
          exit;
        // aDataSet:=(Sender as TDBGrid).DataSource.DataSet;
        key := #0;
        case curIndex of
          0, 1, 2, 3, 4, 5, 6:
            nextIndex := curIndex + 1;
          7:
            nextIndex := -1;
        end; // case
      end; // #13
    '+':
      begin
        key := #0;
        nextIndex := curIndex - 1;
        while (nextIndex >= 0) and
          (not((Sender as TDBGrid).Columns[nextIndex].Visible) OR
          ((Sender as TDBGrid).Columns[nextIndex].ReadOnly)) do
          Dec(nextIndex);
        if nextIndex < 0 then
          nextIndex := -3;
      end; // +
    '*':
      begin
        key := #0;
        SendKeys('000', false);
      end; // *
    #27:
      if (Sender as TDBGrid).DataSource.DataSet.State in dsEditModes then
        (Sender as TDBGrid).DataSource.DataSet.Cancel;
      #32, #157: if DBGrid1.Columns[curIndex].ButtonStyle = cbsEllipsis then
    begin
      key := #0;
      DBGrid1EditButtonClick(Sender);
    end; // if
  end; // case
  if nextIndex >= 0 then
    while (nextIndex < (Sender as TDBGrid).Columns.Count) and
      (not((Sender as TDBGrid).Columns[nextIndex].Visible) OR
      ((Sender as TDBGrid).Columns[nextIndex].ReadOnly)) do
      Inc(nextIndex);
  if nextIndex >= (Sender as TDBGrid).Columns.Count then
    nextIndex := -1;
  if (curIndex <> nextIndex) then
    case nextIndex of
      - 1:
        begin
          sendkey(vk_down, [], false);
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

procedure TEarth2F.qryEarthGroupsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  With qry_Earth do
  begin
    Active := false;
    Parameters.ParamByName('EarthGrpID').Value :=
      qryEarthGroups.FieldByName('EarthGrpID').AsInteger;
    Active := True;
  end; // with

end;

procedure TEarth2F.DBGrid1KeyPress(Sender: TObject; var key: char);
begin
  inherited;
  Allgridkeyenter(Sender, key)
end;

procedure TEarth2F.DBGrid1EditButtonClick(Sender: TObject);
var
  Results: array [0 .. 1] of String;
begin
  inherited;
  if searchCode_ADOF.SearchCode2(DMf.adcBSell, 'Ê«ÕœÂ«', qryUnits.SQL.Text,
    ['òœ', '‰«„ Ê«Õœ'], Results, [60, 200], alLeft) then
  begin
    if not((Sender as TDBGrid).DataSource.DataSet.State in dsEditModes) then
      (Sender as TDBGrid).DataSource.DataSet.Edit;
    (Sender as TDBGrid).DataSource.DataSet['UnitCode'] := Results[0];
  end; // if
end;

procedure TEarth2F.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  (Sender as TDBGrid).SelectedIndex := 0;
end;

end.
