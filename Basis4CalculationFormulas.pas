unit Basis4CalculationFormulas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBActns, System.Actions, Vcl.ActnList;

type
  TBasis4CalculationFormulasF = class(TForm)
    qryBasis4Calculations: TADOQuery;
    qryBasis4CalculationFormulas: TADOQuery;
    srcBasis4CalculationFormulas: TDataSource;
    srcBasis4Calculations: TDataSource;
    qryBasis4CalculationFormulasBasis4CalculationFormulaID: TIntegerField;
    qryBasis4CalculationFormulasBasis4CalculationFormulaNote: TWideStringField;
    qryBasis4CalculationFormulasCalc4FieldName: TStringField;
    qryBasis4CalculationFormulasBasis4CalculationFormulaTxt: TWideStringField;
    qryBasis4CalculationsBasis4CalculationID: TIntegerField;
    qryBasis4CalculationsBasis4CalculationCaption: TWideStringField;
    qryBasis4CalculationsFormName: TStringField;
    qryBasis4CalculationsFormRow: TWordField;
    qryBasis4CalculationsCalcFieldKind: TIntegerField;
    qryBasis4CalculationsCalcOnChange: TStringField;
    qryBasis4CalculationsBasis4CalculationFormulaID: TIntegerField;
    Panel2: TPanel;
    ImgTemplate: TImage;
    lblCaption: TLabel;
    PnlUnderButton: TPanel;
    BtnReject: TBitBtn;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    dbmmoBasis4CalculationFormulaTxt: TDBMemo;
    DBGrid2: TDBGrid;
    ActionList: TActionList;
    actExit: TAction;
    DataSetInsert1: TDataSetInsert;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    actSearch_: TAction;
    DataSetDelete1_: TDataSetDelete;
    actshowChart: TAction;
    actSmsSend: TAction;
    actManagGridColumns: TAction;
    DataSetInsert2: TDataSetInsert;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    DataSetDelete2: TDataSetDelete;
    Panel4: TPanel;
    newPanelf: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BtnExcel: TBitBtn;
    okPanelf: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Panel3: TPanel;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    DBNavigator1: TDBNavigator;
    qryBasis4CalculationsBasis4CalculationNote: TWideStringField;
    procedure qryBasis4CalculationsAfterInsert(DataSet: TDataSet);
    procedure srcBasis4CalculationsStateChange(Sender: TObject);
    procedure qryBasis4CalculationFormulasAfterInsert(DataSet: TDataSet);
    procedure BtnExcelClick(Sender: TObject);
    procedure qryBasis4CalculationsAfterPost(DataSet: TDataSet);
    procedure BitBtn11Click(Sender: TObject);
    procedure srcBasis4CalculationFormulasStateChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    sFormName: string;
    { Private declarations }
  public
    procedure ShowColumns(MyForm: TForm);
    { Public declarations }
  end;

var
  Basis4CalculationFormulasF: TBasis4CalculationFormulasF;

implementation

uses
  FaraConsts, DM, GetExcel, MMESSAGE, GlobalPro;

{$R *.dfm}

procedure TBasis4CalculationFormulasF.BitBtn11Click(Sender: TObject);
begin
  try
    qryBasis4Calculations.AfterPost := nil;
    GetExcelF.ShowImPortExcel(qryBasis4Calculations);
  finally
    qryBasis4Calculations.AfterPost := qryBasis4CalculationsAfterPost;
  end;
end;

procedure TBasis4CalculationFormulasF.BtnExcelClick(Sender: TObject);
begin
  try
    qryBasis4CalculationFormulas.AfterPost := nil;
    GetExcelF.ShowImPortExcel(qryBasis4CalculationFormulas);
  finally
    qryBasis4CalculationFormulas.AfterPost := qryBasis4CalculationsAfterPost;
  end;
end;

procedure TBasis4CalculationFormulasF.FormDestroy(Sender: TObject);
begin
  SaveColWidth(DBGrid2);
  SaveColWidth(DBGrid1);
end;

procedure TBasis4CalculationFormulasF.FormResize(Sender: TObject);
begin
  SetColSize(DBGrid2, 2);
  SetColSize(DBGrid1, 1);
end;

procedure TBasis4CalculationFormulasF.qryBasis4CalculationFormulasAfterInsert
  (DataSet: TDataSet);
begin
  DataSet.FieldByName('Basis4CalculationFormulaID').AsInteger :=
    GetANewCode(Self.Name, 'Util.Basis4CalculationFormulas',
    'Basis4CalculationFormulaID');
end;

procedure TBasis4CalculationFormulasF.qryBasis4CalculationsAfterInsert
  (DataSet: TDataSet);
begin
  DataSet.FieldByName('CalcFieldKind').Value := 0;
  DataSet.FieldByName('FormName').Value := sFormName;
  DataSet.FieldByName('Basis4CalculationID').AsInteger :=
    GetANewCode(Self.Name, 'Util.Basis4Calculations', 'Basis4CalculationID');
end;

procedure TBasis4CalculationFormulasF.qryBasis4CalculationsAfterPost
  (DataSet: TDataSet);
begin
  BigMessage('À»  ‘œ.', 1);
end;

procedure TBasis4CalculationFormulasF.ShowColumns(MyForm: TForm);
begin
  Basis4CalculationFormulasF := TBasis4CalculationFormulasF.Create(Application);
  try
    with Basis4CalculationFormulasF do
    begin
      sFormName := MyForm.Name;
      With qryBasis4Calculations do
      begin
        Active := False;
        if NOT User.PowerUser then
        begin
          SQL.Text := 'SELECT DISTINCT 0 AS Basis4CalculationID,';
          SQL.Add(' Basis4CalculationCaption, FormName, FormRow,');
          SQL.Add(' CalcFieldKind, '''' AS');
          SQL.Add('CalcOnChange, 0 AS Basis4CalculationFormulaID, Basis4CalculationNote');
          SQL.Add('FROM Util.Basis4Calculations');
          SQL.Add('WHERE (FormName = :FormName )');
          LockType := ltReadOnly;
          qryBasis4CalculationFormulas.LockType := ltReadOnly;
          Panel1.Visible:=False;
          Panel3.Visible:=False;
        end;
        Connection := theMainConnection;
        Parameters.ParamByName('FormName').Value := sFormName;
        Active := True;
      end;
      With qryBasis4CalculationFormulas do
      begin
        Connection := theMainConnection;
        Active := True;
      end;
      ShowModal;

    end;
  finally
    FreeAndNil(Basis4CalculationFormulasF);
  end;
end;

procedure TBasis4CalculationFormulasF.srcBasis4CalculationFormulasStateChange
  (Sender: TObject);
begin
  okPanelf.Visible := qryBasis4CalculationFormulas.state in dsEditModes;
  newPanelf.Visible := not okPanelf.Visible;
  BtnReject.Cancel := newPanelf.Visible;
  FreeReservedCodes(DMf.adcBsell, '', '', Self.Name);
end;

procedure TBasis4CalculationFormulasF.srcBasis4CalculationsStateChange
  (Sender: TObject);
begin
  okPanel.Visible := qryBasis4Calculations.state in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  BtnReject.Cancel := newPanel.Visible;
  FreeReservedCodes(DMf.adcBsell, '', '', Self.Name);
end;

end.
