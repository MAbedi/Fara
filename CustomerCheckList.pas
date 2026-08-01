unit CustomerCheckList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, StdCtrls, DBCtrls, DBActns, ActnList, Buttons, ExtCtrls,
  Grids, Vcl.DBGrids, DB, ADODB, Math, MMESSAGE, GlobalPro, System.Actions;

type
  TCustomerCheckListF = class(TTemplate4F)
    qryCheck: TADOQuery;
    srcCheck: TDataSource;
    qryCheckID: TAutoIncField;
    qryCheckCaption: TWideStringField;
    Image3: TImage;
    Image2: TImage;
    qryCheck_Checked: TFMTBCDField;
    qryCheckComment2: TStringField;
    actPost: TAction;
    btnOK: TBitBtn;
    qryCustChk: TADOQuery;
    qryCustChkCustID: TIntegerField;
    qryCustChkChkID: TIntegerField;
    qryCustChkDescNote: TWideStringField;
    qryCustChkChecked: TBooleanField;
    grpGroup: TGroupBox;
    cmbGroup: TComboBox;
    grpItems: TGroupBox;
    grdItems: TDBGrid;
    procedure grdItemsDblClick(Sender: TObject);
    procedure grdItemsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actPostExecute(Sender: TObject);
    procedure cmbGroupChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FCustID: Integer;
    procedure InitCombo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomerCheckListF: TCustomerCheckListF;

implementation

uses DM;

{$R *.dfm}

procedure TCustomerCheckListF.grdItemsDblClick(Sender: TObject);
begin
  inherited;
  if not(qryCheck.State in dseditmodes) then
    qryCheck.Edit;
  with qryCheck do
  begin
    Edit;
    FieldByName('_Checked').AsInteger :=
      ifthen(FieldByName('_Checked').AsInteger = 0, 1, 0);
    Post;
  end; // with
end;

procedure TCustomerCheckListF.grdItemsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  grdItems.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    grdItems.Canvas.Rectangle(Rect);
    if qryCheck.FieldByName('_Checked').AsInteger = 1 then
      grdItems.Canvas.Draw(Column.Width - Rect.Left, Rect.Top,
        Image3.Picture.Graphic)
    else
      grdItems.Canvas.Draw(Column.Width - Rect.Left, Rect.Top,
        Image2.Picture.Graphic)
  end; // if
end;

procedure TCustomerCheckListF.InitCombo;
begin
  cmbGroup.Clear;
  with DMf.qryTmpTmp do
  begin
    try
      Close;
      SQL.Text :=
        'SELECT ID, Caption FROM ChkListGroup WHERE (ParentID IS NULL)';
      Open;
      First;
      while not Eof do
      begin
        cmbGroup.AddItem(Fields[1].AsString, TObject(Fields[0].AsInteger));
        Next;
      end;
    finally
      Close;
    end;
  end;
end;

procedure TCustomerCheckListF.actPostExecute(Sender: TObject);
begin
  inherited;
  with qryCheck do
  begin
    First;
    while not Eof do
    begin
      if qryCustChk.Locate('ChkID', qryCheckID.AsInteger, []) then
        qryCustChk.Edit
      else
        qryCustChk.Insert;
      qryCustChkCustID.AsInteger := FCustID;
      qryCustChkChkID.AsInteger := qryCheckID.AsInteger;
      qryCustChkDescNote.AsString := qryCheckComment2.AsString;
      qryCustChkChecked.AsBoolean := qryCheck_Checked.AsInteger = 1;
      qryCustChk.Post;
      Next;
    end;
    BigMessage('À»  ‘œ', 1);
  end;
end;

procedure TCustomerCheckListF.cmbGroupChange(Sender: TObject);
var
  GrpID: Integer;
begin
  inherited;
  GrpID := Integer(cmbGroup.Items.Objects
    [cmbGroup.Items.IndexOf(cmbGroup.Items.Strings[cmbGroup.ItemIndex])]);
  with qryCheck do
  begin
    Close;
    Parameters.ParamByName('ParentID').Value := GrpID;
    Open;
    First;
    try
      while not Eof do
      begin
        if qryCustChk.Locate('ChkID', qryCheckID.AsInteger, []) then
        begin
          Edit;
          qryCheck_Checked.AsInteger :=
            ifthen(qryCustChkChecked.AsBoolean, 1, 0);
          qryCheckComment2.AsString := qryCustChkDescNote.AsString;
          Post;
          // qryCustChk.Delete;
        end;
        Next;
      end;
    finally
     // qryCustChk.Close;
    end;
  end;
end;

procedure TCustomerCheckListF.FormCreate(Sender: TObject);
begin
  inherited;
  InitCombo;
  FCustID := var_glb_gParam;
  qryCustChk.Close;
  qryCustChk.Parameters.ParamByName('CustID').Value := FCustID;
  qryCustChk.Open;
end;

end.
