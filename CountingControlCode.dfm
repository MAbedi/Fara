object CountingControlCodeF: TCountingControlCodeF
  Tag = 666
  Left = 284
  Top = 315
  BiDiMode = bdRightToLeft
  BorderStyle = bsToolWindow
  Caption = #1580#1605#1593' '#1575#1606#1578#1582#1575#1576#1740' '
  ClientHeight = 245
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  ParentBiDiMode = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 204
    Width = 420
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 1
    BorderStyle = bsSingle
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    ExplicitTop = 104
    ExplicitWidth = 326
    object BitBtn1: TBitBtn
      Left = 323
      Top = 5
      Width = 75
      Height = 25
      Caption = #1578#1575#1610#1610#1583
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 8
      Top = 6
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1575#1606#1589#1585#1575#1601
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object DBGrid1: TDBGrid
    Tag = 111
    Left = 0
    Top = 114
    Width = 420
    Height = 90
    TabStop = False
    Align = alClient
    Color = clCream
    DataSource = srcCountingItems
    TabOrder = 1
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Count1Entity'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Count2Entity'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Count3Entity'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 420
    Height = 73
    Align = alTop
    Color = clWhite
    TabOrder = 2
    ExplicitWidth = 428
    DesignSize = (
      420
      73)
    object lblTopic0: TLabel
      Left = 202
      Top = 13
      Width = 192
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1605#1593' '#1575#1606#1578#1582#1575#1576#1740' '#1576#1585' '#1575#1587#1575#1587' '#1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575' '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 218
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 73
    Width = 420
    Height = 41
    Align = alTop
    Caption = #1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575' '
    TabOrder = 3
    ExplicitWidth = 428
    DesignSize = (
      420
      41)
    object SBtnStuffCode: TSpeedButton
      Left = 136
      Top = 14
      Width = 51
      Height = 22
      Anchors = [akTop, akRight]
      Caption = #1605#1581#1575#1587#1576#1607
      OnClick = SBtnStuffCodeClick
      ExplicitLeft = 152
    end
    object medtControlCode: TMaskEdit
      Left = 208
      Top = 14
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'medtControlCode'
    end
  end
  object qryCountingItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ControlCode'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'StoreID'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'CountID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        SUM(Count1Entity) AS Count1Entity, SUM(Count2Entit' +
        'y) AS Count2Entity, SUM(Count3Entity) AS Count3Entity'
      'FROM            CountingItems'
      
        'WHERE        (ControlCode = :ControlCode  ) AND (StoreID = :Stor' +
        'eID  ) AND (CountID = :CountID )'
      'GROUP BY CountID, StoreID')
    Left = 204
    Top = 23
    object qryCountingItemsCount1Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' 1'
      FieldName = 'Count1Entity'
    end
    object qryCountingItemsCount2Entity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585'2'
      FieldName = 'Count2Entity'
    end
    object qryCountingItemsCount3Entity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585'3'
      FieldName = 'Count3Entity'
    end
  end
  object srcCountingItems: TDataSource
    DataSet = qryCountingItems
    Left = 96
    Top = 23
  end
end
