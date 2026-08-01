inherited jobsF: TjobsF
  Caption = #1588#1606#1575#1587#1606#1575#1605#1607' '#1588#1594#1604
  ClientHeight = 541
  ClientWidth = 778
  ExplicitWidth = 794
  ExplicitHeight = 580
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 500
    Width = 778
    ExplicitTop = 501
    object newPanel: TPanel
      Left = 548
      Top = 1
      Width = 241
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        241
        39)
      object BitBtn3: TBitBtn
        Left = 163
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 86
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 9
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
      Left = 302
      Top = 1
      Width = 234
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 314
      DesignSize = (
        234
        39)
      object BitBtn8: TBitBtn
        Left = 157
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
      object BitBtn18: TBitBtn
        Left = 81
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
      object BitBtn7: TBitBtn
        Left = 4
        Top = 8
        Width = 75
        Height = 25
        Hint = ' '
        Anchors = [akTop, akRight]
        Caption = #1582#1608#1575#1606#1583#1606' Excel'
        TabOrder = 2
        Visible = False
      end
    end
    object DBNavigator1: TDBNavigator
      AlignWithMargins = True
      Left = 85
      Top = 4
      Width = 214
      Height = 33
      DataSource = srcjobs
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
      TabOrder = 3
      ExplicitWidth = 226
    end
  end
  inherited Panel2: TPanel
    Width = 778
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
  end
  inherited Panel3: TPanel
    Width = 778
    Height = 447
    ExplicitHeight = 448
    object DockTabSet1: TDockTabSet
      Left = 164
      Top = 164
      Width = 185
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Tabs.Strings = (
        #1605#1588#1582#1589#1575#1578' '#1588#1594#1604
        #1578#1593#1585#1740#1601' '#1588#1594#1604)
      TabIndex = 0
    end
    object TabSet1: TTabSet
      Left = 208
      Top = 288
      Width = 185
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Tabs.Strings = (
        #1605#1588#1582#1589#1575#1578' '#1588#1594#1604
        #1578#1593#1585#1740#1601' '#1588#1594#1604)
      TabIndex = 0
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 772
      Height = 120
      Align = alTop
      Caption = #1605#1588#1582#1589#1575#1578' '#1588#1594#1604
      TabOrder = 2
      ExplicitWidth = 780
      DesignSize = (
        768
        120)
      object lbl1: TLabel
        Left = 675
        Top = 19
        Width = 39
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1705#1583' '#1588#1594#1604
        FocusControl = dbedtjobCode
        ExplicitLeft = 683
      end
      object lbl2: TLabel
        Left = 385
        Top = 19
        Width = 54
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1608#1575#1606' '#1588#1594#1604
        FocusControl = dbedt2
        ExplicitLeft = 393
      end
      object LblPerson1: TLabel
        Left = 675
        Top = 46
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1585#1588#1578#1607' '#1588#1594#1604#1740
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 683
      end
      object btnJobLocation: TSpeedButton
        Left = 587
        Top = 41
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = btnJobLocationClick
        ExplicitLeft = 595
      end
      object Label1: TLabel
        Left = 675
        Top = 70
        Width = 71
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1580#1575#1740#1711#1575#1607' '#1587#1575#1586#1605#1575#1606#1740
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 683
      end
      object btnOrganPos: TSpeedButton
        Left = 586
        Top = 65
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = btnOrganPosClick
        ExplicitLeft = 594
      end
      object Label2: TLabel
        Left = 675
        Top = 97
        Width = 69
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1662#1587#1578' '#1587#1575#1586#1605#1575#1606#1740
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 683
      end
      object btnOrganizational: TSpeedButton
        Left = 586
        Top = 93
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = btnOrganizationalClick
        ExplicitLeft = 594
      end
      object btnjobCode: TSpeedButton
        Left = 513
        Top = 15
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = btnjobCodeClick
        ExplicitLeft = 521
      end
      object btnGrade: TSpeedButton
        Left = 217
        Top = 65
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = btnGradeClick
        ExplicitLeft = 225
      end
      object btnRank: TSpeedButton
        Left = 217
        Top = 93
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = btnRankClick
        ExplicitLeft = 225
      end
      object Label3: TLabel
        Left = 307
        Top = 45
        Width = 20
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1711#1585#1608#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 315
      end
      object Label4: TLabel
        Left = 307
        Top = 69
        Width = 17
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1585#1578#1576#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 315
      end
      object Label5: TLabel
        Left = 307
        Top = 96
        Width = 15
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1662#1575#1740#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 315
      end
      object btnGroup: TSpeedButton
        Left = 217
        Top = 41
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = btnGroupClick
        ExplicitLeft = 225
      end
      object dbedtjobCode: TDBEdit
        Left = 539
        Top = 16
        Width = 134
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'jobCode'
        DataSource = srcjobs
        TabOrder = 0
        ExplicitLeft = 547
      end
      object dbedt2: TDBEdit
        Left = 24
        Top = 16
        Width = 356
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'jobName'
        DataSource = srcjobs
        TabOrder = 1
        ExplicitWidth = 364
      end
      object dbedtJobLocation: TDBEdit
        Left = 611
        Top = 43
        Width = 62
        Height = 19
        Anchors = [akTop, akRight]
        Ctl3D = False
        DataField = 'JobLocation'
        DataSource = srcjobs
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
        OnKeyDown = dbedtJobLocationKeyDown
        ExplicitLeft = 619
      end
      object dbedt_JobLocation: TDBEdit
        Left = 386
        Top = 43
        Width = 197
        Height = 19
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Ctl3D = False
        DataField = '_JobLocation'
        DataSource = srcjobs
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
        ExplicitLeft = 394
      end
      object dbedtOrganPos: TDBEdit
        Left = 611
        Top = 67
        Width = 62
        Height = 19
        Anchors = [akTop, akRight]
        Ctl3D = False
        DataField = 'OrganPos'
        DataSource = srcjobs
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
        OnKeyDown = dbedtJobLocationKeyDown
        ExplicitLeft = 619
      end
      object dbedt_OrganPos: TDBEdit
        Left = 386
        Top = 67
        Width = 197
        Height = 19
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Ctl3D = False
        DataField = '_OrganPos'
        DataSource = srcjobs
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
        ExplicitLeft = 394
      end
      object dbedtOrganizational: TDBEdit
        Left = 611
        Top = 94
        Width = 62
        Height = 19
        Anchors = [akTop, akRight]
        Ctl3D = False
        DataField = 'Organizational'
        DataSource = srcjobs
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 6
        OnKeyDown = dbedtJobLocationKeyDown
        ExplicitLeft = 619
      end
      object dbedt_Organizational: TDBEdit
        Left = 386
        Top = 94
        Width = 197
        Height = 19
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Ctl3D = False
        DataField = '_Organizational'
        DataSource = srcjobs
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 7
        ExplicitLeft = 394
      end
      object edtGroupCode: TDBEdit
        Left = 242
        Top = 43
        Width = 62
        Height = 19
        Anchors = [akTop, akRight]
        Ctl3D = False
        DataField = 'GroupCode'
        DataSource = srcjobs
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 8
        OnKeyDown = dbedtJobLocationKeyDown
        ExplicitLeft = 250
      end
      object edt_GroupID: TDBEdit
        Left = 17
        Top = 43
        Width = 197
        Height = 19
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Ctl3D = False
        DataField = '_GroupName'
        DataSource = srcjobs
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 9
        ExplicitLeft = 25
      end
      object edt_GradeName: TDBEdit
        Left = 17
        Top = 65
        Width = 197
        Height = 19
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Ctl3D = False
        DataField = '_GradeName'
        DataSource = srcjobs
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 10
        ExplicitLeft = 25
      end
      object edtGradeID: TDBEdit
        Left = 242
        Top = 67
        Width = 62
        Height = 19
        Anchors = [akTop, akRight]
        Ctl3D = False
        DataField = 'GradeID'
        DataSource = srcjobs
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 11
        OnKeyDown = dbedtJobLocationKeyDown
        ExplicitLeft = 250
      end
      object edtRankID: TDBEdit
        Left = 242
        Top = 93
        Width = 62
        Height = 19
        Anchors = [akTop, akRight]
        Ctl3D = False
        DataField = 'RankID'
        DataSource = srcjobs
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 12
        OnKeyDown = dbedtJobLocationKeyDown
        ExplicitLeft = 250
      end
      object edt_RankName: TDBEdit
        Left = 17
        Top = 93
        Width = 197
        Height = 19
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Ctl3D = False
        DataField = '_RankName'
        DataSource = srcjobs
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 13
        ExplicitLeft = 25
      end
    end
    object GroupBox3: TGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 131
      Width = 768
      Height = 73
      Align = alTop
      Caption = #1578#1593#1585#1740#1601' '#1588#1594#1604
      TabOrder = 3
      ExplicitWidth = 780
      object DBMemo1: TDBMemo
        Tag = 111
        Left = 2
        Top = 15
        Width = 776
        Height = 56
        Align = alClient
        Color = clCream
        DataField = 'JobDefinition'
        DataSource = srcjobs
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object GroupBox4: TGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 210
      Width = 768
      Height = 130
      Align = alTop
      Caption = ' '#1588#1585#1575#1740#1591' '#1575#1581#1585#1575#1586' '
      TabOrder = 4
      ExplicitWidth = 780
      object dbgrdjobsTerms: TDBGrid
        Tag = 111
        Left = 2
        Top = 15
        Width = 776
        Height = 113
        Align = alClient
        Color = clCream
        DataSource = srcjobsTerms
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnKeyPress = dbgrdjobsTermsKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'LicenceCode'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StudyField'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ExperienceYear'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ExperienceMonth'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Duration'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MinPoints'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MaxPoints'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PercentExtra'
            Width = 118
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JobLevel'
            PickList.Strings = (
              #1583#1575#1585#1583
              #1606#1583#1575#1585#1583)
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TestCondition'
            PickList.Strings = (
              #1583#1575#1585#1583
              #1606#1583#1575#1585#1583)
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Note'
            Width = 56
            Visible = True
          end>
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 343
      Width = 774
      Height = 102
      Align = alClient
      TabOrder = 5
      ExplicitWidth = 786
      ExplicitHeight = 103
      object DBGrid1: TDBGrid
        Tag = 111
        Left = 505
        Top = 1
        Width = 272
        Height = 101
        Align = alRight
        Color = clCream
        DataSource = srcJobPromissory
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnKeyPress = dbgrdjobsTermsKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'PromRunDate'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PromAmount'
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 498
        Height = 95
        Align = alClient
        Caption = ' '#1605#1607#1575#1585#1578#1607#1575#1548#1578#1608#1575#1606#1575#1740#1740' '#1607#1575' '#1608' '#1608#1592#1575#1740#1601' '
        TabOrder = 1
        ExplicitWidth = 506
        object tbcjobsItems: TTabControl
          Left = 2
          Top = 15
          Width = 494
          Height = 78
          Align = alClient
          TabOrder = 0
          Tabs.Strings = (
            #1605#1607#1575#1585#1578#1607#1575' '#1608' '#1578#1608#1575#1606#1575#1740#1740' '#1607#1575#1740' '#1604#1575#1586#1605
            #1588#1585#1581' '#1608#1592#1575#1740#1601' '#1575#1583#1608#1575#1585#1740
            #1588#1585#1581' '#1608#1592#1575#1740#1601' '#1580#1575#1585#1740)
          TabIndex = 0
          OnChange = tbcjobsItemsChange
          object dbgrdjobsItems: TDBGrid
            Tag = 111
            Left = 4
            Top = 24
            Width = 482
            Height = 49
            Align = alClient
            Color = clCream
            DataSource = srcjobsItems
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnKeyPress = dbgrdjobsTermsKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'Descriptions'
                Width = 424
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited ActionList: TActionList
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcjobs
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcjobs
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcjobs
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcjobs
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcjobs
    end
  end
  object qryjobs: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterInsert = qryjobsAfterInsert
    AfterPost = qryjobsAfterPost
    AfterScroll = qryjobsAfterScroll
    Parameters = <>
    SQL.Strings = (
      'Select * From Pay.jobs')
    Left = 376
    Top = 16
    object qryjobsjobCode: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583' '#1588#1594#1604
      FieldName = 'jobCode'
    end
    object qryjobsjobName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1588#1594#1604
      FieldName = 'jobName'
      Size = 100
    end
    object qryjobsJobLocation: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583' '#1585#1588#1578#1607
      FieldName = 'JobLocation'
    end
    object qryjobs_JobLocation: TStringField
      FieldKind = fkLookup
      FieldName = '_JobLocation'
      LookupDataSet = qryJobLocation19
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'JobLocation'
      Size = 200
      Lookup = True
    end
    object qryjobsOrganPos: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583' '#1580#1575#1740#1711#1575#1607' '#1587#1575#1586#1605#1575#1606#1740
      FieldName = 'OrganPos'
    end
    object qryjobs_OrganPos: TStringField
      FieldKind = fkLookup
      FieldName = '_OrganPos'
      LookupDataSet = qryOrganPos103
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'OrganPos'
      Lookup = True
    end
    object qryjobsOrganizational: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583' '#1662#1587#1578' '#1587#1575#1586#1605#1575#1606#1740
      FieldName = 'Organizational'
    end
    object qryjobs_Organizational: TStringField
      FieldKind = fkLookup
      FieldName = '_Organizational'
      LookupDataSet = qryOrganizational13
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'Organizational'
      Size = 200
      Lookup = True
    end
    object qryjobsGroupCode: TIntegerField
      Tag = 3
      DisplayLabel = #1711#1585#1608#1607
      FieldName = 'GroupCode'
    end
    object qryjobsJobDefinition: TStringField
      Tag = 3
      DisplayLabel = #1578#1593#1585#1740#1601' '#1588#1594#1604
      FieldName = 'JobDefinition'
      Size = 500
    end
    object qryjobsCreationDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1740#1582' '#1575#1740#1580#1575#1583
      FieldName = 'CreationDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryjobsGradeID: TIntegerField
      DisplayLabel = #1585#1578#1576#1607
      FieldName = 'GradeID'
    end
    object qryjobsRankID: TIntegerField
      DisplayLabel = #1662#1575#1740#1607
      FieldName = 'RankID'
    end
    object qryjobs_GradeName: TStringField
      DisplayLabel = #1606#1575#1605' '#1585#1578#1576#1607
      FieldKind = fkLookup
      FieldName = '_GradeName'
      LookupDataSet = qryFormsInfo
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'GradeID'
      Size = 50
      Lookup = True
    end
    object qryjobs_RankName: TStringField
      DisplayLabel = #1606#1575#1605' '#1662#1575#1740#1607
      FieldKind = fkLookup
      FieldName = '_RankName'
      LookupDataSet = qryFormsInfo
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'RankID'
      Size = 50
      Lookup = True
    end
    object strngfld: TStringField
      FieldKind = fkLookup
      FieldName = '_GroupName'
      LookupDataSet = qryFormsInfo
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'GroupCode'
      Size = 50
      Lookup = True
    end
  end
  object qryJobLocation19: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     FormInfoID, InfoID, InfoName_L1'
      'FROM Pay.FormsInfo'
      'WHERE     (FormType = 18)')
    Left = 64
    Top = 128
  end
  object qryOrganPos103: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT FormInfoID,InfoID, InfoName_L1'
      'FROM Pay.FormsInfo'
      'WHERE     (FormType = 103)')
    Left = 64
    Top = 192
  end
  object qryOrganizational13: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT FormInfoID,InfoID, InfoName_L1'
      'FROM Pay.FormsInfo'
      'WHERE     (FormType = 13)')
    Left = 176
    Top = 320
  end
  object qryCategory18: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT FormInfoID,InfoID, InfoName_L1'
      'FROM Pay.FormsInfo'
      'WHERE     (FormType = 18)')
    Left = 168
    Top = 16
  end
  object qryjobsItems: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryjobsTermsBeforeEdit
    AfterInsert = qryjobsItemsAfterInsert
    BeforeEdit = qryjobsTermsBeforeEdit
    AfterEdit = qryjobsTermsAfterEdit
    BeforePost = qryjobsItemsBeforePost
    Parameters = <
      item
        Name = 'jobCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'InfoKind'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'Select * From '
      'Pay.jobsItems '
      'Where jobCode = :jobCode'
      'and InfoKind = :InfoKind')
    Left = 288
    Top = 312
    object qryjobsItemsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryjobsItemsjobCode: TIntegerField
      FieldName = 'jobCode'
    end
    object qryjobsItemsDescriptions: TStringField
      FieldName = 'Descriptions'
      Size = 500
    end
    object qryjobsItemsInfoKind: TSmallintField
      FieldName = 'InfoKind'
    end
  end
  object qryjobsTerms: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryjobsTermsBeforeEdit
    AfterInsert = qryjobsTermsAfterInsert
    BeforeEdit = qryjobsTermsBeforeEdit
    AfterEdit = qryjobsTermsAfterEdit
    BeforePost = qryjobsTermsBeforePost
    Parameters = <
      item
        Name = 'jobCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * From '
      'Pay.jobsTerms'
      'Where jobCode = :jobCode')
    Left = 368
    Top = 208
    object qryjobsTermsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryjobsTermsjobCode: TIntegerField
      FieldName = 'jobCode'
    end
    object qryjobsTermsLicenceCode: TIntegerField
      DisplayLabel = #1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610
      FieldName = 'LicenceCode'
      OnGetText = MyGetText
      OnSetText = MySetText
    end
    object qryjobsTermsStudyField: TIntegerField
      DisplayLabel = #1585#1588#1578#1607' '#1578#1581#1589#1610#1604#1610
      FieldName = 'StudyField'
      OnGetText = MyGetText
      OnSetText = MySetText
    end
    object qryjobsTermsExperienceYear: TBCDField
      DisplayLabel = #1578#1580#1585#1576#1607'('#1587#1575#1604')'
      FieldName = 'ExperienceYear'
      Precision = 18
    end
    object qryjobsTermsExperienceMonth: TBCDField
      DisplayLabel = #1578#1580#1585#1576#1607'('#1605#1575#1607')'
      FieldName = 'ExperienceMonth'
      Precision = 18
    end
    object qryjobsTermsDuration: TBCDField
      DisplayLabel = #1605#1583#1578' '#1570#1605#1608#1586#1588
      FieldName = 'Duration'
      Precision = 18
    end
    object qryjobsTermsMinPoints: TBCDField
      DisplayLabel = 'Min'#1575#1605#1578#1610#1575#1585
      FieldName = 'MinPoints'
      Precision = 18
    end
    object qryjobsTermsMaxPoints: TBCDField
      DisplayLabel = 'Max'#1575#1605#1578#1610#1575#1586
      FieldName = 'MaxPoints'
      Precision = 18
    end
    object qryjobsTermsPercentExtra: TBCDField
      DisplayLabel = #1583#1585#1589#1583' '#1601#1608#1602' '#1575#1604#1593#1575#1583#1607'/'#1605#1588#1575#1594#1604' '#1593#1605#1608#1610
      FieldName = 'PercentExtra'
      Precision = 18
    end
    object qryjobsTermsJobLevel: TIntegerField
      DisplayLabel = #1587#1591#1581' '#1588#1594#1604
      FieldName = 'JobLevel'
      OnGetText = MyGetText
      OnSetText = MySetText
    end
    object qryjobsTermsTestCondition: TIntegerField
      DisplayLabel = #1588#1585#1591' '#1570#1586#1605#1608#1606
      FieldName = 'TestCondition'
      OnGetText = MyGetText
      OnSetText = MySetText
    end
    object qryjobsTermsNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'Note'
      Size = 200
    end
  end
  object srcjobs: TDataSource
    DataSet = qryjobs
    OnStateChange = srcjobsStateChange
    Left = 440
    Top = 8
  end
  object srcjobsItems: TDataSource
    DataSet = qryjobsItems
    Left = 472
    Top = 376
  end
  object srcjobsTerms: TDataSource
    DataSet = qryjobsTerms
    Left = 472
    Top = 200
  end
  object qryFormsInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT FormInfoID,InfoID, InfoName_L1'
      'FROM Pay.FormsInfo'
      '')
    Left = 80
    Top = 304
  end
  object qryJobPromissory: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryjobsTermsBeforeEdit
    AfterInsert = qryJobPromissoryAfterInsert
    BeforeEdit = qryjobsTermsBeforeEdit
    AfterEdit = qryjobsTermsAfterEdit
    BeforePost = qryJobPromissoryBeforePost
    Parameters = <
      item
        Name = 'jobCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT        jobCode, PromRunDate, PromAmount'
      'FROM            Pay.JobPromissory'
      'WHERE        (jobCode = :jobCode )'
      ''
      '')
    Left = 480
    Top = 304
    object qryJobPromissoryjobCode: TIntegerField
      FieldName = 'jobCode'
    end
    object qryJobPromissoryPromRunDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1575#1580#1585#1575
      FieldName = 'PromRunDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryJobPromissoryPromAmount: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1587#1601#1578#1607
      FieldName = 'PromAmount'
      currency = True
      Precision = 19
    end
  end
  object srcJobPromissory: TDataSource
    DataSet = qryJobPromissory
    Left = 627
    Top = 293
  end
end
