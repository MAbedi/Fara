inherited CompanyBankAccountsF: TCompanyBankAccountsF
  Left = 291
  Top = 101
  Caption = #1605#1593#1585#1601#1610' '#1605#1588#1582#1589#1575#1578' '#1581#1587#1575#1576#1607#1575#1610' '#1576#1575#1606#1603#1610' '#1588#1585#1603#1578
  ClientHeight = 650
  ClientWidth = 854
  ExplicitWidth = 862
  ExplicitHeight = 681
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 609
    Width = 854
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 609
    ExplicitWidth = 854
    inherited BtnReject: TBitBtn
      Left = 3
      Top = 6
      Height = 29
      TabOrder = 4
      ExplicitLeft = 3
      ExplicitTop = 6
      ExplicitHeight = 29
    end
    object DBNavigator1: TDBNavigator
      Left = 405
      Top = 0
      Width = 80
      Height = 41
      DataSource = srcBank
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      TabOrder = 5
    end
    object newPanel: TPanel
      Left = 611
      Top = 0
      Width = 243
      Height = 41
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 0
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 165
        Top = 6
        Width = 75
        Height = 29
        Margins.Top = 6
        Margins.Bottom = 6
        Action = DataSetInsert1
        Align = alRight
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        AlignWithMargins = True
        Left = 84
        Top = 6
        Width = 75
        Height = 29
        Margins.Top = 6
        Margins.Bottom = 6
        Action = DataSetEdit1
        Align = alRight
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 6
        Width = 75
        Height = 29
        Margins.Top = 6
        Margins.Bottom = 6
        Action = DataSetDelete1_
        Align = alRight
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 246
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendExel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 84
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 327
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alLeft
      Caption = #1670#1575#1662
      TabOrder = 3
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 165
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 6
    end
    object okPanel: TPanel
      Left = 449
      Top = 0
      Width = 162
      Height = 41
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 7
      object BitBtn7: TBitBtn
        AlignWithMargins = True
        Left = 84
        Top = 6
        Width = 75
        Height = 29
        Margins.Top = 6
        Margins.Bottom = 6
        Action = DataSetPost1
        Align = alRight
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
        AlignWithMargins = True
        Left = 3
        Top = 6
        Width = 75
        Height = 29
        Margins.Top = 6
        Margins.Bottom = 6
        Action = DataSetCancel1
        Align = alRight
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
    Width = 854
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitWidth = 854
    inherited ImgTemplate: TImage
      Left = 849
      ExplicitLeft = 840
    end
    inherited lblCaption: TLabel
      Left = 747
      Top = 15
      Height = 35
      ExplicitLeft = 747
      ExplicitTop = 15
    end
    inherited lblBaseDate: TLabel
      Left = 383
      ExplicitLeft = 379
    end
    object dbchkCustomerActive: TDBCheckBox
      Left = 4
      Top = 32
      Width = 62
      Height = 17
      Alignment = taLeftJustify
      Caption = #1594#1610#1585' '#1601#1593#1575#1604
      DataField = 'CustomerActive'
      DataSource = srcBank
      TabOrder = 1
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbchkCustomerState: TDBCheckBox
      Left = 4
      Top = 9
      Width = 108
      Height = 17
      Alignment = taLeftJustify
      Caption = #1594#1610#1585' '#1601#1593#1575#1604' '#1576#1585#1575#1740' '#1579#1576#1578
      DataField = 'CustomerState'
      DataSource = srcBank
      TabOrder = 0
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  inherited Panel3: TPanel
    Width = 854
    Height = 556
    BevelInner = bvNone
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 854
    ExplicitHeight = 556
    object Panel1: TPanel
      Left = 466
      Top = 0
      Width = 388
      Height = 556
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      BorderWidth = 5
      TabOrder = 0
      object Panel8: TPanel
        Left = 5
        Top = 5
        Width = 378
        Height = 47
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object SpeedButton1: TSpeedButton
          Left = 0
          Top = 0
          Width = 23
          Height = 26
          Align = alLeft
          Caption = '...'
          OnClick = SpeedButton1Click
          ExplicitLeft = 4
          ExplicitTop = 4
          ExplicitHeight = 24
        end
        object Label1: TLabel
          AlignWithMargins = True
          Left = 302
          Top = 3
          Width = 73
          Height = 20
          Align = alRight
          Caption = #1575#1606#1578#1582#1575#1576' '#1711#1585#1608#1607' '#1576#1575#1606#1603
          ExplicitHeight = 13
        end
        object cmbGroups: TComboBox
          Left = 0
          Top = 26
          Width = 378
          Height = 21
          Align = alBottom
          Style = csDropDownList
          Color = 14024703
          TabOrder = 0
          OnChange = cmbGroupsChange
          OnEnter = cmbGroupsEnter
        end
        object chkAllCusts: TCheckBox
          AlignWithMargins = True
          Left = 26
          Top = 3
          Width = 74
          Height = 20
          Align = alLeft
          BiDiMode = bdRightToLeftNoAlign
          Caption = '&'#1607#1605#1607' '#1576#1575#1606#1603#1607#1575
          ParentBiDiMode = False
          TabOrder = 1
          OnClick = chkAllCustsClick
        end
      end
      object DBGrid1: TCedarDbgrid
        Left = 5
        Top = 52
        Width = 378
        Height = 499
        Align = alClient
        BorderStyle = bsNone
        Color = clCream
        DataSource = srcBank
        DynProps = <>
        Flat = True
        FooterParams.FillStyle = cfstSolidEh
        FooterParams.Font.Charset = DEFAULT_CHARSET
        FooterParams.Font.Color = clWindowText
        FooterParams.Font.Height = -11
        FooterParams.Font.Name = 'Tahoma'
        FooterParams.Font.Style = [fsBold]
        FooterParams.ParentFont = False
        FooterParams.VertLines = False
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
        HorzScrollBar.ExtraPanel.Visible = True
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        OddRowColor = clGradientInactiveCaption
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        RowHeight = 18
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        SortLocal = True
        TabOrder = 0
        OnEnter = DBGrid1Enter
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CustID'
            Footers = <>
            Title.TitleButton = True
            Width = 62
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CustName'
            Footers = <>
            Title.TitleButton = True
            Width = 62
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AccountNumber'
            Footers = <>
            Title.TitleButton = True
            Width = 62
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel7: TPanel
      Left = 0
      Top = 0
      Width = 466
      Height = 556
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 466
        Height = 311
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          466
          311)
        object Label2: TLabel
          Left = 373
          Top = 13
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = #1603#1583' '#1581#1587#1575#1576
          FocusControl = DBEdit1
        end
        object Label3: TLabel
          Left = 373
          Top = 41
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = #1605#1588#1582#1589#1575#1578' '#1576#1575#1606#1603
          FocusControl = DBEdit2
        end
        object Label4: TLabel
          Left = 373
          Top = 208
          Width = 24
          Height = 13
          Caption = 'Email'
          FocusControl = DBEdit3
        end
        object Label6: TLabel
          Left = 373
          Top = 180
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1604#1601#1606
        end
        object Label7: TLabel
          Left = 151
          Top = 178
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = #1601#1575#1603#1587
          FocusControl = DBEdit6
        end
        object Label17: TLabel
          Left = 373
          Top = 260
          Width = 76
          Height = 13
          Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
        end
        object Label12: TLabel
          Left = 373
          Top = 125
          Width = 41
          Height = 13
          Caption = #1603#1583' '#1588#1593#1576#1607
          FocusControl = DBEdit14
        end
        object Label13: TLabel
          Left = 151
          Top = 123
          Width = 43
          Height = 13
          Caption = #1606#1575#1605' '#1588#1593#1576#1607
          FocusControl = DBEdit17
        end
        object Label5: TLabel
          Left = 373
          Top = 236
          Width = 18
          Height = 13
          Caption = 'Site'
        end
        object Label18: TLabel
          Left = 373
          Top = 69
          Width = 64
          Height = 13
          Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
          FocusControl = edtAccountNumber
        end
        object Label19: TLabel
          Left = 373
          Top = 152
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = #1608#1575#1581#1583' '#1662#1608#1604#1610
          FocusControl = DBEdit6
        end
        object Label8: TLabel
          Left = 151
          Top = 152
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = #1606#1575#1605' '#1576#1575#1606#1705
          FocusControl = dblkcbb_PersonID3
        end
        object SpeedButton3: TSpeedButton
          Left = 233
          Top = 92
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = SpeedButton3Click
        end
        object Label9: TLabel
          Left = 373
          Top = 97
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1588#1606#1575#1587#1607' '#1605#1604#1740
          FocusControl = edtBankNationalID
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 192
          Top = 9
          Width = 175
          Height = 21
          DataField = 'CustID'
          DataSource = srcBank
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 16
          Top = 37
          Width = 352
          Height = 21
          DataField = 'CustName'
          DataSource = srcBank
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 16
          Top = 204
          Width = 352
          Height = 21
          TabStop = False
          BiDiMode = bdLeftToRight
          DataField = 'email'
          DataSource = srcBank
          ParentBiDiMode = False
          TabOrder = 9
        end
        object DBEdit4: TDBEdit
          Left = 16
          Top = 232
          Width = 352
          Height = 21
          TabStop = False
          BiDiMode = bdLeftToRight
          DataField = 'WebSite'
          DataSource = srcBank
          ParentBiDiMode = False
          TabOrder = 10
        end
        object DBEdit6: TDBEdit
          Left = 233
          Top = 176
          Width = 134
          Height = 21
          DataField = 'Tel'
          DataSource = srcBank
          TabOrder = 7
        end
        object DBEdit7: TDBEdit
          Left = 16
          Top = 174
          Width = 134
          Height = 21
          DataField = 'Fax'
          DataSource = srcBank
          TabOrder = 8
        end
        object DBMemo2: TDBMemo
          Left = 16
          Top = 260
          Width = 352
          Height = 36
          DataField = 'CustomerNote'
          DataSource = srcBank
          TabOrder = 11
        end
        object DBEdit14: TDBEdit
          Left = 233
          Top = 121
          Width = 134
          Height = 21
          DataField = 'BankId'
          DataSource = srcBank
          TabOrder = 4
        end
        object DBEdit17: TDBEdit
          Left = 16
          Top = 119
          Width = 134
          Height = 21
          DataField = 'BankName'
          DataSource = srcBank
          TabOrder = 5
        end
        object edtAccountNumber: TDBEdit
          Left = 192
          Top = 65
          Width = 175
          Height = 21
          DataField = 'AccountNumber'
          DataSource = srcBank
          TabOrder = 2
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 233
          Top = 148
          Width = 134
          Height = 21
          DataField = '_AccountKind'
          DataSource = srcBank
          TabOrder = 6
        end
        object dblkcbb_PersonID3: TDBLookupComboBox
          Left = 16
          Top = 148
          Width = 134
          Height = 21
          DataField = '_PersonID3'
          DataSource = srcBank
          TabOrder = 12
        end
        object edt_BankNationalID: TDBEdit
          Left = 16
          Top = 94
          Width = 215
          Height = 19
          CustomHint = DmF.BalloonHint1
          Color = clBtnFace
          Ctl3D = False
          DataField = '_BankNationalID'
          DataSource = srcBank
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
        object edtBankNationalID: TDBEdit
          Left = 257
          Top = 94
          Width = 110
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'BankNationalID'
          DataSource = srcBank
          TabOrder = 3
        end
      end
      object PageControl1: TPageControl
        Left = 0
        Top = 311
        Width = 466
        Height = 245
        ActivePage = TabOperation
        Align = alClient
        TabOrder = 1
        object TabSheet1: TTabSheet
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
          DesignSize = (
            458
            217)
          object Label11: TLabel
            Left = 343
            Top = 40
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610' '
          end
          object SpeedButton2: TSpeedButton
            Left = 247
            Top = 36
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton2Click
          end
          object Label22: TLabel
            Left = 349
            Top = 71
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
            FocusControl = DBEdit18
            ExplicitLeft = 343
          end
          object SpeedButton5: TSpeedButton
            Left = 249
            Top = 66
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton5Click
            ExplicitLeft = 243
          end
          object Label24: TLabel
            Left = 349
            Top = 101
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'3'
            FocusControl = DBEdit19
            ExplicitLeft = 343
          end
          object SpeedButton6: TSpeedButton
            Left = 249
            Top = 96
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton6Click
            ExplicitLeft = 243
          end
          object Label21: TLabel
            Left = 349
            Top = 131
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'4'
            FocusControl = DBEdit23
            ExplicitLeft = 343
          end
          object SpeedButton8: TSpeedButton
            Left = 249
            Top = 127
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton8Click
            ExplicitLeft = 243
          end
          object Label49: TLabel
            Left = 349
            Top = 10
            Width = 45
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1581#1587#1575#1576
            FocusControl = DBEdit30
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 347
          end
          object SpeedButton11: TSpeedButton
            Left = 249
            Top = 5
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton11Click
            ExplicitLeft = 243
          end
          object DBEdit15: TDBEdit
            Left = 272
            Top = 36
            Width = 70
            Height = 21
            DataField = 'acc_DetailCode'
            DataSource = srcBank
            TabOrder = 1
            OnKeyDown = DBEdit15KeyDown
          end
          object DBEdit11: TDBEdit
            Left = 32
            Top = 37
            Width = 209
            Height = 19
            Color = clBtnFace
            Ctl3D = False
            DataField = '__DetailCode'
            DataSource = srcBank
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit18: TDBEdit
            Left = 274
            Top = 67
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_CTopicCode'
            DataSource = srcBank
            TabOrder = 3
          end
          object DBEdit19: TDBEdit
            Left = 274
            Top = 97
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_CTopicCode2'
            DataSource = srcBank
            TabOrder = 4
          end
          object DBEdit12: TDBEdit
            Left = 32
            Top = 68
            Width = 209
            Height = 19
            Color = clBtnFace
            Ctl3D = False
            DataField = '__CTopicCodeName'
            DataSource = srcBank
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit13: TDBEdit
            Left = 32
            Top = 98
            Width = 209
            Height = 19
            Color = clBtnFace
            Ctl3D = False
            DataField = '__CTopicCodeName2'
            DataSource = srcBank
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
          end
          object DBEdit23: TDBEdit
            Left = 274
            Top = 127
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_CTopicCode3'
            DataSource = srcBank
            TabOrder = 7
          end
          object DBEdit24: TDBEdit
            Left = 32
            Top = 128
            Width = 209
            Height = 19
            Color = clBtnFace
            Ctl3D = False
            DataField = '__CTopicCodeName3'
            DataSource = srcBank
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
          end
          object DBEdit30: TDBEdit
            Left = 274
            Top = 6
            Width = 70
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_TopicCode'
            DataSource = srcBank
            TabOrder = 0
          end
          object DBEdit25: TDBEdit
            Left = 32
            Top = 7
            Width = 209
            Height = 19
            CustomHint = DmF.BalloonHint1
            Color = clBtnFace
            Ctl3D = False
            DataField = '__TopicCodeName'
            DataSource = srcBank
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
        end
        object TabSheet2: TTabSheet
          Caption = #1605#1593#1585#1601#1610' '#1583#1587#1578#1607' '#1670#1603#1607#1575
          ImageIndex = 1
          object Panel5: TPanel
            Left = 0
            Top = 183
            Width = 458
            Height = 34
            Align = alBottom
            TabOrder = 1
            object okPanel2: TPanel
              Left = 59
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
              Left = 217
              Top = 1
              Width = 240
              Height = 32
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 1
              Visible = False
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
              object BitBtn11: TBitBtn
                Left = 5
                Top = 3
                Width = 75
                Height = 25
                Action = DataSetDelete2
                Caption = #1581#1584#1601
                TabOrder = 2
              end
            end
            object BtnSort: TBitBtn
              Left = 5
              Top = 5
              Width = 75
              Height = 25
              Caption = #1578#1585#1578#1610#1576
              TabOrder = 3
              OnClick = BtnSortClick
            end
            object BtnSearch: TBitBtn
              Left = 84
              Top = 5
              Width = 75
              Height = 25
              Caption = #1580#1587#1578#1580#1608
              TabOrder = 2
              OnClick = BtnSearchClick
            end
          end
          object DBGrid2: TDBGrid
            Left = 0
            Top = 61
            Width = 458
            Height = 122
            Align = alClient
            Color = clCream
            DataSource = srcCheckBook
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnEnter = DBGrid1Enter
            Columns = <
              item
                Expanded = False
                FieldName = 'CheckBookNo'
                Width = 86
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SerialFrom'
                Width = 105
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SerialTo'
                Width = 118
                Visible = True
              end>
          end
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 458
            Height = 61
            Align = alTop
            TabOrder = 0
            DesignSize = (
              458
              61)
            object Label14: TLabel
              Left = 335
              Top = 11
              Width = 52
              Height = 13
              Caption = #1603#1583' '#1670#1575#1662' '#1670#1603
              FocusControl = DBEdit20
            end
            object Label15: TLabel
              Left = 335
              Top = 38
              Width = 39
              Height = 13
              Caption = #1575#1586' '#1587#1585#1610#1575#1604
              FocusControl = EdtSerialFrom
            end
            object Label16: TLabel
              Left = 152
              Top = 39
              Width = 38
              Height = 13
              Caption = #1578#1575' '#1587#1585#1610#1575#1604
              FocusControl = DBEdit22
            end
            object DBEdit20: TDBEdit
              Left = 196
              Top = 7
              Width = 134
              Height = 21
              DataField = 'CheckBookNo'
              DataSource = srcCheckBook
              TabOrder = 0
            end
            object EdtSerialFrom: TDBEdit
              Left = 196
              Top = 34
              Width = 134
              Height = 21
              DataField = 'SerialFrom'
              DataSource = srcCheckBook
              TabOrder = 1
            end
            object DBEdit22: TDBEdit
              Left = 14
              Top = 35
              Width = 134
              Height = 21
              DataField = 'SerialTo'
              DataSource = srcCheckBook
              TabOrder = 2
            end
            object DBCheckBox23: TDBCheckBox
              Left = 17
              Top = 8
              Width = 136
              Height = 17
              Anchors = [akTop, akRight]
              BiDiMode = bdRightToLeft
              Caption = #1583#1587#1578#1607' '#1670#1603' '#1594#1610#1585#1601#1593#1575#1604' '#1588#1608#1583'.'#8207
              DataField = 'ChkBookActive'
              DataSource = srcCheckBook
              ParentBiDiMode = False
              TabOrder = 3
              ValueChecked = '1'
              ValueUnchecked = '0'
              WordWrap = True
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = #1670#1575#1662
          ImageIndex = 3
          object Label20: TLabel
            Left = 0
            Top = 0
            Width = 458
            Height = 26
            Align = alTop
            Alignment = taCenter
            Caption = 
              #1576#1575' '#1608#1575#1585#1583' '#1603#1585#1583#1606' '#1607#1585' '#1606#1575#1605' '#1670#1575#1662' (rtm.*) '#1608' '#1586#1583#1606' '#1603#1604#1610#1583' Enter '#1605#1610#8207#1578#1608#1575#1606#1610#1583' '#1670#1575#1662#1607#1575 +
              #1610' '#1583#1610#1711#1585' '#1585#1575' '#1575#1590#1575#1601#1607' '#1603#1606#1610#1583' '#1610#1575' '#1576#1575' '#1583#1603#1605#1607' ... '#1670#1575#1662#1607#1575#1585#1575' '#1580#1587#1578#1580#1608' '#1608' '#1575#1590#1575#1601#1607' '#1603#1606#1610#1583'.'#8207
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            WordWrap = True
            ExplicitWidth = 441
          end
          object SpeedButton7: TSpeedButton
            Left = 3
            Top = 23
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton7Click
          end
          object MemBankReports: TDBMemo
            Tag = 111
            Left = 0
            Top = 95
            Width = 458
            Height = 122
            Align = alBottom
            Alignment = taRightJustify
            DataField = 'BankReports'
            DataSource = srcBank
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object ts1: TTabSheet
          Caption = ' '#1587#1662#1585#1583#1607' '#1662#1588#1578#1740#1576#1575#1606' '
          ImageIndex = 4
          DesignSize = (
            458
            217)
          object lbl1: TLabel
            Left = 334
            Top = 23
            Width = 87
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1705#1583' '#1587#1662#1585#1583#1607' '#1662#1588#1578#1740#1576#1575#1606' '
            ExplicitLeft = 328
          end
          object Label23: TLabel
            Left = 334
            Top = 59
            Width = 68
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = #1588' '#1581#1587#1575#1576' '#1588#1576#1575
            FocusControl = edtCustAccountNumber
            ParentBiDiMode = False
            ExplicitLeft = 328
          end
          object Label25: TLabel
            Left = 334
            Top = 86
            Width = 110
            Height = 39
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1588#1606#1575#1587#1607' '#1576#1575#1606#1705' '#1591#1576#1602' '#1580#1583#1608#1604' '#1591#1585#1581' '#1662#1585#1583#1575#1582#1578' '#1607#1605#1575#1607#1606#1711' '#1602#1576#1608#1590
            FocusControl = edtBankIDc
            WordWrap = True
            ExplicitLeft = 328
          end
          object edtPersonID3: TDBEdit
            Left = 117
            Top = 19
            Width = 211
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'PersonID3'
            DataSource = srcBank
            TabOrder = 0
            OnKeyDown = DBEdit15KeyDown
          end
          object edtCustAccountNumber: TDBEdit
            Left = 117
            Top = 53
            Width = 211
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'CustAccountNumber'
            DataSource = srcBank
            TabOrder = 1
          end
          object edtBankIDc: TDBEdit
            Left = 119
            Top = 88
            Width = 209
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'BankIDc'
            DataSource = srcBank
            TabOrder = 2
          end
        end
        object TabOperation: TTabSheet
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575'  '#1603#1575#1585#1576#1585#1575#1606' ('#1606#1575#1605' '#1603#1575#1585#1576#1585' '#1605#1580#1575#1586')'
          ImageIndex = 4
          object Label10: TLabel
            Left = 0
            Top = 0
            Width = 458
            Height = 13
            Align = alTop
            Alignment = taCenter
            Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575'  '#1603#1575#1585#1576#1585#1575#1606' '
            Color = clMenuHighlight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
            ExplicitWidth = 72
          end
          object chklstOperator: TCheckListBox
            Left = 0
            Top = 13
            Width = 458
            Height = 170
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ItemHeight = 13
            ParentFont = False
            TabOrder = 0
            OnClick = chklstOperatorClick
            ExplicitLeft = -2
            ExplicitTop = 11
          end
          object TPanel
            AlignWithMargins = True
            Left = 3
            Top = 186
            Width = 452
            Height = 28
            Align = alBottom
            TabOrder = 1
            object BitBtn15: TBitBtn
              Left = 264
              Top = 1
              Width = 187
              Height = 26
              Action = actSetOprator2All
              Align = alRight
              Caption = #1578#1593#1605#1740#1605' '#1705#1575#1585#1576#1585' '#1580#1575#1585#1740' '#1576#1607' '#1607#1605#1607' '#1587#1591#1585#1607#1575
              TabOrder = 0
            end
            object BitBtn16: TBitBtn
              Left = 36
              Top = 1
              Width = 228
              Height = 26
              Action = actSetAllOprator2AllRow
              Align = alRight
              Caption = #1578#1593#1605#1740#1605' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1705#1575#1585#1576#1585#1575#1606' '#1580#1575#1585#1740' '#1576#1607' '#1607#1605#1607' '#1587#1591#1585#1607#1575
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 272
    Top = 16
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object DataSetInsert2: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      DataSource = srcCheckBook
    end
    object DataSetDelete2: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcCheckBook
    end
    object DataSetEdit2: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      DataSource = srcCheckBook
    end
    object DataSetPost2: TDataSetPost
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      DataSource = srcCheckBook
    end
    object DataSetCancel2: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      DataSource = srcCheckBook
    end
    object actChangeCustID: TAction
      Caption = #1578#1594#1610#1610#1585' '#1603#1583' '#1605#1588#1578#1585#1610' '
      OnExecute = actChangeCustIDExecute
    end
    object actSetOprator2All: TAction
      Caption = #1578#1593#1605#1740#1605' '#1705#1575#1585#1576#1585' '#1580#1575#1585#1740' '#1576#1607' '#1607#1605#1607' '#1587#1591#1585#1607#1575
      OnExecute = actSetOprator2AllExecute
    end
    object actSetAllOprator2AllRow: TAction
      Caption = #1578#1593#1605#1740#1605' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1705#1575#1585#1576#1585#1575#1606' '#1580#1575#1585#1740' '#1576#1607' '#1607#1605#1607' '#1587#1591#1585#1607#1575
      OnExecute = actSetAllOprator2AllRowExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 424
    Top = 9
  end
  object qryBank: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    BeforeInsert = qryBankBeforeInsert
    AfterInsert = qryBankAfterInsert
    BeforePost = qryBankBeforePost
    AfterPost = qryBankAfterPost
    BeforeDelete = qryBankBeforeDelete
    AfterDelete = qryBankAfterDelete
    AfterScroll = qryBankAfterScroll
    Parameters = <
      item
        Name = 'GrpIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'GrpIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM     Customers'
      'WHERE   (CustomerGrpID BETWEEN :GrpIDFrom and :GrpIDTo) AND'
      '        (CustID <> 0) AND'
      
        '        (CustomerGrpID in (SELECT CustomerGrpID FROM CustomersGr' +
        'oup WHERE GroupType=1))')
    Left = 580
    Top = 263
    object qryBankCustID: TIntegerField
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'CustID'
      OnChange = qryBankCustIDChange
    end
    object qryBankCustomerGrpID: TIntegerField
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607
      FieldName = 'CustomerGrpID'
    end
    object qryBankCustName: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1576#1575#1606#1603
      FieldName = 'CustName'
      Required = True
      Size = 120
    end
    object qryBankWebSite: TStringField
      FieldName = 'WebSite'
      Size = 40
    end
    object qryBankTel: TStringField
      DisplayLabel = #1578#1604#1601#1606
      FieldName = 'Tel'
      Size = 30
    end
    object qryBankFax: TStringField
      DisplayLabel = #1601#1575#1603#1587
      FieldName = 'Fax'
      Size = 30
    end
    object qryBankemail: TStringField
      FieldName = 'email'
      Size = 30
    end
    object qryBankpobox: TStringField
      FieldName = 'pobox'
      Size = 15
    end
    object qryBankacc_DetailCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'acc_DetailCode'
      Required = True
      Size = 12
    end
    object qryBank__DetailCode: TStringField
      DisplayLabel = #1588#1585#1581' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldKind = fkLookup
      FieldName = '__DetailCode'
      LookupDataSet = DmF.qryAccDetailCode
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName'
      KeyFields = 'acc_DetailCode'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryBankModifyDate: TDateTimeField
      FieldName = 'ModifyDate'
      EditMask = '9999/99/99'
    end
    object qryBankCustomerNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      FieldName = 'CustomerNote'
      Size = 250
    end
    object qryBankBudgetID: TIntegerField
      DisplayLabel = #1603#1583' '#1576#1608#1583#1580#1607
      FieldName = 'BudgetID'
    end
    object qryBankProjectID: TIntegerField
      DisplayLabel = #1603#1583' '#1591#1585#1581' '#1608' '#1662#1585#1608#1688#1607
      FieldName = 'ProjectID'
    end
    object qryBank_BudgetName: TStringField
      FieldKind = fkLookup
      FieldName = '_BudgetName'
      LookupDataSet = DmF.qryAccBudget
      LookupKeyFields = 'BudgetTopicID'
      LookupResultField = 'BudgetCaption_L1'
      KeyFields = 'BudgetID'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryBank_ProjectName: TStringField
      FieldKind = fkLookup
      FieldName = '_ProjectName'
      LookupDataSet = DmF.qryAccProject
      LookupKeyFields = 'ProjectID'
      LookupResultField = 'ProjectCaption_L1'
      KeyFields = 'ProjectID'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryBankacc_CTopicCode: TStringField
      FieldName = 'acc_CTopicCode'
      Size = 12
    end
    object qryBank__CTopicCodeName: TStringField
      FieldKind = fkLookup
      FieldName = '__CTopicCodeName'
      LookupDataSet = DmF.qryAccCenterTopics
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName'
      KeyFields = 'acc_CTopicCode'
      Size = 100
      Lookup = True
    end
    object qryBankacc_CTopicCode2: TStringField
      FieldName = 'acc_CTopicCode2'
      Size = 12
    end
    object qryBank__CTopicCodeName2: TStringField
      FieldKind = fkLookup
      FieldName = '__CTopicCodeName2'
      LookupDataSet = DmF.qryAccCenterTopics2
      LookupKeyFields = 'CTopicCode2'
      LookupResultField = 'CTopicName2'
      KeyFields = 'acc_CTopicCode2'
      Size = 100
      Lookup = True
    end
    object qryBankBankId: TFloatField
      DisplayLabel = #1603#1583' '#1588#1593#1576#1607
      FieldName = 'BankId'
    end
    object qryBankBankName: TStringField
      DisplayLabel = #1606#1575#1605' '#1588#1593#1576#1607
      FieldName = 'BankName'
      Size = 60
    end
    object qryBankAccountNumber: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      FieldName = 'AccountNumber'
      FixedChar = True
      Size = 25
    end
    object qryBankBankReports: TStringField
      FieldName = 'BankReports'
      Size = 250
    end
    object qryBankacc_CTopicCode3: TStringField
      FieldName = 'acc_CTopicCode3'
      Size = 12
    end
    object qryBank__CTopicCodeName3: TStringField
      FieldKind = fkLookup
      FieldName = '__CTopicCodeName3'
      LookupDataSet = DmF.qryAccCenterTopics3
      LookupKeyFields = 'CTopicCode3'
      LookupResultField = 'CTopicName3'
      KeyFields = 'acc_CTopicCode3'
      Size = 250
      Lookup = True
    end
    object qryBankacc_TopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'acc_TopicCode'
    end
    object qryBank__TopicCodeName: TStringField
      DisplayLabel = #1588#1585#1581' '#1581#1587#1575#1576' '#1581#1587#1575#1576
      FieldKind = fkLookup
      FieldName = '__TopicCodeName'
      LookupDataSet = DmF.qryAccTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'acc_TopicCode'
      Size = 100
      Lookup = True
    end
    object qryBankAccountKind: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1610
      FieldName = 'AccountKind'
    end
    object qryBank_AccountKind: TStringField
      FieldKind = fkLookup
      FieldName = '_AccountKind'
      LookupDataSet = DmF.qryCurrencies
      LookupKeyFields = 'CurrenciesID'
      LookupResultField = 'CurrenciesName'
      KeyFields = 'AccountKind'
      Size = 50
      Lookup = True
    end
    object qryBankPersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object qryBankCustAccountNumber: TStringField
      FieldName = 'CustAccountNumber'
      Size = 60
    end
    object qryBankCustomerActive: TWordField
      FieldName = 'CustomerActive'
    end
    object qryBankCustFirstName: TStringField
      FieldName = 'CustFirstName'
      Size = 30
    end
    object qryBankBankIDc: TStringField
      FieldName = 'BankIDc'
      FixedChar = True
      Size = 3
    end
    object qryBankCustomerState: TWordField
      FieldName = 'CustomerState'
    end
    object qryBankPersonID3: TIntegerField
      FieldName = 'PersonID3'
    end
    object qryBank_PersonID3: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonID3'
      LookupDataSet = qryCustomers25
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonID3'
      Size = 100
      Lookup = True
    end
    object qryBankBankNationalID: TStringField
      FieldName = 'BankNationalID'
    end
    object qryBank_BankNationalID: TStringField
      FieldKind = fkLookup
      FieldName = '_BankNationalID'
      LookupDataSet = qryBankNationals
      LookupKeyFields = 'BankNationalID'
      LookupResultField = 'BankName'
      KeyFields = 'BankNationalID'
      Size = 70
      Lookup = True
    end
    object qryBankOperatorID: TWideStringField
      FieldName = 'OperatorID'
      Size = 4000
    end
  end
  object srcBank: TDataSource
    DataSet = qryBank
    OnStateChange = srcBankStateChange
    Left = 520
    Top = 200
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcBank
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 672
    Top = 279
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
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
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\CompanyBankAccounts1.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
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
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.DropBoxSettings.SharedResources = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.GoogleDriveSettings.SharedResources = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    CloudDriveSettings.OneDriveSettings.SharedResources = True
    Left = 680
    Top = 375
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 24606
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 19579
        mmWidth = 203300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1605#1588#1582#1589#1575#1578' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 84667
        mmTop = 17727
        mmWidth = 102129
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 0
        mmTop = 13758
        mmWidth = 203300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 186267
        mmTop = 19314
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1581#1587#1575#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 186796
        mmTop = 17727
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1604#1601#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 56621
        mmTop = 17727
        mmWidth = 28046
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1601#1575#1603#1587
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 28310
        mmTop = 17727
        mmWidth = 28046
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 265
        mmTop = 17727
        mmWidth = 28046
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 27781
        mmTop = 19050
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label201'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 55827
        mmTop = 19050
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 83873
        mmTop = 19050
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable1GetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 2117
        mmTop = 6615
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        OnGetText = ppLabel19GetText
        Border.mmPadding = 0
        Caption = ' '#1711#1585#1608#1607' '#1581#1587#1575#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 188119
        mmTop = 12171
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 75406
        mmTop = 0
        mmWidth = 52123
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        OnGetText = ppLabel10GetText
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
        mmHeight = 6350
        mmLeft = 2117
        mmTop = 0
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1605#1588#1582#1589#1575#1578' '#1576#1575#1606#1603#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8202
        mmLeft = 84667
        mmTop = 6615
        mmWidth = 33867
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'CustID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 186002
        mmTop = 0
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'CustName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 84667
        mmTop = 0
        mmWidth = 101071
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'Tel'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 56356
        mmTop = 0
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'Fax'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 28046
        mmTop = 0
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'acc_DetailCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 28000
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583' '#1581#1587#1575#1576#1607#1575': '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5376
        mmLeft = 185928
        mmTop = 1588
        mmWidth = 15960
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'CustID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5800
        mmLeft = 168540
        mmTop = 1588
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpBottom
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 168805
        mmTop = 4763
        mmWidth = 34660
        BandType = 7
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
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
  object zbal: TzAPIBalloon
    AutoCloseMode = acAutoCalc
    Prompt.Strings = (
      'FINANCES Ltd'
      'TzAPIBalloon ver. 1')
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 520
    Top = 16
  end
  object qryCheckBook: TADOQuery
    Connection = DmF.adcBSell
    LockType = ltBatchOptimistic
    AfterInsert = qryCheckBookAfterInsert
    BeforeEdit = qryCheckBookBeforeEdit
    BeforePost = qryCheckBookBeforePost
    BeforeDelete = qryCheckBookBeforeDelete
    Parameters = <
      item
        Name = 'BankID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         CheckBook'
      'where BankID=:BankID')
    Left = 222
    Top = 495
    object qryCheckBookCheckBookID: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'CheckBookID'
      Required = True
    end
    object qryCheckBookCheckBookNo: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1670#1575#1662' '#1670#1603
      FieldName = 'CheckBookNo'
      Required = True
    end
    object qryCheckBookBankID: TIntegerField
      FieldName = 'BankID'
    end
    object qryCheckBookSerialFrom: TLargeintField
      Tag = 3
      DisplayLabel = #1575#1586' '#1587#1585#1610#1575#1604
      FieldName = 'SerialFrom'
      Required = True
    end
    object qryCheckBookSerialTo: TLargeintField
      Tag = 3
      DisplayLabel = #1578#1575' '#1587#1585#1610#1575#1604
      FieldName = 'SerialTo'
      Required = True
    end
    object qryCheckBookChkBookActive: TWordField
      FieldName = 'ChkBookActive'
    end
  end
  object srcCheckBook: TDataSource
    DataSet = qryCheckBook
    OnStateChange = srcCheckBookStateChange
    Left = 14
    Top = 447
  end
  object OpenDialog1: TOpenDialog
    Filter = 'ReportName|*.rtm'
    Left = 591
    Top = 343
  end
  object qryCustomersGroup: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT    *'
      'FROM         CustomersGroup')
    Left = 686
    Top = 161
  end
  object sd: TPopupMenu
    AutoHotkeys = maManual
    Left = 506
    Top = 323
    object Mnu_AllClick: TMenuItem
      Caption = #1578#1594#1610#1610#1585' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610' '#1580#1575#1585#1610
      Hint = #1583#1585' '#1589#1608#1585#1578' '#1575#1585#1587#1575#1604' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1575#1740#1606' '#1575#1605#1705#1575#1606' '#1606#1605#1740' '#1578#1608#1575#1606#1740#1583' '#1575#1587#1578#1601#1575#1583#1607' '#1705#1606#1740#1583
      object MenuItem1: TMenuItem
        Caption = #1604#1610#1587#1578' '#1711#1585#1608#1607' '#1607#1575#1610' '#1605#1588#1578#1585#1610
        Visible = False
      end
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object actChangeCustID1: TMenuItem
      Action = actChangeCustID
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object N6: TMenuItem
    end
  end
  object qryCustomers25: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT      Customers.CustID, Customers.CustName'
      'FROM            Customers INNER JOIN'
      
        '                         CustomersGroup ON  Customers.CustomerGr' +
        'pID = CustomersGroup.CustomerGrpID'
      'WHERE        (CustomersGroup.GroupType = 25)')
    Left = 538
    Top = 461
  end
  object qryBankNationals: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT        BankNationalID, BankName'
      'FROM            BankNationals')
    Left = 690
    Top = 469
  end
end
