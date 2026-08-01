inherited MachinDeliveryF: TMachinDeliveryF
  Caption = #1578#1581#1608#1740#1604' '#1608' '#1578#1581#1608#1604' '#1582#1608#1583#1608#1585#1607#1575' '
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    object okPanel: TPanel [0]
      Left = 231
      Top = 1
      Width = 163
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        163
        39)
      object btn4: TBitBtn
        Left = 86
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
      object btn5: TBitBtn
        Left = 6
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
    object newPanel: TPanel
      Left = 386
      Top = 1
      Width = 395
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 394
      DesignSize = (
        395
        39)
      object btn1: TBitBtn
        Left = 318
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object btn2: TBitBtn
        Left = 240
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object btn3: TBitBtn
        Left = 162
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
      object btnExcel: TBitBtn
        Left = 83
        Top = 8
        Width = 75
        Height = 25
        Action = actFilter
        Anchors = [akTop, akRight]
        Caption = #1605#1581#1583#1608#1583#1607
        TabOrder = 3
      end
      object btnExcel1: TBitBtn
        Left = 5
        Top = 8
        Width = 75
        Height = 25
        Action = actGetExcel
        Anchors = [akTop, akRight]
        Caption = #1582#1608#1575#1606#1583#1606' Excel'
        TabOrder = 4
      end
    end
    object btnSort: TBitBtn
      Left = 84
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object btnSort1: TBitBtn
      Left = 161
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object btnSearch_: TBitBtn
      Left = 239
      Top = 8
      Width = 75
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607'Excel'
      TabOrder = 5
    end
    object btnPrint: TBitBtn
      Left = 317
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Caption = #1670#1575#1662
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    inherited ImgTemplate: TImage
      Left = 781
      ExplicitLeft = 781
    end
    inherited lblCaption: TLabel
      Left = 589
      Width = 141
      Height = 16
      Caption = #1578#1581#1608#1740#1604' '#1608' '#1578#1581#1608#1604' '#1582#1608#1583#1608#1585#1607#1575' '
      ExplicitLeft = 589
      ExplicitWidth = 141
    end
  end
  inherited Panel3: TPanel
    Height = 423
    object tbc1: TTabControl
      Left = 2
      Top = 2
      Width = 778
      Height = 418
      Align = alClient
      TabOrder = 0
      Tabs.Strings = (
        #1578#1581#1608#1610#1604' '#1608' '#1578#1581#1608#1604
        #1604#1610#1587#1578' '#1578#1581#1608#1610#1604' '#1608' '#1578#1581#1608#1604)
      TabIndex = 0
      OnChange = tbc1Change
      object grd1: TDBGrid
        Tag = 111
        Left = 4
        Top = 309
        Width = 770
        Height = 106
        Align = alClient
        Color = clCream
        DataSource = srcDelivery
        DrawingStyle = gdsGradient
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnEditButtonClick = grd1EditButtonClick
        OnKeyPress = grd1KeyPress
        Columns = <
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'StuffCode'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_StuffCode'
            ReadOnly = True
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_sd1'
            ReadOnly = True
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_sd2'
            ReadOnly = True
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_sd6'
            ReadOnly = True
            Width = 26
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'CustID1'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_CustID1'
            ReadOnly = True
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DeliveryDate'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DeliveryText'
            Width = 137
            Visible = True
          end>
      end
      object pnlStuffCode: TPanel
        Left = 4
        Top = 24
        Width = 770
        Height = 120
        Align = alTop
        BevelOuter = bvNone
        BorderStyle = bsSingle
        TabOrder = 1
        ExplicitWidth = 778
        DesignSize = (
          766
          116)
        object LblPerson1: TLabel
          Left = 595
          Top = 6
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1588#1606#1575#1587#1607' '#1582#1608#1583#1585#1608
          FocusControl = edtStuffCode
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 671
        end
        object btnStuffCode: TSpeedButton
          Left = 494
          Top = 2
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = btnStuffCodeClick
          ExplicitLeft = 570
        end
        object dbtxt_StuffCode: TDBText
          Left = 267
          Top = 28
          Width = 322
          Height = 16
          Anchors = [akTop, akRight]
          Color = clActiveCaption
          DataField = '_StuffCode'
          DataSource = srcDelivery
          ParentColor = False
          Transparent = False
          ExplicitLeft = 343
        end
        object Label1: TLabel
          Left = 595
          Top = 29
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1605#1588#1582#1589#1575#1578' '
          FocusControl = edtStuffCode
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 671
        end
        object Label2: TLabel
          Left = 595
          Top = 52
          Width = 78
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1588#1605#1575#1585#1607' '#1588#1607#1585#1576#1575#1606#1740' '
          FocusControl = edtStuffCode
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 671
        end
        object dbtxt_sd1: TDBText
          Left = 267
          Top = 50
          Width = 322
          Height = 16
          Anchors = [akTop, akRight]
          Color = clActiveCaption
          DataField = '_sd1'
          DataSource = srcDelivery
          ParentColor = False
          Transparent = False
          ExplicitLeft = 343
        end
        object dbtxt_sd6: TDBText
          Left = 267
          Top = 94
          Width = 322
          Height = 16
          Anchors = [akTop, akRight]
          Color = clActiveCaption
          DataField = '_sd6'
          DataSource = srcDelivery
          ParentColor = False
          Transparent = False
          ExplicitLeft = 315
        end
        object Label3: TLabel
          Left = 596
          Top = 95
          Width = 22
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1605#1583#1604' '
          FocusControl = edtStuffCode
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 644
        end
        object dbtxt_sd2: TDBText
          Left = 267
          Top = 72
          Width = 322
          Height = 16
          Anchors = [akTop, akRight]
          Color = clActiveCaption
          DataField = '_sd2'
          DataSource = srcDelivery
          ParentColor = False
          Transparent = False
          ExplicitLeft = 315
        end
        object Label6: TLabel
          Left = 595
          Top = 74
          Width = 53
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1662#1604#1575#1603' '#1575#1605#1608#1575#1604#1610
          FocusControl = edtStuffCode
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 643
        end
        object edtStuffCode: TDBEdit
          Left = 519
          Top = 2
          Width = 70
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'StuffCode'
          DataSource = srcDelivery
          TabOrder = 0
          OnKeyDown = edtStuffCodeKeyDown
          ExplicitLeft = 527
        end
        object DBNavigator1: TDBNavigator
          Left = 14
          Top = 92
          Width = 156
          Height = 20
          DataSource = srcDelivery
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Flat = True
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
      end
      object pnlCustID1: TPanel
        Left = 4
        Top = 144
        Width = 770
        Height = 60
        Align = alTop
        BorderStyle = bsSingle
        TabOrder = 2
        ExplicitWidth = 778
        DesignSize = (
          766
          56)
        object Label4: TLabel
          Left = 595
          Top = 8
          Width = 89
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1603#1583#1608#1606#1575#1605' '#1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607
          FocusControl = edtCustID1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 667
        end
        object btnCustID1: TSpeedButton
          Left = 494
          Top = 4
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = btnCustID1Click
          ExplicitLeft = 566
        end
        object dbtxt_CustID1: TDBText
          Left = 267
          Top = 7
          Width = 225
          Height = 16
          Anchors = [akTop, akRight]
          Color = clActiveCaption
          DataField = '_CustID1'
          DataSource = srcDelivery
          ParentColor = False
          Transparent = False
          ExplicitLeft = 339
        end
        object Label5: TLabel
          Left = 595
          Top = 34
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1578#1581#1608#1610#1604
          FocusControl = edtDeliveryDate
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 667
        end
        object edtCustID1: TDBEdit
          Left = 519
          Top = 4
          Width = 70
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'CustID1'
          DataSource = srcDelivery
          TabOrder = 0
          OnKeyDown = edtCustID1KeyDown
          ExplicitLeft = 527
        end
        object edtDeliveryDate: TDBEdit
          Left = 519
          Top = 31
          Width = 70
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'DeliveryDate'
          DataSource = srcDelivery
          TabOrder = 1
          OnKeyDown = edtStuffCodeKeyDown
          ExplicitLeft = 527
        end
      end
      object GroupBox1: TGroupBox
        Left = 4
        Top = 204
        Width = 770
        Height = 105
        Align = alTop
        Caption = '  '#1608#1590#1593#1740#1578' '#1582#1608#1583#1585#1608' '#1583#1585' '#1578#1575#1585#1740#1582' '#1578#1581#1608#1740#1604'  '
        TabOrder = 3
        ExplicitWidth = 778
        object dbmmoDeliveryText: TDBMemo
          Tag = 111
          Left = 2
          Top = 15
          Width = 774
          Height = 88
          Align = alClient
          DataField = 'DeliveryText'
          DataSource = srcDelivery
          TabOrder = 0
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 72
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcDelivery
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcDelivery
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcDelivery
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcDelivery
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcDelivery
    end
    object actExcel: TAction [9]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607'Excel'
      OnExecute = actExcelExecute
    end
    object actFilter: TAction [10]
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actCopyPaste: TAction [11]
      Caption = #1603#1662#1610' '#1587#1591#1585
      ShortCut = 16397
    end
    object actPrint: TAction [12]
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSort: TAction [13]
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actGetExcel: TAction [14]
      Caption = #1582#1608#1575#1606#1583#1606' Excel'
      OnExecute = actGetExcelExecute
    end
    inherited actManagGridColumns: TAction
      OnExecute = actManagGridColumnsExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 272
    Top = 5
  end
  object qryDelivery: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryDeliveryAfterInsert
    BeforePost = qryDeliveryBeforePost
    AfterPost = qryDeliveryAfterPost
    BeforeDelete = qryDeliveryBeforeDelete
    AfterDelete = qryDeliveryAfterDelete
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM        Machin.Delivery'
      '')
    Left = 136
    Top = 256
    object qryDeliveryDeliveryID: TIntegerField
      FieldName = 'DeliveryID'
    end
    object qryDeliveryStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1588#1606#1575#1587#1607' '#1582#1608#1583#1585#1608
      FieldName = 'StuffCode'
    end
    object qryDelivery_StuffCode: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '
      FieldKind = fkLookup
      FieldName = '_StuffCode'
      LookupDataSet = qryStuffCode
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'StuffCode'
      Size = 200
      Lookup = True
    end
    object qryDelivery_sd1: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1588#1607#1585#1576#1575#1606#1740
      FieldKind = fkLookup
      FieldName = '_sd1'
      LookupDataSet = qryStuffCode
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'sd1'
      KeyFields = 'StuffCode'
      Size = 100
      Lookup = True
    end
    object qryDelivery_sd2: TStringField
      DisplayLabel = #1662#1604#1575#1603' '#1575#1605#1608#1575#1604#1610
      FieldKind = fkLookup
      FieldName = '_sd2'
      LookupDataSet = qryStuffCode
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'sd2'
      KeyFields = 'StuffCode'
      Size = 100
      Lookup = True
    end
    object qryDelivery_sd6: TStringField
      DisplayLabel = #1605#1583#1604' '
      FieldKind = fkLookup
      FieldName = '_sd6'
      LookupDataSet = qryStuffCode
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'sd6'
      KeyFields = 'StuffCode'
      Size = 100
      Lookup = True
    end
    object qryDeliveryCustID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607
      FieldName = 'CustID1'
    end
    object qryDelivery_CustID1: TStringField
      DisplayLabel = #1606#1575#1605' '#1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607
      FieldKind = fkLookup
      FieldName = '_CustID1'
      LookupDataSet = qryCustID
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustID1'
      Size = 200
      Lookup = True
    end
    object qryDeliveryDeliveryDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1578#1581#1608#1610#1604
      FieldName = 'DeliveryDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryDeliveryDeliveryText: TStringField
      Tag = 3
      DisplayLabel = '  '#1608#1590#1593#1740#1578' '#1582#1608#1583#1585#1608' '#1583#1585' '#1578#1575#1585#1740#1582' '#1578#1581#1608#1740#1604'  '
      FieldName = 'DeliveryText'
      Size = 2000
    end
  end
  object srcDelivery: TDataSource
    DataSet = qryDelivery
    OnStateChange = srcDeliveryStateChange
    Left = 208
    Top = 256
  end
  object qryCustID: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT Customers.CustID,Customers.CustName FROM Customers '
      
        '    INNER JOIN CustomersGroup ON Customers.CustomerGrpID = Custo' +
        'mersGroup.CustomerGrpID '
      'WHERE  GroupType in(9,11,13)')
    Left = 600
    Top = 304
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcDelivery
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 323
    Top = 274
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'DeliveryID'
      FieldName = 'DeliveryID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'StuffCode'
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = '_StuffCode'
      FieldName = '_StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = '_sd1'
      FieldName = '_sd1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = '_sd2'
      FieldName = '_sd2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = '_sd6'
      FieldName = '_sd6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'CustID1'
      FieldName = 'CustID1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = '_CustID1'
      FieldName = '_CustID1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'DeliveryDate'
      FieldName = 'DeliveryDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'DeliveryText'
      FieldName = 'DeliveryText'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = AccBookForSomeYearF.ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A5'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 148000
    PrinterSetup.PaperSize = 11
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\ReciptsGrid0.rtm'
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
    EmailSettings.ShowEmailDialog = True
    EmailSettings.ShowCancelDialog = True
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
    Left = 355
    Top = 400
    Version = '22.02'
    mmColumnWidth = 135300
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object qryStuffCode: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName,sd1,sd6,' +
        'sd2'
      
        '   FROM StuffCoding INNER JOIN StuffGroups ON StuffCoding.GroupI' +
        'D = StuffGroups.GroupID '
      '   WHERE (StuffGroups.GroupType IN (9))')
    Left = 480
    Top = 264
  end
end
