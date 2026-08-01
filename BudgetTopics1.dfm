inherited BudgetTopics1f: TBudgetTopics1f
  Left = 196
  Top = 142
  Caption = #1605#1593#1585#1601#1610' '#1587#1585#1601#1589#1604#1607#1575#1610' '#1576#1608#1583#1580#1607' ('#1601#1585#1605' '#1588#1605#1575#1585#1607'1)'
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    inherited BtnReject: TBitBtn
      TabOrder = 6
    end
    object newPanel: TPanel
      Left = 536
      Top = 1
      Width = 253
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        253
        39)
      object BitBtn3: TBitBtn
        Left = 168
        Top = 7
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 91
        Top = 7
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 14
        Top = 7
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object okPanel: TPanel
      Left = 363
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 371
      DesignSize = (
        165
        39)
      object BitBtn7: TBitBtn
        Left = 89
        Top = 7
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
        Left = 12
        Top = 7
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
    object BitBtn6: TBitBtn
      Left = 236
      Top = 8
      Width = 75
      Height = 25
      Action = actSendToExcel
      Anchors = [akLeft, akBottom]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn11: TBitBtn
      Left = 397
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akLeft, akBottom]
      Caption = #1670#1575#1662
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 160
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00636B
        7300C69C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006394B500218C
        EF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0042A5
        FF00218CEF007B849400CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052BD
        FF005ABDFF00218CEF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
        FF0052BDFF0042A5FF00218CEF0084849400CE9C9400FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF0052BDFF005ABDFF003184D60052636B00FF00FF009C6B6B00CEA5
        9C00D6B5A500CE9C9C00C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0031A5FF0052BDFF00C6CEDE009C9C9C00AD8C8400E7D6BD00FFFF
        D600FFFFDE00FFFFD600EFDEC600FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00C6ADAD00CEA59400FFE7BD00FFF7CE00FFFF
        D600FFFFD600FFFFDE00FFFFE700FFFFFF00C6A5A500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00BD8C8C00EFDEB500F7D6AD00FFF7CE00FFFF
        D600FFFFDE00FFFFEF00FFFFF700FFFFFF00F7EFDE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00F7CE9C00FFEFC600FFFF
        D600FFFFDE00FFFFF700FFFFF700FFFFDE00FFFFDE00C6949400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00EFD6B500FFE7B500F7C68C00F7DEB500FFFF
        D600FFFFDE00FFFFEF00FFFFEF00FFFFDE00FFFFDE00BD9C8C00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00EFBD8400F7C69400FFEF
        C600FFFFD600FFFFD600FFFFD600FFFFD600FFFFDE00C6949400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6ADA500FFEFBD00F7DEAD00F7CE9C00F7D6
        A500F7E7BD00FFFFD600FFFFD600FFFFD600FFFFD600FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C8C00FFFFFF00FFFFFF00F7C6
        9400EFBD8400F7C69400F7D6AD00FFEFC600BD9C8C00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFEFE700FFFFEF00FFE7
        B500F7DEAD00FFE7B500FFEFBD00C69C9400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C
        8C00CEA59C00C69C9400FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 4
    end
    object BitBtn12: TBitBtn
      Left = 84
      Top = 8
      Width = 75
      Height = 25
      Action = actSORT
      Caption = #1578#1585#1578#1610#1576
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006A00
        00006A0000006A000000FF00FF006A0000006A0000006A000000FFFFFF00FF00
        FF00FF00FF00FF00FF0000580300FF00FF00FF00FF00FF00FF00FFFFFF006A6A
        6A006A000000FF00FF00FF00FF00FF00FF00980000006A6A6A00FF00FF00FF00
        FF00FF00FF00005803006AFF6A0000580300FF00FF00FF00FF00FF00FF00FF00
        FF006A6A6A006A0000006A0000006A0000006A000000FF00FF00FF00FF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FFFFFF00FF00
        FF00FF00FF006A000000FF00FF00980000006A000000FF00FF00FFFFFF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FFFFFF00FF00
        FF00FF00FF00980000006A0000006A000000FF00FF00FF00FF00FF00FF000058
        0300005803000058030000580300005803000058030000580300FF00FF00FF00
        FF00FF00FF006A6A6A006A0000006A6A6A00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0098000000FF00FF00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A0000006A0000006A0000006A0000006A00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A00FF00FF00FF00FF00FF00FF000000B600FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006A6A6A0000006A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000006A0000006A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF006A6A6A0000006A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A00FF00FF00FF00FF0000006A0000006A00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF001100
        7B0011007B0011007B0011007B0011007B0011007B00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00}
      TabOrder = 5
    end
    object BitBtn2: TBitBtn
      Left = 313
      Top = 8
      Width = 83
      Height = 25
      Action = actNote
      Anchors = [akLeft, akBottom]
      Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Height = 16
    end
  end
  inherited Panel3: TPanel
    Height = 423
    ExplicitWidth = 782
    ExplicitHeight = 422
    object DBGrid1: TDBGrid
      Left = 485
      Top = 2
      Width = 295
      Height = 418
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = SrcBudgetTopics
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
          FieldName = 'BudgetTopicID'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BudgetCaption_L1'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BudgetCaption_L2'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 483
      Height = 418
      Align = alClient
      BevelInner = bvLowered
      BorderStyle = bsSingle
      TabOrder = 1
      object PnlGrid: TPanel
        Left = 2
        Top = 337
        Width = 475
        Height = 75
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelInner = bvLowered
        TabOrder = 8
        ExplicitTop = 333
        ExplicitWidth = 479
        ExplicitHeight = 81
        object Panel5: TPanel
          Left = 2
          Top = 2
          Width = 475
          Height = 23
          Align = alTop
          BevelInner = bvLowered
          BorderStyle = bsSingle
          Caption = #1604#1610#1587#1578' '#1603#1583#1610#1606#1711' '#1591#1585#1581' '#1608' '#1662#1585#1608#1688#1607' '#1603#1607' '#1602#1575#1576#1604' '#1575#1587#1578#1601#1575#1583#1607' '#1583#1585' '#1575#1610#1606' '#1603#1583' '#1605#1610' '#1576#1575#1588#1606#1583
          TabOrder = 0
        end
        object DBGrid2: TDBGrid
          Left = 2
          Top = 25
          Width = 475
          Height = 25
          Align = alClient
          DataSource = SrcProjectRange
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnKeyPress = DBGrid2KeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'ProjectID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_ProjectName_l1'
              Title.Alignment = taCenter
              Width = 109
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_ProjectName_l2'
              Visible = True
            end>
        end
        object Panel4: TPanel
          Left = 2
          Top = 50
          Width = 475
          Height = 29
          Align = alBottom
          TabOrder = 2
          DesignSize = (
            471
            29)
          object buttonProject: TBitBtn
            Left = 357
            Top = 3
            Width = 105
            Height = 24
            Action = actRelation
            Anchors = [akLeft, akBottom]
            Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1591#1585#1581' '#1608#1576#1585#1606#1575#1605#1607' '
            TabOrder = 0
          end
          object del: TBitBtn
            Left = 8
            Top = 3
            Width = 75
            Height = 24
            Action = DataSetDelete1
            Caption = #1581#1584#1601' '#1575#1585#1578#1576#1575#1591
            TabOrder = 1
          end
        end
      end
      object Panel6: TPanel
        Left = 2
        Top = 2
        Width = 475
        Height = 34
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 479
        object Label1: TLabel
          Left = 338
          Top = 11
          Width = 14
          Height = 13
          Caption = #1603#1583' '
        end
        object DBEdit1: TDBEdit
          Left = 196
          Top = 7
          Width = 129
          Height = 21
          DataField = 'BudgetTopicID'
          DataSource = SrcBudgetTopics
          TabOrder = 0
        end
      end
      object PnlGroupOnTopics: TPanel
        Left = 2
        Top = 184
        Width = 475
        Height = 35
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 6
        object Label6: TLabel
          Left = 335
          Top = 6
          Width = 119
          Height = 13
          Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1582#1575#1589' '#1587#1585' '#1601#1589#1604' '
        end
        object CmbGroupTopic: TDBComboBox
          Left = 108
          Top = 3
          Width = 217
          Height = 21
          BiDiMode = bdRightToLeft
          DataField = 'GroupTopic'
          DataSource = SrcBudgetTopics
          ParentBiDiMode = False
          TabOrder = 0
          OnDropDown = CmbGroupTopicDropDown
        end
      end
      object PnlEssense: TPanel
        Left = 2
        Top = 95
        Width = 475
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        object Label3: TLabel
          Left = 339
          Top = 9
          Width = 65
          Height = 13
          Caption = #1605#1575#1607#1610#1578' '#1581#1587#1575#1576
        end
        object CmbEssence: TDBComboBox
          Left = 108
          Top = 3
          Width = 217
          Height = 21
          BiDiMode = bdRightToLeft
          DataField = 'Essence'
          DataSource = SrcBudgetTopics
          ParentBiDiMode = False
          TabOrder = 0
          OnDropDown = CmbEssenceDropDown
        end
      end
      object PnlNextYear: TPanel
        Left = 2
        Top = 128
        Width = 475
        Height = 29
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 4
        object Label4: TLabel
          Left = 337
          Top = 5
          Width = 131
          Height = 13
          Caption = #1606#1581#1608#1607' '#1605#1581#1575#1587#1576#1607' '#1576#1608#1583#1580#1607' '#1587#1575#1604' '#1576#1593#1583
        end
        object Label5: TLabel
          Left = 97
          Top = 4
          Width = 46
          Height = 13
          Caption = #1583#1585#1589#1583#1578#1594#1610#1610#1585
        end
        object CmbNextYearCalType: TDBComboBox
          Left = 155
          Top = 0
          Width = 170
          Height = 21
          DataField = 'NextYearCalType'
          DataSource = SrcBudgetTopics
          TabOrder = 0
          OnDropDown = CmbNextYearCalTypeDropDown
        end
        object DBEdit3: TDBEdit
          Left = 21
          Top = 1
          Width = 64
          Height = 21
          DataField = 'DecExtPerecent'
          DataSource = SrcBudgetTopics
          TabOrder = 1
        end
      end
      object PnlPercent: TPanel
        Left = 2
        Top = 157
        Width = 475
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 5
        ExplicitWidth = 479
        object Label7: TLabel
          Left = 337
          Top = 2
          Width = 88
          Height = 13
          Caption = #1583#1585#1589#1583#1587#1607#1605' '#1593#1605#1585#1575#1606#1610
        end
        object Label8: TLabel
          Left = 92
          Top = 3
          Width = 79
          Height = 13
          Caption = #1583#1585#1589#1583' '#1587#1607#1605' '#1580#1575#1585#1610
        end
        object DBEdit4: TDBEdit
          Left = 271
          Top = 1
          Width = 54
          Height = 21
          DataField = 'PortionPerecentReclamation'
          DataSource = SrcBudgetTopics
          TabOrder = 0
        end
        object DBEdit5: TDBEdit
          Left = 21
          Top = 0
          Width = 64
          Height = 21
          DataField = 'PortionPerecentExp'
          DataSource = SrcBudgetTopics
          TabOrder = 1
        end
      end
      object PnlAccCode: TPanel
        Left = 2
        Top = 228
        Width = 475
        Height = 109
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 7
        ExplicitTop = 224
        ExplicitWidth = 479
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 479
          Height = 109
          Align = alClient
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          object Label10: TLabel
            Left = 379
            Top = 22
            Width = 62
            Height = 13
            Caption = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
          end
          object Label11: TLabel
            Left = 378
            Top = 52
            Width = 63
            Height = 13
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1600#1600#1600#1600#1610
          end
          object Label12: TLabel
            Left = 384
            Top = 83
            Width = 57
            Height = 13
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
          end
          object SpeedButton1: TSpeedButton
            Left = 263
            Top = 46
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton1Click
          end
          object SpeedButton2: TSpeedButton
            Left = 263
            Top = 76
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton2Click
          end
          object SpeedButton3: TSpeedButton
            Left = 263
            Top = 17
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton3Click
          end
          object DBText1: TDBText
            Left = 44
            Top = 49
            Width = 210
            Height = 17
            Color = 12435902
            DataField = '_DetailName'
            DataSource = SrcBudgetTopics
            ParentColor = False
            Transparent = False
          end
          object DBText2: TDBText
            Left = 44
            Top = 77
            Width = 209
            Height = 17
            Color = 12435902
            DataField = '_CTopicName'
            ParentColor = False
            Transparent = False
          end
          object DBText3: TDBText
            Left = 44
            Top = 20
            Width = 210
            Height = 17
            Color = 12435902
            DataField = '_MoeenName'
            DataSource = SrcBudgetTopics
            ParentColor = False
            Transparent = False
          end
          object DBEdit6: TDBEdit
            Left = 285
            Top = 18
            Width = 89
            Height = 21
            DataField = 'AccCode'
            DataSource = SrcBudgetTopics
            TabOrder = 0
          end
          object DBEdit7: TDBEdit
            Left = 285
            Top = 47
            Width = 89
            Height = 21
            DataField = 'DetailCode'
            DataSource = SrcBudgetTopics
            TabOrder = 1
          end
          object DBEdit8: TDBEdit
            Left = 285
            Top = 77
            Width = 89
            Height = 21
            DataField = 'CTopic1'
            DataSource = SrcBudgetTopics
            TabOrder = 2
          end
        end
      end
      object Pnllevel_L1: TPanel
        Left = 2
        Top = 36
        Width = 475
        Height = 28
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 479
        DesignSize = (
          475
          28)
        object Label2: TLabel
          Left = 337
          Top = 6
          Width = 29
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1593#1606#1608#1575#1606' '
        end
        object DBEdit2: TDBEdit
          Left = 11
          Top = 2
          Width = 315
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'BudgetCaption_L1'
          DataSource = SrcBudgetTopics
          TabOrder = 0
        end
      end
      object Pnllevel_L2: TPanel
        Left = 2
        Top = 64
        Width = 475
        Height = 31
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitWidth = 479
        DesignSize = (
          475
          31)
        object Label15: TLabel
          Left = 341
          Top = 11
          Width = 63
          Height = 13
          Anchors = [akTop, akRight]
          Caption = ' level caption'
        end
        object DBEdit9: TDBEdit
          Left = 11
          Top = 4
          Width = 315
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'BudgetCaption_L2'
          DataSource = SrcBudgetTopics
          TabOrder = 0
        end
      end
    end
  end
  inherited ActionList: TActionList
    object actRelation: TAction [0]
      Tag = -2
      Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1591#1585#1581' '#1608#1576#1585#1606#1575#1605#1607' '
      OnExecute = actRelationExecute
    end
    object actNote: TAction [1]
      Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      OnExecute = actNoteExecute
    end
    object actPrint: TAction [2]
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    inherited DataSetInsert1: TDataSetInsert
      DataSource = SrcBudgetTopics
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = SrcBudgetTopics
    end
    object actSendToExcel: TAction [6]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
    object actSORT: TAction [7]
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSORTExecute
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = SrcBudgetTopics
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = SrcBudgetTopics
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = SrcBudgetTopics
    end
    object DataSetDelete1: TDataSetDelete
      Tag = -2
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1575#1585#1578#1576#1575#1591
      DataSource = SrcProjectRange
    end
  end
  inherited ImageList1: TImageList
    Left = 24
  end
  object SrcBudgetTopics: TDataSource
    DataSet = qryBudgetTopics
    OnStateChange = SrcBudgetTopicsStateChange
    Left = 600
    Top = 96
  end
  object qryBudgetTopics: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    AfterInsert = qryBudgetTopicsAfterInsert
    BeforePost = qryBudgetTopicsBeforePost
    AfterPost = qryBudgetTopicsAfterPost
    BeforeCancel = qryBudgetTopicsBeforeCancel
    BeforeDelete = qryBudgetTopicsBeforeDelete
    AfterDelete = qryBudgetTopicsAfterDelete
    AfterScroll = qryBudgetTopicsAfterScroll
    Parameters = <
      item
        Name = 'LevId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from BudgetTopics'
      'where  LevelID=:LevId'
      'ORDER BY BudgetTopicID')
    Left = 688
    Top = 96
    object qryBudgetTopicsBudgetTopicID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '
      FieldName = 'BudgetTopicID'
      Required = True
      OnChange = qryBudgetTopicsBudgetTopicIDChange
    end
    object qryBudgetTopicsBudgetCaption: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '
      FieldName = 'BudgetCaption_L1'
      Required = True
      Size = 100
    end
    object qryBudgetTopicsAccCode: TIntegerField
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'AccCode'
    end
    object qryBudgetTopicsDetailCode: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'DetailCode'
    end
    object qryBudgetTopicsCTopic1: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
      FieldName = 'CTopic1'
    end
    object qryBudgetTopicsLevelID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1591#1581
      FieldName = 'LevelID'
      Required = True
    end
    object qryBudgetTopicsNote: TStringField
      FieldName = 'Note_L1'
      Size = 200
    end
    object qryBudgetTopicsNextYearCalType: TWordField
      DisplayLabel = #1606#1581#1608#1607' '#1605#1581#1575#1587#1576#1607' '#1576#1608#1583#1580#1607' '#1587#1575#1604' '#1576#1593#1583
      FieldName = 'NextYearCalType'
      OnGetText = qryBudgetTopicsNextYearCalTypeGetText
      OnSetText = qryBudgetTopicsNextYearCalTypeSetText
    end
    object qryBudgetTopicsEssence: TWordField
      DisplayLabel = #1605#1575#1607#1610#1578' '#1581#1587#1575#1576
      FieldName = 'Essence'
      OnGetText = qryBudgetTopicsEssenceGetText
      OnSetText = qryBudgetTopicsEssenceSetText
    end
    object qryBudgetTopicsDecExtPerecent: TIntegerField
      DisplayLabel = #1583#1585#1589#1583#1578#1594#1610#1610#1585
      FieldName = 'DecExtPerecent'
    end
    object qryBudgetTopicsGroupTopic: TIntegerField
      DisplayLabel = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1582#1575#1589' '#1587#1585' '#1601#1589#1604' '
      FieldName = 'GroupTopic'
      OnGetText = qryBudgetTopicsGroupTopicGetText
      OnSetText = qryBudgetTopicsGroupTopicSetText
    end
    object qryBudgetTopicsPortionPerecentReclamation: TIntegerField
      DisplayLabel = #1583#1585#1589#1583#1587#1607#1605' '#1593#1605#1585#1575#1606#1610
      FieldName = 'PortionPerecentReclamation'
    end
    object qryBudgetTopicsPortionPerecentExp: TIntegerField
      DisplayLabel = #1583#1585#1589#1583' '#1587#1607#1605' '#1580#1575#1585#1610
      FieldName = 'PortionPerecentExp'
    end
    object qryBudgetTopics_MoeenName: TStringField
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = '_MoeenName'
      LookupDataSet = qryCategories
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName_L1'
      KeyFields = 'AccCode'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qryBudgetTopics_DetailCode: TStringField
      FieldKind = fkLookup
      FieldName = '_DetailName'
      LookupDataSet = qryDetails
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName_L1'
      KeyFields = 'DetailCode'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qryBudgetTopics__CTopicName: TStringField
      FieldKind = fkLookup
      FieldName = '__CTopicName'
      LookupDataSet = qryCenterTopics
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName_L1'
      KeyFields = 'CTopic1'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qryBudgetTopicsBudgetCaption_L2: TStringField
      Tag = 3
      DisplayLabel = 'Caption'
      FieldName = 'BudgetCaption_L2'
      Size = 100
    end
    object qryBudgetTopicsNote_L2: TStringField
      FieldName = 'Note_L2'
      Size = 200
    end
  end
  object qryInit: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'LevelID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     BudgetTopicLevels.*, BudgetTopicLevels_1.CodeLength A' +
        'S PrvCodeLength'
      'FROM         acc.BudgetTopicLevels LEFT OUTER JOIN'
      
        '                      acc.BudgetTopicLevels BudgetTopicLevels_1 ' +
        'ON BudgetTopicLevels.prvLevelID = BudgetTopicLevels_1.LevelID'
      'WHERE     (BudgetTopicLevels.LevelID =:LevelID )')
    Left = 464
    Top = 8
    object qryInitLevelID: TIntegerField
      FieldName = 'LevelID'
    end
    object qryInitLevelCaption: TStringField
      FieldName = 'LevelCaption_L1'
      Size = 50
    end
    object qryInitprvLevelID: TIntegerField
      FieldName = 'prvLevelID'
    end
    object qryInitCodeLength: TWordField
      FieldName = 'CodeLength'
    end
    object qryInitEssenseSelectable: TWordField
      FieldName = 'EssenseSelectable'
    end
    object qryInitAccRelationType: TWordField
      FieldName = 'AccRelationType'
    end
    object qryInitTopicType: TWordField
      FieldName = 'TopicType'
    end
    object qryInitAssignedForm: TIntegerField
      FieldName = 'AssignedForm'
    end
    object qryInitReportFileName: TStringField
      FieldName = 'ReportFileName'
      Size = 100
    end
    object qryInitNextYearSelectType: TWordField
      FieldName = 'NextYearSelectType'
    end
    object qryInitGroupOnTopicsVisible: TWordField
      FieldName = 'GroupOnTopicsVisible'
    end
    object qryInitSelectPercentType: TWordField
      FieldName = 'SelectPercentType'
    end
    object qryInitHasRelateOnProjects: TWordField
      FieldName = 'HasRelateOnProjects'
    end
    object qryInitPrvCodeLength: TWordField
      FieldName = 'PrvCodeLength'
    end
  end
  object qryCategories: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     TopicCode, MoeenName_L1, MoeenName_L2'
      'FROM         Categories')
    Left = 26
    Top = 63
    object qryCategoriesTopicCode: TLargeintField
      FieldName = 'TopicCode'
    end
    object qryCategoriesMoeenName: TStringField
      FieldName = 'MoeenName_L1'
      Size = 100
    end
    object qryCategoriesMoeenName_L2: TStringField
      FieldName = 'MoeenName_L2'
      Size = 100
    end
  end
  object qryDetails: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.DetailRange.DetailCode, dbo.Details.DetailName_L1' +
        ', dbo.Details.DetailName_L2'
      'FROM         dbo.DetailRange INNER JOIN'
      
        '                      dbo.Details ON dbo.DetailRange.DetailCode ' +
        '= dbo.Details.DetailCode')
    Left = 26
    Top = 117
  end
  object qryCenterTopics: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.CenterTopicRange.CTopicCode, dbo.CenterTopics.CTo' +
        'picName_L1, dbo.CenterTopics.CTopicName_L2'
      'FROM         dbo.CenterTopicRange LEFT OUTER JOIN'
      
        '                      dbo.CenterTopics ON dbo.CenterTopicRange.C' +
        'TopicCode = dbo.CenterTopics.CTopicCode')
    Left = 42
    Top = 167
  end
  object qryPrDefalt: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'prvTopId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'prvLeveId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     BudgetTopics.*'
      'FROM         BudgetTopics'
      'WHERE    (BudgetTopicID =:prvTopId)  AND (LevelID =:prvLeveId)')
    Left = 208
    Top = 8
    object qryPrDefaltBudgetTopicID: TIntegerField
      FieldName = 'BudgetTopicID'
    end
    object qryPrDefaltBudgetCaption: TStringField
      FieldName = 'BudgetCaption_L1'
      Size = 100
    end
    object qryPrDefaltAccCode: TIntegerField
      FieldName = 'AccCode'
    end
    object qryPrDefaltDetailCode: TIntegerField
      FieldName = 'DetailCode'
    end
    object qryPrDefaltCTopic1: TIntegerField
      FieldName = 'CTopic1'
    end
    object qryPrDefaltLevelID: TIntegerField
      FieldName = 'LevelID'
    end
    object qryPrDefaltNote: TStringField
      FieldName = 'Note_L1'
      Size = 200
    end
    object qryPrDefaltNextYearCalType: TWordField
      FieldName = 'NextYearCalType'
    end
    object qryPrDefaltEssence: TWordField
      FieldName = 'Essence'
    end
    object qryPrDefaltDecExtPerecent: TIntegerField
      FieldName = 'DecExtPerecent'
    end
    object qryPrDefaltGroupTopic: TIntegerField
      FieldName = 'GroupTopic'
    end
    object qryPrDefaltPortionPerecentReclamation: TIntegerField
      FieldName = 'PortionPerecentReclamation'
    end
    object qryPrDefaltPortionPerecentExp: TIntegerField
      FieldName = 'PortionPerecentExp'
    end
    object qryPrDefaltBudgetCaption_L2: TStringField
      FieldName = 'BudgetCaption_L2'
      Size = 100
    end
    object qryPrDefaltNote_L2: TStringField
      FieldName = 'Note_L2'
      Size = 200
    end
  end
  object qryProjectsRange: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    BeforeDelete = qryProjectsRangeBeforeDelete
    Parameters = <
      item
        Name = 'BudTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT  *  FROM   ProjectsRange  WHERE     (BudgetTopicID =:BudT' +
        'o)')
    Left = 184
    Top = 408
    object qryProjectsRangeProjectID: TIntegerField
      DisplayLabel = #1603#1583' '#1591#1585#1581'  '#1608' '#1662#1585#1608#1688#1607
      FieldName = 'ProjectID'
    end
    object qryProjectsRangeBudgetTopicID: TIntegerField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'BudgetTopicID'
    end
    object qryProjectsRange_ProjectName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldKind = fkLookup
      FieldName = '_ProjectName_l1'
      LookupDataSet = qrySelectTopicId
      LookupKeyFields = 'ProjectID'
      LookupResultField = 'ProjectCaption_L1'
      KeyFields = 'ProjectID'
      LookupCache = True
      Lookup = True
    end
    object qryProjectsRange_ProjectName_l2: TStringField
      DisplayLabel = 'Project Name'
      FieldKind = fkLookup
      FieldName = '_ProjectName_l2'
      LookupDataSet = qrySelectTopicId
      LookupKeyFields = 'ProjectID'
      LookupResultField = 'ProjectCaption_L2'
      KeyFields = 'ProjectID'
      LookupCache = True
      Size = 100
      Lookup = True
    end
  end
  object SrcProjectRange: TDataSource
    DataSet = qryProjectsRange
    Left = 88
    Top = 408
  end
  object qrySelectTopicId: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.Projects.ProjectID, dbo.Projects.ProjectCaption_L' +
        '1, dbo.Projects.ProjectCaption_L2'
      'FROM         dbo.Projects LEFT OUTER JOIN'
      
        '                      dbo.ProjectsForUse ON dbo.Projects.Project' +
        'ID = dbo.ProjectsForUse.PrvProjectID'
      'WHERE     (dbo.ProjectsForUse.PrvProjectID IS NULL)')
    Left = 464
    Top = 144
    object qrySelectTopicIdProjectID: TIntegerField
      FieldName = 'ProjectID'
    end
    object qrySelectTopicIdProjectCaption: TStringField
      FieldName = 'ProjectCaption_L1'
      Size = 100
    end
    object qrySelectTopicIdProjectCaption_L2: TStringField
      FieldName = 'ProjectCaption_L2'
      Size = 100
    end
  end
  object qryFormsInfo: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     FormInfoID, InfoName_L1, InfoName_L2,InfoID'
      'FROM         dbo.FormsInfo'
      '')
    Left = 464
    Top = 72
    object qryFormsInfoFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryFormsInfoInfoName_L1: TStringField
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryFormsInfoInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryFormsInfoInfoID: TWordField
      FieldName = 'InfoID'
    end
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
    Template.FileName = 'D:\Projects\Fara\Accounting\Exe\Report\AuditTopics_1_L1.rtm'
    Units = utMillimeters
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
    PreviewFormSettings.ZoomSetting = zs100Percent
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
    Left = 600
    Top = 240
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1576#1608#1583#1580#1607
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
        mmLeft = 4763
        mmTop = 17198
        mmWidth = 170127
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 15610
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583'  '
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
        mmLeft = 177007
        mmTop = 17198
        mmWidth = 19844
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
        mmHeight = 5080
        mmLeft = 8467
        mmTop = 8731
        mmWidth = 9398
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
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1587#1585#1601#1589#1604#1607#1575#1610' '#1576#1608#1583#1580#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5969
        mmLeft = 85682
        mmTop = 6615
        mmWidth = 31835
        BandType = 0
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 4763
        mmTop = 20902
        mmWidth = 170127
        BandType = 0
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 177007
        mmTop = 20638
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'BudgetCaption_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 4763
        mmTop = 0
        mmWidth = 170127
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'BudgetTopicID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 177007
        mmTop = 0
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
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
    DataSource = SrcBudgetTopics
    UserName = 'DBPipeline1'
    Left = 616
    Top = 293
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'BudgetTopicID'
      FieldName = 'BudgetTopicID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'BudgetCaption_L1'
      FieldName = 'BudgetCaption_L1'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'AccCode'
      FieldName = 'AccCode'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'DetailCode'
      FieldName = 'DetailCode'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTopic1'
      FieldName = 'CTopic1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'LevelID'
      FieldName = 'LevelID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'Note_L1'
      FieldName = 'Note_L1'
      FieldLength = 200
      DisplayWidth = 200
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'NextYearCalType'
      FieldName = 'NextYearCalType'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Essence'
      FieldName = 'Essence'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'DecExtPerecent'
      FieldName = 'DecExtPerecent'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'GroupTopic'
      FieldName = 'GroupTopic'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'PortionPerecentReclamation'
      FieldName = 'PortionPerecentReclamation'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'PortionPerecentExp'
      FieldName = 'PortionPerecentExp'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = '_MoeenName'
      FieldName = '_MoeenName'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = '_DetailName'
      FieldName = '_DetailName'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = '__CTopicName'
      FieldName = '__CTopicName'
      FieldLength = 50
      DisplayWidth = 50
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'BudgetCaption_L2'
      FieldName = 'BudgetCaption_L2'
      FieldLength = 100
      DisplayWidth = 100
      Position = 16
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'Note_L2'
      FieldName = 'Note_L2'
      FieldLength = 200
      DisplayWidth = 200
      Position = 17
    end
  end
end
