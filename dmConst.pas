unit dmConst;

interface

uses
  SysUtils, Classes,StdCtrls,ADODB;

type
  Ttable = record
    tableName: String;
    tableKeyName: String;
    tableCaption: String;
    KeyFieldName: String;
  end;//Ttable
  TdmConstF = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
    procedure lslTableNameClick(Sender: TObject;qryShow:TADOQuery);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure FillListBox(lslTableName: TListBox);//;qryShow:tado);
  end;

var
  dmConstF: TdmConstF;
  MyArray: array[1..14] of Ttable;

implementation

{$R *.dfm}

procedure TdmConstF.lslTableNameClick(Sender: TObject;qryShow:TADOQuery);
var
  i:Integer;
  Table_FieldNames:String;
begin
  inherited;
  i:=(Sender as TListBox).ItemIndex;
  if i=-1 then exit;
  i:=integer((Sender as TListBox).Items.Objects[i]);
  With qryShow do
  begin
    Active:=False;
    Table_FieldNames:=MyArray[i].tableKeyName+' as ﬂœ '+ ','+ MyArray[i].KeyFieldName+' as ⁄‰Ê«‰ ';
    SQL.Text:='SELECT '+Table_FieldNames+' FROM '+MyArray[i].tableName;
    SQL.Add  ('WHERE (NOT ('+MyArray[i].tableKeyName+' IN (SELECT '+MyArray[i].tableKeyName);
    SQL.Add  ('FROM '+MyArray[i].tableName+')))');
    Active:=True;
  end;
end;

procedure TdmConstF.FillListBox(lslTableName: TListBox);
var
  i:Integer;
begin
  for i:=1 to 8 do
     lslTableName.AddItem(MyArray[i].tableCaption,TObject(i));
  for i:=10 to High(MyArray) do
     lslTableName.AddItem(MyArray[i].tableCaption,TObject(i));

end;

procedure TdmConstF.DataModuleCreate(Sender: TObject);
begin
  MyArray[01].tableName:='Deficits';           MyArray[01].tableKeyName:='DeficitID';
  MyArray[02].tableName:='LookUps';            MyArray[02].tableKeyName:='LookUpID';
  MyArray[03].tableName:='UseUnits';           MyArray[03].tableKeyName:='UseUnitID';
  MyArray[04].tableName:='Units';              MyArray[04].tableKeyName:='UnitCode';
  MyArray[05].tableName:='Stores';             MyArray[05].tableKeyName:='n_StoreID';
  MyArray[06].tableName:='CustomersGroup';     MyArray[06].tableKeyName:='CustomerGrpID';
  MyArray[07].tableName:='Customers';          MyArray[07].tableKeyName:='CustID';
  MyArray[08].tableName:='PurchaseEffect';     MyArray[08].tableKeyName:='EffectID';
  MyArray[09].tableName:='UsersStore';         MyArray[09].tableKeyName:='n_UserID';
  MyArray[10].tableName:='StuffGroups';        MyArray[10].tableKeyName:='GroupID';
  MyArray[11].tableName:='StuffCoding';        MyArray[11].tableKeyName:='c_StuffCode';
  MyArray[12].tableName:='StoreStuffs';        MyArray[12].tableKeyName:='c_StuffCode';
  MyArray[13].tableName:='StuffsDeficitsRange';MyArray[13].tableKeyName:='c_StuffCode';
  MyArray[14].tableName:='UseOthers';          MyArray[14].tableKeyName:='UseOtherID';

  MyArray[01].tableCaption:='ﬂ”Ê—« /«÷«›« ';
  MyArray[02].tableCaption:='«ÿ·«⁄«  Å«ÌÂ Ê À«» ';
  MyArray[03].tableCaption:='„Õ· Â«Ì „’—›';
  MyArray[04].tableCaption:='Ê«Õœ';
  MyArray[05].tableCaption:='«‰»«—Â«';
  MyArray[06].tableCaption:='ê—ÊÂ „‘ —Ì«‰';
  MyArray[07].tableCaption:='„‘ —Ì«‰';
  MyArray[08].tableCaption:='⁄‰«ÊÌ‰ „ÊÀ— »—Œ—Ìœ';
  MyArray[09].tableCaption:='«‰»«—Ê ﬂ«—»—';  //UsersStore
  MyArray[10].tableCaption:='ê—ÊÂ ﬂ«·«';
  MyArray[11].tableCaption:='ﬂœÌ‰ê ﬂ«·«';
  MyArray[12].tableCaption:='«‰»«— Ê ﬂ«·«';
  MyArray[13].tableCaption:='ﬂ«·« Ê ﬂ”Ê—« /«÷«›« ';
  MyArray[14].tableCaption:='”«Ì—„Õ·˛Â«Ì „’—›';

  MyArray[01].KeyFieldName:='DeficitName';
  MyArray[02].KeyFieldName:='Name';
  MyArray[03].KeyFieldName:='UseUnitName';
  MyArray[04].KeyFieldName:='UnitName';
  MyArray[05].KeyFieldName:='c_StoreName';
  MyArray[06].KeyFieldName:='CustomerGrpName';
  MyArray[07].KeyFieldName:='CustName';
  MyArray[08].KeyFieldName:='EffectName';
  MyArray[09].KeyFieldName:='n_StoreID';
  MyArray[10].KeyFieldName:='GroupName';
  MyArray[11].KeyFieldName:='c_StuffName';
  MyArray[12].KeyFieldName:='n_StoreID';
  MyArray[13].KeyFieldName:='DeficitID';
  MyArray[14].KeyFieldName:='UseOtherName';

end;

end.
