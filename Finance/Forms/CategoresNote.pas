unit CategoresNote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, StdCtrls, DBActns, ActnList, Buttons, ExtCtrls,db,
  ADODB, DBCtrls, Mask, System.Actions;

type
  TCategoresNoteF = class(TTemplate4F)
    qryCTopicNote: TADOQuery;
    srcCtopicNote: TDataSource;
    qryCTopicNoteID: TIntegerField;
    qryCTopicNoteTopicCode: TLargeintField;
    qryCTopicNoteCTopicCode: TIntegerField;
    qryCTopicNoteNote: TMemoField;
    qryCTopicNoteNoteDate: TStringField;
    qryCTopicNoteAttachFileName: TStringField;
    qryCTopicNoteMakeDate: TDateTimeField;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    qryCategories: TADOQuery;
    qryCTopicNote_NameCtopic: TStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    Bevel2: TBevel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    Label5: TLabel;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetInsert1: TDataSetInsert;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    okPanel: TPanel;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    actSendToExcel: TAction;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    DBText3: TDBText;
    DBText4: TDBText;
    qryCTopicNote_NameTopic: TStringField;
    qryCenterTopic: TADOQuery;
    Bevel3: TBevel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure srcCtopicNoteStateChange(Sender: TObject);
    procedure qryCTopicNoteAfterInsert(DataSet: TDataSet);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryCTopicNoteBeforeDelete(DataSet: TDataSet);
    procedure qryCTopicNoteAfterPost(DataSet: TDataSet);
    procedure qryCTopicNoteBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure Enter(tp:Integer;Ctp:Integer);
    { Public declarations }
  end;

var
  CategoresNoteF: TCategoresNoteF;

implementation

uses Dm, GlobalPro, DateUtils, mmessage;

{$R *.dfm}
procedure TCategoresNoteF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
    DBEdit4.Field.Value:=ExtractFileName(OpenDialog1.FileName);
end;

procedure TCategoresNoteF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(qryCTopicNote);
end;

procedure TCategoresNoteF.Enter(tp,CTp: Integer);
begin
  CtopicsNoteF:=tCtopicsNoteF.Create(Application);
  with CtopicsNoteF do begin
    try
      with qryCTopicNote do begin
        Active:=False;
        Parameters.ParamByName('TopicCode').Value:=tp;
        Parameters.ParamByName('CTopicCode').Value:=ctp;
        Active:=True;
      end;//with
      ShowModal;
    finally
      Free;
    end;//try
  end;//with
end;

procedure TCategoresNoteF.srcCtopicNoteStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qryCTopicNote.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
end;

procedure TCategoresNoteF.qryCTopicNoteAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('TopicCode').AsInteger:=qryCTopicNote.Parameters.ParamByName('TopicCode').Value;
  DataSet.FieldByName('cTopicCode').AsInteger:=qryCTopicNote.Parameters.ParamByName('cTopicCode').Value;
  DataSet.FieldByName('ID').AsInteger:=GetANewCode('','Acc.CtopicNotes','ID',dmf.adcAccounting);
  DataSet.FieldByName('MakeDate').AsDateTime:=Now;
  DBEdit3.SetFocus;

end;

procedure TCategoresNoteF.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=32 then
    SpeedButton1.Click;
end;

procedure TCategoresNoteF.qryCTopicNoteBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› „ÿ„∆‰ Â” Ìœ.')<>mryes then Abort;
end;

procedure TCategoresNoteF.qryCTopicNoteAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À‹‹»  ‘‹‹œ',1);
end;

procedure TCategoresNoteF.qryCTopicNoteBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryCTopicNote) then begin
   Abort;
   exit;
  end;//if

end;

end.
