inherited ReviewRequestsF: TReviewRequestsF
  Caption = #1576#1585#1585#1587#1740' '#1608' '#1606#1607#1575#1740#1740' '#1705#1585#1583#1606' '#1583#1585#1582#1608#1575#1587#1578' '#1607#1575
  ClientHeight = 534
  ClientWidth = 972
  OnResize = FormResize
  ExplicitWidth = 988
  ExplicitHeight = 573
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 493
    Width = 972
    ExplicitTop = 493
    ExplicitWidth = 972
  end
  inherited Panel2: TPanel
    Width = 972
    ExplicitWidth = 972
    inherited ImgTemplate: TImage
      Left = 967
      ExplicitLeft = 832
    end
    inherited lblCaption: TLabel
      Left = 864
      ExplicitLeft = 850
    end
  end
  inherited Panel3: TPanel
    Width = 972
    Height = 440
    ExplicitWidth = 972
    ExplicitHeight = 440
    object TabControl1: TTabControl
      Left = 2
      Top = 2
      Width = 968
      Height = 436
      Align = alClient
      TabOrder = 0
      Tabs.Strings = (
        #1580#1576#1585#1575#1606' '#1605#1608#1580#1608#1583#1740
        #1662#1740#1588#1606#1607#1575#1583' '#1582#1585#1740#1583)
      TabIndex = 0
      OnChange = TabControl1Change
      object Splitter2: TSplitter
        Left = 4
        Top = 167
        Width = 960
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        ExplicitLeft = 20
        ExplicitTop = 120
        ExplicitWidth = 918
      end
      object Panel7: TPanel
        Left = 4
        Top = 391
        Width = 960
        Height = 41
        Align = alBottom
        ParentBackground = False
        TabOrder = 0
        object Panel4: TPanel
          Left = 497
          Top = 1
          Width = 154
          Height = 39
          Align = alRight
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 0
          object btnOk: TBitBtn
            AlignWithMargins = True
            Left = 1
            Top = 6
            Width = 75
            Height = 27
            Margins.Left = 1
            Margins.Top = 6
            Margins.Right = 1
            Margins.Bottom = 6
            Action = DataSetPost2
            Align = alRight
            Caption = #1578#1575#1610#1610#1583
            TabOrder = 0
          end
          object btnEdit: TBitBtn
            AlignWithMargins = True
            Left = 78
            Top = 6
            Width = 75
            Height = 27
            Margins.Left = 1
            Margins.Top = 6
            Margins.Right = 1
            Margins.Bottom = 6
            Action = DataSetEdit2
            Align = alRight
            Caption = #1608#1610#1585#1575#1610#1588
            TabOrder = 1
          end
        end
        object Panel5: TPanel
          Left = 651
          Top = 1
          Width = 308
          Height = 39
          Align = alRight
          AutoSize = True
          BevelOuter = bvNone
          TabOrder = 1
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
            Action = actAutomaticRegistration
            Align = alRight
            Caption = #1579#1576#1578' '#1575#1578#1608#1605#1575#1578#1740#1705
            TabOrder = 0
          end
          object BitBtn1: TBitBtn
            AlignWithMargins = True
            Left = 232
            Top = 6
            Width = 75
            Height = 27
            Margins.Left = 1
            Margins.Top = 6
            Margins.Right = 1
            Margins.Bottom = 6
            Action = actFilter
            Align = alRight
            Caption = #1605#1581#1583#1608#1583#1607
            TabOrder = 1
          end
          object BitBtn9: TBitBtn
            AlignWithMargins = True
            Left = 155
            Top = 6
            Width = 75
            Height = 27
            Margins.Left = 1
            Margins.Top = 6
            Margins.Right = 1
            Margins.Bottom = 6
            Action = actShowForm
            Align = alRight
            Caption = #1606#1605#1575#1740#1588' '#1601#1585#1605
            TabOrder = 2
          end
          object BitBtn10: TBitBtn
            AlignWithMargins = True
            Left = 1
            Top = 6
            Width = 75
            Height = 27
            Margins.Left = 1
            Margins.Top = 6
            Margins.Right = 1
            Margins.Bottom = 6
            Action = actSt1Confirming
            Align = alRight
            Caption = #1602#1591#1593#1740' '#1705#1585#1583#1606
            TabOrder = 3
            Visible = False
          end
        end
        object BitBtn3: TBitBtn
          AlignWithMargins = True
          Left = 2
          Top = 7
          Width = 75
          Height = 27
          Margins.Left = 1
          Margins.Top = 6
          Margins.Right = 1
          Margins.Bottom = 6
          Action = actReQry
          Align = alLeft
          Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1740
          TabOrder = 2
        end
        object BitBtn12: TBitBtn
          AlignWithMargins = True
          Left = 156
          Top = 7
          Width = 75
          Height = 27
          Margins.Left = 1
          Margins.Top = 6
          Margins.Right = 1
          Margins.Bottom = 6
          Align = alLeft
          Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
          TabOrder = 3
          OnClick = BitBtn12Click
        end
        object BitBtn13: TBitBtn
          AlignWithMargins = True
          Left = 233
          Top = 7
          Width = 75
          Height = 27
          Margins.Left = 1
          Margins.Top = 6
          Margins.Right = 1
          Margins.Bottom = 6
          Action = actSearch_
          Align = alLeft
          Caption = #1580#1587#1578#1580#1608
          TabOrder = 4
          OnClick = BitBtn13Click
        end
        object BitBtn14: TBitBtn
          AlignWithMargins = True
          Left = 79
          Top = 7
          Width = 75
          Height = 27
          Margins.Left = 1
          Margins.Top = 6
          Margins.Right = 1
          Margins.Bottom = 6
          Align = alLeft
          Caption = #1578#1585#1578#1610#1576
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006A00
            00006A0000006A000000FF00FF006A0000006A0000006A000000FF00FF00FF00
            FF00FF00FF00FF00FF0000580300FF00FF00FF00FF00FF00FF00FF00FF006A6A
            6A006A000000FF00FF00FF00FF00FF00FF00980000006A6A6A00FF00FF00FF00
            FF00FF00FF00005803006AFF6A0000580300FF00FF00FF00FF00FF00FF00FF00
            FF006A6A6A006A0000006A0000006A0000006A000000FF00FF00FF00FF00FF00
            FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FF00FF00FF00
            FF00FF00FF006A000000FF00FF00980000006A000000FF00FF00FF00FF00FF00
            FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FF00FF00FF00
            FF00FF00FF00980000006A0000006A000000FF00FF00FF00FF00FF00FF000058
            0300005803000058030000580300005803000058030000580300FF00FF00FF00
            FF00FF00FF006A6A6A006A0000006A6A6A00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0098000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
            6A0000006A0000006A0000006A0000006A0000006A00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
            6A0000006A00FF00FF00FF00FF00FF00FF000000B600FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF006A6A6A0000006A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0000006A0000006A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF006A6A6A0000006A00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
            6A0000006A00FF00FF00FF00FF0000006A0000006A00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF001100
            7B0011007B0011007B0011007B0011007B0011007B00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00}
          TabOrder = 5
          OnClick = BitBtn14Click
        end
      end
      object pb2: TProgressBar
        Left = 4
        Top = 374
        Width = 960
        Height = 17
        Align = alBottom
        Max = 1
        MarqueeInterval = 1
        Step = 1
        TabOrder = 1
      end
      object SumGrid1: TSumGrid
        Left = 4
        Top = 354
        Width = 960
        Active = False
        Enable_Controls = True
        MasterGrid = DBGrid1
        FieldsName = 
          'RequestedEntity;RequestedWeight;AcceptEntity;AcceptWeight;TaxVal' +
          'ue;TotallSellPrice;'
      end
      object DBGrid1: TDBGrid
        Tag = 111
        Left = 4
        Top = 170
        Width = 960
        Height = 184
        CustomHint = DmF.BalloonHint1
        Align = alBottom
        Color = clCream
        DataSource = srcReciptsItems
        DrawingStyle = gdsClassic
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ReciptNumber'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReciptDate'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PersonID1'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CustName'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StuffCode'
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'c_StuffName'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RequestedEntity'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RequestedWeight'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AcceptEntity'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AcceptWeight'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InputEntity'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InputWeight'
            Width = 28
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UnitSellPrice'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalOutputPrice'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TaxValue'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotallSellPrice'
            Width = 55
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 4
        Top = 24
        Width = 960
        Height = 32
        Align = alTop
        TabOrder = 4
        object Label2: TLabel
          AlignWithMargins = True
          Left = 627
          Top = 9
          Width = 21
          Height = 19
          Margins.Top = 8
          Align = alRight
          Caption = #1575#1606#1576#1575#1585
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          ExplicitHeight = 13
        end
        inline frmType: TFrmReciptType
          Left = 651
          Top = 1
          Width = 308
          Height = 30
          Align = alRight
          TabOrder = 0
          ExplicitLeft = 651
          ExplicitTop = 1
          ExplicitWidth = 308
          ExplicitHeight = 30
          inherited cmbReciptType: TComboBox
            Width = 302
            OnChange = FrmReciptType1cmbReciptTypeChange
            OnEnter = FrmReciptType1cmbReciptTypeEnter
            ExplicitWidth = 302
          end
          inherited qryinit: TADOQuery
            Left = 193
            Top = 65528
          end
        end
        object chkNegative: TCheckBox
          Left = 1
          Top = 1
          Width = 169
          Height = 30
          Align = alLeft
          Alignment = taLeftJustify
          Caption = #1601#1602#1591' '#1705#1575#1604#1575#1607#1575#1740' '#1605#1606#1601#1740' '#1606#1605#1575#1740#1588' '#1588#1608#1583
          TabOrder = 1
          OnClick = chkNegativeClick
        end
        object cmbStore: TComboBox
          AlignWithMargins = True
          Left = 393
          Top = 7
          Width = 228
          Height = 21
          Margins.Top = 6
          Align = alRight
          Style = csDropDownList
          TabOrder = 2
          OnChange = cmbStoreChange
        end
        object chkFilter: TCheckBox
          Left = 170
          Top = 1
          Width = 191
          Height = 30
          Align = alLeft
          Alignment = taLeftJustify
          Caption = #1601#1602#1591' '#1606#1605#1575#1740#1588' '#1705#1575#1604#1575#1607#1575#1740' '#1583#1575#1585#1575#1740' '#1587#1601#1575#1585#1588
          TabOrder = 3
          OnClick = chkFilterClick
        end
      end
      object CedarDbgrid2: TCedarDbgrid
        Left = 4
        Top = 56
        Width = 960
        Height = 111
        Align = alClient
        BorderStyle = bsNone
        DataSource = srcInv4Sell
        DynProps = <>
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
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
        OddRowColor = clWindow
        ParentFont = False
        RowDetailPanel.MaxHeight = 1
        RowHeight = 21
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        SearchPanel.Location = splHorzScrollBarExtraPanelEh
        SelectionDrawParams.SelectionStyle = gsdsClassicEh
        SortLocal = True
        TabOrder = 5
        TitleParams.MultiTitle = True
        ActiveSearchPanel = True
        SelectFooterIndex = 0
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 464
    object DataSetEdit2: TDataSetEdit [1]
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      ShortCut = 115
      DataSource = srcReciptsItems
    end
    object DataSetPost2: TDataSetPost [3]
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      Hint = ' '
      ShortCut = 119
      DataSource = srcReciptsItems
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actReQry: TAction
      Category = 'Dataset'
      Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1740
      OnExecute = actReQryExecute
    end
    object actShowForm: TAction
      Category = 'Dataset'
      Caption = #1606#1605#1575#1740#1588' '#1601#1585#1605
      OnExecute = actShowFormExecute
    end
    object actSt1Confirming: TAction
      Caption = #1602#1591#1593#1740' '#1705#1585#1583#1606
      OnExecute = actSt1ConfirmingExecute
    end
    object actFilter2: TAction
      Caption = #1605#1581#1583#1608#1583#1607' '#1587#1601#1575#1585#1588#1575#1578
    end
    object actSt2Perpetuate: TAction
      Caption = #1583#1575#1574#1605' '#1705#1585#1583#1606
    end
    object actAutomaticRegistration: TAction
      Caption = #1579#1576#1578' '#1575#1578#1608#1605#1575#1578#1740#1705
      OnExecute = actAutomaticRegistrationExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 544
    Top = 9
  end
  object srcInv4Sell: TDataSource
    DataSet = qryInv4Sell
    Left = 221
    Top = 13
  end
  object qryInv4Sell: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = qryInv4SellAfterScroll
    Parameters = <
      item
        Name = 'DateTo'
        DataType = ftWideString
        Size = 10
        Value = '9999/99/99'
      end
      item
        Name = 'YearIDFrom'
        DataType = ftWideString
        Size = 2
        Value = '95'
      end
      item
        Name = 'YearIDTo'
        DataType = ftWideString
        Size = 2
        Value = '95'
      end
      item
        Name = 'StoreIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '1'
      end
      item
        Name = 'StoreIDTo'
        DataType = ftWideString
        Size = 3
        Value = '999'
      end
      item
        Name = 'chkNegative'
        DataType = ftWideString
        Size = -1
        Value = Null
      end
      item
        Name = 'chkFilter'
        Size = -1
        Value = Null
      end
      item
        Name = 'StuffCodeFrom'
        DataType = ftWideString
        Size = 1
        Value = '1'
      end
      item
        Name = 'StuffCodeTo'
        DataType = ftWideString
        Size = 1
        Value = '1'
      end
      item
        Name = 'st1From'
        Size = -1
        Value = Null
      end
      item
        Name = 'st1To'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'DECLARE  @Temp TABLE( ServerID INT ,'#9' YearID INT ,'#9' StoreID INT ' +
        ','#9' StuffCode   BIGINT   ,'#9' c_StuffName   VARCHAR (150)  ,'
      
        #9' UnitName   VARCHAR (50)  ,'#9' Name   VARCHAR (50)  ,'#9' acc_Detail' +
        'Code   VARCHAR (12)  ,'#9' Carton FLOAT ,'#9' InvEntity FLOAT ,'
      #9' InvWeight FLOAT ,'#9' EntityTheWay FLOAT ,'#9' WeightTheWay FLOAT'
      '   ,'#9' EntityTheWay2 FLOAT ,'#9' WeightTheWay2 FLOAT'
      '   ,'#9' EntityTheWay_dec FLOAT ,'#9' WeightTheWay_dec FLOAT'
      
        '   ,'#9' EntityAvilable4Sells FLOAT ,'#9' WeightAvilable4Sells FLOAT ,' +
        #9' Entityorder FLOAT ,'#9' WeightOrder   FLOAT ,ProductCode BIGINT '
      '  ,StuffNote  VARCHAR (255)   )'
      ''
      'INSERT INTO @Temp'
      ''
      
        'SELECT        Inv4Sell.ServerID, Inv4Sell.YearID, Inv4Sell.Store' +
        'ID, Inv4Sell.StuffCode, StuffCoding.c_StuffName, Units.UnitName,' +
        ' LookUps.Name,'
      #9#9#9'LookUps.acc_DetailCode, StuffCoding.Carton,  '
      
        '                         Inv4Sell.InvEntity, Inv4Sell.InvWeight,' +
        ' Inv4Sell.EntityTheWay, Inv4Sell.WeightTheWay,'
      
        '                         Inv4Sell.EntityTheWay2, Inv4Sell.Weight' +
        'TheWay2,'
      
        '                         Inv4Sell.EntityTheWay_dec, Inv4Sell.Wei' +
        'ghtTheWay_dec,'
      
        '                         Inv4Sell.EntityAvilable4Sells, Inv4Sell' +
        '.WeightAvilable4Sells,'
      
        #9#9#9' (ceiling(abs(EntityAvilable4Sells/StuffCoding.Carton)) * Stu' +
        'ffCoding.Carton) as Entityorder,'
      
        #9#9#9' ceiling(abs(EntityAvilable4Sells/StuffCoding.Carton)) as Wei' +
        'ghtOrder ,1 AS ProductCode'
      ',StuffCoding.StuffNote'
      
        'FROM            dbo.InventoryAvilable4Sells(DEFAULT , :DateTo, :' +
        'YearIDFrom, :YearIDTo, :StoreIDFrom, :StoreIDTo) AS Inv4Sell INN' +
        'ER JOIN'
      
        '                         StuffCoding ON Inv4Sell.StuffCode = Stu' +
        'ffCoding.c_StuffCode INNER JOIN'
      
        '                         Units ON StuffCoding.n_UnitCode = Units' +
        '.UnitCode LEFT OUTER JOIN'
      #9#9#9#9#9#9' LookUps on LookUps.Code = StuffCoding.st1'
      ''
      
        'WHERE    (   ( (EntityAvilable4Sells < 0) OR  (1 = :chkNegative ' +
        '))  ) '
      
        'AND  ( Inv4Sell.EntityTheWay_dec < 0  OR     (1 = :chkFilter )  ' +
        ')'
      ''
      ''
      
        'AND (Inv4Sell.StuffCode Between  :StuffCodeFrom AND  :StuffCodeT' +
        'o ) AND (LookUps.kind = 301)'
      'AND (StuffCoding.st1 BETWEEN :st1From AND :st1To )'
      ''
      'SELECT * FROM @Temp'
      ''
      '')
    Left = 154
    Top = 8
    object qryInv4SellStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1705#1583' '#1705#1575#1604#1575
      FieldName = 'StuffCode'
      ReadOnly = True
    end
    object qryInv4Sellc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1705#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 40
    end
    object qryInv4SellUnitName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583
      FieldName = 'UnitName'
      Size = 10
    end
    object qryInv4SellCarton: TFloatField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583' '#1583#1585' '#1705#1575#1585#1578#1606
      FieldName = 'Carton'
    end
    object qryInv4SellName: TStringField
      Tag = 3
      DisplayLabel = #1576#1585#1606#1583
      FieldName = 'Name'
      Size = 10
    end
    object qryInv4Sellacc_DetailCode: TStringField
      Tag = 3
      DisplayLabel = #1705#1583' '#1578#1601#1589#1740#1604#1740' '#1576#1585#1606#1583
      FieldName = 'acc_DetailCode'
      Size = 12
    end
    object qryInv4SellStuffNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578' '#1705#1575#1604#1575
      FieldName = 'StuffNote'
      Size = 255
    end
    object qryInv4SellInvEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1608#1580#1608#1583#1740' '#1608#1575#1602#1593#1740'|'#1605#1602#1583#1575#1585
      FieldName = 'InvEntity'
      ReadOnly = True
    end
    object qryInv4SellInvWeight: TFloatField
      Tag = 3
      DisplayLabel = #1605#1608#1580#1608#1583#1740' '#1608#1575#1602#1593#1740'|'#1608#1586#1606
      FieldName = 'InvWeight'
      ReadOnly = True
    end
    object qryInv4SellEntityTheWay: TFloatField
      Tag = 3
      DisplayLabel = #1705#1575#1604#1575#1740' '#1583#1585' '#1585#1575#1607'|'#1605#1602#1583#1575#1585
      FieldName = 'EntityTheWay'
      ReadOnly = True
    end
    object qryInv4SellWeightTheWay: TFloatField
      Tag = 3
      DisplayLabel = #1705#1575#1604#1575#1740' '#1583#1585' '#1585#1575#1607'|'#1608#1586#1606
      FieldName = 'WeightTheWay'
      ReadOnly = True
    end
    object qryInv4SellEntityTheWay2: TFloatField
      Tag = 3
      DisplayLabel = #1587#1601#1575#1585#1588#1575#1578' '#1582#1585#1740#1583'|'#1605#1602#1583#1575#1585
      FieldName = 'EntityTheWay2'
      ReadOnly = True
    end
    object qryInv4SellWeightTheWay2: TFloatField
      Tag = 3
      DisplayLabel = #1587#1601#1575#1585#1588#1575#1578' '#1582#1585#1740#1583'|'#1608#1586#1606
      FieldName = 'WeightTheWay2'
      ReadOnly = True
    end
    object qryInv4SellEntityTheWay_dec: TFloatField
      Tag = 3
      DisplayLabel = #1587#1601#1575#1585#1588#1575#1578' '#1601#1585#1608#1588'|'#1605#1602#1583#1575#1585
      FieldName = 'EntityTheWay_dec'
    end
    object qryInv4SellWeightTheWay_dec: TFloatField
      Tag = 3
      DisplayLabel = #1587#1601#1575#1585#1588#1575#1578' '#1601#1585#1608#1588'|'#1608#1586#1606
      FieldName = 'WeightTheWay_dec'
    end
    object qryInv4SellEntityAvilable4Sells: TFloatField
      Tag = 3
      DisplayLabel = #1605#1575#1606#1583#1607' '#1606#1607#1575#1740#1740'|'#1605#1602#1583#1575#1585
      FieldName = 'EntityAvilable4Sells'
      ReadOnly = True
    end
    object qryInv4SellWeightAvilable4Sells: TFloatField
      Tag = 3
      DisplayLabel = #1605#1575#1606#1583#1607' '#1606#1607#1575#1740#1740'|'#1608#1586#1606
      FieldName = 'WeightAvilable4Sells'
      ReadOnly = True
    end
    object qryInv4SellEntityorder: TFloatField
      Tag = 3
      DisplayLabel = #1602#1575#1576#1604' '#1587#1601#1575#1585#1588'|'#1605#1602#1583#1575#1585
      FieldName = 'Entityorder'
      OnChange = qryInv4SellEntityorderChange
    end
    object qryInv4SellWeightOrder: TFloatField
      Tag = 3
      DisplayLabel = #1602#1575#1576#1604' '#1587#1601#1575#1585#1588'|'#1608#1586#1606
      FieldName = 'WeightOrder'
      OnChange = qryInv4SellWeightOrderChange
    end
  end
  object srcReciptsItems: TDataSource
    DataSet = qryReciptItems
    OnStateChange = srcReciptsItemsStateChange
    Left = 404
    Top = 287
  end
  object qryReciptItems: TADOQuery
    AutoCalcFields = False
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterPost = qryReciptItemsAfterPost
    BeforeDelete = qryReciptItemsBeforeDelete
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'StuffCode'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT        Vu_ReciptItems4Edit.*'
      ''
      'FROM            Vu_ReciptItems4Edit '
      ''
      ''
      
        'WHERE        (Vu_ReciptItems4Edit.ReciptType = :ReciptType) AND ' +
        '(StuffCode = :StuffCode)'
      '')
    Left = 293
    Top = 275
    object qryReciptItemsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptItemsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptItemsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryReciptItemsReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryReciptItemsReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1601#1575#1585#1588
      FieldName = 'ReciptNumber'
    end
    object qryReciptItemsReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1740#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptItemsPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583' '#1582#1585#1740#1583#1575#1585
      FieldName = 'PersonID1'
    end
    object qryReciptItemsCustName: TStringField
      Tag = 3
      DisplayLabel = #1582#1585#1740#1583#1575#1585
      FieldName = 'CustName'
      Size = 60
    end
    object qryReciptItemsStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1705#1583' '#1705#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryReciptItemsc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1705#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 150
    end
    object qryReciptItemsCarton: TFloatField
      Tag = 3
      FieldName = 'Carton'
    end
    object qryReciptItemsRequestedEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578#1740'|'#1740#1740#1740
      FieldName = 'RequestedEntity'
    end
    object qryReciptItemsRequestedWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1583#1585#1582#1608#1575#1587#1578#1740'|'#1740#1740#1740
      FieldName = 'RequestedWeight'
    end
    object qryReciptItemsAcceptEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1578#1575#1740#1740#1583' '#1588#1583#1607
      FieldName = 'AcceptEntity'
    end
    object qryReciptItemsAcceptWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1578#1575#1740#1740#1583' '#1588#1583#1607
      FieldName = 'AcceptWeight'
    end
    object qryReciptItemsOutputEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'OutputEntity'
    end
    object qryReciptItemsOutputWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'OutputWeight'
    end
    object qryReciptItemsUnitSellPrice: TFMTBCDField
      Tag = 3
      DisplayLabel = #1601#1740
      FieldName = 'UnitSellPrice'
      currency = True
      Precision = 19
    end
    object qryReciptItemsTotalOutputPrice: TBCDField
      Tag = 3
      DisplayLabel = #1576#1607#1575#1740' '#1705#1604
      FieldName = 'TotalOutputPrice'
      currency = True
      Precision = 19
    end
    object qryReciptItemsTaxCo: TFloatField
      Tag = 3
      FieldName = 'TaxCo'
    end
    object qryReciptItemsTaxValue: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1604#1740#1575#1578
      FieldName = 'TaxValue'
      currency = True
      Precision = 19
    end
    object qryReciptItemsTotallSellPrice: TBCDField
      Tag = 3
      DisplayLabel = #1582#1575#1604#1589
      FieldName = 'TotallSellPrice'
      currency = True
      Precision = 19
    end
    object qryReciptItemsNumberCreditInstallments: TIntegerField
      FieldName = 'NumberCreditInstallments'
    end
    object qryReciptItemsProductCode: TLargeintField
      FieldName = 'ProductCode'
    end
    object qryReciptItemsTotalInputPrice: TBCDField
      FieldName = 'TotalInputPrice'
      Precision = 19
    end
    object qryReciptItemsInputEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'InputEntity'
    end
    object qryReciptItemsInputWeight: TFloatField
      DisplayLabel = #1608#1586#1606
      FieldName = 'InputWeight'
    end
  end
  object qryItems: TADOQuery
    AutoCalcFields = False
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ReciptID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
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
      'SELECT        *'
      'FROM            ReciptItems'
      'WHERE        (ReciptID = :ReciptID) AND (ServerID = :ServerID) '
      'AND (YearID = :YearID)')
    Left = 221
    Top = 355
  end
  object qryCustomer: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      #13'SELECT    dbo.Customers.CustID, dbo.Customers.CustName,Mobile'
      'FROM       dbo.Customers LEFT OUTER JOIN'
      
        '                  dbo.CustomersGroup ON dbo.Customers.CustomerGr' +
        'pID = '
      '                  dbo.CustomersGroup.CustomerGrpID')
    Left = 544
    Top = 344
  end
  object qryInitForm: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'Type'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT    *'
      'FROM         dbo.FormTypes'
      'where ( FormType=:Type )')
    Left = 704
    Top = 151
  end
  object qryReciptItems4Add: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qryReciptItems4AddAfterInsert
    Parameters = <>
    SQL.Strings = (
      'SELECT        TOP (0) *'
      'FROM            ReciptItems')
    Left = 736
    Top = 296
    object qryReciptItems4AddReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
    end
    object qryReciptItems4AddReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptItems4AddStuffCode: TLargeintField
      FieldName = 'StuffCode'
    end
    object qryReciptItems4AddStuffSize: TStringField
      FieldName = 'StuffSize'
      Size = 12
    end
    object qryReciptItems4AddStuffDiameter: TFloatField
      FieldName = 'StuffDiameter'
    end
    object qryReciptItems4AddStuffAlloy: TStringField
      FieldName = 'StuffAlloy'
      Size = 12
    end
    object qryReciptItems4AddInputEntity: TFloatField
      FieldName = 'InputEntity'
    end
    object qryReciptItems4AddOutputEntity: TFloatField
      FieldName = 'OutputEntity'
    end
    object qryReciptItems4AddInputWeight: TFloatField
      FieldName = 'InputWeight'
    end
    object qryReciptItems4AddOutputWeight: TFloatField
      FieldName = 'OutputWeight'
    end
    object qryReciptItems4AddRequestedEntity: TFloatField
      FieldName = 'RequestedEntity'
    end
    object qryReciptItems4AddRequestedWeight: TFloatField
      FieldName = 'RequestedWeight'
    end
    object qryReciptItems4AddControlCode: TLargeintField
      FieldName = 'ControlCode'
    end
    object qryReciptItems4AddStuffGrade: TWordField
      FieldName = 'StuffGrade'
    end
    object qryReciptItems4AddTotalInputPrice: TBCDField
      FieldName = 'TotalInputPrice'
      Precision = 19
    end
    object qryReciptItems4AddTotalOutputPrice: TBCDField
      FieldName = 'TotalOutputPrice'
      Precision = 19
    end
    object qryReciptItems4AddUnitSellPrice: TFMTBCDField
      FieldName = 'UnitSellPrice'
      Precision = 19
    end
    object qryReciptItems4AddTotallSellPrice: TBCDField
      FieldName = 'TotallSellPrice'
      Precision = 19
    end
    object qryReciptItems4AddItemNote: TStringField
      FieldName = 'ItemNote'
      Size = 100
    end
    object qryReciptItems4AddpreReciptItemID: TIntegerField
      FieldName = 'preReciptItemID'
    end
    object qryReciptItems4Addacc_TopicCode: TLargeintField
      FieldName = 'acc_TopicCode'
    end
    object qryReciptItems4Addacc_DetailCode: TStringField
      FieldName = 'acc_DetailCode'
      Size = 12
    end
    object qryReciptItems4Addacc_CTopicCode: TStringField
      FieldName = 'acc_CTopicCode'
      Size = 12
    end
    object qryReciptItems4AddUseUnitID: TIntegerField
      FieldName = 'UseUnitID'
    end
    object qryReciptItems4AddAidNumber: TStringField
      FieldName = 'AidNumber'
      Size = 40
    end
    object qryReciptItems4AddAidDate: TStringField
      FieldName = 'AidDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptItems4AddDiscount: TIntegerField
      FieldName = 'Discount'
    end
    object qryReciptItems4Addacc_CTopicCode2: TStringField
      FieldName = 'acc_CTopicCode2'
      Size = 12
    end
    object qryReciptItems4AddPersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object qryReciptItems4AddProductCode: TLargeintField
      FieldName = 'ProductCode'
    end
    object qryReciptItems4AddProductModel: TIntegerField
      FieldName = 'ProductModel'
    end
    object qryReciptItems4AddItemDate: TStringField
      FieldName = 'ItemDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptItems4AddOrderState: TWordField
      FieldName = 'OrderState'
    end
    object qryReciptItems4AddContactRate: TFloatField
      FieldName = 'ContactRate'
    end
    object qryReciptItems4AddWaterCo: TFloatField
      FieldName = 'WaterCo'
    end
    object qryReciptItems4AddFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryReciptItems4AddLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryReciptItems4AddShift: TIntegerField
      FieldName = 'Shift'
    end
    object qryReciptItems4AddDeficitValue: TBCDField
      FieldName = 'DeficitValue'
      Precision = 19
    end
    object qryReciptItems4AddUnitSellPrice2: TBCDField
      FieldName = 'UnitSellPrice2'
      Precision = 19
    end
    object qryReciptItems4AddMachineWeight: TFloatField
      FieldName = 'MachineWeight'
    end
    object qryReciptItems4AddTotalWeight: TFloatField
      FieldName = 'TotalWeight'
    end
    object qryReciptItems4AddAuxiliary: TFloatField
      FieldName = 'Auxiliary'
    end
    object qryReciptItems4AddMachineNo: TStringField
      FieldName = 'MachineNo'
      Size = 25
    end
    object qryReciptItems4AddMachineName: TStringField
      FieldName = 'MachineName'
      Size = 50
    end
    object qryReciptItems4AddMachineFullWeight: TFloatField
      FieldName = 'MachineFullWeight'
    end
    object qryReciptItems4AddSugarCo: TFloatField
      FieldName = 'SugarCo'
    end
    object qryReciptItems4AddSugarEntity: TFloatField
      FieldName = 'SugarEntity'
    end
    object qryReciptItems4AddStandardRate: TBCDField
      FieldName = 'StandardRate'
      Precision = 19
    end
    object qryReciptItems4AddArzAmount: TFloatField
      FieldName = 'ArzAmount'
    end
    object qryReciptItems4AddInvEntity: TFloatField
      FieldName = 'InvEntity'
    end
    object qryReciptItems4AddInvWeight: TFloatField
      FieldName = 'InvWeight'
    end
    object qryReciptItems4AddSecondTypeItem: TIntegerField
      FieldName = 'SecondTypeItem'
    end
    object qryReciptItems4AddTotalStandardRate: TBCDField
      FieldName = 'TotalStandardRate'
      Precision = 19
    end
    object qryReciptItems4AddAcceptEntity: TFloatField
      FieldName = 'AcceptEntity'
    end
    object qryReciptItems4AddRollbackEntity: TFloatField
      FieldName = 'RollbackEntity'
    end
    object qryReciptItems4AddAcceptWeight: TFloatField
      FieldName = 'AcceptWeight'
    end
    object qryReciptItems4AddRollbackWeight: TFloatField
      FieldName = 'RollbackWeight'
    end
    object qryReciptItems4AddTaxCo: TFloatField
      FieldName = 'TaxCo'
    end
    object qryReciptItems4AddTaxValue: TBCDField
      FieldName = 'TaxValue'
      Precision = 19
    end
    object qryReciptItems4AddServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptItems4AddYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryReciptItems4AddPortage: TBCDField
      FieldName = 'Portage'
      Precision = 19
    end
    object qryReciptItems4AddArticle: TBCDField
      FieldName = 'Article'
      Precision = 19
    end
    object qryReciptItems4AddWage: TBCDField
      FieldName = 'Wage'
      Precision = 19
    end
    object qryReciptItems4AddScoria: TBCDField
      FieldName = 'Scoria'
      Precision = 19
    end
    object qryReciptItems4AddWaste1: TBCDField
      FieldName = 'Waste1'
      Precision = 18
      Size = 3
    end
    object qryReciptItems4AddWaste2: TBCDField
      FieldName = 'Waste2'
      Precision = 18
      Size = 3
    end
    object qryReciptItems4AddFunction1: TBCDField
      FieldName = 'Function1'
      Precision = 18
      Size = 3
    end
    object qryReciptItems4AddCustomerRate: TBCDField
      FieldName = 'CustomerRate'
      Precision = 19
    end
    object qryReciptItems4AddPestEntity: TBCDField
      FieldName = 'PestEntity'
      Precision = 18
      Size = 2
    end
    object qryReciptItems4AddArzRate: TBCDField
      FieldName = 'ArzRate'
      Precision = 19
    end
    object qryReciptItems4AddInsertTime: TStringField
      FieldName = 'InsertTime'
      Size = 25
    end
    object qryReciptItems4AddEditTime: TStringField
      FieldName = 'EditTime'
      Size = 25
    end
    object qryReciptItems4AddIRow: TIntegerField
      FieldName = 'IRow'
    end
    object qryReciptItems4Addacc_CTopicCode3: TStringField
      FieldName = 'acc_CTopicCode3'
      Size = 12
    end
    object qryReciptItems4AddUnitCommission: TFMTBCDField
      FieldName = 'UnitCommission'
      Precision = 20
      Size = 4
    end
    object qryReciptItems4AddTransFormID: TIntegerField
      FieldName = 'TransFormID'
    end
    object qryReciptItems4AddPrvYearID: TIntegerField
      FieldName = 'PrvYearID'
    end
    object qryReciptItems4AddConfirming: TStringField
      FieldName = 'Confirming'
      Size = 50
    end
    object qryReciptItems4AddStuffCodingItemID: TIntegerField
      FieldName = 'StuffCodingItemID'
    end
    object qryReciptItems4AddLength_: TFMTBCDField
      FieldName = 'Length_'
      Precision = 20
      Size = 4
    end
    object qryReciptItems4AddWidth: TFMTBCDField
      FieldName = 'Width'
      Precision = 20
      Size = 4
    end
    object qryReciptItems4AddDiagnosisCalcTotalPrice: TWordField
      FieldName = 'DiagnosisCalcTotalPrice'
    end
    object qryReciptItems4AddStandardConsumptionCo: TFMTBCDField
      FieldName = 'StandardConsumptionCo'
      Precision = 20
      Size = 4
    end
    object qryReciptItems4AddStandardConsumption: TFloatField
      FieldName = 'StandardConsumption'
      ReadOnly = True
    end
    object qryReciptItems4AddDeficitValue2: TBCDField
      FieldName = 'DeficitValue2'
      Precision = 19
    end
    object qryReciptItems4AddDeficitValue3: TBCDField
      FieldName = 'DeficitValue3'
      Precision = 19
    end
    object qryReciptItems4AddID: TFMTBCDField
      FieldName = 'ID'
      ReadOnly = True
      Precision = 26
      Size = 0
    end
  end
  object qryRecipts4Add: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT        TOP (0) *'
      'FROM            Recipts ')
    Left = 856
    Top = 304
    object qryRecipts4AddReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryRecipts4AddStoreID: TSmallintField
      FieldName = 'StoreID'
    end
    object qryRecipts4AddReciptNumber: TIntegerField
      FieldName = 'ReciptNumber'
    end
    object qryRecipts4AddReciptDate: TStringField
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryRecipts4AddPersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object qryRecipts4AddPersonID2: TIntegerField
      FieldName = 'PersonID2'
    end
    object qryRecipts4AddReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryRecipts4AddSecondType: TIntegerField
      FieldName = 'SecondType'
    end
    object qryRecipts4AddServiceValue: TBCDField
      FieldName = 'ServiceValue'
      Precision = 19
    end
    object qryRecipts4AddReciptValue: TBCDField
      FieldName = 'ReciptValue'
      Precision = 19
    end
    object qryRecipts4AddTotalValue: TBCDField
      FieldName = 'TotalValue'
      Precision = 19
    end
    object qryRecipts4AddAddDecValue: TBCDField
      FieldName = 'AddDecValue'
      Precision = 19
    end
    object qryRecipts4AddDocNo: TIntegerField
      FieldName = 'DocNo'
    end
    object qryRecipts4AddDocDate: TStringField
      FieldName = 'DocDate'
      FixedChar = True
      Size = 10
    end
    object qryRecipts4AddReciptNote: TStringField
      FieldName = 'ReciptNote'
      Size = 400
    end
    object qryRecipts4AddParentReciptID: TIntegerField
      FieldName = 'ParentReciptID'
    end
    object qryRecipts4AddOperatorID: TIntegerField
      FieldName = 'OperatorID'
    end
    object qryRecipts4AddModifyDate: TDateTimeField
      FieldName = 'ModifyDate'
    end
    object qryRecipts4AddReciptState: TWordField
      FieldName = 'ReciptState'
    end
    object qryRecipts4AddUseUnitID: TIntegerField
      FieldName = 'UseUnitID'
    end
    object qryRecipts4AddExpireDate: TStringField
      FieldName = 'ExpireDate'
      FixedChar = True
      Size = 10
    end
    object qryRecipts4AddProjectID: TIntegerField
      FieldName = 'ProjectID'
    end
    object qryRecipts4AddBudgetID: TIntegerField
      FieldName = 'BudgetID'
    end
    object qryRecipts4AddAidNumber: TStringField
      FieldName = 'AidNumber'
      Size = 40
    end
    object qryRecipts4AddAidDate: TStringField
      FieldName = 'AidDate'
      FixedChar = True
      Size = 10
    end
    object qryRecipts4AddFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryRecipts4AddLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryRecipts4AddReciptStartDate: TStringField
      FieldName = 'ReciptStartDate'
      FixedChar = True
      Size = 10
    end
    object qryRecipts4AddReciptEndDate: TStringField
      FieldName = 'ReciptEndDate'
      FixedChar = True
      Size = 10
    end
    object qryRecipts4AddDebtControlActive: TWordField
      FieldName = 'DebtControlActive'
    end
    object qryRecipts4AddStoreID2: TSmallintField
      FieldName = 'StoreID2'
    end
    object qryRecipts4AddTruckNumber: TStringField
      FieldName = 'TruckNumber'
      Size = 100
    end
    object qryRecipts4AddMachineNo: TStringField
      FieldName = 'MachineNo'
      Size = 25
    end
    object qryRecipts4AddMachineName: TStringField
      FieldName = 'MachineName'
      Size = 50
    end
    object qryRecipts4AddArzTypeID: TIntegerField
      FieldName = 'ArzTypeID'
    end
    object qryRecipts4AddRialsEqual: TBCDField
      FieldName = 'RialsEqual'
      Precision = 19
    end
    object qryRecipts4AddUseOtherID: TWideStringField
      FieldName = 'UseOtherID'
      Size = 15
    end
    object qryRecipts4AddReciptsRow: TIntegerField
      FieldName = 'ReciptsRow'
    end
    object qryRecipts4AddSellsMethod: TIntegerField
      FieldName = 'SellsMethod'
    end
    object qryRecipts4AddSellsEmporium: TIntegerField
      FieldName = 'SellsEmporium'
    end
    object qryRecipts4AddMasirID: TIntegerField
      FieldName = 'MasirID'
    end
    object qryRecipts4AddDeliveryID: TIntegerField
      FieldName = 'DeliveryID'
    end
    object qryRecipts4AddPersonID2Bed: TWordField
      FieldName = 'PersonID2Bed'
    end
    object qryRecipts4AddRelatedID: TIntegerField
      FieldName = 'RelatedID'
    end
    object qryRecipts4AddServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryRecipts4AddYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryRecipts4AddPersonID3: TIntegerField
      FieldName = 'PersonID3'
    end
    object qryRecipts4AddCostDownSave: TBCDField
      FieldName = 'CostDownSave'
      Precision = 19
    end
    object qryRecipts4AddDefaultDate: TStringField
      FieldName = 'DefaultDate'
      FixedChar = True
      Size = 10
    end
    object qryRecipts4AddParentCoReciptID: TIntegerField
      FieldName = 'ParentCoReciptID'
    end
    object qryRecipts4AddTransmittal: TIntegerField
      FieldName = 'Transmittal'
    end
    object qryRecipts4AddInsertDate: TDateTimeField
      FieldName = 'InsertDate'
    end
    object qryRecipts4AddMachineInfo: TStringField
      FieldName = 'MachineInfo'
      Size = 50
    end
    object qryRecipts4AddInsertTime: TStringField
      FieldName = 'InsertTime'
      Size = 25
    end
    object qryRecipts4AddEditTime: TStringField
      FieldName = 'EditTime'
      Size = 25
    end
    object qryRecipts4AddPrvYearID: TIntegerField
      FieldName = 'PrvYearID'
    end
    object qryRecipts4AddUserRegistrationDoc: TStringField
      FieldName = 'UserRegistrationDoc'
      Size = 50
    end
    object qryRecipts4AddDefaultDuration: TSmallintField
      FieldName = 'DefaultDuration'
    end
    object qryRecipts4AddCalcGiftItems: TBooleanField
      FieldName = 'CalcGiftItems'
    end
  end
  object qrySellOrder: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = qryInv4SellAfterScroll
    Parameters = <
      item
        Name = 'DateTo'
        DataType = ftWideString
        Size = 10
        Value = '9999/99/99'
      end
      item
        Name = 'YearIDFrom'
        DataType = ftWideString
        Size = 2
        Value = '95'
      end
      item
        Name = 'YearIDTo'
        DataType = ftWideString
        Size = 2
        Value = '95'
      end
      item
        Name = 'storeIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'storeIDTo'
        DataType = ftWideString
        Size = 4
        Value = '9999'
      end
      item
        Name = 'storeID2From'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'storeID2To'
        DataType = ftWideString
        Size = 4
        Value = '9999'
      end
      item
        Name = 'StuffCodeFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'StuffCodeTo'
        DataType = ftWideString
        Size = 6
        Value = '999999'
      end
      item
        Name = 'st1From'
        Size = -1
        Value = Null
      end
      item
        Name = 'st1To'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select '
      ''
      
        #9#9'OperationId as StuffCode  , c_StuffName , n_UnitCode , UnitNam' +
        'e , UnitCode2 , UniteName2 ,  carton ,'
      #9#9'Name ,'
      #9#9'InvEntity , EntityTheWay, EntityTheWay2,  '
      #9#9'EntityAvilable4Sells, '
      
        #9#9'ceiling (((OrderDeliveryTime+ LeadTime) * sellentityDay - (Ent' +
        'ityAvilable4Sells - sellentityDay * LeadTime ) +'
      
        #9#9'(MaximumLife + LeadTime) * sellentityDay - (EntityAvilable4Sel' +
        'ls - sellentityDay * LeadTime )) /2 /carton ) * carton  as Entit' +
        'yorder ,'
      
        #9#9'ceiling (((OrderDeliveryTime+ LeadTime) * sellentityDay - (Ent' +
        'ityAvilable4Sells - sellentityDay * LeadTime ) +'
      
        #9#9'(MaximumLife + LeadTime) * sellentityDay - (EntityAvilable4Sel' +
        'ls - sellentityDay * LeadTime )) /2 /carton ) as WeightOrder , '
      #9#9'sellentityDay * LeadTime as orderEntityPoint , '
      
        #9#9'(OrderDeliveryTime+ LeadTime) * sellentityDay - (EntityAvilabl' +
        'e4Sells - sellentityDay * LeadTime ) as MinOrder ,'
      
        #9#9'(MaximumLife + LeadTime) * sellentityDay - (EntityAvilable4Sel' +
        'ls - sellentityDay * LeadTime ) as MaxOrder ,'
      
        #9#9'OrderDeliveryTime, LeadTime,MaximumLife  ,'#9'sellentity , sellen' +
        'tityDay , '
      ''
      #9#9'BasePrice,OverheadPrice ,TotalPrice ,'
      #9#9'ContractOperationId ,caseno , '
      #9#9'MarginSafety ,ContractDate , StartDate , EndDate  ,'
      ''
      #9#9'Acc_DetailCode'
      ''
      'from '
      '('
      ''
      
        'SELECT'#9'co.OperationId , ST.c_StuffName , St.n_UnitCode , U.UnitN' +
        'ame , St.UnitCode2 , U2.UnitName as UniteName2 , '
      #9#9'LookUps.Name , LookUps.acc_DetailCode ,st.Carton ,'
      
        #9#9'Stock.InvEntity  , Stock.InvWeight , EntityTheWay, WeightTheWa' +
        'y, EntityTheWay2, WeightTheWay2, '
      
        #9#9'isnull(EntityAvilable4Sells,0) as EntityAvilable4Sells , Weigh' +
        'tAvilable4Sells,'
      #9#9'Sells.sellentity ,sells.sellweight  ,'
      
        #9#9'isnull(Sells.sellentity,0) / case when isnull(SellCount,0) = 0' +
        ' then 1 else  isnull(SellCount,0) end as sellentityDay ,'
      
        #9#9'isnull(Sells.sellweight,0) / case when isnull(SellCount,0) = 0' +
        ' then 1 else  isnull(SellCount,0) end as sellweightDay ,'
      
        #9#9'isnull(case when LeadTime = 0 then OrderDeliveryTime else Lead' +
        'Time end,0) as OrderDeliveryTime,'
      
        #9#9'case when LeadTime = 0 then isnull(OrderDeliveryTime,0) else L' +
        'eadTime end +2 as LeadTime,'
      #9#9'isnull(MaximumLife,0) as MaximumLife  ,'
      #9#9'BasePrice,OverheadPrice ,TotalPrice ,'
      #9#9'ContractOperationId ,co.caseno , '
      #9#9'MarginSafety ,C.ContractDate , StartDate , EndDate  '
      ''
      ''
      '  FROM  Cnt.ContractOperations CO INNER JOIN '
      #9#9'Cnt.Contracts C On CO.CaseNo = C.CaseNo INNER JOIN '
      #9#9'( '
      #9#9#9'SELECT OperationId , max(c.contractDate) as contractDate'
      
        #9#9#9'FROM  Cnt.ContractOperations CO inner join Cnt.Contracts C On' +
        ' CO.CaseNo = C.CaseNo'
      #9#9#9'Group by OperationId '
      #9#9') CntActive on  CntActive.OperationId = Co.OperationId and '
      #9#9#9#9#9#9'CntActive.contractDate = C.ContractDate INNER JOIN '
      
        #9#9'StuffCoding ST  on Co.OperationId = ST.c_StuffCode Left Outer ' +
        'Join '
      #9#9'Units U ON ST.n_UnitCode = U.UnitCode Left Outer Join '
      #9#9'Units U2 On st.UnitCode2 = U2.UnitCode  LEFT OUTER JOIN'
      
        #9#9'(select * from LookUps where kind = 301 ) LookUps  on LookUps.' +
        'Code = ST.st1 Left Outer Join '
      #9#9'('
      
        #9#9#9'SELECT'#9'Inv4Sell.ServerID, Inv4Sell.YearID, Inv4Sell.StoreID, ' +
        'Inv4Sell.StuffCode, '
      
        #9#9#9#9#9'Inv4Sell.InvEntity, Inv4Sell.InvWeight, Inv4Sell.EntityTheW' +
        'ay, Inv4Sell.WeightTheWay, '
      #9#9#9#9#9'Inv4Sell.EntityTheWay2, Inv4Sell.WeightTheWay2, '
      
        #9#9#9#9#9'Inv4Sell.EntityAvilable4Sells, Inv4Sell.WeightAvilable4Sell' +
        's '
      
        #9#9#9'FROM'#9'dbo.InventoryAvilable4Sells(DEFAULT , :DateTo , :YearIDF' +
        'rom , :YearIDTo , :storeIDFrom , :storeIDTo) AS Inv4Sell  '
      #9#9#9'WHERE'#9'(EntityAvilable4Sells < 0)  '
      #9#9') Stock on Co.OperationId = stock.StuffCode Left Outer Join '
      #9#9'('
      
        #9#9#9'SELECT StuffCode , OutputEntity -InputEntity as SellEntity ,O' +
        'utputWeight - InputWeight  as SellWeight ,'
      #9#9#9#9'7 as SellCount'
      #9#9#9'FROM  ReciptItems RI inner join '
      
        #9#9#9#9#9'Recipts R on R.ServerID = RI.ServerID And R.YearID = RI.Yea' +
        'rID and R.ReciptID = RI.ReciptID INNER JOIN '
      #9#9#9#9#9'ReciptTypes on R.recipttype = ReciptTypes.ReciptType  '
      #9#9'  '
      ' '
      #9#9#9'Where SellEffect <>0 and '
      #9#9#9#9#9'StoreId Between :storeID2From and :storeID2To  and '
      
        #9#9#9#9#9'dbo.shamsitomiladi(Reciptdate) between cast( DATEADD(DAY, -' +
        '7, getdate()) as date) and  getdate() '
      #9#9') Sells on Co.OperationId = Sells.StuffCode '
      'where (CO.OperationId between :StuffCodeFrom and :StuffCodeTo)'
      '  AND (ST.st1 BETWEEN :st1From AND :st1To )'
      ''
      ') SqlText '
      
        'where '#9#9'ceiling (((OrderDeliveryTime+ LeadTime) * sellentityDay ' +
        '- (EntityAvilable4Sells - sellentityDay * LeadTime ) +'
      
        #9#9'(MaximumLife + LeadTime) * sellentityDay - (EntityAvilable4Sel' +
        'ls - sellentityDay * LeadTime )) /2 /carton ) * carton <>0'
      '')
    Left = 320
    Top = 8
    object qrySellOrderStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1705#1583' '#1705#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qrySellOrderc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1705#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 40
    end
    object qrySellOrderUnitName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583
      FieldName = 'UnitName'
      Size = 10
    end
    object qrySellOrderUniteName2: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583' 2'
      FieldName = 'UniteName2'
      Size = 10
    end
    object qrySellOrdercarton: TFloatField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583' '#1583#1585' '#1705#1575#1585#1578#1606
      FieldName = 'carton'
    end
    object qrySellOrderName: TStringField
      Tag = 3
      DisplayLabel = #1576#1585#1606#1583
      FieldName = 'Name'
      Size = 10
    end
    object qrySellOrderInvEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1608#1580#1608#1583#1740' '#1608#1575#1602#1593#1740'|'#1605#1602#1583#1575#1585
      FieldName = 'InvEntity'
      ReadOnly = True
    end
    object qrySellOrderEntityTheWay: TFloatField
      Tag = 3
      DisplayLabel = #1705#1575#1604#1575#1740' '#1583#1585' '#1585#1575#1607'|'#1605#1602#1583#1575#1585
      FieldName = 'EntityTheWay'
      ReadOnly = True
    end
    object qrySellOrderEntityTheWay2: TFloatField
      Tag = 3
      DisplayLabel = #1587#1601#1575#1585#1588#1575#1578'|'#1605#1602#1583#1575#1585
      FieldName = 'EntityTheWay2'
      ReadOnly = True
    end
    object qrySellOrderEntityAvilable4Sells: TFloatField
      Tag = 3
      DisplayLabel = #1605#1575#1606#1583#1607' '#1606#1607#1575#1740#1740'|'#1605#1602#1583#1575#1585
      FieldName = 'EntityAvilable4Sells'
      ReadOnly = True
    end
    object qrySellOrderEntityorder: TFloatField
      Tag = 3
      DisplayLabel = #1602#1575#1576#1604' '#1587#1601#1575#1585#1588'|'#1605#1602#1583#1575#1585
      FieldName = 'Entityorder'
      ReadOnly = True
    end
    object qrySellOrderWeightOrder: TFloatField
      Tag = 3
      DisplayLabel = #1602#1575#1576#1604' '#1587#1601#1575#1585#1588'|'#1608#1586#1606
      FieldName = 'WeightOrder'
      ReadOnly = True
    end
    object qrySellOrderorderEntityPoint: TFloatField
      Tag = 3
      DisplayLabel = #1606#1602#1591#1607' '#1587#1601#1575#1585#1588
      FieldName = 'orderEntityPoint'
      ReadOnly = True
    end
    object qrySellOrderMinOrder: TFloatField
      Tag = 3
      DisplayLabel = #1581#1583' '#1587#1601#1575#1585#1588'|'#1581#1583#1575#1602#1604
      FieldName = 'MinOrder'
      ReadOnly = True
    end
    object qrySellOrderMaxOrder: TFloatField
      Tag = 3
      DisplayLabel = #1581#1583' '#1587#1601#1575#1585#1588'|'#1581#1583#1575#1705#1579#1585
      FieldName = 'MaxOrder'
      ReadOnly = True
    end
    object qrySellOrderOrderDeliveryTime: TIntegerField
      Tag = 3
      DisplayLabel = #1586#1605#1575#1606' '#1587#1601#1575#1585#1588'|'#1591#1576#1602' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'OrderDeliveryTime'
      ReadOnly = True
    end
    object qrySellOrderLeadTime: TIntegerField
      Tag = 3
      DisplayLabel = #1586#1605#1575#1606' '#1587#1601#1575#1585#1588'|'#1578#1575' '#1578#1581#1608#1740#1604
      FieldName = 'LeadTime'
      ReadOnly = True
    end
    object qrySellOrderMaximumLife: TIntegerField
      Tag = 3
      DisplayLabel = #1581#1583#1575#1705#1579#1585' '#1586#1605#1575#1606' '#1606#1711#1607#1583#1575#1585#1740' '#1705#1575#1604#1575
      FieldName = 'MaximumLife'
    end
    object qrySellOrdersellentity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1601#1585#1608#1588' '#1607#1601#1578#1607' '#1580#1575#1585#1740
      FieldName = 'sellentity'
      ReadOnly = True
    end
    object qrySellOrdersellentityDay: TFloatField
      Tag = 3
      DisplayLabel = #1605#1740#1575#1606#1711#1740#1606' '#1601#1585#1608#1588' '#1585#1608#1586#1575#1606#1607
      FieldName = 'sellentityDay'
      ReadOnly = True
    end
    object qrySellOrderBasePrice: TBCDField
      Tag = 3
      DisplayLabel = #1602#1740#1605#1578'|'#1605#1589#1585#1601' '#1705#1606#1606#1583#1607' '#1606#1607#1575#1740#1740
      FieldName = 'BasePrice'
      Precision = 19
    end
    object qrySellOrderOverheadPrice: TBCDField
      Tag = 3
      DisplayLabel = #1602#1740#1605#1578'|'#1601#1585#1608#1588#1711#1575#1607
      FieldName = 'OverheadPrice'
      Precision = 19
    end
    object qrySellOrderTotalPrice: TBCDField
      Tag = 3
      DisplayLabel = #1602#1740#1605#1578'|'#1582#1585#1740#1583
      FieldName = 'TotalPrice'
      Precision = 19
    end
    object qrySellOrdercaseno: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1606#1575#1587#1607' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'Caseno'
    end
    object qrySellOrderMarginSafety: TIntegerField
      Tag = 3
      DisplayLabel = #1581#1575#1588#1740#1607' '#1575#1740#1605#1606#1740
      FieldName = 'MarginSafety'
    end
    object qrySellOrderContractDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1740#1582' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'ContractDate'
      FixedChar = True
      Size = 10
    end
    object qrySellOrderStartDate: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1608#1593' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'StartDate'
      FixedChar = True
      Size = 10
    end
    object qrySellOrderEndDate: TStringField
      Tag = 3
      DisplayLabel = #1662#1575#1740#1575#1606' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'EndDate'
      FixedChar = True
      Size = 10
    end
    object qrySellOrderAcc_DetailCode: TStringField
      Tag = 3
      DisplayLabel = #1705#1583' '#1578#1601#1589#1740#1604#1740' '#1576#1585#1606#1583
      FieldName = 'Acc_DetailCode'
      Size = 12
    end
  end
end
