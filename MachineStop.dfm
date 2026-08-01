inherited MachineStopF: TMachineStopF
  Left = 392
  Top = 196
  Caption = #1578#1608#1602#1601#1575#1578' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
  ClientHeight = 401
  ClientWidth = 733
  OnClose = FormClose
  OnResize = FormResize
  ExplicitWidth = 749
  ExplicitHeight = 440
  TextHeight = 13
  inherited Bevel1: TBevel
    Left = -32
    Top = 347
    Width = 725
    Height = 15
    ExplicitLeft = -32
    ExplicitTop = 359
    ExplicitWidth = 741
    ExplicitHeight = 15
  end
  inherited Panel1: TPanel
    Width = 733
    ExplicitWidth = 741
    inherited Image1: TImage
      Left = 687
      ExplicitLeft = 687
    end
    inherited lblTopic0: TLabel
      Left = 567
      Width = 100
      Caption = #1578#1608#1602#1601#1575#1578' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
      ExplicitLeft = 567
      ExplicitWidth = 100
    end
    inherited lblTopic1: TLabel
      Left = 594
      Visible = False
      ExplicitLeft = 594
    end
  end
  inherited pnlDown: TPanel
    Top = 364
    Width = 733
    ExplicitTop = 376
    ExplicitWidth = 741
    inherited btnClose: TBitBtn
      Top = 4
      ExplicitTop = 4
    end
    object newPanel: TPanel
      Left = 510
      Top = 1
      Width = 230
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      Caption = '`'
      TabOrder = 1
      DesignSize = (
        230
        35)
      object BitBtn6: TBitBtn
        Left = 155
        Top = 3
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn9: TBitBtn
        Left = 77
        Top = 3
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn10: TBitBtn
        Left = 0
        Top = 3
        Width = 75
        Height = 25
        Action = DataSetDelete1
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object okPanel: TPanel
      Left = 348
      Top = 1
      Width = 154
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 356
      DesignSize = (
        154
        35)
      object BitBtn1: TBitBtn
        Left = 79
        Top = 3
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
        Left = 0
        Top = 3
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
    Tag = 111
    Left = 0
    Top = 183
    Width = 733
    Height = 181
    Align = alClient
    Ctl3D = True
    DataSource = srcMachineStop
    DrawingStyle = gdsClassic
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 2
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'StopDate'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = '_StopKind'
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OfTime'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TermTime'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StopNote'
        Width = 243
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MachineId'
        ReadOnly = True
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CustID'
        ReadOnly = True
        Visible = True
      end>
  end
  object pnlMaintenance: TPanel [4]
    Left = 0
    Top = 73
    Width = 733
    Height = 80
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 741
    object Label5: TLabel
      Left = 655
      Top = 32
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1582#1608#1583#1585#1608
    end
    object lblMaintenanceNo: TLabel
      Left = 654
      Top = 9
      Width = 77
      Height = 13
      Alignment = taRightJustify
      Caption = #1588#1605#1575#1585#1607' '#1583#1587#1578#1608#1585' '#1603#1575#1585
    end
    object lblLblsd1: TLabel
      Left = 655
      Top = 55
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = #1588#1605#1575#1585#1607' '#1575#1606#1578#1592#1575#1605#1610
    end
    object lblLblsd4: TLabel
      Left = 404
      Top = 55
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = #1662#1604#1575#1603' '#1575#1605#1608#1575#1604
    end
    object Label2: TLabel
      Left = 404
      Top = 32
      Width = 75
      Height = 13
      Alignment = taRightJustify
      Caption = #1605#1588#1582#1589#1575#1578' '#1582#1608#1583#1585#1608
    end
    object edtsd1: TDBEdit
      Left = 485
      Top = 52
      Width = 163
      Height = 19
      TabStop = False
      Color = clSilver
      Ctl3D = False
      DataField = 'sd1'
      DataSource = srcMaintenance
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object edt_StuffCode: TDBEdit
      Left = 485
      Top = 29
      Width = 163
      Height = 19
      TabStop = False
      Color = clSilver
      Ctl3D = False
      DataField = 'StuffCode'
      DataSource = srcMaintenance
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object edtMaintenanceNo: TDBEdit
      Left = 485
      Top = 6
      Width = 163
      Height = 19
      TabStop = False
      Color = clSilver
      Ctl3D = False
      DataField = 'MaintenanceNo'
      DataSource = srcMaintenance
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object edtsd2: TDBEdit
      Left = 32
      Top = 52
      Width = 366
      Height = 19
      TabStop = False
      Color = clSilver
      Ctl3D = False
      DataField = 'sd2'
      DataSource = srcMaintenance
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object edtc_StuffName: TDBEdit
      Left = 32
      Top = 29
      Width = 366
      Height = 19
      TabStop = False
      Color = clSilver
      Ctl3D = False
      DataField = 'c_StuffName'
      DataSource = srcMaintenance
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
  end
  object pnlFunctions: TPanel [5]
    Left = 0
    Top = 153
    Width = 733
    Height = 30
    Align = alTop
    TabOrder = 4
    ExplicitWidth = 741
    object Label6: TLabel
      Left = 655
      Top = 7
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1662#1585#1587#1606#1604
    end
    object Label7: TLabel
      Left = 404
      Top = 7
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = #1593#1606#1608#1575#1606
    end
    object edtPersonId: TDBEdit
      Left = 485
      Top = 4
      Width = 163
      Height = 19
      TabStop = False
      Color = clSilver
      Ctl3D = False
      DataField = 'PersonId'
      DataSource = srcFunctions
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtCustName: TDBEdit
      Left = 32
      Top = 5
      Width = 366
      Height = 19
      TabStop = False
      Color = clSilver
      Ctl3D = False
      DataField = 'CustName'
      DataSource = srcFunctions
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  inherited ActionList1: TActionList
    Left = 495
    Top = 14
    inherited DataSetPost1: TDataSetPost
      DataSource = srcMachineStop
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcMachineStop
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      DataSource = srcMachineStop
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcMachineStop
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      DataSource = srcMachineStop
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
    end
  end
  object qryMachineStop: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryMachineStopAfterInsert
    BeforePost = qryMachineStopBeforePost
    AfterPost = qryMachineStopAfterPost
    BeforeDelete = qryMachineStopBeforeDelete
    Parameters = <
      item
        Name = 'StopType'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     StopID, StopType, MaintenanceID, FunctionId, MachineI' +
        'd, CustID, StopDate, StopKind, OfTime, TermTime, StopNote'
      'FROM         Machin.MachineStop'
      'WHERE     (StopType = :StopType ) ')
    Left = 442
    Top = 233
    object qryMachineStopStopID: TAutoIncField
      FieldName = 'StopID'
      ReadOnly = True
    end
    object qryMachineStopStopDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'StopDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryMachineStopStopType: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1608#1602#1601
      FieldName = 'StopType'
    end
    object qryMachineStopStopKind: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1578#1608#1602#1601
      FieldName = 'StopKind'
      Required = True
    end
    object qryMachineStop_StopKind: TStringField
      DisplayLabel = #1606#1608#1593' '#1578#1608#1602#1601
      FieldKind = fkLookup
      FieldName = '_StopKind'
      LookupDataSet = qryLookUps
      LookupKeyFields = 'LookUpID'
      LookupResultField = 'Name'
      KeyFields = 'StopKind'
      Lookup = True
    end
    object qryMachineStopMaintenanceID: TIntegerField
      FieldName = 'MaintenanceID'
    end
    object qryMachineStopFunctionId: TIntegerField
      FieldName = 'FunctionId'
    end
    object qryMachineStopMachineId: TLargeintField
      DisplayLabel = #1603#1583' '#1583#1587#1578#1711#1575#1607
      FieldName = 'MachineId'
    end
    object qryMachineStopCustID: TIntegerField
      DisplayLabel = #1603#1583' '#1662#1585#1587#1606#1604'/'#1662#1610#1605#1575#1606#1603#1575#1585
      FieldName = 'CustID'
    end
    object qryMachineStopOfTime: TDateTimeField
      DisplayLabel = #1575#1586' '#1587#1575#1593#1578
      FieldName = 'OfTime'
      Required = True
      OnGetText = qryMachineStopOfTimeGetText
      EditMask = '!90:00;1;_'
    end
    object qryMachineStopTermTime: TDateTimeField
      DisplayLabel = #1605#1583#1578
      FieldName = 'TermTime'
      Required = True
      OnGetText = qryMachineStopOfTimeGetText
      EditMask = '!90:00;1;_'
    end
    object qryMachineStopStopNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'StopNote'
      Size = 200
    end
  end
  object srcMachineStop: TDataSource
    DataSet = qryMachineStop
    OnStateChange = srcMachineStopStateChange
    Left = 334
    Top = 271
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcMachineStop
    UserName = 'DBPipeline1'
    Left = 81
    Top = 283
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'StopID'
      FieldName = 'StopID'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'StopType'
      FieldName = 'StopType'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'MaintenanceID'
      FieldName = 'MaintenanceID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'FunctionId'
      FieldName = 'FunctionId'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'MachineId'
      FieldName = 'MachineId'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'CustID'
      FieldName = 'CustID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'StopDate'
      FieldName = 'StopDate'
      FieldLength = 10
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'StopKind'
      FieldName = 'StopKind'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'OfTime'
      FieldName = 'OfTime'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'TermTime'
      FieldName = 'TermTime'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'StopNote'
      FieldName = 'StopNote'
      FieldLength = 200
      DisplayWidth = 200
      Position = 10
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
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 200
    Top = 283
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
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
  object qryMaintenance: TADOQuery
    AutoCalcFields = False
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'MaintenanceID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT    Machin.Maintenance.MaintenanceID, Machin.Maintenance.M' +
        'aintenanceNo, Machin.Maintenance.StuffCode, StuffCoding.c_StuffN' +
        'ame, '
      'StuffCoding.sd1, StuffCoding.sd2,MaintenanceDate'
      'FROM         Machin.Maintenance INNER JOIN'
      
        '                      StuffCoding ON Machin.Maintenance.StuffCod' +
        'e = StuffCoding.c_StuffCode'
      'WHERE     (Machin.Maintenance.MaintenanceID = :MaintenanceID )')
    Left = 60
    Top = 5
    object qryMaintenanceMaintenanceID: TIntegerField
      FieldName = 'MaintenanceID'
    end
    object qryMaintenanceMaintenanceNo: TWordField
      FieldName = 'MaintenanceNo'
    end
    object qryMaintenanceStuffCode: TLargeintField
      FieldName = 'StuffCode'
    end
    object qryMaintenancec_StuffName: TStringField
      FieldName = 'c_StuffName'
      Size = 150
    end
    object qryMaintenancesd1: TStringField
      FieldName = 'sd1'
      Size = 64
    end
    object qryMaintenancesd2: TStringField
      FieldName = 'sd2'
      Size = 64
    end
    object qryMaintenanceMaintenanceDate: TStringField
      FieldName = 'MaintenanceDate'
      FixedChar = True
      Size = 10
    end
  end
  object srcMaintenance: TDataSource
    AutoEdit = False
    DataSet = qryMaintenance
    Left = 145
    Top = 6
  end
  object qryFunctions: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'FunctionId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     Tsh.Functions.FunctionId, Tsh.Functions.PersonId, Cus' +
        'tomers.CustName,FunctionDate ,MachineId'
      'FROM         Tsh.Functions INNER JOIN'
      
        '                      Customers ON Tsh.Functions.PersonId = Cust' +
        'omers.CustID'
      'WHERE     (Tsh.Functions.FunctionId = :FunctionId )')
    Left = 256
    Top = 16
    object qryFunctionsFunctionId: TIntegerField
      FieldName = 'FunctionId'
      Required = True
    end
    object qryFunctionsPersonId: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1585#1587#1606#1604' '
      FieldName = 'PersonId'
      Required = True
    end
    object qryFunctionsCustName: TStringField
      FieldName = 'CustName'
      Size = 120
    end
    object qryFunctionsFunctionDate: TStringField
      FieldName = 'FunctionDate'
      FixedChar = True
      Size = 10
    end
    object qryFunctionsMachineId: TLargeintField
      FieldName = 'MachineId'
    end
  end
  object srcFunctions: TDataSource
    DataSet = qryFunctions
    Left = 384
    Top = 24
  end
  object qryLookUps: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'Kind'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT LookUpID,Code, Name '
      'FROM LookUps '
      'WHERE Kind = :Kind')
    Left = 560
    Top = 256
  end
end
