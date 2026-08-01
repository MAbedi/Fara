unit RecallSpecialRecipts4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, template5, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, CedarDbGrid, Data.Win.ADODB, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TRecallSpecialRecipts4F = class(TTemplate5F)
    qrySpecialRecall4: TADOQuery;
    CedarDbgrid1: TCedarDbgrid;
    srcSpecialRecall4: TDataSource;
    qrySpecialRecall4YearID: TIntegerField;
    qrySpecialRecall4StuffCode: TLargeintField;
    qrySpecialRecall4PersonID1: TIntegerField;
    qrySpecialRecall4PersonID2: TIntegerField;
    qrySpecialRecall4Entity: TFloatField;
    qrySpecialRecall4Weight: TFloatField;
    qrySpecialRecall4UnitSellPrice: TFMTBCDField;
    qrySpecialRecall4TotalPrice: TFloatField;
    qrySpecialRecall4WaterCo: TFloatField;
    qrySpecialRecall4DeficitValue: TFloatField;
    qrySpecialRecall4TaxCo: TFloatField;
    qrySpecialRecall4TaxValue: TFloatField;
    qrySpecialRecall4ItemNote: TStringField;
    qrySpecialRecall4ItemPersonID1: TIntegerField;
    qrySpecialRecall4NewReciptItemID: TIntegerField;
    qrySpecialRecall4AidNumber: TIntegerField;
    qrySpecialRecall4AidDate: TStringField;
    qrySpecialRecall4ReciptCaption: TStringField;
    qrySpecialRecall4c_StuffName: TStringField;
    qrySpecialRecall4CustName: TStringField;
    qrySpecialRecall4CustName_2: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RecallSpecialRecipts4F: TRecallSpecialRecipts4F;

implementation

uses
  DM;

{$R *.dfm}

end.
