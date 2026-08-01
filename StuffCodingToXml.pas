unit StuffCodingToXml;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DB, ADODB, DBActns, ActnList, StdCtrls, Buttons,
  ExtCtrls, Grids, Vcl.DBGrids, ComCtrls, ExportXml, System.Actions;

type
  TStuffCodingToXmlF = class(TTemplate4F)
    qryStuffCoding: TADOQuery;
    qryAid: TADOQuery;
    qryStuffCodingGroup: TSmallintField;
    qryStuffCodingOnvan: TStringField;
    qryStuffCodingVahed: TWordField;
    qryStuffCodingHazine: TBCDField;
    qryStuffCodingRadif: TStringField;
    qryStuffCodingTabaghe: TStringField;
    qryStuffCodingVazn: TFloatField;
    qryStuffCodingGhateKetab: TIntegerField;
    qryStuffCodingJeldType: TIntegerField;
    qryStuffCodingTarikhChap: TDateTimeField;
    qryStuffCodingShabak: TStringField;
    qryStuffCodingTedadJeld: TStringField;
    qryStuffCodingCodeKhas: TStringField;
    qryStuffCodingNobatChap: TStringField;
    qryStuffCodingViraiesh: TStringField;
    qryStuffCodingTedadSafahat: TStringField;
    qryStuffCodingPicture: TStringField;
    qryStuffCodingActive: TStringField;
    actSendCoding: TAction;
    btnSendToXml: TBitBtn;
    btnSendConst: TBitBtn;
    actSendConst: TAction;
    qryConst: TADOQuery;
    qryUpdate: TADOQuery;
    StatusBar1: TStatusBar;
    qryStuffCodingStatus: TWordField;
    qryStuffCodingc_StuffCode: TLargeintField;
    qryStuffCodingCoding: TLargeintField;
    procedure qryStuffCodingAfterScroll(DataSet: TDataSet);

    procedure FormCreate(Sender: TObject);
    procedure actSendCodingExecute(Sender: TObject);
    procedure actSendConstExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    ProgressBar1: tProgressBar;
    Function ConstToXml: Boolean;
    function StuffToXml: Boolean;
    function GetTypeName(typeID: Byte): String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StuffCodingToXmlF: TStuffCodingToXmlF;

implementation

uses DM, mmessage, GlobalPro, Math;

{$R *.dfm}

function TStuffCodingToXmlF.StuffToXml: Boolean;
var
  Stream: TFileStream;
  FName: String;
  i: Integer;
  ChangeType: Integer;
begin
  TitelXml := 'BookCollection';
  if qryStuffCoding.IsEmpty then
    Exit;
  Result := True;
  With TSaveDialog.Create(nil) do
    try
      Filter := 'Xml|.Xml';
      FileName := qryStuffCoding.Owner.Name + '.xml';
      if Execute then
        FName := FileName;
    finally
      Free;
    end;

  if FName = EmptyStr then
    Exit;
  Stream := TFileStream.Create(FName, fmCreate);
  try
    WriteFileBegin(Stream, 'Books');
    with qryStuffCoding do
      try
        DisableControls;
        First;
        ProgressBar1.Max := qryStuffCoding.RecordCount;
        while (not EOF) do
        begin

          WriteRowStart(Stream, 'Book');
          for i := 0 to FieldCount - 1 do
            if Fields[i].Tag <> -1 then
              WriteData(Stream, Fields[i], GetFieldStr(Fields[i]));

          if not qryAid.IsEmpty then
            with qryAid do
            begin
              ChangeType := FieldByName('Type').AsInteger;
              WriteRowStart(Stream, GetTypeName(FieldByName('Type').AsInteger));

              while not EOF do
              begin
                if ChangeType <> FieldByName('Type').AsInteger then
                  WriteRowStart(Stream,
                    GetTypeName(FieldByName('Type').AsInteger));
                WriteRowStart(Stream, 'BookItems');
                WriteData(Stream, FieldByName('Type'),
                  GetFieldStr(FieldByName('Type')));
                WriteData(Stream, FieldByName('ConstID'),
                  GetFieldStr(FieldByName('ConstID')));
                WriteRowEnd(Stream, 'BookItems');
                ChangeType := FieldByName('Type').AsInteger;
                Next;
                if ChangeType <> FieldByName('Type').AsInteger then
                  WriteRowEnd(Stream, GetTypeName(ChangeType));
              end;
              WriteRowEnd(Stream, GetTypeName(ChangeType));
            end;
          { write the end of row }

          WriteRowEnd(Stream, 'Book');
          Edit;
          FieldByName('Status').AsInteger := 3;
          Post;
          StatusBar1.Panels[1].Text := Format('«—”«· ﬂœÌ‰ê : %s',
            [FieldByName('c_StuffCode').AsString]);
          Next;
          Application.ProcessMessages;
          ProgressBar1.StepIt;
        end;
        EnableControls;

      except
        Warn('«‘ﬂ«· œ— «—”«· Xml');
        Result := False;
      end;

    WriteFileEnd(Stream, 'Books');
  finally
    Stream.Free;
  end;

end;

procedure TStuffCodingToXmlF.qryStuffCodingAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryAid do
  begin
    Close;
    Parameters.ParamByName('StuffCode').Value :=
      DataSet.FieldByName('c_StuffCode').AsLargeInt;
    Open;
  End;
end;

procedure TStuffCodingToXmlF.FormCreate(Sender: TObject);
var
  ProgressBarStyle: LongInt;
begin
  inherited;
  qryStuffCoding.Open;
  // with qryStuffCoding do
  // begin
  // SQL.Text := StringReplace(SQL.Text,'%PathName%',
  // IncludeTrailingBackslash(opt._ArchivePath+Trim(APPBank.Name)+'\BookStuffFiles'),[rfReplaceAll]);
  // Open;
  //
  // end;
  ProgressBar1 := tProgressBar.Create(StatusBar1);
  ProgressBar1.Parent := StatusBar1;
  ProgressBarStyle := GetWindowLong(ProgressBar1.Handle, GWL_EXSTYLE);
  ProgressBarStyle := ProgressBarStyle - WS_EX_STATICEDGE;
  SetWindowLong(ProgressBar1.Handle, GWL_EXSTYLE, ProgressBarStyle);
  ProgressBar1.Left := StatusBar1.Left + 3;
  ProgressBar1.Top := 4;
  ProgressBar1.Height := StatusBar1.Height - 6;
  ProgressBar1.Width := StatusBar1.Panels.Items[0].Width - 6;
  ProgressBar1.Min := 0;
  ProgressBar1.Step := 1;
end;

function TStuffCodingToXmlF.GetTypeName(typeID: Byte): String;
begin
  case typeID of
    2:
      Result := 'lstGerdAvarandegan';
    3:
      Result := 'lstPadidAavarandegan';
    4:
      Result := 'lstNevisandegan';
    5:
      Result := 'lstMoalefin';
    6:
      Result := 'lstMotarjemin';
    7:
      Result := 'lstTasvirgaran';
    8:
      Result := 'lstNasherin';
    9:
      Result := 'lstMozuat';
    10:
      Result := 'lstVirastaran';
    11:
      Result := 'lstMosahehin';
    14:
      Result := 'lstSherkathayePakhsh';
    15:
      Result := 'lstGunehayeKetab';
    16:
      Result := 'lstJhanrhayAdabi';
  else
    Result := EmptyStr;
  end;

end;

procedure TStuffCodingToXmlF.actSendCodingExecute(Sender: TObject);
begin
  inherited;
  if StuffToXml then
    qryStuffCoding.Requery;

end;

function TStuffCodingToXmlF.ConstToXml: Boolean;

  procedure UpdateState(ID: Integer; atype: Byte);
  var
    S: String;
  begin
    if atype = 1 then
      S := Format
        ('UPDATE Units SET ChangeState = 3 WHERE (UnitCode = %d)', [ID])
    else
      S := Format
        ('UPDATE LookUps SET ChangeState = 3 WHERE (LookUpID  = %d)', [ID]);
    with qryUpdate do
    begin
      SQL.Text := S;
      ExecSQL;
    end;
  end;

var
  Stream: TFileStream;
  // bkmark: TBookmark;
  FName: String;
  i: Integer;
  // HasState:Boolean;
begin
  Result := True;
  qryConst.Open;
  if qryConst.IsEmpty then
    Exit;
  With TSaveDialog.Create(nil) do
    try
      Filter := 'Xml|.Xml';
      FileName := 'lstConst.xml';
      if Execute then
        FName := FileName;
    finally
      Free;
    end;
  TitelXml := 'ConstCollection';
  if FName = EmptyStr then
    Exit;
  Stream := TFileStream.Create(FName, fmCreate);
  try
    SourceBuffer := StrAlloc(1024);
    WriteFileBegin(Stream, 'lstConst');
    with qryConst do
      try
        ProgressBar1.Max := RecordCount;
        First;
        while (not EOF) do
        begin
          WriteRowStart(Stream, 'Consts');
          StatusBar1.Panels[1].Text := Format('«—”«· À«»  : %d',
            [FieldByName('MapID').AsInteger]);
          for i := 0 to FieldCount - 1 do
            WriteData(Stream, Fields[i], GetFieldStr(Fields[i]));
          { write the end of row }
          WriteRowEnd(Stream, 'Consts');
          UpdateState(FieldByName('MapID').AsInteger,
            FieldByName('Type').AsInteger);
          Application.ProcessMessages;
          ProgressBar1.StepIt;
          Next;
        end;
      except
        Result := False;
      end;
    WriteFileEnd(Stream, 'lstConst');
  finally
    Stream.Free;
    StrDispose(SourceBuffer);
  end;
end;

procedure TStuffCodingToXmlF.actSendConstExecute(Sender: TObject);
begin
  inherited;
  if ConstToXml then
    qryConst.Requery;
end;

procedure TStuffCodingToXmlF.FormDestroy(Sender: TObject);
begin
  inherited;
  ProgressBar1.Free;
end;

end.
