unit DescTemplates;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, StdCtrls, DBActns, DB, ADODB, Grids, Vcl.DBGrids,
  ActnList, Buttons, ExtCtrls, Mask, DBCtrls, ppDB, ppDBPipe, ppBands,
  ppClass, ppCtrls, ppReport, ppVar, ppPrnabl, ppCache,
  ppComm, ppRelatv, ppProd, ppParameter, ppDesignLayer, System.Actions;

type
  TDescTemplatesF = class(TTemplate4F)
    DBGrid1: TDBGrid;
    qryDescTemplates: TADOQuery;
    srcDescTemplates: TDataSource;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    actSendToExcel: TAction;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ActExit: TAction;
    qryDescTemplatesFormInfoID: TIntegerField;
    qryDescTemplatesInfoID: TWordField;
    qryDescTemplatesFormType: TWordField;
    qryDescTemplatesInfoName_L1: TStringField;
    qryDescTemplatesInfoName_L2: TStringField;
    grpdesc: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    BitBtn8: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn16: TBitBtn;
    actExcel: TAction;
    actSearch: TAction;
    actSort: TAction;
    BitBtn3: TBitBtn;
    actPrint: TAction;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppLabel3: TppLabel;
    ppLabel10: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine5: TppLine;
    ppLine7: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppDBText4: TppDBText;
    ppDBText3: TppDBText;
    ppDBPipeline1: TppDBPipeline;
    procedure srcDescTemplatesStateChange(Sender: TObject);
    procedure qryDescTemplatesBeforeDelete(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure qryDescTemplatesAfterPost(DataSet: TDataSet);
    procedure ActExitExecute(Sender: TObject);
    procedure qryDescTemplatesAfterInsert(DataSet: TDataSet);
    procedure qryDescTemplatesAfterEdit(DataSet: TDataSet);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
  public
    procedure enter;
    { Public declarations }
  end;

var
  DescTemplatesF: TDescTemplatesF;

implementation

uses Dm, GlobalPro, mmessage, search2, sort2;

{$R *.dfm}

procedure TDescTemplatesF.srcDescTemplatesStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qryDescTemplates.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  grpdesc.Visible := okPanel.Visible;
  FreeReservedCodes(Dmf.adcAccounting, 'FormsInfo');

end;

procedure TDescTemplatesF.qryDescTemplatesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ.') <> mryes then
    Abort;
  BigMessage('Õ–› ‘œ ', 1);
end;

procedure TDescTemplatesF.FormShow(Sender: TObject);
begin
  inherited;
  with qryDescTemplates do
  begin
    Active := false;
    Active := True;
  end; // with
end;

procedure TDescTemplatesF.qryDescTemplatesAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.', 1);
end;

procedure TDescTemplatesF.ActExitExecute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TDescTemplatesF.qryDescTemplatesAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FormInfoID').AsInteger :=
    GetANewCode('', 'Acc.FormsInfo', 'ForminfoID', Dmf.adcAccounting);
  DataSet.FieldByName('InfoID').AsInteger :=
    GetANewCode('',
    'SELECT Max(InfoID) FROM acc.FormsInfo WHERE (FormType = 2)', '',
    Dmf.adcAccounting);
  DataSet.FieldByName('Formtype').AsInteger := 2;
  DBEdit1.SetFocus;
end;

procedure TDescTemplatesF.qryDescTemplatesAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure TDescTemplatesF.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  BitBtn1.SetFocus;
end;

procedure TDescTemplatesF.enter;
begin
  DescTemplatesF := TDescTemplatesF.Create(Application);
  try
    DescTemplatesF.ShowModal;
  finally
    DescTemplatesF.Free;
  end; // try
end;

procedure TDescTemplatesF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TDescTemplatesF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1);
end;

procedure TDescTemplatesF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TDescTemplatesF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryDescTemplates);
end;

procedure TDescTemplatesF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryDescTemplates);
end;

procedure TDescTemplatesF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  QuickSearch(Key, qryDescTemplates.FieldByName('InfoID'));
end;

procedure TDescTemplatesF.actPrintExecute(Sender: TObject);
begin
  inherited;
  ppReport1.Print;
end;

procedure TDescTemplatesF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

end.
