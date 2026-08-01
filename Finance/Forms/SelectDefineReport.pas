unit SelectDefineReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Provider, ADODB, ExtCtrls, Grids, Vcl.DBGrids,
  StdCtrls, Buttons, ActnList, System.Actions, Vcl.Menus;

type
  TSelectDefineReportF = class(TForm)
    DBGrid1: TDBGrid;
    qry4RelatedAll: TADOQuery;
    src4RelatedAll: TDataSource;
    DataSetProvider1: TDataSetProvider;
    cli4RelatedAll: TClientDataSet;
    cli4RelatedAllDetailCode: TIntegerField;
    cli4RelatedAllImage: TImage;
    cli4RelatedAllImage2: TImage;
    cli4RelatedAll_checked: TBooleanField;
    pnlDown: TPanel;
    btnClose: TBitBtn;
    Image3: TImage;
    Image2: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qryUpdate: TADOQuery;
    ActionList1: TActionList;
    actSort: TAction;
    actSearch: TAction;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    cli4RelatedAllMoeenName_L1: TStringField;
    cli4RelatedAllAccCode: TLargeintField;
    cli4RelatedAllDetailName: TStringField;
    cli4RelatedAllCTopicCode: TIntegerField;
    cli4RelatedAllCenterTopicName: TStringField;
    actSelected: TAction;
    btnSelected: TBitBtn;
    cli4RelatedAllTopicCode: TStringField;
    btnSelectAll: TBitBtn;
    actSelectAll: TAction;
    qry1: TADOQuery;
    actSelectTopicCode: TAction;
    actSelectDetailCode: TAction;
    actSelectCTopicCode: TAction;
    PopupMenu1: TPopupMenu;
    actSelectTopicCode1: TMenuItem;
    actSelectDetailCode1: TMenuItem;
    actSelectTopicCode2: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure qry4RelatedAllAfterOpen(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actSelectedExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actSelectAllExecute(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actSelectTopicCodeExecute(Sender: TObject);
    procedure cli4RelatedAllAfterScroll(DataSet: TDataSet);
    procedure actSelectDetailCodeExecute(Sender: TObject);
    procedure actSelectCTopicCodeExecute(Sender: TObject);
  private
    aRepCode: Integer;
    aRowId: Integer;

    FormType: Byte;
    _QryType: Byte;
    procedure InitForm;
    Procedure SaveItems;
    procedure ToggleCheck;
    Procedure MackSql(_QryType: Byte);
    { Private declarations }
  public
    Procedure enter(aType: Byte; RowId, repCode: Integer);
    { Public declarations }
  end;

var
  SelectDefineReportF: TSelectDefineReportF;

implementation

uses GlobalPro, dm, sort, search1;

{$R *.dfm}

procedure TSelectDefineReportF.qry4RelatedAllAfterOpen(DataSet: TDataSet);
begin
  cli4RelatedAll.Close;
  cli4RelatedAll.Open;
end;

procedure TSelectDefineReportF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if cli4RelatedAll_checked.AsBoolean then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if

end;

procedure TSelectDefineReportF.FormDestroy(Sender: TObject);
begin
  SaveColWidth(DBGrid1);
end;

procedure TSelectDefineReportF.FormResize(Sender: TObject);
begin
  SetColSize(DBGrid1, 4);
end;

procedure TSelectDefineReportF.enter(aType: Byte; RowId, repCode: Integer);
begin
  with TSelectDefineReportF.Create(Application) do
    try
      aRepCode := repCode;
      aRowId := RowId;
      FormType := aType;
      InitForm;
      if ShowModal = mrOk then
        SaveItems;
    finally
      Free;
    end;
end;

procedure TSelectDefineReportF.ToggleCheck;
begin
  with cli4RelatedAll do
  begin
    Edit;
    FieldByName('_Checked').AsBoolean := not FieldByName('_Checked').AsBoolean;
    Post;
  end; // with
end;

procedure TSelectDefineReportF.InitForm;
var
  Checked: Boolean;
  i: Byte;
begin
  with qryUpdate do
  begin
    Close;
    Parameters.ParamByName('Type').Value := FormType;
    Parameters.ParamByName('YearID').Value := APPBank.Year;
    Open;
  end;

  with dmF.qry_Temp do
  begin
    Close;
    SQL.Text := 'Select [_QryType] from acc._FinanceReports where repCode = ' +
      IntToStr(aRepCode);
    Open;
    _QryType := fields[0].AsInteger;
    Close;
  end;
  MackSql(_QryType);
  case _QryType of
    1:
      begin
        DBGrid1.Columns[1].Visible := True;
        DBGrid1.Columns[2].Visible := DBGrid1.Columns[1].Visible;
        DBGrid1.Columns[3].Visible := not DBGrid1.Columns[1].Visible;
        DBGrid1.Columns[4].Visible := not DBGrid1.Columns[1].Visible;
        DBGrid1.Columns[5].Visible := not DBGrid1.Columns[1].Visible;
        DBGrid1.Columns[6].Visible := not DBGrid1.Columns[1].Visible;

      end;
    2:
      begin
        DBGrid1.Columns[1].Visible := True;
        DBGrid1.Columns[2].Visible := DBGrid1.Columns[1].Visible;
        DBGrid1.Columns[3].Visible := DBGrid1.Columns[1].Visible;
        DBGrid1.Columns[4].Visible := DBGrid1.Columns[1].Visible;
        DBGrid1.Columns[5].Visible := not DBGrid1.Columns[1].Visible;
        DBGrid1.Columns[6].Visible := not DBGrid1.Columns[1].Visible;
      end;
    3:
      begin
        DBGrid1.Columns[1].Visible := True;
        DBGrid1.Columns[2].Visible := DBGrid1.Columns[1].Visible;
        DBGrid1.Columns[3].Visible := not DBGrid1.Columns[1].Visible;
        DBGrid1.Columns[4].Visible := not DBGrid1.Columns[1].Visible;
        DBGrid1.Columns[5].Visible := DBGrid1.Columns[1].Visible;
        DBGrid1.Columns[6].Visible := DBGrid1.Columns[1].Visible;
      end;
    4:
      begin
        DBGrid1.Columns[1].Visible := True;
        DBGrid1.Columns[2].Visible := DBGrid1.Columns[1].Visible;
        DBGrid1.Columns[3].Visible := DBGrid1.Columns[1].Visible;
        DBGrid1.Columns[4].Visible := DBGrid1.Columns[1].Visible;
        DBGrid1.Columns[5].Visible := DBGrid1.Columns[1].Visible;
        DBGrid1.Columns[6].Visible := DBGrid1.Columns[1].Visible;
      end;
  end;
  for i := 1 to DBGrid1.Columns.Count - 1 do
    if DBGrid1.Columns[i].Visible then
      DBGrid1.Columns[i].Field.Tag := 3
    else
      DBGrid1.Columns[i].Field.Tag := 0;
  with TADOQuery.Create(Self) do
    try
      Connection := qry4RelatedAll.Connection;
      Close;
      SQL.Text :=
        'SELECT isNull(G_TopicCode,0),isnull(g_DetailCode,0), isnull(g_CTopicCode ,0)';
      SQL.Add(' FROM acc._ReportRowsOnDocs');
      SQL.Add('WHERE (ColNum =:Type) and (RepCode =:Rep)and (rowid =:Rowid)AND (YearID = :YearID)');
      Parameters[0].Value := FormType;
      Parameters[1].Value := aRepCode;
      Parameters[2].Value := aRowId;
      Parameters[3].Value := APPBank.Year;
      Open;
      while not Eof do
      begin
        Checked := cli4RelatedAll.Locate('TopicCode;DetailCode;CTopicCode',
          VarArrayOf([fields[0].AsVariant, fields[1].AsVariant,
          fields[2].AsVariant]), []);
        cli4RelatedAll.Edit;
        cli4RelatedAll.FieldByName('_checked').AsBoolean := Checked;
        cli4RelatedAll.Post;
        Next;
      end;
    finally
      cli4RelatedAll.First;
      Free;
    end;

end;

procedure TSelectDefineReportF.SaveItems;
var
  i: Byte;
begin
  dmF.adcAccounting.Execute('DELETE  FROM acc._ReportRowsOnDocs WHERE ColNum=' +
    IntToStr(FormType) + 'and repcode =' + IntToStr(aRepCode) + ' and  rowId=' +
    IntToStr(aRowId) + ' and YearID =' + IntToStr(APPBank.Year));
  cli4RelatedAll.First;
  with cli4RelatedAll do
    try
      First;
      DisableControls;

      while not Eof do
      begin
        if cli4RelatedAll_checked.AsBoolean then
        begin
          qryUpdate.Insert;
          qryUpdate.FieldByName('rowId').AsInteger := aRowId;
          qryUpdate.FieldByName('repCode').AsInteger := aRepCode;
          qryUpdate.FieldByName('ColNum').AsInteger := FormType;
          qryUpdate.FieldByName('YearID').AsInteger := APPBank.Year;
          case _QryType of
            1:
              begin
                qryUpdate.FieldByName('G_TopicCode').AsInteger :=
                  FieldByName('TopicCode').AsLargeInt;
                qryUpdate.FieldByName('G_DetailCode').AsInteger := 0;
                qryUpdate.FieldByName('G_CTopicCode').AsInteger := 0;
              end; // 1
            2:
              begin
                qryUpdate.FieldByName('G_TopicCode').AsInteger :=
                  FieldByName('TopicCode').AsLargeInt;
                qryUpdate.FieldByName('G_DetailCode').AsInteger :=
                  FieldByName('DetailCode').AsInteger;
                qryUpdate.FieldByName('G_CTopicCode').AsInteger := 0;
              end; // 2
            3:
              begin
                qryUpdate.FieldByName('G_TopicCode').AsInteger :=
                  FieldByName('TopicCode').AsLargeInt;
                qryUpdate.FieldByName('G_DetailCode').AsInteger := 0;
                qryUpdate.FieldByName('G_CTopicCode').AsInteger :=
                  FieldByName('CTopicCode').AsInteger;
              end; // 3
            4:
              begin
                qryUpdate.FieldByName('G_TopicCode').AsInteger :=
                  FieldByName('TopicCode').AsLargeInt;
                qryUpdate.FieldByName('G_DetailCode').AsInteger :=
                  FieldByName('DetailCode').AsInteger;
                qryUpdate.FieldByName('G_CTopicCode').AsInteger :=
                  FieldByName('CTopicCode').AsInteger;
              end; // 4
          end; // cas
          qryUpdate.Post;
        end; // if

        Next;
      end // while
    finally
      EnableControls;
    end;

end;

procedure TSelectDefineReportF.DBGrid1DblClick(Sender: TObject);
begin
  ToggleCheck;
end;

procedure TSelectDefineReportF.actSortExecute(Sender: TObject);
begin
  sortF.ShowSort(cli4RelatedAll);
end;

procedure TSelectDefineReportF.cli4RelatedAllAfterScroll(DataSet: TDataSet);
begin
  actSelectTopicCode.Caption := '«‰ Œ«» Â„Â òœ Â«Ì Õ”«» Ã«—Ì' +
    cli4RelatedAllTopicCode.AsString;
  actSelectDetailCode.Caption := '«‰ Œ«» Â„Â òœ Â«Ì  ›’Ì·Ì Ã«—Ì' +
    cli4RelatedAllDetailCode.AsString;
  actSelectCTopicCode.Caption := '«‰ Œ«» Â„Â òœ Â«Ì „—ò“ Â“Ì‰Â Ã«—Ì' +
    cli4RelatedAllCTopicCode.AsString

end;

procedure TSelectDefineReportF.actSearchExecute(Sender: TObject);
begin
  searchF.ShowSearch(cli4RelatedAll);

end;

procedure TSelectDefineReportF.MackSql(_QryType: Byte);
begin
  with qry4RelatedAll do
    case _QryType of
      1:
        begin
          Close;
          // SQL.Text :=
          // 'SELECT  Cast( Categories.TopicCode as  varchar(15)) as TopicCode, 0 AS DetailCode, 0 AS CTopicCode, ''-'' AS';
          // SQL.Add('DetailName,''-'' AS CenterTopicName');
          // SQL.Add(',[Categories].[TopicCode] & '' - '' & 0 & '' - '' & 0 AS AccCode, Categories.MoeenName_L1');
          // SQL.Add('FROM acc.Categories Categories');
          // SQL.Add('WHERE (((Categories.levelid)=3))');

          SQL.Text := 'SELECT DISTINCT';
          SQL.Add('Cast( Acc.Categories.TopicCode as Varchar(30)) as TopicCode, 0 AS DetailCode, 0 AS CTopicCode, ''-'' AS');
          SQL.Add('DetailName, ''-'' AS CenterTopicName,');
          SQL.Add('Acc.Categories.TopicCode + '' - '' + 0 + '' - '' + 0 AS AccCode, Acc.Categories.MoeenName_L1');
          SQL.Add('');
          SQL.Add('FROM Acc.Categories LEFT OUTER JOIN');
          SQL.Add('Acc.CategoriesForUse ON Acc.Categories.TopicCode = Acc.CategoriesForUse.PrvTopicCode');
          SQL.Add('LEFT OUTER JOIN');
          SQL.Add('Acc._ReportRowsOnDocs ON Acc.Categories.TopicCode = Acc._ReportRowsOnDocs.G_TopicCode');
          SQL.Add('');
          SQL.Add('WHERE (Acc.CategoriesForUse.PrvTopicCode IS NULL) AND (Acc.Categories.LevelID >= 3)');

          // SQL.Add('AND (Acc._ReportRowsOnDocs.repCode = :RepCode) AND');
          // SQL.Add('(Acc._ReportRowsOnDocs.rowID = :ROwID) AND (Acc._ReportRowsOnDocs.ColNum = :colnum) AND ( YearID = :YearID )');
          Active := True;
        end;
      2:
        begin
          Close;
          SQL.Text :=
            'SELECT  Cast(Categories.TopicCode as  varchar(30)) as TopicCode, DetailRange.DetailCode, 0 AS CTopicCode,';
          SQL.Add('Categories.MoeenName_L1, Details.DetailName_L1 AS DetailName,');
          SQL.Add('''-'' AS CenterTopicName, isnull([Categories].[TopicCode] ,0)');
          SQL.Add('+ '' - '' + isnull([DetailRange].[DetailCode],0) + '' - '' + 0 AS AccCode');
          SQL.Add('FROM acc.Details Details RIGHT JOIN (acc.Categories Categories LEFT JOIN acc.DetailRange DetailRange ON');
          SQL.Add('Categories.TopicCode');
          SQL.Add('= DetailRange.TopicCode) ON');
          SQL.Add('Details.DetailCode = DetailRange.DetailCode');
          SQL.Add('WHERE (((Categories.levelID)=3));');
          Active := True;
        end;
      3:
        begin
          Close;
          SQL.Text :=
            'SELECT Cast(Categories.TopicCode as  varchar(30)) as TopicCode, 0 AS DetailCode, CenterTopicRange.CTopicCode,';
          SQL.Add('Categories.MoeenName_L1, ''-'' AS DetailName,');
          SQL.Add('CenterTopics.CTopicName_L1 AS CenterTopicName, isnull([Categories].[TopicCode] ,0) + '' - '' + 0 + '' - '' +');
          SQL.Add('isnull([CenterTopicRange].[CTopicCode] ,0) AS');
          SQL.Add('AccCode');
          SQL.Add('FROM acc.CenterTopics CenterTopics RIGHT JOIN (acc.Categories Categories LEFT JOIN acc.CenterTopicRange');
          SQL.Add('CenterTopicRange ON');
          SQL.Add('Categories.TopicCode =');
          SQL.Add('CenterTopicRange.TopicCode) ON CenterTopics.CTopicCode =');
          SQL.Add('CenterTopicRange.CTopicCode');
          SQL.Add('WHERE (((Categories.levelId)=3));');
          Active := True;
        end;
      4:
        begin
          Close;
          SQL.Text :=
            'SELECT Cast(Categories.TopicCode as  varchar(30)) as TopicCode, DetailRange.DetailCode, CenterTopicRange.CTopicCode,';
          SQL.Add('Categories.MoeenName_L1, Details.DetailName_L1');
          SQL.Add('AS DetailName, CenterTopics.CTopicName_L1 AS CenterTopicName, isnull([Categories].[TopicCode],0) + '' - '' +');
          SQL.Add('isnull([DetailRange].[DetailCode] ,0) + '' - '' +');
          SQL.Add('isnull([CenterTopicRange].[CTopicCode] ,0) AS AccCode');
          SQL.Add('FROM acc.Details Details RIGHT JOIN (acc.CenterTopics CenterTopics RIGHT JOIN ((acc.Categories Categories LEFT JOIN');
          SQL.Add('acc.DetailRange DetailRange ON Categories.TopicCode =');
          SQL.Add('DetailRange.TopicCode) LEFT JOIN acc.CenterTopicRange CenterTopicRange ON Categories.TopicCode =');
          SQL.Add('CenterTopicRange.TopicCode) ON');
          SQL.Add('CenterTopics.CTopicCode = CenterTopicRange.CTopicCode) ON Details.DetailCode =');
          SQL.Add('DetailRange.DetailCode');
          SQL.Add('WHERE (((Categories.LevelID)=3))');
          Active := True;
        end;

    end;
end;

procedure TSelectDefineReportF.actSelectAllExecute(Sender: TObject);
begin
  with cli4RelatedAll do
    try
      DisableControls;
      First;
      while not Eof do
      begin
        Edit;
        FieldByName('_checked').AsBoolean := True;
        Post;
        Next;
      end;
    finally
      EnableControls;
    end;
end;

procedure TSelectDefineReportF.actSelectedExecute(Sender: TObject);
begin
  with cli4RelatedAll do
    try
      DisableControls;
      First;
      while not Eof do
      begin
        Edit;
        FieldByName('_checked').AsBoolean := not FieldByName('_checked')
          .AsBoolean;
        Post;
        Next;
      end;
    finally
      EnableControls;
    end;
end;

procedure TSelectDefineReportF.actSelectTopicCodeExecute(Sender: TObject);
var
  TopicCode: Int64;
  DetailCode, CTopicCode: Integer;
begin
  TopicCode := cli4RelatedAllTopicCode.AsLargeInt;
  if get_response('¬Ì« »—«Ì «— »«ÿ Â„Â òœ Â«Ì ' + TopicCode.ToString +
    ' „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
  with cli4RelatedAll do
    try
      DisableControls;
      First;
      while not Eof do
      begin
        if TopicCode = cli4RelatedAllTopicCode.AsLargeInt then
        begin
          Edit;
          FieldByName('_checked').AsBoolean := True;
          Post;
          DetailCode := cli4RelatedAllDetailCode.AsInteger;
          CTopicCode := cli4RelatedAllCTopicCode.AsInteger;
        end;
        Next;
      end;
    finally
      EnableControls;
      Locate('TopicCode;DetailCode;CTopicCode',
        VarArrayOf([TopicCode, DetailCode, CTopicCode]), []);
    end;
end;

procedure TSelectDefineReportF.actSelectCTopicCodeExecute(Sender: TObject);
var
  TopicCode: Int64;
  DetailCode, CTopicCode: Integer;
begin
  CTopicCode := cli4RelatedAllCTopicCode.AsInteger;
  if get_response('¬Ì« »—«Ì «— »«ÿ Â„Â òœ Â«Ì ' + CTopicCode.ToString +
    ' „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;
  with cli4RelatedAll do
    try
      DisableControls;
      First;
      while not Eof do
      begin
        if CTopicCode = cli4RelatedAllCTopicCode.AsLargeInt then
        begin
          Edit;
          FieldByName('_checked').AsBoolean := True;
          Post;
          TopicCode := cli4RelatedAllTopicCode.AsLargeInt;
          DetailCode := cli4RelatedAllDetailCode.AsInteger;
        end;
        Next;
      end;
    finally
      EnableControls;
      Locate('TopicCode;DetailCode;CTopicCode',
        VarArrayOf([TopicCode, DetailCode, CTopicCode]), []);
    end;

end;

procedure TSelectDefineReportF.actSelectDetailCodeExecute(Sender: TObject);
var
  TopicCode: Int64;
  DetailCode, CTopicCode: Integer;
begin
  DetailCode := cli4RelatedAllDetailCode.AsInteger;
  if get_response('¬Ì« »—«Ì «— »«ÿ Â„Â òœ Â«Ì ' + DetailCode.ToString +
    ' „ÿ„∆‰ Â” Ìœø') <> mrYes then
    Abort;

  with cli4RelatedAll do
    try
      DisableControls;
      First;
      while not Eof do
      begin
        if DetailCode = cli4RelatedAllDetailCode.AsLargeInt then
        begin
          Edit;
          FieldByName('_checked').AsBoolean := True;
          Post;
          TopicCode := cli4RelatedAllTopicCode.AsLargeInt;
          CTopicCode := cli4RelatedAllCTopicCode.AsInteger;
        end;
        Next;
      end;
    finally
      EnableControls;
      Locate('TopicCode;DetailCode;CTopicCode',
        VarArrayOf([TopicCode, DetailCode, CTopicCode]), []);
    end;

end;

procedure TSelectDefineReportF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_SPACE) then
    ToggleCheck;
end;

procedure TSelectDefineReportF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  QuickSearch(Key, cli4RelatedAll.FieldByName(DBGrid1.Columns[1].FieldName))
end;

end.
