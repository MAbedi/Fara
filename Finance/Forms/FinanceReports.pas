unit FinanceReports;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, Grids, Vcl.DBGrids, DB, ADODB, Mask, DBCtrls, System.ImageList,
  System.Actions;

type
  TFinanceReportsF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    qryMain: TADOQuery;
    dscMain: TDataSource;
    qryMainrepCode: TWordField;
    qryMainrepName: TWideStringField;
    qryMainReportType: TWordField;
    qryMainColNumShow: TWordField;
    qryMain_QryType: TSmallintField;
    NewPanel: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn7: TBitBtn;
    OkPanel: TPanel;
    BitBtn4: TBitBtn;
    BitBtn8: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBComboBox1: TDBComboBox;
    Bevel1: TBevel;
    DBComboBox2: TDBComboBox;
    Label5: TLabel;
    procedure dscMainStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qryMainAfterInsert(DataSet: TDataSet);
    procedure qryMainAfterPost(DataSet: TDataSet);
    procedure qryMainBeforeDelete(DataSet: TDataSet);
    procedure qryMainBeforePost(DataSet: TDataSet);
    procedure qryMainReportTypeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryMainReportTypeSetText(Sender: TField; const Text: String);

    procedure _actsortExecute(Sender: TObject);
    procedure _actSearchExecute(Sender: TObject);
    procedure qryMainAfterEdit(DataSet: TDataSet);
    procedure qryMain_QryTypeSetText(Sender: TField; const Text: String);
    procedure qryMain_QryTypeGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FinanceReportsF: TFinanceReportsF;

implementation

uses dm, GlobalPro, search2, sort2, mmessage;

{$R *.dfm}

procedure TFinanceReportsF.dscMainStateChange(Sender: TObject);
begin
  inherited;
  OkPanel.Visible := qryMain.State in dsEditModes;
  NewPanel.Visible := not OkPanel.Visible;
  BtnReject.Cancel := NewPanel.Visible;
end;

procedure TFinanceReportsF.FormCreate(Sender: TObject);
begin
  inherited;
  qryMain.Active := True;
end;

procedure TFinanceReportsF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TFinanceReportsF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 1, True);
end;

procedure TFinanceReportsF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TFinanceReportsF.qryMainAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('repCode').AsInteger := GetANewCode('','_FinanceReports',
    'repCode',dmf.adcAccounting);
  DBEdit1.SetFocus;
end;

procedure TFinanceReportsF.qryMainAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ', 1);
end;

procedure TFinanceReportsF.qryMainBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ') <> mryes then
    Abort;
end;

procedure TFinanceReportsF.qryMainBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryMain.FieldByName('ColNumShow').AsInteger > 2 then
  begin
    Warn(' ⁄œ«œ ” Ê‰ Õœ«ﬂÀ— 2 »«Ìœ »«‘œ');
    Abort;
  end; // if
end;

procedure TFinanceReportsF.qryMainReportTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Case Sender.AsInteger of
    1:
      Text := '‘»Â ”Êœ Ê “Ì«‰';
    2:
      Text := '‘»Â  —«“‰«„Â';
    3:
      Text := 'ê“«—‘«  ’Ê—  „«·Ì';
    4:
      Text := 'ê“«—‘«  Å—ÊéÂ';
  end; // Case
end;

procedure TFinanceReportsF.qryMainReportTypeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := DBComboBox1.ItemIndex + 1;
end;

procedure TFinanceReportsF._actsortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryMain);
end;

procedure TFinanceReportsF._actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryMain);
end;

procedure TFinanceReportsF.qryMainAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure TFinanceReportsF.qryMain_QryTypeSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsInteger := DBComboBox2.ItemIndex + 1
end;

procedure TFinanceReportsF.qryMain_QryTypeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  // Text := DBComboBox2.Items[Sender.asinteger]
  Case Sender.AsInteger of
    1:
      Text := 'Õ”«»';
    2:
      Text := ' ›’Ì·Ì';
    3:
      Text := '„—ò“ Â“Ì‰Â ';
    4:
      Text := 'ò·ÌÂ ”ÿÊÕ';
  end;
end;

end.
