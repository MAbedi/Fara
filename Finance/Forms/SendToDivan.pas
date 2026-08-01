unit SendToDivan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ActnList, Buttons, DB, ADODB,
  ComCtrls, Menus, Grids, Vcl.DBGrids, ExtDlgs, DBActns, System.Actions;

type
  TSendToDivanF = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel6: TPanel;
    Panel4: TPanel;
    pnlSheet: TPanel;
    cmbSheetName: TComboBox;
    Label4: TLabel;
    ActionList1: TActionList;
    actOpenExcel: TAction;
    actMove: TAction;
    actClose: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label5: TLabel;
    ProgressBar1: TProgressBar;
    MainMenu1: TMainMenu;
    OpenPictureDialog1: TOpenPictureDialog;
    qryExcel2: TADOQuery;
    btn1: TButton;
    dtstpst1: TDataSetPost;
    qry1: TADOQuery;
    pnl1: TPanel;
    pnl2: TPanel;
    lstExcel: TListBox;
    Label3: TLabel;
    RadioExcel: TRadioGroup;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    grp1: TGroupBox;
    mem1: TMemo;
    procedure actOpenExcelExecute(Sender: TObject);
    procedure cmbSheetNameChange(Sender: TObject);
    procedure actMoveExecute(Sender: TObject);
    procedure addLinkExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    aQry: TDataSet;
    procedure ExcelToList(Fname: String = '');
    procedure sendtoAccVoucher(FUName: string);
    procedure sendtoAccGroupsCode;
    procedure sendtoGeneralAccCode;
    procedure sendtoprotocol(sheet:string);
    procedure getforexcel(FUNname: string);
    { Private declarations }
  public
    procedure ShowImPortExcel();
    { Public declarations }
  end;

var
  SendToDivanF: TSendToDivanF;

implementation

uses GlobalPro, GeneralDM, Dm;

{$R *.dfm}

procedure TSendToDivanF.actOpenExcelExecute(Sender: TObject);
begin
  with TOpenDialog.Create(Self) do
    try
      Filter := 'Excel|*.xlsx;*.xls|All|*.*';
      if Execute and (FileName <> EmptyStr) then
        ExcelToList(FileName)
    finally
      // SaveConfig('', aQry.Owner.Name + aQry.Name + '_Filepath', FileName);
      Free;
    end;
end;

procedure TSendToDivanF.btn1Click(Sender: TObject);
var
  i,j: Integer;
  Fname: string;
begin
  for i := 0 to lstExcel.Items.Count - 1 do
  begin
//    case lstExcel.Items[i] of
//      Protocol_ID:
//        Sendtoprotocol(Protocol_ID);
//      AccVoucher:
//        getforexcel(AccVoucher);
//      AccGroupsCode:
//        getforexcel(AccGroupsCode);
//      GeneralAccCode:
//        getforexcel(GeneralAccCode);
//      LedgerAccCode:
//        getforexcel(LedgerAccCode);
//      DetailedAccCode1:
//        getforexcel(DetailedAccCode1);
//      DetailedAccCode2:
//        getforexcel(DetailedAccCode2);
//      DetailedAccCode3:
//        getforexcel(DetailedAccCode3);
//      DetailedAccCode4:
//        getforexcel(DetailedAccCode4);
//      DetailedAccCode5:
//        getforexcel(DetailedAccCode5)CostCenter: getforexcel(CostCenter);
//      Organization:
//        getforexcel(Organization);
//      plan:
//        getforexcel(plan);
//      project_:
//        getforexcel(project_);
//      Income:
//        getforexcel(Income);
//      BankAccount:
//        getforexcel(BankAccount);
//      AccountFlow:
//        getforexcel(AccountFlow);
//      Acc_Groups_Balance:
//        getforexcel(Acc_Groups_Balance);
//      GnrlBalance:
//        getforexcel(GnrlBalance);
//      MoeenBalance:
//        getforexcel(MoeenBalance);
//      NoteStatement:
//        getforexcel(NoteStatement);
//    end; // case
    while not qry1.Eof do
    begin
      qryExcel2.Insert;
      for j := 0 to qryExcel2.FieldCount - 1 do
      begin
        Fname := qryExcel2.Fields[j].FieldName;
        if qry1.FindField(Fname) <> nil then
          qryExcel2.Fields[j].AsString := qry1.FieldByName(Fname).AsString
        else
          qryExcel2.Fields[j].AsString := '0';
      end;
      qryExcel2.Post;
      qry1.Next;
    end;
    qry1.Free;

  end;

end;

procedure TSendToDivanF.cmbSheetNameChange(Sender: TObject);
begin
  with qryExcel2 do
  begin
    Close;
    SQL.Text := 'select * from [' + cmbSheetName.Items
      [cmbSheetName.ItemIndex] + ']';
    Open;
    qryExcel2.GetFieldNames(lstExcel.Items);
  end;

  // MessageDlg(qryExcel.ConnectionString, mtWarning, [mbOK], 0);
end;

procedure TSendToDivanF.ShowImPortExcel();
var
  i: Byte;
  S: String;
begin
  with TSendToDivanF.Create(Application) do
    try
      // Qry.DisableControls;
      // with Qry do
      // For I := 0 to FieldCount - 1 do
      // begin
      // if (Fields[I].DisplayLabel <> Fields[I].FieldName) and
      // (Fields[I].DisplayLabel <> EmptyStr) and
      // (Fields[I].FieldKind in [fkData]) or
      // ((Fields[I].Tag and 2) <> 0) then
      // lstQry.AddItem(Fields[I].DisplayLabel, TObject(Fields[I].Index));
      // Next;
      // end;
      // Qry.EnableControls;
      // aQry := Qry;
      // S := ReadConfig('', aQry.Owner.Name + aQry.Name + '_Filepath', '');
      if not FileExists(S) then
        S := EmptyStr;
      if S <> EmptyStr then
        ExcelToList(S);
      ShowModal;
    finally

      Free;
    end;
end;

procedure TSendToDivanF.actMoveExecute(Sender: TObject);
var
  i: Integer;
  DoWhile: Boolean;
  aField: TField;
begin
  // DoWhile := True;
  // qryExcel.Open;
  // qryExcel.First;
  // ProgressBar1.Min := 0;
  // ProgressBar1.Max := qryExcel.RecordCount;
  // aQry.DisableControls;
  // lblCount.Visible := True;
  // try
  // while (qryExcel.Fields[0].AsString <> EmptyStr) and
  // (not qryExcel.eof and DoWhile) do
  // with aQry do
  // begin
  // Append;
  // for I := 0 to qryExcel.FieldCount - 1 do
  // begin
  // if qryExcel.Fields[I].DefaultExpression <> EmptyStr then
  // begin
  /// /            if not (aQry.State in [dsInsert]) then
  // //            aQry.Edit;
  // aField := aQry.FieldByName(qryExcel.Fields[I].DefaultExpression);
  // if ((aField is TBCDField) or (aField is TCurrencyField)) and
  // (TBCDField(aField).Currency) then
  // aField.AsLargeInt := Round(qryExcel.Fields[I].AsVariant)
  // else
  // aField.AsString := Trim(qryExcel.Fields[I].AsString);
  // end;
  // end;
  // Post;
  // lblCount.Caption := '—œÌ›:˛' + IntToStr(aQry.RecNo);
  // If LastKeyPressed = VK_ESCAPE then
  // if get_response('⁄„·Ì«  „ Êﬁ› ‘Êœø') = mrYes then
  // begin
  // DoWhile := False;
  // LastKeyPressed := 0;
  // end;
  // LastKeyPressed := 0;
  // qryExcel.Next;
  // ProgressBar1.StepIt;
  // Application.ProcessMessages;
  // end;
  // finally
  // ProgressBar1.Position := 100;
  // aQry.EnableControls;
  // Warn('«‰ ﬁ«· «‰Ã«„ ‘œ.˛', mtInformation);
  // lblCount.Visible := False;
  // end
end;

procedure TSendToDivanF.addLinkExecute(Sender: TObject);
var
  i, INDX: Integer;
begin
  // lstResult.Clear;
  // for I := 0 to lstExcel.Count - 1 do
  // begin
  // INDX := lstQry.Items.IndexOf(lstExcel.Items[I]);
  // lstExcel.Selected[I] := True;;
  // if INDX <> -1 then
  // begin
  // lstQry.Selected[INDX] := True;
  // AddToList(lstResult);
  // end;
  // end;
end;

procedure TSendToDivanF.ExcelToList(Fname: String = '');
var
  S: String;
begin
  if ExtractFileExt(Fname) = '.xlsx' then
    S := Format('Provider=Microsoft.ACE.OLEDB.12.0;Data Source=%s;' +
      'Extended Properties=excel 12.0;Persist Security Info=False', [Fname])

  else
    S := Format('Provider=Microsoft.Jet.OLEDB.4.0;Data Source=%s;' +
      'Extended Properties=excel 8.0;Persist Security Info=False', [Fname]);

  Caption := Fname;
  with TADOConnection.Create(Self) do
    try
      Close;
      ConnectionString := S;
      LoginPrompt := False;
      Open;
      GetTableNames(lstExcel.Items);
      // pnlSheet.Visible := cmbSheetName.Items.Count > 1;
      // if pnlSheet.Visible then
      // cmbSheetName.ItemIndex := 0;
    finally
      // SaveConfig('', aQry.Owner.Name + aQry.Name + '_Filepath', EmptyStr);
      Free;
    end;
  with qryExcel2 do
  begin
    Close;
    ConnectionString := S;
    // SQL.Text := 'select * from [' + cmbSheetName.Items[0] + ']';
    Open;
    // qryExcel2.GetFieldNames(lstExcel.Items);
  end;
end;

procedure TSendToDivanF.actCloseExecute(Sender: TObject);
begin
  Close
end;

procedure TSendToDivanF.sendtoAccVoucher(FUName: string);
var
  i: Integer;
  Fname: string;
begin
  with qry1 do
  begin
    Close;
    SQL.Text := 'select * from ' + FUName + ' (:Year ,:CompanyCode)';
    // Acc.Divan_Hazine_AccVoucher
    Parameters.ParamByName('Year').Value := APPBank.Year;
    Parameters.ParamByName('CompanyCode').Value := opta.DefaultCompany;
    Open;
    First;
    while not Eof do
    begin
      qryExcel2.Insert;
      for i := 0 to qryExcel2.FieldCount - 1 do
      begin
        Fname := qryExcel2.Fields[i].FieldName;
        if qry1.FindField(Fname) <> nil then
          qryExcel2.Fields[i].AsString := qry1.FieldByName(Fname).AsString
        else
          qryExcel2.Fields[i].AsString := '0';
      end;
      qryExcel2.Post;
      qry1.Next;
    end;
    qry1.Free;
  end;
end;

procedure TSendToDivanF.sendtoAccGroupsCode;
var
  i: Integer;
  Fname: string;
begin
  with qry1 do
  begin
    Close;
    SQL.Text :=
      'select acc.Categories.TopicCode as AccGroupsCode,acc.Categories.MoeenName_L1 as AccGroupsTitle,';
    SQL.Add('acc.Categories.BudgetTopicID as DivanAccGroupsCode');
    SQL.Add('from acc.Categories');
    SQL.Add('where acc.Categories.LevelID=1');
    Open;
    First;
    while not Eof do
    begin
      qryExcel2.Insert;
      for i := 0 to qryExcel2.FieldCount - 1 do
      begin
        Fname := qryExcel2.Fields[i].FieldName;
        if qry1.FindField(Fname) <> nil then
          qryExcel2.Fields[i].AsString := qry1.FieldByName(Fname).AsString
        else
          qryExcel2.Fields[i].AsString := '0';
      end;
      qryExcel2.Post;
      qry1.Next;
    end;
    qry1.Free;
  end;
end;

procedure TSendToDivanF.sendtoGeneralAccCode;
begin
  with qry1 do
  begin
    Close;
    SQL.Text :=
      'select acc.Categories.TopicCode as GnrlAccCode,acc.Categories.MoeenName_L1 as GnrlAccTitle,acc.Categories.BudgetTopicID as DivanGnrlAccCode';
    SQL.Add('from acc.Categories where acc.Categories.LevelID=2');
    Open;
    First;
  end;
end;

procedure TSendToDivanF.sendtoprotocol(sheet:string);
begin
with qryExcel2 do
begin
  Close;
  SQL.Text:='select * from '+sheet+'';
  Open;
  FieldByName('OrgCode').Value:=edt1.Text;
  FieldByName('DivanOrgCode').Value:=edt2.Text;
  FieldByName('OrgTitle').Value:=edt3.Text;
  FieldByName('ProvinceName').Value:=edt4.Text;
  FieldByName('ProducerName').Value:=edt5.Text;
  FieldByName('ProducerRole').Value:=edt6.Text;
  FieldByName('Description_').Value:=mem1.Text;
  if RadioExcel.ItemIndex = 0 then
  FieldByName('ProtocolName').Value:='AcT';
  //
  //
  //
end;

end;

procedure TSendToDivanF.getforexcel(FUNname: string);
var
  FUNname2: string;
begin
  with qryExcel2 do
  begin
    Close;
    SQL.Text := 'select * from [' + FUNname + ']';
    Open;
  end;
  if RadioExcel.ItemIndex = 0 then
    FUNname2 := 'Acc.Divan_Tamalok' + FUNname
  else if RadioExcel.ItemIndex = 1 then
    FUNname2 := 'Acc.Divan_Sherkat' + FUNname
  else if RadioExcel.ItemIndex = 2 then
    FUNname2 := 'Acc.Divan_Hazine' + FUNname;

  with qry1 do
  begin
    Close;
    SQL.Text := 'select * from ' + FUNname2 + ' (:Year ,:CompanyCode)';
    // Acc.Divan_Hazine_AccVoucher
    Parameters.ParamByName('Year').Value := APPBank.Year;
    Parameters.ParamByName('CompanyCode').Value := opta.DefaultCompany;
    Open;
    First;

  end;

end;

end.
