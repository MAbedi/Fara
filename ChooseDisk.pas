unit ChooseDisk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, StdCtrls, CheckLst, DBActns, ActnList, Buttons,
  ExtCtrls, DB, ADODB, Grids, Vcl.DBGrids, ComCtrls, DBClient, Provider,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppDB, ppCache, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, Mask, Dbf, System.Actions;

type
  TChooseDiskF = class(TTemplate5F)
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
    Dbf: TDbf;
    DbfCODREC: TSmallintField;
    DbfFASL: TFloatField;
    DbfACCOUNT: TFloatField;
    DbfCHECKNO: TFloatField;
    DbfSHEETNO: TFloatField;
    DbfCODAMAL: TSmallintField;
    DbfSEQNO: TFloatField;
    DbfLDATE: TFloatField;
    DbfBALANCE: TFloatField;
    DbfAMOUNT: TFloatField;
    DbfMOJAVEZA: TStringField;
    DbfMOJAVEZS: TStringField;
    DbfOPCODA: TSmallintField;
    OpenDialog1: TOpenDialog;
    cliChecks_checked: TBooleanField;
    pnlWarning: TPanel;
    lblWarnCount: TLabel;
    lslWarnings: TListBox;
    cliChecksisId: TIntegerField;
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
  private
    DbfPath:String;
    form_Type:Integer;
    { Private declarations }
  public
    function SelectChecks(formType,SqlFilter:String;T_y_p_e:Byte;qryMaster:TADOQuery):Boolean;
    { Public declarations }
  end;

var
  ChooseDiskF: TChooseDiskF;

implementation

uses StrUtils, DM, GlobalPro, search1, sort, FormFunctions;

{$R *.dfm}
function TChooseDiskF.SelectChecks(formType,SqlFilter:String;T_y_p_e:Byte;qryMaster:TADOQuery):Boolean;
begin
  Result:=False;
  ChooseDiskF:=TChooseDiskF.Create(Application);
  try
    with ChooseDiskF do
    begin
      form_Type:=T_y_p_e;
      with qryChecks Do
      begin
        Active:=False;
        SQL.Add (SqlFilter);
        SQL.Add('AND (Forms.FormType IN ('+formType+'))  ') ;

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
              Parameters.ParamByName('NewFormID').Value:=qryMaster.fieldbyname('FormID').AsInteger;
              Parameters.ParamByName('NewFormItemID').Value:=GetANewID(nil,Self.Name,'FormItems','FormItemID',qryMaster,1);
              Parameters.ParamByName('NewRow').Value:=cliChecks.RecNo;
              Parameters.ParamByName('OldFormItemID').Value:=cliChecks.fieldbyname('FormItemID').AsInteger;
              Parameters.ParamByName('OldFormItemID1').Value:=cliChecks.fieldbyname('FormItemID').AsInteger;
//              Warn(cliChecks.fieldbyname('FormItemID').AsString);
              ExecSQL ;
            end;//with qryinsert
            next ;
          end ;//while
        end;//with
        Result:=true
      end;//if
    end;//with
  finally
    ChooseDiskF.Free;
  end;//try
end;

procedure TChooseDiskF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,6);
end;

procedure TChooseDiskF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
  if DataCol=0 then begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cliChecks_checked.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image2.Picture.Graphic)
  end;//if
end;

procedure TChooseDiskF.qryChecksAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cliChecks.Active:=False;
  cliChecks.Active:=True;
end;



procedure TChooseDiskF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key,cliChecks.FieldByName('CheckNum'));
end;

procedure TChooseDiskF.actSearchExecute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(cliChecks);
end;

procedure TChooseDiskF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cliChecks);
end;

procedure TChooseDiskF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;


procedure TChooseDiskF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TChooseDiskF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then DbfPath:=OpenDialog1.FileName;
    edtBank.Text:=ExtractFileName(DbfPath);
end;
procedure TChooseDiskF.actMatchExecute(Sender: TObject);
var
  s:String;                                                    
  infoChk:String;
begin
  if not FileExists(DbfPath) then Exit;
  with Dbf do begin
    Active:=False;
    FilePath:=ExtractFilePath(DbfPath);
    TableName:=ExtractFileName(DbfPath);
    Active:=True;
    s:=StuffString(StuffString(mskDate.Text,3,1,''),5,1,'');
    if Form_Type>50 then
      Filter:='(AMOUNT<0)and  ACCOUNT = '+Trim(mskAccount.Text)+' and LDATE <= '+s
    else
      Filter:=' ACCOUNT = '+Trim(mskAccount.Text)+' and LDATE <= '+s;
    Filtered:=True;
  end;//with
  qryChecks.Active:=True;
  with Dbf do begin
    try
      DisableControls;
      First;                             
      while not eof do begin

        if cliChecks.Locate('CheckNumber;ItemAmount',VarArrayOf([fieldbyname('CHECKNO').AsString,Abs( FieldByName('AMOUNT').AsCurrency)]),[loPartialKey]) then begin
          cliChecks.Edit;
          cliChecks.FieldByName('_Checked').AsBoolean:=True;
          cliChecks.post;
        end else begin
          pnlWarning.Visible:=True;
          infoChk:=Format(' ÔãÇÑå ˜ = %s_____ãÈáÛ ˜ = %m',[Dbf.FieldByName('CHECKNO').AsString,Dbf.FieldByName('AMOUNT').AsCurrency]);
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

procedure TChooseDiskF.edtBankKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=32 then
    SpeedButton1.Click;
end;

end.

