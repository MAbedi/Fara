inherited CostsF: TCostsF
  Left = 355
  Top = 210
  Caption = #1579#1576#1578' '#1607#1586#1610#1606#1607' '#1607#1575' '#1608' '#1601#1585#1575#1610#1606#1583' '#1607#1575#1610' '#1587#1601#1575#1585#1588#1575#1578
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    object btnSelectAll1: TBitBtn
      Left = 701
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object btnShow: TBitBtn
      Left = 620
      Top = 8
      Width = 75
      Height = 25
      Action = actShow
      Anchors = [akRight, akBottom]
      Caption = #1606#1605#1575#1610#1588
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
      Left = 95
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object btnSearch_: TBitBtn
      Left = 173
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object btnExcel: TBitBtn
      Left = 252
      Top = 8
      Width = 75
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Height = 16
    end
  end
  inherited Panel3: TPanel
    Height = 423
    object TabControl1: TTabControl
      Left = 2
      Top = 2
      Width = 331
      Height = 418
      Align = alClient
      TabOrder = 0
      Tabs.Strings = (
        #1607#1586#1610#1606#1607' '#1607#1575
        #1601#1585#1570#1610#1606#1583#1607#1575)
      TabIndex = 0
      OnChange = TabControl1Change
      object DBGrid1: TDBGrid
        Tag = 111
        Left = 4
        Top = 24
        Width = 323
        Height = 361
        Align = alClient
        Color = clCream
        DataSource = srcCosts
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
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
            FieldName = 'CostsCode'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_CostsCode'
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CostsDate'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CostsAmount'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VAT'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CostsNote'
            Width = 90
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 4
        Top = 385
        Width = 323
        Height = 30
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 386
        ExplicitWidth = 331
        object BtnDelete2: TBitBtn
          Left = 10
          Top = 2
          Width = 75
          Height = 25
          Action = DataSetDelete1_
          Caption = #1581#1584#1601
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
          TabOrder = 0
        end
        object okPanel2: TPanel
          Left = 165
          Top = 1
          Width = 165
          Height = 28
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            165
            28)
          object BitBtn12: TBitBtn
            Left = 88
            Top = 1
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
          object BitBtn13: TBitBtn
            Left = 8
            Top = 1
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
    end
    object Panel6: TPanel
      Left = 333
      Top = 2
      Width = 447
      Height = 419
      Align = alRight
      TabOrder = 1
      ExplicitLeft = 341
      ExplicitHeight = 420
      object Label7: TLabel
        Left = 1
        Top = 299
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
        Top = 312
        Width = 445
        Height = 107
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvLowered
        BorderWidth = 3
        BorderStyle = bsSingle
        TabOrder = 0
        object ListView1: TListView
          Left = 5
          Top = 5
          Width = 431
          Height = 61
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
        end
        object Panel5: TPanel
          Left = 5
          Top = 66
          Width = 431
          Height = 32
          Align = alBottom
          TabOrder = 1
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
        Height = 298
        Align = alTop
        TabOrder = 1
        DesignSize = (
          445
          298)
        object Label1: TLabel
          Left = 355
          Top = 6
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = #1588#1605#1575#1585#1607
        end
        object SpeedButton1: TSpeedButton
          Left = 242
          Top = 2
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton1Click
        end
        object Label2: TLabel
          Left = 117
          Top = 6
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1575#1585#1610#1582
        end
        object Label3: TLabel
          Left = 355
          Top = 50
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = #1603#1583' '#1601#1585#1608#1588#1606#1583#1607
        end
        object Label4: TLabel
          Left = 117
          Top = 50
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = #1606#1575#1605' '#1601#1585#1608#1588#1606#1583#1607
        end
        object Label5: TLabel
          Left = 355
          Top = 28
          Width = 50
          Height = 13
          Caption = #1578#1575#1585#1610#1582' '#1578#1581#1608#1610#1604
          FocusControl = DBEdit3
        end
        object Label6: TLabel
          Left = 355
          Top = 69
          Width = 40
          Height = 13
          Caption = #1578#1608#1590#1610#1581#1575#1578
        end
        object lbl1: TLabel
          Left = 355
          Top = 145
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1588#1605#1575#1585#1607' '#1662#1585#1608#1601#1585#1605#1575
          FocusControl = edtProformaNo
        end
        object Label19: TLabel
          Left = 111
          Top = 145
          Width = 86
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1588#1605#1575#1585#1607' '#1579#1576#1578' '#1587#1601#1575#1588
          FocusControl = DBEdit19
        end
        object Label14: TLabel
          Left = 355
          Top = 189
          Width = 19
          Height = 13
          Alignment = taRightJustify
          Caption = #1605#1576#1583#1575
          FocusControl = DBEdit14
        end
        object Label25: TLabel
          Left = 111
          Top = 189
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = #1605#1585#1586' '#1608#1585#1608#1583#1610
          FocusControl = DBEdit25
        end
        object lbl5: TLabel
          Left = 355
          Top = 211
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1608#1587#1610#1604#1607' '#1581#1605#1604
        end
        object Label11: TLabel
          Left = 111
          Top = 211
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = #1606#1585#1582' '#1575#1585#1586
          FocusControl = DBEdit8
        end
        object Label12: TLabel
          Left = 355
          Top = 233
          Width = 29
          Height = 13
          Alignment = taRightJustify
          Caption = #1606#1608#1593' '#1575#1585#1586
          FocusControl = DBEdit9
        end
        object Label13: TLabel
          Left = 111
          Top = 255
          Width = 131
          Height = 13
          Alignment = taRightJustify
          Caption = #1587#1575#1610#1585' '#1607#1586#1610#1606#1607' '#1607#1575'('#1603#1587#1585'/'#1575#1590#1575#1601#1575#1578')'
          FocusControl = DBEdit10
        end
        object Label15: TLabel
          Left = 111
          Top = 233
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = #1605#1576#1604#1594' '#1585#1610#1575#1604#1610
          FocusControl = DBEdit11
        end
        object Label16: TLabel
          Left = 355
          Top = 255
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = #1605#1576#1604#1594' '#1575#1585#1586#1610
          FocusControl = DBEdit12
        end
        object Label17: TLabel
          Left = 111
          Top = 167
          Width = 77
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578' '#1587#1601#1575#1588
          FocusControl = DBEdit13
        end
        object Label18: TLabel
          Left = 355
          Top = 167
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1662#1585#1608#1601#1585#1605#1575
          FocusControl = DBEdit15
        end
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 274
          Width = 443
          Height = 23
          DataSource = srcRecipts
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alBottom
          Flat = True
          TabOrder = 0
        end
        object edtReciptNumber: TDBEdit
          Left = 264
          Top = 3
          Width = 86
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'ReciptNumber'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
          OnKeyPress = edtReciptNumberKeyPress
        end
        object edtReciptDate: TDBEdit
          Left = 7
          Top = 3
          Width = 101
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'ReciptDate'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
          OnKeyPress = edtReciptNumberKeyPress
        end
        object DBEdit1: TDBEdit
          Left = 242
          Top = 47
          Width = 108
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'ReciptNumber'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
          OnKeyPress = edtReciptNumberKeyPress
        end
        object DBEdit2: TDBEdit
          Left = 7
          Top = 47
          Width = 101
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'CustName'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
          OnKeyPress = edtReciptNumberKeyPress
        end
        object DBEdit3: TDBEdit
          Left = 242
          Top = 25
          Width = 108
          Height = 19
          CustomHint = DmF.BalloonHint1
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'DeliveryDate'
          DataSource = srcRecipts
          ParentCtl3D = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 5
          OnMouseEnter = DBEdit3MouseEnter
        end
        object DBMemo1: TDBMemo
          Left = 7
          Top = 69
          Width = 343
          Height = 70
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'ReciptNote'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
        object edtProformaNo: TDBEdit
          Left = 242
          Top = 142
          Width = 108
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'ProformaNo'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit19: TDBEdit
          Left = 7
          Top = 142
          Width = 101
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'LicenseNumberOrder'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit14: TDBEdit
          Left = 242
          Top = 186
          Width = 108
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'ProducingCountry'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit25: TDBEdit
          Left = 7
          Top = 186
          Width = 101
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'BorderEntry'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit4: TDBEdit
          Left = 242
          Top = 208
          Width = 108
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = '_TransportBy'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 11
        end
        object DBEdit8: TDBEdit
          Left = 7
          Top = 208
          Width = 101
          Height = 19
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'RialsEqual'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 12
        end
        object DBEdit9: TDBEdit
          Left = 242
          Top = 230
          Width = 108
          Height = 19
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'CurrenciesName'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 13
        end
        object DBEdit10: TDBEdit
          Left = 7
          Top = 252
          Width = 101
          Height = 19
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'DeficitSum'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 14
        end
        object DBEdit11: TDBEdit
          Left = 7
          Top = 230
          Width = 101
          Height = 19
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'TotalPrice'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 15
        end
        object DBEdit12: TDBEdit
          Left = 242
          Top = 252
          Width = 108
          Height = 19
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'ArzAmount'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 16
        end
        object DBEdit13: TDBEdit
          Left = 7
          Top = 164
          Width = 101
          Height = 19
          CustomHint = DmF.BalloonHint1
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'LicenseDateOrder'
          DataSource = srcRecipts
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 17
        end
        object DBEdit15: TDBEdit
          Left = 241
          Top = 164
          Width = 108
          Height = 19
          CustomHint = DmF.BalloonHint1
          Color = clInactiveCaption
          Ctl3D = False
          DataField = 'ProformaDate'
          DataSource = srcRecipts
          ParentCtl3D = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 18
          OnMouseEnter = DBEdit3MouseEnter
        end
      end
    end
  end
  inherited ActionList: TActionList
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcCosts
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcCosts
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcCosts
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcCosts
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcCosts
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
  end
  object qryRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryReciptsAfterScroll
    Parameters = <
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
      'SELECT  Recipts.ReciptID, Recipts.ReciptNumber'
      ', Recipts.AidDate'
      
        ', Recipts.ReciptDate, Recipts.PersonID1, Customers.CustName, Rec' +
        'ipts.ServerID, Recipts.YearID,'
      '  Recipts.ReciptNote  , Proforma.ProformaNo,'
      
        '                      Proforma.LicenseNumberOrder, Proforma.Prod' +
        'ucingCountry, Proforma.BorderEntry, SellsInfo.SellsName AS _Tran' +
        'sportBy, Currencies.CurrenciesName,'
      
        '                      Recipts.RialsEqual, SUM(ReciptItems.ArzAmo' +
        'unt) AS ArzAmount, SUM(ReciptItems.TotalInputPrice) + SUM(Recipt' +
        'Items.TotalOutputPrice) AS TotalPrice,'
      
        '                      SUM(ReciptsDeficits.DeficitAdd) - SUM(Reci' +
        'ptsDeficits.DeficitDec) AS DeficitSum'
      ',LicenseDateOrder,ProformaDate,DeliveryDate'
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
      'WHERE     (Recipts.ReciptType = 60 )'
      
        ' AND (Recipts.ReciptNumber BETWEEN :ReciptNumberFrom AND :Recipt' +
        'NumberTo )'
      
        ' AND (Recipts.ReciptDate BETWEEN :ReciptDateFrom AND :ReciptDate' +
        'To )'
      
        ' AND (Recipts.PersonID1  BETWEEN :PersonID1From AND :PersonID1To' +
        ' )'
      
        ' AND (Recipts.ReciptState  BETWEEN :ReciptStateFrom AND :ReciptS' +
        'tateTo )'
      ' AND (Recipts.YearID  BETWEEN :YearIDFrom  AND :YearIDTo )'
      ''
      
        'GROUP BY Recipts.ReciptID, Recipts.ReciptNumber, Recipts.ReciptD' +
        'ate, Recipts.PersonID1, Customers.CustName, Recipts.ServerID, Re' +
        'cipts.YearID, Proforma.ProformaNo,'
      
        '                      Proforma.LicenseNumberOrder, Proforma.Prod' +
        'ucingCountry, SellsInfo.SellsName, Proforma.BorderEntry, Currenc' +
        'ies.CurrenciesName, Recipts.RialsEqual'
      
        '                      ,Recipts.AidDate,Recipts.ReciptNote,Licens' +
        'eDateOrder,ProformaDate'
      ',DeliveryDate'
      'ORDER BY Recipts.ReciptNumber')
    Left = 488
    Top = 8
    object qryReciptsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptsReciptNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578
      FieldName = 'ReciptNumber'
    end
    object qryReciptsReciptDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1583#1585#1582#1608#1575#1587#1578
      DisplayWidth = 8
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptsAidDate: TStringField
      FieldName = 'AidDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptsPersonID1: TIntegerField
      DisplayLabel = #1603#1583' '#1583#1585' '#1582#1608#1575#1587#1578' '#1603#1606#1606#1583#1607
      FieldName = 'PersonID1'
    end
    object qryReciptsCustName: TStringField
      DisplayLabel = #1583#1585#1582#1608#1575#1587#1578' '#1603#1606#1606#1583#1607
      FieldName = 'CustName'
      Size = 120
    end
    object qryReciptsReciptNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ReciptNote'
      Size = 400
    end
    object qryReciptsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptsYearID: TIntegerField
      FieldName = 'YearID'
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
    object qryReciptsDeliveryDate: TDateTimeField
      FieldName = 'DeliveryDate'
    end
  end
  object srcRecipts: TDataSource
    DataSet = qryRecipts
    Left = 576
    Top = 8
  end
  object qryCosts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryCostsAfterInsert
    AfterPost = qryCostsAfterPost
    BeforeDelete = qryCostsBeforeDelete
    AfterScroll = qryCostsAfterScroll
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
      end
      item
        Name = 'TypeOperations'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'InformationType'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * From Costs'
      
        'WHERE     (ReciptID = :ReciptID ) AND (ServerID = :ServerID ) AN' +
        'D (YearID = :YearID )'
      
        ' AND (TypeOperations = :TypeOperations ) AND (InformationType = ' +
        ':InformationType )')
    Left = 184
    Top = 168
    object qryCostsCostsID: TAutoIncField
      FieldName = 'CostsID'
      ReadOnly = True
    end
    object qryCostsTypeOperations: TIntegerField
      FieldName = 'TypeOperations'
    end
    object qryCostsInformationType: TIntegerField
      FieldName = 'InformationType'
    end
    object qryCostsCostsCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'CostsCode'
    end
    object qryCosts_CostsCode: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldKind = fkLookup
      FieldName = '_CostsCode'
      LookupDataSet = qrySellsInfo
      LookupKeyFields = 'SellsCode'
      LookupResultField = 'SellsName'
      KeyFields = 'CostsCode'
      Size = 200
      Lookup = True
    end
    object qryCostsCostsDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'CostsDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryCostsCostsAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'CostsAmount'
      currency = True
      Precision = 19
    end
    object qryCostsCostsNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'CostsNote'
      Size = 500
    end
    object qryCostsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryCostsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryCostsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryCostsCustID: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'CustID'
    end
    object qryCosts_CustID: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldKind = fkLookup
      FieldName = '_CustID'
      LookupDataSet = qryCustomers
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustID'
      Size = 200
      Lookup = True
    end
    object qryCostsVAT: TBCDField
      Tag = 3
      DisplayLabel = #1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607
      FieldName = 'VAT'
      currency = True
      Precision = 19
    end
  end
  object srcCosts: TDataSource
    DataSet = qryCosts
    OnStateChange = srcCostsStateChange
    Left = 96
    Top = 160
  end
  object OpenDialog1: TOpenDialog
    Left = 488
    Top = 143
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
    Left = 304
    Top = 1
  end
  object qrySellsInfo: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'SellsType'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     SellsCode, SellsName'
      'FROM         SellsInfo'
      'WHERE     (SellsType = :SellsType )')
    Left = 256
    Top = 273
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
    Left = 281
    Top = 152
  end
end
