inherited DeficitsF: TDeficitsF
  Left = 410
  Top = 124
  Caption = #1605#1593#1585#1601#1610' '#1603#1587#1608#1585#1575#1578' / '#1575#1590#1575#1601#1575#1578' '#1589#1608#1585#1578#1581#1587#1575#1576#1607#1575
  ClientHeight = 614
  ClientWidth = 863
  OnResize = FormResize
  ExplicitWidth = 871
  ExplicitHeight = 645
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 573
    Width = 863
    ExplicitTop = 573
    ExplicitWidth = 863
    object newPanel: TPanel
      Left = 615
      Top = 1
      Width = 247
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        247
        39)
      object BitBtn3: TBitBtn
        Left = 162
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 84
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 6
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
      Left = 451
      Top = 1
      Width = 164
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        164
        39)
      object BitBtn7: TBitBtn
        Left = 87
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
        Left = 7
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
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alLeft
      Caption = #1670#1575#1662
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendToExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
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
    object DBNavigator1: TDBNavigator
      Left = 406
      Top = 1
      Width = 80
      Height = 39
      DataSource = srcDeficits
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      TabOrder = 6
    end
    object BitBtn9: TBitBtn
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
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
    Width = 863
    ExplicitWidth = 863
    inherited ImgTemplate: TImage
      Left = 862
      ExplicitLeft = 862
    end
    inherited lblCaption: TLabel
      Left = 755
      ExplicitLeft = 755
    end
    inherited lblBaseDate: TLabel
      Left = 390
      ExplicitLeft = 390
    end
  end
  inherited Panel3: TPanel
    Width = 863
    Height = 520
    ExplicitWidth = 863
    ExplicitHeight = 520
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 663
      Height = 516
      Align = alLeft
      TabOrder = 0
      object TabControl1: TTabControl
        Left = 1
        Top = 1
        Width = 661
        Height = 232
        Align = alTop
        TabOrder = 0
        Tabs.Strings = (
          #1575#1590#1575#1601#1575#1578
          #1603#1587#1608#1585#1575#1578)
        TabIndex = 0
        OnChange = TabControl1Change
        DesignSize = (
          661
          232)
        object Label1: TLabel
          Left = 549
          Top = 28
          Width = 46
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = #1603#1583' '#1575#1590#1575#1601#1575#1578
          FocusControl = DBEdit1
          ParentBiDiMode = False
        end
        object Label2: TLabel
          Left = 549
          Top = 52
          Width = 61
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = #1593#1606#1608#1575#1606' '#1575#1590#1575#1601#1575#1578
          FocusControl = DBEdit2
          ParentBiDiMode = False
        end
        object Label4: TLabel
          Left = 549
          Top = 76
          Width = 60
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = #1606#1581#1608#1607' '#1605#1581#1575#1587#1576#1607
          ParentBiDiMode = False
        end
        object Label8: TLabel
          Left = 549
          Top = 102
          Width = 27
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = #1590#1585#1610#1576
          FocusControl = DBEdit8
          ParentBiDiMode = False
        end
        object DBEdit1: TDBEdit
          Left = 196
          Top = 24
          Width = 347
          Height = 21
          DataField = 'DeficitID'
          DataSource = srcDeficits
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 196
          Top = 48
          Width = 347
          Height = 21
          DataField = 'DeficitName'
          DataSource = srcDeficits
          TabOrder = 1
        end
        object DBEdit8: TDBEdit
          Left = 196
          Top = 96
          Width = 347
          Height = 21
          DataField = 'DeficitCo'
          DataSource = srcDeficits
          TabOrder = 3
        end
        object CmbCalculationType: TDBComboBox
          Left = 196
          Top = 72
          Width = 347
          Height = 21
          DataField = 'CalculationType'
          DataSource = srcDeficits
          Items.Strings = (
            #1590#1585#1610#1576' '#1605#1576#1604#1594' '#1601#1585#1608#1588' '
            #1590#1585#1610#1576' '#1605#1602#1583#1575#1585
            #1605#1576#1604#1594' '#1579#1575#1576#1578
            #1585#1606#1583' '#1576#1585' '#1575#1587#1575#1587' '#1590#1585#1610#1576
            #1576#1585#1575#1587#1575#1587' '#1603#1583#1605#1588#1578#1585#1610
            #1585#1606#1583' '#1576#1585' '#1575#1587#1575#1587' '#1590#1585#1610#1576'('#1582#1575#1604#1589')'#8207
            #1590#1585#1610#1576' '#1605#1576#1604#1594' '#1582#1575#1604#1589' '#1601#1585#1608#1588' ')
          TabOrder = 2
          OnEnter = CmbCalculationTypeEnter
        end
        object DBCheckBox5: TDBCheckBox
          Left = 401
          Top = 138
          Width = 142
          Height = 17
          Alignment = taLeftJustify
          Anchors = [akTop, akRight]
          Caption = #1662#1587' '#1575#1586' '#1579#1576#1578' '#1602#1575#1576#1604' '#1578#1594#1610#1610#1585' '#1576#1575#1588#1583'.'#8207
          DataField = 'EditAfterPost'
          DataSource = srcDeficits
          TabOrder = 5
          ValueChecked = '1'
          ValueUnchecked = '2'
        end
        object DBCheckBox1: TDBCheckBox
          Left = 209
          Top = 119
          Width = 334
          Height = 17
          Alignment = taLeftJustify
          Anchors = [akTop, akRight]
          Caption = #1605#1576#1604#1594' '#1575#1610#1606' '#1603#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578' '#1605#1578#1571#1579#1585' '#1575#1586' ('#1603#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578')'#1607#1575#1610' '#1602#1576#1604#1610' '#1576#1575#1588#1583'.'#8207
          DataField = 'BeforeDeficitCalc'
          DataSource = srcDeficits
          TabOrder = 4
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbchkTTMSActive: TDBCheckBox
          Left = 352
          Top = 157
          Width = 191
          Height = 17
          Alignment = taLeftJustify
          Anchors = [akTop, akRight]
          Caption = #1583#1585' '#1582#1585#1740#1583' '#1601#1585#1608#1588' '#1601#1589#1604#1740' '#1607#1605' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
          DataField = 'TTMSActive'
          DataSource = srcDeficits
          TabOrder = 6
          ValueChecked = '1'
          ValueUnchecked = '2'
        end
      end
      object PageControl1: TPageControl
        Left = 1
        Top = 175
        Width = 661
        Height = 340
        ActivePage = TabSheet1
        Align = alBottom
        TabOrder = 1
        OnChange = PageControl1Change
        object TabSheet3: TTabSheet
          Caption = '...'
          ImageIndex = 2
          DesignSize = (
            653
            312)
          object SpeedButton5: TSpeedButton
            Left = 271
            Top = 6
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton5Click
            ExplicitLeft = 94
          end
          object Label9: TLabel
            Left = 498
            Top = 10
            Width = 144
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1603#1583#1607#1575#1610'  '#1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578' '#1605#1572#1579#1585' '
            ExplicitLeft = 321
          end
          object DBEdit4: TDBEdit
            Left = 296
            Top = 7
            Width = 202
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'DeficitsTogetherRange'
            DataSource = srcDeficits
            ReadOnly = True
            TabOrder = 0
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 262
            Top = 32
            Width = 170
            Height = 85
            Align = alCustom
            Caption = ' '#1606#1581#1608#1607' '#1579#1576#1578' '
            DataField = 'ExportType'
            DataSource = srcDeficits
            Items.Strings = (
              #1578#1608#1587#1591' '#1603#1575#1585#1576#1600#1600#1585' '
              #1578#1608#1587#1591' '#1587#1610#1587#1578#1605' ')
            TabOrder = 1
            Values.Strings = (
              '0'
              '1'
              '2'
              '3')
          end
          object grp1: TGroupBox
            Left = 38
            Top = 33
            Width = 170
            Height = 85
            Align = alCustom
            Caption = ' '#1605#1581#1583#1608#1583#1607' '#1575#1593#1578#1576#1575#1585' '
            TabOrder = 2
            object Label11: TLabel
              Left = 116
              Top = 24
              Width = 31
              Height = 13
              Caption = #1575#1586' '#1578#1575#1585#1610#1582
              FocusControl = DBEdit10
            end
            object Label12: TLabel
              Left = 117
              Top = 56
              Width = 30
              Height = 13
              Caption = #1578#1575' '#1578#1575#1585#1610#1582
              FocusControl = DBEdit11
            end
            object DBEdit10: TDBEdit
              Left = 6
              Top = 20
              Width = 108
              Height = 21
              DataField = 'StartDate'
              DataSource = srcDeficits
              TabOrder = 0
            end
            object DBEdit11: TDBEdit
              Left = 6
              Top = 52
              Width = 108
              Height = 21
              DataField = 'EndDate'
              DataSource = srcDeficits
              TabOrder = 1
            end
          end
          object GroupBox1: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 191
            Width = 647
            Height = 57
            Align = alBottom
            Caption = 
              ' '#1603#1583' '#1585#1583#1610#1601' '#1576#1585#1575#1610' '#1711#1585#1608#1607' '#1576#1606#1583#1610' '#1583#1585' '#1601#1575#1603#1578#1608#1585'('#1585#1583#1610#1601' '#1607#1575#1610' '#1610#1603#1587#1575#1606' '#1583#1585' '#1670#1575#1662' '#1601#1575#1603#1578#1608#1585' '#1576 +
              #1575' '#1607#1605' '#1580#1605#1593' '#1605#1610' '#1588#1608#1606#1583')'#8207' '
            TabOrder = 3
            object Label13: TLabel
              Left = 308
              Top = 28
              Width = 126
              Height = 13
              BiDiMode = bdLeftToRight
              Caption = #1603#1583' '#1585#1583#1610#1601' '#1711#1585#1608#1607' '#1576#1606#1583#1610' '#1583#1585' '#1601#1575#1603#1578#1608#1585
              ParentBiDiMode = False
            end
            object edtGroupDeficitID: TDBEdit
              Left = 157
              Top = 24
              Width = 145
              Height = 21
              DataField = 'GroupDeficitID'
              DataSource = srcDeficits
              TabOrder = 0
            end
          end
          object GroupBox2: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 254
            Width = 647
            Height = 55
            Align = alBottom
            Caption = #1593#1606#1608#1575#1606' '#1601#1740#1604#1583' '#1570#1740#1578#1605' '#1601#1585#1605' '#1580#1583#1608#1604#1740' '#1580#1607#1578' '#1580#1575#1740#1711#1586#1740#1606' '#1705#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578' '#1580#1575#1585#1740
            TabOrder = 4
            object Label14: TLabel
              Left = 308
              Top = 25
              Width = 51
              Height = 13
              Align = alCustom
              BiDiMode = bdLeftToRight
              Caption = #1593#1606#1608#1575#1606' '#1601#1740#1604#1583' '
              ParentBiDiMode = False
            end
            object edtPost2Field: TDBEdit
              Left = 157
              Top = 22
              Width = 145
              Height = 21
              DataField = 'Post2Field'
              DataSource = srcDeficits
              TabOrder = 0
            end
          end
        end
        object ts0: TTabSheet
          Caption = #1605#1581#1583#1608#1583#1740#1578' '#1711#1585#1608#1607' '#1603#1575#1604#1575
          ImageIndex = 6
        end
        object ts1: TTabSheet
          Caption = #1605#1581#1583#1608#1583#1740#1578' '#1603#1583#1610#1606#1711' '#1603#1575#1604#1575
          object Panel5: TPanel
            Left = 0
            Top = 278
            Width = 653
            Height = 34
            Align = alBottom
            BevelWidth = 3
            TabOrder = 0
            object BitBtn10: TBitBtn
              Left = 387
              Top = 5
              Width = 75
              Height = 25
              Action = DataSetDelete1
              Caption = #1581#1584#1601
              TabOrder = 0
            end
          end
          object DBGrid2: TDBGrid
            Tag = 111
            Left = 0
            Top = 0
            Width = 653
            Height = 278
            Align = alClient
            Color = clCream
            DataSource = dsDeficitsCorrelation
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnEditButtonClick = DBGrid2EditButtonClick
            OnKeyPress = DBGrid2KeyPress
            Columns = <
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'CodeFrom'
                Width = 169
                Visible = True
              end
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = 'CodeTo'
                Width = 158
                Visible = True
              end>
          end
        end
        object ts2: TTabSheet
          Caption = #1605#1581#1583#1608#1583#1740#1578' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606
          ImageIndex = 4
        end
        object ts3: TTabSheet
          Caption = #1605#1581#1583#1608#1583#1740#1578' '#1605#1588#1578#1585#1610#1575#1606
          ImageIndex = 3
          object Label25: TLabel
            Left = 0
            Top = 0
            Width = 653
            Height = 13
            Align = alTop
            Caption = 
              #1605#1593#1585#1601#1740' '#1601#1585#1605' '#1607#1575'>'#1705#1606#1578#1585#1604' '#1582#1575#1589'>'#1705#1583' '#1605#1588#1578#1585#1740' 2 '#1576#1580#1575#1740' '#1705#1583#1605#1588#1578#1585#1740' 1 '#1583#1585' '#1705#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575 +
              #1578' '#1587#1740#1587#1578#1605#1740' '#1583#1585' '#1606#1592#1585' '#1711#1585#1601#1578#1607' '#1588#1608#1583
            ExplicitLeft = 149
            ExplicitWidth = 504
          end
        end
        object TabSheet2: TTabSheet
          Caption = #1581#1587#1575#1576#1583#1575#1585#1610' '
          ImageIndex = 1
          DesignSize = (
            653
            312)
          object Label5: TLabel
            Left = 503
            Top = 18
            Width = 62
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
            FocusControl = edtacc_TopicCode
            ParentBiDiMode = False
          end
          object Label6: TLabel
            Left = 503
            Top = 50
            Width = 105
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610' '
            FocusControl = edtacc_DetailCode
            ParentBiDiMode = False
          end
          object Label7: TLabel
            Left = 503
            Top = 82
            Width = 108
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2 '#1581#1587#1575#1576#1583#1575#1585#1610
            FocusControl = Edtacc_CTopicCode
            ParentBiDiMode = False
          end
          object SpeedButton1: TSpeedButton
            Left = 402
            Top = 13
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton1Click
          end
          object SpeedButton2: TSpeedButton
            Left = 402
            Top = 45
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton2Click
          end
          object SpeedButton3: TSpeedButton
            Left = 402
            Top = 77
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton3Click
          end
          object DBText1: TDBText
            Left = 204
            Top = 16
            Width = 190
            Height = 17
            Color = 13948116
            DataField = '_MoeenName'
            DataSource = srcDeficits
            ParentColor = False
            Transparent = True
          end
          object DBText2: TDBText
            Left = 204
            Top = 48
            Width = 190
            Height = 17
            Color = 13948116
            DataField = '_DetailName'
            DataSource = srcDeficits
            ParentColor = False
            Transparent = True
          end
          object DBText3: TDBText
            Left = 204
            Top = 80
            Width = 190
            Height = 17
            Color = 13948116
            DataField = '_CTopicName'
            DataSource = srcDeficits
            ParentColor = False
            Transparent = True
          end
          object Label3: TLabel
            Left = 503
            Top = 115
            Width = 108
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'3 '#1581#1587#1575#1576#1583#1575#1585#1610
            FocusControl = edtacc_CTopicCode2
            ParentBiDiMode = False
          end
          object SpeedButton4: TSpeedButton
            Left = 401
            Top = 110
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton4Click
          end
          object DBText4: TDBText
            Left = 204
            Top = 113
            Width = 190
            Height = 17
            Color = 13948116
            DataField = '_CTopicName2'
            DataSource = srcDeficits
            ParentColor = False
            Transparent = True
          end
          object Label10: TLabel
            Left = 503
            Top = 184
            Width = 104
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = #1603#1583' '#1581#1587#1575#1576' '#1591#1585#1601' '#1581#1587#1575#1576
            FocusControl = edtObverseTopicCode
            ParentBiDiMode = False
          end
          object SpeedButton6: TSpeedButton
            Left = 402
            Top = 179
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton6Click
          end
          object DBText5: TDBText
            Left = 204
            Top = 182
            Width = 190
            Height = 17
            Color = 13948116
            DataField = '_ObverseTopicCode'
            DataSource = srcDeficits
            ParentColor = False
            Transparent = True
          end
          object DBText6: TDBText
            Left = 204
            Top = 148
            Width = 190
            Height = 16
            Anchors = [akLeft, akTop, akRight]
            Color = 13948116
            DataField = '__CTopicCodeName3'
            ParentColor = False
            Transparent = True
          end
          object SpeedButton10: TSpeedButton
            Left = 401
            Top = 145
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton10Click
          end
          object Label48: TLabel
            Left = 503
            Top = 150
            Width = 108
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'4 '#1581#1587#1575#1576#1583#1575#1585#1610
            FocusControl = edtacc_CTopicCode3
          end
          object edtacc_TopicCode: TDBEdit
            Left = 430
            Top = 14
            Width = 64
            Height = 21
            DataField = 'acc_TopicCode'
            DataSource = srcDeficits
            TabOrder = 0
            OnKeyDown = edtacc_TopicCodeKeyDown
          end
          object edtacc_DetailCode: TDBEdit
            Left = 430
            Top = 46
            Width = 64
            Height = 21
            DataField = 'acc_DetailCode'
            DataSource = srcDeficits
            TabOrder = 1
            OnKeyDown = edtacc_DetailCodeKeyDown
          end
          object Edtacc_CTopicCode: TDBEdit
            Left = 430
            Top = 78
            Width = 64
            Height = 21
            DataField = 'acc_CTopicCode'
            DataSource = srcDeficits
            TabOrder = 2
            OnKeyDown = Edtacc_CTopicCodeKeyDown
          end
          object edtacc_CTopicCode2: TDBEdit
            Left = 430
            Top = 111
            Width = 64
            Height = 21
            DataField = 'acc_CTopicCode2'
            DataSource = srcDeficits
            TabOrder = 3
            OnKeyDown = edtacc_CTopicCode2KeyDown
          end
          object edtObverseTopicCode: TDBEdit
            Left = 430
            Top = 180
            Width = 64
            Height = 21
            DataField = 'ObverseTopicCode'
            DataSource = srcDeficits
            TabOrder = 4
            OnKeyDown = edtObverseTopicCodeKeyDown
          end
          object edtacc_CTopicCode3: TDBEdit
            Left = 430
            Top = 146
            Width = 64
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'acc_CTopicCode3'
            DataSource = srcDeficits
            TabOrder = 5
          end
        end
        object TabSheet1: TTabSheet
          Caption = #1576#1583#1607#1705#1575#1585
          ImageIndex = 6
          DesignSize = (
            653
            312)
          object Label15: TLabel
            Left = 473
            Top = 50
            Width = 62
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
            FocusControl = edtTopicCodeBed
            ParentBiDiMode = False
          end
          object Label16: TLabel
            Left = 473
            Top = 85
            Width = 105
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610' '
            FocusControl = edtacc_DetailCodeBed
            ParentBiDiMode = False
          end
          object Label17: TLabel
            Left = 473
            Top = 120
            Width = 108
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2 '#1581#1587#1575#1576#1583#1575#1585#1610
            FocusControl = Edtacc_CTopicCodeBed
            ParentBiDiMode = False
          end
          object SpeedButton7: TSpeedButton
            Left = 371
            Top = 46
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton7Click
          end
          object SpeedButton8: TSpeedButton
            Left = 372
            Top = 81
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton8Click
          end
          object SpeedButton9: TSpeedButton
            Left = 372
            Top = 116
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton9Click
          end
          object txt_MoeenNameBed: TDBText
            Left = 175
            Top = 48
            Width = 190
            Height = 17
            Color = 13948116
            DataField = '_MoeenNameBed'
            DataSource = srcDeficits
            ParentColor = False
            Transparent = True
          end
          object txt_DetailNameBed: TDBText
            Left = 174
            Top = 83
            Width = 190
            Height = 17
            Color = 13948116
            DataField = '_DetailNameBed'
            DataSource = srcDeficits
            ParentColor = False
            Transparent = True
          end
          object txt_CTopicNameBed: TDBText
            Left = 174
            Top = 118
            Width = 190
            Height = 17
            Color = 13948116
            DataField = '_CTopicNameBed'
            DataSource = srcDeficits
            ParentColor = False
            Transparent = True
          end
          object Label18: TLabel
            Left = 473
            Top = 155
            Width = 108
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'3 '#1581#1587#1575#1576#1583#1575#1585#1610
            FocusControl = edtacc_CTopicCode2Bed
            ParentBiDiMode = False
          end
          object SpeedButton11: TSpeedButton
            Left = 372
            Top = 150
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton11Click
          end
          object txt_CTopicName2Bed: TDBText
            Left = 174
            Top = 153
            Width = 190
            Height = 17
            Color = 13948116
            DataField = '_CTopicName2Bed'
            DataSource = srcDeficits
            ParentColor = False
            Transparent = True
          end
          object txt__CTopicCodeName3Bed: TDBText
            Left = 174
            Top = 188
            Width = 190
            Height = 16
            Anchors = [akLeft, akTop, akRight]
            Color = 13948116
            DataField = '__CTopicCodeName3Bed'
            DataSource = srcDeficits
            ParentColor = False
            Transparent = True
          end
          object SpeedButton12: TSpeedButton
            Left = 372
            Top = 185
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = SpeedButton12Click
          end
          object Label19: TLabel
            Left = 473
            Top = 190
            Width = 108
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'4 '#1581#1587#1575#1576#1583#1575#1585#1610
            FocusControl = edtCTopicCode3Bed
          end
          object edtTopicCodeBed: TDBEdit
            Left = 399
            Top = 46
            Width = 64
            Height = 21
            DataField = 'TopicCodeBed'
            DataSource = srcDeficits
            TabOrder = 0
          end
          object edtacc_DetailCodeBed: TDBEdit
            Left = 400
            Top = 81
            Width = 64
            Height = 21
            DataField = 'DetailCodeBed'
            DataSource = srcDeficits
            TabOrder = 1
            OnKeyDown = edtacc_DetailCodeKeyDown
          end
          object Edtacc_CTopicCodeBed: TDBEdit
            Left = 400
            Top = 116
            Width = 64
            Height = 21
            DataField = 'CTopicCodeBed'
            DataSource = srcDeficits
            TabOrder = 2
          end
          object edtacc_CTopicCode2Bed: TDBEdit
            Left = 400
            Top = 151
            Width = 64
            Height = 21
            DataField = 'CTopicCode2Bed'
            DataSource = srcDeficits
            TabOrder = 3
            OnKeyDown = edtacc_CTopicCode2KeyDown
          end
          object edtCTopicCode3Bed: TDBEdit
            Left = 400
            Top = 186
            Width = 64
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'CTopicCode3Bed'
            DataSource = srcDeficits
            TabOrder = 4
          end
          object dbchkAccFixedCoding: TDBCheckBox
            Left = 197
            Top = 23
            Width = 266
            Height = 17
            Anchors = [akTop, akRight]
            Caption = #1589#1583#1608#1585' '#1587#1606#1583' '#1575#1586' '#1607#1605#1740#1606' '#1705#1583#1740#1606#1711' '#1576#1583#1607#1705#1575#1585'/'#1576#1587#1578#1575#1606#1705#1575#1585' '#1575#1606#1580#1575#1605' '#1588#1608#1583
            DataField = 'AccFixedCoding'
            DataSource = srcDeficits
            TabOrder = 5
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object TabSheet4: TTabSheet
          Caption = #1576#1587#1578#1575#1606#1705#1575#1585
          ImageIndex = 7
          DesignSize = (
            653
            312)
          object Label20: TLabel
            Left = 480
            Top = 65
            Width = 62
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
            FocusControl = edtTopicCodeBes
            ParentBiDiMode = False
          end
          object Label21: TLabel
            Left = 480
            Top = 100
            Width = 105
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610' '
            FocusControl = edtacc_DetailCodeBes
            ParentBiDiMode = False
          end
          object Label22: TLabel
            Left = 480
            Top = 134
            Width = 108
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2 '#1581#1587#1575#1576#1583#1575#1585#1610
            FocusControl = Edtacc_CTopicCodeBes
            ParentBiDiMode = False
          end
          object SpeedButton13: TSpeedButton
            Left = 378
            Top = 60
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton13Click
          end
          object SpeedButton14: TSpeedButton
            Left = 378
            Top = 95
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton14Click
          end
          object SpeedButton15: TSpeedButton
            Left = 378
            Top = 129
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton15Click
          end
          object txt_MoeenNameBes: TDBText
            Left = 182
            Top = 63
            Width = 190
            Height = 17
            Color = 13948116
            DataField = '_MoeenNameBes'
            DataSource = srcDeficits
            ParentColor = False
            Transparent = True
          end
          object txt_DetailNameBes: TDBText
            Left = 182
            Top = 98
            Width = 190
            Height = 17
            Color = 13948116
            DataField = '_DetailNameBes'
            DataSource = srcDeficits
            ParentColor = False
            Transparent = True
          end
          object txt_CTopicNameBes: TDBText
            Left = 182
            Top = 132
            Width = 190
            Height = 17
            Color = 13948116
            DataField = '_CTopicNameBes'
            DataSource = srcDeficits
            ParentColor = False
            Transparent = True
          end
          object Label23: TLabel
            Left = 480
            Top = 170
            Width = 108
            Height = 13
            BiDiMode = bdLeftToRight
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'3 '#1581#1587#1575#1576#1583#1575#1585#1610
            FocusControl = edtacc_CTopicCode2Bes
            ParentBiDiMode = False
          end
          object SpeedButton16: TSpeedButton
            Left = 378
            Top = 165
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton16Click
          end
          object txt_CTopicName2Bes: TDBText
            Left = 182
            Top = 168
            Width = 190
            Height = 17
            Color = 13948116
            DataField = '_CTopicName2Bes'
            DataSource = srcDeficits
            ParentColor = False
            Transparent = True
          end
          object txt__CTopicCodeName3Bes: TDBText
            Left = 182
            Top = 203
            Width = 190
            Height = 16
            BiDiMode = bdRightToLeft
            Color = 13948116
            DataField = '__CTopicCodeName3Bes'
            DataSource = srcDeficits
            ParentBiDiMode = False
            ParentColor = False
            Transparent = True
          end
          object SpeedButton17: TSpeedButton
            Left = 378
            Top = 200
            Width = 23
            Height = 22
            BiDiMode = bdLeftToRight
            Caption = '...'
            ParentBiDiMode = False
            OnClick = SpeedButton17Click
          end
          object Label24: TLabel
            Left = 480
            Top = 205
            Width = 108
            Height = 13
            Alignment = taRightJustify
            BiDiMode = bdLeftToRight
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'4 '#1581#1587#1575#1576#1583#1575#1585#1610
            FocusControl = edtCTopicCode3Bes
            ParentBiDiMode = False
          end
          object edtTopicCodeBes: TDBEdit
            Left = 407
            Top = 61
            Width = 64
            Height = 21
            DataField = 'TopicCodeBes'
            DataSource = srcDeficits
            TabOrder = 0
          end
          object edtacc_DetailCodeBes: TDBEdit
            Left = 407
            Top = 96
            Width = 64
            Height = 21
            DataField = 'DetailCodeBes'
            DataSource = srcDeficits
            TabOrder = 1
            OnKeyDown = edtacc_DetailCodeKeyDown
          end
          object Edtacc_CTopicCodeBes: TDBEdit
            Left = 407
            Top = 130
            Width = 64
            Height = 21
            DataField = 'CTopicCodeBes'
            DataSource = srcDeficits
            TabOrder = 2
          end
          object edtacc_CTopicCode2Bes: TDBEdit
            Left = 407
            Top = 166
            Width = 64
            Height = 21
            DataField = 'CTopicCode2Bes'
            DataSource = srcDeficits
            TabOrder = 3
            OnKeyDown = edtacc_CTopicCode2KeyDown
          end
          object edtCTopicCode3Bes: TDBEdit
            Left = 407
            Top = 201
            Width = 64
            Height = 21
            BiDiMode = bdLeftToRight
            DataField = 'CTopicCode3Bes'
            DataSource = srcDeficits
            ParentBiDiMode = False
            TabOrder = 4
          end
          object dbchkAccFixedCoding1: TDBCheckBox
            Left = 205
            Top = 39
            Width = 266
            Height = 17
            Anchors = [akTop, akRight]
            Caption = #1589#1583#1608#1585' '#1587#1606#1583' '#1575#1586' '#1607#1605#1740#1606' '#1705#1583#1740#1606#1711' '#1576#1583#1607#1705#1575#1585'/'#1576#1587#1578#1575#1606#1705#1575#1585' '#1575#1606#1580#1575#1605' '#1588#1608#1583
            DataField = 'AccFixedCoding'
            DataSource = srcDeficits
            TabOrder = 5
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
      end
    end
    object DBGrid1: TDBGrid
      Left = 665
      Top = 2
      Width = 196
      Height = 516
      Align = alClient
      Color = clCream
      DataSource = srcDeficits
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'DeficitID'
          Title.Caption = #1603#1583
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DeficitName'
          Width = 183
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GroupDeficitID'
          Width = 17
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcDeficits
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcDeficits
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcDeficits
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcDeficits
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcDeficits
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1603#1575#1604#1575
      DataSource = dsDeficitsCorrelation
    end
  end
  inherited ImageList1: TImageList
    Left = 664
    Top = 233
  end
  object qryDeficits: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryDeficitsAfterInsert
    AfterPost = qryDeficitsAfterPost
    BeforeDelete = qryDeficitsBeforeDelete
    AfterScroll = qryDeficitsAfterScroll
    Parameters = <
      item
        Name = 'Type'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  * FROM Deficits'
      'Where DeficitType =:Type'
      #13'ORDER BY DeficitID')
    Left = 736
    Top = 109
    object qryDeficitsDeficitID: TSmallintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578' '#1589#1608#1585#1578#1581#1587#1575#1576
      FieldName = 'DeficitID'
    end
    object qryDeficitsDeficitName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1603#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578
      FieldName = 'DeficitName'
      Required = True
      Size = 50
    end
    object qryDeficitsDeficitType: TWordField
      DisplayLabel = #1606#1608#1593' '#1603#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578
      FieldName = 'DeficitType'
    end
    object qryDeficitsCalculationType: TWordField
      Alignment = taLeftJustify
      DisplayLabel = #1606#1581#1608#1607' '#1605#1581#1575#1587#1576#1607
      FieldName = 'CalculationType'
      OnGetText = qryDeficitsCalculationTypeGetText
      OnSetText = qryDeficitsCalculationTypeSetText
    end
    object qryDeficitsDeficitCo: TFloatField
      Alignment = taLeftJustify
      DisplayLabel = #1590#1585#1610#1576
      FieldName = 'DeficitCo'
    end
    object qryDeficitsExportType: TWordField
      DisplayLabel = #1606#1581#1608#1607' '#1579#1576#1578' '#1583#1585' '#1601#1575#1603#1578#1608#1585' '#1601#1585#1608#1588
      FieldName = 'ExportType'
    end
    object qryDeficitsacc_TopicCode: TLargeintField
      Tag = 3
      DefaultExpression = '0'
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'acc_TopicCode'
    end
    object qryDeficits_MoeenName: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = '_MoeenName'
      LookupDataSet = DmF.qryAccTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'acc_TopicCode'
      LookupCache = True
      Size = 255
      Lookup = True
    end
    object qryDeficitsacc_DetailCode: TStringField
      DefaultExpression = '0'
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610' '
      FieldName = 'acc_DetailCode'
      Size = 12
    end
    object qryDeficits_DetailName: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = '_DetailName'
      LookupDataSet = DmF.qryAccDetailCode
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName'
      KeyFields = 'acc_DetailCode'
      LookupCache = True
      Size = 255
      Lookup = True
    end
    object qryDeficitsacc_CTopicCode: TStringField
      DefaultExpression = '0'
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'acc_CTopicCode'
      Size = 12
    end
    object qryDeficits_CTopicName: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = '_CTopicName'
      LookupDataSet = DmF.qryAccCenterTopics
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName'
      KeyFields = 'acc_CTopicCode'
      LookupCache = True
      Size = 255
      Lookup = True
    end
    object qryDeficitsacc_CTopicCode2: TStringField
      FieldName = 'acc_CTopicCode2'
      Size = 12
    end
    object qryDeficits_CTopicName2: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = '_CTopicName2'
      LookupDataSet = DmF.qryAccCenterTopics2
      LookupKeyFields = 'CTopicCode2'
      LookupResultField = 'CTopicName2'
      KeyFields = 'acc_CTopicCode2'
      LookupCache = True
      Size = 255
      Lookup = True
    end
    object qryDeficitsacc_CTopicCode3: TStringField
      FieldName = 'acc_CTopicCode3'
      Size = 12
    end
    object qryDeficits__CTopicCodeName3: TStringField
      FieldKind = fkLookup
      FieldName = '__CTopicCodeName3'
      LookupDataSet = DmF.qryAccCenterTopics3
      LookupKeyFields = 'CTopicCode3'
      LookupResultField = 'CTopicName3'
      KeyFields = 'acc_CTopicCode3'
      Size = 250
      Lookup = True
    end
    object qryDeficitsEditAfterPost: TWordField
      FieldName = 'EditAfterPost'
    end
    object qryDeficitsBeforeDeficitCalc: TWordField
      FieldName = 'BeforeDeficitCalc'
    end
    object qryDeficitsDeficitsTogetherRange: TStringField
      FieldName = 'DeficitsTogetherRange'
      FixedChar = True
      Size = 250
    end
    object qryDeficits_ObverseTopicCode: TStringField
      FieldKind = fkLookup
      FieldName = '_ObverseTopicCode'
      LookupDataSet = DmF.qryAccTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'ObverseTopicCode'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryDeficitsStartDate: TStringField
      FieldName = 'StartDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryDeficitsEndDate: TStringField
      FieldName = 'EndDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryDeficitsObverseTopicCode: TLargeintField
      FieldName = 'ObverseTopicCode'
    end
    object qryDeficitsGroupDeficitID: TIntegerField
      DisplayLabel = #1603#1583' '#1585#1583#1610#1601' '#1711#1585#1608#1607' '#1576#1606#1583#1610' '#1583#1585' '#1601#1575#1603#1578#1608#1585
      FieldName = 'GroupDeficitID'
    end
    object qryDeficitsPost2Field: TStringField
      FieldName = 'Post2Field'
      Size = 50
    end
    object qryDeficitsAccFixedCoding: TWordField
      FieldName = 'AccFixedCoding'
    end
    object qryDeficitsTopicCodeBed: TLargeintField
      Tag = 3
      DefaultExpression = '0'
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'TopicCodeBed'
    end
    object qryDeficits_MoeenNameBed: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = '_MoeenNameBed'
      LookupDataSet = DmF.qryAccTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'TopicCodeBed'
      LookupCache = True
      Size = 255
      Lookup = True
    end
    object qryDeficitsDetailCodeBed: TStringField
      DefaultExpression = '0'
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610' '
      FieldName = 'DetailCodeBed'
      Size = 12
    end
    object qryDeficits_DetailNameBed: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = '_DetailNameBed'
      LookupDataSet = DmF.qryAccDetailCode
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName'
      KeyFields = 'DetailCodeBed'
      LookupCache = True
      Size = 255
      Lookup = True
    end
    object qryDeficitsCTopicCodeBed: TStringField
      DefaultExpression = '0'
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'CTopicCodeBed'
      Size = 12
    end
    object qryDeficits_CTopicNameBed: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = '_CTopicNameBed'
      LookupDataSet = DmF.qryAccCenterTopics
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName'
      KeyFields = 'CTopicCodeBed'
      LookupCache = True
      Size = 255
      Lookup = True
    end
    object qryDeficitsCTopicCode2Bed: TStringField
      FieldName = 'CTopicCode2Bed'
      Size = 12
    end
    object qryDeficits_CTopicName2Bed: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = '_CTopicName2Bed'
      LookupDataSet = DmF.qryAccCenterTopics2
      LookupKeyFields = 'CTopicCode2'
      LookupResultField = 'CTopicName2'
      KeyFields = 'CTopicCode2Bed'
      LookupCache = True
      Size = 255
      Lookup = True
    end
    object qryDeficitsCTopicCode3Bed: TStringField
      FieldName = 'CTopicCode3Bed'
      Size = 12
    end
    object qryDeficits__CTopicCodeName3Bed: TStringField
      FieldKind = fkLookup
      FieldName = '__CTopicCodeName3Bed'
      LookupDataSet = DmF.qryAccCenterTopics3
      LookupKeyFields = 'CTopicCode3'
      LookupResultField = 'CTopicName3'
      KeyFields = 'CTopicCode3Bed'
      Size = 250
      Lookup = True
    end
    object qryDeficitsTopicCodeBes: TLargeintField
      Tag = 3
      DefaultExpression = '0'
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'TopicCodeBes'
    end
    object qryDeficits_MoeenNameBes: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = '_MoeenNameBes'
      LookupDataSet = DmF.qryAccTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'TopicCodeBes'
      LookupCache = True
      Size = 255
      Lookup = True
    end
    object qryDeficitsDetailCodeBes: TStringField
      DefaultExpression = '0'
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610' '
      FieldName = 'DetailCodeBes'
      Size = 12
    end
    object qryDeficits_DetailNameBes: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = '_DetailNameBes'
      LookupDataSet = DmF.qryAccDetailCode
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName'
      KeyFields = 'DetailCodeBes'
      LookupCache = True
      Size = 255
      Lookup = True
    end
    object qryDeficitsCTopicCodeBes: TStringField
      DefaultExpression = '0'
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'CTopicCodeBes'
      Size = 12
    end
    object qryDeficits_CTopicNameBes: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = '_CTopicNameBes'
      LookupDataSet = DmF.qryAccCenterTopics
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName'
      KeyFields = 'CTopicCodeBes'
      LookupCache = True
      Size = 255
      Lookup = True
    end
    object qryDeficitsCTopicCode2Bes: TStringField
      FieldName = 'CTopicCode2Bes'
      Size = 12
    end
    object qryDeficits_CTopicName2Bes: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = '_CTopicName2Bes'
      LookupDataSet = DmF.qryAccCenterTopics2
      LookupKeyFields = 'CTopicCode2'
      LookupResultField = 'CTopicName2'
      KeyFields = 'CTopicCode2Bes'
      LookupCache = True
      Size = 255
      Lookup = True
    end
    object qryDeficitsCTopicCode3Bes: TStringField
      FieldName = 'CTopicCode3Bes'
      Size = 12
    end
    object qryDeficits__CTopicCodeName3Bes: TStringField
      FieldKind = fkLookup
      FieldName = '__CTopicCodeName3Bes'
      LookupDataSet = DmF.qryAccCenterTopics3
      LookupKeyFields = 'CTopicCode3'
      LookupResultField = 'CTopicName3'
      KeyFields = 'CTopicCode3Bes'
      Size = 250
      Lookup = True
    end
    object qryDeficitsTTMSActive: TWordField
      FieldName = 'TTMSActive'
    end
  end
  object srcDeficits: TDataSource
    DataSet = qryDeficits
    OnStateChange = srcDeficitsStateChange
    Left = 744
    Top = 229
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = srcDeficits
    OpenDataSource = False
    UserName = 'BDEPipeline1'
    Left = 624
    Top = 127
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
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
    Left = 640
    Top = 199
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 26458
      mmPrintPosition = 0
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
        Font.Style = [fsBold]
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
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        OnGetText = ppLabel2GetText
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1603#1587#1608#1585#1575#1578' / '#1575#1590#1575#1601#1575#1578' '#1589#1608#1585#1578#1581#1587#1575#1576#1607#1575
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
        mmLeft = 65352
        mmTop = 7144
        mmWidth = 72496
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 794
        mmTop = 16404
        mmWidth = 201348
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 794
        mmTop = 25400
        mmWidth = 201348
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5292
        mmLeft = 188384
        mmTop = 21166
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1603#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7144
        mmLeft = 191294
        mmTop = 17727
        mmWidth = 9260
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1603#1587#1608#1585#1575#1578' / '#1575#1590#1575#1601#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7144
        mmLeft = 132027
        mmTop = 17727
        mmWidth = 55033
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1606#1581#1608#1607' '#1605#1581#1575#1587#1576#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 91546
        mmTop = 18256
        mmWidth = 34925
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1590#1585#1610#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7144
        mmLeft = 62442
        mmTop = 17727
        mmWidth = 24342
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5292
        mmLeft = 128323
        mmTop = 21166
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5292
        mmLeft = 88900
        mmTop = 21166
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5292
        mmLeft = 59267
        mmTop = 21166
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1606#1581#1608#1607' '#1579#1576#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7144
        mmLeft = 3969
        mmTop = 17727
        mmWidth = 53711
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        OnGetText = ppLabel14GetText
        Border.mmPadding = 0
        Caption = 'Label13'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 3969
        mmTop = 0
        mmWidth = 53711
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'DeficitCo'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 7144
        mmLeft = 61383
        mmTop = 0
        mmWidth = 24342
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        OnGetText = ppLabel13GetText
        Border.mmPadding = 0
        Caption = 'Label11'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7144
        mmLeft = 91017
        mmTop = 0
        mmWidth = 34925
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'DeficitName'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 7144
        mmLeft = 132027
        mmTop = 0
        mmWidth = 55033
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'DeficitID'
        DataPipeline = ppBDEPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 7144
        mmLeft = 191294
        mmTop = 0
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
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
      mmHeight = 5556
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
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 64
    Top = 292
    object N1: TMenuItem
      Caption = #1576#1607' '#1578#1585#1578#1610#1576' '#1603#1583
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1576#1607' '#1578#1585#1578#1610#1576' '#1593#1606#1608#1575#1606
      OnClick = N2Click
    end
  end
  object qryDeficitsCorrelation: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    BeforeInsert = qryDeficitsCorrelationBeforeEdit
    AfterInsert = qryDeficitsCorrelationAfterInsert
    BeforeEdit = qryDeficitsCorrelationBeforeEdit
    BeforePost = qryDeficitsCorrelationBeforePost
    Parameters = <
      item
        Name = 'DeficitID'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 9999
      end
      item
        Name = 'Kind'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT   *'
      'FROM         DeficitsCorrelation'
      'WHERE        (DeficitID = :DeficitID) '
      'AND (Kind = :Kind)')
    Left = 703
    Top = 301
    object qryDeficitsCorrelationDeficitID: TSmallintField
      FieldName = 'DeficitID'
    end
    object qryDeficitsCorrelationKind: TIntegerField
      FieldName = 'Kind'
    end
    object qryDeficitsCorrelationCodeFrom: TLargeintField
      DisplayLabel = #1575#1586' '#1603#1583
      FieldName = 'CodeFrom'
    end
    object qryDeficitsCorrelationCodeTo: TLargeintField
      DisplayLabel = #1578#1575' '#1603#1583
      FieldName = 'CodeTo'
    end
  end
  object dsDeficitsCorrelation: TDataSource
    DataSet = qryDeficitsCorrelation
    Left = 687
    Top = 365
  end
end
