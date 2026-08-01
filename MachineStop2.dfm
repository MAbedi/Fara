inherited MachineStop2F: TMachineStop2F
  Caption = #1578#1608#1602#1601#1575#1578' '#1583#1587#1578#1711#1575#1607' '#1607#1575
  ClientHeight = 517
  ClientWidth = 883
  OnResize = FormResize
  ExplicitWidth = 895
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    Width = 883
    ExplicitWidth = 883
    object OkPanel: TPanel
      Left = 724
      Top = 1
      Width = 158
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        158
        39)
      object btnDataSetPost1: TBitBtn
        Left = 78
        Top = 6
        Width = 75
        Height = 27
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
      object btn3: TBitBtn
        Left = 3
        Top = 6
        Width = 75
        Height = 27
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
    object btnSort: TBitBtn
      Left = 79
      Top = 7
      Width = 75
      Height = 27
      Action = actSort
      Caption = #1578#1585#1578#1740#1576
      TabOrder = 2
    end
    object btnSearch_: TBitBtn
      Left = 154
      Top = 7
      Width = 75
      Height = 27
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 3
    end
    object btnSendExel: TBitBtn
      Left = 229
      Top = 7
      Width = 75
      Height = 27
      Action = actSendExel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 4
    end
    object btnPrint: TBitBtn
      Left = 304
      Top = 7
      Width = 75
      Height = 27
      Action = actPrint
      Caption = #1670#1575#1662
      TabOrder = 5
    end
    object btnOtherMenu: TBitBtn
      Left = 379
      Top = 7
      Width = 25
      Height = 27
      Hint = #1587#1575#1610#1585' '#1575#1605#1603#1575#1606#1575#1578
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000BEBEBEBEBEBE
        BEBEBEBABDBDBDBDBDBCBDBDC9C1C12E8D900065660466650072729EB4B4CCC3
        C3B9BCBCBEBEBEBEBEBEBEBEBEBEBEBEBBBDBDC6C1C1C0BEBEBABCBCC9C2C32E
        8770005948024646015758217C7CA4B5B5C7C1C1BBBDBDBEBEBEBEBEBEBCBDBD
        D0C4C44D97979AB2B2C7C1C0C5C1C4308661169145094F27002E2C005152207C
        7CA5B6B6C9C2C2BCBDBDBABCBCC6C0C0569C9C0074731D8080A4B6B5D2C6C729
        847427B25C47C9660F532B012F2C0057582081809DB3B3C6C0C0B9BCBCCAC2C2
        258481004E4D0055541F7A7AB1BABA368B8C199F525EF38643C8690A4624023A
        390067678BAEADCAC1C1BABDBAC7C0C63B9253004A1E033232004949227E7E0E
        6E5E2AAD5858ED8562FE96208538003123015E628FB0AFC9C1C1BABDBBC7C1C6
        409D4D169D390A5723012D26004045086D3341CF6B57F08A5DF69338BE560841
        2900575D8FB1AFC9C1C1BABDBAC8C1C73F9D5023BD5029B35107541C024B152C
        AD4F4AE37B50E88257EF8B3BC65A0B492F00585E8FB0AFC9C1C1BABDBAC8C1C7
        3D9A4B1EB64636D06824AA4924A8453CD26C45DF7A49E17C52EB8634BA520954
        3C01616690B0AEC9C1C1BABDBAC8C1C73C994818B03C2FC65D31C96235CD6839
        D16C40D77244DB764CE6811C8934025B4B006F738BAEADCAC1C1BABDBAC8C1C7
        3A974413AB3129C0502CC35931C96334CC6738D16B41DB7631BE5309673E0069
        686AA2A2B9BCBCBFBEBEBABDBAC8C1C837953F0DA62723BB4426BD4B2BC45730
        C86134CC6731C45B0E602901443F0068699EB3B3CEC3C3BABCBCB9BDBAC8C2C8
        35923A08A11B1CB4371FB73E25BD4A2BC35531C86130C65F0E6627002C250148
        4A217776A4B5B5C9C2C2B9BDBAC8C2C8329037029B1017AE2B19B0331FB63F25
        BC4A2BC25530C8612BB9570C6327002F2900474A227B7A9DB3B3B9BCB9C9C2C8
        308F2F00980211AB1C14AE261AB53220BA3F27C04A2DC75634D0642FC05A0F73
        3303514800656785ABABB9BCBAC9C2C52F8757007629057E33047E35057F3807
        803B09823E0A84410B84440E8A4907793B006D5F6B9DA0BABDBC}
      Layout = blGlyphRight
      Style = bsWin31
      TabOrder = 6
    end
    object NewPanel: TPanel
      Left = 490
      Top = 1
      Width = 234
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 7
      DesignSize = (
        234
        39)
      object btn4: TBitBtn
        Left = 154
        Top = 6
        Width = 75
        Height = 27
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object btn5: TBitBtn
        Left = 79
        Top = 6
        Width = 75
        Height = 27
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object btn6: TBitBtn
        Left = 4
        Top = 6
        Width = 75
        Height = 27
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
  end
  inherited Panel2: TPanel
    Width = 883
    ExplicitWidth = 883
    inherited ImgTemplate: TImage
      Left = 878
      ExplicitLeft = 878
    end
    inherited lblCaption: TLabel
      Left = 761
      Height = 16
      ExplicitLeft = 761
    end
    object pnlDate: TPanel
      Left = 1
      Top = 1
      Width = 184
      Height = 51
      Align = alLeft
      TabOrder = 0
      object lbl1: TLabel
        Left = 137
        Top = 16
        Width = 21
        Height = 13
        Caption = #1578#1575#1585#1740#1582
      end
      object btnDateFillter: TSpeedButton
        Left = 35
        Top = 12
        Width = 23
        Height = 23
        Caption = '...'
        OnClick = btnDateFillterClick
      end
      object medtDate: TMaskEdit
        Left = 59
        Top = 13
        Width = 72
        Height = 21
        EditMask = '99/99/00;1;_'
        MaxLength = 8
        ReadOnly = True
        TabOrder = 0
        Text = '  /  /  '
      end
    end
  end
  inherited Panel3: TPanel
    Width = 883
    Height = 423
    ExplicitWidth = 883
    object pgc1: TPageControl
      Left = 2
      Top = 2
      Width = 879
      Height = 418
      ActivePage = ts1
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 420
      object ts1: TTabSheet
        Caption = #1578#1608#1602#1601#1575#1578
        object lbl2: TLabel
          Left = 477
          Top = 104
          Width = 50
          Height = 13
          Caption = #1606#1575#1605' '#1583#1587#1578#1711#1575#1607
        end
        object GridStop: TDBGrid
          Left = 0
          Top = 0
          Width = 871
          Height = 392
          Align = alClient
          DataSource = srcStop
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnEditButtonClick = GridStopEditButtonClick
          Columns = <
            item
              Expanded = False
              FieldName = 'StopDate'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'StopKind'
              PickList.Strings = (
                '1'
                '2'
                '3')
              Width = 38
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'MachineId'
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_StuffName'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TermTime'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Amount1'
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Amount2'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Amount3'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_StopName'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OperatorName'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'StopNote'
              Width = 84
              Visible = True
            end>
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 416
    Top = 0
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcStop
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcStop
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcStop
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcStop
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcStop
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1740#1576
      OnExecute = actSortExecute
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 264
    Top = 409
  end
  object srcStop: TDataSource
    DataSet = qryStop
    OnStateChange = srcStopStateChange
    Left = 192
    Top = 128
  end
  object qryStop: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryStopAfterInsert
    BeforePost = qryStopBeforePost
    AfterPost = qryStopAfterPost
    BeforeDelete = qryStopBeforeDelete
    AfterDelete = qryStopAfterDelete
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     StopType, MachineId, StopDate, StopKind, TermTime, St' +
        'opNote, Amount1, Amount2, Amount3, OperatorName, Stopid'
      'FROM         Machin.MachineStop')
    Left = 240
    Top = 128
    object qryStopStopType: TIntegerField
      FieldName = 'StopType'
    end
    object qryStopMachineId: TLargeintField
      DisplayLabel = #1705#1583' '#1583#1587#1578#1711#1575#1607
      FieldName = 'MachineId'
    end
    object strngfldStopStopDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582
      FieldName = 'StopDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryStopStopKind: TIntegerField
      DisplayLabel = #1588#1740#1601#1578
      FieldName = 'StopKind'
    end
    object qryStopTermTime: TDateTimeField
      DisplayLabel = #1605#1740#1586#1575#1606' '#1578#1608#1602#1601
      FieldName = 'TermTime'
      OnGetText = qryStopTermTimeGetText
    end
    object strngfldStopStopNote: TStringField
      DisplayLabel = #1593#1604#1578' '#1608' '#1578#1608#1590#1740#1581#1575#1578
      FieldName = 'StopNote'
      Size = 200
    end
    object qryStopAmount1: TBCDField
      DisplayLabel = #1590#1575#1740#1593#1575#1578'1'
      FieldName = 'Amount1'
      Precision = 18
      Size = 2
    end
    object qryStopAmount2: TBCDField
      DisplayLabel = #1590#1575#1740#1593#1575#1578'2'
      FieldName = 'Amount2'
      Precision = 18
      Size = 2
    end
    object qryStopAmount3: TBCDField
      DisplayLabel = #1590#1575#1740#1593#1575#1578'3'
      FieldName = 'Amount3'
      Precision = 18
      Size = 2
    end
    object wdstrngfldStopOperatorName: TWideStringField
      DisplayLabel = #1606#1575#1605' '#1575#1662#1585#1575#1578#1608#1585
      FieldName = 'OperatorName'
      Size = 150
    end
    object atncfldStopStopid: TAutoIncField
      FieldName = 'Stopid'
      ReadOnly = True
    end
    object strngfldStop_StuffName: TStringField
      DisplayLabel = #1606#1575#1605' '#1583#1587#1578#1711#1575#1607
      FieldKind = fkLookup
      FieldName = '_StuffName'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'MachineId'
      ReadOnly = True
      Size = 40
      Lookup = True
    end
    object strngfldStop_StopName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1578#1608#1602#1601
      FieldKind = fkLookup
      FieldName = '_StopName'
      LookupDataSet = qryLookup
      LookupKeyFields = 'LookUpID'
      LookupResultField = 'Name'
      KeyFields = 'StopType'
      Size = 40
      Lookup = True
    end
  end
  object qryStuff_Unit_TecInf: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Units.U' +
        'nitName'
      '   FROM StuffCoding INNER JOIN'
      '   Units ON StuffCoding.n_UnitCode = Units.UnitCode INNER JOIN'
      '   StuffGroups ON StuffCoding.GroupID = StuffGroups.GroupID'
      '   WHERE (StuffGroups.GroupType in (2,4,6,7,8,9))'
      '')
    Left = 312
  end
  object qryLookup: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     LookUpID, Code ,  Name'
      'FROM       dbo.LookUps')
    Left = 232
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcStop
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 304
    Top = 128
    object pfldDBPipeline1ppField1: TppField
      FieldAlias = 'StopType'
      FieldName = 'StopType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField2: TppField
      FieldAlias = 'MachineId'
      FieldName = 'MachineId'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField3: TppField
      FieldAlias = '_Stuffname'
      FieldName = '_Stuffname'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField4: TppField
      FieldAlias = 'StopDate'
      FieldName = 'StopDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField5: TppField
      FieldAlias = 'StopKind'
      FieldName = 'StopKind'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField6: TppField
      FieldAlias = 'TermTime'
      FieldName = 'TermTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField7: TppField
      FieldAlias = 'StopNote'
      FieldName = 'StopNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField8: TppField
      FieldAlias = 'Amount1'
      FieldName = 'Amount1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField9: TppField
      FieldAlias = 'Amount2'
      FieldName = 'Amount2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField10: TppField
      FieldAlias = 'Amount3'
      FieldName = 'Amount3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField11: TppField
      FieldAlias = 'OperatorName'
      FieldName = 'OperatorName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField12: TppField
      FieldAlias = '_StopType'
      FieldName = '_StopType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object pfldDBPipeline1ppField13: TppField
      FieldAlias = 'Stopid'
      FieldName = 'Stopid'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
  end
  object Pop4print: TPopupMenu
    AutoHotkeys = maManual
    Left = 376
    Top = 128
    object print: TMenuItem
      Caption = #1670#1575#1662
      OnClick = printClick
    end
    object mnuAllRecords: TMenuItem
      Caption = #1670#1575#1662' '#1607#1605#1607' '#1587#1591#1585' '#1607#1575
      Checked = True
      OnClick = mnuAllRecordsClick
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
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
    TextSearchSettings.Enabled = True
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
    Left = 440
    Top = 128
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object phdrbnd1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object pdtlbnd1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object pftrbnd1: TppFooterBand
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
    object prmtrlst1: TppParameterList
    end
  end
end
