object searchTopicsF: TsearchTopicsF
  Left = 242
  Top = 168
  ActiveControl = srch
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1580#1587#1578#1580#1608
  ClientHeight = 397
  ClientWidth = 379
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDefault
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 379
    Height = 48
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 314
      Top = 4
      Width = 58
      Height = 13
      Caption = #1605#1608#1585#1583' '#1580#1587#1578#1580#1608
    end
    object srch: TEdit
      Left = 160
      Top = 18
      Width = 213
      Height = 21
      TabOrder = 0
      OnChange = srchChange
      OnKeyDown = srchKeyDown
    end
    object BitBtn1: TBitBtn
      Left = 7
      Top = 5
      Width = 61
      Height = 18
      Caption = #1575#1606#1578#1582#1575#1576
      Default = True
      ModalResult = 1
      TabOrder = 1
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 7
      Top = 26
      Width = 61
      Height = 18
      Cancel = True
      Caption = #1575#1606#1589#1585#1575#1601
      ModalResult = 2
      TabOrder = 2
      NumGlyphs = 2
    end
    object addBTN: TBitBtn
      Tag = -2
      Left = 72
      Top = 5
      Width = 75
      Height = 18
      Caption = #1575#1610#1580#1575#1583'/'#1578#1594#1610#1610#1585
      TabOrder = 3
      OnClick = addBTNClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 48
    Width = 379
    Height = 349
    Align = alClient
    Color = 13553358
    DataSource = src_topics
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'code1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'desc1'
        Width = 293
        Visible = True
      end>
  end
  object qry_topics: TDAOQuery
    Database = dmF.samanDB
    Parameters = []
    OpenType = db_OpenDynaset
    Params.Data = {0100010003647363000103002A2A000001}
    SQL.Strings = (
      'Select DISTINCT CodeKol as code1,kolName as desc1'
      'from Categories'
      'where kolName like :dsc'
      'order by CodeKol;')
    Left = 72
    Top = 88
    object qry_topicscode1: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1593#1740#1606
      FieldName = 'code1'
    end
    object qry_topicsdesc1: TStringField
      DisplayLabel = #1588#1585#1581' '#1581#1587#1575#1576
      FieldName = 'desc1'
      Size = 50
    end
  end
  object src_topics: TDataSource
    AutoEdit = False
    DataSet = qry_topics
    Left = 160
    Top = 88
  end
end
