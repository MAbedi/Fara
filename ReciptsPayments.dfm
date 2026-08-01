inherited ReciptsPaymentsF: TReciptsPaymentsF
  Left = 388
  Top = 225
  Caption = #1606#1581#1608#1607' '#1662#1585#1583#1575#1582#1578
  ClientHeight = 470
  ClientWidth = 701
  ExplicitWidth = 707
  ExplicitHeight = 499
  DesignSize = (
    701
    470)
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 413
    Width = 701
    Visible = False
    ExplicitTop = 413
    ExplicitWidth = 701
  end
  inherited Panel1: TPanel
    Width = 701
    TabOrder = 1
    ExplicitWidth = 701
    DesignSize = (
      701
      73)
    inherited Image1: TImage
      Left = 647
      ExplicitLeft = 647
    end
    inherited lblTopic0: TLabel
      Left = 561
      Width = 66
      Caption = #1606#1581#1608#1607' '#1662#1585#1583#1575#1582#1578
      ExplicitLeft = 561
      ExplicitWidth = 66
    end
    inherited lblTopic1: TLabel
      Left = 602
      Width = 12
      Caption = '...'
      ExplicitLeft = 602
      ExplicitWidth = 12
    end
  end
  inherited pnlDown: TPanel
    Top = 433
    Width = 701
    TabOrder = 2
    ExplicitTop = 433
    ExplicitWidth = 701
    inherited btnClose: TBitBtn
      ModalResult = 11
      OnClick = btnCloseClick
    end
    object btnOk: TBitBtn
      AlignWithMargins = True
      Left = 235
      Top = 4
      Width = 75
      Height = 29
      Action = actOk
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
      ModalResult = 1
      TabOrder = 1
    end
    object pnlAutoInsertPostInsert4: TPanel
      Left = 313
      Top = 1
      Width = 387
      Height = 35
      Align = alRight
      AutoSize = True
      TabOrder = 2
      object newPanel: TPanel
        Left = 155
        Top = 1
        Width = 231
        Height = 33
        Align = alRight
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        object BitBtn3: TBitBtn
          AlignWithMargins = True
          Left = 155
          Top = 5
          Width = 75
          Height = 23
          Margins.Left = 1
          Margins.Top = 5
          Margins.Right = 1
          Margins.Bottom = 5
          Action = DataSetInsert1
          Align = alRight
          Caption = #1580#1583#1610#1583
          TabOrder = 0
        end
        object BitBtn4: TBitBtn
          AlignWithMargins = True
          Left = 78
          Top = 5
          Width = 75
          Height = 23
          Margins.Left = 1
          Margins.Top = 5
          Margins.Right = 1
          Margins.Bottom = 5
          Action = DataSetEdit1
          Align = alRight
          Caption = #1608#1610#1585#1575#1610#1588
          TabOrder = 1
        end
        object btnDataSetDelete1_: TBitBtn
          AlignWithMargins = True
          Left = 1
          Top = 5
          Width = 75
          Height = 23
          Margins.Left = 1
          Margins.Top = 5
          Margins.Right = 1
          Margins.Bottom = 5
          Action = DataSetDelete1
          Align = alRight
          Caption = #1581#1584#1601
          TabOrder = 2
        end
      end
      object okPanel: TPanel
        Left = 1
        Top = 1
        Width = 154
        Height = 33
        Align = alRight
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 1
        object BitBtn1: TBitBtn
          AlignWithMargins = True
          Left = 78
          Top = 5
          Width = 75
          Height = 23
          Margins.Left = 1
          Margins.Top = 5
          Margins.Right = 1
          Margins.Bottom = 5
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
        object BitBtn8: TBitBtn
          AlignWithMargins = True
          Left = 1
          Top = 5
          Width = 75
          Height = 23
          Margins.Left = 1
          Margins.Top = 5
          Margins.Right = 1
          Margins.Bottom = 5
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
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 154
      Top = 4
      Width = 75
      Height = 29
      Action = DataSetDelete
      Align = alRight
      Caption = #1581#1584#1601' '#1705#1604#1740
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        0000000000020000000A00000010000000090000000200000000000000000000
        00020000000A000000120000000C0000000300000000FFFFFF00FFFFFF000000
        00020000000F1B0D74921F1086EF0D066D7A0000000E00000002000000020000
        000F11086B7C1F1086F01A0D70940000001200000002FFFFFF00FFFFFF000000
        000820137C923233AFFF3648CCFF1D1EA5FF0D066E7A0000000F0000000F0F07
        6C7C1F20A5FF3747CCFF2D2FAEFF1F1277950000000BFFFFFF00FFFFFF000000
        000C2A1E95F1596CD8FF3B51D3FF3A4FD2FF1E22A6FF0C046B7D0B056B7E2022
        A6FF3A50D3FF3A50D3FF4C5FD4FF2B1F94F100000010FFFFFF00FFFFFF000000
        00062A2185734D4FBAFF667EE0FF415AD6FF415AD7FF1F24A7FF2529A8FF415A
        D7FF415AD7FF5B72DEFF484AB8FF281F7E7900000009FFFFFF00FFFFFF000000
        00010000000A30298C73585CC1FF758DE6FF4A64DBFF4A65DBFF4A65DBFF4A64
        DBFF6983E3FF5356C0FF2E2786780000000C00000002FFFFFF00FFFFFF000000
        0000000000010000000A363091755D63C7FF6783E5FF5774E2FF5774E2FF5774
        E2FF565CC6FF342F8C7A0000000D0000000200000000FFFFFF00FFFFFF000000
        00000000000100000009231E87734A50BEFF7492EBFF6383E7FF6483E7FF6383
        E7FF3840B6FF18127A780000000C0000000200000000FFFFFF00FFFFFF000000
        0001000000072E2B966E555CC5FF85A1EFFF7897EDFF9CB6F4FF9DB7F5FF7997
        EEFF7796EDFF414ABCFF201B86730000000A00000001FFFFFF00FFFFFF000000
        00043A39A56B636CCFFF93AFF3FF83A1F1FFA6BFF7FF676DCAFF7E87DDFFAFC7
        F8FF83A3F2FF83A1F1FF5058C4FF2925907100000006FFFFFF00FFFFFF000000
        00065D5FD0EFAFC6F6FF8EADF4FFABC4F8FF6F76D0FF36349F6F5152B570868E
        E1FFB5CCF9FF8DACF4FFA1B8F4FF5D5ED0EF00000009FFFFFF00FFFFFF000000
        00035D60CB8695A0EAFFC0D3F9FF7880D7FF4242AD6B0000000600000007585B
        C16C8B93E6FFC1D3F9FF949EE9FF5A5DC58700000005FFFFFF00FFFFFF000000
        0001000000046165D182666ADBEC4D4EBC680000000500000001000000010000
        00055C60C66B666ADBEC5F62CB830000000700000001FFFFFF00FFFFFF000000
        0000000000000000000200000004000000020000000100000000000000000000
        00010000000300000005000000040000000100000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      ModalResult = 1
      TabOrder = 3
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 73
    Width = 701
    Height = 360
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Panel4: TPanel
      Left = 2
      Top = 240
      Width = 697
      Height = 118
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        697
        118)
      object SpeedButton1: TSpeedButton
        Left = 447
        Top = 6
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object Label20: TLabel
        Left = 576
        Top = 11
        Width = 111
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1605#1588#1578#1585#1740'/'#1576#1575#1606#1603'/'#1589#1606#1583#1608#1602
        FocusControl = edtCustID
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dbtxt_CustName: TDBText
        Left = 339
        Top = 34
        Width = 233
        Height = 18
        Anchors = [akTop, akRight]
        Color = 13948116
        DataField = '_CustName'
        DataSource = srcReciptsPayments
        ParentColor = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 161
        Top = 11
        Width = 20
        Height = 13
        Alignment = taRightJustify
        Caption = #1605#1576#1604#1594
        FocusControl = edtPayment
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblPaymentCo: TLabel
        Left = 343
        Top = 11
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = #1583#1585#1589#1583
        FocusControl = edtPaymentCo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox2: TGroupBox
        Left = 1
        Top = 58
        Width = 695
        Height = 59
        Align = alBottom
        Caption = ' '#1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610' '
        TabOrder = 3
        object dbmmoNote: TDBMemo
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 685
          Height = 36
          Align = alClient
          DataField = 'Note'
          DataSource = srcReciptsPayments
          TabOrder = 0
        end
      end
      object edtCustID: TDBEdit
        Left = 469
        Top = 6
        Width = 101
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'CustID'
        DataSource = srcReciptsPayments
        TabOrder = 0
        OnKeyDown = edtCustIDKeyDown
      end
      object edtPayment: TDBEdit
        Left = 30
        Top = 7
        Width = 129
        Height = 21
        DataField = 'Payment'
        DataSource = srcReciptsPayments
        TabOrder = 2
      end
      object edtPaymentCo: TDBEdit
        Left = 212
        Top = 7
        Width = 129
        Height = 21
        DataField = 'PaymentCo'
        DataSource = srcReciptsPayments
        TabOrder = 1
      end
    end
    object DBGrid1: TCedarDbgrid
      Tag = 111
      Left = 2
      Top = 2
      Width = 697
      Height = 238
      Align = alClient
      Color = clCream
      DataSource = srcReciptsPayments
      DynProps = <>
      Flat = True
      FooterParams.FillStyle = cfstSolidEh
      FooterParams.Font.Charset = DEFAULT_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -12
      FooterParams.Font.Name = 'Tahoma'
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      FooterParams.VertLines = False
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clWhite
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 0
      OnEditButtonClick = DBGrid1EditButtonClick
      OnExit = DBGrid1Exit
      OnKeyPress = DBGrid1KeyPress
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          CellButtons = <>
          DynProps = <>
          EditButton.Style = ebsEllipsisEh
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'CustID'
          Footers = <>
          Width = 125
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_CustName'
          Footers = <>
          Width = 110
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PaymentCo'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Payment'
          Footers = <>
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Note'
          Footers = <>
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PaymentDate'
          Footers = <>
          Width = 78
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList1: TActionList
    inherited DataSetPost1: TDataSetPost
      ShortCut = 0
      DataSource = srcReciptsPayments
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcReciptsPayments
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      ShortCut = 113
      DataSource = srcReciptsPayments
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcReciptsPayments
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      ShortCut = 115
      DataSource = srcReciptsPayments
    end
    object actPrint: TAction
      Category = 'Dataset'
      Caption = #1670#1575#1662
      ShortCut = 118
    end
    object DataSetDelete: TAction
      Category = 'Dataset'
      Caption = #1581#1584#1601
      OnExecute = DataSetDeleteExecute
    end
    object actOk: TAction
      Category = 'Dataset'
      Caption = #1578#1571#1610#1610#1600#1600#1600#1583
      ShortCut = 119
      OnExecute = actOkExecute
    end
  end
  object qryCustomers: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CustomerKindPayments'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT        Customers.CustID, Customers.CustName'
      'FROM            Customers INNER JOIN'
      
        '                         CustomersGroup ON Customers.CustomerGrp' +
        'ID = CustomersGroup.CustomerGrpID'
      
        'WHERE        (CustomersGroup.GroupType IN ( :CustomerKindPayment' +
        's )) AND (Customers.CustID <> 0)')
    Left = 576
    Top = 148
  end
  object srcCustomers: TDataSource
    Left = 592
    Top = 216
  end
  object qryReciptsPayments: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryReciptsPaymentsBeforeInsert
    AfterInsert = qryReciptsPaymentsAfterInsert
    AfterEdit = qryReciptsPaymentsAfterEdit
    BeforePost = qryReciptsPaymentsBeforePost
    AfterPost = qryReciptsPaymentsAfterPost
    AfterCancel = qryReciptsPaymentsAfterCancel
    BeforeDelete = qryReciptsPaymentsBeforeDelete
    AfterScroll = qryReciptsPaymentsAfterScroll
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
      'SELECT     *'
      'FROM            ReciptsPayments'
      
        'WHERE        (ReciptID = :ReciptID ) AND (YearID = :YearID ) AND' +
        ' (ServerID =  :ServerID )'
      'ORDER BY CustID')
    Left = 344
    Top = 185
    object qryReciptsPaymentsReciptsPaymentID: TAutoIncField
      FieldName = 'ReciptsPaymentID'
      ReadOnly = True
    end
    object qryReciptsPaymentsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptsPaymentsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptsPaymentsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryReciptsPaymentsCustID: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1740'/'#1576#1575#1606#1603'/'#1589#1606#1583#1608#1602
      FieldName = 'CustID'
    end
    object qryReciptsPayments_CustName: TStringField
      DisplayLabel = #1605#1588#1578#1585#1740'/'#1576#1575#1606#1603'/'#1589#1606#1583#1608#1602
      FieldKind = fkLookup
      FieldName = '_CustName'
      LookupDataSet = qryCustomers
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustID'
      Size = 255
      Lookup = True
    end
    object qryReciptsPaymentsPaymentCo: TFloatField
      DisplayLabel = #1583#1585#1589#1583
      FieldName = 'PaymentCo'
    end
    object qryReciptsPaymentsPayment: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Payment'
      currency = True
      Precision = 19
    end
    object qryReciptsPaymentsNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'Note'
      Size = 100
    end
    object qryReciptsPaymentsPaymentKind: TWordField
      FieldName = 'PaymentKind'
    end
    object qryReciptsPaymentsPaymentDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1662#1585#1583#1575#1582#1578
      FieldName = 'PaymentDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
  end
  object srcReciptsPayments: TDataSource
    DataSet = qryReciptsPayments
    OnStateChange = srcReciptsPaymentsStateChange
    Left = 168
    Top = 152
  end
end
