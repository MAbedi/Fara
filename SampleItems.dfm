inherited SampleItemsF: TSampleItemsF
  Caption = 'SampleItemsF'
  ClientHeight = 457
  ExplicitHeight = 496
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 416
    ExplicitTop = 416
    object newPanel: TPanel
      Left = 558
      Top = 1
      Width = 231
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 1
      object BitBtn1: TBitBtn
        AlignWithMargins = True
        Left = 155
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = DataSetInsert1
        Align = alRight
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn2: TBitBtn
        AlignWithMargins = True
        Left = 78
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = DataSetEdit1
        Align = alRight
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 1
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = DataSetDelete1_
        Align = alRight
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object okPanel: TPanel
      Left = 404
      Top = 1
      Width = 154
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 2
      object BitBtn4: TBitBtn
        AlignWithMargins = True
        Left = 78
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = DataSetPost1
        Align = alRight
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
      object BitBtn5: TBitBtn
        AlignWithMargins = True
        Left = 1
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = DataSetCancel1
        Align = alRight
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
    object DBNavigator1: TDBNavigator
      AlignWithMargins = True
      Left = 92
      Top = 7
      Width = 302
      Height = 27
      Margins.Left = 10
      Margins.Top = 6
      Margins.Right = 10
      Margins.Bottom = 6
      DataSource = srcSamples
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      TabOrder = 3
    end
  end
  inherited Panel3: TPanel
    Height = 363
    ExplicitHeight = 363
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 786
      Height = 359
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 0
      object PnlPerson1: TPanel
        Left = 2
        Top = 2
        Width = 782
        Height = 71
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          782
          71)
        object Label2: TLabel
          Left = 452
          Top = 11
          Width = 31
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1587#1575#1593#1578
        end
        object Label3: TLabel
          Left = 452
          Top = 37
          Width = 60
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1588#1610#1601#1578' '#1578#1581#1608#1610#1604
        end
        object Label5: TLabel
          Left = 140
          Top = 11
          Width = 30
          Height = 13
          Caption = #1588#1605#1575#1585#1607
          FocusControl = edtSampleNo
        end
        object Label6: TLabel
          Left = 141
          Top = 37
          Width = 21
          Height = 13
          Caption = #1578#1575#1585#1610#1582
          FocusControl = edtSampleDate
        end
        object SBtnReciptNumber: TSpeedButton
          Left = 24
          Top = 7
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SBtnReciptNumberClick
        end
        object Label1: TLabel
          Left = 282
          Top = 11
          Width = 39
          Height = 13
          Caption = #1607#1705#1578#1608#1604#1740#1578#1585
          FocusControl = edtHectolitre
        end
        object cmbHourID: TDBComboBox
          Left = 332
          Top = 7
          Width = 114
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'HourID'
          DataSource = srcSamples
          Items.Strings = (
            '.'
            '..')
          TabOrder = 1
        end
        object cmbShiftID: TDBComboBox
          Left = 332
          Top = 33
          Width = 114
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'ShiftID'
          DataSource = srcSamples
          Items.Strings = (
            '.'
            '..')
          TabOrder = 2
        end
        object dbrgrpHookupKind: TDBRadioGroup
          AlignWithMargins = True
          Left = 560
          Top = 3
          Width = 219
          Height = 65
          Align = alRight
          Caption = #1606#1608#1593' '#1575#1585#1578#1576#1575#1591
          Columns = 2
          DataField = 'HookupKind'
          DataSource = srcSamples
          Items.Strings = (
            #1605#1608#1580#1608#1583#1740
            #1608#1585#1608#1583#1740
            #1605#1589#1585#1601#1740
            #1576#1585#1711#1588#1578#1740)
          TabOrder = 0
          Values.Strings = (
            '0'
            '1'
            '2'
            '3')
        end
        object edtSampleNo: TDBEdit
          Left = 48
          Top = 7
          Width = 86
          Height = 21
          DataField = 'SampleNo'
          DataSource = srcSamples
          TabOrder = 4
        end
        object edtSampleDate: TDBEdit
          Left = 48
          Top = 33
          Width = 86
          Height = 21
          DataField = 'SampleDate'
          DataSource = srcSamples
          TabOrder = 5
        end
        object edtHectolitre: TDBEdit
          Left = 192
          Top = 7
          Width = 86
          Height = 21
          DataField = 'Hectolitre'
          DataSource = srcSamples
          TabOrder = 3
        end
      end
      object Panel5: TPanel
        Left = 2
        Top = 73
        Width = 782
        Height = 30
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object SpeedButton2: TSpeedButton
          AlignWithMargins = True
          Left = 627
          Top = 3
          Width = 23
          Height = 24
          Align = alRight
          Caption = '...'
          OnClick = SpeedButton2Click
          ExplicitLeft = 232
          ExplicitTop = 5
          ExplicitHeight = 22
        end
        object Label4: TLabel
          AlignWithMargins = True
          Left = 726
          Top = 3
          Width = 53
          Height = 17
          Margins.Bottom = 10
          Align = alRight
          Alignment = taRightJustify
          Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1603#1575#1604#1575
          FocusControl = edtStuffCode
          ExplicitHeight = 13
        end
        object edt_stuffName: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 618
          Height = 21
          Margins.Bottom = 6
          TabStop = False
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 14803425
          DataField = '_stuffName'
          DataSource = srcSamples
          TabOrder = 0
        end
        object edtStuffCode: TDBEdit
          AlignWithMargins = True
          Left = 656
          Top = 3
          Width = 64
          Height = 21
          Margins.Bottom = 6
          Align = alRight
          DataField = 'StuffCode'
          DataSource = srcSamples
          TabOrder = 1
        end
      end
      object CedarDbgrid1: TCedarDbgrid
        Tag = 111
        Left = 2
        Top = 103
        Width = 782
        Height = 254
        Align = alClient
        DataSource = srcSampleItems
        DynProps = <>
        EditActions = [geaCutEh, geaPasteEh, geaDeleteEh, geaSelectAllEh]
        Flat = True
        FooterParams.FillStyle = cfstSolidEh
        FooterParams.Font.Charset = DEFAULT_CHARSET
        FooterParams.Font.Color = clWindowText
        FooterParams.Font.Height = -12
        FooterParams.Font.Name = 'Tahoma'
        FooterParams.Font.Style = [fsBold]
        FooterParams.ParentFont = False
        FooterParams.VertLines = False
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        HorzScrollBar.ExtraPanel.Visible = True
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        OddRowColor = clGradientInactiveCaption
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghEnterAsTab, dghDblClickOptimizeColWidth, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
        RowHeight = 18
        RowPanel.Active = True
        RowPanel.TabNavigationType = rpntLeftToRightPriorityEh
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        SortLocal = True
        TabOrder = 2
        OnEditButtonClick = CedarDbgrid1EditButtonClick
        OnKeyPress = CedarDbgrid1KeyPress
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Storepit'
            Footers = <>
            Title.TitleButton = True
          end
          item
            CellButtons = <>
            Color = 15461355
            DynProps = <>
            EditButtons = <>
            FieldName = '_Storepit'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 64
          end
          item
            ButtonStyle = cbsEllipsis
            CellButtons = <>
            DynProps = <>
            EditButton.Style = ebsEllipsisEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'CustID'
            Footers = <>
            Title.TitleButton = True
            Width = 69
          end
          item
            CellButtons = <>
            Color = 15461355
            DynProps = <>
            EditButtons = <>
            FieldName = '_CustName'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 66
          end
          item
            ButtonStyle = cbsEllipsis
            CellButtons = <>
            DynProps = <>
            EditButton.Style = ebsEllipsisEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'StuffCode'
            Footers = <>
            Width = 54
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_StuffName'
            Footers = <>
            Width = 80
          end
          item
            ButtonStyle = cbsDropDown
            CellButtons = <>
            Color = 13236955
            DynProps = <>
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'Height'
            Footers = <>
            Title.TitleButton = True
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SiHectolitre'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'D_Hour'
            Footers = <>
            Title.TitleButton = True
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'D_Minute'
            Footers = <>
            Title.TitleButton = True
          end
          item
            ButtonStyle = cbsDropDown
            CellButtons = <>
            Color = 13236955
            DynProps = <>
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'Moisture'
            Footers = <>
            Title.TitleButton = True
          end
          item
            ButtonStyle = cbsDropDown
            CellButtons = <>
            Color = 13236955
            DynProps = <>
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'Gluten'
            Footers = <>
            Title.TitleButton = True
          end
          item
            ButtonStyle = cbsDropDown
            CellButtons = <>
            Color = 13236955
            DynProps = <>
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'Indexs'
            Footers = <>
            Title.TitleButton = True
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Consideration'
            Footers = <>
            Title.TitleButton = True
            Width = 81
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  inherited ActionList: TActionList
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcSamples
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcSamples
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcSamples
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcSamples
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcSamples
    end
  end
  inherited ImageList1: TImageList
    Left = 504
    Top = 9
  end
  object qrySamples: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    AfterInsert = qrySamplesAfterInsert
    AfterEdit = qrySamplesAfterEdit
    BeforePost = qrySamplesBeforePost
    AfterPost = qrySamplesAfterPost
    BeforeDelete = qrySamplesBeforeDelete
    AfterDelete = qrySamplesAfterDelete
    AfterScroll = qrySamplesAfterScroll
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  *'
      'FROM    Lab.Samples'
      'WHERE        ( ReciptType = :ReciptType )'
      ''
      ''
      '')
    Left = 280
    Top = 241
    object qrySamplesReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qrySamplesSampleNo: TIntegerField
      FieldName = 'SampleNo'
    end
    object qrySamplesSampleDate: TStringField
      FieldName = 'SampleDate'
      FixedChar = True
      Size = 10
    end
    object qrySamplesHourID: TIntegerField
      FieldName = 'HourID'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qrySamplesShiftID: TIntegerField
      FieldName = 'ShiftID'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qrySamplesInsertDate: TDateTimeField
      FieldName = 'InsertDate'
    end
    object qrySamplesStuffCode: TLargeintField
      FieldName = 'StuffCode'
    end
    object qrySamples_stuffName: TStringField
      FieldKind = fkLookup
      FieldName = '_stuffName'
      LookupDataSet = qry_LookStuff
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'StuffCode'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qrySamplesHookupKind: TWordField
      FieldName = 'HookupKind'
      OnChange = qrySamplesHookupKindChange
    end
    object qrySamplesFirstUser: TWideStringField
      FieldName = 'FirstUser'
    end
    object qrySamplesLastUser: TWideStringField
      FieldName = 'LastUser'
    end
    object qrySamplesSampleID: TIntegerField
      FieldName = 'SampleID'
    end
    object qrySamplesHectolitre: TFloatField
      FieldName = 'Hectolitre'
    end
  end
  object srcSamples: TDataSource
    DataSet = qrySamples
    OnStateChange = srcSamplesStateChange
    Left = 136
    Top = 239
  end
  object qryinit: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  * FROM    ReciptTypes'
      #13'where ReciptType=:ReciptType'
      '')
    Left = 246
    Top = 115
  end
  object qryItems: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qryItemsAfterInsert
    BeforeEdit = qryItemsBeforeEdit
    BeforePost = qryItemsBeforePost
    Parameters = <
      item
        Name = 'SampleID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      ''
      'FROM            Lab.SampleItems'
      'WHERE        (SampleID = :SampleID)'
      ''
      ''
      '')
    Left = 536
    Top = 305
    object qryItemsID: TAutoIncField
      FieldName = 'ID'
      Required = True
    end
    object qryItemsSampleID: TIntegerField
      FieldName = 'SampleID'
      Required = True
    end
    object qryItemsStorepit: TSmallintField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1740#1604#1608
      FieldName = 'Storepit'
      Required = True
    end
    object qryItems_Storepit: TStringField
      DisplayLabel = #1587#1740#1604#1608
      FieldKind = fkLookup
      FieldName = '_Storepit'
      LookupDataSet = qryStore
      LookupKeyFields = 'n_StoreID'
      LookupResultField = 'c_StoreName'
      KeyFields = 'Storepit'
      Required = True
      Size = 200
      Lookup = True
    end
    object qryItemsCustID: TIntegerField
      DisplayLabel = #1705#1583#1605#1576#1583#1575' '#1576#1575#1585#1711#1740#1585#1740
      FieldName = 'CustID'
    end
    object qryItems_CustName: TStringField
      DisplayLabel = #1605#1576#1583#1575' '#1576#1575#1585#1711#1740#1585#1740
      FieldKind = fkLookup
      FieldName = '_CustName'
      LookupDataSet = qryCustomers
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustID'
      Size = 200
      Lookup = True
    end
    object qryItemsHeight: TFloatField
      DisplayLabel = #1575#1585#1578#1601#1575#1593
      FieldName = 'Height'
      OnChange = qryItemsHeightChange
    end
    object qryItemsD_Hour: TIntegerField
      DisplayLabel = #1605#1583#1578' '#1587#1575#1593#1578
      FieldName = 'D_Hour'
    end
    object qryItemsD_Minute: TIntegerField
      DisplayLabel = #1605#1583#1578' '#1583#1602#1740#1602#1607
      FieldName = 'D_Minute'
    end
    object qryItemsConsideration: TWideStringField
      DisplayLabel = #1605#1604#1575#1581#1592#1575#1578
      FieldName = 'Consideration'
      Size = 200
    end
    object qryItemsMoisture: TFloatField
      DisplayLabel = #1585#1591#1608#1576#1578
      FieldName = 'Moisture'
    end
    object qryItemsGluten: TFloatField
      DisplayLabel = #1711#1604#1608#1578#1606
      FieldName = 'Gluten'
    end
    object qryItemsIndexs: TFloatField
      DisplayLabel = #1575#1740#1606#1583#1705#1587
      FieldName = 'Indexs'
    end
    object qryItemsDurationHM: TFMTBCDField
      FieldName = 'DurationHM'
      ReadOnly = True
      Precision = 26
      Size = 10
    end
    object qryItemsStuffCode: TLargeintField
      DisplayLabel = #1705#1583#1705#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryItems_StuffName: TStringField
      DisplayLabel = #1705#1575#1604#1575
      FieldKind = fkLookup
      FieldName = '_StuffName'
      LookupDataSet = qry_LookStuff
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'StuffCode'
      Size = 150
      Lookup = True
    end
    object qryItemsSiHectolitre: TFloatField
      DisplayLabel = #1607#1705#1578#1608#1604#1740#1578#1585
      FieldName = 'SiHectolitre'
    end
  end
  object srcSampleItems: TDataSource
    DataSet = qryItems
    Left = 376
    Top = 311
  end
  object qryStore: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     n_StoreID, c_StoreName'
      'FROM         Stores'
      'WHERE (StoreKind = 11)')
    Left = 658
    Top = 309
  end
  object qry_LookStuff: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     c_StuffCode, GroupID, c_StuffName'
      'FROM         dbo.StuffCoding')
    Left = 438
    Top = 240
  end
  object qryCustomers: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT   DISTINCT  CustID, CustName'
      'FROM Vu_CustomersGroups')
    Left = 616
    Top = 238
  end
end
