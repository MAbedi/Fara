unit ArchiveInfoFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, Vcl.DBGrids, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TcalcKind = (TCalc = 1, TaccCoding = 2, TbackWard = 3);

  TArchiveInfoFilterF = class(TForm)
    Panel1: TPanel;
    ImgTemplate: TImage;
    lblCaption: TLabel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBGrid1: TDBGrid;
    qrySelect: TADOQuery;
    srcSelect: TDataSource;
    qrySelectPersonelNo: TIntegerField;
    qrySelectName: TStringField;
    qrySelectOfficeCode: TIntegerField;
    qrySelectOfficeName: TStringField;
    qrySelectProjectCode: TIntegerField;
    qrySelectProjectName: TStringField;
    StatusBar1: TStatusBar;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrySelectAfterOpen(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    OrginalSQL: string;
    ArchiveInfoFMounth: Byte;
    procedure Calc(calcKind: TcalcKind);
    procedure CalcOn(PersonelNoFrom, PersonelNoTo: Integer;
      calcKind: TcalcKind);
    { Private declarations }
  public
    procedure ShowChange(Mounth: Integer);
    { Public declarations }
  end;

var
  ArchiveInfoFilterF: TArchiveInfoFilterF;

implementation

uses DM, FilterClass_ADO, filter_ADO, GlobalPro, ArchiveInfo, ArchiveInfo2,
  Filter_ADO_Const;

{$R *.dfm}

procedure TArchiveInfoFilterF.BitBtn1Click(Sender: TObject);
var
  s: string;
  function getParamValue(ParamName: string): string;
  begin
    Result := GetcFrom(myParams.ParamValues[ParamName], ftString);
    if Result = EmptyStr then
      Result := '0';
  end;

begin
  With TfilterF.Create2(Self, myParams) do
  begin
    try
      AddItem(DMf.adcSalary, 'HasFunction', 'انتخاب ', '', ftUnknown,
        dvDefaults, '1', '', ciRadioGroup,
        'SELECT 0 As MasterType,''کلیه پرسنل'' as MasterName ' + ' Union All ' +
        'SELECT 1 ,''پرسنل دارای کارکرد''  ');


      AddItemFilter(GetFilter, TPersonelNo);


      AddItem(DMf.adcSalary, 'OfficeCodes', 'واحد سازماني', 'كد', ftInteger,
        dvDefaults, 'true', 'true', ciCheck,
        'SELECT DISTINCT FormInfoID, InfoName_L1 FROM  Pay.FormsInfo WHERE (FormType = 12) ',
        '');
      AddItem(DMf.adcSalary, 'Projects', 'پروژه/تفصیلی 1', 'كد', ftInteger,
        dvDefaults, 'true', 'true', ciCheck,
        'SELECT DISTINCT Interdicts.ProjectID,FormsInfo.InfoName_L1 FROM Pay.Interdicts '
        + 'INNER JOIN Pay.FormsInfo ON Pay.Interdicts.ProjectID = FormsInfo.FormInfoID ',
        '');
      AddItemFilter(GetFilter, TEmployTypeID);

      AddItem(DMf.adcSalary, 'LabelID', 'دسته بندی محاسبات', 'کد محاسبه',
        ftInteger, dvDefaults, Trim(ArchiveInfo2F.mskLabelIDFrom.Text),
        Trim(ArchiveInfo2F.mskLabelIDFrom.Text), ciCombo,
        'SELECT LabelID , Descriptions FROM Pay.FixedLabels ', '');

      if ShowModal = mrOk then
      begin
        GetFilterString;
        with qrySelect do
        begin
          Active := False;
          SQL.Text := OrginalSQL;
          SQL.Add(Format('AND(Interdicts.OfficeCode in( %s ))',
            [getParamValue('OfficeCodes')]));
          SQL.Add(Format('AND(Interdicts.ProjectID in( %s ))',
            [getParamValue('Projects')]));
          SQL.Add('AND(Interdicts.PersonelNo BETWEEN :PersonelNoFrom AND :PersonelNoTo)');
          SQL.Add('AND (FormsInfoEmployTypeID.InfoID BETWEEN :EmployTypeIDFrom AND :EmployTypeIDTo )');

          if GetcFrom(myParams.ParamValues['HasFunction'], ftInteger) = '1' then
          begin
            s := Format
              ('AND Interdicts.PersonelNo in(SELECT DISTINCT PersonelNo FROM Pay.Functions WHERE Mounth = %d )',
              [ArchiveInfoFMounth]);
            SQL.Add(s);
          end;

          Parameters.ParamByName('EmployTypeIDFrom').Value :=
            GetcFrom(myParams.ParamValues['EmployTypeID'], ftInteger);
          Parameters.ParamByName('EmployTypeIDTo').Value :=
            GetcTo(myParams.ParamValues['EmployTypeID'], ftInteger);

          Parameters.ParamByName('YearMounth1').Value := optP.YearMounth;
          Parameters.ParamByName('YearMounth2').Value := optP.YearMounth;
          Parameters.ParamByName('PersonelNoFrom').Value :=
            GetcFrom(myParams.ParamValues['PersonelNo'], ftInteger);
          Parameters.ParamByName('PersonelNoTo').Value :=
            GetcTo(myParams.ParamValues['PersonelNo'], ftInteger);
          Active := True;
        end;
      end;
    finally
      Free;
    end;
  end;
end;

procedure TArchiveInfoFilterF.ShowChange;
begin
  with ArchiveInfoFilterF do
  begin
    try
      ArchiveInfoFilterF := TArchiveInfoFilterF.Create(Application);
      ArchiveInfoFMounth := Mounth;
      myParams.Clear;
      ShowModal;
    finally
      Free;
    end;
  end;
end;

procedure TArchiveInfoFilterF.BitBtn3Click(Sender: TObject);
begin
  Calc(TCalc)
end;

procedure TArchiveInfoFilterF.BitBtn4Click(Sender: TObject);
begin
  Calc(TaccCoding)
end;

procedure TArchiveInfoFilterF.BitBtn5Click(Sender: TObject);
begin
  Calc(TbackWard)
end;

procedure TArchiveInfoFilterF.Calc(calcKind: TcalcKind);
var
  PersonelNo, PersonelNoFrom, PersonelNoTo: Integer;
begin
  With qrySelect do
    try
      DisableControls;
      First;
      PersonelNo := qrySelectPersonelNo.AsInteger;
      PersonelNoFrom := qrySelectPersonelNo.AsInteger;
      PersonelNoTo := qrySelectPersonelNo.AsInteger;

      Next;
      while not Eof do
      begin
        inc(PersonelNo);
        if PersonelNo = qrySelectPersonelNo.AsInteger then
        begin
          PersonelNoTo := PersonelNo;
          Next
        end
        else
        begin
          CalcOn(PersonelNoFrom, PersonelNoTo, calcKind);
          PersonelNo := qrySelectPersonelNo.AsInteger;
          PersonelNoFrom := qrySelectPersonelNo.AsInteger;
          PersonelNoTo := qrySelectPersonelNo.AsInteger;
          Next;
        end
      end;
      CalcOn(PersonelNoFrom, PersonelNoTo, calcKind);
    finally
      EnableControls;
      Warn('محاسبه شد ', mtInformation);
    end;
end;

procedure TArchiveInfoFilterF.CalcOn(PersonelNoFrom, PersonelNoTo: Integer;
  calcKind: TcalcKind);
begin
  if ArchiveInfoF <> nil then
    With ArchiveInfoF do
    begin
      mskPrsnlNo1.Text := IntToStr(PersonelNoFrom);
      mskPrsnlNo2.Text := IntToStr(PersonelNoTo);
      case calcKind of
        TCalc:
          actCal.Execute;
        TaccCoding:
          actCalAcc.Execute;
        TbackWard:
          ActBackWard.Execute;
      end;

    end;
  if ArchiveInfo2F <> nil then
    With ArchiveInfo2F do
    begin
      mskPrsnlNo1.Text := IntToStr(PersonelNoFrom);
      mskPrsnlNo2.Text := IntToStr(PersonelNoTo);
      mskLabelIDFrom.Text := VarToStr(GetcTo(myParams.ParamValues['LabelID'],
        ftInteger));
      mskLabelIDTo.Text := VarToStr(GetcTo(myParams.ParamValues['LabelID'],
        ftInteger));

      case calcKind of
        TCalc:
          actCal.Execute;
        TaccCoding:
          actCalAcc.Execute;
        TbackWard:
          ActBackWard.Execute;
      end;

    end;
end;

procedure TArchiveInfoFilterF.FormCreate(Sender: TObject);
begin
  OrginalSQL := qrySelect.SQL.Text
end;

procedure TArchiveInfoFilterF.qrySelectAfterOpen(DataSet: TDataSet);
begin
  StatusBar1.Panels[0].Text := 'تعداد:' + IntToStr(DataSet.RecordCount)
end;

end.
