inherited ReciptTypesF: TReciptTypesF
  Left = 400
  Top = 129
  Caption = #1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1601#1585#1605#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1575#1606#1576#1575#1585
  ClientHeight = 777
  ClientWidth = 1073
  Position = poDesigned
  OnResize = FormResize
  ExplicitWidth = 1081
  ExplicitHeight = 808
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel [0]
    Width = 1073
    TabOrder = 0
    ExplicitWidth = 1073
    DesignSize = (
      1073
      53)
    inherited ImgTemplate: TImage
      Left = 1023
      ExplicitLeft = 742
    end
    inherited lblCaption: TLabel
      Left = 965
      ExplicitLeft = 965
    end
    inherited lblBaseDate: TLabel
      Left = 436
      ExplicitLeft = 361
    end
  end
  inherited PnlUnderButton: TPanel [1]
    Top = 736
    Width = 1073
    TabOrder = 1
    ExplicitTop = 736
    ExplicitWidth = 1073
    DesignSize = (
      1073
      41)
    object DBNavigator1: TDBNavigator [0]
      Left = 406
      Top = 9
      Width = 400
      Height = 25
      DataSource = srcReciptTypes
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight, akBottom]
      Flat = True
      TabOrder = 7
    end
    inherited BtnReject: TBitBtn
      TabOrder = 2
    end
    object newPanel: TPanel
      Left = 838
      Top = 1
      Width = 234
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object BtnInsert: TBitBtn
        Left = 156
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Caption = #1580#1583#1610#1583
        TabOrder = 2
      end
      object BitBtn4: TBitBtn
        Left = 78
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BtnDelete: TBitBtn
        Left = 1
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Caption = #1581#1584#1601
        TabOrder = 0
      end
    end
    object okPanel: TPanel
      Left = 673
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
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
        TabOrder = 1
      end
      object BitBtn8: TBitBtn
        Left = 9
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
        TabOrder = 0
      end
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendExel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Exel'
      TabOrder = 5
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
      TabOrder = 4
    end
    object BitBtn1: TBitBtn
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
      TabOrder = 3
    end
    object BitBtn13: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alLeft
      Caption = #1670#1600#1600#1600#1575#1662
      TabOrder = 6
    end
  end
  inherited Panel3: TPanel
    Width = 1073
    Height = 683
    ExplicitWidth = 1073
    ExplicitHeight = 683
    object Splitter1: TSplitter
      Left = 2
      Top = 180
      Width = 1069
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitLeft = 4
      ExplicitTop = 136
      ExplicitWidth = 776
    end
    object Panel7: TPanel
      Left = 2
      Top = 183
      Width = 1069
      Height = 498
      Align = alClient
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 1067
        Height = 496
        ActivePage = TabSheet28
        Align = alClient
        MultiLine = True
        TabOrder = 0
        object TabSheet20: TTabSheet
          Caption = 'Menu'
          ImageIndex = 1
          DesignSize = (
            1059
            450)
          object Label44: TLabel
            Left = 914
            Top = 51
            Width = 52
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1585#1583#1610#1601' '#1583#1585' '#1605#1606#1608
            FocusControl = DBEdit24
            ExplicitLeft = 727
          end
          object Label13: TLabel
            Left = 914
            Top = 19
            Width = 88
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1606#1575#1605' '#1601#1585#1605' '#1602#1575#1576#1604' '#1606#1605#1575#1610#1588
            ExplicitLeft = 727
          end
          object Label118: TLabel
            Left = 914
            Top = 181
            Width = 67
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'OrderByFields'
            FocusControl = edtOrderByFields
            ExplicitLeft = 727
          end
          object Label32: TLabel
            Left = 914
            Top = 82
            Width = 85
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1606#1581#1608#1607' '#1606#1605#1575#1610#1588' '#1604#1610#1587#1578
            ExplicitLeft = 727
          end
          object Label33: TLabel
            Left = 914
            Top = 114
            Width = 63
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1588#1605#1575#1585#1607' '#1711#1586#1575#1585#1588
            FocusControl = dbedtReportID
            ExplicitLeft = 727
          end
          object Label145: TLabel
            Left = 915
            Top = 213
            Width = 111
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605' '#1591#1585#1575#1581#1740' '#1588#1583#1607
            FocusControl = edtDesignFormID
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 728
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 0
            Width = 159
            Height = 450
            Align = alLeft
            Caption = #1605#1581#1604' '#1606#1605#1575#1610#1588' '#1583#1585' '#1605#1606#1608
            TabOrder = 7
            object chklstMnuPlaceIDs: TCheckListBox
              Left = 2
              Top = 15
              Width = 155
              Height = 433
              Align = alClient
              ItemHeight = 13
              TabOrder = 0
              OnClick = ChkCustomerKind1Click
            end
          end
          object cmbMnuPlaceID: TDBComboBox
            Left = 382
            Top = 267
            Width = 184
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'MnuPlaceID'
            DataSource = srcReciptTypes
            Enabled = False
            Items.Strings = (
              #1606#1583#1575#1585#1583
              #1575#1606#1576#1575#1585
              #1601#1585#1608#1588
              #1576#1585#1606#1575#1605#1607' '#1585#1610#1586#1610' '#1608' '#1603#1606#1578#1585#1604
              #1575#1606#1576#1575#1585' '#1608' '#1601#1585#1608#1588
              #1575#1606#1576#1575#1585' '#1608' '#1576#1585#1606#1575#1605#1607' '#1585#1610#1586#1610
              #1601#1585#1608#1588' '#1608' '#1576#1585#1606#1575#1605#1607' '#1585#1610#1586#1610
              #1607#1605#1607' '#1605#1608#1575#1585#1583)
            TabOrder = 1
            Visible = False
            OnEnter = cmbEffectTypeEnter
          end
          object DBEdit24: TDBEdit
            Left = 480
            Top = 48
            Width = 429
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'RowOnMnu'
            DataSource = srcReciptTypes
            TabOrder = 2
          end
          object cmbTemplateCode: TDBComboBox
            Left = 480
            Top = 15
            Width = 429
            Height = 21
            Anchors = [akTop, akRight]
            Color = clWhite
            DataField = 'TemplateCode'
            DataSource = srcReciptTypes
            Items.Strings = (
              '0-'#1608#1585#1608#1583' '#1608' '#1582#1585#1608#1580' '#1605#1585#1578#1576#1591' '#1576#1575' '#1575#1587#1578#1610#1604
              '1-'#1601#1585#1605' '#1605#1585#1576#1608#1591' '#1576#1607' '#1582#1585#1610#1583' '#1588#1610#1585
              '2-'#1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1585' '#1580#1583#1608#1604
              '3-'#1602#1585#1575#1585#1583#1575#1583' '#1601#1585#1608#1588' '#1608' '#1582#1583#1605#1575#1578
              '4-'#1608#1585#1608#1583' '#1608' '#1582#1585#1608#1580' '#1576#1585' '#1575#1587#1575#1587' '#1602#1585#1575#1585#1583#1575#1583' '#1601#1585#1608#1588' '#1582#1583#1605#1575#1578
              '5-'#1576#1585#1583#1575#1588#1578' '#1582#1585#1610#1583' '#1605#1581#1589#1608#1604#1575#1578' '#1603#1588#1575#1608#1585#1586#1610
              '6-'#1579#1576#1578' '#1603#1585#1575#1610#1607' '#1581#1605#1604' '#1608' '#1607#1586#1610#1606#1607' '#1607#1575#1610' '#1578#1587#1607#1610#1605#1610
              '7-'#1578#1580#1586#1610#1607'/'#1578#1608#1604#1610#1583'-'#1588#1606#1575#1587#1575#1610#1610' '#1608#1610#1688#1607
              '8-'#1601#1585#1605' '#1601#1585#1608#1588#1711#1575#1607
              '9-'#1583#1587#1578#1608#1585' '#1603#1575#1585' '#1578#1593#1605#1610#1585#1575#1578
              '10-'#1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1585' '#1580#1583#1608#1604'2'
              '11-'#1576#1585#1606#1575#1605#1607' '#1593#1605#1604#1740#1575#1578#1740
              '12-'#1602#1585#1575#1585#1583#1575#1583' '#1582#1585#1740#1583' '#1576#1583#1608#1606' '#1578#1593#1583#1575#1583
              '13-'#1576#1575#1587#1705#1608#1604
              '14-'#1579#1576#1578' '#1602#1585#1575#1585#1583#1575#1583' '#1607#1575' '#1608' '#1578#1588#1603#1610#1604' '#1662#1585#1608#1606#1583#1607' '
              '15-'#1570#1586#1605#1575#1740#1588#1711#1575#1607
              '16-'#1570#1586#1605#1575#1740#1588#1711#1575#1607' '#1576#1575' '#1580#1586#1574#1740#1575#1578)
            TabOrder = 0
            OnEnter = cmbEffectTypeEnter
          end
          object dbchkShowEntityWeightOnList: TDBCheckBox
            Left = 480
            Top = 146
            Width = 429
            Height = 17
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = #1570#1610#1575' '#1605#1602#1583#1575#1585'/'#1608#1586#1606' '#1583#1585' '#1604#1610#1587#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1601#1585#1605' '#1606#1605#1575#1610#1588' '#1588#1608#1583'.'#8207
            DataField = 'ShowEntityWeightOnList'
            DataSource = srcReciptTypes
            ParentBiDiMode = False
            TabOrder = 3
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object edtOrderByFields: TDBEdit
            Left = 480
            Top = 176
            Width = 429
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            DataField = 'OrderByFields'
            DataSource = srcReciptTypes
            ParentBiDiMode = False
            TabOrder = 4
          end
          object cmbShowListOnMnu: TDBComboBox
            Left = 480
            Top = 81
            Width = 429
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ShowListOnMnu'
            DataSource = srcReciptTypes
            Items.Strings = (
              #1606#1583#1575#1585#1583
              #1604#1610#1587#1578' '#1579#1575#1576#1578' '#1576#1575' '#1575#1605#1603#1575#1606' '#1670#1575#1662' '#1711#1585#1608#1607#1610
              #1604#1610#1587#1578' '#1576#1585' '#1575#1587#1575#1587' MakeReport')
            TabOrder = 5
            OnEnter = cmbEffectTypeEnter
          end
          object dbedtReportID: TDBEdit
            Left = 480
            Top = 114
            Width = 429
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ReportID'
            DataSource = srcReciptTypes
            TabOrder = 6
          end
          object edtDesignFormID: TDBEdit
            Left = 480
            Top = 209
            Width = 429
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'DesignFormID'
            DataSource = srcReciptTypes
            TabOrder = 8
          end
          object Edit2: TEdit
            Left = 480
            Top = 236
            Width = 429
            Height = 21
            Anchors = [akTop, akRight]
            Color = clGradientActiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            Text = 
              'Vu_ReciptsDsn '#1576#1575' '#1662#1587#1608#1606#1583' '#1588#1605#1575#1585#1607' '#1601#1585#1605' '#1591#1585#1575#1581#1740' '#1588#1583#1607' '#1580#1607#1578' '#1670#1575#1662' '#1581#1578#1605#1575' '#1587#1575#1582#1578#1607' '#1588#1608 +
              #1583'.'
          end
        end
        object ts2: TTabSheet
          Caption = '"'#1605#1588#1578#1585#1610'"'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 27
          ParentFont = False
          object pgc1: TPageControl
            Left = 0
            Top = 0
            Width = 1059
            Height = 450
            ActivePage = TabSheet39
            Align = alClient
            TabOrder = 0
            object TabSheet39: TTabSheet
              Caption = #1605#1588#1578#1585#1610'3'#1608'Detail '
              ImageIndex = 1
              DesignSize = (
                1051
                422)
              object lblPerson3: TLabel
                Left = 682
                Top = 79
                Width = 123
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1603#1604#1605#1607' '#1605#1588#1578#1585#1610'3'
                FocusControl = dbedtPerson3Caption
                ExplicitLeft = 401
              end
              object lbl2: TLabel
                Left = 401
                Top = 117
                Width = 102
                Height = 13
                Caption = #1593#1606#1608#1575#1606#8207#1605#1588#1578#1585#1610#8207#1583#1585'Detail '
                FocusControl = dbedtPerson2DetailCaption
              end
              object GroupBox12: TGroupBox
                Left = 0
                Top = 0
                Width = 217
                Height = 401
                Align = alLeft
                Caption = #1606#1608#1593' '#1575#1587#1578#1601#1575#1583#1607' '#1575#1586' '#1603#1583' '#1605#1588#1578#1585#1610' '#1583#1585' Detail '
                TabOrder = 0
                object ChkCustomer2DetailKind: TCheckListBox
                  Left = 2
                  Top = 36
                  Width = 213
                  Height = 363
                  Hint = 'ChkCustomer2DetailKind'
                  Align = alClient
                  ItemHeight = 13
                  TabOrder = 0
                  OnClick = ChkCustomerKind1Click
                end
                object CmbPersonID1OnDetailActive: TDBComboBox
                  Left = 2
                  Top = 15
                  Width = 213
                  Height = 21
                  Align = alTop
                  DataField = 'PersonID1OnDetailActive'
                  DataSource = srcReciptTypes
                  Items.Strings = (
                    #1662#1610#1588#8207#1601#1585#1590' '#1575#1586#1605#1588#1578#1585#1610'1'
                    #1606#1605#1575#1610#1588' '#1608#1662#1610#1588#8207#1601#1585#1590' '#1575#1586#1605#1588#1578#1585#1610'1'
                    #1606#1605#1575#1610#1588' '#1576#1583#1608#1606' '#1662#1610#1588' '#1601#1585#1590
                    #1606#1605#1575#1610#1588' '#1608#1662#1610#1588#8207#1601#1585#1590' '#1575#1586#1605#1588#1578#1585#1610'2'
                    #1606#1583#1575#1585#1583)
                  TabOrder = 1
                  OnEnter = cmbEffectTypeEnter
                end
              end
              object GroupBox16: TGroupBox
                Left = 860
                Top = 0
                Width = 191
                Height = 401
                Align = alRight
                Caption = ' '#1606#1608#1593' '#1605#1588#1578#1585#1610' 3'
                TabOrder = 1
                object chkCustomerKind3: TCheckListBox
                  Left = 2
                  Top = 32
                  Width = 187
                  Height = 367
                  Align = alClient
                  ItemHeight = 13
                  TabOrder = 0
                  OnClick = ChkCustomerKind1Click
                end
                object dbchkPerson3Active: TDBCheckBox
                  Left = 2
                  Top = 15
                  Width = 187
                  Height = 17
                  Align = alTop
                  Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610' 3'#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
                  DataField = 'Person3Active'
                  DataSource = srcReciptTypes
                  TabOrder = 1
                  ValueChecked = '1'
                  ValueUnchecked = '0'
                end
              end
              object BitBtn11: TBitBtn
                Left = 273
                Top = 152
                Width = 200
                Height = 23
                Caption = #1578#1606#1592#1610#1605' '#1603#1583' '#1605#1588#1578#1585#1610' 2 '#1583#1585' Detail'#8207' '#8207' '#1575#1586' '#1605#1588#1578#1585#1610'1'
                TabOrder = 2
                OnClick = BitBtn11Click
              end
              object dbedtPerson3Caption: TDBEdit
                Left = 554
                Top = 75
                Width = 126
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'Person3Caption'
                DataSource = srcReciptTypes
                TabOrder = 3
              end
              object dbedtPerson2DetailCaption: TDBEdit
                Left = 273
                Top = 113
                Width = 126
                Height = 21
                DataField = 'Person2DetailCaption'
                DataSource = srcReciptTypes
                TabOrder = 4
              end
              object dbchkPerson3ControlWeightCustomer: TDBCheckBox
                Left = 554
                Top = 40
                Width = 209
                Height = 17
                Anchors = [akTop, akRight]
                Caption = #1603#1606#1578#1585#1604' '#1608#1586#1606' '#1589#1575#1583#1585' '#1588#1583#1607' '#1576#1585#1575#1610' '#1603#1583' '#1605#1588#1578#1585#1610'3'
                DataField = 'Person3ControlWeightCustomer'
                DataSource = srcReciptTypes
                TabOrder = 5
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object Edit1: TEdit
                Left = 0
                Top = 401
                Width = 1051
                Height = 21
                Align = alBottom
                Alignment = taCenter
                Color = clInactiveCaption
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 6
                Text = 
                  #1585#1608#1740' '#1578#1575#1740#1662' 1 '#1586#1605#1575#1606#1740' '#1705#1607' '#1605#1588#1578#1585#1740' '#1583#1740#1578#1740#1604' '#1601#1593#1575#1604' '#1588#1608#1583' '#1705#1583' '#1605#1575#1604#1705' '#1583#1585' '#1587#1740#1587#1578#1605' '#1601#1593#1575#1604' '#1605 +
                  #1740' '#1588#1608#1583'.'
              end
            end
            object TabSheet38: TTabSheet
              Caption = #1605#1588#1578#1585#1610'1'#1608'2'
              DesignSize = (
                1051
                422)
              object lblPerson2: TLabel
                Left = 452
                Top = 38
                Width = 123
                Height = 13
                Caption = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1603#1604#1605#1607' '#1605#1588#1578#1585#1610'2'
                FocusControl = dbedtPerson2Caption
              end
              object lblPerson1Caption: TLabel
                Left = 733
                Top = 8
                Width = 123
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1603#1604#1605#1607' '#1605#1588#1578#1585#1610'1'
                FocusControl = edtPerson1Caption
                ExplicitLeft = 452
              end
              object GroupBox8: TGroupBox
                Left = 0
                Top = 0
                Width = 185
                Height = 422
                Align = alLeft
                Caption = ' '#1606#1608#1593' '#1605#1588#1578#1585#1610' 2 '
                TabOrder = 0
                object ChkCustomerKind2: TCheckListBox
                  Left = 2
                  Top = 32
                  Width = 181
                  Height = 388
                  Align = alClient
                  ItemHeight = 13
                  TabOrder = 0
                  OnClick = ChkCustomerKind1Click
                end
                object ChkBoxPerson2Active: TDBCheckBox
                  Left = 2
                  Top = 15
                  Width = 181
                  Height = 17
                  Align = alTop
                  Alignment = taLeftJustify
                  Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610' 2 '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
                  DataField = 'Person2Active'
                  DataSource = srcReciptTypes
                  TabOrder = 1
                  ValueChecked = '1'
                  ValueUnchecked = '2'
                end
              end
              object GroupBox9: TGroupBox
                Left = 874
                Top = 0
                Width = 177
                Height = 422
                Align = alRight
                Caption = ' '#1606#1608#1593' '#1605#1588#1578#1585#1610' 1 '
                TabOrder = 1
                object ChkCustomerKind1: TCheckListBox
                  Left = 2
                  Top = 32
                  Width = 173
                  Height = 388
                  Align = alClient
                  ItemHeight = 13
                  Items.Strings = (
                    '0')
                  TabOrder = 0
                  OnClick = ChkCustomerKind1Click
                end
                object ChkBoxPerson1Active: TDBCheckBox
                  Left = 2
                  Top = 15
                  Width = 173
                  Height = 17
                  Align = alTop
                  Alignment = taLeftJustify
                  Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610' 1 '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
                  DataField = 'Person1Active'
                  DataSource = srcReciptTypes
                  TabOrder = 1
                  ValueChecked = '1'
                  ValueUnchecked = '2'
                end
              end
              object BitBtn3: TBitBtn
                Left = 196
                Top = 89
                Width = 186
                Height = 25
                Caption = #1578#1606#1592#1610#1605' '#1606#1608#1593' '#1605#1588#1578#1585#1610' '#1575#1586' '#1603#1583' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606
                TabOrder = 2
                OnClick = BitBtn3Click
              end
              object dbedtPerson2Caption: TDBEdit
                Left = 247
                Top = 34
                Width = 201
                Height = 21
                DataField = 'Person2Caption'
                DataSource = srcReciptTypes
                TabOrder = 3
              end
              object edtPerson1Caption: TDBEdit
                Left = 528
                Top = 4
                Width = 201
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'Person1Caption'
                DataSource = srcReciptTypes
                TabOrder = 4
              end
              object dbchkActiveReMainPersonRecipt: TDBCheckBox
                Left = 563
                Top = 61
                Width = 253
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                Caption = #1606#1605#1575#1740#1588' '#1605#1575#1606#1583#1607' '#1605#1588#1578#1585#1740' '#1583#1585' '#1607#1606#1711#1575#1605' '#1579#1576#1578' '#1601#1585#1605' '#1601#1593#1575#1604' '#1576#1575#1588#1583
                DataField = 'ActiveReMainPersonRecipt'
                DataSource = srcReciptTypes
                TabOrder = 5
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object GroupBox13: TGroupBox
                Left = 196
                Top = 124
                Width = 379
                Height = 141
                Caption = #1603#1583' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610' '#1576#1585#1575#1610' '#1575#1590#1575#1601#1607' '#1588#1583#1606' '#1605#1588#1578#1585#1610' '#1583#1585' '#1586#1605#1575#1606' '#1579#1576#1578
                TabOrder = 6
                DesignSize = (
                  379
                  141)
                object Label127: TLabel
                  Left = 329
                  Top = 26
                  Width = 43
                  Height = 13
                  Anchors = [akTop, akRight]
                  Caption = #1605#1588#1578#1585#1610'1'
                end
                object Label128: TLabel
                  Left = 329
                  Top = 53
                  Width = 43
                  Height = 13
                  Caption = #1605#1588#1578#1585#1610'2'
                end
                object Label154: TLabel
                  Left = 328
                  Top = 80
                  Width = 43
                  Height = 13
                  Caption = #1605#1588#1578#1585#1610'3'
                end
                object dblkcbb_CustomerGrpID4Add2Customers1: TDBLookupComboBox
                  Left = 14
                  Top = 22
                  Width = 309
                  Height = 21
                  DataField = '_CustomerGrpID4Add2Customers1'
                  DataSource = srcReciptTypes
                  DropDownRows = 14
                  TabOrder = 0
                end
                object dblkcbb_CustomerGrpID4Add2Customers2: TDBLookupComboBox
                  Left = 14
                  Top = 49
                  Width = 309
                  Height = 21
                  DataField = '_CustomerGrpID4Add2Customers2'
                  DataSource = srcReciptTypes
                  DropDownRows = 14
                  TabOrder = 1
                end
                object dblkcbb_CustomerGrpID4Add2Customers3: TDBLookupComboBox
                  Left = 14
                  Top = 76
                  Width = 309
                  Height = 21
                  DataField = '_CustomerGrpID4Add2Customers3'
                  DataSource = srcReciptTypes
                  DropDownRows = 14
                  TabOrder = 2
                end
              end
            end
            object tsCustomer4: TTabSheet
              Caption = #1605#1588#1578#1585#1610'4 , 5'
              ImageIndex = 2
              DesignSize = (
                1051
                422)
              object Label141: TLabel
                Left = 713
                Top = 46
                Width = 123
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1603#1604#1605#1607' '#1605#1588#1578#1585#1610'4'
                FocusControl = edtPerson4Caption
                ExplicitLeft = 725
              end
              object Label172: TLabel
                Left = 393
                Top = 46
                Width = 123
                Height = 13
                Caption = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1603#1604#1605#1607' '#1605#1588#1578#1585#1610'5'
                FocusControl = edtPerson5Caption
              end
              object GroupBox20: TGroupBox
                Left = 852
                Top = 0
                Width = 199
                Height = 422
                Align = alRight
                Caption = ' '#1606#1608#1593' '#1605#1588#1578#1585#1610' 4'
                TabOrder = 0
                object chkCustomerKind4: TCheckListBox
                  Left = 2
                  Top = 32
                  Width = 195
                  Height = 388
                  Align = alClient
                  ItemHeight = 13
                  TabOrder = 0
                  OnClick = ChkCustomerKind1Click
                end
                object dbchkPerson4Active: TDBCheckBox
                  Left = 2
                  Top = 15
                  Width = 195
                  Height = 17
                  Align = alTop
                  Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610' 4'#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
                  DataField = 'Person4Active'
                  DataSource = srcReciptTypes
                  TabOrder = 1
                  ValueChecked = '1'
                  ValueUnchecked = '0'
                end
              end
              object edtPerson4Caption: TDBEdit
                Left = 510
                Top = 42
                Width = 201
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'Person4Caption'
                DataSource = srcReciptTypes
                TabOrder = 1
              end
              object GroupBox22: TGroupBox
                Left = 0
                Top = 0
                Width = 185
                Height = 422
                Align = alLeft
                Caption = #1606#1608#1593' '#1605#1588#1578#1585#1610' 5  '
                TabOrder = 2
                object chkCustomerKind5: TCheckListBox
                  Left = 2
                  Top = 32
                  Width = 181
                  Height = 388
                  Align = alClient
                  ItemHeight = 13
                  TabOrder = 0
                  OnClick = ChkCustomerKind1Click
                end
                object dbchkPerson5Active: TDBCheckBox
                  Left = 2
                  Top = 15
                  Width = 181
                  Height = 17
                  Align = alTop
                  Alignment = taLeftJustify
                  Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610' 5 '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
                  DataField = 'Person5Active'
                  DataSource = srcReciptTypes
                  TabOrder = 1
                  ValueChecked = '1'
                  ValueUnchecked = '0'
                end
              end
              object edtPerson5Caption: TDBEdit
                Left = 188
                Top = 42
                Width = 201
                Height = 21
                DataField = 'Person5Caption'
                DataSource = srcReciptTypes
                TabOrder = 3
              end
            end
          end
        end
        object ts3: TTabSheet
          Caption = '"'#1603#1606#1578#1585#1604#1607#1575'"'
          ImageIndex = 26
          object pgc2: TPageControl
            Left = 0
            Top = 0
            Width = 1059
            Height = 450
            ActivePage = TabSheet24
            Align = alClient
            TabOrder = 0
            object TabSheet24: TTabSheet
              Caption = #1603#1606#1578#1585#1604#1607#1575
              DesignSize = (
                1051
                422)
              object Label27: TLabel
                Left = 269
                Top = 207
                Width = 3
                Height = 13
              end
              object Label29: TLabel
                Left = 219
                Top = 34
                Width = 75
                Height = 13
                Caption = #1605#1581#1604' '#1579#1576#1578' '#1587#1575#1593#1578
              end
              object Label57: TLabel
                Left = 219
                Top = 10
                Width = 105
                Height = 13
                Caption = #1603#1606#1578#1585#1604' '#1608#1590#1593#1610#1578' '#1575#1591#1604#1575#1593#1575#1578' '
              end
              object Label131: TLabel
                Left = 914
                Top = 10
                Width = 120
                Height = 13
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1606#1581#1608#1607' '#1603#1606#1578#1585#1604' '#1575#1591#1604#1575#1593#1575#1578' '#1705#1605#1705#1740
                ParentBiDiMode = False
                ExplicitLeft = 633
              end
              object Label144: TLabel
                Left = 911
                Top = 34
                Width = 122
                Height = 13
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1606#1581#1608#1607' '#1603#1606#1578#1585#1604' '#1575#1591#1604#1575#1593#1575#1578' '#1578#1705#1585#1575#1585#1740
                ParentBiDiMode = False
                ExplicitLeft = 724
              end
              object Label146: TLabel
                Left = 219
                Top = 59
                Width = 46
                Height = 13
                Caption = #1578#1575#1610#1610#1583' '#1603#1606#1606#1583#1607
              end
              object Label160: TLabel
                Left = 909
                Top = 61
                Width = 86
                Height = 13
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1575#1740#1580#1575#1583' '#1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575
                ParentBiDiMode = False
                ExplicitLeft = 722
              end
              object GroupBox1: TGroupBox
                Left = 6
                Top = 176
                Width = 364
                Height = 44
                Caption = 
                  #1581#1583#1575#1602#1604'                                          '#1608'   '#1581#1583#1575#1603#1579#1585'       ' +
                  ' '#1585#1603#1608#1585#1583' '#1602#1575#1576#1604' '#1579#1576#1578' '#1583#1585' '#1601#1585#1605' '
                TabOrder = 2
                DesignSize = (
                  364
                  44)
                object dbedtMaxRowsPerForm: TDBEdit
                  Left = 13
                  Top = 14
                  Width = 124
                  Height = 21
                  Anchors = [akTop, akRight]
                  DataField = 'MaxRowsPerForm'
                  DataSource = srcReciptTypes
                  TabOrder = 0
                end
                object dbedtMinRowsPerForm: TDBEdit
                  Left = 223
                  Top = 18
                  Width = 124
                  Height = 21
                  Anchors = [akTop, akRight]
                  DataField = 'MinRowsPerForm'
                  DataSource = srcReciptTypes
                  TabOrder = 1
                end
              end
              object dbchkOutPutWithTransFormActive: TDBCheckBox
                Left = 696
                Top = 121
                Width = 209
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                Caption = #1570#1610#1575' '#1576#1585' '#1581#1587#1576' '#1590#1585#1575#1610#1576' '#1578#1576#1583#1610#1604' '#1581#1608#1575#1604#1607' '#1589#1575#1583#1585' '#1588#1608#1583'.'#8207
                DataField = 'OutPutWithTransFormActive'
                DataSource = srcReciptTypes
                TabOrder = 1
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object GroupBox4: TGroupBox
                Left = 633
                Top = 168
                Width = 364
                Height = 49
                Anchors = [akTop, akRight]
                Caption = #1603#1583' '#1601#1585#1605#1607#1575#1610' '#1578#1575#1579#1610#1585' '#1662#1584#1610#1585' '#1583#1585' '#1575#1579#1585' '#1590#1585#1575#1610#1576' '#1578#1576#1583#1610#1604'            '
                TabOrder = 3
                object SpeedButton9: TSpeedButton
                  Left = 6
                  Top = 16
                  Width = 23
                  Height = 22
                  Caption = '...'
                  OnClick = SpeedButton9Click
                end
                object dbedtFormTypeForTranseForm: TDBEdit
                  Left = 31
                  Top = 16
                  Width = 324
                  Height = 21
                  DataField = 'FormTypeForTranseForm'
                  DataSource = srcReciptTypes
                  TabOrder = 0
                end
              end
              object dbchkControlCodeUnic: TDBCheckBox
                Left = 728
                Top = 97
                Width = 177
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                Caption = ' '#1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575' '#1578#1603#1585#1575#1585#1610' '#1603#1606#1578#1585#1604' '#1588#1608#1583'.'#8207
                DataField = 'ControlCodeUnic'
                DataSource = srcReciptTypes
                TabOrder = 0
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object dbchkCostDownSaveActive: TDBCheckBox
                Left = 269
                Top = 145
                Width = 167
                Height = 17
                Alignment = taLeftJustify
                Caption = #1584#1582#1610#1585#1607' '#1603#1575#1607#1588' '#1575#1585#1586#1588' '#1606#1605#1575#1610#1588' '#1588#1608#1583
                DataField = 'CostDownSaveActive'
                DataSource = srcReciptTypes
                TabOrder = 4
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object cmbActiveTimeToStr: TDBComboBox
                Left = 17
                Top = 30
                Width = 200
                Height = 21
                DataField = 'ActiveTimeToStr'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1606#1583#1575#1585#1583
                  'Master'
                  'Details'
                  'Master & Detail')
                TabOrder = 5
                OnEnter = cmbEffectTypeEnter
              end
              object CmbAutoStateChange: TDBComboBox
                Left = 17
                Top = 6
                Width = 200
                Height = 21
                AutoDropDown = True
                Color = clWhite
                DataField = 'AutoStateChange'
                DataSource = srcReciptTypes
                Items.Strings = (
                  '0-'#1576#1593#1583' '#1575#1586' '#1578#1575#1574#1610#1583' '#1602#1591#1593#1610' '#1588#1608#1583
                  '1-'#1576#1593#1583' '#1575#1586' '#1670#1575#1662' '#1602#1591#1593#1610' '#1588#1608#1583
                  '2-'#1605#1608#1602#1578' '#1576#1575#1588#1583
                  '3-'#1579#1576#1578' '#1575#1608#1604#1740#1607' '#1662#1740#1588' '#1606#1608#1740#1587' '#1576#1575#1588#1583
                  '4-'#1579#1576#1578' '#1575#1608#1604#1740#1607' '#1605#1600#1600#1600#1600#1608#1602#1600#1600#1600#1578' '#1576#1575#1588#1583
                  ''
                  '')
                TabOrder = 6
                OnEnter = cmbEffectTypeEnter
              end
              object dbchkStandardConsumptionActive: TDBCheckBox
                Left = 19
                Top = 105
                Width = 190
                Height = 17
                Alignment = taLeftJustify
                Caption = #1590#1585#1740#1576' '#1605#1589#1585#1601' '#1575#1587#1578#1575#1606#1583#1575#1585#1583' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
                DataField = 'StandardConsumptionActive'
                DataSource = srcReciptTypes
                TabOrder = 7
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object cmbAidNumberUnic: TDBComboBox
                Left = 529
                Top = 6
                Width = 376
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'AidNumberUnic'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1576#1583#1608#1606' '#1705#1606#1578#1585#1604
                  #1583#1585' '#1589#1608#1585#1578' '#1578#1705#1585#1575#1585#1740' '#1662#1610#1594#1575#1605' '#1608' '#1580#1604#1608#1711#1610#1585#1610' '#1575#1586' '#1579#1576#1578
                  #1583#1585' '#1589#1608#1585#1578' '#1578#1705#1585#1575#1585#1740' '#1662#1610#1594#1575#1605' '#1608' '#1579#1576#1578)
                TabOrder = 8
                OnEnter = cmbEffectTypeEnter
              end
              object cmbUnicCodeCheck: TDBComboBox
                Left = 529
                Top = 33
                Width = 376
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'UnicCodeCheck'
                DataSource = srcReciptTypes
                Items.Strings = (
                  '0-'#1576#1583#1608#1606' '#1705#1606#1578#1585#1604
                  
                    '1-'#1603#1583' '#1603#1575#1604#1575#1610' '#1578#1603#1585#1575#1585#1610' '#1603#1606#1578#1585#1604' '#1588#1608#1583'('#1583#1585' '#1601#1585#1605' '#1578#1608#1586#1740#1606' '#1608#1585#1608#1583' '#1705#1583' '#1705#1575#1604#1575' '#1575#1580#1576#1575#1585#1740' '#1576#1575#1588 +
                    #1583'.)'
                  '2-'#1601#1585#1575#1582#1608#1575#1606#1740' '#1578#1705#1585#1575#1585#1740' '#1705#1606#1578#1585#1604' '#1588#1608#1583
                  '3-'#1607#1585#1705#1575#1604#1575#1583#1585' '#1705#1604' '#1587#1575#1604' '#1740#1705#1576#1575#1585' '#1601#1602#1591' '#1579#1576#1578' '#1588#1608#1583)
                TabOrder = 9
                OnEnter = cmbEffectTypeEnter
              end
              object cmbConfirmingActive: TDBComboBox
                Left = 17
                Top = 55
                Width = 200
                Height = 21
                DataField = 'ConfirmingActive'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1594#1740#1585' '#1601#1593#1575#1604
                  #1601#1593#1575#1604
                  #1601#1593#1575#1604' '#1608' '#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588)
                TabOrder = 10
                OnEnter = cmbEffectTypeEnter
              end
              object cmbMaxControlCode: TDBComboBox
                Left = 529
                Top = 60
                Width = 376
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'MaxControlCode'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1594#1740#1585#1601#1593#1575#1604
                  #1576#1586#1585#1711#1578#1585#1610#1606' '#1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575' '#1583#1585' '#1575#1608#1604#1610#1606' '#1585#1603#1608#1585#1583' '#1575#1610#1580#1575#1583' '#1588#1608#1583'.'#8207
                  #1576#1586#1585#1711#1578#1585#1610#1606' '#1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575' '#1575#1586' '#1578#1585#1705#1740#1576' '#1587#1575#1604' '#1608' '#1575#1606#1576#1575#1585' '#1575#1610#1580#1575#1583' '#1588#1608#1583'.'#8207)
                TabOrder = 11
                OnEnter = cmbEffectTypeEnter
              end
            end
            object TabSheet8: TTabSheet
              Caption = #1603#1606#1578#1585#1604' '#1607#1575#1610' '#1579#1576#1578
              ImageIndex = 7
              DesignSize = (
                1051
                422)
              object Label125: TLabel
                Left = 839
                Top = 41
                Width = 121
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1608#1590#1593#1610#1578' '#1601#1585#1605' '#1608' '#1606#1581#1608#1607' '#1662#1585#1583#1575#1582#1578
                ExplicitLeft = 558
              end
              object Label152: TLabel
                Left = 839
                Top = 81
                Width = 56
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1606#1581#1608#1607' '#1662#1585#1583#1575#1582#1578
                ExplicitLeft = 652
              end
              object dbchkPrintAfterPost: TDBCheckBox
                Left = 839
                Top = 12
                Width = 180
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                Caption = #1670#1575#1662' '#1575#1578#1608#1605#1575#1578#1610#1603' '#1662#1587' '#1575#1586' '#1579#1576#1578' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
                DataField = 'PrintAfterPost'
                DataSource = srcReciptTypes
                TabOrder = 0
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object cmbAutoInsertPostInsert: TDBComboBox
                Left = 338
                Top = 37
                Width = 497
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'AutoInsertPostInsert'
                DataSource = srcReciptTypes
                Items.Strings = (
                  '(0)'#1594#1610#1585' '#1601#1593#1575#1604
                  
                    '(1)'#1601#1585#1605' '#1583#1585' '#1586#1605#1575#1606' '#1576#1575#1586' '#1588#1583#1606' '#1583#1585' '#1581#1575#1604#1578' '#1580#1583#1610#1583' '#1576#1575#1588#1583' '#1608' '#1662#1587' '#1575#1586' '#1579#1576#1578' '#1601#1585#1605' '#1606#1610#1586' '#1583#1608#1576 +
                    #1575#1585#1607' '#1583#1585' '#1608#1590#1593#1610#1578' '#1580#1583#1610#1583' '#1602#1585#1575#1585' '#1711#1610#1585#1583'.'
                  '(2)'#1601#1585#1605' '#1606#1581#1608#1607' '#1662#1585#1583#1575#1582#1578' '#1662#1587' '#1575#1586' '#1579#1576#1578' '#1575#1578#1608#1605#1575#1578#1610#1603' '#1576#1575#1586' '#1588#1608#1583
                  
                    '(3)'#1588#1585#1575#1740#1591' '#1581#1575#1604#1578' (1) '#1576#1575#1588#1583' '#1608' '#1662#1587' '#1575#1586' '#1579#1576#1578#1548' '#1575#1578#1608#1605#1575#1578#1610#1603' '#1601#1585#1605' '#1705#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578' '#1608 +
                    ' '#1587#1662#1587' '#1601#1585#1605' '#1606#1581#1608#1607' '#1662#1585#1583#1575#1582#1578' '#1576#1575#1586' '#1588#1608#1583
                  '(4) '#1601#1593#1575#1604' '#1576#1575' '#1575#1605#1705#1575#1606' '#1579#1576#1578' '#1583#1585#1589#1583' ')
                TabOrder = 1
                OnEnter = cmbShortCutKeyEnter
              end
              object dbchkUserSecurityCheckActive: TDBCheckBox
                Left = 614
                Top = 126
                Width = 180
                Height = 17
                Alignment = taLeftJustify
                Caption = #1570#1610#1575' '#1586#1605#1575#1606' '#1608#1610#1585#1575#1610#1588' '#1603#1583' '#1603#1575#1585#1576#1585' '#1603#1606#1578#1585#1604' '#1588#1608#1583'.'
                DataField = 'UserSecurityCheckActive'
                DataSource = srcReciptTypes
                Enabled = False
                TabOrder = 3
                ValueChecked = '1'
                ValueUnchecked = '2'
              end
              object grpUserSecurityCheckActive: TGroupBox
                Left = 454
                Top = 162
                Width = 342
                Height = 164
                Caption = ' '#1606#1581#1608#1607' '#1608#1740#1585#1575#1740#1588' '#1608' '#1705#1606#1578#1585#1604' '#1576#1575' '#1705#1583' '#1705#1575#1585#1740#1585' '
                TabOrder = 4
                object chklstUserSecurityCheckActive: TCheckListBox
                  Left = 2
                  Top = 15
                  Width = 338
                  Height = 147
                  Align = alClient
                  ItemHeight = 13
                  Items.Strings = (
                    #1601#1602#1591' '#1705#1575#1585#1576#1585' '#1579#1576#1578' '#1705#1606#1606#1583#1607' '#1576#1578#1608#1575#1606#1583' '#1608#1740#1585#1575#1740#1588' '#1705#1606#1583
                    #1601#1740#1604#1578#1585' '#1605#1588#1578#1585#1740' 1 '#1576#1585#1575#1587#1575#1587' '#1705#1575#1585#1576#1585' '#1605#1580#1575#1586
                    #1601#1740#1604#1578#1585' '#1605#1588#1578#1585#1740' 2 '#1576#1585#1575#1587#1575#1587' '#1705#1575#1585#1576#1585' '#1605#1580#1575#1586
                    #1601#1740#1604#1578#1585' '#1605#1588#1578#1585#1740' 3 '#1576#1585#1575#1587#1575#1587' '#1705#1575#1585#1576#1585' '#1605#1580#1575#1586
                    #1601#1602#1591' '#1705#1575#1585#1576#1585' '#1579#1576#1578' '#1705#1606#1606#1583#1607' '#1601#1585#1605' '#1607#1575#1740' '#1579#1576#1578' '#1588#1583#1607' '#1582#1608#1583' '#1585#1575' '#1585#1608#1740#1578' '#1705#1606#1583
                    #1601#1740#1604#1578#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1579#1576#1578' '#1588#1583#1607'  '#1601#1585#1605' '#1585#1608#1740' '#1605#1588#1578#1585#1740' 1 '#1576#1585#1575#1587#1575#1587' '#1705#1575#1585#1576#1585' '#1605#1580#1575#1586
                    #1601#1740#1604#1578#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1579#1576#1578' '#1588#1583#1607'  '#1601#1585#1605' '#1585#1608#1740' '#1605#1588#1578#1585#1740' 2 '#1576#1585#1575#1587#1575#1587' '#1705#1575#1585#1576#1585' '#1605#1580#1575#1586
                    #1601#1740#1604#1578#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1579#1576#1578' '#1588#1583#1607'  '#1601#1585#1605' '#1585#1608#1740' '#1605#1588#1578#1585#1740' 3 '#1576#1585#1575#1587#1575#1587' '#1705#1575#1585#1576#1585' '#1605#1580#1575#1586
                    #1576#1585#1575#1587#1575#1587'   '#1605#1585#1705#1586#1601#1585#1608#1588'      '#1608' '#1705#1575#1585#1576#1585' '#1605#1585#1578#1576#1591' '#1576#1575' '#1570#1606' '#1705#1606#1578#1585#1604' '#1575#1606#1580#1575#1605' '#1588#1608#1583)
                  TabOrder = 0
                  OnClick = chklstUserSecurityCheckActiveClick
                end
              end
              object GroupBox19: TGroupBox
                Left = 839
                Top = 150
                Width = 159
                Height = 179
                Anchors = [akTop, akRight]
                Caption = ' '#1606#1608#1593' '#1605#1588#1578#1585#1610' '#1606#1581#1608#1607' '#1662#1585#1583#1575#1582#1578
                TabOrder = 5
                object chklstchkCustomerKindPayments: TCheckListBox
                  Left = 2
                  Top = 15
                  Width = 155
                  Height = 162
                  Align = alClient
                  ItemHeight = 13
                  TabOrder = 0
                  OnClick = ChkCustomerKind1Click
                end
              end
              object cmbPaymentsActive: TDBComboBox
                Left = 338
                Top = 77
                Width = 497
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'PaymentsActive'
                DataSource = srcReciptTypes
                Items.Strings = (
                  '(0)'#1594#1610#1585' '#1601#1593#1575#1604
                  '(1)'#1606#1581#1608#1607' '#1662#1585#1583#1575#1582#1578' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
                  '(2)'#1606#1581#1608#1607' '#1662#1585#1583#1575#1582#1578' '#1601#1593#1575#1604' '#1576#1575#1588#1583' '#8207#1608' '#1581#1578#1605#1575' '#1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1588#1608#1583)
                TabOrder = 2
                OnEnter = cmbShortCutKeyEnter
              end
              object GroupBox23: TGroupBox
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 405
                Height = 416
                Align = alLeft
                Caption = 
                  ' '#1583#1585' '#1586#1605#1575#1606' '#1581#1584#1601' '#1608' '#1740#1575' '#1608#1740#1585#1575#1740#1588' '#1570#1740#1578#1605' '#1607#1575#1740' '#1601#1585#1605' '#1576#1585#1575#1740' '#1662#1587#1578' '#1607#1575#1740' '#1587#1575#1586#1605#1575#1606#1740' '#1575#1591#1604#1575#1593 +
                  ' '#1585#1587#1575#1606#1740' '#1588#1608#1583' '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 6
                object SpeedButton8: TSpeedButton
                  AlignWithMargins = True
                  Left = 62
                  Top = 18
                  Width = 281
                  Height = 26
                  Margins.Left = 60
                  Margins.Right = 60
                  Action = actUserNotification
                  Align = alTop
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CE63
                    0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
                    0000CE630000CE630000CE630000CE630000CE630000CE630000FF00FF00CE63
                    0000FFFFFF00FFFFF700948C8C00948C8C00948C8C00948C8C00FFD6AD00FFD6
                    AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00CE630000FF00FF00CE63
                    0000FFFFFF00FFFFFF00313129006B7394001029A50021213900FFE7C600FFDE
                    B500FFD6AD00FFD6AD00FFD6AD00FFD6AD00FFD6AD00CE630000FF00FF00CE63
                    0000FFFFFF00FFFFFF0031313900637BE700FFFFF70010219C00FFEFD600FFE7
                    C600FFDEB500FFD6AD00FFD6AD00FFD6AD00FFD6AD00CE630000FF00FF00CE63
                    0000FFFFFF00FFFFFF0042424200524A4A005A524A00182994006373D600FFEF
                    D600FFE7C600FFDEB500FFD6AD00FFD6AD00FFD6AD00CE630000FF00FF00CE63
                    0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00637BE700425A
                    E700FFEFD600FFE7C600FFDEB500FFD6AD00FFD6AD00CE630000FF00FF00CE63
                    0000FFFFFF00FFFFFF00948C8C00948C8C00948C8C00948C8C00FFFFFF00FFFF
                    FF00FFF7E700FFEFD600FFE7C600FFDEB500FFD6AD00CE630000FF00FF00CE63
                    0000FFFFFF00FFFFFF00313129006B7394001029A50021213900FFFFFF00FFFF
                    FF00FFFFF700FFF7E700FFEFD600FFE7C600FFDEB500CE630000FF00FF00CE63
                    0000FFFFFF00FFFFFF0031313900637BE700FFFFFF0010219C00FFFFFF00FFFF
                    FF00FFFFFF00FFFFF700FFF7E700FFEFD600FFE7C600CE630000FF00FF00CE63
                    0000FFFFFF00FFFFFF0042424200524A4A005A524A00182994006373D600FFFF
                    FF00FFFFFF00FFFFFF00FFFFF700FFF7E700FFEFD600CE630000FF00FF00CE63
                    0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00637BE700425A
                    E700FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7E700CE630000FF00FF00CE63
                    0000CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
                    0000CE630000CE630000CE630000CE630000CE630000CE630000FF00FF00FF00
                    FF00CE630000CE630000CE630000CE630000CE630000CE630000CE630000CE63
                    0000CE630000CE630000CE630000CE630000CE630000FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                    FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                  ParentShowHint = False
                  ShowHint = True
                end
                object grdPosition: TCedarDbgrid
                  Left = -336
                  Top = 47
                  Width = 739
                  Height = 367
                  Align = alRight
                  Anchors = [akLeft, akTop, akRight, akBottom]
                  Color = clSkyBlue
                  DataSource = srcPosition
                  DynProps = <>
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  FooterParams.FillStyle = cfstSolidEh
                  FooterParams.Font.Charset = DEFAULT_CHARSET
                  FooterParams.Font.Color = clWindowText
                  FooterParams.Font.Height = -13
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
                  OptionsEh = [dghFixed3D, dghFrozen3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDblClickOptimizeColWidth, dghDialogFind, dghColumnResize, dghColumnMove]
                  ParentFont = False
                  ReadOnly = True
                  RowHeight = 18
                  SearchPanel.Enabled = True
                  SearchPanel.FilterOnTyping = True
                  SortLocal = True
                  TabOrder = 0
                  TitleParams.SortMarkerStyle = smstDefaultEh
                  OnDrawColumnCell = dbgrd2DrawColumnCell
                  OnKeyPress = dbgrd2KeyPress
                  ActiveSearchPanel = False
                  SelectFooterIndex = 0
                  Columns = <
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'PositionCode'
                      Footers = <>
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'PositionTitle'
                      Footers = <>
                      Width = 245
                    end>
                  object RowDetailData: TRowDetailPanelControlEh
                  end
                end
              end
            end
            object TabSheet36: TTabSheet
              Caption = #1603#1606#1578#1585#1604' '#1607#1575#1610' '#1601#1585#1608#1588
              ImageIndex = 4
              DesignSize = (
                1051
                422)
              object dbchkSellsEmporiumActive: TDBCheckBox
                Left = 676
                Top = 7
                Width = 148
                Height = 17
                Anchors = [akTop, akRight]
                BiDiMode = bdRightToLeft
                Caption = #1603#1583' '#1605#1585#1603#1586' '#1601#1585#1608#1588' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
                DataField = 'SellsEmporiumActive'
                DataSource = srcReciptTypes
                ParentBiDiMode = False
                TabOrder = 0
                ValueChecked = '1'
                ValueUnchecked = '0'
                WordWrap = True
              end
              object dbchkSellsMethodActive: TDBCheckBox
                Left = 676
                Top = 39
                Width = 147
                Height = 17
                Anchors = [akTop, akRight]
                BiDiMode = bdRightToLeft
                Caption = #1603#1583' '#1606#1581#1608#1607' '#1601#1585#1608#1588' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
                DataField = 'SellsMethodActive'
                DataSource = srcReciptTypes
                ParentBiDiMode = False
                TabOrder = 1
                ValueChecked = '1'
                ValueUnchecked = '0'
                WordWrap = True
              end
              object dbchkMasirActive: TDBCheckBox
                Left = 676
                Top = 71
                Width = 120
                Height = 17
                Anchors = [akTop, akRight]
                BiDiMode = bdRightToLeft
                Caption = #1603#1583' '#1605#1587#1610#1585#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
                DataField = 'MasirActive'
                DataSource = srcReciptTypes
                ParentBiDiMode = False
                TabOrder = 2
                ValueChecked = '1'
                ValueUnchecked = '0'
                WordWrap = True
              end
              object dbchkDeliveryActive: TDBCheckBox
                Left = 676
                Top = 103
                Width = 164
                Height = 17
                Anchors = [akTop, akRight]
                BiDiMode = bdRightToLeft
                Caption = #1603#1583' '#1605#1581#1604' '#1578#1581#1608#1610#1604' '#1603#1575#1604#1575' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
                DataField = 'DeliveryActive'
                DataSource = srcReciptTypes
                ParentBiDiMode = False
                TabOrder = 3
                ValueChecked = '1'
                ValueUnchecked = '0'
                WordWrap = True
              end
              object chkWastesFunctions: TDBCheckBox
                Left = 676
                Top = 135
                Width = 187
                Height = 17
                Anchors = [akTop, akRight]
                BiDiMode = bdRightToLeft
                Caption = #1590#1575#1610#1593#1575#1578'1'#1590#1575#1610#1593#1575#1578'2 '#1608' '#1603#1575#1585#1603#1585#1583' '#1601#1593#1575#1604' '#1576#1575#1588#1606#1583
                DataField = 'WastesFunctions'
                DataSource = srcReciptTypes
                ParentBiDiMode = False
                TabOrder = 4
                ValueChecked = '1'
                ValueUnchecked = '0'
                WordWrap = True
              end
              object dbchkSellPriceCheck: TDBCheckBox
                Left = 676
                Top = 167
                Width = 355
                Height = 17
                Anchors = [akTop, akRight]
                BiDiMode = bdRightToLeft
                Caption = 
                  #1583#1585' '#1589#1608#1585#1578' '#1603#1605#1578#1585' '#1576#1608#1583#1606' '#1602#1610#1605#1578' '#1579#1576#1578' '#1588#1583#1607' '#1575#1586' '#1602#1610#1605#1578' '#1576#1607#1575#1610' '#1601#1585#1608#1588' 1 '#1662#1610#1594#1575#1605' '#1583#1575#1583#1607' '#1588#1608 +
                  #1583'.'
                DataField = 'SellPriceCheck'
                DataSource = srcReciptTypes
                ParentBiDiMode = False
                TabOrder = 5
                ValueChecked = '1'
                ValueUnchecked = '0'
                WordWrap = True
              end
              object GroupBox17: TGroupBox
                Left = 284
                Top = 16
                Width = 358
                Height = 153
                Anchors = [akTop, akRight]
                Caption = #1575#1590#1575#1601#1607' '#1588#1583#1606' '#1575#1578#1608#1605#1575#1578#1740#1705' '#1583#1585#1589#1583#1740' '#1575#1586' '#1705#1575#1604#1575#1740' '#1601#1585#1608#1588' '#1576#1607' '#1593#1606#1608#1575#1606' '#1607#1583#1740#1607' '#1608' '#1575#1588#1575#1606#1578#1740#1608#1606
                TabOrder = 6
                object Label132: TLabel
                  Left = 231
                  Top = 71
                  Width = 81
                  Height = 13
                  Caption = #1581#1583#1575#1602#1604' '#1605#1602#1583#1575#1585' '#1582#1585#1740#1583
                end
                object Label133: TLabel
                  Left = 231
                  Top = 120
                  Width = 119
                  Height = 13
                  Caption = ' '#1605#1740#1586#1575#1606' '#1705#1575#1604#1575#1740' '#1607#1583#1740#1607' (20%) '
                end
                object Label134: TLabel
                  Left = 231
                  Top = 23
                  Width = 55
                  Height = 13
                  Caption = #1606#1608#1593' '#1605#1581#1575#1587#1576#1607
                end
                object edtMinAmountOfGiftItems: TDBEdit
                  Left = 6
                  Top = 69
                  Width = 222
                  Height = 21
                  DataField = 'MinAmountOfGiftItems'
                  DataSource = srcReciptTypes
                  TabOrder = 0
                end
                object edtPercentGiftItems: TDBEdit
                  Left = 6
                  Top = 117
                  Width = 222
                  Height = 21
                  DataField = 'PercentGiftItems'
                  DataSource = srcReciptTypes
                  TabOrder = 1
                end
                object cmbActiveGiftItems: TDBComboBox
                  Left = 6
                  Top = 22
                  Width = 222
                  Height = 21
                  AutoDropDown = True
                  Color = clWhite
                  DataField = 'ActiveGiftItems'
                  DataSource = srcReciptTypes
                  Items.Strings = (
                    #1594#1740#1585' '#1601#1593#1575#1604
                    #1601#1593#1575#1604' '#1576#1585' '#1581#1587#1576' '#1578#1606#1592#1740#1605#1575#1578' '#1584#1740#1604
                    #1601#1593#1575#1604' '#1576#1585' '#1581#1587#1576' '#1601#1585#1605' '#1578#1593#1575#1585#1740#1601' '#1607#1583#1740#1607' '#1583#1585' '#1587#1591#1585' '#1580#1583#1740#1583
                    #1601#1593#1575#1604' '#1576#1585' '#1581#1587#1576' '#1601#1585#1605' '#1578#1593#1575#1585#1740#1601' '#1607#1583#1740#1607' '#1583#1585' '#1607#1605#1575#1606' '#1587#1591#1585
                    '')
                  TabOrder = 2
                  OnEnter = cmbEffectTypeEnter
                end
              end
            end
            object TabSheet40: TTabSheet
              Caption = #1603#1606#1578#1585#1604' '#1575#1593#1578#1576#1575#1585
              ImageIndex = 2
              DesignSize = (
                1051
                422)
              object Label36: TLabel
                Left = 746
                Top = 78
                Width = 162
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1606#1581#1608#1607#8207#1603#1606#1578#1585#1604' '#1575#1593#1578#1576#1575#1585#1605#1588#1578#1585#1610' '#1583#1585#8207' '#1586#1605#1575#1606#8207#1579#1576#1578#8207
                ExplicitLeft = 465
              end
              object dbchkCreditChkCurrentForm: TDBCheckBox
                Left = 476
                Top = 29
                Width = 264
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                Caption = #1601#1585#1605' '#1580#1575#1585#1610' '#1583#1585' '#1605#1581#1575#1587#1576#1607' '#1587#1602#1601' '#1575#1593#1578#1576#1575#1585' '#1605#1588#1578#1585#1610' '#1604#1581#1575#1592' '#1588#1608#1583
                DataField = 'CreditChkCurrentForm'
                DataSource = srcReciptTypes
                TabOrder = 0
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object cmbMaxCreditChecked: TDBComboBox
                Left = 532
                Top = 74
                Width = 208
                Height = 21
                Anchors = [akTop, akRight]
                Color = clWhite
                DataField = 'MaxCreditChecked'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1601#1602#1591' '#1662#1610#1594#1575#1605#8207
                  #1610#1662#1594#1575#1605' '#1608' '#1580#1604#1608#1711#1610#1585#1610' '#1575#1586' '#1579#1576#1578
                  #1606#1600#1600#1583#1575#1585#1583)
                TabOrder = 1
                OnEnter = cmbEffectTypeEnter
              end
            end
            object TabSheet35: TTabSheet
              Caption = #1603#1606#1578#1585#1604' '#1605#1602#1583#1575#1585'/'#1608#1586#1606'/'#1605#1576#1604#1594
              ImageIndex = 4
              DesignSize = (
                1051
                422)
              object Label18: TLabel
                Left = 326
                Top = 39
                Width = 75
                Height = 13
                Caption = #1606#1608#1593' '#1602#1610#1605#1578' '#1711#1584#1575#1585#1610
              end
              object Label113: TLabel
                Left = 326
                Top = 7
                Width = 101
                Height = 13
                Caption = #1605#1602#1583#1575#1585' '#1578#1575#1610#1610#1583#1610'/'#1576#1585#1711#1588#1578#1610
              end
              object Label123: TLabel
                Left = 326
                Top = 101
                Width = 77
                Height = 13
                Caption = #1605#1576#1604#1594' '#1608' '#1576#1607#1575#1610' '#1608#1575#1581#1583
              end
              object Label20: TLabel
                Left = 326
                Top = 130
                Width = 206
                Height = 13
                Caption = #1601#1610#1604#1583' '#1607#1575#1610' '#1705#1585#1575#1610#1607' '#1581#1605#1604' '#1548#1605#1608#1575#1583'  '#1548#1583#1587#1578#1605#1586#1583' '#1608' '#1587#1585#1576#1575#1585' '
              end
              object Label6: TLabel
                Left = 326
                Top = 70
                Width = 195
                Height = 13
                Caption = '  '#1606#1581#1608#1607' '#1579#1576#1578' '#1608' '#1605#1581#1575#1587#1576#1607' '#1578#1593#1583#1575#1583' '#1583#1585' '#1603#1575#1585#1578#1606' '#1607#1585' '#1603#1575#1604#1575' '
              end
              object lbl13: TLabel
                Left = 858
                Top = 133
                Width = 162
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1578#1593#1583#1575#1583' '#1585#1602#1605' '#1575#1593#1588#1575#1585' '#1601#1610','#1605#1602#1583#1575#1585' '#1608#1586#1606' '#1608'...'
                FocusControl = edtRoundCount
                ExplicitLeft = 671
              end
              object Label124: TLabel
                Left = 326
                Top = 165
                Width = 136
                Height = 13
                Caption = #1601#1610' '#1608' '#1605#1576#1604#1594' '#1581#1602' '#1575#1604#1593#1605#1604'('#1603#1575#1585#1605#1586#1583') '
              end
              object Label129: TLabel
                Left = 326
                Top = 196
                Width = 242
                Height = 13
                Caption = #1606#1581#1608#1607' '#1578#1588#1582#1740#1589' '#1605#1581#1575#1587#1576#1607' '#1576#1607#1575#1740' '#1705#1604' '#1576#1585' '#1575#1587#1575#1587' '#1605#1602#1583#1575#1585' '#1608' '#1608#1586#1606
              end
              object Label171: TLabel
                Left = 326
                Top = 236
                Width = 305
                Height = 13
                Caption = #1606#1585#1582' '#1578#1608#1575#1601#1602' '#1576#1575' '#1605#1588#1578#1585#1610' '#1580#1607#1578' '#1587#1607#1608#1604#1578' '#1605#1581#1575#1587#1576#1607' '#1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607' '#1601#1593#1575#1604' '#1576#1575#1588#1583
              end
              object dbrgrpUnitPriceReadOnly: TDBRadioGroup
                Left = 807
                Top = 74
                Width = 225
                Height = 55
                Anchors = [akTop, akRight]
                Caption = ' '#1606#1581#1608#1607' '#1579#1576#1578' '#1608' '#1605#1581#1575#1587#1576#1607' '#1576#1607#1575#1610' '#1608#1575#1581#1583' '#1608' '#1576#1607#1575#1610' '#1705#1604
                Columns = 3
                DataField = 'UnitPriceReadOnly'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1576#1607#1575#1610' '#1705#1604
                  #1601#1610
                  #1607#1585#1583#1608)
                TabOrder = 1
                Values.Strings = (
                  '0'
                  '1'
                  '2')
              end
              object cmbAutoPrice: TDBComboBox
                Left = 1
                Top = 35
                Width = 321
                Height = 21
                AutoDropDown = True
                Color = clWhite
                DataField = 'AutoPrice'
                DataSource = srcReciptTypes
                Items.Strings = (
                  '0-'#1606#1583#1575#1585#1583
                  '1-'#1591#1576#1602' '#1585#1608#1588#1607#1575#1610' '#1605#1578#1583#1575#1608#1604
                  '2-'#1576#1585#1581#1587#1576' '#1606#1585#1582' '#1601#1585#1608#1588'('#1575#1593#1604#1575#1605#1740#1607' '#1602#1740#1605#1578')'
                  '3-'#1576#1585#1581#1587#1576' '#1606#1585#1582' '#1582#1585#1610#1583'('#1575#1593#1604#1575#1605#1740#1607' '#1602#1740#1605#1578')'
                  '4-'#1575#1587#1578#1575#1606#1583#1575#1585#1583
                  '5-'#1575#1593#1604#1575#1605#1610#1607' '#1602#1610#1605#1578
                  '6-'#1578#1608#1575#1601#1602#1575#1578' '#1606#1585#1582' '#1582#1575#1589' '#1605#1588#1578#1585#1740'(1)'
                  '7-'#1578#1608#1575#1601#1602#1575#1578' '#1606#1585#1582' '#1582#1575#1589' '#1608' '#1575#1593#1604#1575#1605#1610#1607' '#1602#1610#1605#1578
                  '8-'#1575#1593#1604#1575#1605#1610#1607' '#1602#1610#1605#1578' '#1583#1585' '#1589#1608#1585#1578#1610' '#1603#1607' '#1583#1585' '#1570#1582#1585#1610#1606' '#1575#1593#1604#1575#1605#1610#1607' '#1603#1575#1604#1575' '#1608#1580#1608#1583' '#1583#1575#1588#1578#1607' '#1576#1575#1588#1583
                  '9-'#1602#1585#1575#1585#1583#1575#1583
                  '10-'#1575#1593#1604#1575#1605#1610#1607' '#1602#1610#1605#1578' '#1608' '#1578#1582#1601#1610#1601
                  '11-'#1575#1593#1604#1575#1605#1740#1607' '#1602#1740#1605#1578' '#1576#1575' '#1588#1606#1575#1587#1607' '#1580#1586#1569' '#1705#1575#1604#1575
                  '12- '#1575#1593#1604#1575#1605#1740#1607' '#1602#1740#1605#1578' '#1608' '#1605#1593#1585#1601#1740' '#1575#1606#1576#1575#1585
                  '13-'#1578#1608#1575#1601#1602#1575#1578' '#1606#1585#1582' '#1582#1575#1589' '#1605#1588#1578#1585#1740'(2) '
                  '14-'#1602#1585#1575#1585#1583#1575#1583' '#1578#1575#1579#1740#1585' '#1576#1585' '#1582#1585#1740#1583
                  '15-'#1602#1585#1575#1585#1583#1575#1583' '#1578#1575#1579#1740#1585' '#1576#1585' '#1601#1585#1608#1588
                  '16-'#1575#1593#1604#1575#1605#1740#1607' '#1602#1740#1605#1578' '#1608' '#1601#1585#1605' '#1662#1583#1585' '#1575#1589#1604#1740' ('#1585#1740#1588#1607' /'#1602#1585#1575#1583#1575#1583' '#1582#1585#1740#1583')'
                  '17- '#1705#1583' '#1605#1588#1578#1585#1740' '#1583#1740#1578#1740#1604' ('#1605#1575#1604#1705')'#1579#1576#1578' '#1583#1585' '#1575#1593#1604#1575#1605#1740#1607' '#1602#1740#1605#1578
                  '18-'#1578#1608#1575#1601#1602#1575#1578' '#1606#1585#1582' '#1582#1575#1589' '#1608' '#1575#1593#1604#1575#1605#1610#1607' '#1602#1610#1605#1578' '#1705#1583' '#1605#1588#1578#1585#1740' '#1583#1740#1578#1740#1604' ('#1605#1575#1604#1705')')
                TabOrder = 2
                OnEnter = cmbEffectTypeEnter
              end
              object GroupBox7: TGroupBox
                Left = 761
                Top = 24
                Width = 271
                Height = 51
                Anchors = [akTop, akRight]
                Caption = '   '#1606#1581#1608#1607' '#1603#1606#1578#1585#1604' '#1605#1602#1583#1575#1585'/'#1608#1586#1606'/'#1605#1576#1604#1594'   '
                TabOrder = 0
                object Label75: TLabel
                  AlignWithMargins = True
                  Left = 5
                  Top = 18
                  Width = 85
                  Height = 28
                  Align = alLeft
                  Caption = #1576#1586#1585#1711#1578#1585' '#1575#1586' '#1589#1601#1585' '#1576#1575#1588#1583
                  ExplicitHeight = 13
                end
                object cmbNonZeroControl: TDBComboBox
                  AlignWithMargins = True
                  Left = 96
                  Top = 18
                  Width = 170
                  Height = 21
                  Align = alClient
                  DataField = 'NonZeroControl'
                  DataSource = srcReciptTypes
                  Items.Strings = (
                    '0-'#1607#1610#1670#1603#1583#1575#1605
                    '1-'#1605#1602#1583#1575#1585
                    '2-'#1608#1586#1606
                    '3-'#1605#1576#1604#1594
                    '4-'#1605#1602#1583#1575#1585'/'#1608#1586#1606
                    '5-'#1605#1602#1583#1575#1585'/'#1605#1576#1604#1594
                    '6-'#1605#1602#1583#1575#1585'/'#1608#1586#1606'/'#1605#1576#1604#1594
                    '7-'#1608#1586#1606'/'#1605#1602#1583#1575#1585)
                  TabOrder = 0
                  OnEnter = cmbEffectTypeEnter
                end
              end
              object cmbAcceptRollbackEntity: TDBComboBox
                Left = 1
                Top = 3
                Width = 321
                Height = 21
                AutoDropDown = True
                Color = clWhite
                DataField = 'AcceptRollbackEntity'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1606#1583#1575#1585#1583
                  #1605#1602#1583#1575#1585' '#1578#1575#1610#1610#1583' '#1588#1583#1607
                  #1605#1602#1583#1575#1585' '#1576#1585#1711#1588#1578#1610
                  #1607#1585#1583#1608)
                TabOrder = 3
                OnEnter = cmbEffectTypeEnter
              end
              object cmbPriceReadOnly: TDBComboBox
                Left = 1
                Top = 99
                Width = 321
                Height = 21
                AutoDropDown = True
                Color = clWhite
                DataField = 'PriceReadOnly'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1605#1576#1604#1594' '#1608' '#1576#1607#1575#1610' '#1608#1575#1581#1583' '#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588' '#1576#1575#1588#1606#1583
                  #1605#1576#1604#1594' '#1608' '#1576#1607#1575#1610' '#1608#1575#1581#1583' '#1594#1610#1585#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588' '#1576#1575#1588#1606#1583
                  #1601#1602#1591' '#1576#1607' '#1589#1601#1585' '#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588' '#1576#1575#1588#1606#1583
                  #1605#1576#1604#1594' '#1576#1607#1575#1740' '#1608#1575#1581#1583' '#1576#1607' '#1575#1593#1583#1575#1583' '#1576#1586#1585#1711#1578#1585' '#1575#1586' '#1601#1740' '#1662#1740#1588' '#1601#1585#1590' '#1602#1575#1576#1604' '#1608#1740#1585#1575#1588' '#1576#1575#1588#1583'.')
                TabOrder = 4
                OnEnter = cmbEffectTypeEnter
              end
              object cmbPawsFieldsActive: TDBComboBox
                Left = -1
                Top = 126
                Width = 321
                Height = 21
                AutoDropDown = True
                Color = clWhite
                DataField = 'PawsFieldsActive'
                DataSource = srcReciptTypes
                Items.Strings = (
                  '0-'#1606#1583#1575#1585#1583
                  '1-'#1705#1585#1575#1610#1607' '#1581#1605#1604
                  '2-'#1605#1608#1575#1583'  '#1548#1583#1587#1578#1605#1586#1583' '#1608' '#1587#1585#1576#1575#1585' '
                  '3-'#1607#1605#1607
                  '4-'#1605#1608#1575#1583)
                TabOrder = 5
                OnEnter = cmbEffectTypeEnter
              end
              object cmbCartonKind: TDBComboBox
                Left = 1
                Top = 67
                Width = 321
                Height = 21
                AutoDropDown = True
                BiDiMode = bdRightToLeft
                Color = clWhite
                DataField = 'CartonKind'
                DataSource = srcReciptTypes
                Items.Strings = (
                  '0-'#1608#1586#1606' =   '#1605#1602#1583#1575#1585'  *  '#1578#1593#1583#1575#1583' '#1583#1585' '#1705#1575#1585#1578#1606
                  '1-'#1605#1602#1583#1575#1585' =     '#1608#1586#1606'    /  '#1578#1593#1583#1575#1583' '#1583#1585' '#1705#1575#1585#1578#1606
                  '2-'#1578#1593#1583#1575#1583'*'#1605#1602#1583#1575#1585' =     '#1608#1586#1606'    /  '#1578#1593#1583#1575#1583' '#1583#1585' '#1705#1575#1585#1578#1606
                  '3-'#1608#1586#1606' =   '#1605#1602#1583#1575#1585'   /  '#1578#1593#1583#1575#1583' '#1583#1585' '#1705#1575#1585#1578#1606
                  '4-'#1605#1602#1583#1575#1585' =     '#1608#1586#1606'   *  '#1578#1593#1583#1575#1583' '#1583#1585' '#1705#1575#1585#1578#1606
                  '5-'#1605#1602#1583#1575#1585' '#1608#1575#1602#1593#1610'=('#1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578'/'#1583#1585#1589#1583' '#1582#1604#1608#1589')*'#1583#1585#1589#1583' '#1570#1576
                  
                    '6-('#1608#1586#1606' =   '#1605#1602#1583#1575#1585'   /  '#1578#1593#1583#1575#1583' '#1583#1585' '#1705#1575#1585#1578#1606') ('#1605#1602#1583#1575#1585' =     '#1608#1586#1606'   *  '#1578#1593#1583#1575 +
                    #1583' '#1583#1585' '#1705#1575#1585#1578#1606')'
                  
                    '7- '#1578#1593#1583#1575#1583' '#1583#1585' '#1705#1575#1585#1578#1606' * '#1605#1602#1583#1575#1585' = '#1608#1586#1606'   ('#1608#1586#1606' / '#1578#1593#1583#1575#1583' '#1583#1585' '#1705#1575#1585#1578#1606' =  '#1605#1602#1583#1575#1585 +
                    ')'
                  '8-'#1576#1740' '#1578#1575#1579#1740#1585'('#1606#1583#1575#1585#1583')')
                ParentBiDiMode = False
                TabOrder = 6
                OnEnter = cmbEffectTypeEnter
              end
              object edtRoundCount: TDBEdit
                Left = 775
                Top = 132
                Width = 77
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'RoundCount'
                DataSource = srcReciptTypes
                TabOrder = 7
              end
              object cmbCommissionActive: TDBComboBox
                Left = 1
                Top = 161
                Width = 321
                Height = 21
                AutoDropDown = True
                Color = clWhite
                DataField = 'CommissionActive'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1594#1610#1585' '#1601#1593#1575#1604
                  #1601#1610' '#1608' '#1605#1576#1604#1594' '#1581#1602' '#1575#1604#1593#1605#1604'('#1603#1575#1585#1605#1586#1583') '#1601#1593#1575#1604' '#1576#1575#1588#1583
                  #1601#1593#1575#1604' '#1576#1575' '#1605#1581#1575#1587#1576#1607' '#1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607
                  #1601#1593#1575#1604' '#1576#1583#1608#1606' '#1575#1579#1585' '#1583#1585' '#1711#1586#1575#1585#1588' '#1593#1605#1604#1705#1585#1583
                  #1601#1593#1575#1604' '#1576#1583#1608#1606' '#1578#1575#1579#1740#1585' '#1585#1608#1740' '#1582#1575#1604#1589
                  #1601#1602#1591' '#1605#1576#1604#1594' '#1705#1575#1585#1605#1586#1583' '#1583#1585' '#1593#1605#1604#1705#1585#1583' '#1578#1575#1579#1740#1585' '#1583#1575#1588#1578#1607' '#1576#1575#1588#1583)
                TabOrder = 8
                OnEnter = cmbEffectTypeEnter
              end
              object cmbCalculatedEntityOrWeight: TDBComboBox
                Left = 1
                Top = 192
                Width = 321
                Height = 21
                AutoDropDown = True
                Color = clWhite
                DataField = 'CalculatedEntityOrWeight'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1594#1610#1585' '#1601#1593#1575#1604
                  #1605#1602#1583#1575#1585
                  #1608#1586#1606)
                TabOrder = 9
                OnEnter = cmbEffectTypeEnter
              end
              object cmbAlloyDiameterSizeDividedByAMillion: TDBComboBox
                Left = 579
                Top = 161
                Width = 441
                Height = 21
                Anchors = [akTop, akRight]
                Color = clWhite
                DataField = 'AlloyDiameterSizeDividedByAMillion'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1606#1600#1600#1583#1575#1585#1583
                  #1605#1602#1583#1575#1585' = '#1570#1604#1740#1575#1688'*'#1590#1582#1575#1605#1578'*'#1575#1576#1593#1575#1583' '#1578#1602#1587#1740#1605' '#1576#1585' 1,000,000 '
                  #1605#1740#1575#1606#1711#1740#1606' '#1607#1585' '#1705#1740#1587#1607' *'#1705#1740#1587#1607
                  #1608#1586#1606' = '#1570#1604#1740#1575#1688'*'#1590#1582#1575#1605#1578'*'#1575#1576#1593#1575#1583'*2.5 '#1578#1602#1587#1740#1605' '#1576#1585' 1,000,000 ')
                TabOrder = 10
                OnEnter = cmbEffectTypeEnter
              end
              object cmbCustomerRateAct: TDBComboBox
                Left = 3
                Top = 232
                Width = 321
                Height = 21
                AutoDropDown = True
                Color = clWhite
                DataField = 'CustomerRateAct'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1594#1610#1585' '#1601#1593#1575#1604
                  #1606#1585#1582' '#1578#1608#1575#1601#1602#1740
                  #1582#1575#1604#1589' '#1578#1608#1575#1601#1602#1740)
                TabOrder = 11
                OnEnter = cmbEffectTypeEnter
              end
            end
            object TabSheet25: TTabSheet
              Caption = #1583#1587#1578#1585#1587#1610
              ImageIndex = 1
              DesignSize = (
                1051
                422)
              object Label62: TLabel
                Left = 969
                Top = 12
                Width = 26
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1575#1590#1575#1601#1607
                FocusControl = edtADDLevelID
                ExplicitLeft = 688
              end
              object Label63: TLabel
                Left = 969
                Top = 40
                Width = 33
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1608#1610#1585#1575#1610#1588
                FocusControl = edtEditLevelID
                ExplicitLeft = 688
              end
              object Label64: TLabel
                Left = 969
                Top = 69
                Width = 23
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1581#1584#1601
                FocusControl = edtDeleteLevelID
                ExplicitLeft = 688
              end
              object Label65: TLabel
                Left = 969
                Top = 97
                Width = 59
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578
                FocusControl = edtChangeStateLevelID
                ExplicitLeft = 688
              end
              object Label66: TLabel
                Left = 292
                Top = 40
                Width = 19
                Height = 13
                Caption = #1670#1575#1662
                FocusControl = edtPrintLevelID
              end
              object Label67: TLabel
                Left = 292
                Top = 12
                Width = 114
                Height = 13
                Caption = #1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591'/'#1578#1594#1740#1740#1585' '#1578#1575#1740#1662
                FocusControl = edtFormRelatedLevelID
              end
              object Label68: TLabel
                Left = 293
                Top = 61
                Width = 80
                Height = 26
                Caption = #1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1583#1575#1585#1610#13#10#1662#1575#1705#1587#1575#1586#1740' '#1587#1606#1583
                FocusControl = edtAccCodeLevelID
              end
              object Label93: TLabel
                Left = 746
                Top = 12
                Width = 137
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1578#1576#1583#1610#1604#8207#1576#1607#8207#1605#1608#1602#1578'/'#1578#1594#1610#1610#1585#1606#1608#1593#8207#1575#1591#1604#1575#1593#1575#1578
                FocusControl = edtState0ChangeLevelID
                ExplicitLeft = 465
              end
              object Label94: TLabel
                Left = 746
                Top = 40
                Width = 60
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1602#1591#1593#1610' '#1606#1605#1608#1583#1606
                FocusControl = edtState1ChangeLevelID
                ExplicitLeft = 465
              end
              object Label95: TLabel
                Left = 746
                Top = 69
                Width = 49
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1583#1575#1574#1605' '#1606#1605#1608#1583#1606
                FocusControl = edtState2ChangeLevelID
                ExplicitLeft = 465
              end
              object Label96: TLabel
                Left = 746
                Top = 97
                Width = 51
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1576#1575#1591#1604' '#1606#1605#1608#1583#1606
                FocusControl = edtState3ChangeLevelID
                ExplicitLeft = 465
              end
              object Label103: TLabel
                Left = 292
                Top = 97
                Width = 74
                Height = 13
                Caption = #1603#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578
                FocusControl = edtDeficitsLevelID
              end
              object Label5: TLabel
                Left = 82
                Top = 3
                Width = 130
                Height = 26
                BiDiMode = bdLeftToRight
                Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578' '#1575#1585#1587#1575#1604' '#1575#1591#1604#1575#1593#1575#1578' '#1588#1605#1575#1585#1607' '#1601#1585#1605' '#1578#1608#1586#1740#1606
                FocusControl = edtTransmittalLevelID
                ParentBiDiMode = False
                WordWrap = True
              end
              object Label91: TLabel
                Left = 78
                Top = 40
                Width = 40
                Height = 13
                Caption = #1603#1662#1610' '#1601#1585#1605
                FocusControl = edtCopyFormLevelID
              end
              object Label163: TLabel
                Left = 79
                Top = 65
                Width = 128
                Height = 26
                Caption = #1578#1594#1740#1740#1585' '#1705#1583' '#1605#1588#1578#1585#1740' '#1608' '#1601#1585#1605' '#1607#1575#1740' '#1605#1585#1578#1576#1591' '#1608' '#1601#1585#1575#1582#1608#1575#1606' '#1588#1583#1607
                FocusControl = edtReciptsSplit4PersonIDLevelID
                WordWrap = True
              end
              object edtADDLevelID: TDBEdit
                Left = 890
                Top = 8
                Width = 72
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'ADDLevelID'
                DataSource = srcReciptTypes
                TabOrder = 1
              end
              object edtEditLevelID: TDBEdit
                Left = 890
                Top = 36
                Width = 72
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'EditLevelID'
                DataSource = srcReciptTypes
                TabOrder = 3
              end
              object edtDeleteLevelID: TDBEdit
                Left = 891
                Top = 66
                Width = 72
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'DeleteLevelID'
                DataSource = srcReciptTypes
                TabOrder = 5
              end
              object edtChangeStateLevelID: TDBEdit
                Left = 890
                Top = 93
                Width = 72
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'ChangeStateLevelID'
                DataSource = srcReciptTypes
                TabOrder = 7
              end
              object edtPrintLevelID: TDBEdit
                Left = 218
                Top = 36
                Width = 72
                Height = 21
                DataField = 'PrintLevelID'
                DataSource = srcReciptTypes
                TabOrder = 9
              end
              object edtFormRelatedLevelID: TDBEdit
                Left = 218
                Top = 8
                Width = 72
                Height = 21
                DataField = 'FormRelatedLevelID'
                DataSource = srcReciptTypes
                TabOrder = 10
              end
              object edtAccCodeLevelID: TDBEdit
                Left = 218
                Top = 65
                Width = 72
                Height = 21
                DataField = 'AccCodeLevelID'
                DataSource = srcReciptTypes
                TabOrder = 11
              end
              object edtState0ChangeLevelID: TDBEdit
                Left = 668
                Top = 9
                Width = 72
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'State0ChangeLevelID'
                DataSource = srcReciptTypes
                TabOrder = 0
              end
              object edtState1ChangeLevelID: TDBEdit
                Left = 670
                Top = 36
                Width = 72
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'State1ChangeLevelID'
                DataSource = srcReciptTypes
                TabOrder = 2
              end
              object edtState2ChangeLevelID: TDBEdit
                Left = 670
                Top = 65
                Width = 72
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'State2ChangeLevelID'
                DataSource = srcReciptTypes
                TabOrder = 4
              end
              object edtState3ChangeLevelID: TDBEdit
                Left = 670
                Top = 93
                Width = 72
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'State3ChangeLevelID'
                DataSource = srcReciptTypes
                TabOrder = 6
              end
              object edtDeficitsLevelID: TDBEdit
                Left = 218
                Top = 93
                Width = 72
                Height = 21
                DataField = 'DeficitsLevelID'
                DataSource = srcReciptTypes
                TabOrder = 8
              end
              object GroupBox15: TGroupBox
                Left = 0
                Top = 228
                Width = 1051
                Height = 194
                Align = alBottom
                Caption = '  '#1601#1610#1604#1583#1607#1575#1610' '#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588' '#1583#1585' '#1589#1608#1585#1578' '#1602#1591#1593#1610' '#1576#1608#1583#1606'  '
                TabOrder = 12
                object chklstOtherSettings: TCheckListBox
                  AlignWithMargins = True
                  Left = 5
                  Top = 43
                  Width = 1041
                  Height = 146
                  Align = alClient
                  BevelInner = bvNone
                  BevelOuter = bvNone
                  Color = clGradientInactiveCaption
                  Columns = 1
                  ItemHeight = 13
                  Items.Strings = (
                    #1583#1585' '#1607#1585' '#1581#1575#1604#1578#1740' '#1601#1602#1591' '#1601#1740#1604#1583#1607#1575#1740' '#1605#1588#1582#1589' '#1588#1583#1607' '#1583#1585' '#1576#1575#1604#1575' '#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588' '#1576#1575#1588#1606#1583
                    
                      #1590#1585#1740#1576' '#1605#1608#1575#1583#1576#1585#1740' '#1583#1585' '#1575#1740#1606' '#1601#1585#1605' '#1601#1593#1575#1604' '#1576#1575#1588#1583' ('#1570#1604#1740#1575#1688'='#1605#1602#1583#1575#1585'*'#1590#1585#1740#1576' '#1605#1608#1575#1583' '#1576#1585#1740' '#1705#1575#1604 +
                      #1575')')
                  TabOrder = 0
                  OnClick = chklstSettingsClick
                end
                object Panel9: TPanel
                  Left = 2
                  Top = 15
                  Width = 1047
                  Height = 25
                  Align = alTop
                  TabOrder = 1
                  object btnEditableFields: TSpeedButton
                    Left = 1
                    Top = 1
                    Width = 23
                    Height = 23
                    Align = alLeft
                    Caption = '...'
                    OnClick = btnEditableFieldsClick
                    ExplicitLeft = 4
                    ExplicitTop = -131
                    ExplicitHeight = 151
                  end
                  object edtEditableFields: TDBEdit
                    Left = 24
                    Top = 1
                    Width = 1022
                    Height = 23
                    Margins.Left = 100
                    Align = alClient
                    DataField = 'EditableFields'
                    DataSource = srcReciptTypes
                    TabOrder = 0
                    ExplicitHeight = 21
                  end
                end
              end
              object edtTransmittalLevelID: TDBEdit
                Left = 1
                Top = 8
                Width = 72
                Height = 21
                DataField = 'TransmittalLevelID'
                DataSource = srcReciptTypes
                TabOrder = 13
              end
              object edtCopyFormLevelID: TDBEdit
                Left = 1
                Top = 36
                Width = 72
                Height = 21
                DataField = 'CopyFormLevelID'
                DataSource = srcReciptTypes
                TabOrder = 14
              end
              object edtReciptsSplit4PersonIDLevelID: TDBEdit
                Left = 3
                Top = 65
                Width = 72
                Height = 21
                DataField = 'ReciptsSplit4PersonIDLevelID'
                DataSource = srcReciptTypes
                TabOrder = 15
              end
              object Panel6: TPanel
                Left = 492
                Top = 159
                Width = 424
                Height = 27
                Align = alCustom
                Anchors = [akTop, akRight]
                BevelOuter = bvNone
                TabOrder = 16
                object Label166: TLabel
                  AlignWithMargins = True
                  Left = 259
                  Top = 3
                  Width = 162
                  Height = 21
                  Align = alRight
                  Caption = #1575#1591#1604#1575#1593#1575#1578' '#1575#1740#1580#1575#1583' '#1588#1583#1607' '#1578#1608#1587#1591' FirstUser'
                  FocusControl = edtDeficitsLevelID
                  ExplicitHeight = 13
                end
                object Label167: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 85
                  Height = 21
                  Align = alLeft
                  Caption = #1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588' '#1606#1576#1575#1588#1583
                  FocusControl = edtCopyFormLevelID
                  ExplicitHeight = 13
                end
                object edtIfFirstUserIsNotEdited: TDBEdit
                  AlignWithMargins = True
                  Left = 94
                  Top = 3
                  Width = 159
                  Height = 21
                  Align = alClient
                  DataField = 'IfFirstUserIsNotEdited'
                  DataSource = srcReciptTypes
                  TabOrder = 0
                end
              end
            end
            object TabSheet9: TTabSheet
              Caption = #1605#1608#1580#1608#1583#1610
              ImageIndex = 8
              DesignSize = (
                1051
                422)
              object Label17: TLabel
                Left = 859
                Top = 5
                Width = 84
                Height = 13
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1606#1608#1593' '#1603#1606#1578#1585#1604' '#1605#1608#1580#1608#1583#1740
                ParentBiDiMode = False
                ExplicitLeft = 871
              end
              object lblControlEntityKind: TLabel
                Left = 859
                Top = 33
                Width = 143
                Height = 13
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1606#1581#1608#1607' '#1603#1606#1578#1585#1604' '#1605#1608#1580#1608#1583#1740'/'#1602#1740#1605#1578' '#1582#1585#1740#1583
                ParentBiDiMode = False
                ExplicitLeft = 871
              end
              object Label92: TLabel
                Left = 859
                Top = 61
                Width = 172
                Height = 13
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1606#1581#1608#1607' '#1606#1605#1575#1610#1588' '#1605#1608#1580#1608#1583#1740' '#1583#1585' '#1580#1587#1578#1580#1608#1740' '#1603#1575#1604#1575
                ParentBiDiMode = False
                ExplicitLeft = 871
              end
              object Label100: TLabel
                Left = 859
                Top = 88
                Width = 176
                Height = 13
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1606#1581#1608#1607' '#1579#1576#1578' '#1605#1608#1580#1608#1583#1740' '#1583#1585' '#1586#1605#1575#1606' '#1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578
                ParentBiDiMode = False
                ExplicitLeft = 871
              end
              object Label81: TLabel
                Left = 859
                Top = 116
                Width = 92
                Height = 13
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1603#1606#1578#1585#1604' '#1605#1608#1580#1608#1583#1740' '#1576#1585#1608#1740
                ParentBiDiMode = False
                ExplicitLeft = 871
              end
              object Label25: TLabel
                Left = 859
                Top = 144
                Width = 175
                Height = 13
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1606#1581#1608#1607' '#1606#1605#1575#1610#1588' '#1605#1608#1580#1608#1583#1740' '#1583#1585' '#1662#1575#1740#1740#1606' '#1601#1585#1605'('#1579#1576#1578')'#8207
                ParentBiDiMode = False
                ExplicitLeft = 871
              end
              object CmbShowEntityOnSearch: TDBComboBox
                Left = 346
                Top = 57
                Width = 510
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'ShowEntityOnSearch'
                DataSource = srcReciptTypes
                Items.Strings = (
                  '0-'#1606#1583#1575#1585#1583
                  '1-'#1606#1605#1575#1610#1588' '#1583#1585' '#1587#1600#1600#1600#1578#1600#1600#1600#1608#1606' '#1580#1587#1578#1580#1608
                  '2-'#1606#1605#1575#1610#1588' '#1583#1585' '#1576#1575#1604#1575#1610' '#1601#1585#1605' '#1580#1587#1578#1580#1608
                  '3-'#1606#1605#1575#1610#1588' '#1603#1604' '#1603#1583#1610#1606#1711' '#1603#1575#1604#1575' '#1608' '#1605#1608#1580#1608#1583#1610
                  '4-'#1576#1585#1575#1587#1575#1587' '#1605#1583#1604' '#1603#1575#1604#1575
                  '5-'#1603#1583#1603#1575#1604#1575'-'#1603#1575#1604#1575'-'#1608#1575#1581#1583'-'#1605#1588#1582#1589#1575#1578' '#1601#1606#1610'-'#1605#1608#1580#1608#1583#1610
                  
                    '6-'#39#1603#1583#1603#1575#1604#1575#39','#39#1603#1575#1604#1575#39','#39#1605#1588#1582#1589#1575#1578' '#1601#1606#1610#39','#39#1576#1607#1575#1610' '#1601#1585#1608#1588' 1'#39','#39#1576#1607#1575#1610' '#1582#1585#1610#1583#39','#39#1605#1608#1580#1608#1583#1610 +
                    #39','#39#1605#1581#1604' '#1606#1711#1607#1583#1575#1585#1610#39
                  
                    '7-'#1705#1583',"'#1606#1575#1605' '#1603#1575#1604#1575'","'#1605#1588#1582#1589#1575#1578' '#1601#1606#1610'","'#1576#1607#1575#1610' '#1601#1585#1608#1588' 1","'#1576#1607#1575#1610' '#1582#1585#1610#1583'","'#1605#1602#1583#1575#1585'","' +
                    #1575#1591#1604#1575#1593#1575#1578' '#1580#1575#1606#1576#1610'",'#39#1605#1581#1604' '#1606#1711#1607#1583#1575#1585#1610#39
                  '8-'#1580#1587#1578#1580#1608#1610' '#1602#1585#1575#1585#1583#1575#1583' '#1607#1575
                  
                    '9-'#1705#1583',"'#1606#1575#1605' '#1603#1575#1604#1575'","'#1605#1588#1582#1589#1575#1578' '#1601#1606#1610'","'#1576#1607#1575#1610' '#1601#1585#1608#1588' 1","----------","'#1605#1602#1583#1575#1585'",' +
                    '"'#1575#1591#1604#1575#1593#1575#1578' '#1580#1575#1606#1576#1610'"'
                  
                    '10-'#1606#1605#1575#1610#1588' '#1603#1604' '#1603#1583#1610#1606#1711' '#1603#1575#1604#1575' '#1608' '#1605#1608#1580#1608#1583#1610' '#1608' '#1576#1607#1575#1740' '#1601#1585#1608#1588' 2 '#1608' 3 '#1608'4  '#1608'   '#1608#1575#1581#1583' '#1588 +
                    #1605#1575#1585#1588
                  '11-Vu_SearchStuff'
                  
                    '12-Fn_SearchStuff??RT??   '#1576#1585#1575#1740' '#1607#1585' '#1601#1585#1605' '#1576#1575#1740#1583' '#1575#1740#1606' '#1601#1575#1606#1705#1588' '#1576#1575' '#1588#1605#1575#1585#1607' '#1578#1575 +
                    #1740#1662' '#1583#1585' '#1606#1575#1605' '#1587#1575#1582#1578#1607' '#1588#1608#1583)
                TabOrder = 2
                OnEnter = cmbEffectTypeEnter
              end
              object cmbDisplayStatusBar: TDBComboBox
                Left = 346
                Top = 139
                Width = 510
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'DisplayStatusBar'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1606#1583#1575#1585#1583
                  #1605#1602#1583#1575#1585
                  #1605#1576#1604#1594
                  #1605#1602#1583#1575#1585' '#1608' '#1605#1576#1604#1594)
                TabOrder = 5
                OnEnter = cmbEffectTypeEnter
              end
              object CmbInsertEntity: TDBComboBox
                Left = 346
                Top = 85
                Width = 510
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'InsertEntity'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1606#1600#1600#1583#1575#1585#1583
                  #1576#1600#1600#1600#1600#1600#1575' '#1578#1608#1580#1607' '#1576#1607' '#1575#1606#1576#1575#1585' '#1584#1582#1610#1585#1607' '#1588#1608#1583
                  #1576#1583#1608#1606' '#1578#1608#1580#1607' '#1576#1607' '#1575#1606#1576#1575#1585' '#1584#1582#1610#1585#1607' '#1588#1608#1583)
                TabOrder = 3
                OnEnter = cmbEffectTypeEnter
              end
              object cmbControlEntityActive: TDBComboBox
                Left = 346
                Top = 3
                Width = 510
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'ControlEntityActive'
                DataSource = srcReciptTypes
                Items.Strings = (
                  '0- '#1606#1583#1575#1585#1583
                  '1- '#1576#1585' '#1581#1587#1576' '#1603#1575#1604#1575'('#1588#1606#1575#1587#1575#1610#1610' '#1608#1610#1688#1607')'#8207
                  '2- '#1576#1585#1581#1587#1576' '#1603#1575#1604#1575' '#1608' '#1605#1583#1604' '#1603#1575#1604#1575
                  '3- '#1705#1583' '#1705#1575#1604#1575' '#1608' '#1578#1575#1585#1740#1582' '#1575#1606#1602#1590#1575#1569
                  '4- '#1705#1606#1578#1585#1604' '#1605#1608#1580#1608#1583#1740' '#1575#1601#1586#1575#1740#1606#1583#1607
                  '5- '#1705#1606#1578#1585#1604' '#1576#1575#1602#1740#1605#1575#1606#1583#1607' '#1601#1585#1575#1582#1608#1575#1606#1740' '
                  '6- '#1576#1585#1581#1587#1576' '#1705#1583' '#1705#1575#1604#1575' '#1608' '#1605#1588#1578#1585#1740' '#1570#1585#1578#1740#1705#1604)
                TabOrder = 0
                OnEnter = cmbEffectTypeEnter
              end
              object cmbControlEntityKind: TDBComboBox
                Left = 346
                Top = 30
                Width = 510
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'ControlEntityKind'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1662#1610#1594#1575#1605' '#1608' '#1579#1576#1578
                  #1662#1610#1594#1575#1605' '#1608' '#1580#1604#1608#1711#1610#1585#1610' '#1575#1586' '#1579#1576#1578
                  #1662#1610#1594#1575#1605' '#1576#1585#1575#1610' '#1581#1583#1575#1602#1604' '#1605#1608#1580#1608#1583#1610' '#1608' '#1580#1604#1608#1711#1610#1585#1610' '#1575#1586' '#1605#1606#1601#1610' '#1588#1583#1606
                  #1662#1740#1594#1575#1605' '#1576#1585#1575#1740' '#1581#1583#1575#1705#1579#1585' '#1605#1608#1580#1608#1583#1740
                  #1662#1740#1594#1575#1605' '#1576#1585#1575#1740' '#1581#1583#1575#1705#1579#1585' '#1605#1608#1580#1608#1583#1740' '#1608' '#1580#1604#1608#1711#1610#1585#1610' '#1575#1586' '#1579#1576#1578)
                TabOrder = 1
                OnEnter = cmbEffectTypeEnter
              end
              object ChkExtraCodingAddStuffName: TDBCheckBox
                Left = 176
                Top = 32
                Width = 204
                Height = 17
                Alignment = taLeftJustify
                Caption = #1570#1610#1575' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1605#1603#1610' '#1576#1575' '#1606#1575#1605' '#1603#1575#1604#1575' '#1606#1605#1575#1610#1588' '#1588#1608#1583'.'
                DataField = 'ExtraCodingAddStuffName'
                DataSource = srcReciptTypes
                TabOrder = 7
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object GroupBox14: TGroupBox
                Left = 8
                Top = 52
                Width = 142
                Height = 141
                Caption = #1603#1606#1578#1585#1604' '#1605#1608#1580#1608#1583#1610' '#1585#1608#1610' '#1575#1606#1576#1575#1585
                TabOrder = 8
                object ChkBoxStoreControlEntity: TCheckListBox
                  Left = 2
                  Top = 15
                  Width = 138
                  Height = 124
                  Align = alClient
                  ItemHeight = 13
                  Items.Strings = (
                    #1606#1583#1575#1585#1583
                    #1605#1581#1589#1608#1604
                    #1605#1608#1575#1583' '#1575#1608#1604#1610#1607
                    #1603#1575#1604#1575#1610' '#1583#1585' '#1580#1585#1610#1575#1606' '#1587#1575#1582#1578
                    #1603#1575#1604#1575#1610' '#1575#1605#1575#1606#1610
                    #1602#1591#1593#1575#1578' '#1608' '#1604#1608#1575#1586#1605' '#1610#1583#1603#1610
                    #1587#1575#1610#1585' '#1575#1606#1576#1575#1585#1607#1575)
                  TabOrder = 0
                  OnClick = ChkCustomerKind1Click
                end
              end
              object chkCommendation: TDBCheckBox
                Left = 8
                Top = 3
                Width = 382
                Height = 17
                Alignment = taLeftJustify
                Caption = 
                  #1583#1585' '#1589#1608#1585#1578' '#1603#1606#1578#1585#1604' '#1605#1608#1580#1608#1583#1610' '#1576#1585' '#1575#1610#1606' '#1601#1585#1605' '#1582#1608#1583' '#1575#1610#1606' '#1601#1585#1605' '#1606#1610#1586' '#1583#1585' '#1605#1608#1580#1608#1583#1610' '#1578#1575#1579#1610#1585' ' +
                  #1711#1584#1575#1585' '#1575#1587#1578
                DataField = 'Commendation'
                DataSource = srcReciptTypes
                TabOrder = 6
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object cmbControlEntityCol: TDBComboBox
                Left = 346
                Top = 112
                Width = 510
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'ControlEntityCol'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1605#1602#1583#1575#1585' '#1608' '#1608#1586#1606
                  #1605#1602#1583#1575#1585
                  #1608#1586#1606
                  #1605#1602#1583#1575#1585' '#1740#1575' '#1608#1586#1606)
                TabOrder = 4
                OnEnter = cmbEffectTypeEnter
              end
              object dbchkReciptBe4PostCtrlEntAct: TDBCheckBox
                Left = 164
                Top = 59
                Width = 216
                Height = 17
                Alignment = taLeftJustify
                Caption = #1603#1606#1578#1585#1604' '#1605#1608#1580#1608#1583#1610' '#1602#1576#1604' '#1575#1586' '#1579#1576#1578' '#1606#1607#1575#1610#1610' '#1575#1606#1580#1575#1605' '#1588#1608#1583
                DataField = 'ReciptBe4PostCtrlEntAct'
                DataSource = srcReciptTypes
                TabOrder = 9
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object chklstNonZeroActive: TCheckListBox
                Left = 0
                Top = 208
                Width = 1051
                Height = 214
                Align = alBottom
                BevelInner = bvNone
                BevelOuter = bvNone
                Color = clGradientInactiveCaption
                Columns = 1
                ItemHeight = 13
                Items.Strings = (
                  #1705#1606#1578#1585#1604' '#1605#1575#1606#1583#1607' '#1605#1608#1580#1608#1583#1740' '#1576#1575' '#1578#1608#1580#1607' '#1576#1607' '#1578#1575#1585#1740#1582' '#1585#1608#1586' '#1576#1575#1588#1583' '#1606#1607' '#1578#1575#1585#1740#1582' '#1601#1585#1605
                  #1601#1740' '#1582#1585#1740#1583' '#1576#1575' '#1578#1608#1580#1607' '#1576#1607' '#1575#1593#1604#1575#1605#1740#1607' '#1602#1740#1605#1578' '#1582#1585#1740#1583' '#1705#1606#1578#1585#1604' '#1588#1608#1583
                  
                    #1578#1585#1705#1740#1576' '#1705#1583' '#1705#1575#1604#1575' '#1608' '#1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575' '#1576#1575' '#1607#1605' '#1605#1608#1580#1608#1583#1740' '#1585#1575' '#1605#1606#1601#1740' '#1606#1705#1606#1606#1583'('#1588#1605#1575#1585#1607' '#1585#1575 +
                    #1607#1606#1605#1575'/'#1580#1586#1574#1740#1575#1578' '#1705#1575#1604#1575')'
                  
                    #1583#1585' '#1586#1605#1575#1606' '#1579#1576#1578' '#1576#1607' '#1605#1581#1590' '#1608#1585#1608#1583' '#1705#1583' '#1705#1575#1604#1575' '#1605#1608#1580#1608#1583#1740' '#1604#1581#1592#1607' '#1575#1740' '#1570#1606' '#1705#1575#1604#1575' '#1583#1585' '#1601#1740#1604#1583' '#1605 +
                    #1602#1583#1575#1585' '#1602#1585#1575#1585' '#1711#1740#1585#1583
                  
                    #1576#1575' '#1578#1594#1740#1740#1585' '#1705#1583' '#1705#1575#1604#1575' '#1605#1608#1580#1608#1583#1740' '#1583#1585' '#1662#1606#1604' '#1606#1605#1575#1740#1588' '#1606#1600#1600#1588#1600#1600#1608#1583'(1-'#1575#1601#1586#1575#1740#1588' '#1587#1585#1593#1578'.2-'#1583#1585 +
                    ' '#1601#1585#1575#1582#1608#1606#1740' '#1605#1608#1585#1583' '#1606#1740#1575#1586' '#1606#1605#1740' '#1576#1575#1588#1583'3-'#1583#1585' '#1586#1605#1575#1606#1740' '#1705#1607' "'#1606#1581#1608#1607' '#1579#1576#1578' '#1605#1608#1580#1608#1583#1740' '#1583#1585' '#1586#1605#1575 +
                    #1606' '#1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578'" '#1606#1583#1575#1585#1583' '#1576#1575#1588#1583')'
                  #1583#1585' '#1586#1605#1575#1606' '#1579#1576#1578' '#1570#1585#1578#1740#1705#1604' '#1607#1575' '#1583#1585' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1705#1606#1578#1585#1604' '#1605#1608#1580#1608#1583#1740' '#1575#1606#1580#1575#1605' '#1606#1588#1608#1583)
                TabOrder = 10
                OnClick = chklstSettingsClick
              end
            end
            object TabSheet5: TTabSheet
              Caption = #1603#1606#1578#1585#1604' '#1605#1575#1606#1583#1607' '#1581#1587#1575#1576
              ImageIndex = 6
              DesignSize = (
                1051
                422)
              object Label86: TLabel
                Left = 851
                Top = 149
                Width = 135
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1670#1603#1607#1575#1610' '#1608#1575#1711#1584#1575#1585#1610' '#1576#1607' '#1605#1588#1578#1585#1610#1575#1606' '#1578#1575
                FocusControl = edtCustCheckDateOffset
                ExplicitLeft = 570
              end
              object Label121: TLabel
                Left = 610
                Top = 149
                Width = 205
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1585#1608#1586' '#1576#1593#1583' '#1575#1586' '#1587#1585#1585#1587#1610#1583' '#1580#1586#1569' '#1576#1583#1607#1610' '#1605#1581#1587#1608#1576' '#1588#1608#1583'.'#8207
                FocusControl = edtCustCheckDateOffset
                ExplicitLeft = 329
              end
              object Label28: TLabel
                Left = 0
                Top = 0
                Width = 1051
                Height = 13
                Align = alTop
                Caption = 
                  #1603#1606#1578#1585#1604' '#1607#1575#1610' '#1605#1575#1606#1583#1607' '#1581#1587#1575#1576' '#1605#1588#1578#1585#1610#1575#1606' '#1603#1607' '#1576#1575#1610#1583' '#1585#1608#1610' '#1601#1575#1603#1578#1608#1585' '#1601#1585#1608#1588'('#1603#1583#1601#1585#1605'12) '#1578#1606 +
                  #1592#1610#1605' '#1588#1608#1583
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ExplicitLeft = 683
                ExplicitWidth = 368
              end
              object dbchkCreditChecked1: TDBCheckBox
                Left = 817
                Top = 26
                Width = 85
                Height = 17
                Anchors = [akTop, akRight]
                BiDiMode = bdRightToLeft
                Caption = #1576#1583#1607#1610' '#1578#1593#1607#1583#1610
                DataField = 'CreditChecked1'
                DataSource = srcReciptTypes
                ParentBiDiMode = False
                TabOrder = 0
                ValueChecked = '1'
                ValueUnchecked = '0'
                WordWrap = True
              end
              object dbchkCreditChecked2: TDBCheckBox
                Left = 817
                Top = 56
                Width = 138
                Height = 17
                Anchors = [akTop, akRight]
                BiDiMode = bdRightToLeft
                Caption = #1575#1587#1606#1575#1583' '#1583#1585#1610#1575#1601#1578#1610' '#1606#1586#1583' '#1589#1606#1583#1608#1602
                DataField = 'CreditChecked2'
                DataSource = srcReciptTypes
                ParentBiDiMode = False
                TabOrder = 1
                ValueChecked = '1'
                ValueUnchecked = '0'
                WordWrap = True
              end
              object dbchkCreditChecked3: TDBCheckBox
                Left = 817
                Top = 86
                Width = 157
                Height = 17
                Anchors = [akTop, akRight]
                BiDiMode = bdRightToLeft
                Caption = #1575#1587#1606#1575#1583' '#1583#1585#1580#1585#1610#1575#1606' '#1608#1589#1608#1604' '#1606#1586#1583' '#1576#1575#1606#1603#1607#1575
                DataField = 'CreditChecked3'
                DataSource = srcReciptTypes
                ParentBiDiMode = False
                TabOrder = 2
                ValueChecked = '1'
                ValueUnchecked = '0'
                WordWrap = True
              end
              object dbchkCreditChecked4: TDBCheckBox
                Left = 817
                Top = 115
                Width = 144
                Height = 17
                Anchors = [akTop, akRight]
                BiDiMode = bdRightToLeft
                Caption = #1575#1587#1606#1575#1583' '#1576#1585#1711#1588#1578#1610' '#1606#1586#1583' '#1589#1606#1583#1608#1602
                DataField = 'CreditChecked4'
                DataSource = srcReciptTypes
                ParentBiDiMode = False
                TabOrder = 3
                ValueChecked = '1'
                ValueUnchecked = '0'
                WordWrap = True
              end
              object dbchkCreditChecked5: TDBCheckBox
                Left = 817
                Top = 179
                Width = 148
                Height = 17
                Anchors = [akTop, akRight]
                BiDiMode = bdRightToLeft
                Caption = #1670#1603#1607#1575#1610' '#1608#1575#1711#1584#1575#1585#1610' '#1576#1607' '#1605#1588#1578#1585#1610#1575#1606
                DataField = 'CreditChecked5'
                DataSource = srcReciptTypes
                ParentBiDiMode = False
                TabOrder = 4
                ValueChecked = '1'
                ValueUnchecked = '0'
                WordWrap = True
              end
              object edtCustCheckDateOffset: TDBEdit
                Left = 817
                Top = 145
                Width = 30
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'CustCheckDateOffset'
                DataSource = srcReciptTypes
                TabOrder = 5
              end
            end
            object TabSheet14: TTabSheet
              Caption = #1578#1575#1585#1610#1582
              ImageIndex = 8
              DesignSize = (
                1051
                422)
              object Label89: TLabel
                Left = 873
                Top = 113
                Width = 75
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1578#1602#1583#1605' '#1608' '#1578#1575#1612#1582#1585' '#1578#1575#1585#1610#1582
                ExplicitLeft = 686
              end
              object Label24: TLabel
                Left = 873
                Top = 144
                Width = 114
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1603#1606#1578#1585#1604' '#1670#1575#1662' '#1576#1585' '#1581#1587#1576' '#1578#1575#1585#1610#1582
                ExplicitLeft = 686
              end
              object cmbPriorityReciptDate: TDBComboBox
                Left = 499
                Top = 110
                Width = 368
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'PriorityReciptDate'
                DataSource = srcReciptTypes
                Items.Strings = (
                  '0-'#1594#1610#1585' '#1601#1593#1575#1604
                  '1-'#1601#1585#1605' '#1594#1610#1585' '#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588
                  '2-'#1601#1602#1591' '#1578#1575#1585#1610#1582' '#1594#1610#1585' '#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588
                  '3-'#1583#1585#1589#1608#1585#1578#1740' '#1705#1607' '#1601#1585#1605' '#1602#1591#1593#1740' '#1608' '#1583#1575#1574#1605' '#1583#1575#1588#1578#1607' '#1576#1575#1588#1740#1605' '#1601#1585#1605' '#1594#1740#1585' '#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588)
                TabOrder = 0
                OnEnter = cmbEffectTypeEnter
              end
              object GroupBox11: TGroupBox
                Left = 0
                Top = 0
                Width = 1051
                Height = 47
                Align = alTop
                Caption = '   '#1603#1606#1578#1585#1604' '#1576#1585' '#1575#1587#1575#1587' '#1578#1575#1585#1610#1582'  '
                TabOrder = 2
                object Label111: TLabel
                  AlignWithMargins = True
                  Left = 886
                  Top = 18
                  Width = 160
                  Height = 24
                  Align = alRight
                  Caption = '  '#1578#1593#1583#1575#1583' '#1585#1608#1586' '#1605#1607#1604#1578' '#1576#1585#1575#1610' '#1608#1610#1585#1575#1610#1588' '#1601#1585#1605'  '
                  ExplicitHeight = 13
                end
                object edtDay4Edit: TDBEdit
                  AlignWithMargins = True
                  Left = 798
                  Top = 18
                  Width = 82
                  Height = 24
                  Align = alRight
                  DataField = 'Day4Edit'
                  DataSource = srcReciptTypes
                  TabOrder = 0
                  ExplicitHeight = 21
                end
              end
              object cmbControlPrintingByDate: TDBComboBox
                Left = 499
                Top = 141
                Width = 368
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'ControlPrintingByDate'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1603#1606#1578#1585#1604' '#1606#1588#1608#1583
                  #1576#1591#1608#1585' '#1603#1604#1740' '#1603#1606#1578#1585#1604' '#1588#1608#1583
                  #1601#1602#1591' '#1576#1585#1575#1740' '#1603#1575#1585#1576#1585' '#1593#1575#1583#1740' '#1603#1606#1578#1585#1604' '#1588#1608#1583)
                TabOrder = 1
                OnEnter = cmbEffectTypeEnter
              end
              object dbchkDefaultDateActive: TDBCheckBox
                Left = 511
                Top = 180
                Width = 169
                Height = 17
                Alignment = taLeftJustify
                BiDiMode = bdLeftToRight
                Caption = #1578#1575#1585#1610#1582' '#1580#1575#1606#1576#1610' '#1583#1585' '#1601#1585#1605#8207#1607#1575' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
                DataField = 'DefaultDateActive'
                DataSource = srcReciptTypes
                ParentBiDiMode = False
                TabOrder = 3
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object GroupBox21: TGroupBox
                Left = 0
                Top = 47
                Width = 1051
                Height = 47
                Align = alTop
                TabOrder = 4
                object Label150: TLabel
                  AlignWithMargins = True
                  Left = 885
                  Top = 18
                  Width = 161
                  Height = 24
                  Align = alRight
                  Caption = #1705#1606#1578#1585#1604'  '#1588#1608#1583'  '#1578#1575#1585#1740#1582'  '#1575#1591#1604#1575#1593#1575#1578'  '#1705#1605#1705#1740'.'
                  ExplicitHeight = 13
                end
                object Label151: TLabel
                  AlignWithMargins = True
                  Left = 525
                  Top = 18
                  Width = 267
                  Height = 24
                  Align = alRight
                  Caption = #1585#1608#1586' '#1576#1740#1588#1578#1585' '#1575#1586' '#1578#1575#1585#1740#1582' '#1601#1585#1605' '#1576#1575#1588#1583'('#1582#1575#1604#1740' '#1740#1575' '#1589#1601#1585' '#1576#1583#1608#1606' '#1705#1606#1578#1585#1604' '#1575#1587#1578')'
                  ExplicitHeight = 13
                end
                object edtAidDateDay: TDBEdit
                  AlignWithMargins = True
                  Left = 798
                  Top = 15
                  Width = 81
                  Height = 23
                  Margins.Top = 0
                  Margins.Bottom = 7
                  Align = alRight
                  DataField = 'AidDateDay'
                  DataSource = srcReciptTypes
                  TabOrder = 0
                  ExplicitHeight = 21
                end
              end
            end
            object TabSheet32: TTabSheet
              Caption = #1705#1606#1578#1585#1604' '#1608#1740#1585#1575#1740#1588' '#1608' '#1579#1576#1578
              ImageIndex = 9
              object chklstValueControl: TCheckListBox
                Left = 0
                Top = 0
                Width = 1051
                Height = 422
                Align = alClient
                BevelInner = bvNone
                BevelOuter = bvNone
                Color = clGradientInactiveCaption
                Columns = 1
                ItemHeight = 13
                Items.Strings = (
                  'Auxiliary= _SD1 * (OutputWeight OR InputWeight)'
                  #1705#1606#1578#1585#1604' '#1605#1588#1578#1585#1740' 1 '#1576#1585#1575#1740' '#1602#1575#1576#1604#1740#1578' '#1608#1740#1585#1575#1740#1588' ( '#1602#1575#1576#1604' '#1608#1740#1585#1575#1588' '#1606#1600#1600#1576#1600#1575#1588#1583' )'
                  #1705#1606#1578#1585#1604' '#1605#1588#1578#1585#1740' 2 '#1576#1585#1575#1740' '#1602#1575#1576#1604#1740#1578' '#1608#1740#1585#1575#1740#1588' ( '#1602#1575#1576#1604' '#1608#1740#1585#1575#1588' '#1606#1600#1600#1576#1600#1575#1588#1583' )'
                  #1705#1606#1578#1585#1604' '#1605#1588#1578#1585#1740' 3 '#1576#1585#1575#1740' '#1602#1575#1576#1604#1740#1578' '#1608#1740#1585#1575#1740#1588' ( '#1602#1575#1576#1604' '#1608#1740#1585#1575#1588' '#1606#1600#1600#1576#1600#1575#1588#1583' )'
                  #1705#1606#1578#1585#1604' '#1605#1588#1578#1585#1740' 4 '#1576#1585#1575#1740' '#1602#1575#1576#1604#1740#1578' '#1608#1740#1585#1575#1740#1588' ( '#1602#1575#1576#1604' '#1608#1740#1585#1575#1588' '#1606#1600#1600#1576#1600#1575#1588#1583' )'
                  #1705#1606#1578#1585#1604' '#1605#1588#1578#1585#1740' 5 '#1576#1585#1575#1740' '#1602#1575#1576#1604#1740#1578' '#1608#1740#1585#1575#1740#1588' ( '#1602#1575#1576#1604' '#1608#1740#1585#1575#1588' '#1606#1600#1600#1576#1600#1575#1588#1583' )'
                  
                    #1583#1705#1605#1607' '#1578#1608#1590#1740#1581#1575#1578' '#1601#1585#1605' '#1586#1605#1575#1606#1740' '#1705#1607' '#1601#1585#1605' '#1575#1589#1604#1740' '#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588' '#1607#1587#1578' '#1583#1585' '#1583#1587#1578#1585#1587#1740' '#1576#1575#1588 +
                    #1583' '#1608' '#1605#1587#1578#1602#1604' '#1575#1586' '#1601#1585#1605' '#1575#1589#1604#1740' '#1606#1576#1575#1588#1583
                  #1589#1601#1585' '#1588#1583#1606' '#1601#1740#1604#1583' '#1578#1593#1583#1575#1583' '#1608' '#1608#1586#1606' '#1607#1606#1711#1575#1605' '#1608#1740#1585#1575#1740#1588' '#1705#1583' '#1705#1575#1604#1575' '
                  #1576#1585#1585#1587#1740' '#1608' '#1705#1606#1578#1585#1604' '#1670#1705' '#1607#1575#1740' '#1587#1740#1575#1583' '#1608' '#1576#1585#1711#1588#1578#1740' '#1583#1585' '#1586#1605#1575#1606' '#1579#1576#1578' '#1575#1606#1580#1575#1605' '#1588#1608#1583
                  #1578#1608#1590#1740#1581#1575#1578' '#1705#1575#1604#1575' '#1576#1607' '#1605#1608#1583#1740#1575#1606' '#1575#1585#1587#1575#1604' '#1606#1600#1600#1600#1588#1608#1583)
                TabOrder = 0
                OnClick = chklstSettingsClick
              end
            end
          end
        end
        object TabSheet19: TTabSheet
          Caption = #1606#1605#1575#1610#1588
          DesignSize = (
            1059
            450)
          object Label26: TLabel
            Left = 381
            Top = 39
            Width = 126
            Height = 13
            Caption = #1605#1581#1604' '#1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1605#1603#1610
          end
          object Label34: TLabel
            Left = 381
            Top = 11
            Width = 97
            Height = 13
            Caption = #1605#1581#1604' '#1606#1605#1575#1610#1588' '#1578#1608#1590#1610#1581#1575#1578
          end
          object Label78: TLabel
            Left = 381
            Top = 67
            Width = 108
            Height = 13
            Caption = #1605#1602#1583#1575#1585' '#1608' '#1608#1586#1606' '#1583#1585' '#1582#1608#1575#1587#1578#1610
          end
          object Label102: TLabel
            Left = 381
            Top = 95
            Width = 130
            Height = 13
            Caption = #1593#1605#1604#1610#1575#1578#8207#1605#1602#1583#1575#1585#1608#1608#1586#1606#8207#1583#1585#1582#1608#1575#1587#1578#1610
          end
          object Label112: TLabel
            Left = 381
            Top = 150
            Width = 114
            Height = 13
            Caption = #1606#1581#1608#1607' '#1580#1587#1578#1580#1608#1610' '#1576#1575#1604#1575#1610' '#1601#1585#1605
          end
          object Label77: TLabel
            Left = 381
            Top = 123
            Width = 118
            Height = 13
            Alignment = taRightJustify
            Caption = #1585#1608#1588' '#1608' '#1606#1581#1608#1607' '#1576#1585#1582#1608#1585#1583' '#1576#1575' '#1576#1575#1585#1603#1583
          end
          object lbl16: TLabel
            Left = 977
            Top = 11
            Width = 66
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1585#1610#1582' '#1583#1585' Detail '
            ExplicitLeft = 696
          end
          object SpeedButton1: TSpeedButton
            Left = 3
            Top = 178
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton1Click
          end
          object Label135: TLabel
            Left = 381
            Top = 178
            Width = 101
            Height = 13
            Caption = #1601#1740#1604#1583' '#1607#1575#1740' '#1587#1575#1582#1578' '#1576#1575#1585#1705#1583
            FocusControl = edtSyntheticCodeField
          end
          object Label136: TLabel
            Left = 381
            Top = 206
            Width = 140
            Height = 13
            Caption = #1578#1585#1578#1740#1576' '#1601#1740#1604#1583' '#1607#1575#1740' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1576#1575#1585#1705#1583
            FocusControl = edtSyntheticCodeInField
          end
          object SpeedButton2: TSpeedButton
            Left = 3
            Top = 231
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton2Click
          end
          object Label137: TLabel
            Left = 381
            Top = 234
            Width = 125
            Height = 13
            Caption = #1601#1740#1604#1583' '#1607#1575#1740' '#1705#1583#1740#1606#1711' '#1705#1575#1604#1575' '#1583#1585' '#1601#1585#1605
            FocusControl = edtStuffCodingAddField
          end
          object Label138: TLabel
            Left = 381
            Top = 262
            Width = 154
            Height = 13
            Caption = #1593#1606#1608#1575#1606' '#1601#1740#1604#1583' '#1607#1575#1740' '#1705#1583#1740#1606#1711' '#1705#1575#1604#1575' '#1583#1585' '#1601#1585#1605
            FocusControl = edtStuffCodingAddFieldCaption
          end
          object DBCheckBox8: TDBCheckBox
            Left = 827
            Top = 70
            Width = 209
            Height = 17
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Caption = #1605#1602#1583#1575#1585' '#1548' '#1608#1586#1606' '#1608' '#1576#1607#1575#1610' '#1603#1604' '#1575#1589#1604#1610' '#1606#1605#1575#1610#1588' '#1588#1608#1583
            DataField = 'Section1Visible'
            DataSource = srcReciptTypes
            ParentBiDiMode = False
            TabOrder = 5
            ValueChecked = '1'
            ValueUnchecked = '2'
          end
          object DBChkExpireDateActive: TDBCheckBox
            Left = 924
            Top = 39
            Width = 112
            Height = 17
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = #1570#1610#1575' '#1578#1575#1585#1610#1582' '#1606#1605#1575#1610#1588' '#1588#1608#1583
            DataField = 'ExpireDateActive'
            DataSource = srcReciptTypes
            TabOrder = 3
            ValueChecked = '1'
            ValueUnchecked = '2'
          end
          object cmbAidInfoActive: TDBComboBox
            Left = 3
            Top = 36
            Width = 376
            Height = 21
            DataField = 'AidInfoActive'
            DataSource = srcReciptTypes
            Items.Strings = (
              '0-'#1606#1583#1575#1585#1583
              '1-Master'
              '2-Details'
              '3-Master&Detail'
              '4-Master '#1608' '#1662#1610#1588' '#1601#1585#1590' '#1575#1586'  Master&Detail ')
            TabOrder = 2
            OnEnter = cmbEffectTypeEnter
          end
          object cmbNoteShow: TDBComboBox
            Left = 3
            Top = 7
            Width = 376
            Height = 21
            DataField = 'NoteShow'
            DataSource = srcReciptTypes
            Items.Strings = (
              #1606#1605#1575#1610#1588' '#1606#1588#1608#1583
              'Master '#1603#1604' '#1601#1585#1605
              'Details  '#1607#1585' '#1603#1575#1604#1575
              'Master & Detail '#1603#1604' '#1601#1585#1605' '#1608' '#1607#1585' '#1603#1575#1604#1575
              'Master & Detail '#1603#1604' '#1601#1585#1605' '#1608' '#1607#1585' '#1603#1575#1604#1575' '#1608' '#1578#1608#1590#1740#1581#1575#1578' '#1583#1608#1605' ')
            TabOrder = 1
            OnEnter = cmbEffectTypeEnter
          end
          object DBCheckBox12: TDBCheckBox
            Left = 772
            Top = 49
            Width = 146
            Height = 17
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Caption = #1578#1575#1585#1610#1582' '#1583#1585' Detail '#1606#1605#1575#1610#1588' '#1588#1608#1583'.'#8207
            DataField = 'DetailDateActive'
            DataSource = srcReciptTypes
            ParentBiDiMode = False
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '2'
            Visible = False
            WordWrap = True
          end
          object CmbSection2Visible: TDBComboBox
            Left = 3
            Top = 64
            Width = 376
            Height = 21
            DataField = 'Section2Visible'
            DataSource = srcReciptTypes
            Items.Strings = (
              #1605#1602#1583#1575#1585
              #1605#1602#1583#1575#1585'/'#1608#1586#1606
              #1601#1593#1575#1604' '#1606#1576#1575#1588#1583
              #1608#1586#1606)
            TabOrder = 4
            OnEnter = cmbEffectTypeEnter
          end
          object CmbRequestedChange: TDBComboBox
            Left = 3
            Top = 93
            Width = 376
            Height = 21
            DataField = 'RequestedChange'
            DataSource = srcReciptTypes
            Items.Strings = (
              #1606#1583#1575#1585#1583
              #1608#1586#1606'='#1608#1586#1606#8207#1583#1585#1582#1608#1575#1587#1578#1610'-'#1605#1602#1583#1575#1585'*'#1605#1602#1583#1575#1585#1583#1585#1582#1608#1575#1587#1578#1610
              #1608#1586#1606' '#1583#1585#1582#1608#1575#1587#1578#1610' '#1583#1585' '#1608#1586#1606' '#1589#1575#1583#1585#1607'  '#1606#1607#1575#1610#1610' '#1603#1662#1610' '#1588#1608#1583
              #1608#1586#1606' '#1608' '#1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578#1610' '#1583#1585' '#1608#1586#1606' '#1608' '#1605#1602#1583#1575#1585' '#1589#1575#1583#1585#1607'  '#1606#1607#1575#1610#1610' '#1603#1662#1610' '#1588#1608#1583)
            TabOrder = 6
            OnEnter = cmbEffectTypeEnter
          end
          object dbchkAidInfoControlDate: TDBCheckBox
            Left = 851
            Top = 100
            Width = 185
            Height = 17
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = #1570#1610#1575#1578#1575#1585#1610#1582#8207#1603#1605#1603#1610'/'#1578#1575#1585#1740#1582' '#1580#1575#1606#1576#1740' '#8207#1603#1606#1578#1585#1604#8207#1588#1608#1583
            DataField = 'AidInfoControlDate'
            DataSource = srcReciptTypes
            TabOrder = 7
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object cmbSearchReciptNumber: TDBComboBox
            Left = 3
            Top = 150
            Width = 376
            Height = 21
            DataField = 'SearchReciptNumber'
            DataSource = srcReciptTypes
            Items.Strings = (
              #1588#1605#1575#1585#1607' '#1608' '#1578#1575#1585#1610#1582' '#1601#1585#1605
              #1588#1605#1575#1585#1607#1548' '#1578#1575#1585#1610#1582' '#1608#1575#1606#1576#1575#1585
              #1588#1605#1575#1585#1607#1548' '#1578#1575#1585#1610#1582' '#1608#1575#1606#1576#1575#1585'('#1580#1587#1578#1580#1608#1610' '#1587#1585#1610#1593')'#8207
              #1588#1605#1575#1585#1607#1548' '#1578#1575#1585#1610#1582' '#1548#1575#1606#1576#1575#1585#1548#1605#1588#1578#1585#1610' '#1608' '#1605#1576#1604#1594
              #1588#1605#1575#1585#1607#1548' '#1578#1575#1585#1610#1582' '#1548#1575#1606#1576#1575#1585#1608#1605#1588#1578#1585#1610' '#1608' '#1605#1576#1604#1594'('#1580#1587#1578#1580#1608#1610' '#1587#1585#1610#1593')'#8207
              #1588#1605#1575#1585#1607#1548' '#1578#1575#1585#1610#1582' '#1548#1575#1606#1576#1575#1585#1548#1605#1588#1578#1585#1610' '#1608' '#1580#1605#1593' '#1605#1576#1604#1594' '#1603#1604
              #1588#1605#1575#1585#1607#1548' '#1578#1575#1585#1610#1582' '#1548#1575#1606#1576#1575#1585#1548#1605#1588#1578#1585#1610' '#1608' '#1580#1605#1593' '#1605#1576#1604#1594' '#1603#1604'('#1580#1587#1578#1580#1608#1610' '#1587#1585#1610#1593')'#8207
              #1588#1605#1575#1585#1607' '#1608' '#1578#1575#1585#1610#1582' '#1601#1585#1605'- '#1603#1583#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610' -'#1588#1605#1575#1585#1607' '#1608' '#1578#1575#1585#1610#1582' '#1603#1605#1603#1610)
            TabOrder = 8
            OnEnter = cmbEffectTypeEnter
          end
          object dbchkShowKeepPlace: TDBCheckBox
            Left = 877
            Top = 131
            Width = 159
            Height = 17
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = #1605#1581#1604' '#1606#1711#1607#1583#1575#1585#1610' '#1603#1575#1604#1575' '#1606#1605#1575#1610#1588' '#1588#1608#1583
            DataField = 'ShowKeepPlace'
            DataSource = srcReciptTypes
            TabOrder = 9
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object dbchkAllotmentActive: TDBCheckBox
            Left = 782
            Top = 161
            Width = 254
            Height = 17
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = #1601#1585#1605' '#1578#1587#1607#1740#1605' '#1608' '#1575#1590#1575#1601#1607' '#1603#1606#1606#1583#1607' '#1605#1576#1604#1594' '#1602#1575#1576#1604' '#1606#1605#1575#1610#1588' '#1576#1575#1588#1583' . '
            DataField = 'AllotmentActive'
            DataSource = srcReciptTypes
            TabOrder = 10
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object cmbBarCodeKind: TDBComboBox
            Left = 3
            Top = 122
            Width = 376
            Height = 21
            DataField = 'BarCodeKind'
            DataSource = srcReciptTypes
            Items.Strings = (
              '0-'#1579#1576#1578' '#1583#1585' '#1603#1583#1610#1606#1711' '#1603#1575#1604#1575
              '1-'#1579#1576#1578' '#1583#1585' '#1605#1588#1582#1589#1575#1578' '#1601#1606#1610
              '2-'#1579#1576#1578' '#1575#1578#1608#1605#1575#1578#1610#1603' '#1583#1585' '#1603#1583#1610#1606#1711' '#1603#1575#1604#1575' '#1576#1575' '#1575#1601#1586#1608#1583#1606' '#1578#1593#1583#1575#1583
              '3-'#1579#1576#1578' '#1575#1578#1608#1605#1575#1578#1610#1603' '#1583#1585' '#1605#1588#1582#1589#1575#1578' '#1601#1606#1610' '#1576#1575' '#1575#1601#1586#1608#1583#1606' '#1578#1593#1583#1575#1583
              '4-'#1579#1576#1578' '#1575#1578#1608#1605#1575#1578#1610#1603' '#1583#1585' '#1603#1583#1610#1606#1711' '#1603#1575#1604#1575' '#1608' '#1576#1575#1585' '#1603#1583' '#1583#1608#1605' '#1583#1585' '#1605#1602#1583#1575#1585
              '5-'#1579#1576#1578' '#1583#1585' '#1576#1575#1585#1603#1583' '#1601#1585#1608#1588#1606#1583#1607
              
                '6-'#1579#1576#1578' '#1583#1585' '#1705#1583#1740#1606#1705' '#1705#1575#1604#1575' '#1608' '#1576#1575#1585#1705#1583' '#1583#1608#1605' '#1583#1585' preReciptItemID '#1576#1575' '#1575#1601#1586#1608#1583#1606' '#1578#1593#1583 +
                #1575#1583
              '07-'#1608#1585#1608#1583' '#1576#1575' '#1705#1583' '#1583#1585' '#1576#1575#1604#1575#1740' '#1711#1585#1740#1583' '#1576#1585' '#1575#1587#1575#1587' '#1603#1583' '#1603#1575#1604#1575
              '08-'#1608#1585#1608#1583' '#1576#1575' '#1705#1583' '#1583#1585' '#1576#1575#1604#1575#1740' '#1711#1585#1740#1583' '#1576#1585' '#1575#1587#1575#1587' '#1605#1588#1582#1589#1575#1578' '#1601#1606#1610
              '09-'#1608#1585#1608#1583' '#1576#1575' '#1705#1583' '#1583#1585' '#1576#1575#1604#1575#1740' '#1711#1585#1740#1583' '#1576#1585' '#1575#1587#1575#1587' '#1603#1583' '#1603#1575#1604#1575#1610' '#1580#1575#1610#1711#1586#1610#1606' '
              '10-'#1608#1585#1608#1583' '#1576#1575' '#1705#1583' '#1583#1585' '#1576#1575#1604#1575#1740' '#1711#1585#1740#1583' '#1576#1585' '#1575#1587#1575#1587' '#1576#1575#1585#1603#1583' '#1601#1585#1608#1588#1606#1583#1607
              
                '11-'#1662#1606#1580' '#1585#1602#1605' '#1575#1608#1604' '#1705#1583' '#1576#1575#1585#1705#1583' '#1705#1583' '#1705#1575#1604#1575' '#1607#1587#1578' '#1705#1607' '#1583#1585' '#1705#1583' '#1705#1575#1604#1575' '#1602#1585#1575#1585' '#1576#1711#1740#1585#1583' '#1608'..' +
                '..')
            TabOrder = 11
          end
          object cmbDetailDateActive: TDBComboBox
            Left = 765
            Top = 7
            Width = 210
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Color = clWhite
            DataField = 'DetailDateActive'
            DataSource = srcReciptTypes
            DropDownCount = 16
            Items.Strings = (
              '0_'#1605#1575#1607' '#1583#1608' '#1585#1602#1605#1740'/'#1587#1575#1604' '#1670#1607#1575#1585#1585#1602#1605#1740'" '#1576#1607' '#1591#1608#1585' '#1605#1579#1575#1604' 2015/05 '#1601#1593#1575#1604
              '1_'#1578#1575#1585#1610#1582' '#1583#1585' Detail '#1606#1605#1575#1610#1588' '#1588#1608#1583'.'#8207
              '2_'#1606#1583#1575#1585#1583)
            ParentBiDiMode = False
            TabOrder = 12
            OnEnter = cmbEffectTypeEnter
          end
          object edtSyntheticCodeField: TDBEdit
            Left = 32
            Top = 179
            Width = 347
            Height = 19
            Ctl3D = False
            DataField = 'SyntheticCodeField'
            DataSource = srcReciptTypes
            ParentCtl3D = False
            TabOrder = 13
          end
          object edtSyntheticCodeInField: TDBEdit
            Left = 32
            Top = 204
            Width = 347
            Height = 19
            Ctl3D = False
            DataField = 'SyntheticCodeInField'
            DataSource = srcReciptTypes
            ParentCtl3D = False
            TabOrder = 14
          end
          object edtStuffCodingAddField: TDBEdit
            Left = 32
            Top = 232
            Width = 347
            Height = 19
            Ctl3D = False
            DataField = 'StuffCodingAddField'
            DataSource = srcReciptTypes
            ParentCtl3D = False
            TabOrder = 15
          end
          object edtStuffCodingAddFieldCaption: TDBEdit
            Left = 32
            Top = 259
            Width = 347
            Height = 19
            Ctl3D = False
            DataField = 'StuffCodingAddFieldCaption'
            DataSource = srcReciptTypes
            ParentCtl3D = False
            TabOrder = 16
          end
          object chklstShowSettings: TCheckListBox
            Left = 0
            Top = 296
            Width = 1059
            Height = 154
            Align = alBottom
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = clMoneyGreen
            Columns = 1
            ItemHeight = 13
            Items.Strings = (
              #1605#1581#1583#1608#1583#1607' '#1588#1605#1575#1585#1607' '#1705#1605#1705#1740' '#1583#1585' '#1604#1740#1587#1578' '#1601#1585#1605' '#1601#1593#1575#1604' '#1588#1608#1583'('#1576#1607' '#1588#1585#1591' '#1601#1602#1591' '#1579#1576#1578' '#1593#1583#1583')'
              #1605#1581#1583#1608#1583#1607'  '#1578#1575#1585#1740#1582'   '#1705#1605#1705#1740' '#1583#1585' '#1604#1740#1587#1578' '#1601#1585#1605' '#1601#1593#1575#1604' '#1588#1608#1583)
            TabOrder = 17
            OnClick = chklstSettingsClick
          end
        end
        object ts1: TTabSheet
          Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
          ImageIndex = 5
          DesignSize = (
            1059
            450)
          object Label114: TLabel
            Left = 860
            Top = 14
            Width = 93
            Height = 13
            Anchors = [akTop, akRight]
            Caption = ' '#1576#1586#1585#1711#1578#1585#1610#1606' '#1588#1605#1575#1585#1607' '#1601#1585#1605
            ExplicitLeft = 579
          end
          object Label115: TLabel
            Left = 860
            Top = 77
            Width = 148
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1601#1585#1605' '#1576#1585#1575#1610' '#1605#1581#1575#1587#1576#1607' '#1588#1605#1575#1585#1607' '#1601#1585#1605
            ExplicitLeft = 872
          end
          object Label122: TLabel
            Left = 860
            Top = 45
            Width = 122
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1586#1605#1575#1606' '#1575#1610#1580#1575#1583' '#1588#1605#1575#1585#1607' '#1601#1585#1605' '#1580#1583#1610#1583
            ExplicitLeft = 579
          end
          object Label30: TLabel
            Left = 860
            Top = 108
            Width = 111
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1586#1605#1575#1606' '#1575#1610#1580#1575#1583' '#1603#1604#1610#1583' '#1601#1585#1605' '#1580#1583#1610#1583
            ExplicitLeft = 579
          end
          object Label35: TLabel
            Left = 860
            Top = 139
            Width = 84
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Reset '#1588#1605#1575#1585#1607' '#1601#1585#1605' '
            ExplicitLeft = 579
          end
          object dbchkDuplicateReciptNoActive: TDBCheckBox
            Left = 91
            Top = 12
            Width = 152
            Height = 17
            BiDiMode = bdRightToLeft
            Caption = #1570#1610#1575' '#1588#1605#1575#1585#1607' '#1601#1585#1605' '#1578#1603#1585#1575#1585#1610' '#1576#1575#1588#1583'.'#8207
            DataField = 'DuplicateReciptNoActive'
            DataSource = srcReciptTypes
            ParentBiDiMode = False
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
            WordWrap = True
          end
          object dbchkEditReciptNumberActive: TDBCheckBox
            Left = 91
            Top = 43
            Width = 176
            Height = 17
            BiDiMode = bdRightToLeft
            Caption = #1570#1610#1575' '#1588#1605#1575#1585#1607' '#1601#1585#1605' '#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588' '#1576#1575#1588#1583'.'#8207
            DataField = 'EditReciptNumberActive'
            DataSource = srcReciptTypes
            ParentBiDiMode = False
            TabOrder = 1
            ValueChecked = '1'
            ValueUnchecked = '2'
            WordWrap = True
          end
          object dbchkAidNumRestOnSecType: TDBCheckBox
            Left = 91
            Top = 75
            Width = 245
            Height = 17
            BiDiMode = bdRightToLeft
            Caption = #1570#1610#1575' '#1588#1605#1575#1585#1607' '#1601#1585#1605' '#1576#1585' '#1581#1587#1576' '#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' Reset '#1588#1608#1583'.'
            DataField = 'AidNumRestOnSecType'
            DataSource = srcReciptTypes
            ParentBiDiMode = False
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '0'
            WordWrap = True
          end
          object cmbReciptNumberKind: TDBComboBox
            Left = 555
            Top = 10
            Width = 299
            Height = 21
            HelpType = htKeyword
            Anchors = [akTop, akRight]
            Color = clWhite
            DataField = 'ReciptNumberKind'
            DataSource = srcReciptTypes
            Items.Strings = (
              #1576#1585' '#1575#1587#1600#1575#1587' '#1588#1600#1605#1600#1575#1585#1607'  '#1601#1585#1605
              #1576#1585' '#1575#1587#1575#1587' '#1588#1605#1575#1585#1607' '#1603#1605#1603#1610)
            TabOrder = 3
            OnEnter = cmbEffectTypeEnter
          end
          object edtReciptNumberOfType: TDBEdit
            Left = 555
            Top = 73
            Width = 299
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ReciptNumberOfType'
            DataSource = srcReciptTypes
            TabOrder = 4
          end
          object cmbReciptNumberEventKind: TDBComboBox
            Left = 555
            Top = 41
            Width = 299
            Height = 21
            HelpType = htKeyword
            Anchors = [akTop, akRight]
            Color = clWhite
            DataField = 'ReciptNumberEventKind'
            DataSource = srcReciptTypes
            Items.Strings = (
              #1583#1585' '#1586#1605#1575#1606' '#1580#1583#1610#1583' '#1586#1583#1606
              #1602#1576#1604' '#1575#1586' '#1579#1576#1578' '#1606#1607#1575#1610#1610)
            TabOrder = 5
            OnEnter = cmbEffectTypeEnter
          end
          object cmbReciptIDEventKind: TDBComboBox
            Left = 555
            Top = 104
            Width = 299
            Height = 21
            HelpType = htKeyword
            Anchors = [akTop, akRight]
            Color = clWhite
            DataField = 'ReciptIDEventKind'
            DataSource = srcReciptTypes
            Items.Strings = (
              #1583#1585' '#1586#1605#1575#1606' '#1580#1583#1610#1583' '#1586#1583#1606
              #1602#1576#1604' '#1575#1586' '#1579#1576#1578' '#1606#1607#1575#1610#1610)
            TabOrder = 6
            OnEnter = cmbEffectTypeEnter
          end
          object cmbRestartFormNumberOnStore: TDBComboBox
            Left = 555
            Top = 135
            Width = 299
            Height = 21
            HelpType = htKeyword
            Anchors = [akTop, akRight]
            Color = clWhite
            DataField = 'RestartFormNumberOnStore'
            DataSource = srcReciptTypes
            Items.Strings = (
              '0-'#1576#1585' '#1581#1587#1576' '#1575#1606#1576#1575#1585' '#1608' '#1578#1575#1585#1610#1582
              '1-'#1576#1585' '#1581#1587#1576' '#1575#1606#1576#1575#1585
              '2-'#1606#1583#1575#1585#1583
              '3-'#1576#1585' '#1581#1587#1576' '#1578#1575#1585#1610#1582
              '4-'#1576#1585' '#1581#1587#1576' '#1575#1606#1576#1575#1585' '#1608' '#1578#1575#1585#1610#1582' '#1608' '#1603#1575#1585#1576#1585
              '5-'#1576#1585' '#1581#1587#1576' '#1605#1585#1705#1586' '#1601#1585#1608#1588
              '6-'#1576#1585#1581#1587#1576' '#1605#1588#1578#1585#1740'3'
              '7-'#1576#1585' '#1581#1587#1576' '#1603#1575#1585#1576#1585)
            TabOrder = 7
            OnEnter = cmbEffectTypeEnter
          end
          object dbchkReciptsRowActive: TDBCheckBox
            Left = 91
            Top = 137
            Width = 150
            Height = 17
            BiDiMode = bdRightToLeft
            Caption = #1588#1605#1575#1585#1607' '#1585#1583#1610#1601' '#1601#1585#1605' '#1601#1593#1575#1604' '#1588#1608#1583
            DataField = 'ReciptsRowActive'
            DataSource = srcReciptTypes
            ParentBiDiMode = False
            TabOrder = 8
            ValueChecked = '1'
            ValueUnchecked = '0'
            WordWrap = True
          end
          object chklstReciptNumberControl: TCheckListBox
            Left = 0
            Top = 330
            Width = 1059
            Height = 120
            Align = alBottom
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = clGradientInactiveCaption
            Columns = 1
            ItemHeight = 13
            Items.Strings = (
              'ServerID '#1583#1585' '#1586#1605#1575#1606' '#1705#1606#1578#1585#1604' '#1578#1705#1585#1575#1585#1740' '#1576#1608#1583#1606' '#1588#1605#1575#1585#1607' '#1601#1585#1605' '#1583#1585' '#1606#1592#1585' '#1711#1585#1601#1578#1607' '#1606#1588#1608#1583)
            TabOrder = 9
            OnClick = chklstSettingsClick
          end
        end
        object TabSheet2: TTabSheet
          Caption = #1581#1587#1575#1576#1583#1575#1585#1610
          ImageIndex = 1
          object PageControl2: TPageControl
            Left = 0
            Top = 0
            Width = 1059
            Height = 450
            ActivePage = TabSheet1
            Align = alClient
            MultiLine = True
            TabOrder = 0
            object TabSheet10: TTabSheet
              Caption = #1662#1610#1588' '#1601#1585#1590' '#1603#1583#1610#1606#1711' '#1576#1583#1607#1603#1575#1585
              DesignSize = (
                1051
                422)
              object Label47: TLabel
                Left = 885
                Top = 65
                Width = 31
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = #1581#1587#1575#1576
                ExplicitLeft = 897
              end
              object Label48: TLabel
                Left = 885
                Top = 99
                Width = 37
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = #1578#1601#1589#1610#1604#1610
                ExplicitLeft = 698
              end
              object Label49: TLabel
                Left = 885
                Top = 132
                Width = 43
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = #1578#1601#1589#1610#1604#1610'2'
                ExplicitLeft = 897
              end
              object Label50: TLabel
                Left = 885
                Top = 166
                Width = 43
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = #1578#1601#1589#1610#1604#1610'3'
                ExplicitLeft = 897
              end
              object Label58: TLabel
                Left = 885
                Top = 31
                Width = 114
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = #1603#1583' '#1605#1588#1578#1585#1610' '#1605#1608#1585#1583' '#1575#1587#1578#1601#1575#1583#1607
                ExplicitLeft = 698
              end
              object Label85: TLabel
                Left = 886
                Top = 200
                Width = 43
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = #1578#1601#1589#1610#1604#1610'4'
                ExplicitLeft = 898
              end
              object CmbDefaultTopic_Bed: TDBComboBox
                Left = 279
                Top = 61
                Width = 600
                Height = 21
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                DataField = 'DefaultTopic_Bed'
                DataSource = srcReciptTypes
                DropDownCount = 16
                ParentBiDiMode = False
                TabOrder = 2
                OnEnter = cmbEffectTypeEnter
              end
              object CmbDefaultDetail_Bed: TDBComboBox
                Left = 277
                Top = 95
                Width = 600
                Height = 21
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Color = clWhite
                DataField = 'DefaultDetail_Bed'
                DataSource = srcReciptTypes
                DropDownCount = 16
                ParentBiDiMode = False
                TabOrder = 4
                OnEnter = cmbEffectTypeEnter
              end
              object cmbDefaultCTopic_Bed: TDBComboBox
                Left = 277
                Top = 128
                Width = 600
                Height = 21
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                DataField = 'DefaultCTopic_Bed'
                DataSource = srcReciptTypes
                DropDownCount = 16
                Items.Strings = (
                  '0-'#1606#1583#1575#1585#1583
                  '1-'#1575#1606#1576#1575#1585
                  '2-'#1711#1585#1608#1607' '#1603#1575#1604#1575' _ '#1583#1585' '#1570#1605#1583
                  '3-'#1603#1583#1610#1606#1711' '#1603#1575#1604#1575
                  '4-'#1711#1585#1608#1607' '#1605#1588#1578#1585#1610
                  '5-'#1575#1591#1604#1575#1593#1575#1578' '#1605#1588#1578#1585#1610
                  '6-'#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
                  '7-'#1603#1583' '#1605#1581#1589#1608#1604' - '#1583#1585#1570#1605#1583
                  '8-'#1605#1583#1604' '#1605#1581#1589#1608#1604
                  '9-'#1605#1602#1583#1575#1585' '#1579#1575#1576#1578
                  '10-'#1711#1585#1608#1607' '#1603#1575#1604#1575' - '#1583#1585#1570#1605#1583' '#1583#1585' '#1580#1585#1610#1575#1606' '#1608#1589#1608#1604
                  '11-ReciptItems'
                  '12-'#1711#1585#1608#1607' '#1603#1575#1604#1575' '#1602#1610#1605#1578' '#1578#1605#1575#1605' '#1588#1583#1607
                  '13-'#1605#1581#1604' '#1605#1589#1585#1601
                  '14-'#1605#1581#1589#1608#1604' - '#1602#1610#1605#1578' '#1578#1605#1575#1605' '#1588#1583#1607
                  '15-'#1605#1581#1589#1608#1604' - '#1583#1585#1570#1605#1583' '#1583#1585' '#1580#1585#1610#1575#1606' '#1608#1589#1608#1604
                  '16-'#1603#1583#1610#1606#1711' '#1605#1581#1589#1608#1604
                  '17-'#1575#1606#1576#1575#1585'2'
                  '18-'#1605#1588#1578#1585#1740'3'
                  '19-'#1605#1588#1578#1585#1740' Details'
                  '20-'#1605#1588#1578#1585#1740'1'
                  '21-'#1605#1588#1578#1585#1740'2'
                  
                    '22-'#1575#1711#1585' '#1705#1583' '#1605#1593#1740#1606' '#1583#1585' ReciptItem '#1605#1582#1575#1604#1601' '#1589#1601#1585' '#1576#1608#1583' ReciptItem '#1583#1585' '#1594#1740#1585' '#1575#1740#1606 +
                    #1589#1608#1585#1578' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1740
                  '23-'#1605#1585#1705#1586' '#1601#1585#1608#1588
                  '24-'#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' Details'
                  '25-'#1605#1588#1578#1585#1740'4'
                  
                    '26-'#1575#1711#1585#8204#1606#1608#1593#8204#1575#1591#1604#1575#1593#1575#1578#8204'Master<>0'#1576#1608#1583#8204#1606#1608#1593#8204#1575#1591#1604#1575#1593#1575#1578#8204'Master'#8204#1608#1711#1585#1606#1607#8204#1575#1591#1604#1575#1593#1575#1578 +
                    #8204#1605#1588#1578#1585#1740
                  '27-'#1705#1583#1740#1606#1711' '#1705#1575#1604#1575' '#1575#1711#1585' '#1589#1601#1585' '#1576#1608#1583' '#1575#1586' '#1711#1585#1608#1607' '#1705#1575#1604#1575
                  '28-'#1587#1575#1740#1585' '#1605#1581#1604' '#1607#1575#1740' '#1605#1589#1585#1601
                  '29-'#1705#1583#1740#1606#1711' '#1705#1575#1604#1575' '#1705#1583' '#1570#1605#1585
                  '30-'#1587#1575#1740#1585' '#1605#1581#1604' '#1607#1575#1740' '#1605#1589#1585#1601' '#1570#1585#1578#1740#1705#1604)
                ParentBiDiMode = False
                TabOrder = 1
                OnEnter = cmbEffectTypeEnter
              end
              object cmbDefaultCTopic2_Bed: TDBComboBox
                Left = 277
                Top = 162
                Width = 600
                Height = 21
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                DataField = 'DefaultCTopic2_Bed'
                DataSource = srcReciptTypes
                DropDownCount = 16
                Items.Strings = (
                  '')
                ParentBiDiMode = False
                TabOrder = 3
                OnEnter = cmbEffectTypeEnter
              end
              object CmbCustCodeUse4Bed: TDBComboBox
                Left = 277
                Top = 27
                Width = 600
                Height = 21
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                DataField = 'CustCodeUse4Bed'
                DataSource = srcReciptTypes
                DropDownCount = 16
                Items.Strings = (
                  #1606#1583#1575#1585#1583
                  'Recipt '#1605#1588#1578#1585#1610'1'
                  'Recipt '#1605#1588#1578#1585#1610'2'
                  'ReciptItems'
                  'Recipt '#1605#1588#1578#1585#1610'3'
                  'Recipt '#1605#1588#1578#1585#1610'4'
                  'Recipt '#1605#1588#1578#1585#1610'5')
                ParentBiDiMode = False
                TabOrder = 0
              end
              object cmbDefaultCTopic3_Bed: TDBComboBox
                Left = 277
                Top = 196
                Width = 600
                Height = 21
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                DataField = 'DefaultCTopic3_Bed'
                DataSource = srcReciptTypes
                DropDownCount = 16
                ParentBiDiMode = False
                TabOrder = 5
                OnEnter = cmbEffectTypeEnter
              end
            end
            object TabSheet11: TTabSheet
              Caption = #1662#1610#1588' '#1601#1585#1590' '#1603#1583#1610#1606#1711' '#1576#1587#1578#1575#1606#1603#1575#1585
              ImageIndex = 1
              DesignSize = (
                1051
                422)
              object Label51: TLabel
                Left = 883
                Top = 69
                Width = 31
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = #1581#1587#1575#1576
                ExplicitLeft = 895
              end
              object Label52: TLabel
                Left = 883
                Top = 106
                Width = 37
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = #1578#1601#1589#1610#1604#1610
                ExplicitLeft = 696
              end
              object Label53: TLabel
                Left = 883
                Top = 142
                Width = 43
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = #1578#1601#1589#1610#1604#1610'2'
                ExplicitLeft = 895
              end
              object Label54: TLabel
                Left = 883
                Top = 179
                Width = 43
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = #1578#1601#1589#1610#1604#1610'3'
                ExplicitLeft = 895
              end
              object Label59: TLabel
                Left = 883
                Top = 32
                Width = 114
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1603#1583' '#1605#1588#1578#1585#1610' '#1605#1608#1585#1583' '#1575#1587#1578#1601#1575#1583#1607
                ExplicitLeft = 696
              end
              object Label87: TLabel
                Left = 883
                Top = 216
                Width = 43
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = #1578#1601#1589#1610#1604#1610'4'
                ExplicitLeft = 895
              end
              object CmbDefaultTopic_Bes: TDBComboBox
                Left = 277
                Top = 65
                Width = 600
                Height = 21
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                DataField = 'DefaultTopic_Bes'
                DataSource = srcReciptTypes
                DropDownCount = 16
                ParentBiDiMode = False
                TabOrder = 1
                OnEnter = cmbEffectTypeEnter
              end
              object CmbDefaultDetail_Bes: TDBComboBox
                Left = 277
                Top = 102
                Width = 600
                Height = 21
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                DataField = 'DefaultDetail_Bes'
                DataSource = srcReciptTypes
                DropDownCount = 16
                ParentBiDiMode = False
                TabOrder = 3
                OnEnter = cmbEffectTypeEnter
              end
              object cmbDefaultCTopic_Bes: TDBComboBox
                Left = 277
                Top = 139
                Width = 600
                Height = 21
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                DataField = 'DefaultCTopic_Bes'
                DataSource = srcReciptTypes
                DropDownCount = 16
                ParentBiDiMode = False
                TabOrder = 0
                OnEnter = cmbEffectTypeEnter
              end
              object cmbDefaultCTopic2_Bes: TDBComboBox
                Left = 277
                Top = 176
                Width = 600
                Height = 21
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                DataField = 'DefaultCTopic2_Bes'
                DataSource = srcReciptTypes
                DropDownCount = 16
                ParentBiDiMode = False
                TabOrder = 2
                OnEnter = cmbEffectTypeEnter
              end
              object CmbCustCodeUse4Bes: TDBComboBox
                Left = 277
                Top = 28
                Width = 600
                Height = 21
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                DataField = 'CustCodeUse4Bes'
                DataSource = srcReciptTypes
                DropDownCount = 16
                Items.Strings = (
                  #1606#1583#1575#1585#1583
                  'Recipt '#1605#1588#1578#1585#1610'1'
                  'Recipt '#1605#1588#1578#1585#1610'2'
                  'ReciptItems'
                  'Recipt '#1605#1588#1578#1585#1610'3'
                  'Recipt '#1605#1588#1578#1585#1610'4'
                  'Recipt '#1605#1588#1578#1585#1610'5')
                ParentBiDiMode = False
                TabOrder = 4
              end
              object cmbDefaultCTopic3_Bes: TDBComboBox
                Left = 277
                Top = 213
                Width = 600
                Height = 21
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                DataField = 'DefaultCTopic3_Bes'
                DataSource = srcReciptTypes
                DropDownCount = 16
                ParentBiDiMode = False
                TabOrder = 5
                OnEnter = cmbEffectTypeEnter
              end
            end
            object TabSheet12: TTabSheet
              Caption = #1603#1583' '#1581#1587#1575#1576
              ImageIndex = 2
              DesignSize = (
                1051
                422)
              object Label45: TLabel
                Left = 697
                Top = 23
                Width = 78
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = #1603#1583' '#1581#1587#1575#1576' '#1576#1583#1607#1603#1575#1585
                FocusControl = edtConstTopicCode_Bed
                ExplicitLeft = 709
              end
              object Label46: TLabel
                Left = 695
                Top = 56
                Width = 86
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = #1603#1583' '#1581#1587#1575#1576' '#1576#1587#1578#1575#1606#1603#1575#1585
                FocusControl = edtConstTopicCode_Bes
                ExplicitLeft = 707
              end
              object Label157: TLabel
                Left = 697
                Top = 111
                Width = 92
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = #1603#1583' '#1581#1587#1575#1576' '#1575#1585#1586' '#1576#1583#1607#1603#1575#1585
                FocusControl = edtConstTopicCode_ArzBed
                ExplicitLeft = 709
              end
              object Label158: TLabel
                Left = 695
                Top = 144
                Width = 100
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = #1603#1583' '#1581#1587#1575#1576' '#1575#1585#1586' '#1576#1587#1578#1575#1606#1603#1575#1585
                FocusControl = edtConstTopicCode_ArzBes
                ExplicitLeft = 707
              end
              object edtConstTopicCode_Bed: TDBEdit
                Left = 554
                Top = 19
                Width = 134
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'ConstTopicCode_Bed'
                DataSource = srcReciptTypes
                TabOrder = 0
              end
              object edtConstTopicCode_Bes: TDBEdit
                Left = 554
                Top = 52
                Width = 134
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'ConstTopicCode_Bes'
                DataSource = srcReciptTypes
                TabOrder = 1
              end
              object edtConstTopicCode_ArzBed: TDBEdit
                Left = 554
                Top = 107
                Width = 134
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'ConstTopicCode_ArzBed'
                DataSource = srcReciptTypes
                TabOrder = 2
              end
              object edtConstTopicCode_ArzBes: TDBEdit
                Left = 554
                Top = 140
                Width = 134
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'ConstTopicCode_ArzBes'
                DataSource = srcReciptTypes
                TabOrder = 3
              end
            end
            object TabSheet21: TTabSheet
              Caption = #1711#1586#1575#1585#1588#1575#1578
              ImageIndex = 4
              DesignSize = (
                1051
                422)
              object Label1: TLabel
                Left = 845
                Top = 77
                Width = 48
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1606#1608#1593' '#1576#1583#1607#1603#1575#1585
                ExplicitLeft = 658
              end
              object Label2: TLabel
                Left = 845
                Top = 105
                Width = 56
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1606#1608#1593' '#1576#1587#1578#1575#1606#1603#1575#1585
                ExplicitLeft = 658
              end
              object Label55: TLabel
                Left = 845
                Top = 22
                Width = 115
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = #1606#1608#1593#8207#1578#1575#1579#1610#1585#1576#1585#1581#1587#1575#1576#8207#1605#1588#1578#1585#1610'1'
                ExplicitLeft = 658
              end
              object Label72: TLabel
                Left = 180
                Top = 22
                Width = 115
                Height = 13
                Alignment = taRightJustify
                Caption = #1606#1608#1593#8207#1578#1575#1579#1610#1585#1576#1585#1581#1587#1575#1576#8207#1605#1588#1578#1585#1610'2'
              end
              object Label73: TLabel
                Left = 845
                Top = 49
                Width = 99
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = #1605#1588#1578#1585#1610' '#1602#1575#1576#1604' '#1575#1587#1578#1601#1575#1583#1607
                ExplicitLeft = 658
              end
              object Label142: TLabel
                Left = 180
                Top = 49
                Width = 115
                Height = 13
                Alignment = taRightJustify
                Caption = #1606#1608#1593#8207#1578#1575#1579#1610#1585#1576#1585#1581#1587#1575#1576#8207#1605#1588#1578#1585#1610'3'
              end
              object Label143: TLabel
                Left = 180
                Top = 77
                Width = 115
                Height = 13
                Alignment = taRightJustify
                Caption = #1606#1608#1593#8207#1578#1575#1579#1610#1585#1576#1585#1581#1587#1575#1576#8207#1605#1588#1578#1585#1610'4'
              end
              object Label168: TLabel
                Left = 180
                Top = 104
                Width = 147
                Height = 13
                Alignment = taRightJustify
                Caption = #1606#1608#1593#8207#1578#1575#1579#1610#1585#1576#1585#1581#1587#1575#1576#8207#1605#1588#1578#1585#1610' '#1578#1593#1583#1740#1604#1575#1578
              end
              object cmbBedType: TDBComboBox
                Left = 696
                Top = 73
                Width = 146
                Height = 21
                Anchors = [akTop, akRight]
                AutoDropDown = True
                Color = clWhite
                DataField = 'BedType'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1606#1583#1575#1585#1583
                  #1581#1587#1575#1576#1607#1575#1610' '#1605#1588#1578#1585#1610
                  #1575#1606#1576#1575#1585
                  #1601#1585#1608#1588
                  #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
                  #1602#1610#1605#1578' '#1578#1605#1575#1605' '#1588#1583#1607
                  #1603#1606#1578#1585#1604' '#1581#1587#1575#1576' '#1605#1588#1578#1585#1610)
                TabOrder = 3
                OnEnter = cmbEffectTypeEnter
              end
              object cmbBesType: TDBComboBox
                Left = 696
                Top = 101
                Width = 146
                Height = 21
                Anchors = [akTop, akRight]
                AutoDropDown = True
                Color = clWhite
                DataField = 'BesType'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1606#1583#1575#1585#1583
                  #1581#1587#1575#1576#1607#1575#1610' '#1605#1588#1578#1585#1610
                  #1575#1606#1576#1575#1585
                  #1601#1585#1608#1588
                  #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
                  #1602#1610#1605#1578' '#1578#1605#1575#1605' '#1588#1583#1607
                  #1603#1606#1578#1585#1604' '#1581#1587#1575#1576' '#1605#1588#1578#1585#1610)
                TabOrder = 4
                OnEnter = cmbEffectTypeEnter
              end
              object cmbEffectOnCustomer: TDBComboBox
                Left = 696
                Top = 18
                Width = 146
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'EffectOnCustomer'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1576#1610' '#1578#1571#1579#1610#1585
                  #1575#1579#1585' '#1605#1579#1576#1578
                  #1575#1579#1585' '#1605#1606#1601#1610
                  #1575#1579#1585' '#1605#1579#1576#1578' _ '#1575#1602#1604#1575#1605' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1606#1588#1583#1607
                  #1575#1579#1585' '#1605#1606#1601#1740' _ '#1575#1602#1604#1575#1605' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1606#1588#1583#1607)
                TabOrder = 1
                OnEnter = cmbEffectTypeEnter
              end
              object cmbEffectOnCustomer2: TDBComboBox
                Left = 22
                Top = 18
                Width = 156
                Height = 21
                DataField = 'EffectOnCustomer2'
                DataSource = srcReciptTypes
                ImeMode = imHanguel
                Items.Strings = (
                  '0-'#1576#1610' '#1578#1571#1579#1610#1585
                  '1-'#1575#1579#1585' '#1605#1579#1576#1578
                  '2-'#1575#1579#1585' '#1605#1606#1601#1610
                  '3-'#1662#1608#1585#1587#1575#1606#1578'  '#1575#1579#1585' '#1605#1579#1576#1578
                  '4-'#1662#1608#1585#1587#1575#1606#1578' '#1575#1579#1585' '#1605#1606#1601#1610
                  '5-'#1705#1585#1575#1740#1607' '#1581#1605#1604'  '#1575#1579#1585' '#1605#1579#1576#1578
                  '6-'#1705#1585#1575#1740#1607' '#1581#1605#1604' '#1575#1579#1585' '#1605#1606#1601#1610)
                TabOrder = 0
                OnEnter = cmbEffectTypeEnter
              end
              object cmbUseableCustomer: TDBComboBox
                Left = 696
                Top = 45
                Width = 146
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'UseableCustomer'
                DataSource = srcReciptTypes
                Items.Strings = (
                  'Recipts'
                  'ReciptItems')
                TabOrder = 2
                OnEnter = cmbEffectTypeEnter
              end
              object cmbEffectOnCustomer3: TDBComboBox
                Left = 22
                Top = 45
                Width = 156
                Height = 21
                DataField = 'EffectOnCustomer3'
                DataSource = srcReciptTypes
                ImeMode = imHanguel
                Items.Strings = (
                  #1576#1610' '#1578#1571#1579#1610#1585
                  #1575#1579#1585' '#1605#1579#1576#1578
                  #1575#1579#1585' '#1605#1606#1601#1610)
                TabOrder = 5
                OnEnter = cmbEffectTypeEnter
              end
              object cmbEffectOnCustomer4: TDBComboBox
                Left = 22
                Top = 73
                Width = 156
                Height = 21
                DataField = 'EffectOnCustomer4'
                DataSource = srcReciptTypes
                ImeMode = imHanguel
                Items.Strings = (
                  #1576#1610' '#1578#1571#1579#1610#1585
                  #1575#1579#1585' '#1605#1579#1576#1578
                  #1575#1579#1585' '#1605#1606#1601#1610)
                TabOrder = 6
                OnEnter = cmbEffectTypeEnter
              end
              object cmbEffectOnCustomerReg: TDBComboBox
                Left = 22
                Top = 100
                Width = 156
                Height = 21
                DataField = 'EffectOnCustomerReg'
                DataSource = srcReciptTypes
                ImeMode = imHanguel
                Items.Strings = (
                  #1576#1610' '#1578#1571#1579#1610#1585
                  #1575#1579#1585' '#1605#1579#1576#1578
                  #1575#1579#1585' '#1605#1606#1601#1610)
                TabOrder = 7
                OnEnter = cmbEffectTypeEnter
              end
            end
            object TabSheet22: TTabSheet
              Caption = #1587#1575#1610#1585
              ImageIndex = 5
              DesignSize = (
                1051
                422)
              object Label109: TLabel
                Left = 785
                Top = 16
                Width = 155
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1606#1581#1608#1607' '#1589#1583#1608#1585' '#1587#1606#1583' '#1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578
                ExplicitLeft = 504
              end
              object Label117: TLabel
                Left = 785
                Top = 41
                Width = 214
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1589#1583#1608#1585' '#1587#1606#1583' '#1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578' '#1576#1589#1608#1585#1578' '#1585#1583#1610#1601' '#1605#1580#1586#1575
                ExplicitLeft = 504
              end
              object chkHasRecall: TDBCheckBox
                Left = 517
                Top = 62
                Width = 240
                Height = 17
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1570#1610#1575' '#1603#1575#1604#1575#1610' '#1575#1605#1575#1606#1610' '#1583#1585' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1575#1593#1605#1575#1604' '#1588#1608#1583'.'#8207
                DataField = 'Amani_StuffActiveInDoc'
                DataSource = srcReciptTypes
                ParentBiDiMode = False
                TabOrder = 0
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object DBCheckBox14: TDBCheckBox
                Left = 517
                Top = 83
                Width = 232
                Height = 17
                Anchors = [akTop, akRight]
                BiDiMode = bdLeftToRight
                Caption = #1570#1610#1575' '#1606#1587#1576#1578' '#1576#1607' '#1603#1575#1604#1575#1610' '#1575#1605#1575#1606#1610' '#1581#1602' '#1575#1604#1593#1605#1604' '#1579#1576#1578' '#1588#1608#1583'.'#8207
                DataField = 'ActiveDocOnCommission'
                DataSource = srcReciptTypes
                ParentBiDiMode = False
                TabOrder = 1
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object cmbDeficate_MakeDocKind: TDBComboBox
                Left = 517
                Top = 14
                Width = 266
                Height = 21
                Anchors = [akTop, akRight]
                Color = clWhite
                DataField = 'Deficate_MakeDocKind'
                DataSource = srcReciptTypes
                Items.Strings = (
                  '0-'#1593#1605#1608#1605#1610
                  '1-'#1582#1575#1589'1'
                  '2-'#1582#1575#1589'2'
                  '3-'#1582#1575#1589'3'
                  '4-'#1582#1575#1589' 4 : '#1603#1583' '#1578#1601#1589#1610#1604#1610' '#1576#1585' '#1575#1587#1575#1587' '#1605#1588#1578#1585#1610' 1'
                  '5-'#1582#1575#1589' 5 : '#1603#1583' '#1578#1601#1589#1610#1604#1610' '#1576#1585' '#1575#1587#1575#1587' '#1605#1588#1578#1585#1610' 2'
                  '6-'#1582#1575#1589'2 '#1705#1583' '#1578#1601#1589#1740#1604#1740'2 '#1575#1586' '#1705#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578
                  '7-...........................'
                  '8-'#1582#1575#1589'2 '#1608' '#1576#1607#1575#1740' '#1705#1604' '
                  '9-'#1576#1585#1575#1587#1575#1587' '#1578#1606#1592#1740#1605#1575#1578' '#1662#1740#1588' '#1601#1585#1590' '#1705#1583#1740#1606#1711' '#1576#1583#1607#1705#1575#1585' '#1576#1587#1578#1575#1606#1705#1575#1585
                  '10-'
                  '11-'#1582#1575#1604#1589' '#1705#1607' '#1576#1575' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1605#1602#1583#1575#1585' '#1711#1585#1601#1578#1607
                  '12-'#1582#1575#1589'2 '#1608' '#1576#1575' '#1605#1576#1604#1594' '#1578#1582#1601#1740#1601' '
                  '13-'#1582#1575#1589'2 '#1608' '#1576#1575' '#1582#1575#1604#1589)
                TabOrder = 2
                OnEnter = cmbEffectTypeEnter
              end
              object cmbDeficate_MakeDocApart: TDBComboBox
                Left = 517
                Top = 37
                Width = 266
                Height = 21
                Anchors = [akTop, akRight]
                Color = clWhite
                DataField = 'Deficate_MakeDocApart'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1606#1576#1575#1588#1583
                  #1576#1575#1588#1583)
                TabOrder = 3
                OnEnter = cmbEffectTypeEnter
              end
            end
            object TabSheet1: TTabSheet
              Caption = #1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578' '#1582#1591#1610
              ImageIndex = 6
              object Memo1: TMemo
                AlignWithMargins = True
                Left = 3
                Top = 16
                Width = 270
                Height = 390
                Margins.Top = 16
                Margins.Bottom = 16
                Align = alLeft
                Color = clGradientInactiveCaption
                Ctl3D = False
                Lines.Strings = (
                  #1576#1585#1575#1740' '#1578#1606#1592#1740#1605#1575#1578' '#1705#1583' '#1605#1593#1740#1606' '#1578#1601#1589#1740#1604#1740' ,'#1578#1601#1589#1740#1604#1740'2 '#1582#1591#1740' '#1575#1593#1583#1575#1583
                  'N:  -1 -2 -3 -4'
                  #1576#1585#1575#1740' '#1605#1588#1578#1585#1740' 1 '#1608'2 '#1608'3 '
                  #1711#1575#1607#1740' (-3) '#1576#1585#1575#1740' '#1605#1588#1578#1585#1740' '#1583#1740#1578#1740#1604' '#1607#1587#1578
                  ' -4 '#1576#1585#1575#1740' '#1605#1588#1578#1585#1740' 3'
                  'N:-11  '#1576#1585#1575#1740' '#1705#1583' '#1605#1593#1740#1606' '#1578#1601#1589#1740#1604#1740' '#1583#1585' '#1582#1608#1583' '#1575#1740#1578#1605' '#1607#1575#1740' '#1601#1585#1605
                  'N:-12  '#1575#1606#1576#1575#1585
                  'N:-100 '#1576#1583#1607#1705#1575#1585' '#1705#1583' '#1705#1575#1604#1575
                  'N:-101   '#1576#1587#1578#1575#1606#1705#1575#1585' '#1705#1583' '#1705#1575#1604#1575
                  ''
                  #1576#1585#1575#1740' '#1578#1606#1592#1740#1605#1575#1578' '#1705#1583' '#1605#1593#1740#1606' '#1582#1591#1740
                  'N: -1  '#1575#1586' '#1578#1606#1592#1740#1605#1575#1578' '#1576#1583#1607#1705#1575#1585
                  'N: -6  '#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1587#1578#1585
                  'N:-13  '#1605#1581#1604' '#1605#1589#1585#1601
                  'N:-14  '#1587#1575#1740#1585' '#1605#1581#1604' '#1605#1589#1585#1601
                  'N:-16  '#1705#1583#1740#1606#1711' '#1705#1575#1604#1575
                  'N:-23   '#1605#1585#1705#1586' '#1601#1585#1608#1588
                  'N:-24  '#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1570#1740#1578#1605
                  'N:-26  '#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1587#1578#1585
                  ''
                  'N:-32  '#1578#1601#1589#1740#1604#1740' '#1705#1583#1605#1588#1578#1585#1740' 2 '#1578#1608#1586#1740#1606' '#1586#1605#1575#1606' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1601#1585#1605' '#1575#1606#1576#1575#1585
                  ''
                  '-17 '#1705#1583#1740#1606#1711' '#1705#1575#1604#1575' '#1705#1583#1570#1605#1585
                  '-15 '#1578#1601#1590#1740#1604#1740' '#1705#1587#1608#1585#1575#1578' '#1608#1575#1590#1575#1601#1575#1578' '#1662#1575#1740#1740#1606' '#1601#1585#1605' '#1575#1586' '#1585#1608#1740' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '
                  #1581#1587#1575#1576#1583#1575#1585#1740' '#1582#1608#1583' '#1705#1587#1608#1585#1575#1578' '#1575#1590#1575#1601#1575#1578' '#1583#1575#1582#1604' '#1601#1585#1605' '#1579#1576#1578' '#1588#1608#1583)
                ParentCtl3D = False
                TabOrder = 1
              end
              object dbgrdAccCode: TCedarDbgrid
                Tag = 111
                Left = 276
                Top = 0
                Width = 775
                Height = 422
                Align = alClient
                Color = clCream
                DataSource = srcAccCode
                DynProps = <>
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                FooterParams.FillStyle = cfstSolidEh
                FooterParams.Font.Charset = DEFAULT_CHARSET
                FooterParams.Font.Color = clWindowText
                FooterParams.Font.Height = -13
                FooterParams.Font.Name = 'Tahoma'
                FooterParams.Font.Style = [fsBold]
                FooterParams.ParentFont = False
                FooterParams.VertLines = False
                GridLineParams.VertEmptySpaceStyle = dessNonEh
                HorzScrollBar.ExtraPanel.Visible = True
                IndicatorTitle.ShowDropDownSign = True
                IndicatorTitle.TitleButton = True
                OddRowColor = clGradientInactiveCaption
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                ParentFont = False
                RowHeight = 18
                SearchPanel.Enabled = True
                SearchPanel.FilterOnTyping = True
                SortLocal = True
                TabOrder = 0
                OnEditButtonClick = dbgrdAccCodeEditButtonClick
                OnKeyPress = dbgrdAccCodeKeyPress
                ActiveSearchPanel = False
                SelectFooterIndex = 0
                Columns = <
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'InfoKind'
                    Footers = <>
                    PickList.Strings = (
                      '0-'#1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607
                      '1-'#1705#1585#1575#1610#1607' '#1581#1605#1604
                      '2-'#1705#1606#1578#1585#1604' '#1605#1608#1575#1583
                      '3-'#1705#1606#1578#1585#1604' '#1583#1587#1578#1605#1586#1583
                      '4-'#1705#1606#1578#1585#1604' '#1587#1585#1576#1575#1585
                      '5-'#1578#1582#1601#1610#1601#1575#1578' '#1705#1575#1604#1575
                      '6-'#1606#1585#1582' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
                      '7-'#1662#1610#1588' '#1601#1585#1590' '#1607#1575
                      '8-'#1581#1602' '#1575#1604#1593#1605#1604' '#1603#1575#1585#1610
                      '9-'#1606#1581#1608#1607' '#1662#1585#1583#1575#1582#1578
                      '10-'#1578#1582#1601#1740#1601'/'#1662#1608#1585#1587#1575#1606#1578
                      '11-'#1578#1582#1601#1610#1601#1575#1578'1 '#1705#1575#1604#1575
                      '12-'#1578#1582#1601#1610#1601#1575#1578'2 '#1705#1575#1604#1575
                      '13-'#1578#1582#1601#1610#1601#1575#1578'3 '#1705#1575#1604#1575
                      '14-'#1705#1585#1575#1610#1607' '#1581#1605#1604'2'
                      '15-'#1605#1575#1604#1740#1575#1578' 10 '#1583#1585#1589#1583
                      '16-'#1605#1575#1604#1740#1575#1578' 0 '#1583#1585#1589#1583
                      '17-'#1662#1608#1585#1587#1575#1606#1578' '#1705#1575#1604#1575
                      '18-'#1662#1608#1585#1587#1575#1606#1578' '#1590#1585#1740#1576' '#1608#1586#1606
                      '19-'#1581#1602' '#1575#1604#1593#1605#1604' '#1705#1575#1585#1740' 2'
                      '20-'#1605#1575' '#1576#1607' '#1578#1601#1575#1608#1578' '#1601#1585#1570#1608#1585#1583#1607' '#1570#1586#1575#1583' '#1576#1606#1586#1740#1606)
                    Width = 103
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'BedBes'
                    Footers = <>
                    PickList.Strings = (
                      #1576#1583#1607#1603#1575#1585
                      #1576#1587#1578#1575#1606#1603#1575#1585)
                    Width = 56
                  end
                  item
                    ButtonStyle = cbsEllipsis
                    CellButtons = <>
                    DynProps = <>
                    EditButton.Style = ebsEllipsisEh
                    EditButton.Visible = True
                    EditButtons = <>
                    FieldName = 'TopicCode'
                    Footers = <>
                    Width = 82
                  end
                  item
                    ButtonStyle = cbsEllipsis
                    CellButtons = <>
                    DynProps = <>
                    EditButton.Style = ebsEllipsisEh
                    EditButton.Visible = True
                    EditButtons = <>
                    FieldName = 'DetailCode'
                    Footers = <>
                  end
                  item
                    ButtonStyle = cbsEllipsis
                    CellButtons = <>
                    DynProps = <>
                    EditButton.Style = ebsEllipsisEh
                    EditButton.Visible = True
                    EditButtons = <>
                    FieldName = 'CTopicCode'
                    Footers = <>
                  end
                  item
                    ButtonStyle = cbsEllipsis
                    CellButtons = <>
                    DynProps = <>
                    EditButton.Style = ebsEllipsisEh
                    EditButton.Visible = True
                    EditButtons = <>
                    FieldName = 'CTopicCode2'
                    Footers = <>
                  end
                  item
                    ButtonStyle = cbsEllipsis
                    CellButtons = <>
                    DynProps = <>
                    EditButton.Style = ebsEllipsisEh
                    EditButton.Visible = True
                    EditButtons = <>
                    FieldName = 'CTopicCode3'
                    Footers = <>
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'CustID'
                    Footers = <>
                    Width = 65
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'Note'
                    Footers = <>
                    Width = 66
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
            object TabSheet4: TTabSheet
              Caption = #1589#1583#1608#1585' '#1587#1606#1583
              ImageIndex = 7
              DesignSize = (
                1051
                422)
              object Label60: TLabel
                Left = 551
                Top = 48
                Width = 183
                Height = 13
                Caption = #1606#1581#1608#1607' '#1579#1576#1578' '#1591#1585#1601' '#1581#1587#1575#1576' '#1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578
              end
              object Label61: TLabel
                Left = 551
                Top = 78
                Width = 168
                Height = 13
                Caption = #1606#1581#1608#1607' '#1606#1605#1575#1610#1588' '#1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1583#1585' '#1601#1585#1605
              end
              object Label7: TLabel
                Left = 551
                Top = 108
                Width = 89
                Height = 13
                Caption = #1662#1610#1588' '#1601#1585#1590' '#1606#1608#1593' '#1587#1606#1583
                FocusControl = edtDocTypeCode
              end
              object Label153: TLabel
                Left = 550
                Top = 139
                Width = 122
                Height = 13
                Alignment = taRightJustify
                Caption = #1608#1590#1593#1740#1578' '#1601#1585#1605' '#1576#1585#1575#1740' '#1579#1576#1578' '#1587#1606#1583
              end
              object Label165: TLabel
                Left = 550
                Top = 166
                Width = 167
                Height = 13
                Alignment = taRightJustify
                Caption = #1608#1590#1593#1740#1578' '#1601#1585#1605' '#1576#1585#1575#1740' '#1579#1576#1578' '#1587#1606#1583' '#1705#1608#1670#1705#1578#1585' '#1575#1586
              end
              object DBCheckBox1: TDBCheckBox
                Left = 563
                Top = 16
                Width = 260
                Height = 19
                Anchors = [akTop, akRight]
                Caption = #1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1576#1585' '#1585#1608#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1610#1606' '#1601#1585#1605' '#1589#1575#1583#1585' '#1588#1608#1583'.'#8207
                DataField = 'MakeDoc'
                DataSource = srcReciptTypes
                TabOrder = 0
                ValueChecked = '1'
                ValueUnchecked = '2'
                WordWrap = True
              end
              object CmbAccountKind4Deficits: TDBComboBox
                Left = 242
                Top = 44
                Width = 300
                Height = 21
                DataField = 'AccountKind4Deficits'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1606#1583#1575#1585#1583
                  #1576#1607' '#1576#1600#1583#1607#1600#1603#1600#1575#1585' '#1575#1579#1585' '#1583#1575#1583#1607' '#1588#1608#1583
                  #1576#1607' '#1576#1587#1578#1575#1606#1603#1575#1585' '#1575#1579#1585' '#1583#1575#1583#1607' '#1588#1608#1583
                  #1576#1585#1575#1587#1575#1587' '#1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1603#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578)
                TabOrder = 1
              end
              object CmbAccCodingShow: TDBComboBox
                Left = 242
                Top = 74
                Width = 300
                Height = 21
                DataField = 'AccCodingShow'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1606#1583#1575#1585#1583
                  #1606#1605#1575#1610#1588' '#1588#1608#1583
                  #1606#1605#1575#1610#1588' '#1608' '#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1605#1588#1578#1585#1610' 1 '#1583#1585' Master'
                  #1606#1605#1575#1610#1588' '#1608' '#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1603#1583#1605#1581#1604' '#1605#1589#1585#1601' '#1583#1585' Master'
                  #1606#1605#1575#1610#1588' '#1608' '#1575#1608#1604#1608#1610#1578' '#1606#1587#1576#1578' '#1576#1607' '#1578#1606#1592#1610#1605#1575#1578' '#1576#1583#1607#1603#1575#1585
                  #1606#1605#1575#1610#1588' '#1608' '#1575#1608#1604#1608#1610#1578' '#1606#1587#1576#1578' '#1576#1607' '#1578#1606#1592#1610#1605#1575#1578' '#1576#1587#1578#1575#1606#1603#1575#1585)
                TabOrder = 2
              end
              object edtDocTypeCode: TDBEdit
                Left = 408
                Top = 104
                Width = 134
                Height = 21
                DataField = 'DocTypeCode'
                DataSource = srcReciptTypes
                TabOrder = 3
              end
              object grpAcc: TGroupBox
                Left = 40
                Top = 16
                Width = 160
                Height = 153
                Align = alCustom
                Caption = '  '#1603#1583#1607#1575#1610' '#1581#1587#1575#1576' '#1601#1593#1575#1604'  '
                TabOrder = 4
                object dbchkTopicCode: TDBCheckBox
                  AlignWithMargins = True
                  Left = 5
                  Top = 18
                  Width = 150
                  Height = 18
                  Align = alTop
                  BiDiMode = bdRightToLeft
                  Caption = #1581#1587#1575#1576
                  DataField = 'TopicCodeActive'
                  DataSource = srcReciptTypes
                  ParentBiDiMode = False
                  TabOrder = 0
                  ValueChecked = '1'
                  ValueUnchecked = '0'
                  WordWrap = True
                end
                object dbchk1: TDBCheckBox
                  AlignWithMargins = True
                  Left = 5
                  Top = 42
                  Width = 150
                  Height = 18
                  Align = alTop
                  BiDiMode = bdRightToLeft
                  Caption = #1578#1601#1589#1610#1604#1610
                  DataField = 'DetailCodeActive'
                  DataSource = srcReciptTypes
                  ParentBiDiMode = False
                  TabOrder = 1
                  ValueChecked = '1'
                  ValueUnchecked = '0'
                end
                object dbchk2: TDBCheckBox
                  AlignWithMargins = True
                  Left = 5
                  Top = 66
                  Width = 150
                  Height = 18
                  Align = alTop
                  BiDiMode = bdRightToLeft
                  Caption = #1578#1601#1589#1610#1604#1610'2'
                  DataField = 'CTopicCode1Active'
                  DataSource = srcReciptTypes
                  ParentBiDiMode = False
                  TabOrder = 2
                  ValueChecked = '1'
                  ValueUnchecked = '0'
                end
                object dbchk3: TDBCheckBox
                  AlignWithMargins = True
                  Left = 5
                  Top = 90
                  Width = 150
                  Height = 18
                  Align = alTop
                  BiDiMode = bdRightToLeft
                  Caption = #1578#1601#1589#1610#1604#1610'3'
                  DataField = 'CTopicCode2Active'
                  DataSource = srcReciptTypes
                  ParentBiDiMode = False
                  TabOrder = 3
                  ValueChecked = '1'
                  ValueUnchecked = '0'
                end
                object dbchkCTopicCode3Active: TDBCheckBox
                  AlignWithMargins = True
                  Left = 5
                  Top = 114
                  Width = 150
                  Height = 18
                  Align = alTop
                  BiDiMode = bdRightToLeft
                  Caption = #1578#1601#1589#1610#1604#1610'4'
                  DataField = 'CTopicCode3Active'
                  DataSource = srcReciptTypes
                  ParentBiDiMode = False
                  TabOrder = 4
                  ValueChecked = '1'
                  ValueUnchecked = '0'
                end
              end
              object dbchkAmountInAccountForm: TDBCheckBox
                Left = 566
                Top = 189
                Width = 247
                Height = 19
                Anchors = [akTop, akRight]
                Caption = #1570#1740#1575' '#1605#1576#1604#1594' '#1601#1585#1605' '#1583#1585' '#1581#1587#1575#1576' '#1605#1588#1578#1585#1740' '#1711#1585#1583#1588' '#1583#1575#1583#1607' '#1588#1608#1583' .'
                DataField = 'AmountInAccountForm'
                DataSource = srcReciptTypes
                TabOrder = 5
                ValueChecked = '1'
                ValueUnchecked = '0'
                WordWrap = True
              end
              object cmbFormStateDefault4Doc: TDBComboBox
                Left = 363
                Top = 135
                Width = 179
                Height = 21
                DataField = 'FormStateDefault4Doc'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1607#1605#1607' '#1608#1590#1593#1740#1578' '#1607#1575' '#1575#1606#1580#1575#1605' '#1588#1608#1583
                  #1602#1591#1593#1610
                  #1583#1575#1574#1605
                  #1576#1575#1591#1604#1607
                  #1585#1586#1585#1608
                  #1662#1740#1588' '#1606#1608#1740#1587)
                TabOrder = 6
              end
              object edtReciptStateSmallerThan: TDBEdit
                Left = 363
                Top = 162
                Width = 179
                Height = 21
                DataField = 'ReciptStateSmallerThan'
                DataSource = srcReciptTypes
                TabOrder = 7
              end
            end
          end
        end
        object ts4: TTabSheet
          Caption = #1575#1589#1591#1604#1575#1581#1575#1578' '
          ImageIndex = 1
          object lstOtherFieldCaptions: TValueListEditor
            Left = 0
            Top = 177
            Width = 1059
            Height = 273
            Align = alClient
            KeyOptions = [keyEdit, keyAdd, keyDelete, keyUnique]
            TabOrder = 0
            TitleCaptions.Strings = (
              #1606#1575#1605' '#1601#1740#1604#1583
              #1593#1606#1608#1575#1606)
            OnEnter = lstOtherFieldCaptionsEnter
            ColWidths = (
              150
              903)
            RowHeights = (
              18
              18)
          end
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 1059
            Height = 177
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              1059
              177)
            object lblSection2Caption: TLabel
              Left = 946
              Top = 8
              Width = 133
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578#1610
              FocusControl = edtSection2Caption
              ExplicitLeft = 597
            end
            object lbl3: TLabel
              Left = 949
              Top = 39
              Width = 117
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575
              FocusControl = dbedtControlCodeCaption
              ExplicitLeft = 600
            end
            object lblExpireDateCaption: TLabel
              Left = 949
              Top = 100
              Width = 74
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1593#1606#1608#1575#1606' '#1576#1585#1575#1610' '#1578#1575#1585#1610#1582
              FocusControl = edtExpireDateCaption
              ExplicitLeft = 600
            end
            object lbl4: TLabel
              Left = 450
              Top = 39
              Width = 124
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              BiDiMode = bdRightToLeft
              Caption = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1605#1603#1610
              ParentBiDiMode = False
              ExplicitLeft = 195
            end
            object lbl5: TLabel
              Left = 452
              Top = 100
              Width = 91
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              BiDiMode = bdRightToLeft
              Caption = #1593#1606#1608#1575#1606' '#1588#1605#1575#1585#1607' '#1603#1605#1603#1610
              ParentBiDiMode = False
              ExplicitLeft = 197
            end
            object lbl6: TLabel
              Left = 450
              Top = 8
              Width = 92
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1593#1606#1608#1575#1606#8207#1608#1586#1606#8207#1583#1585#1582#1608#1575#1587#1578#1610
              FocusControl = dbedtSection2CaptionWeight
              ExplicitLeft = 195
            end
            object lbl7: TLabel
              Left = 450
              Top = 69
              Width = 122
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1705#1604#1605#1607' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
              ExplicitLeft = 195
            end
            object Label149: TLabel
              Left = 453
              Top = 127
              Width = 187
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              BiDiMode = bdRightToLeft
              Caption = #1593#1606#1608#1575#1606' '#1576#1580#1575#1740' '#1607#1586#1740#1606#1607' '#1575#1606#1576#1575#1585#1583#1575#1585#1740' '#1605#1581#1575#1587#1576#1607' '#1588#1608#1583
              ParentBiDiMode = False
              ExplicitLeft = 198
            end
            object Label155: TLabel
              Left = 949
              Top = 127
              Width = 150
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1588#1605#1575#1585#1607' '#1605#1575#1588#1610#1606'(Item)'
              FocusControl = edtMachineNoCaption
              ExplicitLeft = 694
            end
            object Label156: TLabel
              Left = 949
              Top = 154
              Width = 126
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1606#1575#1605' '#1585#1575#1606#1606#1583#1607'(Item)'
              FocusControl = edtMachineNameCaption
              ExplicitLeft = 694
            end
            object Label159: TLabel
              Left = 0
              Top = 164
              Width = 1059
              Height = 13
              Align = alBottom
              Alignment = taCenter
              Caption = #1578#1594#1740#1740#1585' '#1606#1575#1605' '#1593#1606#1608#1575#1606' '#1607#1575#1740' Grid'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 113
            end
            object edtSection2Caption: TDBEdit
              Left = 816
              Top = 4
              Width = 126
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'Section2Caption'
              DataSource = srcReciptTypes
              TabOrder = 0
            end
            object dbedtControlCodeCaption: TDBEdit
              Left = 816
              Top = 35
              Width = 126
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'ControlCodeCaption'
              DataSource = srcReciptTypes
              TabOrder = 1
            end
            object edtExpireDateCaption: TDBEdit
              Left = 816
              Top = 96
              Width = 126
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'ExpireDateCaption'
              DataSource = srcReciptTypes
              TabOrder = 2
            end
            object dbedtAidInfoCaption: TDBEdit
              Left = 317
              Top = 35
              Width = 126
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'AidInfoCaption'
              DataSource = srcReciptTypes
              TabOrder = 3
            end
            object dbedtAidInfoCaptionNo: TDBEdit
              Left = 317
              Top = 96
              Width = 126
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'AidInfoCaptionNo'
              DataSource = srcReciptTypes
              TabOrder = 4
            end
            object dbedtSection2CaptionWeight: TDBEdit
              Left = 318
              Top = 4
              Width = 126
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'Section2CaptionWeight'
              DataSource = srcReciptTypes
              TabOrder = 5
            end
            object dbedtStandardCaption: TDBEdit
              Left = 317
              Top = 65
              Width = 126
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'StandardCaption'
              DataSource = srcReciptTypes
              TabOrder = 6
            end
            object edtCalcCostStorageCaption: TDBEdit
              Left = 318
              Top = 123
              Width = 126
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'CalcCostStorageCaption'
              DataSource = srcReciptTypes
              TabOrder = 7
            end
            object edtMachineNoCaption: TDBEdit
              Left = 816
              Top = 123
              Width = 126
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'MachineNoCaption'
              DataSource = srcReciptTypes
              TabOrder = 8
            end
            object edtMachineNameCaption: TDBEdit
              Left = 816
              Top = 150
              Width = 126
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'MachineNameCaption'
              DataSource = srcReciptTypes
              TabOrder = 9
            end
            object GroupBox24: TGroupBox
              Left = 0
              Top = 0
              Width = 305
              Height = 164
              Align = alLeft
              Caption = #1593#1606#1608#1575#1606' '#1604#1740#1576#1604' '#1607#1575#1740' '#1605#1587#1578#1585' '#1588#1576#1740#1607'  IniLang_\CUSTOM.ini'
              TabOrder = 10
              object lstLabelCaptions: TValueListEditor
                Left = 2
                Top = 15
                Width = 301
                Height = 147
                Align = alClient
                KeyOptions = [keyEdit, keyAdd, keyDelete, keyUnique]
                TabOrder = 0
                TitleCaptions.Strings = (
                  #1606#1575#1605' '#1604#1740#1576#1604
                  #1593#1606#1608#1575#1606)
                OnEnter = lstOtherFieldCaptionsEnter
                ColWidths = (
                  150
                  145)
                RowHeights = (
                  18
                  18)
              end
            end
          end
        end
        object TabSheet34: TTabSheet
          Caption = #1605#1581#1604' '#1607#1575#1610' '#1605#1589#1585#1601
          ImageIndex = 3
          DesignSize = (
            1059
            450)
          object Label14: TLabel
            Left = 716
            Top = 23
            Width = 132
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1605#1581#1604' '#1575#1587#1578#1601#1575#1583#1607' '#1603#1583' '#1605#1581#1604' '#1605#1589#1585#1601
            ExplicitLeft = 435
          end
          object Label106: TLabel
            Left = 716
            Top = 127
            Width = 181
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1605#1581#1604' '#1575#1587#1578#1601#1575#1583#1607' '#1603#1583' '#1587#1575#1610#1585' '#1605#1581#1604' '#1607#1575#1610' '#1605#1589#1585#1601
            ExplicitLeft = 728
          end
          object lblUseUnitCase: TLabel
            Left = 716
            Top = 71
            Width = 139
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1593#1606#1608#1575#1606' '#1576#1585#1575#1610' '#1603#1583' '#1605#1581#1604' '#1605#1589#1585#1601' '#1603#1575#1604#1575
            FocusControl = dbedtUseUnitCaseCaption
            ExplicitLeft = 728
          end
          object lbl19: TLabel
            Left = 716
            Top = 175
            Width = 164
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1593#1606#1608#1575#1606' '#1576#1585#1575#1610' '#1603#1583' '#1587#1575#1740#1585' '#1605#1581#1604' '#1605#1589#1585#1601' '#1603#1575#1604#1575
            FocusControl = dbedtUseOtherCaption
            ExplicitLeft = 728
          end
          object cmbUseUnitCase: TDBComboBox
            Left = 460
            Top = 19
            Width = 253
            Height = 21
            Anchors = [akTop, akRight]
            Color = clWhite
            DataField = 'UseUnitCase'
            DataSource = srcReciptTypes
            Items.Strings = (
              #1607#1610#1670#1603#1583#1575#1605
              'Master'
              'Detail'
              #1607#1585#1583#1608)
            TabOrder = 0
            OnEnter = cmbEffectTypeEnter
          end
          object CmbUseOtherActive: TDBComboBox
            Left = 460
            Top = 123
            Width = 253
            Height = 21
            Anchors = [akTop, akRight]
            Color = clWhite
            DataField = 'UseOtherActive'
            DataSource = srcReciptTypes
            Items.Strings = (
              #1606#1583#1575#1585#1583
              'Master'
              'Detail'
              #1607#1585#1583#1608)
            TabOrder = 1
            OnEnter = cmbEffectTypeEnter
          end
          object dbedtUseUnitCaseCaption: TDBEdit
            Left = 460
            Top = 67
            Width = 253
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'UseUnitCaseCaption'
            DataSource = srcReciptTypes
            TabOrder = 2
          end
          object dbedtUseOtherCaption: TDBEdit
            Left = 460
            Top = 171
            Width = 253
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'UseOtherCaption'
            DataSource = srcReciptTypes
            TabOrder = 3
          end
          object dbchkStereotypyActive: TDBCheckBox
            Left = 568
            Top = 216
            Width = 145
            Height = 17
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1705#1604#1740#1588#1607' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
            DataField = 'StereotypyActive'
            DataSource = srcReciptTypes
            TabOrder = 4
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object TabSheet3: TTabSheet
          Caption = #1670#1575#1662
          ImageIndex = 2
          DesignSize = (
            1059
            450)
          object Label3: TLabel
            Left = 313
            Top = 157
            Width = 143
            Height = 26
            Alignment = taRightJustify
            Caption = #1593#1606#1575#1608#1610#1606' '#1576#1585#1575#1610' '#1605#1581#1604' '#1575#1605#1590#1575#1569'('#1578#1607' '#1601#1585#1605')'#13#10#1705#1583' '#1705#1575#1604#1575#1607#1575#1740' '#1582#1575#1589' '#1583#1585' '#1578#1608#1586#1740#1606
            WordWrap = True
          end
          object Label4: TLabel
            Left = 963
            Top = 27
            Width = 44
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1606#1575#1605' '#1670#1575#1662' 1'
            FocusControl = edtPerformFileName
            ExplicitLeft = 975
          end
          object Label10: TLabel
            Left = 963
            Top = 54
            Width = 44
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1606#1575#1605' '#1670#1575#1662' 2'
            FocusControl = edtReportFileName
            ExplicitLeft = 975
          end
          object Label11: TLabel
            Left = 313
            Top = 110
            Width = 75
            Height = 13
            Alignment = taRightJustify
            Caption = #1605#1578#1606' '#1662#1575#1610#1610#1606' '#1711#1586#1575#1585#1588
            WordWrap = True
          end
          object Label12: TLabel
            Left = 963
            Top = 110
            Width = 77
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1605#1578#1606' '#1576#1575#1604#1575#1610' '#1711#1586#1575#1585#1588
            ExplicitLeft = 975
          end
          object SpeedButton4: TSpeedButton
            Left = 657
            Top = 22
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton4Click
            ExplicitLeft = 669
          end
          object SpeedButton5: TSpeedButton
            Left = 657
            Top = 49
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton5Click
            ExplicitLeft = 669
          end
          object Label15: TLabel
            Left = 185
            Top = 82
            Width = 79
            Height = 13
            Caption = #1578#1593#1583#1575#1583' '#1606#1587#1582#1607' '#1670#1575#1662' '
          end
          object Label88: TLabel
            Left = 316
            Top = 27
            Width = 54
            Height = 13
            Caption = #1593#1606#1608#1575#1606' '#1670#1575#1662'1'
            FocusControl = edtPerformFileName
          end
          object Label90: TLabel
            Left = 316
            Top = 54
            Width = 54
            Height = 13
            Caption = #1593#1606#1608#1575#1606' '#1670#1575#1662'2'
            FocusControl = edtReportFileName
          end
          object Label110: TLabel
            Left = 963
            Top = 82
            Width = 47
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1587#1575#1610#1585' '#1670#1575#1662#1607#1575
            FocusControl = edtOtherRptFiles
            ExplicitLeft = 975
          end
          object btnOtherRptFiles: TSpeedButton
            Left = 657
            Top = 77
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = btnOtherRptFilesClick
            ExplicitLeft = 669
          end
          object Label19: TLabel
            Left = 965
            Top = 157
            Width = 40
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1608#1590#1610#1581#1575#1578
            ExplicitLeft = 977
          end
          object Label175: TLabel
            Left = 0
            Top = 0
            Width = 1059
            Height = 13
            Align = alTop
            Caption = #1670#1575#1662' '#1587#1591#1585#1607#1575#1740' '#1575#1606#1578#1582#1575#1576#1740' '#1601#1602#1591' '#1585#1608#1740' '#1587#1575#1740#1585' '#1670#1575#1662#1607#1575' '#1705#1575#1585' '#1605#1740' '#1705#1606#1583
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 808
            ExplicitWidth = 251
          end
          object edtPerformFileName: TDBEdit
            Left = 681
            Top = 23
            Width = 279
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'PerformFileName'
            DataSource = srcReciptTypes
            TabOrder = 0
          end
          object edtReportFileName: TDBEdit
            Left = 681
            Top = 50
            Width = 279
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ReportFileName'
            DataSource = srcReciptTypes
            TabOrder = 1
          end
          object dbmmoFormFooter: TDBMemo
            Left = 4
            Top = 107
            Width = 306
            Height = 34
            DataField = 'FormFooter'
            DataSource = srcReciptTypes
            TabOrder = 3
          end
          object dbmmoFormHeader: TDBMemo
            Left = 657
            Top = 107
            Width = 303
            Height = 34
            Anchors = [akTop, akRight]
            DataField = 'FormHeader'
            DataSource = srcReciptTypes
            TabOrder = 2
          end
          object dbmmoFormSignature: TDBMemo
            Tag = 111
            Left = 4
            Top = 155
            Width = 306
            Height = 49
            DataField = 'FormSignature'
            DataSource = srcReciptTypes
            ScrollBars = ssVertical
            TabOrder = 4
          end
          object edtPrintCount: TDBEdit
            Left = 268
            Top = 78
            Width = 42
            Height = 21
            DataField = 'PrintCount'
            DataSource = srcReciptTypes
            TabOrder = 5
          end
          object edtReportFileCaption1: TDBEdit
            Left = 142
            Top = 23
            Width = 168
            Height = 21
            DataField = 'ReportFileCaption1'
            DataSource = srcReciptTypes
            TabOrder = 6
          end
          object edtReportFileCaption2: TDBEdit
            Left = 142
            Top = 50
            Width = 168
            Height = 21
            DataField = 'ReportFileCaption2'
            DataSource = srcReciptTypes
            TabOrder = 7
          end
          object edtOtherRptFiles: TDBEdit
            Left = 681
            Top = 78
            Width = 279
            Height = 19
            Anchors = [akTop, akRight]
            Ctl3D = False
            DataField = 'OtherRptFiles'
            DataSource = srcReciptTypes
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 8
          end
          object dbmmoReciptDescription: TDBMemo
            Tag = 111
            Left = 657
            Top = 158
            Width = 303
            Height = 49
            Anchors = [akTop, akRight]
            DataField = 'ReciptDescription'
            DataSource = srcReciptTypes
            TabOrder = 9
          end
          object dbchkChekingPrintEntity: TDBCheckBox
            Left = 774
            Top = 213
            Width = 189
            Height = 17
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = #1575#1591#1604#1575#1593#1575#1578' '#1576#1575' '#1605#1602#1583#1575#1585' '#1589#1601#1585' '#1670#1575#1662' '#1606#1588#1608#1606#1583'.'#8207
            DataField = 'ChekingPrintEntity'
            DataSource = srcReciptTypes
            TabOrder = 10
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object grpDay4Edit: TGroupBox
            Left = 0
            Top = 403
            Width = 1059
            Height = 47
            Align = alBottom
            Caption = '   '#1603#1606#1578#1585#1604' '#1576#1585' '#1575#1587#1575#1587' '#1578#1575#1585#1610#1582'  '
            TabOrder = 11
            object Label170: TLabel
              AlignWithMargins = True
              Left = 894
              Top = 18
              Width = 160
              Height = 24
              Align = alRight
              Caption = '  '#1578#1593#1583#1575#1583' '#1585#1608#1586' '#1605#1607#1604#1578' '#1576#1585#1575#1610' '#1608#1610#1585#1575#1610#1588' '#1601#1585#1605'  '
              ExplicitHeight = 13
            end
            object edtDay4Edit1: TDBEdit
              AlignWithMargins = True
              Left = 806
              Top = 18
              Width = 82
              Height = 24
              Align = alRight
              DataField = 'Day4Edit'
              DataSource = srcReciptTypes
              TabOrder = 0
              ExplicitHeight = 21
            end
          end
        end
        object TabSheet41: TTabSheet
          Caption = #1601#1585#1575#1582#1608#1575#1606#1610
          ImageIndex = 9
          object PageControl3: TPageControl
            Left = 0
            Top = 0
            Width = 1059
            Height = 450
            ActivePage = TabSheet16
            Align = alClient
            TabOrder = 0
            object TabSheet16: TTabSheet
              Caption = #1578#1606#1592#1740#1605#1575#1578' '#1601#1585#1575#1582#1608#1575#1606#1740
              DesignSize = (
                1051
                422)
              object Label140: TLabel
                Left = 904
                Top = 205
                Width = 101
                Height = 13
                Anchors = [akTop, akRight]
                AutoSize = False
                Caption = #1608#1590#1593#1740#1578' '#1602#1575#1576#1604' '#1601#1585#1575#1582#1608#1575#1606#1610
                WordWrap = True
                ExplicitLeft = 717
              end
              object Label148: TLabel
                Left = 909
                Top = 229
                Width = 120
                Height = 13
                Anchors = [akTop, akRight]
                Caption = 'Find Parent Recipt In List'
                ExplicitLeft = 722
              end
              object Label16: TLabel
                Left = 904
                Top = 75
                Width = 61
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1575#1605#1603#1575#1606' '#1608#1610#1585#1575#1610#1588
                ExplicitLeft = 725
              end
              object Label8: TLabel
                Left = 904
                Top = 5
                Width = 105
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1606#1581#1608#1607' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1591#1604#1575#1593#1575#1578
                ExplicitLeft = 725
              end
              object Label80: TLabel
                Left = 904
                Top = 51
                Width = 114
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1579#1576#1578' '#1578#1575#1585#1610#1582' '#1608' '#1588#1605#1575#1585#1607' '#1603#1605#1603#1610
                ExplicitLeft = 725
              end
              object Label82: TLabel
                Left = 904
                Top = 124
                Width = 125
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1580#1605#1593' '#1603#1575#1604#1575#1607#1575#1610' '#1578#1603#1585#1575#1585#1610' '#1583#1585' '#1601#1585#1605
                ExplicitLeft = 717
              end
              object Label9: TLabel
                Left = 904
                Top = 28
                Width = 99
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1603#1583#1607#1575#1610' '#1602#1575#1576#1604' '#1601#1585#1575#1582#1608#1575#1606#1610
                ExplicitLeft = 725
              end
              object lblTozinActive: TLabel
                Left = 904
                Top = 99
                Width = 71
                Height = 13
                Anchors = [akTop, akRight]
                Caption = ' '#1601#1585#1575#1582#1608#1575#1606#1610' COM'
                ExplicitLeft = 725
              end
              object SpeedButton3: TSpeedButton
                Left = 482
                Top = 24
                Width = 23
                Height = 21
                Hint = 'RecallReciptTypes'
                Anchors = [akTop, akRight]
                Caption = '...'
                OnClick = SpeedButton3Click
                ExplicitLeft = 303
              end
              object SpeedButton6: TSpeedButton
                Left = 482
                Top = 225
                Width = 23
                Height = 21
                Hint = 'FindParentReciptID'
                Anchors = [akTop, akRight]
                Caption = '...'
                OnClick = SpeedButton3Click
                ExplicitLeft = 295
              end
              object Label42: TLabel
                Left = 904
                Top = 256
                Width = 125
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1581#1583#1575#1705#1579#1585' '#1605#1602#1583#1575#1585' '#1602#1575#1576#1604' '#1601#1585#1575#1582#1608#1575#1606#1740
                ExplicitLeft = 736
              end
              object Label169: TLabel
                Left = 903
                Top = 283
                Width = 101
                Height = 13
                Anchors = [akTop, akRight]
                AutoSize = False
                Caption = #1605#1602#1583#1575#1585' '#1605#1588#1578#1585#1740' Detail '#1575#1586
                WordWrap = True
                ExplicitLeft = 828
              end
              object chklstRecallTypeOption: TCheckListBox
                Left = 0
                Top = 0
                Width = 408
                Height = 358
                Align = alLeft
                Color = clInactiveCaption
                ItemHeight = 13
                Items.Strings = (
                  '00 '#1606#1605#1575#1740#1588' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1576#1607' '#1578#1601#1705#1740#1705' '#1601#1585#1605'(Master/Detail)'
                  '01'#1601#1585#1575' '#1582#1608#1575#1606#1610' '#1576#1575' '#1578#1608#1590#1610#1581#1575#1578
                  '02'#1601#1585#1575' '#1582#1608#1575#1606#1610' '#1576#1575' '#1576#1607#1575#1740' '#1705#1604'('#1601#1740' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1578#1580#1605#1740#1593')'
                  #1601#1585#1575#1582#1608#1575#1606#1740' '#1605#1575#1604#1740#1575#1578' '#1575#1586' '#1601#1585#1605' '#1602#1576#1604#1740' '#1575#1606#1580#1575#1605' '#1588#1608#1583
                  #1601#1585#1575#1582#1608#1575#1606#1740' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1601#1585#1605'  Master'
                  #1601#1585#1605#1607#1575#1740' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1588#1583#1607' '#1575#1605#1705#1575#1606' '#1705#1606#1578#1585#1604' '#1605#1608#1580#1608#1583#1740' '#1583#1575#1588#1578#1607' '#1576#1575#1588#1606#1583
                  #1605#1608#1580#1608#1583#1740' '#1605#1606#1601#1740' '#1606#1740#1586' '#1583#1586' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1606#1605#1575#1740#1588' '#1588#1608#1583
                  #1608#1586#1606' '#1575#1606#1578#1602#1575#1604' '#1583#1575#1583' '#1606#1588#1608#1583'('#1605#1602#1583#1575#1585' '#1575#1593#1604#1575#1605#1740#1607')'
                  #1586#1605#1575#1606' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1740#1705' '#1576#1607' '#1740#1705' '#1588#1605#1575#1585#1607' '#1601#1585#1605' '#1606#1740#1586' '#1575#1606#1578#1602#1575#1604' '#1740#1575#1576#1583' '
                  '(5_'#1601#1585#1575#1582#1608#1575#1606#1610' '#1608#1610#1688#1607' '#1593#1605#1608#1605#1610')'#1588#1585#1591' '#1582#1575#1589
                  #1662#1585' '#1588#1583#1606' '#1605#1588#1578#1585#1740'  Detail '#1583#1585' '#1605#1588#1578#1585#1740' 2 Master'
                  
                    '11'#1601#1585#1575#1582#1608#1575#1606#1740' '#1575#1586' '#1570#1582#1585#1740#1606' '#1711#1585#1583#1588' '#1601#1602#1591' '#1575#1605#1705#1575#1606' '#1662#1584#1740#1585' '#1576#1575#1588#1583'.( '#1705#1575#1607#1588' '#1587#1585#1593#1578' '#1601#1585#1575#1582#1608#1575#1606 +
                    #1740' )'
                  #1601#1585#1575#1582#1608#1575#1606#1740' '#1740#1705' '#1576#1607' '#1740#1705' '#1576#1583#1608#1606' '#1583#1585' '#1606#1592#1585' '#1711#1585#1601#1578#1606' ParentReciptID'
                  
                    #1576#1593#1583' '#1575#1586' '#1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '#1601#1585#1605' '#1575#1608#1604#1740#1607' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1740#1705' '#1576#1607' '#1740#1705' '#1585#1586#1585#1608' '#1608' '#1576#1593#1583' '#1575#1586' '#1581 +
                    #1584#1601' '#1602#1591#1593#1740' '#1588#1608#1583'.'
                  #1586#1605#1575#1606' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1705#1585#1575#1740#1607' '#1581#1605#1604' '#1583#1585' '#1607#1740#1670' '#1589#1608#1585#1578#1740' '#1575#1606#1578#1602#1575#1604' '#1583#1575#1583#1607' '#1606#1600#1600#1588#1608#1583'.'
                  #1605#1591#1575#1576#1602#1578' '#1601#1585#1605' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1576#1575' '#1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575' '#1575#1586' Excel '#1575#1606#1580#1575#1605' '#1588#1608#1583
                  #1583#1585' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1605#1575#1606#1583#1607' '#1589#1601#1585' '#1608' '#1605#1606#1601#1740' '#1607#1605' '#1606#1605#1575#1740#1588' '#1588#1608#1583
                  #1606#1605#1575#1740#1588' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1588#1583#1607' '#1575#1586'/'#1576#1575' '#1583#1585' '#1604#1740#1587#1578' '
                  #1608#1740#1585#1575#1740#1588' '#1605#1588#1578#1585#1740' 1 '#1576#1593#1583' '#1575#1586' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1575#1605#1705#1575#1606' '#1662#1584#1740#1585' '#1606#1576#1575#1588#1583
                  #1583#1585' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1740#1705' '#1576#1607' '#1740#1705' '#1575#1605#1705#1575#1606' '#1575#1606#1578#1582#1575#1576' '#1570#1740#1578#1605' '#1607#1575' '#1608#1580#1608#1583' '#1606#1583#1575#1588#1578#1607' '#1576#1575#1588#1583
                  
                    '20-'#1575#1605#1705#1575#1606' '#1581#1584#1601' '#1570#1740#1578#1605' '#1607#1575#1740#1740' '#1705#1607' ('#1601#1585#1575#1582#1608#1575#1606#1740' '#1588#1583#1607' '#1575#1586'/'#1576#1575') '#1606#1583#1575#1585#1606#1583' '#1608#1580#1608#1583' '#1583#1575#1588#1578#1607 +
                    ' '#1576#1575#1588#1583
                  
                    #1583#1585' '#1601#1585#1605' '#1601#1585#1575#1582#1608#1575#1606' '#1588#1583#1607' '#1575#1580#1575#1586#1607' '#1608#1740#1585#1575#1740#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1548' '#1606#1576#1575#1740#1583' '#1605#1602#1583#1575#1585' '#1585#1575' '#1576#1586#1585#1711#1578#1585' ' +
                    #1575#1586' '#1605#1602#1583#1575#1585' '#1575#1608#1604#1740#1607' '#1579#1576#1578' '#1705#1606#1583
                  #1583#1585#1601#1585#1575#1582#1608#1575#1606#1740' '#1740#1705' '#1576#1607' '#1740#1705' '#1601#1740' '#1575#1586' '#1575#1593#1604#1575#1605#1740#1607' '#1602#1740#1605#1578' '#1582#1608#1575#1606#1583#1607' '#1588#1608#1583
                  #1583#1585#1601#1585#1575#1582#1608#1575#1606#1740' '#1740#1705' '#1576#1607' '#1740#1705' '#1575#1606#1578#1602#1575#1604' '#1576#1575' '#1605#1576#1604#1594' '#1602#1575#1576#1604' '#1578#1594#1740#1740#1585' '#1606#1576#1575#1588#1583
                  #1601#1585#1575#1582#1608#1575#1606#1740' '#1608#1740#1688#1607' '#1576#1585#1575#1740' '#1607#1585' '#1601#1585#1605' '#1578#1575#1740#1662' '#1605#1580#1586#1575' '#1583#1585' '#1606#1592#1585' '#1711#1585#1601#1578#1607' '#1588#1608#1583
                  #1608#1740#1585#1575#1740#1588' '#1578#1601#1589#1740#1604#1740'2 '#1576#1593#1583' '#1575#1586' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1575#1605#1705#1575#1606' '#1662#1584#1740#1585' '#1606#1576#1575#1588#1583
                  
                    #1583#1585' '#1605#1581#1583#1608#1583#1607' '#1601#1585#1605' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1585#1608#1740' '#1580#1587#1578#1580#1608#1740' '#1705#1583' '#1705#1575#1604#1575' '#1605#1608#1580#1608#1583#1740' '#1705#1575#1604#1575' '#1607#1605' '#1606#1605#1575#1740#1588' '#1588 +
                    #1608#1583
                  #1578#1575#1585#1740#1582' '#1580#1575#1606#1576#1740' '#1608' '#1605#1583#1578' '#1575#1586' '#1601#1585#1605' '#1605#1587#1578#1585' '#1601#1585#1605' '#1575#1589#1604#1740' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1588#1608#1583
                  #1605#1602#1583#1575#1585' '#1608' '#1608#1586#1606' '#1583#1585' '#1586#1605#1575#1606' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1608#1575#1585#1583' '#1606#1588#1608#1583' '#1578#1575' '#1705#1575#1585#1576#1585' '#1582#1608#1583#1588' '#1608#1575#1585#1583' '#1705#1606#1583
                  '29-  12- '#1601#1585#1575#1582#1608#1575#1606#1610' '#1587#1601#1575#1585#1588#1575#1578'-'#1603#1606#1578#1585#1604' '#1605#1608#1580#1608#1583#1610' '#1705#1583' '#1705#1575#1604#1575#1740' '#1578#1705#1585#1575#1585#1740' '#1576#1662#1584#1740#1585#1583' ')
                TabOrder = 0
                OnClick = chklstRecallTypeOptionClick
              end
              object cmbInsertAidOnRecall: TDBComboBox
                Left = 483
                Top = 47
                Width = 416
                Height = 21
                Anchors = [akTop, akRight]
                Color = clWhite
                DataField = 'InsertAidOnRecall'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1606#1583#1575#1585#1583
                  
                    #1583#1585' '#1586#1605#1575#1606' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1578#1575#1585#1610#1582' '#1608' '#1588#1605#1575#1585#1607' '#1603#1605#1603#1610' '#1575#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1578#1575#1585#1610#1582' '#1608' '#1588#1605#1575#1585#1607' '#1601#1585#1605 +
                    ' '#1575#1589#1604#1610' '#1662#1585' '#1588#1608#1583
                  #1583#1585' '#1586#1605#1575#1606' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1578#1575#1585#1610#1582' '#1608' '#1588#1605#1575#1585#1607' '#1603#1605#1603#1610' '#1575#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1576#1604#1610' '#1662#1585' '#1588#1608#1583
                  
                    #1583#1585' '#1586#1605#1575#1606' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1578#1575#1585#1610#1582' '#1608' '#1588#1605#1575#1585#1607' '#1603#1605#1603#1610' '#1575#1740#1578#1605' '#1575#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1578#1575#1585#1610#1582' '#1608' '#1588#1605#1575#1585 +
                    #1607' '#1601#1585#1605' '#1605#1587#1578#1585' '#1662#1585' '#1588#1608#1583)
                TabOrder = 1
                OnEnter = cmbEffectTypeEnter
              end
              object cmbRecallEditKind: TDBComboBox
                Left = 483
                Top = 71
                Width = 416
                Height = 21
                Anchors = [akTop, akRight]
                Color = clWhite
                DataField = 'RecallEditKind'
                DataSource = srcReciptTypes
                Items.Strings = (
                  '0-'#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588' '#1606#1576#1575#1588#1583
                  '1-'#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588' '#1576#1575#1588#1583
                  '2-'#1601#1602#1591' '#1605#1576#1600#1604#1594' '#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588' '#1576#1575#1588#1583
                  '3-'#1601#1602#1591' '#1605#1602#1583#1575#1585' '#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588' '#1576#1575#1588#1583
                  '4-'#1575#1605#1705#1575#1606' '#1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1580#1583#1740#1583' '#1608#1580#1608#1583' '#1583#1575#1588#1578#1607' '#1576#1575#1588#1583
                  '5-'#1601#1602#1591' '#1605#1602#1583#1575#1585' '#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588' '#1606#1576#1575#1588#1583
                  '6-'#1601#1602#1591' '#1588#1605#1575#1585#1607' '#1601#1585#1605' '#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588' '#1576#1575#1588#1583
                  
                    '7-'#1583#1585#1589#1608#1585#1578' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1575#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1607#1585' '#1585#1583#1740#1601' '#1575#1605#1705#1575#1606' '#1608#1740#1585#1575#1740#1588' '#1570#1606' '#1585#1583#1740#1601' '#1608#1580#1608#1583' '#1606 +
                    #1583#1575#1588#1578#1607' '#1576#1575#1588#1583
                  '8-'#1605#1608#1585#1583'2,4'#1608'7'
                  '9-'#1605#1602#1583#1575#1585' '#1608' '#1605#1576#1604#1594' '#1608' '#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1608' '#1605#1581#1604' '#1605#1589#1585#1601' '#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588' '#1576#1575#1588#1583'.')
                TabOrder = 2
                OnEnter = cmbEffectTypeEnter
              end
              object cmbRecallReciptState1: TDBComboBox
                Left = 483
                Top = 201
                Width = 416
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'RecallReciptState1'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1607#1605#1607' '#1608#1590#1593#1740#1578' '#1607#1575
                  #1601#1602#1591' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1591#1593#1610' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1588#1608#1583'.'#8207
                  #1601#1602#1591' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1575#1574#1605#1740' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1588#1608#1583'.'#8207
                  #1607#1605#1607' '#1608#1590#1593#1740#1578' '#1607#1575' '#1576#1594#1740#1585' '#1575#1586' '#1576#1575#1591#1604#1607' '#1607#1575)
                TabOrder = 3
                OnEnter = cmbEffectTypeEnter
              end
              object cmbRecallType: TDBComboBox
                Left = 483
                Top = 1
                Width = 416
                Height = 21
                Anchors = [akTop, akRight]
                BiDiMode = bdRightToLeft
                Color = clWhite
                DataField = 'RecallType'
                DataSource = srcReciptTypes
                DropDownCount = 16
                Items.Strings = (
                  '0- '#1606#1583#1575#1585#1583
                  '1- '#1601#1585#1575#1582#1608#1575#1606#1610' '#1610#1603' '#1576#1607' '#1610#1603
                  '2- '#1601#1585#1575#1582#1608#1575#1606#1610' '#1608#1610#1688#1607' '#1605#1608#1580#1608#1583#1610
                  '3- '#1601#1585#1575#1582#1608#1575#1606#1610' '#1576#1585' '#1575#1587#1575#1587' '#1575#1591#1604#1575#1593#1575#1578' '#1587#1601#1575#1585#1588#1575#1578' - '#1605#1602#1583#1575#1585' '#1606#1607#1575#1610#1610
                  '4- '#1601#1585#1575#1582#1608#1575#1606#1610' '#1576#1585' '#1575#1587#1575#1587' '#1575#1591#1604#1575#1593#1575#1578' '#1587#1601#1575#1585#1588#1575#1578' - '#1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578
                  '5- '#1601#1585#1575#1582#1608#1575#1606#1610' '#1608#1610#1688#1607' '#1593#1605#1608#1605#1610
                  '6- '#1580#1587#1578#1580#1608#1610' '#1603#1583#1610#1606#1711' '#1603#1575#1604#1575#1610' '#1582#1575#1589
                  '7- '#1601#1585#1575#1582#1608#1575#1606#1610' '#1587#1601#1575#1585#1588#1575#1578
                  '8- '#1601#1585#1575#1582#1608#1575#1606#1610' '#1578#1580#1605#1610#1593#1610
                  '9- '#1601#1585#1575#1582#1608#1575#1606#1610' '#1610#1603' '#1576#1607' '#1610#1603' ('#1578#1594#1610#1610#1585' '#1578#1575#1610#1662' '#1601#1585#1605')'#8207
                  '10- '#1601#1585#1575#1582#1608#1575#1606#1610' '#1608#1610#1688#1607' '#1593#1605#1608#1605#1610'('#1603#1662#1610' '#1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578')'
                  '11- '#1601#1585#1575#1582#1608#1575#1606#1610' '#1608#1610#1688#1607' '#1593#1605#1608#1605#1610'('#1603#1662#1610' '#1578#1601#1575#1608#1578' '#1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578' '#1608' '#1582#1585#1740#1583')'
                  '12- '#1601#1585#1575#1582#1608#1575#1606#1610' '#1587#1601#1575#1585#1588#1575#1578'-'#1603#1606#1578#1585#1604' '#1605#1608#1580#1608#1583#1610
                  '13- '#1601#1585#1575#1582#1608#1575#1606#1610' '#1593#1605#1608#1605#1610' '#1578#1580#1605#1610#1593#1610
                  '14- '#1601#1585#1575#1582#1608#1575#1606#1610' '#1610#1603' '#1576#1607' '#1610#1603' ('#1608' '#1579#1576#1578' '#1593#1575#1583#1610')'#8207
                  '15- '#1601#1585#1575#1582#1608#1575#1606#1610' '#1608#1610#1688#1607' '#1593#1605#1608#1605#1610' -  '#1608#1610#1585#1575#1610#1588' '#1608' '#1603#1606#1578#1585#1604' '#1605#1608#1580#1608#1583#1610' '#1605#1602#1583#1575#1585
                  
                    '16- '#1601#1585#1575#1582#1608#1575#1606#1610' '#1608#1610#1688#1607' '#1593#1605#1608#1605#1610' -  '#1578#1594#1610#1610#1585' '#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1601#1585#1605#1607#1575#1610' '#1602#1576#1604' '#1583#1585#1589#1608#1585#1578' '#1608 +
                    #1610#1585#1575#1610#1588' '#1740#1575' '#1581#1584#1601' '#1601#1585#1605' '
                  '17 - '#1601#1585#1575#1582#1608#1575#1606#1740' '#1740#1705' '#1576#1607' '#1740#1705' '#1576#1575' '#1575#1606#1578#1602#1575#1604' '#1601#1740
                  '18- '#1601#1585#1575#1582#1608#1575#1606#1610' '#1608#1610#1688#1607' '#1593#1605#1608#1605#1610'-'#1578#1575' '#1587#1602#1601' '#1605#1608#1580#1608#1583#1740
                  '19-'#1601#1585#1575#1582#1608#1575#1606#1740' '#1740#1705' '#1576#1607' '#1740#1705' Master  '#1608' '#1579#1576#1578' '#1705#1575#1604#1575' '#1576#1585' '#1575#1587#1575#1587' '#1576#1575#1585#1705#1583' '#1608' Parent'
                  '20-'#1601#1585#1575#1582#1608#1575#1606#1740' '#1740#1705' '#1576#1607' '#1740#1705' '#1576#1575' '#1580#1575#1576#1580#1575#1740#1740' '#1605#1602#1583#1575#1585' '#1575#1606#1576#1575#1585' 2 '#1583#1585' '#1575#1606#1576#1575#1585'1'
                  '21 - '#1601#1585#1575#1582#1608#1575#1606#1740' '#1608#1740#1688#1607' - '#1605#1587#1578#1602#1604' '#1575#1586' '#1587#1575#1740#1585' '#1578#1575#1740#1662#1607#1575' '#1608' '#1582#1575#1589' '#1601#1585#1605' '#1580#1575#1585#1740
                  '22- '#1601#1585#1575#1582#1608#1575#1606#1740' '#1608#1740#1688#1607' '#1605#1588#1578#1585#1705' '#1583#1585' '#1705#1604#1740#1607' '#1578#1575#1740#1662#1607#1575'  '
                  
                    '23 - '#1601#1585#1575#1582#1608#1575#1606#1740' '#1608#1740#1688#1607' '#1605#1587#1578#1602#1604' '#1575#1586' '#1587#1575#1740#1585' '#1578#1575#1740#1662#1607#1575' '#1608' '#1582#1575#1589' '#1601#1585#1605' '#1580#1575#1585#1740' '#1576#1589#1608#1585#1578' '#1583#1608' ' +
                    #1591#1585#1601#1607' '
                  '24- '#1601#1585#1575#1582#1608#1575#1606#1610' '#1578#1580#1605#1610#1593#1610' '#1576#1585' '#1575#1587#1575#1587' '#1601#1740' '#1740#1705#1587#1575#1606
                  '25- '#1601#1585#1575#1582#1608#1575#1606#1740' '#1575#1586' '#1578#1608#1586#1740#1606)
                ParentBiDiMode = False
                TabOrder = 4
                OnEnter = cmbEffectTypeEnter
              end
              object cmbSumOnStuffCode: TDBComboBox
                Left = 483
                Top = 118
                Width = 416
                Height = 21
                Anchors = [akTop, akRight]
                AutoDropDown = True
                Color = clWhite
                DataField = 'SumOnStuffCode'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1594#1610#1585' '#1601#1593#1575#1604
                  #1601#1593#1575#1604' '#1608' '#1607#1605#1585#1575#1607' '#1576#1575' '#1662#1585#1587#1588' '#1570#1610#1575' '#1581#1584#1601' '#1588#1608#1583
                  #1601#1593#1575#1604' '#1608' '#1576#1600#1600#1600#1600#1600#1583#1608#1606' '#1662#1585#1587#1588' '#1570#1610#1575' '#1581#1584#1601' '#1588#1608#1583
                  #1601#1593#1575#1604' '#1608' '#1576#1600#1600#1600#1600#1600#1583#1608#1606' '#1662#1585#1587#1588' '#1570#1610#1575' '#1581#1584#1601' '#1588#1608#1583'(StuffCode, preReciptItemID)')
                TabOrder = 5
                OnEnter = cmbEffectTypeEnter
              end
              object cmbTozinActive: TDBComboBox
                Left = 483
                Top = 95
                Width = 416
                Height = 21
                Anchors = [akTop, akRight]
                AutoDropDown = True
                BiDiMode = bdRightToLeft
                Color = clWhite
                DataField = 'TozinActive'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1606#1583#1575#1585#1583
                  #1605#1602#1583#1575#1585'='#1608#1586#1606' '#1662#1585' '#1605#1575#1588#1610#1606' '#1575#1586' '#1662#1608#1585#1578' 1-'#1608#1586#1606' '#1582#1575#1604#1610' '#1605#1575#1588#1610#1606' '#1583#1585#1605#1593#1585#1601#1610' '#1605#1588#1578#1585#1610#1575#1606#8207
                  #1605#1602#1583#1575#1585' = '#1608#1586#1606' '#1603#1606#1608#1606#1610' '#1575#1586' '#1582#1585#1608#1580#1610' '#1662#1608#1585#1578
                  #1605#1602#1583#1575#1585'='#1608#1586#1606' '#1662#1585' '#1605#1575#1588#1610#1606' - '#1608#1586#1606' '#1582#1575#1604#1610' '#1605#1575#1588#1610#1606'('#1579#1576#1578' '#1583#1585' '#1583#1608' '#1606#1608#1576#1578')'#8207
                  #1605#1602#1583#1575#1585'='#1608#1586#1606' '#1662#1585' '#1605#1575#1588#1610#1606' '#1575#1586' '#1662#1608#1585#1578' 1-'#1608#1586#1606' '#1582#1575#1604#1610' '#1605#1575#1588#1610#1606' '#1583#1585#1605#1593#1585#1601#1610' '#1605#1588#1578#1585#1610#1575#1606#8207'3'
                  #1605#1602#1583#1575#1585' = '#1608#1586#1606' '#1603#1606#1608#1606#1610' '#1575#1586' '#1582#1585#1608#1580#1610' '#1662#1608#1585#1578' '#1576#1575' '#1578#1608#1580#1607' '#1576#1607' '#1575#1601#1578' '#1603#1575#1604#1575)
                ParentBiDiMode = False
                TabOrder = 6
                OnEnter = cmbEffectTypeEnter
              end
              object dbchkChangePriceManifesto: TDBCheckBox
                Left = 676
                Top = 181
                Width = 223
                Height = 17
                Anchors = [akTop, akRight]
                Caption = #1602#1740#1605#1578' '#1711#1584#1575#1585#1740' '#1576#1585' '#1575#1587#1575#1587' '#1575#1593#1604#1575#1605#1740#1607' '#1602#1740#1605#1578' '#1576#1575#1588#1583'.'#8207
                DataField = 'ChangePriceManifesto'
                DataSource = srcReciptTypes
                TabOrder = 7
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object dbchkFilterYearIDActive: TDBCheckBox
                Left = 616
                Top = 162
                Width = 283
                Height = 17
                Anchors = [akTop, akRight]
                Caption = #1575#1591#1604#1575#1593#1575#1578' '#1607#1605#1607' '#1587#1575#1604#1607#1575#1610' '#1605#1575#1604#1610' '#1580#1607#1578' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1606#1605#1575#1610#1588' '#1588#1608#1606#1583'.'
                DataField = 'FilterYearIDActive'
                DataSource = srcReciptTypes
                TabOrder = 8
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object dbchkUseStoreIDOnRecall: TDBCheckBox
                Left = 727
                Top = 143
                Width = 172
                Height = 17
                Anchors = [akTop, akRight]
                Caption = #1570#1610#1575' '#1603#1583' '#1575#1606#1576#1575#1585' '#1583#1585' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1605#1608#1579#1585' '#1575#1587#1578'.'#8207
                DataField = 'UseStoreIDOnRecall'
                DataSource = srcReciptTypes
                TabOrder = 9
                ValueChecked = '1'
                ValueUnchecked = '2'
              end
              object edtFindParentReciptID: TDBEdit
                Left = 510
                Top = 225
                Width = 389
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'FindParentReciptID'
                DataSource = srcReciptTypes
                TabOrder = 10
                OnKeyDown = edtRecallReciptTypesKeyDown
              end
              object edtRecallReciptTypes: TDBEdit
                Left = 510
                Top = 24
                Width = 389
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'RecallReciptTypes'
                DataSource = srcReciptTypes
                TabOrder = 11
                OnKeyDown = edtRecallReciptTypesKeyDown
              end
              object Panel5: TPanel
                Left = 0
                Top = 358
                Width = 1051
                Height = 64
                Align = alBottom
                TabOrder = 12
                object chklstUsePerson1OnRecall: TCheckListBox
                  Left = 1
                  Top = 1
                  Width = 1049
                  Height = 62
                  Align = alClient
                  Columns = 2
                  ItemHeight = 13
                  Items.Strings = (
                    #1578#1575#1579#1610#1585' '#1603#1583' '#1605#1588#1578#1585#1610' '#1583#1585' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1605#1588#1578#1585#1610'1'
                    #1578#1575#1579#1610#1585' '#1603#1583' '#1605#1588#1578#1585#1610' '#1583#1585' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1605#1588#1578#1585#1610'2'
                    #1578#1575#1579#1610#1585' '#1603#1583' '#1605#1588#1578#1585#1610' '#1583#1585' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1605#1588#1578#1585#1610'3'
                    #1578#1575#1579#1610#1585' '#1603#1583' '#1605#1588#1578#1585#1610' '#1583#1585' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1605#1588#1578#1585#1610'4'
                    
                      #1583#1585' '#1589#1608#1585#1578#1740#1705#1607' '#1575#1586' '#1575#1740#1606' '#1601#1585#1605' ('#1601#1585#1586#1606#1583')'#1583#1585' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1740#1705' '#1576#1607' '#1740#1705' '#1575#1587#1578#1601#1575#1583#1607' '#1588#1583#1607' '#1576#1575 +
                      #1588#1583' '#1605#1602#1583#1575#1585' '#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588' '#1606#1740#1575#1588#1583
                    
                      #1583#1585' '#1589#1608#1585#1578#1740#1705#1607' '#1575#1586' '#1575#1740#1606' '#1601#1585#1605'('#1662#1583#1585') '#1583#1585' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1740#1705' '#1576#1607' '#1740#1705' '#1575#1587#1578#1601#1575#1583#1607' '#1588#1583#1607' '#1576#1575#1588#1583 +
                      ' '#1605#1602#1583#1575#1585' '#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588' '#1606#1740#1575#1588#1583
                    #1578#1575#1579#1610#1585' '#1603#1583' '#1605#1588#1578#1585#1610' '#1583#1585' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1605#1588#1578#1585#1610' 5')
                  TabOrder = 0
                  OnClick = chklstRecallTypeOptionClick
                end
              end
              object edtExcelRecallMaxAmount: TDBEdit
                Left = 483
                Top = 252
                Width = 416
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'ExcelRecallMaxAmount'
                DataSource = srcReciptTypes
                TabOrder = 13
                OnKeyDown = edtRecallReciptTypesKeyDown
              end
              object cmbFillPersonID1From: TDBComboBox
                Left = 482
                Top = 279
                Width = 416
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'FillPersonID1From'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1575#1586' '#1605#1588#1578#1585#1740' Detail '#1662#1585' '#1588#1608#1583
                  #1575#1586' '#1605#1588#1578#1585#1740' 1 Master '#1662#1585' '#1588#1608#1583
                  #1575#1586' '#1605#1588#1578#1585#1740' 2 Master '#1662#1585' '#1588#1608#1583
                  #1575#1586' '#1605#1588#1578#1585#1740' 3 Master '#1662#1585' '#1588#1608#1583
                  #1575#1586' '#1605#1588#1578#1585#1740' 4 Master '#1662#1585' '#1588#1608#1583)
                TabOrder = 14
                OnEnter = cmbEffectTypeEnter
              end
              object dbchkUpdateChildFromFather: TDBCheckBox
                Left = 676
                Top = 309
                Width = 223
                Height = 17
                Anchors = [akTop, akRight]
                Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1740' '#1601#1585#1605' '#1580#1575#1585#1740' '#1575#1586' '#1601#1585#1605' '#1662#1583#1585' '#1601#1593#1575#1604' '#1576#1575#1588#1583
                DataField = 'UpdateChildFromFather'
                DataSource = srcReciptTypes
                TabOrder = 15
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
            end
            object TabSheet31: TTabSheet
              Caption = #1601#1740#1604#1583#1607#1575#1740' '#1602#1575#1576#1604' '#1575#1606#1578#1602#1575#1604' '#1575#1586' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1576#1607' '#1601#1585#1605' '#1583#1585' '#1570#1740#1578#1605
              ImageIndex = 1
              object Label161: TLabel
                Left = 0
                Top = 0
                Width = 1051
                Height = 13
                Align = alTop
                Alignment = taCenter
                Caption = 
                  #1607#1605#1705#1575#1585#1575#1606' '#1605#1581#1578#1585#1605' '#1576#1607' '#1607#1740#1670' '#1593#1606#1608#1575#1606' '#1583#1575#1582#1604' '#1601#1740#1604#1583' '#1607#1575#1740' '#1587#1740#1587#1578#1605#1740' '#1601#1740#1604#1583' '#1583#1740#1711#1585#1740' '#1602#1585#1575#1585' ' +
                  #1606#1583#1607#1740#1583' '#1576#1607' '#1593#1606#1608#1575#1606' '#1605#1579#1575#1604' (preReciptItemID,ReciptItemID,ReciptID,....)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ExplicitWidth = 648
              end
              object lstFieldInTheField: TValueListEditor
                Left = 0
                Top = 13
                Width = 1051
                Height = 409
                Align = alClient
                KeyOptions = [keyEdit, keyAdd, keyDelete, keyUnique]
                TabOrder = 0
                TitleCaptions.Strings = (
                  #1606#1575#1605' '#1601#1740#1604#1583' '#1570#1740#1578#1605
                  #1606#1575#1605' '#1601#1740#1604#1583' '#1601#1585#1605' '#1601#1585#1575#1582#1608#1575#1606#1740)
                OnEnter = lstOtherFieldCaptionsEnter
                ColWidths = (
                  237
                  808)
                RowHeights = (
                  18
                  18)
              end
            end
            object TabSheet42: TTabSheet
              Caption = '...'
              ImageIndex = 2
              object grdRecallReciptTypes: TCedarDbgrid
                AlignWithMargins = True
                Left = 10
                Top = 10
                Width = 1031
                Height = 402
                Margins.Left = 10
                Margins.Top = 10
                Margins.Right = 10
                Margins.Bottom = 10
                Align = alClient
                DataSource = srcRecallReciptTypes
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
                RowHeight = 18
                SearchPanel.Enabled = True
                SortLocal = True
                TabOrder = 0
                OnDrawColumnCell = grdRecallReciptTypesDrawColumnCell
                ActiveSearchPanel = False
                SelectFooterIndex = 0
                Columns = <
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'ReciptType'
                    Footers = <>
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'ReciptCaption'
                    Footers = <>
                    Width = 200
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'RecallReciptType'
                    Footers = <>
                    Width = 100
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'RrReciptCaption'
                    Footers = <>
                    Width = 200
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'RecallType'
                    Footers = <>
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
          end
        end
        object TabSheet30: TTabSheet
          Caption = #1582#1585#1610#1583' '#1582#1575#1589
          ImageIndex = 2
          DesignSize = (
            1059
            450)
          object Label74: TLabel
            Left = 922
            Top = 28
            Width = 111
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1575#1591#1604#1575' '#1593#1575#1578' '#1605#1575#1588#1610#1606' '#1608' '#1585#1575#1606#1606#1583#1607
            ExplicitLeft = 641
          end
          object Label31: TLabel
            Left = 300
            Top = 26
            Width = 60
            Height = 13
            Caption = #1578#1575#1579#1610#1585' '#1583#1585#1589#1583' '#1570#1576
          end
          object DBCheckBox18: TDBCheckBox
            Left = 662
            Top = 55
            Width = 177
            Height = 19
            Anchors = [akTop, akRight]
            Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1585#1576#1608#1591' '#1576#1607' '#1586#1605#1610#1606' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
            DataField = 'EarthActive'
            DataSource = srcReciptTypes
            TabOrder = 1
            ValueChecked = '1'
            ValueUnchecked = '0'
            WordWrap = True
          end
          object DBCheckBox19: TDBCheckBox
            Left = 662
            Top = 83
            Width = 184
            Height = 19
            Anchors = [akTop, akRight]
            Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1585#1576#1608#1591' '#1576#1607' '#1585#1591#1608#1576#1578' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
            DataField = 'WetActive'
            DataSource = srcReciptTypes
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '0'
            WordWrap = True
          end
          object DBCheckBox20: TDBCheckBox
            Left = 662
            Top = 112
            Width = 272
            Height = 19
            Anchors = [akTop, akRight]
            Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1585#1576#1608#1591' '#1576#1607' '#1602#1606#1583'/'#1583#1585' '#1589#1583' '#1583#1585' '#1601#1585#1605' '#1580#1583#1608#1604#1610' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
            DataField = 'SugarActive'
            DataSource = srcReciptTypes
            TabOrder = 3
            ValueChecked = '1'
            ValueUnchecked = '0'
            WordWrap = True
          end
          object cmbMachineActive: TDBComboBox
            Left = 662
            Top = 25
            Width = 255
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'MachineActive'
            DataSource = srcReciptTypes
            Items.Strings = (
              #1606#1605#1575#1610#1588' '#1606#1588#1608#1583
              'Master'
              'Details'
              'Master & Detail'
              #1588#1605#1575#1585#1607' '#1605#1575#1588#1610#1606#1563#1606#1575#1605' '#1585#1575#1606#1606#1583#1607' '#1583#1585' Details')
            TabOrder = 0
            OnEnter = cmbEffectTypeEnter
          end
          object chkDeficitValueUnitSellPrice2: TDBCheckBox
            Left = 662
            Top = 140
            Width = 292
            Height = 19
            Anchors = [akTop, akRight]
            Caption = #1605#1576#1604#1594' '#1603#1585#1575#1610#1607' '#1581#1605#1604' '#1608' '#1607#1586#1610#1606#1607' '#1603#1605#1576#1575#1610#1606'DeficitValueUnitSellPrice2'
            DataField = 'DeficitValueUnitSellPrice2'
            DataSource = srcReciptTypes
            TabOrder = 4
            ValueChecked = '1'
            ValueUnchecked = '0'
            WordWrap = True
          end
          object cmbWaterCoEffect: TDBComboBox
            Left = 2
            Top = 23
            Width = 293
            Height = 21
            DataField = 'WaterCoEffect'
            DataSource = srcReciptTypes
            Items.Strings = (
              #1576#1585' '#1605#1602#1583#1575#1585' '#1605#1576#1604#1594
              #1605#1576#1604#1594
              #1607#1610#1670#1603#1583#1575#1605
              #1605#1576#1604#1594'1'#1605#1576#1604#1594'2'#1605#1576#1604#1593' '#1587#1607#1605' '#1601#1593#1575#1604' '#1588#1608#1583)
            TabOrder = 5
            OnEnter = cmbEffectTypeEnter
          end
          object chklstSpecialSettings: TCheckListBox
            Left = 0
            Top = 336
            Width = 1059
            Height = 114
            Align = alBottom
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = clGradientInactiveCaption
            ItemHeight = 13
            Items.Strings = (
              #1606#1575#1605' '#1585#1575#1606#1606#1583#1607' '#1606#1605#1575#1740#1588' '#1588#1608#1583
              #1588#1605#1575#1585#1607' '#1605#1575#1588#1740#1606' '#1606#1605#1575#1740#1588' '#1588#1608#1583
              #1575#1591#1604#1575#1593#1575#1578' '#1606#1605#1575#1740#1588' '#1588#1608#1583
              #1588#1605#1575#1585#1607' '#1576#1575#1585#1606#1575#1605#1607' '#1606#1605#1575#1740#1588' '#1588#1608#1583
              #1705#1606#1578#1585#1604' '#1593#1583#1605' '#1579#1576#1578' '#1578#1705#1585#1575#1585#1740' '#1601#1740#1604#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1585#1575#1606#1606#1583#1607' '#1575#1606#1580#1575#1605' '#1588#1608#1583' (MachineInfo)')
            TabOrder = 6
            OnClick = chklstSettingsClick
          end
        end
        object TabSheet26: TTabSheet
          Caption = #1575#1606#1576#1575#1585
          ImageIndex = 2
          DesignSize = (
            1059
            450)
          object lbl1: TLabel
            Left = 915
            Top = 130
            Width = 77
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1593#1606#1608#1575#1606' '#1576#1606#1711#1575#1607'/'#1575#1606#1576#1575#1585'2'
            FocusControl = dbedtStore2Caption
            ExplicitLeft = 634
          end
          object lblStoreCaption: TLabel
            Left = 915
            Top = 91
            Width = 128
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1603#1604#1605#1607' '#1576#1606#1711#1575#1607'/'#1575#1606#1576#1575#1585'1'
            FocusControl = edtStoreCaption
            ExplicitLeft = 634
          end
          object Label22: TLabel
            Left = 915
            Top = 50
            Width = 91
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583#1608#1606#1575#1605' '#1576#1606#1711#1575#1607'/'#1575#1606#1576#1575#1585'(2) '
            FocusControl = dbedtStore2Caption
            ExplicitLeft = 634
          end
          object Label177: TLabel
            Left = 915
            Top = 172
            Width = 81
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1705#1583' '#1662#1740#1588' '#1601#1585#1590' '#1575#1606#1576#1575#1585
            FocusControl = dbedtStore2Caption
          end
          object GroupBox5: TGroupBox
            Left = 36
            Top = 10
            Width = 210
            Height = 155
            Caption = '  '#1606#1608#1593' '#1604#1610#1587#1578' '#1575#1606#1576#1575#1585#1607#1575#1610' '#1605#1580#1575#1586'   '
            TabOrder = 0
            object ChkBoxStoreKindList: TCheckListBox
              Left = 2
              Top = 15
              Width = 206
              Height = 138
              Align = alClient
              ItemHeight = 13
              TabOrder = 0
              OnClick = ChkCustomerKind1Click
            end
          end
          object DBEdit32: TDBEdit
            Left = 36
            Top = 168
            Width = 210
            Height = 21
            DataField = 'StoreKindList'
            DataSource = srcReciptTypes
            TabOrder = 1
          end
          object ChkBoxStoreActive: TDBCheckBox
            Left = 764
            Top = 16
            Width = 150
            Height = 17
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583#1608#1606#1575#1605' '#1576#1606#1711#1575#1607'/'#1575#1606#1576#1575#1585' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
            DataField = 'StoreActive'
            DataSource = srcReciptTypes
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '2'
          end
          object dbedtStore2Caption: TDBEdit
            Left = 545
            Top = 126
            Width = 369
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'Store2Caption'
            DataSource = srcReciptTypes
            TabOrder = 3
          end
          object edtStoreCaption: TDBEdit
            Left = 545
            Top = 87
            Width = 369
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'StoreCaption'
            DataSource = srcReciptTypes
            TabOrder = 4
          end
          object cmbStore2Active: TDBComboBox
            Left = 545
            Top = 47
            Width = 369
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'Store2Active'
            DataSource = srcReciptTypes
            Items.Strings = (
              #1606#1583#1575#1585#1583
              #1601#1593#1575#1604' '#1576#1600#1600#1600#1600#1600#1575' '#1575#1593#1605#1575#1604' '#1587#1591#1581' '#1583#1587#1578#1585#1587#1610' '#1576#1607' '#1575#1606#1576#1575#1585#1607#1575' ( '#1583#1585' '#1601#1585#1605' '#1605#1593#1585#1601#1610' '#1606#1576#1575#1585#1607#1575')'#8207
              #1601#1593#1575#1604' '#1576#1583#1608#1606' '#1575#1593#1605#1575#1604' '#1587#1591#1581' '#1583#1587#1578#1585#1587#1610' '#1576#1607' '#1575#1606#1576#1575#1585#1607#1575' ('#1583#1585' '#1601#1585#1605' '#1605#1593#1585#1601#1610' '#1575#1606#1576#1575#1585#1607#1575')'#8207)
            TabOrder = 5
            OnEnter = cmbShortCutKeyEnter
          end
          object dbedtDefaultStoreID: TDBEdit
            Left = 780
            Top = 168
            Width = 134
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'DefaultStoreID'
            DataSource = srcReciptTypes
            TabOrder = 6
          end
        end
        object TabSheet13: TTabSheet
          Caption = #1601#1585#1605' '#1605#1585#1578#1576#1591' '
          object Label37: TLabel
            Left = 602
            Top = 7
            Width = 66
            Height = 13
            Caption = ' '#1603#1583' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '
          end
          object Label38: TLabel
            Left = 895
            Top = 39
            Width = 73
            Height = 13
            Caption = ' '#1606#1608#1593' '#1575#1585#1578#1576#1575#1591' '#1608' '#1579#1576#1578
          end
          object Label43: TLabel
            Left = 895
            Top = 71
            Width = 45
            Height = 13
            Caption = #1576#1593#1583' '#1575#1586' '#1579#1576#1578
          end
          object Label116: TLabel
            Left = 895
            Top = 103
            Width = 150
            Height = 13
            Caption = #1606#1581#1608#1607' '#1579#1576#1578' '#1588#1605#1575#1585#1607' '#1601#1585#1605' ('#1601#1585#1605' '#1605#1585#1578#1576#1591')'
          end
          object Label79: TLabel
            Left = 895
            Top = 135
            Width = 158
            Height = 27
            AutoSize = False
            Caption = #1578#1593#1583#1575#1583' '#1711#1575#1605' '#1607#1575#1610' '#1585#1586#1585#1608' '#1576#1585#1575#1610' '#1601#1585#1605' '#1605#1585#1578#1576#1591
            FocusControl = edtStepCorrelate
            WordWrap = True
          end
          object Label164: TLabel
            Left = 895
            Top = 172
            Width = 106
            Height = 13
            Caption = #1608#1590#1593#1740#1578' '#1601#1585#1605' '#1575#1740#1580#1575#1583' '#1588#1583#1607' '
          end
          object lbl18: TLabel
            Left = 895
            Top = 199
            Width = 125
            Height = 13
            AutoSize = False
            Caption = #1608#1590#1593#1740#1578' '#1602#1575#1576#1604' '#1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591
            WordWrap = True
          end
          object Label173: TLabel
            Left = 895
            Top = 239
            Width = 105
            Height = 13
            Caption = ' '#1590#1585#1740#1576' '#1605#1576#1604#1594' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '
          end
          object Label174: TLabel
            Left = 895
            Top = 265
            Width = 158
            Height = 27
            Alignment = taRightJustify
            AutoSize = False
            Caption = #1575#1740#1606' '#1711#1585#1608#1607#1607#1575#1740' '#1705#1575#1604#1575' '#1583#1585' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '#1575#1606#1578#1602#1575#1604' '#1583#1575#1583#1607' '#1606#1588#1608#1606#1583
            WordWrap = True
          end
          object SpeedButton11: TSpeedButton
            Left = 866
            Top = 266
            Width = 23
            Height = 21
            Hint = 'RecallReciptTypes'
            Caption = '...'
            OnClick = SpeedButton11Click
          end
          object pnl3: TPanel
            Left = 3
            Top = 3
            Width = 694
            Height = 182
            BevelOuter = bvNone
            TabOrder = 9
            object dbchkShowSelectStore: TDBCheckBox
              Left = 0
              Top = 0
              Width = 694
              Height = 17
              Align = alTop
              BiDiMode = bdLeftToRight
              Caption = #1607#1606#1711#1575#1605' '#1579#1576#1578' '#1606#1575#1605' '#1575#1606#1576#1575#1585' '#1606#1605#1575#1610#1588' '#1608' '#1575#1606#1578#1582#1575#1576' '#1588#1608#1583'.'#8207
              DataField = 'ShowSelectStore'
              DataSource = srcReciptTypes
              ParentBiDiMode = False
              TabOrder = 0
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object dbchkCorrelateReciptsDeficits: TDBCheckBox
              Left = 0
              Top = 17
              Width = 694
              Height = 17
              Align = alTop
              BiDiMode = bdLeftToRight
              Caption = #1607#1606#1711#1575#1605' '#1579#1576#1578' '#1603#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578' '#1601#1585#1605' '#1606#1610#1586' '#1605#1606#1578#1602#1604' '#1588#1608#1606#1583'.'#8207
              DataField = 'CorrelateReciptsDeficits'
              DataSource = srcReciptTypes
              ParentBiDiMode = False
              TabOrder = 1
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object dbchkCorrelateStateChange: TDBCheckBox
              Left = 0
              Top = 51
              Width = 694
              Height = 17
              Align = alTop
              BiDiMode = bdLeftToRight
              Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578' '#1601#1585#1605' '#1585#1608#1610' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '#1606#1610#1586' '#1575#1606#1580#1575#1605' '#1588#1608#1583'.'#8207
              DataField = 'CorrelateStateChange'
              DataSource = srcReciptTypes
              ParentBiDiMode = False
              TabOrder = 2
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object dbchkRepelInsertRecipt: TDBCheckBox
              Left = 0
              Top = 34
              Width = 694
              Height = 17
              Align = alTop
              BiDiMode = bdLeftToRight
              Caption = #1580#1604#1608#1711#1610#1585#1610' '#1575#1586' '#1580#1583#1610#1583' '#1586#1583#1606' '#1548' '#1575#1711#1585' '#1575#1610#1606' '#1601#1585#1605' '#1575#1586' '#1591#1585#1610#1602' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '#1579#1576#1578' '#1605#1610' '#1588#1608#1583'.'
              DataField = 'RepelInsertRecipt'
              DataSource = srcReciptTypes
              ParentBiDiMode = False
              TabOrder = 3
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object dbchkAutoCorrelate: TDBCheckBox
              Left = 0
              Top = 130
              Width = 680
              Height = 17
              BiDiMode = bdLeftToRight
              Caption = 
                #1576#1593#1583' '#1575#1586' '#1579#1576#1578' '#1601#1585#1605' '#1662#1575#1610#1607' "'#1601#1585#1605' '#1605#1585#1578#1576#1591'" '#1575#1578#1608#1605#1575#1578#1610#1603' '#1579#1576#1578' '#1588#1608#1583'.'#8207'/'#1603#1662#1610' '#1602#1585#1575#1585#1583#1575#1583' '#1576 +
                #1607' '#1605#1588#1578#1585#1610' '#1575#1585#1578#1576#1575#1591' '#1610#1603' '#1576#1607' '#1610#1603' '#1579#1576#1578' '#1602#1585#1575#1585#1583#1575#1583' '#1607#1575' '#1608' '#1578#1588#1603#1610#1604' '#1662#1585#1608#1606#1583#1607'  '#1576#1575' '#1605#1593#1585#1601#1610' ' +
                #1605#1588#1578#1585#1610#1575#1606
              DataField = 'AutoCorrelate'
              DataSource = srcReciptTypes
              ParentBiDiMode = False
              TabOrder = 4
              ValueChecked = '1'
              ValueUnchecked = '2'
              WordWrap = True
            end
            object dbchkCheckParentReciptID: TDBCheckBox
              Left = 0
              Top = 165
              Width = 694
              Height = 17
              Align = alBottom
              BiDiMode = bdLeftToRight
              Caption = #1583#1585' '#1589#1608#1585#1578#1740#1705#1607'  " '#1601#1585#1605' '#1605#1585#1578#1576#1591' "  '#1579#1576#1578' '#1588#1583#1607' '#1576#1575#1588#1583' '#1589#1583#1608#1585' '#1587#1606#1583' '#1575#1606#1580#1575#1605' '#1588#1608#1583'.'#8207
              DataField = 'CheckParentReciptID'
              DataSource = srcReciptTypes
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 5
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
          end
          object edtCorrelateReciptType: TDBEdit
            Left = 340
            Top = 3
            Width = 541
            Height = 21
            DataField = 'CorrelateReciptType'
            DataSource = srcReciptTypes
            TabOrder = 0
          end
          object CmbCorrelateKind: TDBComboBox
            Left = 340
            Top = 35
            Width = 541
            Height = 21
            AutoDropDown = True
            Color = clWhite
            DataField = 'CorrelateKind'
            DataSource = srcReciptTypes
            Items.Strings = (
              '0-'#1606#1583#1575#1585#1583
              '1-'#1579#1576#1578' '#1583#1585' '#1608#1575#1585#1583#1607#8207#1607#1575' '#1576#1575' '#1605#1576#1604#1594
              '2-'#1579#1576#1578' '#1583#1585' '#1608#1575#1585#1583#1607#8207#1607#1575' '#1576#1583#1608#1606' '#1605#1576#1604#1594
              '3-'#1579#1576#1578' '#1583#1585' '#1589#1575#1583#1585#1607#8207#1607#1575' '#1576#1575' '#1605#1576#1604#1594
              '4-'#1579#1576#1578' '#1583#1585' '#1589#1575#1583#1585#1607#8207#1607#1575' '#1576#1583#1608#1606' '#1605#1576#1604#1594
              '5-'#1579#1576#1578' '#1583#1585' '#1589#1575#1583#1585#1607#8207#1607#1575' '#1576#1575' '#1606#1585#1582' '#1601#1585#1608#1588' '#1610#1575' '#1575#1593#1604#1575#1605#1610#1607' '#1602#1610#1605#1578
              '6-'#1579#1576#1578' '#1583#1585' '#1608#1575#1585#1583#1607#8207#1607#1575' '#1576#1575' '#1605#1576#1604#1594' '#1608' '#1576#1583#1608#1606' '#1578#1582#1601#1740#1601
              '7-'#1579#1576#1578' '#1583#1585' '#1589#1575#1583#1585#1607' '#1607#1575' '#1576#1583#1608#1606' '#1605#1576#1604#1594' '#1576#1575' '#1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578#1740
              '8-'#1587#1575#1582#1578' '#1605#1581#1589#1608#1604' '#1583#1585' '#1589#1575#1583#1585#1607)
            TabOrder = 1
            OnEnter = cmbEffectTypeEnter
          end
          object CmbCorrelate4EditActive: TDBComboBox
            Left = 297
            Top = 67
            Width = 584
            Height = 21
            AutoDropDown = True
            Color = clWhite
            DataField = 'Correlate4EditActive'
            DataSource = srcReciptTypes
            Items.Strings = (
              '0-'#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588' '#1606#1576#1575#1588#1583
              '1-'#1605#1576#1604#1594' '#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588' '#1576#1575#1588#1583
              '2-'#1576#1589#1608#1585#1578' '#1603#1604#1610' '#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588' '#1576#1575#1588#1583
              
                '3-'#1576#1589#1608#1585#1578' '#1603#1604#1610' '#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588' '#1608' '#1581#1584#1601' '#1576#1575#1588#1583'('#1662#1587' '#1575#1586' '#1607#1585' '#1608#1610#1585#1575#1610#1588' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '#1579#1576#1578 +
                ' '#1588#1583#1607' '#1581#1584#1601' '#1603#1585#1583#1583')'
              '4-'#1578#1575#1585#1740#1582' '#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588' '#1576#1575#1588#1583
              '5-'#1588#1605#1575#1585#1607' '#1608' '#1578#1575#1585#1740#1582' '#1705#1605#1705#1740' '#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588' '#1576#1575#1588#1583
              '6-'#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588' '#1576#1575#1588#1583' '#1608' '#1570#1740#1578#1605' '#1607#1575#1740' '#1601#1585#1586#1606#1583' '#1583#1608#1576#1575#1585#1607' '#1581#1584#1601' '#1608' '#1579#1576#1578' '#1588#1608#1606#1583
              '7-'#1601#1602#1591' '#1605#1588#1578#1585#1740' '#1587#1607' '#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588' '#1576#1575#1588#1583)
            TabOrder = 2
            OnEnter = cmbEffectTypeEnter
          end
          object dbchkChangeAidReciptDate: TDBCheckBox
            Left = 0
            Top = 303
            Width = 1059
            Height = 17
            Align = alBottom
            BiDiMode = bdLeftToRight
            Caption = #1593#1604#1575#1605#1578'  *  '#1740#1593#1606#1740' '#1583#1585' '#1579#1576#1578' '#1575#1586' '#1604#1740#1587#1578' '#1601#1593#1575#1604' '#1606#1740#1587#1578
            Ctl3D = False
            DataField = 'ChangeAidReciptDate'
            DataSource = srcReciptTypes
            ParentBiDiMode = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object cmbCorrelateReciptNumberKind: TDBComboBox
            Left = 340
            Top = 99
            Width = 541
            Height = 21
            AutoDropDown = True
            Color = clWhite
            DataField = 'CorrelateReciptNumberKind'
            DataSource = srcReciptTypes
            Items.Strings = (
              #1588#1605#1575#1585#1607' '#1601#1585#1605' '#1580#1575#1585#1610
              #1588#1605#1575#1585#1607' '#1580#1583#1610#1583' '#1576#1575' '#1578#1608#1580#1607' '#1576#1607' '#1601#1585#1605' '#1605#1585#1578#1576#1591
              #1588#1605#1575#1585#1607' '#1601#1585#1605' '#1578#1608#1586#1740#1606' '#1576#1607' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '#1575#1606#1578#1602#1575#1604' '#1583#1575#1583' '#1588#1608#1583
              #1588#1605#1575#1585#1607' '#1580#1583#1610#1583' '#1576#1575' '#1578#1608#1580#1607' '#1576#1607' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '#1608' '#1587#1575#1604' '#1605#1585#1576#1608#1591)
            TabOrder = 4
            OnEnter = cmbEffectTypeEnter
          end
          object edtStepCorrelate: TDBEdit
            Left = 654
            Top = 131
            Width = 227
            Height = 21
            DataField = 'StepCorrelate'
            DataSource = srcReciptTypes
            TabOrder = 5
          end
          object chklstChangeAidReciptDate: TCheckListBox
            Left = 0
            Top = 320
            Width = 1059
            Height = 130
            Align = alBottom
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = clGradientInactiveCaption
            Columns = 2
            ItemHeight = 13
            Items.Strings = (
              #1607#1606#1711#1575#1605' '#1579#1576#1578' '#1578#1575#1585#1610#1582' '#1603#1605#1603#1610' '#1608' '#1578#1575#1585#1610#1582' '#1601#1585#1605' '#1580#1575#1576#1580#1575' '#1588#1608#1606#1583'.'#8207
              
                #1583#1585'  '#1586#1605#1575#1606' '#1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591' ServerID '#1604#1575#1711#1740#1606' '#1580#1607#1578' '#1579#1576#1578' '#1601#1585#1605' '#1580#1583#1740#1583' '#1575#1587#1578#1601#1575#1583#1607' '#1588 +
                #1608#1583'.'
              #1579#1576#1578' '#1576#1575' NewReciptsCorrelate  '#1607#1605#1575#1606#1606#1583' '#1604#1740#1587#1578' '#1575#1606#1580#1575#1605' '#1588#1608#1583'.'
              #1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '#1575#1586' '#1587#1585#1608#1740#1587' '#1606#1740#1586' '#1575#1606#1580#1575#1605' '#1588#1608#1583
              #1579#1576#1578' '#1601#1585#1605' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1575#1586' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '#1579#1576#1578' '#1588#1583#1607' '#1583#1585' '#1587#1585#1608#1740#1587
              #1583#1585' '#1586#1605#1575#1606' '#1583#1575#1574#1605' '#1705#1585#1583#1606' '#1601#1585#1605' '#1605#1576#1583#1575' '#1575#1711#1585' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '#1579#1576#1578' '#1606#1588#1583' '#1579#1576#1578' '#1588#1608#1583
              #1583#1585' '#1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '#1578#1608#1586#1740#1606' '#1605#1588#1578#1585#1740' 2 '#1575#1586' '#1601#1585#1605' '#1578#1608#1586#1740#1606' '#1662#1585' '#1588#1608#1583
              
                #1607#1606#1711#1575#1605' '#1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '#1578#1575#1585#1740#1582' '#1601#1585#1605' '#1605#1576#1583#1575' '#1583#1585' '#1578#1575#1585#1740#1582' '#1705#1605#1705#1740' '#1601#1585#1605' '#1605#1602#1589#1583' '#1579#1576#1578' '#1588#1608 +
                #1583'    *'
              #1579#1576#1578' '#1575#1578#1608#1605#1575#1578' '#1601#1585#1605#1608#1604' '#1590#1585#1575#1740#1576' '#1607#1606#1711#1575#1605' '#1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591'     *'
              #1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '#1576#1575' '#1578#1608#1580#1607' '#1576#1607' '#1601#1585#1605' '#1575#1593#1604#1575#1605#1740#1607' '#1602#1740#1605#1578' '#1575#1606#1580#1575#1605' '#1588#1608#1583'  *'
              #1601#1585#1605' '#1605#1585#1578#1576#1591' '#1576#1607' '#1588#1585#1591#1740' '#1602#1575#1576#1604' '#1579#1576#1578' '#1576#1575#1588#1583' '#1705#1607' '#1601#1585#1605' '#1590#1585#1575#1740#1576' '#1579#1576#1578' '#1588#1583#1607' '#1576#1575#1588#1583
              
                #1602#1576#1604' '#1575#1586' '#1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '#1705#1606#1578#1585#1604' '#1605#1608#1580#1608#1583#1740' '#1575#1606#1580#1575#1605' '#1588#1608#1583' '#1583#1585' '#1589#1608#1585#1578' '#1605#1606#1601#1740' '#1588#1583#1606' '#1601#1585#1605 +
                ' '#1579#1576#1578' '#1606#1588#1608#1583
              
                #1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '#1576#1575' '#1578#1608#1580#1607' '#1576#1607' '#1601#1585#1605' '#1575#1593#1604#1575#1605#1740#1607' '#1602#1740#1605#1578' '#1575#1606#1580#1575#1605' '#1588#1608#1583' '#1576#1575' '#1578#1608#1580#1607' '#1576#1607' '#1578 +
                #1575#1585#1740#1582' '#1705#1605#1705#1740' '#1601#1585#1605' '#1605#1576#1583#1575'  *'
              #1575#1740#1606' '#1601#1585#1605' '#1705#1607' '#1601#1585#1605' '#1601#1585#1586#1606#1583' '#1583#1585' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '#1607#1587#1578' '#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588' '#1606#1576#1575#1588#1583
              #1605#1602#1583#1575#1585#1607#1575#1740' '#1576#1586#1585#1711#1578#1585' '#1575#1586' '#1589#1601#1585' '#1575#1606#1578#1602#1575#1604' '#1583#1575#1583#1607' '#1588#1608#1583)
            TabOrder = 6
            OnClick = chklstSettingsClick
          end
          object cmbReciptStatecreatedForm: TDBComboBox
            Left = 340
            Top = 168
            Width = 541
            Height = 21
            AutoDropDown = True
            Color = clWhite
            DataField = 'ReciptStatecreatedForm'
            DataSource = srcReciptTypes
            Items.Strings = (
              #1576#1583#1608#1606' '#1578#1594#1740#1740#1585
              #1605#1608#1602#1578
              #1602#1591#1593#1610
              #1583#1575#1574#1605
              #1576#1575#1591#1604#1607
              #1585#1586#1585#1608
              #1662#1740#1588' '#1606#1608#1740#1587)
            TabOrder = 7
            OnEnter = cmbEffectTypeEnter
          end
          object cmbCorrelateReciptState: TDBComboBox
            Left = 340
            Top = 195
            Width = 541
            Height = 21
            DataField = 'CorrelateReciptState'
            DataSource = srcReciptTypes
            Items.Strings = (
              #1607#1605#1607' '#1608#1590#1593#1740#1578' '#1607#1575
              #1601#1602#1591' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1591#1593#1610' '#1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '#1588#1608#1583'.'#8207
              #1601#1602#1591' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1575#1574#1605#1740' '#1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '#1588#1608#1583'.'#8207)
            TabOrder = 8
            OnEnter = cmbEffectTypeEnter
          end
          object edtPriceCo: TDBEdit
            Left = 340
            Top = 235
            Width = 541
            Height = 21
            DataField = 'PriceCo'
            DataSource = srcReciptTypes
            TabOrder = 10
          end
          object dbchkUpdateChildFromFather1: TDBCheckBox
            Left = 3
            Top = 191
            Width = 223
            Height = 17
            BiDiMode = bdLeftToRight
            Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1740' '#1601#1585#1605' '#1580#1575#1585#1740' '#1575#1586' '#1601#1585#1605' '#1662#1583#1585' '#1601#1593#1575#1604' '#1576#1575#1588#1583
            DataField = 'UpdateChildFromFather'
            DataSource = srcReciptTypes
            ParentBiDiMode = False
            TabOrder = 11
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object TabSheet17: TTabSheet
          Caption = #1590#1585#1575#1574#1576' '#1578#1576#1583#1610#1604
          ImageIndex = 1
          DesignSize = (
            1059
            450)
          object Label39: TLabel
            Left = 881
            Top = 17
            Width = 111
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1587#1585#1610#1575#1604' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '#1590#1585#1575#1574#1576
            ExplicitLeft = 600
          end
          object Label40: TLabel
            Left = 881
            Top = 91
            Width = 25
            Height = 13
            Anchors = [akTop, akRight]
            Caption = ' '#1605#1583#1604' '
            ExplicitLeft = 600
          end
          object Label84: TLabel
            Left = 881
            Top = 162
            Width = 72
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1593#1606#1608#1575#1606' '#1576#1585#1575#1610' '#1605#1583#1604
            FocusControl = edtProcedureCaption
            ExplicitLeft = 600
          end
          object Label104: TLabel
            Left = 881
            Top = 54
            Width = 48
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1601#1585#1605#1608#1604' '#1579#1576#1578
            ExplicitLeft = 600
          end
          object Label23: TLabel
            Left = 881
            Top = 198
            Width = 161
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1606#1581#1608#1607' '#1579#1576#1578' '#1588#1605#1575#1585#1607' '#1601#1585#1605' ('#1590#1585#1575#1574#1576' '#1578#1576#1583#1610#1604')'#8207
            ExplicitLeft = 600
          end
          object Label147: TLabel
            Left = 881
            Top = 237
            Width = 157
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1662#1608#1585#1587#1575#1606#1578' ('#1583#1585#1589#1583'/'#1590#1585#1740#1576') FormulaID'
            FocusControl = edtFormulaID
            ExplicitLeft = 694
          end
          object Label178: TLabel
            Left = 881
            Top = 276
            Width = 139
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1608#1590#1593#1740#1578' '#1601#1585#1605' '#1590#1585#1575#1574#1576' '#1575#1740#1580#1575#1583' '#1588#1583#1607' '
          end
          object EdtConversionCoSerial: TDBEdit
            Left = 511
            Top = 13
            Width = 364
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ConversionCoSerial'
            DataSource = srcReciptTypes
            TabOrder = 0
          end
          object CmbProcedureActive: TDBComboBox
            Left = 511
            Top = 87
            Width = 364
            Height = 21
            Anchors = [akTop, akRight]
            AutoDropDown = True
            Color = clWhite
            DataField = 'ProcedureActive'
            DataSource = srcReciptTypes
            Items.Strings = (
              #1606#1605#1575#1610#1588' '#1606#1588#1608#1583
              #1606#1605#1575#1610#1588'('#1603#1583' '#1608' '#1605#1583#1604') '#1608' '#1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591
              #1606#1605#1575#1610#1588'('#1603#1583' '#1608' '#1605#1583#1604')  '#1608' '#1711#1586#1575#1585#1588
              #1606#1605#1575#1610#1588' '#1605#1583#1604
              #1606#1605#1575#1610#1588' '#1603#1583' '
              '')
            TabOrder = 2
            OnEnter = cmbEffectTypeEnter
          end
          object GroupBox10: TGroupBox
            Left = 305
            Top = 18
            Width = 200
            Height = 179
            Caption = #1603#1583#1610#1606#1711' '#1603#1575#1604#1575#1610' '#1602#1575#1576#1604' '#1606#1605#1575#1610#1588
            TabOrder = 3
            object chklstProcedureKindList: TCheckListBox
              Left = 2
              Top = 15
              Width = 196
              Height = 162
              Hint = 'chklstProcedureKindList'
              Align = alClient
              ItemHeight = 13
              TabOrder = 0
              OnClick = ChkCustomerKind1Click
            end
          end
          object edtProcedureCaption: TDBEdit
            Left = 511
            Top = 158
            Width = 364
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ProcedureCaption'
            DataSource = srcReciptTypes
            TabOrder = 4
          end
          object cmbConversionCoSerialFormula: TDBComboBox
            Left = 511
            Top = 50
            Width = 364
            Height = 21
            Anchors = [akTop, akRight]
            AutoDropDown = True
            Color = clWhite
            DataField = 'ConversionCoSerialFormula'
            DataSource = srcReciptTypes
            Items.Strings = (
              '0-'#1601#1585#1605#1608#1604' 1'
              '1-'#1570#1582#1585#1610#1606' '#1601#1585#1605#1608#1604' '#1587#1575#1582#1578' '#1576#1585' '#1581#1587#1576' '#1605#1581#1589#1608#1604
              '2-'#1576#1585' '#1575#1587#1575#1587' '#1601#1585#1605#1608#1604' '#1587#1575#1582#1578' '#1575#1606#1578#1582#1575#1576#1610' '#1578#1608#1587#1591' '#1603#1575#1585#1576#1585' '#1583#1585' '#1601#1585#1605' '#1585#1587#1610#1583' '#1578#1608#1604#1610#1583
              '3- '#1579#1576#1578' '#1601#1585#1605#1608#1604' '#1587#1575#1582#1578' '#1575#1580#1576#1575#1585#1740' '#1575#1587#1578'.'
              '4-'#1576#1585' '#1575#1587#1575#1587' ProductCode '#1608' '#1590#1585#1740#1576' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
              '5-'#1711#1586#1740#1606#1607' '#1583#1608' '#1576#1583#1608#1606' '#1579#1576#1578' ('#1590#1585#1740#1576' '#1605#1589#1585#1601' '#1575#1587#1578#1575#1606#1583#1575#1585#1583')')
            TabOrder = 1
            OnEnter = cmbEffectTypeEnter
          end
          object cmbCorrelateCoReciptNumber_Kind: TDBComboBox
            Left = 511
            Top = 194
            Width = 364
            Height = 21
            Anchors = [akTop, akRight]
            AutoDropDown = True
            Color = clWhite
            DataField = 'CorrelateCoReciptNumber_Kind'
            DataSource = srcReciptTypes
            Items.Strings = (
              #1588#1605#1575#1585#1607' '#1601#1585#1605' '#1580#1575#1585#1610
              #1588#1605#1575#1585#1607' '#1580#1583#1610#1583' '#1576#1575' '#1578#1608#1580#1607' '#1576#1607' '#1601#1585#1605' '#1590#1585#1575#1574#1576)
            TabOrder = 5
            OnEnter = cmbEffectTypeEnter
          end
          object GroupBox18: TGroupBox
            Left = 16
            Top = 18
            Width = 200
            Height = 179
            Caption = '  '#1606#1608#1593' '#1575#1606#1576#1575#1585#1607#1575#1610' '#1605#1580#1575#1586' '#1576#1585#1575#1740' '#1605#1583#1604
            TabOrder = 6
            object chklstStoreKindProductModel: TCheckListBox
              Left = 2
              Top = 15
              Width = 196
              Height = 162
              Align = alClient
              ItemHeight = 13
              TabOrder = 0
              OnClick = ChkCustomerKind1Click
            end
          end
          object edtFormulaID: TDBEdit
            Left = 511
            Top = 232
            Width = 364
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'FormulaID'
            DataSource = srcReciptTypes
            TabOrder = 7
          end
          object CheckBox1: TCheckBox
            Left = 535
            Top = 312
            Width = 340
            Height = 17
            Anchors = [akTop, akRight]
            Caption = #1579#1576#1578' '#1576#1607#1575#1740' '#1601#1585#1608#1588' '#1705#1575#1604#1575' '#1583#1585' '#1586#1605#1575#1606' '#1579#1576#1578' '#1601#1585#1605' '#1590#1585#1575#1574#1576' '#1601#1593#1575#1604' '#1588#1608#1583'('#1705#1606#1578#1585#1604' '#1582#1575#1589')'
            Enabled = False
            TabOrder = 8
          end
          object chklstAutoCorrelateCo: TCheckListBox
            Left = 18
            Top = 203
            Width = 487
            Height = 182
            Align = alCustom
            ItemHeight = 13
            Items.Strings = (
              #1576#1593#1583' '#1575#1586' '#1579#1576#1578' '#1601#1585#1605' '#1662#1575#1610#1607' "'#1601#1585#1605' '#1590#1585#1575#1574#1576'" '#1575#1578#1608#1605#1575#1578#1610#1603' '#1579#1576#1578' '#1588#1608#1583'.'#8207
              #1583#1585' '#1586#1605#1575#1606' '#1579#1576#1578' '#1601#1585#1605' '#1590#1585#1575#1574#1576' '#1705#1583' '#1575#1606#1576#1575#1585' '#1607#1605#1575#1606' '#1705#1583' '#1575#1606#1576#1575#1585' '#1602#1576#1604#1740' '#1576#1575#1588#1583'.'
              #1578#1594#1740#1740#1585' '#1601#1585#1605#1608#1604' '#1579#1576#1578' '#1588#1583#1607' '#1705#1575#1585#1576#1585' '#1583#1585' '#1601#1585#1605#1608#1604'2 '#1575#1606#1580#1575#1605'   '#1606#1600#1600#1600#1600#1600#1588#1600#1600#1608#1583
              #1575#1579#1585' ('#1662#1608#1585#1587#1575#1606#1578' ('#1583#1585#1589#1583'/'#1590#1585#1740#1576') FormulaID) '#1583#1585' '#1581#1587#1575#1576' '#1605#1588#1578#1585#1740
              #1605#1576#1604#1594' '#1608' '#1583#1585#1589#1583' '#1662#1608#1585#1587#1575#1606#1578' '#1575#1586' '#1576#1607#1575#1740' '#1705#1604'  '#1576#1593#1583' '#1575#1586' '#1578#1582#1601#1740#1601' '#1581#1587#1575#1576' '#1588#1608#1583
              #1605#1576#1604#1594' '#1608' '#1583#1585#1589#1583' '#1662#1608#1585#1587#1575#1606#1578' '#1601#1602#1591' '#1575#1586' '#1576#1607#1575#1740' '#1705#1604' '#1581#1587#1575#1576' '#1588#1608#1583
              #1705#1606#1578#1585#1604' '#1579#1576#1578' '#1589#1581#1740#1581' '#1576#1608#1583#1606' '#1601#1585#1605#1608#1604' '#1576#1585' '#1575#1587#1575#1587' '#1705#1575#1604#1575' '#1575#1606#1580#1575#1605' '#1588#1608#1583'.'
              
                #1575#1606#1576#1575#1585' '#1575#1606#1578#1582#1575#1576#1740' '#1583#1585' '#1586#1605#1575#1606' '#1579#1576#1578' '#1601#1585#1605' '#1590#1585#1575#1574#1576' '#1575#1586' '#1575#1608#1604#1740#1606' '#1575#1606#1576#1575#1585' '#1575#1606#1578#1582#1575#1576#1740' '#1576#1585#1575#1740' ' +
                #1579#1576#1578' '#1607#1605#1607' '#1601#1585#1605' '#1607#1575' '#1575#1587#1578#1601#1575#1583#1607' '#1588#1608#1583
              #1575#1606#1576#1575#1585' '#1575#1606#1578#1582#1575#1576#1740' '#1580#1607#1578' '#1579#1576#1578' '#1576#1585' '#1581#1587#1576' '#1578#1606#1592#1740#1605#1575#1578' '#1601#1585#1605' '#1605#1602#1589#1583' '#1576#1575#1588#1583
              #1601#1585#1605' '#1590#1585#1575#1740#1576' '#1576#1607' '#1578#1575#1585#1740#1582' '#1585#1608#1586' '#1579#1576#1578' '#1588#1608#1583)
            TabOrder = 9
            OnClick = chklstAutoCorrelateCoClick
          end
          object cmbReciptStatecreatedFormCo: TDBComboBox
            Left = 511
            Top = 272
            Width = 364
            Height = 21
            Anchors = [akTop, akRight]
            AutoDropDown = True
            Color = clWhite
            DataField = 'ReciptStatecreatedFormCo'
            DataSource = srcReciptTypes
            Items.Strings = (
              #1576#1583#1608#1606' '#1578#1594#1740#1740#1585
              #1605#1608#1602#1578
              #1602#1591#1593#1610
              #1583#1575#1574#1605
              #1576#1575#1591#1604#1607
              #1585#1586#1585#1608
              #1662#1740#1588' '#1606#1608#1740#1587)
            TabOrder = 10
            OnEnter = cmbEffectTypeEnter
          end
        end
        object TabSheet18: TTabSheet
          Caption = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
          ImageIndex = 2
          DesignSize = (
            1059
            450)
          object Label41: TLabel
            Left = 904
            Top = 46
            Width = 112
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1587#1585#1610#1575#1604' '#1583#1585' Master'#8204'/'#1587#1575#1593#1578
            FocusControl = edtFormKindSerial
            ExplicitLeft = 717
          end
          object Label97: TLabel
            Left = 904
            Top = 15
            Width = 112
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1605#1581#1604' '#1606#1605#1575#1610#1588' '#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
            FocusControl = edtFormKindSerial
            ExplicitLeft = 623
          end
          object Label98: TLabel
            Left = 904
            Top = 78
            Width = 111
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1587#1585#1610#1575#1604' '#1583#1585' Details/'#1588#1740#1601#1578
            FocusControl = edtFormItemKindSerial
            ExplicitLeft = 717
          end
          object lbl14: TLabel
            Left = 509
            Top = 78
            Width = 185
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1587#1585#1610#1575#1604' '#1583#1585' '#1579#1576#1578' '#1602#1585#1575#1585#1583#1575#1583' '#1607#1575' '#1608' '#1578#1588#1603#1610#1604' '#1662#1585#1608#1606#1583#1607' '
            FocusControl = edtFormItemKindSerial
            ExplicitLeft = 228
          end
          object edtFormKindSerial: TDBEdit
            Left = 700
            Top = 42
            Width = 202
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'FormKindSerial'
            DataSource = srcReciptTypes
            TabOrder = 1
          end
          object CmbSecondTypeActive: TDBComboBox
            Left = 700
            Top = 11
            Width = 202
            Height = 21
            Anchors = [akTop, akRight]
            Color = clWhite
            DataField = 'SecondTypeActive'
            DataSource = srcReciptTypes
            Items.Strings = (
              'Details'
              'Master'#8204
              #1606#1583#1575#1585#1583
              'Master&Details')
            TabOrder = 0
            OnEnter = cmbEffectTypeEnter
          end
          object edtFormItemKindSerial: TDBEdit
            Left = 700
            Top = 74
            Width = 202
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'FormItemKindSerial'
            DataSource = srcReciptTypes
            TabOrder = 2
          end
        end
        object TabSheet23: TTabSheet
          Caption = #1582#1586#1575#1606#1607' '#1583#1575#1585#1610
          ImageIndex = 3
          DesignSize = (
            1059
            450)
          object Label21: TLabel
            Left = 879
            Top = 27
            Width = 142
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1601#1585#1605' '#1607#1575#1610' '#1582#1586#1575#1606#1607' '#1583#1575#1585#1610' '#1602#1575#1576#1604' '#1575#1585#1578#1576#1575#1591
            ExplicitLeft = 711
          end
          object SpeedButton13: TSpeedButton
            Left = 646
            Top = 22
            Width = 23
            Height = 22
            Hint = 'CofferType'
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton13Click
            ExplicitLeft = 478
          end
          object Label162: TLabel
            Left = 878
            Top = 62
            Width = 162
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1601#1585#1605' '#1582#1586#1575#1606#1607' '#1583#1575#1585#1610' '#1602#1575#1576#1604' '#1579#1576#1578' '#1575#1586' '#1587#1585#1608#1740#1587
            ExplicitLeft = 710
          end
          object SpeedButton7: TSpeedButton
            Left = 646
            Top = 62
            Width = 23
            Height = 22
            Hint = 'FormType4Service'
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton13Click
            ExplicitLeft = 478
          end
          object edtCofferType: TDBEdit
            Left = 671
            Top = 23
            Width = 202
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'CofferType'
            DataSource = srcReciptTypes
            TabOrder = 0
          end
          object edtFormType4Service: TDBEdit
            Left = 671
            Top = 62
            Width = 202
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'FormType4Service'
            DataSource = srcReciptTypes
            TabOrder = 1
          end
        end
        object ts5: TTabSheet
          Caption = #1603#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578'/'#1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607'/'#1578#1582#1601#1740#1601#1575#1578
          ImageIndex = 19
          object pgc3: TPageControl
            Left = 0
            Top = 0
            Width = 1059
            Height = 450
            ActivePage = TabSheet29
            Align = alClient
            TabOrder = 0
            object TabSheet27: TTabSheet
              Caption = #1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578
              DesignSize = (
                1051
                422)
              object Label107: TLabel
                Left = 155
                Top = 18
                Width = 45
                Height = 13
                Caption = #1603#1583' '#1581#1587#1575#1576
                FocusControl = edtDeficate_TopicCode
              end
              object Label108: TLabel
                Left = 163
                Top = 54
                Width = 51
                Height = 13
                Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610
                FocusControl = edtDeficate_DetailCode
              end
              object lbl17: TLabel
                Left = 953
                Top = 15
                Width = 81
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578
                FocusControl = edtFormKindSerial
                ExplicitLeft = 785
              end
              object Label99: TLabel
                Left = 953
                Top = 170
                Width = 79
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1585#1606#1583' '#1575#1585#1586#1588' '#1576#1740#1605#1607' '#1575#1740
                FocusControl = edtInsuranceValue
                ExplicitLeft = 785
              end
              object ChkDeficitsActive: TDBCheckBox
                Left = 786
                Top = 34
                Width = 159
                Height = 17
                Anchors = [akTop, akRight]
                Caption = #1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578' '#1601#1593#1575#1604' '#1576#1575#1588#1583
                DataField = 'DeficitsActive'
                DataSource = srcReciptTypes
                Enabled = False
                TabOrder = 1
                ValueChecked = '1'
                ValueUnchecked = '2'
              end
              object GrpDeficits1: TGroupBox
                Left = 306
                Top = 87
                Width = 669
                Height = 48
                Anchors = [akTop, akRight]
                Caption = ' '#1603#1583' '#1607#1575#1610' '#1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578' '
                TabOrder = 3
                DesignSize = (
                  669
                  48)
                object SpeedButton10: TSpeedButton
                  Left = 3
                  Top = 17
                  Width = 23
                  Height = 21
                  Anchors = [akTop, akRight]
                  Caption = '...'
                  OnClick = SpeedButton10Click
                end
                object DBEdit16: TDBEdit
                  Left = 32
                  Top = 18
                  Width = 629
                  Height = 21
                  Anchors = [akTop, akRight]
                  DataField = 'RecallReciptDeficitsType'
                  DataSource = srcReciptTypes
                  TabOrder = 0
                end
              end
              object edtDeficate_TopicCode: TDBEdit
                Left = 25
                Top = 18
                Width = 134
                Height = 21
                DataField = 'Deficate_TopicCode'
                DataSource = srcReciptTypes
                TabOrder = 0
              end
              object edtDeficate_DetailCode: TDBEdit
                Left = 25
                Top = 54
                Width = 134
                Height = 21
                DataField = 'Deficate_DetailCode'
                DataSource = srcReciptTypes
                TabOrder = 2
              end
              object dbchkDeficitValueEditing: TDBCheckBox
                Left = 743
                Top = 64
                Width = 224
                Height = 17
                Anchors = [akTop, akRight]
                Caption = #1570#1610#1575' '#1605#1576#1604#1594' '#1603#1587#1608#1585#1575#1578'/'#1578#1582#1601#1610#1601#1575#1578' '#1602#1575#1576#1604' '#1608#1610#1585#1575#1588' '#1606#1576#1575#1588#1583'.'#8207
                DataField = 'DeficitValueEditing'
                DataSource = srcReciptTypes
                TabOrder = 4
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object cmbDeficitsActive: TDBComboBox
                Left = 555
                Top = 11
                Width = 394
                Height = 21
                Anchors = [akTop, akRight]
                Color = clWhite
                DataField = 'DeficitsActive'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1594#1740#1585' '#1601#1593#1575#1604
                  #1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578' '#1601#1593#1575#1604' '#1576#1575#1588#1583
                  #1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578' '#1601#1593#1575#1604' '#1608' '#1590#1585#1740#1576' '#1583#1585' '#1586#1605#1575#1606' '#1579#1576#1578' '#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588' '#1576#1575#1588#1583)
                TabOrder = 5
                OnEnter = cmbEffectTypeEnter
              end
              object edtInsuranceValue: TDBEdit
                Left = 815
                Top = 167
                Width = 134
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'InsuranceValue'
                DataSource = srcReciptTypes
                TabOrder = 6
              end
            end
            object TabSheet29: TTabSheet
              Caption = #1578#1582#1601#1610#1601#1575#1578' '#1603#1575#1604#1575
              ImageIndex = 2
              DesignSize = (
                1051
                422)
              object Label76: TLabel
                Left = 202
                Top = 17
                Width = 100
                Height = 13
                Caption = #1606#1581#1608#1607' '#1579#1576#1578' '#1583#1585#1589#1583' '#1578#1582#1601#1610#1601
              end
              object Label139: TLabel
                Left = 200
                Top = 57
                Width = 141
                Height = 13
                Caption = #1582#1608#1575#1606#1583#1606' '#1583#1585#1589#1583' '#1578#1582#1601#1740#1601' '#1575#1586' '#1605#1588#1578#1585#1740
              end
              object dbchkDiscountActive: TDBCheckBox
                Left = 815
                Top = 53
                Width = 174
                Height = 17
                Alignment = taLeftJustify
                Anchors = [akTop, akRight]
                Caption = ' '#1583#1585#1589#1583' '#1578#1582#1601#1610#1601' '#1583#1585' Detail '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
                DataField = 'DiscountActive'
                DataSource = srcReciptTypes
                Enabled = False
                TabOrder = 0
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
              object GroupBox6: TGroupBox
                Left = 0
                Top = 291
                Width = 1051
                Height = 131
                Align = alBottom
                Caption = '  '#1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1578#1582#1601#1610#1601#1575#1578'  '
                TabOrder = 2
                DesignSize = (
                  1051
                  131)
                object Label56: TLabel
                  Left = 879
                  Top = 46
                  Width = 45
                  Height = 13
                  Anchors = [akTop, akRight]
                  BiDiMode = bdLeftToRight
                  Caption = #1603#1583' '#1581#1587#1575#1576
                  ParentBiDiMode = False
                  ExplicitLeft = 891
                end
                object Label69: TLabel
                  Left = 879
                  Top = 76
                  Width = 51
                  Height = 13
                  Anchors = [akTop, akRight]
                  BiDiMode = bdLeftToRight
                  Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610
                  ParentBiDiMode = False
                  ExplicitLeft = 598
                end
                object Label70: TLabel
                  Left = 286
                  Top = 43
                  Width = 57
                  Height = 13
                  BiDiMode = bdLeftToRight
                  Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
                  ParentBiDiMode = False
                end
                object Label71: TLabel
                  Left = 286
                  Top = 74
                  Width = 57
                  Height = 13
                  BiDiMode = bdLeftToRight
                  Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'3'
                  ParentBiDiMode = False
                end
                object edtDec_CTopicCode2: TDBEdit
                  Left = 182
                  Top = 70
                  Width = 100
                  Height = 21
                  DataField = 'Dec_CTopicCode2'
                  DataSource = srcReciptTypes
                  TabOrder = 0
                end
                object edtDec_CTopicCode: TDBEdit
                  Left = 182
                  Top = 39
                  Width = 100
                  Height = 21
                  DataField = 'Dec_CTopicCode'
                  DataSource = srcReciptTypes
                  TabOrder = 1
                end
                object edtDec_DetailCode: TDBEdit
                  Left = 775
                  Top = 72
                  Width = 100
                  Height = 21
                  Anchors = [akTop, akRight]
                  DataField = 'Dec_DetailCode'
                  DataSource = srcReciptTypes
                  TabOrder = 2
                end
                object edtDec_TopicCode: TDBEdit
                  Left = 775
                  Top = 42
                  Width = 100
                  Height = 21
                  Anchors = [akTop, akRight]
                  DataField = 'Dec_TopicCode'
                  DataSource = srcReciptTypes
                  TabOrder = 3
                end
              end
              object CmbDiscountEntryKind: TDBComboBox
                Left = 6
                Top = 13
                Width = 190
                Height = 21
                DataField = 'DiscountEntryKind'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1606#1583#1575#1585#1583
                  #1575#1591#1604#1575#1593#1575#1578' '#1605#1588#1578#1585#1610
                  #1576#1585#1581#1587#1576' '#1582#1585#1610#1583' ')
                TabOrder = 1
                OnEnter = cmbEffectTypeEnter
              end
              object dbrgrpWaterCoOrDeficitValueEdit: TDBRadioGroup
                Left = 738
                Top = 0
                Width = 309
                Height = 47
                Align = alCustom
                Anchors = [akTop, akRight]
                Caption = ' '#1606#1581#1608#1607' '#1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1578#1582#1601#1610#1601
                Columns = 4
                DataField = 'WaterCoOrDeficitValueEdit'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1583#1585#1589#1583' '#1578#1582#1601#1610#1601
                  #1605#1576#1604#1594' '#1578#1582#1601#1610#1601
                  #1607#1585#1583#1608
                  #1607#1740#1670#1705#1583#1575#1605)
                TabOrder = 3
                Values.Strings = (
                  '0'
                  '1'
                  '2'
                  '3')
              end
              object chklstDiscountActive: TCheckListBox
                Left = 624
                Top = 93
                Width = 394
                Height = 124
                Align = alCustom
                Anchors = [akTop, akRight]
                ItemHeight = 13
                Items.Strings = (
                  ' '#1583#1585#1589#1583' '#1578#1582#1601#1610#1601'   '#1583#1585' Detail '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
                  ' '#1583#1585#1589#1583' '#1578#1582#1601#1610#1601'2 '#1583#1585' Detail '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
                  ' '#1583#1585#1589#1583' '#1578#1582#1601#1610#1601'3 '#1583#1585' Detail '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
                  
                    #1583#1585#1589#1583' '#1578#1582#1601#1740#1601' 3 '#1576#1593#1583#1575#1586' '#1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607' '#1581#1587#1575#1576' '#1588#1608#1583' '#1608' '#1578#1582#1601#1740#1601' '#1605#1588#1578#1585#1740' '#1583#1585' '#1570#1606' '#1602#1585#1575#1585 +
                    ' '#1711#1740#1585#1583'.'
                  #1583#1585#1589#1583' '#1578#1582#1601#1740#1601' 3 '#1576#1575' '#1606#1608#1593' '#1578#1575#1579#1740#1585' '#1575#1601#1586#1575#1740#1606#1583#1607
                  #1583#1585#1589#1583' '#1578#1582#1601#1740#1601'  '#1602#1576#1604' '#1575#1586' '#1605#1575#1604#1740#1575#1578' '#1583#1585#1589#1583#1578#1582#1601#1740#1601' 1'
                  #1606#1605#1575#1740#1588' '#1583#1585#1589#1583' '#1578#1582#1601#1740#1601' 2 '#1605#1587#1578#1602#1604' '#1575#1586' '#1578#1582#1601#1740#1601' 1 '#1576#1575#1588#1583
                  ' '#1583#1585#1589#1583' '#1578#1582#1601#1610#1601'4 '#1583#1585' Detail '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207)
                TabOrder = 4
                OnClick = chklstDiscountActiveClick
              end
              object cmbCustomersNoDiscount: TDBComboBox
                Left = 6
                Top = 53
                Width = 190
                Height = 21
                DataField = 'CustomersNoDiscount'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1662#1740#1588' '#1601#1585#1590' '#1740#1575' '#1605#1588#1578#1585#1740' 1'
                  #1605#1588#1578#1585#1740' 1'
                  #1605#1588#1578#1585#1740' 2')
                TabOrder = 5
                OnEnter = cmbEffectTypeEnter
              end
            end
            object TabSheet37: TTabSheet
              Caption = #1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607
              ImageIndex = 3
              DesignSize = (
                1051
                422)
              object Label119: TLabel
                Left = 901
                Top = 49
                Width = 127
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1590#1585#1610#1576' '#1605#1575#1604#1610#1575#1578' '#1576#1585' '#1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607
                FocusControl = edtVATCo
                ExplicitLeft = 620
              end
              object Label120: TLabel
                Left = 901
                Top = 90
                Width = 59
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1578#1593#1583#1575#1583' '#1585#1602#1605' '#1585#1606#1583
                FocusControl = edtVATRound
                ExplicitLeft = 620
              end
              object Label105: TLabel
                Left = 408
                Top = 9
                Width = 57
                Height = 13
                Caption = #1606#1585#1582#8207#1575#1587#1578#1575#1606#1583#1575#1585#1583
              end
              object DBCheckBox3: TLabel
                Left = 901
                Top = 9
                Width = 105
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                BiDiMode = bdRightToLeft
                Caption = #1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607' '#1601#1593#1575#1604' '#1576#1575#1588#1583
                ParentBiDiMode = False
                WordWrap = True
                ExplicitLeft = 714
              end
              object edtVATCo: TDBEdit
                Left = 675
                Top = 45
                Width = 222
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'VATCo'
                DataSource = srcReciptTypes
                TabOrder = 0
              end
              object edtVATRound: TDBEdit
                Left = 675
                Top = 86
                Width = 222
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'VATRound'
                DataSource = srcReciptTypes
                TabOrder = 1
              end
              object cmbStandardRateActive: TDBComboBox
                Left = 19
                Top = 5
                Width = 383
                Height = 21
                Color = clWhite
                DataField = 'StandardRateActive'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1601#1593#1575#1604' '#1606#1576#1575#1588#1583
                  #1601#1593#1575#1604' '#1576#1575#1588#1583
                  
                    #1576#1585' '#1575#1587#1575#1587' '#1583#1585#1589#1583' "'#1590#1585#1610#1576' '#1605#1575#1604#1610#1575#1578' '#1576#1585' '#1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607'"  '#1603#1605#1578#1585' '#1575#1586' '#1601#1610' '#1605#1588#1582#1589' '#1588#1583#1607' '#1576 +
                    #1575#1588#1583
                  #1601#1593#1575#1604' '#1576#1575#1588#1583' '#1608' '#1576#1585' '#1575#1587#1575#1587' '#1601#1585#1605#1608#1604' '#1587#1575#1582#1578' '#1662#1585' '#1588#1608#1583)
                TabOrder = 3
                OnEnter = cmbEffectTypeEnter
              end
              object dbchkChekingTaxPrint: TDBCheckBox
                Left = 689
                Top = 135
                Width = 208
                Height = 17
                Anchors = [akTop, akRight]
                BiDiMode = bdRightToLeft
                Caption = #1705#1606#1578#1585#1604' '#1670#1575#1662' '#1580#1607#1578' '#1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607' '#1575#1593#1605#1575#1604' '#1588#1608#1583'.'#8207
                DataField = 'ChekingTaxPrint'
                DataSource = srcReciptTypes
                ParentBiDiMode = False
                TabOrder = 4
                ValueChecked = '1'
                ValueUnchecked = '0'
                WordWrap = True
              end
              object cmbVATActive: TDBComboBox
                Left = 675
                Top = 7
                Width = 222
                Height = 21
                Anchors = [akTop, akRight]
                BiDiMode = bdRightToLeft
                DataField = 'VATActive'
                DataSource = srcReciptTypes
                Items.Strings = (
                  #1594#1740#1585' '#1601#1593#1575#1604
                  #1601#1593#1575#1604' '#1608' '#1583#1585#1589#1583' '#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588' '#1576#1575#1588#1583
                  #1601#1593#1575#1604' '#1608' '#1583#1585#1589#1583' '#1608' '#1605#1576#1604#1594' '#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588' '#1576#1575#1588#1583
                  #1601#1593#1575#1604' '#1608' '#1605#1576#1604#1594' '#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588' '#1576#1575#1588#1583)
                ParentBiDiMode = False
                ParentColor = True
                TabOrder = 2
              end
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = #1606#1608#1593' '#1578#1575#1579#1610#1585' '#1576#1585' '#1575#1591#1604#1575#1593#1575#1578' '
          ImageIndex = 17
          object GroupBox2: TGroupBox
            Left = 0
            Top = 0
            Width = 412
            Height = 392
            Align = alLeft
            Caption = ' '#1578#1606#1592#1610#1605#1575#1578' '#1601#1585#1605' '#1607#1575#1610' '#1603#1575#1607#1606#1583#1607' '#1605#1608#1580#1608#1583#1610' '
            TabOrder = 0
            object lblIncreasingInventoryStore: TLabel
              Left = 263
              Top = 66
              Width = 142
              Height = 13
              BiDiMode = bdLeftToRight
              Caption = #1603#1583' '#1575#1606#1576#1575#1585' '#1605#1608#1579#1585' '#1576#1585' '#1575#1601#1586#1575#1610#1606#1583#1607' '#1605#1608#1580#1608#1583#1610
              ParentBiDiMode = False
            end
            object cmbIncreasingInventoryStore: TDBComboBox
              Left = 88
              Top = 64
              Width = 169
              Height = 21
              Color = clWhite
              DataField = 'IncreasingInventoryStore'
              DataSource = srcReciptTypes
              Items.Strings = (
                #1606#1583#1575#1585#1583
                #1575#1606#1576#1575#1585' 1'
                #1575#1606#1576#1575#1585' 2')
              TabOrder = 0
              OnEnter = cmbEffectTypeEnter
            end
            object dbchkIncreasingInventory: TDBCheckBox
              Left = 88
              Top = 25
              Width = 273
              Height = 17
              BiDiMode = bdRightToLeft
              Caption = #1575#1610#1606' '#1601#1585#1605' '#1576#1589#1608#1585#1578' '#1607#1605#1586#1605#1575#1606' '#1575#1601#1586#1575#1610#1606#1583#1607' '#1605#1608#1580#1608#1583#1610' '#1606#1610#1586' '#1605#1610' '#1576#1575#1588#1583'.'
              DataField = 'IncreasingInventory'
              DataSource = srcReciptTypes
              ParentBiDiMode = False
              TabOrder = 1
              ValueChecked = '1'
              ValueUnchecked = '0'
              WordWrap = True
            end
          end
          object chklstIneffectiveInputChk: TCheckListBox
            Left = 0
            Top = 392
            Width = 1059
            Height = 58
            Align = alBottom
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = clGradientInactiveCaption
            Columns = 1
            ItemHeight = 13
            Items.Strings = (
              #1582#1606#1579#1740' '#1705#1585#1583#1606' '#1578#1575#1579#1740#1585' '#1605#1602#1583#1575#1585#1740' '#1601#1585#1605' '#1608#1585#1608#1583#1740
              #1575#1740#1606' '#1601#1585#1605' '#1583#1585' '#1605#1581#1575#1587#1576#1607' '#1576#1607#1575#1740' '#1578#1605#1575#1605' '#1588#1583#1607' '#1605#1608#1579#1585' '#1607#1587#1578'('#1602#1740#1605#1578' '#1582#1585#1740#1583')'#1581#1608#1575#1604#1607'  '
              #1575#1740#1606' '#1601#1585#1605' '#1583#1585' '#1605#1581#1575#1587#1576#1607' '#1576#1607#1575#1740' '#1578#1605#1575#1605' '#1588#1583#1607' '#1605#1608#1579#1585' '#1607#1587#1578'('#1602#1740#1605#1578' '#1601#1585#1608#1588')'#1601#1575#1705#1578#1608#1585' ')
            TabOrder = 1
            OnClick = chklstSettingsClick
          end
          object Panel10: TPanel
            Left = 412
            Top = 0
            Width = 647
            Height = 392
            Align = alClient
            TabOrder = 2
            object lbl8: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 639
              Height = 13
              Align = alTop
              Alignment = taRightJustify
              BiDiMode = bdLeftToRight
              Caption = #1606#1608#1593' '#1578#1575#1579#1610#1585' '#1576#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1606#1576#1575#1585
              ParentBiDiMode = False
              ExplicitLeft = 536
              ExplicitWidth = 107
            end
            object lbl9: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 44
              Width = 639
              Height = 13
              Align = alTop
              Alignment = taRightJustify
              BiDiMode = bdLeftToRight
              Caption = #1606#1608#1593' '#1578#1575#1579#1610#1585' '#1576#1585' '#1601#1585#1608#1588
              ParentBiDiMode = False
              ExplicitLeft = 565
              ExplicitWidth = 78
            end
            object Label101: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 84
              Width = 639
              Height = 13
              Align = alTop
              Alignment = taRightJustify
              BiDiMode = bdLeftToRight
              Caption = #1606#1608#1593' '#1578#1575#1579#1610#1585' '#1576#1585' '#1582#1585#1610#1583
              ParentBiDiMode = False
              ExplicitLeft = 572
              ExplicitWidth = 71
            end
            object cmbEffectType: TDBComboBox
              Left = 1
              Top = 20
              Width = 645
              Height = 21
              Align = alTop
              Color = clWhite
              DataField = 'EffectType'
              DataSource = srcReciptTypes
              Items.Strings = (
                '0-'#1582#1606#1579#1610' '#1575#1601#1586#1575#1610#1606#1583#1607
                '1-'#1570#1605#1575#1583#1607' '#1580#1607#1578' '#1575#1601#1586#1575#1610#1606#1583#1607' '#1605#1608#1580#1608#1583#1610
                '2-'#1575#1601#1586#1575#1610#1606#1583#1607' '#1605#1608#1580#1608#1583#1610
                '3-'#1570#1605#1575#1583#1607' '#1580#1607#1578' '#1603#1575#1607#1606#1583#1607' '#1605#1608#1580#1608#1583#1610
                '4-'#1603#1575#1607#1606#1583#1607' '#1605#1608#1580#1608#1583#1610
                '5-'#1582#1606#1579#1610' '#1603#1575#1607#1606#1583#1607
                '6-'#1575#1590#1575#1601#1575#1578' '#1575#1606#1576#1575#1585' '#1711#1585#1583#1575#1606#1610
                '7-'#1603#1587#1585#1610' '#1575#1606#1576#1575#1585' '#1711#1585#1583#1575#1606#1610
                '8-'#1705#1575#1607#1606#1583#1607'  '#1608' '#1575#1601#1586#1575#1740#1606#1583#1607' '#1605#1608#1580#1608#1583#1740
                '9-'#1705#1575#1604#1575#1740' '#1583#1585' '#1585#1575#1607)
              TabOrder = 0
              OnEnter = cmbEffectTypeEnter
            end
            object cmbSellEffect: TDBComboBox
              Left = 1
              Top = 60
              Width = 645
              Height = 21
              Align = alTop
              Color = clWhite
              DataField = 'SellEffect'
              DataSource = srcReciptTypes
              Items.Strings = (
                #1606#1583#1575#1585#1583
                #1605#1579#1576#1578
                #1605#1606#1601#1610)
              TabOrder = 1
              OnEnter = cmbEffectTypeEnter
            end
            object cmbBuyEffect: TDBComboBox
              Left = 1
              Top = 100
              Width = 645
              Height = 21
              Align = alTop
              Color = clWhite
              DataField = 'BuyEffect'
              DataSource = srcReciptTypes
              Items.Strings = (
                #1606#1583#1575#1585#1583
                #1605#1579#1576#1578
                #1605#1606#1601#1610
                #1605#1606#1601#1740' ('#1576#1583#1608#1606' '#1602#1740#1605#1578' '#1711#1584#1575#1585#1740' '#1575#1606#1576#1575#1585')')
              TabOrder = 2
              OnEnter = cmbEffectTypeEnter
            end
          end
        end
        object TabSheet15: TTabSheet
          Caption = #1711#1585#1583#1588' '#1705#1575#1585
          ImageIndex = 19
          DesignSize = (
            1059
            450)
          object Label130: TLabel
            Left = 951
            Top = 30
            Width = 43
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1711#1585#1583#1588' '#1705#1575#1585
            ExplicitLeft = 670
          end
        end
        object TabSheet7: TTabSheet
          Caption = #1601#1610#1604#1583' '#1607#1575#1610' '#1582#1575#1589
          ImageIndex = 18
          object dbchkEarthFieldGateActive: TDBCheckBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1053
            Height = 17
            Hint = #1576#1593#1583' '#1575#1586' '#1601#1593#1575#1604' '#1603#1585#1583#1606' '#1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1575#1606#1580#1575#1605' '#1588#1608#1583
            Align = alTop
            BiDiMode = bdRightToLeft
            Caption = #1601#1610#1604#1583' '#1607#1575#1610' '#1605#1586#1585#1593#1607' '#1608' '#1602#1591#1593#1607' '#1576#1607' "'#1580#1583#1608#1604'" '#1608' '#1601#1585#1605' '#1575#1590#1575#1601#1607' '#1588#1608#1606#1583
            DataField = 'EarthFieldGateActive'
            DataSource = srcReciptTypes
            ParentBiDiMode = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
            WordWrap = True
          end
          object dbchkStartEndHourActive: TDBCheckBox
            AlignWithMargins = True
            Left = 3
            Top = 26
            Width = 1053
            Height = 17
            Hint = #1576#1593#1583' '#1575#1586' '#1601#1593#1575#1604' '#1603#1585#1583#1606' '#1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1575#1606#1580#1575#1605' '#1588#1608#1583
            Align = alTop
            BiDiMode = bdRightToLeft
            Caption = #1587#1575#1593#1578' '#1588#1585#1608#1593' '#1608' '#1662#1575#1610#1575#1606' '#1601#1593#1575#1604' '#1576#1575#1588#1583'('#1583#1587#1578#1608#1585' '#1603#1575#1585')'
            DataField = 'StartEndHourActive'
            DataSource = srcReciptTypes
            ParentBiDiMode = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            ValueChecked = '1'
            ValueUnchecked = '0'
            WordWrap = True
          end
          object dbchkRecuestActive: TDBCheckBox
            AlignWithMargins = True
            Left = 3
            Top = 49
            Width = 1053
            Height = 17
            Align = alTop
            BiDiMode = bdRightToLeft
            Caption = #1601#1740#1604#1583#1607#1575#1740' '#1588#1605#1575#1585#1607' '#1578#1602#1575#1590#1575' '#1608' '#1578#1575#1585#1610#1582' '#1578#1602#1575#1590#1575#1608'... '#1601#1593#1575#1604' '#1588#1608#1606#1583
            Ctl3D = False
            DataField = 'RecuestActive'
            DataSource = srcReciptTypes
            Enabled = False
            ParentBiDiMode = False
            ParentCtl3D = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '0'
            WordWrap = True
          end
          object chklstRecuestActive: TCheckListBox
            Left = 0
            Top = 69
            Width = 1059
            Height = 381
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = clMoneyGreen
            Columns = 1
            ItemHeight = 13
            Items.Strings = (
              #1601#1740#1604#1583#1607#1575#1740' '#1588#1605#1575#1585#1607' '#1578#1602#1575#1590#1575' '#1608' '#1578#1575#1585#1610#1582' '#1578#1602#1575#1590#1575#1608'... '#1601#1593#1575#1604' '#1588#1608#1606#1583
              #1601#1602#1591' '#1578#1575#1585#1740#1582' '#1578#1602#1575#1590#1575' '#1601#1593#1575#1604' '#1608' '#1662#1585' '#1705#1585#1583#1606' '#1578#1575#1585#1740#1582' '#1575#1580#1576#1575#1585#1740' '#1576#1575#1588#1583
              #1588#1606#1575#1587#1607' '#1740#1705#1578#1575#1740' '#1579#1576#1578' '#1602#1585#1575#1585#1583#1575#1583' '#1581#1602' '#1575#1604#1593#1605#1604' '#1705#1575#1585#1740' '#1601#1593#1575#1604' '#1576#1575#1588#1583
              #1605#1585#1705#1586' '#1601#1585#1608#1588' SellsEmporium '#1583#1585' '#1578#1594#1740#1740#1585' '#1605#1588#1578#1585#1740' 1 '#1583#1585' '#1601#1585#1605' '#1575#1593#1605#1575#1604' '#1588#1608#1583
              #1606#1581#1608#1607' '#1601#1585#1608#1588'   SellsMethod   '#1583#1585' '#1578#1594#1740#1740#1585' '#1605#1588#1578#1585#1740' 1 '#1583#1585' '#1601#1585#1605' '#1575#1593#1605#1575#1604' '#1588#1608#1583
              ''
              #1601#1740#1604#1578#1585' '#1605#1585#1705#1586' '#1601#1585#1608#1588' '#1583#1586' '#1586#1605#1575#1606' '#1575#1593#1604#1575#1605#1740#1607' '#1602#1740#1605#1578' '#1583#1585' '#1606#1592#1585' '#1711#1585#1601#1578#1607' '#1606#1600#1600#1600#1600#1600#1600#1600#1588#1608#1583
              #1607#1606#1711#1575#1605' '#1580#1583#1740#1583' '#1586#1583#1606' '#1576#1575#1586#1740#1575#1576#1740' '#1575#1591#1604#1575#1593#1575#1578' '#1584#1582#1740#1585#1607' '#1588#1583#1607' '#1575#1606#1580#1575#1605' '#1606#1588#1608#1583
              #1578#1593#1583#1575#1583'/'#1605#1602#1583#1575#1585' '#1583#1585' '#1601#1585#1605' '#1578#1608#1586#1740#1606' '#1601#1593#1575#1604' '#1576#1575#1588#1583)
            TabOrder = 3
            OnClick = chklstSettingsClick
          end
        end
        object TabSheet28: TTabSheet
          Caption = #1705#1606#1578#1585#1604' '#1582#1575#1589
          ImageIndex = 20
          object chklstShowNotEntityOnSearch: TCheckListBox
            Left = 0
            Top = 0
            Width = 1059
            Height = 224
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            Columns = 2
            ItemHeight = 13
            Items.Strings = (
              
                #1580#1587#1578#1580#1608' '#1583#1575#1582#1604' '#1580#1583#1608#1604' '#1576#1585' '#1585#1608#1740' '#1705#1575#1604#1575#1607#1575':'#1570#1610#1575' '#1603#1575#1604#1575#1610' '#1601#1575#1602#1583' '#1605#1608#1580#1608#1583#1610' '#1583#1585' '#1580#1587#1578#1580#1608#1610' '#1603#1583 +
                #1610#1606#1711' '#1581#1584#1601' '#1588#1608#1583
              
                #1580#1587#1578#1580#1608' '#1583#1575#1582#1604' '#1580#1583#1608#1604' '#1576#1585' '#1585#1608#1740' '#1705#1575#1604#1575#1607#1575':'#1705#1575#1604#1575#1607#1575#1740' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607' '#1608' '#1579#1576#1578' '#1588#1583#1607' '#1583#1740#1711#1585' ' +
                #1583#1585' '#1580#1587#1578#1580#1608' '#1606#1605#1575#1740#1588' '#1606#1588#1608#1583
              #1705#1606#1578#1585#1604' '#1605#1608#1580#1608#1583#1740' '#1576#1585#1575#1740' '#1580#1604#1608#1711#1740#1585#1740' '#1575#1586' '#1605#1606#1601#1740' '#1588#1583#1606' '#1605#1608#1580#1608#1583#1740' '#1585#1608#1740' '#1601#1585#1605' '#1608#1575#1585#1583#1607
              
                #1605#1581#1583#1608#1583' '#1705#1585#1583#1606' '#1670#1575#1662' '#1576#1607' '#1740#1705' '#1589#1601#1581#1607' '#1576#1585#1575#1740' '#1575#1585#1587#1575#1604' '#1576#1607' '#1583#1575#1585#1575#1574#1740' '#1601#1593#1575#1604' '#1588#1608#1583'.(PiplnBa' +
                'rcode'#1576#1580#1575#1740'ppDBPipeline2)'#1583#1585' '#1662#1740#1705#1585#1576#1606#1583#1740' '#1587#1740#1587#1578#1605' '#1578#1593#1583#1575#1583' '#1587#1591#1585#1607#1575#1740' '#1670#1575#1662'  '#1605#1588#1582#1589' ' +
                #1588#1608#1583
              #1705#1606#1578#1585#1604' '#1605#1608#1580#1608#1583#1740' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1588#1583#1607' '#1583#1585' '#1579#1576#1578
              
                #1583#1585' '#1586#1605#1575#1606' '#1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591' : '#1578#1575#1585#1740#1582' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '#1548' '#1578#1575#1585#1740#1582' '#1580#1575#1585#1740' '#1586#1605#1575#1606' '#1579#1576#1578' '#1576#1575 +
                #1588#1583
              
                #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1575#1604#1610#1575#1578#1610' '#1605#1588#1578#1585#1610#1575#1606' '#1583#1585' '#1586#1605#1575#1606' '#1579#1576#1578' '#1583#1585' '#1605#1593#1585#1601#1610' '#1605#1588#1578#1585#1610#1575#1606' '#1575#1580#1576#1575#1585#1610 +
                ' '#1576#1575#1588#1583'.'
              #1670#1575#1662' '#1576#1575#1585#1705#1583' '#1576#1585' '#1575#1587#1575#1587' '#1608#1586#1606
              #1581#1583#1575#1602#1604' '#1605#1740#1586#1575#1606' '#1582#1585#1740#1583' '#1607#1601#1578#1711#1740' '#1705#1606#1578#1585#1604' '#1588#1608#1583
              #1585#1583#1740#1601' '#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588' '#1583#1585' '#1587#1591#1585#1607#1575#1740' '#1601#1585#1605' '#1601#1593#1575#1604' '#1576#1575#1588#1583
              #1578#1575#1585#1740#1582' '#1575#1740#1578#1605' '#1575#1586' '#1578#1575#1585#1740#1582' '#1601#1585#1605' '#1662#1585' '#1588#1608#1583
              #1578#1575#1585#1740#1582' '#1601#1585#1605' '#1576#1589#1608#1585#1578' '#1605#1740#1604#1575#1583#1740' '#1606#1740#1586' '#1606#1605#1575#1740#1588' '#1608' '#1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1588#1608#1583
              
                #1608#1586#1606' '#1662#1585' '#1608' '#1582#1575#1604#1740' '#1605#1575#1588#1740#1606' '#1583#1585' '#1605#1587#1578#1585' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207'/'#1583#1585' '#1601#1585#1605' '#1578#1608#1586#1740#1606' '#1605#1588#1578#1585#1740' 1 '#1583#1585' ' +
                #1605#1587#1578#1585' '#1601#1585#1605' '#1579#1576#1578' '#1588#1608#1583'.'
              
                #1670#1575#1662' '#1576#1575#1585' '#1705#1583' '#1594#1740#1585' '#1601#1593#1575#1604' '#1588#1608#1583'  - '#1705#1583' '#1605#1583#1604' ( '#1575#1605#1608#1575#1604#1740' )'#1662#1740#1588' '#1601#1585#1590' '#1575#1586' '#1587#1591#1585' '#1602#1576#1604' '#1576 +
                #1575#1588#1583'.'
              
                #1583#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1705#1605#1705#1740'('#1605#1587#1578#1585') '#1601#1585#1605' '#1607#1575#1740' '#1582#1586#1575#1606#1607' '#1588#1605#1575#1585#1607' '#1608' '#1578#1575#1585#1740#1582' '#1601#1585#1605' '#1580#1575#1585#1740' '#1605#1606#1578#1602#1604 +
                ' '#1588#1608#1583
              #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1576#1575#1587#1705#1608#1604' '#1602#1575#1576#1604' '#1575#1606#1578#1582#1575#1576' '#1583#1585' '#1601#1585#1605' '#1576#1575#1588#1583
              #1601#1593#1575#1604' '#1588#1583#1606' '#1608#1590#1593#1610#1578' '#1662#1610#1588' '#1601#1585#1590' '#1601#1585#1608#1588
              #1606#1605#1575#1740#1588' '#1587#1578#1608#1606' '#1578#1593#1583#1740#1604#1575#1578' '#1583#1585' '#1601#1585#1605
              #1705#1606#1578#1585#1604' '#1575#1593#1578#1576#1575#1585' '#1605#1588#1578#1585#1740' '#1575#1586' '#1605#1575#1606#1583#1607' '#1575#1587#1606#1575#1583' '#1570#1606#1607#1575' '#1576#1575#1588#1583'.'
              #1583#1585' '#1586#1605#1575#1606' '#1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591' : '#1575#1585#1578#1576#1575#1591' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1588#1583#1607' '#1575#1606#1578#1602#1575#1604' '#1740#1575#1576#1583'.'
              #1581#1583#1575#1602#1604' '#1705#1575#1585#1578#1606' '#1582#1585#1608#1580#1740' '#1576#1585#1575#1740' '#1705#1575#1604#1575' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
              
                #1603#1662#1610' ('#1603#1583#1591#1585#1601' '#1602#1585#1575#1585#1583#1575#1583') '#1576#1607' '#1605#1588#1578#1585#1610' '#1575#1585#1578#1576#1575#1591' '#1610#1603' '#1576#1607' '#1610#1603' '#1579#1576#1578' '#1602#1585#1575#1585#1583#1575#1583' '#1607#1575' '#1608' '#1578#1588 +
                #1603#1610#1604' '#1662#1585#1608#1606#1583#1607'  '#1576#1575' '#1605#1593#1585#1601#1610' '#1605#1588#1578#1585#1610#1575#1606
              #1579#1576#1578' '#1576#1607#1575#1740' '#1601#1585#1608#1588' '#1705#1575#1604#1575' '#1583#1585' '#1586#1605#1575#1606' '#1579#1576#1578' '#1601#1585#1605' '#1590#1585#1575#1574#1576' '#1601#1593#1575#1604' '#1588#1608#1583
              
                #1607#1586#1740#1606#1607' '#1575#1606#1576#1575#1585#1583#1575#1585#1740'('#1601#1585#1605' '#1580#1583#1608#1604#1740')    '#1740#1575' '#1606#1608#1593'  '#1576#1575#1585#1711#1740#1585#1740'('#1601#1585#1605' '#1578#1608#1586#1740#1606')  '#1575#1590#1575#1601#1607' ' +
                #1588#1608#1583
              #1581#1580#1605' '#1705#1575#1604#1575' '#1576#1580#1575#1740' "'#1578#1593#1583#1575#1583' '#1583#1585' '#1705#1740#1587#1607'" '#1601#1593#1575#1604' '#1588#1608#1583'('#1601#1585#1605' '#1578#1608#1586#1740#1606')'
              #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1606#1576#1575#1585' 2 '#1575#1580#1576#1575#1585#1740' '#1606#1576#1575#1588#1583
              #1583#1585' '#1601#1585#1605' '#1578#1608#1586#1740#1606' '#1608#1586#1606' '#1582#1575#1604#1740' '#1575#1586' '#1605#1588#1578#1585#1740' 2 '#1582#1608#1575#1606#1583#1607' '#1588#1608#1583'(CHK InfoWeight)'
              #1578#1606#1592#1740#1605' '#1608' '#1705#1606#1578#1585#1604' '#1670#1575#1662' '#1576#1585' '#1575#1587#1575#1587' '#1605#1585#1705#1586' '#1601#1585#1608#1588' '#1601#1593#1575#1604' '#1588#1608#1583
              #1605#1581#1604' '#1605#1589#1585#1601' '#1576#1589#1608#1585#1578' '#1662#1740#1588' '#1601#1585#1590' '#1589#1601#1585' '#1602#1585#1575#1585' '#1583#1575#1583#1607' '#1588#1608#1583'.'
              #1608#1740#1585#1575#1740#1588' '#1587#1575#1593#1578' '#1583#1585' '#1601#1585#1605' '#1578#1608#1586#1740#1606
              #1578#1575#1585#1740#1582' '#1588#1585#1608#1593' '#1608' '#1662#1575#1740#1575#1606' '#1583#1585' '#1583#1585' '#1570#1740#1578#1605' '#1606#1605#1575#1740#1588' '#1588#1608#1583)
            TabOrder = 0
            OnClick = chklstShowNotEntityOnSearchClick
          end
          object chklstSettings: TCheckListBox
            Left = 0
            Top = 224
            Width = 1059
            Height = 226
            Align = alBottom
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = clGradientInactiveCaption
            Columns = 2
            ItemHeight = 13
            Items.Strings = (
              #1578#1593#1583#1575#1583' '#1583#1585' '#1705#1575#1585#1578#1606' '#1602#1575#1576#1604' '#1606#1605#1575#1740#1588' '#1608' '#1608#1740#1585#1575#1740#1588' '#1576#1575#1588#1583'.'
              #1590#1585#1740#1576' '#1608#1575#1581#1583' '#1605#1588#1578#1585#1705' '#1583#1585' '#1601#1585#1605' '#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588' '#1576#1575#1588#1583'.'
              #1583#1585' '#1601#1585#1605' '#1578#1608#1586#1740#1606'  '#1608#1586#1606' '#1583#1608#1605' '#1583#1585' '#1582#1575#1604#1589' '#1602#1585#1575#1585' '#1711#1740#1585#1583'. '
              
                #1583#1585' '#1586#1605#1575#1606' '#1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591' : '#1588#1605#1575#1585#1607' '#1705#1605#1705#1740' '#1605#1587#1578#1585' '#1575#1606#1578#1602#1575#1604' '#1583#1575#1583#1607' '#1606#1588#1608#1583'('#1606#1600#1600#1600#1600#1600#1600 +
                #1588#1600#1600#1608#1583')'
              #1606#1608#1593' '#1575#1585#1586' 2 '#1583#1585' Detail '#1601#1593#1575#1604' '#1588#1608#1583
              #1578#1576#1583#1740#1604' '#1576#1607' '#1578#1606#1575#1688' '#1583#1585' '#1605#1581#1575#1587#1576#1607' '#1605#1602#1583#1575#1585' '#1575#1585#1586' '#1575#1606#1580#1575#1605' '#1588#1608#1583
              #1588#1605#1575#1585#1607' '#1578#1593#1585#1601#1607' '#1606#1605#1575#1740#1588' '#1588#1608#1583'.'
              #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1575#1588#1740#1606' '#1583#1585' Master '#1575#1580#1576#1575#1585#1740' '#1576#1575#1588#1583'.'
              #1578#1575#1740#1740#1583' '#1601#1585#1605' '#1585#1608#1740' '#1587#1575#1740#1578' '#1601#1593#1575#1604' '#1576#1575#1588#1583
              #1578#1593#1583#1575#1583' '#1580#1586#1574#1740#1575#1578' '#1601#1593#1575#1604' '#1576#1575#1588#1583
              #1578#1575#1585#1740#1582' '#1605#1581#1583#1608#1583#1607' '#1711#1586#1575#1585#1588' '#1575#1586' '#1578#1606#1592#1740#1605#1575#1578' '#1587#1740#1587#1578#1605' '#1576#1575#1588#1583
              #1601#1602#1591' '#1578#1575#1585#1740#1582' '#1585#1608#1586' '#1601#1585#1605' '#1576#1575#1587#1705#1608#1604' '#1583#1585' '#1575#1585#1578#1576#1575#1591' '#1603#1583' '#1576#1575#1587#1705#1608#1604' '#1606#1605#1575#1740#1588' '#1588#1608#1583
              #1608#1586#1606' '#1605#1588#1578#1585#1740' '#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588' '#1583#1585' '#1601#1585#1605' '#1576#1575#1588#1583
              #1578#1594#1740#1740#1585' '#1705#1583' '#1605#1588#1578#1585#1740' '#1608' '#1601#1585#1605' '#1607#1575#1740' '#1605#1585#1578#1576#1591' '#1608' '#1601#1585#1575#1582#1608#1575#1606' '#1588#1583#1607'('#1576#1575' '#1587#1591#1581' '#1583#1587#1578#1585#1587#1740')'
              #1705#1583#1740#1606#1711' '#1581#1587#1575#1576#1583#1575#1585#1740' '#1705#1587#1608#1585#1575#1578' '#1575#1590#1575#1601#1575#1578' '#1583#1585' '#1607#1606#1711#1575#1605' '#1579#1576#1578' '#1606#1605#1575#1740#1588' '#1608' '#1605#1588#1582#1589' '#1588#1608#1583
              #1601#1602#1591' '#1740#1607' '#1608#1590#1593#1740#1578' '#1583#1575#1574#1605' '#1576#1585' '#1581#1587#1576' TruckNumber '#1583#1585' '#1607#1585' '#1601#1585#1605' '#1583#1575#1588#1578#1607' '#1576#1575#1588#1740#1605'.'
              #1576#1593#1583' '#1575#1586' '#1705#1662#1740' '#1601#1585#1605' '#1608#1590#1593#1740#1578' '#1601#1585#1605' '#1605#1576#1583#1575'    '#1602#1591#1593#1740'     '#1588#1608#1583
              #1576#1593#1583' '#1575#1586' '#1705#1662#1740' '#1601#1585#1605' '#1608#1590#1593#1740#1578' '#1601#1585#1605' '#1605#1576#1583#1575'  '#1662#1740#1588' '#1606#1608#1740#1587' '#1588#1608#1583
              #1607#1606#1711#1575#1605' '#1586#1583#1606' '#1705#1662#1740' '#1601#1585#1605' '#1583#1585' '#1589#1608#1585#1578' '#1579#1576#1578' '#1606#1576#1608#1583#1606' '#1601#1585#1605' '#1605#1585#1578#1576#1591#1548' '#1570#1606' '#1601#1585#1605' '#1579#1576#1578' '#1711#1585#1583#1583
              'TruckNumber '#1583#1585' '#1605#1581#1583#1608#1583#1607' '#1604#1740#1587#1578' '#1575#1590#1575#1601#1607' '#1588#1608#1583
              #1578#1594#1740#1740#1585' '#1608#1590#1593#1740#1578' '#1576#1607' '#1662#1740#1588' '#1606#1608#1740#1587' '#1608' '#1585#1586#1585#1608' '#1583#1585' '#1604#1740#1587#1578' '#1601#1593#1575#1604' '#1588#1608#1583
              
                #1705#1583' '#1605#1588#1578#1585#1740' 2 '#1576#1580#1575#1740' '#1705#1583#1605#1588#1578#1585#1740' 1 '#1583#1585' '#1705#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578' '#1587#1740#1587#1578#1605#1740' '#1583#1585' '#1606#1592#1585' '#1711#1585#1601#1578#1607' '#1588 +
                #1608#1583
              #1601#1585#1605' '#1607#1575#1740' '#1662#1740#1588' '#1606#1608#1740#1587' '#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588' '#1606#1576#1575#1588#1606#1583
              
                #1583#1585' '#1586#1605#1575#1606' '#1588#1605#1575#1585#1607' '#1711#1584#1575#1585#1740' '#1588#1605#1575#1585#1607' '#1601#1585#1605' TruckNumber  '#1576#1607' '#1593#1606#1608#1575#1606' '#1588#1605#1575#1585#1607' '#1602#1576#1604#1740' '#1580 +
                #1575#1740#1711#1586#1740#1606' '#1588#1608#1583
              #1605#1602#1583#1575#1585' '#1711#1585#1601#1578#1606' AidNumber  '#1575#1586'  Amount1  '#1583#1585' '#1601#1585#1605' '#1578#1608#1586#1740#1606' '
              #1606#1605#1575#1740#1588' '#1705#1583' '#1581#1587#1575#1576#1583#1575#1585#1740' '#1583#1585' '#1587#1740#1587#1578#1605' '#1575#1606#1576#1575#1585' '#1605#1602#1583#1575#1585#1740
              #1583#1585' '#1604#1740#1587#1578' '#1575#1585#1587#1575#1604' Nipc  '#1601#1593#1575#1604' '#1576#1575#1588#1583
              #1670#1575#1662' '#1575#1591#1604#1575#1593#1575#1578' '#1580#1586#1574#1740#1575#1578' '#1705#1575#1604#1575' '#1583#1585' '#1601#1585#1605' '#1580#1583#1608#1604#1740' '#1601#1593#1575#1604' '#1576#1575#1588#1583
              
                #1583#1585' '#1586#1605#1575#1606' '#1579#1576#1578' '#1601#1585#1605' '#1662#1740#1588' '#1601#1585#1590' '#1605#1585#1705#1586' '#1608' '#1606#1581#1608#1607' '#1601#1585#1608#1588' '#1608' '#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1601#1585#1605' '#1602#1576 +
                #1604' '#1662#1585' '#1606#1588#1608#1583'('#1606#1600#1600#1600#1600#1600#1600#1588#1600#1600#1608#1583')'
              
                #1583#1585' '#1601#1585#1605' '#1578#1608#1586#1740#1606' '#1608#1586#1606' '#1605#1576#1583#1575' '#1575#1586' '#1576#1575#1602#1740' '#1605#1575#1606#1583#1607' '#1705#1607' '#1583#1585' '#1601#1585#1605' '#1606#1605#1575#1740#1588' '#1583#1575#1583#1607' '#1605#1740#1588#1608#1583' '#1576 +
                #1740#1588#1578#1585' '#1606#1588#1608#1583' '
              #1588#1605#1575#1585#1607' '#1662#1740#1711#1740#1585#1740' TTMS  '#1583#1585' '#1601#1585#1605' '#1601#1593#1575#1604' '#1576#1575#1588#1583)
            TabOrder = 1
            OnClick = chklstSettingsClick
            ExplicitTop = 225
          end
        end
        object TabSheet33: TTabSheet
          Caption = #1576#1585#1585#1587#1740' '#1575#1585#1578#1576#1575#1591' '#1601#1585#1605' '#1607#1575
          ImageIndex = 21
          object Panel8: TPanel
            Left = 0
            Top = 409
            Width = 1059
            Height = 41
            Align = alBottom
            TabOrder = 0
            object chkCorrelateReciptType: TCheckBox
              Left = 195
              Top = 1
              Width = 97
              Height = 39
              Align = alLeft
              Caption = #1601#1585#1605' '#1605#1585#1578#1576#1591
              Checked = True
              Color = clTeal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clTeal
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              State = cbChecked
              TabOrder = 0
            end
            object chkRecallReciptTypes: TCheckBox
              Left = 98
              Top = 1
              Width = 97
              Height = 39
              Align = alLeft
              Caption = #1601#1585#1575#1582#1608#1575#1606#1740' '#1607#1575
              Checked = True
              Color = clBlue
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              State = cbChecked
              TabOrder = 1
            end
            object chkConversionCoSerial: TCheckBox
              Left = 1
              Top = 1
              Width = 97
              Height = 39
              Align = alLeft
              Caption = #1601#1585#1605' '#1590#1585#1575#1574#1576
              Checked = True
              Color = clRed
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              State = cbChecked
              TabOrder = 2
            end
            object BitBtn5: TBitBtn
              AlignWithMargins = True
              Left = 909
              Top = 7
              Width = 146
              Height = 27
              Margins.Top = 6
              Margins.Bottom = 6
              Align = alRight
              Caption = #1606#1605#1575#1740#1588' '#1575#1585#1578#1576#1575#1591' '#1576#1740#1606' '#1601#1585#1605' '#1607#1575
              TabOrder = 3
              OnClick = BitBtn5Click
            end
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 1069
      Height = 178
      Align = alTop
      TabOrder = 1
      object pnl2: TPanel
        Left = 1
        Top = 1
        Width = 428
        Height = 176
        Align = alClient
        TabOrder = 1
        object lblRecordCount: TLabel
          Left = 4
          Top = 3
          Width = 73
          Height = 13
          Alignment = taRightJustify
          Caption = 'lblRecordCount'
        end
        object btnSBtnReciptNumber: TSpeedButton
          Left = 235
          Top = 3
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = btnSBtnReciptNumberClick
        end
        object lbl11: TLabel
          Left = 334
          Top = 7
          Width = 31
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = #1603#1583' '#1601#1585#1605
          FocusControl = edtReciptType
          ParentBiDiMode = False
        end
        object lbl12: TLabel
          Left = 337
          Top = 31
          Width = 46
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = #1593#1606#1608#1575#1606' '#1601#1585#1605
          FocusControl = edtReciptCaption
          ParentBiDiMode = False
        end
        object lblReciptCaption_L2: TLabel
          Left = 337
          Top = 54
          Width = 70
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = 'Recipt Caption'
          FocusControl = edtReciptCaption_L2
          ParentBiDiMode = False
        end
        object pnl1: TPanel
          Left = 1
          Top = 76
          Width = 426
          Height = 99
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 3
          DesignSize = (
            426
            99)
          object lbl10: TLabel
            Left = 336
            Top = 5
            Width = 61
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = #1587#1585#1610#1575#1604' '#1606#1608#1593' '#1575#1585#1586
            ParentBiDiMode = False
          end
          object Label83: TLabel
            Left = 336
            Top = 53
            Width = 71
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1603#1604#1610#1583' '#1607#1575#1610' '#1605#1610#1575#1606#1576#1585
          end
          object Label126: TLabel
            Left = 336
            Top = 76
            Width = 61
            Height = 13
            Caption = #1603#1583' '#1601#1585#1605' '#1575#1589#1604#1610
            FocusControl = edtPrimaryReciptType
          end
          object lbl15: TLabel
            Left = 336
            Top = 29
            Width = 32
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = ' '#1606#1608#1593' '#1575#1585#1586
            ParentBiDiMode = False
          end
          object Label176: TLabel
            Left = 157
            Top = 5
            Width = 78
            Height = 13
            Caption = #1705#1583' '#1601#1585#1605' '#1576#1585#1575#1740' '#1705#1662#1740
            FocusControl = edtReciptType4Copy
          end
          object edtArzTypeID: TDBEdit
            Left = 241
            Top = 1
            Width = 89
            Height = 21
            DataField = 'ArzTypeID'
            DataSource = srcReciptTypes
            TabOrder = 0
          end
          object cmbShortCutKey: TDBComboBox
            Left = 29
            Top = 50
            Width = 301
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ShortCutKey'
            DataSource = srcReciptTypes
            TabOrder = 1
            OnEnter = cmbShortCutKeyEnter
          end
          object edtPrimaryReciptType: TDBEdit
            Left = 241
            Top = 74
            Width = 89
            Height = 21
            DataField = 'PrimaryReciptType'
            DataSource = srcReciptTypes
            TabOrder = 2
          end
          object cmbArzActive: TDBComboBox
            Left = 29
            Top = 25
            Width = 301
            Height = 21
            AutoDropDown = True
            Color = clWhite
            DataField = 'ArzActive'
            DataSource = srcReciptTypes
            Items.Strings = (
              '0- '#1594#1740#1585' '#1601#1593#1575#1604
              '1-'#1601#1593#1575#1604' '#1576#1575#1588#1583
              '2-'#1601#1593#1575#1604' '#1576#1575#1588#1583' '#1548' '#1576#1607#1575#1740' '#1608#1575#1581#1583' '#1575#1585#1586'/ '#1576#1607#1575#1740' '#1705#1604
              '3-'#1601#1593#1575#1604' '#1576#1575#1588#1583' '#1548' '#1578#1593#1583#1575#1583' * '#1576#1607#1575#1740' '#1608#1575#1581#1583' '#1575#1585#1586
              '4-'#1601#1593#1575#1604' '#1576#1575#1588#1583' '#1601#1740' '#1608' '#1576#1607#1575#1740' '#1705#1604' '#1578#1594#1740#1740#1585' '#1606#1705#1606#1583'(ArzAmount>Not ReadOnly)'
              '5-'#1601#1593#1575#1604' '#1576#1575#1588#1583'('#1605#1602#1583#1575#1585')'
              '6- '#1605#1602#1583#1575#1585' '#1575#1585#1586' = '#1608#1586#1606'  * '#1576#1607#1575#1740' '#1575#1585#1586' ')
            TabOrder = 3
            OnEnter = cmbEffectTypeEnter
          end
          object dbchkTransmittalActive: TDBCheckBox
            Left = 29
            Top = 76
            Width = 141
            Height = 17
            BiDiMode = bdRightToLeft
            Caption = #1575#1585#1587#1575#1604' '#1575#1591#1604#1575#1593#1575#1578' '#1601#1593#1575#1604' '#1576#1575#1588#1583
            DataField = 'TransmittalActive'
            DataSource = srcReciptTypes
            ParentBiDiMode = False
            TabOrder = 4
            ValueChecked = '1'
            ValueUnchecked = '0'
            WordWrap = True
          end
          object edtReciptType4Copy: TDBEdit
            Left = 29
            Top = 1
            Width = 122
            Height = 21
            DataField = 'ReciptType4Copy'
            DataSource = srcReciptTypes
            TabOrder = 5
          end
        end
        object edtReciptCaption: TDBEdit
          Left = 30
          Top = 26
          Width = 301
          Height = 21
          DataField = 'ReciptCaption'
          DataSource = srcReciptTypes
          TabOrder = 1
        end
        object edtReciptType: TDBEdit
          Left = 263
          Top = 3
          Width = 68
          Height = 21
          DataField = 'ReciptType'
          DataSource = srcReciptTypes
          TabOrder = 0
        end
        object edtReciptCaption_L2: TDBEdit
          Left = 30
          Top = 49
          Width = 301
          Height = 21
          BiDiMode = bdLeftToRight
          DataField = 'ReciptCaption_L2'
          DataSource = srcReciptTypes
          ParentBiDiMode = False
          TabOrder = 2
        end
      end
      object dbgrd2: TCedarDbgrid
        Left = 429
        Top = 1
        Width = 639
        Height = 176
        Align = alRight
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clCream
        DataSource = srcReciptTypes
        DynProps = <>
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FooterParams.FillStyle = cfstSolidEh
        FooterParams.Font.Charset = DEFAULT_CHARSET
        FooterParams.Font.Color = clWindowText
        FooterParams.Font.Height = -13
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
        OptionsEh = [dghFixed3D, dghFrozen3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDblClickOptimizeColWidth, dghDialogFind, dghColumnResize, dghColumnMove]
        ParentFont = False
        ReadOnly = True
        RowHeight = 18
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        SortLocal = True
        TabOrder = 0
        TitleParams.SortMarkerStyle = smstDefaultEh
        OnDrawColumnCell = dbgrd2DrawColumnCell
        OnKeyPress = dbgrd2KeyPress
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ReciptType'
            Footers = <>
            Title.TitleButton = True
            Width = 88
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ReciptCaption'
            Footers = <>
            Title.TitleButton = True
            Width = 84
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'EffectType'
            Footers = <>
            Title.TitleButton = True
            Width = 135
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'AutoPrice'
            Footers = <>
            Title.TitleButton = True
            Width = 222
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SellEffect'
            Footers = <>
            Title.TitleButton = True
            Width = 93
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'BuyEffect'
            Footers = <>
            Title.TitleButton = True
            Width = 83
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PerformFileName'
            Footers = <>
            Title.TitleButton = True
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ReportFileName'
            Footers = <>
            Title.TitleButton = True
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'RecallType'
            Footers = <>
            Title.TitleButton = True
            Width = 130
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'RecallReciptTypes'
            Footers = <>
            Title.TitleButton = True
            Width = 120
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CorrelateReciptType'
            Footers = <>
            Title.TitleButton = True
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ConversionCoSerial'
            Footers = <>
            Title.TitleButton = True
            Width = 133
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PrimaryReciptType'
            Footers = <>
            Title.TitleButton = True
            Width = 75
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 72
    Top = 7
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcReciptTypes
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcReciptTypes
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcReciptTypes
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcReciptTypes
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actMakeRecal: TAction [6]
      Caption = #1587#1575#1582#1578#1606' '#1601#1575#1610#1604' '#1580#1607#1578' '#1601#1585#1575#1582#1608#1575#1606#1610
      OnExecute = actMakeRecalExecute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcReciptTypes
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Exel'
      OnExecute = actSendExelExecute
    end
    object actPrint: TAction
      Caption = #1670#1600#1600#1600#1575#1662
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actRecal: TAction
      Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1578#1606#1592#1610#1605#1575#1578' '#1575#1586' '#1601#1575#1610#1604
      OnExecute = actRecalExecute
    end
    object actRecal2: TAction
      Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1578#1606#1592#1610#1605#1575#1578' '#1575#1586' '#1601#1575#1610#1604'('#1601#1602#1591' '#1578#1601#1575#1608#1578#1607#1575')'#8207
      OnExecute = actRecal2Execute
    end
    object actCopy: TAction
      Caption = #1603#1662#1610' '#1587#1591#1585' '#1580#1575#1585#1610
      OnExecute = actCopyExecute
    end
    object actUserNotification: TAction
      Caption = #1575#1585#1578#1576#1575#1591' '#1601#1585#1605' '#1580#1575#1585#1740' '#1576#1575' '#1662#1587#1578' '#1607#1575#1740' '#1587#1575#1586#1605#1575#1606#1740' '#1605#1593#1585#1601#1740' '#1705#1575#1585#1576#1585#1575#1606
      OnExecute = actUserNotificationExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 144
    Top = 6
  end
  object qryReciptTypes: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterOpen = qryReciptTypesAfterOpen
    AfterInsert = qryReciptTypesAfterInsert
    BeforePost = qryReciptTypesBeforePost
    AfterPost = qryReciptTypesAfterPost
    BeforeDelete = qryReciptTypesBeforeDelete
    AfterDelete = qryReciptTypesAfterDelete
    AfterScroll = qryReciptTypesAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT  * FROM    dbo.ReciptTypes')
    Left = 823
    Top = 124
    object qryReciptTypesReciptType: TWordField
      Tag = 3
      DisplayLabel = #1603#1583' '#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'ReciptType'
    end
    object qryReciptTypesReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'ReciptCaption'
      Required = True
      Size = 70
    end
    object qryReciptTypesReciptCaption_L2: TStringField
      Tag = 3
      DisplayLabel = 'Recipt Caption'
      FieldName = 'ReciptCaption_L2'
      Size = 70
    end
    object qryReciptTypesPerformFileName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1670#1575#1662' 1'
      FieldName = 'PerformFileName'
      Size = 50
    end
    object qryReciptTypesReportFileName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1670#1575#1662' 2'
      FieldName = 'ReportFileName'
      Size = 50
    end
    object qryReciptTypesRecallType: TWordField
      Tag = 3
      DisplayLabel = #1606#1581#1608#1607' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'RecallType'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesRecallReciptTypes: TStringField
      Tag = 3
      DisplayLabel = #1603#1583#1607#1575#1610' '#1602#1575#1576#1604' '#1601#1585#1575#1582#1608#1575#1606#1610
      FieldName = 'RecallReciptTypes'
      Size = 30
    end
    object qryReciptTypesCorrelateReciptType: TWordField
      Tag = 3
      DisplayLabel = #1603#1583' '#1601#1585#1605' '#1605#1585#1578#1576#1591
      FieldName = 'CorrelateReciptType'
    end
    object qryReciptTypesConversionCoSerial: TWordField
      Tag = 3
      DisplayLabel = #1587#1585#1610#1575#1604' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '#1590#1585#1575#1574#1576
      FieldName = 'ConversionCoSerial'
    end
    object qryReciptTypesPrimaryReciptType: TWordField
      DisplayLabel = #1603#1583' '#1601#1585#1605' '#1575#1589#1604#1610
      FieldName = 'PrimaryReciptType'
    end
    object qryReciptTypesEffectType: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1578#1575#1579#1610#1585' '#1576#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1606#1576#1575#1585
      FieldName = 'EffectType'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesUseType: TWordField
      Tag = 3
      DisplayLabel = #1605#1581#1604' '#1575#1587#1578#1601#1575#1583#1607' ( '#1608#1575#1585#1583#1607' / '#1589#1575#1583#1585#1607' )'
      FieldName = 'UseType'
    end
    object qryReciptTypesStoreActive: TWordField
      Tag = 3
      DisplayLabel = #1603#1583#1608#1606#1575#1605' '#1576#1606#1711#1575#1607' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
      FieldName = 'StoreActive'
    end
    object qryReciptTypesStoreCaption: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1603#1604#1605#1607' '#1576#1606#1711#1575#1607
      FieldName = 'StoreCaption'
      Size = 50
    end
    object c: TWordField
      Tag = 3
      DisplayLabel = #1570#1610#1575' '#1588#1605#1575#1585#1607' '#1601#1585#1605' '#1576#1585' '#1581#1587#1576' '#1575#1606#1576#1575#1585' Restart '#1588#1608#1583
      FieldName = 'RestartFormNumberOnStore'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesPerson1Active: TWordField
      Tag = 3
      DisplayLabel = #1603#1583' '#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610' 1 '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
      FieldName = 'Person1Active'
    end
    object qryReciptTypesPerson1Caption: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1603#1604#1605#1607' '#1605#1588#1578#1585#1610
      FieldName = 'Person1Caption'
      Size = 50
    end
    object qryReciptTypesPerson1Groups: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606' 1'
      FieldName = 'Person1Groups'
      Size = 250
    end
    object qryReciptTypesPerson2Active: TWordField
      Tag = 3
      DisplayLabel = #1603#1583' '#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610' 2 '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
      FieldName = 'Person2Active'
    end
    object qryReciptTypesPerson2Caption: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1603#1604#1605#1607' '#1605#1588#1578#1585#1610' 2'
      FieldName = 'Person2Caption'
      Size = 50
    end
    object qryReciptTypesPerson2Groups: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606' 2'
      FieldName = 'Person2Groups'
      Size = 250
    end
    object qryReciptTypesSection2Visible: TWordField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1608' '#1608#1586#1606' '#1583#1585' '#1582#1608#1575#1587#1578#1610' '#1601#1593#1575#1604' '#1576#1575#1588#1583
      FieldName = 'Section2Visible'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesSection2Caption: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1603#1604#1605#1607' '#1583#1585#1582#1608#1575#1587#1578#1610
      FieldName = 'Section2Caption'
      Size = 50
    end
    object qryReciptTypesSection1Visible: TWordField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1548' '#1608#1586#1606' '#1608' '#1576#1607#1575#1610' '#1603#1604' '#1575#1589#1604#1610' '#1606#1605#1575#1610#1588' '#1588#1608#1583
      FieldName = 'Section1Visible'
    end
    object qryReciptTypesSecondTypeActive: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1585' Master '#1606#1605#1575#1610#1588' '#1588#1608#1583
      FieldName = 'SecondTypeActive'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesMakeDoc: TWordField
      Tag = 3
      DisplayLabel = #1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1576#1585' '#1585#1608#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1610#1606' '#1601#1585#1605' '#1589#1575#1583#1585' '#1588#1608#1583
      FieldName = 'MakeDoc'
    end
    object qryReciptTypesBedType: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1576#1583#1607#1603#1575#1585
      FieldName = 'BedType'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesBesType: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1576#1587#1578#1575#1606#1603#1575#1585
      FieldName = 'BesType'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesControlEntityActive: TWordField
      Tag = 3
      DisplayLabel = #1570#1610#1575' '#1586#1605#1575#1606' '#1579#1576#1578' '#1605#1608#1580#1608#1583#1610' '#1603#1606#1578#1585#1604' '#1588#1608#1583'.'
      FieldName = 'ControlEntityActive'
      OnChange = qryReciptTypesControlEntityActiveChange
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesExpireDateActive: TWordField
      Tag = 3
      DisplayLabel = #1570#1610#1575' '#1578#1575#1585#1610#1582' '#1606#1605#1575#1610#1588' '#1588#1608#1583'.'
      FieldName = 'ExpireDateActive'
    end
    object qryReciptTypesExpireDateCaption: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1576#1585#1575#1610' '#1578#1575#1585#1610#1582
      FieldName = 'ExpireDateCaption'
      Size = 50
    end
    object qryReciptTypesFormSignature: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1575#1608#1610#1606' '#1576#1585#1575#1610' '#1605#1581#1604' '#1575#1605#1590#1575#1569'('#1578#1607' '#1601#1585#1605')'
      FieldName = 'FormSignature'
      Size = 250
    end
    object qryReciptTypesReciptDescription: TMemoField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1605#1585#1576#1608#1591' '#1576#1607' '#1575#1610#1606' '#1601#1585#1605
      FieldName = 'ReciptDescription'
      BlobType = ftMemo
    end
    object qryReciptTypesTemplateCode: TWordField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1601#1585#1605' '#1602#1575#1576#1604' '#1606#1605#1575#1610#1588
      FieldName = 'TemplateCode'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesControlCodeCaption: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575
      FieldName = 'ControlCodeCaption'
      Size = 50
    end
    object qryReciptTypesUseUnitCase: TWordField
      Tag = 3
      DisplayLabel = #1605#1581#1604' '#1575#1587#1578#1601#1575#1583#1607' '#1603#1583' '#1605#1581#1604' '#1605#1589#1585#1601' '#1583#1585' Master '#1606#1605#1575#1610#1588' '#1588#1608#1583
      FieldName = 'UseUnitCase'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesUseUnitCaseCaption: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1576#1585#1575#1610' '#1603#1583' '#1605#1581#1604' '#1605#1589#1585#1601' '#1603#1575#1604#1575
      FieldName = 'UseUnitCaseCaption'
      Size = 50
    end
    object qryReciptTypesFormHeader: TStringField
      Tag = 3
      DisplayLabel = #1605#1578#1606' '#1576#1575#1604#1575#1610' '#1711#1586#1575#1585#1588
      FieldName = 'FormHeader'
      Size = 250
    end
    object qryReciptTypesFormFooter: TStringField
      Tag = 3
      DisplayLabel = #1605#1578#1606' '#1662#1575#1610#1610#1606' '#1711#1586#1575#1585#1588
      FieldName = 'FormFooter'
      Size = 250
    end
    object qryReciptTypesUserSecurityCheckActive: TLargeintField
      Tag = 3
      DisplayLabel = #1570#1610#1575' '#1586#1605#1575#1606' '#1608#1610#1585#1575#1610#1588' '#1603#1583' '#1603#1575#1585#1576#1585' '#1603#1606#1578#1585#1604' '#1588#1608#1583'.'
      FieldName = 'UserSecurityCheckActive'
    end
    object qryReciptTypesUseStoreIDOnRecall: TWordField
      Tag = 3
      DisplayLabel = #1570#1610#1575' '#1603#1583' '#1575#1606#1576#1575#1585' '#1583#1585' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1605#1608#1579#1585' '#1575#1587#1578
      FieldName = 'UseStoreIDOnRecall'
    end
    object qryReciptTypesDeficitsActive: TWordField
      Tag = 3
      DisplayLabel = #1575#1591#1604#1575#1593#1575#1578' '#1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578' '#1606#1605#1575#1610#1588' '#1588#1608#1583'.'
      FieldName = 'DeficitsActive'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesHelpID: TIntegerField
      Tag = 3
      FieldName = 'HelpID'
    end
    object qryReciptTypesUnitPriceReadOnly: TWordField
      Tag = 3
      DisplayLabel = #1606#1581#1608#1607' '#1575#1587#1578#1601#1575#1583#1607' '#1576#1607#1575#1610' '#1608#1575#1581#1583
      FieldName = 'UnitPriceReadOnly'
    end
    object qryReciptTypesMaxRowsPerForm: TIntegerField
      Tag = 3
      DisplayLabel = #1581#1583#1575#1603#1579#1585' '#1585#1603#1608#1585#1583' '#1602#1575#1576#1604' '#1579#1576#1578' '#1583#1585' '#1601#1585#1605
      FieldName = 'MaxRowsPerForm'
    end
    object qryReciptTypesPrintCount: TWordField
      Tag = 3
      FieldName = 'PrintCount'
    end
    object qryReciptTypesAutoPrice: TWordField
      Tag = 3
      DisplayLabel = #1602#1610#1605#1578' '#1711#1584#1575#1585#1610' '#1578#1608#1587#1591' '#1587#1610#1587#1578#1605' '#1575#1606#1580#1575#1605' '#1588#1608#1583' '
      FieldName = 'AutoPrice'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesAidInfoActive: TWordField
      Tag = 3
      FieldName = 'AidInfoActive'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesDiscountActive: TWordField
      Tag = 3
      DisplayLabel = #1605#1581#1604' '#1606#1605#1575#1610#1588' '#1583#1585#1589#1583' '#1578#1582#1601#1610#1601
      FieldName = 'DiscountActive'
    end
    object qryReciptTypesOutPutWithTransFormActive: TWordField
      Tag = 3
      DisplayLabel = #1570#1610#1575' '#1576#1585' '#1581#1587#1576' '#1590#1585#1575#1610#1576' '#1578#1576#1583#1610#1604' '#1581#1608#1575#1604#1607' '#1589#1575#1583#1585' '#1588#1608#1583
      FieldName = 'OutPutWithTransFormActive'
    end
    object qryReciptTypesFormTypeForTranseForm: TStringField
      Tag = 3
      FieldName = 'FormTypeForTranseForm'
      Size = 50
    end
    object qryReciptTypesRecallReciptDeficitsType: TStringField
      Tag = 3
      FieldName = 'RecallReciptDeficitsType'
      Size = 100
    end
    object qryReciptTypesCorrelateKind: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1575#1585#1578#1576#1575#1591
      FieldName = 'CorrelateKind'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesAidInfoCaption: TStringField
      Tag = 3
      FieldName = 'AidInfoCaption'
      Size = 50
    end
    object qryReciptTypesEditReciptNumberActive: TWordField
      Tag = 3
      FieldName = 'EditReciptNumberActive'
    end
    object qryReciptTypesPersonID1OnDetailActive: TWordField
      Tag = 3
      FieldName = 'PersonID1OnDetailActive'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesNoteShow: TWordField
      Tag = 3
      FieldName = 'NoteShow'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesMaxCreditChecked: TWordField
      Tag = 3
      FieldName = 'MaxCreditChecked'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesAutoStateChange: TWordField
      Tag = 3
      FieldName = 'AutoStateChange'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesControlEntityKind: TWordField
      Tag = 3
      FieldName = 'ControlEntityKind'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesMnuPlaceID: TWordField
      Tag = 3
      FieldName = 'MnuPlaceID'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesDetailDateActive: TWordField
      Tag = 3
      FieldName = 'DetailDateActive'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesProcedureActive: TWordField
      Tag = 3
      FieldName = 'ProcedureActive'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesFormKindSerial: TIntegerField
      Tag = 3
      FieldName = 'FormKindSerial'
    end
    object qryReciptTypesCorrelate4EditActive: TWordField
      Tag = 3
      FieldName = 'Correlate4EditActive'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesAutoCorrelate: TWordField
      Tag = 3
      DisplayLabel = #1575#1578#1608#1605#1575#1578#1610#1603' '#1579#1576#1578
      FieldName = 'AutoCorrelate'
    end
    object qryReciptTypesRowOnMnu: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1583#1610#1601' '#1583#1585' '#1605#1606#1608
      FieldName = 'RowOnMnu'
    end
    object qryReciptTypesDefaultCTopic2_Bed: TWordField
      Tag = 3
      FieldName = 'DefaultCTopic2_Bed'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesDefaultCTopic2_Bes: TWordField
      Tag = 3
      FieldName = 'DefaultCTopic2_Bes'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesDefaultCTopic_Bed: TWordField
      Tag = 3
      FieldName = 'DefaultCTopic_Bed'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesDefaultCTopic_Bes: TWordField
      Tag = 3
      FieldName = 'DefaultCTopic_Bes'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesDefaultDetail_Bed: TWordField
      Tag = 3
      FieldName = 'DefaultDetail_Bed'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesDefaultDetail_Bes: TWordField
      Tag = 3
      FieldName = 'DefaultDetail_Bes'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesDefaultTopic_Bed: TWordField
      Tag = 3
      FieldName = 'DefaultTopic_Bed'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesDefaultTopic_Bes: TWordField
      Tag = 3
      FieldName = 'DefaultTopic_Bes'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesEffectOnCustomer: TWordField
      Tag = 3
      FieldName = 'EffectOnCustomer'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesCustomerKind1: TStringField
      Tag = 3
      FieldName = 'CustomerKind1'
      Size = 50
    end
    object qryReciptTypesCustomerKind2: TStringField
      Tag = 3
      FieldName = 'CustomerKind2'
      Size = 50
    end
    object qryReciptTypesShowSelectStore: TWordField
      Tag = 3
      FieldName = 'ShowSelectStore'
    end
    object qryReciptTypesCustCodeUse4Bed: TWordField
      Tag = 3
      FieldName = 'CustCodeUse4Bed'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesCustCodeUse4Bes: TWordField
      Tag = 3
      FieldName = 'CustCodeUse4Bes'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesAccountKind4Deficits: TWordField
      Tag = 3
      FieldName = 'AccountKind4Deficits'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesAmani_StuffActiveInDoc: TWordField
      Tag = 3
      FieldName = 'Amani_StuffActiveInDoc'
    end
    object qryReciptTypesActiveDocOnCommission: TWordField
      Tag = 3
      FieldName = 'ActiveDocOnCommission'
    end
    object qryReciptTypesCofferType: TStringField
      Tag = 3
      FieldName = 'CofferType'
    end
    object qryReciptTypesShowListOnMnu: TWordField
      Tag = 3
      FieldName = 'ShowListOnMnu'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesAccCodingShow: TWordField
      Tag = 3
      FieldName = 'AccCodingShow'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesStore2Active: TWordField
      Tag = 3
      FieldName = 'Store2Active'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesDetailNoteActive: TWordField
      Tag = 3
      FieldName = 'DetailNoteActive'
    end
    object qryReciptTypesADDLevelID: TWordField
      Tag = 3
      FieldName = 'ADDLevelID'
    end
    object qryReciptTypesEditLevelID: TWordField
      Tag = 3
      FieldName = 'EditLevelID'
    end
    object qryReciptTypesDeleteLevelID: TWordField
      Tag = 3
      FieldName = 'DeleteLevelID'
    end
    object qryReciptTypesChangeStateLevelID: TWordField
      Tag = 3
      FieldName = 'ChangeStateLevelID'
    end
    object qryReciptTypesPrintLevelID: TWordField
      Tag = 3
      FieldName = 'PrintLevelID'
    end
    object qryReciptTypesFormRelatedLevelID: TWordField
      Tag = 3
      FieldName = 'FormRelatedLevelID'
    end
    object qryReciptTypesAccCodeLevelID: TWordField
      Tag = 3
      FieldName = 'AccCodeLevelID'
    end
    object qryReciptTypesStoreKindList: TStringField
      Tag = 3
      FieldName = 'StoreKindList'
      Size = 50
    end
    object qryReciptTypesDec_DetailCode: TStringField
      Tag = 3
      FieldName = 'Dec_DetailCode'
      Size = 12
    end
    object qryReciptTypesDec_CTopicCode: TStringField
      Tag = 3
      FieldName = 'Dec_CTopicCode'
      Size = 12
    end
    object qryReciptTypesDec_CTopicCode2: TStringField
      Tag = 3
      FieldName = 'Dec_CTopicCode2'
      Size = 12
    end
    object qryReciptTypesEffectOnCustomer2: TWordField
      Tag = 3
      FieldName = 'EffectOnCustomer2'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesUseableCustomer: TWordField
      Tag = 3
      FieldName = 'UseableCustomer'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesNonZeroControl: TWordField
      Tag = 3
      FieldName = 'NonZeroControl'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesMachineActive: TWordField
      Tag = 3
      FieldName = 'MachineActive'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesEarthActive: TWordField
      Tag = 3
      FieldName = 'EarthActive'
    end
    object qryReciptTypesWetActive: TWordField
      Tag = 3
      FieldName = 'WetActive'
    end
    object qryReciptTypesSugarActive: TWordField
      Tag = 3
      FieldName = 'SugarActive'
    end
    object qryReciptTypesCustomer2DetailKind: TStringField
      Tag = 3
      FieldName = 'Customer2DetailKind'
      Size = 50
    end
    object qryReciptTypesDiscountEntryKind: TWordField
      Tag = 3
      FieldName = 'DiscountEntryKind'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesAidInfoCaptionNo: TStringField
      Tag = 3
      FieldName = 'AidInfoCaptionNo'
      Size = 50
    end
    object qryReciptTypesEffectOnNotRecall: TWordField
      Tag = 3
      FieldName = 'EffectOnNotRecall'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesDeficitValueEditing: TWordField
      Tag = 3
      FieldName = 'DeficitValueEditing'
    end
    object qryReciptTypesAidNumRestOnSecType: TWordField
      Tag = 3
      FieldName = 'AidNumRestOnSecType'
    end
    object qryReciptTypesArzActive: TWordField
      Tag = 3
      FieldName = 'ArzActive'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesArzTypeID: TIntegerField
      Tag = 3
      FieldName = 'ArzTypeID'
    end
    object qryReciptTypesSellEffect: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1578#1575#1579#1740#1585' '#1576#1585#1601#1585#1608#1588
      FieldName = 'SellEffect'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesStandardRateActive: TWordField
      Tag = 3
      FieldName = 'StandardRateActive'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesNonZeroActive: TWordField
      Tag = 3
      FieldName = 'NonZeroActive'
    end
    object qryReciptTypesShowEntityOnSearch: TWordField
      Tag = 3
      FieldName = 'ShowEntityOnSearch'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesInsertEntity: TWordField
      Tag = 3
      FieldName = 'InsertEntity'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesPriceReadOnly: TWordField
      Tag = 3
      FieldName = 'PriceReadOnly'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesUnicCodeCheck: TWordField
      Tag = 3
      FieldName = 'UnicCodeCheck'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesReportFileCaption1: TStringField
      Tag = 3
      FieldName = 'ReportFileCaption1'
    end
    object qryReciptTypesReportFileCaption2: TStringField
      Tag = 3
      FieldName = 'ReportFileCaption2'
    end
    object qryReciptTypesStore2Caption: TStringField
      Tag = 3
      FieldName = 'Store2Caption'
      Size = 50
    end
    object qryReciptTypesDuplicateReciptNoActive: TWordField
      Tag = 3
      FieldName = 'DuplicateReciptNoActive'
    end
    object qryReciptTypesUsePerson1OnRecall: TWordField
      Tag = 3
      FieldName = 'UsePerson1OnRecall'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesExtraCodingAddStuffName: TWordField
      Tag = 3
      FieldName = 'ExtraCodingAddStuffName'
    end
    object qryReciptTypesState0ChangeLevelID: TWordField
      Tag = 3
      FieldName = 'State0ChangeLevelID'
    end
    object qryReciptTypesState1ChangeLevelID: TWordField
      Tag = 3
      FieldName = 'State1ChangeLevelID'
    end
    object qryReciptTypesState2ChangeLevelID: TWordField
      Tag = 3
      FieldName = 'State2ChangeLevelID'
    end
    object qryReciptTypesState3ChangeLevelID: TWordField
      Tag = 3
      FieldName = 'State3ChangeLevelID'
    end
    object qryReciptTypesFormItemKindSerial: TIntegerField
      Tag = 3
      FieldName = 'FormItemKindSerial'
    end
    object qryReciptTypesSection2CaptionWeight: TStringField
      Tag = 3
      FieldName = 'Section2CaptionWeight'
      Size = 50
    end
    object qryReciptTypesRequestedChange: TWordField
      Tag = 3
      FieldName = 'RequestedChange'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesDeficitsLevelID: TWordField
      Tag = 3
      FieldName = 'DeficitsLevelID'
    end
    object qryReciptTypesMaxControlCode: TWordField
      FieldName = 'MaxControlCode'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesStoreControlEntity: TStringField
      FieldName = 'StoreControlEntity'
      Size = 50
    end
    object qryReciptTypesPerson2DetailCaption: TStringField
      FieldName = 'Person2DetailCaption'
      Size = 50
    end
    object qryReciptTypesAidInfoControlDate: TWordField
      FieldName = 'AidInfoControlDate'
    end
    object qryReciptTypesControlCodeUnic: TWordField
      FieldName = 'ControlCodeUnic'
    end
    object qryReciptTypesUseOtherActive: TWordField
      FieldName = 'UseOtherActive'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesDeficate_MakeDocKind: TWordField
      FieldName = 'Deficate_MakeDocKind'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesDeficate_DetailCode: TStringField
      FieldName = 'Deficate_DetailCode'
      Size = 15
    end
    object qryReciptTypesTozinActive: TWordField
      FieldName = 'TozinActive'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesOtherRptFiles: TStringField
      FieldName = 'OtherRptFiles'
      Size = 1000
    end
    object qryReciptTypesOtherRptCaptions: TStringField
      FieldName = 'OtherRptCaptions'
      Size = 1000
    end
    object qryReciptTypesSearchReciptNumber: TWordField
      FieldName = 'SearchReciptNumber'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesAcceptRollbackEntity: TWordField
      FieldName = 'AcceptRollbackEntity'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesPrintAfterPost: TWordField
      FieldName = 'PrintAfterPost'
    end
    object qryReciptTypesPriorityReciptDate: TWordField
      FieldName = 'PriorityReciptDate'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesEditableFields: TWideStringField
      FieldName = 'EditableFields'
      Size = 1500
    end
    object qryReciptTypesShowEntityWeightOnList: TWordField
      FieldName = 'ShowEntityWeightOnList'
    end
    object qryReciptTypesShowKeepPlace: TWordField
      FieldName = 'ShowKeepPlace'
    end
    object qryReciptTypesReciptNumberKind: TWordField
      FieldName = 'ReciptNumberKind'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesCorrelateReciptNumberKind: TWordField
      FieldName = 'CorrelateReciptNumberKind'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesAllotmentActive: TWordField
      FieldName = 'AllotmentActive'
    end
    object qryReciptTypesCorrelateReciptsDeficits: TWordField
      FieldName = 'CorrelateReciptsDeficits'
    end
    object qryReciptTypesRepelInsertRecipt: TWordField
      FieldName = 'RepelInsertRecipt'
    end
    object qryReciptTypesDuplicateReciptNumber: TWordField
      FieldName = 'DuplicateReciptNumber'
    end
    object qryReciptTypesCorrelateStateChange: TWordField
      FieldName = 'CorrelateStateChange'
    end
    object qryReciptTypesDeficate_MakeDocApart: TWordField
      FieldName = 'Deficate_MakeDocApart'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesVATActive: TWordField
      FieldName = 'VATActive'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesVATCo: TFloatField
      FieldName = 'VATCo'
    end
    object qryReciptTypesVATRound: TWordField
      FieldName = 'VATRound'
    end
    object qryReciptTypesOrderByFields: TWideStringField
      FieldName = 'OrderByFields'
      Size = 100
    end
    object qryReciptTypesMasirActive: TWordField
      FieldName = 'MasirActive'
    end
    object qryReciptTypesDeliveryActive: TWordField
      FieldName = 'DeliveryActive'
    end
    object qryReciptTypesSellsEmporiumActive: TWordField
      FieldName = 'SellsEmporiumActive'
    end
    object qryReciptTypesSellsMethodActive: TWordField
      FieldName = 'SellsMethodActive'
    end
    object qryReciptTypesPerson3Active: TWordField
      FieldName = 'Person3Active'
    end
    object qryReciptTypesPerson3Caption: TWideStringField
      FieldName = 'Person3Caption'
      Size = 50
    end
    object qryReciptTypesCustomerKind3: TWideStringField
      FieldName = 'CustomerKind3'
      Size = 50
    end
    object qryReciptTypesPerson4Active: TWordField
      FieldName = 'Person4Active'
    end
    object qryReciptTypesPerson4Caption: TWideStringField
      FieldName = 'Person4Caption'
      Size = 50
    end
    object qryReciptTypesCustomerKind4: TWideStringField
      FieldName = 'CustomerKind4'
      Size = 50
    end
    object qryReciptTypesPerson5Active: TWordField
      FieldName = 'Person5Active'
    end
    object qryReciptTypesPerson5Caption: TWideStringField
      FieldName = 'Person5Caption'
      Size = 50
    end
    object qryReciptTypesCustomerKind5: TWideStringField
      FieldName = 'CustomerKind5'
      Size = 50
    end
    object qryReciptTypesCreditChecked1: TWordField
      FieldName = 'CreditChecked1'
    end
    object qryReciptTypesCreditChecked2: TWordField
      FieldName = 'CreditChecked2'
    end
    object qryReciptTypesCreditChecked3: TWordField
      FieldName = 'CreditChecked3'
    end
    object qryReciptTypesCreditChecked4: TWordField
      FieldName = 'CreditChecked4'
    end
    object qryReciptTypesCreditChecked5: TWordField
      FieldName = 'CreditChecked5'
    end
    object qryReciptTypesCustCheckDateOffset: TWordField
      FieldName = 'CustCheckDateOffset'
    end
    object qryReciptTypesCreditChkCurrentForm: TWordField
      FieldName = 'CreditChkCurrentForm'
    end
    object qryReciptTypesReciptNumberEventKind: TWordField
      FieldName = 'ReciptNumberEventKind'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesCostDownSaveActive: TWordField
      FieldName = 'CostDownSaveActive'
    end
    object qryReciptTypesWaterCoOrDeficitValueEdit: TWordField
      FieldName = 'WaterCoOrDeficitValueEdit'
    end
    object qryReciptTypesStandardCaption: TWideStringField
      FieldName = 'StandardCaption'
      Size = 50
    end
    object qryReciptTypesPawsFieldsActive: TWordField
      FieldName = 'PawsFieldsActive'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesRecallEditKind: TWordField
      FieldName = 'RecallEditKind'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesDeficitValueUnitSellPrice2: TWordField
      FieldName = 'DeficitValueUnitSellPrice2'
    end
    object qryReciptTypesWastesFunctions: TWordField
      FieldName = 'WastesFunctions'
    end
    object qryReciptTypesCommendation: TWordField
      FieldName = 'Commendation'
    end
    object qryReciptTypesPerson3ControlWeightCustomer: TWordField
      FieldName = 'Person3ControlWeightCustomer'
    end
    object qryReciptTypesReciptNumberOfType: TWideStringField
      FieldName = 'ReciptNumberOfType'
      Size = 250
    end
    object qryReciptTypesTransmittalActive: TWordField
      FieldName = 'TransmittalActive'
    end
    object qryReciptTypesTransmittalLevelID: TWordField
      FieldName = 'TransmittalLevelID'
    end
    object qryReciptTypesCustomerRateAct: TWordField
      FieldName = 'CustomerRateAct'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesCartonKind: TWordField
      FieldName = 'CartonKind'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesDocTypeCode: TIntegerField
      FieldName = 'DocTypeCode'
    end
    object qryReciptTypesActiveReMainPersonRecipt: TWordField
      FieldName = 'ActiveReMainPersonRecipt'
    end
    object qryReciptTypesActiveTimeToStr: TWordField
      FieldName = 'ActiveTimeToStr'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesMinRowsPerForm: TIntegerField
      FieldName = 'MinRowsPerForm'
    end
    object qryReciptTypesReciptIDEventKind: TWordField
      FieldName = 'ReciptIDEventKind'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesWaterCoEffect: TWordField
      FieldName = 'WaterCoEffect'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesSumOnStuffCode: TWordField
      FieldName = 'SumOnStuffCode'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesReportID: TIntegerField
      FieldName = 'ReportID'
    end
    object qryReciptTypesBarCodeKind: TWordField
      FieldName = 'BarCodeKind'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesStepCorrelate: TSmallintField
      FieldName = 'StepCorrelate'
    end
    object qryReciptTypesInsertAidOnRecall: TWordField
      FieldName = 'InsertAidOnRecall'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesSellPriceCheck: TWordField
      FieldName = 'SellPriceCheck'
    end
    object qryReciptTypesControlEntityCol: TWordField
      FieldName = 'ControlEntityCol'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesIncreasingInventory: TWordField
      FieldName = 'IncreasingInventory'
    end
    object qryReciptTypesIncreasingInventoryStore: TWordField
      FieldName = 'IncreasingInventoryStore'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesShortCutKey: TStringField
      FieldName = 'ShortCutKey'
    end
    object qryReciptTypesTopicCodeActive: TWordField
      FieldName = 'TopicCodeActive'
    end
    object qryReciptTypesDetailCodeActive: TWordField
      FieldName = 'DetailCodeActive'
    end
    object qryReciptTypesCTopicCode1Active: TWordField
      FieldName = 'CTopicCode1Active'
    end
    object qryReciptTypesCTopicCode2Active: TWordField
      FieldName = 'CTopicCode2Active'
    end
    object qryReciptTypesRoundCount: TSmallintField
      FieldName = 'RoundCount'
    end
    object qryReciptTypesMnuPlaceIDs: TStringField
      FieldName = 'MnuPlaceIDs'
      Size = 25
    end
    object qryReciptTypesProcedureKindList: TStringField
      FieldName = 'ProcedureKindList'
      Size = 50
    end
    object qryReciptTypesProcedureCaption: TStringField
      FieldName = 'ProcedureCaption'
      Size = 50
    end
    object qryReciptTypesEarthFieldGateActive: TWordField
      FieldName = 'EarthFieldGateActive'
    end
    object qryReciptTypesReciptsRowActive: TWordField
      FieldName = 'ReciptsRowActive'
    end
    object qryReciptTypesDefaultCTopic3_Bed: TWordField
      FieldName = 'DefaultCTopic3_Bed'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesDefaultCTopic3_Bes: TWordField
      FieldName = 'DefaultCTopic3_Bes'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesStartEndHourActive: TWordField
      FieldName = 'StartEndHourActive'
    end
    object qryReciptTypesCTopicCode3Active: TWordField
      FieldName = 'CTopicCode3Active'
    end
    object qryReciptTypesRecallReciptState1: TWordField
      FieldName = 'RecallReciptState1'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesCopyFormLevelID: TWordField
      FieldName = 'CopyFormLevelID'
    end
    object qryReciptTypesBuyEffect: TWordField
      DisplayLabel = #1606#1608#1593' '#1578#1575#1579#1740#1585#1576#1585#1582#1585#1740#1583
      FieldName = 'BuyEffect'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesConversionCoSerialFormula: TWordField
      FieldName = 'ConversionCoSerialFormula'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesCommissionActive: TWordField
      FieldName = 'CommissionActive'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesFilterYearIDActive: TWordField
      FieldName = 'FilterYearIDActive'
    end
    object qryReciptTypesDay4Edit: TWordField
      FieldName = 'Day4Edit'
    end
    object qryReciptTypesReciptBe4PostCtrlEntAct: TWordField
      FieldName = 'ReciptBe4PostCtrlEntAct'
    end
    object qryReciptTypesChekingTaxPrint: TWordField
      FieldName = 'ChekingTaxPrint'
    end
    object qryReciptTypesConfirmingActive: TWordField
      FieldName = 'ConfirmingActive'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesChekingPrintEntity: TWordField
      FieldName = 'ChekingPrintEntity'
    end
    object qryReciptTypesChangePriceManifesto: TWordField
      FieldName = 'ChangePriceManifesto'
    end
    object qryReciptTypesReciptType2: TWordField
      FieldName = 'ReciptType2'
    end
    object qryReciptTypesCorrelateCoReciptNumber_Kind: TWordField
      FieldName = 'CorrelateCoReciptNumber_Kind'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesAutoInsertPostInsert: TWordField
      FieldName = 'AutoInsertPostInsert'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesControlPrintingByDate: TWordField
      FieldName = 'ControlPrintingByDate'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesDisplayStatusBar: TWordField
      FieldName = 'DisplayStatusBar'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesConstTopicCode_Bed: TLargeintField
      FieldName = 'ConstTopicCode_Bed'
    end
    object qryReciptTypesConstTopicCode_Bes: TLargeintField
      FieldName = 'ConstTopicCode_Bes'
    end
    object qryReciptTypesDec_TopicCode: TLargeintField
      FieldName = 'Dec_TopicCode'
    end
    object qryReciptTypesDeficate_TopicCode: TLargeintField
      FieldName = 'Deficate_TopicCode'
    end
    object qryReciptTypesCustomerGrpID4Add2Customers1: TIntegerField
      FieldName = 'CustomerGrpID4Add2Customers1'
    end
    object qryReciptTypes_CustomerGrpID4Add2Customers1: TStringField
      FieldKind = fkLookup
      FieldName = '_CustomerGrpID4Add2Customers1'
      LookupDataSet = qryCustomersGroup
      LookupKeyFields = 'CustomerGrpID'
      LookupResultField = 'CustomerGrpName'
      KeyFields = 'CustomerGrpID4Add2Customers1'
      Size = 0
      Lookup = True
    end
    object qryReciptTypesCustomerGrpID4Add2Customers2: TIntegerField
      FieldName = 'CustomerGrpID4Add2Customers2'
    end
    object qryReciptTypes_CustomerGrpID4Add2Customers2: TStringField
      FieldKind = fkLookup
      FieldName = '_CustomerGrpID4Add2Customers2'
      LookupDataSet = qryCustomersGroup
      LookupKeyFields = 'CustomerGrpID'
      LookupResultField = 'CustomerGrpName'
      KeyFields = 'CustomerGrpID4Add2Customers2'
      Size = 200
      Lookup = True
    end
    object qryReciptTypesCustomerGrpID4Add2Customers3: TIntegerField
      FieldName = 'CustomerGrpID4Add2Customers3'
    end
    object qryReciptTypes_CustomerGrpID4Add2Customers3: TStringField
      FieldKind = fkLookup
      FieldName = '_CustomerGrpID4Add2Customers3'
      LookupDataSet = qryCustomersGroup
      LookupKeyFields = 'CustomerGrpID'
      LookupResultField = 'CustomerGrpName'
      KeyFields = 'CustomerGrpID4Add2Customers3'
      Size = 200
      Lookup = True
    end
    object qryReciptTypesPaymentsActive: TWordField
      FieldName = 'PaymentsActive'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesCalculatedEntityOrWeight: TWordField
      FieldName = 'CalculatedEntityOrWeight'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesAmountInAccountForm: TWordField
      FieldName = 'AmountInAccountForm'
    end
    object qryReciptTypesWorkFlowID: TIntegerField
      FieldName = 'WorkFlowID'
    end
    object qryReciptTypesStandardConsumptionActive: TWordField
      FieldName = 'StandardConsumptionActive'
    end
    object qryReciptTypesAidNumberUnic: TWordField
      FieldName = 'AidNumberUnic'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesAlloyDiameterSizeDividedByAMillion: TWordField
      FieldName = 'AlloyDiameterSizeDividedByAMillion'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesMinAmountOfGiftItems: TIntegerField
      FieldName = 'MinAmountOfGiftItems'
    end
    object qryReciptTypesPercentGiftItems: TFloatField
      FieldName = 'PercentGiftItems'
    end
    object qryReciptTypesActiveGiftItems: TIntegerField
      FieldName = 'ActiveGiftItems'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesDefaultDateActive: TWordField
      FieldName = 'DefaultDateActive'
    end
    object qryReciptTypesSyntheticCodeField: TStringField
      FieldName = 'SyntheticCodeField'
      Size = 250
    end
    object qryReciptTypesSyntheticCodeInField: TStringField
      FieldName = 'SyntheticCodeInField'
      Size = 250
    end
    object qryReciptTypesStuffCodingAddField: TStringField
      FieldName = 'StuffCodingAddField'
      Size = 250
    end
    object qryReciptTypesStuffCodingAddFieldCaption: TStringField
      FieldName = 'StuffCodingAddFieldCaption'
      Size = 250
    end
    object qryReciptTypesCustomersNoDiscount: TWordField
      FieldName = 'CustomersNoDiscount'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesShowNotEntityOnSearch: TLargeintField
      FieldName = 'ShowNotEntityOnSearch'
    end
    object qryReciptTypesStoreKindProductModel: TStringField
      FieldName = 'StoreKindProductModel'
      Size = 50
    end
    object qryReciptTypesCustomerKindPayments: TWideStringField
      FieldName = 'CustomerKindPayments'
      Size = 50
    end
    object qryReciptTypesEffectOnCustomer3: TWordField
      FieldName = 'EffectOnCustomer3'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesEffectOnCustomer4: TWordField
      FieldName = 'EffectOnCustomer4'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesEffectOnCustomerReg: TWordField
      FieldName = 'EffectOnCustomerReg'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesRecallTypeOption: TLargeintField
      FieldName = 'RecallTypeOption'
    end
    object qryReciptTypesDesignFormID: TIntegerField
      FieldName = 'DesignFormID'
    end
    object qryReciptTypesFormulaID: TIntegerField
      FieldName = 'FormulaID'
    end
    object qryReciptTypesFindParentReciptID: TStringField
      FieldName = 'FindParentReciptID'
      Size = 30
    end
    object qryReciptTypesCheckParentReciptID: TWordField
      FieldName = 'CheckParentReciptID'
    end
    object qryReciptTypesCalcCostStorageCaption: TStringField
      FieldName = 'CalcCostStorageCaption'
      Size = 30
    end
    object qryReciptTypesAidDateDay: TIntegerField
      FieldName = 'AidDateDay'
    end
    object qryReciptTypesFormStateDefault4Doc: TWordField
      FieldName = 'FormStateDefault4Doc'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesMachineNoCaption: TStringField
      FieldName = 'MachineNoCaption'
    end
    object qryReciptTypesMachineNameCaption: TStringField
      FieldName = 'MachineNameCaption'
    end
    object qryReciptTypesConstTopicCode_ArzBed: TLargeintField
      FieldName = 'ConstTopicCode_ArzBed'
    end
    object qryReciptTypesConstTopicCode_ArzBes: TLargeintField
      FieldName = 'ConstTopicCode_ArzBes'
    end
    object qryReciptTypesChangeAidReciptDate: TLargeintField
      FieldName = 'ChangeAidReciptDate'
    end
    object qryReciptTypesSettings: TLargeintField
      FieldName = 'Settings'
    end
    object qryReciptTypesIneffectiveInputChk: TWordField
      FieldName = 'IneffectiveInputChk'
    end
    object qryReciptTypesOtherFieldCaptions: TStringField
      FieldName = 'OtherFieldCaptions'
      Size = 500
    end
    object qryReciptTypesFieldInTheField: TStringField
      FieldName = 'FieldInTheField'
      Size = 500
    end
    object qryReciptTypesExcelRecallMaxAmount: TFloatField
      DisplayLabel = #1581#1583#1575#1705#1579#1585' '#1605#1602#1583#1575#1585' '#1602#1575#1576#1604' '#1601#1585#1575#1582#1608#1575#1606#1740
      FieldName = 'ExcelRecallMaxAmount'
    end
    object qryReciptTypesFormType4Service: TWordField
      FieldName = 'FormType4Service'
    end
    object qryReciptTypesInsuranceValue: TFloatField
      FieldName = 'InsuranceValue'
    end
    object qryReciptTypesReciptsSplit4PersonIDLevelID: TWordField
      FieldName = 'ReciptsSplit4PersonIDLevelID'
    end
    object qryReciptTypesReciptStatecreatedForm: TWordField
      FieldName = 'ReciptStatecreatedForm'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesReciptStatecreatedFormCo: TWordField
      FieldName = 'ReciptStatecreatedFormCo'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesReciptStateSmallerThan: TWordField
      FieldName = 'ReciptStateSmallerThan'
    end
    object qryReciptTypesRecuestActive: TLargeintField
      FieldName = 'RecuestActive'
    end
    object qryReciptTypesIfFirstUserIsNotEdited: TStringField
      FieldName = 'IfFirstUserIsNotEdited'
      Size = 50
    end
    object qryReciptTypesFillPersonID1From: TWordField
      FieldName = 'FillPersonID1From'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesCorrelateReciptState: TWordField
      FieldName = 'CorrelateReciptState'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryReciptTypesUseOtherCaption: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1576#1585#1575#1610' '#1603#1583' '#1587#1575#1740#1585' '#1605#1581#1604' '#1605#1589#1585#1601' '#1603#1575#1604#1575
      FieldName = 'UseOtherCaption'
      Size = 50
    end
    object qryReciptTypesPriceCo: TFloatField
      FieldName = 'PriceCo'
      OnChange = qryReciptTypesPriceCoChange
    end
    object qryReciptTypesStereotypyActive: TWordField
      FieldName = 'StereotypyActive'
    end
    object qryReciptTypesUpdateChildFromFather: TWordField
      FieldName = 'UpdateChildFromFather'
    end
    object qryReciptTypesValueControl: TLargeintField
      FieldName = 'ValueControl'
    end
    object qryReciptTypesLabelCaptions: TWideStringField
      FieldName = 'LabelCaptions'
      Size = 600
    end
    object qryReciptTypesReciptNumberControl: TLargeintField
      FieldName = 'ReciptNumberControl'
    end
    object qryReciptTypesOtherSettings: TLargeintField
      FieldName = 'OtherSettings'
    end
    object qryReciptTypesReciptType4Copy: TWordField
      FieldName = 'ReciptType4Copy'
    end
    object qryReciptTypesAutoCorrelateCo: TLargeintField
      FieldName = 'AutoCorrelateCo'
    end
    object qryReciptTypesDefaultStoreID: TSmallintField
      FieldName = 'DefaultStoreID'
    end
    object qryReciptTypesShowSettings: TLargeintField
      FieldName = 'ShowSettings'
    end
    object qryReciptTypesSpecialSettings: TLargeintField
      FieldName = 'SpecialSettings'
    end
  end
  object srcReciptTypes: TDataSource
    DataSet = qryReciptTypes
    OnStateChange = srcReciptTypesStateChange
    OnDataChange = srcReciptTypesDataChange
    Left = 634
    Top = 131
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 1
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
    Left = 213
    Top = 4
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 22225
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
        mmTop = 17198
        mmWidth = 266300
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578
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
        mmLeft = 212990
        mmTop = 15346
        mmWidth = 27781
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
        mmTop = 11377
        mmWidth = 266300
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
        mmLeft = 241565
        mmTop = 16933
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
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
        mmLeft = 243682
        mmTop = 15610
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1670#1575#1662' 2'
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
        mmLeft = 44186
        mmTop = 15610
        mmWidth = 37835
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
        mmLeft = 82550
        mmTop = 16933
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 1588
        mmTop = 6085
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
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
        mmLeft = 248709
        mmTop = 9260
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1670#1575#1662' 1'
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
        mmLeft = 84402
        mmTop = 15610
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1578#1575#1579#1610#1585
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
        mmLeft = 107421
        mmTop = 15346
        mmWidth = 30427
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
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
        mmLeft = 211138
        mmTop = 16933
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1578#1575#1579#1610#1585' '#1576#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1606#1576#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5376
        mmLeft = 171412
        mmTop = 15346
        mmWidth = 29718
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
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
        mmLeft = 160073
        mmTop = 16933
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1606#1581#1608#1607' '#1601#1585#1575#1582#1608#1575#1606#1610
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
        mmLeft = 140494
        mmTop = 15346
        mmWidth = 17992
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
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
        mmLeft = 138377
        mmTop = 16933
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
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
        mmLeft = 105304
        mmTop = 16933
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
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
        mmLeft = 42333
        mmTop = 16933
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1576#1583#1607#1603#1575#1585
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
        mmLeft = 22225
        mmTop = 15610
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
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
        mmLeft = 20373
        mmTop = 16933
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1576#1587#1578#1575#1606#1603#1575#1585
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
        mmLeft = 0
        mmTop = 15610
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
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
        mmHeight = 6350
        mmLeft = 106627
        mmTop = 0
        mmWidth = 52917
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
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
        mmLeft = 1588
        mmTop = 0
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1605#1588#1582#1589#1575#1578' '#1601#1585#1605#1607#1575
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
        mmLeft = 116152
        mmTop = 6085
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
        DataField = 'ReciptType'
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
        mmLeft = 243682
        mmTop = 0
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'ReciptCaption'
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
        mmLeft = 212990
        mmTop = 0
        mmWidth = 27781
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'PerformFileName'
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
        mmLeft = 84402
        mmTop = 0
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'ReportFileName'
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
        mmLeft = 44186
        mmTop = 0
        mmWidth = 37835
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'EffectType'
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
        mmHeight = 5419
        mmLeft = 161925
        mmTop = 0
        mmWidth = 48683
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'RecallType'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5927
        mmLeft = 140494
        mmTop = 0
        mmWidth = 17992
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'RecallReciptTypes'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6096
        mmLeft = 107421
        mmTop = 0
        mmWidth = 30427
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTxtBedBes: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTxtBedBes'
        OnGetText = ppDBTxtBedBesGetText
        Border.mmPadding = 0
        DataField = 'BedType'
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
        mmHeight = 5927
        mmLeft = 22225
        mmTop = 265
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        OnGetText = ppDBTxtBedBesGetText
        Border.mmPadding = 0
        DataField = 'BesType'
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
        mmHeight = 5927
        mmLeft = 0
        mmTop = 0
        mmWidth = 20108
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
        mmWidth = 266300
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 0
        mmWidth = 266300
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
    DataSource = srcReciptTypes
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 292
    Top = 4
  end
  object OpenDialog1: TOpenDialog
    Filter = 'ReportName|*.rtm'
    Left = 625
    Top = 14
  end
  object qryAccCode: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryAccCodeAfterInsert
    BeforePost = qryAccCodeBeforePost
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  * FROM    ReciptTypesAccCode'
      'WHERE ReciptType = :ReciptType')
    Left = 519
    Top = 146
    object qryAccCodeReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryAccCodeInfoKind: TWordField
      DisplayLabel = #1606#1608#1593
      FieldName = 'InfoKind'
      OnGetText = qryAccCodeInfoKindGetText
      OnSetText = qryAccCodeInfoKindSetText
    end
    object qryAccCodeBedBes: TWordField
      DisplayLabel = #1578#1588#1582#1610#1589
      FieldName = 'BedBes'
      OnGetText = qryAccCodeBedBesGetText
      OnSetText = qryAccCodeBedBesSetText
    end
    object qryAccCodeTopicCode: TLargeintField
      DisplayLabel = #1603#1583#1581#1587#1575#1576
      FieldName = 'TopicCode'
    end
    object qryAccCodeDetailCode: TStringField
      DisplayLabel = #1603#1583#1578#1601#1589#1610#1604#1610
      FieldName = 'DetailCode'
      Size = 12
    end
    object qryAccCodeCTopicCode: TStringField
      DisplayLabel = #1603#1583#1578#1601#1589#1740#1604#1740'2'
      FieldName = 'CTopicCode'
      Size = 12
    end
    object qryAccCodeCTopicCode2: TStringField
      DisplayLabel = #1603#1583#1605'.'#1607'2'
      FieldName = 'CTopicCode2'
      Size = 12
    end
    object qryAccCodeCTopicCode3: TStringField
      DisplayLabel = #1603#1583#1605'.'#1607'3'
      FieldName = 'CTopicCode3'
      Size = 12
    end
    object qryAccCodeNote: TWideStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'Note'
      Size = 250
    end
    object qryAccCodeCustID: TIntegerField
      DisplayLabel = #1705#1583#1605#1588#1578#1585#1740
      FieldName = 'CustID'
    end
  end
  object srcAccCode: TDataSource
    DataSet = qryAccCode
    OnStateChange = srcAccCodeStateChange
    Left = 449
    Top = 137
  end
  object qryCustomersGroup: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        0 AS CustomerGrpID, '#39#1594#1610#1585' '#1601#1593#1575#1604' '#1576#1575#1588#1583#39' AS CustomerGrp' +
        'Name, 0 AS GroupType'
      'UNION ALL'
      'SELECT        CustomerGrpID, CustomerGrpName, GroupType'
      'FROM            CustomersGroup'
      'WHERE        (GroupType IN (0,4,5,9, 11))')
    Left = 728
    Top = 168
  end
  object qryRecallReciptTypes: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'DECLARE @RecallReciptTypes VARCHAR(90) '
      'DECLARE @ReciptType VARCHAR(90)'
      'DECLARE @ReciptTypes Table(RecallReciptType int ,ReciptType int)'
      'DECLARE db_cursor CURSOR FOR '
      
        'select  RecallReciptTypes ,ReciptType FROM ReciptTypes1 where le' +
        'n(RecallReciptTypes)>0'
      ''
      ''
      'OPEN db_cursor  '
      'FETCH NEXT FROM db_cursor INTO @RecallReciptTypes , @ReciptType '
      ''
      'WHILE @@FETCH_STATUS = 0  '
      'BEGIN '
      '       INSERT INTO @ReciptTypes'
      
        #9'   SELECT part,@ReciptType FROM dbo.SplitString(@RecallReciptTy' +
        'pes,'#39','#39')  '
      ''
      
        '      FETCH NEXT FROM db_cursor INTO @RecallReciptTypes , @Recip' +
        'tType '
      'END '
      ''
      'CLOSE db_cursor  '
      'DEALLOCATE db_cursor '
      ''
      
        'SELECT t1.ReciptType,t3.ReciptCaption,t1.RecallReciptType,t2.Rec' +
        'iptCaption AS RrReciptCaption,t3.RecallType FROM @ReciptTypes t1'
      'JOIN ReciptTypes t2 ON t1.RecallReciptType = t2.ReciptType'
      'JOIN ReciptTypes t3 ON t1.ReciptType = t3.ReciptType'
      'ORDER BY t1.ReciptType')
    Left = 632
    Top = 432
    object qryRecallReciptTypesReciptType: TIntegerField
      FieldName = 'ReciptType'
    end
    object qryRecallReciptTypesReciptCaption: TStringField
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryRecallReciptTypesRecallReciptType: TIntegerField
      FieldName = 'RecallReciptType'
    end
    object qryRecallReciptTypesRrReciptCaption: TStringField
      FieldName = 'RrReciptCaption'
      Size = 70
    end
    object qryRecallReciptTypesRecallType: TWordField
      FieldName = 'RecallType'
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
  end
  object srcRecallReciptTypes: TDataSource
    DataSet = qryRecallReciptTypes
    OnStateChange = srcAccCodeStateChange
    Left = 545
    Top = 385
  end
  object qryPosition: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWideString
        Size = 2
        Value = '12'
      end>
    SQL.Strings = (
      
        'SELECT       Util.UserNotification.PositionCode,  FaraSystems.db' +
        'o.Position.PositionTitle'
      'FROM            Util.UserNotification INNER JOIN'
      
        '                         FaraSystems.dbo.Position ON Util.UserNo' +
        'tification.PositionCode = FaraSystems.dbo.Position.PositionCode'
      'WHERE        (Util.UserNotification.Kind = 1) '
      'AND (Util.UserNotification.ReciptType = :ReciptType )')
    Left = 512
    Top = 320
    object qryPositionPositionCode: TIntegerField
      DisplayLabel = #1705#1583' '#1662#1587#1578
      FieldName = 'PositionCode'
    end
    object qryPositionPositionTitle: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606'  '#1662#1587#1578
      FieldName = 'PositionTitle'
      Size = 100
    end
  end
  object srcPosition: TDataSource
    DataSet = qryPosition
    Left = 481
    Top = 441
  end
end
