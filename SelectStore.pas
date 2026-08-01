unit SelectStore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, DM, Math;

type
  TSelectStoreF = class(TForm)
    ListStores: TListBox;
    qryStores: TADOQuery;
    edtSerch: TEdit;
    procedure ListStoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListStoresDblClick(Sender: TObject);
    procedure edtSerchChange(Sender: TObject);
  private
    { Private declarations }
    procedure ReadProperties(out aStore: TStore; StoreID: integer;
      var MyEntityDisplayType: Byte);
  public
    function GetStore(out aStore: TStore; myCaption: String;
      StoreKindList: String; var MyEntityDisplayType: Byte): Boolean;
    { Public declarations }
  end;

var
  SelectStoreF: TSelectStoreF;

implementation

uses GlobalPro, FaraConsts;

{$R *.dfm}

procedure TSelectStoreF.edtSerchChange(Sender: TObject);
var
  i: integer;
begin
  inherited;
  for i := 0 to ListStores.Items.Count - 1 do
    if Pos(CorrectFarsiChars(UpperCase(edtSerch.Text)),
      CorrectFarsiChars(ListStores.Items[i])) <> 0 then
      ListStores.ItemIndex := i;
end;

function TSelectStoreF.GetStore(out aStore: TStore; myCaption: String;
  StoreKindList: String; var MyEntityDisplayType: Byte): Boolean;
begin
  Result := False;
  SelectStoreF := TSelectStoreF.Create(Application);
  SelectStoreF.Caption := '«‰ Œ«» ' + myCaption;
  try
    with SelectStoreF do
    begin
      with qryStores do
      begin
        if StoreKindList <> '' then
        begin
          StoreKindList := ' AND (Stores.StoreKind IN (' + StoreKindList + '))';
          SQL.Text := StringReplace(SQL.Text, ':StoreKindList', StoreKindList,
            [rfReplaceAll])
        end
        else
          SQL.Text := StringReplace(SQL.Text, ':StoreKindList', '',
            [rfReplaceAll]);
        Parameters.ParamByName('UserID').Value := User.id;

        Parameters.ParamByName('UserIDAdmin').Value :=
          ifthen(User.PowerUser, 127, User.id);
        Active := True;
        if IsEmpty then
          raise Exception.Create('ÂÌç ' + myCaption +
            'Ì œ— ”Ì” „ »—«Ì ‘„«  ⁄—Ì› ‰‘œÂ «” .');
        ListStores.Clear;
        while not eof do
        begin
          ListStores.AddItem(fieldbyname('c_StoreName').AsString +
            fieldbyname('n_StoreID').AsString,
            TObject(fieldbyname('n_StoreID').AsInteger));
          Next;
        end; // while
      end; // with

      try
        ListStores.ItemIndex :=
          StrToInt(ReadConfig(APPID, 'LastSelectedStore' +
          IntToStr(User.id), '0'));
      except
      end; // try
      if ListStores.Items.Count = 1 then
      begin
        ReadProperties(aStore, integer(ListStores.Items.Objects[0]),
          MyEntityDisplayType);
      end
      else if ShowModal = mrOk then
      begin
        if ListStores.ItemIndex = -1 then
          ListStores.ItemIndex := 0;
        ReadProperties(aStore,
          integer(ListStores.Items.Objects[ListStores.ItemIndex]),
          MyEntityDisplayType);

        SaveConfig(APPID, 'LastSelectedStore' + IntToStr(User.id),
          IntToStr(ListStores.ItemIndex));
        Result := True;
      end
      else
        Result := False;
    end; // with
  finally
    FreeAndNil(SelectStoreF);
  end; // try
end;

procedure TSelectStoreF.ListStoresKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [vk_space, vk_return, vk_escape] then
  begin
    Key := 0;
    ModalResult := mrOk;
  end; // if
end;

procedure TSelectStoreF.ListStoresDblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TSelectStoreF.ReadProperties(out aStore: TStore; StoreID: integer;
  var MyEntityDisplayType: Byte);
begin
  with qryStores do
  begin
    if Locate('n_StoreID', StoreID, []) then
    begin
      aStore.code := fieldbyname('n_StoreID').AsInteger;
      aStore.name := fieldbyname('c_StoreName').AsString;
      aStore.ValuationType := fieldbyname('n_ValuationType').AsInteger;
      aStore.TopicCode := fieldbyname('c_accTopicCode').AsLargeInt;
      aStore.DetailCode := fieldbyname('c_accDetailCode').AsInteger;
      aStore.CTopicCode := fieldbyname('c_accCTopicCode').AsInteger;
      aStore.EntityDisplayType := fieldbyname('EntityDisplayType').AsInteger;
      aStore.StoreKind := fieldbyname('StoreKind').AsInteger;

      // aStore.EntityCaption := fieldbyname('EntityCaption').AsString;
      // aStore.WeightCaption := fieldbyname('WeightCaption').AsString;

      if aStore.EntityDisplayType > 0 then
        MyEntityDisplayType := 2
      else
        MyEntityDisplayType := opt.EntityDisplayType;

    end; // if
  end; // with
end;

end.
