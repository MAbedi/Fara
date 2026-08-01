inherited MissionItemsF: TMissionItemsF
  Left = 268
  Top = 166
  Caption = 'MissionItemsF'
  ClientHeight = 505
  ClientWidth = 908
  ExplicitWidth = 924
  ExplicitHeight = 544
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 445
    Width = 908
    ExplicitTop = 445
    ExplicitWidth = 908
    inherited BtnReject: TBitBtn
      Left = 2
      Margins.Left = 1
      Margins.Right = 1
      ExplicitLeft = 2
    end
    object newPanel: TPanel
      Left = 599
      Top = 1
      Width = 308
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 1
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 232
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
        Left = 155
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
        Left = 78
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
        TabOrder = 2
      end
      object BitBtn11: TBitBtn
        AlignWithMargins = True
        Left = 1
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = actGetExcel
        Align = alRight
        Caption = #1583#1585#1740#1575#1601#1578' '#1575#1586' Excel'
        TabOrder = 3
      end
    end
    object okPanel: TPanel
      Left = 445
      Top = 1
      Width = 154
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 2
      object BitBtn7: TBitBtn
        AlignWithMargins = True
        Left = 78
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
      object BitBtn8: TBitBtn
        AlignWithMargins = True
        Left = 1
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
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 310
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actPrint
      Align = alLeft
      Cancel = True
      Caption = #1670#1575#1662'(F7)'#8207
      ModalResult = 1
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 79
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 156
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
      TabOrder = 5
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 233
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSend2Excel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Width = 908
    Height = 66
    ExplicitWidth = 908
    ExplicitHeight = 66
    DesignSize = (
      908
      66)
    inherited ImgTemplate: TImage
      Left = 870
      ExplicitLeft = 735
    end
    inherited lblCaption: TLabel
      Left = 800
      Height = 46
      ExplicitLeft = 800
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 280
      Height = 64
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 119
        Top = 5
        Width = 108
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1587#1591#1581' '#1602#1576#1604#1610' '
        FocusControl = edtCaption
      end
      object SpeedButton1: TSpeedButton
        Left = 8
        Top = 0
        Width = 23
        Height = 22
        Caption = '...'
      end
      object DBEdit1: TDBEdit
        Left = 32
        Top = 2
        Width = 81
        Height = 19
        Ctl3D = False
        DataField = 'InfoID'
        DataSource = srcMaster
        ParentCtl3D = False
        TabOrder = 0
      end
      object edtCaption: TDBEdit
        Tag = 10
        Left = 8
        Top = 24
        Width = 218
        Height = 19
        Color = 14408667
        Ctl3D = False
        DataField = 'InfoName_L1'
        DataSource = srcMaster
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object DBNavigator1: TDBNavigator
        Left = 8
        Top = 44
        Width = 216
        Height = 18
        DataSource = srcMaster
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        TabOrder = 2
      end
    end
  end
  inherited Panel3: TPanel
    Top = 66
    Width = 908
    Height = 379
    ExplicitTop = 66
    ExplicitWidth = 908
    ExplicitHeight = 379
    object Panel1: TPanel
      Left = 2
      Top = 39
      Width = 438
      Height = 338
      Align = alLeft
      BevelInner = bvLowered
      BevelWidth = 2
      BorderWidth = 3
      BorderStyle = bsSingle
      TabOrder = 0
      object Label3: TLabel
        Left = 121
        Top = 223
        Width = 20
        Height = 13
        Alignment = taRightJustify
        Caption = #1605#1576#1604#1594
        FocusControl = dbedtEmployeeAmount
      end
      object Label4: TLabel
        Left = 320
        Top = 200
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = #1605#1583#1578
        FocusControl = dbedtDayQuntity
      end
      object Label6: TLabel
        Left = 320
        Top = 223
        Width = 15
        Height = 13
        Alignment = taRightJustify
        Caption = #1606#1585#1582
        FocusControl = dbedtRate
      end
      object pnlAidNo1: TPanel
        Left = 211
        Top = 149
        Width = 199
        Height = 24
        BevelOuter = bvNone
        TabOrder = 4
        object lblAidNo1: TLabel
          Left = 108
          Top = 5
          Width = 71
          Height = 13
          Alignment = taRightJustify
          Caption = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610' 1'
          FocusControl = DBEdit7
        end
        object DBEdit7: TDBEdit
          Left = 2
          Top = 1
          Width = 100
          Height = 21
          DataField = 'AidNo1'
          DataSource = srcdecExt
          TabOrder = 0
        end
      end
      object pnlAidDate1: TPanel
        Left = 15
        Top = 149
        Width = 195
        Height = 24
        BevelOuter = bvNone
        TabOrder = 5
        object lblAidDate1: TLabel
          Left = 108
          Top = 5
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1575#1585#1610#1582' '#1603#1605#1603#1610' 1'
          FocusControl = DBEdit8
        end
        object DBEdit8: TDBEdit
          Left = 2
          Top = 1
          Width = 100
          Height = 21
          DataField = 'AidDate1'
          DataSource = srcdecExt
          TabOrder = 0
        end
      end
      object pnlAidDate2: TPanel
        Left = 16
        Top = 174
        Width = 196
        Height = 24
        BevelOuter = bvNone
        TabOrder = 7
        object lblAidDate2: TLabel
          Left = 108
          Top = 3
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1575#1585#1610#1582' '#1603#1605#1603#1610' 2'
          FocusControl = DBEdit10
        end
        object DBEdit10: TDBEdit
          Left = 2
          Top = -1
          Width = 100
          Height = 21
          DataField = 'AidDate2'
          DataSource = srcdecExt
          TabOrder = 0
        end
      end
      object pnlAidNo2: TPanel
        Left = 211
        Top = 174
        Width = 199
        Height = 24
        BevelOuter = bvNone
        TabOrder = 6
        object lblAidNo2: TLabel
          Left = 108
          Top = 3
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610'2'
          FocusControl = DBEdit2
        end
        object DBEdit2: TDBEdit
          Left = 2
          Top = -1
          Width = 100
          Height = 21
          DataField = 'AidNo2'
          DataSource = srcdecExt
          TabOrder = 0
        end
      end
      object dbedtEmployeeAmount: TDBEdit
        Left = 16
        Top = 220
        Width = 100
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'EmployeeAmount'
        DataSource = srcdecExt
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 10
      end
      object dbedtDayQuntity: TDBEdit
        Left = 212
        Top = 197
        Width = 101
        Height = 21
        DataField = 'DayQuntity'
        DataSource = srcDecExtItems
        TabOrder = 8
      end
      object GrpNote: TGroupBox
        Left = 7
        Top = 250
        Width = 420
        Height = 40
        Align = alBottom
        Caption = #1578#1608#1590#1610#1581#1575#1578
        TabOrder = 12
        ExplicitTop = 242
        object DBMmoNote: TDBMemo
          Left = 2
          Top = 15
          Width = 416
          Height = 23
          Align = alClient
          DataField = 'Note_L1'
          DataSource = srcdecExt
          TabOrder = 0
        end
      end
      object Panel5: TPanel
        Left = 7
        Top = 303
        Width = 420
        Height = 24
        Align = alBottom
        TabOrder = 13
        DesignSize = (
          420
          24)
        object SpeedButton16: TSpeedButton
          Left = 3
          Top = 2
          Width = 23
          Height = 21
          Action = DataSetDelete1
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000220B0000220B000000010000000100000031DE000031
            E7000031EF000031F700FF00FF000031FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00040404040404
            0404040404040404000004000004040404040404040404000004040000000404
            0404040404040000040404000000000404040404040000040404040402000000
            0404040400000404040404040404000000040000000404040404040404040400
            0101010004040404040404040404040401010204040404040404040404040400
            0201020304040404040404040404030201040403030404040404040404050203
            0404040405030404040404040303050404040404040303040404040303030404
            0404040404040403040403030304040404040404040404040404030304040404
            0404040404040404040404040404040404040404040404040404}
          ParentShowHint = False
          ShowHint = True
        end
        object BitBtn10: TBitBtn
          Left = 29
          Top = 3
          Width = 87
          Height = 19
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
          TabOrder = 0
          OnClick = BitBtn10Click
        end
        object DBNavigator2: TDBNavigator
          Left = 258
          Top = 3
          Width = 156
          Height = 19
          DataSource = srcdecExt
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Anchors = [akTop, akRight]
          Flat = True
          TabOrder = 1
        end
      end
      object pnlProcCode: TPanel
        Left = 7
        Top = 99
        Width = 420
        Height = 24
        Align = alTop
        TabOrder = 2
        TabStop = True
        DesignSize = (
          420
          24)
        object lblProcCode: TLabel
          Left = 359
          Top = 5
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1603#1583' '#1605#1581#1589#1608#1604
        end
        object btnProcCode: TSpeedButton
          Left = 250
          Top = 0
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = btnProcCodeClick
        end
        object DBEdit21: TDBEdit
          Left = 273
          Top = 1
          Width = 85
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'ProcCode'
          DataSource = srcdecExt
          TabOrder = 0
          OnKeyDown = DBEdit_All_KeyDown
        end
        object DBEdit22: TDBEdit
          Left = 2
          Top = 2
          Width = 245
          Height = 19
          TabStop = False
          Anchors = [akTop, akRight]
          Ctl3D = False
          DataField = '_ProcCode'
          DataSource = srcdecExt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlEarthCode: TPanel
        Left = 7
        Top = 123
        Width = 420
        Height = 25
        Align = alTop
        TabOrder = 3
        TabStop = True
        DesignSize = (
          420
          25)
        object lblEarthCode: TLabel
          Left = 359
          Top = 5
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1603#1583' '#1586#1605#1610#1606
        end
        object btnEarthCode: TSpeedButton
          Left = 250
          Top = 0
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = btnEarthCodeClick
        end
        object DBEdit19: TDBEdit
          Left = 273
          Top = 1
          Width = 85
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'EarthCode'
          DataSource = srcdecExt
          TabOrder = 0
          OnKeyDown = DBEdit_All_KeyDown
        end
        object DBEdit20: TDBEdit
          Left = 2
          Top = 2
          Width = 245
          Height = 19
          TabStop = False
          Anchors = [akTop, akRight]
          Ctl3D = False
          DataField = '_EarthCode'
          DataSource = srcdecExt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object Panel6: TPanel
        Left = 7
        Top = 7
        Width = 420
        Height = 46
        Align = alTop
        TabOrder = 0
        DesignSize = (
          420
          46)
        object Label2: TLabel
          Left = 359
          Top = 5
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1603#1583' '#1662#1585#1587#1606#1604
        end
        object btnPersonelNo: TSpeedButton
          Left = 250
          Top = 0
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = btnPersonelNoClick
        end
        object lblEmployeeName_L2: TLabel
          Left = 359
          Top = 29
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605' '#1662#1585#1587#1606#1604
        end
        object DBEdit3: TDBEdit
          Left = 273
          Top = 2
          Width = 85
          Height = 19
          Anchors = [akTop, akRight]
          Color = 14540253
          Ctl3D = False
          DataField = 'PersonelNo'
          DataSource = srcdecExt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnExit = DBEdit3Exit
          OnKeyDown = DBEdit_All_KeyDown
        end
        object DBEdit4: TDBEdit
          Left = 2
          Top = 2
          Width = 245
          Height = 19
          TabStop = False
          Anchors = [akTop, akRight]
          Color = clCream
          Ctl3D = False
          DataField = '_PersonName_l1'
          DataSource = srcdecExt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit9: TDBEdit
          Left = 2
          Top = 23
          Width = 356
          Height = 19
          TabStop = False
          Anchors = [akTop, akRight]
          Color = clCream
          Ctl3D = False
          DataField = '_PersonName_l2'
          DataSource = srcdecExt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
      end
      object Panel7: TPanel
        Left = 7
        Top = 53
        Width = 420
        Height = 46
        Align = alTop
        TabOrder = 1
        DesignSize = (
          420
          46)
        object Label5: TLabel
          Left = 359
          Top = 6
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1603#1583' '#1662#1585#1608#1688#1607
        end
        object btnFormInfoID2: TSpeedButton
          Left = 250
          Top = 1
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = btnFormInfoID2Click
        end
        object lblProject_L2: TLabel
          Left = 359
          Top = 28
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1593#1606#1608#1575#1606' '#1662#1585#1608#1688#1607' '
        end
        object DBEdit11: TDBEdit
          Left = 273
          Top = 2
          Width = 85
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'FormInfoID2'
          DataSource = srcdecExt
          TabOrder = 0
          OnExit = DBEdit11Exit
          OnKeyDown = DBEdit_All_KeyDown
        end
        object DBEdit12: TDBEdit
          Left = 2
          Top = 3
          Width = 245
          Height = 19
          TabStop = False
          Anchors = [akTop, akRight]
          Ctl3D = False
          DataField = '_projectname_L1'
          DataSource = srcdecExt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit13: TDBEdit
          Left = 2
          Top = 25
          Width = 356
          Height = 19
          TabStop = False
          Anchors = [akTop, akRight]
          Ctl3D = False
          DataField = '_projectname_L2'
          DataSource = srcdecExt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
      end
      object dbedtRate: TDBEdit
        Left = 212
        Top = 219
        Width = 101
        Height = 21
        DataField = 'Rate'
        DataSource = srcDecExtItems
        TabOrder = 9
      end
      object DBGrid2: TCedarDbgrid
        Tag = 111
        Left = 7
        Top = 290
        Width = 420
        Height = 13
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clCream
        DataSource = srcDecExtItems
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
        RowHeight = 18
        SearchPanel.Enabled = True
        SortLocal = True
        TabOrder = 11
        OnEditButtonClick = DBGrid2EditButtonClick
        OnEnter = DBGrid2Enter
        OnKeyDown = DBGrid2KeyDown
        OnKeyPress = DBGrid2KeyPress
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        Columns = <
          item
            ButtonStyle = cbsEllipsis
            CellButtons = <>
            DynProps = <>
            EditButton.Style = ebsEllipsisEh
            EditButton.Visible = True
            EditButtons = <>
            FieldName = 'SalaryID'
            Footers = <>
            ReadOnly = True
            Width = 38
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_Object_l1'
            Footers = <>
            Width = 84
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_Object2_L2'
            Footers = <>
            Width = 40
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DayQuntity'
            Footers = <>
            Width = 29
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Rate'
            Footers = <>
            Width = 75
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Amount'
            Footers = <>
            ReadOnly = True
            Width = 88
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object ToolBar1: TToolBar
      Left = 2
      Top = 2
      Width = 904
      Height = 37
      BorderWidth = 2
      ButtonHeight = 21
      ButtonWidth = 54
      Caption = 'ToolBar1'
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      EdgeInner = esLowered
      ShowCaptions = True
      TabOrder = 1
      object ToolButton1: TToolButton
        Tag = 1
        Left = 0
        Top = 0
        Caption = #1601#1585#1608#1585#1583#1610#1606
        Grouped = True
        ImageIndex = 0
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton2: TToolButton
        Tag = 2
        Left = 54
        Top = 0
        Caption = #1575#1585#1583#1610#1576#1607#1588#1578
        Grouped = True
        ImageIndex = 1
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton3: TToolButton
        Tag = 3
        Left = 108
        Top = 0
        Caption = #1582#1585#1583#1575#1583
        Grouped = True
        ImageIndex = 2
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton4: TToolButton
        Tag = 4
        Left = 162
        Top = 0
        Caption = #1578#1610#1585
        Grouped = True
        ImageIndex = 3
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton5: TToolButton
        Tag = 5
        Left = 216
        Top = 0
        Caption = #1605#1585#1583#1575#1583
        Grouped = True
        ImageIndex = 4
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton6: TToolButton
        Tag = 6
        Left = 270
        Top = 0
        Caption = #1588#1607#1585#1610#1608#1585
        Grouped = True
        ImageIndex = 5
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton7: TToolButton
        Tag = 7
        Left = 324
        Top = 0
        Caption = #1605#1607#1585
        Grouped = True
        ImageIndex = 6
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton8: TToolButton
        Tag = 8
        Left = 378
        Top = 0
        Caption = #1570#1576#1575#1606
        Grouped = True
        ImageIndex = 7
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton9: TToolButton
        Tag = 9
        Left = 432
        Top = 0
        Caption = #1570#1584#1585
        Grouped = True
        ImageIndex = 8
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton10: TToolButton
        Tag = 10
        Left = 486
        Top = 0
        Caption = #1583#1610
        Grouped = True
        ImageIndex = 9
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton11: TToolButton
        Tag = 11
        Left = 540
        Top = 0
        Caption = #1576#1607#1605#1606
        Grouped = True
        ImageIndex = 10
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton12: TToolButton
        Tag = 12
        Left = 594
        Top = 0
        Caption = #1575#1587#1601#1606#1583
        Grouped = True
        ImageIndex = 11
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
    end
    object Panel8: TPanel
      Left = 440
      Top = 39
      Width = 466
      Height = 338
      Align = alClient
      TabOrder = 2
      object DBGrid1: TCedarDbgrid
        Tag = 111
        Left = 1
        Top = 1
        Width = 464
        Height = 336
        Align = alClient
        Color = clCream
        DataSource = srcdecExt
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
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        RowHeight = 18
        SearchPanel.Enabled = True
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
            FieldName = 'PersonelNo'
            Footers = <>
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_PersonName_l1'
            Footers = <>
            Width = 88
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_PersonName_l2'
            Footers = <>
            Width = 92
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EmployeeAmount'
            Footers = <>
            Width = 104
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object StatusBar1: TStatusBar [3]
    Left = 0
    Top = 486
    Width = 908
    Height = 19
    Panels = <
      item
        Width = 220
      end
      item
        Width = 220
      end
      item
        Width = 220
      end
      item
        Width = 220
      end>
  end
  object yrcmbx1: TYearComboBox [4]
    Left = 244
    Top = 20
    Width = 112
    Height = 32
    Align = alCustom
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    TabOrder = 4
    YearID = 0
    YearsParam = 0
    ADOConnection = DmF.adcsalary
    OnYearChangeID = yrcmbx1YearChangeID
  end
  inherited ActionList: TActionList
    Left = 408
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcdecExt
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcdecExt
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcdecExt
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcdecExt
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcdecExt
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      DataSource = srcDecExtItems
    end
    object actPrint: TAction
      Caption = #1670#1575#1662'(F7)'#8207
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSend2Excel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSend2ExcelExecute
    end
    object actGetExcel: TAction
      Caption = #1583#1585#1740#1575#1601#1578' '#1575#1586' Excel'
      OnExecute = actGetExcelExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 464
    Top = 209
  end
  object qryMaster: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterScroll = qryMasterAfterScroll
    Parameters = <
      item
        Name = 'type'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     FormInfoID, FormType, InfoID, InfoName_L1, InfoName_L' +
        '2'
      'FROM         Pay.FormsInfo'
      'WHERE     (FormType = :type)'
      '')
    Left = 160
    Top = 24
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
      Size = 255
    end
    object qryMasterInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
  end
  object srcMaster: TDataSource
    DataSet = qryMaster
    Left = 96
    Top = 29
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
        Value = 6
      end>
    SQL.Strings = (
      'select * FROM Pay.FormTypes'
      'where  FormType=:FormType')
    Left = 608
    Top = 13
  end
  object qrydecExt: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterOpen = qrydecExtAfterOpen
    AfterClose = qrydecExtAfterClose
    AfterInsert = qrydecExtAfterInsert
    AfterEdit = qrydecExtAfterEdit
    BeforePost = qrydecExtBeforePost
    AfterPost = qrydecExtAfterPost
    AfterCancel = qrydecExtAfterCancel
    BeforeDelete = qrydecExtBeforeDelete
    AfterScroll = qrydecExtAfterScroll
    Parameters = <
      item
        Name = 'YearID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'StartYear'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'fInfoId'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Mounth'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT    * FROM    Pay.PersonelDecExt'
      
        'WHERE    ( YearID  = :YearID  ) AND   (StartYear = :StartYear  )' +
        ' AND'
      '   (FormInfoID = :fInfoId) AND (FirstMounth = :Mounth)'
      'order by PersonelNo')
    Left = 490
    Top = 144
    object qrydecExtDecExtID: TIntegerField
      FieldName = 'DecExtID'
    end
    object qrydecExtFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qrydecExtPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
      OnChange = qrydecExtPersonelNoChange
    end
    object qrydecExtEmployeeAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1605#1575#1605#1608#1585#1610#1578
      FieldName = 'EmployeeAmount'
      currency = True
      Precision = 19
    end
    object qrydecExtFirstMounth: TWordField
      FieldName = 'FirstMounth'
    end
    object qrydecExtEndMounth: TWordField
      FieldName = 'EndMounth'
    end
    object qrydecExtAidNo1: TStringField
      Tag = 3
      FieldName = 'AidNo1'
      Size = 30
    end
    object qrydecExtAidDate1_L1: TStringField
      Tag = 3
      FieldName = 'AidDate1'
      EditMask = '!9999/99/99;1;_'
      FixedChar = True
      Size = 10
    end
    object qrydecExtAidNo2: TStringField
      Tag = 3
      FieldName = 'AidNo2'
      Size = 30
    end
    object qrydecExtAidDate2_L1: TStringField
      Tag = 3
      FieldName = 'AidDate2'
      EditMask = '!9999/99/99;1;_'
      FixedChar = True
      Size = 10
    end
    object qrydecExtDayQuntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1583#1578' '#1605#1575#1605#1608#1585#1610#1578
      FieldName = 'DayQuntity'
      OnChange = qrydecExtDayQuntityChange
    end
    object qrydecExtDayTime: TFloatField
      FieldName = 'DayTime'
    end
    object qrydecExtEmployerAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1605#1575#1605#1608#1585#1610#1578
      FieldName = 'EmployerAmount'
      currency = True
      Precision = 19
    end
    object qrydecExtFormInfoID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1585#1608#1688#1607
      FieldName = 'FormInfoID2'
    end
    object qrydecExtAccTopicCode: TIntegerField
      FieldName = 'AccTopicCode'
    end
    object qrydecExtAccCTopicCode: TIntegerField
      FieldName = 'AccCTopicCode'
    end
    object qrydecExtAccCTopicCode2: TIntegerField
      FieldName = 'AccCTopicCode2'
    end
    object qrydecExtAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qrydecExt_PersonName1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1585#1587#1606#1604
      FieldKind = fkLookup
      FieldName = '_PersonName_l1'
      LookupDataSet = PersonelInfo
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'EmployeeName_L1'
      KeyFields = 'PersonelNo'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qrydecExt_PersonName_L22: TStringField
      DisplayLabel = #1606#1575#1605' '#1662#1585#1587#1606#1604'2'
      FieldKind = fkLookup
      FieldName = '_PersonName_l2'
      LookupDataSet = PersonelInfo
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'EmployeeName_L2'
      KeyFields = 'PersonelNo'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qrydecExt_projectname_L1: TStringField
      DisplayLabel = #1606#1575#1605' '#1662#1585#1608#1688#1607' '
      FieldKind = fkLookup
      FieldName = '_projectname_L1'
      LookupDataSet = qryLookupPrj
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'FormInfoID2'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qrydecExt_projectname_L2: TStringField
      DisplayLabel = #1606#1575#1605' '#1662#1585#1608#1688#1607' 2'
      FieldKind = fkLookup
      FieldName = '_projectname_L2'
      LookupDataSet = qryLookupPrj
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L2'
      KeyFields = 'FormInfoID2'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qrydecExtProcCode: TIntegerField
      FieldName = 'ProcCode'
    end
    object qrydecExtEarthCode: TIntegerField
      FieldName = 'EarthCode'
    end
    object qrydecExt_EarthCode: TStringField
      FieldKind = fkLookup
      FieldName = '_EarthCode'
      LookupDataSet = qryEarthCode
      LookupKeyFields = 'InfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'EarthCode'
      Size = 100
      Lookup = True
    end
    object qrydecExt_ProcCode: TStringField
      FieldKind = fkLookup
      FieldName = '_ProcCode'
      LookupDataSet = qryProcCode
      LookupKeyFields = 'InfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'ProcCode'
      Size = 100
      Lookup = True
    end
    object qrydecExtYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qrydecExtStartYear: TIntegerField
      FieldName = 'StartYear'
    end
    object qrydecExtEndYear: TIntegerField
      FieldName = 'EndYear'
    end
    object qrydecExtNote_L1: TWideStringField
      FieldName = 'Note_L1'
      Size = 4000
    end
    object qrydecExtNote_L2: TWideStringField
      FieldName = 'Note_L2'
      Size = 4000
    end
  end
  object srcdecExt: TDataSource
    DataSet = qrydecExt
    OnStateChange = srcdecExtStateChange
    Left = 554
    Top = 223
  end
  object qryDecExtItems: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryDecExtItemsBeforeInsert
    AfterInsert = qryDecExtItemsAfterInsert
    BeforeEdit = qryDecExtItemsBeforeEdit
    AfterEdit = qryDecExtItemsAfterEdit
    BeforePost = qryDecExtItemsBeforePost
    Parameters = <
      item
        Name = 'ExtID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  *  FROM Pay.DecExtItems'
      #13'WHERE     (DecExtID = :ExtID)'#10
      ''
      ''
      'ORDER BY DecExtID')
    Left = 652
    Top = 307
    object qryDecExtItemsDecExtID: TIntegerField
      FieldName = 'DecExtID'
    end
    object qryDecExtItemsSalaryID: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'SalaryID'
    end
    object qryDecExtItemsDayQuntity: TFloatField
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldName = 'DayQuntity'
    end
    object qryDecExtItemsAmount: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryDecExtItems_Amount2: TCurrencyField
      FieldKind = fkLookup
      FieldName = '_Amount'
      LookupDataSet = qryLookUp
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'Amount'
      KeyFields = 'SalaryID'
      LookupCache = True
      Lookup = True
    end
    object qryDecExtItems_Object: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldKind = fkLookup
      FieldName = '_Object_l1'
      LookupDataSet = qryLookUp
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'SalaryID'
      LookupCache = True
      ReadOnly = True
      Size = 50
      Lookup = True
    end
    object qryDecExtItems_Object2: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' 2'
      FieldKind = fkLookup
      FieldName = '_Object2_L2'
      LookupDataSet = qryLookUp
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L2'
      KeyFields = 'SalaryID'
      LookupCache = True
      ReadOnly = True
      Size = 50
      Lookup = True
    end
    object qryDecExtItemsDecExtItemID: TIntegerField
      FieldName = 'DecExtItemID'
    end
    object qryDecExtItems_Coefficient: TFloatField
      FieldKind = fkLookup
      FieldName = '_Coefficient'
      LookupDataSet = qryLookUp
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'Coefficient'
      KeyFields = 'SalaryID'
      Lookup = True
    end
    object qryDecExtItems_CalCulateType: TIntegerField
      FieldKind = fkLookup
      FieldName = '_CalCulateType'
      LookupDataSet = qryLookUp
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'CalCulateType'
      KeyFields = 'SalaryID'
      Lookup = True
    end
    object qryDecExtItems_StandardDays: TFloatField
      FieldKind = fkLookup
      FieldName = '_StandardDays'
      LookupDataSet = qryLookUp
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'StandardDays'
      KeyFields = 'SalaryID'
      Lookup = True
    end
    object qryDecExtItemsRate: TBCDField
      DisplayLabel = #1606#1585#1582
      FieldName = 'Rate'
      currency = True
      Precision = 19
    end
  end
  object srcDecExtItems: TDataSource
    DataSet = qryDecExtItems
    Left = 474
    Top = 303
  end
  object qryLookUp: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'PInfoID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     FormInfoID, InfoID, FormType, InfoName_L1, InfoName_L' +
        '2, '
      
        '               Amount, Coefficient  ,CalCulateType ,StandardDays' +
        '              '
      'FROM         Pay.FormsInfo'
      'WHERE     (PrvInfoID = :PInfoID)')
    Left = 560
    Top = 288
  end
  object PersonelInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     PersonelNo, lastname_L1 + '#39'-'#39' + Name_L1  AS EmployeeN' +
        'ame_L1, lastname_L2 + '#39'-'#39' + Name_L2 AS EmployeeName_L2'
      'FROM         Pay.PersonelInfo'
      'order by PersonelNo')
    Left = 608
    Top = 149
  end
  object qryLookupPrj: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FormInfo4Function'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT   FormInfoID,  InfoID, ltrim(InfoID)+ InfoName_L1 AS Info' +
        'Name_L1, InfoName_L2'
      'FROM Pay.FormsInfo'
      'WHERE  FormType =  :FormInfo4Function')
    Left = 74
    Top = 87
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcdecExt
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 704
    Top = 160
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'DecExtID'
      FieldName = 'DecExtID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'FormInfoID'
      FieldName = 'FormInfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'EmployeeAmount'
      FieldName = 'EmployeeAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'FirstMounth'
      FieldName = 'FirstMounth'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'EndMounth'
      FieldName = 'EndMounth'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'AidNo1'
      FieldName = 'AidNo1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'AidDate1'
      FieldName = 'AidDate1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'AidNo2'
      FieldName = 'AidNo2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'AidDate2'
      FieldName = 'AidDate2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'DayQuntity'
      FieldName = 'DayQuntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'DayTime'
      FieldName = 'DayTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'EmployerAmount'
      FieldName = 'EmployerAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'FormInfoID2'
      FieldName = 'FormInfoID2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'Note_L1'
      FieldName = 'Note_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'Note_L2'
      FieldName = 'Note_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'AccTopicCode'
      FieldName = 'AccTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'AccCTopicCode'
      FieldName = 'AccCTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'AccCTopicCode2'
      FieldName = 'AccCTopicCode2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'AccDetailCode'
      FieldName = 'AccDetailCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = '_PersonName_l1'
      FieldName = '_PersonName_l1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = '_PersonName_l2'
      FieldName = '_PersonName_l2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = '_projectname_L1'
      FieldName = '_projectname_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = '_projectname_L2'
      FieldName = '_projectname_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
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
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\MissionItemsF 1.rtm'
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
    Left = 712
    Top = 256
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand1: TppTitleBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 14817
      mmPrintPosition = 0
      object ppLblCompany: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompany'
        OnGetText = ppLblCompanyGetText
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
        mmLeft = 75406
        mmTop = 0
        mmWidth = 52123
        BandType = 1
        LayerName = Foreground
      end
      object ppLblReportName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblReportName'
        OnGetText = ppLblReportNameGetText
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
        mmLeft = 82550
        mmTop = 6350
        mmWidth = 38100
        BandType = 1
        LayerName = Foreground
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblPrintDate'
        OnGetText = ppLblPrintDateGetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5800
        mmLeft = 11906
        mmTop = 8202
        mmWidth = 11430
        BandType = 1
        LayerName = Foreground
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 12435
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 5027
        mmWidth = 203200
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
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 9790
        mmTop = 0
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 265
        mmTop = 10319
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
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
        mmLeft = 183092
        mmTop = 5027
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594' '#1605#1575#1605#1608#1585#1610#1578
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
        mmLeft = 43656
        mmTop = 5027
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5292
        mmLeft = 68792
        mmTop = 6350
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1662#1585#1587#1606#1604
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
        mmLeft = 138377
        mmTop = 5027
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1581#1603#1605
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
        mmLeft = 94721
        mmTop = 5027
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1581#1603#1605
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
        mmLeft = 74348
        mmTop = 5027
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5292
        mmLeft = 110596
        mmTop = 6879
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5292
        mmLeft = 178594
        mmTop = 6350
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
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
        mmLeft = 90488
        mmTop = 6879
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5292
        mmLeft = 36248
        mmTop = 6350
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1662#1585#1608#8205#1688#1607
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
        mmLeft = 7958
        mmTop = 5027
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'PersonelNo'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 180975
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'AidNo1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 93927
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = '_PersonName_l1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 114300
        mmTop = 0
        mmWidth = 63236
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'EmployeeAmount'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 39688
        mmTop = 0
        mmWidth = 28575
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'AidDate1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 71702
        mmTop = 0
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = '_projectname_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 0
        mmTop = 0
        mmWidth = 24606
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'FormInfoID2'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 25929
        mmTop = 0
        mmWidth = 9525
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
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5292
        mmLeft = 24606
        mmTop = 529
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'EmployeeAmount'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 39688
        mmTop = 1058
        mmWidth = 28575
        BandType = 7
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 265
        mmTop = 0
        mmWidth = 203200
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'DecExtID'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
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
        mmHeight = 0
        mmPrintPosition = 0
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
  object PopList4Print: TPopupMenu
    Left = 482
    Top = 367
    object AllClikPop: TMenuItem
      Caption = #1670#1575#1662#1607#1575#1610' '#1583#1610#1711#1585' '#1585#1575' '#1583#1585' '#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583' '#1605#1588#1582#1589' '#1603#1606#1610#1583'..'
      OnClick = AllClikPopClick
    end
  end
  object qryEarthCode: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT InfoID, InfoName_L1, InfoName_L2 FROM Pay.FormsInfo '
      '     WHERE  FormType =69'
      '')
    Left = 563
    Top = 353
  end
  object qryProcCode: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT  InfoID, InfoName_L1, InfoName_L2 FROM Pay.FormsInfo '
      '     WHERE  FormType =67'
      '')
    Left = 643
    Top = 377
  end
  object plnItems: TppDBPipeline
    DataSource = srcDecExtItems
    OpenDataSource = False
    UserName = 'plnItems'
    Left = 800
    Top = 208
    MasterDataPipelineName = 'ppDBPipeline1'
    object plnItemsppField1: TppField
      FieldAlias = 'DecExtID'
      FieldName = 'DecExtID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plnItemsppField2: TppField
      FieldAlias = 'SalaryID'
      FieldName = 'SalaryID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plnItemsppField3: TppField
      FieldAlias = 'DayQuntity'
      FieldName = 'DayQuntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plnItemsppField4: TppField
      FieldAlias = 'Amount'
      FieldName = 'Amount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plnItemsppField5: TppField
      FieldAlias = '_Amount'
      FieldName = '_Amount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object plnItemsppField6: TppField
      FieldAlias = '_Object_l1'
      FieldName = '_Object_l1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plnItemsppField7: TppField
      FieldAlias = '_Object2_L2'
      FieldName = '_Object2_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object plnItemsppField8: TppField
      FieldAlias = 'DecExtItemID'
      FieldName = 'DecExtItemID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object plnItemsppField9: TppField
      FieldAlias = '_Coefficient'
      FieldName = '_Coefficient'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object plnItemsppField10: TppField
      FieldAlias = '_CalCulateType'
      FieldName = '_CalCulateType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object plnItemsppField11: TppField
      FieldAlias = '_StandardDays'
      FieldName = '_StandardDays'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object plnItemsppField12: TppField
      FieldAlias = 'Rate'
      FieldName = 'Rate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
  end
end
