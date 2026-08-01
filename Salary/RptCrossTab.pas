unit RptCrossTab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, ADODB, ppModule, ppBands, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB, ppComm,
  ppRelatv, ppDBPipe, ppStrtch, ppSubRpt, DB, System.ImageList, System.Actions;

type
  TRptCrossTabF = class(Ttemplate2MDIF)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cmbRow: TComboBox;
    cmbColumn: TComboBox;
    qryInfoType: TADOQuery;
    actShow: TAction;
    BitBtn1: TBitBtn;
    qryInfoTypeFormInfoID: TIntegerField;
    qryInfoTypeInfoName_L1: TStringField;
    srcCross: TDataSource;
    qrySum: TADOQuery;
    srcSum: TDataSource;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    actSort: TAction;
    actChart: TAction;
    actSentExcel: TAction;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBGrid1: TDBGrid;
    qryCross: TADOQuery;
    actShowForms: TAction;
    BitBtn6: TBitBtn;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label4: TLabel;
    Label3: TLabel;
    procedure cmbRowChange(Sender: TObject);
    procedure actShowExecute(Sender: TObject);
    procedure cmbColumnChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actSentExcelExecute(Sender: TObject);
    procedure actChartExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actShowFormsExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    FldRow, FldRow4Show: String;
    FldColumn: String;
    FormType: Byte;
    procedure initComboBox;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptCrossTabF: TRptCrossTabF;

implementation

uses DM, GlobalPro, TreeChart, search2, sort2, main, EmployeeInfolist,
  Interdicts4Form, mdiMain;

{$R *.dfm}

procedure TRptCrossTabF.cmbRowChange(Sender: TObject);
begin
  inherited;
  case (Sender as TComboBox).ItemIndex of
    0:
      begin
        FldRow := 'sex';
        FldRow4Show := 'Sex_L1';
      end;
    1:
      begin
        FldRow := 'marriage';
        FldRow4Show := 'marriage_L1';
      end;
    2:
      begin
        FldRow := 'childNumber';
        FldRow4Show := 'childnumber_L1';
      end;
    3:
      begin
        FldRow := 'LicenceCode';
        FldRow4Show := 'licence_L1';
      end;
    4:
      begin
        FldRow := 'jobcode';
        FldRow4Show := 'JobName_L1';
      end;
    5:
      begin
        FldRow := 'OfficeCode';
        FldRow4Show := 'OfficeName_L1';
      end;
    6:
      begin
        FldRow := 'grade';
        FldRow4Show := 'grade_L1';
      end;
    7:
      begin
        FldRow := 'jobCity';
        FldRow4Show := 'jobCity_L1';
      end;
  end; // case

end;

procedure TRptCrossTabF.actShowExecute(Sender: TObject);
var
  SqlCross: String;
  SqlSum: String;
  i: Integer;
begin
  SqlCross := '';
  SqlSum := '';
  inherited;
  if cmbRow.ItemIndex = cmbColumn.ItemIndex then
  begin
    Warn('”ÿ— Ê ” Ê‰ »«Â„ »—«»—‰œ.');
    Exit;
  end;
  // -------------------------set coloum for Caption ----------------------------
  with qryInfoType do
  begin
    Active := False;
    Parameters.ParamByName('type').Value := FormType;
    Active := True;
    while not Eof do
    begin
      SqlCross := SqlCross + 'isnull(COUNT((CASE WHEN ' + FldColumn + '=' +
        Fields[0].AsString + ' THEN ' + FldColumn + ' END)),0) AS ' +
        QuotedStr(Fields[1].AsString + #254) + ',' + 'isnull(sum((CASE WHEN ' +
        FldColumn + '=' + Fields[0].AsString +
        ' THEN Interdicts.Amount END)),0) AS ' +
        QuotedStr('„»·€ ' + Fields[1].AsString) + ',';
      SqlSum := SqlSum + 'sum([' + Fields[1].AsString + ']) as ' +
        QuotedStr(Fields[0].AsString) + ',' + 'sum([„»·€ ' + Fields[1].AsString
        + ']) as ' + QuotedStr('Sum' + Fields[0].AsString) + ',';
      Next;
    end; // while
    SetLength(SqlCross, length(SqlCross) - 1);
    SetLength(SqlSum, length(SqlSum) - 1);
  end; // with

  // ------------------------------Mack Qry Cross--------------------------------
  with qryCross do
  begin
    Active := False;
    SQL.Text := 'SELECT FormsInfo.InfoName_L1 as ''⁄‰Ê«‰'',' + SqlCross + ',';
    SQL.Add('COUNT(Interdicts.InterdictID) AS '' ⁄œ«œ''');
    SQL.Add(',ISNULL(SUM(Interdicts.Amount), 0) AS ''Ã„⁄''');
    SQL.Add('FROM Pay.PersonelInfo INNER JOIN');
    SQL.Add('(SELECT Interdicts.InterdictID, Interdicts.PersonelNo, Interdicts.OfficeCode,');
    SQL.Add('Interdicts.jobCode, Interdicts.grade,');
    SQL.Add('Interdicts.jobCity, Interdicts.InterdicType, Interdicts.EmployTypeID,');
    SQL.Add('Interdicts.State, Interdicts.TotalYearsWork,');
    SQL.Add('Interdicts.TaxCalculationType, Interdicts.insuranceID, SUM');
    SQL.Add('(InterdictItems.Amount) AS Amount');
    SQL.Add('FROM Pay.FormsInfo RIGHT OUTER JOIN    Pay.PersonelInfo ON FormsInfo.FormInfoID = PersonelInfo.PersonelState RIGHT OUTER JOIN ');
    SQL.Add('   Pay.InterdictItems INNER JOIN     Pay.Interdicts ON InterdictItems.InterdictID = Interdicts.InterdictID ON PersonelInfo.PersonelNo = Interdicts.PersonelNo');
    SQL.Add('WHERE (Interdicts.State < 50) AND (InterdicType = 0 )   AND (FormsInfo.InfoID BETWEEN :PersonelStateFrom  AND  :PersonelStateTo)');
    SQL.Add('GROUP BY Interdicts.InterdictID, Interdicts.PersonelNo, Interdicts.OfficeCode,');
    SQL.Add('Interdicts.jobCode, Interdicts.grade,');
    SQL.Add('Interdicts.jobCity, Interdicts.InterdicType, Interdicts.EmployTypeID,');
    SQL.Add('Interdicts.State, Interdicts.TotalYearsWork,');
    SQL.Add('Interdicts.TaxCalculationType, Interdicts.insuranceID) Pay.Interdicts ON');
    SQL.Add('PersonelInfo.PersonelNo = Interdicts.PersonelNo INNER JOIN');
    if (cmbRow.ItemIndex in [0 .. 3]) then
      SQL.Add(' Pay.FormsInfo ON PersonelInfo.' + FldRow +
        ' = FormsInfo.FormInfoID  ')
    else
      SQL.Add(' Pay.FormsInfo ON Pay.Interdicts.' + FldRow +
        ' = FormsInfo.FormInfoID ');
    SQL.Add('GROUP BY FormsInfo.InfoID,FormsInfo.InfoName_L1');
    Parameters.ParamByName('PersonelStateFrom').Value :=
      Integer(ComboBox1.Items.Objects[ComboBox1.ItemIndex]);;
    Parameters.ParamByName('PersonelStateTo').Value :=
      Integer(ComboBox2.Items.Objects[ComboBox2.ItemIndex]);;
    Active := True;
  end; // with

  // -------------------------------Mack Qry Sum---------------------------------
  with qrySum do
  begin
    Active := False;
    SQL.Text := 'Select ''Ã„⁄ ﬂ·:'' ,' + SqlSum +
      ',sum( ⁄œ«œ) as co,sum(Ã„⁄) as Sum';
    SQL.Add('From(' + qryCross.SQL.Text + ') AS Sum');
    Parameters := qryCross.Parameters;
    Active := True;

    for i := 0 to Fields.Count - 1 do
    begin
      if (Fields[i] is TBCDField) or (Fields[i] is TCurrencyField) then
      begin
        TBCDField(Fields[i]).currency := True;
        TBCDField(qryCross.Fields[i]).currency := True;
      end; // if
      if i > 0 then
      begin
        DBGrid1.Columns[i].Visible := Fields[i].AsInteger <> 0;
        DBGrid2.Columns[i].Visible := DBGrid1.Columns[i].Visible;
      end; // if
      DBGrid1.Columns[i].ReadOnly := False;
      qryCross.Fields[i].Tag := 3;
    end; // for
  end; // with
  SetColSize(DBGrid2, 0, True, '', 100);
  SetColSize(DBGrid1, 0, True, '', 100);
end;

procedure TRptCrossTabF.cmbColumnChange(Sender: TObject);
begin
  inherited;
  case (Sender as TComboBox).ItemIndex of
    0:
      begin
        FldColumn := 'sex';
        FormType := 4
      end;
    1:
      begin
        FldColumn := 'marriage';
        FormType := 5
      end;
    2:
      begin
        FldColumn := 'childNumber';
        FormType := 6
      end;
    3:
      begin
        FldColumn := 'LicenceCode';
        FormType := 8
      end;
    4:
      begin
        FldColumn := 'jobcode';
        FormType := 13
      end;
    5:
      begin
        FldColumn := 'OfficeCode';
        FormType := 12
      end;
    6:
      begin
        FldColumn := 'grade';
        FormType := 27
      end;
    7:
      begin
        FldColumn := 'jobCity';
        FormType := 1
      end;
  end; // case
end;

procedure TRptCrossTabF.FormShow(Sender: TObject);
begin
  inherited;
  cmbRowChange(cmbRow);
  cmbColumnChange(cmbColumn);
  actShow.Execute;
end;

procedure TRptCrossTabF.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  DBGrid2.SelectedIndex := DBGrid1.SelectedIndex
end;

procedure TRptCrossTabF.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
VAR
  R: TRect;
begin
  inherited;
  R := Rect;
  DrawEdge(DBGrid2.Canvas.Handle, R, EDGE_BUMP, BF_RECT);

end;

procedure TRptCrossTabF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid2.Columns[Column.Index].Width := Column.Width;
end;

procedure TRptCrossTabF.actSentExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TRptCrossTabF.actChartExecute(Sender: TObject);
begin
  inherited;
  TreeChartF.showChart(qryCross, Self);
end;

procedure TRptCrossTabF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryCross);
end;

procedure TRptCrossTabF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryCross);
end;

procedure TRptCrossTabF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  SaveColWidth(DBGrid2);
end;

procedure TRptCrossTabF.initComboBox();
var
  FiledId: Integer;
begin
  ComboBox1.Clear;
  ComboBox2.Clear;
  FiledId := 1;
  if optP.primaryLanguage <> 0 then
    FiledId := 2;
  with DMF.qryTmpTmpp do
  begin
    Active := False;
    SQL.Text :=
      'SELECT InfoID, InfoName_L1, InfoName_L2 FROM Pay.FormsInfo WHERE (FormType = 3)ORDER BY InfoID';
    Active := True;
    while not Eof do
    begin
      ComboBox1.AddItem(Fields[FiledId].AsString, TObject(Fields[0].AsInteger));
      ComboBox2.AddItem(Fields[FiledId].AsString, TObject(Fields[0].AsInteger));
      Next;
    end; // while
    Active := False;
  end; // with
  ComboBox1.ItemIndex := 0;
  ComboBox2.ItemIndex := ComboBox2.Items.Count - 1;
end;

procedure TRptCrossTabF.FormCreate(Sender: TObject);
begin
  inherited;
  initComboBox
end;

procedure TRptCrossTabF.actShowFormsExecute(Sender: TObject);
begin
  inherited;
  case cmbRow.ItemIndex of
    0, 1, 2, 3:
      if mdiMainF.actEmployeeInfolistF.Visible then
      begin
        CreateMDIForm3(True, TEmployeeInfolistF, EmployeeInfolistF, Self);
        EmployeeInfolistF.qryEmployeeInfolist.Filter := FldRow4Show + ' like ' +
          QuotedStr(qryCross.Fields[0].AsString);
        EmployeeInfolistF.qryEmployeeInfolist.Filtered := True;
      end;
    4, 5, 6, 7:
      if mdiMainF.actInterdicts4FormF1.Visible then
      begin
        CreateMDIForm3(True, TInterdicts4FormF, Interdicts4FormF, Self, 0);
        Interdicts4FormF.qryInterdictList.Filter := FldRow4Show + ' like ' +
          QuotedStr(qryCross.Fields[0].AsString);
        Interdicts4FormF.qryInterdictList.Filtered := True;
      end;
  end; // case
  Warn('«ÿ·«⁄«  —ÊÌ ' + #10#13 + cmbRow.Text + ' ' + qryCross.Fields[0].AsString
    + #10#13 + ' ›Ì· — ‘œ.˛', mtInformation);

end;

procedure TRptCrossTabF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  actShowForms.Execute
end;

end.
