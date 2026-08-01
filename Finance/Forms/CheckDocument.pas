unit CheckDocument;

interface

uses Classes, ADODB, SysUtils, GlobalPro;

type
  TErrorField = (TDetail, TTopic, TcTopic, Tctopic2, Tctopic3, TMoney);

  TCheckDoc = class(Tobject)
  private
    qryCheck: TADOQuery;
    FErrorList: Tstrings;
    FConnection: TADOConnection;
    FqryDocGroup: TADOQuery;
    FqryDocument: TADOQuery;
    FYearId: Integer;
    FStartYear: string;
    FendYear: string;
    FerrorField: TErrorField;
    procedure SetErrorList(const Value: Tstrings);
    procedure SetqryDocGroup(const Value: TADOQuery);
    procedure SetqryDocument(const Value: TADOQuery);
    function GetLastConstDocDate: String;
    procedure SetYearId(const Value: Integer);
    procedure SeterrorField(const Value: TErrorField);
  public
    constructor Create(Const adc: TADOConnection);
    function ValidateDocument: Boolean;
    function ValidateArticle(out ResultMessage: String;
      QryDoc: TADOQuery = nil): Boolean;
    destructor Destroy; override;
    property YearId: Integer read FYearId write SetYearId;
    property ErrorList: Tstrings read FErrorList write SetErrorList;
    property qryDocGroup: TADOQuery read FqryDocGroup write SetqryDocGroup;
    property qryDocument: TADOQuery read FqryDocument write SetqryDocument;
    property errorField: TErrorField read FerrorField write SeterrorField;
  end;

implementation

uses shamsiDate;

{ TCheckDoc }

constructor TCheckDoc.Create(Const adc: TADOConnection);
begin
  FConnection := adc;
  qryCheck := TADOQuery.Create(nil);
  qryCheck.SQL.Text :=
    'select * from acc.CheckAccCode(:TopicCode,:DetailCode,:CtopicCode1,:CtopicCode2,:CtopicCode3) as a ';
  FErrorList := TStringList.Create;
  with TADOQuery.Create(nil) do
  begin
    Connection := FConnection;
    Connection := FConnection;
    SQL.Text := 'select StartYear ,EndYear From util.MaliYear';
    SQL.Add('WHERE (YearId = :YearID)');
    Parameters.ParamByName('YearId').Value := YearId;
    Open;
    FStartYear := Fields[0].AsString;
    FendYear := Fields[1].AsString;
    Close;
  end;

end;

destructor TCheckDoc.Destroy;
begin
  qryCheck.Free;
  FErrorList.Free;
  inherited;
end;

procedure TCheckDoc.SeterrorField(const Value: TErrorField);
begin
  FerrorField := Value;
end;

procedure TCheckDoc.SetErrorList(const Value: Tstrings);
begin
  FErrorList := Value;
end;

procedure TCheckDoc.SetqryDocGroup(const Value: TADOQuery);
begin
  FqryDocGroup := Value;
end;

procedure TCheckDoc.SetqryDocument(const Value: TADOQuery);
begin
  FqryDocument := Value;
end;

procedure TCheckDoc.SetYearId(const Value: Integer);
begin
  FYearId := Value;
end;

function TCheckDoc.ValidateArticle(out ResultMessage: String;
  QryDoc: TADOQuery): Boolean;
var
  Q: TADOQuery;
begin
  ResultMessage := EmptyStr;
  Result := false;
  if QryDoc = nil then
    Q := FqryDocument
  else
    Q := QryDoc;

  with Q do
  begin
    With qryCheck do
    begin
      Close;
      Parameters.ParamByName('TopicCode').Value := Q.fieldbyname('TopicCode')
        .AsString;
      Parameters.ParamByName('DetailCode').Value := Q.fieldbyname('DetailCode')
        .AsInteger;
      Parameters.ParamByName('CtopicCode1').Value := Q.fieldbyname('CTopicCode')
        .AsInteger;
      Parameters.ParamByName('CTopicCode2').Value := Q.fieldbyname
        ('CTopicCode2').AsInteger;
      Parameters.ParamByName('CtopicCode3').Value := Q.fieldbyname
        ('CTopicCode3').AsInteger;
      Open;
    end;

    // if FieldByName('_MoeenName_L1').AsString = EmptyStr then
    // with Dmf.qry_Temp do
    // begin

    if qryCheck.fieldbyname('Moeen').AsInteger = 0 then
    begin
      ResultMessage := 'ﬂœ Õ”«» „⁄ »— ‰Ì” .';
      FerrorField := TTopic;
      Abort;
    end; // if
    // end;//with
    if qryCheck.fieldbyname('HassDetail').AsInteger > 0 then
    begin
      if qryCheck.fieldbyname('IsValidDetailForMoeen').IsNull then
      begin
        // if GetDetailsOfMoeen(fieldbyname('TopicCode').AsInteger).IndexOf(fieldbyname('DetailCode').AsString)=-1 then begin
        FerrorField := TDetail;
        ResultMessage := 'ﬂœ  ›’Ì·Ì „⁄ »— ‰Ì” .';
        exit;
      end;
      // if FieldByName('DetailCode').AsInteger<>0 then
      // begin
      // s:='fda hc hujfhv';
      // CheckCreditDetail(FieldByName('DetailCode').AsInteger,s);
      // DBGrid1.SelectedIndex:=4;
      // Exit;
      //
      // end;
    end
    else
    begin
      if fieldbyname('DetailCode').AsInteger <> 0 then
      begin
        ResultMessage := 'ﬂœ  ›’Ì·Ì ' + fieldbyname('DetailCode')
          .AsString + '»—«Ì ﬂœ Õ”«» ' + fieldbyname('TopicCode')
          .AsString + ' „⁄ »— ‰Ì” .';
        FerrorField := TDetail;
        exit;

      end;

    end; // else not HasDetail

    if qryCheck.fieldbyname('HassCTopic3').AsInteger > 0 then
    begin
      if qryCheck.fieldbyname('IsValidCTopic3ForCTopics2').IsNull then
      begin
        ResultMessage := 'ﬂœ  ›’Ì·Ì 1 3 „⁄ »— ‰Ì” .';
        FerrorField := Tctopic3;
        exit;
      end;
    end
    else
    begin
      if fieldbyname('CTopicCode3').AsInteger <> 0 then
      begin
        ResultMessage := ' ﬂœ  ›’Ì·Ì 1 3 ' + fieldbyname('CTopicCode3')
          .AsString + ' »—«Ì ﬂœ  ›’Ì·Ì 1 2 ' + fieldbyname('CTopicCode2')
          .AsString + ' „⁄ »— ‰Ì” .';
        FerrorField := Tctopic3;
        exit;
      end;
    end; // else not HassCTopic3

    if qryCheck.fieldbyname('HassCTopic2').AsInteger > 0 then
    begin
      if qryCheck.fieldbyname('IsValidCTopic2ForCTopics').IsNull then
      begin
        ResultMessage := 'ﬂœ  ›’Ì·Ì 3 „⁄ »— ‰Ì” .';
        FerrorField := Tctopic2;
        exit;
      end;
    end
    else
    begin
      if fieldbyname('CTopicCode2').AsInteger <> 0 then
      begin
        ResultMessage := ' ﬂœ  ›’Ì·Ì 1 2 ' + fieldbyname('CTopicCode2')
          .AsString + ' »—«Ì ﬂœ „—ﬂ“Â“Ì‰Â1 ' + fieldbyname('CTopicCode')
          .AsString + ' „⁄ »— ‰Ì” .';
        FerrorField := Tctopic2;
        exit;
      end;

    end; // else not HassCTopic3

    if qryCheck.fieldbyname('HassCTopic').AsInteger > 0 then
    begin
      if qryCheck.fieldbyname('IsValidCTopicForMoeen').IsNull then
      begin
        ResultMessage := 'ﬂœ  ›’Ì·Ì 1__ „⁄ »— ‰Ì” .';
        FerrorField := TcTopic;
        exit;
      end;
    end
    else if fieldbyname('CTopicCode').AsInteger <> 0 then
    begin
      ResultMessage := '__ﬂœ  ›’Ì·Ì 1 ' + fieldbyname('CTopicCode')
        .AsString + '»—«Ì ﬂœ Õ”«» ' + fieldbyname('TopicCode')
        .AsString + ' „⁄ »— ‰Ì” .';
      FerrorField := TcTopic;
      exit;
    end;

    if (fieldbyname('Debt').AsCurrency < 0) or
      (fieldbyname('Credit').AsCurrency < 0) then
    begin
      ResultMessage := '„»·€ „‰›Ì „⁄ »— ‰Ì” .';
      FerrorField := TMoney;
      exit;
    end; // if

    if (fieldbyname('Debt').AsCurrency > 0) and
      (fieldbyname('Credit').AsCurrency > 0) then
    begin
      ResultMessage := '„»·€ »œÂﬂ«— Ê »” «‰ﬂ«— Â„“„«‰ Ê«—œ ‘œÂù«‰œ.';
      FerrorField := TMoney;
      exit;
    end; // if

    // if ChkDocEmpty then
    // if (fieldbyname('Debt').AsCurrency + fieldbyname('Credit').AsCurrency)
    // = 0 then
    // begin
    // ResultMessage := '„»·€ Ê«—œ ‰‘œÂ ';
    // DBGrid1.SelectedIndex := 8;
    // exit;
    // end; // if

    // if (fieldbyname('Debt').AsString = Null) then
    // fieldbyname('Debt').AsCurrency := 0;
    // if (fieldbyname('Credit').AsString = Null) then
    // fieldbyname('Credit').AsCurrency := 0;

  end; // with
  Result := True;

end;

function TCheckDoc.ValidateDocument: Boolean;
var
  msg: String;
  S, StartDate: String;
  ClonDoc: TADOQuery;
  mandeh, bed, bes: Real;
begin
  Result := True;
  ClonDoc := TADOQuery.Create(nil);
  try
    ErrorList.Clear;
    bed := 0;
    bes := 0;
    ClonDoc.Clone(FqryDocument, ltBatchOptimistic);
    with ClonDoc do
      try
        First;
        Sort := FqryDocument.Sort;
        while not Eof do
        begin
          bed := bed + fieldbyname('').AsFloat;
          bes := bes + fieldbyname('').AsFloat;
          Next;
        end;
        mandeh := bed - bes;

        if mandeh <> 0 then
        begin
          ErrorList.AddObject('”‰œ „Ê«“‰Â ‰Ì” .', Tobject(0));
          // ShowWarning('”‰œ „Ê«“‰Â ‰Ì” .');
          Result := false;
        end; // if
        S := FqryDocGroup.fieldbyname('DocDate').AsString;
        StartDate := GetLastConstDocDate;

        if Length(Trim(S)) < 7 then
        begin
          ErrorList.AddObject(' «—ÌŒ ”‰œ „⁄ »— ‰Ì” ', Tobject(0));
          // ShowWarning(' «—ÌŒ ”‰œ „⁄ »— ‰Ì” ˛');
          Result := false;
        end;

        if not ValidateDatasetDates(FqryDocGroup, FStartYear, FendYear) then
        begin
          ErrorList.AddObject(' «—ÌŒ ”‰œ „⁄ »— ‰Ì” .', Tobject(0));
          Result := false;
        end;

        // else if not(((qry_DocGroups.State in [dsedit]) and
        // (dmf.CheckLevel(edtState2, FormType,
        // false) or dmf.CheckLevel(edtState3, FormType, false)))) then
        // if not validate_date(false, StartDate, APPBank.endYear, ' «—ÌŒ ”‰œ',
        // S, false) then
        // begin
        //
        // lslWarnings.Items.AddObject('”‰œ œ— «Ì‰  «—ÌŒ œ«∆„ ‘œÂ «”  .˛',
        // Tobject(0));
        // ShowWarning('”‰œ œ— «Ì‰  «—ÌŒ œ«∆„ ‘œÂ «”  .˛');
        // Result := false;
        // end;
        while not Eof do
        begin
          if not ValidateArticle(msg, ClonDoc) then
          begin
            Result := false;
            ErrorList.AddObject(Format('[—œÌ› %d]: %s', [RecNo, msg]),
              Tobject(RecNo));
          end; // if
          Next;
          // GoProgressBar('');
        end; // while
        // lblWarnCount.Caption := ' ⁄œ«œ Œÿ«Â« = ' + IntToStr(lslWarnings.Count);
      finally
        ClonDoc.Free;
        // CloseMessage;
      end; // try
  except
    Result := false
  end;

end;

function TCheckDoc.GetLastConstDocDate: String;
var
  qry: TADOQuery;
begin
  qry := TADOQuery.Create(nil);

  with qry do
  begin
    Connection := FConnection;
    SQL.Text :=
      'SELECT Max(DocDate) FROM acc.DocGroups WHERE ((Status)=3) and (YearID = :YearID)';
    Parameters.ParamByName('YearID').Value := FYearId;
    Open;
    Result := Fields[0].AsString;
    Close;
  end; // with
  if Result < FStartYear then
    Result := FendYear;
end;

end.
