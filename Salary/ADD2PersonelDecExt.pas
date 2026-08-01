unit ADD2PersonelDecExt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Mask, DBCtrls, System.Actions;

type
  TADD2PersonelDecExtF = class(TTemplate4F)
    BitBtn12: TBitBtn;
    BitBtn11: TBitBtn;
    srcPersonelDecExt: TDataSource;
    qryPersonelDecExt: TADOQuery;
    Panel2: TPanel;
    qryPersonelInfo: TADOQuery;
    srcPersonelInfo: TDataSource;
    qryPersonelDecExtDecExtID: TIntegerField;
    qryPersonelDecExtFormInfoID: TIntegerField;
    qryPersonelDecExtPersonelNo: TIntegerField;
    qryPersonelDecExtEmployeeAmount: TBCDField;
    qryPersonelDecExtFirstMounth: TIntegerField;
    qryPersonelDecExtEndMounth: TIntegerField;
    qryPersonelDecExtAidNo1: TStringField;
    qryPersonelDecExtAidDate1: TStringField;
    qryPersonelDecExtAidNo2: TStringField;
    qryPersonelDecExtAidDate2: TStringField;
    qryPersonelDecExtDayQuntity: TFloatField;
    qryPersonelDecExtDayTime: TFloatField;
    qryPersonelDecExtEmployerAmount: TBCDField;
    qryPersonelDecExtFormInfoID2: TIntegerField;
    qryPersonelDecExtAccTopicCode: TIntegerField;
    qryPersonelDecExtAccDetailCode: TIntegerField;
    qryPersonelDecExtAccCTopicCode: TIntegerField;
    qryPersonelDecExtAccCTopicCode2: TIntegerField;
    qryPersonelDecExtPaymentLoan: TBCDField;
    qryPersonelDecExtOfficeCode: TIntegerField;
    qryPersonelDecExtProjectInfoID: TIntegerField;
    qryPersonelDecExtOfficeInfoID: TIntegerField;
    qryPersonelDecExtEndDate: TStringField;
    qryPersonelDecExtMinute_: TFloatField;
    qryPersonelDecExtAccCTopicCode3: TIntegerField;
    qryPersonelDecExtState: TWordField;
    qryPersonelDecExtProcCode: TIntegerField;
    qryPersonelDecExtEarthCode: TIntegerField;
    qryPersonelDecExtSettlement: TBCDField;
    qryPersonelDecExtYearID: TIntegerField;
    qryPersonelDecExtStartYear: TIntegerField;
    qryPersonelDecExtEndYear: TIntegerField;
    qryPersonelDecExtSituation: TWordField;
    qryPersonelDecExtSettlementDate: TStringField;
    edtDayQuntity: TDBEdit;
    lbl1: TLabel;
    dbmmoNote_L1: TDBMemo;
    lbl4: TLabel;
    qryPersonelInfoPersonelNo: TIntegerField;
    qryPersonelInfoPersonelName_L1: TStringField;
    pnl1: TPanel;
    edtPersonelNo: TDBEdit;
    edtPersonelName_L1: TDBEdit;
    lbl6: TLabel;
    lbl5: TLabel;
    qryPersonelInfoFormInfoID: TIntegerField;
    lbl2: TLabel;
    qryPersonelDecExtNote_L1: TWideStringField;
    qryPersonelDecExtNote_L2: TWideStringField;
  private
    { Private declarations }
  public
    function enter(qryDetails: TADOQuery): string;
    { Public declarations }
  end;

var

  ADD2PersonelDecExtF: TADD2PersonelDecExtF;

implementation

uses DM, GlobalPro;

{$R *.dfm}

function TADD2PersonelDecExtF.enter(qryDetails: TADOQuery): string;
begin
  ADD2PersonelDecExtF := TADD2PersonelDecExtF.Create(Application);
  try
    with ADD2PersonelDecExtF do
    begin
      lbl2.Caption :=
        Format('لطفا مانده نهایی طلب مرخصی  در تاریخ %s وارد کنید .',
        [var_glb_CurrentDate]);
      with qryDetails do
      begin
        DisableControls;
        First;
        while not Eof do
        begin
          if qryDetails.FieldByName('DecExtID').AsInteger > 0 then
            Break;
          Next;
        end;
        EnableControls;
      end;
      with qryPersonelInfo do
      begin
        Active := False;
        Parameters.ParamByName('DecExtID').Value :=
          qryDetails.FieldByName('DecExtID').AsInteger;
        Active := True;
      end;
      qryDetails.Last;

      with qryPersonelDecExt do
      begin
        Active := False;
        Active := True;
        Insert;
        FieldByName('DecExtID').AsInteger := GetANewCode('','Pay.PersonelDecExt',
          'DecExtID');
        FieldByName('FirstMounth').AsInteger := var_glb_CurrentMonth - 1;
        FieldByName('AidDate1').AsString := var_glb_CurrentDate;
        FieldByName('FormInfoID').AsInteger :=
          qryPersonelInfoFormInfoID.AsInteger;
        FieldByName('PersonelNo').AsInteger :=
          qryPersonelInfoPersonelNo.AsInteger;
        FieldByName('Note_L1').AsString := 'تعدیل';

        qryPersonelDecExtDayQuntity.AsFloat :=
          qryDetails.FieldByName('مانده‏مرخصي').AsFloat;
        if ShowModal = mrOk then
        begin
          qryPersonelDecExtDayQuntity.AsFloat :=
            qryDetails.FieldByName('مانده‏مرخصي').AsFloat -
            qryPersonelDecExtDayQuntity.AsFloat;
          Post;
          qryDetails.Requery;
        end;
      end;
    end;
  finally
    FreeAndNil(ADD2PersonelDecExtF);
  end;
end;

end.
