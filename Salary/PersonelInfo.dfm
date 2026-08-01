inherited PersonelInfoF: TPersonelInfoF
  Left = 420
  Top = 112
  Caption = #1605#1593#1585#1601#1610' '#1662#1585#1587#1606#1604
  ClientHeight = 553
  ClientWidth = 917
  ExplicitLeft = -34
  ExplicitWidth = 925
  ExplicitHeight = 584
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 512
    Width = 917
    TabOrder = 3
    ExplicitTop = 512
    ExplicitWidth = 917
    object DBNavigator1: TDBNavigator [0]
      AlignWithMargins = True
      Left = 409
      Top = 4
      Width = 80
      Height = 33
      DataSource = srcPeronalInfo
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      Hints.Strings = (
        #1575#1608#1604#1610#1606
        #1602#1576#1604#1610
        #1576#1593#1583#1610
        #1570#1582#1585#1610#1606
        'Insert record'
        'Delete record'
        'Edit record'
        'Post edit'
        'Cancel edit'
        'Refresh data')
      TabOrder = 7
    end
    object okPanel: TPanel [1]
      Left = 445
      Top = 1
      Width = 162
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 1
      object BitBtn7: TBitBtn
        AlignWithMargins = True
        Left = 84
        Top = 6
        Width = 75
        Height = 27
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
        Height = 27
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
    inherited BtnReject: TBitBtn
      TabOrder = 6
    end
    object newPanel: TPanel
      Left = 607
      Top = 1
      Width = 309
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 0
      object BitBtn1: TBitBtn
        AlignWithMargins = True
        Left = 236
        Top = 6
        Width = 70
        Height = 27
        Margins.Top = 6
        Margins.Bottom = 6
        Action = DataSetInsert1
        Align = alRight
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        AlignWithMargins = True
        Left = 160
        Top = 6
        Width = 70
        Height = 27
        Margins.Top = 6
        Margins.Bottom = 6
        Action = DataSetEdit1
        Align = alRight
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        AlignWithMargins = True
        Left = 84
        Top = 6
        Width = 70
        Height = 27
        Margins.Top = 6
        Margins.Bottom = 6
        Action = DataSetDelete1_
        Align = alRight
        Caption = #1581#1584#1601
        TabOrder = 2
      end
      object btnGetExcel: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 6
        Width = 75
        Height = 27
        Hint = ' '
        Margins.Top = 6
        Margins.Bottom = 6
        Align = alRight
        Caption = #1582#1608#1575#1606#1583#1606' Excel'
        TabOrder = 3
        OnClick = btnGetExcelClick
      end
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendtoExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 4
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch_PeronalInfo
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 5
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alLeft
      Caption = ' '#1581#1603#1605' '#1603#1575#1585#1711#1586#1610#1606#1610' '
      TabOrder = 2
      OnClick = BitBtn9Click
    end
    object BitBtn10: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alLeft
      BiDiMode = bdLeftToRight
      Caption = #1575#1587#1603#1606
      Layout = blGlyphRight
      ParentBiDiMode = False
      TabOrder = 3
      OnClick = BitBtn10Click
    end
  end
  inherited Panel2: TPanel
    Width = 917
    Height = 55
    TabOrder = 0
    ExplicitWidth = 917
    ExplicitHeight = 55
    inherited ImgTemplate: TImage
      Left = 879
      ExplicitLeft = 764
    end
    inherited lblCaption: TLabel
      Left = 809
      Height = 35
      ExplicitLeft = 809
    end
    inherited lblBaseDate: TLabel
      Left = 343
      ExplicitLeft = 343
    end
    object SBtnPeronalInfo: TSpeedButton
      Left = 8
      Top = 4
      Width = 23
      Height = 22
      Action = actSearch_PeronalInfo
    end
    object Label25: TLabel
      Left = 124
      Top = 9
      Width = 71
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
      ParentBiDiMode = False
    end
    object Label27: TLabel
      Left = 124
      Top = 34
      Width = 68
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = #1608#1590#1593#1610#1578' '#1662#1585#1587#1606#1604
      ParentBiDiMode = False
    end
    object DBEdit9: TDBEdit
      Left = 32
      Top = 5
      Width = 90
      Height = 21
      BiDiMode = bdRightToLeft
      DataField = 'PersonelNo'
      DataSource = srcPeronalInfo
      ParentBiDiMode = False
      TabOrder = 0
    end
    object ComboPersonelState: TDBComboBox
      Tag = 3
      Left = 8
      Top = 30
      Width = 113
      Height = 21
      DataField = 'PersonelState'
      DataSource = srcPeronalInfo
      TabOrder = 1
      OnDblClick = ComboBirthPlaceDblClick
      OnDropDown = ComboBirthPlaceDropDown
      OnKeyPress = ComboBirthPlaceKeyPress
    end
  end
  inherited Panel3: TPanel
    Top = 161
    Width = 917
    Height = 351
    ExplicitTop = 161
    ExplicitWidth = 917
    ExplicitHeight = 351
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 913
      Height = 347
      ActivePage = ts1
      Align = alClient
      TabOrder = 0
      object ts1: TTabSheet
        Caption = #1605#1588#1582#1589#1575#1578
        DesignSize = (
          905
          319)
        object LblRecNo: TLabel
          Left = 5
          Top = 278
          Width = 44
          Height = 13
          Anchors = [akLeft, akBottom]
          BiDiMode = bdLeftToRight
          Caption = 'LblRecNo'
          ParentBiDiMode = False
          ExplicitTop = 242
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 905
          Height = 109
          Align = alTop
          TabOrder = 0
          DesignSize = (
            905
            109)
          object Label4: TLabel
            Left = 813
            Top = 14
            Width = 82
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1705#1588#1608#1585' '#1605#1581#1604' '#1578#1575#1576#1593#1740#1578
            ExplicitLeft = 821
          end
          object Label5: TLabel
            Left = 813
            Top = 36
            Width = 41
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1585#1610#1582' '#1578#1608#1604#1583
            ExplicitLeft = 778
          end
          object Label6: TLabel
            Left = 813
            Top = 61
            Width = 48
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1585#1610#1582' '#1589#1583#1608#1585
            ExplicitLeft = 778
          end
          object Label9: TLabel
            Left = 579
            Top = 14
            Width = 37
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1580#1606#1587#1610#1578
            ExplicitLeft = 544
          end
          object Label10: TLabel
            Left = 579
            Top = 36
            Width = 59
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1608#1590#1593#1610#1578' '#1578#1575#1607#1604
            ExplicitLeft = 544
          end
          object Label12: TLabel
            Left = 579
            Top = 61
            Width = 64
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1575#1601#1585#1575#1583#1578#1581#1578#8207#1578#1603#1601#1604
            ExplicitLeft = 544
          end
          object Label38: TLabel
            Left = 412
            Top = 81
            Width = 3
            Height = 13
          end
          object Label11: TLabel
            Left = 579
            Top = 85
            Width = 46
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1593#1583#1575#1583' '#1575#1608#1604#1575#1583
            ExplicitLeft = 544
          end
          object Label30: TLabel
            Left = 813
            Top = 85
            Width = 55
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1608#1590#1593#1610#1578#8207#1606#1592#1575#1605
            ExplicitLeft = 778
          end
          object BtnSupPepNumber: TSpeedButton
            Left = 406
            Top = 56
            Width = 22
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = BtnSupPepNumberClick
            ExplicitLeft = 371
          end
          object GroupBox2: TGroupBox
            Left = 183
            Top = 1
            Width = 182
            Height = 107
            Align = alLeft
            Caption = #1605#1581#1604' '#1578#1608#1604#1583
            TabOrder = 8
            DesignSize = (
              182
              107)
            object Label7: TLabel
              Left = 121
              Top = 35
              Width = 22
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1588#1607#1585
            end
            object Label53: TLabel
              Left = 121
              Top = 13
              Width = 28
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1575#1587#1578#1575#1606
            end
            object Label55: TLabel
              Left = 121
              Top = 60
              Width = 24
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1576#1582#1588
            end
            object Label57: TLabel
              Left = 121
              Top = 84
              Width = 39
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1583#1607#1587#1578#1575#1606
            end
            object ComboBirthPlace: TDBComboBox
              Tag = 1
              Left = 6
              Top = 33
              Width = 110
              Height = 21
              HelpType = htKeyword
              HelpKeyword = 'BirthProvince'
              Anchors = [akTop, akRight]
              DataField = 'BirthPlace'
              DataSource = srcPeronalInfo
              TabOrder = 0
              OnDblClick = ComboBirthPlaceDblClick
              OnDropDown = comboIssuedVillageDropDown
              OnExit = ComboBirthPlaceExit
              OnKeyPress = ComboBirthPlaceKeyPress
            end
            object comboBirthProvince: TDBComboBox
              Tag = 98
              Left = 6
              Top = 8
              Width = 110
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'BirthProvince'
              DataSource = srcPeronalInfo
              TabOrder = 1
              OnDblClick = ComboBirthPlaceDblClick
              OnDropDown = ComboBirthPlaceDropDown
              OnKeyPress = ComboBirthPlaceKeyPress
            end
            object comboIssuedSection: TDBComboBox
              Tag = 99
              Left = 6
              Top = 57
              Width = 110
              Height = 21
              HelpType = htKeyword
              HelpKeyword = 'BirthPlace'
              Anchors = [akTop, akRight]
              DataField = 'IssuedSection'
              DataSource = srcPeronalInfo
              TabOrder = 2
              OnDblClick = ComboBirthPlaceDblClick
              OnDropDown = comboIssuedVillageDropDown
              OnKeyPress = ComboBirthPlaceKeyPress
            end
            object comboIssuedVillage: TDBComboBox
              Tag = 100
              Left = 7
              Top = 80
              Width = 110
              Height = 21
              HelpType = htKeyword
              HelpKeyword = 'IssuedSection'
              Anchors = [akTop, akRight]
              DataField = 'IssuedVillage'
              DataSource = srcPeronalInfo
              TabOrder = 3
              OnDblClick = ComboBirthPlaceDblClick
              OnDropDown = comboIssuedVillageDropDown
              OnKeyPress = ComboBirthPlaceKeyPress
            end
          end
          object DBEdit4: TDBEdit
            Left = 658
            Top = 32
            Width = 152
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'BirthDate'
            DataSource = srcPeronalInfo
            TabOrder = 1
            OnExit = DBEdit4Exit
          end
          object DBEdit5: TDBEdit
            Left = 658
            Top = 57
            Width = 152
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'SodurDate'
            DataSource = srcPeronalInfo
            TabOrder = 2
          end
          object DBEdit8: TDBEdit
            Left = 430
            Top = 57
            Width = 149
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            DataField = 'SupPepNumber'
            DataSource = srcPeronalInfo
            ParentBiDiMode = False
            TabOrder = 6
          end
          object ComboNationalityCode: TDBComboBox
            Tag = 2
            Left = 658
            Top = 10
            Width = 152
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'NationalityCode'
            DataSource = srcPeronalInfo
            TabOrder = 0
            OnDblClick = ComboBirthPlaceDblClick
            OnDropDown = ComboBirthPlaceDropDown
            OnKeyPress = ComboBirthPlaceKeyPress
          end
          object Combosex: TDBComboBox
            Tag = 4
            Left = 406
            Top = 10
            Width = 173
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'sex'
            DataSource = srcPeronalInfo
            TabOrder = 4
            OnDropDown = ComboBirthPlaceDropDown
            OnKeyPress = ComboBirthPlaceKeyPress
          end
          object CombochildNumber: TDBComboBox
            Tag = 6
            Left = 406
            Top = 81
            Width = 173
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            DataField = 'childNumber'
            DataSource = srcPeronalInfo
            TabOrder = 7
            OnDblClick = ComboBirthPlaceDblClick
            OnDropDown = ComboBirthPlaceDropDown
            OnKeyPress = ComboBirthPlaceKeyPress
          end
          object Combomarriage: TDBComboBox
            Tag = 5
            Left = 406
            Top = 32
            Width = 173
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'marriage'
            DataSource = srcPeronalInfo
            TabOrder = 5
            OnDropDown = ComboBirthPlaceDropDown
            OnKeyPress = ComboBirthPlaceKeyPress
          end
          object ComboSoldierState: TDBComboBox
            Tag = 56
            Left = 658
            Top = 81
            Width = 152
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            DataField = 'SoldierState'
            DataSource = srcPeronalInfo
            TabOrder = 3
            OnDblClick = ComboBirthPlaceDblClick
            OnDropDown = ComboBirthPlaceDropDown
            OnKeyPress = ComboBirthPlaceKeyPress
          end
          object GroupBox1: TGroupBox
            Left = 1
            Top = 1
            Width = 182
            Height = 107
            Align = alLeft
            Caption = #1605#1581#1604' '#1589#1583#1608#1585
            TabOrder = 9
            DesignSize = (
              182
              107)
            object Label8: TLabel
              Left = 118
              Top = 35
              Width = 22
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1588#1607#1585
            end
            object Label54: TLabel
              Left = 118
              Top = 13
              Width = 28
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1575#1587#1578#1575#1606
            end
            object Label56: TLabel
              Left = 118
              Top = 60
              Width = 24
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1576#1582#1588
            end
            object Label58: TLabel
              Left = 118
              Top = 84
              Width = 39
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1583#1607#1587#1578#1575#1606
            end
            object ComboSodurPlace: TDBComboBox
              Tag = 1
              Left = 3
              Top = 32
              Width = 110
              Height = 21
              HelpType = htKeyword
              HelpKeyword = 'IssuedProvince'
              Anchors = [akTop, akRight]
              DataField = 'SodurPlace'
              DataSource = srcPeronalInfo
              TabOrder = 0
              OnDblClick = ComboBirthPlaceDblClick
              OnDropDown = comboIssuedVillageDropDown
              OnKeyPress = ComboBirthPlaceKeyPress
            end
            object comboIssuedProvince: TDBComboBox
              Tag = 98
              Left = 3
              Top = 8
              Width = 110
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'IssuedProvince'
              DataSource = srcPeronalInfo
              TabOrder = 1
              OnDblClick = ComboBirthPlaceDblClick
              OnDropDown = ComboBirthPlaceDropDown
              OnKeyPress = ComboBirthPlaceKeyPress
            end
            object comboIssuedSection1: TDBComboBox
              Tag = 99
              Left = 3
              Top = 56
              Width = 110
              Height = 21
              HelpType = htKeyword
              HelpKeyword = 'SodurPlace'
              Anchors = [akTop, akRight]
              DataField = 'IssuedSection'
              DataSource = srcPeronalInfo
              TabOrder = 2
              OnDblClick = ComboBirthPlaceDblClick
              OnDropDown = comboIssuedVillageDropDown
              OnKeyPress = ComboBirthPlaceKeyPress
            end
            object comboIssuedVillage1: TDBComboBox
              Tag = 100
              Left = 3
              Top = 80
              Width = 110
              Height = 21
              HelpType = htKeyword
              HelpKeyword = 'IssuedSection'
              Anchors = [akTop, akRight]
              DataField = 'IssuedVillage'
              DataSource = srcPeronalInfo
              TabOrder = 3
              OnDblClick = ComboBirthPlaceDblClick
              OnDropDown = comboIssuedVillageDropDown
              OnKeyPress = ComboBirthPlaceKeyPress
            end
          end
        end
        object pnlBank: TPanel
          Left = 0
          Top = 109
          Width = 905
          Height = 52
          Align = alTop
          TabOrder = 1
          DesignSize = (
            905
            52)
          object Label16: TLabel
            Left = 579
            Top = 9
            Width = 41
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1588#1593#1576#1607
            ExplicitLeft = 544
          end
          object Label15: TLabel
            Left = 813
            Top = 9
            Width = 34
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1606#1575#1605' '#1576#1575#1606#1603
            ExplicitLeft = 778
          end
          object Label17: TLabel
            Left = 198
            Top = 33
            Width = 93
            Height = 13
            Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1610
          end
          object Label18: TLabel
            Left = 198
            Top = 7
            Width = 78
            Height = 13
            Caption = #1606#1608#1593' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1610
          end
          object Label40: TLabel
            Left = 579
            Top = 33
            Width = 75
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1588' '#1603#1575#1585#1578' '#1575#1593#1578#1576#1575#1585#1610
            ExplicitLeft = 544
          end
          object Label44: TLabel
            Left = 813
            Top = 33
            Width = 43
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1606#1575#1605' '#1588#1593#1576#1607
            ExplicitLeft = 778
          end
          object sbtnPersonelAccounts: TSpeedButton
            Left = 6
            Top = 28
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = sbtnPersonelAccountsClick
          end
          object ComboBankCode: TDBComboBox
            Tag = 7
            Left = 658
            Top = 5
            Width = 152
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'BankCode'
            DataSource = srcPeronalInfo
            TabOrder = 0
            OnDblClick = ComboBirthPlaceDblClick
            OnDropDown = ComboBirthPlaceDropDown
            OnKeyPress = ComboBirthPlaceKeyPress
          end
          object DBEdit10: TDBEdit
            Left = 406
            Top = 5
            Width = 173
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'BranchCode'
            DataSource = srcPeronalInfo
            TabOrder = 2
          end
          object DBEdit11: TDBEdit
            Left = 33
            Top = 28
            Width = 163
            Height = 21
            BiDiMode = bdLeftToRight
            DataField = 'AccountNumber'
            DataSource = srcPeronalInfo
            ParentBiDiMode = False
            TabOrder = 5
          end
          object ComboAccBankType: TDBComboBox
            Tag = 26
            Left = 6
            Top = 5
            Width = 190
            Height = 21
            DataField = 'AccBankType'
            DataSource = srcPeronalInfo
            TabOrder = 4
            OnDblClick = ComboBirthPlaceDblClick
            OnDropDown = ComboBirthPlaceDropDown
            OnKeyPress = ComboBirthPlaceKeyPress
          end
          object DBEdit21: TDBEdit
            Left = 406
            Top = 29
            Width = 173
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            DataField = 'CreditCardNo'
            DataSource = srcPeronalInfo
            ParentBiDiMode = False
            TabOrder = 3
          end
          object ComboBranchInfo: TDBComboBox
            Tag = 84
            Left = 658
            Top = 29
            Width = 152
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'BranchInfo'
            DataSource = srcPeronalInfo
            TabOrder = 1
            OnDblClick = ComboBirthPlaceDblClick
            OnDropDown = ComboBirthPlaceDropDown
            OnKeyPress = ComboBirthPlaceKeyPress
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 161
          Width = 905
          Height = 79
          Hint = 
            '            '#1578#1575#1585#1610#1582' '#1588#1585#1608#1593' '#1576#1603#1575#1585' '#1548#1578#1575#1585#1610#1582' '#1578#1585#1603' '#1603#1575#1585' '#1548' '#1606#1608#1593' '#1576#1610#1605#1607' '#1608' '#1606#1608#1593' '#1605#1575#1604#1610 +
            #1575#1578#13#10'            '#1576#1585' '#1575#1587#1575#1587' '#1575#1591#1604#1575#1593#1575#1578' " '#1575#1581#1603#1575#1605' '#1603#1575#1585#1711#1586#1610#1606#1610' " '#1605#1581#1575#1587#1576#1607' '#1605#1610' '#1588#1608#1583 +
            #13#10' '#1608' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1593#1585#1601#1610' '#1662#1585#1587#1606#1604' '#1601#1602#1591' '#1576#1585#1575#1610' '#1587#1607#1608#1604#1578' '#1579#1576#1578' '#1575#1581#1603#1575#1605' '#1603#1575#1585#1576#1585#1583' '#1583#1575#1585#1583'.'#8207#13 +
            #10'                                   '#1604#1591#1601#1575' '#1583#1602#1578' '#1601#1585#1605#1575#1574#1610#1583'.'#8207#13#10
          Align = alTop
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          DesignSize = (
            905
            79)
          object Label26: TLabel
            Left = 813
            Top = 7
            Width = 65
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1585#1610#1582' '#1575#1587#1578#1582#1583#1575#1605
            ExplicitLeft = 778
          end
          object Label28: TLabel
            Left = 579
            Top = 33
            Width = 53
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1588#1605#1575#1585#1607' '#1576#1610#1605#1607
            ExplicitLeft = 544
          end
          object Label29: TLabel
            Left = 579
            Top = 7
            Width = 38
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1606#1608#1593' '#1576#1610#1605#1607
            ExplicitLeft = 544
          end
          object Label33: TLabel
            Left = 813
            Top = 33
            Width = 83
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1585#1610#1582' '#1582#1575#1578#1605#1607' '#1602#1585#1575#1585#1583#1575#1583
            Font.Charset = DEFAULT_CHARSET
            Font.Color = cl3DDkShadow
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 778
          end
          object Label36: TLabel
            Left = 192
            Top = 58
            Width = 97
            Height = 13
            Caption = #1584#1582#1610#1585#1607' '#1587#1606#1608#1575#1578' '#1575#1606#1578#1602#1575#1604#1610
          end
          object Label31: TLabel
            Left = 65
            Top = 58
            Width = 61
            Height = 13
            Caption = #1583#1585#1589#1583' '#1580#1575#1606#1576#1575#1586#1610
          end
          object Label46: TLabel
            Left = 579
            Top = 58
            Width = 56
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1603#1583#1588#1594#1604#8207#1576#1610#1605#1607
            FocusControl = DBEdit23
            ExplicitLeft = 544
          end
          object BtnDSW_JOB: TSpeedButton
            Left = 406
            Top = 53
            Width = 22
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = BtnDSW_JOBClick
            ExplicitLeft = 371
          end
          object Label47: TLabel
            Left = 813
            Top = 58
            Width = 66
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1605#1606#1591#1602#1607' '#1605#1575#1604#1610#1575#1578#1610
            ExplicitLeft = 778
          end
          object edtemployDate: TDBEdit
            Left = 658
            Top = 3
            Width = 152
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'employDate'
            DataSource = srcPeronalInfo
            TabOrder = 0
          end
          object DBEdit17: TDBEdit
            Left = 658
            Top = 29
            Width = 152
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'finishEmployDate'
            DataSource = srcPeronalInfo
            TabOrder = 1
          end
          object edtInsuranceNumber: TDBEdit
            Left = 406
            Top = 29
            Width = 173
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'InsuranceNumber'
            DataSource = srcPeronalInfo
            TabOrder = 3
          end
          object DBEdit12: TDBEdit
            Left = 136
            Top = 54
            Width = 54
            Height = 21
            DataField = 'StoreDayTime'
            DataSource = srcPeronalInfo
            TabOrder = 7
          end
          object pnlTax: TPanel
            Left = 1
            Top = 1
            Width = 364
            Height = 29
            Align = alCustom
            BevelOuter = bvNone
            TabOrder = 5
            object Label32: TLabel
              AlignWithMargins = True
              Left = 263
              Top = 3
              Width = 98
              Height = 23
              Align = alRight
              Caption = #1605#1576#1606#1575#1610' '#1605#1581#1575#1587#1576#1607' '#1605#1575#1604#1610#1575#1578
              ExplicitHeight = 13
            end
            object ComboTaxCalculationType: TDBComboBox
              Tag = 21
              Left = 0
              Top = 0
              Width = 260
              Height = 21
              Align = alClient
              DataField = 'TaxCalculationType'
              DataSource = srcPeronalInfo
              TabOrder = 0
              OnDblClick = ComboBirthPlaceDblClick
              OnDropDown = ComboBirthPlaceDropDown
              OnKeyPress = ComboBirthPlaceKeyPress
            end
          end
          object ChkTax: TDBCheckBox
            Left = 136
            Top = 31
            Width = 110
            Height = 17
            BiDiMode = bdLeftToRight
            Caption = #1605#1588#1605#1608#1604' '#1581#1602' '#1587#1606#1608#1575#1578' '
            DataField = 'StoreDayTimeActive'
            DataSource = srcPeronalInfo
            ParentBiDiMode = False
            TabOrder = 6
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object edtPercentWound: TDBEdit
            Left = 7
            Top = 54
            Width = 54
            Height = 21
            DataField = 'PercentWound'
            DataSource = srcPeronalInfo
            TabOrder = 9
          end
          object DBCheckBox1: TDBCheckBox
            Left = 9
            Top = 31
            Width = 90
            Height = 17
            BiDiMode = bdLeftToRight
            Caption = #1605#1588#1575#1594#1604' '#1582#1575#1589
            DataField = 'SpecialJob'
            DataSource = srcPeronalInfo
            ParentBiDiMode = False
            TabOrder = 8
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBEdit23: TDBEdit
            Left = 430
            Top = 54
            Width = 149
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            DataField = 'DSW_JOB'
            DataSource = srcPeronalInfo
            ParentBiDiMode = False
            TabOrder = 4
          end
          object ComboTaxZone: TDBComboBox
            Tag = 20
            Left = 658
            Top = 54
            Width = 152
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'TaxZone'
            DataSource = srcPeronalInfo
            TabOrder = 2
            OnDblClick = ComboBirthPlaceDblClick
            OnDropDown = ComboBirthPlaceDropDown
            OnKeyPress = ComboBirthPlaceKeyPress
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 406
            Top = 3
            Width = 173
            Height = 21
            Anchors = [akTop, akRight]
            DataField = '_insurancename'
            DataSource = srcPeronalInfo
            TabOrder = 10
          end
        end
        object BtnAccInterdicts: TBitBtn
          Left = 710
          Top = 242
          Width = 91
          Height = 25
          Action = ActLanguage2
          Anchors = [akTop, akRight]
          Caption = #1575#1591#1604#1575#1593#1575#1578' '#1586#1576#1575#1606' '#1601#1585#1593#1610
          TabOrder = 3
        end
        object Button1: TButton
          Left = 805
          Top = 242
          Width = 96
          Height = 25
          Action = actAcc
          Anchors = [akTop, akRight]
          TabOrder = 4
        end
      end
      object ts2: TTabSheet
        Caption = #1578#1581#1589#1610#1604#1575#1578
        ImageIndex = 1
        object Panel9: TPanel
          Left = 531
          Top = 0
          Width = 374
          Height = 319
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object Label48: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 10
            Width = 368
            Height = 13
            Margins.Top = 10
            Align = alTop
            Caption = #1606#1608#1593' '#1578#1581#1589#1610#1604#1575#1578
            ExplicitLeft = 313
            ExplicitWidth = 58
          end
          object Label49: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 57
            Width = 368
            Height = 13
            Margins.Top = 10
            Align = alTop
            Caption = #1605#1602#1591#1593#8207#1578#1581#1589#1610#1604#1610
            ExplicitLeft = 307
            ExplicitWidth = 64
          end
          object Label19: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 104
            Width = 368
            Height = 13
            Margins.Top = 10
            Align = alTop
            Caption = #1605#1583#1585#1603#8207#1578#1581#1589#1610#1604#1610
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 309
            ExplicitWidth = 62
          end
          object Label50: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 151
            Width = 368
            Height = 13
            Margins.Top = 10
            Align = alTop
            Caption = #1662#1575#1610#1607#8207#1578#1581#1589#1610#1604#1610
            ExplicitLeft = 318
            ExplicitWidth = 53
          end
          object Label22: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 198
            Width = 368
            Height = 13
            Margins.Top = 10
            Align = alTop
            Caption = #1585#1588#1578#1607' '#1578#1581#1589#1610#1604#1610
            ExplicitLeft = 305
            ExplicitWidth = 66
          end
          object comboEducationGrade: TDBComboBox
            Tag = 109
            Left = 0
            Top = 167
            Width = 374
            Height = 21
            Align = alTop
            DataField = 'EducationGrade'
            DataSource = srcPeronalInfo
            TabOrder = 3
            OnDblClick = ComboBirthPlaceDblClick
            OnDropDown = ComboBirthPlaceDropDown
            OnKeyPress = ComboBirthPlaceKeyPress
          end
          object comboEducationType: TDBComboBox
            Tag = 108
            Left = 0
            Top = 26
            Width = 374
            Height = 21
            Align = alTop
            DataField = 'EducationType'
            DataSource = srcPeronalInfo
            TabOrder = 0
            OnDblClick = ComboBirthPlaceDblClick
            OnDropDown = ComboBirthPlaceDropDown
            OnKeyPress = ComboBirthPlaceKeyPress
          end
          object comboEducationDegree: TDBComboBox
            Tag = 101
            Left = 0
            Top = 73
            Width = 374
            Height = 21
            Align = alTop
            DataField = 'EducationDegree'
            DataSource = srcPeronalInfo
            TabOrder = 1
            OnDblClick = ComboBirthPlaceDblClick
            OnDropDown = ComboBirthPlaceDropDown
            OnKeyPress = ComboBirthPlaceKeyPress
          end
          object ComboLicenceCode: TDBComboBox
            Tag = 8
            Left = 0
            Top = 120
            Width = 374
            Height = 21
            HelpType = htKeyword
            HelpKeyword = 'EducationDegree'
            Align = alTop
            DataField = 'LicenceCode'
            DataSource = srcPeronalInfo
            TabOrder = 2
            OnDblClick = ComboBirthPlaceDblClick
            OnDropDown = comboIssuedVillageDropDown
            OnKeyPress = ComboBirthPlaceKeyPress
          end
          object CombostudyField: TDBComboBox
            Tag = 10
            Left = 0
            Top = 214
            Width = 374
            Height = 21
            HelpType = htKeyword
            HelpKeyword = 'EducationGrade'
            Align = alTop
            DataField = 'studyField'
            DataSource = srcPeronalInfo
            TabOrder = 4
            OnDblClick = ComboBirthPlaceDblClick
            OnDropDown = comboIssuedVillageDropDown
            OnKeyPress = ComboBirthPlaceKeyPress
          end
        end
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 365
          Height = 319
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label20: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 10
            Width = 359
            Height = 13
            Margins.Top = 10
            Align = alTop
            Caption = #1606#1575#1605' '#1583#1575#1606#1588#1711#1575#1607
            ExplicitLeft = 309
            ExplicitWidth = 53
          end
          object Label24: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 57
            Width = 359
            Height = 13
            Margins.Top = 10
            Align = alTop
            Caption = #1605#1581#1604' '#1578#1581#1589#1610#1604
            ExplicitLeft = 307
            ExplicitWidth = 55
          end
          object Label21: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 104
            Width = 359
            Height = 13
            Margins.Top = 10
            Align = alTop
            Caption = #1578#1575#1585#1610#1582' '#1575#1582#1584' '#1605#1583#1585#1603
            ExplicitLeft = 295
            ExplicitWidth = 67
          end
          object Label23: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 151
            Width = 359
            Height = 13
            Margins.Top = 10
            Align = alTop
            Caption = #1605#1593#1583#1604
            ExplicitLeft = 337
            ExplicitWidth = 25
          end
          object ComboUnivercityCode: TDBComboBox
            Tag = 9
            Left = 0
            Top = 26
            Width = 365
            Height = 21
            Align = alTop
            DataField = 'UnivercityCode'
            DataSource = srcPeronalInfo
            TabOrder = 0
            OnDblClick = ComboBirthPlaceDblClick
            OnDropDown = ComboBirthPlaceDropDown
            OnKeyPress = ComboBirthPlaceKeyPress
          end
          object ComboStudyCityCode: TDBComboBox
            Tag = 1
            Left = 0
            Top = 73
            Width = 365
            Height = 21
            Align = alTop
            DataField = 'StudyCityCode'
            DataSource = srcPeronalInfo
            TabOrder = 1
            OnDblClick = ComboBirthPlaceDblClick
            OnDropDown = ComboBirthPlaceDropDown
            OnKeyPress = ComboBirthPlaceKeyPress
          end
          object DBEdit13: TDBEdit
            Left = 0
            Top = 120
            Width = 365
            Height = 21
            Align = alTop
            DataField = 'StudyFinishedate'
            DataSource = srcPeronalInfo
            TabOrder = 2
          end
          object DBEdit14: TDBEdit
            Left = 0
            Top = 167
            Width = 365
            Height = 21
            Align = alTop
            DataField = 'StudyAverage'
            DataSource = srcPeronalInfo
            TabOrder = 3
          end
        end
      end
      object ts3: TTabSheet
        Caption = #1587#1575#1610#1585
        ImageIndex = 2
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 531
          Height = 319
          Align = alClient
          TabOrder = 0
          object DBGrid2: TDBGrid
            Tag = 111
            Left = 1
            Top = 1
            Width = 529
            Height = 288
            Align = alClient
            Color = clCream
            DataSource = srcPersonelTypeInfo
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnEditButtonClick = DBGrid2EditButtonClick
            OnEnter = DBGrid2Enter
            OnKeyPress = DBGrid2KeyPress
            Columns = <
              item
                Expanded = False
                FieldName = '_FormType'
                Width = 188
                Visible = True
              end
              item
                ButtonStyle = cbsEllipsis
                Expanded = False
                FieldName = '_FormInfoID'
                Width = 100
                Visible = True
              end>
          end
          object pnlBtnDetail: TPanel
            Left = 1
            Top = 289
            Width = 529
            Height = 29
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object pnlNewDetail: TPanel
              Left = 299
              Top = 0
              Width = 230
              Height = 29
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 1
              DesignSize = (
                230
                29)
              object BitBtn14: TBitBtn
                Left = 155
                Top = 4
                Width = 75
                Height = 25
                Action = DataSetInsert2
                Anchors = [akTop, akRight]
                Caption = #1580#1583#1610#1583
                TabOrder = 2
              end
              object BitBtn15: TBitBtn
                Left = 77
                Top = 4
                Width = 75
                Height = 25
                Action = DataSetEdit2
                Anchors = [akTop, akRight]
                Caption = #1608#1610#1585#1575#1610#1588
                TabOrder = 1
              end
              object BitBtn16: TBitBtn
                Left = 0
                Top = 4
                Width = 75
                Height = 25
                Action = DataSetDelete2
                Anchors = [akTop, akRight]
                Caption = #1581#1584#1601
                TabOrder = 0
              end
            end
            object pnlOkDetail: TPanel
              Left = 144
              Top = 0
              Width = 155
              Height = 29
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 0
              DesignSize = (
                155
                29)
              object BitBtn17: TBitBtn
                Left = 77
                Top = 4
                Width = 75
                Height = 25
                Action = DataSetPost2
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
              object BitBtn18: TBitBtn
                Left = 0
                Top = 4
                Width = 75
                Height = 25
                Action = DataSetCancel2
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
          end
        end
        object Panel5: TPanel
          Left = 531
          Top = 0
          Width = 374
          Height = 319
          Align = alRight
          TabOrder = 1
          object Label59: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 33
            Width = 366
            Height = 13
            Margins.Top = 9
            Margins.Bottom = 0
            Align = alTop
            Caption = #1606#1608#1593' '#1581#1603#1605'/'#1575#1587#1578#1582#1583#1575#1605
            ExplicitLeft = 286
            ExplicitWidth = 84
          end
          object Label41: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 76
            Width = 366
            Height = 13
            Margins.Top = 9
            Margins.Bottom = 0
            Align = alTop
            Caption = #1606#1608#1593' '#1605#1587#1603#1606
            ExplicitLeft = 320
            ExplicitWidth = 50
          end
          object Label45: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 119
            Width = 366
            Height = 13
            Margins.Top = 9
            Margins.Bottom = 0
            Align = alTop
            Caption = #1606#1608#1593' '#1605#1585#1582#1589#1610' '#1575#1587#1578#1581#1575#1602#1610
            ExplicitLeft = 267
            ExplicitWidth = 103
          end
          object Label42: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 162
            Width = 366
            Height = 13
            Margins.Top = 9
            Margins.Bottom = 0
            Align = alTop
            Caption = #1608#1590#1593#1610#1578' '#1705#1575#1585#1605#1606#1583'/'#1608#1610#1688#1607
            ExplicitLeft = 283
            ExplicitWidth = 87
          end
          object Label51: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 205
            Width = 366
            Height = 13
            Margins.Top = 9
            Margins.Bottom = 0
            Align = alTop
            Caption = #1588#1605#1575#1585#1607' '#1603#1575#1585#1578' '#1587#1575#1593#1578
            FocusControl = dbedtTimeCardNumber
            ExplicitLeft = 282
            ExplicitWidth = 88
          end
          object Label52: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 248
            Width = 366
            Height = 13
            Margins.Top = 9
            Margins.Bottom = 0
            Align = alTop
            Caption = #1578#1593#1583#1575#1583' '#1583#1601#1578#1585#1670#1607' '#1583#1585#1605#1575#1606#1610
            FocusControl = dbedtNumberOfMedicalOffice
            ExplicitLeft = 277
            ExplicitWidth = 93
          end
          object dbchkMartyrChild: TDBCheckBox
            AlignWithMargins = True
            Left = 291
            Top = 4
            Width = 79
            Height = 17
            Margins.Left = 290
            Align = alTop
            Alignment = taLeftJustify
            BiDiMode = bdLeftToRight
            Caption = #1601#1585#1586#1606#1583' '#1588#1607#1740#1583
            DataField = 'MartyrChild'
            DataSource = srcPeronalInfo
            ParentBiDiMode = False
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object ComboEmployTypeID: TDBComboBox
            Left = 1
            Top = 46
            Width = 372
            Height = 21
            Align = alTop
            DataField = 'EmployTypeID'
            DataSource = srcPeronalInfo
            TabOrder = 1
          end
          object ComboMaskanKind: TDBComboBox
            Tag = 74
            Left = 1
            Top = 89
            Width = 372
            Height = 21
            Align = alTop
            DataField = 'MaskanKind'
            DataSource = srcPeronalInfo
            TabOrder = 2
            OnDblClick = ComboBirthPlaceDblClick
            OnDropDown = ComboBirthPlaceDropDown
            OnKeyPress = ComboBirthPlaceKeyPress
          end
          object ComboOffTime: TDBComboBox
            Tag = 85
            Left = 1
            Top = 132
            Width = 372
            Height = 21
            Align = alTop
            DataField = 'OffTime'
            DataSource = srcPeronalInfo
            TabOrder = 3
            OnDblClick = ComboBirthPlaceDblClick
            OnDropDown = ComboBirthPlaceDropDown
            OnKeyPress = ComboBirthPlaceKeyPress
          end
          object ComboSpecialState: TDBComboBox
            Tag = 75
            Left = 1
            Top = 175
            Width = 372
            Height = 21
            Align = alTop
            DataField = 'SpecialState'
            DataSource = srcPeronalInfo
            TabOrder = 4
            OnDblClick = ComboBirthPlaceDblClick
            OnDropDown = ComboBirthPlaceDropDown
            OnKeyPress = ComboBirthPlaceKeyPress
          end
          object dbedtTimeCardNumber: TDBEdit
            Left = 1
            Top = 218
            Width = 372
            Height = 21
            Align = alTop
            DataField = 'TimeCardNumber'
            DataSource = srcPeronalInfo
            TabOrder = 5
          end
          object dbedtNumberOfMedicalOffice: TDBEdit
            Left = 1
            Top = 261
            Width = 372
            Height = 21
            Align = alTop
            DataField = 'NumberOfMedicalOffice'
            DataSource = srcPeronalInfo
            TabOrder = 6
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = #1587#1575#1610#1585' '#1575#1591#1604#1575#1593#1575#1578
        ImageIndex = 3
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 905
          Height = 319
          Align = alClient
          TabOrder = 0
          DesignSize = (
            905
            319)
          object Label35: TLabel
            Left = 284
            Top = 3
            Width = 80
            Height = 13
            Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610':'
          end
          object Label34: TLabel
            Left = 793
            Top = 169
            Width = 32
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1570#1583#1585#1587' :'
          end
          object Label37: TLabel
            Left = 793
            Top = 59
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1578#1604#1601#1606
            ExplicitLeft = 801
          end
          object Label43: TLabel
            Left = 793
            Top = 96
            Width = 44
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1662#1587#1578#1610
            ExplicitLeft = 801
          end
          object Label60: TLabel
            Left = 534
            Top = 23
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1607#1605#1585#1575#1607
            ExplicitLeft = 542
          end
          object Label61: TLabel
            Left = 534
            Top = 59
            Width = 24
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Email'
            ExplicitLeft = 542
          end
          object Label62: TLabel
            Left = 534
            Top = 96
            Width = 84
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Telegram Chat ID'
            ExplicitLeft = 542
          end
          object Label68: TLabel
            Left = 793
            Top = 23
            Width = 82
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1705#1588#1608#1585' '#1605#1581#1604' '#1586#1606#1583#1711#1740
            ExplicitLeft = 801
          end
          object Label69: TLabel
            Left = 541
            Top = 132
            Width = 53
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1576#1604#1607' Chat ID'
          end
          object DBMemo2: TDBMemo
            Tag = 111
            Left = 5
            Top = 19
            Width = 361
            Height = 286
            DataField = 'Note_L1'
            DataSource = srcPeronalInfo
            TabOrder = 7
          end
          object dbmmoaddress_L1: TDBMemo
            Left = 378
            Top = 169
            Width = 410
            Height = 135
            Anchors = [akLeft, akTop, akRight]
            DataField = 'address_L1'
            DataSource = srcPeronalInfo
            TabOrder = 6
          end
          object edtTel: TDBEdit
            Left = 636
            Top = 55
            Width = 152
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'Tel'
            DataSource = srcPeronalInfo
            TabOrder = 0
          end
          object edtPostalCode: TDBEdit
            Left = 636
            Top = 92
            Width = 152
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            DataField = 'PostalCode'
            DataSource = srcPeronalInfo
            ParentBiDiMode = False
            TabOrder = 2
          end
          object edtMobile: TDBEdit
            Left = 370
            Top = 19
            Width = 158
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'Mobile'
            DataSource = srcPeronalInfo
            TabOrder = 1
          end
          object edtEmail: TDBEdit
            Left = 370
            Top = 55
            Width = 158
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'Email'
            DataSource = srcPeronalInfo
            TabOrder = 3
          end
          object edtTelegramChatID: TDBEdit
            Left = 370
            Top = 92
            Width = 158
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'TelegramChatID'
            DataSource = srcPeronalInfo
            TabOrder = 4
          end
          object ComboLocationCode: TDBComboBox
            Tag = 2
            Left = 636
            Top = 19
            Width = 152
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'LocationCode'
            DataSource = srcPeronalInfo
            TabOrder = 8
            OnDblClick = ComboBirthPlaceDblClick
            OnDropDown = ComboBirthPlaceDropDown
            OnKeyPress = ComboBirthPlaceKeyPress
          end
          object edtBaleChatID: TDBEdit
            Left = 372
            Top = 128
            Width = 158
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'BaleChatID'
            DataSource = srcPeronalInfo
            TabOrder = 5
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1606#1575#1605' '#1604#1575#1578#1740#1606
        ImageIndex = 4
        object Label63: TLabel
          Left = 30
          Top = 31
          Width = 43
          Height = 13
          Caption = 'name_L2'
          FocusControl = DBEdit6
        end
        object Label64: TLabel
          Left = 12
          Top = 62
          Width = 61
          Height = 13
          Caption = 'lastName_L2'
          FocusControl = DBEdit15
        end
        object Label65: TLabel
          Left = -1
          Top = 94
          Width = 74
          Height = 13
          Caption = 'fatherName_L2'
          FocusControl = DBEdit16
        end
        object Label66: TLabel
          Left = 15
          Top = 125
          Width = 55
          Height = 13
          Caption = 'address_L2'
          FocusControl = DBEdit18
        end
        object Label67: TLabel
          Left = 26
          Top = 156
          Width = 40
          Height = 13
          Caption = 'Note_L2'
          FocusControl = DBEdit19
        end
        object DBEdit6: TDBEdit
          Left = 79
          Top = 27
          Width = 329
          Height = 21
          DataField = 'name_L2'
          DataSource = srcPeronalInfo
          TabOrder = 0
        end
        object DBEdit15: TDBEdit
          Left = 79
          Top = 58
          Width = 654
          Height = 21
          DataField = 'lastName_L2'
          DataSource = srcPeronalInfo
          TabOrder = 1
        end
        object DBEdit16: TDBEdit
          Left = 79
          Top = 90
          Width = 329
          Height = 21
          DataField = 'fatherName_L2'
          DataSource = srcPeronalInfo
          TabOrder = 2
        end
        object DBEdit18: TDBEdit
          Left = 79
          Top = 121
          Width = 797
          Height = 21
          DataField = 'address_L2'
          DataSource = srcPeronalInfo
          TabOrder = 3
        end
        object DBEdit19: TDBEdit
          Left = 79
          Top = 152
          Width = 797
          Height = 21
          DataField = 'Note_L2'
          DataSource = srcPeronalInfo
          TabOrder = 4
        end
      end
    end
  end
  object pnl1: TPanel [3]
    Left = 0
    Top = 55
    Width = 917
    Height = 106
    Align = alTop
    TabOrder = 1
    DesignSize = (
      917
      106)
    object Label1: TLabel
      Left = 799
      Top = 46
      Width = 13
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1575#1605
      ExplicitLeft = 656
    end
    object Label2: TLabel
      Left = 799
      Top = 76
      Width = 58
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      ExplicitLeft = 656
    end
    object Label3: TLabel
      Left = 316
      Top = 8
      Width = 32
      Height = 13
      Caption = #1606#1575#1605'  '#1662#1583#1585
    end
    object Label13: TLabel
      Left = 316
      Top = 32
      Width = 35
      Height = 13
      Caption = #1603#1583' '#1605#1604#1610
    end
    object Label14: TLabel
      Left = 316
      Top = 81
      Width = 81
      Height = 13
      Caption = #1588#1605#1575#1585#1607' '#1588#1606#1575#1587#1606#1575#1605#1607
    end
    object Label39: TLabel
      Left = 799
      Top = 17
      Width = 110
      Height = 13
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = #1588#1605#1575#1585#1607#8207#1605#1587#1578#1582#1583#1605'/'#1593#1590#1608#1740#1578
      FocusControl = DBEdit20
      ParentBiDiMode = False
    end
    object Label78: TLabel
      Left = 316
      Top = 57
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1705#1583' '#1605#1604#1740' '#1575#1578#1576#1575#1593
    end
    object DBEdit1: TDBEdit
      Left = 642
      Top = 42
      Width = 152
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'name_L1'
      DataSource = srcPeronalInfo
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 642
      Top = 72
      Width = 152
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'lastName_L1'
      DataSource = srcPeronalInfo
      TabOrder = 2
    end
    object Panel7: TPanel
      Left = 1
      Top = 1
      Width = 87
      Height = 104
      Align = alLeft
      BevelWidth = 3
      Caption = #1575#1590#1575#1601#1607' '#1603#1585#1583#1606' '#1593#1603#1587
      TabOrder = 6
      object Image1: TImage
        Left = 3
        Top = 3
        Width = 81
        Height = 98
        Align = alClient
        Stretch = True
        OnDblClick = actScanExecute
        ExplicitLeft = -9
        ExplicitWidth = 96
        ExplicitHeight = 79
      end
    end
    object DBEdit3: TDBEdit
      Left = 162
      Top = 4
      Width = 152
      Height = 21
      DataField = 'fatherName_L1'
      DataSource = srcPeronalInfo
      TabOrder = 3
    end
    object edtNationalID: TDBEdit
      Left = 162
      Top = 28
      Width = 152
      Height = 21
      DataField = 'NationalID'
      DataSource = srcPeronalInfo
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 162
      Top = 77
      Width = 152
      Height = 21
      DataField = 'IDNumber'
      DataSource = srcPeronalInfo
      TabOrder = 5
    end
    object DBEdit20: TDBEdit
      Left = 642
      Top = 13
      Width = 152
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'EmployID'
      DataSource = srcPeronalInfo
      TabOrder = 0
    end
    object edtCitizenCode: TDBEdit
      Left = 162
      Top = 53
      Width = 152
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'CitizenCode'
      DataSource = srcPeronalInfo
      TabOrder = 7
    end
  end
  inherited ActionList: TActionList
    Left = 632
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcPeronalInfo
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcPeronalInfo
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcPeronalInfo
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcPeronalInfo
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcPeronalInfo
    end
    object actSearch_PeronalInfo: TAction
      Caption = '...'
      OnExecute = actSearch_PeronalInfoExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      Visible = False
      OnExecute = actPrintExecute
    end
    object actSendtoExcel: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      OnExecute = actSendtoExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
    end
    object actAcc: TAction
      Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
      OnExecute = actAccExecute
    end
    object ActLanguage2: TAction
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1586#1576#1575#1606' '#1601#1585#1593#1610
      OnExecute = ActLanguage2Execute
    end
    object actScan: TAction
      Caption = #1575#1587#1603#1606' '#1578#1589#1608#1610#1585
      OnExecute = actScanExecute
    end
    object DataSetInsert2: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = ' '
      ShortCut = 113
      DataSource = srcPersonelTypeInfo
    end
    object DataSetEdit2: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      ShortCut = 115
      DataSource = srcPersonelTypeInfo
    end
    object DataSetPost2: TDataSetPost
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      Hint = ' '
      ShortCut = 119
      DataSource = srcPersonelTypeInfo
    end
    object DataSetCancel2: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = ' '
      ShortCut = 27
      DataSource = srcPersonelTypeInfo
    end
    object DataSetDelete2: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcPersonelTypeInfo
    end
  end
  inherited ImageList1: TImageList
    Left = 840
    Top = 313
  end
  object srcPeronalInfo: TDataSource
    AutoEdit = False
    DataSet = qryPeronalInfo
    OnStateChange = srcPeronalInfoStateChange
    Left = 224
    Top = 7
  end
  object qryPeronalInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    BeforeInsert = qryPeronalInfoBeforeInsert
    AfterInsert = qryPeronalInfoAfterInsert
    BeforeEdit = qryPeronalInfoBeforeEdit
    BeforePost = qryPeronalInfoBeforePost
    AfterPost = qryPeronalInfoAfterPost
    BeforeDelete = qryPeronalInfoBeforeDelete
    AfterDelete = qryPeronalInfoAfterDelete
    AfterScroll = qryPeronalInfoAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT  * FROM Pay.PersonelInfo '
      'ORDER BY PersonelNo')
    Left = 432
    Top = 63
    object qryPeronalInfoPersonelNo: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNo'
      OnChange = qryPeronalInfoPersonelNoChange
    end
    object qryPeronalInfoname_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605
      FieldName = 'name_L1'
      Required = True
      Size = 25
    end
    object qryPeronalInfoname_L2: TStringField
      FieldName = 'name_L2'
      Size = 25
    end
    object qryPeronalInfolastName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      FieldName = 'lastName_L1'
      Required = True
      Size = 50
    end
    object qryPeronalInfolastName_L2: TStringField
      Tag = 3
      FieldName = 'lastName_L2'
      Size = 50
    end
    object qryPeronalInfofatherName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1583#1585
      FieldName = 'fatherName_L1'
      Size = 25
    end
    object qryPeronalInfofatherName_L2: TStringField
      Tag = 3
      FieldName = 'fatherName_L2'
      Size = 25
    end
    object qryPeronalInfoNationalityCode: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1575#1576#1593#1610#1578
      FieldName = 'NationalityCode'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoLocationCode: TIntegerField
      Tag = 3
      FieldName = 'LocationCode'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoBirthDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1578#1608#1604#1583
      FieldName = 'BirthDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryPeronalInfoSodurDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1589#1583#1608#1585
      FieldName = 'SodurDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryPeronalInfoBirthPlace: TIntegerField
      Tag = 3
      DisplayLabel = #1605#1581#1604' '#1578#1608#1604#1583
      FieldName = 'BirthPlace'
      Required = True
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoSodurPlace: TIntegerField
      Tag = 3
      DisplayLabel = #1605#1581#1604' '#1589#1583#1608#1585
      FieldName = 'SodurPlace'
      Required = True
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoNationalID: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1604#1610
      FieldName = 'NationalID'
      Size = 12
    end
    object qryPeronalInfoIDNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1588#1606#1575#1587#1606#1575#1605#1607
      FieldName = 'IDNumber'
      Required = True
      Size = 12
    end
    object qryPeronalInfosex: TIntegerField
      Tag = 3
      DisplayLabel = #1580#1606#1587#1610#1578
      FieldName = 'sex'
      Required = True
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfomarriage: TIntegerField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578' '#1578#1575#1607#1604
      FieldName = 'marriage'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfochildNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583' '#1575#1608#1604#1575#1583
      FieldName = 'childNumber'
      Required = True
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoLicenceCode: TIntegerField
      Tag = 3
      DisplayLabel = #1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610
      FieldName = 'LicenceCode'
      Required = True
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfostudyField: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1588#1578#1607' '#1578#1581#1589#1610#1604#1610
      FieldName = 'studyField'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoStudyCityCode: TIntegerField
      Tag = 3
      FieldName = 'StudyCityCode'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoUnivercityCode: TIntegerField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1583#1575#1606#1588#1711#1575#1607
      FieldName = 'UnivercityCode'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoStudyAverage: TFloatField
      Tag = 3
      FieldName = 'StudyAverage'
    end
    object qryPeronalInfoemployDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1587#1578#1582#1583#1575#1605
      FieldName = 'employDate'
      Required = True
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryPeronalInfofinishEmployDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1582#1575#1578#1605#1607' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'finishEmployDate'
      OnChange = qryPeronalInfofinishEmployDateChange
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryPeronalInfoBankCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1576#1575#1606#1603
      FieldName = 'BankCode'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoBranchCode: TStringField
      Tag = 3
      FieldName = 'BranchCode'
      Size = 12
    end
    object qryPeronalInfoAccountNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1610
      FieldName = 'AccountNumber'
      Size = 30
    end
    object qryPeronalInfoinsuranceID: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1576#1610#1605#1607
      FieldName = 'insuranceID'
      Required = True
    end
    object qryPeronalInfoInsuranceNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1576#1610#1605#1607
      FieldName = 'InsuranceNumber'
      Required = True
      Size = 18
    end
    object qryPeronalInfoTaxZone: TIntegerField
      Tag = 3
      DisplayLabel = #1605#1606#1591#1602#1607' '#1605#1575#1604#1610#1575#1578#1610
      FieldName = 'TaxZone'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoCoTax: TBCDField
      Tag = 3
      DisplayLabel = #1590#1585#1610#1576' '#1579#1575#1576#1578' '#1605#1575#1604#1610#1575#1578#1610
      FieldName = 'CoTax'
      Precision = 10
      Size = 0
    end
    object qryPeronalInfoaddress_L1: TStringField
      Tag = 3
      DisplayLabel = #1570#1583#1585#1587
      FieldName = 'address_L1'
      Size = 255
    end
    object qryPeronalInfoaddress_L2: TStringField
      Tag = 3
      FieldName = 'address_L2'
      Size = 255
    end
    object qryPeronalInfoNote_L1: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'Note_L1'
      Size = 500
    end
    object qryPeronalInfoNote_L2: TStringField
      Tag = 3
      FieldName = 'Note_L2'
      Size = 500
    end
    object qryPeronalInfoTel: TStringField
      Tag = 3
      DisplayLabel = #1578#1604#1601#1606
      FieldName = 'Tel'
      Size = 15
    end
    object qryPeronalInfoStoreDayTime: TWordField
      Tag = 3
      DisplayLabel = #1584#1582#1610#1585#1607' '#1575#1606#1578#1602#1575#1604#1610' '#1587#1606#1608#1575#1578
      FieldName = 'StoreDayTime'
    end
    object qryPeronalInfoemployDateM: TDateTimeField
      Tag = 3
      FieldName = 'employDateM'
    end
    object qryPeronalInfoStoreDayTimeActive: TBooleanField
      Tag = 3
      FieldName = 'StoreDayTimeActive'
    end
    object qryPeronalInfoEmployID: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1605#1587#1578#1582#1583#1605
      FieldName = 'EmployID'
      Size = 12
    end
    object qryPeronalInfoAccTopicCode: TIntegerField
      Tag = 3
      DisplayLabel = 'TopicCode'
      FieldName = 'AccTopicCode'
    end
    object qryPeronalInfoAccDetailCode: TIntegerField
      Tag = 3
      DisplayLabel = 'DetailCode'
      FieldName = 'AccDetailCode'
    end
    object qryPeronalInfoAccCTopicCode: TIntegerField
      Tag = 3
      DisplayLabel = 'CTopicCode'
      FieldName = 'AccCTopicCode'
    end
    object qryPeronalInfoAccCTopicCode2: TIntegerField
      Tag = 3
      DisplayLabel = 'CTopicCode2'
      FieldName = 'AccCTopicCode2'
    end
    object qryPeronalInfoPercentWound: TFloatField
      Tag = 3
      DisplayLabel = #1583#1585#1589#1583' '#1580#1575#1606#1576#1575#1586#1610
      FieldName = 'PercentWound'
    end
    object qryPeronalInfoSoldierState: TIntegerField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578' '#1606#1592#1575#1605' '#1608#1592#1610#1601#1607
      FieldName = 'SoldierState'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoSpecialJob: TWordField
      Tag = 3
      FieldName = 'SpecialJob'
    end
    object qryPeronalInfoAccCTopicCode3: TIntegerField
      Tag = 3
      FieldName = 'AccCTopicCode3'
    end
    object qryPeronalInfoCreditCardNo: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1603#1575#1585#1578' '#1575#1593#1578#1576#1575#1585#1610
      FieldName = 'CreditCardNo'
      Size = 25
    end
    object qryPeronalInfoMaskanKind: TIntegerField
      Tag = 3
      FieldName = 'MaskanKind'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoSpecialState: TIntegerField
      Tag = 3
      FieldName = 'SpecialState'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoPostalCode: TStringField
      Tag = 3
      DisplayLabel = #1705#1583#1662#1587#1578#1740
      FieldName = 'PostalCode'
      Size = 15
    end
    object qryPeronalInfoBranchInfo: TIntegerField
      Tag = 3
      FieldName = 'BranchInfo'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoOffTime: TIntegerField
      Tag = 3
      FieldName = 'OffTime'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoDSW_JOB: TStringField
      Tag = 3
      FieldName = 'DSW_JOB'
      FixedChar = True
      Size = 6
    end
    object qryPeronalInfoEducationType: TIntegerField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1578#1581#1589#1610#1604#1575#1578
      FieldName = 'EducationType'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoEducationDegree: TIntegerField
      Tag = 3
      DisplayLabel = #1605#1602#1591#1593#8207#1578#1581#1589#1610#1604#1610
      FieldName = 'EducationDegree'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoEducationGrade: TIntegerField
      Tag = 3
      DisplayLabel = #1662#1575#1610#1607#8207#1578#1581#1589#1610#1604#1610
      FieldName = 'EducationGrade'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoTimeCardNumber: TStringField
      Tag = 3
      FieldName = 'TimeCardNumber'
      Size = 15
    end
    object qryPeronalInfoNumberOfMedicalOffice: TIntegerField
      Tag = 3
      FieldName = 'NumberOfMedicalOffice'
    end
    object qryPeronalInfoIssuedProvince: TIntegerField
      Tag = 3
      FieldName = 'IssuedProvince'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoIssuedSection: TIntegerField
      Tag = 3
      FieldName = 'IssuedSection'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoIssuedVillage: TIntegerField
      Tag = 3
      FieldName = 'IssuedVillage'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoBirthProvince: TIntegerField
      Tag = 3
      FieldName = 'BirthProvince'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoBirthSection: TIntegerField
      Tag = 3
      FieldName = 'BirthSection'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoBirthVillage: TIntegerField
      Tag = 3
      FieldName = 'BirthVillage'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoEmployTypeID: TIntegerField
      Tag = 3
      FieldName = 'EmployTypeID'
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoMobile: TStringField
      Tag = 3
      DisplayLabel = #1607#1605#1585#1575#1607
      FieldName = 'Mobile'
    end
    object qryPeronalInfoEmail: TWideStringField
      Tag = 3
      DisplayLabel = #1575#1740#1605#1740#1604
      FieldName = 'Email'
      Size = 100
    end
    object qryPeronalInfo_NationalityCode: TIntegerField
      FieldKind = fkLookup
      FieldName = '_NationalityCode'
      LookupDataSet = qryFormsInfo
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoID'
      KeyFields = 'NationalityCode'
      Lookup = True
    end
    object qryPeronalInfo_insurancename: TStringField
      FieldKind = fkLookup
      FieldName = '_insurancename'
      LookupDataSet = qryInsuranceCONSTinfo
      LookupKeyFields = 'insuranceNo'
      LookupResultField = 'insurancename'
      KeyFields = 'insuranceID'
      Size = 200
      Lookup = True
    end
    object qryPeronalInfo_Employeeshare: TIntegerField
      FieldKind = fkLookup
      FieldName = '_Employeeshare'
      LookupDataSet = qryInsuranceCONSTinfo
      LookupKeyFields = 'insuranceNo'
      LookupResultField = 'Employeeshare'
      KeyFields = 'insuranceID'
      Lookup = True
    end
    object qryPeronalInfoMartyrChild: TBooleanField
      Tag = 3
      FieldName = 'MartyrChild'
    end
    object qryPeronalInfoTelegramChatID: TStringField
      Tag = 3
      DisplayLabel = 'Telegram Chat ID'
      FieldName = 'TelegramChatID'
      FixedChar = True
      Size = 30
    end
    object qryPeronalInfoStudyFinishedate: TStringField
      Tag = 3
      FieldName = 'StudyFinishedate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryPeronalInfoPersonelState: TIntegerField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578' '#1662#1585#1587#1606#1604
      FieldName = 'PersonelState'
      Required = True
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoAccBankType: TIntegerField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1610
      FieldName = 'AccBankType'
      Required = True
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoTaxCalculationType: TIntegerField
      Tag = 3
      DisplayLabel = #1605#1576#1606#1575#1610' '#1605#1581#1575#1587#1576#1607' '#1605#1575#1604#1610#1575#1578
      FieldName = 'TaxCalculationType'
      Required = True
      OnGetText = qryPeronalInfoALLGetText
      OnSetText = qryPeronalInfoALLSetText
    end
    object qryPeronalInfoSupPepNumber: TWordField
      Tag = 3
      DisplayLabel = #1575#1601#1585#1575#1583' '#1578#1581#1578' '#1578#1603#1601#1604
      FieldName = 'SupPepNumber'
    end
    object qryPeronalInfoCitizenCode: TStringField
      Tag = 3
      DisplayLabel = #1705#1583' '#1605#1604#1740' '#1575#1578#1576#1575#1593
      FieldName = 'CitizenCode'
    end
    object qryPeronalInfoBaleChatID: TStringField
      Tag = 3
      DisplayLabel = 'Bale Chat ID'
      FieldName = 'BaleChatID'
      FixedChar = True
      Size = 30
    end
  end
  object qryFormsInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT        FormInfoID, InfoName_L1, InfoName_L2, InfoID'
      'FROM Pay.FormsInfo')
    Left = 432
    Top = 128
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcPeronalInfo
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeline1'
    Left = 96
    Top = 296
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
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
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
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
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
    Left = 256
    Top = 304
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'lastName_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 121444
        mmTop = 1058
        mmWidth = 17198
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
  object qryInsuranceCONSTinfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT InsuranceCONSTinfo.insuranceNo '
      
        '   ,Ltrim(insuranceNo)+InsuranceCONSTinfo.insurancename AS insur' +
        'ancename'
      '   , ISNULL(InsuranceCONSTinfo.Employeeshare, 0) '
      '   + ISNULL(InsuranceCONSTinfo.Employershare, 0) '
      '   + ISNULL(InsuranceCONSTinfo.InactionInsuranceShare, 0) '
      
        '   + ISNULL(InsuranceCONSTinfo.HardShipPercent, 0) AS Employeesh' +
        'are'
      '   FROM Pay.InsuranceCONSTinfo INNER JOIN Pay.FormsInfo '
      '   ON InsuranceCONSTinfo.FormInfoID = FormsInfo.FormInfoID'
      ''
      '')
    Left = 568
    Top = 112
  end
  object PopupMenu1: TPopupMenu
    Left = 210
    Top = 358
    object N1: TMenuItem
      Action = actScan
    end
    object N2: TMenuItem
      Caption = #1575#1590#1575#1601#1607' '#1603#1585#1583#1606' '#1575#1586' '#1601#1575#1610#1604
    end
  end
  object qryInitQry: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  *  FROM Pay.FormTypes'
      'where (FormType= 125 )')
    Left = 484
    Top = 8
  end
  object qryPersonelTypeInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterInsert = qryPersonelTypeInfoAfterInsert
    BeforePost = qryPersonelTypeInfoBeforePost
    AfterPost = qryPersonelTypeInfoAfterPost
    AfterScroll = qryPersonelTypeInfoAfterScroll
    Parameters = <
      item
        Name = 'PersonelNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     PersonelNo, FormType, FormInfoID'
      'FROM Pay.PersonelTypeInfo'
      'WHERE     (PersonelNo = :PersonelNo)')
    Left = 268
    Top = 398
    object qryPersonelTypeInfoPersonelNo: TIntegerField
      FieldName = 'PersonelNo'
    end
    object qryPersonelTypeInfoFormType: TSmallintField
      FieldName = 'FormType'
      OnChange = qryPersonelTypeInfoFormTypeChange
    end
    object qryPersonelTypeInfoFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryPersonelTypeInfo_FormType: TStringField
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldKind = fkLookup
      FieldName = '_FormType'
      LookupDataSet = qryFormTypes
      LookupKeyFields = 'FormType'
      LookupResultField = 'FormCaption_L1'
      KeyFields = 'FormType'
      Size = 200
      Lookup = True
    end
    object qryPersonelTypeInfo_FormInfoID: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldKind = fkLookup
      FieldName = '_FormInfoID'
      LookupDataSet = qry_FormsInfo
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'FormInfoID'
      Size = 200
      Lookup = True
    end
  end
  object srcPersonelTypeInfo: TDataSource
    DataSet = qryPersonelTypeInfo
    OnStateChange = srcPersonelTypeInfoStateChange
    Left = 84
    Top = 200
  end
  object qryFormTypes: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     FormType, FormCaption_L1'
      'FROM Pay.FormTypes'
      'WHERE     (PersonelTypeInfoRow > 0)'
      'ORDER BY PersonelTypeInfoRow ')
    Left = 661
    Top = 407
  end
  object qry_FormsInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT FormInfoID, InfoName_L1 FROM Pay.FormsInfo'
      '')
    Left = 381
    Top = 199
  end
  object plnPersonelTypeInfo: TppDBPipeline
    DataSource = srcPersonelTypeInfo
    OpenDataSource = False
    UserName = 'plnPersonelTypeInfo'
    Left = 256
    Top = 232
    MasterDataPipelineName = 'ppDBPipeline1'
    object plnPersonelTypeInfoppField1: TppField
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plnPersonelTypeInfoppField2: TppField
      FieldAlias = 'FormType'
      FieldName = 'FormType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plnPersonelTypeInfoppField3: TppField
      FieldAlias = 'FormInfoID'
      FieldName = 'FormInfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plnPersonelTypeInfoppField4: TppField
      FieldAlias = '_FormType'
      FieldName = '_FormType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plnPersonelTypeInfoppField5: TppField
      FieldAlias = '_FormInfoID'
      FieldName = '_FormInfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
  end
  object cmd1: TADOCommand
    CommandText = 
      'Declare @FormInfoID int'#13#10'Declare @FormType int'#13#10'SET     @FormTyp' +
      'e=16'#13#10#13#10'UPDATE Pay.FormTypes'#13#10'SET    PersonelTypeInfoRow = 1'#13#10'WH' +
      'ERE  (FormType = @FormType) and (PersonelTypeInfoRow = 0)'#13#10#13#10'SEL' +
      'ECT @FormInfoID=FormInfoID'#13#10'FROM Pay.FormsInfo'#13#10'WHERE  (FormType' +
      ' = @FormType) AND (InfoID = 1)'#13#10#13#10#13#10'INSERT INTO Pay.PersonelType' +
      'Info(PersonelNo, FormType, FormInfoID)'#13#10'SELECT distinct Personel' +
      'Info.PersonelNo, FormsInfo.FormType, @FormInfoID'#13#10'FROM Pay.Forms' +
      'Info CROSS JOIN'#13#10'       Pay.PersonelInfo'#13#10'WHERE  (FormsInfo.Form' +
      'Type = @FormType) AND (FormsInfo.InfoID = 1)'#13#10'         AND Perso' +
      'nelInfo.PersonelNo NOT IN ( SELECT  PersonelNo'#13#10'                ' +
      '                                FROM Pay.PersonelTypeInfo'#13#10'     ' +
      '                                            WHERE (FormType = @F' +
      'ormType) )'#9#9#9#9#9#9#9#9#9#9#9'     '#13#10#13#10#13#10#13#10#13#10#13#10'INSERT INTO Pay.PersonelTy' +
      'peInfo'#13#10'                         (PersonelNo, FormType, FormInfo' +
      'ID)'#13#10'SELECT        derivedtbl_1.PersonelNo, derivedtbl_1.FormTyp' +
      'e, derivedtbl_1.FormInfoID'#13#10'FROM            (SELECT        Perso' +
      'nelNo, 132 AS FormType,'#13#10'                                       ' +
      '                 (SELECT        FormInfoID'#13#10'                    ' +
      '                                       FROM Pay.FormsInfo'#13#10'     ' +
      '                                                      WHERE     ' +
      '   (FormType = 132) AND (InfoID = 1)) AS FormInfoID'#13#10'           ' +
      '                FROM            Pay.PersonelInfo) AS derivedtbl_' +
      '1 LEFT OUTER JOIN'#13#10'                         Pay.PersonelTypeInfo' +
      ' AS PersonelTypeInfo_1 ON derivedtbl_1.PersonelNo = PersonelType' +
      'Info_1.PersonelNo AND derivedtbl_1.FormType = PersonelTypeInfo_1' +
      '.FormType'#13#10'WHERE        (PersonelTypeInfo_1.FormInfoID IS NULL)'#13 +
      #10#13#10'INSERT INTO Pay.PersonelTypeInfo'#13#10'                         (P' +
      'ersonelNo, FormType, FormInfoID)'#13#10'SELECT        derivedtbl_1.Per' +
      'sonelNo, derivedtbl_1.FormType, derivedtbl_1.FormInfoID'#13#10'FROM   ' +
      '         (SELECT        PersonelNo, 133 AS FormType,'#13#10'          ' +
      '                                              (SELECT        For' +
      'mInfoID'#13#10'                                                       ' +
      '    FROM Pay.FormsInfo'#13#10'                                        ' +
      '                   WHERE        (FormType = 133) AND (InfoID = 1' +
      ')) AS FormInfoID'#13#10'                           FROM Pay.PersonelIn' +
      'fo) AS derivedtbl_1 LEFT OUTER JOIN'#13#10'                         Pa' +
      'y.PersonelTypeInfo AS PersonelTypeInfo_1 ON derivedtbl_1.Persone' +
      'lNo = PersonelTypeInfo_1.PersonelNo AND derivedtbl_1.FormType = ' +
      'PersonelTypeInfo_1.FormType'#13#10'WHERE        (PersonelTypeInfo_1.Fo' +
      'rmInfoID IS NULL)'
    Connection = DmF.adcsalary
    Parameters = <>
    Left = 512
    Top = 71
  end
end
