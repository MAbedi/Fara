unit MakeBaneDSK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, ComCtrls, Grids, DBGrids, DB, DBClient, Mask, ppPrnabl, ppClass,
  ppCtrls, ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ADODB, ToolWin, template2;

type
  TMakeBaneDSKF = class(Ttemplate2MDIF)
    StatusBar1: TStatusBar;
    Memo1: TMemo;
    Label1: TLabel;
    mskDate: TMaskEdit;
    actMakeJari: TAction;
    actMakePasAndaz: TAction;
    srcList: TDataSource;
    DBGrid1: TDBGrid;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppTitleBand1: TppTitleBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLabel13: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLabel14: TppLabel;
    ppLine3: TppLine;
    ppDBCalc3: TppDBCalc;
    BitBtn3: TBitBtn;
    actPrint: TAction;
    BitBtn1: TBitBtn;
    actMake: TAction;
    qryList: TADOQuery;
    BitBtn2: TBitBtn;
    actLimit: TAction;
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
    qryListc_PersonelNo: TStringField;
    qryListpName: TStringField;
    qryListc_AccountNumber: TStringField;
    qryListn_value: TBCDField;
    qryList_radif: TIntegerField;
    procedure actMakeJariExecute(Sender: TObject);
    procedure actMakePasAndazExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure actPrintExecute(Sender: TObject);
    procedure actMakeExecute(Sender: TObject);
    procedure actLimitExecute(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure qryListCalcFields(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    MonthNo:  Byte;
    procedure UpdateList;
  public
    function makeDSK(dskType,monthNo: byte): boolean;
  end;

var
  MakeBaneDSKF: TMakeBaneDSKF;

implementation

uses DM, mmessage, GlobalPro, GlobalUnit, filter_ADO,
  FilterClass_ADO, shamsiDate, StrUtils;

{$R *.dfm}



function TMakeBaneDSKF.makeDSK(dskType,monthNo: byte): boolean;
var
  //aDataSet: TClientDataSet;
  makeDate:  String;
  s:  String;
  i:  Integer;
  c:  Currency;
begin
  makeDate:=mskDate.Text;
  if not validate_date(False,'','',' «—ÌŒ  ÂÌÂ',MakeDate) then exit;
  qryList.DisableControls;
  try
  while not qryList.Eof do begin
    if length(qryList.fieldbyname('c_AccountNumber').AsString)<3 then begin
      qryList.Next;
      Continue;
    end;//if
    case dskType of
      1:  begin           //Jari
            s:=StringReplace(qryList.fieldbyname('c_AccountNumber').AsString,'/','',[rfreplaceall]);
            if s[1]='*' then s:=copy(s,2,7);
            s:=RightStr('0000000' + s,7);
            s:=s + '46' + StringReplace(makeDate,'/','',[rfreplaceall]);
            s:=s + '000000'; //6 zero
            s:=s +RightStr('00000000000' + qryList.FieldByName('n_Value').AsString,11);
            s:=s + '2';
            Memo1.Lines.Add(s);
          end;//Jari
      2:  begin           //PasAndaz
            s:=StringReplace(qryList.fieldbyname('c_AccountNumber').AsString,'/','',[rfreplaceall]);
            s:=RightStr('0000000' + s,7);
            s:=s + '04' + StringReplace(makeDate,'/','',[rfreplaceall]);
            s:=s + '000000'; //6 zero
            s:=s +RightStr('00000000000' + qryList.FieldByName('n_Value').AsString,11);
            s:=s + '2';
            Memo1.Lines.Add(s);
          end;//PasAndaz
    end;//case
    c:=c+ qryList.FieldByName('n_Value').AsCurrency;
    qryList.Next;
  end;//while
  s:=Memo1.Lines.Text;
  SetLength(s,length(s)-2);
  Memo1.Lines.Text:=s;
  StatusBar1.Panels[0].Text:=' ⁄œ«œ = ' + inttostr(Memo1.Lines.count);
  StatusBar1.Panels[1].Text:='Ã„⁄ Å—œ«Œ Ì = ' + CurrToStrF(c,ffCurrency,0);
  if MessageDlg('·ÿ›« œÌ”ﬂ  —« œ— œ—«ÌÊ ﬁ—«— œÂÌœ.˛', mtInformation, [mbOK,mbCancel], 0) = mrOk then begin
    if dskType=1 then s:='TRNFIL1.cds' else s:='TRNF2.cds';
    try
      Memo1.Lines.SaveToFile('a:\' + s);
      BigMessage('œÌ”ﬂ  »«‰ﬂ »« „Ê›ﬁÌ   ÂÌÂ ‘œ.',2);
    except
      Warn('«‘ﬂ«· œ—  ÂÌÂ œÌ”ﬂ ',mtError);
    end;//try
  end;//if
  finally
    qryList.EnableControls;
  end;//try
end;

procedure TMakeBaneDSKF.actMakeJariExecute(Sender: TObject);
begin
  inherited;
  makeDSK(1,MonthNo)
end;

procedure TMakeBaneDSKF.actMakePasAndazExecute(Sender: TObject);
begin
  inherited;
  makeDSK(2,MonthNo)
end;

procedure TMakeBaneDSKF.FormCreate(Sender: TObject);
begin
  inherited;
  MonthNo:=var_glb_CurrentMonth;
  ToolBar1.Buttons[MonthNo-1].Down:=True;
  mskDate.Text:=var_glb_currentdate;
end;

procedure TMakeBaneDSKF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text:=var_glb_CompanyName;
end;

procedure TMakeBaneDSKF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text:=' «—ÌŒ ç«Å: ' + var_glb_CurrentDate;
end;

procedure TMakeBaneDSKF.ppLabel2GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text:='·Ì”  ÕﬁÊﬁ ' +  LongMonthNames[MonthNo];
end;

procedure TMakeBaneDSKF.actPrintExecute(Sender: TObject);
begin
  inherited;
  ppReport1.Print;
end;

procedure TMakeBaneDSKF.actMakeExecute(Sender: TObject);
begin
  inherited;
  makeDSK(2,MonthNo);
end;

procedure TMakeBaneDSKF.actLimitExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self,myParams) do begin
    try
      AddItem(DMF.ADCPayRoll,'c_PersonelNo','‘„«—Â Å—”‰·Ì','‘„«—Â',ftInteger,dvMinMax,'','',ciLookup,
      'select c_PersonelNo, c_name + '' '' + c_lastName as pname FROM Pay.PersonelInfo where (n_PersonelState <11) and ' +
      'c_name + '' '' + c_lastName like :c','Select Min(c_PersonelNo),max(c_PersonelNo) FROM Pay.PersonelInfo where n_PersonelState <11');
      AddItem(DMF.ADCPayRoll,'PersonelState','Ê÷⁄Ì  Å—”‰·Ì','ﬂœ',ftInteger,dvMinMax,'','',ciLookup,
      'Select n_PersonelState, c_name FROM Pay.personelState where (n_PersonelState<11) and (c_name like :c)',
      'Select Min(n_PersonelState),max(n_PersonelState) FROM Pay.personelState where (n_PersonelState<11)');
      if ShowModal=mrOk then begin
        GetFilterString;
        UpdateList;
      end;//if
    finally
      Free;
    end;//try
  end;//with
end;

procedure TMakeBaneDSKF.UpdateList;
var
  v:  Currency;
begin
  with qryList do begin
    DisableControls;
    Active:=False;
    Parameters.ParamByName('StateFrom').Value:=GetcFrom(myParams.ParamValues['PersonelState'],ftInteger);
    Parameters.ParamByName('StateTo').Value:=GetcTo(myParams.ParamValues['PersonelState'],ftInteger);
    Parameters.ParamByName('MonthNo').Value:=MonthNo;
    Parameters.ParamByName('pFrom').Value:=GetcFrom(myParams.ParamValues['c_PersonelNo']);
    Parameters.ParamByName('pTo').Value:=GetcTo(myParams.ParamValues['c_PersonelNo']);
    Active:=True;
    v:=0;
    while not eof do begin
      v:=v + fieldbyname('n_Value').AsCurrency;
      Next;
    end;//while
    First;
    EnableControls;
  end;//with
  StatusBar1.Panels[0].Text:='Ã„⁄ Œ«·’ Å—œ«Œ Ì = '+ CurrToStrF(v,ffCurrency,0);
  StatusBar1.Panels[1].Text:=' ⁄œ«œ Å—”‰· = ' + IntToStr(qryList.RecordCount);
end;

procedure TMakeBaneDSKF.ToolButton12Click(Sender: TObject);
begin
  inherited;
  MonthNo:=(Sender as TToolButton).Tag;
  UpdateList;
end;

procedure TMakeBaneDSKF.FormShow(Sender: TObject);
begin
  inherited;
  myParams.Clear;
  actLimit.Execute;
  if myParams.FindParam('c_PersonelNo')=nil then close;
end;

procedure TMakeBaneDSKF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not(gdSelected in State) then begin
    if odd(DBGrid1.DataSource.DataSet.RecNo) then
      DBGrid1.Canvas.Brush.Color:=const_fixed_columns_color;
  end;//if
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
end;

procedure TMakeBaneDSKF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,2,false);
end;

procedure TMakeBaneDSKF.qryListCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet['_radif']:=abs(DataSet.RecNo);
end;

procedure TMakeBaneDSKF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var
  c:  Int64;
begin
  inherited;
  c:=getKeyboardNumber(Key);
  if c>0 then qryList.Locate('c_PersonelNo',c,[]);
end;

end.
