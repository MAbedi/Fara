inherited Pony2F: TPony2F
  Left = 278
  Top = 166
  Caption = #1578#1587#1608#1610#1607' '#1581#1587#1575#1576' '#1662#1585#1587#1606#1604' 2'
  ClientHeight = 566
  ClientWidth = 1000
  OnResize = FormResize
  ExplicitWidth = 1016
  ExplicitHeight = 605
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 525
    Width = 1000
    ExplicitTop = 525
    ExplicitWidth = 1000
    object DBNavigator1: TDBNavigator [0]
      AlignWithMargins = True
      Left = 409
      Top = 7
      Width = 80
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      DataSource = srcPony
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      Hints.Strings = (
        #1575#1608#1604#1610#1606
        #1602#1576#1604#1610
        #1576#1593#1583#1610
        #1570#1582#1585#1610#1606
        'Insert record'
        'Delete record'
        'Edit record'
        'Post edit'
        'Cancel edit'
        'Refresh data')
      TabOrder = 7
    end
    object okPanel: TPanel [1]
      Left = 447
      Top = 1
      Width = 238
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object BitBtn8: TBitBtn
        AlignWithMargins = True
        Left = 85
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
      object BitBtn18: TBitBtn
        AlignWithMargins = True
        Left = 8
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
      object BitBtn1: TBitBtn
        AlignWithMargins = True
        Left = 162
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = actAll
        Align = alRight
        Caption = #1605#1581#1575#1587#1576#1607' '#1603#1604#1610
        TabOrder = 2
      end
    end
    object newPanel: TPanel
      Left = 685
      Top = 1
      Width = 314
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 238
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
      object BitBtn4: TBitBtn
        AlignWithMargins = True
        Left = 161
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
      object BitBtn5: TBitBtn
        AlignWithMargins = True
        Left = 7
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = actArchiveID
        Align = alRight
        Caption = #1576#1575#1740#1711#1575#1606#1740
        TabOrder = 2
      end
      object BitBtn7: TBitBtn
        AlignWithMargins = True
        Left = 84
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
        TabOrder = 3
      end
    end
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
      TabOrder = 3
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
      TabOrder = 4
    end
    object BitBtn9: TBitBtn
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
      TabOrder = 5
    end
    object BitBtn11: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alLeft
      Caption = #1670#1575#1662
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Width = 1000
    ExplicitWidth = 1000
    DesignSize = (
      1000
      53)
    inherited ImgTemplate: TImage
      Left = 954
      ExplicitLeft = 768
    end
    inherited lblCaption: TLabel
      Left = 892
      ExplicitLeft = 892
    end
    inherited lblBaseDate: TLabel
      Left = 339
      ExplicitLeft = 342
    end
    object sbtnPony: TSpeedButton
      Left = 12
      Top = 2
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = sbtnPonyClick
    end
    object Label6: TLabel
      Left = 103
      Top = 7
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = #1588#1605#1575#1585#1607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 102
      Top = 32
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = #1578#1575#1585#1610#1582' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object EdtPonyNo: TDBEdit
      Left = 35
      Top = 3
      Width = 64
      Height = 21
      DataField = 'PonyNo'
      DataSource = srcPony
      TabOrder = 0
    end
    object DBEdit10: TDBEdit
      Left = 35
      Top = 28
      Width = 64
      Height = 21
      DataField = 'PonyDate'
      DataSource = srcPony
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    Width = 1000
    Height = 472
    ExplicitWidth = 1000
    ExplicitHeight = 472
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 996
      Height = 468
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = '.'
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 988
          Height = 57
          Align = alTop
          TabOrder = 0
          DesignSize = (
            988
            57)
          object Label4: TLabel
            Left = 887
            Top = 8
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1662#1585#1587#1606#1604#1610
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 669
          end
          object SBnPersonelNo: TSpeedButton
            Left = 719
            Top = 3
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SBnPersonelNoClick
            ExplicitLeft = 537
          end
          object Label5: TLabel
            Left = 887
            Top = 27
            Width = 87
            Height = 26
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1585#1610#1582' '#1578#1587#1608#1610#1607' '#1581#1587#1575#1576' '#1581#1603#1605' '#1603#1575#1585#1711#1586#1610#1606#1610
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            WordWrap = True
            ExplicitLeft = 705
          end
          object Label9: TLabel
            Left = 175
            Top = 34
            Width = 72
            Height = 13
            Alignment = taRightJustify
            Caption = #1603#1575#1585#1603#1585#1583#1587#1575#1604#8207#1580#1575#1585#1610
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton1: TSpeedButton
            Left = 12
            Top = 29
            Width = 23
            Height = 22
            Action = actFunctionYearly
            Caption = '...'
          end
          object Label10: TLabel
            Left = 175
            Top = 10
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Caption = #1608#1575#1581#1583
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 652
            Top = 34
            Width = 65
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1585#1610#1582' '#1575#1587#1578#1582#1583#1575#1605
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 470
          end
          object Label20: TLabel
            Left = 502
            Top = 34
            Width = 59
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1608#1590#1593#1610#1578' '#1578#1575#1607#1604
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 320
          end
          object edtPersonelNo: TDBEdit
            Left = 743
            Top = 4
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            DataField = 'PersonelNo'
            DataSource = srcPony
            ParentBiDiMode = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 431
            Top = 4
            Width = 286
            Height = 19
            TabStop = False
            Anchors = [akTop, akRight]
            Color = clBtnFace
            Ctl3D = False
            DataField = '_PrsnName'
            DataSource = srcPony
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object edtFunctionYearly: TDBEdit
            Left = 36
            Top = 30
            Width = 134
            Height = 21
            DataField = 'FunctionYearly'
            DataSource = srcPony
            TabOrder = 2
          end
          object edtAdjustDate: TDBEdit
            Left = 743
            Top = 30
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'AdjustDate'
            DataSource = srcPony
            TabOrder = 1
          end
          object DBEdit8: TDBEdit
            Left = 583
            Top = 31
            Width = 67
            Height = 19
            TabStop = False
            Anchors = [akTop, akRight]
            Color = clBtnFace
            Ctl3D = False
            DataField = '_employDate'
            DataSource = srcPony
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object DBEdit9: TDBEdit
            Left = 431
            Top = 31
            Width = 67
            Height = 19
            TabStop = False
            Anchors = [akTop, akRight]
            Color = clBtnFace
            Ctl3D = False
            DataField = '_MarriageName'
            DataSource = srcPony
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object edtOfficeName: TDBEdit
            Left = 36
            Top = 7
            Width = 134
            Height = 19
            TabStop = False
            Color = clBtnFace
            Ctl3D = False
            DataField = 'OfficeName'
            DataSource = srcPony
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 57
          Width = 988
          Height = 120
          Align = alTop
          TabOrder = 1
          DesignSize = (
            988
            120)
          object Label3: TLabel
            Left = 882
            Top = 9
            Width = 101
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1605#1585#1582#1589#1610#8207#1575#1587#1578#1601#1575#1583#1607#8207#1606#1588#1583#1607
            FocusControl = edtUselessLeave
            ExplicitLeft = 894
          end
          object Label8: TLabel
            Left = 599
            Top = 10
            Width = 121
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1605#1576#1604#1594#8207#1605#1585#1582#1589#1610#8207#1575#1587#1578#1601#1575#1583#1607#8207#1606#1588#1583#1607
            FocusControl = edtUselessLeavePay
            ExplicitLeft = 611
          end
          object Label11: TLabel
            Left = 324
            Top = 36
            Width = 90
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1605#1576#1604#1594' '#1587#1606#1608#1575#1578' '#1711#1584#1588#1578#1607
            FocusControl = edtAnnuityOldPay
            ExplicitLeft = 336
          end
          object Label12: TLabel
            Left = 882
            Top = 36
            Width = 32
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1587#1606#1608#1575#1578
            FocusControl = edtAnnuity
            ExplicitLeft = 894
          end
          object Label13: TLabel
            Left = 599
            Top = 36
            Width = 55
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1605#1576#1604#1594' '#1587#1606#1608#1575#1578
            FocusControl = edtAnnuityPay
            ExplicitLeft = 611
          end
          object Label14: TLabel
            Left = 882
            Top = 65
            Width = 65
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1593#1610#1583#1610' '#1608' '#1662#1575#1583#1575#1588
            FocusControl = edtTide
            ExplicitLeft = 894
          end
          object Label15: TLabel
            Left = 599
            Top = 65
            Width = 88
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1605#1576#1604#1594' '#1593#1610#1583#1610' '#1608' '#1662#1575#1583#1575#1588
            FocusControl = edtTidePay
            ExplicitLeft = 611
          end
          object Label16: TLabel
            Left = 320
            Top = 9
            Width = 41
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1605#1575#1606#1583#1607' '#1608#1575#1605
            FocusControl = edtRemainLoan
            ExplicitLeft = 332
          end
          object Label17: TLabel
            Left = 324
            Top = 63
            Width = 78
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1587#1575#1610#1585' '#1591#1604#1576'/'#1576#1583#1607#1610
            FocusControl = edtDebitCredit
            ExplicitLeft = 336
          end
          object SpeedButton4: TSpeedButton
            Left = 723
            Top = 4
            Width = 23
            Height = 22
            Action = actUselessLeave
            Anchors = [akTop, akRight]
            Caption = '...'
            ExplicitLeft = 735
          end
          object SpeedButton5: TSpeedButton
            Left = 436
            Top = 59
            Width = 23
            Height = 22
            Action = actTidePay
            Anchors = [akTop, akRight]
            Caption = '...'
            ExplicitLeft = 448
          end
          object SpeedButton6: TSpeedButton
            Left = 436
            Top = 30
            Width = 23
            Height = 22
            Action = actAnnuityPay
            Anchors = [akTop, akRight]
            Caption = '...'
            ExplicitLeft = 448
          end
          object SpeedButton7: TSpeedButton
            Left = 161
            Top = 4
            Width = 23
            Height = 22
            Action = actRemainLoan
            Anchors = [akTop, akRight]
            Caption = '...'
            ExplicitLeft = 173
          end
          object SpeedButton8: TSpeedButton
            Left = 161
            Top = 31
            Width = 23
            Height = 22
            Action = actAnnuityOldPay
            Anchors = [akTop, akRight]
            Caption = '...'
            ExplicitLeft = 173
          end
          object btnCreditDebit: TSpeedButton
            Left = 161
            Top = 58
            Width = 23
            Height = 22
            Action = actDebitCredit
            Anchors = [akTop, akRight]
            Caption = '...'
            ExplicitLeft = 173
          end
          object btnTax: TSpeedButton
            Left = 161
            Top = 83
            Width = 23
            Height = 22
            Action = actTax
            Anchors = [akTop, akRight]
            Caption = '...'
            ExplicitLeft = 173
          end
          object Label21: TLabel
            Left = 324
            Top = 88
            Width = 105
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1605#1575#1604#1740#1575#1578' '#1587#1606#1608#1575#1578','#1605#1585#1582#1589#1740
            FocusControl = edtTax
            ExplicitLeft = 336
          end
          object SpeedButton3: TSpeedButton
            Left = 436
            Top = 5
            Width = 23
            Height = 22
            Action = actUselessLeavePay
            Anchors = [akTop, akRight]
            Caption = '...'
            ExplicitLeft = 448
          end
          object edtUselessLeave: TDBEdit
            Left = 747
            Top = 5
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'UselessLeave'
            DataSource = srcPony
            TabOrder = 0
          end
          object edtUselessLeavePay: TDBEdit
            Left = 460
            Top = 7
            Width = 134
            Height = 21
            Hint = 'FormType = 47'
            Anchors = [akTop, akRight]
            DataField = 'UselessLeavePay'
            DataSource = srcPony
            ReadOnly = True
            TabOrder = 1
          end
          object edtAnnuityOldPay: TDBEdit
            Left = 185
            Top = 33
            Width = 134
            Height = 19
            Anchors = [akTop, akRight]
            Ctl3D = False
            DataField = 'AnnuityOldPay'
            DataSource = srcPony
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
          end
          object edtAnnuity: TDBEdit
            Left = 747
            Top = 32
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'Annuity'
            DataSource = srcPony
            TabOrder = 3
          end
          object edtAnnuityPay: TDBEdit
            Left = 460
            Top = 33
            Width = 134
            Height = 19
            Hint = 'FormType = 32'
            Anchors = [akTop, akRight]
            Ctl3D = False
            DataField = 'AnnuityPay'
            DataSource = srcPony
            ParentCtl3D = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 4
          end
          object edtTide: TDBEdit
            Left = 747
            Top = 61
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'Tide'
            DataSource = srcPony
            TabOrder = 5
          end
          object edtTidePay: TDBEdit
            Left = 460
            Top = 62
            Width = 134
            Height = 19
            Anchors = [akTop, akRight]
            Ctl3D = False
            DataField = 'TidePay'
            DataSource = srcPony
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 6
          end
          object edtRemainLoan: TDBEdit
            Left = 185
            Top = 6
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'RemainLoan'
            DataSource = srcPony
            TabOrder = 7
          end
          object edtDebitCredit: TDBEdit
            Left = 185
            Top = 59
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'DebitCredit'
            DataSource = srcPony
            TabOrder = 8
          end
          object edtTax: TDBEdit
            Left = 185
            Top = 84
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'Tax'
            DataSource = srcPony
            TabOrder = 9
          end
          object GroupBox1: TGroupBox
            Left = 1
            Top = 1
            Width = 148
            Height = 118
            Align = alLeft
            Anchors = [akLeft, akTop, akRight, akBottom]
            Caption = '  '#1578#1608#1590#1610#1581#1575#1578'  '
            TabOrder = 10
            object DBMemo1: TDBMemo
              Tag = 111
              Left = 2
              Top = 15
              Width = 144
              Height = 101
              Align = alClient
              DataField = 'Note'
              DataSource = srcPony
              TabOrder = 0
            end
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 386
          Width = 988
          Height = 54
          Align = alBottom
          BevelOuter = bvNone
          BevelWidth = 2
          TabOrder = 2
          DesignSize = (
            988
            54)
          object Label18: TLabel
            Left = 864
            Top = 6
            Width = 74
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1580#1605#1593' '#1581#1602#1608#1602' '#1605#1586#1575#1740#1575
            FocusControl = edtSalarySum
            ExplicitLeft = 876
          end
          object lbl__sum: TLabel
            Left = 425
            Top = 6
            Width = 18
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1585#1610#1575#1604
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 437
          end
          object Label2: TLabel
            Left = 864
            Top = 31
            Width = 106
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1582#1575#1604#1589' '#1583#1585#1740#1575#1601#1578#1740'  '#1588#1585#1705#1578#1740
            FocusControl = edtSalaryNet
            ExplicitLeft = 876
          end
          object Label22: TLabel
            Left = 584
            Top = 31
            Width = 122
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1582#1575#1604#1589' '#1583#1585#1740#1575#1601#1578#1740' '#1594#1740#1585' '#1588#1585#1705#1578#1740
            FocusControl = edtSalaryNonNet
            ExplicitLeft = 596
          end
          object Label1: TLabel
            Left = 584
            Top = 6
            Width = 87
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1580#1605#1593' '#1582#1575#1604#1589' '#1583#1585#1740#1575#1601#1578#1740
            FocusControl = edtSalaryPureSum
            ExplicitLeft = 596
          end
          object edtSalarySum: TDBEdit
            Left = 727
            Top = 3
            Width = 134
            Height = 19
            TabStop = False
            Anchors = [akTop, akRight]
            Ctl3D = False
            DataField = 'SalarySum'
            DataSource = srcPony
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object edtSalaryNet: TDBEdit
            Left = 728
            Top = 28
            Width = 134
            Height = 19
            Anchors = [akTop, akRight]
            Ctl3D = False
            DataField = 'SalaryNet'
            DataSource = srcPony
            ParentCtl3D = False
            TabOrder = 1
          end
          object edtSalaryNonNet: TDBEdit
            Left = 449
            Top = 28
            Width = 134
            Height = 19
            Anchors = [akTop, akRight]
            Ctl3D = False
            DataField = 'SalaryNonNet'
            DataSource = srcPony
            ParentCtl3D = False
            TabOrder = 2
          end
          object edtSalaryPureSum: TDBEdit
            Left = 449
            Top = 2
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'SalaryPureSum'
            DataSource = srcPony
            TabOrder = 3
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 204
          Width = 988
          Height = 182
          Align = alClient
          BevelInner = bvLowered
          BevelOuter = bvLowered
          TabOrder = 3
          object pnlFun: TPanel
            Left = 658
            Top = 2
            Width = 328
            Height = 178
            Align = alRight
            TabOrder = 0
            object grdPonyExtra: TCedarDbgrid
              Left = 1
              Top = 1
              Width = 326
              Height = 176
              Align = alClient
              Color = clCream
              DataSource = srcPonyExtra
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
              OddRowColor = clGradientInactiveCaption
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentShowHint = False
              RowHeight = 18
              SearchPanel.Enabled = True
              ShowHint = True
              SortLocal = True
              TabOrder = 0
              ActiveSearchPanel = False
              SelectFooterIndex = 0
              Columns = <
                item
                  CellButtons = <>
                  Color = 15461355
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'Code'
                  Footers = <>
                  Title.TitleButton = True
                end
                item
                  CellButtons = <>
                  Color = 15461355
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'Captin'
                  Footers = <>
                  Title.TitleButton = True
                  Width = 125
                end
                item
                  ButtonStyle = cbsDropDown
                  CellButtons = <>
                  Color = 13236955
                  DynProps = <>
                  EditButton.Visible = True
                  EditButtons = <>
                  FieldName = 'Amount'
                  Footers = <>
                  Title.TitleButton = True
                  Width = 125
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
          object Panel8: TPanel
            Left = 2
            Top = 2
            Width = 656
            Height = 178
            Align = alClient
            TabOrder = 1
            object grdPonyDebitCredits: TCedarDbgrid
              Left = 1
              Top = 1
              Width = 456
              Height = 176
              Align = alLeft
              Color = clCream
              DataSource = srcPonyDebitCredits
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
              HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
              HorzScrollBar.ExtraPanel.Visible = True
              IndicatorOptions = []
              IndicatorTitle.ShowDropDownSign = True
              IndicatorTitle.TitleButton = True
              OddRowColor = clGradientInactiveCaption
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentShowHint = False
              ReadOnly = True
              RowHeight = 18
              SearchPanel.Enabled = True
              ShowHint = True
              SortLocal = True
              TabOrder = 1
              ActiveSearchPanel = False
              SelectFooterIndex = 0
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'PonyNote'
                  Footers = <>
                  Width = 136
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'Bed'
                  Footers = <>
                  Width = 144
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'Bes'
                  Footers = <>
                  Width = 123
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object grdRptComprasion: TCedarDbgrid
              Left = 457
              Top = 1
              Width = 198
              Height = 176
              Align = alClient
              Color = clCream
              DataSource = srcRptComprasion
              DynProps = <>
              Flat = True
              FooterRowCount = 1
              FooterParams.FillStyle = cfstSolidEh
              FooterParams.Font.Charset = DEFAULT_CHARSET
              FooterParams.Font.Color = clWindowText
              FooterParams.Font.Height = -12
              FooterParams.Font.Name = 'Tahoma'
              FooterParams.Font.Style = [fsBold]
              FooterParams.ParentFont = False
              FooterParams.VertLines = False
              GridLineParams.VertEmptySpaceStyle = dessNonEh
              HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
              HorzScrollBar.ExtraPanel.Visible = True
              IndicatorOptions = []
              IndicatorTitle.ShowDropDownSign = True
              IndicatorTitle.TitleButton = True
              OddRowColor = clGradientInactiveCaption
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentShowHint = False
              ReadOnly = True
              RowHeight = 18
              SearchPanel.Enabled = True
              ShowHint = True
              SortLocal = True
              TabOrder = 0
              ActiveSearchPanel = False
              SelectFooterIndex = 0
              Columns = <
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'Mounth'
                  Footers = <>
                  Width = 21
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'SumFunctionDay'
                  Footers = <>
                  Width = 39
                end
                item
                  CellButtons = <>
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'Price'
                  Footers = <>
                  Width = 94
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 177
          Width = 988
          Height = 27
          Align = alTop
          BevelOuter = bvNone
          BevelWidth = 2
          TabOrder = 4
          object Label25: TLabel
            AlignWithMargins = True
            Left = 866
            Top = 3
            Width = 119
            Height = 21
            Align = alRight
            Alignment = taRightJustify
            Caption = #1578#1575#1585#1740#1582' '#1583#1587#1578#1608#1585' '#1578#1587#1608#1740#1607' '#1581#1587#1575#1576
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            WordWrap = True
            ExplicitHeight = 13
          end
          object Label26: TLabel
            AlignWithMargins = True
            Left = 670
            Top = 3
            Width = 120
            Height = 21
            Align = alRight
            Alignment = taRightJustify
            Caption = #1578#1575#1585#1740#1582' '#1608#1575#1602#1593#1740' '#1578#1587#1608#1740#1607' '#1581#1587#1575#1576
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            WordWrap = True
            ExplicitHeight = 13
          end
          object edtOrderDate: TDBEdit
            AlignWithMargins = True
            Left = 796
            Top = 3
            Width = 64
            Height = 21
            Align = alRight
            DataField = 'OrderDate'
            DataSource = srcPony
            TabOrder = 0
          end
          object edtRealDate: TDBEdit
            AlignWithMargins = True
            Left = 600
            Top = 3
            Width = 64
            Height = 21
            Align = alRight
            DataField = 'RealDate'
            DataSource = srcPony
            TabOrder = 1
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1604#1740#1587#1578
        ImageIndex = 1
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 988
          Height = 420
          Align = alClient
          DataSource = srcPony
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PonyNo'
              Width = 29
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PonyDate'
              Width = 27
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonelNo'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_PrsnName'
              Width = 20
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AdjustDate'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FunctionYearly'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Months'
              Width = 18
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CurrentMonthsPay'
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UselessLeave'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UselessLeavePay'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AnnuityOldPay'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Annuity'
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AnnuityPay'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tide'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TidePay'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RemainLoan'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Debit'
              Width = 31
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Credit'
              Width = 41
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DebitCredit'
              Width = 67
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Note'
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OfficeName'
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_employDate'
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_MarriageName'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SalarySum'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SalaryPureSum'
              Width = 93
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SalaryNet'
              Width = 108
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SalaryNonNet'
              Width = 115
              Visible = True
            end>
        end
        object SumGrid1: TSumGrid
          Left = 0
          Top = 420
          Width = 988
          Hint = #1587#1575#1610#1585' '#1591#1604#1576'/'#1576#1583#1607#1610
          Active = False
          Enable_Controls = True
          MasterGrid = DBGrid1
          FieldsName = 
            'FunctionYearly;Months;CurrentMonthsPay;UselessLeave;UselessLeave' +
            'Pay;AnnuityOldPay;Annuity;AnnuityPay;Tide;TidePay;RemainLoan;Deb' +
            'itCredit;'
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 744
    Top = 6
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actCurrentMonthsPay: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1581#1602#1608#1602' '#1605#1575#1607' '#1580#1575#1585#1610
      OnExecute = actCurrentMonthsPayExecute
    end
    object actUselessLeave: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1605#1585#1582#1589#1610' '#1575#1587#1578#1601#1575#1583#1607' '#1606#1588#1583#1607
      OnExecute = actUselessLeaveExecute
    end
    object actUselessLeavePay: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1605#1576#1604#1594' '#1605#1585#1582#1589#1610' '#1575#1587#1578#1601#1575#1583#1607' '#1606#1588#1583#1607
      OnExecute = actUselessLeavePayExecute
    end
    object actFunctionYearly: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1603#1575#1585#1603#1585#1583' '#1587#1575#1604' '#1580#1575#1585#1610
      OnExecute = actFunctionYearlyExecute
    end
    object actTidePay: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1605#1576#1604#1594' '#1593#1610#1583#1610' '#1608' '#1662#1575#1583#1575#1588
      OnExecute = actTidePayExecute
    end
    object actAnnuityPay: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1605#1576#1604#1594' '#1587#1606#1608#1575#1578
      OnExecute = actAnnuityPayExecute
    end
    object actRemainLoan: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1605#1575#1606#1583#1607' '#1608#1575#1605
      OnExecute = actRemainLoanExecute
    end
    object actAnnuityOldPay: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1605#1576#1604#1594' '#1587#1606#1608#1575#1578' '#1711#1584#1588#1578#1607
      OnExecute = actAnnuityOldPayExecute
    end
    object actAll: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1603#1604#1610
      OnExecute = actAllExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actSendExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actDebitCredit: TAction
      Caption = 'actDebitCredit'
      OnExecute = actDebitCreditExecute
    end
    object actTax: TAction
      Caption = #1605#1575#1604#1740#1575#1578
      OnExecute = actTaxExecute
    end
    object actArchiveID: TAction
      Caption = #1576#1575#1740#1711#1575#1606#1740
      OnExecute = actArchiveIDExecute
    end
    object actArchiveIDClean: TAction
      Caption = #1581#1584#1601' '#1576#1575#1610#1711#1575#1606#1610
      OnExecute = actArchiveIDCleanExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 808
    Top = 6
  end
  object qryPony: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterOpen = qryPonyAfterOpen
    AfterInsert = qryPonyAfterInsert
    BeforeEdit = qryPonyBeforeEdit
    BeforePost = qryPonyBeforePost
    AfterPost = qryPonyAfterPost
    BeforeDelete = qryPonyBeforeDelete
    AfterScroll = qryPonyAfterScroll
    Parameters = <
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select *,(SELECT DISTINCT FormsInfo_OfficeCode.InfoName_L1 AS Of' +
        'ficeName'
      'FROM Pay.Interdicts INNER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfo_OfficeCode O' +
        'N Interdicts.OfficeCode = FormsInfo_OfficeCode.FormInfoID'
      
        'WHERE        (Interdicts.State < 50) AND (Interdicts.PersonelNo ' +
        '=Pony.PersonelNo )) AS OfficeName'
      
        ',(SELECT     SUM(Amount)  FROM Pay.PonyDebitCredits WHERE (PonyI' +
        'D = Pony.PonyID )AND (Amount>0)) AS Debit'
      
        ',(SELECT ABS(SUM(Amount)) FROM Pay.PonyDebitCredits WHERE (PonyI' +
        'D = Pony.PonyID )AND (Amount<0)) AS Credit'
      ''
      ' FROM Pay.Pony'
      'WHERE        (YearID = :YearID  )')
    Left = 360
    Top = 221
    object qryPonyYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryPonyPonyID: TAutoIncField
      Tag = 3
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'PonyID'
      ReadOnly = True
    end
    object qryPonyPonyNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'PonyNo'
    end
    object qryPonyPonyDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'PonyDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryPonyPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
    end
    object qryPony_PrsnName: TStringField
      DisplayLabel = #1606#1575#1605
      FieldKind = fkLookup
      FieldName = '_PrsnName'
      LookupDataSet = qryPeronal_Info
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'Name'
      KeyFields = 'PersonelNo'
      Required = True
      Size = 150
      Lookup = True
    end
    object qryPonyAdjustDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1578#1587#1608#1610#1607' '#1581#1587#1575#1576
      FieldName = 'AdjustDate'
      OnChange = qryPonyAdjustDateChange
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryPonyFunctionYearly: TFloatField
      Tag = 3
      DisplayLabel = #1603#1575#1585#1603#1585#1583' '#1587#1575#1604' '#1580#1575#1585#1610
      FieldName = 'FunctionYearly'
    end
    object qryPonyMonths: TWordField
      Tag = 3
      DisplayLabel = #1605#1575#1607
      FieldName = 'Months'
    end
    object qryPonyCurrentMonthsPay: TBCDField
      Tag = 3
      DisplayLabel = #1581#1602#1608#1602' '#1605#1575#1607' '#1580#1575#1585#1610
      FieldName = 'CurrentMonthsPay'
      currency = True
      Precision = 19
    end
    object qryPonyUselessLeave: TFloatField
      Tag = 3
      DisplayLabel = #1605#1585#1582#1589#1610' '#1575#1587#1578#1601#1575#1583#1607' '#1606#1588#1583#1607
      FieldName = 'UselessLeave'
    end
    object qryPonyUselessLeavePay: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1605#1585#1582#1589#1610' '#1575#1587#1578#1601#1575#1583#1607' '#1606#1588#1583#1607
      FieldName = 'UselessLeavePay'
      currency = True
      Precision = 19
    end
    object qryPonyAnnuityOldPay: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1587#1606#1608#1575#1578' '#1711#1584#1588#1578#1607
      FieldName = 'AnnuityOldPay'
      currency = True
      Precision = 19
    end
    object qryPonyAnnuity: TFloatField
      Tag = 3
      DisplayLabel = #1587#1606#1608#1575#1578
      FieldName = 'Annuity'
    end
    object qryPonyAnnuityPay: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1587#1606#1608#1575#1578
      FieldName = 'AnnuityPay'
      currency = True
      Precision = 19
    end
    object qryPonyTide: TFloatField
      Tag = 3
      DisplayLabel = #1593#1610#1583#1610' '#1608' '#1662#1575#1583#1575#1588
      FieldName = 'Tide'
    end
    object qryPonyTidePay: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1593#1610#1583#1610' '#1608' '#1662#1575#1583#1575#1588
      FieldName = 'TidePay'
      currency = True
      Precision = 19
    end
    object qryPonyRemainLoan: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1606#1583#1607' '#1608#1575#1605
      FieldName = 'RemainLoan'
      currency = True
      Precision = 19
    end
    object qryPonyDebitCredit: TFMTBCDField
      Tag = 3
      DisplayLabel = #1587#1575#1610#1585' '#1591#1604#1576'/'#1576#1583#1607#1610
      FieldName = 'DebitCredit'
      currency = True
      Precision = 19
    end
    object qryPonyNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'Note'
      Size = 500
    end
    object qryPonyOfficeName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
      FieldName = 'OfficeName'
      ReadOnly = True
      Size = 255
    end
    object qryPony_fatherName: TStringField
      FieldKind = fkLookup
      FieldName = '_fatherName'
      LookupDataSet = qryPeronal_Info
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'fatherName_L1'
      KeyFields = 'PersonelNo'
      Size = 150
      Lookup = True
    end
    object qryPony_IDNumber: TStringField
      FieldKind = fkLookup
      FieldName = '_IDNumber'
      LookupDataSet = qryPeronal_Info
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'IDNumber'
      KeyFields = 'PersonelNo'
      Size = 15
      Lookup = True
    end
    object qryPony_employDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1587#1578#1582#1583#1575#1605
      FieldKind = fkLookup
      FieldName = '_employDate'
      LookupDataSet = qryPeronal_Info
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'employDate'
      KeyFields = 'PersonelNo'
      Size = 10
      Lookup = True
    end
    object qryPony_MarriageName: TStringField
      DisplayLabel = #1608#1590#1593#1610#1578' '#1578#1575#1607#1604
      FieldKind = fkLookup
      FieldName = '_MarriageName'
      LookupDataSet = qryPeronal_Info
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'MarriageName'
      KeyFields = 'PersonelNo'
      Size = 200
      Lookup = True
    end
    object qryPonyTax: TBCDField
      FieldName = 'Tax'
      currency = True
      Precision = 19
    end
    object qryPonyDebit: TBCDField
      DisplayLabel = #1591#1604#1576
      FieldName = 'Debit'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryPonyCredit: TFMTBCDField
      DisplayLabel = #1576#1583#1607#1610
      FieldName = 'Credit'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryPonySalaryNet: TBCDField
      DisplayLabel = #1582#1575#1604#1589' '#1583#1585#1740#1575#1601#1578#1740'  '#1588#1585#1705#1578#1740
      FieldName = 'SalaryNet'
      OnChange = qryPonySalaryNetChange
      currency = True
      Precision = 19
    end
    object qryPonySalaryNonNet: TBCDField
      DisplayLabel = #1582#1575#1604#1589' '#1583#1585#1740#1575#1601#1578#1740' '#1594#1740#1585' '#1588#1585#1705#1578#1740
      FieldName = 'SalaryNonNet'
      currency = True
      Precision = 19
    end
    object qryPonySalarySum: TBCDField
      DisplayLabel = #1580#1605#1593' '#1581#1602#1608#1602' '#1605#1586#1575#1740#1575
      FieldName = 'SalarySum'
      currency = True
      Precision = 19
    end
    object qryPonySalaryPureSum: TBCDField
      DisplayLabel = #1580#1605#1593' '#1582#1575#1604#1589' '#1583#1585#1740#1575#1601#1578#1740
      FieldName = 'SalaryPureSum'
      currency = True
      Precision = 19
    end
    object qryPonyPArchiveDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1576#1575#1740#1711#1575#1606#1740
      FieldName = 'PArchiveDate'
      FixedChar = True
      Size = 10
    end
    object qryPonyPArchiveID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1576#1575#1740#1711#1575#1606#1740
      FieldName = 'PArchiveID'
    end
    object qryPonyOrderDate: TStringField
      FieldName = 'OrderDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryPonyRealDate: TStringField
      FieldName = 'RealDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
  end
  object srcPony: TDataSource
    DataSet = qryPony
    OnStateChange = srcPonyStateChange
    Left = 442
    Top = 239
  end
  object qryPeronal_Info: TADOQuery
    Active = True
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        PersonelInfo.PersonelNo, PersonelInfo.name_L1 + '#39' ' +
        #39' + PersonelInfo.lastName_L1 AS Name, PersonelInfo.fatherName_L1' +
        ', PersonelInfo.IDNumber, '
      
        '                         FormsInfo_OfficeCode.InfoName_L1 AS Off' +
        'iceName, PersonelInfo.employDate, FormsInfo_Marriage.InfoName_L1' +
        ' AS MarriageName'
      'FROM Pay.PersonelInfo INNER JOIN'
      
        '                         Pay.Interdicts ON PersonelInfo.Personel' +
        'No = Interdicts.PersonelNo INNER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfo_OfficeCode O' +
        'N Interdicts.OfficeCode = FormsInfo_OfficeCode.FormInfoID INNER ' +
        'JOIN'
      
        '                         Pay.FormsInfo AS FormsInfo_Marriage ON ' +
        'PersonelInfo.marriage = FormsInfo_Marriage.FormInfoID'
      'WHERE        (Interdicts.State < 50)')
    Left = 66
    Top = 328
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcPony
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeline1'
    Left = 419
    Top = 365
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 10414
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 12700
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\Pony.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    CachePages = True
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
    Left = 601
    Top = 368
    Version = '23.0'
    mmColumnWidth = 66802
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 794
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 275167
        mmLeft = 0
        mmTop = 529
        mmWidth = 187061
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 277019
      mmPrintPosition = 0
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 75406
        mmTop = 1588
        mmWidth = 48683
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText25'
        Border.mmPadding = 0
        DataField = 'Note'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 26723
        mmTop = 134938
        mmWidth = 85196
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText24'
        Border.mmPadding = 0
        DataField = 'Note'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 26723
        mmTop = 127529
        mmWidth = 85196
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText23'
        Border.mmPadding = 0
        DataField = 'Note'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 26723
        mmTop = 119856
        mmWidth = 85196
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText22'
        Border.mmPadding = 0
        DataField = 'Note'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 26723
        mmTop = 112184
        mmWidth = 85196
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText201'
        Border.mmPadding = 0
        DataField = 'Note'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 26988
        mmTop = 104775
        mmWidth = 85196
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText20'
        Border.mmPadding = 0
        DataField = 'Note'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 26988
        mmTop = 96838
        mmWidth = 85196
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText18'
        Border.mmPadding = 0
        DataField = 'Note'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 26988
        mmTop = 89165
        mmWidth = 85196
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = '_fatherName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 112977
        mmTop = 206375
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = 'UselessLeave'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 113242
        mmTop = 120121
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'Tide'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 113242
        mmTop = 104775
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'Annuity'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 113242
        mmTop = 97367
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = '__sum'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 107950
        mmTop = 180711
        mmWidth = 40481
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = '_IDNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 70908
        mmTop = 206375
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        Border.mmPadding = 0
        DataField = 'DebitCredit'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 0
        mmTop = 127529
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'CurrentMonthsPay'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 265
        mmTop = 112448
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'TidePay'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 265
        mmTop = 104775
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'AnnuityOldPay'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 265
        mmTop = 89165
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label49'
        Border.mmPadding = 0
        Caption = #1587#1606#1608#1575#1578' '#1582#1583#1605#1578' '#1711#1584#1588#1578#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7705
        mmLeft = 141023
        mmTop = 88636
        mmWidth = 26755
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'UselessLeavePay'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 265
        mmTop = 119856
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'AnnuityPay'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 265
        mmTop = 97102
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = '__sum'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 794
        mmTop = 142346
        mmWidth = 24077
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label48'
        Border.mmPadding = 0
        Caption = #1587#1575#1610#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7705
        mmLeft = 162190
        mmTop = 134409
        mmWidth = 5757
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'AdjustDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yagut'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 98425
        mmTop = 35983
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = '_PrsnName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 143404
        mmTop = 206375
        mmWidth = 30163
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'PonyDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 8996
        mmTop = 15610
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'PonyNo'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 8996
        mmTop = 8467
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label47'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7705
        mmLeft = 26723
        mmTop = 14552
        mmWidth = 7789
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label46'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7705
        mmLeft = 26723
        mmTop = 8467
        mmWidth = 7197
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label45'
        Border.mmPadding = 0
        Caption = #1575#1579#1585' '#1575#1606#1711#1588#1578' '#1608' '#1605#1581#1604' '#1575#1605#1590#1575#1569
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 9059
        mmLeft = 29369
        mmTop = 255588
        mmWidth = 35264
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label44'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 9059
        mmLeft = 33338
        mmTop = 247915
        mmWidth = 27771
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label43'
        Border.mmPadding = 0
        Caption = ' '#1580#1576#1585#1575#1606' '#1582#1587#1575#1585#1578' '#1591#1576#1602' '#1606#1592#1585' '#1588#1585#1705#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575#1585#1575#1610#1575#1606#1607' '#1582#1608#1575#1607#1605' '#1576#1608#1583'.'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7705
        mmLeft = 97664
        mmTop = 244475
        mmWidth = 86572
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label42'
        Border.mmPadding = 0
        Caption = 
          #1578#1593#1607#1583' '#1605#1610#1583#1607#1605' '#1575#1586' '#1606#1585#1605' '#1575#1601#1586#1575#1585#1607#1575#1610' '#1588#1585#1705#1578' '#1576#1589#1608#1585#1578' '#1605#1581#1589#1608#1604' '#1610#1575' '#1705#1583' '#1576#1585#1606#1575#1605#1607' '#1607#1575' '#1576#1607' '#1607 +
          #1610#1670' '#1608#1580#1607' '#1576#1607#1585#1607' '#1576#1585#1583#1575#1585#1610' '#1606#1705#1606#1605' '#1608' '#1583#1585' '#1589#1608#1585#1578' '#1605#1588#1582#1589' '#1588#1583#1606' '#1582#1604#1575#1601' '#1570#1606' '#1605#1578#1593#1607#1583' '#1576#1607'  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 4233
        mmTop = 237067
        mmWidth = 179652
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label41'
        Border.mmPadding = 0
        Caption = 
          #1605#1606#1593#1576#1583' '#1606#1610#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1588#1585#1705#1578' '#1608' '#1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583#1607#1575#1610' '#1588#1585#1705#1578' '#1606#1586#1583' '#1575#1610#1606#1580#1575#1606#1576' '#1605#1607#1585#1605#1575#1606#1607 +
          ' '#1576#1608#1583#1607' '#1608' '#1575#1586' '#1575#1601#1588#1575#1610' '#1570#1606' '#1582#1608#1583#1583#1575#1585#1610' '#1582#1608#1575#1607#1605' '#1705#1585#1583'.'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7705
        mmLeft = 40217
        mmTop = 229394
        mmWidth = 143595
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label40'
        Border.mmPadding = 0
        Caption = 
          #1590#1605#1606#1575' '#1578#1593#1607#1583' '#1605#1610#1583#1607#1605' '#1705#1604#1610#1607' '#1570#1605#1575#1585' '#1608' '#1575#1591#1604#1575#1593#1575#1578' '#1588#1585#1705#1578' '#1608' '#1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583#1607#1575#1610' '#1588#1585#1705#1578' '#1585 +
          #1575' '#1578#1581#1608#1610#1604' '#1583#1575#1583#1607' '#1575#1605' '#1608' '#1607#1610#1670' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1583#1585' '#1575#1610#1606' '#1582#1589#1608#1589' '#1606#1586#1583' '#1575#1610#1606#1580#1575#1606#1576' '#1606#1576#1608#1583#1607' '#1608
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 529
        mmTop = 221986
        mmWidth = 183621
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label39'
        Border.mmPadding = 0
        Caption = 
          #1601#1585#1575#1585#1575#1610#1575#1606#1607' '#1583#1585#1610#1575#1601#1578' '#1606#1605#1608#1583#1607' '#1575#1605' '#1608' '#1607#1610#1670#1711#1608#1606#1607' '#1581#1602' '#1608' '#1581#1602#1608#1602#1610' '#1575#1586' '#1588#1585#1705#1578' '#1591#1604#1576#1705#1575#1585' '#1606#1605 +
          #1610#1576#1575#1588#1605'.'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7705
        mmLeft = 89959
        mmTop = 214578
        mmWidth = 94277
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label38'
        Border.mmPadding = 0
        Caption = #1705#1604#1610#1607' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575#1610' '#1582#1608#1583' '#1585#1575' '#1575#1586' '#1588#1585#1705#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7705
        mmLeft = 1058
        mmTop = 205846
        mmWidth = 67479
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label37'
        Border.mmPadding = 0
        Caption = #1576#1607' '#1588#1605#1575#1585#1607' '#1588#1606#1575#1587#1606#1575#1605#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7705
        mmLeft = 90488
        mmTop = 205846
        mmWidth = 21759
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label36'
        Border.mmPadding = 0
        Caption = #1601#1585#1586#1606#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7705
        mmLeft = 134938
        mmTop = 205846
        mmWidth = 6773
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label35'
        Border.mmPadding = 0
        Caption = #1575#1610#1606#1580#1575#1606#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7705
        mmLeft = 174625
        mmTop = 205846
        mmWidth = 9694
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label34'
        Border.mmPadding = 0
        Caption = #1578#1589#1608#1610#1576' '#1705#1606#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 9059
        mmLeft = 32015
        mmTop = 190765
        mmWidth = 19685
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label33'
        Border.mmPadding = 0
        Caption = #1585#1610#1575#1604' '#1575#1602#1583#1575#1605' '#1601#1585#1605#1575#1610#1610#1583'.'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7705
        mmLeft = 83873
        mmTop = 180711
        mmWidth = 23029
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label32'
        Border.mmPadding = 0
        Caption = #1606#1587#1576#1578' '#1576#1607' '#1662#1585#1583#1575#1582#1578' '#1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7705
        mmLeft = 148961
        mmTop = 180711
        mmWidth = 27390
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label31'
        Border.mmPadding = 0
        Caption = #1575#1605#1608#1585' '#1605#1575#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 9059
        mmLeft = 168540
        mmTop = 171186
        mmWidth = 13631
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label30'
        Border.mmPadding = 0
        Caption = #1575#1605#1608#1585' '#1575#1583#1575#1585#1610' '#1608' '#1605#1575#1604#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 9059
        mmLeft = 40217
        mmTop = 155840
        mmWidth = 27390
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label29'
        Border.mmPadding = 0
        Caption = #1578#1606#1592#1610#1605' '#1705#1606#1606#1583#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 9059
        mmLeft = 152400
        mmTop = 155840
        mmWidth = 17568
        BandType = 4
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 168805
        mmWidth = 187061
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label28'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1705#1604':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 9059
        mmLeft = 169598
        mmTop = 141552
        mmWidth = 11811
        BandType = 4
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 149754
        mmWidth = 186796
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        Border.mmPadding = 0
        Caption = #1591#1604#1576'/'#1576#1583#1607#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7705
        mmLeft = 153988
        mmTop = 127000
        mmWidth = 14055
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        Border.mmPadding = 0
        Caption = #1605#1585#1582#1589#1610' '#1575#1587#1578#1601#1575#1583#1607' '#1606#1588#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7705
        mmLeft = 141552
        mmTop = 119592
        mmWidth = 26670
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        Border.mmPadding = 0
        Caption = #1581#1602#1608#1602' '#1605#1575#1607' '#1580#1575#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6879
        mmLeft = 147373
        mmTop = 111919
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        Border.mmPadding = 0
        Caption = #1593#1610#1583#1610' '#1608' '#1662#1575#1583#1575#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7705
        mmLeft = 149490
        mmTop = 103981
        mmWidth = 18457
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        Border.mmPadding = 0
        Caption = #1587#1606#1608#1575#1578' '#1582#1583#1605#1578' '#1580#1575#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7705
        mmLeft = 141288
        mmTop = 96309
        mmWidth = 26416
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        Border.mmPadding = 0
        Caption = '7'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7197
        mmLeft = 177800
        mmTop = 135202
        mmWidth = 1990
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        Border.mmPadding = 0
        Caption = '6'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7197
        mmLeft = 177800
        mmTop = 127529
        mmWidth = 1990
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        Border.mmPadding = 0
        Caption = '5'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7197
        mmLeft = 177800
        mmTop = 120121
        mmWidth = 1990
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        Border.mmPadding = 0
        Caption = '4'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7197
        mmLeft = 177800
        mmTop = 112448
        mmWidth = 1990
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = '3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7197
        mmLeft = 177800
        mmTop = 104775
        mmWidth = 1990
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = '2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7197
        mmLeft = 177800
        mmTop = 97102
        mmWidth = 1990
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = '1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7197
        mmLeft = 177800
        mmTop = 89429
        mmWidth = 1990
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594'-'#1585#1610#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7705
        mmLeft = 4763
        mmTop = 81756
        mmWidth = 13166
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = #1578#1608#1590#1610#1581#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6615
        mmLeft = 63500
        mmTop = 82021
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7705
        mmLeft = 118269
        mmTop = 81756
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7705
        mmLeft = 148167
        mmTop = 81756
        mmWidth = 7239
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1585#1583#1610#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7705
        mmLeft = 174625
        mmTop = 81756
        mmWidth = 7197
        BandType = 4
        LayerName = Foreground
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape6'
        mmHeight = 68527
        mmLeft = 26194
        mmTop = 81227
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape5'
        mmHeight = 61119
        mmLeft = 112713
        mmTop = 81227
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 61119
        mmLeft = 130704
        mmTop = 81227
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 60854
        mmLeft = 171450
        mmTop = 81227
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 142082
        mmWidth = 187061
        BandType = 4
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 794
        mmTop = 134409
        mmWidth = 186267
        BandType = 4
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 529
        mmTop = 127000
        mmWidth = 186532
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 119327
        mmWidth = 187061
        BandType = 4
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 111654
        mmWidth = 187061
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 104246
        mmWidth = 187061
        BandType = 4
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 96044
        mmWidth = 187061
        BandType = 4
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 88371
        mmWidth = 187061
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1605#1581#1575#1587#1576#1575#1578' '#1578#1589#1608#1610#1607' '#1581#1587#1575#1576' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6350
        mmLeft = 147638
        mmTop = 74613
        mmWidth = 37306
        BandType = 4
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 81227
        mmWidth = 186796
        BandType = 4
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 74083
        mmWidth = 187061
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1605#1583#1610#1585#1610#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 9059
        mmLeft = 38894
        mmTop = 59531
        mmWidth = 11515
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1575#1605#1608#1585' '#1575#1583#1575#1585#1610' '#1608' '#1605#1575#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 9059
        mmLeft = 138113
        mmTop = 59796
        mmWidth = 26374
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1575#1602#1583#1575#1605' '#1588#1608#1583'.'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 9059
        mmLeft = 106892
        mmTop = 43921
        mmWidth = 14944
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = '_PrsnName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yagut'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 8731
        mmLeft = 122767
        mmTop = 45244
        mmWidth = 48948
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1582#1575#1606#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 9059
        mmLeft = 173567
        mmTop = 43921
        mmWidth = 6604
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1582#1608#1575#1607#1588#1605#1606#1583' '#1575#1587#1578' '#1583#1587#1578#1608#1585' '#1601#1605#1575#1610#1610#1583' '#1606#1587#1576#1578' '#1576#1607' '#1578#1587#1608#1610#1607' '#1581#1587#1575#1576' '#1570#1602#1575#1610'/'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 9059
        mmLeft = 8996
        mmTop = 34396
        mmWidth = 87715
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1575#1581#1578#1585#1575#1605#1575' '#1593#1591#1601' '#1576#1607' '#1583#1587#1578#1608#1585' '#1662#1610#1608#1587#1578' '#1605#1608#1585#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 9059
        mmLeft = 118269
        mmTop = 33867
        mmWidth = 53806
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1605#1583#1610#1585#1610#1578' '#1588#1585#1705#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 9059
        mmLeft = 159544
        mmTop = 24606
        mmWidth = 22267
        BandType = 4
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 21960
        mmWidth = 186796
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1601#1585#1605' '#1578#1587#1608#1610#1607' '#1581#1587#1575#1576' '#1705#1575#1585#1705#1606#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 8996
        mmLeft = 80169
        mmTop = 10319
        mmWidth = 39158
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppPageStyle1: TppPageStyle
      Border.mmPadding = 0
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'PageLayer1'
        LayerType = ltPage
        Index = 0
      end
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 1
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 256
    Top = 325
    object Pony: TMenuItem
      Caption = #1670#1575#1662' 1'
      OnClick = AllClick
    end
    object Pony2: TMenuItem
      Caption = #1670#1575#1662' 2'
      OnClick = AllClick
    end
    object All: TMenuItem
      Caption = 'All'
      Visible = False
      OnClick = AllClick
    end
    object mnuNAllRecords: TMenuItem
      Caption = #1670#1575#1662' '#1607#1605#1607' '#1601#1593#1575#1604' '#1576#1575#1588#1583
      OnClick = mnuNAllRecordsClick
    end
  end
  object qry4Print: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PersonelNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT        EmployeeInfo.*'
      'FROM Pay.EmployeeInfo'
      'WHERE        (PersonelNo = :PersonelNo )')
    Left = 538
    Top = 400
  end
  object pln4Print: TppDBPipeline
    DataSource = src4Print
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'pln4Print'
    Left = 707
    Top = 381
    MasterDataPipelineName = 'ppDBPipeline1'
    object pfld1: TppField
      FieldAlias = 'PonyID'
      FieldName = 'PonyID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pfld2: TppField
      FieldAlias = 'PonyNo'
      FieldName = 'PonyNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pfld3: TppField
      FieldAlias = 'PonyDate'
      FieldName = 'PonyDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pfld4: TppField
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pfld5: TppField
      FieldAlias = '_PrsnName'
      FieldName = '_PrsnName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pfld6: TppField
      FieldAlias = 'AdjustDate'
      FieldName = 'AdjustDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pfld7: TppField
      FieldAlias = 'FunctionYearly'
      FieldName = 'FunctionYearly'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pfld8: TppField
      FieldAlias = 'Months'
      FieldName = 'Months'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pfld9: TppField
      FieldAlias = 'CurrentMonthsPay'
      FieldName = 'CurrentMonthsPay'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object pfld10: TppField
      FieldAlias = 'UselessLeave'
      FieldName = 'UselessLeave'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object pfld11: TppField
      FieldAlias = 'UselessLeavePay'
      FieldName = 'UselessLeavePay'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object pfld12: TppField
      FieldAlias = 'AnnuityOldPay'
      FieldName = 'AnnuityOldPay'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object pfld13: TppField
      FieldAlias = 'Annuity'
      FieldName = 'Annuity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object pfld14: TppField
      FieldAlias = 'AnnuityPay'
      FieldName = 'AnnuityPay'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object pfld15: TppField
      FieldAlias = 'Tide'
      FieldName = 'Tide'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object pfld16: TppField
      FieldAlias = 'TidePay'
      FieldName = 'TidePay'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object pfld17: TppField
      FieldAlias = 'RemainLoan'
      FieldName = 'RemainLoan'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object pfld18: TppField
      FieldAlias = 'DebitCredit'
      FieldName = 'DebitCredit'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object pfld19: TppField
      FieldAlias = 'Note'
      FieldName = 'Note'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object pfld20: TppField
      FieldAlias = '__sum'
      FieldName = '__sum'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object pfld21: TppField
      FieldAlias = '_fatherName'
      FieldName = '_fatherName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object pfld22: TppField
      FieldAlias = '_IDNumber'
      FieldName = '_IDNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object pfld23: TppField
      FieldAlias = '_OfficeName'
      FieldName = '_OfficeName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object pfld24: TppField
      FieldAlias = '_employDate'
      FieldName = '_employDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object pfld25: TppField
      FieldAlias = '_MarriageName'
      FieldName = '_MarriageName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
  end
  object src4Print: TDataSource
    DataSet = qry4Print
    OnStateChange = srcPonyStateChange
    Left = 498
    Top = 207
  end
  object srcPonyDebitCredits: TDataSource
    DataSet = qryPonyDebitCredits
    Left = 384
    Top = 96
  end
  object plnPonyDebitCredits: TppDBPipeline
    DataSource = srcPonyDebitCredits
    OpenDataSource = False
    UserName = 'plnPonyDebitCredits'
    Left = 275
    Top = 357
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object qryPonyDebitCredits: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PonyID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'SELECT         PonyNote, Amount'
      ',case when Amount>=0 then  Amount else 0 end as Bes'
      ',case when Amount<0    then  abs(Amount) else 0 end as Bed'
      ''
      'FROM Pay.PonyDebitCredits'
      'WHERE        (PonyID = :PonyID )'
      '')
    Left = 704
    Top = 152
    object qryPonyDebitCreditsPonyNote: TWideStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'PonyNote'
      Size = 300
    end
    object qryPonyDebitCreditsAmount: TBCDField
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryPonyDebitCreditsBed: TBCDField
      DisplayLabel = #1576#1583#1607#1705#1575#1585
      FieldName = 'Bed'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryPonyDebitCreditsBes: TBCDField
      DisplayLabel = #1576#1587#1578#1575#1606#1705#1575#1585
      FieldName = 'Bes'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object srcInterdictList: TDataSource
    DataSet = qryInterdictList
    Left = 88
    Top = 376
  end
  object qryInterdictList: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'PersonelNo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * From Pay.PonyInterdictList(:PersonelNo)'
      'ORDER BY InterdicStartDate DESC')
    Left = 272
    Top = 192
  end
  object plnInterdictList: TppDBPipeline
    DataSource = srcInterdictList
    OpenDataSource = False
    UserName = 'plnInterdictList'
    Left = 154
    Top = 327
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'PersonelName_L1'
      FieldName = 'PersonelName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'PersonelName_L2'
      FieldName = 'PersonelName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
  end
  object qryPonyExtra: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    Left = 888
    Top = 368
    object qryPonyExtraCode: TIntegerField
      DisplayLabel = #1705#1583
      DisplayWidth = 4
      FieldName = 'Code'
      ReadOnly = True
    end
    object qryPonyExtraCaptin: TStringField
      DisplayLabel = #1606#1608#1593' '#1608#1575#1585#1740#1586#1740
      DisplayWidth = 200
      FieldName = 'Captin'
      ReadOnly = True
      Size = 200
    end
    object qryPonyExtraAmount: TBCDField
      DisplayLabel = #1605#1580#1605#1608#1593' '#1608#1575#1585#1740#1586#1740
      DisplayWidth = 24
      FieldName = 'Amount'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object srcPonyExtra: TDataSource
    DataSet = qryPonyExtra
    Left = 802
    Top = 319
  end
  object qryRptComprasion: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    Left = 528
    Top = 320
    object qryRptComprasionMounth: TFloatField
      DisplayLabel = #1605#1575#1607
      FieldName = 'Mounth'
      ReadOnly = True
    end
    object qryRptComprasionSumFunctionDay: TFloatField
      DisplayLabel = #1705#1575#1585#1705#1585#1583
      FieldName = 'SumFunctionDay'
      ReadOnly = True
    end
    object qryRptComprasionPrice: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '
      FieldName = 'Price'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object srcRptComprasion: TDataSource
    DataSet = qryRptComprasion
    Left = 410
    Top = 311
  end
  object plnRptComprasion: TppDBPipeline
    DataSource = srcRptComprasion
    OpenDataSource = False
    UserName = 'plnRptComprasion'
    Left = 619
    Top = 317
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object plnPonyExtra: TppDBPipeline
    DataSource = srcPonyExtra
    OpenDataSource = False
    UserName = 'plnPonyExtra'
    Left = 947
    Top = 333
    MasterDataPipelineName = 'ppDBPipeline1'
    object plnPonyExtrappField1: TppField
      FieldAlias = 'Code'
      FieldName = 'Code'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plnPonyExtrappField2: TppField
      FieldAlias = 'Captin'
      FieldName = 'Captin'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plnPonyExtrappField3: TppField
      FieldAlias = 'Amount'
      FieldName = 'Amount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
  end
  object plnRptComprasionSum: TppDBPipeline
    DataSource = srcRptComprasion
    OpenDataSource = False
    UserName = 'plnRptComprasion1'
    Left = 291
    Top = 413
  end
  object ADOCmdUpDate: TADOCommand
    CommandTimeout = 0
    Connection = DmF.adcsalary
    ExecuteOptions = [eoExecuteNoRecords]
    Parameters = <>
    ParamCheck = False
    Left = 236
    Top = 25
  end
end
