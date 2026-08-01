// mahmood 88/05/22
unit CheckCycle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template0, StdCtrls, Buttons, ExtCtrls, ActnList,db, ComCtrls,
  Grids, Vcl.DBGrids, ADODB, Mask, SumDBGrid, System.Actions;

type
  TCheckCycleF = class(Ttemplate0F)
    okPanel2: TPanel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    ActionList1: TActionList;
    actOk: TAction;
    actCancel: TAction;
    Panel1: TPanel;
    dsCheckCycle: TDataSource;
    DBGrid1: TDBGrid;
    qryCheckCycle: TADOQuery;
    qryCheckCycleCheckNumber: TStringField;
    qryCheckCycleCheckDate: TStringField;
    qryCheckCycleFormCaption: TStringField;
    qryCheckCycleBankName: TStringField;
    qryCheckCycleItemAmount: TBCDField;
    qryCheckCycleCustomerID2: TIntegerField;
    qryCheckCycleCustomerID1: TIntegerField;
    qryCheckCycleformsCustomerID2: TIntegerField;
    qryCheckCycleFormNumber: TIntegerField;
    qryCheckCycleFormDate: TStringField;
    qryCheckCycleFormState: TWordField;
    qryCheckCycleItemNote: TStringField;
    qryCheckCycleAccountNumber: TStringField;
    qryCheckCycleCustName: TStringField;
    qryCheckCycleCustName_1: TStringField;
    qryCheckCycleCustName_2: TStringField;
    qryCheckCycleAmount: TBCDField;
    qryCheckCycleFormType: TWordField;
    qryCheckCycleFirstUser: TStringField;
    qryCheckCycleLastUser: TStringField;
    qryCheckCycle_row: TIntegerField;
    qryCheckCycleFormID: TIntegerField;
    qryCheckCycleAidInfoNo: TStringField;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    medtNumberFrom: TMaskEdit;
    medtNumberTo: TMaskEdit;
    SumGrid1: TSumGrid;
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure medtNumberFromChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure medtNumberToChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure qryCheckCycleFormStateGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FormDestroy(Sender: TObject);
  private
    procedure UpDateList;
    { Private declarations }
  public
    function enter(CheckNumber:Integer):string;
    { Public declarations }
  end;

var
  CheckCycleF: TCheckCycleF;

implementation

uses   GlobalPro, FormFunctions, DM;


{$R *.dfm}

procedure TCheckCycleF.actOkExecute(Sender: TObject);
begin
  inherited;
  CheckCycleF.Close;
end;

function TCheckCycleF.enter(CheckNumber:Integer):string;
begin
  CheckCycleF:=TCheckCycleF.Create(Application);
  try
    with CheckCycleF do
    begin
      UpDateList;
      ShowModal;
    end;//with
  finally
    FreeAndNil(CheckCycleF);
  end;//try
end;

procedure TCheckCycleF.UpDateList;
begin
  With qryCheckCycle do
  begin
    Active:=False;
    Parameters.ParamByName('CheckNumberfrom').Value:=medtNumberFrom.Text;
    Parameters.ParamByName('CheckNumberto').Value:=medtNumberTo.Text;
    Active:=True;
  end;// With
end;

procedure TCheckCycleF.actCancelExecute(Sender: TObject);
begin
  inherited;
  CheckCycleF.Close;
end;

procedure TCheckCycleF.medtNumberFromChange(Sender: TObject);
begin
  inherited;
  medtNumberTo.Text:=medtNumberFrom.Text;
  UpDateList
end;

procedure TCheckCycleF.FormCreate(Sender: TObject);
begin
  inherited;
  with DMf.qryTmpTmp do
  begin
    Active:=false;
    SQL.Text:='SELECT MIN(CheckNumber) AS MINCheckNumber,MAX(CheckNumber) AS MAXCheckNumber '+
              'FROM FormItems';
    Active:=true;
    medtNumberFrom.Text:=Fieldbyname('MINCheckNumber').AsString;
    medtNumberTo.Text:=Fieldbyname('MaxCheckNumber').AsString;
  end;
end;

procedure TCheckCycleF.medtNumberToChange(Sender: TObject);
begin
  inherited;
  UpDateList
end;

procedure TCheckCycleF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,3);
end;

procedure TCheckCycleF.qryCheckCycleFormStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:=GetFormState(Sender.AsInteger)
end;

procedure TCheckCycleF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

end.
