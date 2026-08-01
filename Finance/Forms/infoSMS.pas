unit infoSMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, ExtCtrls, StdCtrls, Buttons, ImgList, ActnList, DB,
  MySplitter;

type
  SMS = record
    Displayname: string;
    FieldName: string;
    Value: string;
  end;

  DataSMS = ^SMS;

  TInfoSMSF = class(TBaseFormF)
    Panel1: TPanel;
    actSendSMS: TAction;
    pnlsms: TPanel;
    lstDestination: TListBox;
    btnAdd: TBitBtn;
    btnRemove: TBitBtn;
    lstSource: TListBox;
    MySplitter1: TMySplitter;
    memResult: TMemo;
    Panel2: TPanel;
    btnSendSMS: TBitBtn;
    lstWarn: TListBox;
    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure lstSourceDblClick(Sender: TObject);
    procedure lstDestinationDblClick(Sender: TObject);
    procedure actSendSMSExecute(Sender: TObject);
  private
    FDataSet: TDataSet;
    FMobile: string;
    procedure AddItem;
    procedure RemoveItem;
    procedure MakeSMS;
    function CountSMS(const S: string): Byte;
    { Private declarations }
  public
    procedure ShowSMS(const aDataset: TDataSet; const FieldMobile: string;
      CanShow: Boolean = false);
    { Public declarations }
  end;

var
  InfoSMSF: TInfoSMSF;

implementation

uses GlobalPro, SMS;

{$R *.dfm}

procedure TInfoSMSF.actSendSMSExecute(Sender: TObject);

  function IsNumber(const Number: string): Boolean;
  begin
    try
      StrToInt(Number);
      Result := True;
    except
      Result := false;
      raise;
    end;
  end;

const
  aWarn = 'تعداد SMS ارسالی : %D ' + #13#10 + 'بزرگترین SMS ارسالی : %D' +
    #13#10 + 'آیا مطمئن هستید؟';
var
  aSMS: TSMS;
  aNum: string;
begin
  inherited;
  aSMS := TSMS.Create(Self);
  with aSMS do
    try
      CharacterMode := chUnicode;
      Port := '';
      BaudRate := br300;

      if lstDestination.Items.Count = 0 then
      begin
        Warn('موردی انتخاب نشده است');
        Exit;
      end;

      if get_response(Format(aWarn, [FDataSet.RecordCount, 0])) <> mrYes then
        Exit;

      with FDataSet do
        try
          DisableControls;
          First;
          while not eof do
            try
              aNum := FDataSet.FieldByName(FMobile).AsString;
              if IsNumber(aNum) then
              begin
                MakeSMS;
                SendSMS(aNum, '+9891100500', memResult.Text);
                sleep2(100);
                Next
              end;
            except
              lstWarn.AddItem(aNum, TObject(0));
            end;
          ModalResult := mrOk;

        finally
          EnableControls;
        end;

    finally
      aSMS.Free;
    end;

end;

procedure TInfoSMSF.AddItem;
var
  i: Integer;
  obj: TObject;
  aDisplay: string;
begin
  i := lstSource.ItemIndex;
  if i > -1 then
  begin
    aDisplay := lstSource.Items[i];
    obj := lstSource.Items.Objects[i];
    if lstDestination.Items.IndexOf(aDisplay) = -1 then
    begin
      lstDestination.AddItem(aDisplay, obj);
      lstSource.DeleteSelected;
    end;
    MakeSMS;
  end;
end;

procedure TInfoSMSF.btnAddClick(Sender: TObject);
begin
  inherited;
  AddItem;
end;

procedure TInfoSMSF.btnRemoveClick(Sender: TObject);
begin
  inherited;
  RemoveItem;
end;

function TInfoSMSF.CountSMS(const S: string): Byte;
var
  N: Integer;
begin
  N := Length(S);
  Result := Trunc(N / 70);
  if (N mod 70) <> 0 then
    Result := Result + 1;
end;

procedure TInfoSMSF.lstDestinationDblClick(Sender: TObject);
begin
  inherited;
  RemoveItem;
end;

procedure TInfoSMSF.lstSourceDblClick(Sender: TObject);
begin
  inherited;
  AddItem;
end;

procedure TInfoSMSF.MakeSMS;
var
  i: Integer;
  obj: TObject;
  aDisplay: string;
  avalue: string;
begin
  memResult.Lines.Clear;
  for i := 0 to lstDestination.Items.Count - 1 do
  begin
    obj := lstDestination.Items.Objects[i];
    avalue := FDataSet.FieldByName(DataSMS(obj).FieldName).AsString;
    memResult.Lines.Add(DataSMS(obj).Displayname + ':' + avalue);
  end;
  // lblCoutSMS.Caption := Format('Count SMS : %D', [CountSMS(memResult.Text)]);
end;

procedure TInfoSMSF.RemoveItem;
var
  i: Integer;
  obj: TObject;
  aDisplay: string;
begin
  i := lstDestination.ItemIndex;
  if i > -1 then
  begin
    aDisplay := lstDestination.Items[i];
    obj := lstDestination.Items.Objects[i];
    if lstSource.Items.IndexOf(aDisplay) = -1 then
    begin
      lstSource.AddItem(aDisplay, obj);
      lstDestination.DeleteSelected;
    end;
    MakeSMS
  end;
end;

procedure TInfoSMSF.ShowSMS(const aDataset: TDataSet; const FieldMobile: string;
  CanShow: Boolean);
var
  i: SmallInt;
  aSMS: DataSMS;
begin
  InfoSMSF := TInfoSMSF.Create(Application);
  with InfoSMSF do
    try
      FDataSet := aDataset;
      FMobile := FieldMobile;
      for i := 0 to aDataset.Fields.Count - 1 do
      begin
        New(aSMS);
        aSMS.Displayname := aDataset.Fields[i].Displayname;
        aSMS.Value := aDataset.Fields[i].AsString;
        if aDataset.Fields[i].DisplayLabel <> aDataset.Fields[i].FieldName then
          lstSource.AddItem(aDataset.Fields[i].DisplayLabel, TObject(aSMS));
      end;
      ShowModal;
    finally
      Free;
    end;
end;

end.
