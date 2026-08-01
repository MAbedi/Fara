unit options;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, optionsAllSys, ExtDlgs, Mask, StdCtrls, ComCtrls, Buttons,
  ExtCtrls;

type
  ToptionsF = class(ToptionsAllSysF)
    ts1: TTabSheet;
    ChkSeletedPrintEnabled: TCheckBox;
    chkSystemWarn: TCheckBox;
    chkCheckWarn: TCheckBox;
    chkShowBig: TCheckBox;
    medtPrintTaxCount: TMaskEdit;
    Label2: TLabel;
    chkActiveSort: TCheckBox;
    chkSkin: TCheckBox;
  private
    { Private declarations }
  public
    procedure enter;
    procedure LoadOptions;
    procedure SaveOptions;
    { Public declarations }
  end;

var
  optionsF: ToptionsF;

implementation

uses dm, DB, shamsiDate, GlobalPro, main, mdiMain, mmessage, Encryption,
  FormFunctions, FaraConsts;

{$R *.dfm}

procedure ToptionsF.enter;
begin
  optionsF := ToptionsF.Create(Application);
  with optionsF do
  begin
    try
      PageControl1.ActivePageIndex := 0;
      LoadOptions;
      if ShowModal = mrok then
      begin
        try
          SaveOptions;
          BigMessage('À»  ‘œ.', 1);
        except
          on e: Exception do
          begin
            add2log(e.Message);
            warn('«‘ﬂ«· œ— À»   ‰ŸÌ„« ' + #13#10 + e.Message);
          end;
        end; // try
      end; // if
    finally
      Free;
    end; // try
  end; // with
end;

procedure ToptionsF.LoadOptions;
begin
  inherited;
  ChkSeletedPrintEnabled.Checked :=  SeletedPrintEnabled;
  medtPrintTaxCount.Text := IntToStr(opt.PrintTaxCount);
  chkSystemWarn.Checked := opt.SystemWarn;
  chkSystemWarn.Visible := User.PowerUser;
  chkCheckWarn.Checked := opt.CheckWarn;
  chkCheckWarn.Visible := User.PowerUser;
  chkShowBig.Checked := opt.showBig;
  chkActiveSort.Checked := ActiveSortTitle;
  chkSkin.Checked := StrToBool(ReadConfig(APPID, 'SkinActive2', 'False'));


end;

procedure ToptionsF.SaveOptions;
begin
  inherited;
  SaveConfig(APPID, 'SeletedPrintEnabled',
    BoolToStr(ChkSeletedPrintEnabled.Checked));
  SaveConfig(APPID, 'SystemWarn', BoolToStr(chkSystemWarn.Checked));
  SaveConfig(APPID, 'CheckWarn', BoolToStr(chkCheckWarn.Checked));
  SaveConfig(APPID, 'ShowBig', BoolToStr(chkShowBig.Checked));
  SaveConfig(APPID, 'PrintTaxCount', trim(medtPrintTaxCount.Text));
  SaveConfig(APPID, 'ActiveSortTitle', BoolToStr(chkActiveSort.Checked));
  SaveConfig(APPID, 'SkinActive2', BoolToStr(chkSkin.Checked));
  ReadAllOption;

end;

end.
