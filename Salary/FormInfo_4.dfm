inherited FormInfo_4F: TFormInfo_4F
  Left = 461
  Top = 205
  Caption = 'FormInfo_4F'
  ClientHeight = 633
  ClientWidth = 844
  OnResize = FormResize
  ExplicitWidth = 860
  ExplicitHeight = 672
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 592
    Width = 844
    ExplicitTop = 593
    ExplicitWidth = 848
    object newPanel: TPanel
      Left = 595
      Top = 0
      Width = 253
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        253
        39)
      object BitBtn3: TBitBtn
        Left = 168
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 91
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 14
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
      Left = 425
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 430
      ExplicitTop = 0
      ExplicitHeight = 41
      DesignSize = (
        165
        39)
      object BitBtn7: TBitBtn
        Left = 88
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
        Left = 10
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
    object BitBtn1: TBitBtn
      Left = 94
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      Left = 172
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      Left = 249
      Top = 8
      Width = 89
      Height = 25
      Action = actSendToExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    Width = 844
    ExplicitWidth = 848
    inherited ImgTemplate: TImage
      Left = 810
      ExplicitLeft = 810
    end
    inherited lblCaption: TLabel
      Left = 740
      Height = 16
      ExplicitLeft = 740
    end
    object PnlRecall: TPanel
      Left = 0
      Top = 0
      Width = 393
      Height = 53
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object DBText1: TDBText
        Left = 8
        Top = 8
        Width = 182
        Height = 17
        Color = 13948116
        DataField = 'InfoName_L1'
        DataSource = SrcMaster
        ParentColor = False
        Transparent = False
      end
      object SpeedButton1: TSpeedButton
        Left = 192
        Top = 5
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object LblPerson1: TLabel
        Left = 276
        Top = 9
        Width = 105
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1587#1591#1581' '#1602#1576#1604#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBNavigator1: TDBNavigator
        Left = 6
        Top = 29
        Width = 180
        Height = 18
        DataSource = SrcMaster
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 216
        Top = 6
        Width = 57
        Height = 21
        DataField = 'FormInfoID'
        DataSource = SrcMaster
        TabOrder = 1
      end
    end
  end
  inherited Panel3: TPanel
    Width = 521
    Height = 539
    ExplicitWidth = 422
    ExplicitHeight = 366
    object Label1: TLabel
      Left = 431
      Top = 17
      Width = 11
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1603#1583
      FocusControl = DBEdit2
      ExplicitLeft = 332
    end
    object LblInfoName_L1: TLabel
      Left = 431
      Top = 49
      Width = 64
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'InfoName_L1'
      FocusControl = DBEdit3
      ExplicitLeft = 332
    end
    object LblInfoName_L2: TLabel
      Left = 431
      Top = 81
      Width = 64
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'InfoName_L2'
      FocusControl = DBEdit4
      ExplicitLeft = 332
    end
    object lblAmount: TLabel
      Left = 431
      Top = 113
      Width = 47
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1602#1583#1575#1585' '#1579#1575#1576#1578
      FocusControl = DBEdit5
      ExplicitLeft = 332
    end
    object Label5: TLabel
      Left = 431
      Top = 145
      Width = 48
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1590#1585#1610#1576'('#1585#1608#1586')'#8207
      FocusControl = DBEdit6
      ExplicitLeft = 332
    end
    object Label6: TLabel
      Left = 431
      Top = 177
      Width = 66
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1590#1585#1610#1576'('#1587#1575#1593#1578')'#8207
      FocusControl = DBEdit7
      ExplicitLeft = 332
    end
    object lblTaxCode: TLabel
      Left = 112
      Top = 17
      Width = 42
      Height = 13
      Caption = #1603#1583' '#1605#1575#1604#1610#1575#1578
    end
    object TabControl1: TTabControl
      Left = 2
      Top = 262
      Width = 521
      Height = 276
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      Tabs.Strings = (
        #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1602#1608#1602' '#1606#1608#1593' 1'
        #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1602#1608#1602' '#1606#1608#1593' 2')
      TabIndex = 0
      OnChange = TabControl1Change
      object DBGrid2: TDBGrid
        Tag = 111
        Left = 4
        Top = 24
        Width = 509
        Height = 212
        Align = alClient
        Color = clCream
        DataSource = SrcWage
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
            FieldName = 'FormInfoID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InfoID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InfoName_L1'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InfoName_L2'
            Width = 100
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 4
        Top = 236
        Width = 509
        Height = 35
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 154
        ExplicitWidth = 414
        object BitBtn10: TBitBtn
          Left = 412
          Top = 1
          Width = 104
          Height = 33
          Align = alRight
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
          TabOrder = 0
          OnClick = BitBtn10Click
          ExplicitLeft = 324
          ExplicitTop = 6
          ExplicitHeight = 25
        end
      end
    end
    object DBEdit2: TDBEdit
      Left = 320
      Top = 13
      Width = 105
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'InfoID'
      DataSource = srcFormInfo
      TabOrder = 2
      ExplicitLeft = 225
    end
    object DBEdit3: TDBEdit
      Left = 112
      Top = 45
      Width = 313
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'InfoName_L1'
      DataSource = srcFormInfo
      TabOrder = 3
      ExplicitLeft = 17
    end
    object DBEdit4: TDBEdit
      Left = 112
      Top = 77
      Width = 313
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'InfoName_L2'
      DataSource = srcFormInfo
      TabOrder = 4
      ExplicitLeft = 17
    end
    object DBEdit5: TDBEdit
      Left = 320
      Top = 109
      Width = 105
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'Amount'
      DataSource = srcFormInfo
      TabOrder = 5
      ExplicitLeft = 225
    end
    object DBEdit6: TDBEdit
      Left = 320
      Top = 141
      Width = 105
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'StandardDays'
      DataSource = srcFormInfo
      TabOrder = 6
      ExplicitLeft = 225
    end
    object DBEdit7: TDBEdit
      Left = 320
      Top = 173
      Width = 105
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'StandardTimes'
      DataSource = srcFormInfo
      TabOrder = 7
      ExplicitLeft = 225
    end
    object pnlMaxDayTime: TPanel
      Left = 6
      Top = 130
      Width = 185
      Height = 66
      BevelInner = bvLowered
      BevelWidth = 3
      TabOrder = 8
      object Label15: TLabel
        Left = 110
        Top = 11
        Width = 49
        Height = 13
        Caption = #1581#1583#1575#1603#1579#1585'  '#1585#1608#1586
      end
      object Label16: TLabel
        Left = 110
        Top = 44
        Width = 64
        Height = 13
        Caption = #1581#1583#1575#1603#1579#1585' '#1587#1575#1593#1578
      end
      object DBEdit15: TDBEdit
        Left = 11
        Top = 7
        Width = 95
        Height = 21
        DataField = 'MaxDay'
        DataSource = srcFormInfo
        TabOrder = 0
      end
      object DBEdit16: TDBEdit
        Left = 11
        Top = 38
        Width = 95
        Height = 21
        DataField = 'MaxTime'
        DataSource = srcFormInfo
        TabOrder = 1
      end
    end
    object edtTaxCode: TDBEdit
      Left = 18
      Top = 13
      Width = 89
      Height = 21
      DataField = 'TaxCode'
      DataSource = srcFormInfo
      TabOrder = 1
    end
    object Panel4: TPanel
      Left = 2
      Top = 230
      Width = 517
      Height = 32
      Align = alBottom
      TabOrder = 9
      ExplicitLeft = 0
      ExplicitTop = 141
      ExplicitWidth = 422
      object BitBtn9: TBitBtn
        Left = 19
        Top = 3
        Width = 91
        Height = 25
        Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
        TabOrder = 0
        OnClick = BitBtn9Click
      end
    end
    object dbchkSalaryIDinDocActive: TDBCheckBox
      Left = 317
      Top = 200
      Width = 108
      Height = 17
      CustomHint = DmF.BalloonHint1
      Alignment = taLeftJustify
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = #1583#1585' '#1587#1606#1583' '#1606#1605#1575#1740#1588' '#1588#1608#1583
      DataField = 'SalaryIDinDocActive'
      DataSource = srcFormInfo
      ParentBiDiMode = False
      TabOrder = 10
      ValueChecked = '1'
      ValueUnchecked = '0'
      ExplicitLeft = 325
    end
  end
  object DBGrid1: TDBGrid [3]
    Tag = 111
    Left = 521
    Top = 53
    Width = 323
    Height = 539
    Align = alRight
    Color = clCream
    DataSource = srcFormInfo
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FormInfoID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InfoName_L1'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InfoName_L2'
        Width = 100
        Visible = True
      end>
  end
  inherited ActionList: TActionList
    Left = 568
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcFormInfo
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcFormInfo
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcFormInfo
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcFormInfo
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcFormInfo
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 600
  end
  object qryFormInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterInsert = qryFormInfoAfterInsert
    BeforePost = qryFormInfoBeforePost
    AfterPost = qryFormInfoAfterPost
    BeforeDelete = qryFormInfoBeforeDelete
    AfterDelete = qryFormInfoAfterDelete
    AfterScroll = qryFormInfoAfterScroll
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 7
      end
      item
        Name = 'PrvInfoID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      #13'SELECT     *'
      'FROM Pay.FormsInfo'
      
        'WHERE     (FormType = :FormType ) AND (PrvInfoID = isnull(:PrvIn' +
        'foID ,0))')
    Left = 152
    Top = 37
    object qryFormInfoFormInfoID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'FormInfoID'
    end
    object qryFormInfoInfoName_L1: TStringField
      Tag = 3
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryFormInfoInfoName_L2: TStringField
      Tag = 3
      FieldName = 'InfoName_L2'
      Size = 100
    end
    object qryFormInfoFormType: TIntegerField
      FieldName = 'FormType'
    end
    object qryFormInfoInfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qryFormInfoPrvInfoID: TIntegerField
      FieldName = 'PrvInfoID'
    end
    object qryFormInfoAmount: TBCDField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1579#1575#1576#1578
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryFormInfoAmount2: TBCDField
      FieldName = 'Amount2'
      currency = True
      Precision = 19
    end
    object qryFormInfoCoefficient: TFloatField
      FieldName = 'Coefficient'
    end
    object qryFormInfoStandardDays: TFloatField
      DisplayLabel = #1590#1585#1610#1576'('#1585#1608#1586')'#8207
      FieldName = 'StandardDays'
    end
    object qryFormInfoStandardTimes: TFloatField
      DisplayLabel = #1590#1585#1610#1576'('#1587#1575#1593#1578')'#8207
      FieldName = 'StandardTimes'
    end
    object qryFormInfoAccTopicCode: TIntegerField
      FieldName = 'AccTopicCode'
    end
    object qryFormInfoAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qryFormInfoAccCTopicode: TIntegerField
      FieldName = 'AccCTopiccode'
    end
    object qryFormInfoAccCTopicode2: TIntegerField
      FieldName = 'AccCTopiccode2'
    end
    object qryFormInfoRecallFormInfoID1: TStringField
      FieldName = 'RecallFormInfoID1'
      Size = 150
    end
    object qryFormInfoRecallFormInfoID2: TStringField
      FieldName = 'RecallFormInfoID2'
      Size = 150
    end
    object qryFormInfoMaxDay: TFloatField
      FieldName = 'MaxDay'
    end
    object qryFormInfoMaxTime: TFloatField
      FieldName = 'MaxTime'
    end
    object qryFormInfoTaxCode: TWordField
      FieldName = 'TaxCode'
    end
    object qryFormInfoSalaryIDinDocActive: TWordField
      FieldName = 'SalaryIDinDocActive'
    end
  end
  object srcFormInfo: TDataSource
    DataSet = qryFormInfo
    OnStateChange = srcFormInfoStateChange
    Left = 48
    Top = 101
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
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM Pay.FormTypes'
      'WHERE     (FormType= :FormType)')
    Left = 464
    Top = 80
  end
  object qryMaster: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterScroll = qryMasterAfterScroll
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 7
      end>
    SQL.Strings = (
      
        'SELECT     FormInfoID, FormType, InfoID, InfoName_L1, InfoName_L' +
        '2'
      'FROM Pay.FormsInfo'
      'WHERE   FormType = :FormType')
    Left = 224
    Top = 53
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
      Size = 100
    end
    object qryMasterInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 100
    end
  end
  object SrcMaster: TDataSource
    DataSet = qryMaster
    Left = 152
    Top = 109
  end
  object qryWage: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterInsert = qryFormInfoAfterInsert
    AfterPost = qryFormInfoAfterPost
    BeforeDelete = qryFormInfoBeforeDelete
    AfterDelete = qryFormInfoAfterDelete
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 80
    Top = 333
    object qryWageFormInfoID: TIntegerField
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'FormInfoID'
    end
    object qryWageInfoID: TIntegerField
      DisplayLabel = #1603#1583' '
      FieldName = 'InfoID'
    end
    object qryWageInfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1586#1575#1610#1575' '
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryWageInfoName_L2: TStringField
      DisplayLabel = 'WageCaption'
      FieldName = 'InfoName_L2'
      Size = 255
    end
  end
  object SrcWage: TDataSource
    DataSet = qryWage
    OnStateChange = srcFormInfoStateChange
    Left = 152
    Top = 341
  end
  object ADOQuery1: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterInsert = qryFormInfoAfterInsert
    AfterPost = qryFormInfoAfterPost
    BeforeDelete = qryFormInfoBeforeDelete
    AfterDelete = qryFormInfoAfterDelete
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     Pay.FormsInfo.FormInfoID, Pay.FormsInfo.InfoID, Pay.F' +
        'ormsInfo.InfoName_L1, Pay.FormsInfo.InfoName_L2, Pay.FormTypes.S' +
        'alaryKind'
      'FROM         Pay.FormsInfo INNER JOIN'
      
        '                      Pay.FormTypes ON Pay.FormsInfo.FormType = ' +
        'Pay.FormTypes.FormType'
      'WHERE     (Pay.FormTypes.SalaryKind BETWEEN 1 AND 4)')
    Left = 344
    Top = 341
    object IntegerField1: TIntegerField
      FieldName = 'FormInfoID'
    end
    object IntegerField2: TIntegerField
      FieldName = 'InfoID'
    end
    object StringField1: TStringField
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object StringField2: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object WordField1: TWordField
      FieldName = 'SalaryKind'
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = SrcMaster
    UserName = 'DBPipeline1'
    Left = 560
    Top = 137
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\PersonelDecExtinfo.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
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
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 672
    Top = 144
    Version = '22.02'
    mmColumnWidth = 266300
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 29633
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        ParentWidth = True
        mmHeight = 8202
        mmLeft = 0
        mmTop = 21431
        mmWidth = 266701
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
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
        mmLeft = 103717
        mmTop = 0
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8467
        mmLeft = 110861
        mmTop = 6350
        mmWidth = 41010
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
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
        mmLeft = 9790
        mmTop = 4233
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
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
        mmTop = 9525
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = ':'#1603#1583' '#1608#1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5969
        mmLeft = 241354
        mmTop = 14552
        mmWidth = 24553
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'FormInfoID'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5292
        mmLeft = 228071
        mmTop = 14817
        mmWidth = 12435
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 213519
        mmTop = 21431
        mmWidth = 3440
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 246592
        mmTop = 21431
        mmWidth = 3440
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'InfoName_L1'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5292
        mmLeft = 178859
        mmTop = 14817
        mmWidth = 48948
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
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
        mmHeight = 5292
        mmLeft = 250032
        mmTop = 22754
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 217223
        mmTop = 22754
        mmWidth = 32279
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1575#1585#1583#1610#1576#1607#1588#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 6085
        mmLeft = 202407
        mmTop = 22754
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4763
        mmLeft = 175684
        mmTop = 3440
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentWidth = False
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline1
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'Letter'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 215900
          PrinterSetup.mmPaperWidth = 279401
          PrinterSetup.PaperSize = 1
          Version = '22.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline1'
          object ppDetailBand4: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppLine12: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line12'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 263261
              mmTop = 0
              mmWidth = 3440
              BandType = 4
              LayerName = Foreground
            end
            object ppLine9: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line9'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6879
              mmLeft = 0
              mmTop = 0
              mmWidth = 265
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText2: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataPipeline = ppDBPipeline1
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 4763
              mmLeft = 202407
              mmTop = 794
              mmWidth = 14023
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText4: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText4'
              Border.mmPadding = 0
              DataField = 'namelast_l1'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5292
              mmLeft = 217223
              mmTop = 264
              mmWidth = 32279
              BandType = 4
              LayerName = Foreground
            end
            object ppLine13: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line13'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 213519
              mmTop = 0
              mmWidth = 3440
              BandType = 4
              LayerName = Foreground
            end
            object ppLine11: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line11'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 246592
              mmTop = 0
              mmWidth = 3440
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText3: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText3'
              Border.mmPadding = 0
              DataField = 'PersonelNo'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5292
              mmLeft = 250561
              mmTop = 265
              mmWidth = 15346
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 16669
            mmPrintPosition = 0
            object ppShape1: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape1'
              mmHeight = 7673
              mmLeft = 0
              mmTop = 265
              mmWidth = 266701
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel10: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label10'
              Border.mmPadding = 0
              Caption = #1580#1605#1593' '#1603#1604':'#8207
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 5556
              mmLeft = 255588
              mmTop = 794
              mmWidth = 10319
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataPipeline = ppDBPipeline1
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5556
              mmLeft = 215636
              mmTop = 1058
              mmWidth = 14023
              BandType = 7
              LayerName = Foreground
            end
            object ppLine3: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line3'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7673
              mmLeft = 213519
              mmTop = 265
              mmWidth = 3440
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
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'FormInfoID'
      DataPipeline = ppDBPipeline2
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = SrcWage
    UserName = 'DBPipeline2'
    Left = 640
    Top = 225
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'FormInfoID'
      FieldName = 'FormInfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'InfoID'
      FieldName = 'InfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'InfoName_L1'
      FieldName = 'InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = 'InfoName_L2'
      FieldName = 'InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
  end
end
