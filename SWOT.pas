unit SWOT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DBCtrls,
  DB, ADODB, MMESSAGE;

type
  TSWOTF = class(TTemplate4F)
    qrySWOT: TADOQuery;
    srcSWOT: TDataSource;
    mmoDescNote: TDBMemo;
    cmbKind: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    qrySWOTDescNote: TWideStringField;
    qrySWOTMakeDate: TDateTimeField;
    qrySWOTSWOTKind: TSmallintField;
    DataSetDelete1: TDataSetDelete;
    okPanel: TPanel;
    btnPost: TBitBtn;
    BitBtn2: TBitBtn;
    actPost: TAction;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    DataSetInsert1: TDataSetInsert;
    DataSetEdit1: TDataSetEdit;
    procedure actPostExecute(Sender: TObject);
    procedure srcSWOTStateChange(Sender: TObject);
    procedure qrySWOTAfterPost(DataSet: TDataSet);
    procedure qrySWOTAfterDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SWOTF: TSWOTF;

implementation

uses DM;

{$R *.dfm}

procedure TSWOTF.actPostExecute(Sender: TObject);
begin
  inherited;
  qrySWOTSWOTKind.AsInteger := cmbKind.ItemIndex;
  qrySWOTMakeDate.AsDateTime := Now;
  qrySWOT.Post;
end;

procedure TSWOTF.FormCreate(Sender: TObject);
begin
  inherited;
  qrySWOT.Active:=True
end;

procedure TSWOTF.qrySWOTAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('Õ–› ‘œ ', 1)
end;

procedure TSWOTF.qrySWOTAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ ', 1)
end;

procedure TSWOTF.srcSWOTStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible := qrySWOT.State in dsEditModes;
  newPanel.Visible := not okPanel.Visible;
  mmoDescNote.ReadOnly := newPanel.Visible;
  cmbKind.Enabled := okPanel.Visible;
end;

end.
