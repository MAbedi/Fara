inherited tshFunctionsF: TtshFunctionsF
  Caption = #1579#1576#1578' '#1603#1575#1585#1603#1585#1583
  ClientHeight = 517
  ClientWidth = 810
  OnResize = FormResize
  ExplicitWidth = 822
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    Width = 810
    ExplicitWidth = 810
    object okPanel: TPanel [0]
      Left = 225
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
      Left = 388
      Top = 1
      Width = 421
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        421
        39)
      object btn1: TBitBtn
        Left = 350
        Top = 7
        Width = 67
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object btn2: TBitBtn
        Left = 281
        Top = 7
        Width = 67
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object btn3: TBitBtn
        Left = 212
        Top = 7
        Width = 67
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601'...'
        TabOrder = 2
        OnClick = btn3Click
      end
      object btnExcel: TBitBtn
        Left = 143
        Top = 7
        Width = 67
        Height = 25
        Action = actFilter
        Anchors = [akTop, akRight]
        Caption = #1605#1581#1583#1608#1583#1607
        TabOrder = 3
      end
      object btnExcel1: TBitBtn
        Left = 74
        Top = 7
        Width = 67
        Height = 25
        Action = actGetExcel
        Anchors = [akTop, akRight]
        Caption = #1582#1608#1575#1606#1583#1606' Excel'
        TabOrder = 4
      end
      object BitBtn2: TBitBtn
        Left = 5
        Top = 7
        Width = 67
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #1587#1575#1610#1585
        TabOrder = 5
        OnClick = BitBtn2Click
      end
    end
    object btnSort: TBitBtn
      Left = 79
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object btnSort1: TBitBtn
      Left = 155
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object btnSearch_: TBitBtn
      Left = 231
      Top = 8
      Width = 75
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607'Excel'
      TabOrder = 5
    end
    object btnPrint: TBitBtn
      Left = 307
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Caption = #1670#1575#1662
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Width = 810
    ExplicitWidth = 810
    inherited ImgTemplate: TImage
      Left = 801
      ExplicitLeft = 781
    end
    inherited lblCaption: TLabel
      Left = 700
      Width = 64
      Height = 16
      Caption = #1579#1576#1578' '#1603#1575#1585#1603#1585#1583
      ExplicitLeft = 700
      ExplicitWidth = 64
    end
    object Image2: TImage
      Left = 184
      Top = 16
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        0000100000000100180000000000000300000000000000000000000000000000
        0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1
        E2EFF1E2EFF1E2EFF199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1646F71646F71646F71646F71646F71646F71646F71
        646F71646F71646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFF99A8AC99A8AC99A8
        AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACF0FBFFF0
        FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FB
        FFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0
        FBFF}
      Visible = False
    end
    object Image1: TImage
      Left = 201
      Top = 16
      Width = 14
      Height = 15
      AutoSize = True
      Picture.Data = {
        07544269746D6170CA020000424DCA0200000000000036000000280000000E00
        00000F0000000100180000000000940200000000000000000000000000000000
        0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFF0000FFFFFFE2EFF1
        E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF199A8
        ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF008000FFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFF
        FFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFF008000008000008000FFFFFFFFFFFF64
        6F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFFFF00800000800000
        8000008000008000FFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFFFF
        FFFF008000008000008000FFFFFF008000008000FFFFFF646F7199A8ACF0FBFF
        0000FFFFFFE2EFF1FFFFFF008000008000008000FFFFFFFFFFFFFFFFFF008000
        FFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFF008000008000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1
        FFFFFF008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8
        ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1646F71646F71646F
        71646F71646F71646F71646F71646F71646F71646F7199A8ACF0FBFF0000FFFF
        FF99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
        A8AC99A8ACF0FBFF0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0
        FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF0000}
      Visible = False
    end
  end
  inherited Panel3: TPanel
    Width = 810
    Height = 423
    ExplicitWidth = 810
    object tbc1: TTabControl
      Left = 2
      Top = 2
      Width = 806
      Height = 420
      Align = alClient
      TabOrder = 0
      OnChange = tbc1Change
      OnChanging = tbc1Changing
      object lblPersonIdChange: TLabel
        Left = 4
        Top = 6
        Width = 798
        Height = 14
        Align = alTop
        Alignment = taRightJustify
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 12
      end
      object grd1: TDBGrid
        Tag = 111
        Left = 4
        Top = 215
        Width = 798
        Height = 150
        Align = alClient
        Color = clCream
        DataSource = srcFunctions
        DrawingStyle = gdsGradient
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        PopupMenu = PopupMenu2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = grd1DrawColumnCell
        OnDblClick = grd1DblClick
        OnEditButtonClick = grd1EditButtonClick
        OnKeyPress = grd1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = '_Row'
            ReadOnly = True
            Width = 29
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'WorkShopId'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_WorkShopId'
            ReadOnly = True
            Width = 26
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'MachineId'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_MachineName'
            ReadOnly = True
            Width = 32
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'PersonId'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_PersonId'
            ReadOnly = True
            Width = 34
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'StuffId'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_StuffId'
            ReadOnly = True
            Width = 35
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'StuffCode2'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_StuffCode2'
            ReadOnly = True
            Width = 66
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'StuffCode3'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_StuffCode3'
            ReadOnly = True
            Width = 56
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'Productionprocess'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_Productionprocess'
            ReadOnly = True
            Width = 43
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'EarthField'
            Width = 40
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'Gate'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_EarthField'
            ReadOnly = True
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ratio'
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FunctionAmount'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FunctionDate'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StartHour'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EndHour'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FunctionHour'
            ReadOnly = True
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FunctionNote'
            Width = 43
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'CaseId'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_CaseId'
            ReadOnly = True
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FunctionType'
            PickList.Strings = (
              #1581#1590#1608#1585
              #1605#1585#1582#1589#1740' '#1578#1588#1608#1740#1602#1740
              #1605#1585#1582#1589#1610' '#1575#1587#1578#1581#1602#1575#1602#1610
              #1605#1585#1582#1589#1610' '#1587#1575#1593#1578#1610
              #1575#1587#1578#1593#1604#1575#1580#1610
              #1605#1575#1605#1608#1585#1610#1578
              #1570#1605#1575#1583#1607' '#1576#1603#1575#1585
              #1593#1583#1605' '#1581#1590#1608#1585' '#1578#1593#1591#1740#1604#1575#1578
              #1594#1740#1576#1578
              #1587#1575#1740#1585
              #1576#1575#1585#1606#1583#1711#1610
              #1575#1587#1578#1585#1575#1581#1578' ')
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FunctionStatus'
            PickList.Strings = (
              #1605#1608#1602#1578
              #1602#1591#1593#1610
              #1606#1607#1575#1574#1610)
            ReadOnly = True
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount1'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount2'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount3'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ShiftWork'
            PickList.Strings = (
              '0'
              '35%'
              '22.5%'
              '15%'
              '12.5%')
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Shift'
            PickList.Strings = (
              #1589#1576#1581' '#1705#1575#1585
              #1593#1589#1585' '#1705#1575#1585
              #1588#1576' '#1705#1575#1585' '
              #1587#1575#1740#1585)
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ShiftWorkTime'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OverTime'
            Width = 54
            Visible = True
          end
          item
            ButtonStyle = cbsNone
            Expanded = False
            FieldName = 'Supervisor'
            Visible = True
          end>
      end
      object pnlMaster: TPanel
        Left = 4
        Top = 20
        Width = 798
        Height = 155
        Align = alTop
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 1
        object pnlDate: TPanel
          Left = 0
          Top = 0
          Width = 798
          Height = 31
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            798
            31)
          object lbl2: TLabel
            Left = 689
            Top = 8
            Width = 21
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1585#1610#1582
            ExplicitLeft = 671
          end
          object medtDate: TMaskEdit
            Left = 602
            Top = 5
            Width = 81
            Height = 21
            Anchors = [akTop, akRight]
            EditMask = '9999/99/99'
            MaxLength = 10
            TabOrder = 0
            Text = '    /  /  '
          end
        end
        object pnlWorkShopId: TPanel
          Left = 0
          Top = 62
          Width = 798
          Height = 31
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            798
            31)
          object lblWorkShopId: TLabel
            Left = 689
            Top = 8
            Width = 100
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583#1608' '#1606#1575#1605' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
            ExplicitLeft = 671
          end
          object btnWorkShop: TSpeedButton
            Tag = 1
            Left = 575
            Top = 3
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = btnWorkShopClick
          end
          object medtWorkShopId: TMaskEdit
            Left = 602
            Top = 4
            Width = 81
            Height = 21
            Anchors = [akTop, akRight]
            Enabled = False
            EditMask = '999999999'
            MaxLength = 9
            TabOrder = 0
            Text = '0        '
            OnChange = medtWorkShopIdChange
            OnKeyDown = medtWorkShopIdKeyDown
          end
          object medtWorkShopName: TMaskEdit
            Left = 295
            Top = 5
            Width = 277
            Height = 19
            Anchors = [akTop, akRight]
            Color = clInactiveCaption
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            Text = ''
          end
        end
        object pnlStuffId: TPanel
          Left = 0
          Top = 124
          Width = 798
          Height = 31
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          DesignSize = (
            798
            31)
          object lblStuffId: TLabel
            Left = 689
            Top = 8
            Width = 69
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583#1608' '#1606#1575#1605' '#1605#1581#1589#1608#1604
            ExplicitLeft = 671
          end
          object btnStuffId: TSpeedButton
            Tag = 1
            Left = 575
            Top = 3
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = btnStuffIdClick
          end
          object medtStuffId: TMaskEdit
            Left = 602
            Top = 4
            Width = 81
            Height = 21
            Anchors = [akTop, akRight]
            EditMask = '999999999'
            MaxLength = 9
            TabOrder = 0
            Text = '0        '
            OnKeyDown = medtStuffIdKeyDown
          end
          object medtStuffName: TMaskEdit
            Left = 295
            Top = 5
            Width = 277
            Height = 19
            Anchors = [akTop, akRight]
            Color = clInactiveCaption
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            Text = ''
          end
        end
        object pnlPersonId: TPanel
          Left = 0
          Top = 93
          Width = 798
          Height = 31
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          DesignSize = (
            798
            31)
          object lblPersonId: TLabel
            Left = 689
            Top = 8
            Width = 66
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583#1608' '#1606#1575#1605' '#1662#1585#1587#1606#1604
            ExplicitLeft = 671
          end
          object btnPersonId: TSpeedButton
            Tag = 1
            Left = 575
            Top = 3
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = btnPersonIdClick
          end
          object medtPersonId: TMaskEdit
            Left = 602
            Top = 4
            Width = 81
            Height = 21
            Anchors = [akTop, akRight]
            EditMask = '999999999'
            MaxLength = 9
            TabOrder = 0
            Text = '0        '
            OnKeyDown = medtPersonIdKeyDown
          end
          object medtPersonName: TMaskEdit
            Left = 295
            Top = 5
            Width = 277
            Height = 19
            Anchors = [akTop, akRight]
            Color = clInactiveCaption
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            Text = ''
          end
        end
        object pnlType10: TPanel
          Left = 0
          Top = 31
          Width = 798
          Height = 31
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 4
          DesignSize = (
            798
            31)
          object Label3: TLabel
            Left = 689
            Top = 8
            Width = 62
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1587#1575#1593#1578' '#1588#1585#1608#1593
          end
          object medtStartHour: TMaskEdit
            Left = 602
            Top = 5
            Width = 81
            Height = 21
            Anchors = [akTop, akRight]
            EditMask = '99:99'
            MaxLength = 5
            TabOrder = 0
            Text = '08:00'
          end
        end
      end
      object Panel1: TPanel
        Left = 4
        Top = 175
        Width = 798
        Height = 40
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object BitBtn1: TBitBtn
          Left = 103
          Top = 9
          Width = 75
          Height = 25
          Hint = ' '
          Caption = #1578#1575#1586#1607' '#1587#1575#1586#1740
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object grpFunctionCopy: TGroupBox
          Left = 332
          Top = 0
          Width = 466
          Height = 40
          Align = alRight
          Caption = #1603#1662#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1578#1575#1585#1610#1582'  '#1582#1575#1589' '
          TabOrder = 1
          Visible = False
          DesignSize = (
            466
            40)
          object Label1: TLabel
            Left = 357
            Top = 17
            Width = 21
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1585#1610#1582
            ExplicitLeft = 198
          end
          object Label2: TLabel
            AlignWithMargins = True
            Left = 455
            Top = 18
            Width = 6
            Height = 17
            Align = alRight
            Alignment = taCenter
            BiDiMode = bdRightToLeftNoAlign
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            Transparent = True
            ExplicitHeight = 13
          end
          object ProgressBar1: TProgressBar
            Left = 2
            Top = 15
            Width = 211
            Height = 23
            Align = alLeft
            MarqueeInterval = 1
            Step = 1
            TabOrder = 2
          end
          object medtFunctionCopy: TMaskEdit
            Left = 297
            Top = 14
            Width = 57
            Height = 21
            Anchors = [akTop, akRight]
            EditMask = '9999/99/99'
            MaxLength = 10
            TabOrder = 0
            Text = '    /  /  '
          end
          object btnFunctionCopy: TBitBtn
            Left = 218
            Top = 12
            Width = 75
            Height = 25
            Hint = ' '
            Caption = #1575#1606#1578#1602#1575#1604
            TabOrder = 1
            OnClick = btnFunctionCopyClick
          end
        end
        object btnRecall: TBitBtn
          Left = 22
          Top = 9
          Width = 75
          Height = 25
          Action = actRecall
          Caption = #1601#1585#1575#1582#1608#1575#1606#1740
          TabOrder = 2
          Visible = False
        end
      end
      object SumGrid1: TSumGrid
        Left = 4
        Top = 365
        Width = 798
        Hint = #1575#1590#1575#1601#1607' '#1603#1575#1585#1610
        Active = False
        Enable_Controls = True
        MasterGrid = grd1
        FieldsName = 
          'FunctionAmount;FunctionHour;Amount1;Amount2;Amount3;ShiftWork;Sh' +
          'ift;ShiftWorkTime;OverTime;'
      end
      object pnlBottomCheck: TPanel
        Left = 4
        Top = 385
        Width = 798
        Height = 30
        Align = alBottom
        TabOrder = 4
        ExplicitTop = 386
        object SpeedButton21: TSpeedButton
          Left = 11
          Top = 4
          Width = 61
          Height = 22
          Action = actCopyPaste
          ParentShowHint = False
          ShowHint = True
        end
        object newPanel2: TPanel
          Left = 558
          Top = 1
          Width = 239
          Height = 28
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
        end
      end
    end
  end
  inherited ActionList: TActionList
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcFunctions
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcFunctions
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcFunctions
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcFunctions
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      Caption = #1581#1584#1601' '#1587#1591#1585' '#1580#1575#1585#1610
      DataSource = srcFunctions
    end
    object actExcel: TAction [9]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607'Excel'
      OnExecute = actExcelExecute
    end
    object actFilter: TAction [10]
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actCopyPaste: TAction [11]
      Caption = #1603#1662#1610' '#1587#1591#1585
      ShortCut = 16397
      OnExecute = actCopyPasteExecute
    end
    object actPrint: TAction [12]
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSort: TAction [13]
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actGetExcel: TAction [14]
      Caption = #1582#1608#1575#1606#1583#1606' Excel'
      OnExecute = actGetExcelExecute
    end
    object actStatus: TAction [15]
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578
      OnExecute = actStatusExecute
    end
    object actFunctionCopy: TAction [16]
      Caption = #1603#1662#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1578#1575#1585#1610#1582' '#1582#1575#1589
      OnExecute = actFunctionCopyExecute
    end
    object actMachineStopF2: TAction [17]
      Caption = #1578#1608#1602#1601#1575#1578' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
      OnExecute = actMachineStopF2Execute
    end
    object actMachineStopF3: TAction [18]
      Caption = #1578#1608#1602#1601#1575#1578' '#1662#1585#1587#1606#1604' '#1608' '#1662#1610#1605#1575#1606#1603#1575#1585#1575#1606
      OnExecute = actMachineStopF3Execute
    end
    object actRecall: TAction [19]
      Caption = #1601#1585#1575#1582#1608#1575#1606#1740
      OnExecute = actRecallExecute
    end
    object actCopyAll: TAction [20]
      Caption = ' '#1579#1576#1578' '#1711#1585#1608#1607#1740' '#1705#1575#1585#1705#1585#1583' '#1575#1586' '#1587#1591#1585' '#1580#1575#1585#1610
      OnExecute = actCopyAllExecute
    end
    inherited actManagGridColumns: TAction
      OnExecute = actManagGridColumnsExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 272
    Top = 5
  end
  object qryFunctions: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryFunctionsAfterInsert
    BeforeEdit = qryFunctionsBeforeEdit
    AfterEdit = qryFunctionsAfterEdit
    BeforePost = qryFunctionsBeforePost
    AfterPost = qryFunctionsAfterPost
    BeforeDelete = qryFunctionsBeforeDelete
    AfterDelete = qryFunctionsAfterDelete
    AfterScroll = qryFunctionsAfterScroll
    OnCalcFields = qryFunctionsCalcFields
    Parameters = <
      item
        Name = 'FunctionInfoType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         Tsh.Functions'
      
        'WHERE  ( ( FunctionInfoType = :FunctionInfoType  AND (FunctionId' +
        ' = 0))'
      'or MaintenanceID>0)')
    Left = 88
    Top = 184
    object qryFunctionsFunctionId: TIntegerField
      FieldName = 'FunctionId'
      Required = True
    end
    object qryFunctionsFunctionInfoType: TWordField
      FieldName = 'FunctionInfoType'
      Required = True
    end
    object qryFunctionsWorkShopId: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1585#1711#1575#1607'  '
      FieldName = 'WorkShopId'
    end
    object qryFunctions_WorkShopId: TStringField
      DisplayLabel = #1603#1575#1585#1711#1575#1607'  '
      FieldKind = fkLookup
      FieldName = '_WorkShopId'
      LookupDataSet = qryWorkShopId
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'WorkShopId'
      Required = True
      Size = 100
      Lookup = True
    end
    object qryFunctionsMachineId: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1582#1608#1583#1585#1608
      FieldName = 'MachineId'
      Required = True
    end
    object qryFunctions_MachineName: TStringField
      DisplayLabel = #1582#1608#1583#1585#1608
      FieldKind = fkLookup
      FieldName = '_MachineName'
      LookupDataSet = qryMachineId
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'MachineId'
      Size = 150
      Lookup = True
    end
    object qryFunctionsPersonId: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1585#1587#1606#1604' '
      FieldName = 'PersonId'
      Required = True
      OnChange = qryFunctionsPersonIdChange
    end
    object qryFunctions_PersonId: TStringField
      DisplayLabel = #1662#1585#1587#1606#1604' '
      FieldKind = fkLookup
      FieldName = '_PersonId'
      LookupDataSet = qryPerson
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonId'
      Required = True
      Size = 100
      Lookup = True
    end
    object qryFunctions_SupervisorAllocation: TSmallintField
      FieldKind = fkLookup
      FieldName = '_SupervisorAllocation'
      LookupDataSet = qryPerson
      LookupKeyFields = 'CustID'
      LookupResultField = 'SupervisorAllocation'
      KeyFields = 'PersonId'
      Lookup = True
    end
    object qryFunctionsStuffId: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1581#1589#1608#1604' '
      FieldName = 'StuffId'
    end
    object qryFunctions_StuffId: TStringField
      DisplayLabel = #1605#1581#1589#1608#1604' '
      FieldKind = fkLookup
      FieldName = '_StuffId'
      LookupDataSet = qryMahsool
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'StuffId'
      Size = 100
      Lookup = True
    end
    object qryFunctionsProductionprocess: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1601#1585#1570#1610#1606#1583' '#1578#1608#1604#1610#1583
      FieldName = 'Productionprocess'
    end
    object qryFunctions_Productionprocess: TStringField
      DisplayLabel = #1601#1585#1570#1610#1606#1583' '#1578#1608#1604#1610#1583
      FieldKind = fkLookup
      FieldName = '_Productionprocess'
      LookupDataSet = qryProductionprocess
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'Productionprocess'
      Size = 100
      Lookup = True
    end
    object qryFunctionsEarthField: TStringField
      DisplayLabel = #1603#1583#1605#1586#1585#1593#1607
      FieldName = 'EarthField'
      Size = 10
    end
    object qryFunctionsGate: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1602#1591#1593#1607
      FieldName = 'Gate'
    end
    object qryFunctions_EarthField: TStringField
      DisplayLabel = #1605#1586#1585#1593#1607' '#1602#1591#1593#1607
      FieldKind = fkLookup
      FieldName = '_EarthField'
      LookupDataSet = qryEarthField
      LookupKeyFields = 'EarthField;Gate'
      LookupResultField = 'EarthDesc'
      KeyFields = 'EarthField;Gate'
      Size = 100
      Lookup = True
    end
    object qryFunctionsRatio: TIntegerField
      Tag = 3
      DisplayLabel = #1606#1587#1576#1578
      FieldName = 'Ratio'
    end
    object qryFunctionsFunctionDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'FunctionDate'
      Required = True
      FixedChar = True
      Size = 10
    end
    object qryFunctionsStartHour: TDateTimeField
      Tag = 3
      DisplayLabel = #1587#1575#1593#1578' '#1588#1585#1608#1593
      FieldName = 'StartHour'
      OnChange = qryFunctionsStartHourChange
      OnGetText = qryFunctionsStartHourGetText
      EditMask = '!90:00;1;'
    end
    object qryFunctionsEndHour: TDateTimeField
      Tag = 3
      DisplayLabel = #1587#1575#1593#1578' '#1662#1575#1610#1575#1606
      FieldName = 'EndHour'
      OnChange = qryFunctionsStartHourChange
      OnGetText = qryFunctionsStartHourGetText
      EditMask = '!90:00;1;_'
    end
    object qryFunctionsFunctionNote: TWideStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'FunctionNote'
      Size = 500
    end
    object qryFunctionsCaseId: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1601#1589#1610#1604#1610'2'
      FieldName = 'CaseId'
      Required = True
    end
    object qryFunctions_CaseId: TStringField
      DisplayLabel = #1578#1601#1589#1610#1604#1610'2'
      FieldKind = fkLookup
      FieldName = '_CaseId'
      LookupDataSet = qryCaseId
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CaseId'
      Size = 100
      Lookup = True
    end
    object qryFunctionsFunctionType: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1603#1575#1585#1603#1585#1583' '
      FieldName = 'FunctionType'
      OnChange = qryFunctionsFunctionTypeChange
      OnGetText = qryFunctionsALLPikGetText
      OnSetText = qryFunctionsALLPikSetText
    end
    object qryFunctionsFunctionStatus: TWordField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578' '
      FieldName = 'FunctionStatus'
      OnGetText = qryFunctionsALLPikGetText
      OnSetText = qryFunctionsALLPikSetText
    end
    object qryFunctionsAmount1: TFloatField
      FieldName = 'Amount1'
    end
    object qryFunctionsAmount2: TFloatField
      FieldName = 'Amount2'
    end
    object qryFunctionsAmount3: TFloatField
      FieldName = 'Amount3'
    end
    object qryFunctionsStuffCode2: TLargeintField
      DisplayLabel = #1705#1583' '#1593#1605#1604#1740#1575#1578
      FieldName = 'StuffCode2'
    end
    object qryFunctions_StuffCode2: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1593#1605#1604#1740#1575#1578
      FieldKind = fkLookup
      FieldName = '_StuffCode2'
      LookupDataSet = qryStuffCode2
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'StuffCode2'
      Size = 200
      Lookup = True
    end
    object qryFunctionsStuffCode3: TLargeintField
      DisplayLabel = #1705#1583' '#1575#1583#1608#1575#1578' '
      FieldName = 'StuffCode3'
    end
    object qryFunctions_StuffCode3: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1575#1583#1608#1575#1578' '
      FieldKind = fkLookup
      FieldName = '_StuffCode3'
      LookupDataSet = qryStuffCode3
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'StuffCode3'
      Size = 200
      Lookup = True
    end
    object qryFunctionsMaintenanceID: TIntegerField
      FieldName = 'MaintenanceID'
    end
    object qryFunctionsShiftWork: TWordField
      DisplayLabel = #1606#1608#1576#1578' '#1603#1575#1585#1610
      FieldName = 'ShiftWork'
      OnGetText = qryFunctionsALLPikGetText
      OnSetText = qryFunctionsALLPikSetText
    end
    object qryFunctionsShift: TWordField
      DisplayLabel = #1588#1610#1601#1578
      FieldName = 'Shift'
      OnGetText = qryFunctionsALLPikGetText
      OnSetText = qryFunctionsALLPikSetText
    end
    object qryFunctionsShiftWorkTime: TDateTimeField
      DisplayLabel = #1605#1583#1578' '#1606#1608#1576#1578' '#1603#1575#1585#1610
      FieldName = 'ShiftWorkTime'
      OnGetText = qryFunctionsStartHourGetText
    end
    object qryFunctionsOverTime: TDateTimeField
      DisplayLabel = #1575#1590#1575#1601#1607' '#1603#1575#1585#1610
      FieldName = 'OverTime'
      OnGetText = qryFunctionsStartHourGetText
    end
    object qryFunctionsFunctionHour: TDateTimeField
      DisplayLabel = #1603#1575#1585#1603#1585#1583' '
      FieldName = 'FunctionHour'
      OnGetText = qryFunctionsStartHourGetText
      EditMask = '!90:00;1;'
    end
    object qryFunctionsFunctionAmount: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1705#1575#1585#1705#1585#1583
      FieldName = 'FunctionAmount'
    end
    object qryFunctions_Row: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldKind = fkCalculated
      FieldName = '_Row'
      Calculated = True
    end
    object qryFunctionsFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryFunctionsLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryFunctionsSupervisor: TWordField
      DisplayLabel = #1581#1602' '#1587#1585#1662#1585#1587#1578
      FieldName = 'Supervisor'
    end
  end
  object srcFunctions: TDataSource
    DataSet = qryFunctions
    OnStateChange = srcFunctionsStateChange
    Left = 176
    Top = 264
  end
  object qryWorkShopId: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT Customers.CustID,Customers.CustName FROM Customers '
      
        '     INNER JOIN CustomersGroup ON Customers.CustomerGrpID = Cust' +
        'omersGroup.CustomerGrpID '
      '     WHERE (CustomersGroup.GroupType IN(5,16))')
    Left = 704
    Top = 288
  end
  object qryPerson: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Customers.CustID,Customers.CustName,Customers.SupervisorA' +
        'llocation FROM Customers '
      
        '    INNER JOIN CustomersGroup ON Customers.CustomerGrpID = Custo' +
        'mersGroup.CustomerGrpID '
      '')
    Left = 576
    Top = 280
  end
  object qryMahsool: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Left = 504
    Top = 272
  end
  object qryMachineId: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName '
      
        '   FROM StuffCoding INNER JOIN StuffGroups ON StuffCoding.GroupI' +
        'D = StuffGroups.GroupID '
      '    WHERE (StuffGroups.GroupType IN (9))')
    Left = 704
    Top = 344
  end
  object qryProductionprocess: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT Customers.CustID,Customers.CustName FROM Customers '
      
        '    INNER JOIN CustomersGroup ON Customers.CustomerGrpID = Custo' +
        'mersGroup.CustomerGrpID '
      '    WHERE (CustomersGroup.GroupType IN(18))')
    Left = 616
    Top = 344
  end
  object qryEarthField: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT EarthField, Gate, EarthDesc FROM Agr.Earth')
    Left = 440
    Top = 288
    object qryEarthFieldEarthField: TStringField
      FieldName = 'EarthField'
      Size = 10
    end
    object qryEarthFieldGate: TIntegerField
      FieldName = 'Gate'
    end
    object qryEarthFieldEarthDesc: TWideStringField
      FieldName = 'EarthDesc'
      Size = 100
    end
  end
  object qryCaseId: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT Customers.CustID,Customers.CustName FROM Customers '
      
        '     INNER JOIN CustomersGroup ON Customers.CustomerGrpID = Cust' +
        'omersGroup.CustomerGrpID '
      '    WHERE (CustomersGroup.GroupType IN(15))')
    Left = 472
    Top = 376
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcFunctions
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 291
    Top = 306
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A5 Rotated'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 3000
    PrinterSetup.mmMarginLeft = 3000
    PrinterSetup.mmMarginRight = 3000
    PrinterSetup.mmMarginTop = 3000
    PrinterSetup.mmPaperHeight = 148000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 208
    Template.FileName = 'D:\Projects\Fara2010\BSell\Exe\Report\TshFunctionsF1.rtm'
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
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 55000
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Amount2'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7789
        mmLeft = 100806
        mmTop = 529
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Amount3'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7789
        mmLeft = 77258
        mmTop = 529
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'FunctionHour'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7789
        mmLeft = 142611
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'FunctionAmount'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7789
        mmLeft = 161396
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'FunctionDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 180711
        mmTop = 529
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppPageStyle1: TppPageStyle
      Border.mmPadding = 0
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 139965
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        mmHeight = 14288
        mmLeft = 3440
        mmTop = 3704
        mmWidth = 198702
        BandType = 10
        LayerName = PageLayer1
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        mmHeight = 14023
        mmLeft = 3440
        mmTop = 17727
        mmWidth = 198702
        BandType = 10
        LayerName = PageLayer1
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape3'
        mmHeight = 7938
        mmLeft = 3440
        mmTop = 31485
        mmWidth = 198702
        BandType = 10
        LayerName = PageLayer1
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape4'
        mmHeight = 11113
        mmLeft = 3440
        mmTop = 39158
        mmWidth = 198702
        BandType = 10
        LayerName = PageLayer1
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape5'
        mmHeight = 65617
        mmLeft = 3440
        mmTop = 49742
        mmWidth = 198702
        BandType = 10
        LayerName = PageLayer1
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape6'
        mmHeight = 14023
        mmLeft = 3440
        mmTop = 115359
        mmWidth = 198702
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 76465
        mmLeft = 179388
        mmTop = 39158
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 76465
        mmLeft = 115888
        mmTop = 39158
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 76465
        mmLeft = 141023
        mmTop = 39158
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 76465
        mmLeft = 161396
        mmTop = 39158
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 76465
        mmLeft = 55298
        mmTop = 39158
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 76465
        mmLeft = 94192
        mmTop = 39158
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        OnGetText = ppLblCaptionGetText
        Border.mmPadding = 0
        Caption = #1711#1586#1575#1585#1588' '#1705#1575#1585#1705#1585#1583' '#1662#1585#1587#1606#1604'    '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 18
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 9991
        mmLeft = 147109
        mmTop = 5292
        mmWidth = 53446
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1605#1575#1607':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 18
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 10583
        mmLeft = 51594
        mmTop = 7408
        mmWidth = 6350
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1705#1583' '#1608' '#1606#1575#1605' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1740':  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6096
        mmLeft = 44990
        mmTop = 25400
        mmWidth = 34121
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1605#1581#1583#1608#1583#1607' '#1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7027
        mmLeft = 180637
        mmTop = 32279
        mmWidth = 17865
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1578#1608#1590#1610#1581#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7027
        mmLeft = 39338
        mmTop = 41275
        mmWidth = 12785
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7027
        mmLeft = 187855
        mmTop = 41275
        mmWidth = 7027
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1575#1590#1575#1601#1607' '#1705#1575#1585#1740
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 120915
        mmTop = 41275
        mmWidth = 14817
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1705#1575#1585#1705#1585#1583' '#1587#1575#1593#1578' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 141288
        mmTop = 41275
        mmWidth = 19315
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1705#1583' '#1608' '#1606#1575#1605' '#1662#1585#1587#1606#1604':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6096
        mmLeft = 47837
        mmTop = 18256
        mmWidth = 22013
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1705#1575#1585#1705#1585#1583' '#1585#1608#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 162190
        mmTop = 41275
        mmWidth = 15346
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 76465
        mmLeft = 73290
        mmTop = 39158
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585' 2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7027
        mmLeft = 101094
        mmTop = 41275
        mmWidth = 9483
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585' 3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7027
        mmLeft = 78073
        mmTop = 41275
        mmWidth = 9483
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'PersonId'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6879
        mmLeft = 31750
        mmTop = 18256
        mmWidth = 12700
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'WorkShopId'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6879
        mmLeft = 31485
        mmTop = 24342
        mmWidth = 10848
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = '_PersonId'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 7673
        mmTop = 18256
        mmWidth = 21960
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = '_WorkShopId'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6879
        mmLeft = 9790
        mmTop = 24342
        mmWidth = 21960
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 13
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6773
        mmLeft = 71438
        mmTop = 4763
        mmWidth = 56134
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label101'
        OnGetText = ppLblPrintDateGetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        Visible = False
        mmHeight = 6350
        mmLeft = 19050
        mmTop = 3969
        mmWidth = 13758
        BandType = 10
        LayerName = PageLayer1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        OnGetText = ppSysVarPageNoGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 5821
        mmLeft = 19844
        mmTop = 10848
        mmWidth = 6879
        BandType = 10
        LayerName = PageLayer1
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'PageLayer1'
        LayerType = ltPage
        Index = 0
      end
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 1
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object qryStuffCode2: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName'
      
        '   FROM StuffCoding INNER JOIN StuffGroups ON StuffCoding.GroupI' +
        'D = StuffGroups.GroupID '
      '   WHERE (StuffGroups.GroupType IN (4,6,7))')
    Left = 376
    Top = 336
  end
  object qryStuffCode3: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName,StuffCod' +
        'ing.c_StuffTecInfo'
      
        '   FROM StuffCoding INNER JOIN StuffGroups ON StuffCoding.GroupI' +
        'D = StuffGroups.GroupID '
      '   WHERE (StuffGroups.GroupType IN (9))')
    Left = 376
    Top = 392
  end
  object PopupMenu1: TPopupMenu
    Left = 208
    Top = 336
    object N11: TMenuItem
      Tag = 1
      Caption = #1670#1575#1662'1'
      OnClick = N11Click
    end
    object N21: TMenuItem
      Tag = 2
      Caption = #1670#1575#1662'2'
      OnClick = N11Click
    end
    object N31: TMenuItem
      Tag = 3
      Caption = #1670#1575#1662'3'
      OnClick = N11Click
    end
  end
  object popStatus: TPopupMenu
    Left = 112
    Top = 360
    object AllStatus1: TMenuItem
      Caption = 'AllStatus'
      Visible = False
      OnClick = AllStatus1Click
    end
    object N1: TMenuItem
      Caption = #1578#1576#1583#1610#1604' '#1576#1607' '#1605#1608#1602#1578
      OnClick = AllStatus1Click
    end
    object N2: TMenuItem
      Tag = 1
      Caption = #1578#1576#1583#1610#1604' '#1576#1607' '#1602#1591#1593#1610
      OnClick = AllStatus1Click
    end
    object N3: TMenuItem
      Tag = 2
      Caption = #1578#1576#1583#1610#1604' '#1576#1607' '#1606#1607#1575#1610#1610' '
      OnClick = AllStatus1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 368
    Top = 256
    object N4: TMenuItem
      Action = actFunctionCopy
    end
  end
  object popOther: TPopupMenu
    Left = 544
    Top = 392
    object MenuItem1: TMenuItem
      Action = actStatus
    end
    object N5: TMenuItem
      Action = actMachineStopF2
    end
    object N6: TMenuItem
      Action = actMachineStopF3
    end
    object N8: TMenuItem
      Action = actCopyAll
    end
  end
  object popDel: TPopupMenu
    Left = 688
    Top = 400
    object MenuItem2: TMenuItem
      Action = DataSetDelete1_
    end
    object N7: TMenuItem
      Caption = #1581#1584#1601' '#1603#1604' '#1587#1591#1585#1607#1575
      OnClick = N7Click
    end
  end
end
