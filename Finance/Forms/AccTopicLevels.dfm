inherited AccTopicLevelsF: TAccTopicLevelsF
  Left = 293
  Top = 92
  Caption = #1605#1593#1585#1601#1610' '#1578#1593#1583#1575#1583' '#1587#1591#1608#1581' '#1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1607#1575
  ClientHeight = 574
  ClientWidth = 745
  OnResize = FormResize
  ExplicitWidth = 753
  ExplicitHeight = 605
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 533
    Width = 745
    ExplicitTop = 533
    ExplicitWidth = 745
    object newPanel: TPanel
      Left = 510
      Top = 1
      Width = 234
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      Caption = '`'
      TabOrder = 1
      DesignSize = (
        234
        39)
      object BitBtn6: TBitBtn
        Left = 156
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn9: TBitBtn
        Left = 78
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn10: TBitBtn
        Left = 1
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
      Left = 345
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        165
        39)
      object BitBtn1: TBitBtn
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
      object BitBtn2: TBitBtn
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
  end
  inherited Panel2: TPanel
    Width = 745
    ExplicitWidth = 745
    inherited ImgTemplate: TImage
      Left = 687
      ExplicitLeft = 687
    end
    inherited lblCaption: TLabel
      Left = 637
      Height = 16
      ExplicitLeft = 637
    end
  end
  inherited Panel3: TPanel
    Width = 745
    Height = 480
    ExplicitWidth = 745
    ExplicitHeight = 480
    object DBGrid1: TDBGrid
      Left = 499
      Top = 2
      Width = 244
      Height = 476
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clCream
      DataSource = srcAccTopicLevels
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'LevelID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LevelCaption_L1'
          Width = 172
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LevelCaption_L2'
          Width = 4
          Visible = True
        end>
    end
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 497
      Height = 476
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = #1581#1587#1575#1576#1583#1575#1585#1610' '
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label1: TLabel
          Left = 333
          Top = 30
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = #1588#1605#1575#1585#1607' '#1587#1591#1581' '
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 333
          Top = 55
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = #1593#1606#1608#1575#1606' '#1587#1591#1581' '
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 333
          Top = 105
          Width = 90
          Height = 13
          Alignment = taRightJustify
          Caption = #1588#1605#1575#1585#1607' '#1587#1591#1581' '#1602#1576#1604#1610' '
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 163
          Top = 105
          Width = 36
          Height = 13
          Caption = #1591#1608#1604' '#1603#1583' '
          FocusControl = DBEdit4
        end
        object Label55: TLabel
          Left = 333
          Top = 131
          Width = 75
          Height = 13
          Alignment = taRightJustify
          Caption = #1601#1585#1605' '#1602#1575#1576#1604' '#1606#1605#1575#1610#1588' '
        end
        object Label31: TLabel
          Left = 333
          Top = 81
          Width = 65
          Height = 13
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          Caption = #1593#1606#1608#1575#1606' '#1587#1591#1581' 2'
          FocusControl = DBEdit43
          ParentBiDiMode = False
        end
        object PageControl2: TPageControl
          Left = 0
          Top = 192
          Width = 489
          Height = 256
          ActivePage = TabSheet11
          Align = alBottom
          TabOrder = 6
          object TabSheet6: TTabSheet
            Caption = #1711#1586#1575#1585#1588
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label58: TLabel
              Left = 314
              Top = 20
              Width = 55
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1575#1605' '#1711#1586#1575#1585#1588' 1'
              FocusControl = DBEdit6
            end
            object Label59: TLabel
              Left = 314
              Top = 44
              Width = 55
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1575#1605' '#1711#1586#1575#1585#1588' 2'
              FocusControl = DBEdit45
            end
            object Label60: TLabel
              Left = 314
              Top = 68
              Width = 55
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1575#1605' '#1711#1586#1575#1585#1588' 3'
              FocusControl = DBEdit46
            end
            object SpeedButton7: TSpeedButton
              Tag = 6
              Left = 104
              Top = 15
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = SpeedButton7Click
            end
            object SpeedButton8: TSpeedButton
              Tag = 45
              Left = 104
              Top = 39
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = SpeedButton8Click
            end
            object SpeedButton9: TSpeedButton
              Tag = 46
              Left = 104
              Top = 63
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = SpeedButton9Click
            end
            object DBEdit6: TDBEdit
              Left = 128
              Top = 16
              Width = 177
              Height = 21
              DataField = 'ReportFileName1'
              DataSource = srcAccTopicLevels
              TabOrder = 0
            end
            object DBEdit45: TDBEdit
              Left = 128
              Top = 40
              Width = 177
              Height = 21
              DataField = 'ReportFileName2'
              DataSource = srcAccTopicLevels
              TabOrder = 1
            end
            object DBEdit46: TDBEdit
              Left = 128
              Top = 64
              Width = 177
              Height = 21
              DataField = 'ReportFileName3'
              DataSource = srcAccTopicLevels
              TabOrder = 2
            end
          end
          object TabSheet7: TTabSheet
            Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1576#1608#1583#1580#1607
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label57: TLabel
              Left = 305
              Top = 30
              Width = 91
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1581#1608#1607' '#1575#1585#1578#1576#1575#1591'  '#1576#1575'  '#1576#1608#1583#1580#1607
            end
            object cmbBudgetRelationType: TDBComboBox
              Left = 100
              Top = 27
              Width = 195
              Height = 21
              DataField = 'BudgetRelationType'
              DataSource = srcAccTopicLevels
              Items.Strings = (
                #1606#1583#1575#1585#1583
                #1575#1586' '#1591#1585#1610#1602' '#1575#1591#1604#1575#1593#1575#1578' '#1576#1608#1583#1580#1607
                #1575#1586' '#1591#1585#1610#1602' '#1603#1583#1610#1606#1711' '#1576#1608#1583#1580#1607)
              TabOrder = 0
            end
          end
          object TabSheet8: TTabSheet
            Caption = #1603#1606#1578#1585#1604#1607#1575
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label50: TLabel
              Left = 301
              Top = 21
              Width = 120
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1581#1608#1607' '#1575#1606#1578#1582#1575#1576' '#1605#1575#1607#1610#1578' '#1581#1587#1575#1576
            end
            object Label7: TLabel
              Left = 301
              Top = 47
              Width = 116
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1581#1608#1607' '#1576#1585#1582#1608#1583' '#1576#1575' '#1578#1594#1610#1610#1585' '#1605#1575#1607#1610#1578
            end
            object Label54: TLabel
              Left = 301
              Top = 73
              Width = 161
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1581#1608#1607' '#1575#1606#1578#1582#1575#1576' '#1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1587#1575#1604' '#1602#1576#1604
            end
            object cmbReactionEssenceType0: TDBComboBox
              Left = 104
              Top = 43
              Width = 195
              Height = 21
              DataField = 'ReactionEssenceType'
              DataSource = srcAccTopicLevels
              Items.Strings = (
                #1606#1583#1575#1585#1583
                #1575#1606#1578#1582#1575#1576' '#1578#1608#1587#1591' '#1603#1575#1585#1576#1585' '
                #1606#1605#1575#1610#1588' '#1608' '#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1587#1591#1581' '#1602#1576#1604#1610)
              TabOrder = 1
            end
            object cmbEssenceSelectable: TDBComboBox
              Left = 104
              Top = 17
              Width = 195
              Height = 21
              DataField = 'EssenceSelectable'
              DataSource = srcAccTopicLevels
              Items.Strings = (
                #1606#1583#1575#1585#1583
                #1575#1606#1578#1582#1575#1576' '#1578#1608#1587#1591' '#1603#1575#1585#1576#1585' '
                #1606#1605#1575#1610#1588' '#1608' '#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1587#1591#1581' '#1602#1576#1604#1610' ')
              TabOrder = 0
            end
            object cmbAccLastYearActive: TDBComboBox
              Left = 104
              Top = 69
              Width = 195
              Height = 21
              Ctl3D = True
              DataField = 'AccLastYearActive'
              DataSource = srcAccTopicLevels
              Items.Strings = (
                #1606#1605#1575#1610#1588' '#1606#1588#1608#1583
                #1575#1606#1578#1582#1575#1576' '#1578#1608#1587#1591' '#1603#1575#1585#1576#1585' '
                #1606#1605#1575#1610#1588' '#1608' '#1662#1610#1588' '#1601#1585#1590' '#1603#1583' '#1581#1587#1575#1576' '#1587#1575#1604' '#1580#1575#1585#1610)
              ParentCtl3D = False
              TabOrder = 2
            end
            object DBCheckBox1: TDBCheckBox
              Left = 104
              Top = 114
              Width = 209
              Height = 17
              BiDiMode = bdLeftToRight
              Caption = '   '#1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610' '#1606#1605#1575#1610#1588' '#1588#1608#1583
              DataField = 'NoteActive'
              DataSource = srcAccTopicLevels
              ParentBiDiMode = False
              TabOrder = 3
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox8: TDBCheckBox
              Left = 104
              Top = 133
              Width = 185
              Height = 17
              BiDiMode = bdLeftToRight
              Caption = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1605#1603#1610' '#1606#1605#1575#1610#1588' '#1588#1608#1583' '
              DataField = 'AidInfoTypeActive'
              DataSource = srcAccTopicLevels
              ParentBiDiMode = False
              TabOrder = 4
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBCheckBox5: TDBCheckBox
              Left = 104
              Top = 96
              Width = 209
              Height = 17
              BiDiMode = bdLeftToRight
              Caption = '         '#1603#1583' '#1591#1576#1602#1607' '#1576#1606#1583#1610' '#1601#1593#1575#1604' '#1576#1575#1588#1583'      '
              DataField = 'TaxonomyActive'
              DataSource = srcAccTopicLevels
              ParentBiDiMode = False
              TabOrder = 5
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
          end
          object TabSheet9: TTabSheet
            Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1587#1575#1610#1585' '#1603#1583#1610#1606#1711#1607#1575
            ImageIndex = 3
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label48: TLabel
              Left = 301
              Top = 20
              Width = 143
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1581#1608#1607' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1603#1583#1610#1606#1711' '#1578#1585#1575#1586#1606#1575#1605#1607' '#1575#1610' '
            end
            object Label49: TLabel
              Left = 301
              Top = 45
              Width = 163
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1581#1608#1607' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1603#1606#1578#1585#1604' '#1607#1575#1610' '#1581#1587#1575#1576#1585#1587#1610
            end
            object Label52: TLabel
              Left = 304
              Top = 93
              Width = 112
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1581#1608#1607' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1605#1585#1575#1603#1586' '#1607#1586#1610#1606#1607
              Visible = False
            end
            object Label53: TLabel
              Left = 301
              Top = 68
              Width = 131
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1581#1608#1607' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1603#1583#1610#1606#1711' '#1578#1601#1589#1610#1604#1610' '
            end
            object cmbFinancialRelationType: TDBComboBox
              Left = 104
              Top = 16
              Width = 195
              Height = 21
              DataField = 'FinancialRelationType'
              DataSource = srcAccTopicLevels
              Items.Strings = (
                #1601#1575#1602#1583' '#1575#1585#1578#1576#1575#1591
                #1575#1606#1578#1582#1575#1576' '#1578#1608#1587#1591' '#1603#1575#1585#1576#1585
                #1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1587#1591#1581' '#1602#1576#1604#1610
                '')
              TabOrder = 0
            end
            object cmbAuditRelationType: TDBComboBox
              Left = 104
              Top = 41
              Width = 195
              Height = 21
              DataField = 'AuditRelationType'
              DataSource = srcAccTopicLevels
              Items.Strings = (
                #1601#1575#1602#1583' '#1575#1585#1578#1576#1575#1591
                #1575#1606#1578#1582#1575#1576' '#1578#1608#1587#1591' '#1603#1575#1585#1576#1585
                #1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1587#1591#1581' '#1602#1576#1604#1610
                '')
              TabOrder = 1
            end
            object cmbCenterTopicsRelationType0: TDBComboBox
              Left = 104
              Top = 92
              Width = 195
              Height = 21
              DataField = 'CenterTopicsRelationType'
              DataSource = srcAccTopicLevels
              Items.Strings = (
                #1601#1575#1602#1583' '#1575#1585#1578#1576#1575#1591
                #1575#1606#1578#1582#1575#1576' '#1578#1608#1587#1591' '#1603#1575#1585#1576#1585
                #1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1587#1591#1581' '#1602#1576#1604#1610)
              TabOrder = 2
              Visible = False
            end
            object cmbDetailsRelationType1: TDBComboBox
              Left = 104
              Top = 66
              Width = 195
              Height = 21
              DataField = 'DetailsRelationType'
              DataSource = srcAccTopicLevels
              Items.Strings = (
                #1601#1575#1602#1583' '#1575#1585#1578#1576#1575#1591
                #1575#1606#1578#1582#1575#1576' '#1578#1608#1587#1591' '#1603#1575#1585#1576#1585
                #1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1587#1591#1581' '#1602#1576#1604#1610)
              TabOrder = 3
            end
          end
          object TabSheet11: TTabSheet
            Caption = #1587#1591#1581' '#1583#1587#1578#1585#1587#1610
            ImageIndex = 4
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label5: TLabel
              Left = 299
              Top = 12
              Width = 26
              Height = 13
              Alignment = taRightJustify
              Caption = #1575#1590#1575#1601#1607
              FocusControl = DBEdit5
            end
            object Label56: TLabel
              Left = 299
              Top = 40
              Width = 33
              Height = 13
              Alignment = taRightJustify
              Caption = #1608#1610#1585#1575#1610#1588
              FocusControl = DBEdit50
            end
            object Label74: TLabel
              Left = 299
              Top = 68
              Width = 23
              Height = 13
              Alignment = taRightJustify
              Caption = #1581#1584#1601
              FocusControl = DBEdit51
            end
            object Label75: TLabel
              Left = 299
              Top = 96
              Width = 59
              Height = 13
              Alignment = taRightJustify
              Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578
              FocusControl = DBEdit52
            end
            object Label76: TLabel
              Left = 299
              Top = 124
              Width = 19
              Height = 13
              Alignment = taRightJustify
              Caption = #1670#1575#1662
              FocusControl = DBEdit53
            end
            object Label77: TLabel
              Left = 299
              Top = 181
              Width = 58
              Height = 13
              Alignment = taRightJustify
              Caption = ' '#1587#1575#1610#1585' '#1705#1606#1578#1585#1604#1607#1575
              FocusControl = DBEdit54
            end
            object Label78: TLabel
              Left = 299
              Top = 152
              Width = 70
              Height = 13
              Alignment = taRightJustify
              Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1607#1575
              FocusControl = DBEdit55
            end
            object DBEdit5: TDBEdit
              Left = 220
              Top = 8
              Width = 72
              Height = 21
              DataField = 'ADDLevelID'
              DataSource = srcAccTopicLevels
              TabOrder = 0
            end
            object DBEdit50: TDBEdit
              Left = 220
              Top = 36
              Width = 72
              Height = 21
              DataField = 'EditLevelID'
              DataSource = srcAccTopicLevels
              TabOrder = 1
            end
            object DBEdit51: TDBEdit
              Left = 220
              Top = 64
              Width = 72
              Height = 21
              DataField = 'DeleteLevelID'
              DataSource = srcAccTopicLevels
              TabOrder = 2
            end
            object DBEdit52: TDBEdit
              Left = 220
              Top = 92
              Width = 72
              Height = 21
              DataField = 'ChangeStateLevelID'
              DataSource = srcAccTopicLevels
              TabOrder = 3
            end
            object DBEdit53: TDBEdit
              Left = 220
              Top = 120
              Width = 72
              Height = 21
              DataField = 'PrintLevelID'
              DataSource = srcAccTopicLevels
              TabOrder = 4
            end
            object DBEdit54: TDBEdit
              Left = 220
              Top = 177
              Width = 72
              Height = 21
              DataField = 'OtherContorolLevleId'
              DataSource = srcAccTopicLevels
              TabOrder = 6
            end
            object DBEdit55: TDBEdit
              Left = 220
              Top = 148
              Width = 72
              Height = 21
              DataField = 'AccRelatedID'
              DataSource = srcAccTopicLevels
              TabOrder = 5
            end
          end
        end
        object DBEdit1: TDBEdit
          Left = 233
          Top = 27
          Width = 94
          Height = 21
          DataField = 'LevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 86
          Top = 52
          Width = 241
          Height = 21
          DataField = 'LevelCaption_L1'
          DataSource = srcAccTopicLevels
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 233
          Top = 102
          Width = 94
          Height = 21
          DataField = 'PrvLevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 86
          Top = 101
          Width = 75
          Height = 21
          DataField = 'CodeLength'
          DataSource = srcAccTopicLevels
          TabOrder = 4
        end
        object cmbAssignedForm0: TDBComboBox
          Left = 86
          Top = 128
          Width = 241
          Height = 21
          DataField = 'AssignedForm'
          DataSource = srcAccTopicLevels
          Items.Strings = (
            #1601#1585#1605' '#1605#1582#1589#1608#1589' '#1610#1603' '#1587#1591#1581' '
            #1601#1585#1605' '#1576#1575' '#1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1587#1591#1581' '#1602#1576#1604#1610
            #1601#1585#1605' '#1576#1575' '#1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1604#1610#1607' '#1587#1591#1608#1581' '
            #1601#1585#1605' '#1583#1585#1582#1578#1610)
          TabOrder = 5
        end
        object DBEdit43: TDBEdit
          Left = 86
          Top = 78
          Width = 241
          Height = 21
          DataField = 'LevelCaption_L2'
          DataSource = srcAccTopicLevels
          TabOrder = 2
        end
      end
      object TabSheet4: TTabSheet
        Caption = #1589#1608#1585#1578#1607#1575#1610' '#1605#1575#1604#1610' '
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label22: TLabel
          Left = 331
          Top = 30
          Width = 63
          Height = 13
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          Caption = #1588#1605#1575#1585#1607' '#1587#1591#1581' '
          FocusControl = DBEdit18
          ParentBiDiMode = False
        end
        object Label23: TLabel
          Left = 331
          Top = 54
          Width = 59
          Height = 13
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          Caption = #1593#1606#1608#1575#1606' '#1587#1591#1581' '
          FocusControl = DBEdit19
          ParentBiDiMode = False
        end
        object Label24: TLabel
          Left = 331
          Top = 104
          Width = 90
          Height = 13
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          Caption = #1588#1605#1575#1585#1607' '#1587#1591#1581' '#1602#1576#1604#1610' '
          FocusControl = DBEdit20
          ParentBiDiMode = False
        end
        object Label25: TLabel
          Left = 172
          Top = 104
          Width = 36
          Height = 13
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          Caption = #1591#1608#1604' '#1603#1583' '
          FocusControl = DBEdit21
          ParentBiDiMode = False
        end
        object Label26: TLabel
          Left = 264
          Top = 132
          Width = 75
          Height = 13
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          Caption = #1601#1585#1605' '#1602#1575#1576#1604' '#1606#1605#1575#1610#1588' '
          ParentBiDiMode = False
        end
        object Label47: TLabel
          Left = 264
          Top = 155
          Width = 111
          Height = 13
          Alignment = taRightJustify
          Caption = #1606#1608#1593' '#1576#1585#1582#1608#1583' '#1576#1575' '#1578#1594#1610#1610#1585' '#1605#1575#1607#1610#1578
        end
        object Label61: TLabel
          Left = 264
          Top = 180
          Width = 139
          Height = 13
          Alignment = taRightJustify
          Caption = #1606#1581#1608#1607' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1583#1575#1585#1610
        end
        object Label62: TLabel
          Left = 331
          Top = 81
          Width = 65
          Height = 13
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          Caption = #1593#1606#1608#1575#1606' '#1587#1591#1581' 2'
          FocusControl = DBEdit47
          ParentBiDiMode = False
        end
        object Label86: TLabel
          Left = 368
          Top = 321
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = #1575#1590#1575#1601#1607
          FocusControl = DBEdit63
        end
        object Label87: TLabel
          Left = 368
          Top = 344
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = #1608#1610#1585#1575#1610#1588
          FocusControl = DBEdit64
        end
        object Label88: TLabel
          Left = 368
          Top = 368
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = #1581#1584#1601
          FocusControl = DBEdit65
        end
        object Label89: TLabel
          Left = 172
          Top = 368
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578
          FocusControl = DBEdit66
        end
        object Label90: TLabel
          Left = 368
          Top = 392
          Width = 19
          Height = 13
          Alignment = taRightJustify
          Caption = #1670#1575#1662
          FocusControl = DBEdit67
        end
        object Label91: TLabel
          Left = 172
          Top = 344
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = ' '#1587#1575#1610#1585' '#1705#1606#1578#1585#1604#1607#1575
          FocusControl = DBEdit68
        end
        object Label92: TLabel
          Left = 172
          Top = 321
          Width = 70
          Height = 13
          Alignment = taRightJustify
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1607#1575
          FocusControl = DBEdit69
        end
        object Label126: TLabel
          Left = 172
          Top = 391
          Width = 106
          Height = 13
          Alignment = taRightJustify
          Caption = #1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1591#1593#1610
          FocusControl = DBEdit110
        end
        object Label127: TLabel
          Left = 176
          Top = 414
          Width = 98
          Height = 13
          Alignment = taRightJustify
          Caption = ' '#1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1575#1574#1605
          FocusControl = DBEdit111
        end
        object DBEdit18: TDBEdit
          Left = 234
          Top = 26
          Width = 94
          Height = 21
          DataField = 'LevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 0
        end
        object DBEdit19: TDBEdit
          Left = 96
          Top = 50
          Width = 231
          Height = 21
          DataField = 'LevelCaption_L1'
          DataSource = srcAccTopicLevels
          TabOrder = 1
        end
        object DBEdit20: TDBEdit
          Left = 234
          Top = 100
          Width = 94
          Height = 21
          DataField = 'PrvLevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 3
        end
        object DBEdit21: TDBEdit
          Left = 96
          Top = 100
          Width = 71
          Height = 21
          DataField = 'CodeLength'
          DataSource = srcAccTopicLevels
          TabOrder = 4
        end
        object cmbAssignedForm3: TDBComboBox
          Left = 95
          Top = 128
          Width = 161
          Height = 21
          DataField = 'AssignedForm'
          DataSource = srcAccTopicLevels
          Items.Strings = (
            #1601#1585#1605' '#1605#1582#1589#1608#1589' '#1610#1603' '#1587#1591#1581' '
            #1601#1585#1605' '#1576#1575' '#1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1587#1591#1581' '#1602#1576#1604#1610
            #1601#1585#1605' '#1576#1575' '#1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1604#1610#1607' '#1587#1591#1608#1581' '
            #1601#1585#1605' '#1583#1585#1582#1578#1610)
          TabOrder = 5
        end
        object GroupBox3: TGroupBox
          Left = 96
          Top = 199
          Width = 241
          Height = 96
          Caption = #1711#1586#1575#1585#1588#1575#1578' '#1670#1575#1662#1610
          TabOrder = 8
          object Label27: TLabel
            Left = 169
            Top = 22
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = #1606#1575#1605' '#1711#1586#1575#1585#1588' 1'
            FocusControl = DBEdit22
          end
          object Label28: TLabel
            Left = 169
            Top = 46
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = #1606#1575#1605' '#1711#1586#1575#1585#1588' 2'
            FocusControl = DBEdit23
          end
          object Label29: TLabel
            Left = 169
            Top = 70
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = #1606#1575#1605' '#1711#1586#1575#1585#1588' 3'
            FocusControl = DBEdit24
          end
          object SpeedButton11: TSpeedButton
            Tag = 22
            Left = 7
            Top = 17
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton11Click
          end
          object SpeedButton12: TSpeedButton
            Tag = 23
            Left = 7
            Top = 41
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton12Click
          end
          object SpeedButton13: TSpeedButton
            Tag = 24
            Left = 7
            Top = 65
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton13Click
          end
          object DBEdit22: TDBEdit
            Left = 36
            Top = 18
            Width = 128
            Height = 21
            DataField = 'ReportFileName1'
            DataSource = srcAccTopicLevels
            TabOrder = 0
          end
          object DBEdit23: TDBEdit
            Left = 36
            Top = 42
            Width = 128
            Height = 21
            DataField = 'ReportFileName2'
            DataSource = srcAccTopicLevels
            TabOrder = 1
          end
          object DBEdit24: TDBEdit
            Left = 36
            Top = 66
            Width = 128
            Height = 21
            DataField = 'ReportFileName3'
            DataSource = srcAccTopicLevels
            TabOrder = 2
          end
        end
        object DBCheckBox4: TDBCheckBox
          Left = 96
          Top = 295
          Width = 209
          Height = 17
          Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610' '#1606#1605#1575#1610#1588' '#1588#1608#1583
          DataField = 'NoteActive'
          DataSource = srcAccTopicLevels
          TabOrder = 9
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object cmbReactionEssenceType3: TDBComboBox
          Left = 95
          Top = 151
          Width = 161
          Height = 21
          DataField = 'ReactionEssenceType'
          DataSource = srcAccTopicLevels
          Items.Strings = (
            #1606#1583#1575#1585#1583
            #1575#1606#1578#1582#1575#1576' '#1578#1608#1587#1591' '#1603#1575#1585#1576#1585' '
            #1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1587#1591#1581' '#1602#1576#1604#1610)
          TabOrder = 6
        end
        object cmbAccRelationType3: TDBComboBox
          Left = 95
          Top = 176
          Width = 161
          Height = 21
          DataField = 'AccRelationType'
          DataSource = srcAccTopicLevels
          Items.Strings = (
            #1601#1575#1602#1583' '#1575#1585#1578#1576#1575#1591
            #1575#1606#1578#1582#1575#1576' '#1578#1608#1587#1591' '#1603#1575#1585#1576#1585
            #1575#1606#1578#1582#1575#1576' '#1576#1585' '#1575#1587#1575#1587' '#1587#1591#1581' '#1602#1576#1604#1610' '#1608' '#1580#1575#1585#1610)
          TabOrder = 7
        end
        object DBEdit47: TDBEdit
          Left = 96
          Top = 77
          Width = 231
          Height = 21
          DataField = 'LevelCaption_L2'
          DataSource = srcAccTopicLevels
          TabOrder = 2
        end
        object DBEdit63: TDBEdit
          Left = 291
          Top = 340
          Width = 72
          Height = 21
          DataField = 'ADDLevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 11
        end
        object DBEdit64: TDBEdit
          Left = 291
          Top = 317
          Width = 72
          Height = 21
          DataField = 'EditLevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 10
        end
        object DBEdit65: TDBEdit
          Left = 291
          Top = 364
          Width = 72
          Height = 21
          DataField = 'DeleteLevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 12
        end
        object DBEdit66: TDBEdit
          Left = 95
          Top = 364
          Width = 72
          Height = 21
          DataField = 'ChangeStateLevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 16
        end
        object DBEdit67: TDBEdit
          Left = 291
          Top = 388
          Width = 72
          Height = 21
          DataField = 'PrintLevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 13
        end
        object DBEdit68: TDBEdit
          Left = 95
          Top = 340
          Width = 72
          Height = 21
          DataField = 'OtherContorolLevleId'
          DataSource = srcAccTopicLevels
          TabOrder = 15
        end
        object DBEdit69: TDBEdit
          Left = 95
          Top = 317
          Width = 72
          Height = 21
          DataField = 'AccRelatedID'
          DataSource = srcAccTopicLevels
          TabOrder = 14
        end
        object DBEdit110: TDBEdit
          Left = 95
          Top = 387
          Width = 72
          Height = 21
          DataField = 'EditState2'
          DataSource = srcAccTopicLevels
          TabOrder = 17
        end
        object DBEdit111: TDBEdit
          Left = 95
          Top = 410
          Width = 72
          Height = 21
          DataField = 'EditState3'
          DataSource = srcAccTopicLevels
          TabOrder = 18
        end
      end
      object TabSheet5: TTabSheet
        Caption = #1603#1606#1578#1585#1604' '#1581#1587#1575#1576#1585#1587#1610' '
        ImageIndex = 4
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label32: TLabel
          Left = 331
          Top = 30
          Width = 63
          Height = 13
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          Caption = #1588#1605#1575#1585#1607' '#1587#1591#1581' '
          FocusControl = DBEdit25
          ParentBiDiMode = False
        end
        object Label33: TLabel
          Left = 331
          Top = 54
          Width = 59
          Height = 13
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          Caption = #1593#1606#1608#1575#1606' '#1587#1591#1581' '
          FocusControl = DBEdit26
          ParentBiDiMode = False
        end
        object Label34: TLabel
          Left = 331
          Top = 106
          Width = 90
          Height = 13
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          Caption = #1588#1605#1575#1585#1607' '#1587#1591#1581' '#1602#1576#1604#1610' '
          FocusControl = DBEdit27
          ParentBiDiMode = False
        end
        object Label35: TLabel
          Left = 167
          Top = 104
          Width = 36
          Height = 13
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          Caption = #1591#1608#1604' '#1603#1583' '
          FocusControl = DBEdit28
          ParentBiDiMode = False
        end
        object Label36: TLabel
          Left = 265
          Top = 134
          Width = 75
          Height = 13
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          Caption = #1601#1585#1605' '#1602#1575#1576#1604' '#1606#1605#1575#1610#1588' '
          ParentBiDiMode = False
        end
        object Label64: TLabel
          Left = 265
          Top = 161
          Width = 139
          Height = 13
          Caption = #1606#1581#1608#1607' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1583#1575#1585#1610
        end
        object Label63: TLabel
          Left = 331
          Top = 81
          Width = 65
          Height = 13
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          Caption = #1593#1606#1608#1575#1606' '#1587#1591#1581' 2'
          FocusControl = DBEdit48
          ParentBiDiMode = False
        end
        object Label100: TLabel
          Left = 341
          Top = 316
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = #1575#1590#1575#1601#1607
          FocusControl = DBEdit77
        end
        object Label101: TLabel
          Left = 341
          Top = 339
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = #1608#1610#1585#1575#1610#1588
          FocusControl = DBEdit78
        end
        object Label102: TLabel
          Left = 341
          Top = 363
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = #1581#1584#1601
          FocusControl = DBEdit79
        end
        object Label103: TLabel
          Left = 134
          Top = 363
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578
          FocusControl = DBEdit80
        end
        object Label104: TLabel
          Left = 341
          Top = 387
          Width = 19
          Height = 13
          Alignment = taRightJustify
          Caption = #1670#1575#1662
          FocusControl = DBEdit81
        end
        object Label105: TLabel
          Left = 134
          Top = 340
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = ' '#1587#1575#1610#1585' '#1705#1606#1578#1585#1604#1607#1575
          FocusControl = DBEdit82
        end
        object Label106: TLabel
          Left = 134
          Top = 317
          Width = 70
          Height = 13
          Alignment = taRightJustify
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1607#1575
          FocusControl = DBEdit83
        end
        object Label128: TLabel
          Left = 134
          Top = 388
          Width = 106
          Height = 13
          Alignment = taRightJustify
          Caption = #1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1591#1593#1610
          FocusControl = DBEdit112
        end
        object Label129: TLabel
          Left = 134
          Top = 411
          Width = 98
          Height = 13
          Alignment = taRightJustify
          Caption = ' '#1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1575#1574#1605
          FocusControl = DBEdit113
        end
        object DBEdit25: TDBEdit
          Left = 234
          Top = 26
          Width = 94
          Height = 21
          DataField = 'LevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 0
        end
        object DBEdit26: TDBEdit
          Left = 96
          Top = 50
          Width = 231
          Height = 21
          DataField = 'LevelCaption_L1'
          DataSource = srcAccTopicLevels
          TabOrder = 1
        end
        object DBEdit27: TDBEdit
          Left = 234
          Top = 102
          Width = 94
          Height = 21
          DataField = 'PrvLevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 3
        end
        object DBEdit28: TDBEdit
          Left = 96
          Top = 102
          Width = 65
          Height = 21
          DataField = 'CodeLength'
          DataSource = srcAccTopicLevels
          TabOrder = 4
        end
        object cmbAssignedForm4: TDBComboBox
          Left = 96
          Top = 130
          Width = 160
          Height = 21
          DataField = 'AssignedForm'
          DataSource = srcAccTopicLevels
          Items.Strings = (
            #1601#1585#1605' '#1605#1582#1589#1608#1589' '#1610#1603' '#1587#1591#1581' '
            #1601#1585#1605' '#1576#1575' '#1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1587#1591#1581' '#1602#1576#1604#1610
            #1601#1585#1605' '#1576#1575' '#1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1604#1610#1607' '#1587#1591#1608#1581' '
            #1601#1585#1605' '#1583#1585#1582#1578#1610)
          TabOrder = 5
        end
        object GroupBox4: TGroupBox
          Left = 94
          Top = 184
          Width = 241
          Height = 96
          Caption = #1711#1586#1575#1585#1588#1575#1578' '#1670#1575#1662#1610
          TabOrder = 7
          object Label37: TLabel
            Left = 169
            Top = 22
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = #1606#1575#1605' '#1711#1586#1575#1585#1588' 1'
            FocusControl = DBEdit29
          end
          object Label38: TLabel
            Left = 169
            Top = 46
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = #1606#1575#1605' '#1711#1586#1575#1585#1588' 2'
            FocusControl = DBEdit30
          end
          object Label39: TLabel
            Left = 169
            Top = 70
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = #1606#1575#1605' '#1711#1586#1575#1585#1588' 3'
            FocusControl = DBEdit31
          end
          object SpeedButton14: TSpeedButton
            Tag = 29
            Left = 7
            Top = 17
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton14Click
          end
          object SpeedButton15: TSpeedButton
            Tag = 30
            Left = 7
            Top = 41
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton15Click
          end
          object SpeedButton16: TSpeedButton
            Tag = 31
            Left = 7
            Top = 65
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton16Click
          end
          object DBEdit29: TDBEdit
            Left = 36
            Top = 18
            Width = 128
            Height = 21
            DataField = 'ReportFileName1'
            DataSource = srcAccTopicLevels
            TabOrder = 0
          end
          object DBEdit30: TDBEdit
            Left = 36
            Top = 42
            Width = 128
            Height = 21
            DataField = 'ReportFileName2'
            DataSource = srcAccTopicLevels
            TabOrder = 1
          end
          object DBEdit31: TDBEdit
            Left = 36
            Top = 66
            Width = 128
            Height = 21
            DataField = 'ReportFileName3'
            DataSource = srcAccTopicLevels
            TabOrder = 2
          end
        end
        object DBCheckBox6: TDBCheckBox
          Left = 94
          Top = 282
          Width = 209
          Height = 17
          Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610' '#1606#1605#1575#1610#1588' '#1588#1608#1583
          DataField = 'NoteActive'
          DataSource = srcAccTopicLevels
          TabOrder = 8
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object cmbAccRelationType4: TDBComboBox
          Left = 96
          Top = 157
          Width = 160
          Height = 21
          DataField = 'AccRelationType'
          DataSource = srcAccTopicLevels
          Items.Strings = (
            #1601#1575#1602#1583' '#1575#1585#1578#1576#1575#1591
            #1575#1606#1578#1582#1575#1576' '#1578#1608#1587#1591' '#1603#1575#1585#1576#1585
            #1575#1606#1578#1582#1575#1576' '#1576#1585' '#1575#1587#1575#1587' '#1587#1591#1581' '#1602#1576#1604#1610' '#1608' '#1580#1575#1585#1610)
          TabOrder = 6
        end
        object DBEdit48: TDBEdit
          Left = 96
          Top = 77
          Width = 231
          Height = 21
          DataField = 'LevelCaption_L2'
          DataSource = srcAccTopicLevels
          TabOrder = 2
        end
        object DBEdit77: TDBEdit
          Left = 264
          Top = 335
          Width = 72
          Height = 21
          DataField = 'EditLevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 10
        end
        object DBEdit78: TDBEdit
          Left = 264
          Top = 312
          Width = 72
          Height = 21
          DataField = 'AddLevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 9
        end
        object DBEdit79: TDBEdit
          Left = 264
          Top = 359
          Width = 72
          Height = 21
          DataField = 'DeleteLevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 11
        end
        object DBEdit80: TDBEdit
          Left = 57
          Top = 359
          Width = 72
          Height = 21
          DataField = 'ChangeStateLevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 15
        end
        object DBEdit81: TDBEdit
          Left = 264
          Top = 383
          Width = 72
          Height = 21
          DataField = 'PrintLevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 12
        end
        object DBEdit82: TDBEdit
          Left = 57
          Top = 336
          Width = 72
          Height = 21
          DataField = 'OtherContorolLevleId'
          DataSource = srcAccTopicLevels
          TabOrder = 14
        end
        object DBEdit83: TDBEdit
          Left = 57
          Top = 313
          Width = 72
          Height = 21
          DataField = 'AccRelatedID'
          DataSource = srcAccTopicLevels
          TabOrder = 13
        end
        object DBEdit112: TDBEdit
          Left = 57
          Top = 384
          Width = 72
          Height = 21
          DataField = 'EditState2'
          DataSource = srcAccTopicLevels
          TabOrder = 16
        end
        object DBEdit113: TDBEdit
          Left = 57
          Top = 407
          Width = 72
          Height = 21
          DataField = 'EditState3'
          DataSource = srcAccTopicLevels
          TabOrder = 17
        end
      end
      object TabSheet10: TTabSheet
        Caption = #1588#1585#1603#1578#1607#1575
        ImageIndex = 5
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label51: TLabel
          Left = 328
          Top = 16
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = #1588#1605#1575#1585#1607' '#1587#1591#1581' '
          FocusControl = DBEdit32
        end
        object Label65: TLabel
          Left = 328
          Top = 42
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = #1593#1606#1608#1575#1606' '#1587#1591#1581' '
          FocusControl = DBEdit33
        end
        object Label66: TLabel
          Left = 328
          Top = 93
          Width = 90
          Height = 13
          Alignment = taRightJustify
          Caption = #1588#1605#1575#1585#1607' '#1587#1591#1581' '#1602#1576#1604#1610' '
          FocusControl = DBEdit34
        end
        object Label67: TLabel
          Left = 159
          Top = 93
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = #1591#1608#1604' '#1603#1583' '
          FocusControl = DBEdit35
        end
        object Label68: TLabel
          Left = 240
          Top = 145
          Width = 75
          Height = 13
          Alignment = taRightJustify
          Caption = #1601#1585#1605' '#1602#1575#1576#1604' '#1606#1605#1575#1610#1588' '
        end
        object Label69: TLabel
          Left = 242
          Top = 118
          Width = 145
          Height = 13
          Alignment = taRightJustify
          Caption = #1606#1581#1608#1607' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1711#1585#1608#1607' '#1576#1606#1583#1610' '#1578#1601#1589#1610#1604#1610
        end
        object Label70: TLabel
          Left = 240
          Top = 171
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = #1606#1575#1605' '#1711#1586#1575#1585#1588' 1'
          FocusControl = DBEdit36
        end
        object Label71: TLabel
          Left = 240
          Top = 195
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = #1606#1575#1605' '#1711#1586#1575#1585#1588' 2'
          FocusControl = DBEdit40
        end
        object Label72: TLabel
          Left = 240
          Top = 219
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = #1606#1575#1605' '#1711#1586#1575#1585#1588' 3'
          FocusControl = DBEdit41
        end
        object SpeedButton17: TSpeedButton
          Tag = 36
          Left = 86
          Top = 166
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton7Click
        end
        object SpeedButton18: TSpeedButton
          Tag = 40
          Left = 86
          Top = 190
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton8Click
        end
        object SpeedButton19: TSpeedButton
          Tag = 41
          Left = 86
          Top = 214
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton9Click
        end
        object Label73: TLabel
          Left = 331
          Top = 66
          Width = 65
          Height = 13
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          Caption = #1593#1606#1608#1575#1606' '#1587#1591#1581' 2'
          FocusControl = DBEdit49
          ParentBiDiMode = False
        end
        object Label93: TLabel
          Left = 311
          Top = 267
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = #1575#1590#1575#1601#1607
          FocusControl = DBEdit70
        end
        object Label94: TLabel
          Left = 311
          Top = 290
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = #1608#1610#1585#1575#1610#1588
          FocusControl = DBEdit71
        end
        object Label95: TLabel
          Left = 311
          Top = 314
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = #1581#1584#1601
          FocusControl = DBEdit72
        end
        object Label96: TLabel
          Left = 120
          Top = 311
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578
          FocusControl = DBEdit73
        end
        object Label97: TLabel
          Left = 311
          Top = 338
          Width = 19
          Height = 13
          Alignment = taRightJustify
          Caption = #1670#1575#1662
          FocusControl = DBEdit74
        end
        object Label98: TLabel
          Left = 120
          Top = 288
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = ' '#1587#1575#1610#1585' '#1705#1606#1578#1585#1604#1607#1575
          FocusControl = DBEdit75
        end
        object Label99: TLabel
          Left = 120
          Top = 265
          Width = 70
          Height = 13
          Alignment = taRightJustify
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1607#1575
          FocusControl = DBEdit76
        end
        object Label137: TLabel
          Left = 120
          Top = 335
          Width = 106
          Height = 13
          Alignment = taRightJustify
          Caption = #1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1591#1593#1610
          FocusControl = DBEdit114
        end
        object Label138: TLabel
          Left = 120
          Top = 358
          Width = 98
          Height = 13
          Alignment = taRightJustify
          Caption = ' '#1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1575#1574#1605
          FocusControl = DBEdit115
        end
        object DBEdit32: TDBEdit
          Left = 231
          Top = 11
          Width = 94
          Height = 21
          DataField = 'LevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 0
        end
        object DBEdit33: TDBEdit
          Left = 87
          Top = 37
          Width = 238
          Height = 21
          DataField = 'LevelCaption_L1'
          DataSource = srcAccTopicLevels
          TabOrder = 1
        end
        object DBEdit34: TDBEdit
          Left = 231
          Top = 88
          Width = 94
          Height = 21
          DataField = 'PrvLevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 3
        end
        object DBEdit35: TDBEdit
          Left = 87
          Top = 88
          Width = 66
          Height = 21
          DataField = 'CodeLength'
          DataSource = srcAccTopicLevels
          TabOrder = 4
        end
        object cmbAssignedForm5: TDBComboBox
          Left = 88
          Top = 141
          Width = 146
          Height = 21
          DataField = 'AssignedForm'
          DataSource = srcAccTopicLevels
          Items.Strings = (
            #1601#1585#1605' '#1605#1582#1589#1608#1589' '#1610#1603' '#1587#1591#1581' '
            #1601#1585#1605' '#1576#1575' '#1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1587#1591#1581' '#1602#1576#1604#1610
            #1601#1585#1605' '#1576#1575' '#1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1604#1610#1607' '#1587#1591#1608#1581' '
            #1601#1585#1605' '#1583#1585#1582#1578#1610)
          TabOrder = 6
        end
        object cmbDetailsRelationType2: TDBComboBox
          Left = 87
          Top = 114
          Width = 146
          Height = 21
          DataField = 'DetailsRelationType'
          DataSource = srcAccTopicLevels
          Items.Strings = (
            #1601#1575#1602#1583' '#1575#1585#1578#1576#1575#1591
            #1575#1606#1578#1582#1575#1576' '#1578#1608#1587#1591' '#1603#1575#1585#1576#1585
            #1575#1606#1578#1582#1575#1576' '#1576#1585' '#1575#1587#1575#1587' '#1587#1591#1581' '#1602#1576#1604#1610' '#1608' '#1580#1575#1585#1610)
          TabOrder = 5
        end
        object DBEdit36: TDBEdit
          Left = 109
          Top = 167
          Width = 125
          Height = 21
          DataField = 'ReportFileName1'
          DataSource = srcAccTopicLevels
          TabOrder = 7
        end
        object DBEdit40: TDBEdit
          Left = 109
          Top = 191
          Width = 125
          Height = 21
          DataField = 'ReportFileName2'
          DataSource = srcAccTopicLevels
          TabOrder = 8
        end
        object DBEdit41: TDBEdit
          Left = 109
          Top = 215
          Width = 125
          Height = 21
          DataField = 'ReportFileName3'
          DataSource = srcAccTopicLevels
          TabOrder = 9
        end
        object DBCheckBox7: TDBCheckBox
          Left = 85
          Top = 242
          Width = 209
          Height = 17
          Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610' '#1606#1605#1575#1610#1588' '#1588#1608#1583
          DataField = 'NoteActive'
          DataSource = srcAccTopicLevels
          TabOrder = 10
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBEdit49: TDBEdit
          Left = 88
          Top = 62
          Width = 239
          Height = 21
          DataField = 'LevelCaption_L2'
          DataSource = srcAccTopicLevels
          TabOrder = 2
        end
        object DBEdit70: TDBEdit
          Left = 234
          Top = 286
          Width = 72
          Height = 21
          DataField = 'ADDLevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 12
        end
        object DBEdit71: TDBEdit
          Left = 234
          Top = 263
          Width = 72
          Height = 21
          DataField = 'EditLevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 11
        end
        object DBEdit72: TDBEdit
          Left = 234
          Top = 310
          Width = 72
          Height = 21
          DataField = 'DeleteLevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 13
        end
        object DBEdit73: TDBEdit
          Left = 43
          Top = 307
          Width = 72
          Height = 21
          DataField = 'ChangeStateLevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 17
        end
        object DBEdit74: TDBEdit
          Left = 234
          Top = 334
          Width = 72
          Height = 21
          DataField = 'PrintLevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 14
        end
        object DBEdit75: TDBEdit
          Left = 43
          Top = 284
          Width = 72
          Height = 21
          DataField = 'OtherContorolLevleId'
          DataSource = srcAccTopicLevels
          TabOrder = 16
        end
        object DBEdit76: TDBEdit
          Left = 43
          Top = 261
          Width = 72
          Height = 21
          DataField = 'AccRelatedID'
          DataSource = srcAccTopicLevels
          TabOrder = 15
        end
        object DBEdit114: TDBEdit
          Left = 43
          Top = 331
          Width = 72
          Height = 21
          DataField = 'EditState2'
          DataSource = srcAccTopicLevels
          TabOrder = 18
        end
        object DBEdit115: TDBEdit
          Left = 43
          Top = 354
          Width = 72
          Height = 21
          DataField = 'EditState3'
          DataSource = srcAccTopicLevels
          TabOrder = 19
        end
      end
      object TabSheet12: TTabSheet
        Caption = #1587#1575#1610#1585' '#1601#1585#1605#1607#1575
        ImageIndex = 6
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label114: TLabel
          Left = 335
          Top = 30
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = #1588#1605#1575#1585#1607' '#1587#1591#1581' '
          FocusControl = DBEdit91
        end
        object Label115: TLabel
          Left = 335
          Top = 55
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = #1593#1606#1608#1575#1606' '#1587#1591#1581' '
          FocusControl = DBEdit92
        end
        object Label116: TLabel
          Left = 335
          Top = 81
          Width = 65
          Height = 13
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          Caption = #1593#1606#1608#1575#1606' '#1587#1591#1581' 2'
          FocusControl = DBEdit93
          ParentBiDiMode = False
        end
        object Label124: TLabel
          Left = 335
          Top = 105
          Width = 90
          Height = 13
          Alignment = taRightJustify
          Caption = #1588#1605#1575#1585#1607' '#1587#1591#1581' '#1602#1576#1604#1610' '
          FocusControl = DBEdit101
        end
        object Label125: TLabel
          Left = 187
          Top = 105
          Width = 36
          Height = 13
          Caption = #1591#1608#1604' '#1603#1583' '
          FocusControl = DBEdit102
        end
        object DBEdit91: TDBEdit
          Left = 234
          Top = 26
          Width = 94
          Height = 21
          DataField = 'LevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 0
        end
        object DBEdit92: TDBEdit
          Left = 88
          Top = 51
          Width = 241
          Height = 21
          DataField = 'LevelCaption_L1'
          DataSource = srcAccTopicLevels
          TabOrder = 1
        end
        object DBEdit93: TDBEdit
          Left = 88
          Top = 77
          Width = 239
          Height = 21
          DataField = 'LevelCaption_L2'
          DataSource = srcAccTopicLevels
          TabOrder = 2
        end
        object DBEdit101: TDBEdit
          Left = 234
          Top = 101
          Width = 94
          Height = 21
          DataField = 'PrvLevelID'
          DataSource = srcAccTopicLevels
          TabOrder = 3
        end
        object DBEdit102: TDBEdit
          Left = 88
          Top = 101
          Width = 94
          Height = 21
          DataField = 'CodeLength'
          DataSource = srcAccTopicLevels
          TabOrder = 4
        end
        object PageControl3: TPageControl
          Left = 0
          Top = 192
          Width = 489
          Height = 256
          ActivePage = TabSheet17
          Align = alBottom
          TabOrder = 5
          object TabSheet13: TTabSheet
            Caption = #1711#1586#1575#1585#1588
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label117: TLabel
              Left = 314
              Top = 20
              Width = 55
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1575#1605' '#1711#1586#1575#1585#1588' 1'
              FocusControl = DBEdit94
            end
            object Label118: TLabel
              Left = 314
              Top = 44
              Width = 55
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1575#1605' '#1711#1586#1575#1585#1588' 2'
              FocusControl = DBEdit95
            end
            object Label119: TLabel
              Left = 314
              Top = 68
              Width = 55
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1575#1605' '#1711#1586#1575#1585#1588' 3'
              FocusControl = DBEdit96
            end
            object SpeedButton1: TSpeedButton
              Tag = 6
              Left = 104
              Top = 15
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = SpeedButton7Click
            end
            object SpeedButton20: TSpeedButton
              Tag = 45
              Left = 104
              Top = 39
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = SpeedButton8Click
            end
            object SpeedButton21: TSpeedButton
              Tag = 46
              Left = 104
              Top = 63
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = SpeedButton9Click
            end
            object DBEdit94: TDBEdit
              Left = 128
              Top = 16
              Width = 177
              Height = 21
              DataField = 'ReportFileName1'
              DataSource = srcAccTopicLevels
              TabOrder = 0
            end
            object DBEdit95: TDBEdit
              Left = 128
              Top = 40
              Width = 177
              Height = 21
              DataField = 'ReportFileName2'
              DataSource = srcAccTopicLevels
              TabOrder = 1
            end
            object DBEdit96: TDBEdit
              Left = 128
              Top = 64
              Width = 177
              Height = 21
              DataField = 'ReportFileName3'
              DataSource = srcAccTopicLevels
              TabOrder = 2
            end
          end
          object TabSheet17: TTabSheet
            Caption = #1587#1591#1581' '#1583#1587#1578#1585#1587#1610
            ImageIndex = 4
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label130: TLabel
              Left = 384
              Top = 11
              Width = 26
              Height = 13
              Alignment = taRightJustify
              Caption = #1575#1590#1575#1601#1607
              FocusControl = edtADDLevelID
            end
            object Label131: TLabel
              Left = 384
              Top = 39
              Width = 33
              Height = 13
              Alignment = taRightJustify
              Caption = #1608#1610#1585#1575#1610#1588
              FocusControl = edtEditLevelID
            end
            object Label132: TLabel
              Left = 384
              Top = 67
              Width = 23
              Height = 13
              Alignment = taRightJustify
              Caption = #1581#1584#1601
              FocusControl = edtDeleteLevelID
            end
            object Label133: TLabel
              Left = 384
              Top = 91
              Width = 59
              Height = 13
              Alignment = taRightJustify
              Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578
              FocusControl = edtChangeStateLevelID
            end
            object Label134: TLabel
              Left = 178
              Top = 11
              Width = 19
              Height = 13
              Alignment = taRightJustify
              Caption = #1670#1575#1662
              FocusControl = edtPrintLevelID
            end
            object Label135: TLabel
              Left = 178
              Top = 67
              Width = 58
              Height = 13
              Alignment = taRightJustify
              Caption = ' '#1587#1575#1610#1585' '#1705#1606#1578#1585#1604#1607#1575
              FocusControl = edtOtherContorolLevleId
            end
            object Label136: TLabel
              Left = 178
              Top = 39
              Width = 70
              Height = 13
              Alignment = taRightJustify
              Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1607#1575
              FocusControl = edtAccRelatedID
            end
            object Label139: TLabel
              Left = 178
              Top = 115
              Width = 106
              Height = 13
              Alignment = taRightJustify
              Caption = #1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1591#1593#1610
              FocusControl = edtEditState2
            end
            object Label140: TLabel
              Left = 178
              Top = 91
              Width = 98
              Height = 13
              Alignment = taRightJustify
              Caption = ' '#1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1575#1574#1605
              FocusControl = edtEditState3
            end
            object Label142: TLabel
              Left = 178
              Top = 143
              Width = 103
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1591#1593#1610
              FocusControl = edtAccessCertain
            end
            object Label141: TLabel
              Left = 383
              Top = 118
              Width = 92
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1575#1574#1605
              FocusControl = edtAccessPermanent
            end
            object Label144: TLabel
              Left = 384
              Top = 145
              Width = 48
              Height = 13
              Alignment = taRightJustify
              Caption = #1581#1584#1601' '#1585#1583#1740#1601
              FocusControl = edtDeleteRowLevelID
            end
            object Label147: TLabel
              Left = 178
              Top = 167
              Width = 97
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1605#1575#1610#1588' '#1578#1608#1590#1740#1581#1575#1578' '#1587#1606#1583
              FocusControl = edtShowNoteLevelID
            end
            object Label145: TLabel
              Left = 178
              Top = 192
              Width = 100
              Height = 13
              Alignment = taRightJustify
              Caption = #1608#1740#1585#1575#1740#1588' '#1578#1608#1590#1740#1581#1575#1578' '#1587#1606#1583
              FocusControl = edtEditNoteLevelID
            end
            object edtADDLevelID: TDBEdit
              Left = 305
              Top = 7
              Width = 72
              Height = 21
              DataField = 'ADDLevelID'
              DataSource = srcAccTopicLevels
              TabOrder = 0
            end
            object edtEditLevelID: TDBEdit
              Left = 305
              Top = 35
              Width = 72
              Height = 21
              DataField = 'EditLevelID'
              DataSource = srcAccTopicLevels
              TabOrder = 1
            end
            object edtDeleteLevelID: TDBEdit
              Left = 305
              Top = 63
              Width = 72
              Height = 21
              DataField = 'DeleteLevelID'
              DataSource = srcAccTopicLevels
              TabOrder = 2
            end
            object edtChangeStateLevelID: TDBEdit
              Left = 305
              Top = 87
              Width = 72
              Height = 21
              DataField = 'ChangeStateLevelID'
              DataSource = srcAccTopicLevels
              TabOrder = 3
            end
            object edtPrintLevelID: TDBEdit
              Left = 100
              Top = 7
              Width = 72
              Height = 21
              DataField = 'PrintLevelID'
              DataSource = srcAccTopicLevels
              TabOrder = 4
            end
            object edtOtherContorolLevleId: TDBEdit
              Left = 100
              Top = 63
              Width = 72
              Height = 21
              DataField = 'OtherContorolLevleId'
              DataSource = srcAccTopicLevels
              TabOrder = 6
            end
            object edtAccRelatedID: TDBEdit
              Left = 100
              Top = 35
              Width = 72
              Height = 21
              DataField = 'AccRelatedID'
              DataSource = srcAccTopicLevels
              TabOrder = 5
            end
            object edtEditState2: TDBEdit
              Left = 100
              Top = 111
              Width = 72
              Height = 21
              DataField = 'EditState2'
              DataSource = srcAccTopicLevels
              TabOrder = 7
            end
            object edtEditState3: TDBEdit
              Left = 100
              Top = 87
              Width = 72
              Height = 21
              DataField = 'EditState3'
              DataSource = srcAccTopicLevels
              TabOrder = 8
            end
            object edtAccessCertain: TDBEdit
              Left = 100
              Top = 138
              Width = 72
              Height = 21
              DataField = 'AccessCertain'
              DataSource = srcAccTopicLevels
              TabOrder = 9
            end
            object edtAccessPermanent: TDBEdit
              Left = 305
              Top = 114
              Width = 72
              Height = 21
              DataField = 'AccessPermanent'
              DataSource = srcAccTopicLevels
              TabOrder = 10
            end
            object edtDeleteRowLevelID: TDBEdit
              Left = 305
              Top = 141
              Width = 72
              Height = 21
              DataField = 'DeleteRowLevelID'
              DataSource = srcAccTopicLevels
              TabOrder = 11
            end
            object edtShowNoteLevelID: TDBEdit
              Left = 100
              Top = 165
              Width = 72
              Height = 21
              DataField = 'ShowNoteLevelID'
              DataSource = srcAccTopicLevels
              TabOrder = 12
            end
            object edtEditNoteLevelID: TDBEdit
              Left = 101
              Top = 192
              Width = 72
              Height = 21
              DataField = 'EditNoteLevelID'
              DataSource = srcAccTopicLevels
              TabOrder = 13
            end
          end
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 200
    Top = 89
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006BAD8400218429002184
      290021842900218429002184290094DE8C0039B5520021842900218429002184
      290021842900218429006BAD8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A5630039B5520039B5
      520039B5520039B5520039B5520039B5520039B5520039B5520039B5520039B5
      520039B5520039B5520021842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A5630094DE8C0094DE
      8C0094DE8C0094DE8C0094DE8C0094DE8C0039B5520094DE8C0094DE8C0094DE
      8C0094DE8C0094DE8C0021842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006BAD840063A5630063A5
      630063A5630063A5630063A5630094DE8C0039B5520021842900218429002184
      290021842900218429006BAD8400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FC3F000000000000
      FC3F000000000000FC3F000000000000FC3F000000000000FC3F000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      FC3F000000000000FC3F000000000000FC3F000000000000FC3F000000000000
      FC3F000000000000FFFF000000000000FFFFF81FF8FFFFFFFFFFE007F87F8FFF
      FFFFC003F07F807FFFFF8001F03F800FFFFF8001E03F8007FFFF0000E01F8007
      80010000E01F800380010000F30F800380010000FF0F800180010000FF878001
      FFFF0000FF878001FFFF8001FFC38003FFFF8001FFC78007FFFFC003FFEFC3C7
      FFFFE007FFFFFE0FFFFFF81FFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object srcAccTopicLevels: TDataSource
    DataSet = qryAccTopicLevels
    OnStateChange = srcAccTopicLevelsStateChange
    Left = 608
    Top = 216
  end
  object qryAccTopicLevels: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    AfterInsert = qryAccTopicLevelsAfterInsert
    BeforePost = qryAccTopicLevelsBeforePost
    AfterPost = qryAccTopicLevelsAfterPost
    BeforeDelete = qryAccTopicLevelsBeforeDelete
    Parameters = <
      item
        Name = 'TopicType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end>
    SQL.Strings = (
      'Select * from  acc.AccTopicLevels'
      #13#13'where  acc.AccTopicLevels.TopicType=:TopicType'
      #13'order by LevelID')
    Left = 616
    Top = 120
    object qryAccTopicLevelsLevelID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1591#1581' '
      FieldName = 'LevelID'
    end
    object qryAccTopicLevelsLevelCaption_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578' '
      FieldName = 'LevelCaption_L1'
      Size = 80
    end
    object qryAccTopicLevelsPrvLevelID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1591#1581' '#1602#1576#1604#1610' '
      FieldName = 'PrvLevelID'
    end
    object qryAccTopicLevelsCodeLength: TWordField
      DisplayLabel = #1591#1608#1604' '#1603#1583' '
      FieldName = 'CodeLength'
    end
    object qryAccTopicLevelsFinancialRelationType: TWordField
      DisplayLabel = #1606#1581#1608#1607' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1603#1583#1610#1606#1711' '#1578#1585#1575#1586#1606#1575#1605#1607' '#1575#1610' '
      FieldName = 'FinancialRelationType'
      OnGetText = qryAccTopicLevelsFinancialRelationTypeGetText
      OnSetText = qryAccTopicLevelsFinancialRelationTypeSetText
    end
    object qryAccTopicLevelsAuditRelationType: TWordField
      DisplayLabel = #1606#1581#1608#1607' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1603#1606#1578#1585#1604' '#1607#1575#1610' '#1581#1587#1575#1576#1585#1587#1610
      FieldName = 'AuditRelationType'
      OnGetText = qryAccTopicLevelsAuditRelationTypeGetText
      OnSetText = qryAccTopicLevelsAuditRelationTypeSetText
    end
    object qryAccTopicLevelsEssenceSelectable: TWordField
      DisplayLabel = #1606#1581#1608#1607' '#1575#1606#1578#1582#1575#1576' '#1605#1575#1607#1610#1578' '#1581#1587#1575#1576' '
      FieldName = 'EssenceSelectable'
      OnGetText = qryAccTopicLevelsEssenceSelectableGetText
      OnSetText = qryAccTopicLevelsEssenceSelectableSetText
    end
    object qryAccTopicLevelsAccRelationType: TWordField
      DisplayLabel = #1606#1581#1608#1607' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'AccRelationType'
      OnGetText = qryAccTopicLevelsAccRelationTypeGetText
      OnSetText = qryAccTopicLevelsAccRelationTypeSetText
    end
    object qryAccTopicLevelsCenterTopicsRelationType: TWordField
      DisplayLabel = #1606#1581#1608#1607' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1605#1585#1575#1603#1586' '#1607#1586#1610#1606#1607
      FieldName = 'CenterTopicsRelationType'
      OnGetText = qryAccTopicLevelsCenterTopicsRelationTypeGetText
      OnSetText = qryAccTopicLevelsCenterTopicsRelationTypeSetText
    end
    object qryAccTopicLevelsAssignedForm: TWordField
      DisplayLabel = #1601#1585#1605' '#1602#1575#1576#1604' '#1606#1605#1575#1610#1588' '
      FieldName = 'AssignedForm'
      OnGetText = qryAccTopicLevelsAssignedFormGetText
      OnSetText = qryAccTopicLevelsAssignedFormSetText
    end
    object qryAccTopicLevelsReportFileName1: TStringField
      DisplayLabel = #1606#1575#1605' '#1711#1586#1575#1585#1588' 1'
      FieldName = 'ReportFileName1'
      Size = 100
    end
    object qryAccTopicLevelsReportFileName2: TStringField
      DisplayLabel = #1606#1575#1605' '#1711#1586#1575#1585#1588' 2'
      FieldName = 'ReportFileName2'
      Size = 100
    end
    object qryAccTopicLevelsReportFileName3: TStringField
      DisplayLabel = #1606#1575#1605' '#1711#1586#1575#1585#1588' 3'
      FieldName = 'ReportFileName3'
      Size = 100
    end
    object qryAccTopicLevelsTopicType: TWordField
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'TopicType'
    end
    object qryAccTopicLevelsBudgetRelationType: TWordField
      DisplayLabel = #1606#1581#1608#1607' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1576#1608#1583#1580#1607
      FieldName = 'BudgetRelationType'
      OnGetText = qryAccTopicLevelsBudgetRelationTypeGetText
      OnSetText = qryAccTopicLevelsBudgetRelationTypeSetText
    end
    object qryAccTopicLevelsProjectsRelationType: TWordField
      DisplayLabel = #1606#1581#1608#1607' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1603#1583#1610#1606#1711' '#1591#1585#1581' '#1608' '#1662#1585#1608#1688#1607' '#1607#1575
      FieldName = 'ProjectsRelationType'
      OnGetText = qryAccTopicLevelsProjectsRelationTypeGetText
      OnSetText = qryAccTopicLevelsProjectsRelationTypeSetText
    end
    object qryAccTopicLevelsUseInDocumentsActive: TWordField
      DisplayLabel = #1570#1610#1575' '#1605#1580#1575#1586' '#1576#1607' '#1575#1587#1578#1601#1575#1583#1607' '#1583#1585' '#1575#1575#1587#1606#1575#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1605#1610' '#1588#1608#1583
      FieldName = 'UseInDocumentsActive'
    end
    object qryAccTopicLevelsReactionEssenceType: TWordField
      DisplayLabel = #1606#1581#1608#1607' '#1575#1606#1578#1582#1575#1576' ('#1606#1581#1608#1607' '#1576#1585#1582#1608#1585#1583' '#1576#1575' '#1578#1594#1610#1610#1585' '#1605#1575#1607#1610#1578')'
      FieldName = 'ReactionEssenceType'
      OnGetText = qryAccTopicLevelsReactionEssenceTypeGetText
      OnSetText = qryAccTopicLevelsReactionEssenceTypeSetText
    end
    object qryAccTopicLevelsNoteActive: TWordField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610' '#1606#1605#1575#1610#1588' '#1588#1608#1583
      FieldName = 'NoteActive'
    end
    object qryAccTopicLevelsDetailsRelationType: TWordField
      FieldName = 'DetailsRelationType'
      OnGetText = qryAccTopicLevelsDetailsRelationTypeGetText
      OnSetText = qryAccTopicLevelsDetailsRelationTypeSetText
    end
    object qryAccTopicLevelsAccLastYearActive: TWordField
      FieldName = 'AccLastYearActive'
      OnGetText = qryAccTopicLevelsAccLastYearActiveGetText
      OnSetText = qryAccTopicLevelsAccLastYearActiveSetText
    end
    object qryAccTopicLevelsRecalInterfaceID: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1591#1581' '#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1576#1608#1583#1580#1607
      FieldName = 'RecalInterfaceID'
      Size = 120
    end
    object qryAccTopicLevelsLevelCaption_L2: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578' 2'
      FieldName = 'LevelCaption_L2'
      Size = 80
    end
    object qryAccTopicLevelsAidInfoTypeActive: TWordField
      FieldName = 'AidInfoTypeActive'
    end
    object qryAccTopicLevelsADDLevelID: TWordField
      DisplayLabel = #1575#1590#1575#1601#1607
      FieldName = 'ADDLevelID'
    end
    object qryAccTopicLevelsEditLevelID: TWordField
      DisplayLabel = #1608#1610#1585#1575#1610#1588
      FieldName = 'EditLevelID'
    end
    object qryAccTopicLevelsDeleteLevelID: TWordField
      DisplayLabel = #1581#1584#1601
      FieldName = 'DeleteLevelID'
    end
    object qryAccTopicLevelsChangeStateLevelID: TWordField
      DisplayLabel = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578
      FieldName = 'ChangeStateLevelID'
    end
    object qryAccTopicLevelsPrintLevelID: TWordField
      DisplayLabel = #1670#1575#1662
      FieldName = 'PrintLevelID'
    end
    object qryAccTopicLevelsTaxonomyActive: TWordField
      FieldName = 'TaxonomyActive'
    end
    object qryAccTopicLevelsOtherContorolLevleId: TWordField
      DisplayLabel = ' '#1587#1575#1610#1585' '#1705#1606#1578#1585#1604#1607#1575
      FieldName = 'OtherContorolLevleId'
    end
    object qryAccTopicLevelsAccRelatedID: TWordField
      DisplayLabel = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1607#1575
      FieldName = 'AccRelatedID'
    end
    object qryAccTopicLevelsEditState2: TWordField
      DisplayLabel = #1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1591#1593#1610
      FieldName = 'EditState2'
    end
    object qryAccTopicLevelsEditState3: TWordField
      DisplayLabel = ' '#1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1575#1574#1605
      FieldName = 'EditState3'
    end
    object qryAccTopicLevelsAccessPermanent: TWordField
      DisplayLabel = #1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1575#1574#1605
      FieldName = 'AccessPermanent'
    end
    object qryAccTopicLevelsAccessCertain: TWordField
      DisplayLabel = #1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1591#1593#1610
      FieldName = 'AccessCertain'
    end
    object qryAccTopicLevelsDeleteRowLevelID: TWordField
      DisplayLabel = #1581#1584#1601' '#1585#1583#1740#1601' '#1583#1585' '#1587#1606#1583
      FieldName = 'DeleteRowLevelID'
    end
    object qryAccTopicLevelsEditNoteLevelID: TWordField
      DisplayLabel = #1608#1740#1585#1575#1740#1588' '#1578#1608#1590#1740#1581#1575#1578' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1740
      FieldName = 'EditNoteLevelID'
    end
    object qryAccTopicLevelsShowNoteLevelID: TWordField
      DisplayLabel = #1606#1605#1575#1740#1588' '#1578#1608#1590#1740#1581#1575#1578' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1740
      FieldName = 'ShowNoteLevelID'
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Report |*.Rtm'
    Title = #1604#1591#1601#1575#1611' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578' '#1585#1575' '#1575#1606#1578#1582#1575#1576' '#1603#1606#1610#1583'.'#8207
    Left = 24
    Top = 96
  end
end
