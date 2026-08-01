inherited rptCompare_Count_EntityF: TrptCompare_Count_EntityF
  Left = 403
  Top = 150
  Caption = #1711#1586#1575#1585#1588' '#1605#1608#1580#1608#1583#1610' '#1662#1575#1610#1575#1606' '#1583#1608#1585#1607
  ClientWidth = 802
  ExplicitWidth = 810
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 457
    Width = 802
    ExplicitTop = 457
    ExplicitWidth = 802
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
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
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
      TabOrder = 2
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
      TabOrder = 3
    end
    object DBNavigator2: TDBNavigator
      AlignWithMargins = True
      Left = 490
      Top = 7
      Width = 227
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      DataSource = SrcCountingItems
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      TabOrder = 4
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 723
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662' (F7)'
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      TabOrder = 6
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 409
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1579#1576#1578#8207#1603#1587#1585#1610'...'
      TabOrder = 7
      OnClick = BitBtn2Click
    end
  end
  inherited Panel2: TPanel
    Width = 802
    ExplicitWidth = 802
    DesignSize = (
      802
      53)
    inherited ImgTemplate: TImage
      Left = 782
      ExplicitLeft = 782
    end
    inherited lblCaption: TLabel
      Left = 694
      ExplicitLeft = 694
    end
  end
  inherited Panel3: TPanel
    Top = 170
    Width = 628
    Height = 287
    ExplicitTop = 170
    ExplicitWidth = 628
    ExplicitHeight = 287
    object DBGrid1: TCedarDbgrid
      Left = 2
      Top = 2
      Width = 624
      Height = 283
      Align = alClient
      Color = clCream
      DataSource = SrcCountingItems
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
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
          Title.TitleButton = True
          Width = 21
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'c_StuffName'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'UnitName'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'c_StuffTecInfo'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StuffSize'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'StuffDiameter'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StuffAlloy'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StuffGrade'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ControlCode'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'Count1Entity'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Count1Weight'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'Count2Entity'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Count2Weight'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'Count3Entity'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Count3Weight'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'Entity'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Weight'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'Price'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'TotallSellPrice'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'DifferEntity'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DifferWeight'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'DifferPrice'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DifferTotallSellPrice'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'OtherEntity'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OtherWeight'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'OtherPrice'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'OtherTotallSellPrice'
          Footers = <>
          Title.TitleButton = True
          Width = 21
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object StatusBar1: TStatusBar [3]
    Left = 0
    Top = 498
    Width = 802
    Height = 19
    BiDiMode = bdRightToLeft
    Panels = <
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 50
      end>
    ParentBiDiMode = False
  end
  object Panel4: TPanel [4]
    Left = 628
    Top = 170
    Width = 174
    Height = 287
    Align = alRight
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 4
    Visible = False
    object Label4: TLabel
      Left = 1
      Top = 1
      Width = 172
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = #1579#1576#1578' '#1603#1587#1585#1610' '#1608' '#1575#1590#1575#1601#1575#1578' '#1603#1575#1604#1575#1610' '#1575#1606#1576#1575#1585
      WordWrap = True
      ExplicitWidth = 143
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 94
      Width = 172
      Height = 80
      Align = alTop
      Caption = ' '#1601#1585#1605' '#1582#1585#1608#1580#1610' '
      TabOrder = 0
      DesignSize = (
        172
        80)
      object LblRecNo: TLabel
        Left = 117
        Top = 52
        Width = 50
        Height = 13
        Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
      end
      object mskNumberfrom4: TMaskEdit
        Left = 5
        Top = 48
        Width = 110
        Height = 21
        TabOrder = 0
        Text = ''
      end
      object CmbEffectType4: TComboBox
        Tag = 4
        Left = 4
        Top = 22
        Width = 163
        Height = 21
        AutoDropDown = True
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        Color = 14024703
        TabOrder = 1
        OnChange = CmbEffectType2Change
      end
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 14
      Width = 172
      Height = 80
      Align = alTop
      Caption = ' '#1601#1585#1605' '#1608#1585#1608#1583#1610' '
      TabOrder = 1
      DesignSize = (
        172
        80)
      object Label3: TLabel
        Left = 117
        Top = 52
        Width = 50
        Height = 13
        Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
      end
      object CmbEffectType2: TComboBox
        Tag = 2
        Left = 4
        Top = 22
        Width = 163
        Height = 21
        AutoDropDown = True
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        Color = 14024703
        TabOrder = 0
        OnChange = CmbEffectType2Change
      end
      object mskNumberfrom2: TMaskEdit
        Left = 5
        Top = 48
        Width = 110
        Height = 21
        TabOrder = 1
        Text = ''
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 252
      Width = 172
      Height = 34
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        172
        34)
      object BitBtn15: TBitBtn
        Left = 92
        Top = 5
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1579#1576#1578' '#1601#1585#1605#1607#1575
        TabOrder = 0
        OnClick = BitBtn15Click
      end
    end
  end
  object Panel1: TPanel [5]
    Left = 0
    Top = 53
    Width = 802
    Height = 117
    Align = alTop
    BevelInner = bvRaised
    TabOrder = 5
    DesignSize = (
      802
      117)
    object Label1: TLabel
      Left = 131
      Top = 121
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Anchors = [akLeft, akBottom]
      AutoSize = False
      Caption = #1601#1575#1610#1604' '#1662#1610#1608#1587#1578#1610
      ExplicitTop = 58
    end
    object Label2: TLabel
      Left = 514
      Top = 9
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #1601#1575#1610#1604' '#1662#1610#1608#1587#1578#1610
      ExplicitLeft = 502
    end
    object Label8: TLabel
      Left = 723
      Top = 9
      Width = 50
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
      ExplicitLeft = 711
    end
    object LblReciptDate: TLabel
      Left = 723
      Top = 32
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #1578#1575#1585#1610#1582' '#1601#1585#1605
      ExplicitLeft = 711
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 2
      Width = 335
      Height = 64
      Align = alLeft
      Caption = ' '#1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610' '
      TabOrder = 0
      object DBMemo1: TDBMemo
        Left = 2
        Top = 15
        Width = 331
        Height = 47
        Align = alClient
        Color = 15461355
        Ctl3D = False
        DataField = 'Note'
        DataSource = SrcCounting
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object DBEdit1: TDBEdit
      Left = 6
      Top = 118
      Width = 123
      Height = 19
      Anchors = [akLeft, akBottom]
      Color = 15461355
      Ctl3D = False
      DataField = 'AttachFileName'
      DataSource = SrcCounting
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 388
      Top = 6
      Width = 123
      Height = 19
      Anchors = [akTop, akRight]
      Color = 15461355
      Ctl3D = False
      DataField = 'AttachFileName'
      DataSource = SrcCounting
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 649
      Top = 5
      Width = 71
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'CountNumber'
      DataSource = SrcCounting
      TabOrder = 3
    end
    object btnCountNumber: TBitBtn
      Left = 626
      Top = 5
      Width = 22
      Height = 21
      Anchors = [akTop, akRight]
      Caption = '...'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnCountNumberClick
    end
    object DBEditDate: TDBEdit
      Left = 650
      Top = 29
      Width = 70
      Height = 19
      Anchors = [akTop, akRight]
      Color = 15461355
      Ctl3D = False
      DataField = 'CountDate'
      DataSource = SrcCounting
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBNavigator1: TDBNavigator
      Left = 388
      Top = 29
      Width = 180
      Height = 18
      DataSource = SrcCounting
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akTop, akRight]
      Flat = True
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 6
    end
    object Panel6: TPanel
      Left = 2
      Top = 66
      Width = 798
      Height = 49
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 7
      object chkNoCountingItems: TCheckBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 350
        Height = 43
        Margins.Right = 10
        Align = alLeft
        Caption = 
          #1570#1740#1575' '#1605#1608#1580#1608#1583#1740' '#1575#1602#1604#1575#1605' '#1601#1575#1602#1583' '#1588#1605#1575#1585#1588' '#1576#1593#1606#1608#1575#1606' '#1605#1608#1580#1608#1583#1740' '#1606#1607#1575#1740#1740' '#1583#1585' '#1606#1592#1585' '#1711#1585#1601#1578#1607' '#1588#1608#1583 +
          '.'
        TabOrder = 0
        OnClick = chkNoCountingItemsClick
      end
      object dbrgrpCountingCalckind: TDBRadioGroup
        Left = 363
        Top = 0
        Width = 435
        Height = 49
        Align = alClient
        Caption = ' '#1606#1581#1608#1607' '#1605#1581#1575#1587#1576#1607' '#1605#1608#1580#1608#1583#1740' '#1606#1607#1575#1740#1740'  '
        Columns = 2
        DataField = 'CountingCalckind'
        DataSource = SrcCounting
        Items.Strings = (
          '')
        TabOrder = 1
        Values.Strings = (
          '0'
          '1'
          '2')
      end
    end
  end
  inherited ActionList: TActionList
    Left = 528
    Top = 6
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' (F7)'
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 440
    Top = 5
  end
  object SrcCounting: TDataSource
    DataSet = qryCounting
    Left = 200
    Top = 4
  end
  object qryCounting: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryCountingAfterScroll
    Parameters = <
      item
        Name = 'CountDateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'CountDateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      #13'SELECT     *'
      'FROM         Counting'
      'WHERE     (CountDate BETWEEN :CountDateFrom  AND :CountDateTo )'
      'order by CountNumber')
    Left = 280
    Top = 4
    object qryCountingCountID: TIntegerField
      FieldName = 'CountID'
    end
    object qryCountingCountNumber: TIntegerField
      FieldName = 'CountNumber'
    end
    object qryCountingCountDate: TStringField
      FieldName = 'CountDate'
      FixedChar = True
      Size = 10
    end
    object qryCountingNote: TStringField
      FieldName = 'Note'
      Size = 255
    end
    object qryCountingAttachFileName: TStringField
      FieldName = 'AttachFileName'
      Size = 150
    end
    object qryCountingFormSignature: TStringField
      FieldName = 'FormSignature'
      Size = 250
    end
    object qryCountingState: TWordField
      FieldName = 'State'
    end
    object qryCountingCountingCalckind: TWordField
      FieldName = 'CountingCalckind'
    end
  end
  object qryCountingItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'YearIDFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearIDTo'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Date'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'StoreID'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 0
      end
      item
        Name = 'CountID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'chkNoCountingItems'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT *  FROM Fn_rptCompare_Count_Entity ( :YearIDFrom  , :Year' +
        'IDTo , :Date , :StoreID , :CountID   ,:chkNoCountingItems   )'
      ''
      'ORDER BY StuffCode'
      ''
      '')
    Left = 133
    Top = 241
    object qryCountingItemsStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryCountingItemsc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qryCountingItemsUnitName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
      FieldName = 'UnitName'
      Size = 50
    end
    object qryCountingItemsc_StuffTecInfo: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1601#1606#1610
      FieldName = 'c_StuffTecInfo'
      Size = 30
    end
    object qryCountingItemsStuffSize: TStringField
      Tag = 3
      DisplayLabel = #1575#1576#1593#1575#1583
      FieldName = 'StuffSize'
      Size = 12
    end
    object qryCountingItemsStuffDiameter: TFloatField
      Tag = 3
      DisplayLabel = #1590#1582#1575#1605#1578
      FieldName = 'StuffDiameter'
    end
    object qryCountingItemsStuffAlloy: TStringField
      Tag = 3
      DisplayLabel = #1570#1604#1610#1575#1688
      FieldName = 'StuffAlloy'
      Size = 12
    end
    object qryCountingItemsStuffGrade: TWordField
      Tag = 3
      DisplayLabel = #1583#1585#1580#1607
      FieldName = 'StuffGrade'
    end
    object qryCountingItemsControlCode: TLargeintField
      Tag = 3
      DisplayLabel = #1585#1575#1607#1606#1605#1575
      FieldName = 'ControlCode'
    end
    object qryCountingItemsc_StoreName: TStringField
      FieldName = 'c_StoreName'
      Size = 70
    end
    object qryCountingItemsCount1Entity: TFMTBCDField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585'1'
      FieldName = 'Count1Entity'
      Precision = 38
    end
    object qryCountingItemsCount1Weight: TFMTBCDField
      Tag = 3
      DisplayLabel = #1608#1586#1606'1'
      FieldName = 'Count1Weight'
      Precision = 38
    end
    object qryCountingItemsCount2Entity: TFMTBCDField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585'2'
      FieldName = 'Count2Entity'
      Precision = 38
    end
    object qryCountingItemsCount2Weight: TFMTBCDField
      Tag = 3
      DisplayLabel = #1608#1586#1606'2'
      FieldName = 'Count2Weight'
      Precision = 38
    end
    object qryCountingItemsCount3Entity: TFMTBCDField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585'3'
      FieldName = 'Count3Entity'
      Precision = 38
    end
    object qryCountingItemsCount3Weight: TFMTBCDField
      Tag = 3
      DisplayLabel = #1608#1586#1606'3'
      FieldName = 'Count3Weight'
      Precision = 38
    end
    object qryCountingItemsEntity: TFMTBCDField
      Tag = 3
      DisplayLabel = #1605#1608#1580#1608#1583#1610' '#1603#1575#1585#1583#1603#1587'('#1605#1602#1583#1575#1585')'
      FieldName = 'Entity'
      Precision = 38
    end
    object qryCountingItemsWeight: TFMTBCDField
      Tag = 3
      DisplayLabel = #1605#1608#1580#1608#1583#1610' '#1603#1575#1585#1583#1603#1587'('#1608#1586#1606')'
      FieldName = 'Weight'
      Precision = 38
    end
    object qryCountingItemsDifferEntity: TFMTBCDField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'DifferEntity'
      Precision = 38
    end
    object qryCountingItemsDifferWeight: TFMTBCDField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'DifferWeight'
      Precision = 38
    end
    object qryCountingItemsOtherEntity: TFMTBCDField
      Tag = 3
      DisplayLabel = #1578#1601#1575#1608#1578' '#1605#1602#1583#1575#1585
      FieldName = 'OtherEntity'
      Precision = 38
    end
    object qryCountingItemsOtherWeight: TFMTBCDField
      Tag = 3
      DisplayLabel = #1578#1601#1575#1608#1578' '#1608#1586#1606
      FieldName = 'OtherWeight'
      Precision = 38
    end
    object qryCountingItemsDifferTotallSellPrice: TFMTBCDField
      Tag = 3
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607' '#1605#1608#1580#1608#1583#1610
      FieldName = 'DifferTotallSellPrice'
      currency = True
      Precision = 30
      Size = 0
    end
    object qryCountingItemsPrice: TFMTBCDField
      Tag = 3
      DisplayLabel = #1605#1608#1580#1608#1583#1610' '#1603#1575#1585#1583#1603#1587'('#1605#1576#1604#1594')'
      FieldName = 'Price'
      currency = True
      Precision = 30
      Size = 0
    end
    object qryCountingItemsDifferPrice: TFMTBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1605#1608#1580#1608#1583#1610
      FieldName = 'DifferPrice'
      currency = True
      Precision = 30
      Size = 0
    end
    object qryCountingItemsTotallSellPrice: TFMTBCDField
      Tag = 3
      DisplayLabel = #1605#1608#1580#1608#1583#1610' '#1603#1575#1585#1583#1603#1587'('#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607')'
      FieldName = 'TotallSellPrice'
      currency = True
      Precision = 30
      Size = 0
    end
    object qryCountingItemsOtherPrice: TFMTBCDField
      Tag = 3
      DisplayLabel = #1578#1601#1575#1608#1578' '#1605#1576#1604#1594
      FieldName = 'OtherPrice'
      currency = True
    end
    object qryCountingItemsOtherTotallSellPrice: TFMTBCDField
      Tag = 3
      DisplayLabel = #1578#1601#1575#1608#1578' '#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'OtherTotallSellPrice'
      currency = True
      Precision = 30
      Size = 0
    end
    object qryCountingItemsSellPrice1: TFMTBCDField
      Tag = 3
      DisplayLabel = #1576#1607#1575#1610' '#1601#1585#1608#1588
      FieldName = 'SellPrice1'
      Precision = 30
      Size = 0
    end
    object qryCountingItemsStoreID: TIntegerField
      FieldName = 'StoreID'
      ReadOnly = True
    end
  end
  object SrcCountingItems: TDataSource
    DataSet = qryCountingItems
    Left = 304
    Top = 257
  end
  object PopMenu: TPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 459
    Top = 336
    object AllC_l_i_c_k_: TMenuItem
      Caption = #1670#1575#1662' 1'
      OnClick = AllC_l_i_c_k_Click
    end
    object N11: TMenuItem
      Tag = 2
      Caption = #1670#1575#1662' 2'
      OnClick = AllC_l_i_c_k_Click
    end
    object N21: TMenuItem
      Tag = 3
      Caption = #1670#1575#1662' 3'
      OnClick = AllC_l_i_c_k_Click
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = SrcCountingItems
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 445
    Top = 276
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
    Template.FileName = 
      'D:\Projects\Fara\BSell\Exe\Report\rptCompare_Count_ActiveSellPri' +
      'ce2.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
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
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.DropBoxSettings.SharedResources = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.GoogleDriveSettings.SharedResources = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    CloudDriveSettings.OneDriveSettings.SharedResources = True
    Left = 480
    Top = 224
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 31485
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 14288
        mmLeft = 0
        mmTop = 17197
        mmWidth = 284300
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 116681
        mmTop = 1058
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = #1711#1586#1575#1585#1588' '#1605#1602#1575#1610#1587#1607' '#1575#1610' '#1588#1605#1575#1585#1588' '#1575#1606#1576#1575#1585' '#1576#1575' '#1605#1608#1580#1608#1583#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8467
        mmLeft = 104246
        mmTop = 8467
        mmWidth = 75671
        BandType = 0
        LayerName = Foreground
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lbprintdate'
        OnGetText = ppLblPrintDateGetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1711#1586#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 9790
        mmTop = 1058
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1603#1575#1604#1575
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 265113
        mmTop = 21431
        mmWidth = 18785
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 264584
        mmTop = 17463
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1603#1575#1604#1575
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 213255
        mmTop = 21431
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 212725
        mmTop = 17463
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6085
        mmLeft = 195527
        mmTop = 21696
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 194998
        mmTop = 17463
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 182827
        mmTop = 24606
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 182298
        mmTop = 24077
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1576#1607#1575#1610#8207#1578#1605#1575#1605#8207#1588#1583#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 166952
        mmTop = 24606
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 166423
        mmTop = 17463
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 154252
        mmTop = 24606
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 153723
        mmTop = 24077
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1576#1607#1575#1610#8207#1578#1605#1575#1605#8207#1588#1583#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 138377
        mmTop = 24606
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 137848
        mmTop = 17463
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 125677
        mmTop = 24606
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line26'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 125148
        mmTop = 24077
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1576#1607#1575#1610#8207#1578#1605#1575#1605#8207#1588#1583#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 109802
        mmTop = 24606
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line30'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 96573
        mmTop = 17463
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6085
        mmLeft = 84402
        mmTop = 24606
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line34'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 83873
        mmTop = 24077
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1576#1607#1575#1610#8207#1578#1605#1575#1605#8207#1588#1583#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 68527
        mmTop = 24606
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line38'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 67998
        mmTop = 24077
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 49213
        mmTop = 24606
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line42'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 48683
        mmTop = 17463
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 35719
        mmTop = 24606
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line46'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 35190
        mmTop = 24077
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1576#1607#1575#1610#8207#1578#1605#1575#1605#8207#1588#1583#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 19844
        mmTop = 24606
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line50'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 19315
        mmTop = 24077
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 529
        mmTop = 24606
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = #1578#1601#1575#1608#1578' '#1588#1605#1575#1585#1588' '#1608' '#1603#1575#1585#1583#1603#1587
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6011
        mmLeft = 56674
        mmTop = 17727
        mmWidth = 32173
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1588' '#1575#1608#1604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6011
        mmLeft = 166952
        mmTop = 17727
        mmWidth = 27517
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1588' '#1583#1608#1605
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 138377
        mmTop = 17727
        mmWidth = 27781
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label201'
        Border.mmPadding = 0
        Caption = #1605#1608#1580#1608#1583#1610' '#1603#1575#1585#1583#1603#1587
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6011
        mmLeft = 106336
        mmTop = 17727
        mmWidth = 22013
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        Border.mmPadding = 0
        Caption = #1605#1608#1580#1608#1583#1610' '#1606#1607#1575#1610#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 529
        mmTop = 17727
        mmWidth = 47890
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line54'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 24077
        mmWidth = 194998
        BandType = 0
        LayerName = Foreground
      end
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNo'
        OnGetText = ppSysVarPageNoGetText
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
        mmTop = 8731
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 97102
        mmTop = 24606
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line63'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 109273
        mmTop = 24077
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7409
      mmPrintPosition = 0
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 281517
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLin4Position: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Lin4Position'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'StuffCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 265113
        mmTop = 0
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 264584
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'c_StuffName'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 213255
        mmTop = 0
        mmWidth = 51065
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 212725
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'UnitName'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 195527
        mmTop = 0
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 194998
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'Count1Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 182827
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 182298
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'TotallSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 166952
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 166423
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Count2Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 154252
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 153723
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'TotallSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 138377
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 137848
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 125677
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line27'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 125148
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'TotallSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 109802
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line31'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 109273
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'OtherEntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 84402
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line35'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 83873
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'OtherTotallSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 68527
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line39'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 67998
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'OtherPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 49213
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line43'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 48683
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'DifferEntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 35719
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line47'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 35190
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'DifferTotallSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 19844
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line51'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 19315
        mmTop = 0
        mmWidth = 1323
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'DifferPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 529
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line55'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 97102
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line60'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 96573
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 9497
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 7673
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1606#1602#1604' '#1576#1607'..'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 208757
        mmTop = 794
        mmWidth = 15610
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 264584
        mmTop = 0
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'Count1Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 182827
        mmTop = 529
        mmWidth = 11906
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 182298
        mmTop = 265
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        Border.mmPadding = 0
        DataField = 'TotallSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 166952
        mmTop = 529
        mmWidth = 15081
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 166423
        mmTop = 265
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc8'
        Border.mmPadding = 0
        DataField = 'Count2Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 154252
        mmTop = 529
        mmWidth = 11906
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 153723
        mmTop = 265
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc10'
        Border.mmPadding = 0
        DataField = 'TotallSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 138377
        mmTop = 529
        mmWidth = 15081
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 137848
        mmTop = 265
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc12'
        Border.mmPadding = 0
        DataField = 'Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 125677
        mmTop = 529
        mmWidth = 11906
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line29'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 125148
        mmTop = 265
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc14'
        Border.mmPadding = 0
        DataField = 'TotallSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 109802
        mmTop = 529
        mmWidth = 15081
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line33'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 109273
        mmTop = 265
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc16'
        Border.mmPadding = 0
        DataField = 'OtherEntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 84402
        mmTop = 529
        mmWidth = 11906
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line37'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 83873
        mmTop = 265
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc18'
        Border.mmPadding = 0
        DataField = 'OtherTotallSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 68527
        mmTop = 529
        mmWidth = 15081
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line41'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 67998
        mmTop = 265
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc20'
        Border.mmPadding = 0
        DataField = 'OtherPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 49213
        mmTop = 529
        mmWidth = 18521
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line45'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 48683
        mmTop = 529
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc22'
        Border.mmPadding = 0
        DataField = 'DifferEntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 35719
        mmTop = 529
        mmWidth = 12700
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line49'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 35190
        mmTop = 0
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc24'
        Border.mmPadding = 0
        DataField = 'DifferTotallSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 19844
        mmTop = 529
        mmWidth = 15000
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line53'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 19315
        mmTop = 0
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc26'
        Border.mmPadding = 0
        DataField = 'DifferPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 529
        mmTop = 529
        mmWidth = 18521
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line57'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line58'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 194998
        mmTop = 265
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'StuffCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6519
        mmLeft = 265642
        mmTop = 529
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc201'
        Border.mmPadding = 0
        DataField = 'Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 97102
        mmTop = 529
        mmWidth = 11906
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line61'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 96573
        mmTop = 265
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 264584
        mmTop = 0
        mmWidth = 2646
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'Count1Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 182827
        mmTop = 529
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.mmPadding = 0
        DataField = 'TotallSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 166952
        mmTop = 529
        mmWidth = 15081
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 166423
        mmTop = 0
        mmWidth = 2646
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc7'
        Border.mmPadding = 0
        DataField = 'Count2Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 154252
        mmTop = 529
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 153723
        mmTop = 0
        mmWidth = 2646
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc9'
        Border.mmPadding = 0
        DataField = 'TotallSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 138377
        mmTop = 529
        mmWidth = 15081
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line24'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 137848
        mmTop = 0
        mmWidth = 2646
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc11'
        Border.mmPadding = 0
        DataField = 'Entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 125677
        mmTop = 529
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line28'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 125148
        mmTop = 0
        mmWidth = 2646
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc13'
        Border.mmPadding = 0
        DataField = 'TotallSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 109802
        mmTop = 529
        mmWidth = 15081
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line32'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 109273
        mmTop = 0
        mmWidth = 2646
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc15'
        Border.mmPadding = 0
        DataField = 'OtherEntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 84402
        mmTop = 529
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line36'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 83873
        mmTop = 0
        mmWidth = 2646
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc17'
        Border.mmPadding = 0
        DataField = 'OtherTotallSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 68527
        mmTop = 529
        mmWidth = 15081
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line40'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 67998
        mmTop = 0
        mmWidth = 2646
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc19'
        Border.mmPadding = 0
        DataField = 'OtherPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 49213
        mmTop = 529
        mmWidth = 18521
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line44'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 48683
        mmTop = 0
        mmWidth = 2646
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc21'
        Border.mmPadding = 0
        DataField = 'DifferEntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 35719
        mmTop = 529
        mmWidth = 12700
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line48'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 35190
        mmTop = 0
        mmWidth = 2646
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc23'
        Border.mmPadding = 0
        DataField = 'DifferTotallSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 19844
        mmTop = 529
        mmWidth = 15081
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line52'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 19315
        mmTop = 0
        mmWidth = 2646
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc25'
        Border.mmPadding = 0
        DataField = 'DifferPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 529
        mmTop = 529
        mmWidth = 18521
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line56'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line59'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 194998
        mmTop = 0
        mmWidth = 2646
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 182298
        mmTop = 0
        mmWidth = 2646
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'StuffCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 266701
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc27'
        Border.mmPadding = 0
        DataField = 'Price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 97102
        mmTop = 529
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line62'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 96573
        mmTop = 265
        mmWidth = 2646
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
  object qryItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryItemsAfterInsert
    Parameters = <>
    SQL.Strings = (
      'SELECT  * FROM      ReciptItems'
      'WHERE     (ReciptItemID = 0)')
    Left = 253
    Top = 353
  end
  object qry1: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'YearIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'Date'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearID2From'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearID2To'
        Size = -1
        Value = Null
      end
      item
        Name = 'Date2'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearID3From'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearID3To'
        Size = -1
        Value = Null
      end
      item
        Name = 'Date3'
        Size = -1
        Value = Null
      end
      item
        Name = 'StoreID'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'CountID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     AllStuffCode.StoreID, AllStuffCode.StuffCode, StuffCo' +
        'ding.c_StuffName,StuffCoding.c_StuffTecInfo, Units.UnitName, Stu' +
        'ffCodeCountingItems.StuffSize,'
      
        '                      StuffCodeCountingItems.StuffDiameter, Stuf' +
        'fCodeCountingItems.StuffAlloy, StuffCodeCountingItems.StuffGrade' +
        ', StuffCodeCountingItems.ControlCode,'
      
        '                      StuffCodeCountingItems.Count1Entity, Stuff' +
        'CodeCountingItems.Count1Weight, StuffCodeCountingItems.Count2Ent' +
        'ity,'
      
        '                      StuffCodeCountingItems.Count2Weight, Stuff' +
        'CodeCountingItems.Count3Entity, StuffCodeCountingItems.Count3Wei' +
        'ght, StuffCodeEntity.Entity,'
      
        '                      StuffCodeEntity.Weight, StuffCodeEntity.Pr' +
        'ice,'
      
        '                      StuffCodeCountingItems.DifferEntity, Stuff' +
        'CodeCountingItems.DifferWeight,'
      ''
      
        '                      ROUND(ISNULL((CASE  WHEN ((StuffCodeEntity' +
        '.Entity) =0 or (StuffCodeEntity.Entity) is null ) THEN StuffCodi' +
        'ng.SellPrice1'
      
        '                      ELSE  (StuffCodeEntity.Price / (StuffCodeE' +
        'ntity.Entity)) END) * StuffCodeCountingItems.DifferEntity, 0), 0' +
        ')'
      '                      AS DifferPrice,'
      '                      StuffCodeEntity.TotallSellPrice,'
      
        '                      ROUND(ISNULL((CASE  WHEN ((StuffCodeEntity' +
        '.Entity) =0 or (StuffCodeEntity.Entity) is null ) THEN StuffCodi' +
        'ng.SellPrice1'
      
        '                      ELSE (StuffCodeEntity.TotallSellPrice / (S' +
        'tuffCodeEntity.Entity)) END)  * StuffCodeCountingItems.DifferEnt' +
        'ity ,0), 0)'
      '                      AS DifferTotallSellPrice,'
      
        '                      ROUND( ISNULL(StuffCodeCountingItems.Diffe' +
        'rEntity, 0) - isnull(StuffCodeEntity.Entity,0),2) AS OtherEntity' +
        ','
      
        '                      ROUND( ISNULL(StuffCodeCountingItems.Diffe' +
        'rWeight, 0) - isnull(StuffCodeEntity.Weight,0),2) AS OtherWeight' +
        ','
      
        '                      ROUND(ISNULL((CASE  WHEN ((StuffCodeEntity' +
        '.Entity) =0 or (StuffCodeEntity.Entity) is null ) THEN StuffCodi' +
        'ng.SellPrice1'
      
        '                      ELSE  (StuffCodeEntity.Price / (StuffCodeE' +
        'ntity.Entity)) END) * StuffCodeCountingItems.DifferEntity, 0), 0' +
        ')'
      
        '                      - isnull(StuffCodeEntity.Price,0) AS Other' +
        'Price,'
      
        '                      ROUND(ISNULL((CASE  WHEN ((StuffCodeEntity' +
        '.Entity) =0 or (StuffCodeEntity.Entity) is null ) THEN StuffCodi' +
        'ng.SellPrice1'
      
        '                      ELSE (StuffCodeEntity.TotallSellPrice / (S' +
        'tuffCodeEntity.Entity)) END)  * StuffCodeCountingItems.DifferEnt' +
        'ity ,0), 0)'
      
        '                      - isnull(StuffCodeEntity.TotallSellPrice,0' +
        ') AS OtherTotallSellPrice, StuffCodeCountingItems.CountID , Stuf' +
        'fCoding.SellPrice1'
      '          , Stores.c_StoreName'
      ''
      ''
      'FROM         Units INNER JOIN'
      
        '                      StuffCoding ON Units.UnitCode = StuffCodin' +
        'g.n_UnitCode RIGHT OUTER JOIN'
      '                          (SELECT     StoreID, StuffCode'
      '                             FROM         CountingItems'
      '                             UNION'
      '                             SELECT     StoreID, StuffCode'
      
        '                             FROM         dbo.StuffCodeEntity(:Y' +
        'earIDFrom , :YearIDTo , :Date) AS StuffCodeEntity) AS AllStuffCo' +
        'de LEFT OUTER JOIN'
      
        '                      dbo.StuffCodeCountingItems(:YearID2From , ' +
        ':YearID2To , :Date2 ) AS StuffCodeCountingItems ON AllStuffCode.' +
        'StoreID = StuffCodeCountingItems.StoreID AND '
      
        '                      AllStuffCode.StuffCode = StuffCodeCounting' +
        'Items.StuffCode ON StuffCoding.c_StuffCode = AllStuffCode.StuffC' +
        'ode LEFT OUTER JOIN'
      
        '                      dbo.StuffCodeEntity( :YearID3From , :YearI' +
        'D3To , :Date3 ) AS StuffCodeEntity ON AllStuffCode.StoreID = Stu' +
        'ffCodeEntity.StoreID AND'
      
        '                      AllStuffCode.StuffCode = StuffCodeEntity.S' +
        'tuffCode INNER JOIN'
      
        '                         Stores ON AllStuffCode.StoreID = Stores' +
        '.n_StoreID'
      ''
      ''
      ''
      ''
      ''
      
        'WHERE     (AllStuffCode.StoreID = :StoreID) AND (StuffCodeCounti' +
        'ngItems.CountID = :CountID OR'
      '                      StuffCodeCountingItems.CountID IS NULL)'
      'ORDER BY AllStuffCode.StuffCode'
      ' '
      ' '
      ' '
      '')
    Left = 95
    Top = 357
    object IntegerField1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object StringField1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 70
    end
    object StringField2: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
      FieldName = 'UnitName'
      Size = 50
    end
    object StringField3: TStringField
      Tag = 3
      DisplayLabel = #1575#1576#1593#1575#1583
      FieldName = 'StuffSize'
      Size = 12
    end
    object FloatField1: TFloatField
      Tag = 3
      DisplayLabel = #1590#1582#1575#1605#1578
      FieldName = 'StuffDiameter'
    end
    object StringField4: TStringField
      Tag = 3
      DisplayLabel = #1570#1604#1610#1575#1688
      FieldName = 'StuffAlloy'
      Size = 12
    end
    object WordField1: TWordField
      Tag = 3
      DisplayLabel = #1583#1585#1580#1607
      FieldName = 'StuffGrade'
    end
    object IntegerField2: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1575#1607#1606#1605#1575
      FieldName = 'ControlCode'
    end
    object FloatField2: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585'1'
      FieldName = 'Count1Entity'
    end
    object FloatField3: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606'1'
      FieldName = 'Count1Weight'
    end
    object FloatField4: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585'2'
      FieldName = 'Count2Entity'
    end
    object FloatField5: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606'2'
      FieldName = 'Count2Weight'
    end
    object FloatField6: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585'3'
      FieldName = 'Count3Entity'
    end
    object FloatField7: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606'3'
      FieldName = 'Count3Weight'
    end
    object FloatField8: TFloatField
      Tag = 3
      DisplayLabel = #1605#1608#1580#1608#1583#1610' '#1603#1575#1585#1583#1603#1587'('#1605#1602#1583#1575#1585')'
      FieldName = 'Entity'
    end
    object FloatField9: TFloatField
      Tag = 3
      DisplayLabel = #1605#1608#1580#1608#1583#1610' '#1603#1575#1585#1583#1603#1587'('#1608#1586#1606')'
      FieldName = 'Weight'
    end
    object BCDField1: TBCDField
      Tag = 3
      DisplayLabel = #1605#1608#1580#1608#1583#1610' '#1603#1575#1585#1583#1603#1587'('#1605#1576#1604#1594')'
      FieldName = 'Price'
      currency = True
      Precision = 19
    end
    object FloatField10: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'DifferEntity'
    end
    object FloatField11: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'DifferWeight'
    end
    object FloatField12: TFloatField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1605#1608#1580#1608#1583#1610
      FieldName = 'DifferPrice'
      currency = True
    end
    object BCDField2: TBCDField
      Tag = 3
      DisplayLabel = #1605#1608#1580#1608#1583#1610' '#1603#1575#1585#1583#1603#1587'('#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607')'
      FieldName = 'TotallSellPrice'
      currency = True
      Precision = 15
    end
    object FloatField13: TFloatField
      Tag = 3
      DisplayLabel = #1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607' '#1605#1608#1580#1608#1583#1610
      FieldName = 'DifferTotallSellPrice'
      currency = True
    end
    object FloatField14: TFloatField
      Tag = 3
      DisplayLabel = #1578#1601#1575#1608#1578' '#1605#1602#1583#1575#1585
      FieldName = 'OtherEntity'
    end
    object FloatField15: TFloatField
      Tag = 3
      DisplayLabel = #1578#1601#1575#1608#1578' '#1608#1586#1606
      FieldName = 'OtherWeight'
    end
    object FloatField16: TFloatField
      Tag = 3
      DisplayLabel = #1578#1601#1575#1608#1578' '#1605#1576#1604#1594
      FieldName = 'OtherPrice'
      currency = True
    end
    object FloatField17: TFloatField
      Tag = 3
      DisplayLabel = #1578#1601#1575#1608#1578' '#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'OtherTotallSellPrice'
      currency = True
    end
  end
end
