inherited ReciptsDeficitsF: TReciptsDeficitsF
  Left = 388
  Top = 225
  ActiveControl = EdtDeficitID
  Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578
  ClientHeight = 458
  ClientWidth = 806
  OnResize = FormResize
  ExplicitWidth = 812
  ExplicitHeight = 487
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 401
    Width = 798
    Visible = False
    ExplicitTop = 413
    ExplicitWidth = 701
  end
  inherited Panel1: TPanel
    Width = 806
    Height = 65
    BevelOuter = bvNone
    ExplicitWidth = 806
    ExplicitHeight = 65
    inherited Image1: TImage
      Left = 760
      ExplicitLeft = 647
    end
    inherited lblTopic0: TLabel
      Left = 688
      ExplicitLeft = 575
    end
    inherited lblTopic1: TLabel
      Left = 667
      ExplicitLeft = 554
    end
  end
  inherited pnlDown: TPanel
    Top = 421
    Width = 806
    BevelOuter = bvNone
    ExplicitTop = 421
    ExplicitWidth = 806
    inherited btnClose: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 3
      Height = 31
      Align = alLeft
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitHeight = 31
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 84
      Top = 3
      Width = 75
      Height = 31
      Action = actPrint
      Align = alLeft
      Caption = #1670#1575#1662
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 299
      Top = 3
      Width = 99
      Height = 31
      Action = actAccCoding
      Align = alRight
      Caption = #1705#1583#1740#1606#1711' '#1581#1587#1575#1576#1583#1575#1585#1740
      TabOrder = 2
    end
    object Panel5: TPanel
      Left = 401
      Top = 0
      Width = 405
      Height = 37
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 3
      object newPanel: TPanel
        Left = 162
        Top = 0
        Width = 243
        Height = 37
        Align = alRight
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        object BitBtn3: TBitBtn
          AlignWithMargins = True
          Left = 165
          Top = 3
          Width = 75
          Height = 31
          Action = DataSetInsert1
          Align = alRight
          Caption = #1580#1583#1610#1583
          TabOrder = 0
        end
        object BitBtn4: TBitBtn
          AlignWithMargins = True
          Left = 84
          Top = 3
          Width = 75
          Height = 31
          Action = DataSetEdit1
          Align = alRight
          Caption = #1608#1610#1585#1575#1610#1588
          TabOrder = 1
        end
        object BitBtn5: TBitBtn
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 75
          Height = 31
          Action = DataSetDelete
          Align = alRight
          Caption = #1581#1584#1601
          TabOrder = 2
        end
      end
      object okPanel: TPanel
        Left = 0
        Top = 0
        Width = 162
        Height = 37
        Align = alRight
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 1
        object BitBtn6: TBitBtn
          AlignWithMargins = True
          Left = 84
          Top = 3
          Width = 75
          Height = 31
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
        object BitBtn7: TBitBtn
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 75
          Height = 31
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
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 65
    Width = 806
    Height = 356
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object DBGrid1: TDBGrid
      Tag = 111
      Left = 0
      Top = 50
      Width = 806
      Height = 176
      Align = alClient
      Color = clCream
      DataSource = src_Deficits
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnEditButtonClick = DBGrid1EditButtonClick
      Columns = <
        item
          Expanded = False
          FieldName = 'DeficitID'
          Width = 16
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DeficitAdd'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DeficitDec'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_DeficitName'
          Width = 115
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ArzAmount'
          Width = 47
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'TopicCode'
          Width = 62
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'DetailCode'
          Width = 63
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'CTopicCode'
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'CTopicCode2'
          Width = 76
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'CTopicCode3'
          Width = 78
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 0
      Top = 25
      Width = 806
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label2: TLabel
        AlignWithMargins = True
        Left = 782
        Top = 3
        Width = 21
        Height = 19
        Align = alRight
        Caption = #1578#1575#1585#1610#1582
        FocusControl = EdtDate
        ExplicitHeight = 13
      end
      object EdtDate: TDBEdit
        AlignWithMargins = True
        Left = 679
        Top = 3
        Width = 97
        Height = 19
        Align = alRight
        Color = 13948116
        Ctl3D = False
        DataField = 'ReciptDate'
        DataSource = SrcRecipts
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 147
        Height = 19
        Align = alLeft
        Color = 13948116
        Ctl3D = False
        DataField = 'c_StoreName'
        DataSource = SrcRecipts
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 246
      Width = 806
      Height = 110
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object SpeedButton1: TSpeedButton
        AlignWithMargins = True
        Left = 572
        Top = 3
        Width = 23
        Height = 21
        Align = alRight
        Caption = '...'
        OnClick = SpeedButton1Click
        ExplicitLeft = 473
        ExplicitTop = 6
        ExplicitHeight = 22
      end
      object Label20: TLabel
        AlignWithMargins = True
        Left = 708
        Top = 3
        Width = 95
        Height = 21
        Align = alRight
        Alignment = taRightJustify
        Caption = #1603#1600#1600#1583' '#1608' '#1593#1606#1608#1575#1606' '#1603#1587#1608#1585#1575#1578
        FocusControl = EdtDeficitID
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitHeight = 13
      end
      object DBTextDeficitID: TDBText
        AlignWithMargins = True
        Left = 3
        Top = 30
        Width = 800
        Height = 18
        Align = alBottom
        Color = 13948116
        DataField = '_DeficitName'
        DataSource = src_Deficits
        ParentColor = False
        Transparent = True
        ExplicitLeft = 439
        ExplicitWidth = 262
      end
      object Label4: TLabel
        AlignWithMargins = True
        Left = 138
        Top = 3
        Width = 20
        Height = 21
        Align = alLeft
        Alignment = taRightJustify
        Caption = #1605#1576#1604#1594
        FocusControl = EdtDef_Add_Dec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitHeight = 13
      end
      object lblArzAmount: TLabel
        AlignWithMargins = True
        Left = 401
        Top = 3
        Width = 39
        Height = 21
        Align = alRight
        Caption = #1605#1602#1583#1575#1585' '#1575#1585#1586
        FocusControl = edtArzAmount
        ExplicitHeight = 13
      end
      object lblDeficitPercent: TLabel
        AlignWithMargins = True
        Left = 249
        Top = 3
        Width = 24
        Height = 21
        Align = alLeft
        Caption = #1583#1585#1589#1583
        ExplicitHeight = 13
      end
      object lblarz: TLabel
        AlignWithMargins = True
        Left = 537
        Top = 3
        Width = 29
        Height = 21
        Align = alRight
        BiDiMode = bdLeftToRight
        Caption = #1606#1608#1593' '#1575#1585#1586
        ParentBiDiMode = False
        ExplicitHeight = 13
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 51
        Width = 806
        Height = 59
        Align = alBottom
        Caption = ' '#1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610' '
        TabOrder = 5
        object DBMemo1: TDBMemo
          Left = 2
          Top = 15
          Width = 802
          Height = 42
          Align = alClient
          DataField = 'DeficitNote'
          DataSource = src_Deficits
          TabOrder = 0
        end
      end
      object EdtDeficitID: TDBEdit
        AlignWithMargins = True
        Left = 601
        Top = 3
        Width = 101
        Height = 21
        Align = alRight
        DataField = 'DeficitID'
        DataSource = src_Deficits
        TabOrder = 0
        OnKeyDown = EdtDeficitIDKeyDown
      end
      object EdtDef_Add_Dec: TDBEdit
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 129
        Height = 21
        Align = alLeft
        DataField = 'DeficitAdd'
        DataSource = src_Deficits
        TabOrder = 4
      end
      object edtArzAmount: TDBEdit
        AlignWithMargins = True
        Left = 310
        Top = 3
        Width = 85
        Height = 21
        Align = alRight
        DataField = 'ArzAmount'
        DataSource = src_Deficits
        TabOrder = 2
      end
      object edtDeficitPercent: TDBEdit
        Left = 161
        Top = 0
        Width = 85
        Height = 27
        Align = alLeft
        DataField = 'DeficitPercent'
        DataSource = src_Deficits
        TabOrder = 3
        ExplicitHeight = 21
      end
      object CmbArzTypeID: TDBComboBox
        AlignWithMargins = True
        Left = 446
        Top = 3
        Width = 85
        Height = 21
        Align = alRight
        DataField = 'ArzTypeID'
        DataSource = src_Deficits
        TabOrder = 1
      end
    end
    object SumGrid1: TSumGrid
      Left = 0
      Top = 226
      Width = 806
      TabStop = False
      Active = False
      Enable_Controls = True
      MasterGrid = DBGrid1
      AutoRefresh = False
      FieldsName = 'DeficitAdd;DeficitDec;DeficitAddDec;'
    end
    object Panel6: TPanel
      Left = 0
      Top = 0
      Width = 806
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object Label1: TLabel
        AlignWithMargins = True
        Left = 773
        Top = 3
        Width = 30
        Height = 19
        Align = alRight
        Caption = #1588#1605#1575#1585#1607
        FocusControl = EdtFormNo
        ExplicitHeight = 13
      end
      object Label3: TLabel
        AlignWithMargins = True
        Left = 90
        Top = 3
        Width = 59
        Height = 19
        Align = alLeft
        Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1576#1606#1711#1575#1607
        ExplicitHeight = 13
      end
      object EdtFormNo: TDBEdit
        AlignWithMargins = True
        Left = 670
        Top = 3
        Width = 97
        Height = 19
        Align = alRight
        Color = 13948116
        Ctl3D = False
        DataField = 'ReciptNumber'
        DataSource = SrcRecipts
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 81
        Height = 19
        Align = alLeft
        Color = 13948116
        Ctl3D = False
        DataField = 'StoreID'
        DataSource = SrcRecipts
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 112
    Top = 8
    inherited DataSetPost1: TDataSetPost
      DataSource = src_Deficits
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = src_Deficits
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      ShortCut = 113
      DataSource = src_Deficits
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = src_Deficits
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      ShortCut = 115
      DataSource = src_Deficits
    end
    object actPrint: TAction
      Category = 'Dataset'
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object DataSetDelete: TAction
      Category = 'Dataset'
      Caption = #1581#1584#1601
      OnExecute = DataSetDeleteExecute
    end
    object actAccCoding: TAction
      Caption = #1705#1583#1740#1606#1711' '#1581#1587#1575#1576#1583#1575#1585#1740
      OnExecute = actAccCodingExecute
    end
  end
  object qryDeficits: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ReciptDateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'ReciptDateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *,DeficitCo*100 As DeficitPercent'
      ''
      'FROM         Deficits'
      
        'WHERE     (StartDate <= :ReciptDateFrom ) AND (EndDate >= :Recip' +
        'tDateTo )')
    Left = 640
    Top = 164
    object qryDeficitsDeficitID: TSmallintField
      FieldName = 'DeficitID'
    end
    object qryDeficitsDeficitName: TStringField
      FieldName = 'DeficitName'
      Size = 50
    end
    object qryDeficitsDeficitType: TWordField
      FieldName = 'DeficitType'
    end
    object qryDeficitsCalculationType: TWordField
      FieldName = 'CalculationType'
    end
    object qryDeficitsDeficitCo: TFloatField
      FieldName = 'DeficitCo'
    end
    object qryDeficitsExportType: TWordField
      FieldName = 'ExportType'
    end
    object qryDeficitsDeficitPercent: TFloatField
      FieldName = 'DeficitPercent'
      ReadOnly = True
    end
  end
  object SrcRecipts: TDataSource
    DataSet = qryRecipts
    Left = 568
    Top = 168
  end
  object qryRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ReciptID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT  Recipts.ServerID,Recipts.YearID,   Recipts.ReciptID, Rec' +
        'ipts.ReciptNumber, Recipts.StoreID, Stores.c_StoreName, Recipts.' +
        'ReciptDate, '
      
        '                      SUM(ReciptItems.InputEntity + ReciptItems.' +
        'OutputEntity) AS Entity, SUM(ReciptItems.InputWeight + ReciptIte' +
        'ms.OutputWeight) '
      
        '                      AS Weight, SUM(ReciptItems.TotalInputPrice' +
        ' + ReciptItems.TotalOutputPrice) AS Price,DocNo,RialsEqual'
      'FROM         Recipts INNER JOIN'
      
        '                      Stores ON Recipts.StoreID = Stores.n_Store' +
        'ID INNER JOIN'
      
        '                      ReciptItems ON dbo.Recipts.ReciptID = dbo.' +
        'ReciptItems.ReciptID AND '
      
        '                      dbo.Recipts.ServerID = dbo.ReciptItems.Ser' +
        'verID AND dbo.Recipts.YearID = dbo.ReciptItems.YearID'
      ''
      'where (Recipts.ReciptID = :ReciptID)'
      'and ( Recipts.YearID = :YearID )'
      'and ( Recipts.ServerID = :ServerID )'
      ''
      
        'GROUP BY Recipts.ServerID,Recipts.YearID, Recipts.ReciptID, Reci' +
        'pts.StoreID, Stores.c_StoreName,'
      
        '          Recipts.ReciptDate, Recipts.ReciptNumber,DocNo,RialsEq' +
        'ual')
    Left = 432
    Top = 176
    object qryReciptsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptsStoreID: TSmallintField
      FieldName = 'StoreID'
    end
    object qryReciptsc_StoreName: TStringField
      FieldName = 'c_StoreName'
      Size = 70
    end
    object qryReciptsReciptDate: TStringField
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptsEntity: TFloatField
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryReciptsWeight: TFloatField
      FieldName = 'Weight'
      ReadOnly = True
    end
    object qryReciptsPrice: TBCDField
      FieldName = 'Price'
      ReadOnly = True
      Precision = 19
    end
    object qryReciptsReciptNumber: TIntegerField
      FieldName = 'ReciptNumber'
    end
    object qryReciptsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryReciptsDocNo: TIntegerField
      FieldName = 'DocNo'
    end
    object qryReciptsRialsEqual: TBCDField
      FieldName = 'RialsEqual'
      Precision = 19
    end
  end
  object qry_Deficits: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qry_DeficitsAfterInsert
    BeforeEdit = qry_DeficitsBeforeEdit
    BeforePost = qry_DeficitsBeforePost
    AfterPost = qry_DeficitsAfterPost
    AfterDelete = qry_DeficitsAfterDelete
    AfterScroll = qry_DeficitsAfterScroll
    Parameters = <
      item
        Name = 'ReciptID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     *,DeficitAdd-DeficitDec as DeficitAddDec,DeficitCo*10' +
        '0 As DeficitPercent'
      ''
      'FROM         ReciptsDeficits'
      'WHERE ReciptID=:ReciptID'
      'and ( YearID = :YearID )'
      'and ( ServerID = :ServerID )')
    Left = 224
    Top = 185
    object qry_DeficitsReciptDeficitID: TIntegerField
      FieldName = 'ReciptDeficitID'
    end
    object qry_DeficitsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qry_DeficitsDeficitID: TSmallintField
      DisplayLabel = #1603#1583
      FieldName = 'DeficitID'
      OnChange = qry_DeficitsDeficitIDChange
    end
    object qry_DeficitsDeficitAdd: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1575#1590#1575#1601#1575#1578
      FieldName = 'DeficitAdd'
      OnChange = qry_DeficitsDeficitAddDecChange
      currency = True
      Precision = 19
    end
    object qry_DeficitsDeficitDec: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1603#1587#1608#1585#1575#1578
      FieldName = 'DeficitDec'
      OnChange = qry_DeficitsDeficitAddDecChange
      currency = True
      Precision = 19
    end
    object qry_DeficitsDeficitNote: TStringField
      FieldName = 'DeficitNote'
      Size = 50
    end
    object qry_Deficits_DeficitName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1603#1587#1608#1585#1575#1578' / '#1575#1590#1575#1601#1575#1578
      FieldKind = fkLookup
      FieldName = '_DeficitName'
      LookupDataSet = qryDeficits
      LookupKeyFields = 'DeficitID'
      LookupResultField = 'DeficitName'
      KeyFields = 'DeficitID'
      Required = True
      Size = 150
      Lookup = True
    end
    object qry_Deficits_CalculationType: TIntegerField
      FieldKind = fkLookup
      FieldName = '_CalculationType'
      LookupDataSet = qryDeficits
      LookupKeyFields = 'DeficitID'
      LookupResultField = 'CalculationType'
      KeyFields = 'DeficitID'
      Lookup = True
    end
    object qry_Deficits_DeficitCo: TFloatField
      FieldKind = fkLookup
      FieldName = '_DeficitCo'
      LookupDataSet = qryDeficits
      LookupKeyFields = 'DeficitID'
      LookupResultField = 'DeficitCo'
      KeyFields = 'DeficitID'
      Lookup = True
    end
    object qry_Deficits_ExportType: TIntegerField
      FieldKind = fkLookup
      FieldName = '_ExportType'
      LookupDataSet = qryDeficits
      LookupKeyFields = 'DeficitID'
      LookupResultField = 'ExportType'
      KeyFields = 'ReciptID'
      Lookup = True
    end
    object qry_Deficits_DeficitType: TIntegerField
      FieldKind = fkLookup
      FieldName = '_DeficitType'
      LookupDataSet = qryDeficits
      LookupKeyFields = 'DeficitID'
      LookupResultField = 'DeficitType'
      KeyFields = 'DeficitID'
      Lookup = True
    end
    object qry_DeficitsDeficitAddDec: TBCDField
      FieldName = 'DeficitAddDec'
      ReadOnly = True
      Precision = 19
    end
    object qry_DeficitsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qry_DeficitsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qry_DeficitsArzAmount: TBCDField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1575#1585#1586
      FieldName = 'ArzAmount'
      OnChange = qry_DeficitsDeficitIDChange
      Precision = 18
    end
    object qry_DeficitsDeficitCo: TFloatField
      FieldName = 'DeficitCo'
      OnChange = qry_DeficitsDeficitCoChange
    end
    object qry_DeficitsDeficitPercent: TFloatField
      DisplayLabel = #1583#1585#1589#1583' '#1578#1582#1601#1740#1601
      FieldName = 'DeficitPercent'
      OnChange = qry_DeficitsDeficitPercentChange
    end
    object qry_DeficitsTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '
      FieldName = 'TopicCode'
    end
    object qry_DeficitsDetailCode: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'DetailCode'
      FixedChar = True
      Size = 12
    end
    object qry_DeficitsCTopicCode: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2 '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'CTopicCode'
      EditMask = '999999999999'
      FixedChar = True
      Size = 12
    end
    object qry_DeficitsCTopicCode2: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'3 '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'CTopicCode2'
      EditMask = '999999999999'
      FixedChar = True
      Size = 12
    end
    object qry_DeficitsCTopicCode3: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'4 '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'CTopicCode3'
      EditMask = '999999999999'
      FixedChar = True
      Size = 12
    end
    object qry_DeficitsArzTypeID: TIntegerField
      FieldName = 'ArzTypeID'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
  end
  object src_Deficits: TDataSource
    DataSet = qry_Deficits
    OnStateChange = src_DeficitsStateChange
    Left = 136
    Top = 168
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
    Template.FileName = 'G:\temp.rtm'
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
    Left = 480
    Top = 233
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 17992
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
      end
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
        mmLeft = 75936
        mmTop = 1058
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = #1603#1587#1608#1585#1575#1578' / '#1575#1590#1575#1601#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8382
        mmLeft = 85852
        mmTop = 8467
        mmWidth = 31496
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
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 184003
        mmTop = 18522
        mmWidth = 18669
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 183475
        mmTop = 17991
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1603#1587#1608#1585#1575#1578' / '#1575#1590#1575#1601#1575#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 124090
        mmTop = 18521
        mmWidth = 59002
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 123561
        mmTop = 18256
        mmWidth = 1058
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594' '#1575#1590#1575#1601#1575#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 87021
        mmTop = 18522
        mmWidth = 36144
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 86492
        mmTop = 17991
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594' '#1603#1587#1608#1585#1575#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 49820
        mmTop = 18522
        mmWidth = 36144
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 49291
        mmTop = 17991
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7409
      mmPrintPosition = 0
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 200290
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLin4Position: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Lin4Position'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'DeficitID'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 184003
        mmTop = 0
        mmWidth = 18669
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 123561
        mmTop = 0
        mmWidth = 4498
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'DeficitAdd'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 87048
        mmTop = 0
        mmWidth = 36248
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 86492
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'DeficitDec'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7451
        mmLeft = 49820
        mmTop = 0
        mmWidth = 36144
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 49291
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = '_DeficitName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 124090
        mmTop = 0
        mmWidth = 59002
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 183357
        mmTop = 0
        mmWidth = 4498
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 9497
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1606#1602#1604' '#1576#1607'..'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6011
        mmLeft = 186267
        mmTop = 529
        mmWidth = 15579
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'DeficitAdd'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 87021
        mmTop = 528
        mmWidth = 36144
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 86492
        mmTop = 0
        mmWidth = 13229
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'DeficitDec'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 49820
        mmTop = 528
        mmWidth = 36144
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 49291
        mmTop = 0
        mmWidth = 13229
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 123561
        mmTop = 0
        mmWidth = 13229
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1580#1605#1593
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 188913
        mmTop = 529
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'DeficitAdd'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 87021
        mmTop = 528
        mmWidth = 36144
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 86492
        mmTop = 0
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'DeficitDec'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 49820
        mmTop = 528
        mmWidth = 36144
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 49291
        mmTop = 0
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 123561
        mmTop = 0
        mmWidth = 13229
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
  object ppDBPipeline1: TppDBPipeline
    DataSource = src_Deficits
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 360
    Top = 233
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'ReciptDeficitID'
      FieldName = 'ReciptDeficitID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'ReciptID'
      FieldName = 'ReciptID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'DeficitID'
      FieldName = 'DeficitID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'DeficitAdd'
      FieldName = 'DeficitAdd'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'DeficitDec'
      FieldName = 'DeficitDec'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'DeficitNote'
      FieldName = 'DeficitNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = '_DeficitName'
      FieldName = '_DeficitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = '_CalculationType'
      FieldName = '_CalculationType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = '_DeficitCo'
      FieldName = '_DeficitCo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = '_ExportType'
      FieldName = '_ExportType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = '_DeficitType'
      FieldName = '_DeficitType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'DeficitAddDec'
      FieldName = 'DeficitAddDec'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'ServerID'
      FieldName = 'ServerID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'YearID'
      FieldName = 'YearID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'ArzAmount'
      FieldName = 'ArzAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 192
    Top = 248
  end
end
