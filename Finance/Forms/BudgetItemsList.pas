unit BudgetItemsList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Dm, template2MDI, ImgList, DBActns, ActnList, StdCtrls, Buttons,
  ExtCtrls, DB, ADODB, Grids, Vcl.DBGrids, GlobalPro, StrUtils, ComCtrls, MMESSAGE,
  Menus, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppTypes,
  ppCtrls, ppVar, ppPrnabl, ppBands, ppCache, ppParameter, sort2, search2,
  ppDesignLayer, System.ImageList, System.Actions;

type
  TBudgetItemsListF = class(Ttemplate2MDIF)
    DBGrid1: TDBGrid;
    srcDetails: TDataSource;
    qryItems: TADOQuery;
    qryItemsBudgetID: TIntegerField;
    qryItemsBudgetTopicID: TIntegerField;
    qryItemsBed: TBCDField;
    qryItemsBes: TSmallintField;
    qryItemsItemNote_L1: TStringField;
    qryItemsItemNote_L2: TStringField;
    qryItemsCustomerID: TIntegerField;
    qryItemsCashtype: TWordField;
    qryItemsCompanyCode: TIntegerField;
    qryItemsAidDate: TStringField;
    qryItemsAidNum: TStringField;
    qryItemsCtype: TWordField;
    qryItemsCostType: TWordField;
    qryItemsCostCode: TStringField;
    _qryBudject: TADOQuery;
    qryItems_BudgetName: TStringField;
    _qryCompony: TADOQuery;
    qryItems_CompanyName: TStringField;
    Image1: TImage;
    Image2: TImage;
    qryItems_select: TFMTBCDField;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    qryItemsCreditBalance: TBCDField;
    qryItemstempCredit: TFMTBCDField;
    StatusBar1: TStatusBar;
    actChangeState: TAction;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    PopPrint: TPopupMenu;
    v1: TMenuItem;
    N1: TMenuItem;
    BitBtn2: TBitBtn;
    actPrint: TAction;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel4: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppDBText2: TppDBText;
    ppLine1: TppLine;
    ppShape3: TppShape;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText5: TppDBText;
    actSendToExcel: TAction;
    BitBtn3: TBitBtn;
    PopOther: TPopupMenu;
    actOther: TAction;
    actSort: TAction;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qryItemsBesGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryItemsCashtypeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryItemsCostTypeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryItemsCtypeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormResize(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure qryItemsAfterOpen(DataSet: TDataSet);
    procedure qryItemsAfterScroll(DataSet: TDataSet);
    procedure actChangeStateExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure v1Click(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: string);
    procedure ppDBText3GetText(Sender: TObject; var Text: string);
    procedure ppDBText1GetText(Sender: TObject; var Text: string);
    procedure ppDBText6GetText(Sender: TObject; var Text: string);
    procedure actSendToExcelExecute(Sender: TObject);
    procedure actOtherExecute(Sender: TObject);
    procedure actSearch_Execute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
  private
    procedure ToggleCheck(B: Integer);
    procedure updateCreditBalance(m: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BudgetItemsListF: TBudgetItemsListF;

implementation

{$R *.dfm}

procedure TBudgetItemsListF.actChangeStateExecute(Sender: TObject);
begin
  inherited;

  with qryItems do
    try
      Filter := '_select=1';
      Filtered := True;
      if RecordCount = 0 then
      begin
        Warn('هیچ آیتمی انتخاب نشده است');
        Exit;
      end;
      if get_response('آیا از تغییر وضعیت مطمئن هستید؟') <> mrYes then
        Exit;
      First;
      while not Eof do
      begin
        Edit;
        FieldByName('CType').AsInteger := 1;
        Post;
        Next;
      end;
      BigMessage('با موفقیت انجام شد', 1);
    finally
      Filter := EmptyStr;
      Filtered := False;
      Requery();
    end;
end;

procedure TBudgetItemsListF.actOtherExecute(Sender: TObject);
begin
  inherited;
  PopOther.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TBudgetItemsListF.actPrintExecute(Sender: TObject);
begin
  inherited;
  PopPrint.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TBudgetItemsListF.actSearch_Execute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qryItems);
end;

procedure TBudgetItemsListF.actSendToExcelExecute(Sender: TObject);
begin
  inherited;
  SendToExcel(DBGrid1);
end;

procedure TBudgetItemsListF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qryItems);
end;

procedure TBudgetItemsListF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if qryItems_select.AsInteger = 0 then
    if qryItemstempCredit.AsCurrency - qryItemsBed.AsCurrency >= 0 then
      ToggleCheck(1)
    else
    begin
      Warn2('مانده اعتبار مصوب کمتر از میزان درخواستی میباشد', 1500);
      Exit;
    end
  else
    ToggleCheck(0);
end;

procedure TBudgetItemsListF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if qryItemsCreditBalance.AsCurrency - qryItemsBed.AsCurrency > 0 then
  begin
    DBGrid1.Canvas.Brush.Color := $00C9FADB;
    DBGrid1.Canvas.Font.Color := 0;
  end;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if qryItems.FieldByName('_select').AsInteger = 1 then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image1.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end;

end;

procedure TBudgetItemsListF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
  qryItems.Close;
end;

procedure TBudgetItemsListF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 6, True);;
end;

procedure TBudgetItemsListF.FormShow(Sender: TObject);
begin
  inherited;
  with qryItems do
  begin
    Close;
    Parameters.ParamByName('YearID1').Value := APPBank.Year;
   // Parameters.ParamByName('YearID2').Value := APPBank.Year;
    Parameters.ParamByName('YearID3').Value := APPBank.Year;
    Parameters.ParamByName('CashType1').Value := 1;
   // Parameters.ParamByName('CashType2').Value := 1;
    Parameters.ParamByName('CashType3').Value := 1;
    Open;
  end;
end;

procedure TBudgetItemsListF.ppDBText1GetText(Sender: TObject; var Text: string);
begin
  inherited;
  case StrToInt(Text) of
    1:
      Text := 'افزایشی';
    -1:
      Text := 'کاهشی'
  end;
end;

procedure TBudgetItemsListF.ppDBText3GetText(Sender: TObject; var Text: string);
begin
  inherited;
  case StrToInt(Text) of
    1:
      Text := 'نقدی';
    2:
      Text := 'غیر نقدی'
  end;
end;

procedure TBudgetItemsListF.ppDBText6GetText(Sender: TObject; var Text: string);
begin
  inherited;
  case StrToInt(Text) of
    1:
      Text := 'سفارشات';
    2:
      Text := 'رسید انبار';
    3:
      Text := 'قرارداد';
  end;
end;

procedure TBudgetItemsListF.ppLabel1GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := APPBank.CompanyName;
end;

procedure TBudgetItemsListF.qryItemsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;
      qryItemstempCredit.AsCurrency := qryItemsCreditBalance.AsCurrency;
      Post;
      Next;
    end;
    EnableControls;
  end;
end;

procedure TBudgetItemsListF.qryItemsAfterScroll(DataSet: TDataSet);
var
  remain: string;
begin
  inherited;
  remain := IfThen(qryItemstempCredit.AsCurrency > 0,
    qryItemstempCredit.AsString, '0');
  StatusBar1.Panels[0].Text := '    مانده اعتبار مصوب باقیمانده  =   ' + remain;
end;

procedure TBudgetItemsListF.qryItemsBesGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1:
      Text := 'افزایشی';
    -1:
      Text := 'کاهشی'
  end;
end;

procedure TBudgetItemsListF.qryItemsCashtypeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1:
      Text := 'نقدی';
    2:
      Text := 'غیر نقدی'
  end;
end;

procedure TBudgetItemsListF.qryItemsCostTypeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1:
      Text := 'سفارشات';
    2:
      Text := 'رسید انبار';
    3:
      Text := 'قرارداد';
  end;
end;

procedure TBudgetItemsListF.qryItemsCtypeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1:
      Text := 'اعتباری';
    2:
      Text := 'فاقد اعتبار'
  end;
end;

procedure TBudgetItemsListF.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  with qryItems do
  begin
    Parameters.ParamByName('CashType1').Value :=
      IfThen(RadioGroup1.ItemIndex = 0, '1', '2');
//    Parameters.ParamByName('CashType2').Value :=
//      IfThen(RadioGroup1.ItemIndex = 0, '1', '2');
    Parameters.ParamByName('CashType3').Value :=
      IfThen(RadioGroup1.ItemIndex = 0, '1', '2');
    Close;
    Open;
  end;
end;

procedure TBudgetItemsListF.ToggleCheck(B: Integer);
begin
  with qryItems do
  begin
    Edit;
    FieldByName('_select').AsInteger := B;
    Post;
  end;
  updateCreditBalance(B);
end;

procedure TBudgetItemsListF.updateCreditBalance(m: Integer);
var
  Credit: Currency;
begin
  with qryItems do
  begin
    DisableControls;
    Filter := Format('BudgetTopicID=%d', [qryItemsBudgetTopicID.AsInteger]);
    Filtered := True;
    First;
    while not Eof do
    begin
      Credit := qryItemstempCredit.AsCurrency - (m * qryItemsBed.AsCurrency);
      Edit;
      qryItemstempCredit.AsCurrency := Credit;
      Post;
      Next;
    end;
    Filtered := False;
    Filter := EmptyStr;
    EnableControls;
  end;

end;

procedure TBudgetItemsListF.v1Click(Sender: TObject);
begin
  inherited;
  try
    qryItems.DisableControls;
    case (Sender as TMenuItem).Tag of
      1:
        begin
          ppDBPipeline1.RangeBegin := rbCurrentRecord;
          ppDBPipeline1.RangeEnd := reCurrentRecord;
        end;
      2:
        begin
          ppDBPipeline1.RangeBegin := rbFirstRecord;
          ppDBPipeline1.RangeEnd := reLastRecord;
        end;
    end;
    InitReportFile(ppReport1, 'BudgetItemList', DBGrid1, ppDBPipeline1);
  finally
    qryItems.EnableControls;
  end;
end;

end.
