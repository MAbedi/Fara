inherited PersonelLeaveF: TPersonelLeaveF
  Left = 366
  Top = 122
  Caption = 'PersonelLeaveF'
  ClientHeight = 535
  ClientWidth = 881
  OnResize = FormResize
  ExplicitWidth = 897
  ExplicitHeight = 574
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 494
    Width = 881
    ExplicitTop = 495
    ExplicitWidth = 885
    inherited BtnReject: TBitBtn
      Left = 2
      Margins.Left = 1
      Margins.Right = 1
      ExplicitLeft = 2
    end
    object okPanel: TPanel
      Left = 422
      Top = 1
      Width = 154
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 1
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
    object BitBtn11: TBitBtn
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
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 3
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
      Action = actSendToExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 4
    end
    object newPanel: TPanel
      Left = 576
      Top = 1
      Width = 308
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 5
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
      object BitBtn2: TBitBtn
        AlignWithMargins = True
        Left = 1
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Align = alRight
        Caption = #1581#1584#1601' '#1705#1604#1740'...'
        TabOrder = 3
        OnClick = BitBtn2Click
        ExplicitTop = 8
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
      Caption = #1670#1600#1600#1575#1662
      TabOrder = 6
    end
    object btnGetExcel: TBitBtn
      AlignWithMargins = True
      Left = 387
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actGetExcel
      Align = alLeft
      Caption = #1583#1585#1610#1575#1601#1578'Excel'
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
    Width = 881
    Height = 67
    ExplicitWidth = 885
    ExplicitHeight = 67
    DesignSize = (
      881
      67)
    inherited ImgTemplate: TImage
      Left = 839
      ExplicitLeft = 735
    end
    inherited lblCaption: TLabel
      Left = 773
      Height = 47
      ExplicitLeft = 773
    end
    inherited lblBaseDate: TLabel
      Left = 342
      ExplicitLeft = 342
    end
    object PnlRecall: TPanel
      Left = 3
      Top = 1
      Width = 278
      Height = 65
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 107
        Top = 7
        Width = 88
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578
        FocusControl = DBEdit1
      end
      object SpeedButton1: TSpeedButton
        Left = 4
        Top = 2
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object DBEdit1: TDBEdit
        Left = 28
        Top = 4
        Width = 73
        Height = 19
        Ctl3D = False
        DataField = 'InfoID'
        DataSource = Src_Master
        ParentCtl3D = False
        TabOrder = 0
      end
      object edtMaster: TDBEdit
        Left = 4
        Top = 25
        Width = 192
        Height = 19
        TabStop = False
        Color = 14540253
        Ctl3D = False
        DataField = 'InfoName_L1'
        DataSource = Src_Master
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
        Left = 4
        Top = 45
        Width = 192
        Height = 18
        DataSource = Src_Master
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        TabOrder = 2
      end
    end
  end
  inherited Panel3: TPanel
    Top = 67
    Width = 881
    Height = 427
    ExplicitTop = 67
    ExplicitWidth = 885
    ExplicitHeight = 428
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 423
      Height = 424
      Align = alLeft
      TabOrder = 0
      object Label6: TLabel
        Left = 317
        Top = 23
        Width = 71
        Height = 13
        Caption = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
        FocusControl = DBEdit7
      end
      object SBnPersonelNo: TSpeedButton
        Left = 213
        Top = 16
        Width = 23
        Height = 24
        Caption = '...'
        OnClick = SBnPersonelNoClick
      end
      object LblNote: TLabel
        Left = 318
        Top = 239
        Width = 40
        Height = 13
        Caption = #1578#1608#1590#1610#1581#1575#1578
        FocusControl = DBMmoNote
      end
      object pnlAccount: TPanel
        Left = 1
        Top = 299
        Width = 421
        Height = 124
        Align = alBottom
        AutoSize = True
        BevelInner = bvLowered
        BevelOuter = bvLowered
        BorderWidth = 4
        BorderStyle = bsSingle
        TabOrder = 10
        object pnlDetailCode: TPanel
          Left = 6
          Top = 32
          Width = 405
          Height = 27
          Align = alTop
          TabOrder = 0
          object Label4: TLabel
            Left = 327
            Top = 7
            Width = 51
            Height = 13
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610
            FocusControl = DBEdit5
          end
          object SpeedButton3: TSpeedButton
            Left = 196
            Top = 2
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton3Click
          end
          object DBText2: TDBText
            Left = 24
            Top = 5
            Width = 169
            Height = 17
            Color = 14540253
            DataField = '_AccDetailName'
            DataSource = src_items
            ParentColor = False
            Transparent = False
          end
          object DBEdit5: TDBEdit
            Left = 222
            Top = 3
            Width = 100
            Height = 21
            DataField = 'AccDetailCode'
            DataSource = src_items
            TabOrder = 0
            OnKeyDown = DBEdit5KeyDown
          end
        end
        object pnlCTopicCode: TPanel
          Left = 6
          Top = 59
          Width = 405
          Height = 26
          Align = alTop
          TabOrder = 1
          object Label3: TLabel
            Left = 332
            Top = 7
            Width = 65
            Height = 13
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39'1'
            FocusControl = DBEdit4
          end
          object SpeedButton4: TSpeedButton
            Left = 196
            Top = 2
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton4Click
          end
          object DBText3: TDBText
            Left = 24
            Top = 5
            Width = 169
            Height = 17
            Color = 14540253
            DataField = '_AccCTopicName'
            DataSource = src_items
            ParentColor = False
            Transparent = False
          end
          object DBEdit4: TDBEdit
            Left = 222
            Top = 3
            Width = 100
            Height = 21
            DataField = 'AccCTopicCode'
            DataSource = src_items
            TabOrder = 0
            OnKeyDown = DBEdit4KeyDown
          end
        end
        object pnlCTopicCode2: TPanel
          Left = 6
          Top = 85
          Width = 405
          Height = 29
          Align = alTop
          TabOrder = 2
          object Label2: TLabel
            Left = 332
            Top = 7
            Width = 68
            Height = 13
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' 2'
            FocusControl = DBEdit3
          end
          object SpeedButton5: TSpeedButton
            Left = 196
            Top = 2
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton5Click
          end
          object DBText4: TDBText
            Left = 24
            Top = 5
            Width = 169
            Height = 17
            Color = 14540253
            DataField = '_AccCTopicName2'
            DataSource = src_items
            ParentColor = False
            Transparent = False
          end
          object DBEdit3: TDBEdit
            Left = 222
            Top = 3
            Width = 100
            Height = 21
            DataField = 'AccCTopicCode2'
            DataSource = src_items
            TabOrder = 0
            OnKeyDown = DBEdit3KeyDown
          end
        end
        object pnlTopicCode: TPanel
          Left = 6
          Top = 6
          Width = 405
          Height = 26
          Align = alTop
          TabOrder = 3
          object Label5: TLabel
            Left = 327
            Top = 6
            Width = 62
            Height = 13
            Caption = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
            FocusControl = DBEdit6
          end
          object DBText1: TDBText
            Left = 24
            Top = 4
            Width = 169
            Height = 17
            Color = 14540253
            DataField = '_AccTopicName'
            DataSource = src_items
            ParentColor = False
            Transparent = False
          end
          object SpeedButton2: TSpeedButton
            Left = 196
            Top = 1
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton2Click
          end
          object DBEdit6: TDBEdit
            Left = 222
            Top = 2
            Width = 100
            Height = 21
            DataField = 'AccTopicCode'
            DataSource = src_items
            TabOrder = 0
            OnKeyDown = DBEdit6KeyDown
          end
        end
      end
      object DBEdit7: TDBEdit
        Left = 238
        Top = 19
        Width = 74
        Height = 21
        DataField = 'PersonelNo'
        DataSource = src_items
        TabOrder = 0
        OnExit = DBEdit7Exit
        OnKeyDown = DBEdit7KeyDown
      end
      object pnlCustomer1: TPanel
        Left = 39
        Top = 48
        Width = 378
        Height = 29
        BevelOuter = bvNone
        TabOrder = 11
        TabStop = True
        object Label7: TLabel
          Left = 280
          Top = 8
          Width = 80
          Height = 13
          Caption = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
        end
        object DBEdit8: TDBEdit
          Left = 6
          Top = 4
          Width = 265
          Height = 21
          TabStop = False
          DataField = '_EmployeeName_L1'
          DataSource = src_items
          TabOrder = 0
        end
      end
      object pnlCustomer2: TPanel
        Left = 39
        Top = 80
        Width = 380
        Height = 29
        BevelOuter = bvNone
        TabOrder = 12
        TabStop = True
        object Label8: TLabel
          Left = 279
          Top = 8
          Width = 73
          Height = 13
          Caption = 'EmployeeName'
        end
        object DBEdit9: TDBEdit
          Left = 7
          Top = 4
          Width = 265
          Height = 21
          TabStop = False
          DataField = '_EmployeeName_L2'
          DataSource = src_items
          TabOrder = 0
        end
      end
      object pnlAmount: TPanel
        Left = 208
        Top = 124
        Width = 142
        Height = 27
        BevelOuter = bvNone
        TabOrder = 1
        object Label9: TLabel
          Left = 108
          Top = 7
          Width = 20
          Height = 13
          Caption = #1605#1576#1604#1594
          FocusControl = DBEdit10
        end
        object DBEdit10: TDBEdit
          Left = 4
          Top = 3
          Width = 100
          Height = 21
          DataField = 'EmployeeAmount'
          DataSource = src_items
          TabOrder = 0
        end
      end
      object pnlDayQuntity: TPanel
        Left = 208
        Top = 156
        Width = 161
        Height = 25
        BevelOuter = bvNone
        TabOrder = 3
        object Label14: TLabel
          Left = 108
          Top = 6
          Width = 23
          Height = 13
          Caption = #1578#1593#1583#1575#1583
          FocusControl = DBEdit2
        end
        object DBEdit2: TDBEdit
          Left = 4
          Top = 2
          Width = 100
          Height = 21
          DataField = 'DayQuntity'
          DataSource = src_items
          TabOrder = 0
        end
      end
      object pnlDayTime: TPanel
        Left = 5
        Top = 156
        Width = 191
        Height = 26
        BevelOuter = bvNone
        TabOrder = 4
        object Label15: TLabel
          Left = 105
          Top = 6
          Width = 31
          Height = 13
          Caption = #1587#1575#1593#1578
          FocusControl = DBEdit15
        end
        object Label12: TLabel
          Left = 41
          Top = 5
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = #1583#1602#1610#1602#1607
          FocusControl = DBEdit13
        end
        object DBEdit15: TDBEdit
          Left = 68
          Top = 2
          Width = 37
          Height = 21
          DataField = 'DayTime'
          DataSource = src_items
          TabOrder = 0
        end
        object DBEdit16: TDBEdit
          Left = 4
          Top = 1
          Width = 35
          Height = 21
          DataField = 'Minute_'
          DataSource = src_items
          TabOrder = 1
        end
      end
      object pnlAidNo1: TPanel
        Left = 208
        Top = 184
        Width = 209
        Height = 25
        BevelOuter = bvNone
        TabOrder = 5
        object lblAidNo1: TLabel
          Left = 108
          Top = 6
          Width = 71
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610' 1'
          FocusControl = DBEdit12
          ParentBiDiMode = False
        end
        object DBEdit12: TDBEdit
          Left = 4
          Top = 2
          Width = 100
          Height = 21
          DataField = 'AidNo1'
          DataSource = src_items
          TabOrder = 0
        end
      end
      object pnlAidDate1: TPanel
        Left = 5
        Top = 184
        Width = 204
        Height = 25
        BevelOuter = bvNone
        TabOrder = 6
        object lblAidDate1: TLabel
          Left = 105
          Top = 6
          Width = 62
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = #1578#1575#1585#1610#1582' '#1603#1605#1603#1610' 1'
          FocusControl = DBEdtAidDate1
          ParentBiDiMode = False
        end
        object DBEdtAidDate1: TDBEdit
          Left = 3
          Top = 2
          Width = 100
          Height = 21
          DataField = 'AidDate1'
          DataSource = src_items
          TabOrder = 0
        end
      end
      object pnlAidNo2: TPanel
        Left = 208
        Top = 210
        Width = 208
        Height = 25
        BevelOuter = bvNone
        TabOrder = 7
        object lblAidNo2: TLabel
          Left = 108
          Top = 7
          Width = 71
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610' 2'
          FocusControl = DBEdit14
          ParentBiDiMode = False
        end
        object DBEdit14: TDBEdit
          Left = 4
          Top = 3
          Width = 100
          Height = 21
          DataField = 'AidNo2'
          DataSource = src_items
          TabOrder = 0
        end
      end
      object pnlAidDate2: TPanel
        Left = 5
        Top = 210
        Width = 204
        Height = 25
        BevelOuter = bvNone
        TabOrder = 8
        object lblAidDate2: TLabel
          Left = 105
          Top = 6
          Width = 65
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = #1578#1575#1585#1610#1582' '#1603#1605#1603#1610' 2 '
          FocusControl = DbEdtAidDate2
          ParentBiDiMode = False
        end
        object DbEdtAidDate2: TDBEdit
          Left = 3
          Top = 2
          Width = 100
          Height = 21
          DataField = 'AidDate2'
          DataSource = src_items
          TabOrder = 0
        end
      end
      object DBMmoNote: TDBMemo
        Left = 8
        Top = 237
        Width = 304
        Height = 44
        DataField = 'Note_L1'
        DataSource = src_items
        TabOrder = 9
      end
      object GrpBoxLimit: TGroupBox
        Left = 8
        Top = 107
        Width = 185
        Height = 48
        Caption = #1605#1581#1583#1608#1583#1607' '#1602#1575#1576#1604' '#1575#1580#1585#1575
        TabOrder = 2
        object Label10: TLabel
          Left = 152
          Top = 22
          Width = 24
          Height = 13
          Caption = #1575#1586' '#1605#1575#1607
          FocusControl = DBEdit10
        end
        object Label11: TLabel
          Left = 61
          Top = 23
          Width = 23
          Height = 13
          Caption = #1578#1575' '#1605#1575#1607
          FocusControl = DBEdit10
        end
        object DBEdit11: TDBEdit
          Left = 92
          Top = 21
          Width = 53
          Height = 21
          DataField = 'FirstMounth'
          DataSource = src_items
          TabOrder = 0
        end
        object DBEdit13: TDBEdit
          Left = 4
          Top = 20
          Width = 53
          Height = 21
          DataField = 'EndMounth'
          DataSource = src_items
          TabOrder = 1
        end
      end
      object DBEdtState: TDBEdit
        Left = 5
        Top = 2
        Width = 191
        Height = 19
        TabStop = False
        Color = 14540253
        Ctl3D = False
        DataField = '_StateName_L1'
        DataSource = src_items
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 13
      end
    end
    object Panel4: TPanel
      Left = 425
      Top = 2
      Width = 458
      Height = 424
      Align = alClient
      TabOrder = 1
      object StatusBar1: TStatusBar
        Left = 1
        Top = 381
        Width = 456
        Height = 19
        Panels = <
          item
            Width = 110
          end
          item
            Width = 110
          end
          item
            Width = 110
          end
          item
            Text = #1580#1605#1593' '#1603#1604' '
            Width = 50
          end>
      end
      object Panel10: TPanel
        Left = 1
        Top = 400
        Width = 456
        Height = 23
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 2
        DesignSize = (
          452
          23)
        object lblColor2: TLabel
          Left = 237
          Top = 6
          Width = 45
          Height = 13
          Anchors = [akLeft, akBottom]
          AutoSize = False
          Caption = '                '
          Color = 8388863
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label16: TLabel
          Left = 284
          Top = 6
          Width = 60
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = #1608#1590#1593#1610#1578' '#1576#1575#1591#1604#1607
        end
        object LblEndDate2: TLabel
          Left = 51
          Top = 6
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          Caption = #1662#1575#1610#1575#1606' '#1602#1585#1575#1585#1583#1575#1583
        end
        object LblEndDate: TLabel
          Left = 3
          Top = 6
          Width = 45
          Height = 13
          Anchors = [akLeft, akBottom]
          AutoSize = False
          Caption = '                '
          Color = 5151488
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
      end
      object DBGrid1: TCedarDbgrid
        Left = 1
        Top = 1
        Width = 452
        Height = 379
        Align = alClient
        Color = clCream
        DataSource = src_items
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
        HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
        HorzScrollBar.ExtraPanel.Visible = True
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        OddRowColor = clWhite
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ReadOnly = True
        RowHeight = 21
        SearchPanel.Enabled = True
        SortLocal = True
        TabOrder = 0
        OnDrawColumnCell = DBGrid1DrawColumnCell
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
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_EmployeeName_L1'
            Footers = <>
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = '_EmployeeName_L2'
            Footers = <>
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DayQuntity'
            Footers = <>
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DayTime'
            Footers = <>
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Minute_'
            Footers = <>
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EmployeeAmount'
            Footers = <>
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FirstMounth'
            Footers = <>
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EndMounth'
            Footers = <>
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'YearID'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 376
    Top = 16
    inherited DataSetInsert1: TDataSetInsert
      DataSource = src_items
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = src_items
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = src_items
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = src_items
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = src_items
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actPrint: TAction
      Caption = #1670#1600#1600#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actGetExcel: TAction
      Caption = #1583#1585#1610#1575#1601#1578'Excel'
      OnExecute = actGetExcelExecute
    end
    object actDeleteAll: TAction
      Caption = #1581#1584#1601' '#1705#1604#1740
      OnExecute = actDeleteAllExecute
    end
    object actDBGridSelectAll: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607' '#1587#1591#1585#1607#1575
      ShortCut = 16449
      OnExecute = actDBGridSelectAllExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 440
  end
  object qry_InitForm: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'type'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select * FROM Pay.FormTypes'
      'where FormType = :type')
    Left = 480
    Top = 16
    object qry_InitFormFormType: TSmallintField
      FieldName = 'FormType'
    end
    object qry_InitFormFormCaption_L1: TStringField
      FieldName = 'FormCaption_L1'
      Size = 150
    end
    object qry_InitFormFormCaption_L2: TStringField
      FieldName = 'FormCaption_L2'
      Size = 150
    end
    object qry_InitFormDurationDayActive: TWordField
      FieldName = 'DurationDayActive'
    end
    object qry_InitFormDurationTimeActive: TWordField
      FieldName = 'DurationTimeActive'
    end
    object qry_InitFormExemptPersonActive: TWordField
      FieldName = 'ExemptPersonActive'
    end
    object qry_InitFormSalaryEffectKind: TWordField
      FieldName = 'SalaryEffectKind'
    end
    object qry_InitFormKargozinyEffectKind: TWordField
      FieldName = 'KargozinyEffectKind'
    end
    object qry_InitFormRecalSalaryTypes: TStringField
      FieldName = 'RecalSalaryTypes'
      Size = 250
    end
    object qry_InitFormSalaryKind: TWordField
      FieldName = 'SalaryKind'
    end
    object qry_InitFormCoefficientActive: TWordField
      FieldName = 'CoefficientActive'
    end
    object qry_InitFormAmountActive: TWordField
      FieldName = 'AmountActive'
    end
    object qry_InitFormAmount2Active: TWordField
      FieldName = 'Amount2Active'
    end
    object qry_InitFormRecallFormTypes: TSmallintField
      FieldName = 'RecallFormTypes'
    end
    object qry_InitFormUseEndMounthKind: TWordField
      FieldName = 'UseEndMounthKind'
    end
    object qry_InitFormAidInfoNo1Active: TWordField
      FieldName = 'AidInfoNo1Active'
    end
    object qry_InitFormAidInfoDate1Active: TWordField
      FieldName = 'AidInfoDate1Active'
    end
    object qry_InitFormAidInfo1Caption: TStringField
      FieldName = 'AidInfo1Caption'
      Size = 50
    end
    object qry_InitFormAidInfoNo2Active: TWordField
      FieldName = 'AidInfoNo2Active'
    end
    object qry_InitFormAidInfoDate2Active: TWordField
      FieldName = 'AidInfoDate2Active'
    end
    object qry_InitFormAidInfo2Caption: TStringField
      FieldName = 'AidInfo2Caption'
      Size = 50
    end
    object qry_InitFormTopicCodeKind: TWordField
      FieldName = 'TopicCodeKind'
    end
    object qry_InitFormDetailCodeKind: TWordField
      FieldName = 'DetailCodeKind'
    end
    object qry_InitFormCTopicCodeKind: TWordField
      FieldName = 'CTopicCodeKind'
    end
    object qry_InitFormCTopicCode2Kind: TWordField
      FieldName = 'CTopicCode2Kind'
    end
    object qry_InitFormDisplayFormType: TWordField
      FieldName = 'DisplayFormType'
    end
    object qry_InitFormReportFileName1: TStringField
      FieldName = 'ReportFileName1'
      Size = 50
    end
    object qry_InitFormReportFileName2: TStringField
      FieldName = 'ReportFileName2'
      Size = 50
    end
    object qry_InitFormReportFileName3: TStringField
      FieldName = 'ReportFileName3'
      Size = 50
    end
    object qry_InitFormReportFileName4: TStringField
      FieldName = 'ReportFileName4'
      Size = 50
    end
    object qry_InitFormNote_L1: TMemoField
      FieldName = 'Note_L1'
      BlobType = ftMemo
    end
    object qry_InitFormNote_L2: TMemoField
      FieldName = 'Note_L2'
      BlobType = ftMemo
    end
    object qry_InitFormWordDocumentsActive: TWordField
      FieldName = 'WordDocumentsActive'
    end
    object qry_InitFormFunctionShow: TWordField
      FieldName = 'FunctionShow'
    end
    object qry_InitFormRecalKindClock: TWordField
      FieldName = 'RecalKindClock'
    end
    object qry_InitFormCalCulateTypeActive: TWordField
      FieldName = 'CalCulateTypeActive'
    end
    object qry_InitFormNoteActive: TWordField
      FieldName = 'NoteActive'
    end
    object qry_InitFormLimitMounthActive: TWordField
      FieldName = 'LimitMounthActive'
    end
  end
  object qry_Master: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qry_MasterAfterOpen
    AfterScroll = qry_MasterAfterScroll
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
      'select * FROM Pay.FormsInfo '
      'where  formtype = :type ')
    Left = 304
    Top = 8
    object qry_MasterFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qry_MasterFormType: TSmallintField
      FieldName = 'FormType'
    end
    object qry_MasterInfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qry_MasterInfoName_L1: TStringField
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qry_MasterInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qry_MasterPrvInfoID: TIntegerField
      FieldName = 'PrvInfoID'
    end
    object qry_MasterAmount: TBCDField
      FieldName = 'Amount'
      Precision = 19
    end
    object qry_MasterAmount2: TBCDField
      FieldName = 'Amount2'
      Precision = 19
    end
    object qry_MasterCoefficient: TFloatField
      FieldName = 'Coefficient'
    end
    object qry_MasterStandardDays: TFloatField
      FieldName = 'StandardDays'
    end
    object qry_MasterStandardTimes: TFloatField
      FieldName = 'StandardTimes'
    end
    object qry_MasterAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qry_MasterCalCulateType: TWordField
      FieldName = 'CalCulateType'
    end
    object qry_MasterRecallFormInfoID1: TStringField
      FieldName = 'RecallFormInfoID1'
      Size = 150
    end
    object qry_MasterRecallFormInfoID2: TStringField
      FieldName = 'RecallFormInfoID2'
      Size = 150
    end
    object qry_MasterWordDocuments: TStringField
      FieldName = 'WordDocuments'
      Size = 150
    end
    object qry_MasterRecalKindClock: TWordField
      FieldName = 'RecalKindClock'
    end
    object qry_MasterAccTopicCode: TIntegerField
      FieldName = 'AccTopicCode'
    end
    object qry_MasterAccCTopicCode: TIntegerField
      FieldName = 'AccCTopicCode'
    end
    object qry_MasterAccCTopicCode2: TIntegerField
      FieldName = 'AccCTopicCode2'
    end
  end
  object qry_Items: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterOpen = qry_ItemsAfterOpen
    BeforeInsert = qry_ItemsBeforeInsert
    AfterInsert = qry_ItemsAfterInsert
    BeforeEdit = qry_ItemsBeforeEdit
    BeforePost = qry_ItemsBeforePost
    AfterPost = qry_ItemsAfterPost
    BeforeDelete = qry_ItemsBeforeDelete
    Parameters = <
      item
        Name = 'FormInfo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'YearID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *  FROM Pay.PersonelDecExt'
      ''
      'where (FormInfoID =:FormInfo) and'
      '      (ISNULL(FirstMounth,0) = 0 )and'
      '      (ISNULL(EndMounth,0) = 0   )AND'
      '      (YearID = :YearID  )'
      ''
      'order by PersonelNo')
    Left = 560
    Top = 208
    object qry_Items_AccTopicName: TStringField
      FieldKind = fkLookup
      FieldName = '_AccTopicName'
      LookupDataSet = DmF.qryTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName_L1'
      KeyFields = 'AccTopicCode'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qry_Items_AccDetailName: TStringField
      FieldKind = fkLookup
      FieldName = '_AccDetailName'
      LookupDataSet = DmF.qryDetailCode
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName_L1'
      KeyFields = 'AccDetailCode'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qry_Items_AccCTopicName: TStringField
      FieldKind = fkLookup
      FieldName = '_AccCTopicName'
      LookupDataSet = DmF.qry_CTopicCode
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName_L1'
      KeyFields = 'AccCTopicCode'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qry_Items_AccCTopicName2: TStringField
      FieldKind = fkLookup
      FieldName = '_AccCTopicName2'
      LookupDataSet = DmF.qry_CTopicCode2
      LookupKeyFields = 'CTopicCode2'
      LookupResultField = 'CTopicName2_L1'
      KeyFields = 'AccCTopicCode2'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qry_ItemsDecExtID: TIntegerField
      FieldName = 'DecExtID'
    end
    object qry_ItemsDayQuntity: TFloatField
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldName = 'DayQuntity'
    end
    object qry_ItemsDayTime: TFloatField
      DisplayLabel = #1605#1583#1578
      FieldName = 'DayTime'
    end
    object qry_ItemsFormInfoID: TIntegerField
      DisplayLabel = #1603#1583' '#1593#1575#1605#1604' '#1581#1602#1608#1602#1610
      FieldName = 'FormInfoID'
    end
    object qry_ItemsPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNo'
    end
    object qry_ItemsEmployeeAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'EmployeeAmount'
      currency = True
      Precision = 19
    end
    object qry_ItemsFirstMounth: TWordField
      DisplayLabel = #1575#1586' '#1605#1575#1607' '
      FieldName = 'FirstMounth'
    end
    object qry_ItemsEndMounth: TWordField
      DisplayLabel = #1578#1575' '#1605#1575#1607' '
      FieldName = 'EndMounth'
    end
    object qry_ItemsAidNo1: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610' 1'
      FieldName = 'AidNo1'
      Size = 30
    end
    object qry_ItemsAidNo2: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610' 2'
      FieldName = 'AidNo2'
      Size = 30
    end
    object qry_ItemsEmployerAmount: TBCDField
      DisplayLabel = #1605#1576#1604#1594' ('#1605#1602#1583#1575#1585' '#1579#1575#1576#1578' 2)'
      FieldName = 'EmployerAmount'
      Precision = 19
    end
    object qry_ItemsFormInfoID2: TIntegerField
      DisplayLabel = #1603#1583' '#1593#1575#1605#1604' '#1581#1602#1608#1602' 2'
      FieldName = 'FormInfoID2'
    end
    object qry_ItemsAccTopicCode: TIntegerField
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'AccTopicCode'
    end
    object qry_ItemsAccDetailCode: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'AccDetailCode'
    end
    object qry_ItemsAccCTopicCode: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39'1'
      FieldName = 'AccCTopicCode'
    end
    object qry_ItemsAccCTopicCode2: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' 2'
      FieldName = 'AccCTopicCode2'
    end
    object qry_Items_EmployeeName_L1: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
      FieldKind = fkLookup
      FieldName = '_EmployeeName_L1'
      LookupDataSet = qryPerson
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'EmployeeName_L1'
      KeyFields = 'PersonelNo'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qry_Items_EmployeeName_L2: TStringField
      DisplayLabel = 'EmployeeName'
      FieldKind = fkLookup
      FieldName = '_EmployeeName_L2'
      LookupDataSet = qryPerson
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'EmployeeName_L2'
      KeyFields = 'PersonelNo'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qry_ItemsAidDate1: TStringField
      FieldName = 'AidDate1'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qry_ItemsAidDate2: TStringField
      FieldName = 'AidDate2'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qry_Items_PersonelState: TIntegerField
      FieldKind = fkLookup
      FieldName = '_PersonelState'
      LookupDataSet = qryPerson
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'PersonelState'
      KeyFields = 'PersonelNo'
      LookupCache = True
      Lookup = True
    end
    object qry_Items_StateName_L1: TStringField
      FieldKind = fkLookup
      FieldName = '_StateName_L1'
      LookupDataSet = qryPerson
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'StateName_L1'
      KeyFields = 'PersonelNo'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qry_Items_InterdicEndDate: TStringField
      FieldKind = fkLookup
      FieldName = '_InterdicEndDate'
      LookupDataSet = qryPerson
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'InterdicEndDate'
      KeyFields = 'PersonelNo'
      Size = 10
      Lookup = True
    end
    object qry_ItemsMinute_: TFloatField
      DisplayLabel = #1583#1602#1740#1602#1607
      FieldName = 'Minute_'
    end
    object qry_ItemsYearID: TIntegerField
      DisplayLabel = #1587#1575#1604' '#1605#1575#1604#1740
      FieldName = 'YearID'
    end
    object qry_ItemsStartYear: TIntegerField
      FieldName = 'StartYear'
    end
    object qry_ItemsEndYear: TIntegerField
      FieldName = 'EndYear'
    end
    object qry_ItemsNote_L1: TWideStringField
      FieldName = 'Note_L1'
      Size = 4000
    end
    object qry_ItemsNote_L2: TWideStringField
      FieldName = 'Note_L2'
      Size = 4000
    end
  end
  object Src_Master: TDataSource
    DataSet = qry_Master
    Left = 448
    Top = 32
  end
  object src_items: TDataSource
    AutoEdit = False
    DataSet = qry_Items
    OnStateChange = src_itemsStateChange
    Left = 512
    Top = 137
  end
  object qryPerson: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT  Pay.PersonelInfo.PersonelNo, Pay.PersonelInfo.lastName_L' +
        '1 + '#39' - '#39' + Pay.PersonelInfo.name_L1 AS EmployeeName_L1,'
      
        '        Pay.PersonelInfo.lastName_L2 + '#39' - '#39' + Pay.PersonelInfo.' +
        'name_L2 AS EmployeeName_L2, Pay.FormsInfo.InfoID AS PersonelStat' +
        'e,'
      
        '        Pay.FormsInfo.InfoName_L1 AS StateName_L1, Pay.Interdict' +
        's.InterdicEndDate'
      'FROM    Pay.Interdicts INNER JOIN'
      
        '        Pay.PersonelInfo ON Pay.Interdicts.PersonelNo = Pay.Pers' +
        'onelInfo.PersonelNo LEFT OUTER JOIN'
      
        '        Pay.FormsInfo ON Pay.PersonelInfo.PersonelState = Pay.Fo' +
        'rmsInfo.FormInfoID'
      'WHERE     (Pay.Interdicts.State < 49)')
    Left = 656
    Top = 141
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = src_items
    OpenDataSource = False
    UserName = 'BDEPipeline1'
    Left = 576
    Top = 243
  end
  object ppReport1: TppReport
    AutoStop = False
    Columns = 2
    DataPipeline = ppBDEPipeline1
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
    Template.FileName = 
      'D:\Projects\Fara\Salary\Exe\Report\PersonelDecExtInfo_2F2Columns' +
      '.rtm'
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
    Left = 472
    Top = 259
    Version = '23.0'
    mmColumnWidth = 101600
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand2: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 22754
      mmPrintPosition = 0
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        OnGetText = ppLblCompanyNameGetText
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
        mmHeight = 6350
        mmLeft = 75406
        mmTop = 794
        mmWidth = 52123
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        OnGetText = ppLblCaptionGetText
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1711#1586#1575#1585#1588
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
        mmLeft = 93134
        mmTop = 7408
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = #1605#1575#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 5821
        mmTop = 6085
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        OnGetText = ppLabel9GetText
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 177536
        mmTop = 16933
        mmWidth = 23283
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 0
        mmTop = 15081
        mmWidth = 202936
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 0
        mmTop = 19844
        mmWidth = 202936
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppColumnHeaderBand3: TppColumnHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand2: TppColumnHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = '_EmployeeName_L1'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 6350
        mmLeft = 27517
        mmTop = 0
        mmWidth = 53711
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'EmployeeAmount'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 6519
        mmLeft = 529
        mmTop = 0
        mmWidth = 24077
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'PersonelNo'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 6615
        mmLeft = 83079
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppColumnFooterBand3: TppColumnFooterBand
      AlignToBottom = True
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnFooterBand2: TppColumnFooterBand
      AlignToBottom = True
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand2: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'FormInfoID'
      DataPipeline = ppBDEPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppBDEPipeline1'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 7938
        mmPrintPosition = 0
        object ppLabel14: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label1'
          Border.mmPadding = 0
          Caption = #1588'.'#1662#1585#1587#1606#1604
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 7144
          mmLeft = 84402
          mmTop = 265
          mmWidth = 15081
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel15: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label2'
          Border.mmPadding = 0
          Caption = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 7789
          mmLeft = 42735
          mmTop = 0
          mmWidth = 21421
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel16: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label3'
          Border.mmPadding = 0
          Caption = #1605#1576#1604#1594' '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 7789
          mmLeft = 8726
          mmTop = 0
          mmWidth = 6096
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line2'
          Border.mmPadding = 0
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 794
          mmTop = 3969
          mmWidth = 100277
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel17: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label4'
          Border.mmPadding = 0
          Caption = '  '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 7789
          mmLeft = 25178
          mmTop = 2910
          mmWidth = 2032
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel18: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label5'
          Border.mmPadding = 0
          Caption = '  '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 7673
          mmLeft = 80963
          mmTop = 2381
          mmWidth = 2117
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
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
  object PopupMenu1: TPopupMenu
    Left = 729
    Top = 296
    object pnlVisiblePopUp: TMenuItem
      Caption = #1670#1575#1662
      OnClick = pnlVisiblePopUpClick
    end
    object HintName1: TMenuItem
      Caption = #1575#1586' Hint '#1608' Name '#1575#1587#1578#1601#1575#1583#1607' '#1588#1583#1607
      Visible = False
    end
    object PersonelDecExtInfo_2F2ColumnsTa: TMenuItem
      Caption = #1670#1575#1662' '#1576#1575' '#1605#1576#1604#1594
      Hint = 'PersonelNo'
      OnClick = PersonelDecExtInfo_2F2ColumnsTaClick
    end
    object PersonelDecExtInfo_2F2ColumnsSandogh: TMenuItem
      Caption = #1670#1575#1662' '#1576#1585#1575#1587#1575#1587' '#1588#1605#1575#1585#1607
      Hint = 'AidNo1'
      OnClick = PersonelDecExtInfo_2F2ColumnsTaClick
    end
    object PersonelDecExtInfo_2Fmonth1: TMenuItem
      Caption = #1670#1575#1662' '#1576#1575' '#1605#1576#1604#1594' '#1608' '#1605#1575#1607
      Hint = 'PersonelNo'
      OnClick = PersonelDecExtInfo_2F2ColumnsTaClick
    end
    object PersonelDecExtInfo_2Fmonth2: TMenuItem
      Caption = #1670#1575#1662' '#1576#1575' '#1605#1576#1604#1594' '#1608' '#1605#1575#1607' '#1608' '#1578#1608#1590#1610#1581#1575#1578
      Hint = 'PersonelNo'
      OnClick = PersonelDecExtInfo_2F2ColumnsTaClick
    end
    object PersonelDecExtInfo_2Fmonth3: TMenuItem
      Caption = #1670#1575#1662' '#1576#1575' '#1605#1576#1604#1594' '#1608' '#1588#1605#1575#1585#1607' '#1587#1606#1583
      Hint = 'PersonelNo'
      OnClick = PersonelDecExtInfo_2F2ColumnsTaClick
    end
  end
  object PopList4Print: TPopupMenu
    Left = 498
    Top = 351
    object AllClikPop: TMenuItem
      Caption = #1670#1575#1662#1607#1575#1610' '#1583#1610#1711#1585' '#1585#1575' '#1583#1585' '#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583' '#1605#1588#1582#1589' '#1603#1606#1610#1583'..'
      OnClick = AllClikPopClick
    end
  end
  object qryInitQry: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  *  FROM Pay.FormTypes'
      'where FormType= 16')
    Left = 740
    Top = 216
  end
  object popDel: TPopupMenu
    Left = 625
    Top = 373
    object N1: TMenuItem
      Action = actDeleteAll
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Action = actDBGridSelectAll
    end
  end
end
