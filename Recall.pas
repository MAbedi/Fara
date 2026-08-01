unit Recall;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, DBGrids, ComCtrls, template2MDI;

type
  TRecallF = class(TTemplate4F)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    qryDetail_Item: TADOQuery;
    qryMater_Recipt: TADOQuery;
    qryMater_ReciptReciptID: TIntegerField;
    qryMater_ReciptReciptNumber: TIntegerField;
    qryMater_ReciptReciptDate: TStringField;
    qryMater_ReciptPersonID1: TIntegerField;
    qryMater_ReciptCustName: TStringField;
    qryMater_ReciptStoreID: TSmallintField;
    qryMater_ReciptReciptState: TWordField;
    qryMater_ReciptReciptType: TWordField;
    qryMater_ReciptParentReciptID: TIntegerField;
    srcMater_Recipt: TDataSource;
    srcDetail_Item: TDataSource;
    BitBtn1: TBitBtn;
    qryMater_Reciptc_StoreName2: TStringField;
    qryMater_ReciptReciptCaption: TStringField;
    qryDetail_ItemReciptItemID: TIntegerField;
    qryDetail_ItemReciptID: TIntegerField;
    qryDetail_ItemStuffCode: TIntegerField;
    qryDetail_Itemc_StuffName: TStringField;
    qryDetail_ItemUnitName: TStringField;
    qryDetail_ItemStuffSize: TStringField;
    qryDetail_ItemStuffDiameter: TStringField;
    qryDetail_ItemStuffAlloy: TStringField;
    qryDetail_ItemEntity: TFloatField;
    qryDetail_ItemWeight: TFloatField;
    qryDetail_ItemControlCode: TStringField;
    qryDetail_ItemStuffGrade: TWordField;
    qryDetail_ItemPrice: TBCDField;
    qryDetail_ItemUnitSellPrice: TFMTBCDField;
    qryDetail_ItemItemNote: TStringField;
    qryDetail_ItempreReciptItemID: TIntegerField;
    qryMater_ReciptPersonID2: TIntegerField;
    StatusBar1: TStatusBar;
    procedure actSearch_Execute(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SelectRecall(var ReciptType: Integer;out Price:Boolean;ReciptID:Integer );
  end;

var
  RecallF: TRecallF;

implementation

uses DM, searchCode_ADO, GlobalPro, ChooseItem ;

{$R *.dfm}

procedure TRecallF.actSearch_Execute(Sender: TObject);
var
  txt:  String;
  Results:  array[0..5] of String;
begin
  inherited;
     txt:='SELECT Recipts.ReciptID, Recipts.ReciptNumber, Recipts.ReciptDate, Customers.CustName, Stores.c_StoreName,'+
          'ReciptTypes.ReciptCaption FROM Recipts INNER JOIN '+
          'ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType LEFT OUTER JOIN '+
          'Recipts Recipts_1 ON Recipts.ReciptID = Recipts_1.ParentReciptID LEFT OUTER JOIN '+
          'Stores ON Recipts.StoreID = Stores.n_StoreID LEFT OUTER JOIN '+
          'Customers ON Recipts.PersonID1 = Customers.CustID '+
          'WHERE(Recipts.ReciptType = 2) AND (Recipts_1.ParentReciptID IS NULL)' ;
   if searchCode_ADOF.SearchCode2(DMF.adcBSell,'', txt,
    ['','ÔãÇÑå ÝÑã','ÊÇÑíÎ ÝÑã','äÇã ãÔÊÑí','äÇã ÇäÈÇÑ','äÇã ÝÑã'],
    Results,[0,50,50,100,100,100],alLeft) then begin
    qryMater_Recipt.locate('ReciptID',Results[0],[]);
  end;//if

end;

procedure TRecallF.DBGrid2KeyPress(Sender: TObject; var Key: Char);
var
   c: Cardinal;
begin
  inherited;
   if qryDetail_Item.State=dsBrowse then begin
      c:=getKeyboardNumber(key);
      if c>0 then begin qryDetail_Item.Locate('StuffCode',c,[loPartialKey]);
         key:=#0;
         exit;
      end else Perform(WM_NEXTDLGCTL,0,0);
     end;//if
end;

procedure TRecallF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var
   c: Cardinal;
begin
  inherited;
   if qryMater_Recipt.State=dsBrowse then begin
      c:=getKeyboardNumber(key);
      if c>0 then begin qryMater_Recipt.Locate('ReciptNumber',c,[loPartialKey]);
         key:=#0;
         exit;
      end else Perform(WM_NEXTDLGCTL,0,0);
     end;//if
end;


procedure TRecallF.SelectRecall(var ReciptType: Integer;
  out Price: Boolean; ReciptID: Integer);
var
  r:  Int64;
begin
//  RecallF:=TRecallF.Create(Application);
//  try
//    with ChooseItemF do begin
//      with qryCustomers do begin
//        Active:=False;
//        Active:=True;
//      end;//with
//      if ShowModal=mrOk then begin
//        Result:=True;
//        checkeds:='';
//        with cliCustomers do begin
//          DisableControls;
//          First;
//        end;//with
//      end;//if
//    end;//with
//  finally
//    ChooseItemF.Free;
//  end;//try
end;

end.
