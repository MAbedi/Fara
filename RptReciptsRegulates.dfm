inherited RptReciptsRegulatesF: TRptReciptsRegulatesF
  Caption = #1604#1740#1587#1578' '#1578#1593#1583#1740#1604#1575#1578' '#1705#1575#1604#1575
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 711
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
    object btnDocNo: TBitBtn
      AlignWithMargins = True
      Left = 584
      Top = 7
      Width = 121
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actDocNo
      Align = alRight
      Caption = #1662#1575#1705#1587#1575#1586#1740' '#1587#1606#1583' '#1578#1593#1583#1740#1604#1575#1578
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 503
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actDelete
      Align = alRight
      Caption = #1581#1584#1601' '#1578#1593#1583#1740#1604#1575#1578
      TabOrder = 3
    end
  end
  inherited Panel3: TPanel
    Top = 70
    Height = 407
    ExplicitTop = 70
    ExplicitHeight = 407
    object DBGrid1: TCedarDbgrid
      Left = 2
      Top = 2
      Width = 786
      Height = 403
      Align = alClient
      Color = clCream
      DataSource = srcRecipts
      DynProps = <>
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterRowCount = 2
      FooterParams.FillStyle = cfstGradientEh
      FooterParams.Font.Charset = DEFAULT_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -13
      FooterParams.Font.Name = 'Tahoma'
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      FooterParams.VertLines = False
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clGradientInactiveCaption
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      RowHeight = 20
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SortLocal = True
      TabOrder = 0
      ActiveSearchPanel = False
      SelectedSum = True
      SelectFooterIndex = 1
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptCaption'
          Footers = <>
          Width = 91
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'RegDate'
          Footers = <>
          Width = 87
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'RegPrice'
          Footers = <>
          Width = 88
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptNumber'
          Footers = <>
          Width = 70
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptDate'
          Footers = <>
          Width = 38
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StoreID'
          Footers = <>
          Width = 46
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'c_StoreName'
          Footers = <>
          Width = 58
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Entity'
          Footers = <>
          Width = 63
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Weight'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'price'
          Footers = <>
          Width = 71
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotallSellPrice'
          Footers = <>
          Width = 74
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DocNo'
          Footers = <>
          Width = 57
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DocDate'
          Footers = <>
          Width = 72
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'RegDocNo'
          Footers = <>
          Width = 174
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'RegDocDate'
          Footers = <>
          Width = 170
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object pnlLblLimitPlace: TPanel [3]
    Left = 0
    Top = 53
    Width = 790
    Height = 17
    Align = alTop
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    object LblShowLimitPlace2: TLabel
      Left = 1
      Top = 1
      Width = 94
      Height = 15
      Align = alLeft
      BiDiMode = bdLeftToRight
      Caption = 'LblShow LimitPlace2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      Transparent = True
      ExplicitHeight = 13
    end
    object LblShowLimitPlace1: TLabel
      Left = 695
      Top = 1
      Width = 94
      Height = 15
      Align = alRight
      Caption = 'LblShow LimitPlace1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExplicitHeight = 13
    end
  end
  inherited ActionList: TActionList
    Left = 184
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actDocNo: TAction
      Caption = #1662#1575#1705#1587#1575#1586#1740' '#1587#1606#1583' '#1578#1593#1583#1740#1604#1575#1578
      OnExecute = actDocNoExecute
    end
    object actDelete: TAction
      Caption = #1581#1584#1601' '#1578#1593#1583#1740#1604#1575#1578
      OnExecute = actDeleteExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 256
    Top = 9
  end
  object qryRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'ReciptTypeChecked'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'NumberFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'NumberTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DateFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DateTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'StoreFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'StoreTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'States'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearIDTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT  *'
      
        'FROM  dbo.ReciptsListRegulates  ( :ReciptTypeChecked ,    :Numbe' +
        'rFrom , :NumberTo  ,   :DateFrom , :DateTo ,'
      
        '  :StoreFrom ,  :StoreTo ,     :States  ,   :YearIDFrom  , :Year' +
        'IDTo   ) AS RList_1'
      ''
      ''
      ''
      ' '
      '  ')
    Left = 264
    Top = 192
    object qryReciptsRegRowId: TIntegerField
      FieldName = 'RegRowId'
    end
    object qryReciptsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryReciptsReciptType: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'ReciptType'
    end
    object qryReciptsReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'ReciptCaption'
      Required = True
      Size = 70
    end
    object qryReciptsRegDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1578#1593#1583#1740#1604
      FieldName = 'RegDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptsRegPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1578#1593#1583#1740#1604#1575#1578
      FieldName = 'RegPrice'
      currency = True
    end
    object qryReciptsReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptNumber'
    end
    object qryReciptsReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptsprice: TBCDField
      Tag = 3
      DisplayLabel = #1576#1607#1575#1610' '#1603#1604
      FieldName = 'price'
      currency = True
    end
    object qryReciptsStoreID: TSmallintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
    end
    object qryReciptsc_StoreName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1575#1606#1576#1575#1585
      FieldName = 'c_StoreName'
      Size = 70
    end
    object qryReciptsEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
    end
    object qryReciptsWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
    end
    object qryReciptsDocNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1587#1606#1583
      FieldName = 'DocNo'
    end
    object qryReciptsDocDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582'.'#1587#1606#1583
      FieldName = 'DocDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptsRegDocNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1740' '#1578#1593#1583#1740#1604#1575#1578
      FieldName = 'RegDocNo'
    end
    object qryReciptsRegDocDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1740#1582' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1740' '#1578#1593#1583#1740#1604#1575#1578
      FieldName = 'RegDocDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptsReciptState: TWordField
      FieldName = 'ReciptState'
    end
    object qryReciptsReciptNote: TStringField
      FieldName = 'ReciptNote'
      Size = 400
    end
    object qryReciptsTotallSellPrice: TBCDField
      DisplayLabel = #1582#1575#1604#1589
      FieldName = 'TotallSellPrice'
      Precision = 19
    end
  end
  object srcRecipts: TDataSource
    DataSet = qryRecipts
    Left = 424
    Top = 181
  end
end
