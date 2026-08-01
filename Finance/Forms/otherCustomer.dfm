inherited otherCustomerF: TotherCustomerF
  Left = 300
  Top = 129
  Caption = #1605#1593#1585#1601#1610' '#1587#1575#1610#1585' '#1587#1585#1601#1589#1604#1607#1575
  OldCreateOrder = True
  OnResize = FormResize
  ExplicitWidth = 806
  ExplicitHeight = 557
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    TabOrder = 1
    object DBNavigator1: TDBNavigator [0]
      Left = 399
      Top = 8
      Width = 144
      Height = 25
      DataSource = srcOther
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight, akBottom]
      Flat = True
      TabOrder = 7
    end
    inherited BtnReject: TBitBtn
      TabOrder = 6
      ExplicitLeft = 4
      ExplicitTop = 7
      ExplicitHeight = 27
    end
    object okPanel: TPanel
      Left = 312
      Top = 1
      Width = 158
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        158
        39)
      object BitBtn7: TBitBtn
        Left = 81
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetPost1
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583
        DoubleBuffered = True
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
        ParentDoubleBuffered = False
        TabOrder = 0
      end
      object BitBtn8: TBitBtn
        Left = 3
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetCancel1
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1589#1585#1575#1601
        DoubleBuffered = True
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
        ParentDoubleBuffered = False
        TabOrder = 1
      end
    end
    object newPanel: TPanel
      Left = 470
      Top = 1
      Width = 319
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        319
        39)
      object BitBtn3: TBitBtn
        Left = 241
        Top = 8
        Width = 77
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 163
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 86
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 2
      end
      object BitBtn15: TBitBtn
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1575#1604#1610#1575#1578
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = BitBtn15Click
      end
    end
    object BitBtn6: TBitBtn
      Left = 244
      Top = 8
      Width = 75
      Height = 25
      Action = actSendExel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Exel'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 4
    end
    object BitBtn1: TBitBtn
      Left = 321
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Caption = #1670#1575#1662
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 5
    end
    object BitBtn9: TBitBtn
      Left = 92
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
    end
  end
  inherited Panel2: TPanel
    TabOrder = 2
  end
  inherited Panel3: TPanel
    TabOrder = 0
    object Panel1: TPanel
      Left = 464
      Top = 2
      Width = 324
      Height = 420
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderWidth = 5
      BorderStyle = bsSingle
      TabOrder = 0
      DesignSize = (
        320
        416)
      object Label1: TLabel
        Left = 234
        Top = 8
        Width = 55
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1578#1582#1575#1576' '#1711#1585#1608#1607' '
        ExplicitLeft = 258
      end
      object SpeedButton1: TSpeedButton
        Left = 6
        Top = 28
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object cmbGroups: TComboBox
        Left = 32
        Top = 29
        Width = 257
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        Color = 14024703
        TabOrder = 0
        OnChange = cmbGroupsChange
        OnEnter = cmbGroupsEnter
      end
      object DBGrid1: TDBGrid
        Left = 6
        Top = 68
        Width = 308
        Height = 342
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clCream
        DataSource = srcOther
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'CustID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CustName'
            Width = 218
            Visible = True
          end>
      end
      object chkAllCusts: TCheckBox
        Left = 6
        Top = 6
        Width = 97
        Height = 17
        BiDiMode = bdRightToLeftNoAlign
        Caption = '&'#1607#1605#1607' '#1711#1585#1608#1607#1607#1575
        ParentBiDiMode = False
        TabOrder = 2
        OnClick = chkAllCustsClick
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 462
      Height = 420
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvLowered
      BorderWidth = 3
      BorderStyle = bsSingle
      TabOrder = 1
      DesignSize = (
        458
        416)
      object Label2: TLabel
        Left = 334
        Top = 12
        Width = 14
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '
        FocusControl = DBEdit1
      end
      object Label3: TLabel
        Left = 334
        Top = 37
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = #1593#1606#1608#1575#1606
        FocusControl = DBEdit2
      end
      object Label17: TLabel
        Left = 334
        Top = 57
        Width = 76
        Height = 13
        Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      end
      object Label8: TLabel
        Left = 334
        Top = 159
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1576#1608#1583#1580#1607
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object SpeedButton3: TSpeedButton
        Left = 231
        Top = 154
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        Visible = False
        OnClick = SpeedButton3Click
      end
      object DBText2: TDBText
        Left = 16
        Top = 157
        Width = 211
        Height = 16
        Anchors = [akTop, akRight]
        Color = 13948116
        DataField = '_BudgetName'
        DataSource = srcOther
        ParentColor = False
        Transparent = False
        Visible = False
      end
      object Label9: TLabel
        Left = 334
        Top = 187
        Width = 66
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1591#1585#1581' '#1608' '#1662#1585#1608#1688#1607
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object SpeedButton4: TSpeedButton
        Left = 231
        Top = 182
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        Visible = False
        OnClick = SpeedButton4Click
      end
      object DBText3: TDBText
        Left = 16
        Top = 185
        Width = 211
        Height = 16
        Anchors = [akTop, akRight]
        Color = 13948116
        DataField = '_ProjectName'
        DataSource = srcOther
        ParentColor = False
        Transparent = False
        Visible = False
      end
      object Label10: TLabel
        Left = 125
        Top = 11
        Width = 79
        Height = 13
        Alignment = taRightJustify
        Caption = #1605#1575#1606#1583#1607' '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
      end
      object Label36: TLabel
        Left = 334
        Top = 134
        Width = 16
        Height = 13
        Caption = #1608#1586#1606
        FocusControl = edtInfoWeight
      end
      object Label4: TLabel
        Left = 332
        Top = 209
        Width = 85
        Height = 13
        Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1588#1576#1575
        FocusControl = edtCustAccountNumber
        Visible = False
      end
      object DBEdit1: TDBEdit
        Left = 248
        Top = 8
        Width = 78
        Height = 21
        DataField = 'CustID'
        DataSource = srcOther
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 33
        Width = 310
        Height = 21
        DataField = 'CustName'
        DataSource = srcOther
        TabOrder = 1
      end
      object DBMemo2: TDBMemo
        Left = 18
        Top = 60
        Width = 310
        Height = 65
        DataField = 'CustomerNote'
        DataSource = srcOther
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 255
        Top = 155
        Width = 71
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'BudgetID'
        DataSource = srcOther
        TabOrder = 4
        Visible = False
      end
      object DBEdit8: TDBEdit
        Left = 255
        Top = 182
        Width = 71
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'ProjectID'
        DataSource = srcOther
        TabOrder = 5
        Visible = False
      end
      object edtInfoWeight: TDBEdit
        Left = 255
        Top = 130
        Width = 71
        Height = 21
        DataField = 'InfoWeight'
        DataSource = srcOther
        TabOrder = 3
      end
      object edtCustAccountNumber: TDBEdit
        Left = 125
        Top = 206
        Width = 201
        Height = 21
        DataField = 'CustAccountNumber'
        DataSource = srcOther
        TabOrder = 6
        Visible = False
      end
      object PageControl1: TPageControl
        Left = 5
        Top = 231
        Width = 448
        Height = 180
        ActivePage = TabSheet1
        Align = alBottom
        TabOrder = 8
        object TabSheet1: TTabSheet
          Caption = '000'
          DesignSize = (
            440
            152)
          object Label7: TLabel
            Left = 383
            Top = 37
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1601#1575#1603#1587
            FocusControl = DBEdit6
          end
          object Label6: TLabel
            Left = 383
            Top = 8
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1578#1604#1601#1606
            FocusControl = DBEdit5
          end
          object Label37: TLabel
            Left = 147
            Top = 8
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
            FocusControl = DBEdit5
          end
          object Label41: TLabel
            Left = 147
            Top = 66
            Width = 27
            Height = 13
            Caption = #1578#1604#1601#1606'3'
          end
          object Label44: TLabel
            Left = 383
            Top = 66
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1578#1604#1601#1606'2'
          end
          object Label5: TLabel
            Left = 382
            Top = 104
            Width = 25
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1570#1583#1585#1587
            FocusControl = DBEdit5
          end
          object DBEdit6: TDBEdit
            Left = 242
            Top = 4
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'Tel'
            DataSource = srcOther
            TabOrder = 0
          end
          object DBEdit7: TDBEdit
            Left = 242
            Top = 33
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'Fax'
            DataSource = srcOther
            TabOrder = 1
          end
          object DBEdit27: TDBEdit
            Left = 10
            Top = 4
            Width = 134
            Height = 21
            DataField = 'Mobile'
            DataSource = srcOther
            TabOrder = 2
          end
          object dbedtTel3: TDBEdit
            Left = 10
            Top = 62
            Width = 134
            Height = 21
            DataField = 'Tel3'
            DataSource = srcOther
            TabOrder = 3
          end
          object dbedtTel2: TDBEdit
            Left = 243
            Top = 60
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'Tel2'
            DataSource = srcOther
            TabOrder = 4
          end
          object DBMemo1: TDBMemo
            Left = 10
            Top = 104
            Width = 366
            Height = 44
            Anchors = [akTop, akRight]
            DataField = 'Address'
            DataSource = srcOther
            TabOrder = 5
          end
        end
        object TabSheet3: TTabSheet
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
          ImageIndex = 2
          DesignSize = (
            440
            152)
          object Label11: TLabel
            Left = 319
            Top = 30
            Width = 102
            Height = 13
            Alignment = taRightJustify
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610
          end
          object SpeedButton2: TSpeedButton
            Left = 220
            Top = 25
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton2Click
          end
          object DBText1: TDBText
            Left = 10
            Top = 28
            Width = 208
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '__DetailCode'
            DataSource = srcOther
            ParentColor = False
            Transparent = False
          end
          object Label22: TLabel
            Left = 319
            Top = 56
            Width = 64
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
            FocusControl = DBEdit18
          end
          object SpeedButton5: TSpeedButton
            Left = 220
            Top = 51
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton5Click
          end
          object DBText5: TDBText
            Left = 10
            Top = 54
            Width = 208
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '__CTopicCodeName'
            DataSource = srcOther
            ParentColor = False
            Transparent = False
          end
          object Label24: TLabel
            Left = 319
            Top = 82
            Width = 70
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'3'
            FocusControl = DBEdit19
          end
          object SpeedButton6: TSpeedButton
            Left = 220
            Top = 77
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton6Click
          end
          object DBText6: TDBText
            Left = 10
            Top = 80
            Width = 208
            Height = 16
            Anchors = [akTop, akRight]
            Color = 13948116
            DataField = '__CTopicCodeName2'
            DataSource = srcOther
            ParentColor = False
            Transparent = False
          end
          object Label33: TLabel
            Left = 322
            Top = 134
            Width = 39
            Height = 13
            Alignment = taRightJustify
            Caption = #1578#1588#1582#1610#1589
          end
          object DBText4: TDBText
            Left = 18
            Top = 106
            Width = 199
            Height = 16
            Anchors = [akLeft, akTop, akRight]
            Color = 13948116
            DataField = '__CTopicCodeName3'
            DataSource = srcOther
            ParentColor = False
            Transparent = False
          end
          object SpeedButton10: TSpeedButton
            Left = 220
            Top = 103
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton10Click
          end
          object Label48: TLabel
            Left = 317
            Top = 108
            Width = 70
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'4'
            FocusControl = DBEdit29
          end
          object Label49: TLabel
            Left = 320
            Top = 4
            Width = 72
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1605#1593#1740#1606
            FocusControl = DBEdit30
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton11: TSpeedButton
            Left = 220
            Top = -1
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton11Click
          end
          object DBText7: TDBText
            Left = -24
            Top = 2
            Width = 240
            Height = 16
            Anchors = [akLeft, akTop, akRight]
            Color = 13948116
            DataField = '__TopicCodeName'
            DataSource = srcOther
            ParentColor = False
            Transparent = False
          end
          object DBEdit15: TDBEdit
            Left = 244
            Top = 26
            Width = 70
            Height = 21
            DataField = 'acc_DetailCode'
            DataSource = srcOther
            TabOrder = 0
            OnKeyDown = DBEdit15KeyDown
          end
          object DBEdit18: TDBEdit
            Left = 244
            Top = 52
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_CTopicCode'
            DataSource = srcOther
            TabOrder = 1
          end
          object DBEdit19: TDBEdit
            Left = 244
            Top = 78
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_CTopicCode2'
            DataSource = srcOther
            TabOrder = 2
          end
          object CmbaccStateDefault: TDBComboBox
            Left = 220
            Top = 130
            Width = 95
            Height = 21
            DataField = 'accStateDefault'
            DataSource = srcOther
            Items.Strings = (
              #1606#1583#1575#1585#1583
              #1576#1583#1607#1603#1575#1585
              #1576#1587#1578#1575#1606#1603#1575#1585)
            TabOrder = 3
          end
          object DBEdit29: TDBEdit
            Left = 244
            Top = 104
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_CTopicCode3'
            DataSource = srcOther
            TabOrder = 4
          end
          object DBEdit30: TDBEdit
            Left = 246
            Top = 0
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_TopicCode'
            DataSource = srcOther
            TabOrder = 5
          end
        end
      end
    end
  end
  inherited ActionList: TActionList
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Exel'
      OnExecute = actSendExelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 320
    Top = 9
    Bitmap = {
      494C010106000900100010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BAD840021842900218429006BAD8400000000000000
      00000000000000000000000000000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      F700948C8C00948C8C00948C8C00948C8C00FFD6AD00FFD6AD00FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00313129006B7394001029A50021213900FFE7C600FFDEB500FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF0031313900637BE700FFFFF70010219C00FFEFD600FFE7C600FFDEB500FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF0042424200524A4A005A524A00182994006373D600FFEFD600FFE7C600FFDE
      B500FFD6AD00FFD6AD00FFD6AD00CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006BAD8400218429002184
      290021842900218429002184290094DE8C0039B5520021842900218429002184
      290021842900218429006BAD84000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00637BE700425AE700FFEFD600FFE7
      C600FFDEB500FFD6AD00FFD6AD00CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A5630039B5520039B5
      520039B5520039B5520039B5520039B5520039B5520039B5520039B5520039B5
      520039B5520039B55200218429000000000000000000CE630000FFFFFF00FFFF
      FF00948C8C00948C8C00948C8C00948C8C00FFFFFF00FFFFFF00FFF7E700FFEF
      D600FFE7C600FFDEB500FFD6AD00CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A5630094DE8C0094DE
      8C0094DE8C0094DE8C0094DE8C0094DE8C0039B5520094DE8C0094DE8C0094DE
      8C0094DE8C0094DE8C00218429000000000000000000CE630000FFFFFF00FFFF
      FF00313129006B7394001029A50021213900FFFFFF00FFFFFF00FFFFF700FFF7
      E700FFEFD600FFE7C600FFDEB500CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006BAD840063A5630063A5
      630063A5630063A5630063A5630094DE8C0039B5520021842900218429002184
      290021842900218429006BAD84000000000000000000CE630000FFFFFF00FFFF
      FF0031313900637BE700FFFFFF0010219C00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7E700FFEFD600FFE7C600CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF0042424200524A4A005A524A00182994006373D600FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7E700FFEFD600CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00637BE700425AE700FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7E700CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BAD840063A5630063A563006BAD8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031000000420000005200000052000000420000003100000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000052A54A00009408006BB563000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000042
      000000420000007B0800009C0800009C0800009C0800009C0800007B0800004A
      0000004A00000000000000000000000000000000000000000000000000000000
      00000000000018B5290000BD2100009400008CBD7B0000000000000000000000
      0000000000000000000000000000000000000000000029ADD60031B5DE0021AD
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004A08000063
      080000A5100000A50800009C0800009C0800009C0800009C080000A5080000A5
      0800006B08000031000000000000000000000000000000000000000000000000
      00006BB5630000BD210000C6290000A50000319C310000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CDEEF0084EF
      FF004AC6E70021ADD60018A5C60018A5C60018A5C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004A0800006B100008A5
      210008A51800009C0800009C0800009C0800009C0800009C0800009C0800009C
      080000A50800006B0800004A0000000000000000000000000000000000000000
      0000009C100000CE310000C6290000AD100000940000A5C69400000000000000
      0000000000000000000000000000000000000000000029ADD60052BDE7009CFF
      FF0094FFFF0073DEF70073DEF70073DEF70073DEF7004AC6E70021ADD60018A5
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004A080010AD310008AD
      290008A5180000A510004AC65200E7F7EF00D6F7DE0010AD2100009C0800009C
      0800009C080000A50800004A00000000000000000000000000000000000052A5
      4A0000CE310000C6290000FF630000CE3100009C0000008C0000000000000000
      0000000000000000000000000000000000000000000029ADD60052BDE700ADFF
      FF008CF7FF008CEFFF008CEFFF008CEFFF0073DEF70073DEF70073DEF7004AC6
      EF0021ADD6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000005200000884210010B5420010A5
      3100089C180042BD4A00F7FFF700FFFFFF0084D68C0000A51000009C0800009C
      0800009C080000A50800007B08000042000000000000000000000000000018B5
      290029CE5A0000FF630000FF630000BD210000C62900009400008CBD7B000000
      0000000000000000000000000000000000000000000029ADD60029ADD600ADDE
      EF0094F7FF0094F7FF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DE
      F7004AC6EF00000000000000000000000000000000006B84C6000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5006B84C600000000000052000010A5420018B54A0010AD
      310042BD4A00F7FFF700FFFFFF0073D67B00009C0800009C0800009C0800009C
      0800009C080000A50800009408000042000000000000000000000000000018C6
      420000FF630000FF630052A54A0052A54A0000C6290000A50000319C31000000
      0000000000000000000000000000000000000000000029ADD60073DEF70029AD
      D6009CFFFF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0073DE
      F70073DEF70018A5C6000000000000000000000000000021A5009494F7000029
      E7000029E7000029E7000029E7000029E7000029E7000029E7000029E7000029
      E7000029E7000029E7000021A50000000000006B100021B5520021B5520073D6
      9400EFFFEF00FFFFFF00F7FFF700B5EFC600B5E7BD00ADE7B500ADE7B500ADE7
      B500ADE7B500009C0800009C0800004A00000000000000000000000000000000
      000000AD210000AD2100000000000000000000AD180000C6290000940000A5C6
      9400000000000000000000000000000000000000000029ADD60094F7FF0029AD
      D600ADDEEF00A5EFF700A5EFF700A5F7FF008CEFFF008CEFFF008CEFFF0073DE
      F7000073080018A5C6000000000000000000000000000021A500B5C6FF009CBD
      FF009CBDFF009CB5FF009CB5FF009CB5FF00638CF700638CF700638CF700638C
      F700526BF700526BF7000021A500000000000873100039BD6B0029BD5A00BDEF
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00009C0800009C0800005200000000000000000000000000000000
      00000000000000000000000000000000000031B5420000C62900009C0000008C
      0000000000000000000000000000000000000000000029ADD6009CFFFF0073DE
      F70029ADD60018A5C60018A5C60018A5C600ADDEEF008CF7FF0084EFFF000073
      08005AE78C000073080018A5C60000000000000000006B84C6000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5006B84C600000000000873100052C67B0042C6730029BD
      5A00A5E7BD00FFFFFF00F7FFF70084DEA50042BD5A0042BD5A0042BD5A0042BD
      5A0042BD5A0008A51800009C0800004200000000000000000000000000000000
      0000000000000000000000000000000000000000000000B5210000C629000094
      00008CBD7B000000000000000000000000000000000029ADD6009CFFFF0094F7
      FF0073DEF70073DEF70073DEF7006BDEF70029ADD600ADDEEF000073080052D6
      7B0042D66B0031C64A0000730800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087310004ABD6B0084DEA50021B5
      520021B5520094DEB500FFFFFF00E7F7EF0052C6730010AD310010AD310010AD
      310008A5290008A51800008C0800004200000000000000000000000000000000
      0000000000000000000000000000000000000000000052A54A0000C6290029AD
      390031B542000000000000000000000000000000000029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0073DEF70073DEF70029ADD60018A5C600108C
      210031C64A00109C210018A5C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A53100ADE7C6006BCE
      8C0010AD4A0018B54A008CDEAD00FFFFFF00F7FFF70029BD520010A5310008A5
      290008A5210008AD1800006B0800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029AD4A005AE7
      A50029AD39008CBD7B0000000000000000000000000029ADD600C6FFFF0094FF
      FF009CFFFF00D6FFFF00D6FFFF008CEFFF0094EFFF0073DEF70073DEF7000884
      100018AD29000884100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A5310052C67300BDEF
      D60063CE8C0021B5520018B5520094DEB500ADE7C60021B5520010AD390010AD
      310010AD3100109C2100006B0800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031B5420000D6
      42008CBD7B000000000000000000000000000000000021ADD6009CDEEF00C6FF
      FF00C6FFFF009CDEEF0018ADD60018A5C60018A5C60018A5C60018A5C600088C
      100008A518000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000109C21006BCE
      8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD630031BD630021BD
      4A0010A531000063080000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5C6
      940000000000000000000000000000000000000000000000000031B5DE0029AD
      D60018A5C60018A5C60000000000000000000000000000000000088C100008A5
      1800088410000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004ABD
      63004ABD630094DEB500BDEFD600A5E7C6008CDEAD007BDE9C004AC67B00189C
      3900189C39000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000730800087B0800088C1000088C1000087B
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021A5310039B5520042BD630042BD630029A54A00108C29000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FC3F800000000000
      FC3F800000000000FC3F800000000000FC3F800000000000FC3F800000000000
      8001800000000000800180000000000080018000000000008001800000000000
      FC3F800000000000FC3F800000000000FC3F800000000000FC3FC00100000000
      FC3FFFFF00000000FFFFFFFF00000000FFFFF81FF8FFFFFFFFFFE007F87F8FFF
      FFFFC003F07F807FFFFF8001F03F800FFFFF8001E03F8007FFFF0000E01F8007
      80010000E01F800380010000F30F800380010000FF0F800180010000FF878001
      FFFF0000FF878001FFFF8001FFC38003FFFF8001FFC78007FFFFC003FFEFC3C7
      FFFFE007FFFFFE0FFFFFF81FFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object qryOther: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryOtherAfterInsert
    BeforePost = qryOtherBeforePost
    AfterPost = qryOtherAfterPost
    BeforeDelete = qryOtherBeforeDelete
    AfterDelete = qryOtherAfterDelete
    Parameters = <
      item
        Name = 'GrpIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'GrpIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      #13'SELECT     * FROM        Customers '
      
        'WHERE   ( CustomerGrpID BETWEEN :GrpIDFrom and :GrpIDTo  )and(Cu' +
        'stID<>0)'
      'ORDER BY CustID')
    Left = 615
    Top = 223
    object qryOtherCustID: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'CustID'
      OnChange = qryOtherCustIDChange
    end
    object qryOtherCustName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'CustName'
      Required = True
      Size = 120
    end
    object qryOtherCustomerNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      FieldName = 'CustomerNote'
      Size = 250
    end
    object qryOtheracc_DetailCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'acc_DetailCode'
      Required = True
      Size = 12
    end
    object qryOther__DetailCode: TStringField
      DisplayLabel = #1588#1585#1581' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldKind = fkLookup
      FieldName = '__DetailCode'
      LookupDataSet = DMF.qryAccDetailCode
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName'
      KeyFields = 'acc_DetailCode'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryOtherCustomerGrpID: TIntegerField
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607
      FieldName = 'CustomerGrpID'
    end
    object qryOtherModifyDate: TDateTimeField
      FieldName = 'ModifyDate'
      EditMask = '9999/99/99'
    end
    object qryOtherProjectID: TIntegerField
      DisplayLabel = #1603#1583' '#1591#1585#1581' '#1608' '#1662#1585#1608#1688#1607
      FieldName = 'ProjectID'
    end
    object qryOther_BudgetName: TStringField
      FieldKind = fkLookup
      FieldName = '_BudgetName'
      LookupDataSet = DMF.qryAccBudget
      LookupKeyFields = 'BudgetTopicID'
      LookupResultField = 'BudgetCaption_L1'
      KeyFields = 'BudgetID'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryOther_ProjectName: TStringField
      FieldKind = fkLookup
      FieldName = '_ProjectName'
      LookupDataSet = DMF.qryAccProject
      LookupKeyFields = 'ProjectID'
      LookupResultField = 'ProjectCaption_L1'
      KeyFields = 'ProjectID'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryOtherBudgetID: TIntegerField
      DisplayLabel = #1603#1583' '#1576#1608#1583#1580#1607
      FieldName = 'BudgetID'
    end
    object qryOtheracc_CTopicCode: TStringField
      FieldName = 'acc_CTopicCode'
      Size = 12
    end
    object qryOtheracc_CTopicCode2: TStringField
      FieldName = 'acc_CTopicCode2'
      Size = 12
    end
    object qryOther__CTopicCodeName: TStringField
      FieldKind = fkLookup
      FieldName = '__CTopicCodeName'
      LookupDataSet = DMF.qryAccCenterTopics
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName'
      KeyFields = 'acc_CTopicCode'
      Size = 100
      Lookup = True
    end
    object qryOther__CTopicCodeName2: TStringField
      FieldKind = fkLookup
      FieldName = '__CTopicCodeName2'
      LookupDataSet = DMF.qryAccCenterTopics2
      LookupKeyFields = 'CTopicCode2'
      LookupResultField = 'CTopicName2'
      KeyFields = 'acc_CTopicCode2'
      Size = 100
      Lookup = True
    end
    object qryOtheraccStateDefault: TWordField
      FieldName = 'accStateDefault'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryOtherFirstBalance: TBCDField
      FieldName = 'FirstBalance'
      currency = True
      Precision = 19
    end
    object qryOtheracc_CTopicCode3: TStringField
      FieldName = 'acc_CTopicCode3'
      Size = 12
    end
    object qryOther__CTopicCodeName3: TStringField
      FieldKind = fkLookup
      FieldName = '__CTopicCodeName3'
      LookupDataSet = DMF.qryAccCenterTopics3
      LookupKeyFields = 'CTopicCode3'
      LookupResultField = 'CTopicName3'
      KeyFields = 'acc_CTopicCode3'
      Size = 250
      Lookup = True
    end
    object qryOtherInfoWeight: TFloatField
      FieldName = 'InfoWeight'
    end
    object qryOther__TopicCodeName: TStringField
      DisplayLabel = #1588#1585#1581' '#1581#1587#1575#1576' '#1581#1587#1575#1576
      FieldKind = fkLookup
      FieldName = '__TopicCodeName'
      LookupDataSet = DMF.qryAccTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'acc_TopicCode'
      Size = 100
      Lookup = True
    end
    object qryOtheracc_TopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1593#1740#1606
      FieldName = 'acc_TopicCode'
    end
    object qryOtherCustAccountNumber: TStringField
      FieldName = 'CustAccountNumber'
      Size = 60
    end
    object qryOtherAddress: TStringField
      FieldName = 'Address'
      Size = 200
    end
    object qryOtherTel: TStringField
      FieldName = 'Tel'
      Size = 30
    end
    object qryOtherFax: TStringField
      FieldName = 'Fax'
      Size = 30
    end
    object qryOtherTel2: TWideStringField
      FieldName = 'Tel2'
      Size = 30
    end
    object qryOtherTel3: TWideStringField
      FieldName = 'Tel3'
      Size = 30
    end
    object qryOtherMobile: TStringField
      FieldName = 'Mobile'
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcOther
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 704
    Top = 287
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 704
    Top = 383
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 25135
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 265
        mmTop = 19579
        mmWidth = 203200
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1605#1588#1582#1589#1575#1578' '#1587#1585#1601#1589#1604
        Ellipsis = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 150284
        mmTop = 17727
        mmWidth = 21431
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 265
        mmTop = 13758
        mmWidth = 203200
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '   '
        Ellipsis = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 184415
        mmTop = 19315
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1603#1583' '#1587#1585#1601#1589#1604' '
        Ellipsis = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 186796
        mmTop = 17727
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1588#1585#1581' '#1578#1601#1589#1610#1604#1610
        Ellipsis = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 11906
        mmTop = 17727
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '   '
        Ellipsis = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 38894
        mmTop = 19315
        mmWidth = 1323
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        OnGetText = ppSystemVariable1GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 1058
        mmTop = 6615
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        OnGetText = ppLabel19GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ' '#1711#1585#1608#1607' '#1587#1585#1601#1589#1604' '
        Ellipsis = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 184150
        mmTop = 11642
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610
        Ellipsis = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 42333
        mmTop = 17727
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
        Ellipsis = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 86254
        mmTop = 17727
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '   '
        Ellipsis = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 137319
        mmTop = 19315
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '   '
        Ellipsis = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 56886
        mmTop = 19843
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        OnGetText = ppLabel1GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Ellipsis = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 75406
        mmTop = 0
        mmWidth = 52123
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        OnGetText = ppLabel10GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662
        Ellipsis = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 6350
        mmLeft = 1058
        mmTop = 0
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1604#1610#1587#1578' '#1605#1588#1582#1589#1575#1578' '#1587#1585#1601#1589#1604' '#1607#1575
        Ellipsis = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8202
        mmLeft = 80963
        mmTop = 6615
        mmWidth = 41275
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CustID'
        DataPipeline = ppDBPipeline1
        Ellipsis = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 185473
        mmTop = 0
        mmWidth = 18000
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CustName'
        DataPipeline = ppDBPipeline1
        Ellipsis = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 138377
        mmTop = 0
        mmWidth = 47096
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'acc_DetailCode'
        DataPipeline = ppDBPipeline1
        Ellipsis = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 39952
        mmTop = 0
        mmWidth = 18000
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CustomerNote'
        DataPipeline = ppDBPipeline1
        Ellipsis = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 57944
        mmTop = 0
        mmWidth = 80433
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = '__DetailCode'
        DataPipeline = ppDBPipeline1
        Ellipsis = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 0
        mmTop = 0
        mmWidth = 40000
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLabel13: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = #1578#1593#1583#1575#1583' '#1587#1585#1601#1589#1604' '#1607#1575': '#8207
        Ellipsis = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5376
        mmLeft = 182563
        mmTop = 1588
        mmWidth = 20320
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CustID'
        DataPipeline = ppDBPipeline1
        Ellipsis = False
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
        mmHeight = 5800
        mmLeft = 166159
        mmTop = 1588
        mmWidth = 16140
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpBottom
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 165365
        mmTop = 4763
        mmWidth = 37835
        BandType = 7
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object srcOther: TDataSource
    DataSet = qryOther
    OnStateChange = srcOtherStateChange
    Left = 512
    Top = 280
  end
  object zbal: TzAPIBalloon
    AutoCloseMode = acAutoCalc
    Prompt.Strings = (
      'FINANCES Ltd'
      'TzAPIBalloon ver. 1')
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 196
    Top = 2
  end
end
