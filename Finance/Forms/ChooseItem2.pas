// Mostafa 84/03/08
unit ChooseItem2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template5, StdCtrls, CheckLst, DBActns, ActnList, Buttons,
  ExtCtrls, DB, ADODB, Grids, Vcl.DBGrids, DBClient, Provider, Menus, System.Actions;

type
  TChooseItem2F = class(TTemplate5F)
    qryCustomers: TADOQuery;
    srcCustomers: TDataSource;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    DataSetProvider1: TDataSetProvider;
    cliCustomers: TClientDataSet;
    cliCustomers_checked: TBooleanField;
    actSearch: TAction;
    actSort: TAction;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    actSelectAll: TAction;
    actSlelectInverse: TAction;
    Image3: TImage;
    Image2: TImage;
    cliCustomerscode: TSmallintField;
    cliCustomerscaption: TStringField;
    PopMnuForm: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    N9: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    cliCustomersCaption_L2: TStringField;
    cliCustomers_has: TStringField;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    qryDGCompaniesRange: TADOQuery;
    qryDGCompaniesRangeDGIDCompanies: TIntegerField;
    qryDGCompaniesRangeCompanyCode: TIntegerField;
    qryCustomersCode: TIntegerField;
    qryCustomersCaption_l1: TStringField;
    qryCustomersCaption_l2: TStringField;
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryCustomersAfterOpen(DataSet: TDataSet);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSelectAllExecute(Sender: TObject);
    procedure actSlelectInverseExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure ToggleCheck(CalculateSummary: boolean=True);
    { Private declarations }
     procedure SaveSelect;
    procedure ReadSelect;
  public
    function SelectChecks(var checkeds: string; const Fcode,Fcaption_l1,Fcaption_l2,tblName:String; Where:string='';
             ADC:  TADOConnection=nil): Boolean;
    { Public declarations }
  end;

var
  ChooseItem2F: TChooseItem2F;

implementation

uses DM, GlobalPro, search1, sort, Companies, mmessage;

{$R *.dfm}

function TChooseItem2F.SelectChecks(var checkeds: string; const Fcode,Fcaption_l1,Fcaption_l2,tblName:String; Where:string='';
         ADC:  TADOConnection=nil): Boolean;

begin
  Result := True;
  ChooseItem2F:=TChooseItem2F.Create(Application);
  checkeds:=Trim(checkeds) +',';
  try
    if ADC=nil then ADC:=DMf.adcAccounting;
    with ChooseItem2F do begin
      with qryCustomers do begin
        Active:=False;
        Connection:=adc;
  			SQL.Text:='SELECT ' + fcode + ' As Code , ' + fcaption_l1 + ' As Caption_l1 ,';
        SQL.Add( fcaption_l2 + ' As Caption_l2') ;
  			SQL.Add  ('FROM ' + tblName );
        SQL.Add  ( Where );
	   		SQL.Add  ('ORDER BY code');
        Active:=True;
      end;//with
      ReadSelect;
     { with cliCustomers do begin
      Warn(cliCustomers_has.AsString);
        while pos(',',checkeds)<>0 do begin
          r:=StrToInt64Def(LeftStr(checkeds,pos(',',checkeds)-1),0);
          if r=0 then Break;
          if Locate('Code',r,[]) then ToggleCheck(false);
          checkeds:=copy(checkeds,pos(',',checkeds)+1,length(checkeds));
        end;//while
    end;//with  }
      if ShowModal=mrOk then
      try

        SaveSelect;
      except
        Result := False;

       { Result:=True;
        checkeds:='';
        with cliCustomers do begin
          DisableControls;
          First;
          while not eof do begin
            if FieldByName('_checked').AsBoolean then checkeds:=checkeds + cliCustomerscode.AsString + ',';
            Next;
          end;//while
        end;//with    }
      end;//if
    end;//with
  finally
    ChooseItem2F.Free;
  end;//try
end;

procedure TChooseItem2F.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1,2);
end;

procedure TChooseItem2F.FormShow(Sender: TObject);
begin
  inherited;
  Realign;
end;

procedure TChooseItem2F.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,state);
  if DataCol=0 then begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cliCustomers_checked.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left,Rect.Top,Image2.Picture.Graphic)
  end;//if
end;

procedure TChooseItem2F.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=VK_SPACE then begin
    Key:=0;
    ToggleCheck;
  end;//if
end;

procedure TChooseItem2F.qryCustomersAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cliCustomers.Active:=False;
  cliCustomers.Active:=True;
end;

procedure TChooseItem2F.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
//  if Column.Index=0 then ToggleCheck;
end;

procedure TChooseItem2F.ToggleCheck(CalculateSummary: boolean=True);
begin
  with cliCustomers do begin
    Edit;
    FieldByName('_Checked').AsBoolean:=not FieldByName('_Checked').AsBoolean;
    Post;
  end;//with
end;

procedure TChooseItem2F.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TChooseItem2F.DBGrid1KeyPress(Sender: TObject; var Key: Char);
//var
//  n:  Int64;
begin
  inherited;
//  n:=getKeyboardNumber(Key);
//  if n>0 then cliCustomers.Locate('Code',IntToStr(n),[]);
QuickSearch(Key,cliCustomers.FieldByName('code'));
end;

procedure TChooseItem2F.actSearchExecute(Sender: TObject);
begin
  inherited;
  searchF.ShowSearch(cliCustomers);
end;

procedure TChooseItem2F.actSortExecute(Sender: TObject);
begin
  inherited;
  sortF.ShowSort(cliCustomers);
end;

procedure TChooseItem2F.actSelectAllExecute(Sender: TObject);
begin
  inherited;
  with cliCustomers do begin
    DisableControls;
    First;
    while not eof do begin
      Edit;
      FieldByName('_checked').AsBoolean:=True;
      Post;
      Next;
    end;//while
    First;
    EnableControls;
  end;//with
end;

procedure TChooseItem2F.actSlelectInverseExecute(Sender: TObject);
begin
  inherited;
  with cliCustomers do begin
    DisableControls;
    First;
    while not eof do begin
      Edit;
      FieldByName('_checked').AsBoolean:=not FieldByName('_checked').AsBoolean;
      Post;
      Next;
    end;//while
    First;
    EnableControls;
  end;//with
end;

procedure TChooseItem2F.ReadSelect;
begin
  cliCustomers.Active:=False;
  cliCustomers.Active:=True ;
  with CompaniesF.qryDetailGroup do begin
    try
      DisableControls;
      First;
      while not Eof do begin
        with cliCustomers do begin
          if Locate('code',CompaniesF.qryDetailGroup.FieldByName('DGID').AsInteger,[]) then begin
            Edit;
            FieldByName('_Checked').AsBoolean:=True;
            Post;
          end;//if
        end;//with
        next;
      end;//while
    finally
      EnableControls;
    end;//try
  end;//with
end;
procedure TChooseItem2F.SaveSelect;
begin
  with CompaniesF.qryDGCompaniesRange do begin
   { Active:=false;
    Parameters.ParamByName('FormType').Value:=CompaniesF.qryDetailGroup.Parameters.ParamByName('Type').Value;
    Active:=true;}
    try
      DisableControls;
      if not IsEmpty then
      First;
      while not eof do begin
        delete;
      end;//while
      cliCustomers.DisableControls;
      cliCustomers.First;
      if CompaniesF.qryCompanies.State in dsEditmodes  then  CompaniesF.qryCompanies.Post;
      while not cliCustomers.Eof do begin
        if cliCustomers_checked.AsBoolean then begin
          Insert;
          FieldByName('DGIDCompanies').AsInteger:=cliCustomers.fieldbyname('code').AsInteger;
          FieldByName('CompanyCode').AsInteger:=CompaniesF.qryDetailGroup.Parameters.ParamByName('Type').Value;
          post;
        end;//if
        cliCustomers.Next;
      end;//while
    finally
      CompaniesF.qryDetailGroup.Requery();
     // UpdateBatch;
      EnableControls;
      cliCustomers.EnableControls;
      BigMessage('À»  ‘œ.˛',1);
    end;//try
  end;//with
end;

procedure TChooseItem2F.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

end.
