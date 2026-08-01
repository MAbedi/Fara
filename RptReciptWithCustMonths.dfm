inherited RptReciptWithCustMonthsF: TRptReciptWithCustMonthsF
  Left = 376
  Top = 138
  Caption = #1606#1575#1605' '#1601#1585#1605
  ClientHeight = 506
  ClientWidth = 794
  OldCreateOrder = True
  ExplicitWidth = 810
  ExplicitHeight = 545
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 465
    Width = 794
    ExplicitTop = 465
    ExplicitWidth = 794
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 715
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
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 2
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
      TabOrder = 3
    end
    object BitBtn3: TBitBtn
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
      TabOrder = 4
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 636
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = ActPrint
      Align = alRight
      Caption = #1670#1575#1662
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    Width = 794
    ExplicitWidth = 794
    DesignSize = (
      794
      53)
    inherited ImgTemplate: TImage
      Left = 756
      Top = 6
      ExplicitLeft = 756
      ExplicitTop = 6
    end
    inherited lblCaption: TLabel
      Left = 686
      ExplicitLeft = 686
    end
    object Lbldate: TLabel
      Left = 676
      Top = 36
      Width = 68
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1581#1583#1608#1583#1607' '#1578#1575#1585#1610#1582#1610
    end
    object Lblnumber: TLabel
      Left = 22
      Top = 36
      Width = 67
      Height = 13
      Alignment = taRightJustify
      Caption = #1605#1581#1583#1608#1583#1607' '#1588#1605#1575#1585#1607
    end
  end
  inherited Panel3: TPanel
    Width = 794
    Height = 412
    ExplicitWidth = 794
    ExplicitHeight = 412
    object CedarDbgrid1: TCedarDbgrid
      Left = 2
      Top = 2
      Width = 790
      Height = 408
      Align = alClient
      BorderStyle = bsNone
      Color = clCream
      DataSource = srcWithCust
      DynProps = <>
      EvenRowColor = clWhite
      Flat = True
      FooterRowCount = 1
      FooterParams.FillStyle = cfstGradientEh
      FooterParams.Font.Charset = DEFAULT_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -12
      FooterParams.Font.Name = 'Tahoma'
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      FooterParams.VertLines = True
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clCream
      RowDetailPanel.MaxHeight = 1
      RowHeight = 18
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SearchPanel.Location = splHorzScrollBarExtraPanelEh
      SelectionDrawParams.SelectionStyle = gsdsClassicEh
      SortLocal = True
      SumList.Active = True
      TabOrder = 0
      TitleParams.MultiTitle = True
      ActiveSearchPanel = True
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonID1'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustName'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M1Entity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M1Weight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M1Price'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M1TotallSellPrice'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M2Entity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M2Weight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M2Price'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M2TotallSellPrice'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M3Entity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M3Weight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M3Price'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M3TotallSellPrice'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M4Entity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M4Weight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M4Price'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M4TotallSellPrice'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M5Entity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M5Weight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M5Price'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M5TotallSellPrice'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M6Entity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M6Weight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M6Price'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M6TotallSellPrice'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M7Entity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M7Weight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M7Price'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M7TotallSellPrice'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M8Entity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M8Weight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M8Price'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M8TotallSellPrice'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M9Entity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M9Weight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M9Price'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M9TotallSellPrice'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M10Entity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M10Weight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M10Price'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M10TotallSellPrice'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M11Entity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M11Weight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M11Price'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M11TotallSellPrice'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M12Entity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M12Weight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M12Price'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'M12TotallSellPrice'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Entity'
          Footers = <>
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
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotallSellPrice'
          Footers = <>
          Width = 64
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Left = 232
    Top = 0
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actSendExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExcelExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object ActPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = ActPrintExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 288
    Top = 65529
  end
  object qryWithCust: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryWithCustAfterOpen
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'StoreIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 0
      end
      item
        Name = 'StoreIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 99
      end
      item
        Name = 'ReciptNumberFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ReciptNumberTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 99999
      end
      item
        Name = 'ReciptDateFrom'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'ReciptDateTo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '99/12/29'
      end
      item
        Name = 'Recipt__Type'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'custIdfrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'custIdto'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 99999
      end
      item
        Name = 'custId2from'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'custId2to'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'customergrpIdfrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'customergrpIdto'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 99999
      end>
    SQL.Strings = (
      
        'SELECT     Customers.CustomerGrpID, CustomersGroup.CustomerGrpNa' +
        'me, R.PersonID1, Customers.CustName, R.ReciptType,'
      '                      ReciptTypes.ReciptCaption,'
      
        #9#9'     '#9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 1 then ' +
        'ReciptItems.InputEntity + ReciptItems.OutputEntity else 0 end ) ' +
        'as M1Entity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 1 then ReciptI' +
        'tems.InputWeight + ReciptItems.OutputWeight else 0 end ) as M1We' +
        'ight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 1 then ReciptI' +
        'tems.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end )' +
        ' as M1Price ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 1 then TotallS' +
        'ellPrice else 0 end ) as M1TotallSellPrice ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 2 then ReciptI' +
        'tems.InputEntity + ReciptItems.OutputEntity else 0 end ) as M2En' +
        'tity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 2 then ReciptI' +
        'tems.InputWeight + ReciptItems.OutputWeight else 0 end ) as M2We' +
        'ight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 2 then ReciptI' +
        'tems.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end )' +
        ' as M2Price ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 2 then TotallS' +
        'ellPrice else 0 end ) as M2TotallSellPrice ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 3 then ReciptI' +
        'tems.InputEntity + ReciptItems.OutputEntity else 0 end ) as M3En' +
        'tity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 3 then ReciptI' +
        'tems.InputWeight + ReciptItems.OutputWeight else 0 end ) as M3We' +
        'ight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 3 then ReciptI' +
        'tems.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end )' +
        ' as M3Price ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 3 then TotallS' +
        'ellPrice else 0 end ) as M3TotallSellPrice ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 4 then ReciptI' +
        'tems.InputEntity + ReciptItems.OutputEntity else 0 end ) as M4En' +
        'tity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 4 then ReciptI' +
        'tems.InputWeight + ReciptItems.OutputWeight else 0 end ) as M4We' +
        'ight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 4 then ReciptI' +
        'tems.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end )' +
        ' as M4Price ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 4 then TotallS' +
        'ellPrice else 0 end ) as M4TotallSellPrice ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 5 then ReciptI' +
        'tems.InputEntity + ReciptItems.OutputEntity else 0 end ) as M5En' +
        'tity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 5 then ReciptI' +
        'tems.InputWeight + ReciptItems.OutputWeight else 0 end ) as M5We' +
        'ight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 5 then ReciptI' +
        'tems.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end )' +
        ' as M5Price ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 5 then TotallS' +
        'ellPrice else 0 end ) as M5TotallSellPrice ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 6 then ReciptI' +
        'tems.InputEntity + ReciptItems.OutputEntity else 0 end ) as M6En' +
        'tity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 6 then ReciptI' +
        'tems.InputWeight + ReciptItems.OutputWeight else 0 end ) as M6We' +
        'ight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 6 then ReciptI' +
        'tems.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end )' +
        ' as M6Price ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 6 then TotallS' +
        'ellPrice else 0 end ) as M6TotallSellPrice ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 7 then ReciptI' +
        'tems.InputEntity + ReciptItems.OutputEntity else 0 end ) as M7En' +
        'tity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 7 then ReciptI' +
        'tems.InputWeight + ReciptItems.OutputWeight else 0 end ) as M7We' +
        'ight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 7 then ReciptI' +
        'tems.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end )' +
        ' as M7Price ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 7 then TotallS' +
        'ellPrice else 0 end ) as M7TotallSellPrice ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 8 then ReciptI' +
        'tems.InputEntity + ReciptItems.OutputEntity else 0 end ) as M8En' +
        'tity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 8 then ReciptI' +
        'tems.InputWeight + ReciptItems.OutputWeight else 0 end ) as M8We' +
        'ight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 8 then ReciptI' +
        'tems.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end )' +
        ' as M8Price ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 8 then TotallS' +
        'ellPrice else 0 end ) as M8TotallSellPrice ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 9 then ReciptI' +
        'tems.InputEntity + ReciptItems.OutputEntity else 0 end ) as M9En' +
        'tity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 9 then ReciptI' +
        'tems.InputWeight + ReciptItems.OutputWeight else 0 end ) as M9We' +
        'ight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 9 then ReciptI' +
        'tems.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end )' +
        ' as M9Price ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 9 then TotallS' +
        'ellPrice else 0 end ) as M9TotallSellPrice ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 10 then Recipt' +
        'Items.InputEntity + ReciptItems.OutputEntity else 0 end ) as M10' +
        'Entity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 10 then Recipt' +
        'Items.InputWeight + ReciptItems.OutputWeight else 0 end ) as M10' +
        'Weight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 10 then Recipt' +
        'Items.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end ' +
        ') as M10Price ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 10 then Totall' +
        'SellPrice else 0 end ) as M10TotallSellPrice ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 11 then Recipt' +
        'Items.InputEntity + ReciptItems.OutputEntity else 0 end ) as M11' +
        'Entity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 11 then Recipt' +
        'Items.InputWeight + ReciptItems.OutputWeight else 0 end ) as M11' +
        'Weight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 11 then Recipt' +
        'Items.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end ' +
        ') as M11Price ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 11 then Totall' +
        'SellPrice else 0 end ) as M11TotallSellPrice ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 12 then Recipt' +
        'Items.InputEntity + ReciptItems.OutputEntity else 0 end ) as M12' +
        'Entity ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 12 then Recipt' +
        'Items.InputWeight + ReciptItems.OutputWeight else 0 end ) as M12' +
        'Weight ,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 12 then Recipt' +
        'Items.TotalInputPrice + ReciptItems.TotalOutputPrice else 0 end ' +
        ') as M12Price,'
      
        #9#9'     Sum( CASE SUBSTRING(R.ReciptDATE,6,2) when 12 then Totall' +
        'SellPrice else 0 end ) as M12TotallSellPrice ,'
      
        #9#9'     Sum( ReciptItems.InputEntity + ReciptItems.OutputEntity )' +
        ' as Entity ,'
      
        #9#9'     Sum( ReciptItems.InputWeight + ReciptItems.OutputWeight )' +
        ' as Weight ,'
      
        #9#9'     Sum( ReciptItems.TotalInputPrice + ReciptItems.TotalOutpu' +
        'tPrice ) as Price,'
      #9#9'     Sum( TotallSellPrice ) as TotallSellPrice '
      ''
      'FROM         Customers INNER JOIN'
      
        '                      CustomersGroup ON Customers.CustomerGrpID ' +
        '= CustomersGroup.CustomerGrpID LEFT OUTER JOIN'
      '                      ReciptItems INNER JOIN'
      
        '                                            Recipts AS R  ON R.R' +
        'eciptID = ReciptItems.ReciptID AND'
      
        '                      R.ServerID = ReciptItems.ServerID AND R.Ye' +
        'arID = ReciptItems.YearID INNER JOIN'
      
        '                      ReciptTypes ON R.ReciptType = ReciptTypes.' +
        'ReciptType ON Customers.CustID = R.PersonID1'
      
        'WHERE     (R.StoreID BETWEEN :StoreIDFrom AND :StoreIDTo) AND (R' +
        '.ReciptNumber BETWEEN  :ReciptNumberFrom   AND  :ReciptNumberTo)' +
        ' AND'
      
        '                      (R.ReciptDate BETWEEN :ReciptDateFrom AND ' +
        ':ReciptDateTo)'
      'and (R.ReciptState < 3)'
      'AND      (R.ReciptType IN ( :Recipt__Type ))'
      'AND (R.PersonID1 BETWEEN :custIdfrom AND :custIdto)'
      'AND (R.PersonID2 BETWEEN :custId2from AND :custId2to)'
      
        'AND (Customers.CustomerGrpID BETWEEN  :customergrpIdfrom AND :cu' +
        'stomergrpIdto)'
      ''
      
        'GROUP BY R.ReciptType, ReciptTypes.ReciptCaption, R.PersonID1, C' +
        'ustomers.CustName, Customers.CustomerGrpID,'
      '                      CustomersGroup.CustomerGrpName'
      ''
      ''
      '')
    Left = 162
    Top = 133
    object qryWithCustPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610
      FieldName = 'PersonID1'
    end
    object qryWithCustCustName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610
      FieldName = 'CustName'
      Size = 120
    end
    object qryWithCustReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryWithCustReciptCaption: TStringField
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryWithCustCustomerGrpID: TIntegerField
      FieldName = 'CustomerGrpID'
    end
    object qryWithCustM1Entity: TFloatField
      DisplayLabel = #1601#1585#1608#1585#1583#1610#1606'|'#1605#1602#1583#1575#1585' '
      FieldName = 'M1Entity'
    end
    object qryWithCustM1Weight: TFloatField
      DisplayLabel = #1601#1585#1608#1585#1583#1610#1606'|'#1608#1586#1606
      FieldName = 'M1Weight'
    end
    object qryWithCustM1Price: TBCDField
      DisplayLabel = #1601#1585#1608#1585#1583#1610#1606'|'#1605#1576#1604#1594' '
      FieldName = 'M1Price'
      currency = True
      Precision = 19
    end
    object qryWithCustM1TotallSellPrice: TBCDField
      DisplayLabel = #1601#1585#1608#1585#1583#1610#1606'|'#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M1TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryWithCustM2Entity: TFloatField
      DisplayLabel = #1575#1585#1583#1610#1576#1607#1588#1578'|'#1605#1602#1583#1575#1585
      FieldName = 'M2Entity'
    end
    object qryWithCustM2Weight: TFloatField
      DisplayLabel = #1575#1585#1583#1610#1576#1607#1588#1578'|'#1608#1586#1606' '
      FieldName = 'M2Weight'
    end
    object qryWithCustM2Price: TBCDField
      DisplayLabel = #1575#1585#1583#1610#1576#1607#1588#1578'|'#1605#1576#1604#1594
      FieldName = 'M2Price'
      currency = True
      Precision = 19
    end
    object qryWithCustM2TotallSellPrice: TBCDField
      DisplayLabel = #1575#1585#1583#1610#1576#1607#1588#1578'|'#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M2TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryWithCustM3Entity: TFloatField
      DisplayLabel = #1582#1585#1583#1575#1583'|'#1605#1602#1583#1575#1585' '
      FieldName = 'M3Entity'
    end
    object qryWithCustM3Weight: TFloatField
      DisplayLabel = #1582#1585#1583#1575#1583'|'#1608#1586#1606
      FieldName = 'M3Weight'
    end
    object qryWithCustM3Price: TBCDField
      DisplayLabel = #1582#1585#1583#1575#1583'|'#1605#1576#1604#1594
      FieldName = 'M3Price'
      currency = True
      Precision = 19
    end
    object qryWithCustM3TotallSellPrice: TBCDField
      DisplayLabel = #1582#1585#1583#1575#1583'|'#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M3TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryWithCustM4Entity: TFloatField
      DisplayLabel = #1578#1610#1585'|'#1605#1602#1583#1575#1585
      FieldName = 'M4Entity'
    end
    object qryWithCustM4Weight: TFloatField
      DisplayLabel = #1578#1610#1585'|'#1608#1586#1606
      FieldName = 'M4Weight'
    end
    object qryWithCustM4Price: TBCDField
      DisplayLabel = #1578#1610#1585'|'#1605#1576#1604#1594
      FieldName = 'M4Price'
      currency = True
      Precision = 19
    end
    object qryWithCustM4TotallSellPrice: TBCDField
      DisplayLabel = #1578#1610#1585'|'#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M4TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryWithCustM5Entity: TFloatField
      DisplayLabel = #1605#1585#1583#1575#1583'|'#1605#1602#1583#1575#1585
      FieldName = 'M5Entity'
    end
    object qryWithCustM5Weight: TFloatField
      DisplayLabel = #1605#1585#1583#1575#1583'|'#1608#1586#1606
      FieldName = 'M5Weight'
    end
    object qryWithCustM5Price: TBCDField
      DisplayLabel = #1605#1585#1583#1575#1583'|'#1605#1576#1604#1594
      FieldName = 'M5Price'
      currency = True
      Precision = 19
    end
    object qryWithCustM5TotallSellPrice: TBCDField
      DisplayLabel = #1605#1585#1583#1575#1583'|'#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M5TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryWithCustM6Entity: TFloatField
      DisplayLabel = #1588#1607#1585#1610#1608#1585'|'#1605#1602#1583#1575#1585
      FieldName = 'M6Entity'
    end
    object qryWithCustM6Weight: TFloatField
      DisplayLabel = #1588#1607#1585#1610#1608#1585'|'#1608#1586#1606
      FieldName = 'M6Weight'
    end
    object qryWithCustM6Price: TBCDField
      DisplayLabel = #1588#1607#1585#1610#1608#1585'|'#1605#1576#1604#1594' '
      FieldName = 'M6Price'
      currency = True
      Precision = 19
    end
    object qryWithCustM6TotallSellPrice: TBCDField
      DisplayLabel = #1588#1607#1585#1610#1608#1585'|'#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M6TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryWithCustM7Entity: TFloatField
      DisplayLabel = #1605#1607#1585'|'#1605#1602#1583#1575#1585
      FieldName = 'M7Entity'
    end
    object qryWithCustM7Weight: TFloatField
      DisplayLabel = #1605#1607#1585'|'#1608#1586#1606
      FieldName = 'M7Weight'
    end
    object qryWithCustM7Price: TBCDField
      DisplayLabel = #1605#1607#1585'|'#1605#1576#1604#1594
      FieldName = 'M7Price'
      currency = True
      Precision = 19
    end
    object qryWithCustM7TotallSellPrice: TBCDField
      DisplayLabel = #1605#1607#1585'|'#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M7TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryWithCustM8Entity: TFloatField
      DisplayLabel = #1570#1576#1575#1606'|'#1605#1602#1583#1575#1585
      FieldName = 'M8Entity'
    end
    object qryWithCustM8Weight: TFloatField
      DisplayLabel = #1570#1576#1575#1606'|'#1608#1586#1606
      FieldName = 'M8Weight'
    end
    object qryWithCustM8Price: TBCDField
      DisplayLabel = #1570#1576#1575#1606'|'#1605#1576#1604#1594
      FieldName = 'M8Price'
      currency = True
      Precision = 19
    end
    object qryWithCustM8TotallSellPrice: TBCDField
      DisplayLabel = #1570#1576#1575#1606'|'#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M8TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryWithCustM9Entity: TFloatField
      DisplayLabel = #1570#1584#1585'|'#1605#1602#1583#1575#1585
      FieldName = 'M9Entity'
    end
    object qryWithCustM9Weight: TFloatField
      DisplayLabel = #1570#1584#1585'|'#1608#1586#1606
      FieldName = 'M9Weight'
    end
    object qryWithCustM9Price: TBCDField
      DisplayLabel = #1570#1584#1585'|'#1605#1576#1604#1594
      FieldName = 'M9Price'
      currency = True
      Precision = 19
    end
    object qryWithCustM9TotallSellPrice: TBCDField
      DisplayLabel = #1570#1584#1585'|'#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M9TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryWithCustM10Entity: TFloatField
      DisplayLabel = #1583#1610'|'#1605#1602#1583#1575#1585
      FieldName = 'M10Entity'
    end
    object qryWithCustM10Weight: TFloatField
      DisplayLabel = #1583#1610'|'#1608#1586#1606
      FieldName = 'M10Weight'
    end
    object qryWithCustM10Price: TBCDField
      DisplayLabel = #1583#1610'|'#1605#1576#1604#1594
      FieldName = 'M10Price'
      currency = True
      Precision = 19
    end
    object qryWithCustM10TotallSellPrice: TBCDField
      DisplayLabel = #1583#1610'|'#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M10TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryWithCustM11Entity: TFloatField
      DisplayLabel = #1576#1607#1605#1606'|'#1605#1602#1583#1575#1585
      FieldName = 'M11Entity'
    end
    object qryWithCustM11Weight: TFloatField
      DisplayLabel = #1576#1607#1605#1606'|'#1608#1586#1606
      FieldName = 'M11Weight'
    end
    object qryWithCustM11Price: TBCDField
      DisplayLabel = #1576#1607#1605#1606'|'#1605#1576#1604#1594
      FieldName = 'M11Price'
      currency = True
      Precision = 19
    end
    object qryWithCustM11TotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1605#1606'|'#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M11TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryWithCustM12Entity: TFloatField
      DisplayLabel = #1575#1587#1601#1606#1583'|'#1605#1602#1583#1575#1585
      FieldName = 'M12Entity'
    end
    object qryWithCustM12Weight: TFloatField
      DisplayLabel = #1575#1587#1601#1606#1583'|'#1608#1586#1606
      FieldName = 'M12Weight'
    end
    object qryWithCustM12Price: TBCDField
      DisplayLabel = #1575#1587#1601#1606#1583'|'#1605#1576#1604#1594
      FieldName = 'M12Price'
      currency = True
      Precision = 19
    end
    object qryWithCustM12TotallSellPrice: TBCDField
      DisplayLabel = #1575#1587#1601#1606#1583'|'#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'M12TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryWithCustEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryWithCustWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
      ReadOnly = True
    end
    object qryWithCustPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Price'
      ReadOnly = True
      Precision = 19
    end
    object qryWithCustTotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryWithCustCustomerGrpName: TStringField
      FieldName = 'CustomerGrpName'
      Size = 100
    end
  end
  object qryinitQry: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    DataSource = srcWithCust
    Parameters = <
      item
        Name = 'type'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 1
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         ReciptTypes'
      'WHERE     (ReciptType = :type)')
    Left = 336
    Top = 101
  end
  object srcWithCust: TDataSource
    DataSet = qryWithCust
    Left = 64
    Top = 165
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\RptReciptWithCustMonths1.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
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
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 173
    Top = 320
    Version = '18.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 36248
      mmPrintPosition = 0
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 33338
        mmWidth = 284428
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label36'
        AutoSize = False
        Caption = #1605#1602#1583#1575#1585#1605'.1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 207169
        mmTop = 29633
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label34'
        Caption = #1605#1576#1604#1600#1600#1594' '#1605#1575#1607' 1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 181769
        mmTop = 29633
        mmWidth = 24871
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Caption = #1603#1600#1600#1583' '#1605#1588#1578#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 270669
        mmTop = 29369
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Caption = #1606#1575#1605' '#1605#1588#1578#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 218282
        mmTop = 29369
        mmWidth = 51329
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Caption = #1605#1602#1583#1575#1585#1605'.6'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 25400
        mmTop = 29369
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        AutoSize = False
        Caption = #1605#1576#1604#1600#1600#1594' '#1605#1575#1607' 6'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 0
        mmTop = 29369
        mmWidth = 24871
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        mmHeight = 4498
        mmLeft = 24606
        mmTop = 31750
        mmWidth = 1058
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        mmHeight = 4498
        mmLeft = 35454
        mmTop = 30427
        mmWidth = 1058
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        mmHeight = 4498
        mmLeft = 217223
        mmTop = 31750
        mmWidth = 1058
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        mmHeight = 4498
        mmLeft = 269611
        mmTop = 31750
        mmWidth = 1058
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        AutoSize = False
        Caption = #1605#1576#1604#1600#1600#1594' '#1605#1575#1607' 5'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 36248
        mmTop = 29633
        mmWidth = 24871
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        mmHeight = 4498
        mmLeft = 60854
        mmTop = 31750
        mmWidth = 1058
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        AutoSize = False
        Caption = #1605#1602#1583#1575#1585#1605'.5'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 61648
        mmTop = 29633
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Caption = #1605#1602#1583#1575#1585#1605'.4'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 98161
        mmTop = 29633
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        AutoSize = False
        Caption = #1605#1576#1604#1600#1600#1594' '#1605#1575#1607' 4'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 72761
        mmTop = 29633
        mmWidth = 24871
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        mmHeight = 4498
        mmLeft = 97367
        mmTop = 31750
        mmWidth = 1058
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        mmHeight = 4498
        mmLeft = 108215
        mmTop = 31750
        mmWidth = 1058
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        AutoSize = False
        Caption = #1605#1576#1604#1600#1600#1594' '#1605#1575#1607' 3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 109009
        mmTop = 29633
        mmWidth = 24871
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        mmHeight = 4498
        mmLeft = 133615
        mmTop = 31750
        mmWidth = 1058
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label28'
        AutoSize = False
        Caption = #1605#1602#1583#1575#1585#1605'.3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 134409
        mmTop = 29633
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label29'
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        mmHeight = 4498
        mmLeft = 71702
        mmTop = 31750
        mmWidth = 1058
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label30'
        AutoSize = False
        Caption = #1605#1602#1583#1575#1585#1605'.2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 170921
        mmTop = 29633
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label31'
        Caption = #1605#1576#1604#1600#1600#1594' '#1605#1575#1607' 2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 145521
        mmTop = 29633
        mmWidth = 24871
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label32'
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        mmHeight = 4498
        mmLeft = 170127
        mmTop = 31750
        mmWidth = 1058
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label33'
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        mmHeight = 4498
        mmLeft = 180975
        mmTop = 31750
        mmWidth = 1058
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label35'
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        mmHeight = 4498
        mmLeft = 206375
        mmTop = 31750
        mmWidth = 1058
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label37'
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        mmHeight = 4498
        mmLeft = 144463
        mmTop = 31750
        mmWidth = 1058
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        OnGetText = ppLblCompanyNameGetText
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 116417
        mmTop = 265
        mmWidth = 52123
        BandType = 0
        LayerName = Foreground
      end
      object ppLblFormName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        OnGetText = ppLblFormNameGetText
        Caption = #1593#1606#1608#1575#1606' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7144
        mmLeft = 134673
        mmTop = 6879
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Position = lpBottom
        Weight = 0.500000000000000000
        mmHeight = 2910
        mmLeft = 0
        mmTop = 10848
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Pen.Width = 2
        Position = lpBottom
        Weight = 1.200000047683716000
        mmHeight = 2910
        mmLeft = 0
        mmTop = 23813
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground
      end
      object ppLblReciptDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        OnGetText = ppLblReciptDateGetText
        Caption = #1605#1581#1583#1608#1583#1607' '#1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 267494
        mmTop = 19844
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
      object ppLblReciptNumber: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        OnGetText = ppLblReciptNumberGetText
        Caption = #1605#1581#1583#1608#1583#1607' '#1588#1605#1575#1585#1607' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 263790
        mmTop = 14023
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable3GetText
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 6085
        mmLeft = 8996
        mmTop = 1588
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        OnGetText = ppLblPrintDateGetText
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 6615
        mmLeft = 8996
        mmTop = 7673
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground
      end
      object ppLblStoreID: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        OnGetText = ppLblStoreIDGetText
        Caption = #1605#1581#1583#1608#1583#1607' '#1603#1583' '#1575#1606#1576#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 6615
        mmLeft = 8996
        mmTop = 14552
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLblStuffCode: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        OnGetText = ppLblStuffCodeGetText
        Caption = #1605#1581#1583#1608#1583#1607' '#1603#1583' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 6615
        mmLeft = 8996
        mmTop = 20373
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      PrintCount = 50
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        DataField = 'PersonID1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 270669
        mmTop = 0
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        DataField = 'CustName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 218282
        mmTop = 0
        mmWidth = 51329
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTextIOEntity: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        DataField = 'M6Entity'
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
        mmLeft = 25400
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTextTotalIOPrice: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        DataField = 'M6Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
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
        mmLeft = 0
        mmTop = 0
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        DataField = 'M5Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
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
        mmLeft = 36248
        mmTop = 0
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        DataField = 'M5Entity'
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
        mmLeft = 61648
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        DataField = 'M4Entity'
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
        mmLeft = 98161
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        DataField = 'M4Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
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
        mmLeft = 72761
        mmTop = 0
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        DataField = 'M3Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
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
        mmLeft = 109009
        mmTop = 0
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        DataField = 'M3Entity'
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
        mmLeft = 134409
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        DataField = 'M2Entity'
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
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        DataField = 'M2Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
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
        mmLeft = 145521
        mmTop = 0
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        DataField = 'M1Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
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
        mmLeft = 181769
        mmTop = 0
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        DataField = 'M1Entity'
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
        mmLeft = 207169
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblEntity1'
        AutoSize = False
        Caption = #1580#1600#1600#1605#1593' '#1603#1600#1600#1604': '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 218546
        mmTop = 0
        mmWidth = 65617
        BandType = 8
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 8
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 6879
        mmWidth = 284300
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc14: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc15'
        DataField = 'M6Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 0
        mmTop = 529
        mmWidth = 24871
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc15: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc16'
        DataField = 'M6Entity'
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
        mmHeight = 6085
        mmLeft = 25400
        mmTop = 529
        mmWidth = 10054
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc16: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc17'
        DataField = 'M5Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 36248
        mmTop = 529
        mmWidth = 24871
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc17: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc18'
        DataField = 'M5Entity'
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
        mmHeight = 6085
        mmLeft = 61648
        mmTop = 529
        mmWidth = 10054
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc18: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc19'
        DataField = 'M4Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 72761
        mmTop = 529
        mmWidth = 24871
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc19: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc20'
        DataField = 'M4Entity'
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
        mmHeight = 6085
        mmLeft = 98161
        mmTop = 529
        mmWidth = 10054
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc20: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc102'
        DataField = 'M3Entity'
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
        mmHeight = 6085
        mmLeft = 134409
        mmTop = 529
        mmWidth = 10054
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc21: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc21'
        DataField = 'M3Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 109009
        mmTop = 529
        mmWidth = 24871
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc22: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc22'
        DataField = 'M2Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 145521
        mmTop = 529
        mmWidth = 24871
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc23: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc23'
        DataField = 'M2Entity'
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
        mmHeight = 6085
        mmLeft = 170921
        mmTop = 529
        mmWidth = 10054
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc24: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc24'
        DataField = 'M1Entity'
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
        mmHeight = 6085
        mmLeft = 207169
        mmTop = 529
        mmWidth = 10054
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc25: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc25'
        DataField = 'M1Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 181769
        mmTop = 529
        mmWidth = 24871
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 14288
      mmPrintPosition = 0
      object ppLabel60: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Caption = #1578#1593#1583#1575#1583' '#1605#1588#1578#1585#1610' '#1607#1575': '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5503
        mmLeft = 266436
        mmTop = 0
        mmWidth = 19643
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        DataField = 'PersonID1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 250032
        mmTop = 0
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 7
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 6350
        mmWidth = 284300
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        DataField = 'M6Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 0
        mmTop = 529
        mmWidth = 24871
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        DataField = 'M6Entity'
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
        mmHeight = 6085
        mmLeft = 25400
        mmTop = 529
        mmWidth = 10054
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        AutoSize = False
        Caption = #1580#1600#1600#1605#1593' '#1603#1600#1600#1604': '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 218546
        mmTop = 529
        mmWidth = 26458
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        DataField = 'M5Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 36248
        mmTop = 529
        mmWidth = 24871
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc7'
        DataField = 'M5Entity'
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
        mmHeight = 6085
        mmLeft = 61648
        mmTop = 529
        mmWidth = 10054
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc6: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc8'
        DataField = 'M4Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 72761
        mmTop = 529
        mmWidth = 24871
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc7: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc9'
        DataField = 'M4Entity'
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
        mmHeight = 6085
        mmLeft = 98161
        mmTop = 529
        mmWidth = 10054
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc8: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc10'
        DataField = 'M3Entity'
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
        mmHeight = 6085
        mmLeft = 134409
        mmTop = 529
        mmWidth = 10054
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc9: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc11'
        DataField = 'M3Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 109009
        mmTop = 529
        mmWidth = 24871
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc10: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc12'
        DataField = 'M2Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 145521
        mmTop = 529
        mmWidth = 24871
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc11: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc13'
        DataField = 'M2Entity'
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
        mmHeight = 6085
        mmLeft = 170921
        mmTop = 529
        mmWidth = 10054
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc12: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc101'
        DataField = 'M1Entity'
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
        mmHeight = 6085
        mmLeft = 207169
        mmTop = 529
        mmWidth = 10054
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc13: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc14'
        DataField = 'M1Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 181769
        mmTop = 529
        mmWidth = 24871
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
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcWithCust
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 284
    Top = 308
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 432
    Top = 309
    object MenuItem2: TMenuItem
      Caption = #1670#1575#1662' '#1588#1588' '#1605#1575#1607#1607' '#1575#1608#1604' '#1587#1575#1604
      OnClick = MenuItem2Click
    end
    object MenuItem3: TMenuItem
      Caption = #1670#1575#1662' '#1588#1588' '#1605#1575#1607#1607' '#1583#1608#1605' '#1587#1575#1604
      OnClick = MenuItem3Click
    end
    object N1: TMenuItem
      Caption = #1670#1575#1662' '#1588#1588' '#1605#1575#1607#1607' '#1575#1608#1604' '#1587#1575#1604'('#1580#1583#1608#1604#1610')'#8207
      OnClick = N1Click
    end
    object objectMenuItem3TMenuItem1: TMenuItem
      Caption = #1670#1575#1662' '#1588#1588' '#1605#1575#1607#1607' '#1583#1608#1605' '#1587#1575#1604' ('#1580#1583#1608#1604#1610')'#8207
      OnClick = objectMenuItem3TMenuItem1Click
    end
  end
end
