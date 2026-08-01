unit ReciptsImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls, Buttons,
  DM, GlobalPro, filter_ADO, DB, Grids, DBGrids, ADODB;

type
  TReciptsImportF = class(Ttemplate2MDIF)
    qryRecipts: TADOQuery;
    qryReciptsReciptDate: TStringField;
    qryReciptsPersonID1: TIntegerField;
    qryReciptsStoreID: TSmallintField;
    qryReciptsReciptType: TWordField;
    qryReciptsPersonID2: TIntegerField;
    qryReciptsSellsMethod: TIntegerField;
    qryReciptsSellsEmporium: TIntegerField;
    qryReciptsReciptState: TWordField;
    qryReciptsDocNo: TIntegerField;
    qryReciptsDocDate: TStringField;
    qryReciptsTotallSellPrice: TBCDField;
    qryReciptsTaxValue: TBCDField;
    qryReciptsStoreID2: TSmallintField;
    qryReciptsPersonID3: TIntegerField;
    qryReciptsModifyDate: TDateTimeField;
    srcRecipts: TDataSource;
    DBGrid1: TDBGrid;
    qryReciptsSerial: TIntegerField;
    qryReciptsAddDecValue: TIntegerField;
    qryReciptsServiceValue: TIntegerField;
    qryReciptsExpireDate: TStringField;
    qryReciptsDebtControlActive: TIntegerField;
    qryReciptsDeliveryID: TIntegerField;
    qryReciptsPersonID2Bed: TIntegerField;
    qryReciptsRelatedID: TIntegerField;
    qryReciptsCostDownSave: TIntegerField;
    qryReciptsTransmittal: TIntegerField;
    qryReciptsStuffCode: TLargeintField;
    qryReciptsStuffSize: TStringField;
    qryReciptsStuffDiameter: TFloatField;
    qryReciptsStuffAlloy: TStringField;
    qryReciptsInputEntity: TIntegerField;
    qryReciptsOutputEntity: TIntegerField;
    qryReciptsInputWeight: TIntegerField;
    qryReciptsOutputWeight: TIntegerField;
    qryReciptsRequestedEntity: TIntegerField;
    qryReciptsRequestedWeight: TIntegerField;
    qryReciptsControlCode: TLargeintField;
    qryReciptsStuffGrade: TIntegerField;
    qryReciptsTotalInputPrice: TBCDField;
    qryReciptsTotalOutputPrice: TBCDField;
    qryReciptsUnitSellPrice: TFMTBCDField;
    qryReciptsItemNote: TStringField;
    qryReciptsacc_TopicCode: TIntegerField;
    qryReciptsacc_DetailCode: TIntegerField;
    qryReciptsacc_CTopicCode: TIntegerField;
    qryReciptsacc_CTopicCode2: TIntegerField;
    qryReciptsProductCode: TLargeintField;
    qryReciptsProductModel: TIntegerField;
    qryReciptsOrderState: TIntegerField;
    qryReciptsShift: TIntegerField;
    qryReciptsMachineWeight: TIntegerField;
    qryReciptsTotalWeight: TIntegerField;
    qryReciptsMachineFullWeight: TIntegerField;
    qryReciptsSugarCo: TIntegerField;
    qryReciptsSugarEntity: TIntegerField;
    qryReciptsacc_CTopicCode3: TIntegerField;
    qryReciptsUnitCommission: TIntegerField;
    qryReciptsTaxCo: TFloatField;
    qryReciptsTotalValue: TBCDField;
    qryReciptsReciptValue: TBCDField;
    qryReciptsUseOtherID: TIntegerField;
    actFilter: TAction;
    BitBtn1: TBitBtn;
    procedure actFilterExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReciptsImportF: TReciptsImportF;

implementation

{$R *.dfm}

procedure TReciptsImportF.actFilterExecute(Sender: TObject);
begin
  inherited;
      11
end;

end.
