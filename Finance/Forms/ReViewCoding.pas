unit ReViewCoding;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Controls, Forms,
  Dialogs, template2MDI, ComCtrls, ImgList, DBActns, ActnList, StdCtrls,
  ExtCtrls, Buttons, DB, ADODB, Graphics, System.ImageList, System.Actions;

type
  TReViewCodingF = class(Ttemplate2MDIF)
    trvRelation: TTreeView;
    actSaveToWord: TAction;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure actSaveToWordExecute(Sender: TObject);
  private
    procedure MakeReLation;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReViewCodingF: TReViewCodingF;

implementation

uses Mymostafa, Dm, mmessage, GlobalPro;

{$R *.dfm}
{ Ttemplate2MDIF1 }

procedure TReViewCodingF.MakeReLation;
var
  N, Moeen, Detail, Ctopic1, Ctopic2, tmpTree: TTreeNode;
  KOL, TP: Integer;
  qryTemp, qryDetail, qryMoeen: TADOQuery;
begin
  qryMoeen := TADOQuery.Create(nil);
  with qryMoeen do
    try

      Close;
      Connection := Dmf.adcAccounting;
      SQL.Text := 'SELECT Ko,TopicCode, MoeenName_L1 FROM' +
        ' (SELECT TopicCode AS TopicCode, MoeenName_L1, LEFT(TopicCode,' +
        ' (SELECT CodeLength FROM acc.AccTopicLevels WHERE (LevelID = ' +
        ' (SELECT PrvLevelID FROM acc.AccTopicLevels' +
        ' WHERE (LevelID = 3))))) AS Ko' +
        ' FROM acc.Categories WHERE (LevelID = 3) union all' +
        ' SELECT 0 as TopicCode , MoeenName_L1,TopicCode as Ko' +
        ' FROM acc.Categories WHERE (LevelID = 2))a order by ko, topiccode';
      // 'select Ko,TopicCode, MoeenName_L1 from (SELECT TopicCode AS TopicCode, MoeenName_L1, LEFT(TopicCode,';
      // SQL.Add('(SELECT PrvLevelID FROM acc.AccTopicLevels');
      // SQL.Add('WHERE (LevelID = 3))) AS Ko');
      // SQL.Add('FROM acc.Categories WHERE (LevelID = 3)');
      // SQL.Add('union all');
      // SQL.Add('SELECT 0 as TopicCode , MoeenName_L1,TopicCode as Ko');
      // SQL.Add('FROM acc.Categories WHERE (LevelID = 2) )a');
      // SQL.Add('order by ko, topiccode');

      Open;
      BigMessageProgBar('در حال نمايش اطلاعات كدينگ', RecordCount);
      while not Eof do
      begin
        TP := Fields[1].AsInteger;

        if KOL <> Fields[0].AsInteger then
          N := trvRelation.Items.Add(nil, Fields[0].AsString + '---' +
            Fields[2].AsString)
        else
        begin
          Moeen := trvRelation.Items.AddChild(N, Fields[1].AsString + '---' +
            Fields[2].AsString);

          qryDetail := TADOQuery.Create(nil);
          with qryDetail do
            try
              qryDetail.Close;
              qryDetail.Connection := Dmf.adcAccounting;
              qryDetail.SQL.Text :=
                'SELECT acc.DetailRange.DetailCode, acc.Details.DetailName_L1';
              qryDetail.SQL.Add('FROM acc.Details INNER JOIN');
              qryDetail.SQL.Add
                ('acc.DetailRange ON acc.Details.DetailCode = acc.DetailRange.DetailCode');
              qryDetail.SQL.Add('WHERE (acc.DetailRange.TopicCode = :TD)');
              qryDetail.Parameters.ParamByName('TD').Value := TP;

              qryDetail.Open;
              if not IsEmpty then
                Detail := trvRelation.Items.AddChild(Moeen, 'تفصيلي');

              while not qryDetail.Eof do
              begin
                trvRelation.Items.AddChild(Detail, qryDetail.Fields[0].AsString
                  + '---' + qryDetail.Fields[1].AsString);
                qryDetail.Next
              end;

              if opta.ActiveCtopic1 then
              begin
                qryDetail.Close;
                qryDetail.Connection := Dmf.adcAccounting;
                qryDetail.SQL.Text :=
                  'SELECT  acc.CenterTopicRange.CTopicCode AS C1, acc.CenterTopics.CTopicName_L1';
                qryDetail.SQL.Add('FROM acc.CenterTopics INNER JOIN');
                qryDetail.SQL.Add
                  ('acc.CenterTopicRange ON acc.CenterTopics.CTopicCode = acc.CenterTopicRange.CTopicCode');
                qryDetail.SQL.Add
                  ('WHERE (acc.CenterTopicRange.TopicCode = :TD) ORDER BY C1');
                qryDetail.Parameters.ParamByName('TD').Value := TP;
                qryDetail.Open;
                if not qryDetail.IsEmpty then
                  Ctopic1 := trvRelation.Items.AddChild(Moeen, 'تفصیلی 1 1');
                while not qryDetail.Eof do
                begin
                  tmpTree := trvRelation.Items.AddChild(Ctopic1,
                    qryDetail.Fields[0].AsString + '---' + qryDetail.Fields[1]
                    .AsString);

                  if (opta.ActiveCtopic2) and (opta.CtoipcRelatedKind = 0) then
                  begin
                    qryTemp := Dmf.qry_Temp;
                    qryTemp.Active := False;
                    qryTemp.SQL.Text :=
                      Format('SELECT Acc.CenterTopics2.CTopicCode2 AS C2, Acc.CenterTopics2.CTopicName2_L1'
                      + ' FROM Acc.CenterTopics2 INNER JOIN Acc.CTopicRangeTogether'
                      + ' ON Acc.CenterTopics2.CTopicCode2 = Acc.CTopicRangeTogether.CTopicCode2'
                      + ' WHERE (Acc.CTopicRangeTogether.CTopicCode = %d) ORDER BY C2',
                      [qryDetail.Fields[0].AsInteger]);
                    qryTemp.Active := True;
                    if not qryTemp.IsEmpty then
                      Ctopic2 := trvRelation.Items.AddChild(tmpTree,
                        'مرکز هزینه 2');
                    while not qryTemp.Eof do
                    begin
                      trvRelation.Items.AddChild(Ctopic2,
                        qryTemp.Fields[0].AsString + '---' + qryTemp.Fields[1]
                        .AsString);
                      qryTemp.Next;
                    end;
                    qryTemp.Active := False;
                  end;
                  qryDetail.Next
                end;
              end;

              if ((opta.ActiveCtopic2) and (opta.CtoipcRelatedKind = 1)) then
              begin
                Close;
                Connection := Dmf.adcAccounting;
                SQL.Text :=
                  'SELECT Acc.CenterTopics2.CTopicCode2, Acc.CenterTopics2.CTopicName2_L1';
                SQL.Add('FROM Acc.CenterTopics2 INNER JOIN');
                SQL.Add('Acc.CenterTopicAllRange ON Acc.CenterTopics2.CTopicCode2 = Acc.CenterTopicAllRange.CTopicCode2');
                SQL.Add('WHERE (Acc.CenterTopicAllRange.TopicCode = :TD)');
                Parameters.ParamByName('TD').Value := TP;
                Open;
                if not IsEmpty then
                  Ctopic2 := trvRelation.Items.AddChild(Moeen, 'تفصیلی 1 2');
                while not Eof do
                begin
                  trvRelation.Items.AddChild(Ctopic2, Fields[0].AsString + '---'
                    + Fields[1].AsString);
                  Next
                end;
              end;
            finally
              Free;
            end;
        end;
        KOL := Fields[0].AsInteger;
        GoProgressBar(Fields[2].AsString);
        Next;
      end;
    finally
      CloseMessage;
      Free;
    end;
end;

procedure TReViewCodingF.FormCreate(Sender: TObject);
begin
  inherited;
  MakeReLation;
  SetWinControlBiDi(trvRelation);
  trvRelation.Refresh;
end;

procedure TReViewCodingF.actSaveToWordExecute(Sender: TObject);
begin
  inherited;
  with TSaveDialog.Create(nil) do
    try
      Filter := 'Word Document|*.Doc';
      if Execute then
        trvRelation.SaveToFile(FileName + '.doc');
    finally
      Free;
    end;

end;

end.
