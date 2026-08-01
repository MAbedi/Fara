// mohammad rezaei
unit FormTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, Mask,
  DBCtrls, Grids, Vcl.DBGrids, DB, ADODB, System.Actions;

type
  TFormTypesF = class(TTemplate4F)
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DataSetInsert1: TDataSetInsert;
    DataSetEdit1: TDataSetEdit;
    DataSetDelete1: TDataSetDelete;
    BitBtn1: TBitBtn;
    actSendToExcel: TAction;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    qryFormTypes: TADOQuery;
    srcFormTypes: TDataSource;
    qryFormTypesFormType: TWordField;
    qryFormTypesFormCaption: TStringField;
    procedure srcFormTypesStateChange(Sender: TObject);
    procedure qryFormTypesAfterInsert(DataSet: TDataSet);
    procedure qryFormTypesAfterCancel(DataSet: TDataSet);
    procedure qryFormTypesAfterEdit(DataSet: TDataSet);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure qryFormTypesBeforeDelete(DataSet: TDataSet);
    procedure qryFormTypesAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    Procedure enter;
    { Public declarations }
  end;

var
  FormTypesF: TFormTypesF;

implementation

uses Dm, GlobalPro, mmessage;

procedure TFormTypesF.enter;
begin
 formTypesF:=TFormTypesF.Create(Application);
 with FormTypesF do begin
  qryFormTypes.Active:=True;
  Panel2.Visible:=False;
   try
     ShowModal;
   finally
     Free;
   end;//try
 end;//with
end;

{$R *.dfm}

procedure TFormTypesF.srcFormTypesStateChange(Sender: TObject);
begin
  inherited;
   okPanel.Visible:=qryFormTypes.State in dsEditModes;
   newPanel.Visible:=not okPanel.Visible;
   btnClose.Cancel:=newPanel.Visible;
   FreeReservedCodes(Dmf.adcAccounting, 'FormTypes');
end;

procedure TFormTypesF.qryFormTypesAfterInsert(DataSet: TDataSet);
begin
  inherited;
    DataSet.FieldByName('FormType').AsInteger:=GetANewCode('','FormTypes','FormType',dmf.adcAccounting);
    Panel2.Visible:=True;
    DBEdit1.SetFocus;
end;

procedure TFormTypesF.qryFormTypesAfterCancel(DataSet: TDataSet);
begin
  inherited;
  Panel2.Visible:=False;
end;

procedure TFormTypesF.qryFormTypesAfterEdit(DataSet: TDataSet);
begin
  inherited;
  Panel2.Visible:=True;
end;

procedure TFormTypesF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TFormTypesF.qryFormTypesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
   if get_response('¬Ì« »—«Ì Õ–› «Ì‰ ﬂœ Õ”«» „ÿ„∆‰ Â” Ìœø')<>mrYes then Abort;
end;

procedure TFormTypesF.qryFormTypesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ.',1);
end;

end.
