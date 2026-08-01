unit DMnipc;

interface

uses
  System.SysUtils, System.Classes, IPPeerClient, REST.Client, Data.Win.ADODB,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Json, System.DateUtils,
  Unipc, REST.Types,Vcl.Dialogs,data.db;

type
  TDMnipcF = class(TDataModule)
    procedure DataModuleDestroy(Sender: TObject);
  private
    en: TEntityDTO;
    res: TResultDTO;
    { Private declarations }
  public
    procedure Init;
    function Post(qryRecipts: TDataSet; qryItems, qryinit: TADOQuery): string;
    function PostCheck(qryRecipts: TDataSet): string;
    { Public declarations }
  end;

var
  DMnipcF: TDMnipcF;

implementation

uses
  GlobalPro, dm;

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}
{ TDataModule2 }

procedure TDMnipcF.DataModuleDestroy(Sender: TObject);
begin
  res.Free;
  en.Free;
end;

procedure TDMnipcF.Init;
begin

end;

function TDMnipcF.Post(qryRecipts: TDataSet; qryItems, qryinit: TADOQuery): string;
var
  RESTResponse1: TRESTResponse;
  RESTRequest1: TRESTRequest;
  RESTClient1: TRESTClient;
  aJson: TRootDTO;
  // ai1,ai2: TAdditionalInformationDTO;
  Good: TGoodsIssuesListDTO;
  pass, s: string;
  date8: string;
  myJson: string;
  testTitle, testValue: string;
  b: Boolean;
  i: Integer;
begin
  if qryRecipts.FieldByName('External_ID').AsString.Trim = EmptyStr then
    try

      RESTResponse1 := TRESTResponse.Create(Self);
      RESTRequest1 := TRESTRequest.Create(Self);
      RESTClient1 := TRESTClient.Create(Self);

      RESTResponse1.Name := 'RESTResponse1';
      RESTRequest1.Name := 'RESTRequest1';
      RESTRequest1.Client := RESTClient1;
      RESTRequest1.Method := rmPOST;
      with RESTRequest1.Params.AddItem do
      begin
        Kind := pkREQUESTBODY;
        name := 'body';
        Options := [poDoNotEncode];
        ContentType := ctAPPLICATION_JSON;
      end;
      RESTRequest1.Response := RESTResponse1;
      RESTRequest1.SynchronizedEvents := False;
      RESTClient1.Name := 'RESTClient1';
      RESTClient1.Accept :=
        'application/json, text/plain; q=0.9, text/html;q=0.8,';
      RESTClient1.AcceptCharset := 'UTF-8, *;q=0.8';
      RESTClient1.BaseURL := 'https://webps.nipc.ir/Services/SaveDraftPayments';
      RESTClient1.ContentType := 'application/json';
      // RESTClient1.Params := <>;
      RESTClient1.HandleRedirects := True;
      RESTClient1.RaiseExceptionOn500 := False;

      aJson := TRootDTO.Create;
      aJson.Username := opt.NipcUserName; // 'ehtemamjam';
      pass := opt.NipcPassWord;
      // 'ea58c9e780149c45bdb23f519bf9670283d2028498daae5c54dc438a53cc289f';
      date8 := FormatDateTime('yyyyMMdd', Now);
      DmF.qryConfig.Open;

      aJson.Password := LowerCase(MD5(aJson.Username + date8 + pass));
      en := TEntityDTO.Create;
      with qryRecipts do
      begin
        en.Owner := FieldByName('ReciptNumber').AsString;
        en.Number := FieldByName('ReciptNumber').AsString;
        en.Warehouse_Id := FieldByName('WarehouseID').AsString;
        // شناسه کسب و کار
        en.Load_Date := FieldByName('ReciptDate').AsString;
        en.Reference_Doc_Type := 'BL';
        en.Reference_Doc_Number := FieldByName('DocNo').AsString;
        // en.Carrier_National_Id := '2342525452213';
        en.Reference_Doc_Id := FieldByName('ID').AsString;
        en.Consignee_National_Id := DmF.qryConfig.FieldByName
          ('NationalCodeField').AsString; // '9999999999';
        en.Carrier_Name := DmF.qryConfig.FieldByName('CompanyName').AsString;
        en.Vehicle_Name := FieldByName('MachineName').AsString;
        en.Vehicle_Number := FieldByName('MachineNo').AsString;
        en.Vehicle_Type := '1';
        // en.Net_Weight := 21;
        en.Postal_Code := DmF.qryConfig.FieldByName('PostalCode').AsString;
        // en.Gross_Weight := 1010;
        // en.Description := 'lot of description test';
        // en.Place_Description := 'lot of description test';
        en.Goods_Issue_Date := FieldByName('ReciptDate').AsString;
        en.Gov_Number := FieldByName('ReciptNumber').AsString;
        en.Contractor_National_Id := DmF.qryConfig.FieldByName
          ('NationalCodeField').AsString;
        en.Owner_Birth_Date := '1396/11/08'; // تاریخ بهره برداری اهتمام جم
      end;
      aJson.Entity := en;
      with qryItems do
      begin
        Active := False;
        Parameters.ParamByName('ReciptID').Value :=
          qryRecipts.FieldByName('ReciptID').AsInteger;
        Parameters.ParamByName('ServerID').Value :=
          qryRecipts.FieldByName('ServerID').AsInteger;
        Parameters.ParamByName('YearID').Value :=
          qryRecipts.FieldByName('YearID').AsInteger;
        Active := True;
        while not eof do
        begin
          Good := TGoodsIssuesListDTO.Create;
          Good.Good_Id := FieldByName('_SD2').AsString;
          Good.Production_Type := '2';
          Good.Measurement_Unit := '1';
          Good.Net_Weight := IntToStr(FieldByName('OutputEntity').AsInteger +
            FieldByName('InputEntity').AsInteger);
          Good.Count :=
            ((FieldByName('OutputWeight').AsInteger + FieldByName('InputWeight')
            .AsInteger));
          // aJson.Entity.GoodsIssuesList.Clear;
          aJson.Entity.GoodsIssuesList.Add(Good);
          // Good.AdditionalInformation.Clear;

          for i := 3 to 9 do
          begin
            if opt.ExtraCoding.Captions[i] <> '' then
            begin
              testTitle := opt.ExtraCoding.Captions[i];
              testValue := FieldByName('_SD' + i.ToString).AsString;
              Good.AdditionalInformation.Add(AdditionalInfAdd(testTitle,
                testValue));
            end;
          end;

          {
            // aJson.Entity.AdditionalInformation.Clear;
            aJson.Entity.AdditionalInformation.Add(AdditionalInfAdd(testTitle,
            testValue));
          }

          Next;
        end;
      end;

      myJson := aJson.AsJson.Replace('"AdditionalInformation":null,', '');
      myJson := myJson.Replace('"GoodsIssuesList":null,', '');

      RESTRequest1.Body.ClearBody;
      RESTRequest1.Body.Add(myJson);
      if CtrlDown then
        SaveUniCodeFile(myJson, __TheTempDIR + 'myJson.Json');
      // Result := myJson;
      // Result := '{"Status":0,"Message":"اطلاعات با موفقیت ذخیره گردید","Model":"22059"}';
      // Result := '{"Status":1,"Message":null,"Model":[{"FieldName":"Number","w":"Message ","MessageType":"danger"},{"FieldName":"Gov_Number","w":"Message ","MessageType":"danger"}]}';

      RESTRequest1.Execute;
      if RESTResponse1.Status.Success then
      begin
        Result := RESTResponse1.Content;
        b := True;
      end
      else
      begin
        Result := RESTResponse1.Content;
        b := False;
      end;

      try
        res := TResultDTO.Create;
        res.AsJson := Result;
      except // on E: Exception do
        res.Status := 1;
        res.Message := Result;
      end;

      if (res.Status = 0) and (res.Message.Trim <> EmptyStr) and b then
      begin
        s := 'UPDATE Recipts SET External_ID = ''%s'' , TruckNumber = ''%s'' WHERE (ID = %s)';
        s := Format(s, [res.Model.Trim, res.Model.Trim,
          qryRecipts.FieldByName('ID').AsString]);
        DmF.adcBSell.Execute(s);
        Warn2(res.Message, 3000);
      end
      else
        Warn2(Result, 0);
      res.Free;

    finally
      aJson.Free;
      RESTResponse1.Free;
      RESTRequest1.Free;
      RESTClient1.Free;
      // a1.Free;
      // Good.Free;
      // FreeAndNil(aa);

    end
  else
    Warn2(qryRecipts.FieldByName('ReciptNumber').DisplayLabel +
      qryRecipts.FieldByName('ReciptNumber').AsString +
      ' قبلا ارسال شده است', 3000);

end;

function TDMnipcF.PostCheck(qryRecipts: TDataSet): string;
var
  RESTResponse1: TRESTResponse;
  RESTRequest1: TRESTRequest;
  RESTClient1: TRESTClient;
  pass,  Password: string;
  date8: string;
  b: Boolean;
begin
  if qryRecipts.FieldByName('TruckNumber').AsString.Trim <> EmptyStr then
    try

      RESTResponse1 := TRESTResponse.Create(Self);
      RESTRequest1 := TRESTRequest.Create(Self);
      RESTClient1 := TRESTClient.Create(Self);

      RESTResponse1.Name := 'RESTResponse1';
      RESTRequest1.Name := 'RESTRequest1';
      RESTRequest1.Client := RESTClient1;
      RESTRequest1.Method := rmPOST;
      with RESTRequest1.Params.AddItem do
      begin
        Kind := pkREQUESTBODY;
        name := 'body';
        Options := [poDoNotEncode];
        ContentType := ctAPPLICATION_JSON;
      end;
      RESTRequest1.Response := RESTResponse1;
      RESTRequest1.SynchronizedEvents := False;
      RESTClient1.Name := 'RESTClient1';
      RESTClient1.Accept :=
        'application/json, text/plain; q=0.9, text/html;q=0.8,';
      RESTClient1.AcceptCharset := 'UTF-8, *;q=0.8';
      RESTClient1.BaseURL := 'http://webps.nipc.ir/Services/getDraftStatus';
      RESTClient1.ContentType := 'application/json';
      RESTClient1.HandleRedirects := True;
      RESTClient1.RaiseExceptionOn500 := False;

      pass := opt.NipcPassWord;
      date8 := FormatDateTime('yyyyMMdd', Now);
      Password := LowerCase(MD5(opt.NipcUserName + date8 + pass));
      RESTClient1.BaseURL := RESTClient1.BaseURL +
        Format('?userName=%s&password=%s&id=%s', [opt.NipcUserName, Password,
        qryRecipts.FieldByName('TruckNumber').AsString]);
      RESTRequest1.Execute;
      if RESTResponse1.Status.Success then
      begin
        Result := RESTResponse1.Content;
        b := True;
      end
      else
      begin
        Result := RESTResponse1.Content;
        b := False;
      end;


      MessageDlg(Result, mtInformation, [mbOK], 0);
//       MessageDlg(Result, mtError, [mbOK], 0);

    finally
      RESTResponse1.Free;
      RESTRequest1.Free;
      RESTClient1.Free;

    end
  else
    Warn2(qryRecipts.FieldByName('ReciptNumber').DisplayLabel +
      qryRecipts.FieldByName('ReciptNumber').AsString +
      ' هنوز ارسال نشده است', 3000);

end;

end.
