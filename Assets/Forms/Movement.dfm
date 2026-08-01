inherited MovementF: TMovementF
  Left = 316
  Top = 84
  Caption = #1606#1602#1604' '#1608' '#1575#1606#1578#1602#1575#1604' '#1583#1575#1585#1575#1610#1610' '#1579#1575#1576#1578
  ClientHeight = 620
  ClientWidth = 778
  OnResize = FormResize
  ExplicitWidth = 786
  ExplicitHeight = 651
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 579
    Width = 778
    ExplicitTop = 579
    ExplicitWidth = 778
    inherited BtnReject: TBitBtn
      Left = 2
      Margins.Left = 1
      Margins.Right = 1
      ExplicitLeft = 2
    end
    object newPanel: TPanel
      Left = 543
      Top = 1
      Width = 234
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      Caption = '`'
      TabOrder = 1
      object BitBtn4: TBitBtn
        AlignWithMargins = True
        Left = 158
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
      object BitBtn5: TBitBtn
        AlignWithMargins = True
        Left = 81
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
      object BitBtn6: TBitBtn
        AlignWithMargins = True
        Left = 4
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
    end
    object okPanel: TPanel
      Left = 390
      Top = 1
      Width = 153
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object BitBtn1: TBitBtn
        AlignWithMargins = True
        Left = 77
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
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 0
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
      Action = actSort_
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn7: TBitBtn
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
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn8: TBitBtn
      AlignWithMargins = True
      Left = 310
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actOther
      Align = alLeft
      Caption = #1587#1575#1610#1585' '#1575#1605#1603#1575#1606#1575#1578
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
      Action = actPrint
      Align = alLeft
      Caption = #1670#1575#1662
      TabOrder = 6
    end
    object DBNavigator2: TDBNavigator
      AlignWithMargins = True
      Left = 389
      Top = 7
      Width = 80
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      DataSource = srcMovement
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
    Width = 778
    Height = 57
    ExplicitWidth = 778
    ExplicitHeight = 57
    inherited ImgTemplate: TImage
      Left = 730
      ExplicitLeft = 730
    end
    inherited lblCaption: TLabel
      Left = 670
      Height = 37
      ExplicitLeft = 670
    end
    object Label15: TLabel
      Left = 100
      Top = 12
      Width = 50
      Height = 13
      Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FocusControl = DBEdit23
    end
    object Label16: TLabel
      Left = 100
      Top = 36
      Width = 41
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FocusControl = DBEdit24
    end
    object DBEdit23: TDBEdit
      Left = 32
      Top = 8
      Width = 65
      Height = 21
      DataField = 'FormNum'
      DataSource = srcMovement
      TabOrder = 0
    end
    object DBEdit24: TDBEdit
      Left = 32
      Top = 32
      Width = 65
      Height = 21
      DataField = 'MoveDate'
      DataSource = srcMovement
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    Top = 57
    Width = 778
    Height = 522
    ExplicitTop = 57
    ExplicitWidth = 778
    ExplicitHeight = 522
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 475
      Height = 518
      Align = alClient
      TabOrder = 0
      object Bevel1: TBevel
        Left = 1
        Top = 1
        Width = 473
        Height = 56
        Align = alTop
        ParentShowHint = False
        Shape = bsFrame
        ShowHint = False
        Style = bsRaised
        ExplicitWidth = 509
      end
      object Label1: TLabel
        Left = 409
        Top = 8
        Width = 61
        Height = 13
        Caption = #1587#1585#1610#1575#1604' '#1583#1575#1585#1575#1610#1610
        FocusControl = DBEdit1
      end
      object spdSerialNum: TSpeedButton
        Left = 310
        Top = 4
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = spdSerialNumClick
      end
      object Label2: TLabel
        Left = 124
        Top = 10
        Width = 19
        Height = 13
        Caption = #1662#1604#1575#1603
        FocusControl = DBEdit1
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 57
        Width = 473
        Height = 111
        Align = alTop
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1602#1576#1604' '#1575#1586' '#1575#1606#1578#1602#1575#1604
        TabOrder = 0
        object Label4: TLabel
          Left = 406
          Top = 21
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = #1603#1583' '#1581#1587#1575#1576
          FocusControl = DBEdit5
          Transparent = True
        end
        object Label5: TLabel
          Left = 406
          Top = 43
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = #1605#1581#1604' '#1575#1587#1578#1602#1585#1575#1585
          FocusControl = DBEdit6
          Transparent = True
        end
        object Label6: TLabel
          Left = 406
          Top = 65
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1601#1589#1610#1604#1610'2'
          FocusControl = DBEdit7
          Transparent = True
        end
        object Label7: TLabel
          Left = 406
          Top = 87
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = #1575#1587#1578#1601#1575#1583#1607' '#1603#1606#1606#1583#1607
          FocusControl = DBEdit8
          Transparent = True
        end
        object DBEdit5: TDBEdit
          Left = 340
          Top = 17
          Width = 60
          Height = 21
          TabStop = False
          Color = clBtnFace
          Ctl3D = True
          DataField = 'OldAccCode'
          DataSource = srcMovement
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit6: TDBEdit
          Left = 340
          Top = 39
          Width = 60
          Height = 21
          TabStop = False
          Color = clBtnFace
          Ctl3D = True
          DataField = 'OldPlaceCode'
          DataSource = srcMovement
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit7: TDBEdit
          Left = 340
          Top = 61
          Width = 60
          Height = 21
          TabStop = False
          Color = clBtnFace
          Ctl3D = True
          DataField = 'OldExpCode'
          DataSource = srcMovement
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit8: TDBEdit
          Left = 340
          Top = 83
          Width = 60
          Height = 21
          TabStop = False
          Color = clBtnFace
          Ctl3D = True
          DataField = 'OldUserCode'
          DataSource = srcMovement
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit9: TDBEdit
          Left = 31
          Top = 17
          Width = 308
          Height = 21
          TabStop = False
          Color = clBtnFace
          Ctl3D = True
          DataField = '_OldAccName'
          DataSource = srcMovement
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit10: TDBEdit
          Left = 31
          Top = 39
          Width = 308
          Height = 21
          TabStop = False
          Color = clBtnFace
          Ctl3D = True
          DataField = '_OldPlaceName'
          DataSource = srcMovement
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit11: TDBEdit
          Left = 31
          Top = 61
          Width = 308
          Height = 21
          TabStop = False
          Color = clBtnFace
          Ctl3D = True
          DataField = '_OldExpName'
          DataSource = srcMovement
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit12: TDBEdit
          Left = 31
          Top = 83
          Width = 308
          Height = 21
          TabStop = False
          Color = clBtnFace
          Ctl3D = True
          DataField = '_OldUserName'
          DataSource = srcMovement
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
        end
      end
      object GroupBox2: TGroupBox
        Left = 1
        Top = 168
        Width = 473
        Height = 112
        Align = alTop
        Caption = #1605#1588#1582#1589#1575#1578' '#1580#1583#1610#1583
        TabOrder = 2
        object Label8: TLabel
          Left = 402
          Top = 18
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = #1603#1583' '#1581#1587#1575#1576
          FocusControl = DBEdit13
          Transparent = True
        end
        object Label9: TLabel
          Left = 402
          Top = 41
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = #1605#1581#1604' '#1575#1587#1578#1602#1585#1575#1585
          FocusControl = DBEdit14
          Transparent = True
        end
        object Label10: TLabel
          Left = 402
          Top = 64
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1601#1589#1610#1604#1610'2'
          FocusControl = DBEdit15
          Transparent = True
        end
        object Label11: TLabel
          Left = 402
          Top = 87
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = #1575#1587#1578#1601#1575#1583#1607' '#1603#1606#1606#1583#1607
          FocusControl = DBEdit16
          Transparent = True
        end
        object spdNewAccCode: TSpeedButton
          Left = 313
          Top = 13
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = spdNewAccCodeClick
        end
        object spdNewPlaceCode: TSpeedButton
          Left = 313
          Top = 36
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = spdNewPlaceCodeClick
        end
        object spdExpAccCode: TSpeedButton
          Left = 313
          Top = 59
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = spdExpAccCodeClick
        end
        object spdNewUserCode: TSpeedButton
          Left = 313
          Top = 82
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = spdNewUserCodeClick
        end
        object DBEdit13: TDBEdit
          Left = 338
          Top = 14
          Width = 60
          Height = 21
          DataField = 'NewAccCode'
          DataSource = srcMovement
          TabOrder = 0
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit14: TDBEdit
          Left = 338
          Top = 37
          Width = 60
          Height = 21
          DataField = 'NewPlaceCode'
          DataSource = srcMovement
          TabOrder = 1
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit15: TDBEdit
          Left = 338
          Top = 60
          Width = 60
          Height = 21
          DataField = 'ExpAccCode'
          DataSource = srcMovement
          TabOrder = 2
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit16: TDBEdit
          Left = 338
          Top = 83
          Width = 60
          Height = 21
          DataField = 'NewUserCode'
          DataSource = srcMovement
          TabOrder = 3
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit17: TDBEdit
          Left = 28
          Top = 14
          Width = 284
          Height = 21
          TabStop = False
          Color = clBtnFace
          Ctl3D = True
          DataField = '_NewAccName'
          DataSource = srcMovement
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit18: TDBEdit
          Left = 28
          Top = 37
          Width = 284
          Height = 21
          TabStop = False
          Color = clBtnFace
          Ctl3D = True
          DataField = '_NewPlaceName'
          DataSource = srcMovement
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit19: TDBEdit
          Left = 28
          Top = 60
          Width = 284
          Height = 21
          TabStop = False
          Color = clBtnFace
          Ctl3D = True
          DataField = '_NewExpName'
          DataSource = srcMovement
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit20: TDBEdit
          Left = 28
          Top = 83
          Width = 284
          Height = 21
          TabStop = False
          Color = clBtnFace
          Ctl3D = True
          DataField = '_NewUserName'
          DataSource = srcMovement
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
        end
      end
      object DBEdit1: TDBEdit
        Left = 336
        Top = 4
        Width = 67
        Height = 21
        DataField = 'SerialNum'
        DataSource = srcMovement
        TabOrder = 1
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 32
        Top = 32
        Width = 371
        Height = 21
        TabStop = False
        Color = clBtnFace
        Ctl3D = True
        DataField = '_StuffDesc'
        DataSource = srcMovement
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
      end
      object edt_Pelak: TDBEdit
        Left = 33
        Top = 6
        Width = 90
        Height = 21
        TabStop = False
        Color = clBtnFace
        Ctl3D = True
        DataField = '_Pelak'
        DataSource = srcMovement
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
      end
      object Panel4: TPanel
        Left = 1
        Top = 280
        Width = 473
        Height = 237
        Align = alClient
        TabOrder = 3
        object GroupBox4: TGroupBox
          Left = 1
          Top = 1
          Width = 240
          Height = 235
          Align = alClient
          Caption = #1578#1608#1590#1610#1581#1575#1578
          TabOrder = 1
          object DBMemo1: TDBMemo
            Tag = 111
            Left = 2
            Top = 15
            Width = 236
            Height = 218
            Align = alClient
            DataField = 'MoveComments'
            DataSource = srcMovement
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object Panel5: TPanel
          Left = 241
          Top = 1
          Width = 231
          Height = 235
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object GroupBox3: TGroupBox
            Left = 0
            Top = 0
            Width = 231
            Height = 113
            Align = alTop
            Caption = #1575#1591#1604#1575#1593#1575#1578' '#1575#1587#1578#1607#1604#1575#1603' '#1583#1585' '#1578#1575#1585#1610#1582' '#1575#1606#1578#1602#1575#1604
            TabOrder = 0
            object Label3: TLabel
              Left = 135
              Top = 53
              Width = 77
              Height = 13
              Caption = #1575#1587#1578#1607#1604#1575#1603' '#1575#1606#1576#1575#1588#1578#1607
              FocusControl = DBEdit4
            end
            object Label13: TLabel
              Left = 135
              Top = 78
              Width = 91
              Height = 13
              Caption = #1575#1587#1578#1607#1604#1575#1603' '#1587#1575#1604' '#1580#1575#1585#1610
              FocusControl = DBEdit22
            end
            object Label12: TLabel
              Left = 135
              Top = 28
              Width = 74
              Height = 13
              Caption = #1602#1610#1605#1578' '#1578#1605#1575#1605' '#1588#1583#1607
              FocusControl = DBEdit21
            end
            object DBEdit4: TDBEdit
              Left = 11
              Top = 49
              Width = 120
              Height = 21
              DataField = 'FirstDepValue'
              DataSource = srcDepTable
              TabOrder = 1
            end
            object DBEdit22: TDBEdit
              Left = 11
              Top = 74
              Width = 120
              Height = 21
              DataField = 'DepvalueInYear'
              DataSource = srcDepTable
              TabOrder = 2
            end
            object DBEdit21: TDBEdit
              Left = 11
              Top = 24
              Width = 120
              Height = 21
              DataField = 'CostValue'
              DataSource = srcMovement
              TabOrder = 0
            end
          end
          object MoveTypeGroup: TRadioGroup
            Left = 0
            Top = 113
            Width = 231
            Height = 120
            Align = alTop
            Caption = #1606#1608#1593' '#1606#1602#1604' '#1608' '#1575#1606#1578#1602#1575#1604
            Columns = 2
            Items.Strings = (
              #1580#1575#1576#1580#1575#1740#1740
              #1578#1593#1608#1740#1590#1740
              #1578#1593#1605#1740#1585#1575#1578#1740
              #1605#1575#1586#1575#1583' '#1576#1585' '#1606#1740#1575#1586
              #1578#1581#1608#1740#1604' '#1601#1589#1604#1740
              #1582#1585#1575#1576#1740' '#1583#1575#1574#1605'/'#1590#1575#1740#1593#1575#1578#1740)
            TabOrder = 1
            TabStop = True
          end
        end
      end
    end
    object DBGrid1: TDBGrid
      Left = 477
      Top = 2
      Width = 299
      Height = 518
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clCream
      DataSource = srcMovement
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'SerialNum'
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_StuffDesc'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_pelak'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MoveDate'
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    Left = 440
    inherited DataSetPost1: TDataSetPost
      DataSource = srcMovement
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcMovement
    end
    inherited actSearch_: TAction
      OnExecute = actSearchExecute
    end
    inherited actSort_: TAction
      OnExecute = actSort_Execute
    end
    object actOther: TAction
      Caption = #1587#1575#1610#1585' '#1575#1605#1603#1575#1606#1575#1578
      OnExecute = actOtherExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 528
    Top = 9
  end
  object qryMovement: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    BeforeInsert = qryMovementBeforeInsert
    AfterInsert = qryMovementAfterInsert
    BeforeEdit = qryMovementBeforeEdit
    AfterEdit = qryMovementAfterEdit
    BeforePost = qryMovementBeforePost
    AfterPost = qryMovementAfterPost
    BeforeDelete = qryMovementBeforeDelete
    AfterDelete = qryMovementAfterDelete
    AfterScroll = qryMovementAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from  assets.Movement')
    Left = 704
    Top = 136
    object qryMovementMoveID: TIntegerField
      FieldName = 'MoveID'
    end
    object qryMovementSerialNum: TIntegerField
      Tag = 3
      DisplayLabel = #1587#1585#1610#1575#1604' '#1583#1575#1585#1575#1610#1610
      FieldName = 'SerialNum'
      OnChange = qryMovementSerialNumChange
    end
    object qryMovementFormNum: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'FormNum'
    end
    object qryMovementMoveDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'MoveDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryMovementOldAccCode: TLargeintField
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'OldAccCode'
    end
    object qryMovementOldPlaceCode: TIntegerField
      Tag = 3
      DisplayLabel = #1605#1581#1604' '#1575#1587#1578#1602#1585#1575#1585
      FieldName = 'OldPlaceCode'
    end
    object qryMovementOldExpCode: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1601#1589#1610#1604#1610'2'
      FieldName = 'OldExpCode'
    end
    object qryMovementOldUserCode: TIntegerField
      Tag = 3
      DisplayLabel = #1575#1587#1578#1601#1575#1583#1607' '#1603#1606#1606#1583#1607
      FieldName = 'OldUserCode'
    end
    object qryMovementNewAccCode: TLargeintField
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'NewAccCode'
      Required = True
    end
    object qryMovementNewPlaceCode: TIntegerField
      Tag = 3
      DisplayLabel = #1605#1581#1604' '#1575#1587#1578#1602#1585#1575#1585
      FieldName = 'NewPlaceCode'
      Required = True
    end
    object qryMovementNewUserCode: TIntegerField
      Tag = 3
      DisplayLabel = #1575#1587#1578#1601#1575#1583#1607' '#1603#1606#1606#1583#1607
      FieldName = 'NewUserCode'
      Required = True
    end
    object qryMovementExpAccCode: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1601#1589#1610#1604#1610'2'
      FieldName = 'ExpAccCode'
      Required = True
    end
    object qryMovementMoveState: TWordField
      FieldName = 'MoveState'
    end
    object qryMovementMoveComments: TMemoField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'MoveComments'
      BlobType = ftMemo
    end
    object qryMovementCostValue: TBCDField
      Tag = 3
      DisplayLabel = #1602#1610#1605#1578' '#1578#1605#1575#1605' '#1588#1583#1607
      FieldName = 'CostValue'
      currency = True
      Precision = 19
    end
    object qryMovementFirstDepValue: TBCDField
      Tag = 3
      DisplayLabel = #1575#1587#1578#1607#1604#1575#1603' '#1575#1606#1576#1575#1588#1578#1607
      FieldName = 'FirstDepValue'
      currency = True
      Precision = 19
    end
    object qryMovementDepvalueInYear: TBCDField
      Tag = 3
      DisplayLabel = #1575#1587#1578#1607#1604#1575#1603' '#1587#1575#1604' '#1580#1575#1585#1610
      FieldName = 'DepvalueInYear'
      currency = True
      Precision = 19
    end
    object qryMovementFinalDepValue: TBCDField
      Tag = 3
      FieldName = 'FinalDepValue'
      currency = True
      Precision = 19
    end
    object qryMovement_OldAccName: TStringField
      FieldKind = fkLookup
      FieldName = '_OldAccName'
      LookupDataSet = qryAccTopics
      LookupKeyFields = 'AccTopicCode'
      LookupResultField = 'AccDesc'
      KeyFields = 'OldAccCode'
      Size = 120
      Lookup = True
    end
    object qryMovement_OldPlaceName: TStringField
      FieldKind = fkLookup
      FieldName = '_OldPlaceName'
      LookupDataSet = qryPlace
      LookupKeyFields = 'PlaceCode'
      LookupResultField = 'PlaceName'
      KeyFields = 'OldPlaceCode'
      Size = 120
      Lookup = True
    end
    object qryMovement_OldExpName: TStringField
      FieldKind = fkLookup
      FieldName = '_OldExpName'
      LookupDataSet = qryAccCtopics
      LookupKeyFields = 'ExpCode'
      LookupResultField = 'ExpDesc'
      KeyFields = 'OldExpCode'
      Size = 120
      Lookup = True
    end
    object qryMovement_OldUserName: TStringField
      FieldKind = fkLookup
      FieldName = '_OldUserName'
      LookupDataSet = qryUser
      LookupKeyFields = 'UserID'
      LookupResultField = 'UserName'
      KeyFields = 'OldUserCode'
      Size = 120
      Lookup = True
    end
    object qryMovement_NewAccName: TStringField
      FieldKind = fkLookup
      FieldName = '_NewAccName'
      LookupDataSet = qryAccTopics
      LookupKeyFields = 'AccTopicCode'
      LookupResultField = 'AccDesc'
      KeyFields = 'NewAccCode'
      Size = 120
      Lookup = True
    end
    object qryMovement_NewPlaceName: TStringField
      FieldKind = fkLookup
      FieldName = '_NewPlaceName'
      LookupDataSet = qryPlace
      LookupKeyFields = 'PlaceCode'
      LookupResultField = 'PlaceName'
      KeyFields = 'NewPlaceCode'
      Size = 120
      Lookup = True
    end
    object qryMovement_NewExpName: TStringField
      FieldKind = fkLookup
      FieldName = '_NewExpName'
      LookupDataSet = qryAccCtopics
      LookupKeyFields = 'ExpCode'
      LookupResultField = 'ExpDesc'
      KeyFields = 'ExpAccCode'
      Size = 120
      Lookup = True
    end
    object qryMovement_NewUserName: TStringField
      FieldKind = fkLookup
      FieldName = '_NewUserName'
      LookupDataSet = qryUser
      LookupKeyFields = 'UserID'
      LookupResultField = 'UserName'
      KeyFields = 'NewUserCode'
      Size = 120
      Lookup = True
    end
    object qryMovement_DescStuff: TStringField
      DisplayLabel = #1588#1585#1581' '#1603#1575#1604#1575
      FieldKind = fkLookup
      FieldName = '_StuffDesc'
      LookupDataSet = DmF.qryAmval
      LookupKeyFields = 'SerialNum'
      LookupResultField = 'StuffDesc'
      KeyFields = 'SerialNum'
      Size = 120
      Lookup = True
    end
    object qryMovement_PlaceCode: TStringField
      FieldKind = fkLookup
      FieldName = '_PlaceCode'
      LookupDataSet = DmF.qryAmval
      LookupKeyFields = 'SerialNum'
      LookupResultField = 'PlaceCode'
      KeyFields = 'SerialNum'
      Size = 120
      Lookup = True
    end
    object qryMovement_AccCode: TStringField
      FieldKind = fkLookup
      FieldName = '_AccCode'
      LookupDataSet = DmF.qryAmval
      LookupKeyFields = 'SerialNum'
      LookupResultField = 'AccTopicCode'
      KeyFields = 'SerialNum'
      Size = 120
      Lookup = True
    end
    object qryMovement_ExpCode: TStringField
      FieldKind = fkLookup
      FieldName = '_ExpCode'
      LookupDataSet = DmF.qryAmval
      LookupKeyFields = 'SerialNum'
      LookupResultField = 'ExpCode'
      KeyFields = 'SerialNum'
      Size = 120
      Lookup = True
    end
    object qryMovement_UserCode: TStringField
      FieldKind = fkLookup
      FieldName = '_UserCode'
      LookupDataSet = DmF.qryAmval
      LookupKeyFields = 'SerialNum'
      LookupResultField = 'UserCode'
      KeyFields = 'SerialNum'
      Size = 120
      Lookup = True
    end
    object qryMovement_Pelak: TStringField
      DisplayLabel = #1662#1604#1575#1603
      FieldKind = fkLookup
      FieldName = '_pelak'
      LookupDataSet = DmF.qryAmval
      LookupKeyFields = 'SerialNum'
      LookupResultField = 'PelakNum'
      KeyFields = 'SerialNum'
      Size = 120
      Lookup = True
    end
    object qryMovementFirstUser: TStringField
      Tag = 3
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryMovementLastUser: TStringField
      Tag = 3
      FieldName = 'LastUser'
      Size = 50
    end
    object qryMovementMoveType: TWordField
      FieldName = 'MoveType'
    end
  end
  object srcMovement: TDataSource
    AutoEdit = False
    DataSet = qryMovement
    OnStateChange = srcMovementStateChange
    Left = 704
    Top = 200
  end
  object qryAccTopics: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT   AccTopicCode, AccDesc FROM    assets.AccTopics')
    Left = 40
    Top = 424
  end
  object qryAccCtopics: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select * from assets.AccCtopics')
    Left = 104
    Top = 408
  end
  object qryPlace: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT  *  FROM    assets.Places')
    Left = 104
    Top = 360
  end
  object qryUser: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     UserID, UserName FROM       assets.Users')
    Left = 40
    Top = 360
  end
  object popOther: TPopupMenu
    Left = 555
    Top = 338
    object N3: TMenuItem
      Action = actPrint
    end
    object N1: TMenuItem
      Caption = #1575#1587#1603#1606
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1603#1575#1585#1578' '#1583#1575#1585#1575#1610#1610' '#1579#1575#1576#1578
      OnClick = N2Click
    end
    object Excel1: TMenuItem
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnClick = Excel1Click
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppMovement
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A5'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 147902
    PrinterSetup.PaperSize = 11
    Template.FileName = 'D:\Projects\Fara\Assets\Exe\Report\RptDecrease.rtm'
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
    Left = 300
    Top = 10
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppMovement'
    object ppTitleBand1: TppTitleBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 48154
      mmPrintPosition = 0
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lbprintdate'
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
        mmLeft = 9525
        mmTop = 1323
        mmWidth = 12171
        BandType = 1
        LayerName = Foreground
      end
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNo1'
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 9525
        mmTop = 6615
        mmWidth = 12171
        BandType = 1
        LayerName = Foreground
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompanyName'
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
        mmLeft = 42069
        mmTop = 1588
        mmWidth = 51065
        BandType = 1
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
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
  object ppMovement: TppDBPipeline
    DataSource = srcMovement
    OpenDataSource = False
    UserName = 'Movement'
    Left = 224
    Top = 10
  end
  object qryDepTable: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 93
      end>
    SQL.Strings = (
      'select  *  FROM  Assets.DepTable'
      
        'WHERE        (Id4table = :ID) AND (Yearid = :YearID) AND (Tablen' +
        'ame = '#39'Movement'#39')')
    Left = 232
    Top = 416
    object qryDepTableID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryDepTableSerial: TIntegerField
      FieldName = 'Serial'
    end
    object qryDepTableYearid: TIntegerField
      FieldName = 'Yearid'
    end
    object qryDepTableTablename: TWideStringField
      FieldName = 'Tablename'
      Size = 50
    end
    object qryDepTableId4table: TIntegerField
      FieldName = 'Id4table'
    end
    object qryDepTableFirstDepValue: TBCDField
      FieldName = 'FirstDepValue'
      currency = True
      Precision = 19
    end
    object qryDepTableDepvalueInyear: TBCDField
      FieldName = 'DepvalueInyear'
      currency = True
      Precision = 19
    end
  end
  object srcDepTable: TDataSource
    DataSet = qryDepTable
    Left = 232
    Top = 464
  end
end
