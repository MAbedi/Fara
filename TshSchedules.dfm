inherited tshSchedulesF: TtshSchedulesF
  Caption = #1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1588#1610#1601#1578' '#1607#1575#1610' '#1603#1575#1585#1610
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    TabOrder = 1
    object dbnvgr1: TDBNavigator [0]
      Left = 396
      Top = 1
      Width = 85
      Height = 39
      DataSource = srcSchedules
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alCustom
      Flat = True
      TabOrder = 7
    end
    object okPanel: TPanel [1]
      Left = 309
      Top = 1
      Width = 163
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        163
        39)
      object btn4: TBitBtn
        Left = 86
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
      object btn5: TBitBtn
        Left = 6
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
    object newPanel: TPanel
      Left = 464
      Top = 1
      Width = 317
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 472
      DesignSize = (
        317
        39)
      object btn1: TBitBtn
        Left = 240
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object btn2: TBitBtn
        Left = 163
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object btn3: TBitBtn
        Left = 86
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
      object btnExcel: TBitBtn
        Left = 9
        Top = 8
        Width = 75
        Height = 25
        Action = actGetExcel
        Anchors = [akTop, akRight]
        Caption = #1582#1608#1575#1606#1583#1606' Excel'
        TabOrder = 3
      end
    end
    object btnSort: TBitBtn
      Left = 84
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object btnSort1: TBitBtn
      Left = 161
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object btnSearch_: TBitBtn
      Left = 239
      Top = 8
      Width = 75
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607'Excel'
      TabOrder = 5
    end
    object btnPrint: TBitBtn
      Left = 317
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Caption = #1670#1575#1662
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    TabOrder = 2
    inherited ImgTemplate: TImage
      Left = 781
      ExplicitLeft = 781
    end
    inherited lblCaption: TLabel
      Left = 559
      Width = 185
      Height = 16
      Caption = #1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1588#1610#1601#1578' '#1607#1575#1610' '#1603#1575#1585#1610
      ExplicitLeft = 559
      ExplicitWidth = 185
    end
  end
  inherited Panel3: TPanel
    Height = 423
    TabOrder = 0
    object grd1: TDBGrid
      Tag = 111
      Left = 2
      Top = 149
      Width = 778
      Height = 242
      Align = alClient
      Color = clCream
      DataSource = srcScheduleItems
      DrawingStyle = gdsGradient
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnEnter = grd1Enter
      OnKeyPress = grd1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = '_DayId'
          ReadOnly = True
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Shift1'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Shift2'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Shift3'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Note'
          Width = 402
          Visible = True
        end>
    end
    object pnl1: TPanel
      Left = 2
      Top = 2
      Width = 778
      Height = 147
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 786
      DesignSize = (
        778
        147)
      object lbl2: TLabel
        Left = 718
        Top = 33
        Width = 45
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1711#1585#1608#1607' '#1603#1575#1585#1610
        FocusControl = dblkcbb_WorkGroupId
        ExplicitLeft = 722
      end
      object lbl1: TLabel
        Left = 196
        Top = 8
        Width = 30
        Height = 13
        Caption = #1588#1605#1575#1585#1607
        FocusControl = edtScheduleNo
      end
      object lbl3: TLabel
        Left = 196
        Top = 33
        Width = 21
        Height = 13
        Caption = #1578#1575#1585#1610#1582
        FocusControl = edtScheduleDate
      end
      object lbl4: TLabel
        Left = 196
        Top = 58
        Width = 49
        Height = 13
        Caption = #1578#1575#1585#1610#1582' '#1575#1580#1585#1575#1569' '
        FocusControl = edtRunDate
      end
      object dblkcbb_WorkGroupId: TDBLookupComboBox
        Left = 495
        Top = 29
        Width = 217
        Height = 21
        Anchors = [akTop, akRight]
        DataField = '_WorkGroupId'
        DataSource = srcSchedules
        TabOrder = 0
        ExplicitLeft = 499
      end
      object edtScheduleNo: TDBEdit
        Left = 56
        Top = 4
        Width = 134
        Height = 21
        DataField = 'ScheduleNo'
        DataSource = srcSchedules
        TabOrder = 1
      end
      object edtScheduleDate: TDBEdit
        Left = 56
        Top = 29
        Width = 134
        Height = 21
        DataField = 'ScheduleDate'
        DataSource = srcSchedules
        TabOrder = 2
      end
      object edtRunDate: TDBEdit
        Left = 56
        Top = 54
        Width = 134
        Height = 21
        DataField = 'RunDate'
        DataSource = srcSchedules
        TabOrder = 3
      end
      object grp1: TGroupBox
        Left = 1
        Top = 72
        Width = 776
        Height = 74
        Align = alBottom
        Caption = #1578#1608#1590#1610#1581#1575#1578' '
        TabOrder = 4
        ExplicitWidth = 784
        object dbmmoScheduleNote: TDBMemo
          Left = 2
          Top = 15
          Width = 780
          Height = 57
          Align = alClient
          DataField = 'ScheduleNote'
          DataSource = srcSchedules
          TabOrder = 0
        end
      end
    end
    object pnl2: TPanel
      Left = 2
      Top = 392
      Width = 778
      Height = 29
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 393
      ExplicitWidth = 786
      DesignSize = (
        778
        29)
      object btnBtnDelete2: TBitBtn
        Left = 4
        Top = 2
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Caption = #1581#1584#1601' '#1585#1608#1586
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B84
          C6000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
          A5000021A5000021A5000021A5000021A5006B84C600FF00FF00FF00FF000021
          A5009494F7000029E7000029E7000029E7000029E7000029E7000029E7000029
          E7000029E7000029E7000029E7000029E7000021A500FF00FF00FF00FF000021
          A500B5C6FF009CBDFF009CBDFF009CB5FF009CB5FF009CB5FF00638CF700638C
          F700638CF700638CF700526BF700526BF7000021A500FF00FF00FF00FF006B84
          C6000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
          A5000021A5000021A5000021A5000021A5006B84C600FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 1
      end
      object btnCopyPaste: TBitBtn
        Left = 813
        Top = 2
        Width = 79
        Height = 25
        Action = actCopyPaste
        Anchors = [akTop, akRight]
        Caption = #1603#1662#1610' '#1587#1591#1585
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CE63
          0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
          0000CE630000CE630000CE630000CE630000CE630000CE630000FF00FF00CE63
          0000FFFFFF00FFFFF700948C8C00948C8C00948C8C00948C8C00FFD6AD00FFD6
          AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00CE630000FF00FF00CE63
          0000FFFFFF00FFFFFF00313129006B7394001029A50021213900FFE7C600FFDE
          B500FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00CE630000FF00FF00CE63
          0000FFFFFF00FFFFFF0031313900637BE700FFFFF70010219C00FFEFD600FFE7
          C600FFDEB500FFD6AD00FFD6AD00FFD6AD00FFD6AD00CE630000FF00FF00CE63
          0000FFFFFF00FFFFFF0042424200524A4A005A524A00182994006373D600FFEF
          D600FFE7C600FFDEB500FFD6AD00FFD6AD00FFD6AD00CE630000FF00FF00CE63
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00637BE700425A
          E700FFEFD600FFE7C600FFDEB500FFD6AD00FFD6AD00CE630000FF00FF00CE63
          0000FFFFFF00FFFFFF00948C8C00948C8C00948C8C00948C8C00FFFFFF00FFFF
          FF00FFF7E700FFEFD600FFE7C600FFDEB500FFD6AD00CE630000FF00FF00CE63
          0000FFFFFF00FFFFFF00313129006B7394001029A50021213900FFFFFF00FFFF
          FF00FFFFF700FFF7E700FFEFD600FFE7C600FFDEB500CE630000FF00FF00CE63
          0000FFFFFF00FFFFFF0031313900637BE700FFFFFF0010219C00FFFFFF00FFFF
          FF00FFFFFF00FFFFF700FFF7E700FFEFD600FFE7C600CE630000FF00FF00CE63
          0000FFFFFF00FFFFFF0042424200524A4A005A524A00182994006373D600FFFF
          FF00FFFFFF00FFFFFF00FFFFF700FFF7E700FFEFD600CE630000FF00FF00CE63
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00637BE700425A
          E700FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7E700CE630000FF00FF00CE63
          0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
          0000CE630000CE630000CE630000CE630000CE630000CE630000FF00FF00FF00
          FF00CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
          0000CE630000CE630000CE630000CE630000CE630000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
        ExplicitLeft = 817
      end
    end
  end
  inherited ActionList: TActionList
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcSchedules
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcSchedules
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcSchedules
    end
    object DataSetDelete1: TDataSetDelete [4]
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcSchedules
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcSchedules
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      Caption = #1581#1584#1601' '#1585#1608#1586
      DataSource = srcScheduleItems
    end
    inherited actManagGridColumns: TAction
      OnExecute = actManagGridColumnsExecute
    end
    object actExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607'Excel'
      OnExecute = actExcelExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
    end
    object actCopyPaste: TAction
      Caption = #1603#1662#1610' '#1587#1591#1585
      ShortCut = 16397
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actGetExcel: TAction
      Caption = #1582#1608#1575#1606#1583#1606' Excel'
      OnExecute = actGetExcelExecute
    end
  end
  object qrySchedules: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qrySchedulesAfterInsert
    BeforePost = qrySchedulesBeforePost
    AfterPost = qrySchedulesAfterPost
    BeforeDelete = qrySchedulesBeforeDelete
    AfterDelete = qrySchedulesAfterDelete
    AfterScroll = qrySchedulesAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM    Tsh.Schedules'
      '')
    Left = 312
    Top = 80
    object qrySchedulesScheduleId: TIntegerField
      FieldName = 'ScheduleId'
    end
    object qrySchedulesWorkGroupId: TIntegerField
      FieldName = 'WorkGroupId'
    end
    object qrySchedulesScheduleNo: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'ScheduleNo'
    end
    object qrySchedulesScheduleDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ScheduleDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qrySchedulesScheduleNote: TWideStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '
      FieldName = 'ScheduleNote'
      Size = 500
    end
    object qrySchedulesRunDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1580#1585#1575#1569' '
      FieldName = 'RunDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qrySchedules_WorkGroupId: TStringField
      FieldKind = fkLookup
      FieldName = '_WorkGroupId'
      LookupDataSet = qryWorkGroupId
      LookupKeyFields = 'WorkGroupId'
      LookupResultField = 'WorkGroupName'
      KeyFields = 'WorkGroupId'
      Size = 100
      Lookup = True
    end
  end
  object srcSchedules: TDataSource
    DataSet = qrySchedules
    OnStateChange = srcSchedulesStateChange
    Left = 288
    Top = 8
  end
  object qryWorkGroupId: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT WorkGroupId, WorkGroupName FROM Tsh.WorkGroups')
    Left = 616
    Top = 256
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcSchedules
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 155
    Top = 290
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ReciptsGridF.ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A5'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 148000
    PrinterSetup.PaperSize = 11
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\ReciptsGrid0.rtm'
    Units = utMillimeters
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
    EmailSettings.ShowEmailDialog = True
    EmailSettings.ShowCancelDialog = True
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
    Left = 283
    Top = 368
    Version = '22.02'
    mmColumnWidth = 135300
    DataPipelineName = 'ppDBPipeline2'
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
  object qryScheduleItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qryScheduleItemsAfterInsert
    BeforePost = qryScheduleItemsBeforePost
    BeforeDelete = qryScheduleItemsBeforeDelete
    Parameters = <
      item
        Name = 'ScheduleId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM  Tsh.ScheduleItems'
      'Where  ScheduleId = :ScheduleId')
    Left = 424
    Top = 248
    object qryScheduleItemsScheduleItemId: TAutoIncField
      FieldName = 'ScheduleItemId'
      ReadOnly = True
    end
    object qryScheduleItemsScheduleId: TIntegerField
      FieldName = 'ScheduleId'
      Required = True
    end
    object qryScheduleItemsDayId: TWordField
      FieldName = 'DayId'
      Required = True
    end
    object qryScheduleItems_DayId: TStringField
      DisplayLabel = #1575#1610#1575#1605' '#1607#1601#1578#1607' '
      FieldKind = fkLookup
      FieldName = '_DayId'
      LookupDataSet = qryWeek
      LookupKeyFields = 'DayId'
      LookupResultField = 'DayName'
      KeyFields = 'DayId'
      Lookup = True
    end
    object qryScheduleItemsShift1: TBCDField
      Tag = 3
      DisplayLabel = #1588#1610#1601#1578'1'
      FieldName = 'Shift1'
      Precision = 4
      Size = 2
    end
    object qryScheduleItemsShift2: TBCDField
      Tag = 3
      DisplayLabel = #1588#1610#1601#1578'2'
      FieldName = 'Shift2'
      Precision = 4
      Size = 2
    end
    object qryScheduleItemsShift3: TBCDField
      Tag = 3
      DisplayLabel = #1588#1610#1601#1578'3'
      FieldName = 'Shift3'
      Precision = 4
      Size = 2
    end
    object qryScheduleItemsNote: TWideStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '
      FieldName = 'Note'
      Size = 500
    end
  end
  object srcScheduleItems: TDataSource
    DataSet = qryScheduleItems
    OnStateChange = srcSchedulesStateChange
    Left = 256
    Top = 264
  end
  object qryWeek: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     DayId, DayName'
      'FROM         Tsh.Week')
    Left = 464
    Top = 344
  end
end
