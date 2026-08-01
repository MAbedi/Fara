inherited CustomersInterViewF: TCustomersInterViewF
  Left = 392
  Top = 196
  Caption = #1579#1576#1578' '#1605#1584#1575#1603#1585#1575#1578' '#1576#1575' '#1605#1588#1578#1585#1610
  ClientHeight = 445
  ClientWidth = 814
  ExplicitWidth = 820
  ExplicitHeight = 474
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 393
    Width = 814
    Height = 15
    Align = alBottom
    ExplicitLeft = -32
    ExplicitTop = 359
    ExplicitWidth = 741
    ExplicitHeight = 15
  end
  inherited Panel1: TPanel
    Width = 814
    ExplicitWidth = 814
    inherited Image1: TImage
      Left = 768
      ExplicitLeft = 687
    end
    inherited lblTopic0: TLabel
      Left = 663
      Width = 85
      Caption = #1579#1576#1578' '#1605#1584#1575#1603#1585#1575#1578' '#1576#1575'...'
      ExplicitLeft = 663
      ExplicitWidth = 85
    end
    inherited lblTopic1: TLabel
      Left = 675
      Visible = False
      ExplicitLeft = 594
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 1
      Width = 456
      Height = 71
      Align = alLeft
      Caption = #1603#1583' '#1608' '#1606#1575#1605' '
      TabOrder = 0
      object edtCustID: TDBEdit
        AlignWithMargins = True
        Left = 345
        Top = 18
        Width = 106
        Height = 23
        TabStop = False
        Align = alRight
        Color = clBtnFace
        Ctl3D = False
        DataField = 'CustID'
        DataSource = srcCustomers
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        ExplicitHeight = 19
      end
      object edtCustName: TDBEdit
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 334
        Height = 23
        TabStop = False
        Align = alClient
        Color = clBtnFace
        Ctl3D = False
        DataField = 'CustName'
        DataSource = srcCustomers
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
        ExplicitHeight = 19
      end
      object edtTel: TDBEdit
        AlignWithMargins = True
        Left = 5
        Top = 47
        Width = 446
        Height = 19
        TabStop = False
        Align = alBottom
        BiDiMode = bdLeftToRight
        Color = clBtnFace
        Ctl3D = False
        DataField = 'Tel'
        DataSource = srcCustomers
        ParentBiDiMode = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
    end
  end
  inherited pnlDown: TPanel
    Top = 408
    Width = 814
    ExplicitTop = 408
    ExplicitWidth = 814
    inherited btnClose: TBitBtn
      Top = 4
      ExplicitTop = 4
    end
    object newPanel: TPanel
      Left = 575
      Top = 1
      Width = 238
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      Caption = '`'
      TabOrder = 1
      DesignSize = (
        238
        35)
      object BitBtn6: TBitBtn
        Left = 161
        Top = 4
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn9: TBitBtn
        Left = 83
        Top = 4
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn10: TBitBtn
        Left = 6
        Top = 4
        Width = 75
        Height = 25
        Action = DataSetDelete1
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object okPanel: TPanel
      Left = 411
      Top = 1
      Width = 164
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        164
        35)
      object BitBtn1: TBitBtn
        Left = 85
        Top = 4
        Width = 75
        Height = 25
        Action = DataSetPost1
        Anchors = [akTop, akRight]
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
      object BitBtn2: TBitBtn
        Left = 6
        Top = 4
        Width = 75
        Height = 25
        Action = DataSetCancel1
        Anchors = [akTop, akRight]
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
    object BitBtn3: TBitBtn
      Left = 86
      Top = 4
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object btnSearch: TBitBtn
      Left = 164
      Top = 4
      Width = 75
      Height = 25
      Action = actSearch
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn4: TBitBtn
      Left = 242
      Top = 4
      Width = 77
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 5
    end
    object btnPrint: TBitBtn
      Left = 322
      Top = 4
      Width = 77
      Height = 25
      Action = actPrint
      Caption = #1670#1575#1662
      TabOrder = 6
    end
    object BitBtn5: TBitBtn
      Left = 402
      Top = 4
      Width = 77
      Height = 25
      Action = actOther
      Caption = #1587#1575#1610#1585
      TabOrder = 7
    end
  end
  object DBGrid1: TDBGrid [3]
    Left = 560
    Top = 73
    Width = 254
    Height = 320
    Align = alRight
    Ctl3D = False
    DataSource = srcInterView
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'InterViewDate'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InterViewKind2'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FirstUser'
        Width = 51
        Visible = True
      end>
  end
  object Panel2: TPanel [4]
    Left = 0
    Top = 73
    Width = 560
    Height = 320
    Align = alClient
    TabOrder = 3
    object Label1: TLabel
      Left = 473
      Top = 8
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = #1588#1605#1575#1585#1607
      FocusControl = edtInterViewNo
    end
    object Label2: TLabel
      Left = 335
      Top = 8
      Width = 21
      Height = 13
      Alignment = taRightJustify
      Caption = #1578#1575#1585#1610#1582
      FocusControl = edtInterViewDate
    end
    object Label3: TLabel
      Left = 473
      Top = 34
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = #1605#1582#1575#1591#1576
      FocusControl = edtAccost
    end
    object Label4: TLabel
      Left = 473
      Top = 124
      Width = 77
      Height = 13
      Alignment = taRightJustify
      Caption = #1583#1585#1589#1583' '#1585#1590#1575#1740#1578#1605#1606#1583#1740
      FocusControl = edtSatisfactionPercent
    end
    object Label5: TLabel
      Left = 473
      Top = 99
      Width = 86
      Height = 13
      Alignment = taRightJustify
      Caption = #1583#1585#1589#1583#1605#1608#1601#1602#1740#1578'/'#1581#1580#1605
      FocusControl = edtSuccessPercent
    end
    object Label6: TLabel
      Left = 169
      Top = 124
      Width = 52
      Height = 13
      Alignment = taRightJustify
      Caption = #1606#1608#1593' '#1608#1590#1593#1740#1578
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 135
      Width = 558
      Height = 184
      Align = alBottom
      Caption = #1605#1578#1606' '#1610#1575#1583#1583#1575#1588#1578
      TabOrder = 5
      object lbl1: TLabel
        Left = 84
        Top = 168
        Width = 43
        Height = 13
        Caption = 'FirstUser'
      end
      object DBMemo1: TDBMemo
        Left = 2
        Top = 15
        Width = 554
        Height = 143
        Align = alClient
        DataField = 'InterViewNote'
        DataSource = srcInterView
        TabOrder = 0
      end
      object pnl1: TPanel
        Left = 2
        Top = 158
        Width = 554
        Height = 24
        Align = alBottom
        TabOrder = 1
        object lbl2: TLabel
          AlignWithMargins = True
          Left = 466
          Top = 4
          Width = 84
          Height = 16
          Align = alRight
          Caption = #1578#1575#1585#1610#1582' '#1608#1587#1575#1593#1578' '#1575#1610#1580#1575#1583
          ExplicitLeft = 474
          ExplicitHeight = 13
        end
        object txtModifyDate: TDBText
          AlignWithMargins = True
          Left = 391
          Top = 4
          Width = 69
          Height = 16
          Align = alRight
          Alignment = taRightJustify
          AutoSize = True
          BiDiMode = bdRightToLeft
          Color = 13756137
          DataField = 'ModifyDate'
          DataSource = srcInterView
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentColor = False
          ParentFont = False
          ExplicitLeft = 399
          ExplicitHeight = 13
        end
        object txtFirstUser: TDBText
          AlignWithMargins = True
          Left = 92
          Top = 4
          Width = 57
          Height = 16
          Align = alLeft
          AutoSize = True
          DataField = 'FirstUser'
          DataSource = srcInterView
          ExplicitHeight = 13
        end
        object txtInterViewStae: TDBText
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 82
          Height = 16
          Align = alLeft
          AutoSize = True
          DataField = 'InterViewStae'
          DataSource = srcInterView
          ExplicitHeight = 13
        end
      end
    end
    object edtInterViewNo: TDBEdit
      Left = 369
      Top = 4
      Width = 100
      Height = 21
      DataField = 'InterViewNo'
      DataSource = srcInterView
      TabOrder = 0
    end
    object edtInterViewDate: TDBEdit
      Left = 232
      Top = 4
      Width = 100
      Height = 21
      DataField = 'InterViewDate'
      DataSource = srcInterView
      TabOrder = 1
    end
    object edtAccost: TDBEdit
      Left = 232
      Top = 30
      Width = 237
      Height = 21
      DataField = 'Accost'
      DataSource = srcInterView
      TabOrder = 2
    end
    object rdoKind: TDBRadioGroup
      Left = 5
      Top = 5
      Width = 216
      Height = 72
      Caption = #1606#1608#1593' '#1605#1584#1575#1705#1585#1607
      Columns = 2
      DataField = 'InterViewKind'
      DataSource = srcInterView
      Items.Strings = (
        #1605#1584#1575#1705#1585#1607' '#1578#1604#1601#1606#1740
        'sms'
        #1575#1740#1605#1740#1604' '
        'Fax'
        #1578#1604#1711#1585#1575#1605)
      TabOrder = 4
      TabStop = True
      Values.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4')
    end
    object dbrgrpInterViewStae: TDBRadioGroup
      Left = 5
      Top = 77
      Width = 216
      Height = 37
      Caption = #1608#1590#1593#1740#1578
      Columns = 2
      DataField = 'InterViewStae'
      DataSource = srcInterView
      Enabled = False
      Items.Strings = (
        #1605#1608#1602#1578
        #1583#1575#1574#1605)
      ReadOnly = True
      TabOrder = 6
      Values.Strings = (
        '0'
        '1')
    end
    object grpFollowUpDateTime: TGroupBox
      Left = 325
      Top = 53
      Width = 144
      Height = 38
      Caption = #1578#1575#1585#1740#1582' '#1608' '#1587#1575#1593#1578' '#1662#1740#1711#1740#1585#1740' '#1605#1580#1583#1583
      TabOrder = 3
      object medtFollowUpTime: TMaskEdit
        Left = 96
        Top = 15
        Width = 46
        Height = 21
        Align = alRight
        Color = 13431799
        EditMask = '!90:00;1;_'
        MaxLength = 5
        TabOrder = 1
        Text = '  :  '
        OnKeyDown = medtFollowUpTimeKeyDown
      end
      object medtFollowUpDate: TMaskEdit
        Left = 2
        Top = 15
        Width = 94
        Height = 21
        Align = alClient
        Color = 13431799
        EditMask = '9999/99/99'
        MaxLength = 10
        TabOrder = 0
        Text = '    /  /  '
        OnKeyDown = medtFollowUpTimeKeyDown
      end
    end
    object edtSatisfactionPercent: TDBEdit
      Left = 369
      Top = 120
      Width = 100
      Height = 21
      DataField = 'SatisfactionPercent'
      DataSource = srcInterView
      TabOrder = 7
    end
    object edtSuccessPercent: TDBEdit
      Left = 369
      Top = 95
      Width = 100
      Height = 21
      DataField = 'SuccessPercent'
      DataSource = srcInterView
      TabOrder = 8
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 5
      Top = 120
      Width = 158
      Height = 21
      DataField = '_levels'
      DataSource = srcInterView
      TabOrder = 9
    end
  end
  inherited ActionList1: TActionList
    Left = 263
    Top = 65526
    inherited DataSetPost1: TDataSetPost
      DataSource = srcInterView
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcInterView
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      DataSource = srcInterView
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcInterView
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      DataSource = srcInterView
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSearch: TAction
      Caption = #1580#1587#1578#1580#1608
      OnExecute = actSearchExecute
    end
    object actExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actExcelExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actOther: TAction
      Caption = #1587#1575#1610#1585
      OnExecute = actOtherExecute
    end
  end
  object qryInterView: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryInterViewAfterInsert
    BeforeEdit = qryInterViewBeforeEdit
    BeforePost = qryInterViewBeforePost
    AfterPost = qryInterViewAfterPost
    BeforeDelete = qryInterViewBeforeDelete
    AfterScroll = qryInterViewAfterScroll
    Parameters = <
      item
        Name = 'CustID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT   *,InterViewKind as InterViewKind2'
      'FROM         CustomersInterView'
      'where CustID=:CustID'
      'ORDER BY InterViewDate DESC')
    Left = 346
    Top = 233
    object qryInterViewID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryInterViewCustID: TIntegerField
      FieldName = 'CustID'
    end
    object qryInterViewInterViewKind: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1605#1584#1575#1705#1585#1607
      FieldName = 'InterViewKind'
    end
    object qryInterViewInterViewNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'InterViewNo'
      Required = True
    end
    object qryInterViewInterViewDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'InterViewDate'
      EditMask = '9999/99/99;1;_'
      FixedChar = True
      Size = 10
    end
    object qryInterViewInterViewNote: TWideStringField
      Tag = 3
      DisplayLabel = #1605#1578#1606' '#1610#1575#1583#1583#1575#1588#1578
      FieldName = 'InterViewNote'
      Required = True
      Size = 2000
    end
    object qryInterViewAccost: TWideStringField
      Tag = 3
      DisplayLabel = #1605#1582#1575#1591#1576
      FieldName = 'Accost'
      Size = 200
    end
    object qryInterViewModifyDate: TDateTimeField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1608#1587#1575#1593#1578' '#1575#1610#1580#1575#1583
      FieldName = 'ModifyDate'
      Required = True
      OnGetText = qryInterViewModifyDateGetText
    end
    object qryInterViewInterViewStae: TWordField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'InterViewStae'
    end
    object qryInterViewFirstUser: TWideStringField
      DisplayLabel = #1579#1576#1578' '#1705#1606#1606#1583#1607
      FieldName = 'FirstUser'
    end
    object qryInterViewFollowUp: TDateTimeField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1608' '#1587#1575#1593#1578' '#1662#1740#1711#1740#1585#1740' '#1605#1580#1583#1583
      FieldName = 'FollowUp'
      Required = True
    end
    object qryInterViewInterViewKind2: TWordField
      DisplayLabel = #1606#1608#1593' '#1605#1584#1575#1705#1585#1607
      FieldName = 'InterViewKind2'
      OnGetText = qryInterViewInterViewKind2GetText
    end
    object qryInterViewSuccessPercent: TFloatField
      FieldName = 'SuccessPercent'
    end
    object qryInterViewSatisfactionPercent: TFloatField
      FieldName = 'SatisfactionPercent'
    end
    object qryInterViewRowId: TIntegerField
      FieldName = 'RowId'
    end
    object qryInterViewlevels: TIntegerField
      FieldName = 'levels'
    end
    object qryInterViewFormCallName: TStringField
      FieldName = 'FormCallName'
      Size = 50
    end
    object qryInterViewFormCallID: TLargeintField
      FieldName = 'FormCallID'
    end
    object qryInterView_levels: TStringField
      FieldKind = fkLookup
      FieldName = '_levels'
      LookupDataSet = qryLookup
      LookupKeyFields = 'LookUpID'
      LookupResultField = 'Name'
      KeyFields = 'levels'
      Size = 200
      Lookup = True
    end
  end
  object srcInterView: TDataSource
    DataSet = qryInterView
    OnStateChange = srcInterViewStateChange
    Left = 614
    Top = 215
  end
  object qryCustomers: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryCustomersAfterScroll
    Parameters = <
      item
        Name = 'Cust'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        C.CustID, C.CustName, '#39'Tel: '#39' + ISNULL(C.Tel, '#39#39') ' +
        '+ '#39' Mobile: '#39' + ISNULL(C.Mobile, '#39#39') + '#39' Fax: '#39' + ISNULL(C.Fax, ' +
        #39#39') + '#39' : '#39' + ISNULL(C.Tel2, '#39#39') + '#39' : '#39' + ISNULL(C.Tel3, '#39#39') AS' +
        ' Tel, G.CustomerGrpName'
      'FROM            Customers AS C INNER JOIN'
      
        '                         CustomersGroup AS G ON C.CustomerGrpID ' +
        '= G.CustomerGrpID'
      'WHERE        (C.CustID =  :Cust )'
      '')
    Left = 300
    Top = 288
    object qryCustomersCustID: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'CustID'
    end
    object qryCustomersCustName: TStringField
      DisplayLabel = #1606#1575#1605
      FieldName = 'CustName'
      Size = 150
    end
    object qryCustomersTel: TWideStringField
      FieldName = 'Tel'
      ReadOnly = True
      Size = 161
    end
    object qryCustomersCustomerGrpName: TStringField
      FieldName = 'CustomerGrpName'
      Size = 80
    end
  end
  object srcCustomers: TDataSource
    DataSet = qryCustomers
    Left = 125
    Top = 5
  end
  object pmChange: TPopupMenu
    AutoHotkeys = maManual
    Left = 482
    Top = 273
    object N1: TMenuItem
      Caption = #1602#1591#1593#1610' '#1603#1585#1583#1606
      OnClick = N1Click
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcInterView
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 105
    Top = 243
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'CustID'
      FieldName = 'CustID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'InterViewKind'
      FieldName = 'InterViewKind'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'InterViewNo'
      FieldName = 'InterViewNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'InterViewDate'
      FieldName = 'InterViewDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'InterViewNote'
      FieldName = 'InterViewNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'Accost'
      FieldName = 'Accost'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'ModifyDate'
      FieldName = 'ModifyDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'InterViewStae'
      FieldName = 'InterViewStae'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'FirstUser'
      FieldName = 'FirstUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'FollowUp'
      FieldName = 'FollowUp'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'InterViewKind2'
      FieldName = 'InterViewKind2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'SuccessPercent'
      FieldName = 'SuccessPercent'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'SatisfactionPercent'
      FieldName = 'SatisfactionPercent'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'RowId'
      FieldName = 'RowId'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'levels'
      FieldName = 'levels'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'FormCallName'
      FieldName = 'FormCallName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'FormCallID'
      FieldName = 'FormCallID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = '_levels'
      FieldName = '_levels'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
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
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\RptCustomersInterView.rtm'
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
    Left = 224
    Top = 275
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 32279
      mmPrintPosition = 0
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
        mmLeft = 73025
        mmTop = 1058
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578'  '#1605#1584#1575#1603#1585#1575#1578' '#1576#1575' '#1605#1588#1578#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8424
        mmLeft = 76212
        mmTop = 8467
        mmWidth = 44958
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
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNo1'
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
        mmTop = 8467
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 24871
        mmWidth = 197379
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 185473
        mmTop = 26458
        mmWidth = 6615
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 169598
        mmTop = 26194
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1582#1575#1591#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 127000
        mmTop = 26194
        mmWidth = 37306
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1605#1578#1606' '#1610#1575#1583#1583#1575#1588#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 108479
        mmTop = 25929
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 125677
        mmTop = 25135
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 164836
        mmTop = 25135
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 181505
        mmTop = 25135
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        OnGetText = ppLabel5GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Label5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4995
        mmLeft = 77788
        mmTop = 18785
        mmWidth = 119063
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'InterViewNo'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5800
        mmLeft = 183886
        mmTop = 794
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'InterViewDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5800
        mmLeft = 166688
        mmTop = 794
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'Accost'
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
        mmLeft = 126736
        mmTop = 794
        mmWidth = 37306
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'InterViewNo'
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
        mmLeft = 1588
        mmTop = 794
        mmWidth = 123296
        BandType = 4
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 125677
        mmTop = 0
        mmWidth = 794
        BandType = 4
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 164836
        mmTop = 0
        mmWidth = 794
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 181505
        mmTop = 0
        mmWidth = 794
        BandType = 4
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 196850
        mmTop = 0
        mmWidth = 794
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 265
        mmTop = 0
        mmWidth = 794
        BandType = 4
        LayerName = Foreground
      end
      object pdbtxtInterViewStae: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'pdbtxtInterViewStae'
        OnGetText = pdbtxtInterViewStaeGetText
        Border.mmPadding = 0
        DataField = 'InterViewStae'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 9790
        mmTop = 794
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object pdbtxtInterViewKind: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'pdbtxtInterViewKind'
        OnGetText = pdbtxtInterViewKindGetText
        Border.mmPadding = 0
        DataField = 'InterViewKind'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 38894
        mmTop = 794
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object plblDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'plblDate'
        OnGetText = plblDateGetText
        Border.mmPadding = 0
        Caption = 'plblDate'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 76729
        mmTop = 1323
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 197379
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 794
      mmPrintPosition = 0
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
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
  object qryLookup: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT        LookUpID, Code, Name'
      'FROM            LookUps'
      'WHERE        (Kind IN'
      '                             (SELECT        LookUpID'
      
        '                                FROM            LookUps AS LookU' +
        'ps_1'
      
        '                                WHERE        (Kind = 0) AND (Cod' +
        'e = 450)))')
    Left = 132
    Top = 304
  end
end
