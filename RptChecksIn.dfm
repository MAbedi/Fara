inherited RptChecksInF: TRptChecksInF
  Left = 383
  Top = 341
  Caption = 'RptChecksInF'
  ClientWidth = 1106
  ExplicitWidth = 1122
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Width = 1106
    ExplicitWidth = 1106
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 1027
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 946
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actShow
      Align = alRight
      Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
      TabOrder = 2
    end
    object DBNavigator1: TDBNavigator
      AlignWithMargins = True
      Left = 328
      Top = 4
      Width = 531
      Height = 33
      DataSource = srcChecksIn
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendExel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 5
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1576#1607' '#1578#1585#1578#1610#1576
      TabOrder = 6
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 865
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662' (F7)'
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
    Width = 1106
    Height = 65
    ExplicitWidth = 1106
    ExplicitHeight = 65
    DesignSize = (
      1106
      65)
    inherited ImgTemplate: TImage
      Left = 1097
      ExplicitLeft = 962
    end
    inherited lblCaption: TLabel
      Left = 998
      Height = 45
      ExplicitLeft = 998
    end
    inherited lblBaseDate: TLabel
      Left = 503
      ExplicitLeft = 438
    end
    object grpMaster: TGroupBox
      Left = 1
      Top = 1
      Width = 240
      Height = 63
      Align = alLeft
      Caption = #1603#1583
      TabOrder = 0
      Visible = False
      object btnMaster: TSpeedButton
        Left = 5
        Top = 11
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = btnMasterClick
      end
      object dbedtMasterCode: TDBEdit
        Left = 30
        Top = 12
        Width = 81
        Height = 21
        DataField = 'CustID'
        DataSource = srcMaster
        TabOrder = 0
      end
      object dbedtName: TDBEdit
        Left = 5
        Top = 35
        Width = 228
        Height = 21
        BevelOuter = bvNone
        BevelKind = bkFlat
        Color = clBtnFace
        Ctl3D = True
        DataField = 'CustName'
        DataSource = srcMaster
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object dbnvgr1: TDBNavigator
        Left = 115
        Top = 11
        Width = 116
        Height = 22
        DataSource = srcMaster
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 2
      end
    end
  end
  inherited Panel3: TPanel
    Top = 65
    Width = 1106
    Height = 411
    ExplicitTop = 65
    ExplicitWidth = 1106
    ExplicitHeight = 411
    object StatusBar1: TStatusBar
      Left = 2
      Top = 391
      Width = 1102
      Height = 18
      Panels = <
        item
          Width = 300
        end
        item
          Width = 300
        end>
    end
    object DBGrid1: TCedarDbgrid
      Left = 2
      Top = 2
      Width = 1102
      Height = 389
      Align = alClient
      Color = clCream
      DataSource = srcChecksIn
      DynProps = <>
      Flat = True
      FooterParams.FillStyle = cfstSolidEh
      FooterParams.Font.Charset = DEFAULT_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -11
      FooterParams.Font.Name = 'Tahoma'
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      FooterParams.VertLines = False
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clGradientInactiveCaption
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      RowHeight = 18
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SortLocal = True
      TabOrder = 0
      OnDblClick = actShowExecute
      OnDrawColumnCell = DBGrid1DrawColumnCell
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CheckNumber'
          Footers = <>
          Title.Alignment = taCenter
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CheckDate'
          Footers = <>
          Title.Alignment = taCenter
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ChecktypeName'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'BankName'
          Footers = <>
          Title.Alignment = taCenter
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AccountNumber'
          Footers = <>
          Title.Alignment = taCenter
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AccountNumberNew'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'City'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ItemAmount'
          Footers = <>
          Title.Alignment = taCenter
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FormNumber'
          Footers = <>
          Title.Alignment = taCenter
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FormDate'
          Footers = <>
          Title.Alignment = taCenter
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustomerID2'
          Footers = <>
          Title.Alignment = taCenter
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Custname2'
          Footers = <>
          Title.Alignment = taCenter
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Mobile'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustomerID1'
          Footers = <>
          Title.Alignment = taCenter
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Custname1'
          Footers = <>
          Title.Alignment = taCenter
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'BudgetCode'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ItemNote'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CheckCounter'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SyadSystem'
          Footers = <>
          ReadOnly = True
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'HunterCode'
          Footers = <>
          Width = 60
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TopicCode'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DetailCode'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CTopicCode'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CTopicCode2'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CTopicCode3'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TopicCodeD'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DetailCodeD'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CTopicCodeD'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CTopicCode2D'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CTopicCode3D'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FormItemID'
          Footers = <>
          ReadOnly = True
          Title.Caption = '...'
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SellsEmporium'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SellsEmporiumName'
          Footers = <>
          Width = 56
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustomerID2M'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustName2M'
          Footers = <>
          Width = 82
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PayTypesName'
          Footers = <>
          Width = 92
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Left = 584
    Top = 16
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' (F7)'
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actSort: TAction
      Caption = #1576#1607' '#1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actShow: TAction
      Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
      OnExecute = actShowExecute
    end
    object actAddpopViewFile: TAction
      Caption = #1601#1575#1740#1604' '#1662#1740#1608#1587#1578
      OnExecute = actAddpopViewFileExecute
    end
    object actShowCheckDate: TAction
      AutoCheck = True
      Caption = #1578#1575#1585#1740#1582' '#1587#1585#1585#1587#1740#1583' '#1608' '#1578#1575#1585#1740#1582' '#1608#1589#1608#1604' '#1670#1705' '#1601#1593#1575#1604' '#1576#1575#1588#1583
      OnExecute = actShowCheckDateExecute
    end
    object actCallOtherNationalCode: TAction
      Caption = #1579#1576#1578' '#1608' '#1608#1740#1585#1575#1740#1588' '#1705#1583' '#1605#1604#1740' '#1587#1575#1740#1585' '
      OnExecute = actCallOtherNationalCodeExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 143
    Top = 217
  end
  object qryChecksIn: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryChecksInAfterOpen
    Parameters = <>
    Left = 288
    Top = 173
    object qryChecksInFormItemID: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1606#1583#1607
      DisplayWidth = 12
      FieldName = 'FormItemID'
    end
    object qryChecksInCheckNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1670#1603
      DisplayWidth = 12
      FieldName = 'CheckNumber'
      FixedChar = True
      Size = 15
    end
    object qryChecksInCheckDate: TStringField
      Tag = 3
      DisplayLabel = #1587#1585#1585#1587#1610#1583' '#1670#1603
      DisplayWidth = 12
      FieldName = 'CheckDate'
      FixedChar = True
      Size = 10
    end
    object qryChecksInBankName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1576#1575#1606#1603
      DisplayWidth = 17
      FieldName = 'BankName'
    end
    object qryChecksInAccountNumber: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1581#1587#1575#1576
      DisplayWidth = 25
      FieldName = 'AccountNumber'
      FixedChar = True
      Size = 25
    end
    object qryChecksInAccountNumberNew: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607#8207#1581#1587#1575#1576
      FieldName = 'AccountNumberNew'
      Size = 60
    end
    object qryChecksInItemAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1670#1603
      DisplayWidth = 22
      FieldName = 'ItemAmount'
      currency = True
      Precision = 19
    end
    object qryChecksInItemNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      DisplayWidth = 306
      FieldName = 'ItemNote'
      Size = 255
    end
    object qryChecksInFormNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1602#1576#1590
      DisplayWidth = 12
      FieldName = 'FormNumber'
    end
    object qryChecksInFormDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1602#1576#1590
      DisplayWidth = 10
      FieldName = 'FormDate'
      FixedChar = True
      Size = 10
    end
    object qryChecksInCustomerID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      DisplayWidth = 12
      FieldName = 'CustomerID2'
    end
    object qryChecksInCustname2: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605
      FieldName = 'Custname2'
      Size = 60
    end
    object qryChecksInCustomerID2M: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583' '#1576#1575#1606#1705'/'#1589#1606#1583#1608#1602'2'
      DisplayWidth = 12
      FieldName = 'CustomerID2M'
    end
    object qryChecksInCustName2M: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1576#1575#1606#1705'/'#1589#1606#1583#1608#1602'2'
      FieldName = 'CustName2M'
      Size = 60
    end
    object qryChecksInMobile: TStringField
      Tag = 3
      DisplayLabel = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
      FieldName = 'Mobile'
      Required = True
    end
    object qryChecksInFormType: TWordField
      Tag = 3
      DisplayWidth = 12
      FieldName = 'FormType'
    end
    object qryChecksInFormCaption: TStringField
      Tag = 3
      DisplayWidth = 60
      FieldName = 'FormCaption'
      Size = 50
    end
    object qryChecksInCustomerID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      DisplayWidth = 12
      FieldName = 'CustomerID1'
    end
    object qryChecksInCustname1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605
      FieldName = 'Custname1'
      Size = 60
    end
    object qryChecksInDetailDataType: TWordField
      Tag = 3
      DisplayWidth = 15
      FieldName = 'DetailDataType'
    end
    object qryChecksInBudgetCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1576#1608#1583#1580#1607
      FieldName = 'BudgetCode'
    end
    object qryChecksInFormID: TIntegerField
      Tag = 3
      FieldName = 'FormID'
    end
    object qryChecksInCity: TStringField
      Tag = 3
      DisplayLabel = #1588#1607#1585
      FieldName = 'City'
      FixedChar = True
    end
    object qryChecksInServerID: TIntegerField
      Tag = 3
      FieldName = 'ServerID'
    end
    object qryChecksInYearID: TIntegerField
      Tag = 3
      FieldName = 'YearID'
    end
    object qryChecksInChecktype: TWordField
      Tag = 3
      DisplayLabel = #1603#1583#1606#1608#1593' '#1670#1603
      FieldName = 'Checktype'
    end
    object qryChecksInChecktypeName: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1670#1603
      FieldName = 'ChecktypeName'
      ReadOnly = True
      Size = 10
    end
    object qryChecksInchk_ExistAttachments: TStringField
      FieldName = 'chk_ExistAttachments'
      ReadOnly = True
      Size = 1000
    end
    object qryChecksInCheckCounter: TIntegerField
      Tag = 3
      DisplayLabel = #1662#1588#1578' '#1606#1605#1585#1607
      FieldName = 'CheckCounter'
    end
    object qryChecksInTopicCode: TLargeintField
      DisplayLabel = #1705#1583#1581#1587#1575#1576
      FieldName = 'TopicCode'
    end
    object qryChecksInDetailCode: TStringField
      DisplayLabel = #1705#1583' '#1578#1601#1589#1740#1604#1740
      FieldName = 'DetailCode'
      Size = 12
    end
    object qryChecksInCTopicCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' '#1581#1587#1575#1576#1583#1575#1585#1610'  '
      FieldName = 'CTopicCode'
      Size = 12
    end
    object qryChecksInCTopicCode2: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39'2 '#1581#1587#1575#1576#1583#1575#1585#1610'  '
      FieldName = 'CTopicCode2'
      Size = 12
    end
    object qryChecksInCTopicCode3: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39'3 '#1581#1587#1575#1576#1583#1575#1585#1610'  '
      FieldName = 'CTopicCode3'
      Size = 12
    end
    object qryChecksInTopicCodeD: TLargeintField
      DisplayLabel = #1705#1583#1581#1587#1575#1576' '#1570#1740#1578#1605
      FieldName = 'TopicCodeD'
    end
    object qryChecksInDetailCodeD: TStringField
      DisplayLabel = #1705#1583' '#1578#1601#1589#1740#1604#1740' '#1570#1740#1578#1605
      FieldName = 'DetailCodeD'
      Size = 12
    end
    object qryChecksInCTopicCodeD: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' '#1570#1740#1578#1605
      FieldName = 'CTopicCodeD'
      Size = 12
    end
    object qryChecksInCTopicCode2D: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39'2  '#1570#1740#1578#1605
      FieldName = 'CTopicCode2D'
      Size = 12
    end
    object qryChecksInCTopicCode3D: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39'3  '#1570#1740#1578#1605
      FieldName = 'CTopicCode3D'
      Size = 12
    end
    object qryChecksInHunterCode: TStringField
      Tag = 3
      DisplayLabel = #1705#1583' '#1589#1740#1575#1583
      FieldName = 'HunterCode'
    end
    object qryChecksInSyadSystem: TBooleanField
      DisplayLabel = #1579#1576#1578'  '#1587#1575#1605#1575#1606#1607' '#1589#1740#1575#1583' '
      FieldName = 'SyadSystem'
    end
    object qryChecksInSellsEmporium: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1585#1603#1586' '#1601#1585#1608#1588
      FieldName = 'SellsEmporium'
    end
    object qryChecksInSellsEmporiumName: TWideStringField
      Tag = 3
      DisplayLabel = #1605#1585#1603#1586' '#1601#1585#1608#1588
      FieldName = 'SellsEmporiumName'
      Size = 100
    end
    object qryChecksInPayTypesName: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1583#1585#1610#1575#1601#1578'/'#1662#1585#1583#1575#1582#1578
      FieldName = 'PayTypesName'
      Size = 50
    end
  end
  object srcChecksIn: TDataSource
    DataSet = qryChecksIn
    Left = 416
    Top = 165
  end
  object qryInitQry: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      ''
      'SELECT     * FROM         FormTypes'
      '')
    Left = 664
    Top = 143
  end
  object PopMenu: TPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 707
    Top = 312
    object AllC_l_i_c_k_: TMenuItem
      Caption = 'AllC_l_i_c_k_'
      Visible = False
      OnClick = AllC_l_i_c_k_Click
    end
    object RptChecksIn3: TMenuItem
      Caption = #1576#1578#1601#1603#1610#1603' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607' '#1608' '#1576#1575#1606#1603' '
      OnClick = AllC_l_i_c_k_Click
    end
    object RptChecksIn2: TMenuItem
      Caption = #1576#1578#1601#1603#1610#1603' '#1605#1588#1578#1585#1610
      OnClick = AllC_l_i_c_k_Click
    end
    object RptChecksIn1: TMenuItem
      Caption = #1604#1610#1587#1578' '#1603#1604#1610' '#1576#1578#1585#1578#1610#1576' '#1587#1585#1585#1587#1610#1583
      OnClick = AllC_l_i_c_k_Click
    end
  end
  object ppRptList: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\RptChecksIn2.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    EmailSettings.ConnectionSettings.ConnectionStatusInfo = [csiStatusBar]
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
    PDFSettings.Layers = True
    PDFSettings.Outline = True
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
    CloudDriveSettings.DropBoxSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.DropBoxSettings.SharedResources = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.GoogleDriveSettings.SharedResources = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    CloudDriveSettings.OneDriveSettings.SharedResources = True
    Left = 480
    Top = 296
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand2: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 37306
      mmPrintPosition = 0
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 29898
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 77788
        mmTop = 0
        mmWidth = 47625
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblFormName'
        OnGetText = ppLblFormNameGetText
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1711#1586#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7144
        mmLeft = 93398
        mmTop = 5292
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 16404
        mmWidth = 203300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1602#1576#1590
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 61913
        mmTop = 30427
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594' '#1670#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 103188
        mmTop = 30427
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1605#1588#1582#1589#1575#1578' '#1581#1587#1575#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 123561
        mmTop = 30427
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1576#1575#1606#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 152929
        mmTop = 30427
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        OnGetText = ppLblCustomerID1GetText
        Border.mmPadding = 0
        Caption = #1603#1583' '#1605#1588#1578#1585#1610' 1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 41010
        mmTop = 30427
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        OnGetText = ppLblPrintDateGetText
        Border.mmPadding = 0
        Caption = #1576#1578#1575#1585#1610#1582':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 9790
        mmTop = 10319
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNumber'
        OnGetText = ppSysVarPageNumberGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 9790
        mmTop = 5556
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1670#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 187855
        mmTop = 30427
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 76729
        mmTop = 29898
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 60061
        mmTop = 29898
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 39158
        mmTop = 29898
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblDate'
        OnGetText = ppLblDateGetText
        Border.mmPadding = 0
        Caption = #1575#1586' '#1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 9790
        mmTop = 23548
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1587#1585#1585#1587#1610#1583#1670#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 171186
        mmTop = 30427
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 186002
        mmTop = 29898
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 169334
        mmTop = 29898
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 144463
        mmTop = 29898
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        OnGetText = ppLblCustname1GetText
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1605#1588#1578#1585#1610' 1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 15081
        mmTop = 30427
        mmWidth = 25135
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label102'
        OnGetText = ppLblCustomerID2GetText
        Border.mmPadding = 0
        Caption = #1603#1583' '#1605#1588#1578#1585#1610' 2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 182563
        mmTop = 16669
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label31'
        OnGetText = ppLblCustname2GetText
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1605#1588#1578#1585#1610' 2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 182563
        mmTop = 23283
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label32'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1602#1576#1590
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 78581
        mmTop = 30427
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'CustomerID2'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 170921
        mmTop = 16669
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'Custname2'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5842
        mmLeft = 165894
        mmTop = 23283
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line35'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 121709
        mmTop = 29898
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine52: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line52'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 92869
        mmTop = 29898
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = ' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 181240
        mmTop = 16669
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = ' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 181240
        mmTop = 23283
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label56'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583#1576#1608#1583#1580#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 265
        mmTop = 30427
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground
      end
      object ppLine65: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line65'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 13229
        mmTop = 29898
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'FormDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 61913
        mmTop = 0
        mmWidth = 16000
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'CheckNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 187855
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'CheckDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 171186
        mmTop = 0
        mmWidth = 16000
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'BankName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 146315
        mmTop = 0
        mmWidth = 24077
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'AccountNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5800
        mmLeft = 123561
        mmTop = 0
        mmWidth = 22000
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText202'
        Border.mmPadding = 0
        DataField = 'ItemAmount'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0 ;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 94721
        mmTop = 0
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'FormNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 78581
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'CustomerID1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 41010
        mmTop = 0
        mmWidth = 20000
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'Custname1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 15081
        mmTop = 0
        mmWidth = 25135
        BandType = 4
        LayerName = Foreground
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6000
        mmLeft = 38894
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6000
        mmLeft = 59796
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6000
        mmLeft = 76465
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6000
        mmLeft = 143934
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line101'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6000
        mmLeft = 168805
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line102'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6000
        mmLeft = 187061
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6000
        mmLeft = 92604
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6000
        mmLeft = 121444
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine53: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line53'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6000
        mmLeft = 0
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 201084
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText26'
        Border.mmPadding = 0
        DataField = 'BudgetCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 265
        mmTop = 0
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground
      end
      object ppLine66: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line66'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6000
        mmLeft = 12965
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Visible = False
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583' '#1585#1603#1608#1585#1583':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 187855
        mmTop = 0
        mmWidth = 12435
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'CheckNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 169863
        mmTop = 0
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1604':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 123561
        mmTop = 0
        mmWidth = 10319
        BandType = 7
        LayerName = Foreground
      end
      object ppLine42: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 121444
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'ItemAmount'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 94721
        mmTop = 0
        mmWidth = 28046
        BandType = 7
        LayerName = Foreground
      end
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line38'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 92604
        mmTop = 0
        mmWidth = 1852
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'CustomerID2'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppLabel29: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label1'
          Border.mmPadding = 0
          Caption = #1578#1593#1583#1575#1583' '#1601#1585#1605
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 4763
          mmLeft = 187590
          mmTop = 0
          mmWidth = 9260
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppShape5: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape1'
          mmHeight = 6085
          mmLeft = 0
          mmTop = 0
          mmWidth = 203200
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc2'
          Border.mmPadding = 0
          DataField = 'CheckNumber'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 5027
          mmLeft = 169863
          mmTop = 0
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel33: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label2'
          Border.mmPadding = 0
          Caption = #1580#1605#1593' '#1603#1604':'#8207
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 6085
          mmLeft = 123561
          mmTop = 0
          mmWidth = 10319
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine39: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line2'
          Border.mmPadding = 0
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 6085
          mmLeft = 121444
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc1'
          Border.mmPadding = 0
          DataField = 'ItemAmount'
          DataPipeline = ppDBPipeline1
          DisplayFormat = '#,0'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6085
          mmLeft = 94721
          mmTop = 0
          mmWidth = 28046
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine37: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line37'
          Border.mmPadding = 0
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 6085
          mmLeft = 92604
          mmTop = 0
          mmWidth = 1852
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel54: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label54'
          Border.mmPadding = 0
          Caption = #1578#1593#1583#1575#1583' '#1670#1603':'#8207
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4763
          mmLeft = 187855
          mmTop = 0
          mmWidth = 9790
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
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
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcChecksIn
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 576
    Top = 268
    object pfldDBPipeline1ppField1: TppField
      FieldAlias = 'FormItemID'
      FieldName = 'FormItemID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField2: TppField
      FieldAlias = 'CheckNumber'
      FieldName = 'CheckNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField3: TppField
      FieldAlias = 'CheckDate'
      FieldName = 'CheckDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField4: TppField
      FieldAlias = 'BankName'
      FieldName = 'BankName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField5: TppField
      FieldAlias = 'AccountNumber'
      FieldName = 'AccountNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField6: TppField
      FieldAlias = 'ItemAmount'
      FieldName = 'ItemAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField7: TppField
      FieldAlias = 'ItemNote'
      FieldName = 'ItemNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField8: TppField
      FieldAlias = 'FormNumber'
      FieldName = 'FormNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField9: TppField
      FieldAlias = 'FormDate'
      FieldName = 'FormDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField10: TppField
      FieldAlias = 'CustomerID2'
      FieldName = 'CustomerID2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField11: TppField
      FieldAlias = 'Custname2'
      FieldName = 'Custname2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField12: TppField
      FieldAlias = 'FormType'
      FieldName = 'FormType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField13: TppField
      FieldAlias = 'FormCaption'
      FieldName = 'FormCaption'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField14: TppField
      FieldAlias = 'CustomerID1'
      FieldName = 'CustomerID1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField15: TppField
      FieldAlias = 'Custname1'
      FieldName = 'Custname1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField16: TppField
      FieldAlias = 'DetailDataType'
      FieldName = 'DetailDataType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField17: TppField
      FieldAlias = 'BudgetCode'
      FieldName = 'BudgetCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField18: TppField
      FieldAlias = 'FormID'
      FieldName = 'FormID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField19: TppField
      FieldAlias = 'City'
      FieldName = 'City'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField20: TppField
      FieldAlias = 'ServerID'
      FieldName = 'ServerID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField21: TppField
      FieldAlias = 'YearID'
      FieldName = 'YearID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField22: TppField
      FieldAlias = 'Checktype'
      FieldName = 'Checktype'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField23: TppField
      FieldAlias = 'ChecktypeName'
      FieldName = 'ChecktypeName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField24: TppField
      FieldAlias = 'chk_ExistAttachments'
      FieldName = 'chk_ExistAttachments'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
  end
  object srcMaster: TDataSource
    DataSet = qryMaster
    Left = 400
    Top = 8
  end
  object qryMaster: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryMasterAfterScroll
    Parameters = <
      item
        Name = 'CustomerFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'CustomerTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 999999
      end>
    SQL.Strings = (
      'select Temp.CustID,Customers.CustName from('
      'select CustomerID1 as CustID from dbo.Forms'
      'union '
      'select CustomerID2 as CustID from dbo.Forms'
      'union '
      'select CustomerID3 as CustID from dbo.Forms'
      'union'
      'Select CustomerID2 as CustID from dbo.FormItems'
      ') Temp'
      'inner join'
      'dbo.Customers as Customers  on Temp.CustID = Customers.CustID'
      'WHERE    (Temp.CustID  BETWEEN :CustomerFrom AND :CustomerTo)')
    Left = 296
    Top = 8
  end
end
