unit CalcBasedFormula2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ActnList, db, DBCtrls, ExtCtrls,
  ComCtrls, System.Actions, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient,
  Vcl.DBActns, Data.Win.ADODB;

type
  TSearchItem = class
    fieldName: String;
    caption: String;
    IsString: Boolean;
  end; // tSearchItem

  TCalcBasedFormula2F = class(TForm)
    ActionList1: TActionList;
    Action1: TAction;
    actChang: TAction;
    actChangAll: TAction;
    ProgressBar1: TProgressBar;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    srcRatingFormulas: TDataSource;
    Panel5: TPanel;
    Panel2: TPanel;
    dbmmoFormulaText: TDBMemo;
    Memo1: TMemo;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    Panel7: TPanel;
    DBGrid1: TDBGrid;
    Panel6: TPanel;
    DatasetDelete1: TDataSetDelete;
    qryRun: TADOQuery;
    Panel9: TPanel;
    cmbQryCalcBased: TDBComboBox;
    qryRankings: TADOQuery;
    qryRankingsID: TAutoIncField;
    qryRankingsRatingID: TIntegerField;
    qryRankingsRankType: TWordField;
    qryRankingsRankDate: TStringField;
    qryRankingsStuffCode: TLargeintField;
    qryRankingsPersonID: TIntegerField;
    qryRankingsRankAmount: TFloatField;
    qryRankingsProductCodeDiscount: TLargeintField;
    qryRankingsDiscountEntity: TFloatField;
    qryRankingsGrade: TWideStringField;
    qryRankingsNote: TWideStringField;
    qryRatingFormulas: TADOQuery;
    Label3: TLabel;
    DatasetCancel1: TDataSetCancel;
    DatasetPost1: TDataSetPost;
    DatasetEdit1: TDataSetEdit;
    DatasetInsert1: TDataSetInsert;
    pnlOK: TPanel;
    BitBtn8: TBitBtn;
    BitBtn7: TBitBtn;
    pnlNew: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn3: TBitBtn;
    actCalc: TAction;
    qryRatingFormulasID: TAutoIncField;
    qryRatingFormulasRowID: TWordField;
    qryRatingFormulasFormulaType: TSmallintField;
    qryRatingFormulasField_ID: TSmallintField;
    qryRatingFormulasField_Name: TStringField;
    qryRatingFormulasField_Display: TWideStringField;
    qryRatingFormulasFormulaText: TWideStringField;
    procedure FormDestroy(Sender: TObject);
    procedure actChangExecute(Sender: TObject);
    procedure actChangAllExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbmmoFormulaTextDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure dbmmoFormulaTextDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure actCalcExecute(Sender: TObject);
    procedure srcRatingFormulasStateChange(Sender: TObject);
    procedure qryRatingFormulasAfterInsert(DataSet: TDataSet);
  private
    FFormulaType: SmallInt;
    FcodeFrom, FcodeTo: Integer;
    FdateFrom, FdateTo, FcalcDate: string;
    // sitem: TSearchItem;
    form4Field: TForm;
    // fldBased: TField;
    // qryRating, qryRatingItems: TADOQuery;
    qryRanking2: TADOQuery;
    procedure ShowForms();
    procedure MakeChang;
    procedure FindRankings;
    procedure Caclf(FormulaText: string);
    procedure assignCombo;

    { Private declarations }
  public
    procedure ShowCalc(qry: TADOQuery; FormulaType, CodeFrom, CodeTo: Integer;
      dateFrom, dateTo, CalcDate: string);
  published
    { Public declarations }
  end;

var
  CalcBasedFormula2F: TCalcBasedFormula2F;

implementation

uses GeneralDM, GlobalPro, FaraConsts, GetFaraFields, DM;

{$R *.DFM}

procedure TCalcBasedFormula2F.ShowCalc(qry: TADOQuery;
  FormulaType, CodeFrom, CodeTo: Integer; dateFrom, dateTo, CalcDate: string);
begin
  if CalcBasedFormula2F = nil then
    CalcBasedFormula2F := TCalcBasedFormula2F.Create(Application);
  with CalcBasedFormula2F do
  begin
    FFormulaType := FormulaType;
    FcodeFrom := CodeFrom;
    FcodeTo := CodeTo;
    FdateFrom := dateFrom;
    FdateTo := dateTo;
    FcalcDate := CalcDate;
    qryRanking2 := qry;
    form4Field := TForm(qry.Owner);
    With qryRatingFormulas do
    begin
      Active := False;
      Parameters.ParamByName('FormulaType').Value := FormulaType;
      Active := True;
    end;
    // with qryRanking do
    // begin
    // // Close;
    // // Parameters.ParamByName('RankDate').Value := CalcDate;
    // Open;
    // end;
    CalcBasedFormula2F.ShowForms();
  end;
end;

procedure TCalcBasedFormula2F.FormDestroy(Sender: TObject);
// var
// i: Integer;
begin
  // for i := 0 to cmbAllField.Items.Count - 1 do
  // cmbAllField.Items.Objects[i].Free;
  // for i := 0 to cmbBaseField.Items.Count - 1 do
  // cmbBaseField.Items.Objects[i].Free;
end;

procedure TCalcBasedFormula2F.assignCombo;
var
  i: Integer;
  sitem: TSearchItem;
begin
  cmbQryCalcBased.Clear;
  with DMf.qryTmpTmp do
  begin
    Close;
    SQL.Text := 'SELECT name';
    SQL.Add('FROM sys.sysobjects');
    SQL.Add('WHERE (xtype IN (N''FN'', N''IF'', N''TF''))');

    case FFormulaType of
      1:
        SQL.Add('AND (name LIKE N''%Fn_CBF_Customer%'')');
      0:
        SQL.Add('AND (name LIKE N''%Fn_CBF_StuffCode%'')');
    else
      SQL.Add('AND (name LIKE N''%Fn_CBF_%'')');
    end;
    Open;
    First;
    while not Eof do
    begin
      cmbQryCalcBased.Items.Add(Fields[0].AsString);
      Next;
    end;
    Close;
  end;
  if cmbQryCalcBased.Items.Count > 0 then
    cmbQryCalcBased.ItemIndex := 0;
end;

procedure TCalcBasedFormula2F.BitBtn1Click(Sender: TObject);
begin
  TGetFaraFieldsF.Execute(dbmmoFormulaText, BitBtn1.ClientOrigin.X +
    BitBtn1.Width, BitBtn1.ClientOrigin.Y, form4Field);
end;

procedure TCalcBasedFormula2F.dbmmoFormulaTextDragDrop(Sender, Source: TObject;
  X, Y: Integer);
begin
  inherited;
  TGetFaraFieldsF.EditDragDrop(Sender, Source, False, True);
end;

procedure TCalcBasedFormula2F.dbmmoFormulaTextDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  TGetFaraFieldsF.EditDragOver(Sender, Source, X, Y, Accept);
end;

procedure TCalcBasedFormula2F.ShowForms();
begin
  with CalcBasedFormula2F do
  begin
    try
      assignCombo;
      SetKeyboardLatin;
      ShowModal;
    finally
      if qryRatingFormulas.State in dsEditModes then
        qryRatingFormulas.Post;
    end;
  end;
end;

procedure TCalcBasedFormula2F.srcRatingFormulasStateChange(Sender: TObject);
begin
  pnlOK.Visible := srcRatingFormulas.State in dsEditModes;
  pnlNew.Visible := not pnlOK.Visible;
end;

procedure TCalcBasedFormula2F.actChangExecute(Sender: TObject);
begin
  FindRankings;
  MakeChang;
end;

procedure TCalcBasedFormula2F.FindRankings;
var
  s: string;
begin
  With qryRanking2 do
  begin
    if RecordCount > 0 then
    begin
      if get_response('محاسبه انجام شده است' + #13#10 +
        'برای محاسبه دوباره اطمینان دارید') = mrYes then
      begin
        while not Eof do
          Delete;
      end
      else
        Abort;
    end;
  end;
end;

procedure TCalcBasedFormula2F.MakeChang;
begin
  // with qryRankings do
  // try
  // Insert;
  // if qryRating.FieldByName('CalcType').AsInteger = 0 then
  // begin
  // FieldByName('PersonID').AsLargeInt :=
  // qryBase.FieldByName(fldBased.Value).AsLargeInt;
  // qryRankingsRankType.AsInteger := 1;
  // end
  // else
  // begin
  // FieldByName('StuffCode').AsLargeInt :=
  // qryBase.FieldByName(fldBased.Value).AsLargeInt;
  // qryRankingsRankType.AsInteger := 0;
  // end;
  //
  // qryRankingsRatingID.AsInteger := qryRating.FieldByName('RatingID')
  // .AsInteger;
  //
  // qryRatingFormulas.DisableControls;
  // qryRatingFormulas.First;
  // while not qryRatingFormulas.Eof do
  // begin
  // Caclf(qryRatingFormulasFormulaText.AsString);
  // qryRatingFormulas.Next;
  // end;
  // Post;
  // finally
  // qryRatingFormulas.EnableControls;
  //
  // end;

end;

procedure TCalcBasedFormula2F.qryRatingFormulasAfterInsert(DataSet: TDataSet);
begin
  qryRatingFormulasFormulaType.AsInteger := FFormulaType;
end;

procedure TCalcBasedFormula2F.Caclf(FormulaText: string);
// var
// s, Grade: string;
// i: Integer;
// OldCalcBase, r: Real48;
// b: Boolean;
begin
  // s := FormulaText;
  // for i := 0 to qryBase.Fields.Count - 1 do
  // begin
  // if pos(qryBase.Fields[i].fieldName, s) > 0 then
  // s := StringReplace(s, qryBase.Fields[i].fieldName,
  // FloatToStr(qryBase.Fields[i].AsFloat), [rfReplaceAll]);
  // end;
  //
  // With qryRun do
  // try
  // Active := False;
  // SQL.Text := 'SELECT ' + s;
  // Active := True;
  // r := qryRun.Fields[0].AsFloat;
  // finally
  // end;
  //
  // With qryRatingItems do
  // try
  // DisableControls;
  // First;
  // OldCalcBase := FieldByName('CalcBase').AsFloat;
  // Grade := FieldByName('Grade').AsString;
  // while not Eof do
  // begin
  // if r >= FieldByName('CalcBase').AsFloat then
  // begin
  // OldCalcBase := FieldByName('CalcBase').AsFloat;
  // b := r = FieldByName('CalcBase').AsFloat;
  // if b then
  // Grade := FieldByName('Grade').AsString;
  // Next;
  // if not b then
  // Grade := FieldByName('Grade').AsString;
  // end
  // else
  // Break;
  // end;
  // r := Round((r - OldCalcBase) * FieldByName('CalcCo').AsFloat +
  // FieldByName('CalcConst').AsFloat);
  // qryRankings.FieldByName(qryRatingFormulasField_Name.AsString)
  // .AsFloat := r;
  // qryRankings.FieldByName('Grade').AsString := Grade;
  //
  // finally
  // EnableControls;
  // end;

end;

procedure TCalcBasedFormula2F.actCalcExecute(Sender: TObject);
var
  txt: string;
begin
  // txt:='select code , aAmount from (';
  // txt:= txt+char(13)+' select code , '+qryRatingFormulasFormulaText.AsString+ ' as aAmount';
  // txt:= txt+char(13)+' from ( select * from '+cmbQryCalcBased.Text+' ()) qry ) Calc';
  // txt:= txt+char(13)+' inner join Ratings r on (Calc.Code between r.CodeFrom and r.CodeTo)';
  // txt:= txt+char(13)+' and (RunDate=(select MAX(RunDate)from Ratings where Calc.Code between CodeFrom and CodeTo))';
  // txt:= txt+char(13)+' inner join RatingItems ri on (r.RatingID = ri.RatingID) and (Calc.aAmount>ri.CalcBase)';

  txt := 'select temp.code , temp.aAmount, ri.CalcConst+(temp.aAmount-ri.CalcBase)*ri.CalcCo as Score, ri.Grade from (';
  txt := txt + char(13) + ' select Calc.code , ' +
    qryRatingFormulasFormulaText.AsString + ' as aAmount, r.RatingID from (';
  txt := txt + char(13) + ' select * from ' + cmbQryCalcBased.Text + '(' +
    FcodeFrom.ToString + ',' + FcodeTo.ToString + ')) Calc ';
  txt := txt + char(13) +
    ' inner join Ratings r on (Calc.code between r.CodeFrom and r.CodeTo) ';
  txt := txt + char(13) +
    ' and (RunDate=(select MAX(RunDate)from Ratings where (Calc.code between CodeFrom and CodeTo) and (CalcKind = '
    + FFormulaType.ToString + ') and (RunDate<=' + QuotedStr(FcalcDate)
    + '))) ';
  txt := txt + char(13) + ' where (r.CalcKind = ' + FFormulaType.ToString +
    ') ) temp inner join RatingItems ri on (temp.RatingID = ri.RatingID) and (ri.CalcBase= ';
  txt := txt + char(13) +
    ' (select MAX(CalcBase)from RatingItems where (temp.RatingID = RatingItems.RatingID) and (temp.aAmount>RatingItems.CalcBase)))';
  with qryRun do
  begin
    Close;
    SQL.Text := txt;
    Open;
    FindRankings;
    while not Eof do
    begin
      qryRanking2.Append;
      qryRanking2.FieldByName('RankType').AsInteger := FFormulaType;
      if FFormulaType = 0 then
      begin
        qryRanking2.FieldByName('StuffCode').AsLargeInt :=
          qryRun.FieldByName('code').AsLargeInt;
        qryRanking2.FieldByName('PersonID').AsInteger := 0;
      end
      else
      begin
        qryRanking2.FieldByName('StuffCode').AsLargeInt := 0;
        qryRanking2.FieldByName('PersonID').AsInteger :=
          qryRun.FieldByName('code').AsInteger;
      end;
      qryRanking2.FieldByName('RankDate').AsString := FcalcDate;
      qryRanking2.FieldByName('Rate').AsFloat :=
        qryRun.FieldByName('Score').AsFloat;
      qryRanking2.FieldByName('RankAmount').AsFloat :=
        qryRun.FieldByName('aAmount').AsFloat;
      qryRanking2.FieldByName('Grade').AsString :=
        qryRun.FieldByName('Grade').AsString;
      qryRanking2.Post;

      Next;
    end;
  end;
end;

procedure TCalcBasedFormula2F.actChangAllExecute(Sender: TObject);
// var
// DoWhile: Boolean;
begin
  // FindRankings;
  //
  // DoWhile := True;
  // with qryBase do
  // begin
  // if RecordCount > 0 then
  // ProgressBar1.Max := RecordCount;
  // First;
  // while (not Eof and DoWhile) do
  // begin
  // MakeChang;
  // If LastKeyPressed = VK_ESCAPE then
  // if get_response('عمليات متوقف شود؟') = mrYes then
  // begin
  // DoWhile := False;
  // LastKeyPressed := 0;
  // end;
  // LastKeyPressed := 0;
  // ProgressBar1.StepIt;
  // Application.ProcessMessages;
  // Next;
  // end;
  // end; // with
  // ProgressBar1.Position := 0;
end;

end.
