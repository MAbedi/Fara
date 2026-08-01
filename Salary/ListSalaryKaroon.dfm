inherited ListSalaryKaroonF: TListSalaryKaroonF
  Left = 408
  Top = 136
  ActiveControl = DBGrid1
  Caption = #1601#1610#1588' '#1581#1602#1608#1602' '#1582#1575#1589
  ClientHeight = 561
  ClientWidth = 1048
  OnResize = FormResize
  ExplicitWidth = 1056
  ExplicitHeight = 592
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 520
    Width = 1048
    ExplicitTop = 521
    ExplicitWidth = 1052
    inherited BtnReject: TBitBtn
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 972
      Top = 9
      Width = 75
      Height = 24
      Action = actFilter
      Anchors = [akTop, akRight]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 177
      Top = 8
      Width = 75
      Height = 24
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 1
    end
    object btnPrint: TBitBtn
      Left = 815
      Top = 9
      Width = 75
      Height = 24
      Action = actPrint
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662' '
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
      Left = 894
      Top = 9
      Width = 75
      Height = 24
      Action = actShowFunctionItemsF
      Anchors = [akTop, akRight]
      Caption = #1603#1575#1585#1603#1585#1583
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      Left = 96
      Top = 8
      Width = 75
      Height = 24
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 5
    end
    object btnOtherMenu: TBitBtn
      Left = 257
      Top = 8
      Width = 25
      Height = 25
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
      OnClick = btnOtherMenuClick
    end
    object BitBtn3: TBitBtn
      Left = 737
      Top = 9
      Width = 75
      Height = 24
      Action = actEmail
      Anchors = [akTop, akRight]
      Caption = 'Email'
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
    Width = 1048
    ExplicitWidth = 1052
    inherited ImgTemplate: TImage
      Left = 1014
      ExplicitLeft = 739
    end
    inherited lblCaption: TLabel
      Left = 898
      Width = 108
      Height = 16
      Caption = #1601#1610#1588' '#1581#1602#1608#1602' '#1582#1575#1589
      ExplicitLeft = 898
      ExplicitWidth = 108
    end
  end
  inherited Panel3: TPanel
    Width = 1048
    Height = 467
    ExplicitWidth = 1052
    ExplicitHeight = 468
    object ToolBar1: TToolBar
      Left = 2
      Top = 2
      Width = 1048
      Height = 34
      BorderWidth = 2
      ButtonHeight = 21
      ButtonWidth = 54
      Caption = 'ToolBar1'
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      EdgeInner = esLowered
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
      Left = 815
      Top = 36
      Width = 235
      Height = 411
      Align = alRight
      BevelInner = bvLowered
      BevelOuter = bvSpace
      TabOrder = 1
      object Label1: TLabel
        Left = 2
        Top = 2
        Width = 63
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = #1604#1610#1587#1578' '#1662#1585#1587#1606#1604
        Color = 12582911
        ParentColor = False
        Transparent = False
        Layout = tlCenter
      end
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 231
        Height = 321
        Align = alClient
        Color = clCream
        DataSource = srcPersonels
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'PersonelNo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Personel_L1'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Personel_L2'
            Width = 57
            Visible = True
          end>
      end
      object Panel6: TPanel
        Left = 2
        Top = 336
        Width = 231
        Height = 73
        Align = alBottom
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 1
        DesignSize = (
          231
          73)
        object lblColor2: TLabel
          Tag = 2
          Left = 217
          Top = 20
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
          Transparent = False
          OnClick = lblColor1Click
        end
        object lblColor1: TLabel
          Tag = 1
          Left = 217
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
          Transparent = False
          OnClick = lblColor1Click
        end
        object lblNotHasFunction: TLabel
          Left = 162
          Top = 20
          Width = 51
          Height = 13
          Caption = #1603#1575#1585#1603#1585#1583' '#1606#1583#1575#1585#1583
        end
        object lblHasFunction: TLabel
          Left = 166
          Top = 6
          Width = 47
          Height = 13
          Caption = #1603#1575#1585#1603#1585#1583' '#1583#1575#1585#1583
        end
        object Label7: TLabel
          Left = 3
          Top = 20
          Width = 52
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = #1662#1575#1610#1575#1606' '#1602#1585#1575#1585#1583#1575#1583
        end
        object LblEndDate: TLabel
          Left = 3
          Top = 6
          Width = 45
          Height = 13
          Anchors = [akLeft, akBottom]
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
          Transparent = False
        end
        object ChkHasFunction: TCheckBox
          Left = 61
          Top = 35
          Width = 197
          Height = 17
          Alignment = taLeftJustify
          Caption = #1662#1585#1587#1606#1604' '#1607#1575#1610' '#1576#1583#1608#1606' '#1603#1575#1585#1603#1585#1583' '#1606#1605#1575#1610#1588' '#1606#1588#1608#1606#1583'.'#8207
          TabOrder = 0
          OnClick = ChkHasFunctionClick
        end
        object ChkEndDate: TCheckBox
          Left = 7
          Top = 50
          Width = 255
          Height = 17
          Alignment = taLeftJustify
          Caption = #1662#1585#1587#1606#1604#8207#1607#1575#1610#8207#1603#1607#8207#1602#1585#1575#1585#1583#1575#1583#1588#1575#1606#8207#1662#1575#1610#1575#1606' '#1585#1587#1610#1583#1607#1548#1606#1605#1575#1610#1588#8207#1606#1588#1608#1606#1583'.'#8207
          TabOrder = 1
          OnClick = ChkEndDateClick
        end
      end
    end
    object StatusBar1: TStatusBar
      Left = 2
      Top = 446
      Width = 1044
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
      ExplicitTop = 447
      ExplicitWidth = 1048
    end
    object Panel4: TPanel
      Left = 2
      Top = 36
      Width = 809
      Height = 410
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 3
      ExplicitWidth = 813
      ExplicitHeight = 411
      object Panel5: TPanel
        Left = 576
        Top = 2
        Width = 235
        Height = 334
        Align = alRight
        TabOrder = 0
        object Label11: TLabel
          Left = 1
          Top = 1
          Width = 56
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = #1585#1608#1586'/'#1587#1575#1593#1578
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
          OnDblClick = actShowFunctionItemsFExecute
        end
        object grdFunctionItems: TDBGrid
          Left = 1
          Top = 14
          Width = 233
          Height = 243
          Align = alClient
          Color = 15461355
          DataSource = srcFunctionsItem
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
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
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FDaily'
              Width = 31
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FHours'
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FHoursT'
              Width = 37
              Visible = True
            end>
        end
        object edtEmail: TDBEdit
          Left = 1
          Top = 257
          Width = 233
          Height = 21
          TabStop = False
          Align = alBottom
          Color = 15329769
          Ctl3D = True
          DataField = 'Email'
          DataSource = srcPersonels
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
          OnDblClick = actShowFunctionItemsFExecute
        end
        object rdgrpEmail: TRadioGroup
          Left = 1
          Top = 278
          Width = 233
          Height = 55
          Align = alBottom
          Caption = #1601#1610#1604#1578#1585' '#1576#1585' '#1581#1587#1576' '#1575#1610#1605#1610#1604' '#1662#1585#1587#1606#1604
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            #1607#1600#1600#1600#1600#1600#1605#1600#1600#1600#1600#1600#1607' '#1662#1585#1587#1606#1604
            #1662#1585#1587#1606#1604' '#1583#1575#1585#1610' '#1575#1610#1605#1610#1604
            #1662#1585#1587#1606#1604' '#1576#1583#1608#1606' '#1575#1610#1605#1610#1604)
          TabOrder = 2
          OnClick = rdgrpEmailClick
        end
      end
      object Panel7: TPanel
        Left = 341
        Top = 2
        Width = 235
        Height = 334
        Align = alRight
        TabOrder = 1
        object Label12: TLabel
          Left = 1
          Top = 1
          Width = 22
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = #1605#1576#1604#1594
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
        end
        object Splitter1: TSplitter
          Left = 1
          Top = 330
          Width = 233
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          ExplicitLeft = -34
          ExplicitTop = 248
          ExplicitWidth = 253
        end
        object grdWages: TDBGrid
          Left = 1
          Top = 14
          Width = 233
          Height = 289
          Align = alClient
          Color = clCream
          DataSource = srcWages
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = grdWagesDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = '_radif'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'InfoName_L1'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InfoName_L2'
              Width = 1
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SumPrice'
              Width = 80
              Visible = True
            end>
        end
        object Panel8: TPanel
          Left = 1
          Top = 303
          Width = 233
          Height = 27
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            233
            27)
          object SpeedButton1: TSpeedButton
            Left = 206
            Top = 2
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = 'Xls'
            OnClick = SpeedButton1Click
            ExplicitLeft = 226
          end
        end
      end
      object Panel9: TPanel
        Left = 2
        Top = 335
        Width = 805
        Height = 73
        Align = alBottom
        TabOrder = 2
        ExplicitTop = 336
        ExplicitWidth = 809
        DesignSize = (
          805
          73)
        object Label16: TLabel
          Left = 38
          Top = 32
          Width = 80
          Height = 13
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          Caption = #1582#1575#1604#1589' '#1662#1585#1583#1575#1582#1578#1610
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 716
          Top = 7
          Width = 77
          Height = 13
          Alignment = taRightJustify
          Anchors = [akRight, akBottom]
          Caption = #1584#1582#1740#1585#1607' '#1605#1585#1582#1589#1740
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 720
        end
        object Label5: TLabel
          Left = 719
          Top = 32
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Anchors = [akRight, akBottom]
          Caption = #1606#1575#1582#1575#1604#1589
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 723
        end
        object Label6: TLabel
          Left = 573
          Top = 32
          Width = 69
          Height = 13
          Alignment = taRightJustify
          Anchors = [akRight, akBottom]
          Caption = #1580#1605#1593' '#1705#1587#1608#1585#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 577
        end
        object Label8: TLabel
          Left = 272
          Top = 8
          Width = 86
          Height = 13
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          Caption = #1580#1605#1593' '#1591#1604#1576'/'#1576#1583#1607#1740
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 173
          Top = 32
          Width = 66
          Height = 13
          Alignment = taRightJustify
          Anchors = [akLeft, akBottom]
          Caption = #1582#1575#1604#1589' '#1576#1583#1607#1740
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblAlphabet: TLabel
          Left = 282
          Top = 53
          Width = 70
          Height = 14
          Anchors = [akLeft, akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = 'lblAlphabet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
        end
        object txtTotalDecs: TEdit
          Left = 534
          Top = 48
          Width = 130
          Height = 21
          TabStop = False
          Anchors = [akRight, akBottom]
          Color = 14024703
          ReadOnly = True
          TabOrder = 0
          ExplicitLeft = 538
        end
        object EdtPayable: TEdit
          Left = 4
          Top = 48
          Width = 130
          Height = 21
          TabStop = False
          Anchors = [akLeft, akBottom]
          Color = 14155735
          ReadOnly = True
          TabOrder = 1
        end
        object txtTotalWage: TEdit
          Left = 672
          Top = 48
          Width = 130
          Height = 21
          TabStop = False
          Anchors = [akRight, akBottom]
          Color = 14155735
          ReadOnly = True
          TabOrder = 2
          ExplicitLeft = 676
        end
        object edtBes: TEdit
          Left = 137
          Top = 6
          Width = 130
          Height = 21
          TabStop = False
          Anchors = [akLeft, akBottom]
          Color = 14155735
          ReadOnly = True
          TabOrder = 3
        end
        object edtBed: TEdit
          Left = 4
          Top = 5
          Width = 130
          Height = 21
          TabStop = False
          Anchors = [akLeft, akBottom]
          Color = 14155735
          ReadOnly = True
          TabOrder = 4
        end
        object edtPureBed: TEdit
          Left = 146
          Top = 48
          Width = 130
          Height = 21
          TabStop = False
          Anchors = [akLeft, akBottom]
          Color = 14155735
          ReadOnly = True
          TabOrder = 5
        end
        object edtVacation: TDBEdit
          Left = 592
          Top = 5
          Width = 121
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'RemainDay'
          DataSource = srcRemainVacation
          TabOrder = 6
          ExplicitLeft = 596
        end
        object edtBankAccount: TDBEdit
          Left = 364
          Top = 6
          Width = 222
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          DataField = 'AccountInfo'
          DataSource = srcPersonels
          TabOrder = 7
          ExplicitWidth = 226
        end
      end
      object pnlDecs: TPanel
        Left = 102
        Top = 2
        Width = 235
        Height = 333
        Align = alRight
        Caption = 'pnlDecs'
        TabOrder = 3
        ExplicitLeft = 106
        ExplicitHeight = 334
        object Label14: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 191
          Width = 60
          Height = 13
          Align = alBottom
          Alignment = taCenter
          Caption = #1605#1575#1606#1583#1607' '#1608#1575#1605#8207#1607#1575
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object Label2: TLabel
          Left = 1
          Top = 1
          Width = 53
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = #1603#1587#1600#1600#1600#1608#1585#1575#1578
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
        end
        object grdDecs: TDBGrid
          Left = 1
          Top = 14
          Width = 233
          Height = 174
          Align = alClient
          Color = clCream
          DataSource = srcDecs
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = grdWagesDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = '_radif'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'InfoName_L1'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InfoName_L2'
              Width = 1
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SumPrice'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_LoanRemain'
              Visible = False
            end>
        end
        object grdLoan: TDBGrid
          AlignWithMargins = True
          Left = 4
          Top = 210
          Width = 227
          Height = 120
          Align = alBottom
          DataSource = srcLoan
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = grdWagesDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'InfoName_L1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LoanRemain'
              Width = 76
              Visible = True
            end>
        end
      end
      object pnlDebitCredit: TPanel
        Left = 2
        Top = 2
        Width = 100
        Height = 333
        Align = alClient
        TabOrder = 4
        ExplicitWidth = 104
        ExplicitHeight = 334
        object Label3: TLabel
          Left = 1
          Top = 1
          Width = 61
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = #1591#1604#1576'/'#1576#1583#1607#1740
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
        end
        object grdDebitCredit: TDBGrid
          Left = 1
          Top = 14
          Width = 102
          Height = 319
          Align = alClient
          DataSource = srcOtherDecWage
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = grdWagesDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'SalaryID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ColumnsName'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Bes'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Bed'
              Visible = True
            end>
        end
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
    Left = 176
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
      Caption = 'Email'
      OnExecute = actEmailExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 216
  end
  object srcPersonels: TDataSource
    DataSet = qryPersonels
    Left = 976
    Top = 181
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
        Name = 'MonthNo1'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelNo1'
        DataType = ftInteger
        Size = 1
        Value = 0
      end
      item
        Name = 'MonthNo2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelNo3'
        DataType = ftInteger
        Size = 1
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT FF.SalaryID,ColumnsName InfoName_L1, InfoName_L2, FDaily,' +
        'FHours, RemainDayDec, FHoursT'
      
        'FROM (SELECT    FI.SalaryID, FInfo.InfoName_L2, SUM(FI.FDaily) A' +
        'S FDaily,  SUM(FI.FHours) AS FHours ,'#39' '#39' AS  RemainDayDec'
      ''
      
        ',CASE WHEN SUM(FI.FHours)=0 THEN '#39#39' ELSE LTRIM(STR(FLOOR(SUM(FI.' +
        'FHours)))) + '#39':'#39' + LTRIM(STR(ROUND(ROUND(SUM(FI.FHours) '
      
        '                         - FLOOR(SUM(FI.FHours)), 2) / 100 * 60,' +
        ' 2) * 100)) END AS FHoursT'
      ''
      'FROM Pay.Functions F INNER JOIN'
      
        '                      Pay.FunctionsItems FI ON F.FunctionID = FI' +
        '.FunctionID INNER JOIN'
      
        '                     Pay.FormsInfo FInfo ON FI.SalaryID = FInfo.' +
        'FormInfoID'
      'WHERE     (F.Mounth = :MonthNo) AND (F.PersonelNo = :PersonelNo)'
      'GROUP BY FI.SalaryID, FInfo.InfoName_L2'
      ''
      'UNION ALL'
      ' '
      
        'SELECT SalaryID,InfoName_L2,RemainDay ,0.0 as FHours, Pay.Remain' +
        'DayDec(RemainDay) AS RemainDayDec, Pay.RemainDayDec(RemainDay) A' +
        'S FHoursT '
      
        'FROM Pay.GETOffTimeInFish(  :Mounth, :InfoIDFrom, :InfoIDTo, :Pe' +
        'rsonelNo2  , 5 )'
      'UNION ALL'
      'SELECT -99,'#39'-99'#39',SUM(SickDay),0,'#39' '#39','#39'0'#39
      
        'FROM Pay.Functions F WHERE   (F.Mounth = :MonthNo1) AND (F.Perso' +
        'nelNo = :PersonelNo1)'
      'UNION ALL'
      
        'SELECT -98,'#39' -98'#39', FunctionDay, FunctionTime,'#39' '#39','#39'0'#39' FROM  Pay.F' +
        'unctions F WHERE   (F.Mounth = :MonthNo2) AND (F.PersonelNo = :P' +
        'ersonelNo3)'
      '@InterdictItem4ListSalary ) FF RIGHT OUTER JOIN  '
      ' '
      
        '(SELECT ColumnsSalaryID SalaryID,ColumnsName,ColumnsID FROM Pay.' +
        'GetRptColumns WHERE (GetReprotsID = 1) AND (Kind = 1)) SS ON SS.' +
        'SalaryID = FF.SalaryID '
      'ORDER BY SS.ColumnsID  ')
    Left = 760
    Top = 149
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
  end
  object srcFunctionsItem: TDataSource
    DataSet = qryFunctionsItem
    Left = 688
    Top = 155
  end
  object srcWages: TDataSource
    DataSet = qryWages
    Left = 413
    Top = 246
  end
  object srcDecs: TDataSource
    DataSet = qryDecs
    Left = 287
    Top = 167
  end
  object qryWages: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryWagesAfterOpen
    AfterScroll = qryWagesAfterScroll
    OnCalcFields = qryWagesCalcFields
    Parameters = <
      item
        Name = 'MonthNo'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
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
        Name = 'Month4'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'c_PersonelNo4'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'InterdictID4'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT SS.SalaryID, ColumnsName InfoName_L1,InfoName_L2,SumPrice' +
        ',SalaryIDMounthRetard,calculatekind'
      'FROM (SELECT     FC.SalaryID, '
      
        '       SUM(FC.Price) AS SumPrice, FInfo.InfoName_L2,0 as calcula' +
        'tekind,'
      
        'cast(FC.SalaryID AS bigint) * 10000 + cast(FC.MounthRetard  AS b' +
        'igint) AS SalaryIDMounthRetard'
      ''
      'FROM Pay.FixedCalculated  FC LEFT OUTER JOIN'
      
        '                    Pay.FormsInfo FInfo ON FC.SalaryID = FC.Form' +
        'InfoID'
      'WHERE     (FC.Mounth = :MonthNo)'
      'AND (FC.ShowListKind = 1)'
      'AND (FC.PersonelNO = :c_PersonelNo)'
      'AND (FC.ArchiveID = :ArchiveID)'
      
        'GROUP BY FC.SalaryID, FInfo.InfoName_L1, FInfo.InfoName_L2, FC.M' +
        'ounthRetard,Mounth'
      ' '
      'UNION ALL'
      ''
      
        'SELECT -98, (SELECT FunctionDay FROM Pay.Functions F WHERE   (F.' +
        'Mounth = :Month4)'
      'AND (F.PersonelNo = :c_PersonelNo4))*(SELECT AmountIn30'
      
        'FROM Pay.v_InterdictItemSumSalary WHERE ( InterdictID = :Interdi' +
        'ctID4)),'#39' '#39',0,0'
      ''
      ''
      '@InitClintShare23 '
      ''
      ')FF RIGHT OUTER JOIN '
      ''
      
        '(SELECT CAST(ColumnsSalaryID AS Integer) SalaryID,ColumnsName,Co' +
        'lumnsID'
      
        'FROM Pay.GetRptColumns WHERE (GetReprotsID = 1) AND (Kind = 2)) ' +
        'SS ON SS.SalaryID = FF.SalaryID'
      'ORDER BY SS.ColumnsID  '
      '')
    Left = 411
    Top = 186
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
    LockType = ltReadOnly
    AfterOpen = qryDecsAfterOpen
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
        Name = 'c_PersonelNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
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
      
        'SELECT  FunctionID,SS.SalaryID, ColumnsName InfoName_L1, SumPric' +
        'e,LoanRemain,InfoName_L2,calculatekind, SalaryIDMounthRetard'
      'FROM    ( SELECT    FC.FunctionID , FC.SalaryID , '
      
        '                    SUM(FC.Price) AS SumPrice , SUM(FC.Price) AS' +
        ' LoanRemain , FInfo.InfoName_L2 , calculatekind , 0 AS SalaryIDM' +
        'ounthRetard'
      '          FROM Pay.FixedCalculated FC'
      
        '                    LEFT OUTER JOIN Pay.FormsInfo FInfo ON FC.Sa' +
        'laryID = FInfo.FormInfoID'
      '          WHERE     ( FC.Mounth = :MonthNo )'
      '                    AND ( ( FC.ShowListKind = 2 )'
      '                          OR ( FC.ShowListKind = 11 )'
      '                        )'
      '                    AND ( FC.PersonelNO = :c_PersonelNo )'
      '                    AND ( bedbes = 2 )'
      '                    AND ( FC.ArchiveID = :ArchiveID )'
      
        '          GROUP BY  FC.FunctionID , FC.SalaryID , ShowlistKind ,' +
        ' FInfo.InfoName_L2 , FC.MounthRetard , calculatekind'
      '@InitClintShare23        ) FF'
      
        '        RIGHT OUTER JOIN ( SELECT   CAST(ColumnsSalaryID AS Inte' +
        'ger) AS SalaryID , ColumnsName , ColumnsID'
      '                           FROM Pay.GetRptColumns'
      '                           WHERE   ( GetReprotsID = 1 )'
      '                               AND ( Kind = 3 )'
      '                         ) SS ON SS.SalaryID = FF.SalaryID'
      'ORDER BY SS.ColumnsID'
      '')
    Left = 243
    Top = 160
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
      LookupKeyFields = 'FunctionID;calculatekind;SalaryID'
      LookupResultField = 'RemainLoan'
      KeyFields = 'FunctionID;calculatekind;SalaryID'
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
  end
  object qryPersonels: TADOQuery
    AutoCalcFields = False
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryPersonelsAfterOpen
    AfterScroll = qryPersonelsAfterScroll
    Parameters = <
      item
        Name = 'MonthNo'
        DataType = ftString
        Size = 2
        Value = '0'
      end
      item
        Name = 'Email'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonelState'
        Size = -1
        Value = Null
      end
      item
        Name = 'pidFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'pidTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ProjectIDFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ProjectIDTo'
        DataType = ftWideString
        Size = 9
        Value = '999999999'
      end
      item
        Name = 'YearMounth'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearMounth1'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'OfficeCodeFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'OfficeCodeTo'
        DataType = ftString
        Size = 4
        Value = '0'
      end
      item
        Name = 'FunctionUsed'
        DataType = ftString
        Size = 2
        Value = '-1'
      end>
    SQL.Strings = (
      
        'SELECT     PersonelInfo.PersonelNo, PersonelInfo.name_L1 + '#39'  '#39' ' +
        '+ PersonelInfo.lastName_L1 AS Personel_L1,'
      
        '                      PersonelInfo.lastName_L2 + '#39'  '#39' + Personel' +
        'Info.name_L2 AS Personel_L2, FormsInfo.InfoID, FormsInfo.InfoNam' +
        'e_L1 AS StateName, Interdicts.jobCode, '
      
        '                      ISNULL(FunctionUsed.PersonelNo, 0) AS HasF' +
        'unction, Interdicts.OfficeCode, PersonelInfo.AccountNumber, Pers' +
        'onelInfo.InsuranceNumber,'
      
        '                      FormsInfo_1OfficeCode.InfoName_L1 AS Offic' +
        'eName_l1, FormsInfo_1OfficeCode.InfoName_L2 AS OfficeName_l2,'
      
        '                      FormsInfo_1OfficeCode.InfoID AS OfficeCode' +
        'ID, FormsInfo_EmployTypeID.InfoName_L1 AS EmployTypeName, Person' +
        'elInfo.fatherName_L1,'
      
        '                      FormsInfo_Marriage.InfoName_L1 AS Marriage' +
        'Name, FormsInfo_childNumber.InfoName_L1 AS childNumber'
      
        '                     ,PersonelInfo.CreditCardNo, isnull(Pay.Inte' +
        'rdictItems2Amounts(PersonelInfo.PersonelNo),0)  as InterdictItem' +
        's2Amount,'
      
        '                     Interdicts.InterdicEndDate ,FormsInfo_Speci' +
        'alState.InfoName_L1 AS SpecialStateName'
      
        '                     ,FormsInfograde.InfoName_L1 as Personelgrad' +
        'e ,Interdicts.InterdictID, FormsInfo_jobCode.InfoID JobCode, For' +
        'msInfo_jobCode.InfoName_L1 AS jobName'
      
        '                     , FormsInfo_Project.InfoName_L1 AS ProjectN' +
        'ame,  PersonelInfo.NationalID, PersonelInfo.IDNumber,PersonelInf' +
        'o.Email,'
      
        '                     BankName +'#39#9#9#39'+Branch +'#39#9#9#39'+AccountNumber A' +
        'ccountInfo'
      ''
      ''
      'FROM Pay.PersonelInfo INNER JOIN'
      
        '                      Pay.FormsInfo ON PersonelInfo.PersonelStat' +
        'e = FormsInfo.FormInfoID INNER JOIN'
      
        '                      Pay.Interdicts ON PersonelInfo.PersonelNo ' +
        '= Interdicts.PersonelNo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo FormsInfo_1OfficeCode ON Int' +
        'erdicts.OfficeCode = FormsInfo_1OfficeCode.FormInfoID LEFT OUTER' +
        ' JOIN'
      
        '                      Pay.FormsInfo FormsInfo_EmployTypeID ON In' +
        'terdicts.EmployTypeID = FormsInfo_EmployTypeID.FormInfoID LEFT O' +
        'UTER JOIN'
      
        '                      Pay.FormsInfo FormsInfo_Marriage ON Person' +
        'elInfo.marriage = FormsInfo_Marriage.FormInfoID LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo FormsInfo_childNumber ON Per' +
        'sonelInfo.childNumber = FormsInfo_childNumber.FormInfoID LEFT OU' +
        'TER JOIN'
      
        '      (SELECT     PersonelNo  FROM Pay.Functions  WHERE     (Mou' +
        'nth = :MonthNo)'
      
        '        GROUP BY PersonelNo) FunctionUsed ON PersonelInfo.Person' +
        'elNo = FunctionUsed.PersonelNo'
      ''
      
        'LEFT OUTER JOIN   Pay.FormsInfo FormsInfo_SpecialState ON Person' +
        'elInfo.SpecialState = FormsInfo_SpecialState.FormInfoID'
      
        'LEFT OUTER JOIN Pay.FormsInfo AS FormsInfograde ON Pay.Interdict' +
        's.grade = FormsInfograde.FormInfoID'
      
        'LEFT OUTER JOIN Pay.FormsInfo FormsInfo_jobCode ON Pay.Interdict' +
        's.jobCode = FormsInfo_jobCode.FormInfoID'
      
        'LEFT OUTER JOIN Pay.FormsInfo AS FormsInfo_Project ON Pay.Interd' +
        'icts.ProjectID = FormsInfo_Project.FormInfoID'
      
        'LEFT OUTER JOIN (SELECT FormInfoID,InfoName_L1 BankName FROM Pay' +
        '.FormsInfo WHERE FormType = 7) Banks ON Banks.FormInfoID = Pay.P' +
        'ersonelInfo.BankCode'
      
        'LEFT OUTER JOIN (SELECT FormInfoID, InfoName_L1 Branch FROM Pay.' +
        'FormsInfo WHERE FormType = 84) Branch ON Branch.FormInfoID = Per' +
        'sonelInfo.BranchInfo'
      ''
      ''
      'WHERE   :Email :PersonelState'
      ' (PersonelInfo.PersonelNo BETWEEN :pidFrom AND :pidTo) '
      ''
      
        'AND ( ( Interdicts.ProjectID  BETWEEN :ProjectIDFrom AND :Projec' +
        'tIDTo) OR   Interdicts.ProjectID  =0)'
      ''
      ''
      'AND (LEFT(Interdicts.InterdicStartDate,7)<= :YearMounth )  AND'
      #9#9'(LEFT(Interdicts.InterdicEndDate, 7) >= :YearMounth1 )'
      ''
      '  '
      
        '  and  (FormsInfo_1OfficeCode.InfoID BETWEEN :OfficeCodeFrom AND' +
        ' :OfficeCodeTo)'
      '  AND (ISNULL(FunctionUsed.PersonelNo, 0) > :FunctionUsed)'
      'ORDER BY PersonelInfo.PersonelNo'
      ' '
      ' ')
    Left = 904
    Top = 195
    object qryPersonelsPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNo'
    end
    object qryPersonelsPersonel_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1585#1587#1606#1604
      FieldName = 'Personel_L1'
      ReadOnly = True
      Size = 57
    end
    object qryPersonelsPersonel_L2: TStringField
      DisplayLabel = 'PersonelName'
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
    object qryPersonelsStateName: TStringField
      FieldName = 'StateName'
      Size = 255
    end
    object qryPersonelsOfficeCodeID: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1740
      FieldName = 'OfficeCodeID'
    end
    object qryPersonelsEmployTypeName: TStringField
      FieldName = 'EmployTypeName'
      Size = 255
    end
    object qryPersonelsfatherName_L1: TStringField
      FieldName = 'fatherName_L1'
      Size = 25
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
      currency = True
      Precision = 19
    end
    object qryPersonelsInterdicEndDate: TStringField
      FieldName = 'InterdicEndDate'
      FixedChar = True
      Size = 10
    end
    object qryPersonelsSpecialStateName: TStringField
      DisplayLabel = #1608#1590#1593#1610#1578' '#1608#1610#1688#1607
      FieldName = 'SpecialStateName'
      Size = 255
    end
    object qryPersonelsPersonelgrade: TStringField
      FieldName = 'Personelgrade'
      Size = 150
    end
    object qryPersonelsInterdictID: TIntegerField
      FieldName = 'InterdictID'
    end
    object qryPersonelsjobName: TStringField
      FieldName = 'jobName'
      Size = 500
    end
    object qryPersonelsOfficeName_l2: TStringField
      FieldName = 'OfficeName_l2'
      Size = 255
    end
    object qryPersonelsProjectName: TStringField
      FieldName = 'ProjectName'
      Size = 255
    end
    object qryPersonelsNationalID: TStringField
      Tag = 3
      FieldName = 'NationalID'
      Size = 12
    end
    object qryPersonelsIDNumber: TStringField
      Tag = 3
      FieldName = 'IDNumber'
      Required = True
      Size = 12
    end
    object qryPersonelsEmail: TWideStringField
      FieldName = 'Email'
      Size = 100
    end
    object qryPersonelsjobCode: TIntegerField
      FieldName = 'jobCode'
    end
    object qryPersonelsAccountInfo: TStringField
      FieldName = 'AccountInfo'
      ReadOnly = True
      Size = 544
    end
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
    Left = 680
    Top = 237
    object qryPayable_DeletePrice: TBCDField
      FieldName = 'Price'
      currency = True
      Precision = 19
    end
  end
  object srcPayable_Delete: TDataSource
    DataSet = qryPayable_Delete
    Left = 488
    Top = 157
  end
  object qryLoan: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    DataSource = srcPersonels
    Parameters = <
      item
        Name = 'PersonelNoFrom1'
        DataType = ftInteger
        Size = 1
        Value = 0
      end
      item
        Name = 'PersonelNoTo1'
        DataType = ftInteger
        Size = 1
        Value = 0
      end
      item
        Name = 'Month'
        DataType = ftInteger
        Size = 1
        Value = 0
      end
      item
        Name = 'PersonelNoFrom2'
        DataType = ftInteger
        Size = 1
        Value = 0
      end
      item
        Name = 'PersonelNoTo2'
        DataType = ftInteger
        Size = 1
        Value = 0
      end
      item
        Name = 'Month2'
        DataType = ftInteger
        Size = 1
        Value = 0
      end
      item
        Name = 'PersonelNoFrom3'
        DataType = ftInteger
        Size = 1
        Value = 0
      end
      item
        Name = 'PersonelNoTo3'
        DataType = ftInteger
        Size = 1
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * FROM('
      ''
      
        'SELECT      PersonelDecExt.FormInfoID AS SalaryID,PersonelDecExt' +
        '.DecExtID AS FunctionID, PersonelDecExt.FormInfoID, PersonelDecE' +
        'xt.PersonelNo, '
      
        '                      PersonelDecExt.EmployerAmount - PersonelDe' +
        'cExt.PaymentLoan - ISNULL(PaymentLoan.Price, 0) AS RemainLoan , ' +
        'FormTypes.SalaryKind as   calculatekind'
      'FROM Pay.FormsInfo INNER JOIN'
      
        '                      Pay.PersonelDecExt ON FormsInfo.FormInfoID' +
        ' = PersonelDecExt.FormInfoID INNER JOIN'
      
        '                      Pay.FormTypes ON FormsInfo.FormType = Form' +
        'Types.FormType LEFT OUTER JOIN'
      
        '                      Pay.PaymentLoan(9, :PersonelNoFrom1, :Pers' +
        'onelNoTo1, :Month  , :YearID , :Years ) PaymentLoan ON PersonelD' +
        'ecExt.DecExtID = PaymentLoan.FunctionID'
      'WHERE     (FormTypes.SalaryKind IN (9, 14))'
      ''
      'union all '
      
        'SELECT      SalaryID, FunctionID, InfoID, PersonelNO, Price , ca' +
        'lculatekind'
      
        'FROM         Pay.PaymentDecExt(:PersonelNoFrom2, :PersonelNoTo2,' +
        ' :Month2 ) AS PaymentDecExt_1'
      ''
      
        ')abcd  where PersonelNo between :PersonelNoFrom3 and  :PersonelN' +
        'oTo3')
    Left = 160
    Top = 326
  end
  object PopMnuPrint: TPopupMenu
    Left = 873
    Top = 371
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
  object qryWages2: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
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
        Name = 'SalaryIDMounthRetard'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     Pay.FixedCalculated.SalaryID, FormsInfo.InfoName_L1 +' +
        ' CASE WHEN Mounth <> MounthRetard'
      
        'THEN  isnull('#39'('#39' + '#39#1605#1593#1608#1602#1607' '#1605#1575#1607' '#39' + LTRIM(STR(MounthRetard))+ '#39')'#39' ' +
        ' ,'#39#39')   ELSE'
      ''
      
        ' '#39#39' END AS InfoName_L1 , SUM(Pay.FixedCalculated.Price) AS SumPr' +
        'ice'
      ', Pay.FormsInfo.InfoName_L2,0 as calculatekind'
      
        ',cast( FixedCalculated.SalaryID AS bigint) * 10000 +cast( FixedC' +
        'alculated.MounthRetard AS bigint) AS SalaryIDMounthRetard'
      'FROM         Pay.FixedCalculated LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo ON Pay.FixedCalculated.Salar' +
        'yID = Pay.FormsInfo.FormInfoID'
      'WHERE     (Pay.FixedCalculated.Mounth = :MonthNo)'
      'AND (Pay.FixedCalculated.ShowListKind = 1)'
      'AND (Pay.FixedCalculated.PersonelNO = :c_PersonelNo)'
      'AND (Pay.FixedCalculated.ArchiveID = :ArchiveID)'
      
        'AND ( cast(   FixedCalculated.SalaryID AS bigint)  * 10000 + cas' +
        't(FixedCalculated.MounthRetard  AS bigint)   > :SalaryIDMounthRe' +
        'tard )'
      ''
      
        'GROUP BY Pay.FixedCalculated.SalaryID, Pay.FormsInfo.InfoName_L1' +
        ', Pay.FormsInfo.InfoName_L2, FixedCalculated.MounthRetard,Mounth' +
        ' '
      ''
      'ORDER BY Pay.FixedCalculated.SalaryID;')
    Left = 407
    Top = 136
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
    Left = 426
    Top = 325
  end
  object qryinit: TADOQuery
    Connection = DmF.adcsalary
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      #13'SELECT  LimitMounthActive  FROM Pay.FormTypes'
      'where FormType=49')
    Left = 376
    Top = 4
  end
  object PopMnuOthers: TPopupMenu
    Left = 281
    Top = 515
    object ActShowInterdict1: TMenuItem
      Action = ActShowInterdict
    end
    object N1: TMenuItem
      Action = ActPersonelInfoF
    end
  end
  object pmOtherPrint: TPopupMenu
    Left = 609
    Top = 227
    object MenuItem5: TMenuItem
      Caption = '-'
    end
    object All_Print: TMenuItem
      OnClick = All_PrintClick
    end
    object Print: TMenuItem
    end
  end
  object ppRemainVacation: TppDBPipeline
    DataSource = srcRemainVacation
    OpenDataSource = False
    UserName = 'RemainVacation'
    Left = 672
    Top = 429
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
    Left = 697
    Top = 523
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
      'GROUP BY Pay.FixedCalculated.SalaryID, Pay.FormsInfo.InfoName_L1'
      
        '                                     , Pay.FormsInfo.InfoName_L2' +
        ', FixedCalculated.MounthRetard,Mounth '
      ''
      'ORDER BY Pay.FixedCalculated.SalaryID;')
    Left = 747
    Top = 266
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
    Left = 29
    Top = 374
  end
  object srcLoan: TDataSource
    DataSet = qryLoan2
    Left = 312
    Top = 376
  end
  object qryLoan2: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'MonthNo'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
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
      end>
    SQL.Strings = (
      'SELECT  FC.SalaryID,InfoName_L1,SUM(FC.Price) AS LoanRemain '
      'FROM    Pay.FixedCalculated FC LEFT OUTER JOIN'
      '        Pay.FormsInfo FInfo ON FC.SalaryID = FInfo.FormInfoID'
      'WHERE   (FC.Mounth = :MonthNo)'
      ' AND ((FC.ShowListKind = 2) OR(FC.ShowListKind = 11))'
      'AND (FC.PersonelNO =  :c_PersonelNo)'
      'and (bedbes=2)'
      'AND (FC.ArchiveID = :ArchiveID)'
      'GROUP BY FC.SalaryID,FInfo.InfoName_L1'
      ''
      'HAVING SUM(FC.Price)>0'
      'ORDER BY FC.SalaryID;')
    Left = 216
    Top = 336
    object qryLoan2LoanRemain: TFMTBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'LoanRemain'
      currency = True
      Precision = 20
      Size = 4
    end
    object qryLoan2InfoName_L1: TStringField
      DisplayLabel = #1588#1585#1581
      FieldName = 'InfoName_L1'
      Size = 1000
    end
  end
  object qryOtherDecWage: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryOtherDecWageAfterOpen
    Parameters = <
      item
        Name = 'MonthNo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'c_PersonelNo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ArchiveID'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'MonthNo1'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'c_PersonelNo1'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ArchiveID1'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT SS.SalaryID, CASE K WHEN 1 THEN SumPrice Else 0 END AS Be' +
        's,CASE K WHEN 0 THEN SumPrice Else 0 END AS Bed,  InfoName_L2, c' +
        'alculatekind ,SalaryIDMounthRetard,  ColumnsName FROM (SELECT   ' +
        '  FC.SalaryID, '
      
        '       SUM(FC.Price) AS SumPrice, FInfo.InfoName_L2,0 as calcula' +
        'tekind,'
      
        'cast(FC.SalaryID AS bigint) * 10000 + cast(FC.MounthRetard  AS b' +
        'igint) AS SalaryIDMounthRetard, 1 K'
      ''
      'FROM Pay.FixedCalculated  FC LEFT OUTER JOIN'
      
        '                    Pay.FormsInfo FInfo ON FC.SalaryID = FC.Form' +
        'InfoID'
      'WHERE     (FC.Mounth = :MonthNo)'
      'AND (FC.ShowListKind = 1)'
      'AND (FC.PersonelNO = :c_PersonelNo)'
      'AND (FC.ArchiveID = :ArchiveID)'
      
        'GROUP BY FC.SalaryID, FInfo.InfoName_L1, FInfo.InfoName_L2, FC.M' +
        'ounthRetard,Mounth '
      ''
      'UNION ALL'
      'SELECT    FC.SalaryID , '
      
        '                    SUM(FC.Price) AS SumPrice , FInfo.InfoName_L' +
        '2 , calculatekind , 0 AS SalaryIDMounthRetard, 0 K'
      '          FROM Pay.FixedCalculated FC'
      
        '                    LEFT OUTER JOIN Pay.FormsInfo FInfo ON FC.Sa' +
        'laryID = FInfo.FormInfoID'
      '          WHERE     ( FC.Mounth = :MonthNo1 )'
      '                    AND ( ( FC.ShowListKind = 2 )'
      '                          OR ( FC.ShowListKind = 11 )'
      '                        )'
      '                    AND ( FC.PersonelNO = :c_PersonelNo1 )'
      '                    AND ( bedbes = 2 )'
      '                    AND ( FC.ArchiveID = :ArchiveID1 )'
      
        '          GROUP BY  FC.FunctionID , FC.SalaryID , ShowlistKind ,' +
        ' FInfo.InfoName_L2 , FC.MounthRetard , calculatekind'
      ''
      
        ' ) FF RIGHT OUTER JOIN ( SELECT   CAST(ColumnsSalaryID AS Intege' +
        'r) AS SalaryID , ColumnsName , ColumnsID'
      '                        FROM Pay.GetRptColumns'
      '                        WHERE   ( GetReprotsID = 1 )'
      '                            AND ( Kind = 4 )'
      '                         ) SS ON SS.SalaryID = FF.SalaryID'
      'ORDER BY SS.ColumnsID')
    Left = 88
    Top = 216
    object qryOtherDecWageSalaryID: TIntegerField
      DisplayLabel = #1705#1583
      FieldName = 'SalaryID'
      ReadOnly = True
    end
    object qryOtherDecWageInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      ReadOnly = True
      Size = 255
    end
    object qryOtherDecWagecalculatekind: TIntegerField
      FieldName = 'calculatekind'
      ReadOnly = True
    end
    object qryOtherDecWageSalaryIDMounthRetard: TLargeintField
      FieldName = 'SalaryIDMounthRetard'
      ReadOnly = True
    end
    object qryOtherDecWageColumnsName: TStringField
      DisplayLabel = #1588#1585#1581' '#1591#1604#1576'/'#1576#1583#1607#1740
      FieldName = 'ColumnsName'
      Size = 80
    end
    object qryOtherDecWageBes: TBCDField
      DisplayLabel = #1591#1604#1576
      FieldName = 'Bes'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryOtherDecWageBed: TBCDField
      DisplayLabel = #1576#1583#1607#1740
      FieldName = 'Bed'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object srcOtherDecWage: TDataSource
    DataSet = qryOtherDecWage
    Left = 96
    Top = 152
  end
  object qryRemainVacation: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Month'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelNo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT RemainDay'
      'FROM Pay.GETOffTimeInFish(  :Month, 0, 999, :PersonelNo  , 3 )')
    Left = 616
    Top = 424
    object qryRemainVacationRemainDay: TFloatField
      FieldName = 'RemainDay'
    end
  end
  object srcRemainVacation: TDataSource
    DataSet = qryRemainVacation
    Left = 648
    Top = 432
  end
  object ppLoan: TppDBPipeline
    DataSource = srcLoan
    UserName = 'Loan'
    Left = 24
    Top = 280
  end
  object ppOtherDecExt: TppDBPipeline
    DataSource = srcOtherDecWage
    UserName = 'OtherDecExt'
    Left = 200
    Top = 184
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
    Template.FileName = 'C:\Users\fararayaneh\Desktop\TNK_PayFish_2.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PNG'
    EmailSettings.Body.Strings = (
      #1576#1575' '#1587#1604#1575#1605' '#1608' '#1593#1585#1590' '#1582#1587#1578#1607' '#1606#1576#1575#1588#1610#1583
      #1601#1610#1588' '#1581#1602#1608#1602' '#1583#1585' '#1601#1575#1610#1604' '#1662#1610#1608#1587#1578'  '#1578#1602#1583#1610#1605' '#1588#1583
      #1576#1575' '#1587#1662#1575#1587' '#1575#1586' '#1586#1581#1605#1575#1578' '#1588#1605#1575)
    EmailSettings.ConnectionSettings.HostAddress = 'smtp.Gmail.Com'
    EmailSettings.ConnectionSettings.Password = 'fara1234'
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
    EmailSettings.FromAddress = 'fararayanehdoc@googlemail.com'
    EmailSettings.FromName = #1587#1610#1587#1578#1605' '#1581#1602#1608#1602
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
    PDFSettings.FontEncoding = feUnicode
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
    Left = 345
    Top = 219
    Version = '23.0'
    mmColumnWidth = 203300
    DataPipelineName = 'ppPersonels'
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 123561
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape17'
        Pen.Width = 2
        mmHeight = 120915
        mmLeft = 0
        mmTop = 265
        mmWidth = 283105
        BandType = 4
        LayerName = Foreground5
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape5'
        mmHeight = 50536
        mmLeft = 147109
        mmTop = 24342
        mmWidth = 44186
        BandType = 4
        LayerName = Foreground5
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape4'
        mmHeight = 73819
        mmLeft = 192352
        mmTop = 24342
        mmWidth = 42863
        BandType = 4
        LayerName = Foreground5
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape3'
        mmHeight = 13758
        mmLeft = 147109
        mmTop = 9525
        mmWidth = 133615
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText1: TppDBText
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
        mmLeft = 209021
        mmTop = 1588
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground5
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape2'
        mmHeight = 73819
        mmLeft = 236273
        mmTop = 24342
        mmWidth = 44186
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer6
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
        mmLeft = 116152
        mmTop = 1852
        mmWidth = 52123
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label8'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        Border.mmPadding = 0
        Caption = #1585#1608#1586' / '#1587#1575#1593#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 250296
        mmTop = 24342
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label13'
        OnGetText = ppLabel13GetText
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
        mmHeight = 6085
        mmLeft = 254794
        mmTop = 112977
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground5
      end
      object ppSubReport6: TppSubReport
        DesignLayer = ppDesignLayer6
        UserName = 'SubReportFunctionItem'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentWidth = False
        PrintBehavior = pbFixed
        TraverseAllData = False
        DataPipelineName = 'ppFunctionItem'
        mmHeight = 64558
        mmLeft = 237332
        mmTop = 30956
        mmWidth = 42069
        BandType = 4
        LayerName = Foreground5
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport6: TppChildReport
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
          object ppDetailBand2: TppDetailBand
            Border.mmPadding = 0
            PrintCount = 8
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object ppDBText2: TppDBText
              DesignLayer = ppDesignLayer1
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
              LayerName = Foreground
            end
            object ppDBText3: TppDBText
              DesignLayer = ppDesignLayer1
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
              LayerName = Foreground
            end
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText7'
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
              mmHeight = 6615
              mmLeft = 8731
              mmTop = 0
              mmWidth = 32544
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
        end
      end
      object ppLine1: TppLine
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
        mmTop = 121444
        mmWidth = 284300
        BandType = 4
        LayerName = Foreground5
      end
      object ppSubReport7: TppSubReport
        DesignLayer = ppDesignLayer6
        UserName = 'SubReportWages'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentWidth = False
        PrintBehavior = pbFixed
        TraverseAllData = False
        DataPipelineName = 'ppWages'
        mmHeight = 64558
        mmLeft = 193411
        mmTop = 30956
        mmWidth = 40481
        BandType = 4
        LayerName = Foreground5
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport7: TppChildReport
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
            object ppDBText5: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'SumPrice'
              DataPipeline = ppWages
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppWages'
              mmHeight = 6350
              mmLeft = 0
              mmTop = 0
              mmWidth = 17198
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText6'
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
              mmHeight = 6350
              mmLeft = 17463
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
      object ppSubReport8: TppSubReport
        DesignLayer = ppDesignLayer6
        UserName = 'SubReportDecs'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentWidth = False
        PrintBehavior = pbFixed
        TraverseAllData = False
        DataPipelineName = 'ppDecs'
        mmHeight = 43127
        mmLeft = 148432
        mmTop = 30956
        mmWidth = 41540
        BandType = 4
        LayerName = Foreground5
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport8: TppChildReport
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
          object ppDetailBand9: TppDetailBand
            Border.mmPadding = 0
            PrintCount = 12
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppDBText4: TppDBText
              DesignLayer = ppDesignLayer3
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
              mmHeight = 5842
              mmLeft = 14023
              mmTop = 0
              mmWidth = 26194
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText8: TppDBText
              DesignLayer = ppDesignLayer3
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
              mmHeight = 6435
              mmLeft = 0
              mmTop = 0
              mmWidth = 13758
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
      object ppDBText9: TppDBText
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
        mmHeight = 5546
        mmLeft = 185177
        mmTop = 10583
        mmWidth = 15113
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText10: TppDBText
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
        mmLeft = 253387
        mmTop = 1588
        mmWidth = 10668
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label53'
        OnGetText = ppLabel5GetText
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
        mmHeight = 6085
        mmLeft = 2381
        mmTop = 112977
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label23'
        Border.mmPadding = 0
        Caption = #1585#1583#1610#1601' '#1705#1604#1740' : '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 264319
        mmTop = 1588
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label28'
        Border.mmPadding = 0
        Caption = #1585#1583#1610#1601' '#1575#1583#1575#1585#1607' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7673
        mmLeft = 225425
        mmTop = 1588
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1705#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5969
        mmLeft = 263261
        mmTop = 10583
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'jobCode'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPersonels'
        mmHeight = 6435
        mmLeft = 227807
        mmTop = 10583
        mmWidth = 34396
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1583#1587#1578#1605#1586#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5969
        mmLeft = 263261
        mmTop = 16404
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'AmountIn30'
        DataPipeline = ppItemsSum
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppItemsSum'
        mmHeight = 6435
        mmLeft = 227807
        mmTop = 16404
        mmWidth = 34396
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 200819
        mmTop = 10583
        mmWidth = 24342
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label21'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1575#1583#1575#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 212725
        mmTop = 16669
        mmWidth = 12435
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'OfficeName_l1'
        DataPipeline = ppPersonels
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPersonels'
        mmHeight = 5821
        mmLeft = 174890
        mmTop = 16669
        mmWidth = 37835
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label2'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 205846
        mmTop = 24342
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label10'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        Border.mmPadding = 0
        Caption = #1705#1587#1608#1585#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 161661
        mmTop = 24342
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label24'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1582#1575#1604#1589
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 254794
        mmTop = 106098
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label25'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1705#1587#1608#1585#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 224367
        mmTop = 106098
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground5
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape7'
        mmHeight = 22754
        mmLeft = 147109
        mmTop = 75406
        mmWidth = 44186
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label101'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.Weight = 0.748799979686737100
        Border.mmPadding = 0
        Caption = #1605#1575#1606#1583#1607' '#1608#1575#1605' '#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 162719
        mmTop = 75406
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label5'
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
        mmLeft = 1323
        mmTop = 1588
        mmWidth = 38100
        BandType = 4
        LayerName = Foreground5
      end
      object ppSubReport9: TppSubReport
        DesignLayer = ppDesignLayer6
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentWidth = False
        TraverseAllData = False
        DataPipelineName = 'ppLoan'
        mmHeight = 13758
        mmLeft = 150548
        mmTop = 81756
        mmWidth = 37042
        BandType = 4
        LayerName = Foreground5
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport9: TppChildReport
          AutoStop = False
          DataPipeline = ppLoan
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
          DataPipelineName = 'ppLoan'
          object ppDetailBand10: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 7144
            mmPrintPosition = 0
            object ppDBText14: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'LoanRemain'
              DataPipeline = ppLoan
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppLoan'
              mmHeight = 6435
              mmLeft = 0
              mmTop = 0
              mmWidth = 12965
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText15: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText9'
              Border.mmPadding = 0
              DataField = 'InfoName_L1'
              DataPipeline = ppLoan
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppLoan'
              mmHeight = 5842
              mmLeft = 13758
              mmTop = 0
              mmWidth = 24342
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
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer6
        UserName = 'Shape1'
        mmHeight = 88636
        mmLeft = 2381
        mmTop = 9525
        mmWidth = 138377
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 224367
        mmTop = 98954
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground5
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText8'
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
        mmHeight = 6435
        mmLeft = 158221
        mmTop = 98954
        mmWidth = 64823
        BandType = 4
        LayerName = Foreground5
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 2381
        mmTop = 20902
        mmWidth = 138377
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1705#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 125413
        mmTop = 12965
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1585#1581' '#1591#1604#1576' '#1608' '#1576#1583#1607#1740
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 71702
        mmTop = 12965
        mmWidth = 53181
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1591#1604#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 36777
        mmTop = 12965
        mmWidth = 35000
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1576#1583#1607#1740
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 2646
        mmTop = 12965
        mmWidth = 34000
        BandType = 4
        LayerName = Foreground5
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 88636
        mmLeft = 125413
        mmTop = 9525
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground5
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 88636
        mmLeft = 71702
        mmTop = 9525
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground5
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer6
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 88636
        mmLeft = 36777
        mmTop = 9525
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground5
      end
      object ppSubReport10: TppSubReport
        DesignLayer = ppDesignLayer6
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentWidth = False
        TraverseAllData = False
        DataPipelineName = 'ppOtherDecExt'
        mmHeight = 71173
        mmLeft = 3969
        mmTop = 24342
        mmWidth = 134673
        BandType = 4
        LayerName = Foreground5
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport10: TppChildReport
          AutoStop = False
          DataPipeline = ppOtherDecExt
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
          DataPipelineName = 'ppOtherDecExt'
          object ppDetailBand11: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppDBText43: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText10'
              Border.mmPadding = 0
              DataField = 'SumPriceBed'
              DataPipeline = ppOtherDecExt
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppOtherDecExt'
              mmHeight = 6435
              mmLeft = 0
              mmTop = 0
              mmWidth = 32279
              BandType = 4
              LayerName = Foreground4
            end
            object ppDBText44: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText101'
              Border.mmPadding = 0
              DataField = 'InfoName_L1'
              DataPipeline = ppOtherDecExt
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppOtherDecExt'
              mmHeight = 5842
              mmLeft = 69321
              mmTop = 0
              mmWidth = 51065
              BandType = 4
              LayerName = Foreground4
            end
            object ppDBText45: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText102'
              Border.mmPadding = 0
              DataField = 'SumPriceBes'
              DataPipeline = ppOtherDecExt
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppOtherDecExt'
              mmHeight = 6435
              mmLeft = 34396
              mmTop = 0
              mmWidth = 32279
              BandType = 4
              LayerName = Foreground4
            end
            object ppDBText46: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText13'
              Border.mmPadding = 0
              DataField = 'SalaryID'
              DataPipeline = ppOtherDecExt
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppOtherDecExt'
              mmHeight = 6435
              mmLeft = 123031
              mmTop = 0
              mmWidth = 11906
              BandType = 4
              LayerName = Foreground4
            end
          end
          object ppFooterBand2: TppFooterBand
            Visible = False
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
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
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1582#1575#1604#1589' '#1576#1583#1607#1740
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 36777
        mmTop = 106098
        mmWidth = 33867
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1582#1575#1604#1589' '#1662#1585#1583#1575#1582#1578#1740
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 2381
        mmTop = 106098
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label11'
        OnGetText = ppLabel28GetText
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
        mmHeight = 6085
        mmLeft = 36777
        mmTop = 112977
        mmWidth = 33867
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label20'
        OnGetText = plblKhalesBhorofGetText
        Border.mmPadding = 0
        Caption = #1581#1585#1608#1601
        Color = clWindow
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5556
        mmLeft = 71702
        mmTop = 112977
        mmWidth = 66940
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1591#1604#1576' / '#1576#1583#1607#1740
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 71702
        mmTop = 98954
        mmWidth = 28046
        BandType = 4
        LayerName = Foreground5
      end
      object txtSumBes: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'txtSumBes'
        OnGetText = txtSumBesGetText
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
        mmHeight = 6085
        mmLeft = 36777
        mmTop = 98954
        mmWidth = 33867
        BandType = 4
        LayerName = Foreground5
      end
      object txtSumBed: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'txtSumBes1'
        OnGetText = txtSumBedGetText
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
        mmHeight = 6085
        mmLeft = 2381
        mmTop = 98954
        mmWidth = 33867
        BandType = 4
        LayerName = Foreground5
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label17'
        OnGetText = ppLblTotalDecsGetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Label17'
        Color = clSilver
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 6085
        mmLeft = 224367
        mmTop = 112977
        mmWidth = 28046
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
  object ppDBPipeline5: TppDBPipeline
    OpenDataSource = False
    UserName = 'DBPipeline5'
    Left = 512
    Top = 245
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
  object ppDecs: TppDBPipeline
    DataSource = srcDecs
    OpenDataSource = False
    UserName = 'Decs'
    Left = 641
    Top = 315
    MasterDataPipelineName = 'ppPersonels'
    object ppDecsppField1: TppField
      FieldAlias = '_radif'
      FieldName = '_radif'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDecsppField2: TppField
      FieldAlias = 'SalaryID'
      FieldName = 'SalaryID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDecsppField3: TppField
      FieldAlias = 'InfoName_L1'
      FieldName = 'InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDecsppField4: TppField
      FieldAlias = 'SumPrice'
      FieldName = 'SumPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDecsppField5: TppField
      FieldAlias = 'LoanRemain'
      FieldName = 'LoanRemain'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDecsppField6: TppField
      FieldAlias = 'FunctionID'
      FieldName = 'FunctionID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDecsppField7: TppField
      FieldAlias = '_LoanRemain'
      FieldName = '_LoanRemain'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDecsppField8: TppField
      FieldAlias = 'InfoName_L2'
      FieldName = 'InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDecsppField9: TppField
      FieldAlias = 'calculatekind'
      FieldName = 'calculatekind'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
  end
  object ppWages2: TppDBPipeline
    DataSource = srcWages2
    OpenDataSource = False
    UserName = 'Wages2'
    Left = 577
    Top = 299
    MasterDataPipelineName = 'ppPersonels'
  end
  object ppFunctionItem: TppDBPipeline
    DataSource = srcFunctionsItem
    OpenDataSource = False
    UserName = 'FunctionItem'
    Left = 721
    Top = 315
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
  object ppFunction: TppDBPipeline
    OpenDataSource = False
    UserName = 'Function'
    Left = 737
    Top = 211
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
  object ppPersonels: TppDBPipeline
    DataSource = srcPersonels
    OpenDataSource = False
    UserName = 'Personels'
    Left = 849
    Top = 147
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
      FieldAlias = 'HasFunction'
      FieldName = 'HasFunction'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField5: TppField
      FieldAlias = 'AccountNumber'
      FieldName = 'AccountNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField6: TppField
      FieldAlias = 'InsuranceNumber'
      FieldName = 'InsuranceNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField7: TppField
      FieldAlias = 'OfficeName_l1'
      FieldName = 'OfficeName_l1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField8: TppField
      FieldAlias = 'StateName'
      FieldName = 'StateName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField9: TppField
      FieldAlias = 'OfficeCodeID'
      FieldName = 'OfficeCodeID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField10: TppField
      FieldAlias = 'EmployTypeName'
      FieldName = 'EmployTypeName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField11: TppField
      FieldAlias = 'fatherName_L1'
      FieldName = 'fatherName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField12: TppField
      FieldAlias = 'MarriageName'
      FieldName = 'MarriageName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField13: TppField
      FieldAlias = 'childNumber'
      FieldName = 'childNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField14: TppField
      FieldAlias = 'CreditCardNo'
      FieldName = 'CreditCardNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField15: TppField
      FieldAlias = 'InterdictItems2Amount'
      FieldName = 'InterdictItems2Amount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField16: TppField
      FieldAlias = 'InterdicEndDate'
      FieldName = 'InterdicEndDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField17: TppField
      FieldAlias = 'SpecialStateName'
      FieldName = 'SpecialStateName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField18: TppField
      FieldAlias = 'Personelgrade'
      FieldName = 'Personelgrade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField19: TppField
      FieldAlias = 'InterdictID'
      FieldName = 'InterdictID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField20: TppField
      FieldAlias = 'jobName'
      FieldName = 'jobName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField21: TppField
      FieldAlias = 'OfficeName_l2'
      FieldName = 'OfficeName_l2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField22: TppField
      FieldAlias = 'ProjectName'
      FieldName = 'ProjectName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField23: TppField
      FieldAlias = 'NationalID'
      FieldName = 'NationalID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField24: TppField
      FieldAlias = 'IDNumber'
      FieldName = 'IDNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField25: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField26: TppField
      FieldAlias = 'jobCode'
      FieldName = 'jobCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppPersonelsppField27: TppField
      FieldAlias = 'AccountInfo'
      FieldName = 'AccountInfo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
  end
  object ppWages: TppDBPipeline
    DataSource = srcWages
    OpenDataSource = False
    UserName = 'Wages'
    Left = 585
    Top = 195
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
  object ppVacationType: TppDBPipeline
    UserName = 'VacationType'
    Left = 600
    Top = 128
  end
  object ppItemsSum: TppDBPipeline
    DataSource = srcItemsSum
    OpenDataSource = False
    UserName = 'ppItemsSum'
    Left = 512
    Top = 101
    MasterDataPipelineName = 'ppPersonels'
    object ppField16: TppField
      FieldAlias = 'InterdictItemsID'
      FieldName = 'InterdictItemsID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppField17: TppField
      FieldAlias = 'InterdictID'
      FieldName = 'InterdictID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppField18: TppField
      FieldAlias = 'SalaryID'
      FieldName = 'SalaryID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppField19: TppField
      FieldAlias = 'Amount'
      FieldName = 'Amount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppField20: TppField
      FieldAlias = 'FirstMounth'
      FieldName = 'FirstMounth'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppField21: TppField
      FieldAlias = 'EndMounth'
      FieldName = 'EndMounth'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppField22: TppField
      FieldAlias = 'ExpenseType'
      FieldName = 'ExpenseType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppField23: TppField
      FieldAlias = 'UserID'
      FieldName = 'UserID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppField24: TppField
      FieldAlias = '_InfoName_L1'
      FieldName = '_InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppField25: TppField
      FieldAlias = '_InfoName_L2'
      FieldName = '_InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppField26: TppField
      FieldAlias = 'AccTopicCode'
      FieldName = 'AccTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppField27: TppField
      FieldAlias = 'AccDetailCode'
      FieldName = 'AccDetailCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppField28: TppField
      FieldAlias = 'AccCTopicCode'
      FieldName = 'AccCTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppField29: TppField
      FieldAlias = 'AccCTopicCode2'
      FieldName = 'AccCTopicCode2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppField30: TppField
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
  object pdbplnWagesSum: TppDBPipeline
    DataSource = srcWagesSum
    OpenDataSource = False
    UserName = 'pdbplnWagesSum'
    Left = 704
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
  object qryItemsSum: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Left = 416
    Top = 459
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
  end
  object srcItemsSum: TDataSource
    DataSet = qryItemsSum
    Left = 462
    Top = 461
  end
end
