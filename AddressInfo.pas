unit AddressInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template2MDI, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls,
  Buttons, DB, ADODB, Grids, Vcl.DBGrids, System.ImageList, System.Actions;

type
  TAddInfo = Class
    ParentID:Integer;
    AddressType:Integer;
    Name:String;
  end;
  TAddressInfoF = class(Ttemplate2MDIF)
    cmbAddressType: TComboBox;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    qryAddressMaster: TADOQuery;
    qryAddressMasterAddressID: TIntegerField;
    qryAddressMasterAddressName: TWideStringField;
    srcAddressMaster: TDataSource;
    qryAddressItems: TADOQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    qryAddressItemsAddressType: TIntegerField;
    qryAddressItemsParentID: TIntegerField;
    srcAddressItems: TDataSource;
    qryAddressMasterAddressType: TIntegerField;
    newPanel: TPanel;
    BitBtn6: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    okPanel: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    btnSearch_: TBitBtn;
    btnSort: TBitBtn;
    actSort: TAction;
    actSendExcel: TAction;
    procedure FormCreate(Sender: TObject);
    procedure cmbAddressTypeChange(Sender: TObject);
    procedure qryAddressItemsAfterInsert(DataSet: TDataSet);
    procedure srcAddressItemsStateChange(Sender: TObject);
    procedure qryAddressMasterAfterScroll(DataSet: TDataSet);
    procedure qryAddressItemsAfterPost(DataSet: TDataSet);
    procedure qryAddressItemsBeforeDelete(DataSet: TDataSet);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSendExcelExecute(Sender: TObject);

  private
     INX:TAddInfo;
    { Private declarations }
  public
     Procedure InitCombo; 
    { Public declarations }
  end;

var
  AddressInfoF: TAddressInfoF;

implementation

uses DM, mmessage, GlobalPro, search2;

{$R *.dfm}

{ TAddressInfoF }

procedure TAddressInfoF.InitCombo;
var
  info:TAddInfo;
begin
  cmbAddressType.Clear;
  with TADOQuery.Create(Self) do
  try
    Connection := DMf.adcBSell;
    SQL.Text:='SELECT AddressType,ParentType,AddressTypeName FROM AddressType';
    Open;
    while not eof do
    begin
      info := TAddInfo.Create;
      info.Name := Fields[2].AsString;
      info.ParentID :=Fields[1].AsInteger;
      info.AddressType :=Fields[0].AsInteger;
      cmbAddressType.AddItem(info.Name,TObject(info));
      next;
    end;
    cmbAddressType.ItemIndex:=0;
    cmbAddressTypeChange(cmbAddressType);
  finally
    Free;
  end;
end;

procedure TAddressInfoF.FormCreate(Sender: TObject);
begin
  inherited;
  InitCombo;
end;

procedure TAddressInfoF.cmbAddressTypeChange(Sender: TObject);


begin
  inherited;
  INX := TAddInfo(cmbAddressType.Items.Objects[cmbAddressType.ItemIndex]);
  with qryAddressMaster do
  begin
    Close;
    Parameters.ParamByName('Type').Value := INX.ParentID;
    Open;
    DBGrid1.Visible := not (INX.AddressType = 1);
  end;
  if not DBGrid1.Visible then
  with qryAddressItems do
  begin
    Close;
    Parameters.ParamByName('PID').Value := qryAddressMaster.FieldByName('AddressID').AsInteger;
    Open;
  end;
  
end;

procedure TAddressInfoF.qryAddressItemsAfterInsert(DataSet: TDataSet);
begin
  inherited;
   DataSet.FieldByName('AddressID').AsInteger :=  GetANewCode(Self.Name,'AddressInfo','AddressID');
   DataSet.FieldByName('AddressType').AsInteger := INX.AddressType;
   if  INX.AddressType <> 1 then
   DataSet.FieldByName('ParentID').AsInteger :=  qryAddressMaster.FieldByName('AddressID').AsInteger;
end;

procedure TAddressInfoF.srcAddressItemsStateChange(Sender: TObject);
begin
  inherited;
  okPanel.Visible:=qryAddressItems.State in dsEditModes;
  newPanel.Visible:=not okPanel.Visible;
  BtnReject.Cancel:=newPanel.Visible;
  FreeReservedCodes(DMf.adcBSell,'','',Self.Name);
end;



procedure TAddressInfoF.qryAddressMasterAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with qryAddressItems do
  begin
    Close;
    Parameters.ParamByName('PID').Value := DataSet.FieldByName('AddressID').AsInteger;
    Open;

  end;
end;

procedure TAddressInfoF.qryAddressItemsAfterPost(DataSet: TDataSet);
begin
  inherited;
  BigMessage('À»  ‘œ',1);
  
end;

procedure TAddressInfoF.qryAddressItemsBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if get_response('¬Ì« «“ Õ–› „ÿ„∆‰ Â” Ìœ?')<> mryes then Abort;
end;

procedure TAddressInfoF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryAddressItems);
end;

procedure TAddressInfoF.actSendExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid2);
end;

end.
