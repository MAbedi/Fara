{-----------------------------------------------------------------------------
 Unit Name: Units
 Author:    Mahmood
 Purpose:
 History:  1384/02/25
-----------------------------------------------------------------------------}
unit Units;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, DB, DBCtrls, Grids, Vcl.DBGrids, ppCtrls, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, ADODB, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Menus, ppParameter, ppDesignLayer, System.ImageList, System.Actions;

type
  TUnitsF = class(Ttemplate2MDIF)
    qryUnits: TADOQuery;
    srcUnits: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel10: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel6: TppLabel;
    ppLabel12: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel13: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine3: TppLine;
    ppLine6: TppLine;
    DBGrid1: TDBGrid;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn9: TBitBtn;
    qryUnitsUnitCode: TWordField;
    qryUnitsUnitName: TStringField;
    actSendExel: TAction;
    actPrint: TAction;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    actSort: TAction;
    ppLine1: TppLine;
    ppLine2: TppLine;
    qryUnitsChangeState: TWordField;
    qryUnitsUnitName_L2: TStringField;
    qryUnitsTax_mu: TStringField;
    procedure qryUnitsAfterInsert(DataSet: TDataSet);
    procedure qryUnitsAfterPost(DataSet: TDataSet);
    procedure qryUnitsAfterEdit(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure srcUnitsStateChange(Sender: TObject);
    procedure qryUnitsBeforeDelete(DataSet: TDataSet);
    procedure actSendExelExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure qryUnitsBeforePost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UnitsF: TUnitsF;

implementation

uses DM, mmessage, editNew, GlobalPro,FormFunctions;

{$R *.dfm}

procedure TUnitsF.qryUnitsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('UnitCode').AsInteger:=GetANewCode(Self.Name,'Units','UnitCode');
  editNewF.show(srcUnits,dsInsert,[qryUnitsUnitCode,qryUnitsUnitName,qryUnitsUnitName_L2,qryUnitsTax_mu]);
end;

procedure TUnitsF.qryUnitsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.',1);
end;

procedure TUnitsF.qryUnitsAfterEdit(DataSet: TDataSet);
begin
  inherited;
  qryUnits.Fieldbyname('ChangeState').AsInteger:=1;
  editNewF.show(srcUnits,dsEdit,[qryUnitsUnitCode,qryUnitsUnitName,qryUnitsUnitName_L2,qryUnitsTax_mu]);

end;

procedure TUnitsF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  DataSetEdit1.Execute;
end;

procedure TUnitsF.FormCreate(Sender: TObject);
begin
  inherited;
    CreateTRIGGER4LinkServer('Units');
  qryUnits.Active:=True;
end;

procedure TUnitsF.srcUnitsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qryUnits.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  BtnReject.Cancel:=newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell,'','',Self.Name);
end;

procedure TUnitsF.qryUnitsBeforeDelete(DataSet: TDataSet);
var
  canDel: Boolean;
begin
  inherited;
  with DMf.qryTmpTmp do begin
    Active:=False;
    SQL.Text:='SELECT COUNT(c_StuffCode)FROM StuffCoding WHERE n_UnitCode='+
       qryUnitsUnitCode.AsString;
    Active:=True;
    canDel:=Fields[0].AsInteger=0;
    Active:=False;
  end;//with
  if canDel then begin
    if get_response('¬Ì« »—«Ì Õ–› «Ì‰ Ê«Õœ „ÿ„∆‰ Â” Ìœø')<>mrYes then Abort;
  end else begin
    Warn('Õ–› «Ì‰ Ê«Õœ „Ã«“ ‰Ì” .');
    Abort;
  end;//else
end;

procedure TUnitsF.actSendExelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TUnitsF.actPrintExecute(Sender: TObject);
begin
  inherited;
  try
    qryUnits.DisableControls;
    ppReport1.Print;
  finally
    qryUnits.EnableControls;
  end;//try
end;

procedure TUnitsF.N1Click(Sender: TObject);
begin
  inherited;
  qryUnits.Sort:='UnitCode';
end;

procedure TUnitsF.N2Click(Sender: TObject);
begin
  inherited;
  qryUnits.Sort:='UnitName';
end;

procedure TUnitsF.actSortExecute(Sender: TObject);
begin
  inherited;
  PopupMenu1.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TUnitsF.ppLabel10GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text:=GetPrintDate
end;

procedure TUnitsF.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text)
end;

procedure TUnitsF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName;
end;

procedure TUnitsF.qryUnitsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if get_response(' €ÌÌ—«  –ŒÌ—Â ‘Ê‰œø')<>mrYes then abort;
  TrimStringFields(qryUnits);
end;

procedure TUnitsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TUnitsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,1);
end;

end.
