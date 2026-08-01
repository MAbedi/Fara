inherited Expense1F: TExpense1F
  Left = 249
  Top = 119
  Caption = #1578#1593#1605#1610#1585#1575#1578' '#1608' '#1607#1586#1610#1606#1607' '#1607#1575#1610' '#1575#1587#1575#1587#1610
  ClientHeight = 578
  ClientWidth = 859
  OnResize = FormResize
  ExplicitWidth = 867
  ExplicitHeight = 609
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 537
    Width = 859
    TabOrder = 2
    ExplicitTop = 537
    ExplicitWidth = 859
    inherited BtnReject: TBitBtn
      Left = 2
      Margins.Left = 1
      Margins.Right = 1
      TabOrder = 5
      ExplicitLeft = 2
    end
    object newPanel: TPanel
      Left = 544
      Top = 1
      Width = 314
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object BitBtn1: TBitBtn
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
      object BitBtn2: TBitBtn
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
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 84
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = DataSetDelete1
        Align = alRight
        Caption = #1581#1584#1601
        TabOrder = 2
      end
      object BitBtn10: TBitBtn
        AlignWithMargins = True
        Left = 7
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
        TabOrder = 3
      end
    end
    object okPanel: TPanel
      Left = 391
      Top = 1
      Width = 153
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object BitBtn4: TBitBtn
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
        Caption = #1578#1571#1610#1610#1600#1600#1600#1583
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
      object BitBtn5: TBitBtn
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
        Caption = #1575#1606#1589#1600#1600#1600#1585#1575#1601
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
    object BitBtn6: TBitBtn
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
    object BitBtn7: TBitBtn
      Left = 172
      Top = 7
      Width = 75
      Height = 25
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 3
    end
    object BitBtn8: TBitBtn
      AlignWithMargins = True
      Left = 233
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
      TabOrder = 2
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 156
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSendExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Width = 859
    TabOrder = 0
    ExplicitWidth = 859
    inherited ImgTemplate: TImage
      Left = 775
      ExplicitLeft = 726
    end
    inherited lblCaption: TLabel
      Left = 751
      Height = 16
      ExplicitLeft = 751
    end
    object Label10: TLabel [2]
      Left = 113
      Top = 8
      Width = 29
      Height = 13
      Alignment = taRightJustify
      Caption = #1587#1585#1610#1575#1604
      FocusControl = DBEdit1
    end
    object Label11: TLabel [3]
      Left = 113
      Top = 31
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = #1578#1575#1585#1610#1582' '#1578#1593#1605#1610#1585#1575#1578
      FocusControl = DBEdit2
    end
    inherited lblBaseDate: TLabel
      Left = 376
      ExplicitLeft = 376
    end
    object edtBuyDate: TDBEdit
      Left = 31
      Top = 27
      Width = 73
      Height = 21
      DataField = 'BuyDate'
      DataSource = srcExpense1s
      TabOrder = 1
    end
    object DBEdit17: TDBEdit
      Left = 31
      Top = 4
      Width = 73
      Height = 21
      DataField = 'ExpID'
      DataSource = srcExpense1s
      TabOrder = 0
    end
  end
  inherited Panel3: TPanel
    Width = 859
    Height = 484
    TabOrder = 1
    ExplicitWidth = 859
    ExplicitHeight = 484
    object DBGrid1: TDBGrid
      Left = 489
      Top = 2
      Width = 368
      Height = 480
      TabStop = False
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clCream
      DataSource = srcExpense1s
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
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
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_PelakNum'
          Width = 89
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 487
      Height = 480
      Align = alClient
      TabOrder = 1
      object GroupBox7: TGroupBox
        Left = 1
        Top = 1
        Width = 485
        Height = 67
        Align = alTop
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1583#1575#1585#1575#1610#1610
        TabOrder = 0
        object Label3: TLabel
          Left = 408
          Top = 18
          Width = 32
          Height = 13
          Alignment = taRightJustify
          Caption = #1587#1585#1610#1575#1604' '
          FocusControl = DBEdit3
        end
        object spdSerialNum: TSpeedButton
          Left = 314
          Top = 13
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = spdSerialNumClick
        end
        object Label4: TLabel
          Left = 109
          Top = 18
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = #1588#1605#1575#1585#1607' '#1662#1604#1575#1603
          FocusControl = DBEdit3
        end
        object DBEdit3: TDBEdit
          Left = 338
          Top = 14
          Width = 70
          Height = 21
          DataField = 'SerialNum'
          DataSource = srcExpense1s
          TabOrder = 0
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit4: TDBEdit
          Left = 6
          Top = 37
          Width = 435
          Height = 21
          TabStop = False
          Color = clBtnFace
          Ctl3D = True
          DataField = '_StuffDesc'
          DataSource = srcExpense1s
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 6
          Top = 14
          Width = 95
          Height = 21
          TabStop = False
          Color = clBtnFace
          Ctl3D = True
          DataField = '_PelakNum'
          DataSource = srcExpense1s
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object GroupBox3: TGroupBox
        Left = 1
        Top = 301
        Width = 485
        Height = 157
        Align = alTop
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1591#1585#1601' '#1581#1587#1575#1576
        TabOrder = 4
        object GroupBox4: TGroupBox
          Left = 2
          Top = 15
          Width = 481
          Height = 42
          Align = alTop
          Caption = #1603#1583#1581#1587#1575#1576
          TabOrder = 0
          object spdSellerTopicCode: TSpeedButton
            Left = 352
            Top = 15
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = spdSellerTopicCodeClick
          end
          object DBEdit1: TDBEdit
            Left = 375
            Top = 16
            Width = 57
            Height = 21
            DataField = 'SellerTopicCode'
            DataSource = srcExpense1s
            TabOrder = 0
            OnKeyPress = DBEdit3KeyPress
          end
          object DBEdit2: TDBEdit
            Left = 8
            Top = 17
            Width = 342
            Height = 21
            TabStop = False
            Color = clBtnFace
            Ctl3D = True
            DataField = '_AccName'
            DataSource = srcExpense1s
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
        end
        object GroupBox5: TGroupBox
          Left = 2
          Top = 103
          Width = 481
          Height = 46
          Align = alTop
          Caption = #1603#1583#1605#1585#1603#1586#1607#1586#1610#1606#1607
          TabOrder = 2
          object spdSellerCTopicCode: TSpeedButton
            Left = 352
            Top = 15
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = spdSellerCTopicCodeClick
          end
          object DBEdit12: TDBEdit
            Left = 375
            Top = 16
            Width = 57
            Height = 21
            DataField = 'SellerCTopicCode'
            DataSource = srcExpense1s
            TabOrder = 0
            OnKeyPress = DBEdit3KeyPress
          end
          object DBEdit15: TDBEdit
            Left = 8
            Top = 17
            Width = 342
            Height = 21
            TabStop = False
            Color = clBtnFace
            Ctl3D = True
            DataField = '_CtopicName'
            DataSource = srcExpense1s
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
        end
        object GroupBox6: TGroupBox
          Left = 2
          Top = 57
          Width = 481
          Height = 46
          Align = alTop
          Caption = #1603#1583#1578#1601#1589#1610#1604#1610
          TabOrder = 1
          object spdSellerDetailCode: TSpeedButton
            Left = 352
            Top = 14
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = spdSellerDetailCodeClick
          end
          object DBEdit13: TDBEdit
            Left = 375
            Top = 15
            Width = 57
            Height = 21
            DataField = 'SellerDetailCode'
            DataSource = srcExpense1s
            TabOrder = 0
            OnKeyPress = DBEdit3KeyPress
          end
          object DBEdit14: TDBEdit
            Left = 8
            Top = 15
            Width = 342
            Height = 21
            TabStop = False
            Color = clBtnFace
            Ctl3D = True
            DataField = '_DetailName'
            DataSource = srcExpense1s
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 1
        Top = 230
        Width = 485
        Height = 71
        Align = alTop
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1581#1575#1587#1576#1607' '#1575#1587#1578#1607#1604#1575#1603
        TabOrder = 3
        object Label1: TLabel
          Left = 350
          Top = 18
          Width = 77
          Height = 13
          Alignment = taRightJustify
          Caption = #1575#1587#1578#1607#1604#1575#1603' '#1575#1606#1576#1575#1588#1578#1607
          FocusControl = edtFirstDepValue
        end
        object Label2: TLabel
          Left = 350
          Top = 43
          Width = 91
          Height = 13
          Alignment = taRightJustify
          Caption = #1575#1587#1578#1607#1604#1575#1603' '#1587#1575#1604' '#1580#1575#1585#1610
          FocusControl = DBEdit11
        end
        object Label9: TLabel
          Left = 133
          Top = 18
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = #1575#1585#1586#1588' '#1583#1601#1578#1585#1610
          FocusControl = DBEdit11
        end
        object edtFirstDepValue: TDBEdit
          Left = 227
          Top = 14
          Width = 120
          Height = 21
          DataField = 'FirstDepValue'
          DataSource = srcDep_Table
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit11: TDBEdit
          Left = 227
          Top = 39
          Width = 120
          Height = 21
          TabStop = False
          DataField = 'DepvalueInYear'
          DataSource = srcDep_Table
          ReadOnly = True
          TabOrder = 2
        end
        object edtBookValue: TEdit
          Left = 10
          Top = 14
          Width = 120
          Height = 21
          TabStop = False
          Color = 13236955
          ReadOnly = True
          TabOrder = 1
        end
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 150
        Width = 485
        Height = 80
        Align = alTop
        Caption = #1588#1585#1581' '#1607#1586#1610#1606#1607
        TabOrder = 2
        object DBMemo1: TDBMemo
          Left = 2
          Top = 15
          Width = 481
          Height = 63
          Align = alClient
          BevelInner = bvSpace
          BevelOuter = bvNone
          BevelKind = bkSoft
          Ctl3D = False
          DataField = 'ExpDesc'
          DataSource = srcExpense1s
          ParentCtl3D = False
          TabOrder = 0
        end
      end
      object Panel4: TPanel
        Left = 1
        Top = 68
        Width = 485
        Height = 82
        Align = alTop
        BevelInner = bvLowered
        BevelOuter = bvSpace
        TabOrder = 1
        DesignSize = (
          485
          82)
        object Label5: TLabel
          Left = 383
          Top = 13
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
          FocusControl = DBEdit6
        end
        object Label6: TLabel
          Left = 383
          Top = 37
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1575#1585#1610#1582' '#1587#1606#1583
          FocusControl = DBEdit7
        end
        object Label7: TLabel
          Left = 132
          Top = 13
          Width = 76
          Height = 13
          Alignment = taRightJustify
          BiDiMode = bdRightToLeft
          Caption = #1578#1575#1585#1610#1582' '#1576#1607#1585#1607' '#1576#1585#1583#1575#1585#1610
          FocusControl = DBEdit8
          ParentBiDiMode = False
        end
        object Label8: TLabel
          Left = 132
          Top = 37
          Width = 20
          Height = 13
          Alignment = taRightJustify
          BiDiMode = bdRightToLeft
          Caption = #1605#1576#1604#1594
          FocusControl = DBEdit9
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object Label12: TLabel
          Left = 383
          Top = 61
          Width = 44
          Height = 13
          Caption = #1606#1608#1593' '#1578#1581#1602#1602
        end
        object DBEdit6: TDBEdit
          Left = 304
          Top = 9
          Width = 74
          Height = 21
          DataField = 'DocNum'
          DataSource = srcExpense1s
          TabOrder = 0
        end
        object DBEdit7: TDBEdit
          Left = 304
          Top = 33
          Width = 74
          Height = 21
          DataField = 'DocDate'
          DataSource = srcExpense1s
          TabOrder = 1
        end
        object DBEdit8: TDBEdit
          Left = 53
          Top = 9
          Width = 74
          Height = 21
          DataField = 'StartUsingDate_x'
          DataSource = srcExpense1s
          TabOrder = 2
        end
        object DBEdit9: TDBEdit
          Left = 8
          Top = 33
          Width = 119
          Height = 21
          DataField = 'ExpValue'
          DataSource = srcExpense1s
          TabOrder = 3
        end
        object cmbOwnerType: TDBComboBox
          Left = 208
          Top = 57
          Width = 170
          Height = 21
          Style = csDropDownList
          Anchors = [akTop, akRight]
          DataField = 'OwnerType'
          DataSource = srcExpense1s
          TabOrder = 4
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 256
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcExpense1s
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcExpense1s
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcExpense1s
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcExpense1s
    end
    inherited actSearch_: TAction
      OnExecute = actSearchExecute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcExpense1s
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcExpense1s
    end
    object actSort: TAction
      Category = 'Dataset'
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actPrint: TAction
      Category = 'Dataset'
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actOther: TAction
      Caption = #1587#1575#1610#1585' '#1575#1605#1603#1575#1606#1575#1578
      OnExecute = actOtherExecute
    end
    object actSendExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExcelExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 352
    Top = 17
  end
  object qryExpense1s: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryExpense1sAfterInsert
    BeforeEdit = qryExpense1sBeforeEdit
    AfterEdit = qryExpense1sAfterEdit
    BeforePost = qryExpense1sBeforePost
    AfterPost = qryExpense1sAfterPost
    BeforeDelete = qryExpense1sBeforeDelete
    AfterScroll = qryExpense1sAfterScroll
    Parameters = <
      item
        Name = 'SerialNumFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'SerialNumTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2147483647
      end
      item
        Name = 'BuyDateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'BuyDateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '9999/99/99'
      end>
    SQL.Strings = (
      'select *  from assets.Expenses'
      
        'WHERE        (SerialNum BETWEEN :SerialNumFrom  AND :SerialNumTo' +
        ' ) '
      ' AND (BuyDate BETWEEN  :BuyDateFrom AND :BuyDateTo )')
    Left = 640
    Top = 216
    object qryExpense1sExpID: TIntegerField
      Tag = 3
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'ExpID'
    end
    object qryExpense1sSerialNum: TIntegerField
      Tag = 3
      DisplayLabel = #1587#1585#1610#1575#1604' '#1583#1575#1585#1575#1610#1610
      FieldName = 'SerialNum'
    end
    object qryExpense1sDocNum: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1606#1583
      FieldName = 'DocNum'
    end
    object qryExpense1sDocDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1587#1606#1583
      FieldName = 'DocDate'
      OnChange = qryExpense1sDocDateChange
      EditMask = '9999/99/99;1;_'
      FixedChar = True
      Size = 10
    end
    object qryExpense1sExpValue: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'ExpValue'
      currency = True
      Precision = 19
    end
    object qryExpense1sBuyDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1578#1594#1610#1585#1575#1578
      FieldName = 'BuyDate'
      Required = True
      EditMask = '9999/99/99;1;_'
      FixedChar = True
      Size = 10
    end
    object qryExpense1sStartUsingDate_x: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1576#1607#1585#1607' '#1576#1585#1583#1575#1585#1610
      FieldName = 'StartUsingDate_x'
      EditMask = '9999/99/99;1;_'
      FixedChar = True
      Size = 10
    end
    object qryExpense1sExpDesc: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1607#1586#1610#1606#1607
      FieldName = 'ExpDesc'
      Size = 200
    end
    object qryExpense1sSellerTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'SellerTopicCode'
    end
    object qryExpense1sSellerDetailCode: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1601#1589#1610#1604#1610
      FieldName = 'SellerDetailCode'
    end
    object qryExpense1sSellerCTopicCode: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1601#1589#1610#1604#1610'2'
      FieldName = 'SellerCTopicCode'
    end
    object qryExpense1sFirstDepValue: TBCDField
      Tag = 3
      DisplayLabel = #1575#1587#1578#1607#1604#1575#1603' '#1575#1606#1576#1575#1588#1578#1607
      FieldName = 'FirstDepValue'
      OnChange = qryExpense1sFirstDepValueChange
      currency = True
      Precision = 19
    end
    object qryExpense1sDepvalueInYear: TBCDField
      Tag = 3
      DisplayLabel = #1575#1587#1578#1607#1604#1575#1603' '#1587#1575#1604' '#1580#1575#1585#1610
      FieldName = 'DepvalueInYear'
      OnChange = qryExpense1sFirstDepValueChange
      currency = True
      Precision = 19
    end
    object qryExpense1sState: TWordField
      FieldName = 'State'
    end
    object qryExpense1s_AccName: TStringField
      FieldKind = fkLookup
      FieldName = '_AccName'
      LookupDataSet = DmF.qryCategories
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName_L1'
      KeyFields = 'SellerTopicCode'
      Size = 120
      Lookup = True
    end
    object qryExpense1s_DetailName: TStringField
      FieldKind = fkLookup
      FieldName = '_DetailName'
      LookupDataSet = DmF.qryDetail
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName_L1'
      KeyFields = 'SellerDetailCode'
      Size = 120
      Lookup = True
    end
    object qryExpense1s_CtopicName: TStringField
      FieldKind = fkLookup
      FieldName = '_CtopicName'
      LookupDataSet = DmF.qryCtopicCode
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName_L1'
      KeyFields = 'SellerCTopicCode'
      Size = 120
      Lookup = True
    end
    object qryExpense1s_StuffDesc: TStringField
      DisplayLabel = #1588#1585#1581' '#1583#1575#1585#1575#1610#1610
      FieldKind = fkLookup
      FieldName = '_StuffDesc'
      LookupDataSet = DmF.qryAmval
      LookupKeyFields = 'SerialNum'
      LookupResultField = 'StuffDesc'
      KeyFields = 'serialNum'
      Size = 120
      Lookup = True
    end
    object qryExpense1s_PelakNum: TStringField
      DisplayLabel = #1662#1604#1575#1603
      FieldKind = fkLookup
      FieldName = '_PelakNum'
      LookupDataSet = DmF.qryAmval
      LookupKeyFields = 'SerialNum'
      LookupResultField = 'PelakNum'
      KeyFields = 'SerialNum'
      Size = 120
      Lookup = True
    end
    object qryExpense1sFirstUser: TStringField
      Tag = 3
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryExpense1sLastUser: TStringField
      Tag = 3
      FieldName = 'LastUser'
      Size = 50
    end
    object qryExpense1sOwnerType: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1578#1581#1602#1602
      FieldName = 'OwnerType'
      OnGetText = qryExpense1sOwnerTypeGetText
      OnSetText = qryExpense1sOwnerTypeSetText
    end
  end
  object srcExpense1s: TDataSource
    AutoEdit = False
    DataSet = qryExpense1s
    OnStateChange = srcExpense1sStateChange
    Left = 560
    Top = 352
  end
  object popOther: TPopupMenu
    Left = 590
    Top = 99
    object N1: TMenuItem
      Action = actPrint
    end
    object N2: TMenuItem
      Caption = #1575#1587#1603#1606
      OnClick = N2Click
    end
  end
  object qryDep_Table: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Id4table'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        ID, Serial, Yearid, Tablename, Id4table, FirstDepV' +
        'alue, DepvalueInyear, CompanyID'
      'FROM            Assets.DepTable'
      'where  Id4table=:Id4table AND Tablename='#39'Expense1s'#39)
    Left = 560
    Top = 416
    object qryDep_TableID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryDep_TableSerial: TIntegerField
      FieldName = 'Serial'
    end
    object qryDep_TableYearid: TIntegerField
      FieldName = 'Yearid'
    end
    object qryDep_TableTablename: TWideStringField
      FieldName = 'Tablename'
      Size = 50
    end
    object qryDep_TableId4table: TIntegerField
      FieldName = 'Id4table'
    end
    object qryDep_TableFirstDepValue: TBCDField
      FieldName = 'FirstDepValue'
      currency = True
      Precision = 19
    end
    object qryDep_TableDepvalueInyear: TBCDField
      FieldName = 'DepvalueInyear'
      currency = True
      Precision = 19
    end
    object qryDep_TableCompanyID: TIntegerField
      FieldName = 'CompanyID'
    end
  end
  object srcDep_Table: TDataSource
    DataSet = qryDep_Table
    Left = 560
    Top = 464
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = pdbplnExpense1s
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
    Left = 796
    Top = 330
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'pdbplnExpense1s'
    object ptlbnd1: TppTitleBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 34660
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
        mmHeight = 6615
        mmLeft = 9525
        mmTop = 1323
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
      object pplblYearId: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'YearId'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 104246
        mmTop = 3969
        mmWidth = 8731
        BandType = 1
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 18521
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
  object pdbplnExpense1s: TppDBPipeline
    DataSource = srcExpense1s
    OpenDataSource = False
    UserName = 'pdbplnExpense1s'
    Left = 704
    Top = 338
  end
end
