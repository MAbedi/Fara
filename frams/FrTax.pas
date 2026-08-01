unit FrTax;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, DB, ADODB, ShlObj, ExtCtrls;

type
  TfrmTax = class(TFrame)
    mskTax: TMaskEdit;
    lblTax: TLabel;
    mskTown: TMaskEdit;
    lblTown: TLabel;
    adcTTMS: TADOConnection;
    OpenDialog1: TOpenDialog;
    qryConfig: TADOQuery;
    sSpeedButton1: TSpeedButton;
    Image1: TImage;
    Panel1: TPanel;
    chkYear96: TCheckBox;
    qryTTMS: TADOQuery;
    cmbStuffShow: TComboBox;
    procedure sSpeedButton1Click(Sender: TObject);
    procedure mskTaxChange(Sender: TObject);
  private
    { Private declarations }
    function GetDesktopFolder: string;
  public
    Tax, Town, TaxTown: Real;
    constructor Create(AOwner: TComponent); override;
    function StuffShow: Integer;
    { Public declarations }
  end;

implementation

uses DM, GlobalPro;

{$R *.dfm}

constructor TfrmTax.Create(AOwner: TComponent);
var
  i, k: Integer;

begin
  inherited;
  cmbStuffShow.Clear;
  cmbStuffShow.AddItem('نمایش کد کالا', TObject(0));
  k := 1;
  for i := opt.LevelIdStuffGroup downto 1 do
  begin
    cmbStuffShow.AddItem('نمایش گروه سطح' + k.ToString, TObject(i));
    inc(k);
  end;

  if opt.LevelIdStuffGroup = 0 then
  begin
    cmbStuffShow.AddItem('بر اساس شماره فاکتور فروش', TObject(200));
    cmbStuffShow.AddItem('فروش به تفکیک هر مشتری', TObject(201));
  end;

  cmbStuffShow.ItemIndex := 0;
  OpenDialog1.InitialDir := GetDesktopFolder + '\TTMS_Offline\';
  // sSpeedButton1.Visible := APPBank.n_subcompany = 1;
  mskTaxChange(mskTax);
  chkYear96.Checked := APPBank.Year >= 1396
end;

function TfrmTax.GetDesktopFolder: string;
var
  buf: array [0 .. MAX_PATH] of char;
  pidList: PItemIDList;
begin
  Result := 'No Desktop Folder found.';
  SHGetSpecialFolderLocation(Application.Handle, CSIDL_DESKTOP, pidList);
  if (pidList <> nil) then
    if (SHGetPathFromIDList(pidList, buf)) then
      Result := buf;
end;

function TfrmTax.StuffShow: Integer;
begin
  Result := Integer(cmbStuffShow.Items.Objects[cmbStuffShow.ItemIndex]);
  cmbStuffShow.Tag := Result;
end;

procedure TfrmTax.mskTaxChange(Sender: TObject);
begin
  Tax := StrToFloat(Trim(mskTax.Text));
  Town := StrToFloat(Trim(mskTown.Text));
  TaxTown := Tax + Town;
end;

procedure TfrmTax.sSpeedButton1Click(Sender: TObject);
var
  Tax, Town: Real;
  s: string;
begin
  // adcTTMS.Connected := False;
  Tax := StrToFloat(Trim(mskTax.Text));
  Town := StrToFloat(Trim(mskTown.Text));

  s := Format('مجموع %s و %s برابر %f ميشود آيا براي ادامه مطمئن هستيد.',
    [lblTax.Caption, lblTown.Caption, Tax + Town]);
  if get_response(s, clRed) <> mrYes then
  begin
    Abort;
    Exit;
  end;

  // (not adcTTMS.Connected) and
  if OpenDialog1.Execute() then
  begin
    adcTTMS.Connected := False;
    adcTTMS.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;' +
      'Data Source=%s;Persist Security Info=True';
    adcTTMS.ConnectionString := Format(adcTTMS.ConnectionString,
      [OpenDialog1.FileName]);

    with qryTTMS do
      try
        SQL.Text := 'SELECT * FROM Moshakhasat';
        Active := True;
        qryConfig.Active := True;
        Edit;
        if FieldByName('companyNameField').AsString = EmptyStr then
          FieldByName('companyNameField').AsString :=
            qryConfig.FieldByName('CompanyName').AsString;
        if FieldByName('oldEconomicNoField').AsString = EmptyStr then
          FieldByName('oldEconomicNoField').AsString :=
            qryConfig.FieldByName('EconomicNumber').AsString;
        if FieldByName('newEconomicNoField').AsString = EmptyStr then
          FieldByName('newEconomicNoField').AsString :=
            qryConfig.FieldByName('EconomicNumber').AsString;
        if FieldByName('NationalCodeField').AsString = EmptyStr then
          FieldByName('NationalCodeField').AsString :=
            qryConfig.FieldByName('NationalCodeField').AsString;

        if FieldByName('postalCodeField').AsString = EmptyStr then
          FieldByName('postalCodeField').AsString :=
            qryConfig.FieldByName('PostalCode').AsString;

        if (FindField('stateField') <> nil) and
          (FieldByName('stateField').AsString = EmptyStr) then
          FieldByName('stateField').AsString :=
            qryConfig.FieldByName('Ostan').AsString;

        if chkYear96.Checked then
        begin
          FieldByName('taxPayerTypeField').AsInteger :=
            qryConfig.FieldByName('taxPayerTypeField').AsInteger;
        end
        else
        begin
          if (FindField('countryField') <> nil) and
            (FieldByName('countryField').AsString = EmptyStr) then
            FieldByName('countryField').AsString := 'ايران';

          if (FindField('cityField') <> nil) and
            (FieldByName('cityField').AsString = EmptyStr) then
            FieldByName('cityField').AsString :=
              qryConfig.FieldByName('Shahr').AsString;

          if (FindField('Band') <> nil) then
            FieldByName('Band').AsInteger := qryConfig.FieldByName('Band')
              .AsInteger;

          if FieldByName('taxPayerTypeField').AsString = EmptyStr then
            FieldByName('taxPayerTypeField').AsString :=
              qryConfig.FieldByName('CompanyDesc').AsString;

        end;

        if (FindField('ShahrCode') <> nil) then
        begin
          if qryConfig.FieldByName('ShahrCode').AsInteger = 0 then
            Warn('در تنظيمات سيستم شهر وارد نشده')
          else
            FieldByName('ShahrCode').AsInteger :=
              qryConfig.FieldByName('ShahrCode').AsInteger;
        end;

        if FieldByName('telCodeField').AsString = EmptyStr then
          FieldByName('telCodeField').AsString :=
            qryConfig.FieldByName('Tel1').AsString;
        if FieldByName('telNoField').AsString = EmptyStr then
          FieldByName('telNoField').AsString :=
            qryConfig.FieldByName('Tel1').AsString;
        if FieldByName('faxNoField').AsString = EmptyStr then
          FieldByName('faxNoField').AsString :=
            qryConfig.FieldByName('Tel2').AsString;
        if FieldByName('registrationNoField').AsString = EmptyStr then
          FieldByName('registrationNoField').AsString :=
            qryConfig.FieldByName('RegisterNumber').AsString;
        // FieldByName('hozehField').AsString :=
        // qryConfig.FieldByName('').AsString;
        FieldByName('SabteNam').AsInteger := qryConfig.FieldByName('SabteNam')
          .AsInteger;

        FieldByName('MoadyName').AsString :=
          qryConfig.FieldByName('MoadyName').AsString;

        FieldByName('Tabeiat').AsInteger := qryConfig.FieldByName('Tabeiat')
          .AsInteger;

        // SELECT Moshakhasat.companyNameField, Moshakhasat.oldEconomicNoField, Moshakhasat.newEconomicNoField, Moshakhasat.nationalCodeField, Moshakhasat.taxPayerTypeField, Moshakhasat.postalCodeField, Moshakhasat.countryField, Moshakhasat.telCodeField, Moshakhasat.telNoField, Moshakhasat.faxNoField, Moshakhasat.registrationNoField, Moshakhasat.Address, Moshakhasat.ShahrCode, Moshakhasat.EdareKolCode, Moshakhasat.UserName, Moshakhasat.[Band], Moshakhasat.SabteNam, Moshakhasat.

        try
          Post;
        except
          on E: Exception do
          begin
            Active := False;
            s := E.Message + #13#10 + 'اشكال در فرم تنظيمات سيستم';
            add2log(s);
            Warn(s);
          end;
        end;
        qryConfig.Active := False;
      finally
        Active := False;
      end; // try
  end
  else
  begin
    Abort;
  end;

end;

end.
