inherited EarthF: TEarthF
  Left = 219
  Top = 98
  Caption = #1605#1593#1585#1601#1610' '#1605#1588#1582#1589#1575#1578' '#1586#1605#1610#1606' '#1607#1575#1610' '#1603#1588#1575#1608#1585#1586#1610
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 458
    TabOrder = 1
    ExplicitTop = 459
    object DBNavigator1: TDBNavigator [0]
      Left = 410
      Top = 11
      Width = 136
      Height = 18
      DataSource = Src_Earth
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight, akBottom]
      Flat = True
      TabOrder = 3
    end
    object okPanel: TPanel
      Left = 390
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        165
        39)
      object BitBtn7: TBitBtn
        Left = 88
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetPost1
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00318C2900007B00004A9C4200FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00009C100000AD0800007B0000BDBD5A00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000084420000AD080000B51000008C00007B841800FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000084000000BD180000B51000009400007B6300008CB5
          7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00318C290000A5180000B5100000FF420000BD1800BD9C00000073
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00009C100000A5390000FF420000FF420000AD080000BD1000007B
          00006BAD5A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000B5210000E7420000FF4200318C2900318C2900BDBD1000008C
          000018841800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000084080000940800FF00FF00FF00FF00BD9C000000B5
          1000007B00008CB57300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B84210000B5
          10000084000000730000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00009C
          080000B51000007B000000A55A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00318C
          290000B5100010941800BD9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF001094290039DE8C00BD9C18006BAD5A00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00189C210000CE210000A55A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF008CB57300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
      end
      object BitBtn8: TBitBtn
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetCancel1
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1589#1585#1575#1601
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00424A
          4A00424A4A00424A4A0000424A00424A4A00424A4A00424A4A00005A4A00424A
          4A00424A4A00424A4A00005A4A00424A4A00424A4A00FF00FF00FF00FF006B73
          6B00FFFFFF00FFFFFF0000E7FF00FFFFFF00FFFFFF00FFFFFF00BDFFFF00FFFF
          FF00FFFFFF00FFFFFF00BDFFFF00FFFFFF006B736B00FF00FF00FF00FF006B73
          6B00FFFFFF000010AD0000844A00FF9C4A00FF9C4A00FF9C4A00BD9C4A00FF9C
          4A00FF9C4A00FF9C4A00BD9C4A000018CE006B736B00FF00FF00FF00FF006B73
          6B00FFFFFF000018CE000000AD00FFFFFF00FF9C4A00FFFFFF0000E7FF00FF9C
          4A00FFFFFF00FFFFFF000000CE00FFFFFF006B736B00FF00FF00FF00FF008484
          7300FFFFFF00FF9C4A000000CE000010AD00FF9C4A00FFFFFF00BDFFFF00FF9C
          4A000010AD000018CE00BD9C4A00FFFFFF0084847300FF00FF00FF00FF008484
          7300FFFFFF00FF9C4A0000844A000018CE000010AD00FF9C4A00BD9C4A000010
          AD000018CE00FF9C4A00BD9C4A00FFFFFF0084847300FF00FF00FF00FF008484
          7300FFFFFF00F78C390000E7FF00FFFFFF000018CE000018DE00BD18AD000018
          DE00FFFFFF00FFFFFF00BD9C3900FFFFFF0084847300FF00FF00FF00FF008C8C
          8C00F7F7F700F78C390000E7FF00FFFFFF00F78C39000018DE00BD18DE000018
          CE000010AD00FFFFFF00BD9C3900F7F7F7008C8C8C00FF00FF00FF00FF008C8C
          8C00F7F7F700E784080000840800E78408000018CE000018E700BD9C0800E784
          08000018F7000010AD00BD9C0800F7F7F7008C8C8C00FF00FF00FF00FF009494
          9400E7E7E700E784080000E7FF000018F7000018E700FFFFFF00BDFFFF00E784
          0800FFFFFF000018F700BD9C0800E7E7E70094949400FF00FF00FF00FF009494
          9400E7E7E700E78408000000FF000018E700E7840800FFFFFF00BDFFFF00E784
          0800FFFFFF00FFFFFF00BD18F700E7E7E70094949400FF00FF00FF00FF009C9C
          9C00CED6CE000018F7000000F700E7840800E7840800E7840800FF9C0800E784
          0800E7840800E7840800008408000018F7009C9C9C00FF00FF00FF00FF009C9C
          9C00CED6CE000018F70000C6CE00CED6CE00CED6CE00CED6CE0000DECE00CED6
          CE00CED6CE00CED6CE0000C6CE00CED6CE009C9C9C00FF00FF00FF00FF009C9C
          9C009C9C9C009C9C9C0000849C009C9C9C009C9C9C009C9C9C0084849C009C9C
          9C009C9C9C009C9C9C0000849C009C9C9C009C9C9C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 1
      end
    end
    object BitBtn6: TBitBtn
      Left = 250
      Top = 8
      Width = 75
      Height = 25
      Action = actSendExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 4
    end
    object BitBtn2: TBitBtn
      Left = 171
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 93
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 6
    end
    object BitBtn9: TBitBtn
      Left = 329
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Caption = #1670#1600#1600#1600#1575#1662
      TabOrder = 7
    end
    object newPanel: TPanel
      Left = 547
      Top = 1
      Width = 234
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 555
      DesignSize = (
        234
        39)
      object BitBtn3: TBitBtn
        Left = 156
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 78
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 1
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
  end
  inherited Panel2: TPanel
    TabOrder = 2
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
  end
  inherited Panel3: TPanel
    Width = 476
    Height = 405
    TabOrder = 0
    ExplicitWidth = 484
    ExplicitHeight = 406
    object Label4: TLabel
      Left = 2
      Top = 67
      Width = 232
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = #1605#1581#1583#1608#1583#1607' '#1586#1605#1575#1606#1610' '#1602#1575#1576#1604' '#1603#1588#1578' '#1563' '#1583#1575#1588#1578' '#1608' '#1576#1585#1583#1575#1588#1578
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 480
      Height = 65
      Align = alTop
      TabOrder = 0
      DesignSize = (
        472
        65)
      object lblGate: TLabel
        Left = 428
        Top = 39
        Width = 25
        Height = 13
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = #1583#1585#1610#1670#1607
        ParentBiDiMode = False
        ExplicitLeft = 436
      end
      object lblEarthField: TLabel
        Left = 428
        Top = 14
        Width = 19
        Height = 13
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = #1601#1610#1604#1583
        ParentBiDiMode = False
        ExplicitLeft = 436
      end
      object Label3: TLabel
        Left = 113
        Top = 39
        Width = 22
        Height = 13
        BiDiMode = bdLeftToRight
        Caption = #1605#1578#1585#1575#1688
        FocusControl = DBEdit1
        ParentBiDiMode = False
      end
      object DBEdit1: TDBEdit
        Left = 14
        Top = 35
        Width = 97
        Height = 21
        DataField = 'Meters'
        DataSource = Src_Earth
        ReadOnly = True
        TabOrder = 2
      end
      object edtGate: TDBEdit
        Left = 334
        Top = 35
        Width = 92
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'Gate'
        DataSource = Src_Earth
        ReadOnly = True
        TabOrder = 1
        ExplicitLeft = 342
      end
      object edtEarthField: TDBEdit
        Left = 334
        Top = 10
        Width = 92
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'EarthField'
        DataSource = Src_Earth
        ReadOnly = True
        TabOrder = 0
        ExplicitLeft = 342
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 379
      Width = 472
      Height = 24
      Align = alBottom
      TabOrder = 2
      ExplicitTop = 380
      ExplicitWidth = 480
      object Label2: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 6
        Height = 13
        Align = alLeft
        Alignment = taCenter
        BiDiMode = bdRightToLeftNoAlign
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        Transparent = True
      end
      object PnlDeleteAll: TPanel
        Left = 390
        Top = 1
        Width = 89
        Height = 22
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          89
          22)
        object SpeedButton16: TSpeedButton
          Left = 6
          Top = 0
          Width = 78
          Height = 22
          Action = DataSetDelete2
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B84
            C6000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
            A5000021A5000021A5000021A5000021A5006B84C600FF00FF00FF00FF000021
            A5009494F7000029E7000029E7000029E7000029E7000029E7000029E7000029
            E7000029E7000029E7000029E7000029E7000021A500FF00FF00FF00FF000021
            A500B5C6FF009CBDFF009CBDFF009CB5FF009CB5FF009CB5FF00638CF700638C
            F700638CF700638CF700526BF700526BF7000021A500FF00FF00FF00FF006B84
            C6000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
            A5000021A5000021A5000021A5000021A5006B84C600FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          ParentShowHint = False
          ParentBiDiMode = False
          ShowHint = True
        end
      end
    end
    object grd_EarthLimit: TDBGrid
      Tag = 111
      Left = 2
      Top = 80
      Width = 472
      Height = 276
      Hint = '2'
      Align = alClient
      Color = clCream
      DataSource = src_EarthLimit
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = grd_EarthLimitDrawColumnCell
      OnEditButtonClick = grd_EarthLimitEditButtonClick
      OnEnter = grd_EarthLimitEnter
      OnKeyPress = grd_EarthLimitKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'StartDate'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EndDate'
          Width = 60
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'ProcCode'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_ProcName'
          ReadOnly = True
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_ProcUnit'
          ReadOnly = True
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Varieties'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Age'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ProceWeight'
          Width = 90
          Visible = True
        end>
    end
    object ProgressBar1: TProgressBar
      Left = 2
      Top = 356
      Width = 472
      Height = 23
      Align = alBottom
      MarqueeInterval = 1
      Step = 1
      TabOrder = 3
      ExplicitTop = 357
      ExplicitWidth = 480
    end
  end
  object DBGrid1: TDBGrid [3]
    Left = 476
    Top = 53
    Width = 306
    Height = 405
    Align = alRight
    Color = clCream
    DataSource = Src_Earth
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'EarthField'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Gate'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Meters'
        Visible = True
      end>
  end
  object SumGrid1: TSumGrid [4]
    Left = 0
    Top = 499
    Width = 782
    Height = 18
    Active = False
    Enable_Controls = True
    MasterGrid = DBGrid1
    FieldsName = 'Gate;Meters;'
  end
  inherited ActionList: TActionList
    Left = 280
    inherited DataSetInsert1: TDataSetInsert
      DataSource = src_EarthLimit
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = src_EarthLimit
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = src_EarthLimit
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = src_EarthLimit
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = src_EarthLimit
    end
    object DataSetDelete2: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1585#1583#1610#1601
      DataSource = src_EarthLimit
    end
    object actSendExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExcelExecute
    end
    object actPrint: TAction
      Caption = #1670#1600#1600#1600#1575#1662
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actCopy_EarthLimit: TAction
      Caption = #1579#1576#1578' '#1603#1604#1610
      OnExecute = actCopy_EarthLimitExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 368
  end
  object qry_EarthLimit: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qry_EarthLimitAfterInsert
    BeforePost = qry_EarthLimitBeforePost
    AfterPost = qry_EarthLimitAfterPost
    BeforeDelete = qry_EarthLimitBeforeDelete
    Parameters = <
      item
        Name = 'EarthField'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'Gate'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         agr.EarthLimit'
      'WHERE     (EarthField = :EarthField ) AND (Gate = :Gate )')
    Left = 224
    Top = 215
    object qry_EarthLimitEarthLimitID: TIntegerField
      FieldName = 'EarthLimitID'
      Required = True
    end
    object qry_EarthLimitStartDate: TStringField
      DisplayLabel = #1575#1586' '#1578#1575#1585#1610#1582
      FieldName = 'StartDate'
      Required = True
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qry_EarthLimitEndDate: TStringField
      DisplayLabel = #1578#1575' '#1578#1575#1585#1610#1582
      FieldName = 'EndDate'
      Required = True
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qry_EarthLimitProcCode: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1581#1589#1608#1604
      FieldName = 'ProcCode'
      Required = True
    end
    object qry_EarthLimit_ProcName: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1605#1581#1589#1608#1604
      FieldKind = fkLookup
      FieldName = '_ProcName'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'ProcCode'
      Required = True
      Size = 150
      Lookup = True
    end
    object qry_EarthLimit_ProcUnit: TStringField
      DisplayLabel = #1608#1575#1581#1583#1588#1605#1575#1585#1588
      FieldKind = fkLookup
      FieldName = '_ProcUnit'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'UnitName'
      KeyFields = 'ProcCode'
      Required = True
      Size = 150
      Lookup = True
    end
    object qry_EarthLimitProceWeight: TFloatField
      DisplayLabel = #1576#1585#1583#1575#1588#1578' '#1605#1608#1585#1583#1575#1606#1578#1592#1575#1585
      FieldName = 'ProceWeight'
    end
    object qry_EarthLimitEarthField: TStringField
      FieldName = 'EarthField'
      Size = 10
    end
    object qry_EarthLimitGate: TIntegerField
      FieldName = 'Gate'
    end
    object qry_EarthLimitState: TWordField
      FieldName = 'State'
    end
    object qry_EarthLimitVarieties: TWideStringField
      DisplayLabel = #1608#1575#1585#1610#1578#1607
      FieldName = 'Varieties'
      Size = 40
    end
    object qry_EarthLimitAge: TWideStringField
      DisplayLabel = #1587#1606
      FieldName = 'Age'
      Size = 40
    end
  end
  object src_EarthLimit: TDataSource
    DataSet = qry_EarthLimit
    OnStateChange = src_EarthLimitStateChange
    Left = 136
    Top = 344
  end
  object qry_Earth: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    BeforeCancel = qry_EarthBeforeCancel
    BeforeDelete = qry_EarthBeforeDelete
    AfterScroll = qry_EarthAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         agr.Earth'
      'where (Gate <> 0) AND (EarthField <> '#39'0'#39')')
    Left = 584
    Top = 97
    object qry_EarthEarthField: TStringField
      DisplayLabel = #1601#1610#1604#1583
      FieldName = 'EarthField'
      Size = 10
    end
    object qry_EarthGate: TIntegerField
      Tag = 3
      DisplayLabel = #1583#1585#1610#1670#1607
      FieldName = 'Gate'
      Required = True
    end
    object qry_EarthMeters: TFloatField
      Tag = 3
      DisplayLabel = #1605#1578#1585#1575#1688
      FieldName = 'Meters'
      Required = True
    end
  end
  object qryStuff_Unit_TecInf: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Uni' +
        'ts.UnitName, StuffCoding.c_StuffTecInfo'
      'FROM         Units INNER JOIN'
      
        '                      StuffCoding ON Units.UnitCode = StuffCodin' +
        'g.n_UnitCode INNER JOIN'
      
        '                      StoreStuffs ON StuffCoding.c_StuffCode = S' +
        'toreStuffs.c_StuffCode INNER JOIN'
      
        '                      Stores ON StoreStuffs.n_StoreID = Stores.n' +
        '_StoreID'
      'WHERE     (Stores.StoreKind = 1)')
    Left = 572
    Top = 277
  end
  object Src_Earth: TDataSource
    DataSet = qry_Earth
    Left = 648
    Top = 96
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\Earth.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 720
    Top = 264
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 16669
      mmPrintPosition = 0
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SysVarPageNo'
        OnGetText = ppSysVarPageNoGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 6350
        mmLeft = 2117
        mmTop = 8996
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground1
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 75406
        mmTop = 0
        mmWidth = 52123
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1605#1593#1585#1601#1610' '#1605#1588#1582#1589#1575#1578' '#1586#1605#1610#1606' '#1607#1575#1610' '#1603#1588#1575#1608#1585#1586#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8128
        mmLeft = 72771
        mmTop = 6879
        mmWidth = 57658
        BandType = 0
        LayerName = Foreground1
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        OnGetText = ppLblPrintDateGetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6350
        mmLeft = 2117
        mmTop = 794
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 15081
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline2
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '22.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppTitleBand1: TppTitleBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 22490
            mmPrintPosition = 0
            object ppLabel10: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label10'
              Border.mmPadding = 0
              Caption = #1603#1583' '#1605#1581#1589#1608#1604' '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4657
              mmLeft = 182426
              mmTop = 16140
              mmWidth = 10329
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel12: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label12'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1588#1585#1581' '#1605#1581#1589#1608#1604
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4657
              mmLeft = 119856
              mmTop = 16140
              mmWidth = 55827
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel15: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label15'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4657
              mmLeft = 98161
              mmTop = 16140
              mmWidth = 19315
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel17: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label17'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1576#1585#1583#1575#1588#1578' '#1605#1608#1585#1583' '#1575#1606#1578#1592#1575#1585
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4657
              mmLeft = 1058
              mmTop = 16140
              mmWidth = 29898
              BandType = 1
              LayerName = Foreground
            end
            object ppLine2: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line2'
              Border.mmPadding = 0
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 2381
              mmLeft = 0
              mmTop = 19315
              mmWidth = 197300
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel19: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label19'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 6085
              mmLeft = 175948
              mmTop = 16404
              mmWidth = 1588
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel20: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label20'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 6085
              mmLeft = 117740
              mmTop = 16404
              mmWidth = 1588
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel21: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label21'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 6085
              mmLeft = 96044
              mmTop = 16404
              mmWidth = 1588
              BandType = 1
              LayerName = Foreground
            end
            object ppLine5: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line5'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 2117
              mmLeft = 0
              mmTop = 11906
              mmWidth = 197300
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel22: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label22'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1575#1586' '#1578#1575#1585#1610#1582
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4657
              mmLeft = 65617
              mmTop = 16140
              mmWidth = 29898
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel23: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label23'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1578#1575' '#1578#1575#1585#1610#1582
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4657
              mmLeft = 33338
              mmTop = 16140
              mmWidth = 29898
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel24: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label24'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 6085
              mmLeft = 63500
              mmTop = 16404
              mmWidth = 1588
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel25: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label25'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 6085
              mmLeft = 31221
              mmTop = 16404
              mmWidth = 1588
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel4: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label101'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1603#1583' '#1586#1605#1610#1606
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5292
              mmLeft = 175155
              mmTop = 0
              mmWidth = 22225
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel5: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label5'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1583#1585#1610#1670#1607
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5419
              mmLeft = 118798
              mmTop = 0
              mmWidth = 32544
              BandType = 1
              LayerName = Foreground
            end
            object ppLine1: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line1'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 2117
              mmLeft = 265
              mmTop = 5292
              mmWidth = 197380
              BandType = 1
              LayerName = Foreground
            end
            object ppDBText1: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'EarthField'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5927
              mmLeft = 153194
              mmTop = 5821
              mmWidth = 19315
              BandType = 1
              LayerName = Foreground
            end
            object ppDBText2: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = 'Gate'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5419
              mmLeft = 118798
              mmTop = 5821
              mmWidth = 32544
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel3: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label3'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1601#1610#1604#1583
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5419
              mmLeft = 153194
              mmTop = 0
              mmWidth = 19315
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel27: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label27'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 6085
              mmLeft = 172773
              mmTop = 529
              mmWidth = 1588
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel7: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label7'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1605#1578#1585#1575#1688
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5292
              mmLeft = 79375
              mmTop = 0
              mmWidth = 36777
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel30: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label30'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 6085
              mmLeft = 151342
              mmTop = 529
              mmWidth = 1588
              BandType = 1
              LayerName = Foreground
            end
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = 'EarthCode'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5821
              mmLeft = 175948
              mmTop = 5821
              mmWidth = 21431
              BandType = 1
              LayerName = Foreground
            end
            object ppDBText8: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText8'
              Border.mmPadding = 0
              DataField = 'Meters'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5292
              mmLeft = 79375
              mmTop = 5821
              mmWidth = 36248
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel11: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label201'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 6085
              mmLeft = 116946
              mmTop = 529
              mmWidth = 1588
              BandType = 1
              LayerName = Foreground
            end
          end
          object ppDetailBand2: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppDBText4: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText4'
              Border.mmPadding = 0
              DataField = 'ProcCode'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 5821
              mmLeft = 176477
              mmTop = 0
              mmWidth = 19315
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText5: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = '_ProcName'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 119856
              mmTop = 0
              mmWidth = 55827
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText9: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText9'
              Border.mmPadding = 0
              DataField = '_ProcUnit'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 98161
              mmTop = 0
              mmWidth = 19315
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText10: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText10'
              Border.mmPadding = 0
              DataField = 'StartDate'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 65617
              mmTop = 0
              mmWidth = 29898
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText11: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText11'
              Border.mmPadding = 0
              DataField = 'EndDate'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 33338
              mmTop = 0
              mmWidth = 29898
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText12: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText12'
              Border.mmPadding = 0
              DataField = 'ProceWeight'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 1058
              mmTop = 0
              mmWidth = 29898
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 11113
            mmPrintPosition = 0
            object ppLabel1: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label1'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1578#1593#1583#1575#1583' '#1605#1581#1583#1608#1583#1607':'#8207
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 5292
              mmLeft = 176477
              mmTop = 1323
              mmWidth = 13229
              BandType = 7
              LayerName = Foreground
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line6'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 2117
              mmLeft = 0
              mmTop = 0
              mmWidth = 197300
              BandType = 7
              LayerName = Foreground
            end
            object ppLine7: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line7'
              Border.mmPadding = 0
              ParentWidth = True
              Style = lsDouble
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 7938
              mmWidth = 197300
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'ProcCode'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 11
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7144
              mmLeft = 158486
              mmTop = 529
              mmWidth = 17198
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc3: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc3'
              Border.mmPadding = 0
              DataField = 'ProceWeight'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 11
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7144
              mmLeft = 1058
              mmTop = 529
              mmWidth = 29898
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel31: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label31'
              Border.mmPadding = 0
              Caption = #1580#1605#1593':'#8207
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 9
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 5292
              mmLeft = 98161
              mmTop = 1323
              mmWidth = 5027
              BandType = 7
              LayerName = Foreground
            end
          end
          object ppDesignLayers1: TppDesignLayers
            object ppDesignLayer1: TppDesignLayer
              UserName = 'Foreground'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 2117
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = Src_Earth
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 728
    Top = 319
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'EarthField'
      FieldName = 'EarthField'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'Gate'
      FieldName = 'Gate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'Meters'
      FieldName = 'Meters'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = src_EarthLimit
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 728
    Top = 383
    MasterDataPipelineName = 'ppDBPipeline1'
  end
end
