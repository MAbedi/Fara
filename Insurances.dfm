inherited InsurancesF: TInsurancesF
  Left = 353
  Top = 233
  Caption = #1576#1610#1605#1607' '#1606#1575#1605#1607' '#1576#1575#1585#1576#1585#1610
  ClientHeight = 517
  Position = poDesigned
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    inherited BtnReject: TBitBtn
      ExplicitLeft = 11
    end
    object BitBtn5: TBitBtn
      Left = 89
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object btnSearch_: TBitBtn
      Left = 167
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object btnExcel: TBitBtn
      Left = 245
      Top = 8
      Width = 75
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object newPanel: TPanel
      Left = 559
      Top = 1
      Width = 230
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 4
      DesignSize = (
        230
        39)
      object BitBtn3: TBitBtn
        Left = 155
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 77
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 0
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object okPanel: TPanel
      Left = 386
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 5
      ExplicitLeft = 394
      DesignSize = (
        165
        39)
      object BitBtn7: TBitBtn
        Left = 88
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
        Left = 8
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
    object btnPrint: TBitBtn
      Left = 323
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Caption = #1670#1575#1662
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    ExplicitTop = -6
    inherited lblCaption: TLabel
      Height = 16
    end
  end
  inherited Panel3: TPanel
    Height = 423
    ExplicitWidth = 782
    ExplicitHeight = 422
    object Panel6: TPanel
      Left = 333
      Top = 2
      Width = 447
      Height = 418
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 341
      ExplicitHeight = 420
      object Label7: TLabel
        Left = 1
        Top = 209
        Width = 33
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = #1662#1610#1608#1587#1578
        Color = clBtnFace
        ParentColor = False
      end
      object Panel9: TPanel
        Left = 1
        Top = 222
        Width = 445
        Height = 197
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvLowered
        BorderWidth = 3
        BorderStyle = bsSingle
        TabOrder = 0
        ExplicitTop = 275
        ExplicitHeight = 144
        object ListView1: TListView
          Left = 5
          Top = 5
          Width = 431
          Height = 151
          Align = alClient
          BiDiMode = bdRightToLeft
          Columns = <
            item
              Caption = #1606#1575#1605' '#1601#1575#1610#1604
              Width = 300
            end
            item
              Alignment = taCenter
              Caption = #1578#1575#1585#1610#1582
              Width = 100
            end>
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HotTrackStyles = [htHandPoint, htUnderlineHot]
          ReadOnly = True
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          ViewStyle = vsReport
          ExplicitHeight = 98
        end
        object Panel5: TPanel
          Left = 5
          Top = 156
          Width = 431
          Height = 32
          Align = alBottom
          TabOrder = 1
          ExplicitTop = 103
          object btnAdd: TBitBtn
            Left = 348
            Top = 3
            Width = 75
            Height = 25
            Action = actAdd
            Caption = #1575#1590#1575#1601#1607
            TabOrder = 0
          end
          object btnRemove: TBitBtn
            Left = 270
            Top = 3
            Width = 75
            Height = 25
            Action = actRemove
            Caption = #1581#1584#1601
            TabOrder = 1
          end
          object btnScan: TBitBtn
            Left = 192
            Top = 3
            Width = 75
            Height = 25
            Action = actScan
            Caption = #1575#1587#1603#1606
            TabOrder = 2
          end
          object btnShowFile: TBitBtn
            Left = 5
            Top = 4
            Width = 75
            Height = 25
            Action = actShowFile
            Caption = #1606#1605#1575#1610#1588
            TabOrder = 3
          end
        end
      end
      object Panel7: TPanel
        Left = 1
        Top = 1
        Width = 445
        Height = 208
        Align = alTop
        TabOrder = 1
        DesignSize = (
          445
          208)
        object Label1: TLabel
          Left = 355
          Top = 8
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = #1588#1605#1575#1585#1607
        end
        object SpeedButton1: TSpeedButton
          Left = 242
          Top = 4
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton1Click
        end
        object Label2: TLabel
          Left = 111
          Top = 8
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1575#1585#1610#1582
        end
        object Label3: TLabel
          Left = 355
          Top = 30
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = #1603#1583' '#1601#1585#1608#1588#1606#1583#1607
        end
        object Label4: TLabel
          Left = 111
          Top = 30
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = #1606#1575#1605' '#1601#1585#1608#1588#1606#1583#1607
        end
        object lbl1: TLabel
          Left = 355
          Top = 52
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1588#1605#1575#1585#1607' '#1662#1585#1608#1601#1585#1605#1575
          FocusControl = edtProformaNo
        end
        object Label19: TLabel
          Left = 111
          Top = 52
          Width = 86
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1588#1605#1575#1585#1607' '#1579#1576#1578' '#1587#1601#1575#1588
          FocusControl = DBEdit19
        end
        object Label14: TLabel
          Left = 355
          Top = 96
          Width = 19
          Height = 13
          Alignment = taRightJustify
          Caption = #1605#1576#1583#1575
          FocusControl = DBEdit14
        end
        object Label25: TLabel
          Left = 111
          Top = 96
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = #1605#1585#1586' '#1608#1585#1608#1583#1610
          FocusControl = DBEdit25
        end
        object lbl5: TLabel
          Left = 355
          Top = 118
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1608#1587#1610#1604#1607' '#1581#1605#1604
        end
        object Label11: TLabel
          Left = 111
          Top = 118
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = #1606#1585#1582' '#1575#1585#1586
          FocusControl = DBEdit8
        end
        object Label12: TLabel
          Left = 355
          Top = 140
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = #1606#1608#1593' '#1575#1585#1586
          FocusControl = DBEdit9
        end
        object Label13: TLabel
          Left = 111
          Top = 162
          Width = 131
          Height = 13
          Alignment = taRightJustify
          Caption = #1587#1575#1610#1585' '#1607#1586#1610#1606#1607' '#1607#1575'('#1603#1587#1585'/'#1575#1590#1575#1601#1575#1578')'
          FocusControl = DBEdit10
        end
        object Label15: TLabel
          Left = 111
          Top = 140
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = #1605#1576#1604#1594' '#1585#1610#1575#1604#1610
          FocusControl = DBEdit11
        end
        object Label16: TLabel
          Left = 355
          Top = 162
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = #1605#1576#1604#1594' '#1575#1585#1586#1610
          FocusControl = DBEdit12
        end
        object Label17: TLabel
          Left = 111
          Top = 74
          Width = 77
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578' '#1587#1601#1575#1588
          FocusControl = DBEdit13
        end
        object Label18: TLabel
          Left = 355
          Top = 74
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1662#1585#1608#1601#1585#1605#1575
          FocusControl = DBEdit15
        end
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 184
          Width = 443
          Height = 23
          DataSource = srcRecipts
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alBottom
          Flat = True
          TabOrder = 0
          ExplicitTop = 237
        end
        object edtReciptNumber: TDBEdit
          Left = 266
          Top = 5
          Width = 84
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'ReciptNumber'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object edtReciptDate: TDBEdit
          Left = 7
          Top = 5
          Width = 101
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'ReciptDate'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit1: TDBEdit
          Left = 242
          Top = 27
          Width = 108
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'PersonID1'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit2: TDBEdit
          Left = 7
          Top = 27
          Width = 101
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'CustName'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object edtProformaNo: TDBEdit
          Left = 242
          Top = 49
          Width = 108
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'ProformaNo'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit19: TDBEdit
          Left = 7
          Top = 49
          Width = 101
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'LicenseNumberOrder'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit14: TDBEdit
          Left = 242
          Top = 93
          Width = 108
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'ProducingCountry'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit25: TDBEdit
          Left = 7
          Top = 93
          Width = 101
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'BorderEntry'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit3: TDBEdit
          Left = 242
          Top = 115
          Width = 108
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = '_TransportBy'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit8: TDBEdit
          Left = 7
          Top = 115
          Width = 101
          Height = 19
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'RialsEqual'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit9: TDBEdit
          Left = 242
          Top = 137
          Width = 108
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'CurrenciesName'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 11
        end
        object DBEdit10: TDBEdit
          Left = 7
          Top = 159
          Width = 101
          Height = 19
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'DeficitSum'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 12
        end
        object DBEdit11: TDBEdit
          Left = 7
          Top = 137
          Width = 101
          Height = 19
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'TotalPrice'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 13
        end
        object DBEdit12: TDBEdit
          Left = 242
          Top = 159
          Width = 108
          Height = 19
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'ArzAmount'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 14
        end
        object DBEdit13: TDBEdit
          Left = 7
          Top = 71
          Width = 101
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'LicenseDateOrder'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 15
        end
        object DBEdit15: TDBEdit
          Left = 242
          Top = 71
          Width = 108
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'ProformaDate'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 16
        end
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 331
      Height = 419
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 335
      ExplicitHeight = 418
      object DBGrid1: TDBGrid
        Tag = 111
        Left = 1
        Top = 131
        Width = 329
        Height = 236
        Align = alClient
        Color = clCream
        DataSource = srcInsurancesItems
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnEditButtonClick = DBGrid1EditButtonClick
        OnEnter = DBGrid1Enter
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'InsurancesCode'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_InsurancesCode'
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PremiumRates'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CurrencyAmount'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RialEquivalent'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VAT'
            Width = 65
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 1
        Top = 387
        Width = 329
        Height = 30
        Align = alBottom
        TabOrder = 2
        ExplicitTop = 389
        ExplicitWidth = 337
        object BtnDelete2: TBitBtn
          Left = 10
          Top = 2
          Width = 75
          Height = 25
          Action = DataSetDelete1
          Caption = #1581#1584#1601
          TabOrder = 0
        end
      end
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 329
        Height = 130
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 333
        DesignSize = (
          329
          130)
        object Label5: TLabel
          Left = 241
          Top = 9
          Width = 53
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1588#1605#1575#1585#1607' '#1576#1610#1605#1607
          ExplicitLeft = 249
        end
        object SpeedButton2: TSpeedButton
          Left = 154
          Top = 28
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = SpeedButton2Click
          ExplicitLeft = 162
        end
        object Label6: TLabel
          Left = 93
          Top = 9
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1575#1585#1610#1582
        end
        object Label8: TLabel
          Left = 241
          Top = 32
          Width = 73
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1603#1583#1608#1606#1575#1605' '#1576#1610#1605#1607' '#1711#1584#1575#1585
          ExplicitLeft = 249
        end
        object Label9: TLabel
          Left = 93
          Top = 73
          Width = 29
          Height = 13
          Caption = #1606#1585#1582' '#1575#1585#1586
          FocusControl = DBEdit7
        end
        object Label10: TLabel
          Left = 241
          Top = 70
          Width = 25
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1603#1583' '#1575#1585#1586
          FocusControl = DBEdit7
          ExplicitLeft = 249
        end
        object DBNavigator2: TDBNavigator
          Left = 1
          Top = 106
          Width = 327
          Height = 23
          DataSource = srcInsurances
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alBottom
          Flat = True
          TabOrder = 0
          ExplicitWidth = 335
        end
        object edtInsurancesNo: TDBEdit
          Left = 154
          Top = 5
          Width = 86
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'InsurancesNo'
          DataSource = srcInsurances
          TabOrder = 1
          ExplicitLeft = 162
        end
        object DBEdit4: TDBEdit
          Left = 7
          Top = 5
          Width = 82
          Height = 21
          DataField = 'InsurancesDate'
          DataSource = srcInsurances
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 178
          Top = 28
          Width = 62
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'CustID'
          DataSource = srcInsurances
          TabOrder = 3
          OnKeyPress = DBEdit5KeyPress
          ExplicitLeft = 186
        end
        object DBEdit6: TDBEdit
          Left = 8
          Top = 28
          Width = 142
          Height = 19
          Anchors = [akLeft, akTop, akRight]
          Color = clInactiveCaption
          Ctl3D = False
          DataField = '_CustID'
          DataSource = srcInsurances
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
          ExplicitWidth = 150
        end
        object DBEdit7: TDBEdit
          Left = 7
          Top = 70
          Width = 82
          Height = 21
          DataField = 'ExchangeRates'
          DataSource = srcInsurances
          TabOrder = 6
        end
        object cmbCurrenciesID: TDBComboBox
          Left = 154
          Top = 70
          Width = 86
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'CurrenciesID'
          DataSource = srcInsurances
          TabOrder = 5
        end
      end
      object SumGrid1: TSumGrid
        Left = 1
        Top = 368
        Width = 329
        Active = False
        Enable_Controls = True
        MasterGrid = DBGrid1
        FieldsName = 'CurrencyAmount;RialEquivalent;'
      end
    end
  end
  inherited ActionList: TActionList
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcInsurances
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcInsurances
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcInsurances
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcInsurances
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcInsurances
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actShow: TAction
      Caption = #1606#1605#1575#1610#1588
      OnExecute = actShowExecute
    end
    object actAdd: TAction
      Caption = #1575#1590#1575#1601#1607
      OnExecute = actAddExecute
    end
    object actRemove: TAction
      Caption = #1581#1584#1601
      OnExecute = actRemoveExecute
    end
    object actScan: TAction
      Caption = #1575#1587#1603#1606
      OnExecute = actScanExecute
    end
    object actShowFile: TAction
      Caption = #1606#1605#1575#1610#1588
      OnExecute = actShowFileExecute
    end
    object actExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      Hint = 'Delete'
      ImageIndex = 6
      DataSource = srcInsurancesItems
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C010108000D00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      000000000000000000006BAD840021842900218429006BAD8400000000000000
      00000000000000000000000000000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      F700948C8C00948C8C00948C8C00948C8C00FFD6AD00FFD6AD00FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00313129006B7394001029A50021213900FFE7C600FFDEB500FFD6AD00FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF0031313900637BE700FFFFF70010219C00FFEFD600FFE7C600FFDEB500FFD6
      AD00FFD6AD00FFD6AD00FFD6AD00CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF0042424200524A4A005A524A00182994006373D600FFEFD600FFE7C600FFDE
      B500FFD6AD00FFD6AD00FFD6AD00CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006BAD8400218429002184
      290021842900218429002184290094DE8C0039B5520021842900218429002184
      290021842900218429006BAD84000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00637BE700425AE700FFEFD600FFE7
      C600FFDEB500FFD6AD00FFD6AD00CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A5630039B5520039B5
      520039B5520039B5520039B5520039B5520039B5520039B5520039B5520039B5
      520039B5520039B55200218429000000000000000000CE630000FFFFFF00FFFF
      FF00948C8C00948C8C00948C8C00948C8C00FFFFFF00FFFFFF00FFF7E700FFEF
      D600FFE7C600FFDEB500FFD6AD00CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A5630094DE8C0094DE
      8C0094DE8C0094DE8C0094DE8C0094DE8C0039B5520094DE8C0094DE8C0094DE
      8C0094DE8C0094DE8C00218429000000000000000000CE630000FFFFFF00FFFF
      FF00313129006B7394001029A50021213900FFFFFF00FFFFFF00FFFFF700FFF7
      E700FFEFD600FFE7C600FFDEB500CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006BAD840063A5630063A5
      630063A5630063A5630063A5630094DE8C0039B5520021842900218429002184
      290021842900218429006BAD84000000000000000000CE630000FFFFFF00FFFF
      FF0031313900637BE700FFFFFF0010219C00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFF7E700FFEFD600FFE7C600CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF0042424200524A4A005A524A00182994006373D600FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7E700FFEFD600CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000CE630000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00637BE700425AE700FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFF7E700CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000CE6300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000CE630000CE63
      0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
      0000CE630000CE630000CE630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BAD840063A5630063A563006BAD8400000000000000
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
      0000000000000031000000420000005200000052000000420000003100000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000052A54A00009408006BB563000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000042
      000000420000007B0800009C0800009C0800009C0800009C0800007B0800004A
      0000004A00000000000000000000000000000000000000000000000000000000
      00000000000018B5290000BD2100009400008CBD7B0000000000000000000000
      0000000000000000000000000000000000000000000029ADD60031B5DE0021AD
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004A08000063
      080000A5100000A50800009C0800009C0800009C0800009C080000A5080000A5
      0800006B08000031000000000000000000000000000000000000000000000000
      00006BB5630000BD210000C6290000A50000319C310000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CDEEF0084EF
      FF004AC6E70021ADD60018A5C60018A5C60018A5C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004A0800006B100008A5
      210008A51800009C0800009C0800009C0800009C0800009C0800009C0800009C
      080000A50800006B0800004A0000000000000000000000000000000000000000
      0000009C100000CE310000C6290000AD100000940000A5C69400000000000000
      0000000000000000000000000000000000000000000029ADD60052BDE7009CFF
      FF0094FFFF0073DEF70073DEF70073DEF70073DEF7004AC6E70021ADD60018A5
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004A080010AD310008AD
      290008A5180000A510004AC65200E7F7EF00D6F7DE0010AD2100009C0800009C
      0800009C080000A50800004A00000000000000000000000000000000000052A5
      4A0000CE310000C6290000FF630000CE3100009C0000008C0000000000000000
      0000000000000000000000000000000000000000000029ADD60052BDE700ADFF
      FF008CF7FF008CEFFF008CEFFF008CEFFF0073DEF70073DEF70073DEF7004AC6
      EF0021ADD6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000005200000884210010B5420010A5
      3100089C180042BD4A00F7FFF700FFFFFF0084D68C0000A51000009C0800009C
      0800009C080000A50800007B08000042000000000000000000000000000018B5
      290029CE5A0000FF630000FF630000BD210000C62900009400008CBD7B000000
      0000000000000000000000000000000000000000000029ADD60029ADD600ADDE
      EF0094F7FF0094F7FF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DE
      F7004AC6EF00000000000000000000000000000000006B84C6000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5006B84C600000000000052000010A5420018B54A0010AD
      310042BD4A00F7FFF700FFFFFF0073D67B00009C0800009C0800009C0800009C
      0800009C080000A50800009408000042000000000000000000000000000018C6
      420000FF630000FF630052A54A0052A54A0000C6290000A50000319C31000000
      0000000000000000000000000000000000000000000029ADD60073DEF70029AD
      D6009CFFFF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0073DE
      F70073DEF70018A5C6000000000000000000000000000021A5009494F7000029
      E7000029E7000029E7000029E7000029E7000029E7000029E7000029E7000029
      E7000029E7000029E7000021A50000000000006B100021B5520021B5520073D6
      9400EFFFEF00FFFFFF00F7FFF700B5EFC600B5E7BD00ADE7B500ADE7B500ADE7
      B500ADE7B500009C0800009C0800004A00000000000000000000000000000000
      000000AD210000AD2100000000000000000000AD180000C6290000940000A5C6
      9400000000000000000000000000000000000000000029ADD60094F7FF0029AD
      D600ADDEEF00A5EFF700A5EFF700A5F7FF008CEFFF008CEFFF008CEFFF0073DE
      F7000073080018A5C6000000000000000000000000000021A500B5C6FF009CBD
      FF009CBDFF009CB5FF009CB5FF009CB5FF00638CF700638CF700638CF700638C
      F700526BF700526BF7000021A500000000000873100039BD6B0029BD5A00BDEF
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00009C0800009C0800005200000000000000000000000000000000
      00000000000000000000000000000000000031B5420000C62900009C0000008C
      0000000000000000000000000000000000000000000029ADD6009CFFFF0073DE
      F70029ADD60018A5C60018A5C60018A5C600ADDEEF008CF7FF0084EFFF000073
      08005AE78C000073080018A5C60000000000000000006B84C6000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5006B84C600000000000873100052C67B0042C6730029BD
      5A00A5E7BD00FFFFFF00F7FFF70084DEA50042BD5A0042BD5A0042BD5A0042BD
      5A0042BD5A0008A51800009C0800004200000000000000000000000000000000
      0000000000000000000000000000000000000000000000B5210000C629000094
      00008CBD7B000000000000000000000000000000000029ADD6009CFFFF0094F7
      FF0073DEF70073DEF70073DEF7006BDEF70029ADD600ADDEEF000073080052D6
      7B0042D66B0031C64A0000730800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087310004ABD6B0084DEA50021B5
      520021B5520094DEB500FFFFFF00E7F7EF0052C6730010AD310010AD310010AD
      310008A5290008A51800008C0800004200000000000000000000000000000000
      0000000000000000000000000000000000000000000052A54A0000C6290029AD
      390031B542000000000000000000000000000000000029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0073DEF70073DEF70029ADD60018A5C600108C
      210031C64A00109C210018A5C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A53100ADE7C6006BCE
      8C0010AD4A0018B54A008CDEAD00FFFFFF00F7FFF70029BD520010A5310008A5
      290008A5210008AD1800006B0800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029AD4A005AE7
      A50029AD39008CBD7B0000000000000000000000000029ADD600C6FFFF0094FF
      FF009CFFFF00D6FFFF00D6FFFF008CEFFF0094EFFF0073DEF70073DEF7000884
      100018AD29000884100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A5310052C67300BDEF
      D60063CE8C0021B5520018B5520094DEB500ADE7C60021B5520010AD390010AD
      310010AD3100109C2100006B0800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031B5420000D6
      42008CBD7B000000000000000000000000000000000021ADD6009CDEEF00C6FF
      FF00C6FFFF009CDEEF0018ADD60018A5C60018A5C60018A5C60018A5C600088C
      100008A518000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000109C21006BCE
      8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD630031BD630021BD
      4A0010A531000063080000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5C6
      940000000000000000000000000000000000000000000000000031B5DE0029AD
      D60018A5C60018A5C60000000000000000000000000000000000088C100008A5
      1800088410000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004ABD
      63004ABD630094DEB500BDEFD600A5E7C6008CDEAD007BDE9C004AC67B00189C
      3900189C39000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000730800087B0800088C1000088C1000087B
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021A5310039B5520042BD630042BD630029A54A00108C29000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFC3F8000FFFFFFFF
      FC3F8000FFFFFFFFFC3F8000FFFFFFFFFC3F8000FFFFFC7FFC3F8000FFFFFC7F
      80018000FFFFFC7F80018000E007E00F80018000E007E00F80018000E007E00F
      FC3F8000FFFFFC7FFC3F8000FFFFFC7FFC3F8000FFFFFC7FFC3FC001FFFFFFFF
      FC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FF8FFFFFFFFFFE007F87F8FFF
      FFFFC003F07F807FFFFF8001F03F800FFFFF8001E03F8007FFFF0000E01F8007
      80010000E01F800380010000F30F800380010000FF0F800180010000FF878001
      FFFF0000FF878001FFFF8001FFC38003FFFF8001FFC78007FFFFC003FFEFC3C7
      FFFFE007FFFFFE0FFFFFF81FFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object qryRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryReciptsAfterScroll
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'ReciptNumberFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ReciptNumberTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
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
      end
      item
        Name = 'PersonID1From'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PersonID1To'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ReciptStateFrom'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'ReciptStateTo'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'YearIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     Recipts.ReciptID, Recipts.ServerID, Recipts.YearID, R' +
        'ecipts.ReciptNumber, Recipts.ReciptDate, Recipts.PersonID1, Cust' +
        'omers.CustName, Proforma.ProformaNo, '
      
        '                      Proforma.LicenseNumberOrder, Proforma.Prod' +
        'ucingCountry, Proforma.BorderEntry, SellsInfo.SellsName AS _Tran' +
        'sportBy, Currencies.CurrenciesName, '
      
        '                      Recipts.RialsEqual, SUM(ReciptItems.ArzAmo' +
        'unt) AS ArzAmount, SUM(ReciptItems.TotalInputPrice) + SUM(Recipt' +
        'Items.TotalOutputPrice) AS TotalPrice, '
      
        '                      SUM(ReciptsDeficits.DeficitAdd) - SUM(Reci' +
        'ptsDeficits.DeficitDec) AS DeficitSum'
      ',LicenseDateOrder,ProformaDate'
      'FROM         Recipts INNER JOIN'
      
        '                      Customers ON Recipts.PersonID1 = Customers' +
        '.CustID INNER JOIN'
      
        '                      ReciptItems ON Recipts.ReciptID = ReciptIt' +
        'ems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Rec' +
        'ipts.YearID = ReciptItems.YearID INNER JOIN'
      
        '                      Proforma ON Recipts.ReciptID = Proforma.Re' +
        'ciptID AND Recipts.ServerID = Proforma.ServerID AND Recipts.Year' +
        'ID = Proforma.YearID INNER JOIN'
      
        '                      SellsInfo ON Proforma.TransportBy = SellsI' +
        'nfo.SellsCode INNER JOIN'
      
        '                      Currencies ON Recipts.ArzTypeID = Currenci' +
        'es.CurrenciesID LEFT OUTER JOIN'
      
        '                      ReciptsDeficits ON Recipts.ReciptID = Reci' +
        'ptsDeficits.ReciptID AND Recipts.ServerID = ReciptsDeficits.Serv' +
        'erID AND Recipts.YearID = ReciptsDeficits.YearID'
      ''
      'WHERE     (Recipts.ReciptType = :ReciptType ) '
      
        ' AND (Recipts.ReciptNumber BETWEEN :ReciptNumberFrom AND :Recipt' +
        'NumberTo ) '
      
        ' AND (Recipts.ReciptDate BETWEEN :ReciptDateFrom AND :ReciptDate' +
        'To )  '
      
        ' AND (Recipts.PersonID1  BETWEEN :PersonID1From AND :PersonID1To' +
        ' )'
      
        ' AND (Recipts.ReciptState  BETWEEN :ReciptStateFrom AND :ReciptS' +
        'tateTo )'
      ' AND (Recipts.YearID  BETWEEN :YearIDFrom  AND :YearIDTo )'
      ''
      
        'GROUP BY Recipts.ReciptID, Recipts.ReciptNumber, Recipts.ReciptD' +
        'ate, Recipts.PersonID1, Customers.CustName, Recipts.ServerID, Re' +
        'cipts.YearID, Proforma.ProformaNo, '
      
        '                      Proforma.LicenseNumberOrder, Proforma.Prod' +
        'ucingCountry, SellsInfo.SellsName, Proforma.BorderEntry, Currenc' +
        'ies.CurrenciesName, Recipts.RialsEqual'
      ',LicenseDateOrder,ProformaDate'
      'ORDER BY Recipts.ReciptNumber')
    Left = 488
    Top = 8
    object qryReciptsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryReciptsReciptNumber: TIntegerField
      FieldName = 'ReciptNumber'
    end
    object qryReciptsReciptDate: TStringField
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptsPersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object qryReciptsCustName: TStringField
      FieldName = 'CustName'
      Size = 120
    end
    object qryReciptsProformaNo: TStringField
      FieldName = 'ProformaNo'
      Size = 100
    end
    object qryReciptsLicenseNumberOrder: TStringField
      FieldName = 'LicenseNumberOrder'
      Size = 150
    end
    object qryReciptsProducingCountry: TStringField
      FieldName = 'ProducingCountry'
      Size = 100
    end
    object qryReciptsBorderEntry: TStringField
      FieldName = 'BorderEntry'
      Size = 100
    end
    object qryRecipts_TransportBy: TWideStringField
      FieldName = '_TransportBy'
      Size = 200
    end
    object qryReciptsCurrenciesName: TStringField
      FieldName = 'CurrenciesName'
      Size = 250
    end
    object qryReciptsRialsEqual: TBCDField
      FieldName = 'RialsEqual'
      currency = True
      Precision = 19
    end
    object qryReciptsArzAmount: TFloatField
      FieldName = 'ArzAmount'
      ReadOnly = True
      currency = True
    end
    object qryReciptsTotalPrice: TBCDField
      FieldName = 'TotalPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryReciptsDeficitSum: TBCDField
      FieldName = 'DeficitSum'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryReciptsLicenseDateOrder: TStringField
      FieldName = 'LicenseDateOrder'
      FixedChar = True
      Size = 10
    end
    object qryReciptsProformaDate: TDateTimeField
      FieldName = 'ProformaDate'
    end
  end
  object srcRecipts: TDataSource
    DataSet = qryRecipts
    Left = 576
    Top = 8
  end
  object qryInsurances: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryInsurancesAfterInsert
    BeforePost = qryInsurancesBeforePost
    AfterPost = qryInsurancesAfterPost
    BeforeCancel = qryInsurancesBeforeCancel
    BeforeDelete = qryInsurancesBeforeDelete
    AfterDelete = qryInsurancesAfterDelete
    AfterScroll = qryInsurancesAfterScroll
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
        Name = 'ServerID'
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
      end>
    SQL.Strings = (
      'Select * From Insurances '
      
        'WHERE     (ReciptID = :ReciptID ) AND (ServerID = :ServerID ) AN' +
        'D (YearID = :YearID )')
    Left = 208
    Top = 232
    object qryInsurancesInsurancesID: TIntegerField
      FieldName = 'InsurancesID'
    end
    object qryInsurancesInsurancesNo: TIntegerField
      FieldName = 'InsurancesNo'
    end
    object qryInsurancesInsurancesDate: TStringField
      FieldName = 'InsurancesDate'
      FixedChar = True
      Size = 10
    end
    object qryInsurancesCustID: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'CustID'
    end
    object qryInsurances_CustID: TStringField
      DisplayLabel = #1576#1610#1605#1607' '#1711#1584#1575#1585
      FieldKind = fkLookup
      FieldName = '_CustID'
      LookupDataSet = qryCustomers
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustID'
      Size = 200
      Lookup = True
    end
    object qryInsurancesCurrenciesID: TIntegerField
      FieldName = 'CurrenciesID'
      OnChange = qryInsurancesCurrenciesIDChange
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryInsurancesExchangeRates: TBCDField
      FieldName = 'ExchangeRates'
      Precision = 18
      Size = 2
    end
    object qryInsurancesReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryInsurancesServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryInsurancesYearID: TIntegerField
      FieldName = 'YearID'
    end
  end
  object srcInsurances: TDataSource
    DataSet = qryInsurances
    OnStateChange = srcInsurancesStateChange
    Left = 88
    Top = 248
  end
  object OpenDialog1: TOpenDialog
    Left = 448
    Top = 359
  end
  object qryInitQry: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT      *  from  ReciptTypes'
      'WHERE     ReciptType =60'
      '')
    Left = 384
    Top = 9
  end
  object qrySellsInfo: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     SellsCode, SellsName'
      'FROM         SellsInfo'
      'WHERE     (SellsType =72 )')
    Left = 280
    Top = 353
  end
  object qryCustomers: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     Customers.CustID, Customers.CustName'
      'FROM         Customers INNER JOIN'
      
        '                      CustomersGroup ON Customers.CustomerGrpID ' +
        '= CustomersGroup.CustomerGrpID '
      'WHERE     (CustomersGroup.GroupType = 6)')
    Left = 377
    Top = 360
  end
  object srcInsurancesItems: TDataSource
    DataSet = qryInsurancesItems
    Left = 72
    Top = 328
  end
  object qryInsurancesItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryInsurancesItemsBeforeInsert
    AfterInsert = qryInsurancesItemsAfterInsert
    BeforeEdit = qryInsurancesItemsBeforeEdit
    BeforePost = qryInsurancesItemsBeforePost
    BeforeDelete = qryInsurancesItemsBeforeDelete
    AfterDelete = qryInsurancesItemsAfterDelete
    Parameters = <
      item
        Name = 'InsurancesID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT    *'
      'FROM         InsurancesItems'
      'WHERE     ( InsurancesID = :InsurancesID )')
    Left = 208
    Top = 296
    object qryInsurancesItemsInsurancesItemsID: TAutoIncField
      FieldName = 'InsurancesItemsID'
      ReadOnly = True
    end
    object qryInsurancesItemsInsurancesID: TIntegerField
      FieldName = 'InsurancesID'
    end
    object qryInsurancesItemsInsurancesCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'InsurancesCode'
    end
    object qryInsurancesItems_InsurancesCode: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldKind = fkLookup
      FieldName = '_InsurancesCode'
      LookupDataSet = qrySellsInfo
      LookupKeyFields = 'SellsCode'
      LookupResultField = 'SellsName'
      KeyFields = 'InsurancesCode'
      Size = 200
      Lookup = True
    end
    object qryInsurancesItemsPremiumRates: TBCDField
      Tag = 3
      DisplayLabel = #1606#1585#1582' '#1581#1602' '#1576#1610#1605#1607
      FieldName = 'PremiumRates'
      OnChange = qryInsurancesItemsPremiumRatesChange
      Precision = 18
      Size = 2
    end
    object qryInsurancesItemsCurrencyAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1575#1585#1586#1610
      FieldName = 'CurrencyAmount'
      OnChange = qryInsurancesItemsCurrencyAmountChange
      currency = True
      Precision = 19
    end
    object qryInsurancesItemsRialEquivalent: TBCDField
      Tag = 3
      DisplayLabel = #1605#1593#1575#1583#1604' '#1585#1610#1575#1604#1610
      FieldName = 'RialEquivalent'
      OnChange = qryInsurancesItemsRialEquivalentChange
      currency = True
      Precision = 19
    end
    object qryInsurancesItemsVAT: TBCDField
      Tag = 3
      DisplayLabel = #1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607
      FieldName = 'VAT'
      currency = True
      Precision = 19
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcRecipts
    UserName = 'DBPipeline1'
    Left = 728
    Top = 296
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcInsurances
    UserName = 'DBPipeline2'
    Left = 648
    Top = 304
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object ppDBPipeline3: TppDBPipeline
    DataSource = srcInsurancesItems
    UserName = 'DBPipeline3'
    Left = 568
    Top = 328
    MasterDataPipelineName = 'ppDBPipeline2'
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara2010\BSell\Exe\Report\Insurances60.rtm'
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
    EmailSettings.Enabled = True
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
    Left = 648
    Top = 368
    Version = '22.02'
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
        mmWidth = 197379
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
        mmLeft = 73025
        mmTop = 1058
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption'
        OnGetText = ppLblCaptionGetText
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578'  '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8467
        mmLeft = 86519
        mmTop = 8467
        mmWidth = 24342
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
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4191
        mmLeft = 184150
        mmTop = 18522
        mmWidth = 12700
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
        mmLeft = 183622
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4191
        mmLeft = 105370
        mmTop = 18522
        mmWidth = 77724
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 104841
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1585#1582' '#1581#1602' '#1576#1610#1605#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4191
        mmLeft = 78913
        mmTop = 18522
        mmWidth = 25400
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
        mmLeft = 78385
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594' '#1575#1585#1586#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4191
        mmLeft = 52456
        mmTop = 18522
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 51928
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1593#1575#1583#1604' '#1585#1610#1575#1604#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4191
        mmLeft = 25999
        mmTop = 18522
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 25471
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4191
        mmLeft = 0
        mmTop = 18522
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7409
      mmPrintPosition = 0
      object ppLineDetail: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'LineDetail'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 194469
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
        DataField = 'InsurancesCode'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 4022
        mmLeft = 184150
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 183622
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = '_InsurancesCode'
        DataPipeline = ppDBPipeline3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 4022
        mmLeft = 105370
        mmTop = 0
        mmWidth = 77724
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 104841
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'PremiumRates'
        DataPipeline = ppDBPipeline3
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 4022
        mmLeft = 78913
        mmTop = 0
        mmWidth = 25400
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
        mmLeft = 78385
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'CurrencyAmount'
        DataPipeline = ppDBPipeline3
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 4022
        mmLeft = 52456
        mmTop = 0
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 51928
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'RialEquivalent'
        DataPipeline = ppDBPipeline3
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 4022
        mmLeft = 25999
        mmTop = 0
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 25471
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'VAT'
        DataPipeline = ppDBPipeline3
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 4022
        mmLeft = 0
        mmTop = 0
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 197379
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
        mmLeft = 181240
        mmTop = 529
        mmWidth = 15579
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'CurrencyAmount'
        DataPipeline = ppDBPipeline3
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 4022
        mmLeft = 52456
        mmTop = 528
        mmWidth = 25400
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 51928
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'RialEquivalent'
        DataPipeline = ppDBPipeline3
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 4022
        mmLeft = 25999
        mmTop = 528
        mmWidth = 25400
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 25471
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        Border.mmPadding = 0
        DataField = 'VAT'
        DataPipeline = ppDBPipeline3
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 4022
        mmLeft = 0
        mmTop = 528
        mmWidth = 25400
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2647
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
        mmWidth = 197379
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
        mmLeft = 183886
        mmTop = 529
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'CurrencyAmount'
        DataPipeline = ppDBPipeline3
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 4022
        mmLeft = 52456
        mmTop = 528
        mmWidth = 25400
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 51928
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'RialEquivalent'
        DataPipeline = ppDBPipeline3
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 4022
        mmLeft = 25999
        mmTop = 528
        mmWidth = 25400
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 25471
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.mmPadding = 0
        DataField = 'VAT'
        DataPipeline = ppDBPipeline3
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline3'
        mmHeight = 4022
        mmLeft = 0
        mmTop = 528
        mmWidth = 25400
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2647
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
end
