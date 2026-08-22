inherited StuffTranction_DetailF: TStuffTranction_DetailF
  Left = 316
  Top = 96
  Caption = #1711#1586#1575#1585#1588' '#1711#1585#1583#1588' '#1603#1575#1604#1575#1610' '#1575#1606#1576#1575#1585
  ClientHeight = 547
  ClientWidth = 1056
  ExplicitLeft = -156
  ExplicitWidth = 1064
  ExplicitHeight = 578
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 464
    Width = 1056
    ExplicitTop = 464
    ExplicitWidth = 1056
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
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
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendToExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 896
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662
      TabOrder = 4
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 977
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 5
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrintVijeh
      Align = alLeft
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Width = 1056
    ExplicitWidth = 1056
    DesignSize = (
      1056
      53)
    inherited ImgTemplate: TImage
      Left = 1047
      ExplicitLeft = 1047
    end
    inherited lblCaption: TLabel
      Left = 948
      ExplicitLeft = 948
    end
    inherited lblBaseDate: TLabel
      Left = 477
      ExplicitLeft = 477
    end
  end
  inherited Panel3: TPanel
    Top = 70
    Width = 1056
    Height = 394
    ExplicitTop = 70
    ExplicitWidth = 1056
    ExplicitHeight = 394
    object Panel1: TPanel
      Left = 520
      Top = 2
      Width = 534
      Height = 390
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object grdStuff: TCedarDbgrid
        Left = 1
        Top = 1
        Width = 532
        Height = 388
        Align = alClient
        DataSource = SrcStuff
        DynProps = <>
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
        OddRowColor = clWhite
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        RowHeight = 18
        SearchPanel.Enabled = True
        SortLocal = True
        TabOrder = 0
        OnKeyPress = grdStuffKeyPress
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'GroupID'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'StuffCode'
            Footers = <>
            Width = 38
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'c_StuffName'
            Footers = <>
            Width = 54
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'c_StuffTecInfo'
            Footers = <>
            Width = 91
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'UnitName'
            Footers = <>
            Width = 62
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Entity'
            Footers = <>
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Weight'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Price'
            Footers = <>
            Width = 44
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TotallSellPrice'
            Footers = <>
            Width = 79
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 518
      Height = 390
      Align = alClient
      TabOrder = 1
      object Panel5: TPanel
        Left = 1
        Top = 181
        Width = 516
        Height = 208
        Align = alClient
        TabOrder = 0
        object Label1: TLabel
          Left = 1
          Top = 1
          Width = 514
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = #1589#1575#1583#1585#1607' '#1607#1575
          Color = 12239318
          ParentColor = False
          Transparent = True
          ExplicitWidth = 40
        end
        object grdStuffDec: TCedarDbgrid
          Left = 1
          Top = 14
          Width = 514
          Height = 193
          Align = alClient
          DataSource = SrcStuffDec
          DynProps = <>
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
          OddRowColor = clWhite
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          RowHeight = 18
          SearchPanel.Enabled = True
          SortLocal = True
          TabOrder = 0
          ActiveSearchPanel = False
          SelectFooterIndex = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'StuffCode'
              Footers = <>
              Width = 80
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ReciptCaption'
              Footers = <>
              Width = 80
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Entity'
              Footers = <>
              Width = 80
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Weight'
              Footers = <>
              Width = 80
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Price'
              Footers = <>
              Width = 80
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'TotallSellPrice'
              Footers = <>
              Width = 80
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 516
        Height = 180
        Align = alTop
        TabOrder = 1
        object Label2: TLabel
          Left = 1
          Top = 1
          Width = 514
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = #1608#1575#1585#1583#1607'  '#1607#1575
          Color = 12239318
          ParentColor = False
          Transparent = True
          ExplicitWidth = 39
        end
        object grdStuffInc: TCedarDbgrid
          Left = 1
          Top = 14
          Width = 514
          Height = 165
          Align = alClient
          DataSource = SrcStuffInc
          DynProps = <>
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
          OddRowColor = clWhite
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          RowHeight = 18
          SearchPanel.Enabled = True
          SortLocal = True
          TabOrder = 0
          ActiveSearchPanel = False
          SelectFooterIndex = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'StuffCode'
              Footers = <>
              Width = 48
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ReciptCaption'
              Footers = <>
              Width = 80
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Entity'
              Footers = <>
              Width = 80
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Weight'
              Footers = <>
              Width = 60
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'Price'
              Footers = <>
              Width = 41
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'TotallSellPrice'
              Footers = <>
              Width = 80
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
  object pnlLblLimitPlace: TPanel [3]
    Left = 0
    Top = 53
    Width = 1056
    Height = 17
    Align = alTop
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
      Left = 961
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
  object GroupBox1: TGroupBox [4]
    Left = 0
    Top = 505
    Width = 1056
    Height = 42
    Align = alBottom
    Caption = #1605#1588#1582#1589#1575#1578' '#1601#1606#1610' '#1603#1575#1604#1575
    TabOrder = 4
    DesignSize = (
      1056
      42)
    object DBEdit1: TDBEdit
      Left = 15
      Top = 15
      Width = 1019
      Height = 19
      TabStop = False
      Anchors = [akLeft, akTop, akRight, akBottom]
      Ctl3D = False
      DataField = 'c_StuffTecInfo'
      DataSource = SrcStuff
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  inherited ActionList: TActionList
    Left = 288
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actPrintVijeh: TAction
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnExecute = actPrintVijehExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 120
    Top = 169
  end
  object qryStuff: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryStuffAfterScroll
    Parameters = <
      item
        Name = 'StoreIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StoreIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'ReciptDateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'ReciptDateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'StuffKindActive'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'ItemPersonIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ItemPersonIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'StuffCodeFrom'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'StuffCodeTo'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'GroupIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'GroupIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT   StuffCoding.GroupID, ReciptItems.StuffCode, StuffCoding' +
        '.c_StuffName,'
      '         StuffCoding.c_StuffTecInfo,Units.UnitName,  '
      '         SUM(CAST(ReciptItems.InputEntity AS DECIMAL(18,2))'
      
        '           - CAST(ReciptItems.OutputEntity AS DECIMAL(18,2)) ) A' +
        'S Entity,'
      ''
      
        '         SUM(ReciptItems.InputWeight - ReciptItems.OutputWeight)' +
        ' AS Weight,'
      
        '         SUM(ReciptItems.TotalInputPrice - ReciptItems.TotalOutp' +
        'utPrice) AS Price,'
      '       SUM(ReciptItems.TotallSellPrice ) AS TotallSellPrice'
      'FROM     ReciptItems INNER JOIN'
      
        '                               Recipts ON dbo.Recipts.ReciptID =' +
        ' dbo.ReciptItems.ReciptID AND '
      
        '                      dbo.Recipts.ServerID = dbo.ReciptItems.Ser' +
        'verID AND dbo.Recipts.YearID = dbo.ReciptItems.YearID INNER JOIN'
      
        '         ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptT' +
        'ype INNER JOIN'
      
        '         StuffCoding ON ReciptItems.StuffCode = StuffCoding.c_St' +
        'uffCode INNER JOIN'
      '         Units ON StuffCoding.n_UnitCode = Units.UnitCode'
      ''
      ''
      ''
      
        'WHERE  ((ReciptTypes.EffectType = 2) or (ReciptTypes.EffectType ' +
        '= 4 )) AND'
      
        '        (Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo) AN' +
        'D'
      
        '        (Recipts.ReciptDate  between :ReciptDateFrom   AND :Reci' +
        'ptDateTo )'
      '        AND  (Recipts.ReciptState < 3)'
      '    AND (StuffCoding.OwnerShipKind  in (:StuffKindActive))'
      
        '    AND (ReciptItems.PersonID1 BETWEEN :ItemPersonIDFrom AND :It' +
        'emPersonIDTo)'
      
        '    AND (ReciptItems.StuffCode BETWEEN :StuffCodeFrom AND :Stuff' +
        'CodeTo)'
      
        '    AND (StuffCoding.GroupID BETWEEN :GroupIDFrom AND :GroupIDTo' +
        ')'
      '    AND (Recipts.YearID BETWEEN :YearIDFrom AND :YearIDTo )'
      'GROUP BY ReciptItems.StuffCode, StuffCoding.c_StuffName,'
      
        '         StuffCoding.c_StuffTecInfo, StuffCoding.GroupID, Units.' +
        'UnitName'
      'ORDER BY ReciptItems.StuffCode')
    Left = 608
    Top = 173
    object qryStuffGroupID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607' '#1603#1575#1604#1575
      FieldName = 'GroupID'
    end
    object qryStuffStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryStuffc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qryStuffc_StuffTecInfo: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1601#1606#1610' '#1603#1575#1604#1575
      FieldName = 'c_StuffTecInfo'
      Size = 30
    end
    object qryStuffUnitName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
      FieldName = 'UnitName'
      Size = 50
    end
    object qryStuffEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
    end
    object qryStuffWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
      OnGetText = qryStuffWeightGetText
    end
    object qryStuffPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Price'
      currency = True
      Precision = 19
    end
    object qryStuffTotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'TotallSellPrice'
      currency = True
      Precision = 19
    end
  end
  object qryStuffInc: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StoreIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StoreIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'ReciptDateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'ReciptDateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'ItemPersonIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ItemPersonIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'StuffCode'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'YearIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT   ReciptItems.StuffCode, Recipts.ReciptType, ReciptTypes.' +
        'ReciptCaption,'
      
        '         sum(ReciptItems.InputEntity) as Entity , sum(ReciptItem' +
        's.InputWeight) as Weight ,'
      '         sum(ReciptItems.TotalInputPrice) as Price,'
      '       SUM(ReciptItems.TotallSellPrice ) AS TotallSellPrice'
      'FROM     ReciptItems INNER JOIN'
      
        '                               Recipts ON dbo.Recipts.ReciptID =' +
        ' dbo.ReciptItems.ReciptID AND '
      
        '                      dbo.Recipts.ServerID = dbo.ReciptItems.Ser' +
        'verID AND dbo.Recipts.YearID = dbo.ReciptItems.YearID INNER JOIN'
      
        '         ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptT' +
        'ype'
      ''
      ''
      'WHERE    (ReciptTypes.EffectType = 2) AND'
      
        '        (Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo) AN' +
        'D'
      
        '        (dbo.Recipts.ReciptDate  between :ReciptDateFrom   AND :' +
        'ReciptDateTo  )AND  (dbo.Recipts.ReciptState < 3)'
      
        '    AND (ReciptItems.PersonID1 BETWEEN :ItemPersonIDFrom AND :It' +
        'emPersonIDTo)'
      '    AND (ReciptItems.StuffCode =:StuffCode )'
      '    AND (Recipts.YearID BETWEEN :YearIDFrom AND :YearIDTo )'
      ''
      
        'GROUP BY ReciptItems.StuffCode, Recipts.ReciptType, ReciptTypes.' +
        'ReciptCaption'
      'ORDER BY Recipts.ReciptType')
    Left = 344
    Top = 157
    object qryStuffIncStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryStuffIncReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryStuffIncReciptCaption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryStuffIncEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryStuffIncWeight: TFloatField
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
      ReadOnly = True
    end
    object qryStuffIncPrice: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '
      FieldName = 'Price'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryStuffIncTotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object SrcStuff: TDataSource
    DataSet = qryStuff
    Left = 680
    Top = 176
  end
  object qryStuffDec: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StoreIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StoreIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'ReciptDateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'ReciptDateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'ItemPersonIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ItemPersonIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'StuffCode'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'YearIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT   ReciptItems.StuffCode, Recipts.ReciptType, ReciptTypes.' +
        'ReciptCaption,'
      
        '         sum(ReciptItems.OutputEntity) as Entity , sum(ReciptIte' +
        'ms.OutputWeight) as Weight ,'
      '         sum(ReciptItems.TotalOutputPrice) as Price,'
      '       SUM(ReciptItems.TotallSellPrice ) AS TotallSellPrice'
      'FROM     ReciptItems INNER JOIN'
      
        '                              Recipts ON dbo.Recipts.ReciptID = ' +
        'dbo.ReciptItems.ReciptID AND '
      
        '                      dbo.Recipts.ServerID = dbo.ReciptItems.Ser' +
        'verID AND dbo.Recipts.YearID = dbo.ReciptItems.YearID INNER JOIN'
      
        '         ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptT' +
        'ype'
      ''
      ''
      'WHERE   (ReciptTypes.EffectType = 4) AND'
      
        '        (Recipts.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo) AN' +
        'D'
      
        '        (dbo.Recipts.ReciptDate  between :ReciptDateFrom   AND :' +
        'ReciptDateTo  )AND  (dbo.Recipts.ReciptState < 3)'
      
        '    AND (ReciptItems.PersonID1 BETWEEN :ItemPersonIDFrom AND :It' +
        'emPersonIDTo)'
      '    AND (ReciptItems.StuffCode =:StuffCode )'
      '    AND (Recipts.YearID BETWEEN :YearIDFrom AND :YearIDTo )'
      ''
      
        'GROUP BY ReciptItems.StuffCode, Recipts.ReciptType, ReciptTypes.' +
        'ReciptCaption'
      'ORDER BY Recipts.ReciptType')
    Left = 259
    Top = 352
    object qryStuffDecStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryStuffDecReciptType: TWordField
      Tag = 3
      FieldName = 'ReciptType'
    end
    object qryStuffDecReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryStuffDecEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryStuffDecWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
      ReadOnly = True
    end
    object qryStuffDecPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Price'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryStuffDecTotallSellPrice: TBCDField
      Tag = 3
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object SrcStuffInc: TDataSource
    DataSet = qryStuffInc
    Left = 251
    Top = 160
  end
  object SrcStuffDec: TDataSource
    DataSet = qryStuffDec
    Left = 155
    Top = 352
  end
  object PopMenu: TPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 371
    Top = 288
    object AllC_l_i_c_k_: TMenuItem
      Caption = #1603#1575#1604#1575#1607#1575
      OnClick = AllC_l_i_c_k_Click
    end
    object DetailNote: TMenuItem
      Tag = 1
      Caption = #1608#1575#1585#1583#1607' '#1607#1575
      OnClick = DetailNoteClick
    end
    object N1: TMenuItem
      Caption = #1589#1575#1583#1585#1607' '#1607#1575
      OnClick = N1Click
    end
  end
  object ppStuffs: TppDBPipeline
    DataSource = SrcStuff
    OpenDataSource = False
    UserName = 'Stuffs'
    Left = 756
    Top = 167
    object ppStuffsppField1: TppField
      FieldAlias = 'GroupID'
      FieldName = 'GroupID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppStuffsppField2: TppField
      FieldAlias = 'StuffCode'
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppStuffsppField3: TppField
      FieldAlias = 'c_StuffName'
      FieldName = 'c_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppStuffsppField4: TppField
      FieldAlias = 'c_StuffTecInfo'
      FieldName = 'c_StuffTecInfo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppStuffsppField5: TppField
      FieldAlias = 'UnitName'
      FieldName = 'UnitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppStuffsppField6: TppField
      FieldAlias = 'Entity'
      FieldName = 'Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppStuffsppField7: TppField
      FieldAlias = 'Weight'
      FieldName = 'Weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppStuffsppField8: TppField
      FieldAlias = 'Price'
      FieldName = 'Price'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppStuffsppField9: TppField
      FieldAlias = 'TotallSellPrice'
      FieldName = 'TotallSellPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
  end
  object ppStuffInc: TppDBPipeline
    DataSource = SrcStuffInc
    OpenDataSource = False
    UserName = 'StuffInc'
    Left = 428
    Top = 165
    MasterDataPipelineName = 'ppStuffs'
  end
  object ppStuffDec: TppDBPipeline
    DataSource = SrcStuffDec
    OpenDataSource = False
    UserName = 'StuffDec'
    Left = 364
    Top = 374
    MasterDataPipelineName = 'ppStuffs'
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = ppStuffs
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'D:\Projects\Fara\BSell\Exe\Report\StuffTranction_DetailActiveSel' +
      'lPrice2.rtm'
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
    PreviewFormSettings.ZoomPercentage = 70
    PreviewFormSettings.ZoomSetting = zsPercentage
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
    Left = 716
    Top = 373
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppStuffs'
    object ppHeaderBand2: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 38894
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape1'
        mmHeight = 14817
        mmLeft = 0
        mmTop = 24077
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground4
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575#1585#1575#1610#1575#1606#1607
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
        mmLeft = 146050
        mmTop = 0
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1711#1586#1575#1585#1588' '#1711#1585#1583#1588' '#1603#1575#1604#1575#1610' '#1575#1606#1576#1575#1585
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
        mmLeft = 152665
        mmTop = 6350
        mmWidth = 37835
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label3'
        OnGetText = ppLabel3GetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 4498
        mmTop = 11113
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label6'
        OnGetText = ppLabel6GetText
        Border.mmPadding = 0
        Caption = #1605#1581#1583#1608#1583#1607' '#1575#1606#1576#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 260351
        mmTop = 16933
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 273315
        mmTop = 27781
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1588#1585#1581' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 251619
        mmTop = 27781
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label28'
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 44715
        mmTop = 31750
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label29'
        Border.mmPadding = 0
        Caption = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6011
        mmLeft = 26444
        mmTop = 31750
        mmWidth = 18288
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label30'
        Border.mmPadding = 0
        Caption = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
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
        mmLeft = 238390
        mmTop = 28575
        mmWidth = 12435
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label302'
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 529
        mmTop = 31750
        mmWidth = 25929
        BandType = 0
        LayerName = Foreground4
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer5
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable3GetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 6085
        mmLeft = 4763
        mmTop = 3969
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line8'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 31221
        mmWidth = 236803
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = #1605#1608#1580#1608#1583#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 794
        mmTop = 24606
        mmWidth = 60590
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1608#1575#1585#1583#1607' '#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 155840
        mmTop = 24871
        mmWidth = 81756
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1589#1575#1583#1585#1607' '#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 61648
        mmTop = 24871
        mmWidth = 93663
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 199761
        mmTop = 31750
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6011
        mmLeft = 181489
        mmTop = 31750
        mmWidth = 18288
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 155575
        mmTop = 31750
        mmWidth = 25929
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6604
        mmLeft = 217223
        mmTop = 31750
        mmWidth = 20320
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 104246
        mmTop = 31750
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6011
        mmLeft = 86504
        mmTop = 31750
        mmWidth = 18288
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 61383
        mmTop = 31750
        mmWidth = 25929
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 121444
        mmTop = 31750
        mmWidth = 33602
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 237861
        mmTop = 24077
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 251090
        mmTop = 24077
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 272786
        mmTop = 24077
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 216694
        mmTop = 31485
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 199232
        mmTop = 31221
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line101'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 181769
        mmTop = 31485
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line25'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 155311
        mmTop = 24077
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 120650
        mmTop = 31485
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line21'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 104246
        mmTop = 31221
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line31'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14288
        mmLeft = 61383
        mmTop = 24342
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line33'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 86784
        mmTop = 31485
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line35'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 43921
        mmTop = 31485
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine37: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line37'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 26723
        mmTop = 31485
        mmWidth = 3704
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine43: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line28'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 17198
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground4
      end
    end
    object ppDetailBand4: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppSubReport3: TppSubReport
        DesignLayer = ppDesignLayer5
        UserName = 'SubReport3'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ParentWidth = False
        TraverseAllData = False
        DataPipelineName = 'ppStuffInc'
        mmHeight = 6615
        mmLeft = 155311
        mmTop = 0
        mmWidth = 81756
        BandType = 4
        LayerName = Foreground4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = ppStuffInc
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210079
          PrinterSetup.mmPaperWidth = 297127
          PrinterSetup.PaperSize = 9
          Version = '23.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppStuffInc'
          object ppDetailBand5: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppDBText12: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'Entity'
              DataPipeline = ppStuffInc
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppStuffInc'
              mmHeight = 6350
              mmLeft = 46038
              mmTop = 0
              mmWidth = 14023
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText13: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = 'TotallSellPrice'
              DataPipeline = ppStuffInc
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppStuffInc'
              mmHeight = 6350
              mmLeft = 28310
              mmTop = 0
              mmWidth = 15346
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText14: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText3'
              Border.mmPadding = 0
              DataField = 'Price'
              DataPipeline = ppStuffInc
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppStuffInc'
              mmHeight = 6350
              mmLeft = 1058
              mmTop = 0
              mmWidth = 25135
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText15: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText4'
              Border.mmPadding = 0
              DataField = 'ReciptCaption'
              DataPipeline = ppStuffInc
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppStuffInc'
              mmHeight = 5842
              mmLeft = 62706
              mmTop = 0
              mmWidth = 19643
              BandType = 4
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
      object ppSubReport4: TppSubReport
        DesignLayer = ppDesignLayer5
        UserName = 'SubReport4'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ParentWidth = False
        TraverseAllData = False
        DataPipelineName = 'ppStuffDec'
        mmHeight = 6615
        mmLeft = 61119
        mmTop = 0
        mmWidth = 92075
        BandType = 4
        LayerName = Foreground4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport4: TppChildReport
          AutoStop = False
          DataPipeline = ppStuffDec
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210079
          PrinterSetup.mmPaperWidth = 297127
          PrinterSetup.PaperSize = 9
          Version = '23.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppStuffDec'
          object ppDetailBand6: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppDBText17: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'Price'
              DataPipeline = ppStuffDec
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppStuffDec'
              mmHeight = 6350
              mmLeft = 1588
              mmTop = 0
              mmWidth = 23813
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText18: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = 'TotallSellPrice'
              DataPipeline = ppStuffDec
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppStuffDec'
              mmHeight = 6350
              mmLeft = 27252
              mmTop = 0
              mmWidth = 15081
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText19: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'Entity'
              DataPipeline = ppStuffDec
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppStuffDec'
              mmHeight = 6350
              mmLeft = 44979
              mmTop = 0
              mmWidth = 13229
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText20: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText8'
              Border.mmPadding = 0
              DataField = 'ReciptCaption'
              DataPipeline = ppStuffDec
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppStuffDec'
              mmHeight = 5821
              mmLeft = 57415
              mmTop = 529
              mmWidth = 36248
              BandType = 4
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
        end
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'StuffCode'
        DataPipeline = ppStuffs
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppStuffs'
        mmHeight = 6350
        mmLeft = 273315
        mmTop = 265
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText21'
        Border.mmPadding = 0
        DataField = 'c_StuffName'
        DataPipeline = ppStuffs
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppStuffs'
        mmHeight = 5821
        mmLeft = 251619
        mmTop = 529
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText22'
        Border.mmPadding = 0
        DataField = 'UnitName'
        DataPipeline = ppStuffs
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppStuffs'
        mmHeight = 5821
        mmLeft = 238390
        mmTop = 529
        mmWidth = 12435
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText23'
        Border.mmPadding = 0
        DataField = 'Entity'
        DataPipeline = ppStuffs
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppStuffs'
        mmHeight = 6350
        mmLeft = 45244
        mmTop = 0
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText24'
        Border.mmPadding = 0
        DataField = 'TotallSellPrice'
        DataPipeline = ppStuffs
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppStuffs'
        mmHeight = 6350
        mmLeft = 27252
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText25'
        Border.mmPadding = 0
        DataField = 'Price'
        DataPipeline = ppStuffs
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppStuffs'
        mmHeight = 6350
        mmLeft = 794
        mmTop = 0
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line23'
        Border.mmPadding = 0
        Position = lpRight
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 280723
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line26'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 251090
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 237861
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 216694
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 199232
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line29'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 181769
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line30'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 155311
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 120650
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 104246
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line32'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 61383
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line34'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 86784
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line36'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 43921
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line38'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 26723
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line39'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 529
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine44: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line41'
        Border.mmPadding = 0
        Pen.Style = psDot
        Position = lpBottom
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 0
        mmTop = 5027
        mmWidth = 284428
        BandType = 4
        LayerName = Foreground4
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line27'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 272786
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground4
      end
    end
    object ppFooterBand2: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 794
        mmTop = 0
        mmWidth = 283105
        BandType = 8
        LayerName = Foreground4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape2'
        ReprintOnOverFlow = True
        StretchWithParent = True
        mmHeight = 7144
        mmLeft = 0
        mmTop = 265
        mmWidth = 284300
        BandType = 7
        LayerName = Foreground4
      end
      object ppSubReport5: TppSubReport
        DesignLayer = ppDesignLayer5
        UserName = 'SubReport5'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ParentWidth = False
        TraverseAllData = False
        mmHeight = 6615
        mmLeft = 155311
        mmTop = 265
        mmWidth = 81756
        BandType = 7
        LayerName = Foreground4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport5: TppChildReport
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210079
          PrinterSetup.mmPaperWidth = 297127
          PrinterSetup.PaperSize = 9
          Version = '23.0'
          mmColumnWidth = 0
          object ppDetailBand7: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppDBText26: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'Entity'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 6350
              mmLeft = 46038
              mmTop = 0
              mmWidth = 14023
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText27: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = 'TotallSellPrice'
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 6350
              mmLeft = 28310
              mmTop = 0
              mmWidth = 15346
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText28: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText3'
              Border.mmPadding = 0
              DataField = 'Price'
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 6350
              mmLeft = 1058
              mmTop = 0
              mmWidth = 25135
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText29: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText4'
              AutoSize = True
              Border.mmPadding = 0
              DataField = 'ReciptCaption'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5842
              mmLeft = 61913
              mmTop = 0
              mmWidth = 19643
              BandType = 4
              LayerName = Foreground2
            end
          end
          object ppDesignLayers3: TppDesignLayers
            object ppDesignLayer3: TppDesignLayer
              UserName = 'Foreground2'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppSubReport6: TppSubReport
        DesignLayer = ppDesignLayer5
        UserName = 'SubReport6'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ParentWidth = False
        TraverseAllData = False
        mmHeight = 6615
        mmLeft = 59796
        mmTop = 265
        mmWidth = 93927
        BandType = 7
        LayerName = Foreground4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport6: TppChildReport
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210079
          PrinterSetup.mmPaperWidth = 297127
          PrinterSetup.PaperSize = 9
          Version = '23.0'
          mmColumnWidth = 0
          object ppDetailBand8: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppDBText30: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'Price'
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 6350
              mmLeft = 1852
              mmTop = 0
              mmWidth = 23813
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText31: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = 'TotallSellPrice'
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 6350
              mmLeft = 28046
              mmTop = 0
              mmWidth = 15081
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText32: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'Entity'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 6350
              mmLeft = 44979
              mmTop = 0
              mmWidth = 15875
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText33: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText8'
              Border.mmPadding = 0
              DataField = 'ReciptCaption'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5821
              mmLeft = 61913
              mmTop = 529
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground3
            end
          end
          object ppDesignLayers4: TppDesignLayers
            object ppDesignLayer4: TppDesignLayer
              UserName = 'Foreground3'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'Price'
        DataPipeline = ppStuffs
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppStuffs'
        mmHeight = 6350
        mmLeft = 794
        mmTop = 265
        mmWidth = 24871
        BandType = 7
        LayerName = Foreground4
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 260880
        mmTop = 529
        mmWidth = 23019
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'TotallSellPrice'
        DataPipeline = ppStuffs
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppStuffs'
        mmHeight = 6350
        mmLeft = 27252
        mmTop = 265
        mmWidth = 16404
        BandType = 7
        LayerName = Foreground4
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer5
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'Entity'
        DataPipeline = ppStuffs
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppStuffs'
        mmHeight = 6350
        mmLeft = 45244
        mmTop = 265
        mmWidth = 14288
        BandType = 7
        LayerName = Foreground4
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 237861
        mmTop = 265
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground4
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 216694
        mmTop = 265
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground4
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 199232
        mmTop = 265
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground4
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 181769
        mmTop = 265
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground4
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 155311
        mmTop = 265
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground4
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line19'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 120650
        mmTop = 265
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground4
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line20'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 104246
        mmTop = 265
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground4
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line201'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 86784
        mmTop = 265
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground4
      end
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line24'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 61383
        mmTop = 265
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground4
      end
      object ppLine40: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line40'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 43921
        mmTop = 265
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground4
      end
      object ppLine41: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line401'
        Border.mmPadding = 0
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 26723
        mmTop = 265
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground4
      end
      object ppLine42: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpBottom
        ReprintOnOverFlow = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 794
        mmTop = 5027
        mmWidth = 285751
        BandType = 7
        LayerName = Foreground4
      end
    end
    object ppDesignLayers5: TppDesignLayers
      object ppDesignLayer5: TppDesignLayer
        UserName = 'Foreground4'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object PopPrint: TPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 603
    Top = 360
    object TMenuItem
    end
    object N11: TMenuItem
      Caption = #1670#1575#1662'1'
      object MenuItem1: TMenuItem
        Caption = #1603#1575#1604#1575#1610' '#1580#1575#1585#1610
        Hint = 'StuffTranction_Detail'
        OnClick = MenuItem1Click
      end
      object MenuItem2: TMenuItem
        Tag = 1
        Caption = #1607#1605#1607' '#1603#1575#1604#1575' '#1607#1575
        Hint = 'StuffTranction_Detail'
        OnClick = MenuItem1Click
      end
    end
    object N21: TMenuItem
      Caption = #1670#1575#1662'2'
      object N2: TMenuItem
        Caption = #1603#1575#1604#1575#1610' '#1580#1575#1585#1610
        Hint = 'StuffTranction_Detail2'
        OnClick = MenuItem1Click
      end
      object N3: TMenuItem
        Tag = 1
        Caption = #1607#1605#1607' '#1603#1575#1604#1575' '#1607#1575
        Hint = 'StuffTranction_Detail2'
        OnClick = MenuItem1Click
      end
    end
    object N12: TMenuItem
      Caption = #1670#1575#1662'3'
      object N5: TMenuItem
        Caption = #1603#1575#1604#1575#1610' '#1580#1575#1585#1610
        Hint = 'StuffTranction_Detail3'
        OnClick = MenuItem1Click
      end
      object N4: TMenuItem
        Tag = 1
        Caption = #1607#1605#1607' '#1603#1575#1604#1575' '#1607#1575
        Hint = 'StuffTranction_Detail3'
        OnClick = MenuItem1Click
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryStuffAfterScroll
    Parameters = <
      item
        Name = 'UserID'
        Size = -1
        Value = Null
      end
      item
        Name = 'UserIDAdmin'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      ''
      ''
      
        ' LEFT OUTER JOIN   UsersStore ON Recipts.StoreID = UsersStore.n_' +
        'StoreID'
      
        'WHERE ( (UsersStore.n_UserID = :UserID )or ( :UserIDAdmin = 127)' +
        ')  AND  '
      ''
      '')
    Left = 192
    Top = 13
  end
end
