unit CreateSanamaXML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Dm, template2MDI, DB, ADODB, StdCtrls, DBCtrls, ImgList, DBActns,
  strutils,
  ActnList, Buttons, ExtCtrls, System.ImageList, System.Actions, Vcl.Mask;

type
  TCreateSanamaXMLF = class(Ttemplate2MDIF)
    DBMemo1: TDBMemo;
    Label1: TLabel;
    cmbMount: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    actProssXML: TAction;
    qrySanama: TADOQuery;
    DataSource1: TDataSource;
    actExport: TAction;
    SaveDialog1: TSaveDialog;
    RadioGroup1: TRadioGroup;
    pnlFilter: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    edtDateFrom: TMaskEdit;
    edtDateTo: TMaskEdit;
    procedure actProssXMLExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actExportExecute(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    procedure WriteString(Stream: TFileStream; s: string);
    procedure WriteFileBegin(Stream: TFileStream; TitelName: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CreateSanamaXMLF: TCreateSanamaXMLF;

implementation

{$R *.dfm}

procedure TCreateSanamaXMLF.actExportExecute(Sender: TObject);
var
  Stream: TFileStream;
begin
  inherited;
  if qrySanama.Active then
    if qrySanama.FieldByName('XMLReport').AsString <> EmptyStr then
      if SaveDialog1.Execute then
      begin
        Stream := TFileStream.Create(SaveDialog1.FileName + '.XML', fmCreate);
        try
          // WriteFileBegin(Stream, '');
          WriteString(Stream, qrySanama.FieldByName('XMLReport').AsString);
        finally
          Stream.Free;

        end;
      end;
end;

procedure TCreateSanamaXMLF.actProssXMLExecute(Sender: TObject);
begin
  inherited;
  with qrySanama, Parameters do
  begin
    Close;
    ParamByName('YearID').Value := APPBank.Year;
    ParamByName('CompanyID').Value := opta.DefaultCompany;
    ParamByName('CompanyName').Value := APPBank.CompanyName;
    ParamByName('MonthID').Value := cmbMount.ItemIndex + 1;
    if pnlFilter.Visible then
    begin
      ParamByName('DateFrom').Value := edtDateFrom.Text;
      ParamByName('DateTo').Value := edtDateTo.Text;
    end;
    Open;
  end;
end;

procedure TCreateSanamaXMLF.FormShow(Sender: TObject);
begin
  inherited;
  cmbMount.ItemIndex := var_glb_CurrentMonth - 1;

end;

procedure TCreateSanamaXMLF.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  if RadioGroup1.ItemIndex in [1, 2] then
  begin
    qrySanama.Close;
    qrySanama.Parameters.Refresh;
    pnlFilter.Visible := True;
    edtDateFrom.Text := APPBank.StartYear;
    edtDateTo.Text := (APPBank.Year).ToString + '/' +
      RightStr(('0' + var_glb_CurrentMonth.ToString), 2) + '/30';
    if RadioGroup1.ItemIndex = 1 then
      qrySanama.SQL.Text :=
        'exec Acc.CreateSanamaXML_By_DateRange  :YearID , :CompanyID , :MonthID , :CompanyName , :DateFrom , :DateTo '
    else
      qrySanama.SQL.Text :=
        'exec Acc.CreateSanamaXML_By_DateRange_2  :YearID , :CompanyID , :MonthID , :CompanyName , :DateFrom , :DateTo ';
  end
  else
  begin
    qrySanama.Close;
    qrySanama.Parameters.Refresh;
    pnlFilter.Visible := False;
    qrySanama.SQL.Text :=
      'exec Acc.CreateSanamaXML  :YearID , :CompanyID , :MonthID , :CompanyName';
  end;
end;

procedure TCreateSanamaXMLF.WriteString(Stream: TFileStream; s: string);
Var
  WS: WideString;
  byteorder_marker: Word;
Begin
  WS := s;
  byteorder_marker := $FEFF;
  Stream.WriteBUffer(byteorder_marker, sizeof(byteorder_marker));
  Stream.WriteBUffer(WS[1], Length(WS) * sizeof(WS[1]));

end;

procedure TCreateSanamaXMLF.WriteFileBegin(Stream: TFileStream;
  TitelName: String);

begin

  // WriteString(Stream, '<?xml version="1.0" encoding="utf-16"?>' + char(13)
  // +'<'+TitelXml+' xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"'+
  // ' xmlns:xsd="http://www.w3.org/2001/XMLSchema"> ' +
  // ' <'+TitelName+'>');

end;

end.
