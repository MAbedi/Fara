unit Elaboration;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, DBCtrls, Mask, System.ImageList,
  System.Actions;

type
  TElaborationF = class(Ttemplate2MDIF)
    dbgrdElaboration: TDBGrid;
    qryElaboration: TADOQuery;
    dsElaboration: TDataSource;
    actFilter: TAction;
    btnReciptShow: TBitBtn;
    actReciptShow: TAction;
    actSendExcel: TAction;
    actSort: TAction;
    btnSort: TBitBtn;
    btnSearch_: TBitBtn;
    btnSendExcel: TBitBtn;
    qryElaborationReciptID: TIntegerField;
    qryElaborationReciptNumber: TIntegerField;
    qryElaborationReciptDate: TStringField;
    qryElaborationReciptState: TWordField;
    qryElaborationUseUnitID: TIntegerField;
    qryElaborationUseUnitName: TStringField;
    qryElaborationEntity: TFloatField;
    qryElaborationAcceptEntity: TFloatField;
    qryElaborationRollbackEntity: TFloatField;
    qryElaborationPersonID1: TIntegerField;
    qryElaborationCustName: TStringField;
    qryElaborationPersonID2: TIntegerField;
    qryElaborationCustName2: TStringField;
    qryElaborationParentReciptID: TIntegerField;
    qryElaborationReciptType: TWordField;
    qryElaborationReciptCaption: TStringField;
    qryMaster: TADOQuery;
    SrcMaster: TDataSource;
    grpMaster: TGroupBox;
    btnMaster: TSpeedButton;
    edtEdtCode: TDBEdit;
    edt1: TDBEdit;
    dbnvgr1: TDBNavigator;
    qryMasterc_StuffName: TStringField;
    qryElaborationRollbackWeight: TFloatField;
    qryElaborationServerID: TIntegerField;
    qryElaborationYearID: TIntegerField;
    qryElaborationStuffCode: TLargeintField;
    qryMasterc_StuffCode: TLargeintField;
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);
    procedure actReciptShowExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure qryElaborationReciptStateGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ElaborationF: TElaborationF;

implementation

uses DM, GlobalPro, FormFunctions, sort2, search2;

{$R *.dfm}



procedure TElaborationF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(dbgrdElaboration,4)
end;

procedure TElaborationF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(dbgrdElaboration)
end;

procedure TElaborationF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(dbgrdElaboration);
end;

procedure TElaborationF.actReciptShowExecute(Sender: TObject);
begin
  inherited;
  ShowReciptTypes(qryElaboration,Self)
end;

procedure TElaborationF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryElaboration);
end;

procedure TElaborationF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryElaboration);
end;

procedure TElaborationF.qryElaborationReciptStateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text:=GetReciptState(qryElaboration.FieldByName('ReciptState').AsInteger)
end;

end.
