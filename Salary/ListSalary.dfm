inherited ListSalaryF: TListSalaryF
  Left = 408
  Top = 136
  Caption = #1601#1740#1588' '#1581#1602#1608#1602' '#1662#1585#1587#1606#1604
  ClientHeight = 643
  ClientWidth = 1010
  OnResize = FormResize
  ExplicitWidth = 1018
  ExplicitHeight = 674
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 602
    Width = 1010
    ExplicitTop = 602
    ExplicitWidth = 1010
    inherited BtnReject: TBitBtn
      Left = 2
      Margins.Left = 1
      Margins.Right = 1
      TabOrder = 3
      ExplicitLeft = 2
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 933
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 156
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 1
    end
    object btnPrint: TBitBtn
      AlignWithMargins = True
      Left = 702
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662' '
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 856
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actShowFunctionItemsF
      Align = alRight
      Caption = #1603#1575#1585#1603#1585#1583
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 79
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 5
    end
    object btnOtherMenu: TBitBtn
      AlignWithMargins = True
      Left = 233
      Top = 7
      Width = 25
      Height = 27
      Hint = #1587#1575#1610#1585' '#1575#1605#1603#1575#1606#1575#1578
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alLeft
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
      OnClick = btnOtherMenuClick
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 779
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actEmail
      Align = alRight
      Caption = 'Email OutLook'
      TabOrder = 7
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 552
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actPdf
      Align = alRight
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' ...'
      TabOrder = 8
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 451
      Top = 7
      Width = 99
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actTelegram
      Align = alRight
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Telegram'
      TabOrder = 9
    end
    object BitBtn8: TBitBtn
      AlignWithMargins = True
      Left = 350
      Top = 7
      Width = 99
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSendServer
      Align = alRight
      Caption = 'Send PNG File'
      TabOrder = 10
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 249
      Top = 7
      Width = 99
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actsSendEmailDirect
      Align = alRight
      Caption = 'Send Email Direct'
      TabOrder = 11
    end
    object BitBtn10: TBitBtn
      AlignWithMargins = True
      Left = 629
      Top = 7
      Width = 71
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actBale
      Align = alRight
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1576#1604#1607
      TabOrder = 12
    end
  end
  inherited Panel2: TPanel
    Width = 1010
    OnClick = Panel2Click
    ExplicitWidth = 1010
    DesignSize = (
      1010
      53)
    inherited ImgTemplate: TImage
      Left = 964
      ExplicitLeft = 739
    end
    inherited lblCaption: TLabel
      Left = 847
      Width = 117
      Caption = #1601#1610#1588' '#1581#1602#1608#1602' '#1662#1585#1587#1606#1604
      ExplicitLeft = 847
      ExplicitWidth = 117
    end
    inherited lblBaseDate: TLabel
      Left = 340
      ExplicitLeft = 342
    end
  end
  inherited Panel3: TPanel
    Width = 1010
    Height = 549
    ExplicitWidth = 1010
    ExplicitHeight = 549
    object pnlPersonel: TPanel
      Left = 623
      Top = 35
      Width = 385
      Height = 493
      Align = alRight
      BevelOuter = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 383
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = #1604#1610#1587#1578' '#1662#1585#1587#1606#1604
        Color = 12582911
        ParentColor = False
        Transparent = True
        Layout = tlCenter
        ExplicitWidth = 63
      end
      object Panel6: TPanel
        Left = 1
        Top = 471
        Width = 383
        Height = 21
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object LblEndDateC: TLabel
          AlignWithMargins = True
          Left = 69
          Top = 3
          Width = 59
          Height = 15
          Align = alClient
          Alignment = taRightJustify
          Caption = #1662#1575#1610#1575#1606' '#1602#1585#1575#1585#1583#1575#1583
          ExplicitWidth = 52
          ExplicitHeight = 13
        end
        object LblEndDate: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 60
          Height = 15
          Cursor = crHandPoint
          Align = alLeft
          AutoSize = False
          Caption = '                '
          Color = 5151488
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          OnClick = LblEndDateClick
          ExplicitLeft = 5
          ExplicitTop = 5
          ExplicitHeight = 21
        end
        object ChkEndDate: TCheckBox
          Left = 131
          Top = 0
          Width = 252
          Height = 21
          Align = alRight
          Caption = #1662#1585#1587#1606#1604#8207#1607#1575#1610#8207#1603#1607#8207#1602#1585#1575#1585#1583#1575#1583#1588#1575#1606#8207#1662#1575#1610#1575#1606' '#1585#1587#1610#1583#1607#1548#1606#1605#1575#1610#1588#8207#1606#1588#1608#1606#1583'.'#8207
          TabOrder = 0
          OnClick = ChkEndDateClick
        end
      end
      object Panel11: TPanel
        Left = 1
        Top = 450
        Width = 383
        Height = 21
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object lblColor2: TLabel
          Tag = 2
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 60
          Height = 15
          Cursor = crHandPoint
          Hint = #1576#1585#1575#1610' '#1605#1588#1575#1607#1583#1607' '#1662#1585#1587#1606#1604' '#1576#1583#1608#1606' '#1603#1575#1585#1603#1585#1583' Double click '#1603#1606#1610#1583'.'
          Align = alLeft
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
          ExplicitLeft = 275
          ExplicitHeight = 25
        end
        object lblNotHasFunction: TLabel
          AlignWithMargins = True
          Left = 69
          Top = 3
          Width = 51
          Height = 15
          Align = alLeft
          Alignment = taRightJustify
          Caption = #1603#1575#1585#1603#1585#1583' '#1606#1583#1575#1585#1583
          ExplicitHeight = 13
        end
        object ChkHasFunction: TCheckBox
          Left = 186
          Top = 0
          Width = 197
          Height = 21
          Align = alRight
          Caption = #1662#1585#1587#1606#1604' '#1607#1575#1610' '#1576#1583#1608#1606' '#1603#1575#1585#1603#1585#1583' '#1606#1605#1575#1610#1588' '#1606#1588#1608#1606#1583'.'#8207
          TabOrder = 0
          OnClick = ChkHasFunctionClick
        end
      end
      object Panel1: TPanel
        Left = 1
        Top = 429
        Width = 383
        Height = 21
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 3
        object lblColor1: TLabel
          Tag = 1
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 60
          Height = 15
          Cursor = crHandPoint
          Hint = #1576#1585#1575#1610' '#1605#1588#1575#1607#1583#1607' '#1662#1585#1587#1606#1575#1604' '#1576#1575' '#1603#1575#1585#1603#1585#1583' Double click '#1603#1606#1610#1583'.'
          Align = alLeft
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
          ExplicitLeft = 278
          ExplicitTop = 5
          ExplicitHeight = 21
        end
        object lblHasFunction: TLabel
          AlignWithMargins = True
          Left = 69
          Top = 3
          Width = 311
          Height = 15
          Align = alClient
          Alignment = taRightJustify
          Caption = #1603#1575#1585#1603#1585#1583' '#1583#1575#1585#1583
          ExplicitWidth = 47
          ExplicitHeight = 13
        end
      end
      object DBGrid1: TCedarDbgrid
        Left = 1
        Top = 14
        Width = 383
        Height = 415
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
        HorzScrollBar.ExtraPanel.Visible = True
        IndicatorOptions = []
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        OddRowColor = clGradientInactiveCaption
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentShowHint = False
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
            Title.TitleButton = True
            Width = 73
          end
          item
            CellButtons = <>
            Color = 15461355
            DynProps = <>
            EditButtons = <>
            FieldName = 'Personel_L1'
            Footers = <>
            Title.TitleButton = True
            Width = 61
          end
          item
            CellButtons = <>
            Color = 15461355
            DynProps = <>
            EditButtons = <>
            FieldName = 'Personel_L2'
            Footers = <>
            Title.TitleButton = True
            Width = 48
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Email'
            Footers = <>
            Title.TitleButton = True
            Width = 53
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TelegramChatID'
            Footers = <>
            Title.TitleButton = True
            Width = 92
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BaleChatID'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Month_Name'
            Footers = <>
            Width = 32
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'WageDayw'
            Footers = <>
            Width = 60
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object StatusBar1: TStatusBar
      Left = 2
      Top = 528
      Width = 1006
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
      Top = 35
      Width = 621
      Height = 493
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object pnlFun: TPanel
        Left = 293
        Top = 0
        Width = 328
        Height = 406
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object rdgrpEmail: TRadioGroup
          Left = 0
          Top = 344
          Width = 328
          Height = 62
          Align = alBottom
          Caption = #1601#1610#1604#1578#1585' '#1576#1585' '#1581#1587#1576' '#1575#1610#1605#1610#1604'/'#1578#1604#1711#1585#1575#1605'/'#1576#1604#1607' '#1662#1585#1587#1606#1604
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            #1607#1600#1600#1600#1600#1600#1605#1600#1600#1600#1600#1600#1607' '
            #1583#1575#1585#1575#1610' '#1575#1610#1605#1610#1604
            #1576#1583#1608#1606' '#1575#1610#1605#1610#1604
            #1583#1575#1585#1575#1610' '#1578#1604#1711#1585#1575#1605
            #1583#1575#1585#1575#1740' '#1576#1604#1607)
          TabOrder = 1
          OnClick = rdgrpEmailClick
        end
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 328
          Height = 29
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Label11: TLabel
            AlignWithMargins = True
            Left = 283
            Top = 3
            Width = 42
            Height = 23
            Align = alRight
            Caption = #1603#1575#1585#1603#1600#1600#1600#1585#1583
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnDblClick = actShowFunctionItemsFExecute
            ExplicitHeight = 13
          end
          object Label2: TLabel
            AlignWithMargins = True
            Left = 210
            Top = 3
            Width = 13
            Height = 23
            Margins.Left = 1
            Margins.Right = 1
            Align = alRight
            Alignment = taRightJustify
            Caption = #1585#1608#1586
            OnDblClick = actShowFunctionItemsFExecute
            ExplicitHeight = 13
          end
          object Label6: TLabel
            AlignWithMargins = True
            Left = 121
            Top = 3
            Width = 31
            Height = 23
            Margins.Left = 1
            Margins.Right = 1
            Align = alRight
            Alignment = taRightJustify
            Caption = #1587#1575#1593#1578
            FocusControl = edtFunctionTime
            OnDblClick = actShowFunctionItemsFExecute
            ExplicitHeight = 13
          end
          object Label3: TLabel
            AlignWithMargins = True
            Left = 74
            Top = 3
            Width = 35
            Height = 23
            Align = alLeft
            Caption = #1576#1740#1605#1575#1585#1740
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnDblClick = actShowFunctionItemsFExecute
            ExplicitHeight = 13
          end
          object Label4: TLabel
            AlignWithMargins = True
            Left = 1
            Top = 3
            Width = 13
            Height = 23
            Margins.Left = 1
            Margins.Right = 1
            Align = alLeft
            Alignment = taRightJustify
            Caption = #1585#1608#1586
            OnDblClick = actShowFunctionItemsFExecute
            ExplicitHeight = 13
          end
          object edtFunctionDay: TDBEdit
            AlignWithMargins = True
            Left = 227
            Top = 3
            Width = 50
            Height = 23
            TabStop = False
            Align = alRight
            Color = 15329769
            Ctl3D = False
            DataField = 'FunctionDay'
            DataSource = srcFunctions
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            OnDblClick = actShowFunctionItemsFExecute
            ExplicitHeight = 19
          end
          object edtFunctionTime: TDBEdit
            AlignWithMargins = True
            Left = 156
            Top = 3
            Width = 50
            Height = 23
            TabStop = False
            Align = alRight
            Color = 15329769
            Ctl3D = False
            DataField = 'FunctionTime'
            DataSource = srcFunctions
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
            OnDblClick = actShowFunctionItemsFExecute
            ExplicitHeight = 19
          end
          object DBEdit2: TDBEdit
            AlignWithMargins = True
            Left = 18
            Top = 3
            Width = 50
            Height = 23
            TabStop = False
            Align = alLeft
            Color = 15329769
            Ctl3D = False
            DataField = 'SickDay'
            DataSource = srcFunctions
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
            OnDblClick = actShowFunctionItemsFExecute
            ExplicitHeight = 19
          end
        end
        object Memo1: TMemo
          Left = 0
          Top = 190
          Width = 328
          Height = 154
          Align = alBottom
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = clInactiveCaption
          Lines.Strings = (
            'Memo1')
          TabOrder = 3
          Visible = False
        end
        object DBGrid5: TCedarDbgrid
          Left = 0
          Top = 29
          Width = 328
          Height = 161
          Align = alClient
          Color = clCream
          DataSource = srcFunctionsItem
          DynProps = <>
          Flat = True
          FooterParams.FillStyle = cfstSolidEh
          FooterParams.Font.Charset = DEFAULT_CHARSET
          FooterParams.Font.Color = clWindowText
          FooterParams.Font.Height = -12
          FooterParams.Font.Name = 'Segoe UI'
          FooterParams.Font.Style = [fsBold]
          FooterParams.ParentFont = False
          FooterParams.VertLines = False
          GridLineParams.VertEmptySpaceStyle = dessNonEh
          HorzScrollBar.ExtraPanel.Visible = True
          IndicatorTitle.ShowDropDownSign = True
          IndicatorTitle.TitleButton = True
          OddRowColor = clWhite
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          RowHeight = 18
          SearchPanel.Enabled = True
          ShowHint = True
          SortLocal = True
          TabOrder = 0
          ActiveSearchPanel = False
          SelectFooterIndex = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'InfoName_L1'
              Footers = <>
              Width = 67
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'InfoName_L2'
              Footers = <>
              Width = 62
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'FDaily'
              Footers = <>
              Width = 38
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'FHours'
              Footers = <>
              Width = 42
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'FHoursT'
              Footers = <>
              Width = 47
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 293
        Height = 406
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 1
        object Label12: TLabel
          Left = 1
          Top = 1
          Width = 291
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = #1605#1586#1575#1610#1600#1600#1600#1575
          Color = 14155735
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          ExplicitWidth = 34
        end
        object Label14: TLabel
          Left = 1
          Top = 223
          Width = 291
          Height = 13
          Align = alBottom
          Alignment = taCenter
          Caption = #1603#1587#1600#1600#1600#1608#1585#1575#1578
          Color = 14024703
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          ExplicitWidth = 53
        end
        object Splitter1: TSplitter
          Left = 1
          Top = 236
          Width = 291
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          ExplicitLeft = -34
          ExplicitTop = 248
          ExplicitWidth = 253
        end
        object Panel8: TPanel
          Left = 1
          Top = 196
          Width = 291
          Height = 27
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            291
            27)
          object Label13: TLabel
            Left = 128
            Top = 8
            Width = 90
            Height = 13
            Alignment = taRightJustify
            Anchors = [akLeft, akBottom]
            Caption = #1580#1605#1593' '#1603#1604' '#1581#1602#1608#1602' '#1605#1586#1575#1610#1575
          end
          object SpeedButton1: TSpeedButton
            Left = 252
            Top = 2
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = 'Xls'
            OnClick = SpeedButton1Click
            ExplicitLeft = 226
          end
          object txtTotalWage: TEdit
            Left = 4
            Top = 4
            Width = 121
            Height = 21
            TabStop = False
            Anchors = [akLeft, akBottom]
            Color = 14155735
            ReadOnly = True
            TabOrder = 0
          end
        end
        object DBGrid2: TCedarDbgrid
          Left = 1
          Top = 14
          Width = 291
          Height = 182
          Align = alClient
          Color = clCream
          DataSource = srcWages
          DynProps = <>
          Flat = True
          FooterParams.FillStyle = cfstSolidEh
          FooterParams.Font.Charset = DEFAULT_CHARSET
          FooterParams.Font.Color = clWindowText
          FooterParams.Font.Height = -12
          FooterParams.Font.Name = 'Segoe UI'
          FooterParams.Font.Style = [fsBold]
          FooterParams.ParentFont = False
          FooterParams.VertLines = False
          GridLineParams.VertEmptySpaceStyle = dessNonEh
          HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
          HorzScrollBar.ExtraPanel.Visible = True
          IndicatorOptions = []
          IndicatorTitle.ShowDropDownSign = True
          IndicatorTitle.TitleButton = True
          OddRowColor = clWhite
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          ReadOnly = True
          RowHeight = 18
          SearchPanel.Enabled = True
          ShowHint = True
          SortLocal = True
          TabOrder = 0
          ActiveSearchPanel = False
          SelectFooterIndex = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_radif'
              Footers = <>
              Width = 31
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'InfoName_L1'
              Footers = <>
              Width = 119
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SumPrice'
              Footers = <>
              Width = 112
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object DBGrid3: TCedarDbgrid
          Left = 1
          Top = 239
          Width = 291
          Height = 166
          Align = alBottom
          Color = clCream
          DataSource = srcDecs
          DynProps = <>
          Flat = True
          FooterParams.FillStyle = cfstSolidEh
          FooterParams.Font.Charset = DEFAULT_CHARSET
          FooterParams.Font.Color = clWindowText
          FooterParams.Font.Height = -12
          FooterParams.Font.Name = 'Segoe UI'
          FooterParams.Font.Style = [fsBold]
          FooterParams.ParentFont = False
          FooterParams.VertLines = False
          GridLineParams.VertEmptySpaceStyle = dessNonEh
          HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
          HorzScrollBar.ExtraPanel.Visible = True
          IndicatorOptions = []
          IndicatorTitle.ShowDropDownSign = True
          IndicatorTitle.TitleButton = True
          OddRowColor = clWhite
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          ReadOnly = True
          RowHeight = 18
          SearchPanel.Enabled = True
          ShowHint = True
          SortLocal = True
          TabOrder = 2
          ActiveSearchPanel = False
          SelectFooterIndex = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = '_radif'
              Footers = <>
              Width = 32
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'InfoName_L1'
              Footers = <>
              Width = 83
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'SumPrice'
              Footers = <>
              Width = 79
            end
            item
              CellButtons = <>
              Color = clMoneyGreen
              DynProps = <>
              EditButtons = <>
              FieldName = '_LoanRemainFormat'
              Footers = <>
              Width = 82
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 406
        Width = 621
        Height = 30
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        DesignSize = (
          621
          30)
        object Label15: TLabel
          Left = 131
          Top = 6
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          Caption = #1580#1605#1593' '#1603#1587#1608#1585#1575#1578
        end
        object Label16: TLabel
          Left = 522
          Top = 6
          Width = 80
          Height = 13
          Alignment = taRightJustify
          Anchors = [akRight, akBottom]
          Caption = #1582#1575#1604#1589' '#1662#1585#1583#1575#1582#1578#1610
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 399
        end
        object txtTotalDecs: TEdit
          Left = 4
          Top = 2
          Width = 121
          Height = 21
          TabStop = False
          Anchors = [akLeft, akBottom]
          Color = 14024703
          ReadOnly = True
          TabOrder = 0
        end
        object EdtPayable: TEdit
          Left = 379
          Top = 2
          Width = 137
          Height = 21
          TabStop = False
          Anchors = [akRight, akBottom]
          Color = 14155735
          ReadOnly = True
          TabOrder = 1
        end
      end
      object DBGrid6: TCedarDbgrid
        Left = 0
        Top = 436
        Width = 621
        Height = 57
        Align = alBottom
        Color = clCream
        DataSource = srcItemsSum
        DynProps = <>
        Flat = True
        FooterParams.FillStyle = cfstSolidEh
        FooterParams.Font.Charset = DEFAULT_CHARSET
        FooterParams.Font.Color = clWindowText
        FooterParams.Font.Height = -12
        FooterParams.Font.Name = 'Segoe UI'
        FooterParams.Font.Style = [fsBold]
        FooterParams.ParentFont = False
        FooterParams.VertLines = False
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        HorzScrollBar.ExtraPanel.Visible = True
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        OddRowColor = clWhite
        RowHeight = 18
        SearchPanel.Enabled = True
        SearchPanel.FilterEnabled = False
        SearchPanel.PersistentShowing = False
        SortLocal = True
        TabOrder = 3
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Amount1'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Amount2'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AmountSum'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AmountIn30'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AmountSumAnd30'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Amount1_Day'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object Panel5: TPanel
      Left = 2
      Top = 2
      Width = 1006
      Height = 33
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 923
        Height = 33
        Align = alClient
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
      object chkAllMounth: TCheckBox
        AlignWithMargins = True
        Left = 926
        Top = 3
        Width = 77
        Height = 27
        Align = alRight
        Caption = #1607#1605#1607' '#1605#1575#1607#1607#1575
        TabOrder = 1
        OnClick = chkAllMounthClick
      end
    end
  end
  object CmbArchiveID: TComboBox [3]
    Left = 16
    Top = 8
    Width = 126
    Height = 21
    Color = 13431799
    TabOrder = 3
    Text = 'CmbArchiveID'
    OnChange = CmbArchiveIDChange
  end
  inherited ActionList: TActionList
    Left = 264
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      Hint = ' '
      OnExecute = actFilterExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' '
      Hint = ' '
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actShowFunctionItemsF: TAction
      Caption = #1603#1575#1585#1603#1585#1583
      OnExecute = actShowFunctionItemsFExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object ActShowInterdict: TAction
      Caption = ' '#1581#1603#1605' '#1603#1575#1585#1711#1586#1610#1606#1610' '
      OnExecute = ActShowInterdictExecute
    end
    object ActPersonelInfoF: TAction
      Caption = #1605#1593#1585#1601#1610' '#1662#1585#1587#1606#1604
      OnExecute = ActPersonelInfoFExecute
    end
    object actEmail: TAction
      Caption = 'Email OutLook'
      OnExecute = actEmailExecute
    end
    object actPdf: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' pdf,Telegram'
      OnExecute = actPdfExecute
    end
    object actTelegram: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Telegram'
      OnExecute = actTelegramExecute
    end
    object actSendServer: TAction
      Caption = 'Send PNG File'
      OnExecute = actSendServerExecute
    end
    object actsSendEmailDirect: TAction
      Caption = 'Send Email Direct'
      OnExecute = actsSendEmailDirectExecute
    end
    object actBale: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1576#1604#1607
      OnExecute = actBaleExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 344
    Bitmap = {
      494C010102000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031000000420000005200000052000000420000003100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000042
      000000420000007B0800009C0800009C0800009C0800009C0800007B0800004A
      0000004A00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004A08000063
      080000A5100000A50800009C0800009C0800009C0800009C080000A5080000A5
      0800006B08000031000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004A0800006B100008A5
      210008A51800009C0800009C0800009C0800009C0800009C0800009C0800009C
      080000A50800006B0800004A0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004A080010AD310008AD
      290008A5180000A510004AC65200E7F7EF00D6F7DE0010AD2100009C0800009C
      0800009C080000A50800004A0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000005200000884210010B5420010A5
      3100089C180042BD4A00F7FFF700FFFFFF0084D68C0000A51000009C0800009C
      0800009C080000A50800007B0800004200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B84C6000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5006B84C600000000000052000010A5420018B54A0010AD
      310042BD4A00F7FFF700FFFFFF0073D67B00009C0800009C0800009C0800009C
      0800009C080000A5080000940800004200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000021A5009494F7000029
      E7000029E7000029E7000029E7000029E7000029E7000029E7000029E7000029
      E7000029E7000029E7000021A50000000000006B100021B5520021B5520073D6
      9400EFFFEF00FFFFFF00F7FFF700B5EFC600B5E7BD00ADE7B500ADE7B500ADE7
      B500ADE7B500009C0800009C0800004A00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000021A500B5C6FF009CBD
      FF009CBDFF009CB5FF009CB5FF009CB5FF00638CF700638CF700638CF700638C
      F700526BF700526BF7000021A500000000000873100039BD6B0029BD5A00BDEF
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00009C0800009C0800005200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B84C6000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5006B84C600000000000873100052C67B0042C6730029BD
      5A00A5E7BD00FFFFFF00F7FFF70084DEA50042BD5A0042BD5A0042BD5A0042BD
      5A0042BD5A0008A51800009C0800004200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087310004ABD6B0084DEA50021B5
      520021B5520094DEB500FFFFFF00E7F7EF0052C6730010AD310010AD310010AD
      310008A5290008A51800008C0800004200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A53100ADE7C6006BCE
      8C0010AD4A0018B54A008CDEAD00FFFFFF00F7FFF70029BD520010A5310008A5
      290008A5210008AD1800006B0800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A5310052C67300BDEF
      D60063CE8C0021B5520018B5520094DEB500ADE7C60021B5520010AD390010AD
      310010AD3100109C2100006B0800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000109C21006BCE
      8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD630031BD630021BD
      4A0010A531000063080000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004ABD
      63004ABD630094DEB500BDEFD600A5E7C6008CDEAD007BDE9C004AC67B00189C
      3900189C39000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021A5310039B5520042BD630042BD630029A54A00108C29000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFF81F00000000FFFFE00700000000
      FFFFC00300000000FFFF800100000000FFFF800100000000FFFF000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      FFFF000000000000FFFF800100000000FFFF800100000000FFFFC00300000000
      FFFFE00700000000FFFFF81F0000000000000000000000000000000000000000
      000000000000}
  end
  object srcPersonels: TDataSource
    DataSet = qryPersonels
    Left = 632
    Top = 93
  end
  object qryFunctionsItem: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryFunctionsItemAfterScroll
    DataSource = srcPersonels
    Parameters = <
      item
        Name = 'MonthNo'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end
      item
        Name = 'PersonelNo'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearIDFROM'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'Mounth'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'InfoIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'InfoIDTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelNo2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'OffTimeInFish'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT     FunctionsItems.SalaryID, FormsInfo.InfoName_L1, Forms' +
        'Info.InfoName_L2, SUM(FunctionsItems.FDaily) AS FDaily'
      ''
      ',   ROUND( SUM(FunctionsItems.FHours),2) AS FHours'
      ','#39' '#39' AS  RemainDayDec'
      
        ',CASE WHEN SUM(FunctionsItems.FHours)=0 THEN '#39#39' ELSE LTRIM(STR(F' +
        'LOOR(SUM(FunctionsItems.FHours)))) + '#39':'#39' + LTRIM(STR(ROUND(ROUND' +
        '(SUM(FunctionsItems.FHours) '
      
        '                         - FLOOR(SUM(FunctionsItems.FHours)), 2)' +
        ' / 100 * 60, 2) * 100)) END AS FHoursT'
      '                         ,SUM(FunctionsItems.FDaily) AS FDaily2'
      ''
      ''
      'FROM Pay.Functions INNER JOIN'
      
        '                      Pay.FunctionsItems ON Functions.FunctionID' +
        ' = FunctionsItems.FunctionID INNER JOIN'
      
        '                      Pay.FormsInfo ON FunctionsItems.SalaryID =' +
        ' FormsInfo.FormInfoID'
      
        'WHERE     (Functions.Mounth = :MonthNo) AND (Functions.PersonelN' +
        'o = :PersonelNo)  AND  (YearID = :YearID )'
      
        'GROUP BY FunctionsItems.SalaryID, FormsInfo.InfoName_L1, FormsIn' +
        'fo.InfoName_L2'
      'HAVING      (ROUND(SUM(FunctionsItems.FDaily),0) > 0) OR'
      '                      (SUM(FunctionsItems.FHours) > 0)'
      ''
      'UNION ALL'
      ''
      'SELECT *, RemainDayDec AS FHoursT  , 0 AS FDaily2'
      'FROM ('
      
        'SELECT  SalaryID, InfoName_L1, InfoName_L2, ROUND(RemainDay,2) A' +
        'S RemainDay, 0.0 AS FHours, Pay.RemainDayDec(RemainDay) AS Remai' +
        'nDayDec'
      ''
      ''
      
        '  FROM Pay.GETOffTimeInFish( :YearIDFROM , :YearIDTo ,  :Mounth,' +
        ' :InfoIDFrom, :InfoIDTo, :PersonelNo2  , :OffTimeInFish )'
      ' WHERE(SELECT OffTimeInFish from Pay.config)>0'
      ''
      ')aaaa')
    Left = 344
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
      DisplayLabel = #1593#1606#1608#1575#1606' '#1603#1575#1585#1603#1585#1583
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
    object qryFunctionsItemRemainDayDec: TStringField
      FieldName = 'RemainDayDec'
      ReadOnly = True
      Size = 100
    end
    object qryFunctionsItemFHoursT: TStringField
      DisplayLabel = #1587#1575#1593#1578
      FieldName = 'FHoursT'
      ReadOnly = True
      Size = 21
    end
    object qryFunctionsItemFDaily2: TFloatField
      FieldName = 'FDaily2'
      ReadOnly = True
    end
  end
  object srcFunctionsItem: TDataSource
    DataSet = qryFunctionsItem
    Left = 296
    Top = 219
  end
  object srcWages: TDataSource
    DataSet = qryWages
    Left = 69
    Top = 166
  end
  object srcDecs: TDataSource
    DataSet = qryDecs
    Left = 79
    Top = 319
  end
  object ppPersonels: TppDBPipeline
    DataSource = srcPersonels
    OpenDataSource = False
    UserName = 'Personels'
    Left = 705
    Top = 203
    object ppPersonelsppField1: TppField
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField2: TppField
      FieldAlias = 'Personel_L1'
      FieldName = 'Personel_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField3: TppField
      FieldAlias = 'Personel_L2'
      FieldName = 'Personel_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField4: TppField
      FieldAlias = 'InfoID'
      FieldName = 'InfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField5: TppField
      FieldAlias = 'StateName'
      FieldName = 'StateName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField6: TppField
      FieldAlias = 'jobCode'
      FieldName = 'jobCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField7: TppField
      FieldAlias = 'HasFunction'
      FieldName = 'HasFunction'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField8: TppField
      FieldAlias = 'OfficeCode'
      FieldName = 'OfficeCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField9: TppField
      FieldAlias = 'AccountNumber'
      FieldName = 'AccountNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField10: TppField
      FieldAlias = 'InsuranceNumber'
      FieldName = 'InsuranceNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField11: TppField
      FieldAlias = 'OfficeName_l1'
      FieldName = 'OfficeName_l1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField12: TppField
      FieldAlias = 'fatherName_L1'
      FieldName = 'fatherName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField13: TppField
      FieldAlias = 'OfficeName_l2'
      FieldName = 'OfficeName_l2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField14: TppField
      FieldAlias = 'OfficeCodeID'
      FieldName = 'OfficeCodeID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField15: TppField
      FieldAlias = 'EmployTypeName'
      FieldName = 'EmployTypeName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField16: TppField
      FieldAlias = 'MarriageName'
      FieldName = 'MarriageName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField17: TppField
      FieldAlias = 'childNumber'
      FieldName = 'childNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField18: TppField
      FieldAlias = 'CreditCardNo'
      FieldName = 'CreditCardNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField19: TppField
      FieldAlias = 'InterdictItems2Amount'
      FieldName = 'InterdictItems2Amount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField20: TppField
      FieldAlias = 'InterdicEndDate'
      FieldName = 'InterdicEndDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField21: TppField
      FieldAlias = 'SpecialStateName'
      FieldName = 'SpecialStateName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField22: TppField
      FieldAlias = 'Personelgrade'
      FieldName = 'Personelgrade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField23: TppField
      FieldAlias = 'InterdictID'
      FieldName = 'InterdictID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField24: TppField
      FieldAlias = 'JobID'
      FieldName = 'JobID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField25: TppField
      FieldAlias = 'jobName'
      FieldName = 'jobName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField26: TppField
      FieldAlias = 'ProjectName'
      FieldName = 'ProjectName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField27: TppField
      FieldAlias = 'NationalID'
      FieldName = 'NationalID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField28: TppField
      FieldAlias = 'IDNumber'
      FieldName = 'IDNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField29: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField30: TppField
      FieldAlias = 'WageDay'
      FieldName = 'WageDay'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField31: TppField
      FieldAlias = 'AmountInw'
      FieldName = 'AmountInw'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField32: TppField
      FieldAlias = 'WageDayw'
      FieldName = 'WageDayw'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField33: TppField
      FieldAlias = 'TelegramChatID'
      FieldName = 'TelegramChatID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField34: TppField
      FieldAlias = 'MonthID'
      FieldName = 'MonthID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField35: TppField
      FieldAlias = 'Month_Name'
      FieldName = 'Month_Name'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField36: TppField
      FieldAlias = 'ArchiveID'
      FieldName = 'ArchiveID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField37: TppField
      FieldAlias = 'DSW_JOB'
      FieldName = 'DSW_JOB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField38: TppField
      FieldAlias = 'GroupName'
      FieldName = 'GroupName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField39: TppField
      FieldAlias = 'BankName'
      FieldName = 'BankName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField40: TppField
      FieldAlias = 'jobCityName'
      FieldName = 'jobCityName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
  end
  object ppFunctionItem: TppDBPipeline
    DataSource = srcFunctionsItem
    OpenDataSource = False
    UserName = 'FunctionItem'
    Left = 849
    Top = 235
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
    LockType = ltBatchOptimistic
    AfterOpen = qryWagesAfterOpen
    AfterScroll = qryWagesAfterScroll
    OnCalcFields = qryWagesCalcFields
    Parameters = <
      item
        Name = 'c_PersonelNo2'
        Size = -1
        Value = Null
      end
      item
        Name = 'MonthNo2'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearID2'
        Size = -1
        Value = Null
      end
      item
        Name = 'c_PersonelNo3'
        Size = -1
        Value = Null
      end
      item
        Name = 'MonthNo3'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearID3'
        Size = -1
        Value = Null
      end
      item
        Name = 'c_PersonelNo4'
        Size = -1
        Value = Null
      end
      item
        Name = 'MonthNo4'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearID4'
        Size = -1
        Value = Null
      end
      item
        Name = 'MonthNo1'
        Size = -1
        Value = Null
      end
      item
        Name = 'c_PersonelNo1'
        Size = -1
        Value = Null
      end
      item
        Name = 'ArchiveID'
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
        Name = 'YearID'
        Size = -1
        Value = Null
      end
      item
        Name = 'Years'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT  (select top 1 FormInfoID FROM Pay.FormsInfo where formty' +
        'pe = 47 and infoid = 1 ) as SalaryID ,'
      
        #9#9'(select top 1 InfoName_L1 FROM Pay.FormsInfo where formtype = ' +
        '47 and infoid = 1 )  as InfoName_L1,'
      #9#9'EmployeeAmount as SumPrice ,'
      
        #9#9'(select top 1 InfoName_L1 FROM Pay.FormsInfo where formtype = ' +
        '47 and infoid = 1 ) as  InfoName_L2,'
      #9#9'0 as calculatekind'#9',0 as SalaryIDMounthRetard'
      'FROM Pay.PersonelDecExt'
      
        'WHERE'#9'(FormInfoID = (select top 1 FormInfoID FROM Pay.FormsInfo ' +
        'where formtype = 59) ) And'
      #9#9'(PersonelNo = :c_PersonelNo2 )  And'
      #9#9'abs(Substring (enddate,6,2)) = :MonthNo2'
      '    AND (YearID = :YearID2  )'
      ''
      ''
      'union all'
      
        'SELECT  (select top 1 FormInfoID FROM Pay.FormsInfo where formty' +
        'pe = 47 and infoid = 2 ) as SalaryID ,'
      
        #9#9'(select top 1 InfoName_L1 FROM Pay.FormsInfo where formtype = ' +
        '47 and infoid = 2 )  as InfoName_L1,'
      #9#9'EmployerAmount as SumPrice ,'
      
        #9#9'(select top 1 InfoName_L1 FROM Pay.FormsInfo where formtype = ' +
        '47 and infoid = 2 ) as  InfoName_L2,'
      #9#9'0 as calculatekind'#9',0 as SalaryIDMounthRetard'
      'FROM Pay.PersonelDecExt'
      
        'WHERE'#9'(FormInfoID = (select top 1 FormInfoID FROM Pay.FormsInfo ' +
        'where formtype = 59) ) And'
      #9#9'(PersonelNo = :c_PersonelNo3 )  And'
      #9#9'abs(Substring (enddate,6,2)) = :MonthNo3'
      '    AND (YearID = :YearID3  )'
      ''
      'UNION ALL'
      ''
      
        'SELECT        PersonelDecExt.FormInfoID AS SalaryID, FormsInfo.I' +
        'nfoName_L1'
      
        ', SUM(PersonelDecExt.EmployeeAmount) AS SumPrice, FormsInfo.Info' +
        'Name_L2, 0 AS calculatekind'
      ', 0 AS SalaryIDMounthRetard'
      'FROM Pay.PersonelDecExt INNER JOIN'
      
        '                         Pay.FormsInfo ON PersonelDecExt.FormInf' +
        'oID = FormsInfo.FormInfoID'
      ''
      #9#9#9#9#9#9' cross join pay.Config C'
      'WHERE   c.ActRewardInlistSalary in (1,2) AND'
      '        (FormsInfo.FormType = 111)'
      'AND (PersonelDecExt.PersonelNo = :c_PersonelNo4)'
      'AND (PersonelDecExt.FirstMounth = :MonthNo4)'
      'AND (PersonelDecExt.YearID = :YearID4  )'
      
        'GROUP BY PersonelDecExt.FormInfoID, FormsInfo.InfoName_L1, Forms' +
        'Info.InfoName_L2'
      ''
      ''
      'union all'
      ''
      ''
      
        'SELECT     Pay.FixedCalculated.SalaryID, FormsInfo.InfoName_L1 +' +
        ' CASE WHEN Mounth <> isnull(MounthRetard,0)'
      
        'THEN  isnull('#39'('#39' + '#39#1605#1593#1608#1602#1607' '#1605#1575#1607' '#39' + LTRIM(STR(MounthRetard))+ '#39')'#39' ' +
        ' ,'#39#39')   ELSE'
      ''
      '  '#39#39' END AS InfoName_L1 ,'
      
        '       SUM(Pay.FixedCalculated.Price) AS SumPrice, Pay.FormsInfo' +
        '.InfoName_L2,0 as calculatekind,'
      
        'cast(FixedCalculated.SalaryID AS bigint) * 10000 + cast(isnull(F' +
        'ixedCalculated.MounthRetard,0)  AS bigint) AS SalaryIDMounthReta' +
        'rd'
      ''
      'FROM         Pay.FixedCalculated LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo ON Pay.FixedCalculated.Salar' +
        'yID = Pay.FormsInfo.FormInfoID'
      'WHERE     (Pay.FixedCalculated.Mounth = :MonthNo1)'
      'AND (Pay.FixedCalculated.ShowListKind = 1)'
      'AND (Pay.FixedCalculated.PersonelNO = :c_PersonelNo1)'
      'AND (Pay.FixedCalculated.ArchiveID = :ArchiveID)'
      'AND(Pay.FixedCalculated.Price<>0)'
      'AND (LabelID BETWEEN :LabelIDFrom ANd :LabelIDTo)'
      
        'AND (Pay.FixedCalculated.YearID = :YearID  ) AND (Pay.FixedCalcu' +
        'lated.Years = :Years  )'
      'GROUP BY Pay.FixedCalculated.SalaryID, Pay.FormsInfo.InfoName_L1'
      
        '                                     , Pay.FormsInfo.InfoName_L2' +
        ', FixedCalculated.MounthRetard,Mounth '
      ''
      ' ORDER BY SalaryID')
    Left = 91
    Top = 82
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
    object qryWagesInfoName_L2: TStringField
      DisplayLabel = 'WageInfoName'
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryWagescalculatekind: TIntegerField
      FieldName = 'calculatekind'
      ReadOnly = True
    end
    object qryWagesSalaryIDMounthRetard: TLargeintField
      FieldName = 'SalaryIDMounthRetard'
      ReadOnly = True
    end
  end
  object qryDecs: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryDecsAfterOpen
    AfterClose = qryDecsAfterClose
    AfterScroll = qryDecsAfterScroll
    OnCalcFields = qryDecsCalcFields
    Parameters = <
      item
        Name = 'MonthNo'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 6
      end
      item
        Name = 'YearID'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Years'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'c_PersonelNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ArchiveID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
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
        Name = 'c_PersonelNo3'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'MonthNo3'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearID6'
        Size = -1
        Value = Null
      end
      item
        Name = 'c_PersonelNo4'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'MonthNo4'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearID4'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'c_PersonelNo5'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'MonthNo5'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearID5'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT FunctionID,SalaryID,max(InfoName_L1) as  InfoName_L1,sum(' +
        'SumPrice) as SumPrice,sum(LoanRemain) as LoanRemain,max(InfoName' +
        '_L2) as InfoName_L2'
      ',calculatekind,SalaryIDMounthRetard  FROM ('
      ''
      
        'SELECT  Pay.FixedCalculated.FunctionID,Pay.FixedCalculated.Salar' +
        'yID,'
      
        '        CASE  WHEN ShowlistKind=11  THEN '#39#1605#1575#1604#1610#1575#1578#39' ELSE Pay.Forms' +
        'Info.InfoName_L1 END AS InfoName_L1,'
      
        '        SUM(Pay.FixedCalculated.Price) AS SumPrice,SUM(Pay.Fixed' +
        'Calculated.Price) AS LoanRemain'
      
        '        , Pay.FormsInfo.InfoName_L2 , calculatekind ,0 as Salary' +
        'IDMounthRetard '
      'FROM    Pay.FixedCalculated LEFT OUTER JOIN'
      
        '        Pay.FormsInfo ON Pay.FixedCalculated.SalaryID = Pay.Form' +
        'sInfo.FormInfoID'
      'WHERE   (Pay.FixedCalculated.Mounth = :MonthNo)'
      
        'AND (Pay.FixedCalculated.YearID = :YearID  ) AND (Pay.FixedCalcu' +
        'lated.Years = :Years  )'
      
        ' AND ((Pay.FixedCalculated.ShowListKind = 2) OR(Pay.FixedCalcula' +
        'ted.ShowListKind = 11))'
      'AND (Pay.FixedCalculated.PersonelNO =  :c_PersonelNo)'
      'and (bedbes=2)'
      'AND (Pay.FixedCalculated.ArchiveID = :ArchiveID)'
      'AND (LabelID BETWEEN :LabelIDFrom ANd :LabelIDTo)'
      
        'GROUP BY Pay.FixedCalculated.FunctionID,Pay.FixedCalculated.Sala' +
        'ryID,'
      
        '         Pay.FormsInfo.InfoName_L1, ShowlistKind, Pay.FormsInfo.' +
        'InfoName_L2'
      '         , FixedCalculated.MounthRetard ,  calculatekind'
      '--HAVING  (SUM(FixedCalculated.Price) <> 0)'
      ''
      '--  ORDER BY Pay.FixedCalculated.SalaryID;'
      ''
      'UNION ALL'
      
        'SELECT  0 as FunctionID,(select top 1 FormInfoID FROM Pay.FormsI' +
        'nfo where formtype = 47 and infoid = 1 ) as SalaryID ,'
      
        #9#9#39#1605#1575#1604#1740#1575#1578' '#39'+(select top 1 InfoName_L1 FROM Pay.FormsInfo where f' +
        'ormtype = 47 and infoid = 1 )  as InfoName_L1,'
      #9#9'PaymentLoan  as SumPrice ,0 as LoanRemain ,'
      
        #9#9#39#1605#1575#1604#1740#1575#1578' '#39'+(select top 1 InfoName_L1 FROM Pay.FormsInfo where f' +
        'ormtype = 47 and infoid = 1 ) as  InfoName_L2,'
      #9#9'0 as calculatekind'#9',0 as SalaryIDMounthRetard'
      'FROM Pay.PersonelDecExt'
      
        'WHERE'#9'(FormInfoID = (select top 1 FormInfoID FROM Pay.FormsInfo ' +
        'where formtype = 59) ) And'
      #9#9'(PersonelNo = :c_PersonelNo3 )  And'
      #9#9'abs(Substring (enddate,6,2)) = :MonthNo3'
      'AND (PersonelDecExt.YearID = :YearID6  )'
      'UNION ALL'
      ''
      'SELECT     0 as FunctionID,   91 AS SalaryID,'
      #39#1605#1575#1604#1610#1575#1578#39
      ', SUM(PersonelDecExt.PaymentLoan) AS SumPrice,0 as LoanRemain ,'
      #9#9#39#1605#1575#1604#1610#1575#1578#39','
      '     11 AS calculatekind, 0 AS SalaryIDMounthRetard'
      'FROM Pay.PersonelDecExt INNER JOIN'
      
        '                         Pay.FormsInfo ON PersonelDecExt.FormInf' +
        'oID = FormsInfo.FormInfoID'
      'WHERE        (FormsInfo.FormType = 111)'
      'AND (PersonelDecExt.PersonelNo = :c_PersonelNo4)'
      'AND (PersonelDecExt.FirstMounth = :MonthNo4)'
      'AND (PersonelDecExt.YearID = :YearID4  ) '
      
        'GROUP BY PersonelDecExt.FormInfoID, FormsInfo.InfoName_L1, Forms' +
        'Info.InfoName_L2'
      ''
      ''
      '--- startof bonus'
      'UNION ALL'
      
        'SELECT 0 AS FunctionID, pde.FormInfoID AS SalaryID, fi.InfoName_' +
        'L1, pde.EmployeeAmount AS SumPrice, 0 AS LoanRemain, ISNULL(fi.I' +
        'nfoName_L2, fi.InfoName_L1) AS InfoName_L2, 0 AS calculatekind,'
      '       0 AS SalaryIDMounthRetard'
      
        'FROM Pay.PersonelDecExt AS pde INNER JOIN Pay.FormsInfo AS fi ON' +
        ' pde.FormInfoID = fi.FormInfoID'
      'CROSS JOIN Pay.Config C'
      'WHERE (fi.FormType = 58) AND (pde.PersonelNo = :c_PersonelNo5 )'
      '     AND (pde.FirstMounth = :MonthNo5)'
      'AND (pde.YearID = :YearID5  ) '
      ''
      'AND (C.InterimInterest = 1)'
      '---- endof bonus'
      ''
      ')abdc'
      'GROUP BY FunctionID,SalaryID,calculatekind,SalaryIDMounthRetard'
      '')
    Left = 75
    Top = 264
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
    object qryDecsFunctionID: TIntegerField
      FieldName = 'FunctionID'
    end
    object qryDecs_LoanRemain: TCurrencyField
      DisplayLabel = #1605#1575#1606#1583#1607
      FieldKind = fkLookup
      FieldName = '_LoanRemain'
      LookupDataSet = qryLoan
      LookupKeyFields = 'FunctionID;SalaryID'
      LookupResultField = 'RemainLoan'
      KeyFields = 'FunctionID;SalaryID'
      Lookup = True
    end
    object qryDecsInfoName_L2: TStringField
      DisplayLabel = 'DecInfoName'
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryDecscalculatekind: TWordField
      FieldName = 'calculatekind'
    end
    object qryDecs_LoanRemainFormat: TStringField
      DisplayLabel = #1605#1575#1606#1583#1607'.'
      FieldKind = fkCalculated
      FieldName = '_LoanRemainFormat'
      Size = 100
      Calculated = True
    end
  end
  object qryPersonels: TADOQuery
    AutoCalcFields = False
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryPersonelsAfterOpen
    AfterScroll = qryPersonelsAfterScroll
    Parameters = <>
    Left = 592
    Top = 139
    object qryPersonelsPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1662#1585#1587#1606#1604'|'#1705#1583
      FieldName = 'PersonelNo'
    end
    object qryPersonelsPersonel_L1: TStringField
      Tag = 3
      DisplayLabel = #1662#1585#1587#1606#1604'|'#1606#1575#1605
      FieldName = 'Personel_L1'
      ReadOnly = True
      Size = 56
    end
    object qryPersonelsPersonel_L2: TStringField
      DisplayLabel = #1662#1585#1587#1606#1604'|name'
      FieldName = 'Personel_L2'
      ReadOnly = True
      Size = 56
    end
    object qryPersonelsInfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qryPersonelsStateName: TStringField
      FieldName = 'StateName'
      Size = 255
    end
    object qryPersonelsjobCode: TIntegerField
      FieldName = 'jobCode'
    end
    object qryPersonelsHasFunction: TIntegerField
      FieldName = 'HasFunction'
      ReadOnly = True
    end
    object qryPersonelsOfficeCode: TIntegerField
      FieldName = 'OfficeCode'
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
    object qryPersonelsfatherName_L1: TStringField
      FieldName = 'fatherName_L1'
      Size = 25
    end
    object qryPersonelsOfficeName_l2: TStringField
      FieldName = 'OfficeName_l2'
      Size = 255
    end
    object qryPersonelsOfficeCodeID: TIntegerField
      FieldName = 'OfficeCodeID'
    end
    object qryPersonelsEmployTypeName: TStringField
      FieldName = 'EmployTypeName'
      Size = 255
    end
    object qryPersonelsMarriageName: TStringField
      FieldName = 'MarriageName'
      Size = 255
    end
    object qryPersonelschildNumber: TStringField
      FieldName = 'childNumber'
      Size = 255
    end
    object qryPersonelsCreditCardNo: TStringField
      FieldName = 'CreditCardNo'
      Size = 25
    end
    object qryPersonelsInterdictItems2Amount: TBCDField
      FieldName = 'InterdictItems2Amount'
      ReadOnly = True
      Precision = 19
    end
    object qryPersonelsInterdicEndDate: TStringField
      FieldName = 'InterdicEndDate'
      FixedChar = True
      Size = 10
    end
    object qryPersonelsSpecialStateName: TStringField
      FieldName = 'SpecialStateName'
      Size = 255
    end
    object qryPersonelsPersonelgrade: TStringField
      FieldName = 'Personelgrade'
      Size = 255
    end
    object qryPersonelsInterdictID: TIntegerField
      FieldName = 'InterdictID'
    end
    object qryPersonelsJobID: TIntegerField
      FieldName = 'JobID'
    end
    object qryPersonelsjobName: TStringField
      FieldName = 'jobName'
      Size = 255
    end
    object qryPersonelsProjectName: TStringField
      FieldName = 'ProjectName'
      Size = 255
    end
    object qryPersonelsNationalID: TStringField
      FieldName = 'NationalID'
      Size = 12
    end
    object qryPersonelsIDNumber: TStringField
      FieldName = 'IDNumber'
      Size = 12
    end
    object qryPersonelsEmail: TWideStringField
      Tag = 3
      DisplayLabel = #1662#1585#1587#1606#1604'|Email'
      FieldName = 'Email'
      Size = 100
    end
    object qryPersonelsWageDay: TBCDField
      FieldName = 'WageDay'
      ReadOnly = True
      Precision = 19
    end
    object qryPersonelsAmountInw: TBCDField
      FieldName = 'AmountInw'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryPersonelsWageDayw: TBCDField
      DisplayLabel = #1581#1602#1608#1602' '#1585#1608#1586#1575#1606#1607
      FieldName = 'WageDayw'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryPersonelsMonthID: TStringField
      FieldName = 'MonthID'
      FixedChar = True
      Size = 2
    end
    object qryPersonelsMonth_Name: TStringField
      DisplayLabel = #1605#1575#1607
      FieldName = 'Month_Name'
      Size = 10
    end
    object qryPersonelsArchiveID: TIntegerField
      FieldName = 'ArchiveID'
    end
    object qryPersonelsDSW_JOB: TStringField
      DisplayLabel = #1705#1583' '#1588#1594#1604' '#1576#1740#1605#1607
      FieldName = 'DSW_JOB'
      FixedChar = True
      Size = 6
    end
    object qryPersonelsGroupName: TStringField
      FieldName = 'GroupName'
      Size = 255
    end
    object qryPersonelsBankName: TStringField
      FieldName = 'BankName'
      Size = 255
    end
    object qryPersonelsjobCityName: TStringField
      FieldName = 'jobCityName'
      Size = 255
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
        Name = 'ArchiveID'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
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
        Name = 'YearID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     SUM(FunctionDay) AS FunctionDay, SUM(FunctionTime) AS' +
        ' FunctionTime,'
      
        '                          (SELECT     CAST(ROUND((CASE WHEN SUM(' +
        'FunctionDay) <> 0 THEN SUM(price) / SUM(FunctionDay) ELSE 0 END)' +
        ', 0) AS money) AS WageDay'
      
        '                             FROM Pay.FixedCalculated LEFT OUTER' +
        ' JOIN'
      
        '                                                   Pay.FormsInfo' +
        ' ON FixedCalculated.SalaryID = FormsInfo.FormInfoID'
      
        '                             WHERE     (FixedCalculated.ArchiveI' +
        'D = :ArchiveID ) AND (FixedCalculated.Mounth = Functions.Mounth)' +
        ' AND (FixedCalculated.PersonelNO = Functions.PersonelNo) AND '
      
        '                                                   (FormsInfo.Fo' +
        'rmType = 22) AND (FormsInfo.InfoID BETWEEN 1 AND 4)) AS WageDay,' +
        'SUM(SickDay) AS SickDay'
      'FROM Pay.Functions'
      'WHERE     (Mounth =  :MonthNo ) AND (PersonelNo = :PersonelNo )'
      'AND  (YearID = :YearID )'
      ''
      'GROUP BY Mounth, PersonelNo')
    Left = 427
    Top = 181
    object qryFunctionsFunctionDay: TFloatField
      DisplayLabel = #1585#1608#1586#1607#1575#1610' '#1603#1575#1585#1603#1585#1583
      FieldName = 'FunctionDay'
    end
    object qryFunctionsFunctionTime: TFloatField
      DisplayLabel = #1587#1575#1593#1575#1578' '#1603#1575#1585#1603#1585#1583
      FieldName = 'FunctionTime'
    end
    object qryFunctionsWageDay: TBCDField
      FieldName = 'WageDay'
      ReadOnly = True
      Precision = 19
    end
    object qryFunctionsSickDay: TIntegerField
      FieldName = 'SickDay'
      ReadOnly = True
    end
  end
  object srcFunctions: TDataSource
    DataSet = qryFunctions
    Left = 410
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
        Name = 'PersonelNO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    SQL.Strings = (
      'SELECT     Price'
      'FROM         Pay.FixedCalculated'
      'WHERE     (Mounth = :MonthNo) AND (PersonelNO =:PersonelNO);')
    Left = 544
    Top = 189
    object qryPayable_DeletePrice: TBCDField
      FieldName = 'Price'
      currency = True
      Precision = 19
    end
  end
  object srcPayable_Delete: TDataSource
    DataSet = qryPayable_Delete
    Left = 344
    Top = 277
  end
  object qryLoan: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    DataSource = srcPersonels
    Parameters = <
      item
        Name = 'PersonelNoFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelNoTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'Month'
        DataType = ftInteger
        Size = 1
        Value = 0
      end
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end
      item
        Name = 'Years'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        SalaryID, FunctionID, FormInfoID, PersonelNo, Rema' +
        'inLoan, calculatekind'
      
        'FROM        Pay.GetLoanBalance(9, :PersonelNoFrom, :PersonelNoTo' +
        ', :Month , :YearID , :Years)'
      ''
      ''
      '')
    Left = 536
    Top = 6
  end
  object PopMnuPrint: TPopupMenu
    Left = 585
    Top = 339
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
    object N25: TMenuItem
      Caption = #1670#1575#1662' 2 '#1601#1740#1588' '#1581#1602#1608#1602
      object N26: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1740
        Hint = 'ForKaroon'
        OnClick = N7Click
      end
      object N27: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'ForKaroon'
        OnClick = N7Click
      end
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object N3: TMenuItem
      Caption = #1601#1610#1588' -'#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578
      Hint = ' '
      ShortCut = 8310
      Visible = False
    end
    object N2: TMenuItem
      Caption = #1605#1578#1606' '#1586#1610#1585' '#1670#1575#1662
      OnClick = N2Click
    end
    object NAllRecords: TMenuItem
      Caption = #1670#1575#1662' '#1607#1605#1607' '#1601#1610#1588#8207#1607#1575
      OnClick = NAllRecordsClick
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object N5: TMenuItem
      Caption = #1587#1575#1740#1585' '#1670#1575#1662#1607#1575
      OnClick = N5Click
    end
  end
  object ppWages: TppDBPipeline
    DataSource = srcWages
    OpenDataSource = False
    UserName = 'Wages'
    Left = 937
    Top = 187
    MasterDataPipelineName = 'ppPersonels'
    object ppWagesppField1: TppField
      FieldAlias = '_radif'
      FieldName = '_radif'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppWagesppField2: TppField
      FieldAlias = 'SalaryID'
      FieldName = 'SalaryID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppWagesppField3: TppField
      FieldAlias = 'InfoName_L1'
      FieldName = 'InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppWagesppField4: TppField
      FieldAlias = 'SumPrice'
      FieldName = 'SumPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppWagesppField5: TppField
      FieldAlias = 'InfoName_L2'
      FieldName = 'InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppWagesppField6: TppField
      FieldAlias = 'calculatekind'
      FieldName = 'calculatekind'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppWagesppField7: TppField
      FieldAlias = 'SalaryIDMounthRetard'
      FieldName = 'SalaryIDMounthRetard'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
  end
  object ppDecs: TppDBPipeline
    DataSource = srcDecs
    OpenDataSource = False
    UserName = 'Decs'
    Left = 641
    Top = 219
    MasterDataPipelineName = 'ppPersonels'
  end
  object qryWages2: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'MonthNo1'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Years'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'c_PersonelNo1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ArchiveID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SalaryIDMounthRetard'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end
      item
        Name = 'LabelIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'LabelIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      ''
      
        'SELECT     Pay.FixedCalculated.SalaryID, FormsInfo.InfoName_L1 +' +
        ' CASE WHEN Mounth <> MounthRetard'
      
        'THEN  isnull('#39'('#39' + '#39#1605#1593#1608#1602#1607' '#1605#1575#1607' '#39' + LTRIM(STR(MounthRetard))+ '#39')'#39' ' +
        ' ,'#39#39')   ELSE'
      ''
      
        ' '#39#39' END AS InfoName_L1 , SUM(Pay.FixedCalculated.Price) AS SumPr' +
        'ice'
      ', Pay.FormsInfo.InfoName_L2,0 as calculatekind'
      
        ',cast( FixedCalculated.SalaryID AS bigint) * 10000 +cast( isnull' +
        '(FixedCalculated.MounthRetard,0) AS bigint) AS SalaryIDMounthRet' +
        'ard'
      'FROM         Pay.FixedCalculated LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo ON Pay.FixedCalculated.Salar' +
        'yID = Pay.FormsInfo.FormInfoID'
      'WHERE     (Pay.FixedCalculated.Mounth = :MonthNo1)'
      
        'AND (Pay.FixedCalculated.YearID = :YearID  ) AND (Pay.FixedCalcu' +
        'lated.Years = :Years  )'
      'AND (Pay.FixedCalculated.ShowListKind = 1)'
      'AND (Pay.FixedCalculated.PersonelNO = :c_PersonelNo1)'
      'AND (Pay.FixedCalculated.ArchiveID = :ArchiveID)'
      
        'AND ( cast(   FixedCalculated.SalaryID AS bigint)  * 10000 + cas' +
        't(isnull(FixedCalculated.MounthRetard,0)  AS bigint)   > :Salary' +
        'IDMounthRetard )'
      'AND (LabelID BETWEEN :LabelIDFrom ANd :LabelIDTo)'
      
        'GROUP BY Pay.FixedCalculated.SalaryID, Pay.FormsInfo.InfoName_L1' +
        ', Pay.FormsInfo.InfoName_L2, FixedCalculated.MounthRetard,Mounth' +
        ' '
      ''
      ''
      ''
      ''
      'ORDER BY Pay.FixedCalculated.SalaryID;')
    Left = 135
    Top = 128
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
    object qryWages2InfoName_L2: TStringField
      DisplayLabel = 'WageInfoName'
      FieldName = 'InfoName_L2'
      Size = 255
    end
  end
  object srcWages2: TDataSource
    DataSet = qryWages2
    Left = 218
    Top = 149
  end
  object ppWages2: TppDBPipeline
    DataSource = srcWages2
    OpenDataSource = False
    UserName = 'Wages2'
    Left = 913
    Top = 243
    MasterDataPipelineName = 'ppPersonels'
  end
  object ppFunction: TppDBPipeline
    DataSource = srcFunctions
    OpenDataSource = False
    UserName = 'Function'
    Left = 769
    Top = 227
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
    object ppFunctionppField3: TppField
      FieldAlias = 'WageDay'
      FieldName = 'WageDay'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
  end
  object qryinit: TADOQuery
    Connection = DmF.adcsalary
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      ''
      'SELECT  LimitMounthActive  FROM Pay.FormTypes'
      'where FormType=49')
    Left = 440
    Top = 4
  end
  object PopMnuOthers: TPopupMenu
    Left = 337
    Top = 371
    object ActShowInterdict1: TMenuItem
      Action = ActShowInterdict
    end
    object N1: TMenuItem
      Action = ActPersonelInfoF
    end
  end
  object qryItemsSum: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Left = 600
    Top = 227
    object qryItemsSumAmount1: TBCDField
      DisplayLabel = #1580#1605#1593' '#1605#1586#1583' '#1605#1576#1606#1575
      FieldName = 'Amount1'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryItemsSumAmount2: TBCDField
      DisplayLabel = #1580#1605#1593' '#1605#1586#1575#1610#1575
      FieldName = 'Amount2'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryItemsSumAmountSum: TBCDField
      DisplayLabel = #1580#1605#1593
      FieldName = 'AmountSum'
      currency = True
    end
    object qryItemsSumAmountIn30: TBCDField
      DisplayLabel = #1580#1605#1593' '#1605#1586#1583' '#1605#1576#1606#1575'/*30'
      FieldName = 'AmountIn30'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryItemsAmountSumAnd30: TBCDField
      DisplayLabel = #1580#1605#1593' '#1603#1604
      FieldName = 'AmountSumAnd30'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryItemsSumAmount1_Day: TBCDField
      DisplayLabel = #1605#1586#1583' '#1605#1576#1606#1575' '#1576#1585' '#1581#1587#1576' '#1705#1575#1585#1705#1585#1583
      FieldName = 'Amount1_Day'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object srcItemsSum: TDataSource
    DataSet = qryItemsSum
    Left = 30
    Top = 405
  end
  object ppDBPipeline5: TppDBPipeline
    DataSource = srcItemsSum
    OpenDataSource = False
    UserName = 'DBPipeline5'
    Left = 536
    Top = 261
    object ppDBPipeline5ppField1: TppField
      FieldAlias = 'Amount1'
      FieldName = 'Amount1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline5ppField2: TppField
      FieldAlias = 'Amount2'
      FieldName = 'Amount2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline5ppField3: TppField
      FieldAlias = 'AmountSum'
      FieldName = 'AmountSum'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline5ppField4: TppField
      FieldAlias = 'AmountIn30'
      FieldName = 'AmountIn30'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline5ppField5: TppField
      FieldAlias = 'AmountSumAnd30'
      FieldName = 'AmountSumAnd30'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
  end
  object pmOtherPrint: TPopupMenu
    Left = 273
    Top = 267
    object MenuItem5: TMenuItem
      Caption = '-'
    end
    object All_Print: TMenuItem
      OnClick = All_PrintClick
    end
    object Print: TMenuItem
    end
  end
  object ppItemsSum: TppDBPipeline
    DataSource = srcItemsSum
    OpenDataSource = False
    UserName = 'ppItemsSum'
    Left = 496
    Top = 149
    MasterDataPipelineName = 'ppPersonels'
    object ppField1: TppField
      FieldAlias = 'InterdictItemsID'
      FieldName = 'InterdictItemsID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppField2: TppField
      FieldAlias = 'InterdictID'
      FieldName = 'InterdictID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppField3: TppField
      FieldAlias = 'SalaryID'
      FieldName = 'SalaryID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppField4: TppField
      FieldAlias = 'Amount'
      FieldName = 'Amount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppField5: TppField
      FieldAlias = 'FirstMounth'
      FieldName = 'FirstMounth'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppField6: TppField
      FieldAlias = 'EndMounth'
      FieldName = 'EndMounth'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppField7: TppField
      FieldAlias = 'ExpenseType'
      FieldName = 'ExpenseType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppField8: TppField
      FieldAlias = 'UserID'
      FieldName = 'UserID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppField9: TppField
      FieldAlias = '_InfoName_L1'
      FieldName = '_InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppField10: TppField
      FieldAlias = '_InfoName_L2'
      FieldName = '_InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppField11: TppField
      FieldAlias = 'AccTopicCode'
      FieldName = 'AccTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppField12: TppField
      FieldAlias = 'AccDetailCode'
      FieldName = 'AccDetailCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppField13: TppField
      FieldAlias = 'AccCTopicCode'
      FieldName = 'AccCTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppField14: TppField
      FieldAlias = 'AccCTopicCode2'
      FieldName = 'AccCTopicCode2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppField15: TppField
      FieldAlias = 'ItemNote_L1'
      FieldName = 'ItemNote_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
  end
  object popEmail: TPopupMenu
    Left = 385
    Top = 347
    object PNG1: TMenuItem
      Caption = 'PNG'
      object mnuEmail: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'PNG'
        OnClick = mnuEmailClick
      end
      object MenuItem3: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'PNG'
        OnClick = mnuEmailClick
      end
    end
    object JPEG1: TMenuItem
      Caption = 'JPEG'
      object N10: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'JPEG'
        OnClick = mnuEmailClick
      end
      object N11: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'JPEG'
        OnClick = mnuEmailClick
      end
    end
    object PDF1: TMenuItem
      Caption = 'PDF'
      object N12: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'PDF'
        OnClick = mnuEmailClick
      end
      object N13: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'PDF'
        OnClick = mnuEmailClick
      end
    end
    object BMP1: TMenuItem
      Caption = 'BMP'
      object N14: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'BMP'
        OnClick = mnuEmailClick
      end
      object N15: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'BMP'
        OnClick = mnuEmailClick
      end
    end
    object GIF1: TMenuItem
      Caption = 'GIF'
      object N16: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'GIF'
        OnClick = mnuEmailClick
      end
      object N17: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'GIF'
        OnClick = mnuEmailClick
      end
    end
    object RTF1: TMenuItem
      Caption = 'RTF'
      object N18: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'RTF'
        OnClick = mnuEmailClick
      end
      object N19: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'RTF'
        OnClick = mnuEmailClick
      end
    end
    object DOC1: TMenuItem
      Caption = 'DOC'
      object N20: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'DOC'
        OnClick = mnuEmailClick
      end
      object N21: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'DOC'
        OnClick = mnuEmailClick
      end
    end
    object extFile1: TMenuItem
      Caption = 'TextFile'
      object N22: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'TextFile'
        OnClick = mnuEmailClick
      end
      object N23: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'TextFile'
        OnClick = mnuEmailClick
      end
    end
  end
  object qryWagesSum: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = qryWagesCalcFields
    Parameters = <
      item
        Name = 'MonthNo'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'c_PersonelNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ArchiveID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'LabelIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'LabelIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     Pay.FixedCalculated.SalaryID, FormsInfo.InfoName_L1 +' +
        ' CASE WHEN Mounth <> isnull(MounthRetard,0) '
      
        'THEN  isnull('#39'('#39' + '#39#1605#1593#1608#1602#1607' '#1605#1575#1607' '#39' + LTRIM(STR(MounthRetard))+ '#39')'#39' ' +
        ' ,'#39#39')   ELSE'
      ''
      '  '#39#39' END AS InfoName_L1 ,'
      
        '       SUM(Pay.FixedCalculated.Price) AS SumPrice, Pay.FormsInfo' +
        '.InfoName_L2,0 as calculatekind'
      'FROM         Pay.FixedCalculated LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo ON Pay.FixedCalculated.Salar' +
        'yID = Pay.FormsInfo.FormInfoID'
      'WHERE     (Pay.FixedCalculated.Mounth = :MonthNo)'
      'AND (Pay.FixedCalculated.ShowListKind = 1)'
      'AND (Pay.FixedCalculated.PersonelNO = :c_PersonelNo)'
      'AND (Pay.FixedCalculated.ArchiveID = :ArchiveID)'
      'AND (LabelID BETWEEN :LabelIDFrom ANd :LabelIDTo)'
      'GROUP BY Pay.FixedCalculated.SalaryID, Pay.FormsInfo.InfoName_L1'
      
        '                                     , Pay.FormsInfo.InfoName_L2' +
        ', FixedCalculated.MounthRetard,Mounth '
      ''
      'ORDER BY Pay.FixedCalculated.SalaryID;')
    Left = 243
    Top = 346
    object IntegerField3: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldKind = fkCalculated
      FieldName = '_radif'
      Calculated = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'SalaryID'
    end
    object StringField2: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1586#1575#1610#1575
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object BCDField2: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'SumPrice'
      currency = True
      Precision = 19
    end
    object StringField3: TStringField
      DisplayLabel = 'WageInfoName'
      FieldName = 'InfoName_L2'
      Size = 255
    end
  end
  object srcWagesSum: TDataSource
    DataSet = qryWagesSum
    Left = 165
    Top = 326
  end
  object pdbplnWagesSum: TppDBPipeline
    DataSource = srcWagesSum
    OpenDataSource = False
    UserName = 'pdbplnWagesSum'
    Left = 712
    Top = 77
    object pdbplnWagesSumppField1: TppField
      FieldAlias = '_radif'
      FieldName = '_radif'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pdbplnWagesSumppField2: TppField
      FieldAlias = 'SalaryID'
      FieldName = 'SalaryID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pdbplnWagesSumppField3: TppField
      FieldAlias = 'InfoName_L1'
      FieldName = 'InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pdbplnWagesSumppField4: TppField
      FieldAlias = 'SumPrice'
      FieldName = 'SumPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pdbplnWagesSumppField5: TppField
      FieldAlias = 'InfoName_L2'
      FieldName = 'InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
  end
  object ppVacationType: TppDBPipeline
    DataSource = srcVacationType
    OpenDataSource = False
    UserName = 'VacationType'
    Left = 744
    Top = 160
  end
  object srcVacationType: TDataSource
    Left = 160
    Top = 192
  end
  object ppLoan: TppDBPipeline
    DataSource = srcLoan
    UserName = 'Loan'
    Left = 16
    Top = 336
  end
  object srcLoan: TDataSource
    DataSet = qryLoan2
    Left = 16
    Top = 288
  end
  object qryLoan2: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'SELECT   top(0)  FitfulID  LoanRemain , FitfulNote InfoName_L1'
      'FROM dbo.Fitful')
    Left = 16
    Top = 240
    object qryLoan2LoanRemain: TFMTBCDField
      FieldName = 'LoanRemain'
      Precision = 20
      Size = 4
    end
    object qryLoan2InfoName_L1: TStringField
      FieldName = 'InfoName_L1'
      Size = 1000
    end
  end
  object qryOtherDecWage: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT   top(0) FitfulID SalaryID, FitfulIDc  SumPriceBed ,Fitfu' +
        'lIDc  SumPriceBes, FitfulNote InfoName_L1'
      'FROM dbo.Fitful')
    Left = 192
    Top = 288
    object qryOtherDecWageSalaryID: TFMTBCDField
      FieldName = 'SalaryID'
      Precision = 20
      Size = 4
    end
    object qryOtherDecWageSumPriceBed: TBCDField
      FieldName = 'SumPriceBed'
      Precision = 19
    end
    object qryOtherDecWageSumPriceBes: TBCDField
      FieldName = 'SumPriceBes'
      Precision = 19
    end
    object qryOtherDecWageInfoName_L1: TStringField
      FieldName = 'InfoName_L1'
      Size = 1000
    end
  end
  object ppOtherDecExt: TppDBPipeline
    DataSource = srcOtherDecWage
    UserName = 'OtherDecExt'
    Left = 192
    Top = 240
  end
  object srcOtherDecWage: TDataSource
    DataSet = qryOtherDecWage
    Left = 128
    Top = 336
  end
  object ppReportNew: TppReport
    AutoStop = False
    DataPipeline = ppPersonels
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'F:\4share\4 Send Salary\payfishNewKesht.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PNG'
    EmailSettings.ReportFormat = 'PNG'
    EmailSettings.Body.Strings = (
      #1576#1575' '#1587#1604#1575#1605' '#1608' '#1593#1585#1590' '#1582#1587#1578#1607' '#1606#1576#1575#1588#1610#1583
      #1601#1610#1588' '#1581#1602#1608#1602' '#1583#1585' '#1601#1575#1610#1604' '#1662#1610#1608#1587#1578'  '#1578#1602#1583#1610#1605' '#1588#1583
      #1576#1575' '#1587#1662#1575#1587' '#1575#1586' '#1586#1581#1605#1575#1578' '#1588#1605#1575)
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
    EmailSettings.Enabled = True
    EmailSettings.PreviewInEmailClient = False
    EmailSettings.FromAddress = 'payroll@pedc.ir'
    EmailSettings.FromName = #1587#1610#1587#1578#1605' '#1581#1602#1608#1602
    EmailSettings.Recipients.Strings = (
      'aabedi25@yahoo.com')
    EmailSettings.ReceiptAddress = 'aabedi25@yahoo.com'
    EmailSettings.Subject = #1601#1610#1588
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
    PDFSettings.CompressionLevel = clNone
    PDFSettings.EmbedFontOptions = [efAllFonts, efUseSubset]
    PDFSettings.EmbedFontList.Strings = (
      'Badr')
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl128Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feUnicode
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PDFSettings.ScaleImages = False
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
    TextFileName = '($MyDocuments)\Report.png'
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
    Left = 361
    Top = 243
    Version = '23.0'
    mmColumnWidth = 203300
    DataPipelineName = 'ppPersonels'
    object ppDetailBand4: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 105040
      mmPrintPosition = 0
      object ppShape13: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape7'
        Pen.Width = 2
        mmHeight = 97631
        mmLeft = 205317
        mmTop = 1058
        mmWidth = 79111
        BandType = 4
        LayerName = Foreground5
      end
      object ppShape18: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape18'
        Brush.Color = clSilver
        mmHeight = 8731
        mmLeft = 208227
        mmTop = 82021
        mmWidth = 70644
        BandType = 4
        LayerName = Foreground5
      end
      object ppShape17: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape17'
        Pen.Width = 2
        mmHeight = 97631
        mmLeft = 0
        mmTop = 1058
        mmWidth = 202936
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText41'
        Border.mmPadding = 0
        DataField = 'OfficeCodeID'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        DataPipelineName = 'ppPersonels'
        mmHeight = 7673
        mmLeft = 185738
        mmTop = 1852
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground5
      end
      object ppSubReport5: TppSubReport
        DesignLayer = ppDesignLayer6
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
        mmTop = 59531
        mmWidth = 284300
        BandType = 4
        LayerName = Foreground5
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
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '23.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppFunction'
          object ppHeaderBand1: TppHeaderBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
          end
          object ppDetailBand6: TppDetailBand
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
        end
      end
      object ppShape16: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape1'
        mmHeight = 77523
        mmLeft = 529
        mmTop = 20108
        mmWidth = 72231
        BandType = 4
        LayerName = Foreground5
      end
      object ppShape14: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape6'
        mmHeight = 77523
        mmLeft = 73025
        mmTop = 20108
        mmWidth = 96838
        BandType = 4
        LayerName = Foreground5
      end
      object ppShape15: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape2'
        mmHeight = 77523
        mmLeft = 170127
        mmTop = 20108
        mmWidth = 32544
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label1'
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
        LayerName = Foreground5
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 794
        mmTop = 31750
        mmWidth = 201084
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer6
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
        mmTop = 25135
        mmWidth = 17526
        BandType = 4
        LayerName = Foreground5
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 78317
        mmLeft = 178859
        mmTop = 20108
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer6
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
        mmTop = 20638
        mmWidth = 22754
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer6
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
        mmHeight = 5292
        mmLeft = 99484
        mmTop = 87048
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground5
      end
      object ppVariable3: TppVariable
        DesignLayer = ppDesignLayer6
        UserName = 'vrbFooter'
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
        mmLeft = 147638
        mmTop = 88106
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground5
      end
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line7'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 265
        mmTop = 87048
        mmWidth = 169598
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel67: TppLabel
        DesignLayer = ppDesignLayer6
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
        mmTop = 20638
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel87: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label25'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1582#1575#1604#1589' '#1662#1585#1583#1575#1582#1578#1610
        Color = clSilver
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 7705
        mmLeft = 46567
        mmTop = 87313
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel88: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Color = clSilver
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5556
        mmLeft = 19050
        mmTop = 87313
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel89: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label13'
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
        mmLeft = 82021
        mmTop = 87048
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel94: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label14'
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
        mmLeft = 82021
        mmTop = 92340
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel97: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1662#1585#1587#1606#1604#1610':'#8207
        Color = clSilver
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 4233
        mmLeft = 249503
        mmTop = 23283
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel98: TppLabel
        DesignLayer = ppDesignLayer6
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
        mmLeft = 252678
        mmTop = 15346
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel99: TppLabel
        DesignLayer = ppDesignLayer6
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
        mmLeft = 64823
        mmTop = 14288
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel100: TppLabel
        DesignLayer = ppDesignLayer6
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
        mmHeight = 5292
        mmLeft = 234950
        mmTop = 68527
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'OfficeName_l1'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPersonels'
        mmHeight = 4995
        mmLeft = 227278
        mmTop = 16140
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText3'
        Border.mmPadding = 0
        Color = clSilver
        DataField = 'PersonelNo'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppPersonels'
        mmHeight = 7112
        mmLeft = 232569
        mmTop = 22225
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText4'
        Border.mmPadding = 0
        Color = clSilver
        DataField = 'AccountNumber'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppPersonels'
        mmHeight = 5556
        mmLeft = 209550
        mmTop = 68527
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer6
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
        mmLeft = 39423
        mmTop = 14288
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel101: TppLabel
        DesignLayer = ppDesignLayer6
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
        mmLeft = 99484
        mmTop = 92340
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground5
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line17'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 170392
        mmTop = 25135
        mmWidth = 32015
        BandType = 4
        LayerName = Foreground5
      end
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer6
        UserName = 'SubReportFunctionItem'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentWidth = False
        PrintBehavior = pbFixed
        TraverseAllData = False
        DataPipelineName = 'ppFunctionItem'
        mmHeight = 60590
        mmLeft = 170657
        mmTop = 36777
        mmWidth = 31485
        BandType = 4
        LayerName = Foreground5
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
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
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
              DesignLayer = ppDesignLayer2
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
              LayerName = Foreground1
            end
            object ppDBText31: TppDBText
              DesignLayer = ppDesignLayer2
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
              LayerName = Foreground1
            end
            object ppDBText21: TppDBText
              DesignLayer = ppDesignLayer2
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
              LayerName = Foreground1
            end
          end
          object ppDesignLayers2: TppDesignLayers
            object ppDesignLayer2: TppDesignLayer
              UserName = 'Foreground1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer6
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
        mmTop = 24871
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer6
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
        mmTop = 30427
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer6
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
        mmTop = 30692
        mmWidth = 16425
        BandType = 4
        LayerName = Foreground5
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer6
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
        mmTop = 99219
        mmWidth = 284300
        BandType = 4
        LayerName = Foreground5
      end
      object ppSubReport2: TppSubReport
        DesignLayer = ppDesignLayer6
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
        mmTop = 32015
        mmWidth = 47361
        BandType = 4
        LayerName = Foreground5
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
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
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
              DesignLayer = ppDesignLayer3
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
              mmHeight = 6615
              mmLeft = 20108
              mmTop = 0
              mmWidth = 27517
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText24: TppDBText
              DesignLayer = ppDesignLayer3
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
        end
      end
      object ppSubReport3: TppSubReport
        DesignLayer = ppDesignLayer6
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
        mmTop = 32279
        mmWidth = 48154
        BandType = 4
        LayerName = Foreground5
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
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
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
              DesignLayer = ppDesignLayer4
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
              LayerName = Foreground3
            end
            object ppDBText26: TppDBText
              DesignLayer = ppDesignLayer4
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
      object ppSubReport4: TppSubReport
        DesignLayer = ppDesignLayer6
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
        mmTop = 32544
        mmWidth = 71173
        BandType = 4
        LayerName = Foreground5
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
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '23.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppDecs'
          object ppDetailBand8: TppDetailBand
            Border.mmPadding = 0
            PrintCount = 12
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppDBText27: TppDBText
              DesignLayer = ppDesignLayer5
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
              mmHeight = 4763
              mmLeft = 38894
              mmTop = 0
              mmWidth = 32544
              BandType = 4
              LayerName = Foreground4
            end
            object ppDBText28: TppDBText
              DesignLayer = ppDesignLayer5
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
              mmHeight = 4763
              mmLeft = 19315
              mmTop = 0
              mmWidth = 18785
              BandType = 4
              LayerName = Foreground4
            end
            object ppDBText29: TppDBText
              DesignLayer = ppDesignLayer5
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
              mmHeight = 4763
              mmLeft = 265
              mmTop = 0
              mmWidth = 18256
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
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line67'
        Border.mmPadding = 0
        Weight = 0.500000000000000000
        mmHeight = 2381
        mmLeft = 794
        mmTop = 25929
        mmWidth = 169069
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer6
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
        mmTop = 20108
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer6
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
        mmTop = 20108
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer6
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
        mmTop = 27252
        mmWidth = 27517
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer6
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
        mmTop = 27252
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer6
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
        mmTop = 27252
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer6
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
        mmTop = 27252
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer6
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
        mmTop = 27252
        mmWidth = 32544
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel64: TppLabel
        DesignLayer = ppDesignLayer6
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
        mmTop = 27252
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground5
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 71438
        mmLeft = 121444
        mmTop = 26194
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer6
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
        mmTop = 27252
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground5
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 61119
        mmLeft = 19579
        mmTop = 25929
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground5
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 61119
        mmLeft = 141288
        mmTop = 25929
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground5
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 61119
        mmLeft = 92604
        mmTop = 25929
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground5
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 61119
        mmLeft = 39158
        mmTop = 26194
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground5
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        Weight = 0.125000000000000000
        mmHeight = 77788
        mmLeft = 72761
        mmTop = 20108
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label52'
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
        mmLeft = 226484
        mmTop = 8996
        mmWidth = 36777
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText30'
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
        mmHeight = 6615
        mmLeft = 227807
        mmTop = 37835
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel59: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label59'
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583#1585#1608#1586#1603#1575#1585#1603#1585#1583
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
        mmLeft = 241259
        mmTop = 38100
        mmWidth = 18034
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel65: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label65'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1608#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 244740
        mmTop = 31221
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText34'
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
        mmLeft = 214313
        mmTop = 30692
        mmWidth = 29369
        BandType = 4
        LayerName = Foreground5
      end
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line28'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Style = psDashDotDot
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 103981
        mmLeft = 203994
        mmTop = 1058
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel82: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label82'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1608#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 182563
        mmTop = 8467
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText35'
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
        mmLeft = 162190
        mmTop = 7938
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel95: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label95'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1662#1583#1585':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4741
        mmLeft = 182563
        mmTop = 14552
        mmWidth = 7535
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText36'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'fatherName_L1'
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
        mmLeft = 177007
        mmTop = 14023
        mmWidth = 4498
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText37'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'PersonelNo'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppPersonels'
        mmHeight = 7112
        mmLeft = 180256
        mmTop = 1852
        mmWidth = 1778
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel96: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label96'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1662#1585#1587#1606#1604#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 4149
        mmLeft = 182563
        mmTop = 2910
        mmWidth = 9821
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'EmployTypeName'
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
        mmLeft = 110331
        mmTop = 14023
        mmWidth = 32544
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1603#1575#1585#1603#1585#1583':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 143934
        mmTop = 14552
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText38'
        Border.mmPadding = 0
        DataField = 'childNumber'
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
        mmLeft = 82021
        mmTop = 14023
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel102: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label102'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1601#1585#1586#1606#1583#1575#1606' '#1605#1588#1605#1608#1604':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 91281
        mmTop = 14552
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText39'
        Border.mmPadding = 0
        DataField = 'MarriageName'
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
        mmLeft = 76729
        mmTop = 7938
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel103: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label103'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1575#1607#1604':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 85990
        mmTop = 8467
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText40'
        Border.mmPadding = 0
        DataField = 'StateName'
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
        mmLeft = 44715
        mmTop = 7938
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel104: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label104'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1608#1590#1593#1610#1578' '#1608#1610#1688#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 53975
        mmTop = 8467
        mmWidth = 18785
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label53'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Label53'
        Color = clSilver
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5556
        mmLeft = 210873
        mmTop = 83079
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label58'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1582#1575#1604#1589' '#1662#1585#1583#1575#1582#1578#1610
        Color = clSilver
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 7673
        mmLeft = 238390
        mmTop = 82550
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground5
      end
      object ppImage1: TppImage
        DesignLayer = ppDesignLayer6
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        RotationAngle = 0
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13229
        mmLeft = 206905
        mmTop = 2117
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label49'
        AutoSize = False
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
        mmHeight = 6265
        mmLeft = 206111
        mmTop = 2381
        mmWidth = 77258
        BandType = 4
        LayerName = Foreground5
      end
      object ppImage2: TppImage
        DesignLayer = ppDesignLayer6
        UserName = 'Image2'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        RotationAngle = 0
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 12171
        mmLeft = 1058
        mmTop = 2117
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label2'
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
        mmTop = 14023
        mmWidth = 36777
        BandType = 4
        LayerName = Foreground5
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer6
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 21167
        mmTop = 3440
        mmWidth = 8975
        BandType = 4
        LayerName = Foreground5
      end
      object plblKhalesBhorof: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label20'
        Border.mmPadding = 0
        Caption = #1581#1585#1608#1601
        Color = clWindow
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4763
        mmLeft = 66146
        mmTop = 92604
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label21'
        OnGetText = ppLabel20GetText
        Border.mmPadding = 0
        Caption = 'Mashmoll Maliyat'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5842
        mmLeft = 232569
        mmTop = 52652
        mmWidth = 26162
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label22'
        OnGetText = ppLabel23GetText
        Border.mmPadding = 0
        Caption = 'Masmoll Bime'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5842
        mmLeft = 235279
        mmTop = 45508
        mmWidth = 20489
        BandType = 4
        LayerName = Foreground5
      end
      object plblWagePart: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'plblWagePart'
        OnGetText = plblWagePartGetText
        Border.mmPadding = 0
        Caption = 'plblWagePart'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        WordWrap = True
        mmHeight = 12965
        mmLeft = 31750
        mmTop = 38100
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground5
      end
      object plblDessPart: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'plblDessPart'
        OnGetText = plblDessPartGetText
        Border.mmPadding = 0
        Caption = 'plblDessPart'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        WordWrap = True
        mmHeight = 6350
        mmLeft = 31750
        mmTop = 52652
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground5
      end
      object plblWage_Decs_Part: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'plblWage_Decs_Part'
        OnGetText = plblWage_Decs_PartGetText
        Border.mmPadding = 0
        Caption = 'plblWage_Decs_Part'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        WordWrap = True
        mmHeight = 6350
        mmLeft = 28840
        mmTop = 62971
        mmWidth = 29104
        BandType = 4
        LayerName = Foreground5
      end
      object plblWagePart2: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'plblWagePart2'
        OnGetText = plblWagePart2GetText
        Border.mmPadding = 0
        Caption = 'plblWagePart'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        WordWrap = True
        mmHeight = 12965
        mmLeft = 93134
        mmTop = 41010
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground5
      end
      object plblDessPart2: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'plblDessPart2'
        OnGetText = plblDessPart2GetText
        Border.mmPadding = 0
        Caption = 'plblDessPart'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        WordWrap = True
        mmHeight = 6350
        mmLeft = 93134
        mmTop = 55563
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground5
      end
      object plblWage_Decs_Part2: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'plblWage_Decs_Part2'
        OnGetText = plblWage_Decs_Part2GetText
        Border.mmPadding = 0
        Caption = 'plblWage_Decs_Part'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        WordWrap = True
        mmHeight = 6350
        mmLeft = 90223
        mmTop = 65881
        mmWidth = 29104
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText1'
        OnGetText = ppDBText1GetText
        Border.mmPadding = 0
        DataField = 'DSW_JOB'
        DataPipeline = ppPersonels
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPersonels'
        mmHeight = 3969
        mmLeft = 43656
        mmTop = -5027
        mmWidth = 17198
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
    object ppParameterList4: TppParameterList
    end
  end
  object qryFn_WagesDecs: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'c_PersonelNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'MonthNo'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 6
      end
      item
        Name = 'ArchiveID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT * FROM  Pay.Fn_WagesDecs ( :c_PersonelNo  , :MonthNo  , :' +
        'ArchiveID  )')
    Left = 611
    Top = 288
  end
  object plnFn_WagesDecs: TppDBPipeline
    DataSource = srcFn_WagesDecs
    OpenDataSource = False
    UserName = 'plnFn_WagesDecs'
    Left = 961
    Top = 291
  end
  object srcFn_WagesDecs: TDataSource
    DataSet = qryFn_WagesDecs
    Left = 776
    Top = 280
  end
  object popTelegram: TPopupMenu
    Left = 489
    Top = 347
    object MenuItem1: TMenuItem
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
  object popSendToFile: TPopupMenu
    Left = 473
    Top = 507
    object MenuItem2: TMenuItem
      Caption = 'PNG'
      object mnuSendToFile: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'PNG'
        OnClick = mnuSendToFileClick
      end
      object MenuItem28: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'PNG'
        OnClick = mnuSendToFileClick
      end
    end
    object MenuItem29: TMenuItem
      Caption = 'JPEG'
      object MenuItem30: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'JPEG'
        OnClick = mnuSendToFileClick
      end
      object MenuItem31: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'JPEG'
        OnClick = mnuSendToFileClick
      end
    end
    object MenuItem32: TMenuItem
      Caption = 'PDF'
      object MenuItem33: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'PDF'
        OnClick = mnuSendToFileClick
      end
      object MenuItem34: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'PDF'
        OnClick = mnuSendToFileClick
      end
    end
    object MenuItem35: TMenuItem
      Caption = 'BMP'
      object MenuItem36: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'BMP'
        OnClick = mnuSendToFileClick
      end
      object MenuItem37: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'BMP'
        OnClick = mnuSendToFileClick
      end
    end
    object MenuItem38: TMenuItem
      Caption = 'GIF'
      object MenuItem39: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'GIF'
        OnClick = mnuSendToFileClick
      end
      object MenuItem40: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'GIF'
        OnClick = mnuSendToFileClick
      end
    end
    object MenuItem41: TMenuItem
      Caption = 'RTF'
      object MenuItem42: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'RTF'
        OnClick = mnuSendToFileClick
      end
      object MenuItem43: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'RTF'
        OnClick = mnuSendToFileClick
      end
    end
    object MenuItem44: TMenuItem
      Caption = 'DOC'
      object MenuItem45: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'DOC'
        OnClick = mnuSendToFileClick
      end
      object MenuItem46: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'DOC'
        OnClick = mnuSendToFileClick
      end
    end
    object MenuItem47: TMenuItem
      Caption = 'TextFile'
      object MenuItem48: TMenuItem
        Tag = 1
        Caption = #1662#1585#1587#1606#1604' '#1580#1575#1585#1610
        Hint = 'TextFile'
        OnClick = mnuSendToFileClick
      end
      object MenuItem49: TMenuItem
        Tag = 2
        Caption = #1607#1605#1607' '#1662#1585#1587#1606#1604
        Hint = 'TextFile'
        OnClick = mnuSendToFileClick
      end
    end
  end
  object qryWagesPart1: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 675
    Top = 346
    object qryWagesPart1SalaryID: TIntegerField
      FieldName = 'SalaryID'
    end
    object qryWagesPart1InfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1586#1575#1610#1575
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryWagesPart1SumPrice: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'SumPrice'
      currency = True
      Precision = 19
    end
    object qryWagesPart1InfoName_L2: TStringField
      DisplayLabel = 'WageInfoName'
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryWagesPart1calculatekind: TIntegerField
      FieldName = 'calculatekind'
      ReadOnly = True
    end
    object qryWagesPart1SalaryIDMounthRetard: TLargeintField
      FieldName = 'SalaryIDMounthRetard'
      ReadOnly = True
    end
  end
  object srcWagesPart1: TDataSource
    DataSet = qryWagesPart1
    Left = 677
    Top = 398
  end
  object qryDecsPart1: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      ''
      ''
      '')
    Left = 763
    Top = 344
    object qryDecsPart1SalaryID: TIntegerField
      FieldName = 'SalaryID'
    end
    object qryDecsPart1InfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1603#1587#1608#1585#1575#1578
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryDecsPart1SumPrice: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'SumPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryDecsPart1LoanRemain: TBCDField
      FieldName = 'LoanRemain'
      Precision = 19
    end
    object qryDecsPart1FunctionID: TIntegerField
      FieldName = 'FunctionID'
    end
    object qryDecsPart1InfoName_L2: TStringField
      DisplayLabel = 'DecInfoName'
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryDecsPart1calculatekind: TWordField
      FieldName = 'calculatekind'
    end
    object qryDecsPart1_LoanRemain: TCurrencyField
      DisplayLabel = #1605#1575#1606#1583#1607
      FieldKind = fkLookup
      FieldName = '_LoanRemain'
      LookupDataSet = qryLoan
      LookupKeyFields = 'FunctionID;calculatekind;SalaryID'
      LookupResultField = 'RemainLoan'
      KeyFields = 'FunctionID;calculatekind;SalaryID'
      Lookup = True
    end
  end
  object srcDecsPart1: TDataSource
    DataSet = qryDecsPart1
    Left = 767
    Top = 399
  end
  object plnWagesPart1: TppDBPipeline
    DataSource = srcWagesPart1
    OpenDataSource = False
    UserName = 'plnWagesPart1'
    Left = 681
    Top = 443
    MasterDataPipelineName = 'ppPersonels'
    object ppField16: TppField
      FieldAlias = '_radif'
      FieldName = '_radif'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppField17: TppField
      FieldAlias = 'SalaryID'
      FieldName = 'SalaryID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppField18: TppField
      FieldAlias = 'InfoName_L1'
      FieldName = 'InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppField19: TppField
      FieldAlias = 'SumPrice'
      FieldName = 'SumPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppField20: TppField
      FieldAlias = 'InfoName_L2'
      FieldName = 'InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppField21: TppField
      FieldAlias = 'calculatekind'
      FieldName = 'calculatekind'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppField22: TppField
      FieldAlias = 'SalaryIDMounthRetard'
      FieldName = 'SalaryIDMounthRetard'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
  end
  object plnDecsPart1: TppDBPipeline
    DataSource = srcDecsPart1
    OpenDataSource = False
    UserName = 'plnDecsPart1'
    Left = 769
    Top = 451
    object ppField23: TppField
      FieldAlias = '_radif'
      FieldName = '_radif'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppField24: TppField
      FieldAlias = 'SalaryID'
      FieldName = 'SalaryID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppField25: TppField
      FieldAlias = 'InfoName_L1'
      FieldName = 'InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppField26: TppField
      FieldAlias = 'SumPrice'
      FieldName = 'SumPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppField27: TppField
      FieldAlias = 'InfoName_L2'
      FieldName = 'InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppField28: TppField
      FieldAlias = 'calculatekind'
      FieldName = 'calculatekind'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppField29: TppField
      FieldAlias = 'SalaryIDMounthRetard'
      FieldName = 'SalaryIDMounthRetard'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
  end
  object qryWagesPart2: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 851
    Top = 346
    object qryWagesPart2SalaryID: TIntegerField
      FieldName = 'SalaryID'
    end
    object qryWagesPart2InfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1586#1575#1610#1575
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryWagesPart2SumPrice: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'SumPrice'
      currency = True
      Precision = 19
    end
    object qryWagesPart2InfoName_L2: TStringField
      DisplayLabel = 'WageInfoName'
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryWagesPart2calculatekind: TIntegerField
      FieldName = 'calculatekind'
      ReadOnly = True
    end
    object qryWagesPart2SalaryIDMounthRetard: TLargeintField
      FieldName = 'SalaryIDMounthRetard'
      ReadOnly = True
    end
  end
  object qryDecsPart2: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      ''
      ''
      '')
    Left = 939
    Top = 344
    object qryDecsPart2SalaryID: TIntegerField
      FieldName = 'SalaryID'
    end
    object qryDecsPart2InfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1603#1587#1608#1585#1575#1578
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryDecsPart2SumPrice: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'SumPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryDecsPart2LoanRemain: TBCDField
      FieldName = 'LoanRemain'
      Precision = 19
    end
    object qryDecsPart2FunctionID: TIntegerField
      FieldName = 'FunctionID'
    end
    object qryDecsPart2InfoName_L2: TStringField
      DisplayLabel = 'DecInfoName'
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryDecsPart2calculatekind: TWordField
      FieldName = 'calculatekind'
    end
    object qryDecsPart2_LoanRemain: TCurrencyField
      DisplayLabel = #1605#1575#1606#1583#1607
      FieldKind = fkLookup
      FieldName = '_LoanRemain'
      LookupDataSet = qryLoan
      LookupKeyFields = 'FunctionID;calculatekind;SalaryID'
      LookupResultField = 'RemainLoan'
      KeyFields = 'FunctionID;calculatekind;SalaryID'
      Lookup = True
    end
  end
  object srcWagesPart2: TDataSource
    DataSet = qryWagesPart2
    Left = 853
    Top = 398
  end
  object srcDecsPart2: TDataSource
    DataSet = qryDecsPart2
    Left = 943
    Top = 399
  end
  object plnWagesPart2: TppDBPipeline
    DataSource = srcWagesPart2
    OpenDataSource = False
    UserName = 'plnWagesPart2'
    Left = 857
    Top = 443
    object ppField30: TppField
      FieldAlias = '_radif'
      FieldName = '_radif'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppField31: TppField
      FieldAlias = 'SalaryID'
      FieldName = 'SalaryID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppField32: TppField
      FieldAlias = 'InfoName_L1'
      FieldName = 'InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppField33: TppField
      FieldAlias = 'SumPrice'
      FieldName = 'SumPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppField34: TppField
      FieldAlias = 'InfoName_L2'
      FieldName = 'InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppField35: TppField
      FieldAlias = 'calculatekind'
      FieldName = 'calculatekind'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppField36: TppField
      FieldAlias = 'SalaryIDMounthRetard'
      FieldName = 'SalaryIDMounthRetard'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
  end
  object plnDecsPart2: TppDBPipeline
    DataSource = srcDecsPart2
    OpenDataSource = False
    UserName = 'plnDecsPart2'
    Left = 921
    Top = 483
    object ppField37: TppField
      FieldAlias = '_radif'
      FieldName = '_radif'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppField38: TppField
      FieldAlias = 'SalaryID'
      FieldName = 'SalaryID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppField39: TppField
      FieldAlias = 'InfoName_L1'
      FieldName = 'InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppField40: TppField
      FieldAlias = 'SumPrice'
      FieldName = 'SumPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppField41: TppField
      FieldAlias = 'InfoName_L2'
      FieldName = 'InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppField42: TppField
      FieldAlias = 'calculatekind'
      FieldName = 'calculatekind'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppField43: TppField
      FieldAlias = 'SalaryIDMounthRetard'
      FieldName = 'SalaryIDMounthRetard'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
  end
  object popSendToServer: TPopupMenu
    Left = 145
    Top = 403
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
