unit SelectCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, DM;

type
  TSelectCustomerF = class(TForm)
    qryCustomer: TADOQuery;
    ListCustomer: TListBox;
    qryCustomerCustID: TIntegerField;
    qryCustomerCustName: TStringField;
    edtSerch: TEdit;
    procedure ListCustomerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListCustomerDblClick(Sender: TObject);
    procedure edtSerchChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetCustomer(out CusID: Integer;
      myCaption, CustGroups: String): Boolean;
  end;

var
  SelectCustomerF: TSelectCustomerF;
  SelectCustomerFDefaultCusID: Integer;

implementation

uses GlobalPro, FaraConsts;

{$R *.dfm}
{ TSelectCustomerF }

procedure TSelectCustomerF.edtSerchChange(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  for i := 0 to ListCustomer.Items.Count - 1 do
    if Pos(CorrectFarsiChars(UpperCase(edtSerch.Text)),
      CorrectFarsiChars(ListCustomer.Items[i])) <> 0 then
      ListCustomer.ItemIndex := i;
end;

function TSelectCustomerF.GetCustomer(out CusID: Integer;
  myCaption, CustGroups: String): Boolean;
begin
  Result := False;
  SelectCustomerF := TSelectCustomerF.Create(Application);
  SelectCustomerF.Caption := '«‰ Œ«» ' + myCaption;
  if CustGroups='' then
    CustGroups:='-1';
  try
    with SelectCustomerF do
    begin
      with qryCustomer do
      begin
        Active := False;
        SQL.Add('WHERE(GroupType IN (' + CustGroups + ')) ');
        if not user.PowerUser then
          SQL.Add(' AND dbo.ChkUser(OperatorID,' + IntToStr(user.id) + ')=1');
        Active := True;
        if IsEmpty then
          raise Exception.Create('ÂÌç ' + myCaption +
            'Ì œ— ”Ì” „  ⁄—Ì› ‰‘œÂ «” .');
        ListCustomer.Clear;
        while not eof do
        begin
          ListCustomer.AddItem(fieldbyname('CustName').AsString,
            TObject(fieldbyname('CustID').AsInteger));
          Next;
        end; // while
      end; // with
      try
        ListCustomer.ItemIndex :=
          StrToInt(ReadConfig(APPID, 'LastSelectedCustomer' +
          IntToStr(user.id), '0'));
      except
      end; // try
      if ListCustomer.Items.Count = 1 then
      begin
        CusID := Integer(ListCustomer.Items.Objects[0]);
      end
      else if ShowModal = mrOk then
      begin
        if ListCustomer.ItemIndex = -1 then
          ListCustomer.ItemIndex := 0;
        CusID := Integer(ListCustomer.Items.Objects[ListCustomer.ItemIndex]);
        SaveConfig(APPID, 'LastSelectedCustomer' + IntToStr(user.id),
          IntToStr(ListCustomer.ItemIndex));
        Result := True;
      end
      else
        Result := False;
    end; // with
  finally
    FreeAndNil(SelectCustomerF);
  end; // try

end;

procedure TSelectCustomerF.ListCustomerKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [vk_space, vk_return, vk_escape] then
  begin
    Key := 0;
    ModalResult := mrOk;
  end; // if
end;

procedure TSelectCustomerF.ListCustomerDblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
