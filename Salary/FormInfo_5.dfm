inherited FormInfo_5F: TFormInfo_5F
  Left = 371
  Top = 252
  CustomHint = DmF.BalloonHint1
  Caption = 'FormInfo_5F'
  ClientHeight = 714
  ClientWidth = 1045
  ExplicitWidth = 1061
  ExplicitHeight = 753
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel [0]
    Width = 1045
    CustomHint = DmF.BalloonHint1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    ExplicitWidth = 848
    DesignSize = (
      1045
      53)
    inherited ImgTemplate: TImage
      Left = 1035
      Top = 30
      Width = 5
      Height = 12
      CustomHint = DmF.BalloonHint1
      ExplicitLeft = 760
      ExplicitTop = 30
      ExplicitWidth = 5
      ExplicitHeight = 12
    end
    inherited lblCaption: TLabel
      Left = 937
      ParentCustomHint = False
      ExplicitLeft = 740
    end
    inherited lblBaseDate: TLabel
      Left = 430
      CustomHint = DmF.BalloonHint1
      ExplicitLeft = 344
    end
    object PnlRecall: TPanel
      Left = 1
      Top = 1
      Width = 393
      Height = 51
      CustomHint = DmF.BalloonHint1
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object DBText1: TDBText
        Left = 8
        Top = 8
        Width = 182
        Height = 17
        CustomHint = DmF.BalloonHint1
        Color = 13948116
        DataField = 'InfoName_L1'
        DataSource = SrcMaster
        ParentColor = False
        Transparent = False
      end
      object SpeedButton1: TSpeedButton
        Left = 192
        Top = 5
        Width = 23
        Height = 22
        CustomHint = DmF.BalloonHint1
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object LblPerson1: TLabel
        Left = 276
        Top = 9
        Width = 105
        Height = 13
        CustomHint = DmF.BalloonHint1
        Alignment = taRightJustify
        Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1587#1591#1581' '#1602#1576#1604#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBNavigator1: TDBNavigator
        Left = 6
        Top = 29
        Width = 180
        Height = 18
        CustomHint = DmF.BalloonHint1
        DataSource = SrcMaster
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 216
        Top = 6
        Width = 57
        Height = 21
        CustomHint = DmF.BalloonHint1
        DataField = 'FormInfoID'
        DataSource = SrcMaster
        TabOrder = 1
      end
    end
  end
  inherited Panel3: TPanel [1]
    Width = 684
    Height = 620
    CustomHint = DmF.BalloonHint1
    TabOrder = 1
    ExplicitWidth = 525
    ExplicitHeight = 560
    DesignSize = (
      684
      620)
    object Label1: TLabel
      Left = 565
      Top = 7
      Width = 11
      Height = 13
      CustomHint = DmF.BalloonHint1
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1603#1583
      FocusControl = DBEdit2
      ExplicitLeft = 332
    end
    object LblInfoName_L1: TLabel
      Left = 565
      Top = 29
      Width = 26
      Height = 13
      CustomHint = DmF.BalloonHint1
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1593#1606#1608#1575#1606
      FocusControl = DBEdit3
      ExplicitLeft = 332
    end
    object LblInfoName_L2: TLabel
      Left = 565
      Top = 51
      Width = 47
      Height = 13
      CustomHint = DmF.BalloonHint1
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'InfoName'
      FocusControl = DBEdit4
      ExplicitLeft = 332
    end
    object LblAmount: TLabel
      Left = 569
      Top = 75
      Width = 47
      Height = 13
      CustomHint = DmF.BalloonHint1
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1605#1602#1583#1575#1585' '#1579#1575#1576#1578
      FocusControl = DBEdit5
      ExplicitLeft = 336
    end
    object LblStandardDays: TLabel
      Left = 565
      Top = 99
      Width = 48
      Height = 13
      CustomHint = DmF.BalloonHint1
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1590#1585#1610#1576'('#1585#1608#1586')'#8207
      FocusControl = edtStandardDays
      ExplicitLeft = 332
    end
    object LblStandardTimes: TLabel
      Left = 565
      Top = 124
      Width = 66
      Height = 13
      CustomHint = DmF.BalloonHint1
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1590#1585#1610#1576'('#1587#1575#1593#1578')'#8207
      FocusControl = edtStandardTimes
      ExplicitLeft = 332
    end
    object LblAmount2: TLabel
      Left = 359
      Top = 75
      Width = 94
      Height = 13
      CustomHint = DmF.BalloonHint1
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1605#1593#1575#1601#1610#1578#8207#1605#1575#1604#1610#1575#1578#1610#8207#1593#1610#1583#1610
      FocusControl = edtAmount2
      ExplicitLeft = 126
    end
    object LblCalCulateType: TLabel
      Left = 565
      Top = 164
      Width = 122
      Height = 13
      CustomHint = DmF.BalloonHint1
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1606#1608#1593#8207#1605#1581#1575#1587#1576#1607#8207#1581#1602#1608#1602#8207#1608#1583#1587#1578#1605#1586#1583
      ExplicitLeft = 382
    end
    object lblTaxCode: TLabel
      Left = 112
      Top = 7
      Width = 42
      Height = 13
      CustomHint = DmF.BalloonHint1
      Caption = #1603#1583' '#1605#1575#1604#1610#1575#1578
    end
    object lblWageCalcKind: TLabel
      Left = 565
      Top = 188
      Width = 83
      Height = 13
      CustomHint = DmF.BalloonHint1
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Caption = #1606#1581#1608#1607' '#1605#1581#1575#1587#1576#1607' '#1605#1586#1575#1610#1575
      ParentBiDiMode = False
      ExplicitLeft = 382
    end
    object lblFirstAmount: TLabel
      Left = 566
      Top = 235
      Width = 44
      Height = 13
      CustomHint = DmF.BalloonHint1
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1605#1576#1604#1594' '#1575#1608#1604#1610#1607
      ExplicitLeft = 383
    end
    object DBEdit2: TDBEdit
      Left = 458
      Top = 3
      Width = 105
      Height = 21
      CustomHint = DmF.BalloonHint1
      Anchors = [akTop, akRight]
      DataField = 'InfoID'
      DataSource = srcFormInfo
      TabOrder = 0
      ExplicitLeft = 299
    end
    object DBEdit3: TDBEdit
      Left = 17
      Top = 25
      Width = 546
      Height = 21
      CustomHint = DmF.BalloonHint1
      Anchors = [akLeft, akTop, akRight]
      DataField = 'InfoName_L1'
      DataSource = srcFormInfo
      TabOrder = 2
      ExplicitWidth = 387
    end
    object DBEdit4: TDBEdit
      Left = 17
      Top = 48
      Width = 546
      Height = 21
      CustomHint = DmF.BalloonHint1
      Anchors = [akLeft, akTop, akRight]
      DataField = 'InfoName_L2'
      DataSource = srcFormInfo
      TabOrder = 3
      ExplicitWidth = 387
    end
    object DBEdit5: TDBEdit
      Left = 458
      Top = 71
      Width = 105
      Height = 21
      CustomHint = DmF.BalloonHint1
      Anchors = [akTop, akRight]
      DataField = 'Amount'
      DataSource = srcFormInfo
      TabOrder = 4
      ExplicitLeft = 299
    end
    object edtStandardDays: TDBEdit
      Left = 458
      Top = 97
      Width = 105
      Height = 21
      CustomHint = DmF.BalloonHint1
      Anchors = [akTop, akRight]
      DataField = 'StandardDays'
      DataSource = srcFormInfo
      TabOrder = 5
      ExplicitLeft = 299
    end
    object edtStandardTimes: TDBEdit
      Left = 458
      Top = 120
      Width = 105
      Height = 21
      CustomHint = DmF.BalloonHint1
      Anchors = [akTop, akRight]
      DataField = 'StandardTimes'
      DataSource = srcFormInfo
      TabOrder = 6
      ExplicitLeft = 299
    end
    object pnlMaxDayTime: TPanel
      Left = 17
      Top = 97
      Width = 184
      Height = 58
      CustomHint = DmF.BalloonHint1
      BevelInner = bvLowered
      BevelWidth = 3
      TabOrder = 7
      object Label15: TLabel
        Left = 110
        Top = 10
        Width = 49
        Height = 13
        CustomHint = DmF.BalloonHint1
        Caption = #1581#1583#1575#1603#1579#1585'  '#1585#1608#1586
      end
      object Label16: TLabel
        Left = 110
        Top = 33
        Width = 64
        Height = 13
        CustomHint = DmF.BalloonHint1
        Caption = #1581#1583#1575#1603#1579#1585' '#1587#1575#1593#1578
      end
      object edtMaxDay: TDBEdit
        Left = 11
        Top = 6
        Width = 95
        Height = 21
        CustomHint = DmF.BalloonHint1
        DataField = 'MaxDay'
        DataSource = srcFormInfo
        TabOrder = 0
      end
      object edtMaxTime: TDBEdit
        Left = 11
        Top = 29
        Width = 95
        Height = 21
        CustomHint = DmF.BalloonHint1
        DataField = 'MaxTime'
        DataSource = srcFormInfo
        TabOrder = 1
      end
    end
    object PnlRecalKindClock: TPanel
      Left = 2
      Top = 206
      Width = 684
      Height = 26
      CustomHint = DmF.BalloonHint1
      Align = alCustom
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 12
      ExplicitWidth = 525
      DesignSize = (
        684
        26)
      object Label17: TLabel
        Left = 560
        Top = 4
        Width = 116
        Height = 13
        CustomHint = DmF.BalloonHint1
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593#8207#1601#1585#1575#1582#1608#1575#1606#1610#8207#1575#1586#1603#1575#1585#1578#8207#1587#1575#1593#1578
        ExplicitLeft = 331
      end
      object CmbRecalKindClock: TDBComboBox
        Left = 194
        Top = 2
        Width = 363
        Height = 21
        CustomHint = DmF.BalloonHint1
        Anchors = [akTop, akRight]
        DataField = 'RecalKindClock'
        DataSource = srcFormInfo
        Items.Strings = (
          '0-'#1606#1583#1575#1585#1583
          '1-'#1575#1590#1575#1601#1607' '#1603#1575#1585#1610
          '2-'#1588#1576' '#1603#1575#1585#1610
          '3-'#1606#1608#1576#1578' '#1603#1575#1585#1610
          '4-'#1578#1593#1591#1610#1604' '#1603#1575#1585#1610'('#1585#1608#1586')'
          '5-'#1578#1593#1591#1610#1604' '#1603#1575#1585#1610'('#1587#1575#1593#1578')'
          '6-'#1605#1585#1582#1589#1610' '#1575#1587#1578#1581#1602#1575#1602#1610'('#1585#1608#1586')'
          '7-'#1605#1585#1582#1589#1610' '#1575#1587#1578#1581#1602#1575#1602#1610'('#1587#1575#1593#1578')'
          '8-'#1605#1585#1582#1589#1610' '#1575#1587#1578#1593#1604#1575#1580#1610
          '9-'#1605#1575#1605#1608#1585#1610#1578'('#1585#1608#1586')'
          '10-'#1605#1575#1605#1608#1585#1610#1578'('#1587#1575#1593#1578')'
          '11-'#1594#1610#1576#1578
          '12-'#1605#1585#1582#1589#1610' '#1587#1575#1593#1578#1610
          '13-'#1605#1585#1582#1589#1610' '#1576#1583#1608#1606' '#1581#1602#1608#1602
          '14-'#1603#1575#1585#1575#1606#1607)
        TabOrder = 0
        ExplicitLeft = 35
      end
    end
    object edtAmount2: TDBEdit
      Left = 245
      Top = 71
      Width = 105
      Height = 21
      CustomHint = DmF.BalloonHint1
      Anchors = [akTop, akRight]
      DataField = 'Amount2'
      DataSource = srcFormInfo
      TabOrder = 8
      ExplicitLeft = 86
    end
    object PageControl1: TPageControl
      Left = 2
      Top = 336
      Width = 680
      Height = 282
      CustomHint = DmF.BalloonHint1
      ActivePage = TabSheet1
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 9
      ExplicitWidth = 521
      ExplicitHeight = 222
      object TabSheet1: TTabSheet
        CustomHint = DmF.BalloonHint1
        Caption = #1575#1585#1578#1576#1575#1591' '
        ExplicitWidth = 513
        ExplicitHeight = 194
        object TabControl1: TTabControl
          Left = 0
          Top = 0
          Width = 672
          Height = 254
          CustomHint = DmF.BalloonHint1
          Align = alClient
          TabOrder = 0
          Tabs.Strings = (
            #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1602#1608#1602' '#1606#1608#1593' 1'
            #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1602#1608#1602' '#1606#1608#1593' 2')
          TabIndex = 0
          OnChange = TabControl1Change
          ExplicitWidth = 513
          ExplicitHeight = 194
          object Panel1: TPanel
            Left = 4
            Top = 215
            Width = 664
            Height = 35
            CustomHint = DmF.BalloonHint1
            Align = alBottom
            TabOrder = 1
            ExplicitTop = 155
            ExplicitWidth = 505
            DesignSize = (
              664
              35)
            object BitBtn10: TBitBtn
              Left = 547
              Top = 6
              Width = 104
              Height = 25
              CustomHint = DmF.BalloonHint1
              Anchors = [akTop, akRight]
              Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
              TabOrder = 0
              OnClick = BitBtn10Click
              ExplicitLeft = 388
            end
          end
          object DBGrid2: TCedarDbgrid
            Tag = 111
            Left = 4
            Top = 24
            Width = 664
            Height = 191
            CustomHint = DmF.BalloonHint1
            Align = alClient
            Color = clCream
            DataSource = SrcWage
            DynProps = <>
            Flat = True
            FooterParams.FillStyle = cfstSolidEh
            FooterParams.Font.Charset = DEFAULT_CHARSET
            FooterParams.Font.Color = clWindowText
            FooterParams.Font.Height = -12
            FooterParams.Font.Name = 'Segoe UI'
            FooterParams.Font.Style = [fsBold]
            FooterParams.ParentFont = False
            FooterParams.VertLines = False
            GridLineParams.VertEmptySpaceStyle = dessNonEh
            HorzScrollBar.ExtraPanel.Visible = True
            IndicatorTitle.ShowDropDownSign = True
            IndicatorTitle.TitleButton = True
            OddRowColor = clWhite
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
                FieldName = 'FormInfoID'
                Footers = <>
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'SalaryID'
                Footers = <>
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'InfoID'
                Footers = <>
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'InfoName_L1'
                Footers = <>
                Width = 122
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'InfoName_L2'
                Footers = <>
                Width = 130
              end>
            object RowDetailData: TRowDetailPanelControlEh
              CustomHint = DmF.BalloonHint1
            end
          end
        end
      end
      object TabSheetWordDocuments: TTabSheet
        CustomHint = DmF.BalloonHint1
        Caption = #1670#1575#1662
        ImageIndex = 3
        ExplicitWidth = 513
        ExplicitHeight = 194
        object Label20: TLabel
          Left = 0
          Top = 0
          Width = 672
          Height = 26
          CustomHint = DmF.BalloonHint1
          Align = alTop
          Caption = 
            #1576#1575' '#1608#1575#1585#1583' '#1603#1585#1583#1606' '#1607#1585' '#1606#1575#1605' '#1670#1575#1662' (rtm.*) '#1608' '#1586#1583#1606' '#1603#1604#1610#1583' Enter '#1605#1610#8207#1578#1608#1575#1606#1610#1583' '#1670#1575#1662#1607#1575 +
            #1610' '#1583#1610#1711#1585' '#1585#1575' '#1575#1590#1575#1601#1607' '#1603#1606#1610#1583' '#1610#1575' '#1576#1575' '#1583#1603#1605#1607' ... '#1670#1575#1662#1607#1575#1585#1575' '#1580#1587#1578#1580#1608' '#1608' '#1575#1590#1575#1601#1607' '#1603#1606#1610#1583'.'#8207
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          ExplicitLeft = 2
          ExplicitWidth = 511
        end
        object MemWordDocuments: TDBMemo
          Tag = 111
          Left = 0
          Top = 53
          Width = 672
          Height = 201
          CustomHint = DmF.BalloonHint1
          Align = alClient
          Alignment = taRightJustify
          DataField = 'WordDocuments'
          DataSource = srcFormInfo
          ScrollBars = ssVertical
          TabOrder = 0
          ExplicitWidth = 513
          ExplicitHeight = 141
        end
        object Panel4: TPanel
          Left = 0
          Top = 26
          Width = 672
          Height = 27
          CustomHint = DmF.BalloonHint1
          Align = alTop
          TabOrder = 1
          ExplicitWidth = 513
          object SBtnWord: TSpeedButton
            Left = 9
            Top = 3
            Width = 23
            Height = 22
            CustomHint = DmF.BalloonHint1
            Caption = '...'
            OnClick = SBtnWordClick
          end
        end
      end
    end
    object CmbCalCulateType: TDBComboBox
      Left = 196
      Top = 159
      Width = 363
      Height = 21
      CustomHint = DmF.BalloonHint1
      Anchors = [akTop, akRight]
      DataField = 'CalCulateType'
      DataSource = srcFormInfo
      Items.Strings = (
        '0-'#1606#1583#1575#1585#1583
        '1-'#1590#1585#1610#1576' '#1575#1586' 30 '#1585#1608#1586
        '2-'#1590#1585#1610#1576' '#1575#1586' '#1585#1608#1586#1607#1575#1610' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
        '3-'#1590#1585#1610#1576' '#1575#1586' '#1587#1575#1593#1575#1578' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
        '4-'#1605#1576#1604#1594' '#1579#1575#1576#1578
        '5-'#1590#1585#1610#1576' '#1575#1586' '#1605#1575#1607
        '6-'#1581#1602#1608#1602' '#1585#1608#1586#1575#1606#1607
        '7-'#1578#1602#1587#1610#1605' '#1576#1585' 30 '#1590#1585#1576#1583#1585' '#1585#1608#1586#1607#1575#1610' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
        '8- '#1603#1575#1585#1603#1585#1583' '#1576#1593#1604#1575#1608#1607' '#1575#1610#1575#1605' '#1576#1610#1605#1575#1585#1610' '#1578#1602#1587#1610#1605' '#1576#1585' 30'
        '9-'#1585#1608#1586#1607#1575#1610' '#1603#1575#1585#1603#1585#1583' '#1548' '#1603#1575#1585#1603#1585#1583' '#1575#1589#1604#1610' '#1580#1607#1578' '#1587#1575#1610#1585' '#1605#1586#1575#1610#1575
        '10-'#1587#1575#1593#1575#1578' '#1603#1575#1585#1603#1585#1583' '#1548' '#1603#1575#1585#1603#1585#1583' '#1575#1589#1604#1610' '#1548' '#1580#1607#1578' '#1587#1575#1610#1585' '#1605#1586#1575#1610#1575
        '11-'#1605#1576#1604#1594' '#1579#1575#1576#1578' '#1576#1583#1608#1606' '#1583#1585' '#1606#1592#1585' '#1711#1585#1601#1578#1606' '#1662#1585#1608#1688#1607
        '12-'#1581#1602#1608#1602' '#1587#1575#1593#1578#1610)
      TabOrder = 10
      ExplicitLeft = 37
    end
    object edtTaxCode: TDBEdit
      Left = 18
      Top = 3
      Width = 89
      Height = 21
      CustomHint = DmF.BalloonHint1
      DataField = 'TaxCode'
      DataSource = srcFormInfo
      TabOrder = 1
    end
    object cmbWageCalcKind: TDBComboBox
      Left = 196
      Top = 183
      Width = 363
      Height = 21
      CustomHint = DmF.BalloonHint1
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      DataField = 'WageCalcKind'
      DataSource = srcFormInfo
      Items.Strings = (
        '0-'#1605#1586#1575#1610#1575#1610' '#1581#1600#1603#1600#1605' '#1603#1575#1585#1711#1586#1610#1606#1610' '#1662#1575#1610#1607' '#1605#1581#1575#1587#1576#1575#1578' '#1576#1575#1588#1583
        '1-'#1605#1586#1575#1610#1575#1610' '#1605#1581#1575#1587#1576#1607' '#1588#1583#1607' '#1548' '#1662#1575#1610#1607' '#1605#1581#1575#1587#1576#1575#1578' '#1576#1575#1588#1583
        '2-'#1605#1586#1575#1610#1575#1610' '#1581#1603#1605' '#1603#1575#1585#1711#1586#1610#1606#1610' ... '#1608' '#1576#1585#1575#1740' '#1607#1605#1607' '#1662#1585#1587#1606#1604' '#1576#1589#1608#1585#1578' '#1579#1575#1576#1578' '#1605#1581#1575#1587#1576#1607' '#1588#1608#1583
        '3-'#1605#1586#1575#1610#1575#1610' '#1605#1600#1581#1575#1587#1576#1607' '#1588#1583#1607' ... '#1608' '#1576#1585#1575#1740' '#1607#1605#1607' '#1662#1585#1587#1606#1604' '#1576#1589#1608#1585#1578' '#1579#1575#1576#1578' '#1605#1581#1575#1587#1576#1607' '#1588#1608#1583
        '4-'#1576#1575#1586#1711#1585#1583#1575#1606#1740' '#1705#1587#1608#1585#1575#1578)
      ParentBiDiMode = False
      TabOrder = 11
      ExplicitLeft = 37
    end
    object dbedtFirstAmount: TDBEdit
      Left = 465
      Top = 231
      Width = 93
      Height = 21
      CustomHint = DmF.BalloonHint1
      Anchors = [akTop, akRight]
      DataField = 'FirstAmount'
      DataSource = srcFormInfo
      TabOrder = 13
      ExplicitLeft = 306
    end
    object dbchkPayMentActive: TDBCheckBox
      Left = 335
      Top = 233
      Width = 111
      Height = 17
      CustomHint = DmF.BalloonHint1
      Alignment = taLeftJustify
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = #1605#1575#1606#1583#1607' '#1602#1576#1604' '#1601#1593#1575#1604' '#1576#1575#1588#1583
      DataField = 'PayMentActive'
      DataSource = srcFormInfo
      ParentBiDiMode = False
      TabOrder = 14
      ValueChecked = '1'
      ValueUnchecked = '0'
      ExplicitLeft = 176
    end
    object Panel5: TPanel
      Left = 2
      Top = 304
      Width = 680
      Height = 32
      CustomHint = DmF.BalloonHint1
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 15
      ExplicitWidth = 521
      object btnAcc: TBitBtn
        Left = 19
        Top = 3
        Width = 91
        Height = 25
        CustomHint = DmF.BalloonHint1
        Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
        TabOrder = 0
        OnClick = btnAccClick
      end
    end
    object dbchkSalaryIDinDocActive: TDBCheckBox
      Left = 450
      Top = 258
      Width = 108
      Height = 17
      CustomHint = DmF.BalloonHint1
      Alignment = taLeftJustify
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = #1583#1585' '#1587#1606#1583' '#1606#1605#1575#1740#1588' '#1588#1608#1583
      DataField = 'SalaryIDinDocActive'
      DataSource = srcFormInfo
      ParentBiDiMode = False
      TabOrder = 16
      ValueChecked = '1'
      ValueUnchecked = '0'
      ExplicitLeft = 291
    end
    object pnlWageKind: TPanel
      Left = 2
      Top = 280
      Width = 684
      Height = 26
      CustomHint = DmF.BalloonHint1
      Align = alCustom
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 17
      ExplicitWidth = 525
      DesignSize = (
        684
        26)
      object Label11: TLabel
        Left = 560
        Top = 7
        Width = 77
        Height = 13
        CustomHint = DmF.BalloonHint1
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1740#1575
        ExplicitLeft = 401
      end
      object cmb_WageKind: TDBLookupComboBox
        Left = 189
        Top = 3
        Width = 368
        Height = 21
        CustomHint = DmF.BalloonHint1
        Anchors = [akTop, akRight]
        DataField = '_WageKind'
        DataSource = srcFormInfo
        DropDownRows = 14
        TabOrder = 0
        ExplicitLeft = 30
      end
    end
  end
  object Panel6: TPanel [2]
    Left = 684
    Top = 53
    Width = 361
    Height = 620
    CustomHint = DmF.BalloonHint1
    Align = alRight
    TabOrder = 2
    object DBGrid1: TCedarDbgrid
      Tag = 111
      Left = 1
      Top = 1
      Width = 359
      Height = 451
      CustomHint = DmF.BalloonHint1
      Align = alClient
      Color = clCream
      DataSource = srcFormInfo
      DynProps = <>
      Flat = True
      FooterParams.FillStyle = cfstSolidEh
      FooterParams.Font.Charset = DEFAULT_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -12
      FooterParams.Font.Name = 'Segoe UI'
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      FooterParams.VertLines = False
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clWhite
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
          FieldName = 'FormInfoID'
          Footers = <>
          Width = 37
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InfoID'
          Footers = <>
          Width = 34
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InfoName_L1'
          Footers = <>
          Width = 153
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InfoName_L2'
          Footers = <>
          Width = 58
        end>
      object RowDetailData: TRowDetailPanelControlEh
        CustomHint = DmF.BalloonHint1
      end
    end
    inline frInsouranceCheck1: TfrInsouranceCheck
      Left = 1
      Top = 452
      Width = 359
      Height = 167
      CustomHint = DmF.BalloonHint1
      Align = alBottom
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitTop = 119
      ExplicitWidth = 1234
      inherited GroupBox1: TGroupBox
        Width = 359
        CustomHint = DmF.BalloonHint1
        ExplicitWidth = 1234
        inherited DBGrid2: TCedarDbgrid
          Width = 355
          CustomHint = DmF.BalloonHint1
          inherited RowDetailData: TRowDetailPanelControlEh
            CustomHint = DmF.BalloonHint1
          end
        end
      end
      inherited qryInsouranceCheck: TADOQuery
        SQL.Strings = (
          
            '---SELECT       SalaryID, InfoName_L1, TotalInfoID, CntInfoID, W' +
            'arnNote FROM         Pay.InsouranceCheck( :PrvInfoID ) AS Insour' +
            'anceCheck_1'
          ''
          ' SELECT  1 kind ,   fn.FormInfoID , fn.InfoID , fn.InfoName_L1 '
          ' FROM          Pay.FormsInfo INNER JOIN'
          
            '        Pay.SalaryRange ON Pay.FormsInfo.FormInfoID = Pay.Salary' +
            'Range.FormInfoID'
          
            #9#9'join Pay.FormsInfo Fn on Pay.SalaryRange.SalaryID = fn.FormInf' +
            'oID '
          
            'WHERE     (FormsInfo.FormType = 55)  AND (FormsInfo.InfoID in(1,' +
            '2,5,6)) '
          'group by  fn.FormInfoID , fn.InfoID , fn.InfoName_L1,'
          #9#9#9'FormsInfo.PrvInfoID'
          'having count(*) <>1  '
          'union '
          ' SELECT  2 kind ,   fn.FormInfoID , fn.InfoID , fn.InfoName_L1  '
          ' FROM   Pay.FormsInfo f'
          
            #9#9'INNER JOIN Pay.SalaryRange ON f.FormInfoID = Pay.SalaryRange.F' +
            'ormInfoID and  (f.FormType = 55)  AND (f.InfoID in(1,2,5,6)) '
          
            #9#9'join Pay.FormsInfo Fn on Pay.SalaryRange.SalaryID = fn.FormInf' +
            'oID '
          #9#9'left join ('
          #9#9#9#9#9'SELECT     Pay.SalaryRange.SalaryID,FormsInfo.PrvInfoID'
          #9#9#9#9#9'FROM   Pay.FormsInfo '
          
            #9#9#9#9#9'INNER JOIN Pay.SalaryRange ON Pay.FormsInfo.FormInfoID = Pa' +
            'y.SalaryRange.FormInfoID and  (FormsInfo.FormType = 55)  AND (Fo' +
            'rmsInfo.InfoID = 4) '
          
            #9#9#9#9#9') al on fn.FormInfoID =al.SalaryID and f.PrvInfoID=al.PrvIn' +
            'foID'
          ' where al.SalaryID is null ')
      end
      inherited srcInsouranceCheck: TDataSource
        Left = 242
        Top = 98
      end
    end
  end
  inherited PnlUnderButton: TPanel [3]
    Top = 673
    Width = 1045
    CustomHint = DmF.BalloonHint1
    TabOrder = 3
    ExplicitLeft = 1
    ExplicitTop = 619
    ExplicitWidth = 197
    inherited BtnReject: TBitBtn
      CustomHint = DmF.BalloonHint1
    end
    object newPanel: TPanel
      Left = 791
      Top = 1
      Width = 253
      Height = 39
      CustomHint = DmF.BalloonHint1
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = -57
      DesignSize = (
        253
        39)
      object BitBtn3: TBitBtn
        Left = 168
        Top = 8
        Width = 75
        Height = 25
        ParentCustomHint = False
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 91
        Top = 8
        Width = 75
        Height = 25
        ParentCustomHint = False
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 14
        Top = 8
        Width = 75
        Height = 25
        ParentCustomHint = False
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object okPanel: TPanel
      Left = 626
      Top = 1
      Width = 165
      Height = 39
      CustomHint = DmF.BalloonHint1
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = -222
      DesignSize = (
        165
        39)
      object BitBtn7: TBitBtn
        Left = 88
        Top = 8
        Width = 75
        Height = 25
        ParentCustomHint = False
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
        Left = 10
        Top = 8
        Width = 75
        Height = 25
        ParentCustomHint = False
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
    object BitBtn1: TBitBtn
      Left = 94
      Top = 8
      Width = 75
      Height = 25
      CustomHint = DmF.BalloonHint1
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      Left = 172
      Top = 8
      Width = 75
      Height = 25
      CustomHint = DmF.BalloonHint1
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      Left = 249
      Top = 8
      Width = 89
      Height = 25
      CustomHint = DmF.BalloonHint1
      Action = actSendToExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 5
    end
    object BitBtn11: TBitBtn
      Left = 340
      Top = 8
      Width = 75
      Height = 25
      CustomHint = DmF.BalloonHint1
      Caption = #1670#1575#1662
      TabOrder = 6
      OnClick = BitBtn11Click
    end
  end
  inherited ActionList: TActionList
    Left = 520
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcFormInfo
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcFormInfo
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcFormInfo
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcFormInfo
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      Hint = ' '
      DataSource = srcFormInfo
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 592
  end
  object qryFormInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterInsert = qryFormInfoAfterInsert
    BeforePost = qryFormInfoBeforePost
    AfterPost = qryFormInfoAfterPost
    BeforeDelete = qryFormInfoBeforeDelete
    AfterDelete = qryFormInfoAfterDelete
    AfterScroll = qryFormInfoAfterScroll
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 7
      end
      item
        Name = 'PrvInfoID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      ''
      'SELECT     *'
      'FROM Pay.FormsInfo'
      
        'WHERE     (FormType = :FormType ) AND (PrvInfoID = isnull(:PrvIn' +
        'foID ,0))'
      'order by InfoID')
    Left = 704
    Top = 301
    object qryFormInfoFormInfoID: TIntegerField
      Tag = 3
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'FormInfoID'
    end
    object qryFormInfoInfoName_L1: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryFormInfoInfoName_L2: TStringField
      Tag = 3
      DisplayLabel = 'InfoName'
      FieldName = 'InfoName_L2'
      Size = 100
    end
    object qryFormInfoFormType: TIntegerField
      FieldName = 'FormType'
    end
    object qryFormInfoInfoID: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'InfoID'
    end
    object qryFormInfoPrvInfoID: TIntegerField
      FieldName = 'PrvInfoID'
    end
    object qryFormInfoAmount: TBCDField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1579#1575#1576#1578
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryFormInfoAmount2: TBCDField
      FieldName = 'Amount2'
      currency = True
      Precision = 19
    end
    object qryFormInfoCoefficient: TFloatField
      FieldName = 'Coefficient'
    end
    object qryFormInfoStandardDays: TFloatField
      DisplayLabel = #1590#1585#1610#1576'('#1585#1608#1586')'#8207
      FieldName = 'StandardDays'
    end
    object qryFormInfoStandardTimes: TFloatField
      DisplayLabel = #1590#1585#1610#1576'('#1587#1575#1593#1578')'#8207
      FieldName = 'StandardTimes'
    end
    object qryFormInfoAccTopicCode: TIntegerField
      FieldName = 'AccTopicCode'
    end
    object qryFormInfoAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qryFormInfoAccCTopicode: TIntegerField
      FieldName = 'AccCTopiccode'
    end
    object qryFormInfoAccCTopicode2: TIntegerField
      FieldName = 'AccCTopiccode2'
    end
    object qryFormInfoRecallFormInfoID1: TStringField
      FieldName = 'RecallFormInfoID1'
      Size = 150
    end
    object qryFormInfoRecallFormInfoID2: TStringField
      FieldName = 'RecallFormInfoID2'
      Size = 150
    end
    object qryFormInfoWordDocuments: TStringField
      DisplayLabel = #1606#1575#1605' '#1601#1575#1610#1604' '#1670#1575#1662
      FieldName = 'WordDocuments'
      Size = 200
    end
    object qryFormInfoMaxDay: TFloatField
      FieldName = 'MaxDay'
    end
    object qryFormInfoMaxTime: TFloatField
      FieldName = 'MaxTime'
    end
    object qryFormInfoRecalKindClock: TWordField
      FieldName = 'RecalKindClock'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryFormInfoCalCulateType: TWordField
      FieldName = 'CalCulateType'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryFormInfoTaxCode: TWordField
      FieldName = 'TaxCode'
    end
    object qryFormInfoWageCalcKind: TWordField
      FieldName = 'WageCalcKind'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryFormInfoFirstAmount: TBCDField
      FieldName = 'FirstAmount'
      currency = True
      Precision = 19
    end
    object qryFormInfoPayMentActive: TWordField
      FieldName = 'PayMentActive'
    end
    object qryFormInfoAccCTopicCode3: TIntegerField
      FieldName = 'AccCTopicCode3'
    end
    object qryFormInfoSalaryIDinDocActive: TWordField
      FieldName = 'SalaryIDinDocActive'
    end
    object qryFormInfoWageKind: TWordField
      FieldName = 'WageKind'
    end
    object qryFormInfo_WageKind: TStringField
      DisplayLabel = #1606#1608#1593' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1740#1575
      FieldKind = fkLookup
      FieldName = '_WageKind'
      LookupDataSet = qryWageKinds
      LookupKeyFields = 'WageKind'
      LookupResultField = 'WageKindName'
      KeyFields = 'WageKind'
      Size = 100
      Lookup = True
    end
  end
  object srcFormInfo: TDataSource
    DataSet = qryFormInfo
    OnStateChange = srcFormInfoStateChange
    Left = 624
    Top = 301
  end
  object qryInitForm: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM Pay.FormTypes'
      'WHERE     (FormType= :FormType)')
    Left = 448
    Top = 8
  end
  object qryMaster: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterScroll = qryMasterAfterScroll
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 7
      end>
    SQL.Strings = (
      
        'SELECT     FormInfoID, FormType, InfoID, InfoName_L1, InfoName_L' +
        '2'
      'FROM Pay.FormsInfo'
      'WHERE   FormType = :FormType')
    Left = 704
    Top = 213
    object qryMasterFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryMasterFormType: TIntegerField
      FieldName = 'FormType'
    end
    object qryMasterInfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qryMasterInfoName_L1: TStringField
      FieldName = 'InfoName_L1'
      Size = 100
    end
    object qryMasterInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 100
    end
  end
  object SrcMaster: TDataSource
    DataSet = qryMaster
    Left = 624
    Top = 205
  end
  object qryWage: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FormInfoID'
        DataType = ftString
        Size = 1
        Value = '3'
      end
      item
        Name = 'Kind'
        DataType = ftString
        Size = 1
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT     F_SalaryRange.*'
      'FROM Pay.F_SalaryRange(:FormInfoID, :Kind) F_SalaryRange'
      'Order By InfoID')
    Left = 160
    Top = 309
    object qryWageFormInfoID: TIntegerField
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'FormInfoID'
    end
    object qryWageSalaryID: TIntegerField
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'SalaryID'
    end
    object qryWageKind: TWordField
      FieldName = 'Kind'
    end
    object qryWageInfoID: TIntegerField
      DisplayLabel = #1603#1583' '
      FieldName = 'InfoID'
    end
    object qryWageInfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1586#1575#1610#1575' '
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryWageInfoName_L2: TStringField
      DisplayLabel = 'WageCaption'
      FieldName = 'InfoName_L2'
      Size = 255
    end
  end
  object SrcWage: TDataSource
    DataSet = qryWage
    OnStateChange = srcFormInfoStateChange
    Left = 272
    Top = 317
  end
  object ADOQuery1: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterInsert = qryFormInfoAfterInsert
    AfterPost = qryFormInfoAfterPost
    BeforeDelete = qryFormInfoBeforeDelete
    AfterDelete = qryFormInfoAfterDelete
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     Pay.FormsInfo.FormInfoID, Pay.FormsInfo.InfoID, Pay.F' +
        'ormsInfo.InfoName_L1, Pay.FormsInfo.InfoName_L2, Pay.FormTypes.S' +
        'alaryKind'
      'FROM         Pay.FormsInfo INNER JOIN'
      
        '                      Pay.FormTypes ON Pay.FormsInfo.FormType = ' +
        'Pay.FormTypes.FormType'
      'WHERE     (Pay.FormTypes.SalaryKind BETWEEN 1 AND 4)')
    Left = 272
    Top = 149
    object IntegerField1: TIntegerField
      FieldName = 'FormInfoID'
    end
    object IntegerField2: TIntegerField
      FieldName = 'InfoID'
    end
    object StringField1: TStringField
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object StringField2: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object WordField1: TWordField
      FieldName = 'SalaryKind'
    end
  end
  object ppReport1: TppReport
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
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\projects\Fara\Salary\Report\forminfo5.rtm'
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
    Left = 688
    Top = 112
    Version = '22.06'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 27517
      mmPrintPosition = 0
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 69850
        mmTop = 21960
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1603#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 181240
        mmTop = 21960
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 265
        mmTop = 21960
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 265
        mmTop = 25929
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 5556
        mmLeft = 161661
        mmTop = 22490
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SysVarPageNo'
        OnGetText = ppSysVarPageNoGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 15346
        mmTop = 1058
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground1
      end
      object pplblPrintDate: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lblPrintDate'
        OnGetText = pplblPrintDateGetText
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
        mmLeft = 15346
        mmTop = 6350
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
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
        mmHeight = 6085
        mmLeft = 72496
        mmTop = 265
        mmWidth = 52123
        BandType = 0
        LayerName = Foreground1
      end
      object ppLblFromCaption: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblFromCaption'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8202
        mmLeft = 94192
        mmTop = 6615
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
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
        mmTop = 265
        mmWidth = 203200
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
          PrinterSetup.PaperName = 'Letter'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '22.06'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppDetailBand2: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
            object ppDBText2: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = 'InfoName_L1'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 5292
              mmLeft = 4763
              mmTop = 0
              mmWidth = 127265
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel3: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label3'
              Border.mmPadding = 0
              Caption = '  '
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              mmHeight = 5556
              mmLeft = 159015
              mmTop = 0
              mmWidth = 1588
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText4: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText4'
              Border.mmPadding = 0
              DataField = 'InfoID'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 5292
              mmLeft = 162190
              mmTop = 0
              mmWidth = 26723
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLine4: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line4'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 2117
              mmLeft = 0
              mmTop = 2117
              mmWidth = 203200
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'InfoID'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5821
              mmLeft = 162719
              mmTop = 3704
              mmWidth = 17198
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel8: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label8'
              Border.mmPadding = 0
              Caption = #1578#1593#1583#1575#1583' :'#8207
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 9
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5556
              mmLeft = 181769
              mmTop = 3969
              mmWidth = 7144
              BandType = 7
              LayerName = Foreground
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line6'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 149754
              mmTop = 10583
              mmWidth = 39158
              BandType = 7
              LayerName = Foreground
            end
            object ppLine5: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line5'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 149754
              mmTop = 9790
              mmWidth = 39158
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
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 20902
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'FormInfoID'
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
        mmHeight = 6085
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText1'
          Border.mmPadding = 0
          DataField = 'InfoID'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6085
          mmLeft = 175948
          mmTop = 0
          mmWidth = 26723
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText3'
          Border.mmPadding = 0
          DataField = 'InfoName_L1'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 5821
          mmLeft = 3175
          mmTop = 265
          mmWidth = 156898
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label2'
          Border.mmPadding = 0
          Caption = '  '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          mmHeight = 5556
          mmLeft = 173302
          mmTop = 794
          mmWidth = 1588
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
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
  object OpenDialog1: TOpenDialog
    DefaultExt = '..\Report'
    Filter = 'ReportName|*.rtm'
    InitialDir = '..\Report'
    Left = 511
    Top = 215
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcFormInfo
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 624
    Top = 104
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = SrcWage
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 544
    Top = 112
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object qryWageKinds: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * FROM Pay.WageKinds'
      '')
    Left = 720
    Top = 437
  end
end
