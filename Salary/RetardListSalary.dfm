inherited RetardListSalaryF: TRetardListSalaryF
  Left = 272
  Top = 110
  Caption = #1601#1610#1588' '#1605#1593#1608#1602#1607' '#1581#1602#1608#1602' '#1662#1585#1587#1606#1604
  ClientHeight = 521
  ClientWidth = 1004
  OnResize = FormResize
  ExplicitWidth = 1012
  ExplicitHeight = 552
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 480
    Width = 1004
    ExplicitTop = 480
    ExplicitWidth = 1004
    inherited BtnReject: TBitBtn
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 925
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 763
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actAllPrint
      Align = alRight
      Caption = #1670#1575#1662
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 844
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actShowFunctionItemsF
      Align = alRight
      Caption = #1603#1575#1585#1603#1585#1583
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 5
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 658
      Top = 7
      Width = 99
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actTelegram
      Align = alRight
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Telegram'
      TabOrder = 6
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 448
      Top = 7
      Width = 99
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actsSendEmailDirect
      Align = alRight
      Caption = 'Send Email Direct'
      TabOrder = 7
      ExplicitLeft = 553
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 553
      Top = 7
      Width = 99
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actBale
      Align = alRight
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1576#1604#1607
      TabOrder = 8
      ExplicitLeft = 658
    end
  end
  inherited Panel2: TPanel
    Width = 1004
    ExplicitWidth = 1004
    inherited ImgTemplate: TImage
      Left = 962
      ExplicitLeft = 748
    end
    inherited lblCaption: TLabel
      Left = 798
      Width = 160
      Caption = #1601#1610#1588' '#1605#1593#1608#1602#1607' '#1581#1602#1608#1602' '#1662#1585#1587#1606#1604
      ExplicitLeft = 798
      ExplicitWidth = 160
    end
    inherited lblBaseDate: TLabel
      Left = 343
      ExplicitLeft = 343
    end
    inline frArchive: TfrArchiveID
      Left = 8
      Top = 8
      Width = 460
      Height = 25
      TabOrder = 0
      ExplicitLeft = 8
      ExplicitTop = 8
      inherited cmbLastArchiveID: TComboBox
        OnChange = frArchivecmbFirstArchiveIDChange
      end
      inherited cmbFirstArchiveID: TComboBox
        OnChange = frArchivecmbFirstArchiveIDChange
      end
      inherited qryArchiveID: TADOQuery
        Left = 176
        Top = 65528
      end
    end
  end
  inherited Panel3: TPanel
    Width = 1004
    Height = 427
    ExplicitWidth = 1004
    ExplicitHeight = 427
    object ToolBar1: TToolBar
      Left = 2
      Top = 2
      Width = 1000
      Height = 36
      BorderWidth = 2
      ButtonHeight = 21
      ButtonWidth = 54
      Caption = 'ToolBar1'
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      EdgeInner = esNone
      EdgeOuter = esNone
      ShowCaptions = True
      TabOrder = 0
      object ToolButton1: TToolButton
        Tag = 1
        Left = 0
        Top = 0
        Caption = #1601#1585#1608#1585#1583#1610#1606
        Grouped = True
        ImageIndex = 0
        Style = tbsCheck
        OnClick = ToolButton12Click
      end
      object ToolButton2: TToolButton
        Tag = 2
        Left = 54
        Top = 0
        Caption = #1575#1585#1583#1610#1576#1607#1588#1578
        Grouped = True
        ImageIndex = 1
        Style = tbsCheck
        OnClick = ToolButton12Click
      end
      object ToolButton3: TToolButton
        Tag = 3
        Left = 108
        Top = 0
        Caption = #1582#1585#1583#1575#1583
        Grouped = True
        ImageIndex = 2
        Style = tbsCheck
        OnClick = ToolButton12Click
      end
      object ToolButton4: TToolButton
        Tag = 4
        Left = 162
        Top = 0
        Caption = #1578#1610#1585
        Grouped = True
        ImageIndex = 3
        Style = tbsCheck
        OnClick = ToolButton12Click
      end
      object ToolButton5: TToolButton
        Tag = 5
        Left = 216
        Top = 0
        Caption = #1605#1585#1583#1575#1583
        Grouped = True
        ImageIndex = 4
        Style = tbsCheck
        OnClick = ToolButton12Click
      end
      object ToolButton6: TToolButton
        Tag = 6
        Left = 270
        Top = 0
        Caption = #1588#1607#1585#1610#1608#1585
        Grouped = True
        ImageIndex = 5
        Style = tbsCheck
        OnClick = ToolButton12Click
      end
      object ToolButton7: TToolButton
        Tag = 7
        Left = 324
        Top = 0
        Caption = #1605#1607#1585
        Grouped = True
        ImageIndex = 6
        Style = tbsCheck
        OnClick = ToolButton12Click
      end
      object ToolButton8: TToolButton
        Tag = 8
        Left = 378
        Top = 0
        Caption = #1570#1576#1575#1606
        Grouped = True
        ImageIndex = 7
        Style = tbsCheck
        OnClick = ToolButton12Click
      end
      object ToolButton9: TToolButton
        Tag = 9
        Left = 432
        Top = 0
        Caption = #1570#1584#1585
        Grouped = True
        ImageIndex = 8
        Style = tbsCheck
        OnClick = ToolButton12Click
      end
      object ToolButton10: TToolButton
        Tag = 10
        Left = 486
        Top = 0
        Caption = #1583#1610
        Grouped = True
        ImageIndex = 9
        Style = tbsCheck
        OnClick = ToolButton12Click
      end
      object ToolButton11: TToolButton
        Tag = 11
        Left = 540
        Top = 0
        Caption = #1576#1607#1605#1606
        Grouped = True
        ImageIndex = 10
        Style = tbsCheck
        OnClick = ToolButton12Click
      end
      object ToolButton12: TToolButton
        Tag = 12
        Left = 594
        Top = 0
        Caption = #1575#1587#1601#1606#1583
        Grouped = True
        ImageIndex = 11
        Style = tbsCheck
        OnClick = ToolButton12Click
      end
    end
    object Panel1: TPanel
      Left = 622
      Top = 38
      Width = 380
      Height = 368
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 380
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = #1604#1610#1587#1578' '#1662#1585#1587#1606#1604
        Color = 9094655
        ParentColor = False
        Transparent = True
        Layout = tlCenter
        ExplicitWidth = 63
      end
      object Panel6: TPanel
        Left = 0
        Top = 327
        Width = 380
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object lblColor2: TLabel
          Tag = 2
          Left = 328
          Top = 24
          Width = 45
          Height = 13
          Hint = #1576#1585#1575#1610' '#1605#1588#1575#1607#1583#1607' '#1662#1585#1587#1606#1604' '#1576#1583#1608#1606' '#1603#1575#1585#1603#1585#1583' Double click '#1603#1606#1610#1583'.'
          AutoSize = False
          Caption = '                '
          Color = 8388863
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
          OnClick = lblColor1Click
        end
        object lblColor1: TLabel
          Tag = 1
          Left = 328
          Top = 6
          Width = 45
          Height = 13
          Hint = #1576#1585#1575#1610' '#1605#1588#1575#1607#1583#1607' '#1662#1585#1587#1606#1575#1604' '#1576#1575' '#1603#1575#1585#1603#1585#1583' Double click '#1603#1606#1610#1583'.'
          AutoSize = False
          Caption = '                '
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Transparent = True
          OnClick = lblColor1Click
        end
        object lblNotHasFunction: TLabel
          Left = 318
          Top = 22
          Width = 51
          Height = 13
          Caption = #1603#1575#1585#1603#1585#1583' '#1606#1583#1575#1585#1583
        end
        object lblHasFunction: TLabel
          Left = 322
          Top = 6
          Width = 47
          Height = 13
          Caption = #1603#1575#1585#1603#1585#1583' '#1583#1575#1585#1583
        end
      end
      object DBGrid1: TCedarDbgrid
        Left = 0
        Top = 13
        Width = 380
        Height = 314
        Align = alClient
        Color = clCream
        DataSource = srcPersonels
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
        IndicatorOptions = []
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        OddRowColor = clGradientInactiveCaption
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentShowHint = False
        ReadOnly = True
        RowHeight = 18
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        ShowHint = True
        SortLocal = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnKeyPress = DBGrid1KeyPress
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PersonelNo'
            Footers = <>
            Width = 59
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Personel_L1'
            Footers = <>
            Width = 98
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Personel_L2'
            Footers = <>
            Width = 16
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BaleChatID'
            Footers = <>
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TelegramChatID'
            Footers = <>
            Width = 67
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Email'
            Footers = <>
            Width = 32
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object StatusBar1: TStatusBar
      Left = 2
      Top = 406
      Width = 1000
      Height = 19
      Panels = <
        item
          Width = 200
        end
        item
          Width = 200
        end
        item
          Width = 50
        end>
    end
    object Panel4: TPanel
      Left = 2
      Top = 38
      Width = 620
      Height = 368
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 3
      DesignSize = (
        620
        368)
      object Label12: TLabel
        Left = 321
        Top = 16
        Width = 34
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1586#1575#1610#1600#1600#1600#1575
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 224
      end
      object Label13: TLabel
        Left = 144
        Top = 152
        Width = 90
        Height = 13
        Alignment = taRightJustify
        Anchors = [akLeft, akBottom]
        Caption = #1580#1605#1593' '#1603#1604' '#1581#1602#1608#1602' '#1605#1586#1575#1610#1575
        ExplicitTop = 160
      end
      object Label14: TLabel
        Left = 301
        Top = 176
        Width = 53
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = #1603#1587#1600#1600#1600#1608#1585#1575#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 204
        ExplicitTop = 184
      end
      object Label15: TLabel
        Left = 142
        Top = 338
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Anchors = [akLeft, akBottom]
        Caption = #1580#1605#1593' '#1603#1587#1608#1585#1575#1578
        ExplicitTop = 339
      end
      object DBGrid2: TDBGrid
        Left = 16
        Top = 37
        Width = 340
        Height = 108
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clCream
        DataSource = srcWages
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = '_radif'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InfoName_L1'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SumPrice'
            Width = 80
            Visible = True
          end>
      end
      object txtTotalWage: TEdit
        Left = 16
        Top = 148
        Width = 121
        Height = 21
        TabStop = False
        Anchors = [akLeft, akBottom]
        Color = 14155735
        ReadOnly = True
        TabOrder = 1
      end
      object DBGrid3: TDBGrid
        Left = 14
        Top = 196
        Width = 340
        Height = 132
        Anchors = [akLeft, akRight, akBottom]
        Color = clCream
        DataSource = srcDecs
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = '_radif'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InfoName_L1'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SumPrice'
            Width = 79
            Visible = True
          end>
      end
      object txtTotalDecs: TEdit
        Left = 14
        Top = 334
        Width = 121
        Height = 21
        TabStop = False
        Anchors = [akLeft, akBottom]
        Color = 14024703
        ReadOnly = True
        TabOrder = 3
      end
      object Panel5: TPanel
        Left = 381
        Top = 0
        Width = 239
        Height = 368
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 4
        DesignSize = (
          239
          368)
        object Bevel3: TBevel
          Left = 0
          Top = 0
          Width = 239
          Height = 36
          Align = alTop
          Style = bsRaised
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitWidth = 237
        end
        object Label2: TLabel
          Left = 108
          Top = 14
          Width = 13
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1585#1608#1586
          FocusControl = DBEdit1
          OnDblClick = actShowFunctionItemsFExecute
        end
        object Label6: TLabel
          Left = 13
          Top = 14
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1587#1575#1593#1578
          FocusControl = DBEdit5
          OnDblClick = actShowFunctionItemsFExecute
        end
        object Label11: TLabel
          Left = 191
          Top = 14
          Width = 42
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1603#1575#1585#1603#1600#1600#1600#1585#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnDblClick = actShowFunctionItemsFExecute
        end
        object Bevel1: TBevel
          Left = 0
          Top = 340
          Width = 239
          Height = 28
          Align = alBottom
          Style = bsRaised
          ExplicitLeft = 1
          ExplicitTop = 335
          ExplicitWidth = 237
        end
        object Label16: TLabel
          Left = 151
          Top = 348
          Width = 80
          Height = 13
          Alignment = taRightJustify
          Caption = #1582#1575#1604#1589' '#1662#1585#1583#1575#1582#1578#1610
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 126
          Top = 11
          Width = 50
          Height = 19
          TabStop = False
          Anchors = [akTop, akRight]
          Color = 15329769
          Ctl3D = False
          DataField = 'FunctionDay'
          DataSource = srcFunctions
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          OnDblClick = actShowFunctionItemsFExecute
        end
        object DBEdit5: TDBEdit
          Left = 46
          Top = 11
          Width = 50
          Height = 19
          TabStop = False
          Anchors = [akTop, akRight]
          Color = 15329769
          Ctl3D = False
          DataField = 'FunctionTime'
          DataSource = srcFunctions
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
          OnDblClick = actShowFunctionItemsFExecute
        end
        object DBGrid5: TDBGrid
          Left = 0
          Top = 36
          Width = 239
          Height = 199
          Align = alClient
          Color = 15461355
          DataSource = srcFunctionsItem
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'InfoName_L1'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InfoName_L2'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FDaily'
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FHours'
              Width = 56
              Visible = True
            end>
        end
        object EdtPayable: TEdit
          Left = 8
          Top = 343
          Width = 137
          Height = 21
          TabStop = False
          Anchors = [akLeft, akBottom]
          Color = 14155735
          ReadOnly = True
          TabOrder = 3
        end
        object rdgrpEmail: TRadioGroup
          Left = 0
          Top = 280
          Width = 239
          Height = 60
          Align = alBottom
          Caption = #1601#1610#1604#1578#1585' '#1576#1585' '#1581#1587#1576' '#1575#1610#1605#1610#1604' '#1662#1585#1587#1606#1604
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            #1607#1600#1600#1600#1600#1600#1605#1600#1600#1600#1600#1600#1607' '
            #1583#1575#1585#1575#1740' '#1575#1610#1605#1610#1604
            #1576#1583#1608#1606' '#1575#1610#1605#1610#1604
            #1583#1575#1585#1575#1740' '#1578#1604#1711#1585#1575#1605
            #1583#1575#1585#1575#1740' '#1576#1604#1607)
          TabOrder = 4
          OnClick = rdgrpEmailClick
        end
        object Memo1: TMemo
          Left = 0
          Top = 235
          Width = 239
          Height = 45
          Align = alBottom
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = clInactiveCaption
          Lines.Strings = (
            'Memo1')
          TabOrder = 5
          Visible = False
          ExplicitTop = 246
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 440
    Top = 40
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      Hint = ' '
      OnExecute = actFilterExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' '#1601#1610#1588' '#1581#1602#1608#1602
      Hint = ' '
      ShortCut = 118
    end
    object actSendServer: TAction
      Caption = 'Send PNG File'
      OnExecute = actSendServerExecute
    end
    object actsSendEmailDirect: TAction
      Caption = 'Send Email Direct'
      OnExecute = actsSendEmailDirectExecute
    end
    object actPrintList: TAction
      Caption = #1670#1575#1662' '#1604#1610#1587#1578' '#1581#1602#1608#1602
      Hint = ' '
      ShortCut = 8310
      OnExecute = actPrintListExecute
    end
    object actTelegram: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Telegram'
      OnExecute = actTelegramExecute
    end
    object actShowFunctionItemsF: TAction
      Caption = #1603#1575#1585#1603#1585#1583
      OnExecute = actShowFunctionItemsFExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actPrint2: TAction
      Caption = #1670#1575#1662' '#1601#1610#1588' '#1581#1602#1608#1602' 2'
      OnExecute = actPrint2Execute
    end
    object actAllPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actAllPrintExecute
    end
    object actDesigner: TAction
      Caption = #1591#1585#1575#1581#1610' '#1670#1575#1662
    end
    object actBale: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1576#1604#1607
      OnExecute = actBaleExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 624
    Top = 57
  end
  object srcPersonels: TDataSource
    DataSet = qryPersonels
    Left = 648
    Top = 173
  end
  object qryFunctionsItem: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    DataSource = srcPersonels
    Parameters = <
      item
        Name = 'MonthNo'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 6
      end
      item
        Name = 'PersonelNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'Years'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     Pay.FunctionsItems.SalaryID, Pay.FormsInfo.InfoName_L' +
        '1, Pay.FormsInfo.InfoName_L2, SUM(Pay.FunctionsItems.FDaily) AS ' +
        'FDaily, '
      '                      SUM(Pay.FunctionsItems.FHours) AS FHours'
      'FROM         Pay.Functions INNER JOIN'
      
        '                      Pay.FunctionsItems ON Pay.Functions.Functi' +
        'onID = Pay.FunctionsItems.FunctionID INNER JOIN'
      
        '                      Pay.FormsInfo ON Pay.FunctionsItems.Salary' +
        'ID = Pay.FormsInfo.FormInfoID'
      
        'WHERE     (Pay.Functions.Mounth = :MonthNo) AND (Pay.Functions.P' +
        'ersonelNo = :PersonelNo)'
      'AND     (Pay.Functions.Years = :Years  ) '
      
        'GROUP BY Pay.FunctionsItems.SalaryID, Pay.FormsInfo.InfoName_L1,' +
        ' Pay.FormsInfo.InfoName_L2'
      'HAVING      (SUM(Pay.FunctionsItems.FDaily) > 0) OR'
      '                      (SUM(Pay.FunctionsItems.FHours) > 0)')
    Left = 328
    Top = 157
    object qryFunctionsItemSalaryID: TIntegerField
      DisplayWidth = 12
      FieldName = 'SalaryID'
    end
    object qryFunctionsItemInfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1603#1575#1585#1603#1585#1583
      DisplayWidth = 8
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryFunctionsItemInfoName_L2: TStringField
      DisplayWidth = 306
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryFunctionsItemFDaily: TFloatField
      DisplayLabel = #1585#1608#1586#1575#1606#1607
      FieldName = 'FDaily'
    end
    object qryFunctionsItemFHours: TFloatField
      DisplayLabel = #1587#1575#1593#1578#1610
      FieldName = 'FHours'
    end
  end
  object srcFunctionsItem: TDataSource
    DataSet = qryFunctionsItem
    Left = 312
    Top = 219
  end
  object srcWages: TDataSource
    DataSet = qryWages
    Left = 98
    Top = 91
  end
  object srcDecs: TDataSource
    DataSet = qryDecs
    Left = 134
    Top = 283
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppPersonels
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\payfish7.rtm'
    Units = utMillimeters
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
    Left = 545
    Top = 227
    Version = '23.0'
    mmColumnWidth = 203300
    DataPipelineName = 'ppPersonels'
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 89429
      mmPrintPosition = 0
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape7'
        ParentWidth = True
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 8202
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 4
        LayerName = Foreground
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape6'
        mmHeight = 77523
        mmLeft = 73025
        mmTop = 8467
        mmWidth = 96838
        BandType = 4
        LayerName = Foreground
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 77523
        mmLeft = 170127
        mmTop = 8467
        mmWidth = 32544
        BandType = 4
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 77523
        mmLeft = 529
        mmTop = 8467
        mmWidth = 72231
        BandType = 4
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
        mmHeight = 6085
        mmLeft = 75406
        mmTop = 794
        mmWidth = 52123
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        OnGetText = ppLabel2GetText
        Border.mmPadding = 0
        Caption = #1601#1610#1588' '#1581#1602#1608#1602' '#1601#1585#1608#1585#1583#1610#1606' '#1605#1575#1607' 1383'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 794
        mmTop = 1058
        mmWidth = 36777
        BandType = 4
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Style = psDashDotDot
        ParentWidth = True
        Position = lpBottom
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 85031
        mmWidth = 203300
        BandType = 4
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 794
        mmTop = 20638
        mmWidth = 201084
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1662#1585#1587#1606#1604':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 190500
        mmTop = 1852
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1575#1585#1603#1585#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 178065
        mmTop = 21960
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 170392
        mmTop = 27781
        mmWidth = 32015
        BandType = 4
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 71438
        mmLeft = 121444
        mmTop = 14552
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 58208
        mmLeft = 178859
        mmTop = 27781
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 184415
        mmTop = 29104
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 60061
        mmLeft = 19579
        mmTop = 14288
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1587#1608#1585#1575#1578
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
        mmLeft = 26194
        mmTop = 8467
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 112977
        mmTop = 8467
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label31'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 56356
        mmTop = 74877
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground
      end
      object vrbFooter: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'vrbFooter'
        OnGetText = vrbFooterGetText
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 189908
        mmTop = 85196
        mmWidth = 11176
        BandType = 4
        LayerName = Foreground
      end
      object ppwl1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'wl1'
        OnGetText = ppwl1GetText
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 52652
        mmLeft = 142082
        mmTop = 21167
        mmWidth = 27252
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 147638
        mmTop = 15610
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 60325
        mmLeft = 141288
        mmTop = 14288
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 15610
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppwv1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'wv1'
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 52652
        mmLeft = 122502
        mmTop = 21167
        mmWidth = 17992
        BandType = 4
        LayerName = Foreground
      end
      object ppwv2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'wv2'
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 52652
        mmLeft = 73819
        mmTop = 21167
        mmWidth = 17992
        BandType = 4
        LayerName = Foreground
      end
      object ppwl2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'wl2'
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 52652
        mmLeft = 93398
        mmTop = 21167
        mmWidth = 27252
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 98954
        mmTop = 15610
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 74877
        mmTop = 15610
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 60061
        mmLeft = 92604
        mmTop = 14288
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 794
        mmTop = 74348
        mmWidth = 169598
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 21696
        mmTop = 15610
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 48683
        mmTop = 15610
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppdl: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'dl'
        OnGetText = ppdlGetText
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 52652
        mmLeft = 40746
        mmTop = 21167
        mmWidth = 31221
        BandType = 4
        LayerName = Foreground
      end
      object ppdv: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'dv'
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 52652
        mmLeft = 20373
        mmTop = 21167
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1575#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 15610
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppdr: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'dr'
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 52652
        mmLeft = 1852
        mmTop = 21167
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 60061
        mmLeft = 39158
        mmTop = 14552
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1575#1585#1603#1585#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 170921
        mmTop = 29104
        mmWidth = 7673
        BandType = 4
        LayerName = Foreground
      end
      object ppfv: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'fv'
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 59002
        mmLeft = 170657
        mmTop = 34660
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Personel_L1'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPersonels'
        mmHeight = 5821
        mmLeft = 132821
        mmTop = 1058
        mmWidth = 56621
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1582#1575#1604#1589' '#1662#1585#1583#1575#1582#1578#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 56356
        mmTop = 80698
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        OnGetText = ppLabel5GetText
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 36513
        mmTop = 80169
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        OnGetText = ppLabel13GetText
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 38629
        mmTop = 74613
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        OnGetText = ppLabel14GetText
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 2117
        mmTop = 74877
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        OnGetText = ppLabel20GetText
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4763
        mmLeft = 87048
        mmTop = 75142
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label201'
        OnGetText = ppLabel23GetText
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5292
        mmLeft = 87048
        mmTop = 80169
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 187590
        mmTop = 10054
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1588#1594#1604#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 187590
        mmTop = 15346
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1576#1610#1605#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5556
        mmLeft = 149754
        mmTop = 80433
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label30'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5556
        mmLeft = 149754
        mmTop = 75406
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppPersonels'
        mmHeight = 5292
        mmLeft = 161925
        mmTop = 14817
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'PersonelNo'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPersonels'
        mmHeight = 5292
        mmLeft = 170657
        mmTop = 8996
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'AccountNumber'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPersonels'
        mmHeight = 5292
        mmLeft = 123561
        mmTop = 75406
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'InsuranceNumber'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPersonels'
        mmHeight = 5292
        mmLeft = 123561
        mmTop = 80433
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object ppLine67: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line67'
        Border.mmPadding = 0
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 794
        mmTop = 14288
        mmWidth = 169598
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1587#1608#1585#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 20373
        mmTop = 74877
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 170392
        mmTop = 34396
        mmWidth = 32015
        BandType = 4
        LayerName = Foreground
      end
      object ppfl: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'fl'
        OnGetText = ppflGetText
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 57415
        mmLeft = 179388
        mmTop = 34660
        mmWidth = 22754
        BandType = 4
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
  object ppPersonels: TppDBPipeline
    DataSource = srcPersonels
    OpenDataSource = False
    UserName = 'Personels'
    Left = 721
    Top = 211
    object pfldPersonelsppField1: TppField
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pfldPersonelsppField2: TppField
      FieldAlias = 'Personel_L1'
      FieldName = 'Personel_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pfldPersonelsppField3: TppField
      FieldAlias = 'Personel_L2'
      FieldName = 'Personel_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pfldPersonelsppField4: TppField
      FieldAlias = 'HasFunction'
      FieldName = 'HasFunction'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pfldPersonelsppField5: TppField
      FieldAlias = 'AccountNumber'
      FieldName = 'AccountNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pfldPersonelsppField6: TppField
      FieldAlias = 'InsuranceNumber'
      FieldName = 'InsuranceNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pfldPersonelsppField7: TppField
      FieldAlias = 'OfficeName_l1'
      FieldName = 'OfficeName_l1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
  end
  object ppReport2: TppReport
    AutoStop = False
    Columns = 2
    DataPipeline = ppPersonels
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\payfish7.rtm'
    Units = utMillimeters
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
    Left = 552
    Top = 289
    Version = '23.0'
    mmColumnWidth = 101650
    DataPipelineName = 'ppPersonels'
    object ppColumnHeaderBand1: TppColumnHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 61648
      mmPrintPosition = 0
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape4'
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 8202
        mmLeft = 794
        mmTop = 50006
        mmWidth = 99748
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape3'
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 38894
        mmLeft = 794
        mmTop = 11377
        mmWidth = 99748
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape7'
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 8202
        mmLeft = 794
        mmTop = 2381
        mmWidth = 99748
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        OnGetText = ppLabel2GetText
        Border.mmPadding = 0
        Caption = #1601#1610#1588' '#1581#1602#1608#1602' '#1601#1585#1608#1585#1583#1610#1606' '#1605#1575#1607' 1383'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 32279
        mmTop = 3440
        mmWidth = 36777
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1662#1585#1587#1606#1604':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5927
        mmLeft = 73554
        mmTop = 12435
        mmWidth = 13885
        BandType = 4
        LayerName = Foreground1
      end
      object ppVariable2: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'vrbFooter'
        OnGetText = vrbFooterGetText
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 83344
        mmTop = 43392
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'Personel_L1'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPersonels'
        mmHeight = 5842
        mmLeft = 54568
        mmTop = 12435
        mmWidth = 18457
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel68: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label25'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1582#1575#1604#1589' '#1662#1585#1583#1575#1582#1578#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6011
        mmLeft = 76200
        mmTop = 50800
        mmWidth = 20151
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel70: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        OnGetText = ppLabel5GetText
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5334
        mmLeft = 56621
        mmTop = 51065
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel90: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5927
        mmLeft = 73554
        mmTop = 18521
        mmWidth = 19727
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel91: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1588#1594#1604#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        Visible = False
        mmHeight = 5927
        mmLeft = 73554
        mmTop = 24606
        mmWidth = 16679
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel92: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1576#1610#1605#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5927
        mmLeft = 73554
        mmTop = 36777
        mmWidth = 15155
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel93: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label30'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5927
        mmLeft = 73554
        mmTop = 30692
        mmWidth = 25823
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        AutoSize = True
        Border.mmPadding = 0
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppPersonels'
        mmHeight = 5842
        mmLeft = 60325
        mmTop = 24606
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'PersonelNo'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPersonels'
        mmHeight = 6519
        mmLeft = 56347
        mmTop = 18256
        mmWidth = 16679
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'AccountNumber'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPersonels'
        mmHeight = 6879
        mmLeft = 48948
        mmTop = 30427
        mmWidth = 24077
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'InsuranceNumber'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPersonels'
        mmHeight = 6519
        mmLeft = 47456
        mmTop = 36513
        mmWidth = 25569
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line11'
        Border.mmPadding = 0
        Pen.Style = psDot
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 59267
        mmWidth = 101650
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 61648
        mmLeft = 100277
        mmTop = 0
        mmWidth = 1323
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      AlignToBottom = True
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppFunctionItem: TppDBPipeline
    DataSource = srcFunctionsItem
    OpenDataSource = False
    UserName = 'FunctionItem'
    Left = 713
    Top = 331
    MasterDataPipelineName = 'ppFunction'
    object ppFunctionItemppField1: TppField
      FieldAlias = 'SalaryID'
      FieldName = 'SalaryID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppFunctionItemppField2: TppField
      FieldAlias = 'InfoName_L1'
      FieldName = 'InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppFunctionItemppField3: TppField
      FieldAlias = 'InfoName_L2'
      FieldName = 'InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppFunctionItemppField4: TppField
      FieldAlias = 'FDaily'
      FieldName = 'FDaily'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppFunctionItemppField5: TppField
      FieldAlias = 'FHours'
      FieldName = 'FHours'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
  end
  object qryWages: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryWagesAfterOpen
    OnCalcFields = qryWagesCalcFields
    Parameters = <
      item
        Name = 'FirstArchiveID'
        Size = -1
        Value = Null
      end
      item
        Name = 'LastArchiveID'
        Size = -1
        Value = Null
      end
      item
        Name = 'LabelIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'LabelIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'MonthNo'
        Size = -1
        Value = Null
      end
      item
        Name = 'c_PersonelNo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT  RetardFixedCalculated.SalaryID, Pay.FormsInfo.InfoName_L' +
        '1, SUM(RetardFixedCalculated.price) AS SumPrice'
      
        'FROM         Pay.RetardFixedCalculated( :FirstArchiveID , :LastA' +
        'rchiveID , DEFAULT  ,:LabelIDFrom  , :LabelIDTo , :YearIDFrom , ' +
        ':YearIDTo ) RetardFixedCalculated LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo ON RetardFixedCalculated.Sal' +
        'aryID = Pay.FormsInfo.FormInfoID'
      'WHERE     (RetardFixedCalculated.Mounth = :MonthNo) AND'
      '          (RetardFixedCalculated.ShowListKind = 1) AND'
      '           (RetardFixedCalculated.PersonelNO = :c_PersonelNo)'
      
        'GROUP BY RetardFixedCalculated.SalaryID, Pay.FormsInfo.InfoName_' +
        'L1'
      'ORDER BY RetardFixedCalculated.SalaryID'
      ' '
      '')
    Left = 42
    Top = 96
    object qryWages_radif: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldKind = fkCalculated
      FieldName = '_radif'
      Calculated = True
    end
    object qryWagesSalaryID: TIntegerField
      FieldName = 'SalaryID'
    end
    object qryWagesInfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1586#1575#1610#1575
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryWagesSumPrice: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'SumPrice'
      currency = True
      Precision = 19
    end
  end
  object qryDecs: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryDecsAfterOpen
    OnCalcFields = qryDecsCalcFields
    Parameters = <
      item
        Name = 'FirstArchiveID'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'LastArchiveID'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'LabelIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'LabelIDTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'MonthNo'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 6
      end
      item
        Name = 'c_PersonelNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      'SELECT     RetardFixedCalculated.SalaryID,'
      
        '           CASE WHEN ShowlistKind = 11 THEN '#39#1605#1575#1604#1610#1575#1578#39' ELSE Pay.Fo' +
        'rmsInfo.InfoName_L1 END AS InfoName_L1,'
      
        '          SUM(RetardFixedCalculated.Price) AS SumPrice, SUM(Reta' +
        'rdFixedCalculated.Price) AS LoanRemain'
      
        'FROM         Pay.RetardFixedCalculated( :FirstArchiveID , :LastA' +
        'rchiveID, DEFAULT  , :LabelIDFrom  , :LabelIDTo , :YearIDFrom , ' +
        ':YearIDTo ) RetardFixedCalculated LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo ON RetardFixedCalculated.Sal' +
        'aryID = Pay.FormsInfo.FormInfoID'
      ''
      
        'WHERE     (RetardFixedCalculated.Mounth = :MonthNo) AND ((Retard' +
        'FixedCalculated.ShowListKind = 2) OR'
      '       (RetardFixedCalculated.ShowListKind = 11))'
      
        '       AND (RetardFixedCalculated.PersonelNO = :c_PersonelNo) AN' +
        'D (bedbes = 2)'
      
        'GROUP BY RetardFixedCalculated.SalaryID, Pay.FormsInfo.InfoName_' +
        'L1, ShowlistKind'
      'having  SUM(RetardFixedCalculated.Price)<>-1'
      'ORDER BY RetardFixedCalculated.SalaryID'
      ' ')
    Left = 82
    Top = 283
    object qryDecs_radif: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldKind = fkCalculated
      FieldName = '_radif'
      Calculated = True
    end
    object qryDecsSalaryID: TIntegerField
      FieldName = 'SalaryID'
    end
    object qryDecsInfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1603#1587#1608#1585#1575#1578
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryDecsSumPrice: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'SumPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryDecsLoanRemain: TBCDField
      FieldName = 'LoanRemain'
      Precision = 19
    end
    object qryDecs_LoanRemain: TCurrencyField
      FieldKind = fkCalculated
      FieldName = '_LoanRemain'
      Calculated = True
    end
  end
  object qryPersonels: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterOpen = qryPersonelsAfterOpen
    AfterScroll = qryPersonelsAfterScroll
    Parameters = <>
    Left = 571
    Top = 195
    object qryPersonelsPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1662#1585#1587#1606#1604'|'#1588#1605#1575#1585#1607
      FieldName = 'PersonelNo'
    end
    object qryPersonelsPersonel_L1: TStringField
      Tag = 3
      DisplayLabel = #1662#1585#1587#1606#1604'|'#1606#1575#1605
      FieldName = 'Personel_L1'
      ReadOnly = True
      Size = 57
    end
    object qryPersonelsPersonel_L2: TStringField
      DisplayLabel = #1662#1585#1587#1606#1604'|'#1606#1575#1605
      FieldName = 'Personel_L2'
      ReadOnly = True
      Size = 57
    end
    object qryPersonelsHasFunction: TIntegerField
      FieldName = 'HasFunction'
      ReadOnly = True
    end
    object qryPersonelsAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 30
    end
    object qryPersonelsInsuranceNumber: TStringField
      FieldName = 'InsuranceNumber'
      Size = 18
    end
    object qryPersonelsOfficeName_l1: TStringField
      FieldName = 'OfficeName_l1'
      Size = 255
    end
    object qryPersonelsEmail: TWideStringField
      Tag = 3
      DisplayLabel = #1662#1585#1587#1606#1604'|Email'
      FieldName = 'Email'
      Size = 100
    end
    object qryPersonelsNationalID: TStringField
      FieldName = 'NationalID'
      Size = 12
    end
    object qryPersonelsTelegramChatID: TStringField
      Tag = 3
      DisplayLabel = #1662#1585#1587#1606#1604'|Telegram ChatID'
      FieldName = 'TelegramChatID'
      FixedChar = True
      Size = 30
    end
    object qryPersonelsBaleChatID: TStringField
      Tag = 3
      DisplayLabel = #1662#1585#1587#1606#1604'|Bale ChatID'
      FieldName = 'BaleChatID'
      FixedChar = True
      Size = 30
    end
  end
  object qryFunctions: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryFunctionsAfterScroll
    DataSource = srcPersonels
    Parameters = <
      item
        Name = 'MonthNo'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 6
      end
      item
        Name = 'PersonelNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = 'Years'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     SUM(FunctionDay) AS FunctionDay, SUM(FunctionTime) AS' +
        ' FunctionTime'
      'FROM         Pay.Functions'
      'WHERE     (Mounth = :MonthNo)  AND (PersonelNo = :PersonelNo)'
      'AND    ( Years = :Years  ) ')
    Left = 442
    Top = 165
    object qryFunctionsFunctionDay: TFloatField
      DisplayLabel = #1585#1608#1586#1607#1575#1610' '#1603#1575#1585#1603#1585#1583
      FieldName = 'FunctionDay'
    end
    object qryFunctionsFunctionTime: TFloatField
      DisplayLabel = #1587#1575#1593#1575#1578' '#1603#1575#1585#1603#1585#1583
      FieldName = 'FunctionTime'
    end
  end
  object srcFunctions: TDataSource
    DataSet = qryFunctions
    Left = 466
    Top = 229
  end
  object qryPayable_Delete: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    DataSource = srcPersonels
    Parameters = <
      item
        Name = 'MonthNo'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'MonthNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     price'
      
        'FROM         Pay.RetardFixedCalculated(DEFAULT, DEFAULT, DEFAULT' +
        ') RetardFixedCalculated'
      'WHERE     (Mounth = :MonthNo) AND (PersonelNO = :MonthNo)')
    Left = 304
    Top = 277
    object qryPayable_DeletePrice: TBCDField
      FieldName = 'Price'
      currency = True
      Precision = 19
    end
  end
  object srcPayable_Delete: TDataSource
    DataSet = qryPayable_Delete
    Left = 312
    Top = 341
  end
  object qryLoan: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    DataSource = srcPersonels
    Parameters = <
      item
        Name = 'LabelIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'LabelIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'MounthNo'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelNo'
        DataType = ftInteger
        Value = 1
      end
      item
        Name = 'InfoID'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT Pay.PersonelDecExt.PersonelNo, Pay.PersonelDecExt.FormInf' +
        'oID,'
      
        '       Pay.PersonelDecExt.EmployerAmount-Pay.PersonelDecExt.Paym' +
        'entLoan -'
      '        ISNULL(PaymentLoan.PayLoan, 0) AS RemainLoan'
      'FROM   Pay.PersonelDecExt INNER JOIN'
      
        '       Pay.FormsInfo ON Pay.PersonelDecExt.FormInfoID = Pay.Form' +
        'sInfo.FormInfoID LEFT OUTER JOIN'
      '       (SELECT     PersonelNO, SalaryID, SUM(Price) AS PayLoan'
      
        '            FROM         Pay.RetardFixedCalculated(DEFAULT, DEFA' +
        'ULT, DEFAULT  ,:LabelIDFrom  , :LabelIDTo , :YearIDFrom  ,:YearI' +
        'DTo ) RetardFixedCalculated'
      '                WHERE     (Mounth <= :MounthNo)'
      
        'GROUP BY PersonelNO, SalaryID) PaymentLoan ON Pay.PersonelDecExt' +
        '.PersonelNo = PaymentLoan.PersonelNO'
      'AND   Pay.PersonelDecExt.FormInfoID = PaymentLoan.SalaryID'
      
        'WHERE     (Pay.FormsInfo.FormType = 33) AND (Pay.PersonelDecExt.' +
        'PersonelNo = :PersonelNo)'
      ' AND (Pay.PersonelDecExt.FormInfoID = :InfoID)')
    Left = 528
    Top = 16
    object qryLoanPersonelNo: TIntegerField
      FieldName = 'PersonelNo'
    end
    object qryLoanFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryLoanRemainLoan: TBCDField
      FieldName = 'RemainLoan'
      ReadOnly = True
      Precision = 19
    end
  end
  object ppReport3: TppReport
    AutoStop = False
    DataPipeline = ppPersonels
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\PayRoll\Exe\payfish7.rtm'
    Units = utMillimeters
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
    Left = 449
    Top = 307
    Version = '23.0'
    mmColumnWidth = 203300
    DataPipelineName = 'ppPersonels'
    object ppDetailBand3: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 133879
      mmPrintPosition = 0
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape7'
        ParentWidth = True
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 8202
        mmLeft = 0
        mmTop = 5821
        mmWidth = 203300
        BandType = 4
        LayerName = Foreground2
      end
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape6'
        mmHeight = 77523
        mmLeft = 73025
        mmTop = 14288
        mmWidth = 96838
        BandType = 4
        LayerName = Foreground2
      end
      object ppShape10: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape2'
        mmHeight = 77523
        mmLeft = 170127
        mmTop = 14288
        mmWidth = 32544
        BandType = 4
        LayerName = Foreground2
      end
      object ppShape11: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape1'
        mmHeight = 77523
        mmLeft = 529
        mmTop = 14288
        mmWidth = 72231
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer3
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
        mmHeight = 6085
        mmLeft = 75406
        mmTop = 6615
        mmWidth = 52123
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label2'
        OnGetText = ppLabel2GetText
        Border.mmPadding = 0
        Caption = #1601#1610#1588' '#1581#1602#1608#1602' '#1601#1585#1608#1585#1583#1610#1606' '#1605#1575#1607' 1383'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 794
        mmTop = 6879
        mmWidth = 36777
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line13'
        Border.mmPadding = 0
        Pen.Style = psDot
        Position = lpBottom
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 124619
        mmWidth = 203300
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 794
        mmTop = 26458
        mmWidth = 201084
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1662#1585#1587#1606#1604':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 190500
        mmTop = 7673
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1575#1585#1603#1585#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 178065
        mmTop = 27781
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine68: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line5'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 170392
        mmTop = 33602
        mmWidth = 32015
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine69: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 71438
        mmLeft = 121444
        mmTop = 20373
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine70: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 58208
        mmLeft = 178859
        mmTop = 33602
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 184415
        mmTop = 34925
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine71: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 60061
        mmLeft = 19579
        mmTop = 20108
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1587#1608#1585#1575#1578
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
        mmLeft = 26194
        mmTop = 14288
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label26'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 112977
        mmTop = 14288
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label31'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 56356
        mmTop = 80698
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground2
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer3
        UserName = 'vrbFooter'
        OnGetText = vrbFooterGetText
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 10319
        mmLeft = 160602
        mmTop = 92075
        mmWidth = 40481
        BandType = 4
        LayerName = Foreground2
      end
      object ppLbl_wl1: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'wl1'
        OnGetText = ppLbl_wl1GetText
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 52652
        mmLeft = 142082
        mmTop = 26988
        mmWidth = 27252
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 147638
        mmTop = 21431
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine72: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 60325
        mmLeft = 141288
        mmTop = 20108
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 21431
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground2
      end
      object ppLbl_wv1: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'wv1'
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 52652
        mmLeft = 122502
        mmTop = 26988
        mmWidth = 17992
        BandType = 4
        LayerName = Foreground2
      end
      object ppLbl_wv2: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'wv2'
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 52652
        mmLeft = 73819
        mmTop = 26988
        mmWidth = 17992
        BandType = 4
        LayerName = Foreground2
      end
      object ppLbl_wl2: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'wl2'
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 52652
        mmLeft = 93398
        mmTop = 26988
        mmWidth = 27252
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel60: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 98954
        mmTop = 21431
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel61: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 74877
        mmTop = 21431
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine73: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 60061
        mmLeft = 92604
        mmTop = 20108
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine74: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line7'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 794
        mmTop = 80169
        mmWidth = 169598
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel62: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 21696
        mmTop = 21431
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 48683
        mmTop = 21431
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground2
      end
      object ppLbl_dl: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'dl'
        OnGetText = ppLbl_dlGetText
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 52652
        mmLeft = 40746
        mmTop = 26988
        mmWidth = 31221
        BandType = 4
        LayerName = Foreground2
      end
      object ppLbl_dv: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'dv'
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 52652
        mmLeft = 20373
        mmTop = 26988
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel66: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label27'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1575#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 21431
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground2
      end
      object ppLbl_dr: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'dr'
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 52652
        mmLeft = 1852
        mmTop = 26988
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine75: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 60061
        mmLeft = 39158
        mmTop = 20373
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel69: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label101'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1575#1585#1603#1585#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 170921
        mmTop = 34925
        mmWidth = 7673
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Personel_L1'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPersonels'
        mmHeight = 5821
        mmLeft = 132821
        mmTop = 6879
        mmWidth = 56621
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel71: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label25'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1582#1575#1604#1589' '#1662#1585#1583#1575#1582#1578#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 56356
        mmTop = 86519
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel72: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label5'
        OnGetText = ppLabel5GetText
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 36513
        mmTop = 85990
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel73: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label13'
        OnGetText = ppLabel13GetText
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 38629
        mmTop = 80433
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel74: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label14'
        OnGetText = ppLabel14GetText
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 2117
        mmTop = 80698
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel75: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label20'
        OnGetText = ppLabel20GetText
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4763
        mmLeft = 87048
        mmTop = 80963
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel76: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label201'
        OnGetText = ppLabel23GetText
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5292
        mmLeft = 87048
        mmTop = 85990
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel77: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 187590
        mmTop = 15875
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel78: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1588#1594#1604#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        Visible = False
        mmHeight = 5556
        mmLeft = 187590
        mmTop = 21167
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel79: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1576#1610#1605#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5556
        mmLeft = 149754
        mmTop = 86254
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel80: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label30'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5556
        mmLeft = 149754
        mmTop = 81227
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppPersonels'
        mmHeight = 5292
        mmLeft = 161925
        mmTop = 20638
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'PersonelNo'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPersonels'
        mmHeight = 5292
        mmLeft = 170657
        mmTop = 14817
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'AccountNumber'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPersonels'
        mmHeight = 5292
        mmLeft = 123561
        mmTop = 81227
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'InsuranceNumber'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPersonels'
        mmHeight = 5292
        mmLeft = 123561
        mmTop = 86254
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine76: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line67'
        Border.mmPadding = 0
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 794
        mmTop = 20108
        mmWidth = 169598
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel81: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1587#1608#1585#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 20373
        mmTop = 80698
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine77: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line17'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 170392
        mmTop = 40217
        mmWidth = 31485
        BandType = 4
        LayerName = Foreground2
      end
      object ppShape12: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape12'
        ParentWidth = True
        Shape = stRoundRect
        Visible = False
        mmHeight = 19579
        mmLeft = 0
        mmTop = 103717
        mmWidth = 203300
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine78: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line78'
        Border.mmPadding = 0
        Position = lpLeft
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 19315
        mmLeft = 66675
        mmTop = 103717
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine79: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line79'
        Border.mmPadding = 0
        Position = lpLeft
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 19315
        mmLeft = 127265
        mmTop = 103717
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel83: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label83'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1583#1610#1585' '#1575#1605#1608#1585' '#1605#1575#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4763
        mmLeft = 107421
        mmTop = 105304
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel84: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label84'
        Border.mmPadding = 0
        Caption = #1583#1585#1610#1575#1601#1578' '#1705#1606#1606#1583#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4699
        mmLeft = 51075
        mmTop = 105304
        mmWidth = 12954
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel85: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label85'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4763
        mmLeft = 187590
        mmTop = 105304
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground2
      end
      object ppLabel86: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label86'
        Border.mmPadding = 0
        Caption = ' '#1575#1605#1590#1575#1569' '#1608' '#1575#1579#1585' '#1575#1606#1711#1588#1578' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4699
        mmLeft = 5027
        mmTop = 116681
        mmWidth = 19897
        BandType = 4
        LayerName = Foreground2
      end
      object ppLbl_fl: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'fl'
        OnGetText = ppLbl_flGetText
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 50536
        mmLeft = 179388
        mmTop = 41275
        mmWidth = 22754
        BandType = 4
        LayerName = Foreground2
      end
      object ppLbl_fv: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'fv'
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 50536
        mmLeft = 170657
        mmTop = 41275
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object PopMnuPrint: TPopupMenu
    Left = 569
    Top = 371
    object MenuItem2: TMenuItem
      Tag = 2
      Action = actPrint2
      Visible = False
    end
    object N6: TMenuItem
      Tag = 1
      Caption = #1670#1575#1662' '#1601#1610#1588' '#1581#1602#1608#1602
      Hint = ' '
      object N8: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        OnClick = N7Click
      end
      object N7: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        OnClick = N7Click
      end
    end
    object MenuItem1: TMenuItem
      Tag = 1
      Caption = #1670#1575#1662' '#1601#1610#1588' '#1581#1602#1608#1602' '#1576#1583#1608#1606' '#1608#1575#1581#1583
      Hint = ' '
      Visible = False
      object N4: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' &'#1580#1575#1585#1610
        ShortCut = 118
        OnClick = N4Click
      end
      object N5: TMenuItem
        Tag = 2
        Caption = '&'#1607#1605#1607' '#1662#1585#1587#1606#1604
        OnClick = N4Click
      end
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object N3: TMenuItem
      Action = actPrintList
      Caption = #1601#1610#1588' -'#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578
      Visible = False
    end
    object N2: TMenuItem
      Caption = #1605#1578#1606' '#1586#1610#1585' '#1670#1575#1662
      OnClick = N2Click
    end
    object N1: TMenuItem
      Caption = #1591#1585#1575#1581#1610' '#1670#1575#1662
    end
  end
  object ppReport4: TppReport
    AutoStop = False
    DataPipeline = ppPersonels
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\RetardpayfishNew.rtm'
    Units = utMillimeters
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
    Left = 385
    Top = 227
    Version = '23.0'
    mmColumnWidth = 203300
    DataPipelineName = 'ppPersonels'
    object ppDetailBand4: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 91546
      mmPrintPosition = 0
      object ppShape13: TppShape
        DesignLayer = ppDesignLayer9
        UserName = 'Shape7'
        ParentWidth = True
        Pen.Width = 2
        Shape = stRoundRect
        mmHeight = 7938
        mmLeft = 0
        mmTop = 1058
        mmWidth = 203300
        BandType = 4
        LayerName = Foreground8
      end
      object ppShape14: TppShape
        DesignLayer = ppDesignLayer9
        UserName = 'Shape6'
        mmHeight = 77523
        mmLeft = 73025
        mmTop = 9260
        mmWidth = 96838
        BandType = 4
        LayerName = Foreground8
      end
      object ppShape15: TppShape
        DesignLayer = ppDesignLayer9
        UserName = 'Shape2'
        mmHeight = 77523
        mmLeft = 170127
        mmTop = 9260
        mmWidth = 32544
        BandType = 4
        LayerName = Foreground8
      end
      object ppShape16: TppShape
        DesignLayer = ppDesignLayer9
        UserName = 'Shape1'
        mmHeight = 77523
        mmLeft = 529
        mmTop = 9260
        mmWidth = 72231
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer9
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
        mmHeight = 6085
        mmLeft = 75406
        mmTop = 1852
        mmWidth = 52123
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label2'
        OnGetText = ppLabel2GetText
        Border.mmPadding = 0
        Caption = #1601#1610#1588' '#1581#1602#1608#1602' '#1601#1585#1608#1585#1583#1610#1606' '#1605#1575#1607' 1383'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 794
        mmTop = 1852
        mmWidth = 36777
        BandType = 4
        LayerName = Foreground8
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 794
        mmTop = 21431
        mmWidth = 201084
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1662#1585#1587#1606#1604':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 190500
        mmTop = 2381
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1585#1608#1586#1607#1575#1610' '#1603#1575#1585#1603#1585#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 184616
        mmTop = 26458
        mmWidth = 17526
        BandType = 4
        LayerName = Foreground8
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 71438
        mmLeft = 121444
        mmTop = 15346
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground8
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 65352
        mmLeft = 178859
        mmTop = 21431
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 179388
        mmTop = 21960
        mmWidth = 22754
        BandType = 4
        LayerName = Foreground8
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 61119
        mmLeft = 19579
        mmTop = 15081
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1587#1608#1585#1575#1578
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
        mmLeft = 26194
        mmTop = 9260
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label26'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 112977
        mmTop = 9260
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label31'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5334
        mmLeft = 52123
        mmTop = 76200
        mmWidth = 19981
        BandType = 4
        LayerName = Foreground8
      end
      object ppVariable3: TppVariable
        DesignLayer = ppDesignLayer9
        UserName = 'vrbFooter'
        OnGetText = vrbFooterGetText
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 189908
        mmTop = 86519
        mmWidth = 11176
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 141817
        mmTop = 16404
        mmWidth = 27517
        BandType = 4
        LayerName = Foreground8
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 61119
        mmLeft = 141288
        mmTop = 15081
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 121973
        mmTop = 16404
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 93134
        mmTop = 16404
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 73554
        mmTop = 16404
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground8
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 61119
        mmLeft = 92604
        mmTop = 15081
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground8
      end
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line7'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 794
        mmTop = 76200
        mmWidth = 169598
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 20108
        mmTop = 16404
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 39688
        mmTop = 16404
        mmWidth = 32544
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel64: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label27'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1575#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 16404
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground8
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 61119
        mmLeft = 39158
        mmTop = 15346
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel67: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label101'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1575#1585#1603#1585#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 170657
        mmTop = 21960
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Personel_L1'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPersonels'
        mmHeight = 5821
        mmLeft = 132821
        mmTop = 1852
        mmWidth = 56621
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel87: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label25'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1582#1575#1604#1589' '#1662#1585#1583#1575#1582#1578#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 1588
        mmTop = 76465
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel88: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label5'
        OnGetText = ppLabel5GetText
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 1588
        mmTop = 80698
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel89: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label13'
        OnGetText = ppLabel13GetText
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5588
        mmLeft = 34660
        mmTop = 76200
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel94: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label14'
        OnGetText = ppLabel14GetText
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5588
        mmLeft = 34660
        mmTop = 81492
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel95: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label20'
        OnGetText = ppLabel20GetText
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 87048
        mmTop = 76200
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel96: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label201'
        OnGetText = ppLabel23GetText
        AutoSize = False
        Border.mmPadding = 0
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 87048
        mmTop = 81227
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel97: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 187590
        mmTop = 10848
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel98: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 5
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6615
        mmLeft = 196057
        mmTop = 14817
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel99: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1576#1610#1605#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 147109
        mmTop = 81227
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel100: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label30'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5334
        mmLeft = 147109
        mmTop = 76200
        mmWidth = 22352
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'OfficeName_l1'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsUnderline]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPersonels'
        mmHeight = 5419
        mmLeft = 170657
        mmTop = 15610
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'PersonelNo'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPersonels'
        mmHeight = 5292
        mmLeft = 170657
        mmTop = 9790
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'AccountNumber'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPersonels'
        mmHeight = 5556
        mmLeft = 121709
        mmTop = 76200
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'InsuranceNumber'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPersonels'
        mmHeight = 5556
        mmLeft = 121709
        mmTop = 81227
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground8
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line67'
        Border.mmPadding = 0
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2381
        mmLeft = 794
        mmTop = 15081
        mmWidth = 169598
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel101: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1587#1608#1585#1575#1578':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 52123
        mmTop = 81492
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground8
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line17'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 170392
        mmTop = 26458
        mmWidth = 32015
        BandType = 4
        LayerName = Foreground8
      end
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer9
        UserName = 'SubReportFunctionItem'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentWidth = False
        PrintBehavior = pbFixed
        TraverseAllData = False
        DataPipelineName = 'ppFunctionItem'
        mmHeight = 48683
        mmLeft = 170657
        mmTop = 38100
        mmWidth = 31485
        BandType = 4
        LayerName = Foreground8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppFunctionItem
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'Letter'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '23.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppFunctionItem'
          object ppDetailBand5: TppDetailBand
            Border.mmPadding = 0
            PrintCount = 8
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object ppDBText22: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText22'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'FDaily'
              DataPipeline = ppFunctionItem
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppFunctionItem'
              mmHeight = 6615
              mmLeft = 265
              mmTop = 0
              mmWidth = 7673
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText31: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText31'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'FHours'
              DataPipeline = ppFunctionItem
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppFunctionItem'
              mmHeight = 6615
              mmLeft = 529
              mmTop = 0
              mmWidth = 7673
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText21: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText21'
              Border.mmPadding = 0
              DataField = 'InfoName_L1'
              DataPipeline = ppFunctionItem
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppFunctionItem'
              mmHeight = 5821
              mmLeft = 8731
              mmTop = 0
              mmWidth = 22754
              BandType = 4
              LayerName = Foreground3
            end
          end
          object ppDesignLayers4: TppDesignLayers
            object ppDesignLayer4: TppDesignLayer
              UserName = 'Foreground3'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppSubReport2: TppSubReport
        DesignLayer = ppDesignLayer9
        UserName = 'SubReportWages'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentWidth = False
        PrintBehavior = pbFixed
        TraverseAllData = False
        DataPipelineName = 'ppWages'
        mmHeight = 54769
        mmLeft = 121973
        mmTop = 21167
        mmWidth = 47361
        BandType = 4
        LayerName = Foreground8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppWages
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'Letter'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '23.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppWages'
          object ppDetailBandWage1: TppDetailBand
            Border.mmPadding = 0
            PrintCount = 8
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object ppDBText23: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText23'
              Border.mmPadding = 0
              DataField = 'InfoName_L1'
              DataPipeline = ppWages
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppWages'
              mmHeight = 5821
              mmLeft = 20108
              mmTop = 0
              mmWidth = 27517
              BandType = 4
              LayerName = Foreground4
            end
            object ppDBText24: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText24'
              Border.mmPadding = 0
              DataField = 'SumPrice'
              DataPipeline = ppWages
              DisplayFormat = '#,0'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppWages'
              mmHeight = 6615
              mmLeft = 265
              mmTop = 0
              mmWidth = 19050
              BandType = 4
              LayerName = Foreground4
            end
          end
          object ppDesignLayers5: TppDesignLayers
            object ppDesignLayer5: TppDesignLayer
              UserName = 'Foreground4'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppSubReport3: TppSubReport
        DesignLayer = ppDesignLayer9
        UserName = 'SubReportWages2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentWidth = False
        PrintBehavior = pbFixed
        TraverseAllData = False
        DataPipelineName = 'ppWages2'
        mmHeight = 54769
        mmLeft = 73025
        mmTop = 21696
        mmWidth = 48154
        BandType = 4
        LayerName = Foreground8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = ppWages2
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'Letter'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '23.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppWages2'
          object ppDetailBand7: TppDetailBand
            Border.mmPadding = 0
            PrintCount = 8
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object ppDBText25: TppDBText
              DesignLayer = ppDesignLayer6
              UserName = 'DBText23'
              Border.mmPadding = 0
              DataField = 'InfoName_L1'
              DataPipeline = ppWages2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppWages2'
              mmHeight = 5821
              mmLeft = 19579
              mmTop = 0
              mmWidth = 28046
              BandType = 4
              LayerName = Foreground5
            end
            object ppDBText26: TppDBText
              DesignLayer = ppDesignLayer6
              UserName = 'DBText24'
              Border.mmPadding = 0
              DataField = 'SumPrice'
              DataPipeline = ppWages2
              DisplayFormat = '#,0'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppWages2'
              mmHeight = 6615
              mmLeft = 265
              mmTop = 0
              mmWidth = 18785
              BandType = 4
              LayerName = Foreground5
            end
          end
          object ppDesignLayers6: TppDesignLayers
            object ppDesignLayer6: TppDesignLayer
              UserName = 'Foreground5'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppSubReport4: TppSubReport
        DesignLayer = ppDesignLayer9
        UserName = 'SubReportDecs'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentWidth = False
        PrintBehavior = pbFixed
        TraverseAllData = False
        DataPipelineName = 'ppDecs'
        mmHeight = 54504
        mmLeft = 1058
        mmTop = 21960
        mmWidth = 71173
        BandType = 4
        LayerName = Foreground8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport4: TppChildReport
          AutoStop = False
          DataPipeline = ppDecs
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'Letter'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '23.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppDecs'
          object ppDetailBand8: TppDetailBand
            Border.mmPadding = 0
            PrintCount = 8
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object ppDBText27: TppDBText
              DesignLayer = ppDesignLayer7
              UserName = 'DBText23'
              Border.mmPadding = 0
              DataField = 'InfoName_L1'
              DataPipeline = ppDecs
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDecs'
              mmHeight = 6615
              mmLeft = 38894
              mmTop = 0
              mmWidth = 32544
              BandType = 4
              LayerName = Foreground6
            end
            object ppDBText28: TppDBText
              DesignLayer = ppDesignLayer7
              UserName = 'DBText24'
              Border.mmPadding = 0
              DataField = 'SumPrice'
              DataPipeline = ppDecs
              DisplayFormat = '#,0'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDecs'
              mmHeight = 6615
              mmLeft = 19315
              mmTop = 0
              mmWidth = 18785
              BandType = 4
              LayerName = Foreground6
            end
            object ppDBText29: TppDBText
              DesignLayer = ppDesignLayer7
              UserName = 'DBText29'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = '_LoanRemain'
              DataPipeline = ppDecs
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDecs'
              mmHeight = 6519
              mmLeft = 265
              mmTop = 0
              mmWidth = 18256
              BandType = 4
              LayerName = Foreground6
            end
          end
          object ppDesignLayers7: TppDesignLayers
            object ppDesignLayer7: TppDesignLayer
              UserName = 'Foreground6'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'FunctionDay'
        DataPipeline = ppFunction
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppFunction'
        mmHeight = 6519
        mmLeft = 170657
        mmTop = 26194
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground8
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer9
        UserName = 'DBText33'
        Border.mmPadding = 0
        DataField = 'FunctionTime'
        DataPipeline = ppFunction
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppFunction'
        mmHeight = 6519
        mmLeft = 170657
        mmTop = 31750
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground8
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer9
        UserName = 'Label45'
        Border.mmPadding = 0
        Caption = #1587#1575#1593#1575#1578' '#1603#1575#1585#1603#1585#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 185717
        mmTop = 32015
        mmWidth = 16425
        BandType = 4
        LayerName = Foreground8
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer9
        UserName = 'Line13'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Style = psDashDotDot
        ParentWidth = True
        Position = lpBottom
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 89429
        mmWidth = 203300
        BandType = 4
        LayerName = Foreground8
      end
      object ppSubReport5: TppSubReport
        DesignLayer = ppDesignLayer9
        UserName = 'SubReportFunction'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        PrintBehavior = pbFixed
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'ppFunction'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 48683
        mmWidth = 203300
        BandType = 4
        LayerName = Foreground8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport5: TppChildReport
          AutoStop = False
          DataPipeline = ppFunction
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'Letter'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '23.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppFunction'
          object ppDesignLayers8: TppDesignLayers
            object ppDesignLayer8: TppDesignLayer
              UserName = 'Foreground7'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object ppDesignLayers9: TppDesignLayers
      object ppDesignLayer9: TppDesignLayer
        UserName = 'Foreground8'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object ppWages: TppDBPipeline
    DataSource = srcWages
    OpenDataSource = False
    UserName = 'Wages'
    Left = 625
    Top = 227
    MasterDataPipelineName = 'ppPersonels'
  end
  object ppDecs: TppDBPipeline
    DataSource = srcDecs
    OpenDataSource = False
    UserName = 'Decs'
    Left = 633
    Top = 355
    MasterDataPipelineName = 'ppPersonels'
  end
  object qryWages2: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'FirstArchiveID'
        Size = -1
        Value = Null
      end
      item
        Name = 'LastArchiveID'
        Size = -1
        Value = Null
      end
      item
        Name = 'LabelIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'LabelIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'MonthNo'
        Size = -1
        Value = Null
      end
      item
        Name = 'c_PersonelNo'
        Size = -1
        Value = Null
      end
      item
        Name = 'SalaryID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT  RetardFixedCalculated.SalaryID, Pay.FormsInfo.InfoName_L' +
        '1,'
      '        SUM(RetardFixedCalculated.price) AS SumPrice'
      
        'FROM         Pay.RetardFixedCalculated( :FirstArchiveID , :LastA' +
        'rchiveID, DEFAULT  ,:LabelIDFrom  , :LabelIDTo ,:YearIDFrom ,:Ye' +
        'arIDTo ) RetardFixedCalculated LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo ON RetardFixedCalculated.Sal' +
        'aryID = Pay.FormsInfo.FormInfoID'
      'WHERE     (RetardFixedCalculated.Mounth = :MonthNo) AND'
      '          (RetardFixedCalculated.ShowListKind = 1) AND'
      '           (RetardFixedCalculated.PersonelNO = :c_PersonelNo)'
      'AND (RetardFixedCalculated.SalaryID  >:SalaryID)'
      
        'GROUP BY RetardFixedCalculated.SalaryID, Pay.FormsInfo.InfoName_' +
        'L1'
      'ORDER BY RetardFixedCalculated.SalaryID'
      ' '
      '')
    Left = 154
    Top = 155
    object IntegerField1: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldKind = fkCalculated
      FieldName = '_radif'
      Calculated = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'SalaryID'
    end
    object StringField1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1586#1575#1610#1575
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object BCDField1: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'SumPrice'
      currency = True
      Precision = 19
    end
  end
  object srcWages2: TDataSource
    DataSet = qryWages2
    Left = 218
    Top = 155
  end
  object ppWages2: TppDBPipeline
    DataSource = srcWages2
    OpenDataSource = False
    UserName = 'Wages2'
    Left = 625
    Top = 283
    MasterDataPipelineName = 'ppPersonels'
  end
  object ppFunction: TppDBPipeline
    DataSource = srcFunctions
    OpenDataSource = False
    UserName = 'Function'
    Left = 729
    Top = 267
    MasterDataPipelineName = 'ppPersonels'
    object ppFunctionppField1: TppField
      FieldAlias = 'FunctionDay'
      FieldName = 'FunctionDay'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppFunctionppField2: TppField
      FieldAlias = 'FunctionTime'
      FieldName = 'FunctionTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
  end
  object popTelegram: TPopupMenu
    Left = 361
    Top = 435
    object MenuItem3: TMenuItem
      Caption = 'PNG'
      object mnuTelegram: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'PNG'
        OnClick = mnuTelegramClick
      end
      object MenuItem4: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'PNG'
        OnClick = mnuTelegramClick
      end
    end
    object MenuItem6: TMenuItem
      Caption = 'JPEG'
      object MenuItem7: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'JPEG'
        OnClick = mnuTelegramClick
      end
      object MenuItem8: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'JPEG'
        OnClick = mnuTelegramClick
      end
    end
    object MenuItem9: TMenuItem
      Caption = 'PDF'
      object MenuItem10: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'PDF'
        OnClick = mnuTelegramClick
      end
      object MenuItem11: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'PDF'
        OnClick = mnuTelegramClick
      end
    end
    object MenuItem12: TMenuItem
      Caption = 'BMP'
      object MenuItem13: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'BMP'
        OnClick = mnuTelegramClick
      end
      object MenuItem14: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'BMP'
        OnClick = mnuTelegramClick
      end
    end
    object MenuItem15: TMenuItem
      Caption = 'GIF'
      object MenuItem16: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'GIF'
        OnClick = mnuTelegramClick
      end
      object MenuItem17: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'GIF'
        OnClick = mnuTelegramClick
      end
    end
    object MenuItem18: TMenuItem
      Caption = 'RTF'
      object MenuItem19: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'RTF'
        OnClick = mnuTelegramClick
      end
      object MenuItem20: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'RTF'
        OnClick = mnuTelegramClick
      end
    end
    object MenuItem21: TMenuItem
      Caption = 'DOC'
      object MenuItem22: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'DOC'
        OnClick = mnuTelegramClick
      end
      object MenuItem23: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'DOC'
        OnClick = mnuTelegramClick
      end
    end
    object MenuItem24: TMenuItem
      Caption = 'TextFile'
      object MenuItem25: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'TextFile'
        OnClick = mnuTelegramClick
      end
      object MenuItem26: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'TextFile'
        OnClick = mnuTelegramClick
      end
    end
  end
  object popSendToServer: TPopupMenu
    Left = 201
    Top = 347
    object PNG2: TMenuItem
      Caption = 'PNG'
      object MenuItem50: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'PNG'
        OnClick = mnuSendToFileServerClick
      end
      object MenuItem51: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'PNG'
        OnClick = mnuSendToFileServerClick
      end
    end
    object PNG3: TMenuItem
      Caption = 'PDF'
      object N28: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'PDF'
        OnClick = mnuSendToFileServerClick
      end
      object N24: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'PDF'
        OnClick = mnuSendToFileServerClick
      end
    end
  end
end
