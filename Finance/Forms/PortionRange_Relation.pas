unit PortionRange_Relation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, template4, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DB,
  ADODB, Grids, Vcl.DBGrids, System.Actions;

type
  TPortionRange_RelationF = class(TTemplate4F)
    qry_CToplic: TADOQuery;
    Image3: TImage;
    Image2: TImage;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    actAll: TAction;
    actNotAll: TAction;
    actSearch: TAction;
    actSort: TAction;
    qry_Portion: TADOQuery;
    BitBtn2: TBitBtn;
    actFilter: TAction;
    qry_CToplicTopicCode: TLargeintField;
    qry_CToplicDetailCode: TIntegerField;
    qry_CToplicCTopicCode: TIntegerField;
    qry_CToplicCTopicCode2: TIntegerField;
    qry_CToplicMoeenName_L1: TStringField;
    qry_CToplicDetailName_L1: TStringField;
    qry_CToplicCTopicName_L1: TStringField;
    qry_CToplicCTopicName2_L1: TStringField;
    qry_CToplicaccName: TStringField;
    srcCToplic: TDataSource;
    qry_CToplicChecked: TLargeintField;
    qry_CToplicCompanyCode: TIntegerField;
    qry_CToplicctopiccode3: TIntegerField;
    qry_CToplicCTopicName3_L1: TStringField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actAllExecute(Sender: TObject);
    procedure actNotAllExecute(Sender: TObject);
    procedure actSearchExecute(Sender: TObject);
    procedure actSortExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure actFilterExecute(Sender: TObject);
  private
    procedure ToggleCheck;
    procedure SaveSelect;
    procedure ReadSelect;
    procedure UpdateFilter;
    { Private declarations }
  public
    procedure ShowChooseDetail(FilterCode: Integer);
    { Public declarations }
  end;

var
  PortionRange_RelationF: TPortionRange_RelationF;

implementation

uses Dm, GlobalPro, search2, sort2,
  filter_ADO, FilterClass_ADO, Math;

{$R *.dfm}

procedure TPortionRange_RelationF.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if DataCol = 0 then
  begin
    DBGrid1.Canvas.Rectangle(Rect);
    if qry_CToplicChecked.AsInteger = 1 then
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image3.Picture.Graphic)
    else
      DBGrid1.Canvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Graphic)
  end; // if
end;

procedure TPortionRange_RelationF.ToggleCheck;
begin
  with qry_CToplic do
  begin
    Edit;
    FieldByName('Checked').AsInteger :=
      IfThen(FieldByName('Checked').AsInteger = 1, 0, 1);
    Post;
  end; // with
end;

procedure TPortionRange_RelationF.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  ToggleCheck;
end;

procedure TPortionRange_RelationF.ShowChooseDetail(FilterCode: Integer);
begin
  PortionRange_RelationF := TPortionRange_RelationF.Create(Application);
  with PortionRange_RelationF do
    try
      myParams.Clear;
      actFilter.Execute;
      if myParams.FindParam('TopicCode') = nil then
      begin
        close;
        exit;
      end;
      // ReadSelect;
      if mrok = ShowModal then
        SaveSelect;
    finally
      Free;
    end; // try

end;

procedure TPortionRange_RelationF.ReadSelect;
begin
  qry_CToplic.Active := False;
  qry_CToplic.Active := True;
  with qry_Portion do
    try
      DisableControls;
      First;
      while not Eof do
      begin
        with qry_CToplic do
        begin

          if Locate('cTopicCode;DetailCode;cTopicCode2;TopicCode',
            VarArrayOf([qry_Portion.FieldByName('cTopicCode').AsInteger,
            qry_Portion.FieldByName('DetailCode').AsInteger,
            qry_Portion.FieldByName('cTopicCode2').AsInteger,
            qry_Portion.FieldByName('TopicCode').AsVariant]), []) then
          begin
            Edit;
            FieldByName('Checked').AsInteger := 1;
            Post;
          end; // if
        end; // with
        next;
      end; // while
    finally
      EnableControls;
    end; // try

end;

procedure TPortionRange_RelationF.SaveSelect;
begin
  with qry_Portion do
  begin
    // try
    DisableControls;
    First;
    qry_CToplic.DisableControls;
    qry_CToplic.First;
    while not qry_CToplic.Eof do
    begin
      if qry_CToplicChecked.AsInteger = 1 then
      begin
        if not qry_Portion.Locate
          ('cTopicCode;DetailCode;cTopicCode2;cTopicCode3;TopicCode',
          VarArrayOf([qry_CToplic.FieldByName('cTopicCode').AsInteger,
          qry_CToplic.FieldByName('DetailCode').AsInteger,
          qry_CToplic.FieldByName('cTopicCode2').AsInteger,
          qry_CToplic.FieldByName('cTopicCode3').AsInteger,
          qry_CToplic.FieldByName('TopicCode').AsLargeInt]), []) then
        begin
          Insert;
          // FieldByName('ID').AsInteger:=GetANewCode('','PortionRange','ID');
          FieldByName('FormInfoID').AsInteger := 0;
          FieldByName('CTopicCode').AsInteger :=
            qry_CToplic.FieldByName('CTopicCode').AsInteger;
          FieldByName('CTopicCode2').AsInteger :=
            qry_CToplic.FieldByName('CTopicCode2').AsInteger;
          FieldByName('CTopicCode3').AsInteger :=
            qry_CToplic.FieldByName('CTopicCode3').AsInteger;
          FieldByName('TopicCode').AsLargeInt :=
            qry_CToplic.FieldByName('TopicCode').AsLargeInt;
          FieldByName('DetailCode').AsInteger :=
            qry_CToplic.FieldByName('DetailCode').AsInteger;
          FieldByName('companyCode').AsInteger :=
            qry_CToplic.FieldByName('companyCode').AsInteger;
          FieldByName('YearID').AsInteger := APPBank.Year;
          Post;
          next;
        end; // if
      end
      else if qry_Portion.Locate
        ('cTopicCode;DetailCode;cTopicCode2;cTopicCode3;TopicCode',
        VarArrayOf([qry_CToplic.FieldByName('cTopicCode').AsInteger,
        qry_CToplic.FieldByName('DetailCode').AsInteger,
        qry_CToplic.FieldByName('cTopicCode2').AsInteger,
        qry_CToplic.FieldByName('cTopicCode3').AsInteger,
        qry_CToplic.FieldByName('TopicCode').AsLargeInt]), []) then
        qry_Portion.Delete;
      qry_CToplic.next;
    end; // while
    // finally
  end;
end;

procedure TPortionRange_RelationF.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    Key := 0;
    ToggleCheck;
  end; // if
end;

procedure TPortionRange_RelationF.FormResize(Sender: TObject);
begin
  inherited;
  SetColSize(DBGrid1, 5, True);
end;

procedure TPortionRange_RelationF.FormDestroy(Sender: TObject);
begin
  inherited;
  SaveColWidth(DBGrid1);
end;

procedure TPortionRange_RelationF.actAllExecute(Sender: TObject);
begin
  inherited;
  with qry_CToplic do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;
      FieldByName('checked').AsInteger := 1;
      Post;
      next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TPortionRange_RelationF.actNotAllExecute(Sender: TObject);
begin
  inherited;
  with qry_CToplic do
  begin
    DisableControls;
    First;
    while not Eof do
    begin
      Edit;
      FieldByName('Checked').AsInteger :=
        IfThen(FieldByName('Checked').AsInteger = 1, 0, 1);
      Post;
      next;
    end; // while
    First;
    EnableControls;
  end; // with
end;

procedure TPortionRange_RelationF.actSearchExecute(Sender: TObject);
begin
  inherited;
  search2F.ShowSearch(qry_CToplic);
end;

procedure TPortionRange_RelationF.actSortExecute(Sender: TObject);
begin
  inherited;
  sort2F.ShowSort(qry_CToplic);
end;

procedure TPortionRange_RelationF.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  QuickSearch(Key, qry_CToplic.FieldByName('TopicCode'));
end;

procedure TPortionRange_RelationF.actFilterExecute(Sender: TObject);
begin
  inherited;
  with TfilterF.Create2(Self, myParams) do
    try
      AddItem(DMF.adcAccounting, 'CTopicCode3', 'ßÏ æ äÇã ÊÝÕíáí 3',
        'ßÏãÑßÒåÒíäå3', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT CTopicCode3, CTopicName3_L1 FROM acc.CTopicCode3',
        'SELECT MIN(CTopicCode3),MAX(CTopicCode3) FROM acc.CTopicCode3');
      AddItem(DMF.adcAccounting, 'CTopicCode2', 'ßÏ æ äÇã ÊÝÕíáí 3',
        'ßÏãÑßÒåÒíäå2', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT     CTopicCode2, CTopicName2_L1 FROM   acc.CenterTopics2',
        'SELECT MIN(CTopicCode2),MAX(CTopicCode2)  FROM acc.CenterTopics2');
      AddItem(DMF.adcAccounting, 'CTopicCode', 'ßÏ æ äÇã ÊÝÕíáí 1',
        'ÊÝÕíáí 1', ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT   CTopicCode, CTopicName_L1 FROM   acc.CenterTopics ',
        'SELECT Min(CTopicCode)  , Max(CTopicCode)  FROM acc.CenterTopics');
      AddItem(DMF.adcAccounting, 'DetailCode', 'ßÏ æ äÇã ÊÝÕíáí', 'ßÏ ÊÝÕíáí',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT DetailCode, DetailName_L1  FROM   acc.Details ',
        'SELECT MIN((DetailCode) ),MAX((DetailCode) ) FROM acc.Details');
      AddItem(DMF.adcAccounting, 'TopicCode', 'ßÏ æ äÇã ÍÓÇÈ ', 'ßÏ ÍÓÇÈ',
        ftInteger, dvMinMax, '', '', ciLookup,
        'SELECT TopicCode,MoeenName_l1 FROM acc.Categories WHERE (acc.Categories.LevelID > 2)',
        'SELECT min(TopicCode),max(TopicCode) FROM acc.Categories WHERE (acc.Categories.LevelID > 2)');
      if ShowModal = mrok then
      begin
        GetFilterString;
        UpdateFilter;
      end; // if
    finally
      Free;
    end; // try

end;

procedure TPortionRange_RelationF.UpdateFilter;
begin
  with qry_Portion do
  begin
    Active := False;
    Parameters.ParamByName('TopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['TopicCode'], ftInteger);
    Parameters.ParamByName('TopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['TopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCode2From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('CTopicCode2To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('CTopicCode3From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode3'], ftInteger);
    Parameters.ParamByName('CTopicCode3To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode3'], ftInteger);
    Parameters.ParamByName('DetailCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('DetailCodeTo').Value :=
      GetcTo(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('YearId').Value := APPBank.Year;
    Active := True;
  end;
  with qry_CToplic do
  begin
    Active := False;
    Parameters.ParamByName('TopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['TopicCode'], ftInteger);
    Parameters.ParamByName('TopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['TopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCodeTo').Value :=
      GetcTo(myParams.ParamValues['CTopicCode'], ftInteger);
    Parameters.ParamByName('CTopicCode2From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('CTopicCode2To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode2'], ftInteger);
    Parameters.ParamByName('CTopicCode3From').Value :=
      GetcFrom(myParams.ParamValues['CTopicCode3'], ftInteger);
    Parameters.ParamByName('CTopicCode3To').Value :=
      GetcTo(myParams.ParamValues['CTopicCode3'], ftInteger);
    Parameters.ParamByName('DetailCodeFrom').Value :=
      GetcFrom(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('DetailCodeTo').Value :=
      GetcTo(myParams.ParamValues['DetailCode'], ftInteger);
    Parameters.ParamByName('YearId').Value := APPBank.Year;
    Active := True;
  end;
  ReadSelect;
end;

end.
