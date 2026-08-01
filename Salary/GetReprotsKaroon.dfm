inherited GetReprotsKaroonF: TGetReprotsKaroonF
  Top = 195
  Caption = #1578#1606#1592#1740#1605' '#1601#1740#1588' '#1581#1602#1608#1602' '
  ClientHeight = 562
  ClientWidth = 774
  OnResize = FormResize
  ExplicitWidth = 790
  ExplicitHeight = 601
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 521
    Width = 774
    TabOrder = 1
    ExplicitTop = 523
    ExplicitWidth = 778
    inherited BtnReject: TBitBtn
      Top = 9
      TabOrder = 1
      ExplicitTop = 9
    end
    object DBNavigator1: TDBNavigator
      Left = 95
      Top = 8
      Width = 136
      Height = 25
      DataSource = srcGetReprots
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight, akBottom]
      Flat = True
      TabOrder = 2
    end
    object newPanel: TPanel
      Left = 454
      Top = 1
      Width = 315
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        315
        39)
      object BitBtn3: TBitBtn
        Left = 237
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 159
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 81
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
      object BitBtn1: TBitBtn
        Left = 4
        Top = 8
        Width = 75
        Height = 25
        Action = actCopy
        Anchors = [akTop, akRight]
        Caption = #1603#1662#1610' '#1711#1586#1575#1585#1588
        TabOrder = 3
      end
    end
    object okPanel: TPanel
      Left = 300
      Top = 1
      Width = 158
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
      ExplicitLeft = 296
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
        Left = 3
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
  end
  inherited Panel2: TPanel
    Width = 774
    TabOrder = 2
    ExplicitWidth = 786
    inherited lblCaption: TLabel
      Height = 16
    end
  end
  inherited Panel3: TPanel
    Top = 180
    Width = 774
    Height = 341
    TabOrder = 0
    ExplicitTop = 180
    ExplicitWidth = 778
    ExplicitHeight = 343
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 107
      Width = 760
      Height = 231
      Align = alClient
      ParentBackground = False
      TabOrder = 0
      object PnlGetRptColumns: TPanel
        Left = 1
        Top = 196
        Width = 758
        Height = 34
        Align = alBottom
        TabOrder = 0
        object okPanel2: TPanel
          Left = 359
          Top = 1
          Width = 158
          Height = 32
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            158
            32)
          object BitBtn12: TBitBtn
            Left = 3
            Top = 4
            Width = 75
            Height = 25
            Action = DataSetCancel2
            Anchors = [akTop, akRight]
            Caption = #1575#1606#1589#1585#1575#1601
            TabOrder = 1
          end
          object BitBtn13: TBitBtn
            Left = 80
            Top = 4
            Width = 75
            Height = 25
            Action = DataSetPost2
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1610#1610#1583
            TabOrder = 0
          end
        end
        object newPanel2: TPanel
          Left = 521
          Top = 1
          Width = 240
          Height = 32
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          Visible = False
          ExplicitLeft = 517
          object BitBtn10: TBitBtn
            Left = 160
            Top = 3
            Width = 75
            Height = 25
            Action = DataSetInsert2
            Caption = #1580#1583#1610#1583
            TabOrder = 0
          end
          object BitBtn14: TBitBtn
            Left = 83
            Top = 3
            Width = 75
            Height = 25
            Action = DataSetEdit2
            Caption = #1608#1610#1585#1575#1610#1588
            TabOrder = 1
          end
          object btnDelete: TBitBtn
            Left = 5
            Top = 3
            Width = 75
            Height = 25
            Action = actDelete
            Caption = #1581#1584#1601
            TabOrder = 2
          end
        end
      end
      object grdItems: TDBGrid
        AlignWithMargins = True
        Left = 580
        Top = 20
        Width = 180
        Height = 171
        Align = alRight
        Color = clCream
        DataSource = srcRptColumnsFunctions
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnEditButtonClick = grdItemsEditButtonClick
        OnEnter = DBGrid1Enter
        Columns = <
          item
            Expanded = False
            FieldName = 'ColumnsID'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ColumnsName'
            Width = 48
            Visible = True
          end>
      end
      object grdWages: TDBGrid
        AlignWithMargins = True
        Left = 394
        Top = 20
        Width = 180
        Height = 171
        Align = alRight
        Color = clCream
        DataSource = srcRptColumnsWage
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = grdItemsDrawColumnCell
        OnEditButtonClick = grdItemsEditButtonClick
        OnEnter = DBGrid1Enter
        Columns = <
          item
            Expanded = False
            FieldName = 'ColumnsID'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ColumnsName'
            Width = 48
            Visible = True
          end>
      end
      object grdDecs: TDBGrid
        AlignWithMargins = True
        Left = 208
        Top = 20
        Width = 180
        Height = 171
        Align = alRight
        Color = clCream
        DataSource = srcRptColumnsDec
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = grdItemsDrawColumnCell
        OnEditButtonClick = grdItemsEditButtonClick
        OnEnter = DBGrid1Enter
        Columns = <
          item
            Expanded = False
            FieldName = 'ColumnsID'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ColumnsName'
            Width = 48
            Visible = True
          end>
      end
      object pnlTop: TPanel
        Left = 1
        Top = 1
        Width = 762
        Height = 16
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 4
        ExplicitWidth = 758
        DesignSize = (
          762
          16)
        object Label4: TLabel
          Left = 644
          Top = 1
          Width = 56
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1585#1608#1586'/'#1587#1575#1593#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 640
        end
        object Label5: TLabel
          Left = 472
          Top = 2
          Width = 22
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1576#1604#1594
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 468
        end
        object Label6: TLabel
          Left = 281
          Top = 2
          Width = 44
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1705#1587#1608#1585#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 277
        end
        object Label7: TLabel
          Left = 80
          Top = 2
          Width = 61
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1591#1604#1576'/'#1576#1583#1607#1740
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 76
        end
      end
      object grdOtherDec: TDBGrid
        AlignWithMargins = True
        Left = 22
        Top = 20
        Width = 180
        Height = 171
        Align = alRight
        Color = clCream
        DataSource = srcOtherDec
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = grdItemsDrawColumnCell
        OnEditButtonClick = grdItemsEditButtonClick
        OnEnter = DBGrid1Enter
        Columns = <
          item
            Expanded = False
            FieldName = 'ColumnsID'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ColumnsName'
            Width = 48
            Visible = True
          end>
      end
    end
    object Panel6: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 764
      Height = 96
      Align = alTop
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 760
      DesignSize = (
        764
        96)
      object Label14: TLabel
        Left = 702
        Top = 11
        Width = 41
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1587#1578#1608#1606
        FocusControl = DBEdit20
        ExplicitLeft = 704
      end
      object Label15: TLabel
        Left = 702
        Top = 37
        Width = 13
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605
        FocusControl = EdtSerialFrom
        ExplicitLeft = 704
      end
      object ColumnsSalaryID: TSpeedButton
        Left = 492
        Top = 58
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = ColumnsSalaryIDClick
        ExplicitLeft = 502
      end
      object Label1: TLabel
        Left = 702
        Top = 63
        Width = 30
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1575#1608#1610#1606
        FocusControl = edtColumnsSalaryID
        ExplicitLeft = 704
      end
      object DBEdit20: TDBEdit
        Left = 618
        Top = 7
        Width = 78
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'ColumnsID'
        DataSource = srcGetRptColumns
        TabOrder = 0
        ExplicitLeft = 614
      end
      object EdtSerialFrom: TDBEdit
        Left = 516
        Top = 33
        Width = 180
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'ColumnsName'
        DataSource = srcGetRptColumns
        TabOrder = 1
        ExplicitLeft = 512
      end
      object rdoKind: TDBRadioGroup
        Left = 11
        Top = 2
        Width = 342
        Height = 47
        Align = alCustom
        Caption = #1606#1608#1593'  '
        Columns = 4
        DataField = 'Kind'
        DataSource = srcGetRptColumns
        Items.Strings = (
          #1585#1608#1586'/'#1587#1575#1593#1578
          #1605#1576#1604#1594
          #1603#1587#1608#1585#1575#1578
          #1591#1604#1576'/'#1576#1583#1607#1740)
        TabOrder = 2
        Values.Strings = (
          '1'
          '2'
          '3'
          '4')
      end
      object edtColumnsSalaryID: TDBEdit
        Left = 516
        Top = 60
        Width = 180
        Height = 19
        Anchors = [akTop, akRight]
        Ctl3D = False
        DataField = 'ColumnsSalaryID'
        DataSource = srcGetRptColumns
        ParentCtl3D = False
        TabOrder = 3
        ExplicitLeft = 512
      end
    end
  end
  object Panel1: TPanel [3]
    AlignWithMargins = True
    Left = 3
    Top = 56
    Width = 768
    Height = 121
    Align = alTop
    ParentBackground = False
    TabOrder = 3
    ExplicitWidth = 764
    object Label2: TLabel
      Left = 300
      Top = 7
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1711#1586#1575#1585#1588
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 300
      Top = 33
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = #1606#1575#1605' '#1711#1586#1575#1585#1588
      FocusControl = DBEdit2
    end
    object btnOtherRptFiles: TSpeedButton
      Left = 4
      Top = 54
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = btnOtherRptFilesClick
    end
    object Label110: TLabel
      Left = 300
      Top = 58
      Width = 22
      Height = 13
      Caption = #1670#1575#1662#1607#1575
      FocusControl = DBEdit62
    end
    object DBGrid1: TDBGrid
      Left = 352
      Top = 1
      Width = 411
      Height = 119
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clCream
      DataSource = srcGetReprots
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnEnter = DBGrid1Enter
      Columns = <
        item
          Expanded = False
          FieldName = 'GetReprotsID'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GetReprotsName'
          Width = 268
          Visible = True
        end>
    end
    object DBEdit1: TDBEdit
      Left = 220
      Top = 3
      Width = 78
      Height = 21
      DataField = 'GetReprotsID'
      DataSource = srcGetReprots
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 28
      Top = 29
      Width = 270
      Height = 21
      DataField = 'GetReprotsName'
      DataSource = srcGetReprots
      TabOrder = 2
    end
    object DBEdit62: TDBEdit
      Left = 28
      Top = 55
      Width = 270
      Height = 19
      Ctl3D = False
      DataField = 'OtherRptFiles'
      DataSource = srcGetReprots
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object dbchkActiveFunctionsItems: TDBCheckBox
      Left = 77
      Top = 80
      Width = 221
      Height = 17
      Alignment = taLeftJustify
      BiDiMode = bdLeftToRight
      Caption = #1587#1578#1608#1606' '#1607#1575#1610' '#1593#1606#1575#1608#1610#1606' '#1575#1601#1586#1575#1610#1606#1583#1607' '#1581#1602#1608#1602' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207#13#10#8207
      DataField = 'ActiveFunctionsItems'
      DataSource = srcGetReprots
      ParentBiDiMode = False
      TabOrder = 4
      ValueChecked = '1'
      ValueUnchecked = '0'
      Visible = False
    end
    object btnaddLink: TBitBtn
      Left = 7
      Top = 2
      Width = 162
      Height = 23
      Caption = #1575#1590#1575#1601#1607' '#1603#1585#1583#1606' '#1607#1605#1607' '#1587#1578#1608#1606' '#1605#1608#1580#1608#1583
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000230B0000230B00000001000000010000BF480000FF66
        0100FFB25F00FFAE6200FF00FF00000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000040404040404
        0404040404040404040404040404040404000004040404040404040404040404
        0003010004040404040404040404040003030101000404040404040404040101
        0101000000000404040404040404040404010004040404040404040404040404
        0401000404040404040404040404040404010004040404040404040404040404
        0401000404040404040404040404040404010004040404040404040404040404
        0401000404000404040404040404040404010004000100040404040404040404
        0401000404000404040404040404040404040404040404040404040404040404
        0404040404040404040404040404040404040404040404040404}
      Margin = 1
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      TabOrder = 5
      Visible = False
      WordWrap = True
      OnClick = btnaddLinkClick
    end
    object DBCheckBox1: TDBCheckBox
      Left = 95
      Top = 102
      Width = 203
      Height = 17
      Alignment = taLeftJustify
      BiDiMode = bdLeftToRight
      Caption = #1581#1584#1601' '#1587#1578#1608#1606' '#1607#1575#1610' '#1605#1586#1575#1610#1575#1610#1610' '#1603#1607' '#1589#1601#1585' '#1607#1587#1578#1606#1583
      DataField = 'DeleteColumnIfSumWageIsZero'
      DataSource = srcGetReprots
      ParentBiDiMode = False
      TabOrder = 6
      ValueChecked = '1'
      ValueUnchecked = '0'
      Visible = False
    end
  end
  inherited ActionList: TActionList
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcGetReprots
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcGetReprots
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcGetReprots
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcGetReprots
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcGetReprots
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
    end
    object DataSetInsert2: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      DataSource = srcGetRptColumns
    end
    object DataSetDelete2: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcGetRptColumns
    end
    object DataSetEdit2: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      DataSource = srcGetRptColumns
    end
    object DataSetPost2: TDataSetPost
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      DataSource = srcGetRptColumns
    end
    object DataSetCancel2: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      DataSource = srcGetRptColumns
    end
    object actSort2: TAction
      Caption = 'actSort2'
      OnExecute = actSort2Execute
    end
    object actCopy: TAction
      Caption = #1603#1662#1610' '#1711#1586#1575#1585#1588
      OnExecute = actCopyExecute
    end
    object actDelete: TAction
      Caption = #1581#1584#1601
      ShortCut = 46
      OnExecute = actDeleteExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 144
    Top = 1
  end
  object qryGetReprots: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterInsert = qryGetReprotsAfterInsert
    BeforePost = qryGetReprotsBeforePost
    AfterPost = qryGetReprotsAfterPost
    BeforeDelete = qryGetReprotsBeforeDelete
    AfterDelete = qryGetReprotsAfterDelete
    AfterScroll = qryGetReprotsAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM Pay.GetReprots'
      'order by GetReprotsID')
    Left = 644
    Top = 95
    object qryGetReprotsGetReprotsID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1711#1586#1575#1585#1588
      FieldName = 'GetReprotsID'
    end
    object qryGetReprotsGetReprotsName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1711#1586#1575#1585#1588
      FieldName = 'GetReprotsName'
      Size = 80
    end
    object qryGetReprotsOtherRptFiles: TStringField
      Tag = 3
      FieldName = 'OtherRptFiles'
      Size = 250
    end
    object qryGetReprotsOtherRptCaptions: TStringField
      Tag = 3
      FieldName = 'OtherRptCaptions'
      Size = 250
    end
    object qryGetReprotsActiveFunctionsItems: TWordField
      FieldName = 'ActiveFunctionsItems'
    end
    object qryGetReprotsDeleteColumnIfSumWageIsZero: TWordField
      FieldName = 'DeleteColumnIfSumWageIsZero'
    end
  end
  object srcGetReprots: TDataSource
    DataSet = qryGetReprots
    OnStateChange = srcGetReprotsStateChange
    Left = 552
    Top = 96
  end
  object qryGetRptColumns: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterOpen = qryGetRptColumnsAfterOpen
    AfterInsert = qryGetRptColumnsAfterInsert
    BeforeEdit = qryGetRptColumnsBeforeEdit
    BeforePost = qryGetRptColumnsBeforePost
    AfterPost = qryGetRptColumnsAfterPost
    BeforeDelete = qryGetRptColumnsBeforeDelete
    AfterDelete = qryGetRptColumnsAfterDelete
    AfterScroll = qryGetRptColumnsAfterScroll
    Parameters = <
      item
        Name = 'GetReprotsID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM Pay.GetRptColumns'
      'where (GetReprotsID=:GetReprotsID)'
      'order by ColumnsID')
    Left = 294
    Top = 239
    object qryGetRptColumnsColumnsID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1587#1578#1608#1606
      FieldName = 'ColumnsID'
      Required = True
    end
    object qryGetRptColumnsGetReprotsID: TIntegerField
      Tag = 3
      FieldName = 'GetReprotsID'
    end
    object qryGetRptColumnsColumnsName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1587#1578#1608#1606
      FieldName = 'ColumnsName'
      Required = True
      Size = 80
    end
    object qryGetRptColumnsKind: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593
      FieldName = 'Kind'
    end
    object qryGetRptColumnsColumnsSalaryID: TStringField
      Tag = 3
      FieldName = 'ColumnsSalaryID'
      Size = 300
    end
    object qryGetRptColumnsAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1579#1575#1576#1578
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryGetRptColumnsColumnsSalaryIDSub: TWideStringField
      FieldName = 'ColumnsSalaryIDSub'
      Size = 300
    end
    object qryGetRptColumnsColumnsRoundNo: TFloatField
      FieldName = 'ColumnsRoundNo'
    end
    object qryGetRptColumnsColumnsCalc: TWideStringField
      DisplayLabel = #1605#1581#1575#1587#1576#1575#1578' '#1587#1578#1608#1606
      FieldName = 'ColumnsCalc'
      Size = 2000
    end
    object qryGetRptColumnsConstID: TIntegerField
      DisplayLabel = #1603#1583' '#1587#1578#1608#1606' '#1579#1575#1576#1578
      FieldName = 'ConstID'
    end
    object qryGetRptColumns_ConstID: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1587#1578#1608#1606' '#1579#1575#1576#1578
      FieldKind = fkLookup
      FieldName = '_ConstID'
      LookupDataSet = qryGetRptConstColumns
      LookupKeyFields = 'ConstID'
      LookupResultField = 'ColumnsCaption'
      KeyFields = 'ConstID'
      Lookup = True
    end
  end
  object srcGetRptColumns: TDataSource
    DataSet = qryGetRptColumns
    OnStateChange = srcGetRptColumnsStateChange
    Left = 414
    Top = 215
  end
  object qryWage: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     FormsInfo.FormInfoID, FormsInfo.InfoID, FormsInfo.Inf' +
        'oName_L1, FormsInfo.InfoName_L2'
      'FROM Pay.FormsInfo INNER JOIN'
      
        '                      Pay.FormTypes ON FormsInfo.FormType = Form' +
        'Types.FormType'
      
        'WHERE     (FormTypes.SalaryKind IN (1, 2, 3, 4, 5, 6, 7, 8, 13))' +
        ' AND (FormsInfo.FormInfoID IN (1))')
    Left = 16
    Top = 245
    object qryWageFormInfoID: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'FormInfoID'
    end
    object qryWageInfoID: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldName = 'InfoID'
    end
    object qryWageInfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryWageInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
  end
  object SrcWage: TDataSource
    DataSet = qryWage
    Left = 96
    Top = 245
  end
  object srcWageDec: TDataSource
    DataSet = DmF.qryWageDec
    Left = 160
    Top = 243
  end
  object qryGetRptConstColumns: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        ConstID, ColumnsName, Alias, ColumnsCaption, Tabel' +
        'Name, IsOutPut, SortType, SortOrder, GroupBy'
      'FROM Pay.GetRptConstColumns')
    Left = 416
    Top = 109
  end
  object qryRptColumnsWage: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryRptColumnsWageAfterScroll
    Parameters = <
      item
        Name = 'GetReprotsID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM Pay.GetRptColumns'
      'where (GetReprotsID=:GetReprotsID) AND ( Kind = 2 )'
      'order by ColumnsID')
    Left = 406
    Top = 375
    object IntegerField1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1587#1578#1608#1606
      FieldName = 'ColumnsID'
      Required = True
    end
    object IntegerField2: TIntegerField
      Tag = 3
      FieldName = 'GetReprotsID'
    end
    object StringField1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1587#1578#1608#1606
      FieldName = 'ColumnsName'
      Required = True
      Size = 80
    end
    object WordField1: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593
      FieldName = 'Kind'
    end
    object StringField2: TStringField
      Tag = 3
      FieldName = 'ColumnsSalaryID'
      Size = 300
    end
    object BCDField1: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1579#1575#1576#1578
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object WideStringField1: TWideStringField
      FieldName = 'ColumnsSalaryIDSub'
      Size = 300
    end
    object FloatField1: TFloatField
      FieldName = 'ColumnsRoundNo'
    end
    object WideStringField2: TWideStringField
      DisplayLabel = #1605#1581#1575#1587#1576#1575#1578' '#1587#1578#1608#1606
      FieldName = 'ColumnsCalc'
      Size = 2000
    end
    object IntegerField3: TIntegerField
      DisplayLabel = #1603#1583' '#1587#1578#1608#1606' '#1579#1575#1576#1578
      FieldName = 'ConstID'
    end
    object StringField3: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1587#1578#1608#1606' '#1579#1575#1576#1578
      FieldKind = fkLookup
      FieldName = '_ConstID'
      LookupDataSet = qryGetRptConstColumns
      LookupKeyFields = 'ConstID'
      LookupResultField = 'ColumnsCaption'
      KeyFields = 'ConstID'
      Lookup = True
    end
  end
  object qryRptColumnsDec: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryRptColumnsDecAfterScroll
    Parameters = <
      item
        Name = 'GetReprotsID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM Pay.GetRptColumns'
      'where (GetReprotsID=:GetReprotsID) AND ( Kind = 3 )'
      'order by ColumnsID')
    Left = 270
    Top = 423
    object IntegerField4: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1587#1578#1608#1606
      FieldName = 'ColumnsID'
      Required = True
    end
    object IntegerField5: TIntegerField
      Tag = 3
      FieldName = 'GetReprotsID'
    end
    object StringField4: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1587#1578#1608#1606
      FieldName = 'ColumnsName'
      Required = True
      Size = 80
    end
    object WordField2: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593
      FieldName = 'Kind'
    end
    object StringField5: TStringField
      Tag = 3
      FieldName = 'ColumnsSalaryID'
      Size = 300
    end
    object BCDField2: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1579#1575#1576#1578
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object WideStringField3: TWideStringField
      FieldName = 'ColumnsSalaryIDSub'
      Size = 300
    end
    object FloatField2: TFloatField
      FieldName = 'ColumnsRoundNo'
    end
    object WideStringField4: TWideStringField
      DisplayLabel = #1605#1581#1575#1587#1576#1575#1578' '#1587#1578#1608#1606
      FieldName = 'ColumnsCalc'
      Size = 2000
    end
    object IntegerField6: TIntegerField
      DisplayLabel = #1603#1583' '#1587#1578#1608#1606' '#1579#1575#1576#1578
      FieldName = 'ConstID'
    end
    object StringField6: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1587#1578#1608#1606' '#1579#1575#1576#1578
      FieldKind = fkLookup
      FieldName = '_ConstID'
      LookupDataSet = qryGetRptConstColumns
      LookupKeyFields = 'ConstID'
      LookupResultField = 'ColumnsCaption'
      KeyFields = 'ConstID'
      Lookup = True
    end
  end
  object srcRptColumnsWage: TDataSource
    DataSet = qryRptColumnsWage
    OnStateChange = srcGetRptColumnsStateChange
    Left = 470
    Top = 351
  end
  object srcRptColumnsDec: TDataSource
    DataSet = qryRptColumnsDec
    OnStateChange = srcGetRptColumnsStateChange
    Left = 270
    Top = 351
  end
  object qryRptColumnsFunctions: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryRptColumnsFunctionsAfterScroll
    Parameters = <
      item
        Name = 'GetReprotsID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM Pay.GetRptColumns'
      'where (GetReprotsID=:GetReprotsID) AND ( Kind = 1 )'
      'order by ColumnsID')
    Left = 630
    Top = 335
    object IntegerField7: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1587#1578#1608#1606
      FieldName = 'ColumnsID'
      Required = True
    end
    object IntegerField8: TIntegerField
      Tag = 3
      FieldName = 'GetReprotsID'
    end
    object StringField7: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1587#1578#1608#1606
      FieldName = 'ColumnsName'
      Required = True
      Size = 80
    end
    object WordField3: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593
      FieldName = 'Kind'
    end
    object StringField8: TStringField
      Tag = 3
      FieldName = 'ColumnsSalaryID'
      Size = 300
    end
    object BCDField3: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1579#1575#1576#1578
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object WideStringField5: TWideStringField
      FieldName = 'ColumnsSalaryIDSub'
      Size = 300
    end
    object FloatField3: TFloatField
      FieldName = 'ColumnsRoundNo'
    end
    object WideStringField6: TWideStringField
      DisplayLabel = #1605#1581#1575#1587#1576#1575#1578' '#1587#1578#1608#1606
      FieldName = 'ColumnsCalc'
      Size = 2000
    end
    object IntegerField9: TIntegerField
      DisplayLabel = #1603#1583' '#1587#1578#1608#1606' '#1579#1575#1576#1578
      FieldName = 'ConstID'
    end
    object StringField9: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1587#1578#1608#1606' '#1579#1575#1576#1578
      FieldKind = fkLookup
      FieldName = '_ConstID'
      LookupDataSet = qryGetRptConstColumns
      LookupKeyFields = 'ConstID'
      LookupResultField = 'ColumnsCaption'
      KeyFields = 'ConstID'
      Lookup = True
    end
  end
  object srcRptColumnsFunctions: TDataSource
    DataSet = qryRptColumnsFunctions
    OnStateChange = srcGetRptColumnsStateChange
    Left = 654
    Top = 391
  end
  object qryOtherDec: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryRptColumnsDecAfterScroll
    Parameters = <
      item
        Name = 'GetReprotsID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM Pay.GetRptColumns'
      'where (GetReprotsID=:GetReprotsID) AND ( Kind = 4 )'
      'order by ColumnsID')
    Left = 86
    Top = 415
    object IntegerField10: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1587#1578#1608#1606
      FieldName = 'ColumnsID'
      Required = True
    end
    object IntegerField11: TIntegerField
      Tag = 3
      FieldName = 'GetReprotsID'
    end
    object StringField10: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1587#1578#1608#1606
      FieldName = 'ColumnsName'
      Required = True
      Size = 80
    end
    object WordField4: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593
      FieldName = 'Kind'
    end
    object StringField11: TStringField
      Tag = 3
      FieldName = 'ColumnsSalaryID'
      Size = 300
    end
    object BCDField4: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1579#1575#1576#1578
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object WideStringField7: TWideStringField
      FieldName = 'ColumnsSalaryIDSub'
      Size = 300
    end
    object FloatField4: TFloatField
      FieldName = 'ColumnsRoundNo'
    end
    object WideStringField8: TWideStringField
      DisplayLabel = #1605#1581#1575#1587#1576#1575#1578' '#1587#1578#1608#1606
      FieldName = 'ColumnsCalc'
      Size = 2000
    end
    object IntegerField12: TIntegerField
      DisplayLabel = #1603#1583' '#1587#1578#1608#1606' '#1579#1575#1576#1578
      FieldName = 'ConstID'
    end
    object StringField12: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1587#1578#1608#1606' '#1579#1575#1576#1578
      FieldKind = fkLookup
      FieldName = '_ConstID'
      LookupDataSet = qryGetRptConstColumns
      LookupKeyFields = 'ConstID'
      LookupResultField = 'ColumnsCaption'
      KeyFields = 'ConstID'
      Lookup = True
    end
  end
  object srcOtherDec: TDataSource
    DataSet = qryOtherDec
    OnStateChange = srcGetRptColumnsStateChange
    Left = 86
    Top = 343
  end
end
