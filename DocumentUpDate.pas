unit DocumentUpDate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, Menus, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppBands, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppParameter, System.Actions;

type
  tFormKind = (fkRcipts, fkForm);

  TDocumentUpDateF = class(TTemplate4F)
    qry4Update: TADOQuery;
    srcRecipts: TDataSource;
    Label1: TLabel;
    edtDocNo: TDBEdit;
    newPanel: TPanel;
    BitBtn9: TBitBtn;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    actSort: TAction;
    actSearch: TAction;
    actExcel: TAction;
    actPrint: TAction;
    actOther: TAction;
    edtDocDate: TDBEdit;
    Label23: TLabel;
    qry4UpdateDocNo: TIntegerField;
    qry4UpdateDocDate: TStringField;
    procedure srcReciptsStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qry4UpdateAfterPost(DataSet: TDataSet);
    procedure qry4UpdateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure Enter(qryRec: tdataset; FormKind: tFormKind);
    { Public declarations }
  end;

var
  DocumentUpDateF: TDocumentUpDateF;

implementation

uses DM, sort2, search2, GlobalPro, Math, mmessage, shamsiDate, FaraConsts;

{$R *.dfm}

procedure TDocumentUpDateF.srcReciptsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qry4Update.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
end;

procedure TDocumentUpDateF.Enter(qryRec: tdataset; FormKind: tFormKind);
var
  ID, ServerID, YearID: Integer;
  IdName, TabelName: string;
begin
  if (qryRec.FieldByName('DocNo').AsInteger = 0) and
    (not opt.CheckMakeDoc4DelEdit) then
  begin
    if FormKind = fkRcipts then
    begin
      IdName := 'ReciptID';
      TabelName := 'Recipts';
    end
    else
    begin
      IdName := 'FormID';
      TabelName := 'Forms';
    end;

    ID := qryRec.FieldByName(IdName).AsInteger;
    ServerID := qryRec.FieldByName('ServerID').AsInteger;
    YearID := qryRec.FieldByName('YearID').AsInteger;

    DocumentUpDateF := TDocumentUpDateF.Create(Application);
    with DocumentUpDateF do
      try
        with qry4Update do
        begin
          Close;
          SQL.Text := 'SELECT DocNo, DocDate';
          SQL.Add('FROM ' + TabelName);
          SQL.Add(Format('WHERE (%s = :%s ) ', [IdName, IdName]));
          SQL.Add('AND (ServerID = :ServerID ) ');
          SQL.Add('AND (YearID = :YearID )');
          Parameters.ParamByName(IdName).Value := ID;
          Parameters.ParamByName('ServerID').Value := ServerID;
          Parameters.ParamByName('YearID').Value := YearID;
          Open;
        end;
        if ShowModal = mrOk then
        begin
          qryRec.Refresh;
          qryRec.locate(IdName + ';ServerID;YearID',
            VarArrayOf([ID, ServerID, YearID]), [])
        end;
      finally
        Free;
      end;
  end
  else
    Warn2('‘„«—Â ”‰œ À»  ‘œÂ!!');
end;

procedure TDocumentUpDateF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if qry4Update.State in dsEditModes then
    qry4Update.Post;
end;

procedure TDocumentUpDateF.qry4UpdateAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ ', 1);
end;

procedure TDocumentUpDateF.qry4UpdateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not ValidateDatasetDates(DataSet) then
    Abort;
end;

end.
