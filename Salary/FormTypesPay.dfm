inherited FormTypesPayF: TFormTypesPayF
  Left = 367
  Top = 131
  Caption = #1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583' '
  ClientHeight = 620
  ClientWidth = 1002
  ExplicitWidth = 1018
  ExplicitHeight = 659
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 579
    Width = 1002
    ExplicitTop = 579
    ExplicitWidth = 1002
    DesignSize = (
      1002
      41)
    object BitBtn2: TBitBtn
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
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendExel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 2
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actprint
      Align = alLeft
      Caption = #1670#1600#1600#1600#1575#1662
      TabOrder = 3
    end
    object newPanel: TPanel
      Left = 767
      Top = 1
      Width = 234
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 4
      DesignSize = (
        234
        39)
      object BtnInsert: TBitBtn
        Left = 156
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 78
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BtnDelete: TBitBtn
        Left = 1
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object okPanel: TPanel
      AlignWithMargins = True
      Left = 606
      Top = 4
      Width = 158
      Height = 33
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 5
      DesignSize = (
        158
        33)
      object BitBtn7: TBitBtn
        Left = 80
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
      object BitBtn8: TBitBtn
        Left = 2
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
    object DBNavigator1: TDBNavigator
      Left = 408
      Top = 9
      Width = 336
      Height = 25
      DataSource = srcFormTypes
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight]
      Flat = True
      TabOrder = 6
    end
    object BitBtn9: TBitBtn
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
      TabOrder = 7
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 409
      Top = 7
      Width = 97
      Height = 27
      Hint = ' '
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608#1740' '#1578#1606#1592#1740#1605
      TabOrder = 8
      OnClick = BitBtn1Click
    end
  end
  inherited Panel2: TPanel
    Width = 1002
    Height = 57
    ExplicitWidth = 1002
    ExplicitHeight = 57
    DesignSize = (
      1002
      57)
    inherited ImgTemplate: TImage
      Left = 964
      ExplicitLeft = 744
    end
    inherited lblCaption: TLabel
      Left = 894
      Height = 37
      ExplicitLeft = 894
    end
  end
  inherited Panel3: TPanel
    Top = 57
    Width = 1002
    Height = 522
    ExplicitTop = 57
    ExplicitWidth = 1002
    ExplicitHeight = 522
    object pnlCustomer: TPanel
      Left = 615
      Top = 2
      Width = 385
      Height = 518
      Align = alClient
      TabOrder = 2
      DesignSize = (
        385
        518)
      object Label14: TLabel
        Left = 279
        Top = 22
        Width = 11
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1603#1583
        ExplicitLeft = 414
      end
      object Label15: TLabel
        Left = 279
        Top = 48
        Width = 86
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1608#1575#1606' ('#1586#1576#1575#1606'1'#1576#1585#1606#1575#1605#1607')'
        ExplicitLeft = 414
      end
      object Label20: TLabel
        Left = 279
        Top = 75
        Width = 86
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1608#1575#1606' ('#1586#1576#1575#1606'2'#1576#1585#1606#1575#1605#1607')'
        ExplicitLeft = 414
      end
      object SpeedButton7: TSpeedButton
        Left = 173
        Top = 16
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = SpeedButton2Click
        ExplicitLeft = 308
      end
      object DBEdit8: TDBEdit
        Left = 197
        Top = 16
        Width = 66
        Height = 19
        Anchors = [akTop, akRight]
        Color = clCream
        Ctl3D = False
        DataField = 'FormType'
        DataSource = srcFormTypes
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit13: TDBEdit
        Left = -15
        Top = 43
        Width = 278
        Height = 19
        Anchors = [akTop, akRight]
        Color = clCream
        Ctl3D = False
        DataField = 'FormCaption_L1'
        DataSource = srcFormTypes
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit14: TDBEdit
        Left = -15
        Top = 70
        Width = 278
        Height = 19
        Anchors = [akTop, akRight]
        Color = clCream
        Ctl3D = False
        DataField = 'FormCaption_L2'
        DataSource = srcFormTypes
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object PageControl2: TPageControl
        Left = 1
        Top = 144
        Width = 383
        Height = 373
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        MultiLine = True
        TabOrder = 3
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 613
      Height = 518
      Align = alLeft
      Caption = 'Panel1'
      TabOrder = 1
      DesignSize = (
        613
        518)
      object Label1: TLabel
        Left = 507
        Top = 14
        Width = 11
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1603#1583
        ExplicitLeft = 416
      end
      object Label2: TLabel
        Left = 507
        Top = 40
        Width = 26
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1608#1575#1606
        ExplicitLeft = 416
      end
      object LblFormCaption_L2: TLabel
        Left = 507
        Top = 67
        Width = 61
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'FormCaption'
        ExplicitLeft = 416
      end
      object Label4: TLabel
        Left = 507
        Top = 94
        Width = 90
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1601#1585#1605' '#1602#1575#1576#1604' '#1606#1605#1575#1610#1588
        ExplicitLeft = 416
      end
      object SpeedButton2: TSpeedButton
        Left = 401
        Top = 8
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = SpeedButton2Click
        ExplicitLeft = 310
      end
      object LblRecordCount: TLabel
        Left = 4
        Top = 3
        Width = 76
        Height = 13
        Alignment = taRightJustify
        Caption = 'LblRecordCount'
      end
      object DBEdit1: TDBEdit
        Left = 425
        Top = 8
        Width = 66
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'FormType'
        DataSource = srcFormTypes
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 213
        Top = 35
        Width = 278
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'FormCaption_L1'
        DataSource = srcFormTypes
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 213
        Top = 62
        Width = 278
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'FormCaption_L2'
        DataSource = srcFormTypes
        TabOrder = 2
      end
      object comboDisplayFormType: TDBComboBox
        Left = 213
        Top = 90
        Width = 278
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'DisplayFormType'
        DataSource = srcFormTypes
        Items.Strings = (
          #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1576#1589#1608#1585#1578' '#1603#1604#1610' '#1578#1608#1587#1591' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
          #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1576#1589#1608#1585#1578' '#1603#1604#1610' '#1578#1608#1587#1591' '#1603#1575#1585#1576#1585
          #1575#1591#1604#1575#1593#1575#1578' '#1605#1608#1579#1585' '#1576#1585#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583
          #1575#1591#1604#1575#1593#1575#1578' '#1605#1608#1579#1585' '#1576#1585' '#1581#1603#1605' '#1603#1575#1585#1711#1586#1610#1606#1610
          #1593#1606#1575#1608#1610#1606' '#1605#1581#1575#1587#1576#1575#1578#1610' '#1581#1602#1608#1602' '#1548' '#1576#1610#1605#1607' '#1608' '#1605#1575#1604#1610#1575#1578' '
          #1587#1575#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '
          #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1576#1575' '#1605#1581#1583#1608#1583' '#1603#1585#1583#1606' '#1603#1575#1585#1576#1585#1575#1606)
        ParentBiDiMode = False
        TabOrder = 3
      end
      object PageControl1: TPageControl
        Left = 1
        Top = 176
        Width = 611
        Height = 341
        ActivePage = tsContorol
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        MultiLine = True
        TabOrder = 4
        object TabSheet1: TTabSheet
          Caption = #1606#1605#1575#1610#1588
          object PageControl3: TPageControl
            Left = 0
            Top = 0
            Width = 603
            Height = 313
            ActivePage = TabSheet12
            Align = alClient
            TabOrder = 0
            object TabSheet11: TTabSheet
              Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
              DesignSize = (
                595
                285)
              object dbchkDurationDayActive: TDBCheckBox
                Left = 453
                Top = 94
                Width = 124
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1605#1583#1578' ('#1585#1608#1586') '#1606#1605#1575#1610#1588' '#1588#1608#1583
                Ctl3D = False
                DataField = 'DurationDayActive'
                DataSource = srcFormTypes
                ParentBiDiMode = False
                ParentCtl3D = False
                TabOrder = 0
                ValueChecked = '1'
                ValueUnchecked = '2'
              end
              object dbchkDurationTimeActive: TDBCheckBox
                Left = 434
                Top = 124
                Width = 143
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1605#1583#1578' ('#1587#1575#1593#1578') '#1606#1605#1575#1610#1588' '#1588#1608#1583
                DataField = 'DurationTimeActive'
                DataSource = srcFormTypes
                ParentBiDiMode = False
                TabOrder = 1
                ValueChecked = '1'
                ValueUnchecked = '2'
              end
              object dbchkCoefficientActive: TDBCheckBox
                Left = 482
                Top = 4
                Width = 95
                Height = 17
                Alignment = taLeftJustify
                AllowGrayed = True
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1590#1585#1610#1576' '#1601#1593#1575#1604' '#1576#1575#1588#1583
                Ctl3D = False
                DataField = 'CoefficientActive'
                DataSource = srcFormTypes
                ParentBiDiMode = False
                ParentCtl3D = False
                TabOrder = 2
                ValueChecked = '1'
                ValueUnchecked = '2'
              end
              object dbchkExemptPersonActive: TDBCheckBox
                Left = 421
                Top = 154
                Width = 156
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1578#1593#1583#1575#1583' '#1575#1601#1585#1575#1583' '#1605#1593#1575#1601' '#1606#1605#1575#1610#1588' '#1588#1608#1583
                DataField = 'ExemptPersonActive'
                DataSource = srcFormTypes
                ParentBiDiMode = False
                TabOrder = 3
                ValueChecked = '1'
                ValueUnchecked = '2'
              end
              object dbchkFunctionShow: TDBCheckBox
                Left = 460
                Top = 64
                Width = 117
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1583#1585' '#1603#1575#1585#1603#1585#1583' '#1606#1605#1575#1610#1588' '#1588#1608#1583
                Ctl3D = False
                DataField = 'FunctionShow'
                DataSource = srcFormTypes
                ParentBiDiMode = False
                ParentCtl3D = False
                TabOrder = 4
                ValueChecked = '1'
                ValueUnchecked = '2'
              end
              object dbchkRecalKindClock: TDBCheckBox
                Left = 93
                Top = 94
                Width = 197
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1606#1608#1593' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1586' '#1603#1575#1585#1578' '#1587#1575#1593#1578' '#1601#1593#1575#1604' '#1576#1575#1588#1583
                DataField = 'RecalKindClock'
                DataSource = srcFormTypes
                ParentBiDiMode = False
                TabOrder = 5
                ValueChecked = '1'
                ValueUnchecked = '2'
              end
              object dbchkCalCulateTypeActive: TDBCheckBox
                Left = 129
                Top = 4
                Width = 161
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1606#1608#1593' '#1605#1581#1575#1587#1576#1607' '#1581#1602#1608#1602' '#1606#1605#1575#1610#1588' '#1588#1608#1583
                DataField = 'CalCulateTypeActive'
                DataSource = srcFormTypes
                ParentBiDiMode = False
                TabOrder = 6
                ValueChecked = '1'
                ValueUnchecked = '2'
              end
              object dbchkWordDocumentsActive: TDBCheckBox
                Left = 124
                Top = 36
                Width = 166
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1606#1575#1605' '#1601#1575#1610#1604' '#1601#1585#1605'  Word  '#1606#1605#1575#1610#1588' '#1588#1608#1583#8207
                DataField = 'WordDocumentsActive'
                DataSource = srcFormTypes
                ParentBiDiMode = False
                TabOrder = 7
                ValueChecked = '1'
                ValueUnchecked = '2'
              end
              object dbchkChangeAmountActive: TDBCheckBox
                Left = 106
                Top = 64
                Width = 184
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1605#1576#1604#1594' '#1576#1593#1583#1575#1586#1605#1581#1575#1587#1576#1607' '#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588' '#1576#1575#1588#1583
                DataField = 'ChangeAmountActive'
                DataSource = srcFormTypes
                ParentBiDiMode = False
                TabOrder = 8
                ValueChecked = '1'
                ValueUnchecked = '2'
              end
              object dbchkNoteActive: TDBCheckBox
                Left = 140
                Top = 124
                Width = 150
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610' '#1606#1605#1575#1610#1588' '#1588#1608#1583#8207
                DataField = 'NoteActive'
                DataSource = srcFormTypes
                ParentBiDiMode = False
                TabOrder = 9
                ValueChecked = '1'
                ValueUnchecked = '2'
              end
              object dbchkLimitMounthActive: TDBCheckBox
                Left = 109
                Top = 154
                Width = 181
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1605#1581#1583#1608#1583' '#1602#1575#1576#1604' '#1575#1580#1585#1575' '#1606#1605#1575#1610#1588' '#1588#1608#1583'./(23%)'#8207
                DataField = 'LimitMounthActive'
                DataSource = srcFormTypes
                ParentBiDiMode = False
                TabOrder = 10
                ValueChecked = '1'
                ValueUnchecked = '2'
              end
              object dbchkMaxDayTimeActive: TDBCheckBox
                Left = 371
                Top = 36
                Width = 206
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1581#1583#1575#1602#1604' '#1608' '#1581#1583#1575#1603#1579#1585' '#1585#1608#1586' '#1608' '#1587#1575#1593#1578' '#1606#1605#1575#1610#1588' '#1588#1608#1583'.'#8207
                DataField = 'MaxDayTimeActive'
                DataSource = srcFormTypes
                ParentBiDiMode = False
                TabOrder = 11
                ValueChecked = '1'
                ValueUnchecked = '2'
              end
              object dbchkWageCalcKindActive: TDBCheckBox
                Left = 315
                Top = 186
                Width = 262
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1570#1610#1575' '#1606#1581#1608#1607' '#1605#1581#1575#1587#1576#1607' '#1593#1606#1575#1608#1610#1606' '#1605#1581#1575#1587#1576#1575#1578#1610' '#1581#1602#1608#1602' '#1606#1605#1575#1610#1588' '#1588#1608#1583
                DataField = 'WageCalcKindActive'
                DataSource = srcFormTypes
                ParentBiDiMode = False
                TabOrder = 12
                ValueChecked = '1'
                ValueUnchecked = '2'
              end
              object dbchkChecking4AllPersonnelShow: TDBCheckBox
                Left = 315
                Top = 218
                Width = 262
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1570#1610#1575' '#1576#1705#1575#1585' '#1576#1587#1578#1606'  '#1608' '#1608#1575#1585#1587#1740' '#1576#1585#1575#1740' '#1607#1605#1607' '#1662#1585#1587#1606#1604' '#1606#1605#1575#1610#1588' '#1588#1608#1583
                DataField = 'Checking4AllPersonnelShow'
                DataSource = srcFormTypes
                ParentBiDiMode = False
                TabOrder = 13
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object dbchkEmployerAmountActiveShow: TDBCheckBox
                Left = 61
                Top = 187
                Width = 229
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1570#1610#1575' '#1587#1607#1605' '#1705#1575#1585#1601#1585#1605#1575' '#1601#1593#1575#1604' '#1576#1575#1588#1583' '#1581#1602#1608#1602' '#1606#1605#1575#1610#1588' '#1588#1608#1583
                DataField = 'EmployerAmountActiveShow'
                DataSource = srcFormTypes
                ParentBiDiMode = False
                TabOrder = 14
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
            end
            object TabSheet12: TTabSheet
              Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605'2'
              ImageIndex = 1
              DesignSize = (
                595
                285)
              object Label42: TLabel
                Left = 415
                Top = 44
                Width = 73
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1605#1576#1604#1594'/'#1575#1601#1585#1575#1583' '#1605#1593#1575#1601
                ExplicitLeft = 322
              end
              object Label41: TLabel
                Left = 415
                Top = 12
                Width = 44
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1605#1576#1604#1594' '#1575#1608#1604#1610#1607
                ExplicitLeft = 322
              end
              object Label44: TLabel
                Left = 415
                Top = 75
                Width = 173
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1605#1576#1604#1594' '#1579#1575#1576#1578' 1 '#1610#1575' '#1606#1585#1582' '#1575#1587#1578#1575#1606#1583#1575#1585#1583' '#1601#1593#1575#1604' '#1576#1575#1588#1583
                ExplicitLeft = 322
              end
              object Label45: TLabel
                Left = 418
                Top = 103
                Width = 128
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1603#1583' '#1586#1605#1610#1606'/'#1605#1581#1589#1608#1604' '#1601#1593#1575#1604' '#1576#1575#1588#1606#1583
                ExplicitLeft = 325
              end
              object DBCheckBox8: TDBCheckBox
                Left = 277
                Top = 125
                Width = 133
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1603#1575#1585#1576#1585#1575#1606' '#1601#1593#1575#1604' '#1576#1575#1588#1583
                DataField = 'ShowOperators'
                DataSource = srcFormTypes
                ParentBiDiMode = False
                TabOrder = 0
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object CmbFirstAmountActive: TDBComboBox
                Left = 213
                Top = 8
                Width = 197
                Height = 21
                Anchors = [akTop, akRight]
                BiDiMode = bdRightToLeft
                DataField = 'FirstAmountActive'
                DataSource = srcFormTypes
                Items.Strings = (
                  #1606#1583#1575#1585#1583
                  #1583#1585' '#1605#1593#1585#1601#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1579#1575#1576#1578' '#1606#1605#1575#1610#1588' '#1588#1608#1583
                  #1603#1604#1610' '#1606#1605#1575#1610#1588' '#1588#1608#1583)
                ParentBiDiMode = False
                TabOrder = 1
              end
              object CmbAmount2Active: TDBComboBox
                Left = 213
                Top = 40
                Width = 197
                Height = 21
                Anchors = [akTop, akRight]
                BiDiMode = bdRightToLeft
                DataField = 'Amount2Active'
                DataSource = srcFormTypes
                Items.Strings = (
                  #1606#1583#1575#1585#1583
                  #1583#1585' '#1605#1593#1585#1601#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1579#1575#1576#1578' '#1606#1605#1575#1610#1588' '#1588#1608#1583
                  #1603#1604#1610' '#1606#1605#1575#1610#1588' '#1588#1608#1583)
                ParentBiDiMode = False
                TabOrder = 2
              end
              object CmbAmountActive: TDBComboBox
                Left = 213
                Top = 71
                Width = 197
                Height = 21
                Anchors = [akTop, akRight]
                BiDiMode = bdRightToLeft
                DataField = 'AmountActive'
                DataSource = srcFormTypes
                Items.Strings = (
                  #1606#1583#1575#1585#1583
                  #1605#1593#1585#1601#1610' '#1575#1591#1604#1575#1593#1575#1578
                  #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578
                  #1607#1585#1583#1608)
                ParentBiDiMode = False
                TabOrder = 3
              end
              object DBCheckBox17: TDBCheckBox
                Left = 238
                Top = 148
                Width = 172
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1590#1585#1576' '#1583#1585' '#1585#1608#1586#1607#1575#1610' '#1603#1575#1585#1603#1585#1583' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
                DataField = 'MuliplyInDayActive'
                DataSource = srcFormTypes
                ParentBiDiMode = False
                TabOrder = 4
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object ComboEarthProceedsActivate: TDBComboBox
                Left = 213
                Top = 99
                Width = 197
                Height = 21
                Anchors = [akTop, akRight]
                BiDiMode = bdRightToLeft
                DataField = 'EarthProceedsActivate'
                DataSource = srcFormTypes
                Items.Strings = (
                  #1607#1600#1610#1600#1670#1600#1603#1600#1583#1575#1605' '#1601#1593#1575#1604' '#1606#1576#1575#1588#1606#1583
                  #1603#1600#1583'  '#1586#1605#1600#1610#1600#1606' '#1601#1593#1575#1604'    '#1576#1575#1588#1583
                  #1603#1583#1605#1581#1589#1608#1604' '#1601#1593#1575#1604'    '#1576#1575#1588#1583
                  #1607#1600#1600#1600#1600#1600#1600#1600#1585' '#1583#1608' '#1601#1593#1575#1604'   '#1576#1575#1588#1606#1583)
                ParentBiDiMode = False
                TabOrder = 5
              end
              object chkPaymentActive: TDBCheckBox
                Left = 235
                Top = 170
                Width = 175
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1606#1605#1575#1740#1588' '#1605#1575#1606#1583#1607' '#1575#1586' '#1602#1576#1604'/'#1606#1605#1575#1740#1588' '#1583#1585' '#1601#1740#1588
                DataField = 'PayMentShow'
                DataSource = srcFormTypes
                ParentBiDiMode = False
                TabOrder = 6
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object DBCheckBox20: TDBCheckBox
                Left = 292
                Top = 215
                Width = 118
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1603#1583' '#1605#1575#1604#1610#1575#1578' '#1606#1605#1575#1610#1588' '#1588#1608#1583
                DataField = 'TaxCodeShow'
                DataSource = srcFormTypes
                ParentBiDiMode = False
                TabOrder = 7
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object dbchkActiveYearID: TDBCheckBox
                Left = 279
                Top = 192
                Width = 131
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1570#1610#1575' '#1575#1606#1578#1582#1575#1576' '#1587#1575#1604' '#1601#1593#1575#1604' '#1576#1575#1588#1583
                DataField = 'ActiveYearID'
                DataSource = srcFormTypes
                ParentBiDiMode = False
                TabOrder = 8
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = #1605#1606#1608#1607#1575
          ImageIndex = 6
          DesignSize = (
            603
            313)
          object Label43: TLabel
            Left = 461
            Top = 127
            Width = 124
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1605#1581#1604' '#1606#1605#1575#1610#1588' '#1583#1585' '#1605#1606#1608#1610' '#1575#1589#1604#1610
            ExplicitLeft = 368
          end
          object Label25: TLabel
            Left = 461
            Top = 155
            Width = 52
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1585#1583#1610#1601' '#1583#1585' '#1605#1606#1608
            ExplicitLeft = 368
          end
          object cmbShowMnuId: TDBComboBox
            Left = 274
            Top = 123
            Width = 182
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            DataField = 'ShowMnuId'
            DataSource = srcFormTypes
            Items.Strings = (
              #1603#1575#1585#1711#1586#1610#1606#1610' '#1608' '#1662#1585#1587#1606#1604#1610
              #1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583
              #1603#1575#1585#1711#1586#1610#1606#1610' '#1608' '#1581#1602#1608#1602' '#1583#1587#1578#1605#1586#1583
              #1607#1585#1587#1607)
            ParentBiDiMode = False
            TabOrder = 0
          end
          object DBEdit16: TDBEdit
            Left = 405
            Top = 152
            Width = 51
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'MnuRow'
            DataSource = srcFormTypes
            TabOrder = 1
          end
          object GroupBox9: TGroupBox
            Left = 273
            Top = 17
            Width = 188
            Height = 99
            Anchors = [akTop, akRight]
            Caption = ' '#1605#1581#1604' '#1606#1605#1575#1610#1588' '#1583#1585' '#1605#1606#1608#1610' '#1575#1589#1604#1610' '
            TabOrder = 2
            object ChkShowMnuPlace: TCheckListBox
              Left = 2
              Top = 15
              Width = 184
              Height = 82
              Align = alClient
              IntegralHeight = True
              ItemHeight = 13
              Items.Strings = (
                #1576#1585#1606#1575#1605#1607' '#1585#1610#1586#1610' '#1608' '#1570#1605#1608#1586#1588
                #1578#1588#1603#1610#1604#1575#1578' '#1608' '#1591#1576#1602#1607' '#1576#1606#1583#1610' '#1605#1588#1575#1594#1604
                #1603#1575#1585#1711#1586#1610#1606#1610' '#1608' '#1662#1585#1587#1606#1604
                #1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583
                #1605#1583#1610#1585#1610#1578' '#1608' '#1603#1606#1578#1585#1604)
              TabOrder = 0
              OnClick = ChkShowMnuPlaceClick
            end
          end
        end
        object tsContorol: TTabSheet
          Caption = #1603#1606#1578#1585#1604#8207#1607#1575
          ImageIndex = 3
          DesignSize = (
            603
            313)
          object Label27: TLabel
            Left = 482
            Top = 216
            Width = 3
            Height = 13
          end
          object Label18: TLabel
            Left = 427
            Top = 165
            Width = 87
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1588#1605#1575#1585#1607' '#1587#1591#1581' '#1602#1576#1604#1610
            ExplicitLeft = 334
          end
          object Label23: TLabel
            Left = 427
            Top = 86
            Width = 81
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1606#1608#1593' '#1575#1587#1578#1601#1575#1583#1607' '#1578#1575' '#1605#1575#1607
            ExplicitLeft = 334
          end
          object Label17: TLabel
            Left = 427
            Top = 7
            Width = 110
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1606#1608#1593' '#1578#1575#1579#1610#1585' '#1583#1585' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
            ExplicitLeft = 334
          end
          object Label19: TLabel
            Left = 427
            Top = 113
            Width = 102
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1581#1602#1608#1602' '#1608#1605#1586#1575#1610#1575#1610' '#1605#1572#1579#1585
            ExplicitLeft = 334
          end
          object Label21: TLabel
            Left = 427
            Top = 33
            Width = 115
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1606#1608#1593' '#1578#1575#1579#1610#1585' '#1583#1585' '#1581#1603#1605' '#1603#1575#1585#1711#1586#1610#1606#1610
            ExplicitLeft = 334
          end
          object Label22: TLabel
            Left = 427
            Top = 60
            Width = 106
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1606#1608#1593' '#1593#1608#1575#1605#1604' '#1581#1602#1608#1602' '#1608#1605#1586#1575#1610#1575
            ExplicitLeft = 334
          end
          object SpeedButton1: TSpeedButton
            Left = 161
            Top = 108
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton1Click
            ExplicitLeft = 70
          end
          object Label24: TLabel
            Left = 427
            Top = 192
            Width = 127
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1588#1605#1575#1585#1607' '#1587#1591#1581' '#1662#1585#1608#1688#1607' '#1583#1585' '#1603#1575#1585#1603#1585#1583
            ExplicitLeft = 334
          end
          object Label67: TLabel
            Left = 427
            Top = 218
            Width = 169
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Type '#1580#1607#1578' '#1575#1585#1578#1576#1575#1591' '#1575#1591#1604#1575#1593#1575#1578' FormsInfo'
            ExplicitLeft = 334
          end
          object Label68: TLabel
            Left = 427
            Top = 139
            Width = 87
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1662#1610#1588#1608#1606#1583' '#1579#1576#1578' InfoID'
            ExplicitLeft = 334
          end
          object Label69: TLabel
            Left = 428
            Top = 242
            Width = 68
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1601#1585#1605' '#1578#1575#1662#1662' '#1605#1585#1578#1576#1591
            FocusControl = edtMasterFormType
            ExplicitLeft = 337
          end
          object Label70: TLabel
            Left = 426
            Top = 266
            Width = 162
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1601#1610#1604#1583' '#1578#1585#1578#1610#1576' '#1606#1605#1575#1610#1588' '#1583#1585' '#1605#1593#1585#1601#1610' '#1662#1585#1587#1606#1604
            FocusControl = edtPersonelTypeInfoRow
            ExplicitLeft = 335
          end
          object ComboSalaryEffectKind: TDBComboBox
            Left = 161
            Top = 3
            Width = 260
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            DataField = 'SalaryEffectKind'
            DataSource = srcFormTypes
            Items.Strings = (
              #1606#1583#1575#1585#1583
              #1575#1579#1585' '#1605#1579#1576#1578
              #1575#1579#1585' '#1605#1606#1601#1610
              #1605#1579#1576#1578' '#1608' '#1605#1606#1601#1740'('#1607#1585#1583#1608')')
            ParentBiDiMode = False
            TabOrder = 0
          end
          object ComboKargozinyEffectKind: TDBComboBox
            Left = 161
            Top = 29
            Width = 260
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            DataField = 'KargozinyEffectKind'
            DataSource = srcFormTypes
            Items.Strings = (
              #1606#1583#1575#1585#1583
              #1590#1585#1610#1576' '#1583#1585' '#1605#1576#1604#1594' '#1662#1575#1610#1607' '#1575#1583#1575#1585#1607' '#1603#1575#1585
              #1590#1585#1610#1576' '#1583#1585' '#1605#1576#1604#1594' '#1662#1575#1610#1607' '#1607#1585' '#1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610)
            ParentBiDiMode = False
            TabOrder = 1
          end
          object ComboSalaryKind: TDBComboBox
            Left = 161
            Top = 56
            Width = 260
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'SalaryKind'
            DataSource = srcFormTypes
            DropDownCount = 15
            Items.Strings = (
              '0_'#1606#1583#1575#1585#1583
              '1_'#1593#1608#1575#1605#1604' '#1579#1575#1576#1578' '#1581#1602#1608#1602' '#1608#1605#1586#1575#1610#1575
              '2_'#1593#1608#1575#1605#1604' '#1605#1578#1594#1610#1585' '#1581#1603#1605' '#1603#1575#1585#1711#1586#1610#1606#1610' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
              '3_'#1593#1608#1575#1605#1604' '#1605#1578#1594#1610#1585#1594#1610#1585' '#1581#1603#1605' '#1603#1575#1585#1711#1586#1610#1606#1610' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
              '4_'#1605#1581#1575#1587#1576#1575#1578' '#1601#1585#1605#1608#1604#1740
              '5_'#1593#1608#1575#1605#1604' '#1605#1581#1575#1587#1576#1575#1578#1610
              '6_'#1593#1606#1575#1608#1610#1606' '#1605#1575#1605#1608#1585#1610#1578
              '7_'#1587#1606#1608#1575#1578
              '8_'#1593#1610#1583#1610
              '9_'#1608#1575#1605#1607#1575' '#1576#1575' '#1575#1602#1587#1575#1591' '#1605#1587#1575#1608#1610
              '10_'#1576#1610#1605#1607
              '11_'#1605#1575#1604#1610#1575#1578
              '12_'#1603#1587#1608#1585#1575#1578
              '13_'#1575#1590#1575#1601#1575#1578
              '14_'#1608#1575#1605#1607#1575' '#1576#1575' '#1575#1602#1587#1575#1591' '#1605#1578#1601#1575#1608#1578
              '15-'#1662#1575#1583#1575#1588' '#1605#1587#1578#1602#1604' '#1575#1586' '#1581#1602#1608#1602)
            TabOrder = 2
          end
          object ComboUseEndMounthKind: TDBComboBox
            Left = 161
            Top = 82
            Width = 260
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            DataField = 'UseEndMounthKind'
            DataSource = srcFormTypes
            Items.Strings = (
              #8207#1662#1610#1588' '#1601#1585#1590' '#1575#1586' ('#1605#1575#1607')'#8207
              #1606#1605#1575#1610#1588' '#1588#1608#1583' '#1608' '#1579#1576#1578' '#1578#1608#1587#1591' '#1603#1575#1585#1576#1585
              #1605#1581#1575#1587#1576#1607' '#1588#1608#1583)
            ParentBiDiMode = False
            TabOrder = 3
          end
          object DBEdit6: TDBEdit
            Left = 187
            Top = 109
            Width = 234
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'RecalSalaryTypes'
            DataSource = srcFormTypes
            TabOrder = 4
          end
          object edtRecallFormTypes: TDBEdit
            Left = 161
            Top = 161
            Width = 260
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'RecallFormTypes'
            DataSource = srcFormTypes
            TabOrder = 5
          end
          object edtFormInfo4Function: TDBEdit
            Left = 161
            Top = 188
            Width = 260
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'FormInfo4Function'
            DataSource = srcFormTypes
            TabOrder = 6
          end
          object dbedtContactFormType: TDBEdit
            Left = 161
            Top = 214
            Width = 260
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ContactFormType'
            DataSource = srcFormTypes
            TabOrder = 7
          end
          object edtMasterFormType: TDBEdit
            Left = 161
            Top = 238
            Width = 260
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'MasterFormType'
            DataSource = srcFormTypes
            TabOrder = 8
          end
          object ComboPrefixInfoID: TDBComboBox
            Left = 161
            Top = 135
            Width = 260
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            DataField = 'PrefixInfoID'
            DataSource = srcFormTypes
            Items.Strings = (
              #1606#1583#1575#1585#1583
              #1662#1610#1588' '#1601#1585#1590' '#1576#1585' '#1575#1587#1575#1587' InfoID'
              #1602#1591#1593#1610' '#1576#1585' '#1575#1587#1575#1587'Master InfoID')
            ParentBiDiMode = False
            TabOrder = 9
          end
          object edtPersonelTypeInfoRow: TDBEdit
            Left = 161
            Top = 262
            Width = 260
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'PersonelTypeInfoRow'
            DataSource = srcFormTypes
            TabOrder = 10
          end
        end
        object TabSheet13: TTabSheet
          Caption = #1603#1606#1578#1585#1604
          ImageIndex = 9
          DesignSize = (
            603
            313)
          object Label71: TLabel
            Left = 430
            Top = 32
            Width = 140
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1606#1581#1608#1607' '#1579#1576#1578' '#1608#1603#1606#1578#1585#1604' '#1593#1606#1575#1608#1610#1606' '#1578#1603#1585#1575#1585#1610
            ExplicitLeft = 337
          end
          object Label9: TLabel
            Left = 430
            Top = 72
            Width = 121
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1606#1581#1608#1607' '#1579#1576#1578' '#1608#1603#1606#1578#1585#1604' '#1705#1583' '#1578#1603#1585#1575#1585#1610
          end
          object comboRepetitiveControl: TDBComboBox
            Left = 164
            Top = 29
            Width = 260
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            DataField = 'RepetitiveControl'
            DataSource = srcFormTypes
            Items.Strings = (
              #1606#1583#1575#1585#1583
              #1603#1606#1578#1585#1604' '#1583#1585' '#1603#1604#1610#1607' '#1578#1575#1610#1662' '#1607#1575
              #1603#1606#1578#1585#1604' '#1583#1585' '#1578#1575#1610#1662' '#1580#1575#1585#1610)
            ParentBiDiMode = False
            TabOrder = 0
          end
          object ComboRepetitiveControlInfoID: TDBComboBox
            Left = 164
            Top = 69
            Width = 260
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            DataField = 'RepetitiveControlInfoID'
            DataSource = srcFormTypes
            Items.Strings = (
              #1606#1583#1575#1585#1583
              #1603#1606#1578#1585#1604' '#1583#1585' '#1603#1604#1610#1607' '#1578#1575#1610#1662' '#1607#1575
              #1603#1606#1578#1585#1604' '#1583#1585' '#1578#1575#1610#1662' '#1580#1575#1585#1610)
            ParentBiDiMode = False
            TabOrder = 1
          end
        end
        object TabSheet2: TTabSheet
          Caption = #1581#1587#1575#1576#1583#1575#1585#1610
          ImageIndex = 1
          DesignSize = (
            603
            313)
          object Label5: TLabel
            Left = 543
            Top = 28
            Width = 48
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1581#1587#1575#1576#1583#1575#1585#1610
          end
          object Label6: TLabel
            Left = 543
            Top = 58
            Width = 37
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1578#1601#1589#1610#1604#1610
          end
          object Label12: TLabel
            Left = 543
            Top = 88
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1578#1601#1589#1610#1604#1610'2'
          end
          object Label13: TLabel
            Left = 543
            Top = 118
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1705#1583' '#1578#1601#1589#1740#1604#1740'3'
          end
          object Label3: TLabel
            Left = 543
            Top = 145
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1705#1583' '#1578#1601#1589#1740#1604#1740'4'
          end
          object lbl1: TLabel
            Left = 0
            Top = 0
            Width = 603
            Height = 13
            Align = alTop
            Caption = #1606#1608#1593' '#1575#1587#1578#1601#1575#1583#1607'  '#1603#1583'....'
            ExplicitLeft = 515
            ExplicitWidth = 88
          end
          object Label16: TLabel
            Left = 0
            Top = 246
            Width = 603
            Height = 13
            Align = alBottom
            Caption = #1601#1585#1605' '#1578#1575#1740#1662' '#1582#1586#1575#1606#1607' '#1580#1607#1578' '#1705#1606#1578#1585#1604' '#1587#1601#1578#1607' '#1662#1585#1587#1606#1604'   FormType = 45'
            ExplicitLeft = 336
            ExplicitWidth = 267
          end
          object ComboTopicCodeKind: TDBComboBox
            Left = 4
            Top = 24
            Width = 533
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'TopicCodeKind'
            DataSource = srcFormTypes
            DropDownCount = 16
            Items.Strings = (
              '0-'#1606#1583#1575#1585#1583
              '1-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1581#1603#1605' '#1603#1575#1585' '#1711#1586#1610#1606#1610
              '2-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1593#1608#1575#1605#1604' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
              '3-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1603#1583#1610#1606#1711' '#1662#1585#1608#1688#1607' '#1607#1575
              '4-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' '
              '5-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1575#1591#1604#1575#1593#1575#1578' Master'#1582#1608#1575#1606#1583#1607' '#1588#1608#1583' '
              '6-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1585#1587#1606#1604#1610
              '7-'#1575#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578
              '8-'#1603#1583' '#1605#1581#1589#1608#1604' '#1583#1585' '#1601#1585#1605' '#1603#1575#1585#1603#1585#1583
              '9-'#1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' 3 '#1583#1585' '#1601#1585#1605' '#1603#1575#1585#1603#1585#1583
              
                '10-'#1575#1711#1585' '#1593#1606#1575#1608#1610#1606' '#1605#1586#1575#1610#1575' - '#1578#1601#1589#1610#1604#1610'2'#39' 2  '#1576#1586#1585#1711#1578#1585' '#1575#1586' '#1589#1601#1585' '#1576#1608#1583' '#1548'  '#1575#1591#1604#1575#1593#1575#1578' '#1593 +
                #1606#1575#1608#1610#1606' '#1605#1586#1575#1610#1575' '#1548' '#1583#1585' '#1594#1610#1585' '#1575#1610#1606' '#1589#1608#1585#1578' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
              '11-'#1576#1589#1608#1585#1578' '#1578#1585#1603#1610#1576#1610' : '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' & '#1593#1606#1575#1608#1610#1606' '#1581#1602#1608#1602' '#1605#1586#1575#1610#1575
              
                '12-'#1575#1711#1585' '#1593#1606#1575#1608#1610#1606' '#1605#1586#1575#1610#1575' - '#1605#1593#1740#1606' '#1576#1585#1575#1576#1585' '#1589#1601#1585' '#1576#1608#1583#1548' '#1605#1593#1740#1606' '#1662#1585#1608#1688#1607#1548' '#1583#1585' '#1594#1610#1585' '#1575#1610#1606 +
                ' '#1589#1608#1585#1578' '#1605#1593#1740#1606' '#1593#1606#1575#1608#1740#1606' '#1581#1602#1608#1602' '#1608' '#1608#1605#1586#1575#1740#1575
              
                '13-'#1575#1711#1585' '#1603#1583' '#1581#1587#1575#1576' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1585#1587#1606#1604#1610' '#1589#1601#1585' '#1576#1608#1583' '#1575#1586' '#1593#1608#1575#1605#1604' '#1581#1602#1608#1602' '#1605#1586#1575#1610#1575' '#1583#1585' '#1594#1610#1585 +
                ' '#1575#1610#1606#1589#1608#1585#1578' '#1575#1586' '#1603#1583' '#1581#1587#1575#1576' '#1662#1585#1587#1606#1604)
            TabOrder = 0
          end
          object ComboDetailCodeKind: TDBComboBox
            Left = 4
            Top = 54
            Width = 533
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'DetailCodeKind'
            DataSource = srcFormTypes
            DropDownCount = 16
            Items.Strings = (
              '0-'#1606#1583#1575#1585#1583
              '1-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1581#1603#1605' '#1603#1575#1585' '#1711#1586#1610#1606#1610
              '2-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1593#1608#1575#1605#1604' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
              '3-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1603#1583#1610#1606#1711' '#1662#1585#1608#1688#1607' '#1607#1575
              '4-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' '
              '5-'#1606#1608#1593' '#1581#1603#1605' '#1575#1587#1578#1582#1583#1575#1605
              '6-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1585#1587#1606#1604#1610
              '7-'#1575#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578
              '8-'#1603#1583' '#1605#1581#1589#1608#1604' '#1583#1585' '#1601#1585#1605' '#1603#1575#1585#1603#1585#1583
              '9-'#1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' 3 '#1583#1585' '#1601#1585#1605' '#1603#1575#1585#1603#1585#1583
              '10-'#1593#1608#1575#1605#1604' '#1581#1602#1608#1602' '#1605#1586#1575#1610#1575'-'#1575#1711#1585' '#1589#1601#1585' '#1576#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1585#1587#1606#1604#1610
              
                '11-'#1575#1711#1585' '#1578#1601#1589#1610#1604#1610' '#1593#1606#1575#1608#1610#1606' '#1605#1586#1575#1610#1575' '#1576#1585#1575#1576#1585' '#1576#1575' -1 '#1576#1608#1583' '#1548' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1585#1587#1606#1604#1610' '#1583#1585' '#1594 +
                #1610#1585' '#1575#1610#1606#1589#1608#1585#1578'  '#1593#1606#1575#1608#1610#1606' '#1605#1586#1575#1610#1575
              
                '12-'#1575#1711#1585' '#1578#1601#1589#1610#1604#1610' '#1593#1606#1575#1608#1610#1606' '#1605#1586#1575#1610#1575' '#1576#1585#1575#1576#1585' '#1576#1575' -1 '#1576#1608#1583' '#1548' '#1575#1586' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1740' '#1583#1585' ' +
                #1594#1610#1585' '#1575#1610#1606#1589#1608#1585#1578'  '#1593#1606#1575#1608#1610#1606' '#1605#1586#1575#1610#1575
              '')
            TabOrder = 3
          end
          object ComboCTopicCodeKind: TDBComboBox
            Left = 4
            Top = 85
            Width = 533
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'CTopicCodeKind'
            DataSource = srcFormTypes
            DropDownCount = 16
            Items.Strings = (
              '0-'#1606#1583#1575#1585#1583
              '1-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1581#1603#1605' '#1603#1575#1585' '#1711#1586#1610#1606#1610
              '2-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1593#1608#1575#1605#1604' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
              '3-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1603#1583#1610#1606#1711' '#1662#1585#1608#1688#1607' '#1607#1575
              '4-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
              '5-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1575#1591#1604#1575#1593#1575#1578' Master'#1582#1608#1575#1606#1583#1607' '#1588#1608#1583
              '6-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1585#1587#1606#1604#1610
              '7-'#1575#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578
              '8-'#1603#1583' '#1605#1581#1589#1608#1604' '#1583#1585' '#1601#1585#1605' '#1603#1575#1585#1603#1585#1583
              '9-'#1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' 3 '#1583#1585' '#1601#1585#1605' '#1603#1575#1585#1603#1585#1583
              '10-'#1593#1608#1575#1605#1604' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575' '#1575#1711#1585' '#1589#1601#1585' '#1576#1608#1583' - '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
              
                '11-'#1575#1711#1585' '#1578#1601#1589#1610#1604#1610' '#1589#1601#1585' '#1576#1608#1583' - '#1593#1608#1575#1605#1604' '#1581#1602#1608#1602' '#1605#1586#1575#1610#1575' '#1583#1585' '#1594#1610#1585' '#1575#1610#1606#1589#1608#1585#1578' '#1608#1575#1581#1583' '#1587#1575#1586 +
                #1605#1575#1606#1610
              
                '12-'#1575#1711#1585' '#1578#1601#1589#1610#1604#1610'2'#39' '#1576#1586#1585#1711#1578#1585' '#1575#1586' '#1589#1601#1585' '#1576#1608#1583' --- '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' '#1583#1585' '#1594#1610#1585' '#1575#1610#1606#1589#1608#1585 +
                #1578' '#1589#1601#1585
              
                '13-'#1575#1711#1585' '#1583#1585' '#1605#1593#1585#1601#1610' '#1605#1586#1575#1610#1575' '#1605#1602#1583#1575#1585' -1 '#1576#1608#1583' '#1575#1586' '#1662#1585#1608#1688#1607' '#1607#1575' '#1583#1585' '#1594#1610#1585' '#1575#1610#1606#1589#1608#1585#1578' '#1582#1608 +
                #1583' '#1605#1593#1585#1601#1610' '#1605#1586#1575#1610#1575' '
              '')
            TabOrder = 1
          end
          object ComboCTopicCode2Kind: TDBComboBox
            Left = 4
            Top = 115
            Width = 533
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'CTopicCode2Kind'
            DataSource = srcFormTypes
            DropDownCount = 16
            Items.Strings = (
              '0-'#1606#1583#1575#1585#1583
              '1-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1581#1603#1605' '#1603#1575#1585' '#1711#1586#1610#1606#1610
              '2-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1593#1608#1575#1605#1604' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
              '3-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1603#1583#1610#1606#1711' '#1662#1585#1608#1688#1607' '#1607#1575
              '4-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' '
              '5-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1575#1591#1604#1575#1593#1575#1578' Master'#1582#1608#1575#1606#1583#1607' '#1588#1608#1583' '
              '6-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1585#1587#1606#1604#1610
              '7-'#1575#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578
              '8-'#1603#1583' '#1605#1581#1589#1608#1604' '#1583#1585' '#1601#1585#1605' '#1603#1575#1585#1603#1585#1583
              '9-'#1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' 3 '#1583#1585' '#1601#1585#1605' '#1603#1575#1585#1603#1585#1583
              
                '10-'#1575#1711#1585' '#1583#1585' '#1605#1593#1585#1601#1610' '#1605#1586#1575#1610#1575' '#1605#1602#1583#1575#1585' -1 '#1576#1608#1583' '#1589#1601#1585' '#1583#1585' '#1594#1610#1585' '#1575#1610#1606#1589#1608#1585#1578' '#1575#1586' '#1662#1585#1608#1688#1607' '#1607 +
                #1575' '#1582#1608#1575#1606#1583#1607' '#1588#1608#1583' '
              '11- '#1605#1575#1607')  '#1705#1583#1605#1585#1705#1586#1607#1586#1740#1606#1607' 3 '#1575#1586' '#1586#1605#1575#1606#1607#1575#1740' '#1575#1587#1578#1575#1606#1583#1575#1585#1583' )'
              '12-'#1705#1583#1605#1585#1705#1586#1607#1586#1740#1606#1607' 3 '#1575#1586' '#1586#1605#1575#1606#1607#1575#1740' '#1575#1587#1578#1575#1606#1583#1575#1585#1583'(X)'
              '13- '#1593#1608#1575#1605#1604' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575' '#1575#1711#1585' '#1589#1601#1585' '#1576#1608#1583' - '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
              
                '14-'#1575#1711#1585' '#1578#1601#1589#1610#1604#1610'3 '#1576#1586#1585#1711#1578#1585' '#1575#1586' '#1589#1601#1585' '#1576#1608#1583' --- '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' '#1583#1585' '#1594#1610#1585' '#1575#1610#1606#1589#1608#1585#1578 +
                ' '#1589#1601#1585)
            TabOrder = 2
          end
          object ComboCTopicCode3Kind: TDBComboBox
            Left = 4
            Top = 145
            Width = 533
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'CTopicCode3Kind'
            DataSource = srcFormTypes
            DropDownCount = 16
            Items.Strings = (
              '0-'#1606#1583#1575#1585#1583
              '1-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1581#1603#1605' '#1603#1575#1585' '#1711#1586#1610#1606#1610
              '2-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1593#1608#1575#1605#1604' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
              '3-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1603#1583#1610#1606#1711' '#1662#1585#1608#1688#1607' '#1607#1575
              '4-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610' '
              '5-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1575#1591#1604#1575#1593#1575#1578' Master'#1582#1608#1575#1606#1583#1607' '#1588#1608#1583' '
              '6-'#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1585#1587#1606#1604#1610
              '7-'#1575#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578
              '8-'#1603#1583' '#1605#1581#1589#1608#1604' '#1583#1585' '#1601#1585#1605' '#1603#1575#1585#1603#1585#1583
              '9-'#1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' 3 '#1583#1585' '#1601#1585#1605' '#1603#1575#1585#1603#1585#1583
              '10-  '#1705#1583#1605#1585#1705#1586#1607#1586#1740#1606#1607' 3 '#1575#1586' '#1586#1605#1575#1606#1607#1575#1740' '#1575#1587#1578#1575#1606#1583#1575#1585#1583'  ('#1605#1575#1607')'
              '11-'#1705#1583#1605#1585#1705#1586#1607#1586#1740#1606#1607' 3 '#1575#1586' '#1586#1605#1575#1606#1607#1575#1740' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
              
                '12-'#1662#1740#1588' '#1601#1585#1590' '#1575#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1585#1587#1606#1604#1740' '#1548' '#1575#1711#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1585#1587#1606#1604#1740' '#1589#1601#1585' '#1576#1608#1583' '#1575#1586' '#1608#1575#1581 +
                #1583' '#1587#1575#1586#1605#1575#1606#1740)
            TabOrder = 4
          end
          object chkInsertAccCode: TDBCheckBox
            Left = 389
            Top = 172
            Width = 148
            Height = 26
            Anchors = [akTop, akRight]
            Caption = #1583#1585#1580' '#1705#1583#1607#1575#1740' '#1581#1587#1575#1576#1583#1575#1585#1740
            DataField = 'InsertAccCode'
            DataSource = srcFormTypes
            TabOrder = 5
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dbchkSalaryIDinDocShow: TDBCheckBox
            Left = 248
            Top = 204
            Width = 289
            Height = 26
            Anchors = [akTop, akRight]
            Caption = #1606#1605#1575#1740#1588' '#1601#1593#1575#1604' '#1608' '#1594#1740#1585' '#1601#1593#1575#1604' '#1705#1585#1583#1606' '#1593#1606#1575#1608#1740#1606' '#1583#1585' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1740
            DataField = 'SalaryIDinDocShow'
            DataSource = srcFormTypes
            TabOrder = 6
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object edtPromissoryFormType: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 262
            Width = 597
            Height = 21
            Margins.Bottom = 30
            Align = alBottom
            DataField = 'PromissoryFormType'
            DataSource = srcFormTypes
            TabOrder = 7
          end
        end
        object tsPrint: TTabSheet
          Caption = #1670#1575#1662
          ImageIndex = 2
          DesignSize = (
            603
            313)
          object Label10: TLabel
            Left = 572
            Top = 63
            Width = 25
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1670#1575#1662'2'
            FocusControl = DBEdit5
            ExplicitLeft = 479
          end
          object SpeedButton4: TSpeedButton
            Left = 350
            Top = 20
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton4Click
            ExplicitLeft = 257
          end
          object SpeedButton5: TSpeedButton
            Left = 350
            Top = 59
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton5Click
            ExplicitLeft = 257
          end
          object Label7: TLabel
            Left = 572
            Top = 103
            Width = 25
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1670#1575#1662'3'
            ExplicitLeft = 479
          end
          object Label11: TLabel
            Left = 572
            Top = 145
            Width = 25
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1670#1575#1662'4'
            ExplicitLeft = 479
          end
          object SpeedButton3: TSpeedButton
            Left = 350
            Top = 99
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton3Click
            ExplicitLeft = 257
          end
          object SpeedButton6: TSpeedButton
            Left = 350
            Top = 141
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton6Click
            ExplicitLeft = 257
          end
          object Label8: TLabel
            Left = 572
            Top = 25
            Width = 25
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1670#1575#1662'1'
            FocusControl = DBEdit4
            ExplicitLeft = 479
          end
          object Label26: TLabel
            Left = 306
            Top = 25
            Width = 35
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1593#1606#1608#1575#1606' 1'
            FocusControl = DBEdit4
            ExplicitLeft = 213
          end
          object Label28: TLabel
            Left = 306
            Top = 65
            Width = 35
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1593#1606#1608#1575#1606' 2'
            FocusControl = DBEdit4
            ExplicitLeft = 213
          end
          object Label29: TLabel
            Left = 306
            Top = 105
            Width = 35
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1593#1606#1608#1575#1606' 3'
            FocusControl = DBEdit4
            ExplicitLeft = 213
          end
          object Label30: TLabel
            Left = 306
            Top = 145
            Width = 35
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1593#1606#1608#1575#1606' 4'
            FocusControl = DBEdit4
            ExplicitLeft = 213
          end
          object Label31: TLabel
            Left = 514
            Top = 165
            Width = 55
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1605#1578#1606' '#1586#1610#1585' '#1670#1575#1662
            FocusControl = DBMemo2
            ExplicitLeft = 421
          end
          object Label32: TLabel
            Left = 0
            Top = 0
            Width = 603
            Height = 13
            Align = alTop
            Caption = #1670#1575#1662' '#1581#1603#1605' '#1603#1575#1585#1711#1586#1610#1606#1610'  '#1583#1585' '#1605#1593#1585#1601#1610' '#1606#1608#1593' '#1575#1587#1578#1582#1583#1575#1605' '#1578#1606#1592#1610#1605' '#1605#1610' '#1588#1608#1583
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 330
            ExplicitWidth = 273
          end
          object DBEdit4: TDBEdit
            Left = 374
            Top = 21
            Width = 195
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ReportFileName1'
            DataSource = srcFormTypes
            TabOrder = 0
          end
          object DBEdit5: TDBEdit
            Left = 374
            Top = 59
            Width = 195
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ReportFileName2'
            DataSource = srcFormTypes
            TabOrder = 1
          end
          object DBEdit9: TDBEdit
            Left = 374
            Top = 99
            Width = 195
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ReportFileName3'
            DataSource = srcFormTypes
            TabOrder = 2
          end
          object DBEdit10: TDBEdit
            Left = 374
            Top = 141
            Width = 195
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ReportFileName4'
            DataSource = srcFormTypes
            TabOrder = 3
          end
          object DBEdit21: TDBEdit
            Left = 105
            Top = 21
            Width = 195
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ReportCaption1'
            DataSource = srcFormTypes
            TabOrder = 4
          end
          object DBEdit22: TDBEdit
            Left = 105
            Top = 61
            Width = 195
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ReportCaption2'
            DataSource = srcFormTypes
            TabOrder = 5
          end
          object DBEdit23: TDBEdit
            Left = 105
            Top = 101
            Width = 195
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ReportCaption3'
            DataSource = srcFormTypes
            TabOrder = 6
          end
          object DBEdit24: TDBEdit
            Left = 105
            Top = 141
            Width = 195
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ReportCaption4'
            DataSource = srcFormTypes
            TabOrder = 7
          end
          object DBMemo2: TDBMemo
            Tag = 111
            Left = 108
            Top = 181
            Width = 461
            Height = 58
            Anchors = [akTop, akRight]
            DataField = 'ReportFooter'
            DataSource = srcFormTypes
            TabOrder = 8
          end
          object dbchkPrintAfterPost: TDBCheckBox
            Left = 350
            Top = 250
            Width = 219
            Height = 17
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = #1670#1575#1662' '#1575#1578#1608#1605#1575#1578#1610#1603' '#1662#1587' '#1575#1586' '#1579#1576#1578' '#1605#1585#1582#1589#1610' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
            DataField = 'PrintAfterPost'
            DataSource = srcFormTypes
            TabOrder = 9
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object TabSheet5: TTabSheet
          Caption = #1587#1575#1610#1585
          ImageIndex = 5
          DesignSize = (
            603
            313)
          object Label33: TLabel
            Left = 511
            Top = 29
            Width = 68
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610'1'
            ExplicitLeft = 418
          end
          object DBCheckBox4: TDBCheckBox
            Left = 438
            Top = 93
            Width = 146
            Height = 18
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1585#1610#1582'  '#1603#1605#1603#1610' 1  '#1606#1605#1575#1610#1588' '#1588#1608#1583
            DataField = 'AidInfoDate1Active'
            DataSource = srcFormTypes
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '2'
          end
          object DBCheckBox9: TDBCheckBox
            Left = 182
            Top = 58
            Width = 145
            Height = 17
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610' 2 '#1606#1605#1575#1610#1588' '#1588#1608#1583
            DataField = 'AidInfoNo2Active'
            DataSource = srcFormTypes
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '2'
          end
          object DBCheckBox12: TDBCheckBox
            Left = 182
            Top = 93
            Width = 146
            Height = 17
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1585#1610#1582'   '#1603#1605#1603#1610' 2 '#1606#1605#1575#1610#1588' '#1588#1608#1583' '
            DataField = 'AidInfoDate2Active'
            DataSource = srcFormTypes
            TabOrder = 3
            ValueChecked = '1'
            ValueUnchecked = '2'
          end
          object GrpPerson1: TGroupBox
            Left = 352
            Top = 128
            Width = 231
            Height = 49
            Anchors = [akTop, akRight]
            Caption = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1603#1604#1605#1607' '#1603#1605#1603#1610'1'
            TabOrder = 1
            object DBEdit11: TDBEdit
              Left = 3
              Top = 20
              Width = 225
              Height = 21
              DataField = 'AidInfo1Caption'
              DataSource = srcFormTypes
              TabOrder = 0
            end
          end
          object GroupBox1: TGroupBox
            Left = 100
            Top = 128
            Width = 231
            Height = 49
            Anchors = [akTop, akRight]
            Caption = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1603#1604#1605#1607' '#1603#1605#1603#1610'2'
            TabOrder = 4
            object DBEdit12: TDBEdit
              Left = 3
              Top = 21
              Width = 225
              Height = 21
              DataField = 'AidInfo2Caption'
              DataSource = srcFormTypes
              TabOrder = 0
            end
          end
          object ComboAidInfoNo1Active: TDBComboBox
            Left = 103
            Top = 26
            Width = 402
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            DataField = 'AidInfoNo1Active'
            DataSource = srcFormTypes
            Items.Strings = (
              #1594#1610#1585' '#1601#1593#1575#1604
              #1588#1605#1575#1585#1607' '#1603#1605#1603#1610'1 '#1606#1605#1575#1610#1588' '#1588#1608#1583
              #1588#1605#1575#1585#1607' '#1603#1605#1603#1610'1 '#1606#1605#1575#1610#1588' '#1588#1608#1583' '#1608' '#1576#1589#1608#1585#1578' '#1578#1585#1578#1610#1576#1610' '#1603#1583' '#1575#1610#1580#1575#1583' '#1588#1608#1583)
            ParentBiDiMode = False
            TabOrder = 5
          end
        end
        object TabSheet6: TTabSheet
          Caption = #1578#1608#1590#1610#1581#1575#1578
          ImageIndex = 5
          DesignSize = (
            603
            313)
          object GroupBox2: TGroupBox
            Left = 16
            Top = 20
            Width = 556
            Height = 105
            Anchors = [akLeft, akTop, akRight]
            Caption = #1578#1608#1590#1610#1581#1575#1578' '#1586#1576#1575#1606' 1 '#1576#1585#1606#1575#1605#1607
            TabOrder = 0
            object DBMemo1: TDBMemo
              Tag = 111
              AlignWithMargins = True
              Left = 5
              Top = 18
              Width = 546
              Height = 82
              Align = alClient
              DataField = 'Note_L1'
              DataSource = srcFormTypes
              TabOrder = 0
            end
          end
          object GroupBox3: TGroupBox
            Left = 16
            Top = 152
            Width = 556
            Height = 105
            Anchors = [akLeft, akTop, akRight]
            Caption = #1578#1608#1590#1610#1581#1575#1578' '#1586#1576#1575#1606' 2 '#1576#1585#1606#1575#1605#1607
            TabOrder = 1
            object DBMemo5: TDBMemo
              AlignWithMargins = True
              Left = 5
              Top = 18
              Width = 546
              Height = 82
              Align = alClient
              DataField = 'Note_L2'
              DataSource = srcFormTypes
              TabOrder = 0
            end
          end
        end
        object TabSheet8: TTabSheet
          Caption = #1583#1587#1578#1585#1587#1610
          ImageIndex = 7
          DesignSize = (
            603
            313)
          object Label46: TLabel
            Left = 532
            Top = 6
            Width = 26
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1575#1590#1575#1601#1607
            FocusControl = DBEdit29
            ExplicitLeft = 439
          end
          object Label47: TLabel
            Left = 532
            Top = 39
            Width = 33
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1608#1610#1585#1575#1610#1588
            FocusControl = DBEdit30
            ExplicitLeft = 439
          end
          object Label48: TLabel
            Left = 532
            Top = 72
            Width = 23
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1581#1584#1601
            FocusControl = DBEdit31
            ExplicitLeft = 439
          end
          object Label49: TLabel
            Left = 532
            Top = 106
            Width = 59
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578
            FocusControl = edtChangeStateLevelID
            ExplicitLeft = 439
          end
          object Label50: TLabel
            Left = 532
            Top = 139
            Width = 19
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1670#1575#1662
            FocusControl = DBEdit33
            ExplicitLeft = 439
          end
          object Label51: TLabel
            Left = 532
            Top = 172
            Width = 55
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1591#1585#1575#1581#1610' '#1670#1575#1662
            FocusControl = DBEdit34
            ExplicitLeft = 439
          end
          object Label52: TLabel
            Left = 140
            Top = 206
            Width = 97
            Height = 13
            Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1587#1575#1610#1585#1587#1585#1601#1589#1607#1575
            FocusControl = DBEdit35
          end
          object Label53: TLabel
            Left = 140
            Top = 6
            Width = 48
            Height = 13
            Caption = #1581#1587#1575#1576#1583#1575#1585#1610
            FocusControl = DBEdit36
          end
          object Label54: TLabel
            Left = 140
            Top = 39
            Width = 61
            Height = 13
            Caption = #1587#1575#1610#1585#1603#1606#1578#1585#1604' '#1607#1575
            FocusControl = DBEdit37
          end
          object Label55: TLabel
            Left = 140
            Top = 72
            Width = 71
            Height = 13
            Caption = ' '#1575#1585#1587#1575#1604' '#8207#1576#1607' Excel'
            FocusControl = DBEdit38
          end
          object Label56: TLabel
            Left = 140
            Top = 106
            Width = 106
            Height = 13
            Caption = #1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1591#1593#1610
            FocusControl = DBEdit39
          end
          object Label57: TLabel
            Left = 140
            Top = 139
            Width = 95
            Height = 13
            Caption = #1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1575#1574#1605
            FocusControl = DBEdit40
          end
          object Label58: TLabel
            Left = 140
            Top = 172
            Width = 37
            Height = 13
            Caption = #1605#1581#1575#1587#1576#1607
            FocusControl = DBEdit41
          end
          object Label59: TLabel
            Left = 532
            Top = 206
            Width = 66
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1575#1606#1578#1602#1575#1604' '#1575#1591#1604#1575#1593#1575#1578
            FocusControl = DBEdit42
            ExplicitLeft = 439
          end
          object DBEdit29: TDBEdit
            Left = 394
            Top = 2
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ADDLevelID'
            DataSource = srcFormTypes
            TabOrder = 0
          end
          object DBEdit30: TDBEdit
            Left = 394
            Top = 35
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'EditLevelID'
            DataSource = srcFormTypes
            TabOrder = 1
          end
          object DBEdit31: TDBEdit
            Left = 394
            Top = 68
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'DeleteLevelID'
            DataSource = srcFormTypes
            TabOrder = 2
          end
          object edtChangeStateLevelID: TDBEdit
            Left = 394
            Top = 102
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ChangeStateLevelID'
            DataSource = srcFormTypes
            TabOrder = 3
          end
          object DBEdit33: TDBEdit
            Left = 394
            Top = 135
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'PrintLevelID'
            DataSource = srcFormTypes
            TabOrder = 4
          end
          object DBEdit34: TDBEdit
            Left = 394
            Top = 168
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'PrintDesignLevelID'
            DataSource = srcFormTypes
            TabOrder = 5
          end
          object DBEdit35: TDBEdit
            Left = 0
            Top = 202
            Width = 134
            Height = 21
            DataField = 'FormRelatedLevelID'
            DataSource = srcFormTypes
            TabOrder = 13
          end
          object DBEdit36: TDBEdit
            Left = 0
            Top = 2
            Width = 134
            Height = 21
            DataField = 'AccCodeLevelID'
            DataSource = srcFormTypes
            TabOrder = 7
          end
          object DBEdit37: TDBEdit
            Left = 0
            Top = 35
            Width = 134
            Height = 21
            DataField = 'OtherCtrlLevelID'
            DataSource = srcFormTypes
            TabOrder = 8
          end
          object DBEdit38: TDBEdit
            Left = 0
            Top = 68
            Width = 134
            Height = 21
            DataField = 'XlsLevelID'
            DataSource = srcFormTypes
            TabOrder = 9
          end
          object DBEdit39: TDBEdit
            Left = 0
            Top = 102
            Width = 134
            Height = 21
            DataField = 'FinalStateEditLevelID'
            DataSource = srcFormTypes
            TabOrder = 10
          end
          object DBEdit40: TDBEdit
            Left = 0
            Top = 135
            Width = 134
            Height = 21
            DataField = 'ConstantStateEditLevelID'
            DataSource = srcFormTypes
            TabOrder = 11
          end
          object DBEdit41: TDBEdit
            Left = 0
            Top = 168
            Width = 134
            Height = 21
            DataField = 'CalcLevelID'
            DataSource = srcFormTypes
            TabOrder = 12
          end
          object DBEdit42: TDBEdit
            Left = 394
            Top = 202
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'SendLevelID'
            DataSource = srcFormTypes
            TabOrder = 6
          end
        end
        object TabSheet9: TTabSheet
          Caption = #1575#1589#1591#1604#1575#1581#1575#1578
          ImageIndex = 8
          DesignSize = (
            603
            313)
          object Label60: TLabel
            Left = 429
            Top = 16
            Width = 152
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1593#1606#1608#1575#1606' '#1605#1576#1604#1594' '#1579#1575#1576#1578' 1 '#1610#1575' '#1606#1585#1582' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
            FocusControl = DBEdit43
            ExplicitLeft = 338
          end
          object Label61: TLabel
            Left = 429
            Top = 47
            Width = 102
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1593#1606#1608#1575#1606' '#1605#1576#1604#1594'/'#1575#1601#1585#1575#1583' '#1605#1593#1575#1601
            FocusControl = DBEdit44
            ExplicitLeft = 338
          end
          object Label62: TLabel
            Left = 429
            Top = 78
            Width = 74
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1593#1606#1608#1575#1606' '#1605#1583#1578' ('#1585#1608#1586')'
            FocusControl = DBEdit45
            ExplicitLeft = 338
          end
          object Label63: TLabel
            Left = 429
            Top = 109
            Width = 92
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1593#1606#1608#1575#1606' '#1605#1583#1578' ('#1587#1575#1593#1578')'
            FocusControl = DBEdit46
            ExplicitLeft = 338
          end
          object Label64: TLabel
            Left = 429
            Top = 140
            Width = 89
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1605#1581#1589#1608#1604
            FocusControl = DBEdit47
            ExplicitLeft = 338
          end
          object Label65: TLabel
            Left = 429
            Top = 172
            Width = 77
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1586#1605#1610#1606
            FocusControl = DBEdit48
            ExplicitLeft = 338
          end
          object Label66: TLabel
            Left = 429
            Top = 204
            Width = 99
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1605#1576#1604#1594' '#1575#1608#1604#1610#1607
            FocusControl = DBEdit49
            ExplicitLeft = 338
          end
          object DBEdit43: TDBEdit
            Left = 227
            Top = 12
            Width = 200
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'AmountCaption'
            DataSource = srcFormTypes
            TabOrder = 0
          end
          object DBEdit44: TDBEdit
            Left = 227
            Top = 43
            Width = 200
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'Amount2Caption'
            DataSource = srcFormTypes
            TabOrder = 1
          end
          object DBEdit45: TDBEdit
            Left = 227
            Top = 74
            Width = 200
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'StandardDayCaption'
            DataSource = srcFormTypes
            TabOrder = 2
          end
          object DBEdit46: TDBEdit
            Left = 227
            Top = 105
            Width = 200
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'StandardTimeCaption'
            DataSource = srcFormTypes
            TabOrder = 3
          end
          object DBEdit47: TDBEdit
            Left = 227
            Top = 136
            Width = 200
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ProcName'
            DataSource = srcFormTypes
            TabOrder = 4
          end
          object DBEdit48: TDBEdit
            Left = 227
            Top = 168
            Width = 200
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'EarthName'
            DataSource = srcFormTypes
            TabOrder = 5
          end
          object DBEdit49: TDBEdit
            Left = 227
            Top = 200
            Width = 200
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'FirstAmountName'
            DataSource = srcFormTypes
            TabOrder = 6
          end
        end
        object TabSheet3: TTabSheet
          Caption = #1711#1585#1583#1588' '#1705#1575#1585
          ImageIndex = 10
          DesignSize = (
            603
            313)
          object Label34: TLabel
            Left = 519
            Top = 38
            Width = 43
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1711#1585#1583#1588' '#1705#1575#1585
            ExplicitLeft = 426
          end
        end
      end
      object dbchkDecExtStateActive: TDBCheckBox
        Left = 272
        Top = 119
        Width = 219
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = #1594#1610#1585#1601#1593#1575#1604' '#1603#1585#1583#1606' '#1605#1581#1575#1587#1576#1575#1578' '#1605#1608#1585#1583#1610' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
        DataField = 'DecExtStateActive'
        DataSource = srcFormTypes
        ParentBiDiMode = False
        TabOrder = 5
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object chkWageKind_Active: TDBCheckBox
        Left = 347
        Top = 142
        Width = 144
        Height = 17
        Alignment = taLeftJustify
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = #1606#1608#1593' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1740#1575' '#1601#1593#1575#1604' '#1576#1575#1588#1583
        DataField = 'WageKind_Active'
        DataSource = srcFormTypes
        ParentBiDiMode = False
        TabOrder = 6
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object DBGrid1: TCedarDbgrid
      Left = 615
      Top = 2
      Width = 385
      Height = 518
      Align = alClient
      AutoFitColWidths = True
      Color = clCream
      DataSource = srcFormTypes
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
      FooterParams.Font.Height = -13
      FooterParams.Font.Name = 'Tahoma'
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      FooterParams.VertLines = False
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clGradientInactiveCaption
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      RowHeight = 18
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SearchPanel.Location = splHorzScrollBarExtraPanelEh
      SortLocal = True
      TabOrder = 0
      OnKeyPress = DBGrid1KeyPress
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FormType'
          Footers = <>
          Width = 15
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FormCaption_L1'
          Footers = <>
          Width = 92
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DisplayFormType'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SalaryEffectKind'
          Footers = <>
          Width = 109
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SalaryKind'
          Footers = <>
          Width = 99
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'KargozinyEffectKind'
          Footers = <>
        end
        item
          CellButtons = <>
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'WageKind_Active'
          Footers = <>
          Width = 52
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcFormTypes
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcFormTypes
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcFormTypes
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcFormTypes
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcFormTypes
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      OnExecute = actSendExelExecute
    end
    object actprint: TAction
      Caption = #1670#1600#1600#1600#1575#1662
      OnExecute = actprintExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actMakeFiles: TAction
      Caption = 'Make Files'
      OnExecute = actMakeFilesExecute
    end
    object actLoadFiles: TAction
      Caption = 'Load Files'
      OnExecute = actLoadFilesExecute
    end
    object actLoadDifferFiles: TAction
      Caption = 'Load Differ Files'
      OnExecute = actLoadDifferFilesExecute
    end
    object actCopy: TAction
      Caption = #1705#1662#1740' '#1578#1575#1740#1662
      OnExecute = actCopyExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 840
    Top = 225
  end
  object qryFormTypes: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterOpen = qryFormTypesAfterOpen
    AfterInsert = qryFormTypesAfterInsert
    BeforePost = qryFormTypesBeforePost
    AfterPost = qryFormTypesAfterPost
    BeforeDelete = qryFormTypesBeforeDelete
    AfterDelete = qryFormTypesAfterDelete
    AfterScroll = qryFormTypesAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT  * FROM Pay.FormTypes')
    Left = 684
    Top = 208
    object qryFormTypesFormType: TSmallintField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'FormType'
      Required = True
    end
    object qryFormTypesFormCaption_L1: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' ('#1586#1576#1575#1606'1'#1576#1585#1606#1575#1605#1607')'
      FieldName = 'FormCaption_L1'
      Required = True
      Size = 150
    end
    object qryFormTypesFormCaption_L2: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' ('#1586#1576#1575#1606'2'#1576#1585#1606#1575#1605#1607')'
      FieldName = 'FormCaption_L2'
      Size = 150
    end
    object qryFormTypesDurationDayActive: TWordField
      DisplayLabel = #1605#1583#1578' ('#1585#1608#1586') '#1606#1605#1575#1610#1588' '#1588#1608#1583
      FieldName = 'DurationDayActive'
    end
    object qryFormTypesDurationTimeActive: TWordField
      DisplayLabel = #1605#1583#1578' ('#1587#1575#1593#1578') '#1606#1605#1575#1610#1588' '#1588#1608#1583
      FieldName = 'DurationTimeActive'
    end
    object qryFormTypesExemptPersonActive: TWordField
      DisplayLabel = #1578#1593#1583#1575#1583' '#1575#1601#1585#1575#1583' '#1605#1593#1575#1601' '#1606#1605#1575#1610#1588' '#1588#1608#1583
      FieldName = 'ExemptPersonActive'
    end
    object qryFormTypesSalaryEffectKind: TWordField
      DisplayLabel = #1606#1608#1593' '#1578#1570#1579#1610#1585' '#1583#1585' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
      FieldName = 'SalaryEffectKind'
      OnGetText = qryFormTypesALLGetText
      OnSetText = qryFormTypesAllSetText
    end
    object qryFormTypesKargozinyEffectKind: TWordField
      DisplayLabel = #1606#1608#1593' '#1578#1570#1579#1610#1585' '#1583#1585' '#1581#1603#1605' '#1603#1575#1585#1711#1586#1610#1606#1610
      FieldName = 'KargozinyEffectKind'
      OnGetText = qryFormTypesKargozinyEffectKindGetText
      OnSetText = qryFormTypesKargozinyEffectKindSetText
    end
    object qryFormTypesRecalSalaryTypes: TStringField
      DisplayLabel = #1603#1583' '#1581#1602#1608#1602' '#1608#1605#1586#1575#1610#1575#1610' '#1605#1572#1579#1585
      FieldName = 'RecalSalaryTypes'
      Size = 250
    end
    object qryFormTypesSalaryKind: TWordField
      DisplayLabel = #1606#1608#1593' '#1593#1608#1575#1605#1604' '#1581#1602#1608#1602' '#1608#1605#1586#1575#1610#1575
      FieldName = 'SalaryKind'
      OnGetText = qryFormTypesALLGetText
      OnSetText = qryFormTypesAllSetText
    end
    object qryFormTypesAmount2Active: TWordField
      DisplayLabel = #1605#1576#1604#1594' '#1579#1575#1576#1578' 2'#1601#1593#1575#1604' '#1576#1575#1588#1583
      FieldName = 'Amount2Active'
      OnGetText = qryFormTypesAmount2ActiveGetText
      OnSetText = qryFormTypesAmount2ActiveSetText
    end
    object qryFormTypesRecallFormTypes: TSmallintField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1591#1581' '#1602#1576#1604#1610
      FieldName = 'RecallFormTypes'
    end
    object qryFormTypesUseEndMounthKind: TWordField
      DisplayLabel = #1606#1608#1593' '#1575#1587#1578#1601#1575#1583#1607' '#1578#1575' '#1605#1575#1607
      FieldName = 'UseEndMounthKind'
      OnGetText = qryFormTypesUseEndMounthKindGetText
      OnSetText = qryFormTypesUseEndMounthKindSetText
    end
    object qryFormTypesAidInfoNo1Active: TWordField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610'1 '#1606#1605#1575#1610#1588' '#1588#1608#1583
      FieldName = 'AidInfoNo1Active'
      OnGetText = qryFormTypesALLGetText
      OnSetText = qryFormTypesAllSetText
    end
    object qryFormTypesAidInfo1Caption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1603#1604#1605#1607' '#1603#1605#1603#1610'1'
      FieldName = 'AidInfo1Caption'
      Size = 50
    end
    object qryFormTypesAidInfoNo2Active: TWordField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610' 2 '#1606#1605#1575#1610#1588' '#1588#1608#1583
      FieldName = 'AidInfoNo2Active'
    end
    object qryFormTypesAidInfoDate2Active: TWordField
      DisplayLabel = #1578#1575#1585#1610#1582'   '#1603#1605#1603#1610' 2 '#1606#1605#1575#1610#1588' '#1588#1608#1583' '
      FieldName = 'AidInfoDate2Active'
    end
    object qryFormTypesAidInfo2Caption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1603#1604#1605#1607' '#1603#1605#1603#1610'2'
      FieldName = 'AidInfo2Caption'
      Size = 50
    end
    object qryFormTypesTopicCodeKind: TWordField
      DisplayLabel = #1606#1608#1593' '#1575#1587#1578#1601#1575#1583#1607' '#1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'TopicCodeKind'
      OnGetText = qryFormTypesTopicCodeKindGetText
      OnSetText = qryFormTypesTopicCodeKindSetText
    end
    object qryFormTypesDetailCodeKind: TWordField
      DisplayLabel = #1606#1608#1593' '#1575#1587#1578#1601#1575#1583#1607' '#1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'DetailCodeKind'
      OnGetText = qryFormTypesTopicCodeKindGetText
      OnSetText = qryFormTypesDetailCodeKindSetText
    end
    object qryFormTypesCTopicCodeKind: TWordField
      DisplayLabel = #1606#1608#1593' '#1575#1587#1578#1601#1575#1583#1607' '#1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' '
      FieldName = 'CTopicCodeKind'
      OnGetText = qryFormTypesTopicCodeKindGetText
      OnSetText = qryFormTypesCTopicCodeKindSetText
    end
    object qryFormTypesCTopicCode2Kind: TWordField
      DisplayLabel = #1606#1608#1593' '#1575#1587#1578#1601#1575#1583#1607' '#1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' 2'
      FieldName = 'CTopicCode2Kind'
      OnGetText = qryFormTypesTopicCodeKindGetText
      OnSetText = qryFormTypesCTopicCode2KindSetText
    end
    object qryFormTypesDisplayFormType: TWordField
      DisplayLabel = #1606#1608#1593' '#1601#1585#1605' '#1602#1575#1576#1604' '#1606#1605#1575#1610#1588
      FieldName = 'DisplayFormType'
      OnGetText = qryFormTypesDisplayFormTypeGetText
      OnSetText = qryFormTypesDisplayFormTypeSetText
    end
    object qryFormTypesReportFileName1: TStringField
      FieldName = 'ReportFileName1'
      Size = 50
    end
    object qryFormTypesReportFileName2: TStringField
      FieldName = 'ReportFileName2'
      Size = 50
    end
    object qryFormTypesReportFileName3: TStringField
      FieldName = 'ReportFileName3'
      Size = 50
    end
    object qryFormTypesReportFileName4: TStringField
      FieldName = 'ReportFileName4'
      Size = 50
    end
    object qryFormTypesNote_L1: TMemoField
      FieldName = 'Note_L1'
      BlobType = ftMemo
    end
    object qryFormTypesNote_L2: TMemoField
      FieldName = 'Note_L2'
      BlobType = ftMemo
    end
    object qryFormTypesWordDocumentsActive: TWordField
      DisplayLabel = #1606#1575#1605' '#1601#1575#1610#1604' '#1601#1585#1605'  Word  '#1606#1605#1575#1610#1588' '#1588#1608#1583
      FieldName = 'WordDocumentsActive'
    end
    object qryFormTypesFunctionShow: TWordField
      DisplayLabel = #1583#1585' '#1603#1575#1585#1603#1585#1583' '#1606#1605#1575#1610#1588' '#1588#1608#1583
      FieldName = 'FunctionShow'
    end
    object qryFormTypesRecalKindClock: TWordField
      DisplayLabel = #1606#1608#1593' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1586' '#1603#1575#1585#1578' '#1587#1575#1593#1578' '#1601#1593#1575#1604' '#1576#1575#1588#1583
      FieldName = 'RecalKindClock'
    end
    object qryFormTypesCoefficientActive: TWordField
      DisplayLabel = #1590#1585#1610#1576' '#1601#1593#1575#1604' '#1576#1575#1588#1583
      FieldName = 'CoefficientActive'
    end
    object qryFormTypesAmountActive: TWordField
      DisplayLabel = #1605#1576#1604#1594' '#1579#1604#1576#1578' 1 '#1610#1575' '#1606#1585#1582' '#1575#1587#1578#1575#1606#1583#1575#1585#1583' '#1601#1593#1575#1604' '#1576#1575#1588#1583
      FieldName = 'AmountActive'
      OnGetText = qryFormTypesAmountActiveGetText
      OnSetText = qryFormTypesAmountActiveSetText
    end
    object qryFormTypesAidInfoDate1Active: TWordField
      DisplayLabel = #1578#1575#1585#1610#1582'  '#1603#1605#1603#1610' 1  '#1606#1605#1575#1610#1588' '#1588#1608#1583
      FieldName = 'AidInfoDate1Active'
    end
    object qryFormTypesCalCulateTypeActive: TWordField
      DisplayLabel = #1606#1608#1593' '#1605#1581#1575#1587#1576#1607' '#1581#1602#1608#1602
      FieldName = 'CalCulateTypeActive'
    end
    object qryFormTypesFormInfo4Function: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1591#1581' '#1662#1585#1608#1688#1607' '#1583#1585' '#1603#1575#1585#1603#1585#1583
      FieldName = 'FormInfo4Function'
    end
    object qryFormTypesChangeAmountActive: TWordField
      FieldName = 'ChangeAmountActive'
    end
    object qryFormTypesFirstAmountActive: TWordField
      FieldName = 'FirstAmountActive'
      OnGetText = qryFormTypesFirstAmountActiveGetText
      OnSetText = qryFormTypesFirstAmountActiveSetText
    end
    object qryFormTypesNoteActive: TWordField
      FieldName = 'NoteActive'
    end
    object qryFormTypesLimitMounthActive: TWordField
      FieldName = 'LimitMounthActive'
    end
    object qryFormTypesMnuRow: TWordField
      FieldName = 'MnuRow'
    end
    object qryFormTypesReportCaption1: TStringField
      FieldName = 'ReportCaption1'
      Size = 150
    end
    object qryFormTypesReportCaption2: TStringField
      FieldName = 'ReportCaption2'
      Size = 150
    end
    object qryFormTypesReportCaption3: TStringField
      FieldName = 'ReportCaption3'
      Size = 150
    end
    object qryFormTypesReportCaption4: TStringField
      FieldName = 'ReportCaption4'
      Size = 150
    end
    object qryFormTypesReportFooter: TMemoField
      DisplayLabel = #1605#1578#1606' '#1586#1610#1585' '#1670#1575#1662
      FieldName = 'ReportFooter'
      BlobType = ftMemo
    end
    object qryFormTypesMaxDayTimeActive: TWordField
      FieldName = 'MaxDayTimeActive'
    end
    object qryFormTypesShowMnuId: TWordField
      FieldName = 'ShowMnuId'
      OnGetText = qryFormTypesShowMnuIdGetText
      OnSetText = qryFormTypesShowMnuIdSetText
    end
    object qryFormTypesShowOperators: TWordField
      FieldName = 'ShowOperators'
    end
    object qryFormTypesMuliplyInDayActive: TWordField
      FieldName = 'MuliplyInDayActive'
    end
    object qryFormTypesCTopicCode3Kind: TWordField
      FieldName = 'CTopicCode3Kind'
      OnGetText = qryFormTypesALLGetText
      OnSetText = qryFormTypesAllSetText
    end
    object qryFormTypesEarthProceedsActivate: TWordField
      FieldName = 'EarthProceedsActivate'
      OnGetText = qryFormTypesALLGetText
      OnSetText = qryFormTypesAllSetText
    end
    object qryFormTypesADDLevelID: TWordField
      FieldName = 'ADDLevelID'
    end
    object qryFormTypesEditLevelID: TWordField
      FieldName = 'EditLevelID'
    end
    object qryFormTypesDeleteLevelID: TWordField
      FieldName = 'DeleteLevelID'
    end
    object qryFormTypesChangeStateLevelID: TWordField
      FieldName = 'ChangeStateLevelID'
    end
    object qryFormTypesPrintLevelID: TWordField
      FieldName = 'PrintLevelID'
    end
    object qryFormTypesPrintDesignLevelID: TWordField
      FieldName = 'PrintDesignLevelID'
    end
    object qryFormTypesFormRelatedLevelID: TWordField
      FieldName = 'FormRelatedLevelID'
    end
    object qryFormTypesAccCodeLevelID: TWordField
      FieldName = 'AccCodeLevelID'
    end
    object qryFormTypesOtherCtrlLevelID: TWordField
      FieldName = 'OtherCtrlLevelID'
    end
    object qryFormTypesXlsLevelID: TWordField
      FieldName = 'XlsLevelID'
    end
    object qryFormTypesFinalStateEditLevelID: TWordField
      FieldName = 'FinalStateEditLevelID'
    end
    object qryFormTypesConstantStateEditLevelID: TWordField
      FieldName = 'ConstantStateEditLevelID'
    end
    object qryFormTypesCalcLevelID: TWordField
      FieldName = 'CalcLevelID'
    end
    object qryFormTypesSendLevelID: TWordField
      FieldName = 'SendLevelID'
    end
    object qryFormTypesDecExtStateActive: TWordField
      FieldName = 'DecExtStateActive'
    end
    object qryFormTypesAmountCaption: TStringField
      FieldName = 'AmountCaption'
      Size = 50
    end
    object qryFormTypesAmount2Caption: TStringField
      FieldName = 'Amount2Caption'
      Size = 50
    end
    object qryFormTypesStandardDayCaption: TStringField
      FieldName = 'StandardDayCaption'
      Size = 50
    end
    object qryFormTypesPersonelTypeInfoRow: TWordField
      FieldName = 'PersonelTypeInfoRow'
    end
    object qryFormTypesStandardTimeCaption: TStringField
      FieldName = 'StandardTimeCaption'
      Size = 50
    end
    object qryFormTypesShowMnuPlace: TStringField
      FieldName = 'ShowMnuPlace'
    end
    object qryFormTypesPayMentShow: TWordField
      FieldName = 'PayMentShow'
    end
    object qryFormTypesProcName: TStringField
      FieldName = 'ProcName'
      Size = 50
    end
    object qryFormTypesEarthName: TStringField
      FieldName = 'EarthName'
      Size = 50
    end
    object qryFormTypesTaxCodeShow: TWordField
      FieldName = 'TaxCodeShow'
    end
    object qryFormTypesWageCalcKindActive: TWordField
      FieldName = 'WageCalcKindActive'
    end
    object qryFormTypesFirstAmountName: TStringField
      FieldName = 'FirstAmountName'
      Size = 50
    end
    object qryFormTypesContactFormType: TIntegerField
      FieldName = 'ContactFormType'
    end
    object qryFormTypesRepetitiveControl: TWordField
      FieldName = 'RepetitiveControl'
      OnGetText = qryFormTypesALLGetText
      OnSetText = qryFormTypesAllSetText
    end
    object qryFormTypesPrefixInfoID: TIntegerField
      FieldName = 'PrefixInfoID'
      OnGetText = qryFormTypesALLGetText
      OnSetText = qryFormTypesAllSetText
    end
    object qryFormTypesMasterFormType: TIntegerField
      FieldName = 'MasterFormType'
    end
    object qryFormTypesActiveYearID: TWordField
      FieldName = 'ActiveYearID'
    end
    object qryFormTypesPrintAfterPost: TWordField
      FieldName = 'PrintAfterPost'
    end
    object qryFormTypesInsertAccCode: TBooleanField
      FieldName = 'InsertAccCode'
    end
    object qryFormTypesWorkFlowID: TIntegerField
      FieldName = 'WorkFlowID'
    end
    object qryFormTypesRepetitiveControlInfoID: TWordField
      FieldName = 'RepetitiveControlInfoID'
      OnGetText = qryFormTypesALLGetText
      OnSetText = qryFormTypesAllSetText
    end
    object qryFormTypesSalaryIDinDocShow: TWordField
      FieldName = 'SalaryIDinDocShow'
    end
    object qryFormTypesChecking4AllPersonnelShow: TWordField
      FieldName = 'Checking4AllPersonnelShow'
    end
    object qryFormTypesEmployerAmountActiveShow: TWordField
      FieldName = 'EmployerAmountActiveShow'
    end
    object qryFormTypesPromissoryFormType: TIntegerField
      FieldName = 'PromissoryFormType'
    end
    object qryFormTypesWageKind_Active: TWordField
      DisplayLabel = #1606#1608#1593' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1740#1575' '#1601#1593#1575#1604' '#1576#1575#1588#1583
      FieldName = 'WageKind_Active'
    end
  end
  object srcFormTypes: TDataSource
    DataSet = qryFormTypes
    OnStateChange = srcFormTypesStateChange
    Left = 768
    Top = 135
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcFormTypes
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 284
    Top = 4
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\FormTypes2.rtm'
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
    Left = 192
    Top = 8
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand1: TppTitleBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 14817
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
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
        mmLeft = 72231
        mmTop = 529
        mmWidth = 52917
        BandType = 1
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1605#1588#1582#1589#1575#1578' '#1601#1585#1605#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8467
        mmLeft = 80698
        mmTop = 6350
        mmWidth = 35719
        BandType = 1
        LayerName = Foreground
      end
      object pplblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblPrintDate'
        OnGetText = pplblPrintDateGetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6350
        mmLeft = 9260
        mmTop = 8467
        mmWidth = 12965
        BandType = 1
        LayerName = Foreground
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 12700
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 12171
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1601#1585#1605' '#1602#1575#1576#1604' '#1606#1605#1575#1610#1588
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
        mmLeft = 56886
        mmTop = 6350
        mmWidth = 52388
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578
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
        mmLeft = 111919
        mmTop = 6350
        mmWidth = 67204
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1605#1581#1604' '#1606#1605#1575#1610#1588' '#1583#1585' '#1605#1606#1608#1610' '#1575#1589#1604#1610
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
        mmLeft = 19315
        mmTop = 6350
        mmWidth = 34660
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1603#1583' '
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
        mmTop = 6350
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5556
        mmLeft = 179388
        mmTop = 8731
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 5821
        mmWidth = 197300
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
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 11906
        mmTop = 0
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5556
        mmLeft = 109802
        mmTop = 7144
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5556
        mmLeft = 54504
        mmTop = 7144
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1585#1583#1610#1601' '#1583#1585' '#1605#1606#1608
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
        mmLeft = 1588
        mmTop = 6350
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5556
        mmLeft = 16933
        mmTop = 7144
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBTxtDisplayFormType: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTxtDisplayFormType'
        OnGetText = ppDBTxtDisplayFormTypeGetText
        Border.mmPadding = 0
        DataField = 'DisplayFormType'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5556
        mmLeft = 57150
        mmTop = 0
        mmWidth = 52388
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTxtShowMnuId: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTxtShowMnuId'
        OnGetText = ppDBTxtShowMnuIdGetText
        Border.mmPadding = 0
        DataField = 'ShowMnuId'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5556
        mmLeft = 19315
        mmTop = 0
        mmWidth = 34660
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'FormCaption_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5556
        mmLeft = 111919
        mmTop = 0
        mmWidth = 67204
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'FormType'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5556
        mmLeft = 181240
        mmTop = 0
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'MnuRow'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5556
        mmLeft = 1588
        mmTop = 0
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 12700
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583' '#1601#1585#1605#8207#1607#1575':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5503
        mmLeft = 179165
        mmTop = 1588
        mmWidth = 13716
        BandType = 7
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 156104
        mmTop = 7938
        mmWidth = 42333
        BandType = 7
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 156104
        mmTop = 8731
        mmWidth = 42333
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'FormType'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 154782
        mmTop = 1852
        mmWidth = 23548
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
  object OpenDialog1: TOpenDialog
    DefaultExt = '..\Report'
    Filter = 'ReportName|*.rtm'
    InitialDir = '..\Report'
    Left = 55
    Top = 63
  end
  object PopMnuPrint: TPopupMenu
    Left = 705
    Top = 336
    object AllClick: TMenuItem
      Caption = #1575#1586' Hint '#1608' Name '#1575#1587#1578#1601#1575#1583#1607' '#1588#1583#1607
      Visible = False
      OnClick = AllClickClick
    end
    object FormTypes1: TMenuItem
      Caption = #1670#1575#1662'1'
      OnClick = AllClickClick
    end
    object FormTypes2: TMenuItem
      Caption = #1670#1575#1662'2'
      OnClick = AllClickClick
    end
  end
end
