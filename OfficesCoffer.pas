unit OfficesCoffer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, Grids, Vcl.DBGrids, ImgList, DBActns, ActnList,
  StdCtrls, ExtCtrls, Buttons, DB, ADODB, DBClient, Provider, Mask, DBCtrls,
  ppBands, ppCache, ppClass, ppDB, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, ppVar, ppPrnabl, ppCtrls, ppParameter, SumDBGrid, ppDesignLayer,
  System.ImageList, System.Actions;

type
  TOfficesCofferF = class(Ttemplate2MDIF)
    grd1: TDBGrid;
    qryOffices: TADOQuery;
    srcOffices: TDataSource;
    actSort: TAction;
    btnSort: TBitBtn;
    btnSort1: TBitBtn;
    actExcel: TAction;
    btnSort2: TBitBtn;
    pnl5: TPanel;
    actDocShow: TAction;
    btnExcel: TBitBtn;
    edtAccCode: TEdit;
    edtAccName: TEdit;
    prvOffice: TDataSetProvider;
    cliOffice: TClientDataSet;
    cliOffice_Row: TIntegerField;
    Panel4: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    chkBeforeYear: TCheckBox;
    lbl1: TLabel;
    edtSel_Price: TEdit;
    actPrint: TAction;
    btnPrint: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel3: TppLabel;
    ppLBCompanyName: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDocDate: TppLabel;
    btnDesignPrint: TBitBtn;
    actDesignPrint: TAction;
    ppLabel1: TppLabel;
    cliOffice_Amount: TAggregateField;
    edt_Price: TDBEdit;
    cliOfficeFormID: TIntegerField;
    cliOfficeServerID: TIntegerField;
    cliOfficeYearID: TIntegerField;
    cliOfficeFormCaption: TStringField;
    cliOfficeFormNumber: TIntegerField;
    cliOfficeFormDate: TStringField;
    cliOfficeAmount: TBCDField;
    cliOfficeFomNote: TStringField;
    procedure FormResize(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure actDocShowExecute(Sender: TObject);
    procedure chkBeforeYearClick(Sender: TObject);
    procedure qryOfficesAfterOpen(DataSet: TDataSet);
    procedure cliOffice_sumBedGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure grd1DblClick(Sender: TObject);
    procedure cliOfficeCalcFields(DataSet: TDataSet);
    procedure grd1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure actPrintExecute(Sender: TObject);
    procedure ppLBCompanyNameGetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppDocDateGetText(Sender: TObject; var Text: String);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: String);
    procedure actDesignPrintExecute(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: string);
    procedure FormDestroy(Sender: TObject);
  private
    procedure SumSelected;
    { Private declarations }
  public
    Procedure enter(AccCode,AccName,BaseParam,Awhere,BWhere:String);
    { Public declarations }
  end;

var
  OfficesCofferF: TOfficesCofferF;

implementation

uses
  Dm, GlobalPro, Main,  sort, search1, DBGrid2Print, DateUtils, FormFunctions;

{$R *.dfm}

{ TOfficesCofferF }

procedure TOfficesCofferF.SumSelected;
var
  i:Byte;
  SumPrice:Currency;
begin
  SumPrice := 0;
  grd1.DataSource.DataSet.DisableControls;
  try

    if grd1.SelectedRows.Count>1 then
    begin
      with grd1.DataSource.DataSet do
        for i:=0 to grd1.SelectedRows.Count-1 do
        begin
          GotoBookmark((grd1.SelectedRows.Items[i]));
          SumPrice :=SumPrice +FieldByName('Amount').AsFloat;
        end;
    end ;
    edtSel_Price.Text := CurrToStrF(SumPrice,ffCurrency,0);
  finally
    grd1.DataSource.DataSet.EnableControls;
  end;
end;


procedure TOfficesCofferF.enter;
begin
  CreateMDIForm2(TOfficesCofferF,OfficesCofferF,mainF);
  with OfficesCofferF do
  with qryOffices do
  begin
    edtacccode.Text := AccCode;
    edtAccName.Text :=AccName;
    close;
    Parameters.ParamByName('BaseParam').Value := baseParam;
    Parameters.ParamByName('CirculationCode').Value := AccCode;
    Parameters.ParamByName('Where').Value := Awhere;
    //ShowQryParam(qryOffices);
    open;
//    Sort := 'AccCode';
  end;
end;

procedure TOfficesCofferF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(grd1);
end;

procedure TOfficesCofferF.FormResize(Sender: TObject);
begin
  inherited;
  setColSize(grd1,1)
end;

procedure TOfficesCofferF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  searchf.ShowSearch(cliOffice);
end;

procedure TOfficesCofferF.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cliOffice);
end;

procedure TOfficesCofferF.actExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(grd1)
end;

procedure TOfficesCofferF.actDocShowExecute(Sender: TObject);
begin
  inherited;
  ShowFormTypesForms(cliOffice,Self);
end;

procedure TOfficesCofferF.chkBeforeYearClick(Sender: TObject);
begin
  inherited;
  with qryOffices do
  begin
    close;
    Parameters.ParamByName('BeforYear').Value := chkBeforeYear.Checked;
    open;
   end
end;

procedure TOfficesCofferF.qryOfficesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cliOffice.Close;
  cliOffice.Open;
end;

procedure TOfficesCofferF.cliOffice_sumBedGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
 text := CurrToStrF(Sender.AsVariant,ffCurrency,0);
end;

procedure TOfficesCofferF.grd1DblClick(Sender: TObject);
begin
  inherited;
  actDocShow.Execute;
end;

procedure TOfficesCofferF.cliOfficeCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.fieldbyname('_row').AsInteger := DataSet.RecNo;
end;

procedure TOfficesCofferF.grd1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if CtrlDown then  SumSelected;;
end;

procedure TOfficesCofferF.actPrintExecute(Sender: TObject);
begin
  inherited;
  InitReportFile(ppReport1,'rptOfficesCoffer',True) ;
end;

procedure TOfficesCofferF.ppLBCompanyNameGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=APPBank.CompanyName;
end;

procedure TOfficesCofferF.ppLabel1GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text:=edtAccCode.Text+'  '+ edtAccName.Text
end;

procedure TOfficesCofferF.ppLabel3GetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text := Caption;
end;

procedure TOfficesCofferF.ppDocDateGetText(Sender: TObject; var Text: String);
begin
  inherited;
  Text:=GetPrintDate;
end;

procedure TOfficesCofferF.ppSystemVariable2GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text:=GetPageNumberString(Text);
end;

procedure TOfficesCofferF.actDesignPrintExecute(Sender: TObject);
begin
  inherited;
  DBGrid2PrintF.showGrid2Print(grd1,0)
end;

end.
