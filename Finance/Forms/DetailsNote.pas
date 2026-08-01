// mahmood 1384
unit DetailsNote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls,
  DBCtrls,db, Mask, ADODB, System.Actions;

type
  TDetailsNoteF = class(TTemplate4F)
    BtnReject: TBitBtn;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    newPanel: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    qryDetailNotes: TADOQuery;
    SrcDetailNotes: TDataSource;
    OpenDialog1: TOpenDialog;
    GROUP: TGroupBox;
    DBMemo2: TDBMemo;
    qryDetailNotesID: TIntegerField;
    qryDetailNotesTopicCode: TLargeintField;
    qryDetailNotesDetailCode: TIntegerField;
    qryDetailNotesNoteDate: TStringField;
    qryDetailNotesAttachFileName: TStringField;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    qryDetailNotesNote: TMemoField;
    qryCategories: TADOQuery;
    qryDetailCode: TADOQuery;
    SrcCategories: TDataSource;
    SrcDetailCode: TDataSource;
    qryCategoriesTopicCode: TLargeintField;
    qryCategoriesMoeenName_L1: TStringField;
    qryDetailNotesMakeDate: TDateTimeField;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    DBEdit1: TDBEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    EdtDate: TDBEdit;
    Label10: TLabel;
    okPanel: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    actExit: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qryDetailNotesAfterInsert(DataSet: TDataSet);
    procedure SrcDetailNotesStateChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qryDetailNotesBeforePost(DataSet: TDataSet);
    procedure qryDetailNotesAfterPost(DataSet: TDataSet);
    procedure qryDetailNotesBeforeDelete(DataSet: TDataSet);
    procedure qryDetailNotesAfterDelete(DataSet: TDataSet);
    procedure qryDetailNotesBeforeInsert(DataSet: TDataSet);
    procedure actSearchExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
  private
    { Private declarations }
    function ValidData: Boolean;
  public
    { Public declarations }
    procedure enter(TopicCode,DetailCode:Integer);
  end;

var
  DetailsNoteF: TDetailsNoteF;

implementation

uses DM, GlobalPro,shamsiDate,mmessage, searchCode_L1_L2;

{$R *.dfm}

procedure TDetailsNoteF.enter(TopicCode,DetailCode:Integer);
begin
  DetailsNoteF:=TDetailsNoteF.Create(Self);
  try
    with DetailsNoteF do begin
      With qryCategories do begin
        Active:=False;
        Parameters.ParamByName('TopicCode').Value:=TopicCode;
        Active:=True;
      end;//
      With qryDetailCode do begin
        Active:=False;
        Parameters.ParamByName('DetailCode').Value:=DetailCode;
        Active:=True;
      end;//
      With qryDetailNotes do begin
        Active:=False;
        Parameters.ParamByName('TopicCode').Value:=TopicCode;
        Parameters.ParamByName('DetailCode').Value:=DetailCode;
        Active:=True;
        Last;
      end;//
      ShowModal;
    end;//with
  finally
    FreeAndNil(DetailsNoteF);
  end;//try
end;

procedure TDetailsNoteF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if qryDetailNotes.State in dseditmodes then
   if get_response('«ÿ·«⁄«  À»  ‘Êœ.')=mrYes then DataSetPost1.Execute
   else DataSetCancel1.Execute;
end;

procedure TDetailsNoteF.qryDetailNotesAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ID').AsInteger:=GetANewCode('','DetailNotes','ID',dmf.adcAccounting);
  DataSet.FieldByName('NoteDate').AsString:=var_glb_CurrentDate;
   DataSet.FieldByName('MakeDate').AsDateTime:=now;
  DataSet.FieldByName('TopicCode').AsString:=qryCategories.FieldByName('TopicCode').Value;
  DataSet.FieldByName('DetailCode').AsString:=qryDetailCode.FieldByName('DetailCode').Value;
end;

procedure TDetailsNoteF.SrcDetailNotesStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qryDetailNotes.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  BtnReject.Cancel:=newPanel.Visible;
  FreeReservedCodes(DMf.adcAccounting, 'DetailNotes');
end;

procedure TDetailsNoteF.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then begin
    if not(qryDetailNotes.State in dseditmodes) then qryDetailNotes.Edit;
    qryDetailNotes.fieldbyname('AttachFileName').AsString:=ExtractFileName(OpenDialog1.FileName);
  end;//if
end;

function TDetailsNoteF.ValidData: Boolean;
var s:String;
begin
  Result:=False;
  s:=qryDetailNotes.FieldByName('NoteDate').AsString;
  if not validate_date(False,APPBank.StartYear,APPBank.endYear,' «—ÌŒ',s) then begin
    EdtDate.SetFocus;
    Exit;
  end;//if
  Result:=True;
end;

procedure TDetailsNoteF.qryDetailNotesBeforePost(DataSet: TDataSet);
begin
  inherited;
  if not CheckRequiredFields(qryDetailNotes) then Abort;
  if not ValidData then Abort;
end;

procedure TDetailsNoteF.qryDetailNotesAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ.',1);
end;

procedure TDetailsNoteF.qryDetailNotesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« »—«Ì Õ–› «Ì‰ —œÌ› „ÿ„∆‰ Â” Ìœø')<> mrYes then Abort;
end;

procedure TDetailsNoteF.qryDetailNotesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  BigMessage('—œÌ› Õ–› ‘œ.',1);
end;

procedure TDetailsNoteF.qryDetailNotesBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if qryCategories.FieldByName('TopicCode').IsNull then Abort;
end;

procedure TDetailsNoteF.actSearchExecute(Sender: TObject);
var
 results:  array[0..2] of string;
 txt:String;
begin
  inherited;
  txt:='SELECT  ID,NoteDate,AttachFileName,Note FROM dbo.DetailNotes';
  if searchCode_L1_L2F.SearchCode2(DMf.adcAccounting,'·Ì”   Ê÷ÌÕ«  ÷—Ê—Ì' ,txt,
      ['—œÌ›',' «—ÌŒ','›«Ì· ÅÌÊ” ',' Ê÷ÌÕ« '],results,[15,10,100,500],alLeft) then
    qryDetailNotes.Locate('id',results[0],[]);
end;

procedure TDetailsNoteF.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if qryDetailNotesAttachFileName.AsString<>'' then RunDoc(qryDetailNotesAttachFileName.AsString);
end;

procedure TDetailsNoteF.actExitExecute(Sender: TObject);
begin
  inherited;
  close;
end;

end.
