inherited RelatedF: TRelatedF
  Left = 392
  Top = 196
  Caption = #1570#1606#1575#1604#1610#1586' '#1581#1587#1575#1576
  ClientHeight = 454
  ClientWidth = 767
  OnResize = FormResize
  ExplicitWidth = 783
  ExplicitHeight = 493
  TextHeight = 13
  inherited Bevel1: TBevel
    Left = -32
    Top = 400
    Width = 759
    Height = 15
    ExplicitLeft = -32
    ExplicitTop = 359
    ExplicitWidth = 741
    ExplicitHeight = 15
  end
  inherited Panel1: TPanel
    Width = 767
    Height = 53
    ExplicitWidth = 775
    ExplicitHeight = 53
    inherited Image1: TImage
      Left = 721
      ExplicitLeft = 687
    end
    inherited lblTopic0: TLabel
      Left = 637
      Width = 64
      Caption = #1570#1606#1575#1604#1610#1586' '#1581#1587#1575#1576
      ExplicitLeft = 637
      ExplicitWidth = 64
    end
    inherited lblTopic1: TLabel
      Left = 628
      Visible = False
      ExplicitLeft = 594
    end
  end
  inherited pnlDown: TPanel
    Top = 417
    Width = 767
    ExplicitTop = 429
    ExplicitWidth = 775
    inherited btnClose: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 5
      Height = 27
      Margins.Top = 4
      Margins.Bottom = 4
      Align = alLeft
      ExplicitLeft = 4
      ExplicitTop = 5
      ExplicitHeight = 27
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 5
      Width = 75
      Height = 27
      Margins.Top = 4
      Margins.Bottom = 4
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object btnSearch: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 5
      Width = 75
      Height = 27
      Margins.Top = 4
      Margins.Bottom = 4
      Action = actSearch
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 5
      Width = 77
      Height = 27
      Margins.Top = 4
      Margins.Bottom = 4
      Action = actExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 696
      Top = 6
      Width = 75
      Height = 25
      Margins.Top = 5
      Margins.Bottom = 5
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 4
    end
  end
  object grpPerson1: TGroupBox [3]
    Left = 0
    Top = 53
    Width = 767
    Height = 59
    Align = alTop
    Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610
    TabOrder = 2
    ExplicitWidth = 775
    object grdMaster: TDBGrid
      Left = 2
      Top = 15
      Width = 771
      Height = 42
      Align = alClient
      Ctl3D = False
      DataSource = srcMaster
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'FormCaption'
          Width = 156
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonID1'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustName'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'balance'
          Width = 138
          Visible = True
        end>
    end
  end
  object Panel2: TPanel [4]
    AlignWithMargins = True
    Left = 375
    Top = 153
    Width = 17
    Height = 261
    Align = alClient
    TabOrder = 3
    ExplicitWidth = 25
    ExplicitHeight = 273
    object btnAddRelated: TBitBtn
      Left = 1
      Top = 94
      Width = 23
      Height = 21
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E0000000100000001000010630000006B
        0000086B00000073000008730000007B0000107B000000840000088400001084
        0000008C0000088C00000094000008940000009C0000089C000000A5000008A5
        000000AD000000B5000000BD000000C6000008C6000000CE000000D6000008D6
        000008630800087B0800107B080010840800008C0800088C0800009408001094
        0800009C080000A5080000AD080000B5080010BD080010C60800087B1000107B
        1000187B10001084100018841000088C1000188C1000109410001894100010D6
        100018D61000107B1800187B18001884180029841800108C1800188C1800218C
        18001094180018941800189C1800219C180010C6180018C6180018D61800187B
        210018842100189421002194210029A521001873290029AD290031DE290029E7
        290029843100298C3100398C310029D6310031D6310039AD390042A5420039DE
        420042DE42004AAD520052AD520052E752005AE75A0063AD630063E763006BEF
        63006B946B0073B56B006BDE6B0063E76B006BE76B0063EF6B007BB5730073B5
        7B007BDE7B007BB5840084BD84008CC69400A5E7A500CEEFBD00BDEFC600C6EF
        C600C6EFCE00CEEFCE00D6F7CE00D6E7D600DEE7D600D6EFD600DEEFD600CEE7
        DE00D6EFDE00DEEFDE00DEEFE700EFF7EF00F7F7F700FF00FF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00777777777777
        774F2F777777777777777777777777774F39127777777777777777777777774F
        353D0E77777777777777777777774F2D080B0E777777777777777777774F2957
        440A1F13253F52555C1277774F345739071E0A10131416405822774F34574105
        071E0E121314151758214F41574B0507071E0C12131416175D104F46574C0305
        071E2012131416175E0F774F4157361B070C0C1013141617580E77774F335737
        070A0D241314164059207777774F2957430C0C12253F52566212777777774F2D
        080A0E7777777777777777777777774F383B2177777777777777777777777777
        4F3B0E77777777777777777777777777774F4477777777777777}
      Layout = blGlyphTop
      Margin = 1
      Spacing = 0
      TabOrder = 0
      OnClick = btnAddRelatedClick
    end
    object btnDelRelated: TBitBtn
      Left = 1
      Top = 139
      Width = 23
      Height = 21
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E0000000100000001000010630000006B
        0000086B00000073000008730000007B0000107B000000840000088400001084
        0000008C0000088C00000094000008940000009C0000089C000000A5000008A5
        000000AD000000B5000000BD000000C6000008C6000000CE000000D6000008D6
        000008630800087B0800107B080010840800008C0800088C0800009408001094
        0800009C080000A5080000AD080000B5080010BD080010C60800087B1000107B
        1000187B10001084100018841000088C1000188C1000109410001894100010D6
        100018D61000107B1800187B18001884180029841800108C1800188C1800218C
        18001094180018941800189C1800219C180010C6180018C6180018D61800187B
        210018842100189421002194210029A521001873290029AD290031DE290029E7
        290029843100298C3100398C310029D6310031D6310039AD390042A5420039DE
        420042DE42004AAD520052AD520052E752005AE75A0063AD630063E763006BEF
        63006B946B0073B56B006BDE6B0063E76B006BE76B0063EF6B007BB5730073B5
        7B007BDE7B007BB5840084BD84008CC69400A5E7A500CEEFBD00BDEFC600C6EF
        C600C6EFCE00CEEFCE00D6F7CE00D6E7D600DEE7D600D6EFD600DEEFD600CEE7
        DE00D6EFDE00DEEFDE00DEEFE700EFF7EF00F7F7F700FF00FF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00777777777777
        772F4F777777777777777777777777777712394F777777777777777777777777
        770E3D354F7777777777777777777777770E0B082D4F77777777125C55523F25
        131F0A4457294F777777225840161413100A1E073957344F7777215817151413
        120E1E07054157344F77105D17161413120C1E0707054B57414F0F5E17161413
        12201E0705034C57464F0E5817161413100C0C071B3657414F77205940161413
        240D0A073757334F7777126256523F25120C0C4357294F777777777777777777
        770E0A082D4F7777777777777777777777213B384F7777777777777777777777
        770E3B4F77777777777777777777777777444F77777777777777}
      Layout = blGlyphTop
      Margin = 1
      Spacing = 0
      TabOrder = 1
      OnClick = btnDelRelatedClick
    end
  end
  object pnlRelated: TPanel [5]
    Left = 0
    Top = 112
    Width = 767
    Height = 38
    Align = alTop
    ParentBackground = False
    TabOrder = 4
    ExplicitWidth = 775
    object BitBtn12: TBitBtn
      AlignWithMargins = True
      Left = 696
      Top = 6
      Width = 75
      Height = 26
      Margins.Top = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = #1570#1606#1575#1604#1610#1586' '#1605#1576#1604#1594
      TabOrder = 0
      OnClick = BitBtn12Click
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 6
      Width = 75
      Height = 26
      Margins.Top = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608#1740' '#1605#1576#1604#1594
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object Panel4: TPanel [6]
    AlignWithMargins = True
    Left = 398
    Top = 153
    Width = 366
    Height = 261
    Align = alRight
    TabOrder = 5
    ExplicitLeft = 406
    ExplicitHeight = 273
    object Label2: TLabel
      Left = 362
      Top = 1
      Width = 3
      Height = 13
      Align = alTop
    end
    object grdCustTranc: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 17
      Width = 358
      Height = 213
      Align = alClient
      Ctl3D = False
      DataSource = SrcCustTranc
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = btnAddRelatedClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ReciptNumber'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptDate'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptCaption'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Balance'
          Width = 108
          Visible = True
        end>
    end
    object smgrdCustTranc: TSumGrid
      AlignWithMargins = True
      Left = 4
      Top = 236
      Width = 358
      Height = 33
      Active = False
      Enable_Controls = True
      MasterGrid = grdCustTranc
      FieldsName = 'Balance;'
    end
  end
  object Panel5: TPanel [7]
    AlignWithMargins = True
    Left = 3
    Top = 153
    Width = 366
    Height = 261
    Align = alLeft
    TabOrder = 6
    ExplicitHeight = 273
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 121
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = #1662#1575#1587' '#1588#1583#1607' '#1607#1575' ('#1575#1602#1604#1575#1605' '#1605#1585#1578#1576#1591')'
    end
    object smgrdPassBy: TSumGrid
      AlignWithMargins = True
      Left = 4
      Top = 249
      Width = 358
      Active = False
      Enable_Controls = True
      MasterGrid = grdPassBy
      FieldsName = 'Balance;'
    end
    object grdPassBy: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 17
      Width = 358
      Height = 226
      Align = alClient
      Ctl3D = False
      DataSource = srcPassBy
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 1
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = btnDelRelatedClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ReciptNumber'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptDate'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptCaption'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Balance'
          Width = 114
          Visible = True
        end>
    end
  end
  inherited ActionList1: TActionList
    Left = 207
    Top = 22
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
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
    end
    object actOther: TAction
      Caption = #1587#1575#1610#1585
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
  end
  object srcPassBy: TDataSource
    DataSet = qryPassBy
    Left = 102
    Top = 207
  end
  object qryPassBy: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryPassByAfterOpen
    Parameters = <
      item
        Name = 'PersonIDFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonIDTo'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DateFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DateTo'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DateFromRemain'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearIDFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearIDTo'
        DataType = ftString
        Size = 4
        Value = '0'
      end
      item
        Name = 'SellsMethodFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SellsMethodTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SellsEmporiumFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SellsEmporiumTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT        RelatedID, AnalizeType, RelaID, ServerID, YearID, ' +
        'CustomerID1 AS PersonID1, FormID AS ReciptID, FormType AS recipt' +
        'Type, FormNumber AS ReciptNumber, '
      
        '                         FormDate AS ReciptDate, FormCaption AS ' +
        'ReciptCaption, FomNote AS ReciptNote, kind, bed + bes AS balance' +
        ', CustIDForShow AS StoreCustIDForShow, DefaultDate, '
      '                         FormItemID'
      
        'FROM            dbo.AllAccountReleted(10 ,-1 ,-1 ,-1 , :PersonID' +
        'From ,:PersonIDTo ,:DateFrom , :DateTo , :DateFromRemain , :Year' +
        'IDFrom , :YearIDTo  , :SellsMethodFrom ,'
      
        ' :SellsMethodTo , :SellsEmporiumFrom ,  :SellsEmporiumTo , DEFAU' +
        'LT ) AS AllAcc')
    Left = 87
    Top = 292
    object qryPassByPersonID1: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610
      FieldName = 'PersonID1'
    end
    object qryPassByReciptID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1606#1583#1607
      FieldName = 'ReciptID'
    end
    object qryPassByReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptNumber'
    end
    object qryPassByReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryPassByReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryPassByReciptNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ReciptNote'
      Size = 255
    end
    object qryPassBykind: TIntegerField
      DisplayLabel = #1606#1608#1593
      FieldName = 'kind'
    end
    object qryPassByBalance: TBCDField
      DisplayLabel = #1605#1575#1606#1583#1607
      FieldName = 'Balance'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryPassByreciptType: TIntegerField
      FieldName = 'reciptType'
    end
    object qryPassByStoreCustIDForShow: TIntegerField
      FieldName = 'StoreCustIDForShow'
    end
    object qryPassByServerID: TIntegerField
      FieldName = 'ServerID'
      ReadOnly = True
    end
    object qryPassByYearID: TIntegerField
      FieldName = 'YearID'
      ReadOnly = True
    end
    object qryPassByAnalizeType: TIntegerField
      DisplayLabel = #1606#1608#1593' '
      FieldName = 'AnalizeType'
      ReadOnly = True
    end
    object qryPassByRelaID: TIntegerField
      FieldName = 'RelaID'
      ReadOnly = True
    end
    object qryPassByRelatedID: TIntegerField
      DisplayLabel = #1593#1591#1601' '#1575#1585#1578#1576#1575#1591
      FieldName = 'RelatedID'
      ReadOnly = True
    end
    object qryPassByDefaultDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1580#1575#1606#1576#1610
      FieldName = 'DefaultDate'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object qryPassByFormItemID: TIntegerField
      FieldName = 'FormItemID'
      ReadOnly = True
    end
  end
  object SrcCustTranc: TDataSource
    DataSet = qryCustTranc
    Left = 536
    Top = 213
  end
  object qryCustTranc: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'PersonIDFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonIDTo'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DateFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'DateTo'
        DataType = ftString
        Size = 10
        Value = '9999/99/99'
      end
      item
        Name = 'DateFromRemain'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearIDFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearIDTo'
        DataType = ftString
        Size = 4
        Value = '0'
      end
      item
        Name = 'SellsMethodFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SellsMethodTo'
        DataType = ftWideString
        Size = 5
        Value = '99999'
      end
      item
        Name = 'SellsEmporiumFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'SellsEmporiumTo'
        DataType = ftWideString
        Size = 5
        Value = '99999'
      end>
    SQL.Strings = (
      
        'SELECT        RelatedID, AnalizeType, RelaID, ServerID, YearID, ' +
        'CustomerID1 AS PersonID1, FormID AS ReciptID, FormType AS recipt' +
        'Type, FormNumber AS ReciptNumber, '
      
        '                         FormDate AS ReciptDate, FormCaption AS ' +
        'ReciptCaption, FomNote AS ReciptNote, kind, bed + bes AS balance' +
        ', CustIDForShow AS StoreCustIDForShow, DefaultDate, '
      '                         FormItemID,RelatedKind'
      
        'FROM            dbo.AllAccountReleted(10 ,-1 ,-1 ,-1 , :PersonID' +
        'From ,:PersonIDTo ,:DateFrom , :DateTo , :DateFromRemain , :Year' +
        'IDFrom , :YearIDTo  , :SellsMethodFrom ,'
      
        ' :SellsMethodTo , :SellsEmporiumFrom ,  :SellsEmporiumTo , DEFAU' +
        'LT ) AS AllAcc'
      ''
      '')
    Left = 535
    Top = 292
    object qryCustTrancPersonID1: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610
      FieldName = 'PersonID1'
    end
    object qryCustTrancReciptID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1606#1583#1607
      FieldName = 'ReciptID'
    end
    object qryCustTrancReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptNumber'
    end
    object qryCustTrancReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryCustTrancReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryCustTrancReciptNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ReciptNote'
      Size = 255
    end
    object qryCustTranckind: TIntegerField
      DisplayLabel = #1606#1608#1593
      FieldName = 'kind'
    end
    object qryCustTrancBalance: TBCDField
      DisplayLabel = #1605#1575#1606#1583#1607
      FieldName = 'Balance'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryCustTrancreciptType: TIntegerField
      FieldName = 'reciptType'
    end
    object qryCustTrancStoreCustIDForShow: TIntegerField
      FieldName = 'StoreCustIDForShow'
    end
    object qryCustTrancServerID: TIntegerField
      FieldName = 'ServerID'
      ReadOnly = True
    end
    object qryCustTrancYearID: TIntegerField
      FieldName = 'YearID'
      ReadOnly = True
    end
    object qryCustTrancAnalizeType: TIntegerField
      DisplayLabel = #1606#1608#1593' '
      FieldName = 'AnalizeType'
      ReadOnly = True
    end
    object qryCustTrancRelaID: TIntegerField
      FieldName = 'RelaID'
      ReadOnly = True
    end
    object qryCustTrancRelatedID: TIntegerField
      DisplayLabel = #1593#1591#1601' '#1575#1585#1578#1576#1575#1591
      FieldName = 'RelatedID'
      ReadOnly = True
    end
    object qryCustTrancDefaultDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1580#1575#1606#1576#1610
      FieldName = 'DefaultDate'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object qryCustTrancFormItemID: TIntegerField
      FieldName = 'FormItemID'
      ReadOnly = True
    end
    object qryCustTrancRelatedKind: TIntegerField
      FieldName = 'RelatedKind'
    end
  end
  object qryMaster: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'PersonIDFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonIDTo'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT        AllAcc.FormCaption, AllAcc.CustomerID1 AS PersonID' +
        '1, Customers.CustName, AllAcc.bed + AllAcc.bes AS balance, AllAc' +
        'c.ServerID, AllAcc.YearID, '
      
        '                         AllAcc.FormID AS ReciptID, AllAcc.FormN' +
        'umber AS ReciptNumber, AllAcc.kind, AllAcc.FormItemID, AllAcc.be' +
        'd, AllAcc.bes'
      '                         , AllAcc.RelaID,  1 AS  AnalizeType'
      '   ,AllAcc.RelatedID'
      
        'FROM            dbo.AllAccountReleted(10 ,-1 ,-1 ,-1 , :PersonID' +
        'From ,:PersonIDTo , DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT,' +
        ' DEFAULT, DEFAULT, DEFAULT, DEFAULT , DEFAULT ) '
      '                         AS AllAcc INNER JOIN'
      
        '                         Customers ON AllAcc.CustomerID1 = Custo' +
        'mers.CustID'
      ''
      '')
    Left = 351
    Top = 20
    object qryMasterFormCaption: TStringField
      DisplayLabel = #1606#1608#1593' '#1601#1585#1605
      FieldName = 'FormCaption'
      Size = 70
    end
    object qryMasterPersonID1: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610
      FieldName = 'PersonID1'
      ReadOnly = True
    end
    object qryMasterCustName: TStringField
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610
      FieldName = 'CustName'
      Size = 120
    end
    object qryMasterbalance: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'balance'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryMasterServerID: TIntegerField
      FieldName = 'ServerID'
      ReadOnly = True
    end
    object qryMasterYearID: TIntegerField
      FieldName = 'YearID'
      ReadOnly = True
    end
    object qryMasterReciptID: TIntegerField
      FieldName = 'ReciptID'
      ReadOnly = True
    end
    object qryMasterReciptNumber: TIntegerField
      FieldName = 'ReciptNumber'
      ReadOnly = True
    end
    object qryMasterkind: TIntegerField
      FieldName = 'kind'
      ReadOnly = True
    end
    object qryMasterFormItemID: TIntegerField
      FieldName = 'FormItemID'
      ReadOnly = True
    end
    object qryMasterbed: TBCDField
      FieldName = 'bed'
      Precision = 19
    end
    object qryMasterbes: TBCDField
      FieldName = 'bes'
      Precision = 19
    end
    object qryMasterRelaID: TIntegerField
      FieldName = 'RelaID'
    end
    object qryMasterAnalizeType: TIntegerField
      FieldName = 'AnalizeType'
    end
    object qryMasterRelatedID: TIntegerField
      FieldName = 'RelatedID'
    end
  end
  object srcMaster: TDataSource
    DataSet = qryMaster
    Left = 464
    Top = 21
  end
end
