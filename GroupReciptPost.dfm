inherited GroupReciptPostF: TGroupReciptPostF
  Caption = #1579#1576#1578' '#1601#1585#1605' '#1576#1575' '#1602#1740#1605#1578' '#1711#1584#1575#1585#1740' '#1583#1585#1582#1578#1740
  ClientWidth = 998
  ExplicitWidth = 1006
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Width = 998
    ExplicitWidth = 998
    object BitBtn1: TBitBtn
      Left = 912
      Top = 7
      Width = 75
      Height = 27
      Action = actFilter
      Anchors = [akTop, akRight]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 831
      Top = 7
      Width = 75
      Height = 27
      Action = actSelectAll
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      TabOrder = 2
    end
    object BitBtn3: TBitBtn
      Left = 750
      Top = 7
      Width = 75
      Height = 27
      Action = actInversSelect
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1593#1705#1608#1587
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 672
      Top = 6
      Width = 75
      Height = 27
      Action = actPost
      Anchors = [akTop, akRight]
      Caption = #1579#1576#1578
      TabOrder = 4
    end
  end
  inherited Panel2: TPanel
    Width = 998
    Height = 65
    Anchors = [akLeft, akTop]
    ExplicitWidth = 998
    ExplicitHeight = 65
    inherited ImgTemplate: TImage
      Left = 978
      ExplicitLeft = 970
    end
    inherited lblCaption: TLabel
      Left = 890
      Height = 45
      ExplicitLeft = 890
    end
    inherited lblBaseDate: TLabel
      Left = 474
      ExplicitLeft = 470
    end
    object Label1: TLabel
      Left = 594
      Top = 13
      Width = 35
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = #1606#1608#1593' '#1601#1585#1605
      ParentBiDiMode = False
    end
    object Label2: TLabel
      Left = 594
      Top = 41
      Width = 17
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = #1575#1606#1576#1575#1585
      ParentBiDiMode = False
    end
    object Label3: TLabel
      Left = 340
      Top = 40
      Width = 39
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = #1606#1608#1593' '#1578#1575#1585#1740#1582
      ParentBiDiMode = False
    end
    object Label4: TLabel
      Left = 343
      Top = 18
      Width = 55
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      ParentBiDiMode = False
      Visible = False
    end
    object Label5: TLabel
      Left = 133
      Top = 40
      Width = 44
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = #1601#1585#1605' '#1582#1586#1575#1606#1607
      ParentBiDiMode = False
    end
    object Label6: TLabel
      Left = 133
      Top = 17
      Width = 20
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = #1576#1575#1606#1705
      ParentBiDiMode = False
    end
    object cmbReciptType: TComboBox
      Left = 446
      Top = 10
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = cmbReciptTypeChange
    end
    object cmbStore: TComboBox
      Left = 446
      Top = 37
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 1
    end
    object cmbReciptDate: TComboBox
      Left = 224
      Top = 37
      Width = 113
      Height = 21
      Style = csDropDownList
      TabOrder = 2
      Items.Strings = (
        #1578#1575#1585#1740#1582' '#1580#1575#1585#1740
        #1578#1575#1585#1740#1582' '#1580#1583#1608#1604
        #1578#1575#1585#1740#1582' '#1581#1608#1575#1604#1607)
    end
    object cmbLookUp: TComboBox
      Left = 224
      Top = 10
      Width = 113
      Height = 21
      Style = csDropDownList
      TabOrder = 3
      Visible = False
    end
    object cmbFormType: TComboBox
      Left = 15
      Top = 36
      Width = 113
      Height = 21
      Style = csDropDownList
      TabOrder = 4
      Items.Strings = (
        #1578#1575#1585#1740#1582' '#1580#1575#1585#1740
        #1578#1575#1585#1740#1582' '#1580#1583#1608#1604
        #1578#1575#1585#1740#1582' '#1581#1608#1575#1604#1607)
    end
    object cmbBank: TComboBox
      Left = 15
      Top = 10
      Width = 113
      Height = 21
      Style = csDropDownList
      TabOrder = 5
    end
  end
  inherited Panel3: TPanel
    Top = 65
    Width = 998
    Height = 411
    ExplicitTop = 65
    ExplicitWidth = 998
    ExplicitHeight = 411
    object CedarDbgrid1: TCedarDbgrid
      Left = 2
      Top = 2
      Width = 994
      Height = 407
      Align = alClient
      DataSource = srcRecallREcipts
      DynProps = <>
      Flat = True
      FooterParams.FillStyle = cfstGradientEh
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
      RowHeight = 18
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SortLocal = True
      TabOrder = 0
      OnDblClick = CedarDbgrid1DblClick
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          Checkboxes = True
          DblClickNextVal = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'Flag'
          Footers = <>
          Width = 37
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StuffCode'
          Footers = <>
          Width = 32
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'c_StuffName'
          Footers = <>
          Width = 36
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'UnitName'
          Footers = <>
          Width = 26
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonID1'
          Footers = <>
          Width = 53
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustName'
          Footers = <>
          Width = 55
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MasterPersonID1'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MasterCustName1'
          Footers = <>
          Width = 65
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonID2'
          Footers = <>
          Width = 58
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustName_2'
          Footers = <>
          Width = 51
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Entity'
          Footers = <>
          Width = 25
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Weight'
          Footers = <>
          Width = 20
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'UnitSellPrice'
          Footers = <>
          Width = 47
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'UnitCommission'
          Footers = <>
          Width = 51
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'portage'
          Footers = <>
          Width = 55
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotalPrice'
          Footers = <>
          Width = 41
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'WaterCo'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DeficitValue'
          Footers = <>
          Width = 32
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TaxCo'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TaxValue'
          Footers = <>
          Width = 32
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotallSellPrice'
          Footers = <>
          Width = 55
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ItemNote'
          Footers = <>
          Width = 43
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ItemPersonID1'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AidNumber'
          Footers = <>
          Width = 62
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AidDate'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'NewReciptItemID'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptCaption'
          Footers = <>
          Width = 49
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SecondTypeName'
          Footers = <>
          Width = 60
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptNumber'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptDate'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Left = 560
    Top = 184
    object actPost: TAction
      Caption = #1579#1576#1578
      OnExecute = actPostExecute
    end
    object actSelectAll: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      OnExecute = actSelectAllExecute
    end
    object actInversSelect: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1593#1705#1608#1587
      OnExecute = actInversSelectExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actPost2: TAction
      Caption = #1579#1576#1578' '#1576#1585' '#1575#1587#1575#1587
    end
    object actReciptPost: TAction
      Caption = #1579#1576#1578' '#1605#1588#1578#1585#1740' '#1580#1575#1585#1740
      ShortCut = 16460
      OnExecute = actReciptPostExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 656
    Top = 145
  end
  object qryRecallRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    Parameters = <>
    Left = 152
    Top = 177
    object qryRecallReciptsFlag: TFMTBCDField
      DisplayLabel = #1575#1606#1578#1582#1575#1576
      FieldName = 'Flag'
      Precision = 20
      Size = 4
    end
    object qryRecallReciptsStuffCode: TLargeintField
      DisplayLabel = #1705#1583' '#1705#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryRecallReciptsc_StuffName: TStringField
      DisplayLabel = #1606#1575#1605' '#1705#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 150
    end
    object qryRecallReciptsUnitName: TStringField
      DisplayLabel = #1608#1575#1581#1583
      FieldName = 'UnitName'
      Size = 50
    end
    object qryRecallReciptsPersonID1: TIntegerField
      DisplayLabel = #1705#1583' '#1605#1588#1578#1585#1740
      FieldName = 'PersonID1'
    end
    object qryRecallReciptsCustName: TStringField
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1740
      FieldName = 'CustName'
      Size = 150
    end
    object qryRecallReciptsPersonID3: TIntegerField
      DisplayLabel = #1705#1583#1605#1588#1578#1585#1740'3'
      FieldName = 'PersonID3'
    end
    object qryRecallReciptsPersonID2: TIntegerField
      DisplayLabel = #1705#1583#1605#1588#1578#1585#1740'2'
      FieldName = 'PersonID2'
    end
    object qryRecallReciptsCustName_2: TStringField
      DisplayLabel = #1605#1588#1578#1585#1740'2'
      FieldName = 'CustName_2'
      Size = 150
    end
    object qryRecallReciptsEntity: TFloatField
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryRecallReciptsWeight: TFloatField
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
      ReadOnly = True
    end
    object qryRecallReciptsUnitSellPrice: TFMTBCDField
      DisplayLabel = #1576#1607#1575#1740' '#1608#1575#1581#1583
      FieldName = 'UnitSellPrice'
      Precision = 19
    end
    object qryRecallReciptsUnitCommission: TFMTBCDField
      DisplayLabel = #1601#1740' '#1705#1575#1585#1605#1586#1583
      FieldName = 'UnitCommission'
      Precision = 20
      Size = 4
    end
    object qryRecallReciptsTotalPrice: TFloatField
      DisplayLabel = #1576#1607#1575#1740' '#1705#1604
      FieldName = 'TotalPrice'
      ReadOnly = True
    end
    object qryRecallReciptsWaterCo: TFloatField
      DisplayLabel = #1583#1585#1589#1583' '#1578#1582#1601#1740#1601
      FieldName = 'WaterCo'
    end
    object qryRecallReciptsDeficitValue: TFloatField
      DisplayLabel = #1578#1582#1601#1740#1601
      FieldName = 'DeficitValue'
      ReadOnly = True
    end
    object qryRecallReciptsTaxCo: TFloatField
      DisplayLabel = #1590#1585#1740#1576' '#1605#1575#1604#1740#1575#1578
      FieldName = 'TaxCo'
    end
    object qryRecallReciptsTaxValue: TFloatField
      DisplayLabel = #1605#1575#1604#1740#1575#1578
      FieldName = 'TaxValue'
      ReadOnly = True
    end
    object qryRecallReciptsItemNote: TStringField
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'ItemNote'
      ReadOnly = True
      Size = 203
    end
    object qryRecallReciptsItemPersonID1: TIntegerField
      DisplayLabel = #1705#1583' '#1605#1588#1578#1585#1740' '#1580#1586#1569
      FieldName = 'ItemPersonID1'
    end
    object qryRecallReciptsNewReciptItemID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1605#1585#1580#1593
      FieldName = 'NewReciptItemID'
    end
    object qryRecallReciptsAidNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'AidNumber'
    end
    object qryRecallReciptsAidDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1601#1585#1605
      FieldName = 'AidDate'
      FixedChar = True
      Size = 10
    end
    object qryRecallReciptsReciptCaption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1601#1585#1605
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryRecallReciptsSecondType: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'SecondType'
    end
    object qryRecallReciptsPersonID2Bed: TWordField
      FieldName = 'PersonID2Bed'
    end
    object qryRecallReciptsTotallSellPrice: TFloatField
      DisplayLabel = #1576#1607#1575#1740' '#1582#1575#1604#1589
      FieldName = 'TotallSellPrice'
      ReadOnly = True
    end
    object qryRecallReciptsMasterPersonID1: TIntegerField
      DisplayLabel = #1705#1583' '#1605#1588#1578#1585#1740' M'
      FieldName = 'MasterPersonID1'
    end
    object qryRecallReciptsMasterCustName1: TStringField
      DisplayLabel = #1605#1588#1578#1585#1740' M'
      FieldName = 'MasterCustName1'
      Size = 150
    end
    object qryRecallReciptsSecondTypeName: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'SecondTypeName'
      Size = 50
    end
    object qryRecallReciptsRecall_ReciptID: TIntegerField
      FieldName = 'Recall_ReciptID'
    end
    object qryRecallReciptsReciptDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1581#1608#1575#1604#1607
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryRecallReciptsReciptNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1608#1575#1604#1607
      FieldName = 'ReciptNumber'
    end
    object qryRecallReciptsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryRecallReciptsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryRecallReciptsportage: TFloatField
      DisplayLabel = #1705#1585#1575#1740#1607' '#1581#1605#1604
      FieldName = 'portage'
      ReadOnly = True
    end
    object qryRecallReciptsSellsEmporium: TIntegerField
      FieldName = 'SellsEmporium'
    end
    object qryRecallReciptsGroupID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607
      FieldName = 'GroupID'
    end
    object qryRecallReciptsPersonID4: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1740'4'
      FieldName = 'PersonID4'
    end
    object qryRecallReciptsPersonID5: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1740'5'
      FieldName = 'PersonID5'
    end
    object qryRecallReciptspo: TStringField
      FieldName = 'po'
      Size = 30
    end
  end
  object srcRecallREcipts: TDataSource
    DataSet = qryRecallRecipts
    Left = 296
    Top = 177
  end
  object qryRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select top 1 * from recipts')
    Left = 96
    Top = 345
  end
  object qryReciptItems: TADOQuery
    Connection = DmF.adcBSell
    Parameters = <>
    SQL.Strings = (
      'select top 1 * from ReciptItems')
    Left = 184
    Top = 353
  end
  object qryinit: TADOQuery
    Connection = DmF.adcBSell
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  *  '
      ' FROM    ReciptTypes'
      'where  ReciptType = :ReciptType')
    Left = 432
    Top = 136
  end
  object qryinitF: TADOQuery
    Connection = DmF.adcBSell
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'FormType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT FormTypes.*, FormTypes_1.FormCaption AS _PostOverallTypeC' +
        'aption'
      
        'FROM FormTypes LEFT OUTER JOIN  FormTypes AS FormTypes_1 ON Form' +
        'Types.PostOverallType = FormTypes_1.FormType'
      'WHERE (FormTypes.FormType = :FormType )'
      '')
    Left = 520
    Top = 306
  end
  object qryForms: TADOQuery
    Connection = DmF.adcBSell
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Forms WHERE (0=1)')
    Left = 320
    Top = 362
  end
  object qryOld: TADOQuery
    Connection = DmF.adcBSell
    Parameters = <
      item
        Name = 'RelatedRecipts'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 27
        Value = Null
      end
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from Forms'
      'WHERE (RelatedRecipts = :RelatedRecipts )'
      'AND (ServerID = :ServerID) AND (YearID = :YearID )')
    Left = 408
    Top = 314
  end
end
