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
    procedure FillListBox(lslTableName: TListBox); // ;qryShow:tado);
  end;

var
  dmgConstF: TdmgConstF;
  MyArray: array [1 .. 5] of Ttable;

implementation

{$R *.dfm}

procedure TdmgConstF.FillListBox(lslTableName: TListBox);
var
  i: Integer;
begin
  for i := 1 to 5 do
    lslTableName.AddItem(MyArray[i].tableCaption, TObject(i));
end;

procedure TdmgConstF.DataModuleCreate(Sender: TObject);
begin
  MyArray[01].tableCaption := 'فرمهای اطلاعاتی';
  MyArray[01].tableName := 'FormTypes';
  MyArray[01].SchemaName := 'Pay.';
  MyArray[01].tableKeyName := 'FormType';
  MyArray[01].KeyFieldName := 'FormCaption_L1';

  MyArray[02].tableCaption := 'تعاریف فرمها';
  MyArray[02].tableName := 'FormsInfo';
  MyArray[02].SchemaName := 'Pay.';
  MyArray[02].tableKeyName := 'FormInfoID';
  MyArray[02].KeyFieldName := 'InfoName_L1';

  MyArray[03].tableCaption := 'معرفی پرسنل';
  MyArray[03].tableName := 'PersonelInfo';
  MyArray[03].SchemaName := 'Pay.';
  MyArray[03].tableKeyName := 'PersonelNo';
  MyArray[03].KeyFieldName := 'lastName_L1';

  MyArray[04].tableCaption := 'حکم های کارگزینی';
  MyArray[04].tableName := 'Interdicts';
  MyArray[04].SchemaName := 'Pay.';
  MyArray[04].tableKeyName := 'InterdictID';
  MyArray[04].KeyFieldName := 'InterdictNo';

  MyArray[05].tableCaption := 'عناوین حکم';
  MyArray[05].tableName := 'InterdictItems';
  MyArray[05].SchemaName := 'Pay.';
  MyArray[05].tableKeyName := 'InterdictItemsID';
  MyArray[05].KeyFieldName := 'SalaryID';

end;

end.
