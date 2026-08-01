unit ListSalary;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, Vcl.Grids, WEBLib.DBCtrls,
  Data.DB, WEBLib.DB, WEBLib.CDS, WEBLib.ComCtrls, Vcl.StdCtrls,
  WEBLib.StdCtrls, WEBLib.ExtCtrls  ;

type

  TListSalaryF = class(TWebForm)
    WebClientDataSet1: TWebClientDataSet;
    WebClientConnection1: TWebClientConnection;
    WebDataSource1: TWebDataSource;
    WebClientDataSet1Kind: TStringField;
    WebClientDataSet1InfoName: TStringField;
    WebClientDataSet1Price: TFloatField;
    WebClientDataSet1FHours: TStringField;
    WebClientDataSet1FDaily: TFloatField;
    WebClientDataSet1RemainDayDec: TStringField;
    WebPageControl1: TWebPageControl;
    WebPageControl1Sheet1: TWebTabSheet;
    WebPageControl1Sheet2: TWebTabSheet;
    WebDBGrid1: TWebDBGrid;
    WebPanel1: TWebPanel;
    cmbMonth: TWebComboBox;
    WebLabel1: TWebLabel;
    edtYearID: TWebEdit;
    edtNationalID: TWebEdit;
    WebLabel2: TWebLabel;
    WebPageControl1Sheet3: TWebTabSheet;
    procedure cmbMonthChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ListSalaryF: TListSalaryF;

implementation

{$R *.dfm}

procedure TListSalaryF.cmbMonthChange(Sender: TObject);
var
  s, jsonPayroll: string;
  UriValue: string;
begin
  WebDBGrid1.Columns.Clear;
  WebClientConnection1.active := false;
  WebClientDataSet1.active := false;
  s := 'http://127.0.0.1:211/fara/SalaryMethod/GetPayroll?Token={BD5009DF-743A-4844-BF76-4B641B967688}&jsonPayroll=';
    jsonPayroll := '{"NationalID":' + edtNationalID.text.trim + ',"YearID":' +
    edtYearID.text.trim + ',"Month":' + cmbMonth.itemindex.tostring + '}';

//    'http://127.0.0.1:211/fara/SalaryMethod/GetPayroll?Token={BD5009DF-743A-4844-BF76-4B641B967688}&jsonPayroll={NationalID:503,YearID:1402,Month:7}'

  WebPanel1.caption := cmbMonth.itemindex.tostring;
  WebClientConnection1.uri := s + jsonPayroll;
  WebClientConnection1.active := True;
  WebClientDataSet1.active := True;
end;

end.
