inherited BudgetInterfaceF: TBudgetInterfaceF
  Caption = #1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1576#1608#1583#1580#1607
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    inherited BtnReject: TBitBtn
      Width = 80
    end
    object btnSort: TButton
      Left = 97
      Top = 8
      Width = 80
      Height = 25
      Action = actSort
      TabOrder = 1
    end
    object btnSersh: TButton
      Left = 178
      Top = 8
      Width = 80
      Height = 25
      Action = actSearch_
      TabOrder = 2
    end
    object newPanel: TPanel
      Left = 532
      Top = 1
      Width = 253
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
      DesignSize = (
        253
        39)
      object BitBtn3: TBitBtn
        Left = 169
        Top = 7
        Width = 80
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 87
        Top = 7
        Width = 80
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 5
        Top = 7
        Width = 80
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object okPanel: TPanel
      Left = 356
      Top = 1
      Width = 176
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 4
      DesignSize = (
        176
        39)
      object BitBtn7: TBitBtn
        Left = 91
        Top = 7
        Width = 80
        Height = 25
        Action = DataSetPost1
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583
        TabOrder = 0
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
      end
      object BitBtn8: TBitBtn
        Left = 9
        Top = 7
        Width = 80
        Height = 25
        Action = DataSetCancel1
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1589#1585#1575#1601
        TabOrder = 1
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
      end
    end
    object Button1: TButton
      Left = 259
      Top = 8
      Width = 80
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607'Excel'
      TabOrder = 5
    end
  end
  inherited Panel3: TPanel
    object Panel1: TPanel
      Left = 513
      Top = 2
      Width = 271
      Height = 428
      Align = alClient
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 269
        Height = 426
        Align = alClient
        Color = clCream
        DataSource = srcBudgect
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'InterfaceID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InterfaceCaption_L1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InterfaceCaption_L2'
            Visible = True
          end>
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 511
      Height = 428
      Align = alLeft
      TabOrder = 1
      object Panel_l2: TPanel
        Left = 1
        Top = 77
        Width = 509
        Height = 36
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label3: TLabel
          Left = 16
          Top = 15
          Width = 61
          Height = 13
          Caption = 'FormCaption'
          FocusControl = DBEdit3
        end
        object DBEdit3: TDBEdit
          Left = 80
          Top = 12
          Width = 350
          Height = 21
          DataField = 'InterfaceCaption_L2'
          DataSource = srcBudgect
          TabOrder = 0
        end
      end
      object Panel_l1: TPanel
        Left = 1
        Top = 37
        Width = 509
        Height = 40
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label2: TLabel
          Left = 441
          Top = 18
          Width = 46
          Height = 13
          Caption = #1593#1606#1608#1575#1606' '#1601#1585#1605
          FocusControl = DBEdit2
        end
        object DBEdit2: TDBEdit
          Left = 80
          Top = 14
          Width = 350
          Height = 21
          DataField = 'InterfaceCaption_L1'
          DataSource = srcBudgect
          TabOrder = 0
        end
      end
      object Panel7: TPanel
        Left = 1
        Top = 1
        Width = 509
        Height = 36
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object Label1: TLabel
          Left = 444
          Top = 17
          Width = 11
          Height = 13
          Caption = #1603#1583
          FocusControl = DBEdit1
        end
        object DBEdit1: TDBEdit
          Left = 296
          Top = 13
          Width = 134
          Height = 21
          DataField = 'InterfaceID'
          DataSource = srcBudgect
          TabOrder = 0
        end
      end
      object PageControl1: TPageControl
        Left = 1
        Top = 204
        Width = 509
        Height = 223
        ActivePage = TabSheet1
        Align = alBottom
        TabOrder = 3
        object TabSheet1: TTabSheet
          Caption = #1603#1606#1578#1585#1604#1607#1575#1610' '#1601#1585#1605
          object Label5: TLabel
            Left = 376
            Top = 24
            Width = 76
            Height = 13
            Caption = #1606#1608#1593' '#1578#1575#1579#1610#1585' '#1576#1585' '#1576#1608#1583#1580#1607
          end
          object DBCheckBox2: TDBCheckBox
            Left = 357
            Top = 56
            Width = 125
            Height = 17
            Caption = '   '#1576#1583#1607#1603#1575#1585' '#1606#1605#1575#1610#1588' '#1588#1608#1583' '
            DataField = 'BedVisible'
            DataSource = srcBudgect
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 357
            Top = 84
            Width = 125
            Height = 17
            Caption = ' '#1576#1587#1578#1575#1606#1603#1575#1585' '#1606#1605#1575#1610#1588' '#1588#1608#1583' '
            DataField = 'BesVisible'
            DataSource = srcBudgect
            TabOrder = 1
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object ComboBudgetEffect: TDBComboBox
            Left = 160
            Top = 21
            Width = 209
            Height = 21
            DataField = 'BudgetEffect'
            DataSource = srcBudgect
            ItemHeight = 13
            Items.Strings = (
              #1576#1610' '#1578#1575#1579#1610#1585
              #1605#1608#1579#1585' '#1576#1585' '#1576#1608#1583#1580#1607
              #1605#1608#1579#1585' '#1576#1585' '#1578#1593#1607#1583#1575#1578)
            TabOrder = 2
          end
        end
        object TabSheet2: TTabSheet
          Caption = #1581#1587#1575#1576#1583#1575#1585#1610
          ImageIndex = 1
          object Label6: TLabel
            Left = 318
            Top = 63
            Width = 123
            Height = 13
            Caption = #1606#1608#1593' '#1576#1583#1607#1603#1575#1585' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
          end
          object Label7: TLabel
            Left = 318
            Top = 95
            Width = 131
            Height = 13
            Caption = #1606#1608#1593' '#1576#1587#1578#1575#1606#1603#1575#1585' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
          end
          object Label8: TLabel
            Left = 318
            Top = 127
            Width = 137
            Height = 13
            Caption = #1605#1581#1604' '#1606#1605#1575#1610#1588' '#1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1583#1575#1585#1610
          end
          object DBCheckBox4: TDBCheckBox
            Left = 299
            Top = 31
            Width = 138
            Height = 17
            Caption = '    '#1570#1610#1575' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1583#1575#1585#1583'  '
            DataField = 'HasDoc'
            DataSource = srcBudgect
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object ComboBoxAccBedType: TDBComboBox
            Left = 49
            Top = 60
            Width = 264
            Height = 21
            DataField = 'AccBedType'
            DataSource = srcBudgect
            ItemHeight = 13
            Items.Strings = (
              #1606#1583#1575#1585#1583
              'master  '#1576#1585' '#1575#1587#1575#1587' '#1603#1583#1610#1606#1711' '#1576#1608#1583#1580#1607
              'details  '#1576#1585' '#1575#1587#1575#1587' '#1603#1583#1610#1711' '#1576#1608#1583#1580#1607' '
              'master  '#1575#1591#1604#1575#1593#1575#1578' '#1581#1587#1575#1576#1583#1575#1585#1610
              'details  '#1575#1591#1604#1575#1593#1575#1578' '#1581#1587#1575#1576#1583#1575#1585#1610' ')
            TabOrder = 1
          end
          object ComboBoxAccBesType: TDBComboBox
            Left = 49
            Top = 92
            Width = 264
            Height = 21
            DataField = 'AccBesType'
            DataSource = srcBudgect
            ItemHeight = 13
            Items.Strings = (
              #1606#1583#1575#1585#1583
              'master  '#1576#1585' '#1575#1587#1575#1587' '#1603#1583#1610#1606#1711' '#1576#1608#1583#1580#1607
              'details  '#1576#1585' '#1575#1587#1575#1587' '#1603#1583#1610#1711' '#1576#1608#1583#1580#1607' '
              'master  '#1575#1591#1604#1575#1593#1575#1578' '#1581#1587#1575#1576#1583#1575#1585#1610
              'details  '#1575#1591#1604#1575#1593#1575#1578' '#1581#1587#1575#1576#1583#1575#1585#1610' ')
            TabOrder = 2
          end
          object ComboBoxAcc_RelateShowKind: TDBComboBox
            Left = 49
            Top = 124
            Width = 264
            Height = 21
            DataField = 'Acc_RelateShowKind'
            DataSource = srcBudgect
            ItemHeight = 13
            Items.Strings = (
              #1606#1583#1575#1585#1583
              'master'
              'details')
            TabOrder = 3
          end
        end
        object TabSheet3: TTabSheet
          Caption = #1606#1605#1575#1610#1588
          ImageIndex = 2
          object DBCheckBox5: TDBCheckBox
            Left = 312
            Top = 32
            Width = 97
            Height = 17
            Caption = #1605#1602#1583#1575#1585' '#1601#1593#1575#1604' '#1576#1575#1588#1583
            DataField = 'AmountActive'
            DataSource = srcBudgect
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox6: TDBCheckBox
            Left = 313
            Top = 64
            Width = 97
            Height = 17
            Caption = '     '#1608#1586#1606' '#1601#1593#1575#1604' '#1576#1575#1588#1583
            DataField = 'WeightActive'
            DataSource = srcBudgect
            TabOrder = 1
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object TabSheet4: TTabSheet
          Caption = #1670#1575#1662
          ImageIndex = 3
          DesignSize = (
            501
            195)
          object Label9: TLabel
            Left = 396
            Top = 28
            Width = 62
            Height = 13
            Caption = #1606#1575#1605' '#1601#1575#1610#1604' '#1670#1575#1662#1610
            FocusControl = editprint
          end
          object Label10: TLabel
            Left = 397
            Top = 56
            Width = 90
            Height = 13
            Caption = #1605#1581#1604' '#1575#1605#1590#1575#1569' '#1578#1607' '#1601#1585#1605' 1'
            FocusControl = editprint
          end
          object Label15: TLabel
            Left = 405
            Top = 128
            Width = 90
            Height = 13
            Caption = #1605#1581#1604' '#1575#1605#1590#1575#1569' '#1578#1607' '#1601#1585#1605' 2'
            FocusControl = editprint
          end
          object editprint: TDBEdit
            Left = 130
            Top = 24
            Width = 255
            Height = 21
            DataField = 'ReportFilename'
            DataSource = srcBudgect
            TabOrder = 0
          end
          object BitBtn2: TBitBtn
            Left = 106
            Top = 23
            Width = 22
            Height = 21
            Caption = '...'
            TabOrder = 1
            OnClick = BitBtn2Click
          end
          object DBMemo3: TDBMemo
            Tag = 111
            Left = 106
            Top = 50
            Width = 279
            Height = 49
            Anchors = [akTop, akRight]
            DataField = 'FormFooter_L1'
            DataSource = srcBudgect
            ScrollBars = ssVertical
            TabOrder = 2
          end
          object DBMemo4: TDBMemo
            Tag = 111
            Left = 106
            Top = 122
            Width = 282
            Height = 49
            Anchors = [akTop, akRight]
            DataField = 'FormFooter_L2'
            DataSource = srcBudgect
            ScrollBars = ssVertical
            TabOrder = 3
          end
        end
        object TabSheet5: TTabSheet
          Caption = #1578#1608#1590#1610#1581#1575#1578
          ImageIndex = 4
          object Label11: TLabel
            Left = 423
            Top = 20
            Width = 46
            Height = 13
            Caption = #1578#1608#1590#1610#1581#1575#1578'1'
          end
          object Label12: TLabel
            Left = 423
            Top = 104
            Width = 46
            Height = 13
            Caption = #1578#1608#1590#1610#1581#1575#1578'2'
          end
          object DBMemo1: TDBMemo
            Tag = 111
            Left = 16
            Top = 16
            Width = 399
            Height = 76
            DataField = 'Note_L1'
            DataSource = srcBudgect
            TabOrder = 0
          end
          object DBMemo2: TDBMemo
            Tag = 111
            Left = 17
            Top = 104
            Width = 399
            Height = 82
            DataField = 'Note_L2'
            DataSource = srcBudgect
            TabOrder = 1
          end
        end
      end
      object CheckReload: TDBCheckBox
        Left = 375
        Top = 125
        Width = 110
        Height = 17
        Caption = '    '#1570#1610#1575' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1583#1575#1585#1583' '
        DataField = 'HasReload'
        DataSource = srcBudgect
        TabOrder = 4
        ValueChecked = '1'
        ValueUnchecked = '0'
        OnClick = CheckReloadClick
      end
      object GroupReload: TGroupBox
        Left = 176
        Top = 154
        Width = 313
        Height = 51
        Caption = #1601#1585#1605' '#1607#1575#1610' '#1602#1575#1576#1604' '#1601#1585#1575#1582#1608#1575#1606#1610
        TabOrder = 5
        DesignSize = (
          313
          51)
        object DBEdit4: TDBEdit
          Left = 42
          Top = 19
          Width = 253
          Height = 21
          Anchors = [akLeft, akBottom]
          DataField = 'ReloadInterfaceID'
          DataSource = srcBudgect
          TabOrder = 0
        end
        object BitBtn1: TBitBtn
          Left = 18
          Top = 19
          Width = 22
          Height = 21
          Anchors = [akLeft, akBottom]
          Caption = '...'
          TabOrder = 1
          OnClick = BitBtn1Click
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 48
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcBudgect
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcBudgect
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcBudgect
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcBudgect
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcBudgect
    end
    object actExcel: TAction [5]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1575#1603#1587#1604
      OnExecute = actExcelExecute
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actSort: TAction [7]
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 104
    Top = 9
  end
  object qryBudgect: TADOQuery
    Connection = Dmf.adcAccounting
    AfterInsert = qryBudgectAfterInsert
    BeforePost = qryBudgectBeforePost
    AfterPost = qryBudgectAfterPost
    BeforeDelete = qryBudgectBeforeDelete
    AfterDelete = qryBudgectAfterDelete
    AfterScroll = qryBudgectAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT     dbo.BudgetInterfaces.*'
      'FROM         dbo.BudgetInterfaces')
    Left = 545
    Top = 119
    object qryBudgectInterfaceID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'InterfaceID'
      Required = True
    end
    object qryBudgectInterfaceCaption_L1: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1601#1585#1605
      FieldName = 'InterfaceCaption_L1'
      Required = True
      Size = 50
    end
    object qryBudgectInterfaceCaption_L2: TStringField
      Tag = 3
      DisplayLabel = 'FormCaption'
      FieldName = 'InterfaceCaption_L2'
      Size = 50
    end
    object qryBudgectHasReload: TWordField
      DisplayLabel = '    '#1570#1610#1575' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1583#1575#1585#1583' '
      FieldName = 'HasReload'
    end
    object qryBudgectReloadInterfaceID: TStringField
      DisplayLabel = #1601#1585#1605' '#1607#1575#1610' '#1602#1575#1576#1604' '#1601#1585#1575#1582#1608#1575#1606#1610
      FieldName = 'ReloadInterfaceID'
    end
    object qryBudgectBudgetEffect: TWordField
      DisplayLabel = #1606#1608#1593' '#1578#1575#1579#1610#1585' '#1576#1585' '#1576#1608#1583#1580#1607
      FieldName = 'BudgetEffect'
      OnGetText = qryBudgectBudgetEffectGetText
      OnSetText = qryBudgectBudgetEffectSetText
    end
    object qryBudgectBedVisible: TWordField
      DisplayLabel = '   '#1576#1583#1607#1603#1575#1585' '#1606#1605#1575#1610#1588' '#1588#1608#1583' '
      FieldName = 'BedVisible'
    end
    object qryBudgectBesVisible: TWordField
      DisplayLabel = ' '#1576#1587#1578#1575#1606#1603#1575#1585' '#1606#1605#1575#1610#1588' '#1588#1608#1583' '
      FieldName = 'BesVisible'
    end
    object qryBudgectHasDoc: TWordField
      DisplayLabel = '    '#1570#1610#1575' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1583#1575#1585#1583'  '
      FieldName = 'HasDoc'
    end
    object qryBudgectAccBedType: TWordField
      DisplayLabel = #1606#1608#1593' '#1576#1583#1607#1603#1575#1585' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'AccBedType'
      OnGetText = qryBudgectAccBedTypeGetText
      OnSetText = qryBudgectAccBedTypeSetText
    end
    object qryBudgectAccBesType: TWordField
      DisplayLabel = #1606#1608#1593' '#1576#1587#1578#1575#1606#1603#1575#1585' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'AccBesType'
      OnGetText = qryBudgectAccBesTypeGetText
      OnSetText = qryBudgectAccBesTypeSetText
    end
    object qryBudgectAcc_RelateShowKind: TWordField
      DisplayLabel = #1605#1581#1604' '#1606#1605#1575#1610#1588' '#1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'Acc_RelateShowKind'
      OnGetText = qryBudgectAcc_RelateShowKindGetText
      OnSetText = qryBudgectAcc_RelateShowKindSetText
    end
    object qryBudgectAmountActive: TWordField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1601#1593#1575#1604' '#1576#1575#1588#1583
      FieldName = 'AmountActive'
    end
    object qryBudgectWeightActive: TWordField
      DisplayLabel = '     '#1608#1586#1606' '#1601#1593#1575#1604' '#1576#1575#1588#1583
      FieldName = 'WeightActive'
    end
    object qryBudgectReportFilename: TStringField
      DisplayLabel = #1606#1575#1605' '#1601#1575#1610#1604' '#1670#1575#1662#1610
      FieldName = 'ReportFilename'
      Size = 100
    end
    object qryBudgectFormFooter_L1: TStringField
      DisplayLabel = #1605#1581#1604' '#1575#1605#1590#1575#1569' '#1578#1607' '#1601#1585#1605' 1'
      FieldName = 'FormFooter_L1'
      Size = 200
    end
    object qryBudgectFormFooter_L2: TStringField
      DisplayLabel = #1605#1581#1604' '#1575#1605#1590#1575#1569' '#1578#1607' '#1601#1585#1605' 2'
      FieldName = 'FormFooter_L2'
      Size = 200
    end
    object qryBudgectNote_L1: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578'1'
      FieldName = 'Note_L1'
      Size = 200
    end
    object qryBudgectNote_L2: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578'2'
      FieldName = 'Note_L2'
      Size = 200
    end
    object qryBudgectCustomerVisible: TWordField
      FieldName = 'CustomerVisible'
    end
    object qryBudgectCustGroups: TStringField
      FieldName = 'CustGroups'
      Size = 250
    end
  end
  object srcBudgect: TDataSource
    DataSet = qryBudgect
    OnStateChange = srcBudgectStateChange
    Left = 609
    Top = 127
  end
  object OpenDialog1: TOpenDialog
    Left = 23
    Top = 291
  end
end
