unit SelectYear;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template0, StdCtrls, Buttons, ComCtrls, ExtCtrls, DB, ADODB,GlobalPro,
  Grids, DBGrids,dm, DBCtrls;

type
  TSelectYearF = class(Ttemplate0F)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qrySections: TADOQuery;
    DBGrid1: TDBGrid;
    srcSections: TDataSource;
    qrySectionsSid: TIntegerField;
    qrySectionsSysID: TWordField;
    qrySectionsTitle: TStringField;
    qrySectionsBankName: TStringField;
    qrySectionsCreateDate: TDateTimeField;
    qrySectionsLastBackupDate: TDateTimeField;
    qrySectionsLastConnectDate: TDateTimeField;
    qrySectionsMaliYear: TWordField;
    qrySectionsCompanyName: TStringField;
    qrySectionsisCurrent: TBooleanField;
    qrySections_toShow: TStringField;
    StatusBar1: TStatusBar;
    DBText1: TDBText;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure qrySectionsCalcFields(DataSet: TDataSet);
    procedure qrySectionsAfterScroll(DataSet: TDataSet);
  private
    procedure ReadToAPPBANK(var aAPPBank: TAPPBANK);
    procedure ClearIsCurrent;
    { Private declarations }
  public
    function SelectAYear(var aAPPBank: TAPPBANK): Boolean;
    function ChooseActiveYear(var aAPPBank: TAPPBANK): Boolean;
    { Public declarations }
  end;

var
  SelectYearF: TSelectYearF;

implementation

uses shamsiDate, SalaryFunctions;

{$R *.dfm}

function TSelectYearF.SelectAYear(var aAPPBank: TAPPBANK): Boolean;
var
  sid:  Integer;
begin
  SelectYearF:=TSelectYearF.Create(Application);
  with SelectYearF do begin
    try
      if var_glb_DefaultFont<>nil then Font.Assign(var_glb_DefaultFont);
      with qrySections do begin
        Active:=False;
        Parameters.ParamByName('SYSID').Value:=SYSID;
        Active:=True;
        if IsEmpty then begin
          Warn('ÂÌç ”«· „«·Ì »—«Ì ”Ì” „  ⁄—Ì› ‰‘œÂ «” .',mtInformation);
          BitBtn1.Enabled:=False;
        end;//if
        Locate('isCurrent',1,[]);
      end;//with
      if ShowModal=mrok then begin
        Result:=qrySections.fieldbyname('BankName').AsString<>'';
        if Result then Result:=bankexists(qrySections.fieldbyname('BankName').AsString);
        if Result then begin
          sid:=qrySections.fieldbyname('Sid').AsInteger;
          ReadToAPPBANK(aAPPBank);
          ClearIsCurrent;
          qrySections.Active:=False;
          qrySections.Open;
          if qrySections.Locate('Sid',sid,[]) then begin
            qrySections.Edit;
            qrySections['isCurrent']:=1;
            qrySections['LastConnectDate']:=Now;
            qrySections.Post;
          end;//if
        end;//if
      end
      else Result:=False;
    finally
      Free;
    end;//try
  end;//with
end;

procedure TSelectYearF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ModalResult:=mrOk;
end;

procedure TSelectYearF.qrySectionsCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet['_toShow']:=Format('”«· „«·Ì %.2d - %s - %s',[DataSet.FieldByName('MaliYear').AsInteger,
  DataSet.FieldByName('CompanyName').AsString,DataSet.FieldByName('Title').AsString]);
end;

function TSelectYearF.ChooseActiveYear(var aAPPBank: TAPPBANK): Boolean;
begin
  SelectYearF:=TSelectYearF.Create(Application);
  with SelectYearF do begin
    try
      with qrySections do begin
        Active:=False;
        Parameters.ParamByName('SYSID').Value:=SYSID;
        Active:=True;
        if IsEmpty then begin
          Result:=False;
          Exit;
        end;//if
        Result:=Locate('isCurrent',1,[]);
        if not Result then First;
        ReadToAPPBANK(aAPPBank);
      end;//with
    finally
      Free;
    end;//try
  end;//with
end;

procedure TSelectYearF.ReadToAPPBANK(var aAPPBank: TAPPBANK);
begin
  with qrySections do begin
    aAPPBank.Name:=fieldbyname('BankName').AsString;
    aAPPBank.ID:=fieldbyname('Sid').AsInteger;
    if isdemo then aAPPBank.Title:='Œ—Ìœ Ê ›—Ê‘ - Œ“«‰Â œ«—Ì ‰”ŒÂ ‰„«Ì‘Ì' else
      aAPPBank.Title:=fieldbyname('Title').AsString;
    aAPPBank.LastConnectDate:=fieldbyname('LastConnectDate').AsDateTime;
    aAPPBank.Year:=fieldbyname('MaliYear').AsInteger;
    if isdemo then aAPPBank.CompanyName:='‘—ﬂ  ÿ—Õ ÊÅ—œ«“‘ ›—«—«Ì«‰Â' else
      aAPPBank.CompanyName:=fieldbyname('CompanyName').AsString;
  end;//with
end;

procedure TSelectYearF.ClearIsCurrent;
begin
  with DMF.qryGlbTmpTmp do begin
    Active:=False;
    SQL.Text:='Update Sections set isCurrent=0 where (isCurrent=1) and (SYSID=' + IntToStr(SYSID) + ')';
    ExecSQL;
    Prepared:=False;
    Active:=False;
  end;//with
end;

procedure TSelectYearF.qrySectionsAfterScroll(DataSet: TDataSet);
var
  dt: TDateTime;
begin
  inherited;
  dt:=DataSet.fieldbyname('LastConnectDate').AsDateTime;
  StatusBar1.SimpleText:='“„«‰ ¬Œ—Ì‰ œ” —”Ì : ' + formatdatetime('dddd',dt) + ' ' +
    miladi2Shamsi(dt) + ' ”«⁄  ' + FormatDateTime('hh:nn',dt);  
end;

end.
