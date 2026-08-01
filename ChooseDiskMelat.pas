unit ChooseDiskMelat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, StdCtrls, CheckLst, DBActns, ActnList, Buttons,
  ExtCtrls, DB, ADODB, Grids, Vcl.DBGrids, ComCtrls, DBClient, Provider,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppDB, ppCache, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, Mask, Dbf, System.Actions;

type
  TChooseDiskMelatF = class(TTemplate5F)
    qryChecks: TADOQuery;
    srcChecks: TDataSource;
    BitBtn1: TBitBtn;
    Image2: TImage;
    Image3: TImage;
    DataSetProvider1: TDataSetProvider;
    cliChecks: TClientDataSet;
    actSearch: TAction;
    actSort: TAction;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    actPrint: TAction;
    actExcel: TAction;
    actSelectAll: TAction;
    actSlelectInverse: TAction;
    cliChecksFormItemID: TIntegerField;
    cliChecksCheckNumber: TStringField;
    cliChecksCheckDate: TStringField;
    cliChecksBankName: TStringField;
    cliChecksAccountNumber: TStringField;
    cliChecksItemAmount: TBCDField;
    cliChecksItemNote: TStringField;
    cliChecksFormNumber: TIntegerField;
    cliChecksFormDate: TStringField;
    cliChecksCustomerID2: TIntegerField;
    cliChecksCustName: TStringField;
    cliChecksFormType: TSmallintField;
    cliChecksFormCaption: TStringField;
    cliChecksCustomerID1: TIntegerField;
    cliCheckspreFormItemID: TIntegerField;
    DBGrid1: TDBGrid;
    qryInsert: TADOQuery;
    mskAccount: TMaskEdit;
    mskDate: TMaskEdit;
    edtBank: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    actMatch: TAction;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    cliChecks_checked: TBooleanField;
    pnlWarning: TPanel;
    lblWarnCount: TLabel;
    lslWarnings: TListBox;
    qryBank: TADOQuery;
    qryBankFormItemID: TIntegerField;
    qryBankCODREC: TIntegerField;
    qryBankFASL: TFloatField;
    qryBankCHECKNO: TFloatField;
    qryBankSHEETNO: TFloatField;
    qryBankCODAMAL: TFloatField;
    qryBankSEQNO: TFloatField;
    qryBankLDATE: TFloatField;
    qryBankBALANCE: TFloatField;
    qryBankAMOUNT: TFloatField;
    qryBankMOJAVEZA: TStringField;
    qryBankOPCODA: TStringField;
    qryBankACCOUNT: TStringField;
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure qryChecksAfterOpen(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);    procedure SpeedButton1Click(Sender: TObject);
    procedure actMatchExecute(Sender: TObject);
    procedure edtBankKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    CdsPath:String;
    procedure ReadBank;
    { Private declarations }
  public
    function SelectChecks(formType,SqlFilter:String;qryMaster:TADOQuery):Boolean;
    { Public declarations }
  end;

var
  ChooseDiskMelatF: TChooseDiskMelatF;

implementation

uses StrUtils, DM, GlobalPro, search1, sort, mmessage, FormFunctions, FaraConsts;

{$R *.dfm}
function TChooseDiskMelatF.SelectChecks(formType,SqlFilter:String;qryMaster:TADOQuery):Boolean;
begin
  Result:=False;
  ChooseDiskMelatF:=TChooseDiskMelatF.Create(Application);
  try
    with ChooseDiskMelatF do
    begin
      with qryChecks Do
      begin
        Active:=False;
        SQL.Add (SqlFilter);
        SQL.Add('AND (Forms.FormType IN ('+formType+'))  ') ;
        mskDate.Text:=var_glb_CurrentDate;
        mskAccount.Text:=ReadConfig(APPID,'ChooseDiskMelatAccount','7415601336');

      end;//with
      if ShowModal=mrOk then
      begin
        with cliChecks do
        begin
          Filter:='_checked=True' ;
          Filtered:=True;
          DisableControls ;
          first;
          qryInsert.Parameters.ParamByName('YearID').Value:=APPBank.Year;
          qryInsert.Parameters.ParamByName('ServerID').Value:=opt.ServerID;
          while not eof do
          begin
            with qryInsert do
            begin
              Parameters.ParamByName('NewFormID').Value:=qryMaster.fieldbyname('formID').AsInteger ;
              Parameters.ParamByName('NewFormItemID').Value:=GetANewID(nil,'ChooseDiskMelatF','FormItems','FormItemID',qryMaster,1);
              Parameters.ParamByName('NewRow').Value:=cliChecks.RecNo;
              Parameters.ParamByName('OldFormItemID').Value:=cliChecks.fieldbyname('FormItemID').AsInteger;
              Parameters.ParamByName('OldFormItemID1').Value:=cliChecks.fieldbyname('FormItemID').AsInteger;
              ExecSQL ;
            end;//with qryinsert
            next ;
          end ;//while
        end;//with
        Result:=true
      end;//if
    end;//with
  finally
    ChooseDiskMelatF.Free;
  end;//try
end;

procedure TChooseDiskMelatF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,6);
end;

procedure TChooseDiskMelatF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
  if DataCol=0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cliChecks_checked.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image2.Picture.Graphic)
  end;//if
end;

procedure TChooseDiskMelatF.qryChecksAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cliChecks.Active:=False;
  cliChecks.Active:=True;
end;             

procedure TChooseDiskMelatF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key,cliChecks.FieldByName('CheckNum'));
end;

procedure TChooseDiskMelatF.DBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
//  (Sender as TDBGrid).Refresh
end;

procedure TChooseDiskMelatF.actSearchExecute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(cliChecks);
end;

procedure TChooseDiskMelatF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cliChecks);
end;

procedure TChooseDiskMelatF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveConfig(APPID,'ChooseDiskMelatAccount',mskAccount.Text);
end;


procedure TChooseDiskMelatF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TChooseDiskMelatF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then CdsPath:=OpenDialog1.FileName;
    edtBank.Text:=ExtractFileName(CdsPath);
end;
procedure TChooseDiskMelatF.actMatchExecute(Sender: TObject);
var
  s:String;
  infoChk:String;
begin
  if not FileExists(CdsPath) then Exit;
    ChooseDiskMelatF.ReadBank;
  with qryBank do
  begin
    s:=StuffString(StuffString(mskDate.Text,3,1,''),5,1,'');
    Filter:='ACCOUNT = '+Trim(mskAccount.Text)+' and LDATE <= '+s;
    Filtered:=True;
  end;//with
  qryChecks.Active:=True;
  with qryBank do
  begin
    try
      DisableControls;
      First;
      while not eof do
      begin
        if cliChecks.Locate('CheckNumber;ItemAmount',
             VarArrayOf([fieldbyname('CHECKNO').AsString,fieldbyname('AMOUNT').AsString]),[loCaseInsensitive]) then begin
          cliChecks.Edit;
          cliChecks.FieldByName('_Checked').AsBoolean:=True;
          cliChecks.post;
        end else
        begin
          pnlWarning.Visible:=True;
          infoChk:=Format(' ÔãÇÑå ˜ = %s_____ãÈáÛ ˜ = %m',[qryBank.FieldByName('CHECKNO').AsString,qryBank.FieldByName('AMOUNT').AsCurrency]);
          lslWarnings.Items.Add(infoChk);
          lblWarnCount.Caption:='ÊÚÏÇÏ ÎØÇåÇ =  ' + IntToStr(lslWarnings.Count)
        end;//else
          Next;
      end;//while
    finally
      EnableControls;
    end;//try
  end;//with

end;

procedure TChooseDiskMelatF.edtBankKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=32 then
    SpeedButton1.Click;
end;

procedure TChooseDiskMelatF.ReadBank;
var
  ts:TStrings;
  i:Integer;
begin
  if not FileExists(CdsPath) then Warn('not File Exists');
  ts:=TStringList.Create;
  ts.LoadFromFile(CdsPath);
  BigMessageProgBar('ÏÑ ÍÇá ÎæÇäÏä ÝÇíá',ts.Count);
  With qryBank do
  begin
    Active:=False;
    Active:=True;
    for i:=0 to ts.Count-1 do
    begin
         Insert;
         FieldByName('CODREC').AsString:=IntToStr(i);
         FieldByName('SHEETNO').AsString:=MidStr(ts.Strings[i],0,13);
         FieldByName('AMOUNT').AsString:=Trim( MidStr(ts.Strings[i],15,13));
         if FieldByName('AMOUNT').IsNull then FieldByName('AMOUNT').AsString:='0';
         FieldByName('CHECKNO').AsString:=MidStr(ts.Strings[i],43,14);
         FieldByName('LDATE').AsString:=MidStr(ts.Strings[i],61,6);
//         FieldByName('ACCOUNT').AsString:=MidStr(ts.Strings[i],68,7);
         FieldByName('ACCOUNT').AsString:=MidStr(ts.Strings[i],68,15);
         FieldByName('FormItemID').AsInteger:=0;
         Post;
         GoProgressBar(IntToStr(i));
    end;
  end;//with
  CloseMessage;
  ts.Free;
end;

end.


