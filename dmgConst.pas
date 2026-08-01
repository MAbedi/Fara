unit dmgConst;

interface

uses
  SysUtils, Classes, StdCtrls, ADODB;

type
  Ttable = record
    SchemaName: String;
    tableName: String;
    tableKeyName: String;
    tableCaption: String;
    KeyFieldName: String;
  end; // Ttable

  TdmgConstF = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure FillListBox(lslTableName: TCustomListBox); // ;qryShow:tado)
  end;

var
  dmgConstF: TdmgConstF;
  MyArray: array [1 .. 15] of Ttable;

implementation

{$R *.dfm}

procedure TdmgConstF.FillListBox(lslTableName: TCustomListBox);
var
  i: Integer;
begin
  for i := 1 to 8 do
    lslTableName.AddItem(MyArray[i].tableCaption, TObject(i));
  for i := 10 to High(MyArray) do
    lslTableName.AddItem(MyArray[i].tableCaption, TObject(i));

end;

procedure TdmgConstF.DataModuleCreate(Sender: TObject);
begin
  MyArray[01].tableName := 'Deficits';
  MyArray[01].SchemaName := 'dbo.';
  MyArray[01].tableKeyName := 'DeficitID';

  MyArray[02].tableName := 'LookUps';
  MyArray[02].SchemaName := 'dbo.';
  MyArray[02].tableKeyName := 'LookUpID';

  MyArray[03].tableName := 'UseUnits';
  MyArray[03].SchemaName := 'dbo.';
  MyArray[03].tableKeyName := 'UseUnitID';

  MyArray[04].tableName := 'Units';
  MyArray[04].SchemaName := 'dbo.';
  MyArray[04].tableKeyName := 'UnitCode';

  MyArray[05].tableName := 'Stores';
  MyArray[05].SchemaName := 'dbo.';
  MyArray[05].tableKeyName := 'n_StoreID';

  MyArray[06].tableName := 'CustomersGroup';
  MyArray[06].SchemaName := 'dbo.';
  MyArray[06].tableKeyName := 'CustomerGrpID';

  MyArray[07].tableName := 'Customers';
  MyArray[07].SchemaName := 'dbo.';
  MyArray[07].tableKeyName := 'CustID';

  MyArray[08].tableName := 'PurchaseEffect';
  MyArray[08].SchemaName := 'dbo.';
  MyArray[08].tableKeyName := 'EffectID';

  MyArray[09].tableName := 'UsersStore';
  MyArray[09].SchemaName := 'dbo.';
  MyArray[09].tableKeyName := 'n_UserID';

  MyArray[10].tableName := 'StuffGroups';
  MyArray[10].SchemaName := 'dbo.';
  MyArray[10].tableKeyName := 'GroupID';

  MyArray[11].tableName := 'StuffCoding';
  MyArray[11].SchemaName := 'dbo.';
  MyArray[11].tableKeyName := 'c_StuffCode';

  MyArray[12].tableName := 'StoreStuffs';
  MyArray[12].SchemaName := 'dbo.';
  MyArray[12].tableKeyName := 'c_StuffCode';

  MyArray[13].tableName := 'StoreStuffs';
  MyArray[13].SchemaName := 'dbo.';
  MyArray[13].tableKeyName := 'c_StuffCode'; // StuffsDeficitsRange

  MyArray[14].tableName := 'UseOthers';
  MyArray[14].SchemaName := 'dbo.';
  MyArray[14].tableKeyName := 'UseOtherID';

  MyArray[15].tableName := 'MaliYear';
  MyArray[15].tableKeyName := 'YearID';
  MyArray[15].SchemaName := 'Util.';

//  MyArray[16].tableName := 'Tozin';
//  MyArray[16].tableKeyName := 'TozinID';
//  MyArray[16].SchemaName := 'dbo.';

  MyArray[01].tableCaption := 'كسورات/اضافات';
  MyArray[02].tableCaption := 'اطلاعات پايه و ثابت';
  MyArray[03].tableCaption := 'محل هاي مصرف';
  MyArray[04].tableCaption := 'واحد';
  MyArray[05].tableCaption := 'انبارها';
  MyArray[06].tableCaption := 'گروه مشتريان';
  MyArray[07].tableCaption := 'مشتريان';
  MyArray[08].tableCaption := 'عناوين موثر برخريد';
  MyArray[09].tableCaption := 'انبارو كاربر'; // UsersStore
  MyArray[10].tableCaption := 'گروه كالا';
  MyArray[11].tableCaption := 'كدينگ كالا';
  MyArray[12].tableCaption := 'انبار و كالا';
  MyArray[13].tableCaption := 'كالا و كسورات/اضافات';
  MyArray[14].tableCaption := 'سايرمحل‏هاي مصرف';
  MyArray[15].tableCaption := 'سال های مالی';
//  MyArray[16].tableCaption := 'توزین';

  MyArray[01].KeyFieldName := 'DeficitName';
  MyArray[02].KeyFieldName := 'Name';
  MyArray[03].KeyFieldName := 'UseUnitName';
  MyArray[04].KeyFieldName := 'UnitName';
  MyArray[05].KeyFieldName := 'c_StoreName';
  MyArray[06].KeyFieldName := 'CustomerGrpName';
  MyArray[07].KeyFieldName := 'CustName';
  MyArray[08].KeyFieldName := 'EffectName';
  MyArray[09].KeyFieldName := 'n_StoreID';
  MyArray[10].KeyFieldName := 'GroupName';
  MyArray[11].KeyFieldName := 'c_StuffName';
  MyArray[12].KeyFieldName := 'n_StoreID';
  MyArray[13].KeyFieldName := 'n_StoreID';
  MyArray[14].KeyFieldName := 'UseOtherName';
  MyArray[15].KeyFieldName := 'StartYear';
//  MyArray[16].KeyFieldName := 'TozinNumber';



end;

end.
