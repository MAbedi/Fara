inherited MissionInfoF: TMissionInfoF
  Left = 392
  Top = 116
  Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1575#1605#1608#1585#1610#1578' '
  ClientHeight = 517
  ClientWidth = 772
  OnResize = FormResize
  ExplicitWidth = 784
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 442
    Width = 772
    ExplicitTop = 442
    ExplicitWidth = 772
    object okPanel: TPanel [0]
      Left = 282
      Top = 0
      Width = 165
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
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
        Left = 10
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
    inherited BtnReject: TBitBtn
      ExplicitLeft = 8
      ExplicitTop = 10
    end
    object newPanel: TPanel
      Left = 446
      Top = 1
      Width = 325
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 447
      ExplicitTop = 0
      ExplicitHeight = 41
      DesignSize = (
        325
        39)
      object BitBtn3: TBitBtn
        Left = 240
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 162
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 84
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
      object BitBtn1: TBitBtn
        Left = 6
        Top = 8
        Width = 75
        Height = 25
        Action = actMissionShow
        Anchors = [akTop, akRight]
        Caption = #1581#1603#1605' '#1605#1575#1605#1608#1585#1610#1578
        TabOrder = 3
      end
    end
    object BitBtn2: TBitBtn
      Left = 87
      Top = 10
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn6: TBitBtn
      Left = 166
      Top = 10
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn9: TBitBtn
      Left = 245
      Top = 10
      Width = 75
      Height = 25
      Action = actSendToExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 5
    end
    object BitBtn17: TBitBtn
      Left = 326
      Top = 10
      Width = 75
      Height = 25
      Caption = #1587#1575#1610#1585'...'
      TabOrder = 6
      OnClick = BitBtn17Click
    end
  end
  inherited Panel2: TPanel
    Width = 772
    Height = 67
    ExplicitWidth = 772
    ExplicitHeight = 67
    inherited ImgTemplate: TImage
      Left = 734
      ExplicitLeft = 734
    end
    inherited lblCaption: TLabel
      Left = 656
      Height = 16
      ExplicitLeft = 656
    end
    object grpMaster: TGroupBox
      Left = 0
      Top = 0
      Width = 240
      Height = 67
      Align = alLeft
      Caption = #1603#1583
      TabOrder = 0
      object sbtnMaster: TSpeedButton
        Left = 5
        Top = 14
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = sbtnMasterClick
      end
      object EdtCode: TDBEdit
        Left = 30
        Top = 15
        Width = 81
        Height = 19
        Ctl3D = False
        DataField = 'MasterCode'
        DataSource = SrcMaster
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 5
        Top = 38
        Width = 228
        Height = 21
        BevelOuter = bvNone
        BevelKind = bkFlat
        Color = clBtnFace
        Ctl3D = True
        DataField = 'Name'
        DataSource = SrcMaster
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBNavigator1: TDBNavigator
        Left = 115
        Top = 14
        Width = 116
        Height = 22
        DataSource = SrcMaster
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 2
      end
    end
  end
  inherited Panel3: TPanel
    Top = 67
    Width = 489
    Height = 375
    ExplicitTop = 67
    ExplicitWidth = 489
    ExplicitHeight = 375
    object PageControl1: TPageControl
      Left = 2
      Top = 69
      Width = 485
      Height = 279
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      OnChange = PageControl1Change
      ExplicitLeft = 0
      ExplicitTop = 67
      ExplicitWidth = 489
      ExplicitHeight = 284
      object TabSheet1: TTabSheet
        Caption = #1605#1575#1605#1608#1585#1610#1578
        object DBGrid1: TDBGrid
          Tag = 111
          Left = 0
          Top = 0
          Width = 481
          Height = 236
          Align = alClient
          Color = clCream
          DataSource = SrcMissionInfo
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnEditButtonClick = DBGrid1EditButtonClick
          OnKeyPress = DBGrid1KeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'AccDetailCode'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_AccDetailCode'
              Width = 40
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'AccCTopicCode'
              Width = 59
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'AccCTopicCode2'
              Width = 62
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'AccCTopicCode3'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'StartDate'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EndDate'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FunMission'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RateMission'
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CofficentManage'
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Price'
              Width = 61
              Visible = True
            end>
        end
        object SumGrid1: TSumGrid
          Left = 0
          Top = 236
          Width = 481
          Active = False
          Enable_Controls = True
          MasterGrid = DBGrid1
          FieldsName = 'FunMission;RateMission;CofficentManage;Price;'
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1607#1586#1610#1606#1607' '#1607#1575#1610' '#1578#1582#1589#1610#1589#1610
        ImageIndex = 1
        object DBGrid2: TDBGrid
          Tag = 111
          Left = 0
          Top = 0
          Width = 477
          Height = 232
          Align = alClient
          Color = clCream
          DataSource = SrcMissionInfo
          TabOrder = 0
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
              FieldName = 'AccDetailCode'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_AccDetailCode'
              Width = 33
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'AccCTopicCode'
              Width = 59
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'AccCTopicCode2'
              Width = 62
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'AccCTopicCode3'
              Width = 62
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = '_ExpID'
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_ExpName'
              ReadOnly = True
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Price'
              Width = 48
              Visible = True
            end>
        end
        object SumGrid2: TSumGrid
          Left = 0
          Top = 232
          Width = 477
          Active = False
          Enable_Controls = True
          MasterGrid = DBGrid2
          FieldsName = 'FunMission;RateMission;CofficentManage;Price;'
        end
      end
      object TabSheet3: TTabSheet
        Caption = #1607#1586#1610#1606#1607' '#1607#1575#1610' '#1578#1587#1607#1610#1605#1610
        ImageIndex = 2
        object DBGrid3: TDBGrid
          Tag = 111
          Left = 0
          Top = 0
          Width = 477
          Height = 232
          Align = alClient
          Color = clCream
          DataSource = SrcMissionInfo
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnEditButtonClick = DBGrid3EditButtonClick
          OnKeyPress = DBGrid3KeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = '_ExpID'
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_ExpName'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FunMission'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RateMission'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Price'
              Width = 129
              Visible = True
            end>
        end
        object SumGrid3: TSumGrid
          Left = 0
          Top = 232
          Width = 477
          Active = False
          Enable_Controls = True
          MasterGrid = DBGrid3
          FieldsName = 'FunMission;RateMission;CofficentManage;Price;'
        end
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 485
      Height = 67
      Align = alTop
      TabOrder = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 489
      DesignSize = (
        485
        67)
      object Label2: TLabel
        Left = 398
        Top = 6
        Width = 80
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
        FocusControl = DBEdit2
        ExplicitLeft = 402
      end
      object Label3: TLabel
        Left = 398
        Top = 48
        Width = 84
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1583#1578' '#1602#1575#1576#1604' '#1575#1581#1578#1587#1575#1576
        FocusControl = DBEdit3
        ExplicitLeft = 402
      end
      object Label4: TLabel
        Left = 398
        Top = 27
        Width = 88
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1608#1575#1581#1583' '#1605#1608#1585#1583' '#1585#1587#1610#1583#1711#1610
        FocusControl = DBEdit4
        ExplicitLeft = 402
      end
      object Label5: TLabel
        Left = 90
        Top = 6
        Width = 52
        Height = 13
        Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 90
        Top = 27
        Width = 43
        Height = 13
        Caption = #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606
        FocusControl = DBEdit6
      end
      object DBEdit2: TDBEdit
        Left = 141
        Top = 3
        Width = 256
        Height = 19
        Anchors = [akTop, akRight]
        Ctl3D = False
        DataField = 'PersonelInfoName'
        DataSource = SrcMission
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        ExplicitLeft = 145
      end
      object DBEdit3: TDBEdit
        Left = 297
        Top = 45
        Width = 100
        Height = 19
        Anchors = [akTop, akRight]
        Ctl3D = False
        DataField = 'MissionFunction'
        DataSource = SrcMission
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
        ExplicitLeft = 301
      end
      object DBEdit4: TDBEdit
        Left = 197
        Top = 24
        Width = 200
        Height = 19
        Anchors = [akTop, akRight]
        Ctl3D = False
        DataField = 'CompanyCodeName'
        DataSource = SrcMission
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
        ExplicitLeft = 201
      end
      object DBEdit5: TDBEdit
        Left = 4
        Top = 2
        Width = 81
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'MissionStartDate'
        DataSource = SrcMission
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 4
        Top = 23
        Width = 81
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'MissionEndDate'
        DataSource = SrcMission
        ParentCtl3D = False
        TabOrder = 4
      end
    end
    object Panel6: TPanel
      Left = 2
      Top = 349
      Width = 485
      Height = 24
      Align = alBottom
      TabOrder = 2
      ExplicitLeft = 0
      ExplicitTop = 351
      ExplicitWidth = 489
      DesignSize = (
        485
        24)
      object DBText1: TDBText
        Left = 385
        Top = 5
        Width = 41
        Height = 13
        Anchors = [akTop, akRight]
        AutoSize = True
        Color = clCream
        DataField = '_AccCTopicCode'
        DataSource = SrcMissionInfo
        ParentColor = False
        Transparent = False
        ExplicitLeft = 389
      end
      object Label7: TLabel
        Left = 431
        Top = 5
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1578#1601#1589#1610#1604#1610'2'#39':'#8207
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 435
      end
      object DBText4: TDBText
        Left = 213
        Top = 5
        Width = 41
        Height = 13
        Anchors = [akTop]
        AutoSize = True
        Color = clCream
        DataField = '_AccCTopicCode2'
        DataSource = SrcMissionInfo
        ParentColor = False
        Transparent = False
        ExplicitLeft = 215
      end
      object Label9: TLabel
        Left = 251
        Top = 5
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop]
        Caption = #1578#1601#1589#1610#1604#1610'2'#39' 2:'#8207
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 253
      end
      object Label16: TLabel
        Left = 133
        Top = 5
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = #1578#1601#1589#1610#1604#1610'2'#39' 3:'#8207
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText10: TDBText
        Left = 85
        Top = 5
        Width = 47
        Height = 13
        AutoSize = True
        Color = clCream
        DataField = '_AccCTopicCode3'
        DataSource = SrcMissionInfo
        ParentColor = False
        Transparent = False
      end
    end
  end
  object Panel5: TPanel [3]
    Left = 0
    Top = 483
    Width = 772
    Height = 34
    Align = alBottom
    TabOrder = 3
    object BitBtn12: TBitBtn
      Left = 4
      Top = 5
      Width = 93
      Height = 25
      Action = actAcc
      Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
      TabOrder = 0
    end
  end
  object Panel1: TPanel [4]
    Left = 489
    Top = 67
    Width = 283
    Height = 375
    Align = alRight
    TabOrder = 4
    object Label1: TLabel
      Left = 181
      Top = 1
      Width = 101
      Height = 13
      Align = alTop
      Caption = #1604#1610#1587#1578' '#1575#1581#1603#1575#1605' '#1605#1575#1605#1608#1585#1610#1578' '
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBGrid: TDBGrid
      Left = 1
      Top = 14
      Width = 281
      Height = 262
      Hint = #1576#1585#1575#1610' '#1580#1587#1578#1580#1608#1610' '#1587#1585#1610#1593' '#1585#1608#1610' '#1601#1585#1605' '#1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610' '#1585#1575' '#1578#1575#1610#1662' '#1603#1606#1610#1583'.'#8207
      Align = alClient
      Color = clCream
      DataSource = SrcMission
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = DBGridKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'MissionNo'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MissionDate'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonelNo'
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonelInfoName'
          Width = 119
          Visible = True
        end>
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 276
      Width = 281
      Height = 98
      Align = alBottom
      Caption = '  '#1605#1608#1590#1608#1593' '#1605#1575#1605#1608#1585#1610#1578'  '
      TabOrder = 1
      object DBMemo1: TDBMemo
        Left = 2
        Top = 15
        Width = 277
        Height = 81
        Align = alClient
        DataField = 'MissionTopic'
        DataSource = SrcMission
        TabOrder = 0
      end
    end
  end
  inherited ActionList: TActionList
    Left = 496
    inherited DataSetInsert1: TDataSetInsert
      DataSource = SrcMissionInfo
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = SrcMissionInfo
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = SrcMissionInfo
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = SrcMissionInfo
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = SrcMissionInfo
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
    object actMissionShow: TAction
      Caption = #1581#1603#1605' '#1605#1575#1605#1608#1585#1610#1578
      OnExecute = actMissionShowExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
    end
    object actAcc: TAction
      Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
      OnExecute = actAccExecute
    end
    object ActShowInterdict: TAction
      Caption = ' '#1581#1603#1605' '#1603#1575#1585#1711#1586#1610#1606#1610' '
      OnExecute = ActShowInterdictExecute
    end
    object ActPersonelInfoF: TAction
      Caption = #1605#1593#1585#1601#1610' '#1662#1585#1587#1606#1604
      OnExecute = ActPersonelInfoFExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 424
  end
  object qryMaster: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryMasterAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     FormsInfo.InfoID AS MasterCode, FormsInfo.InfoName_L1' +
        ' AS Name, Mission.MissionKind,'
      '           ISNULL(FormsInfo.StandardDays, 0) AS StandardDays,'
      '           ISNULL(FormsInfo.Amount, 0) AS Amount ,'
      '           ISNULL(FormsInfo.CalCulateType, 0) AS  CalCulateType'
      'FROM Pay.Mission LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo ON Mission.MissionKind = For' +
        'msInfo.FormInfoID'
      'WHERE     (FormsInfo.FormType = 24)'
      
        'GROUP BY FormsInfo.InfoID, Mission.MissionKind, FormsInfo.InfoNa' +
        'me_L1,FormsInfo.StandardDays,'
      '         FormsInfo.Amount,FormsInfo.CalCulateType')
    Left = 336
    Top = 8
    object qryMasterMasterCode: TIntegerField
      FieldName = 'MasterCode'
    end
    object qryMasterName: TStringField
      FieldName = 'Name'
      Size = 255
    end
    object qryMasterMissionKind: TIntegerField
      FieldName = 'MissionKind'
    end
    object qryMasterAmount: TBCDField
      FieldName = 'Amount'
      ReadOnly = True
      Precision = 19
    end
    object qryMasterStandardDays: TFloatField
      FieldName = 'StandardDays'
      ReadOnly = True
    end
    object qryMasterCalCulateType: TWordField
      FieldName = 'CalCulateType'
      ReadOnly = True
    end
  end
  object SrcMaster: TDataSource
    DataSet = qryMaster
    Left = 272
    Top = 13
  end
  object qryMission: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeOpen = qryMissionBeforeOpen
    AfterScroll = qryMissionAfterScroll
    Parameters = <
      item
        Name = 'MasterCode'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 359
      end>
    SQL.Strings = (
      
        'SELECT   Mission.*,PersonelInfo.name_L1 + '#39' '#39' + PersonelInfo.las' +
        'tName_L1 AS PersonelInfoName'
      '        , FormsInfo.InfoName_L1 AS CompanyCodeName'
      'FROM Pay.Mission INNER JOIN'
      
        '                      Pay.PersonelInfo ON Mission.PersonelNo = P' +
        'ersonelInfo.PersonelNo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo ON Mission.CompanyCode = For' +
        'msInfo.FormInfoID'
      'where  Mission.MissionKind = :MasterCode'
      ''
      'order by MissionDate')
    Left = 698
    Top = 127
    object qryMissionMissionID: TIntegerField
      FieldName = 'MissionID'
      ReadOnly = True
    end
    object qryMissionMissionNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1603#1605
      FieldName = 'MissionNo'
    end
    object qryMissionMissionDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1581#1603#1605
      FieldName = 'MissionDate'
      FixedChar = True
      Size = 10
    end
    object qryMissionState: TWordField
      FieldName = 'State'
    end
    object qryMissionPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1662
      FieldName = 'PersonelNo'
    end
    object qryMissionPersonelInfoName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      FieldName = 'PersonelInfoName'
      ReadOnly = True
      Size = 56
    end
    object qryMissionMissionPlace: TStringField
      FieldName = 'MissionPlace'
      Size = 100
    end
    object qryMissionCompanyCode: TIntegerField
      FieldName = 'CompanyCode'
    end
    object qryMissionMissionStartDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593
      FieldName = 'MissionStartDate'
      FixedChar = True
      Size = 10
    end
    object qryMissionMissionEndDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606
      FieldName = 'MissionEndDate'
      FixedChar = True
      Size = 10
    end
    object qryMissionMissionFunction: TFloatField
      FieldName = 'MissionFunction'
    end
    object qryMissionMissionTopic: TStringField
      FieldName = 'MissionTopic'
      Size = 1000
    end
    object qryMissionTransPort: TStringField
      FieldName = 'TransPort'
      Size = 70
    end
    object qryMissionOtherTopic: TStringField
      FieldName = 'OtherTopic'
      Size = 1000
    end
    object qryMissionMissionKind: TIntegerField
      FieldName = 'MissionKind'
    end
    object qryMissionAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qryMissionAccCTopicCode: TIntegerField
      FieldName = 'AccCTopicCode'
    end
    object qryMissionAccCTopicCode2: TIntegerField
      FieldName = 'AccCTopicCode2'
    end
    object qryMissionAccCTopicCode3: TIntegerField
      FieldName = 'AccCTopicCode3'
    end
    object qryMissionCompanyCodeName: TStringField
      FieldName = 'CompanyCodeName'
      Size = 255
    end
    object qryMissionAccTopicCode: TLargeintField
      FieldName = 'AccTopicCode'
    end
  end
  object SrcMission: TDataSource
    DataSet = qryMission
    Left = 690
    Top = 191
  end
  object qryInitForm: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 6
      end>
    SQL.Strings = (
      'select * FROM Pay.FormTypes'
      'where  FormType=:FormType')
    Left = 600
    Top = 5
  end
  object qryMissionInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterInsert = qryMissionInfoAfterInsert
    BeforePost = qryMissionInfoBeforePost
    AfterPost = qryMissionInfoAfterPost
    BeforeDelete = qryMissionInfoBeforeDelete
    AfterDelete = qryMissionInfoAfterDelete
    Parameters = <
      item
        Name = 'MissionID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'InfoTypeFrom'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end
      item
        Name = 'InfoTypeTo'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 2
      end>
    SQL.Strings = (
      'SELECT    *'
      'FROM Pay.MissionInfo'
      'WHERE     (MissionID=:MissionID) '
      ' and (InfoType  BETWEEN  :InfoTypeFrom  and :InfoTypeTo )'
      'order by InfoType'
      '')
    Left = 42
    Top = 184
    object qryMissionInfoMissionInfoID: TAutoIncField
      FieldName = 'MissionInfoID'
      ReadOnly = True
    end
    object qryMissionInfoMissionID: TIntegerField
      FieldName = 'MissionID'
    end
    object qryMissionInfoInfoType: TWordField
      FieldName = 'InfoType'
    end
    object qryMissionInfoAccDetailCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'AccDetailCode'
    end
    object qryMissionInfo_AccDetailCode: TStringField
      DisplayLabel = #1606#1575#1605' '#1608#1575#1581#1583' '#1605#1608#1585#1583' '#1585#1587#1610#1583#1711#1610
      FieldKind = fkLookup
      FieldName = '_AccDetailCode'
      LookupDataSet = DmF.qryDetailCode
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName_L1'
      KeyFields = 'AccDetailCode'
      ReadOnly = True
      Size = 150
      Lookup = True
    end
    object qryMissionInfoAccCTopicCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1578#1601#1589#1740#1604#1740'2'#39' 1'
      FieldName = 'AccCTopicCode'
    end
    object qryMissionInfoAccCTopicCode2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1578#1601#1589#1740#1604#1740'2'#39' 2'
      FieldName = 'AccCTopicCode2'
    end
    object qryMissionInfoAccCTopicCode3: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1578#1601#1589#1740#1604#1740'2'#39' 3'
      FieldName = 'AccCTopicCode3'
    end
    object qryMissionInfoExpID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1607#1586#1610#1606#1607
      FieldName = 'ExpID'
    end
    object qryMissionInfoStartDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593
      FieldName = 'StartDate'
      OnChange = qryMissionInfoStartDateChange
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryMissionInfoEndDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606
      FieldName = 'EndDate'
      OnChange = qryMissionInfoStartDateChange
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryMissionInfoFunMission: TFloatField
      Tag = 3
      DisplayLabel = #1605#1583#1578
      FieldName = 'FunMission'
      OnChange = AllChangeCalcPrice
    end
    object qryMissionInfoRateMission: TFloatField
      Tag = 3
      DisplayLabel = #1606#1585#1582
      FieldName = 'RateMission'
      OnChange = AllChangeCalcPrice
    end
    object qryMissionInfoCofficentManage: TFloatField
      Tag = 3
      DisplayLabel = #1590#1585#1610#1576' '#1605#1583#1610#1585
      FieldName = 'CofficentManage'
      OnChange = AllChangeCalcPrice
    end
    object qryMissionInfoPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1603#1604' '
      FieldName = 'Price'
      currency = True
      Precision = 19
    end
    object qryMissionInfo_AccCTopicCode: TStringField
      FieldKind = fkLookup
      FieldName = '_AccCTopicCode'
      LookupDataSet = DmF.qry_CTopicCode
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName_L1'
      KeyFields = 'AccCTopicCode'
      Size = 150
      Lookup = True
    end
    object qryMissionInfo_AccCTopicCode2: TStringField
      FieldKind = fkLookup
      FieldName = '_AccCTopicCode2'
      LookupDataSet = DmF.qry_CTopicCode2
      LookupKeyFields = 'CTopicCode2'
      LookupResultField = 'CTopicName2_L1'
      KeyFields = 'AccCTopicCode2'
      Size = 150
      Lookup = True
    end
    object qryMissionInfo_AccCTopicCode3: TStringField
      FieldKind = fkLookup
      FieldName = '_AccCTopicCode3'
      LookupDataSet = DmF.qry_CTopicCode3
      LookupKeyFields = 'CTopicCode3'
      LookupResultField = 'CTopicName3_L1'
      KeyFields = 'AccCTopicCode3'
      Size = 150
      Lookup = True
    end
    object qryMissionInfo_ExpName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1607#1586#1610#1606#1607' '
      FieldKind = fkLookup
      FieldName = '_ExpName'
      LookupDataSet = qryFormsInfo
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'ExpID'
      Size = 150
      Lookup = True
    end
    object qryMissionInfo_ExpID: TIntegerField
      DisplayLabel = #1603#1583' '#1607#1586#1610#1606#1607
      FieldKind = fkLookup
      FieldName = '_ExpID'
      LookupDataSet = qryFormsInfo
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoID'
      KeyFields = 'ExpID'
      Lookup = True
    end
  end
  object SrcMissionInfo: TDataSource
    DataSet = qryMissionInfo
    OnStateChange = SrcMissionInfoStateChange
    Left = 130
    Top = 183
  end
  object qryFormsInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     FormsInfo.FormInfoID, FormsInfo.InfoID, FormsInfo.Inf' +
        'oName_L1, FormsInfo.InfoName_L2'
      'FROM Pay.FormsInfo ')
    Left = 346
    Top = 199
  end
  object PopMnuOthers: TPopupMenu
    Left = 345
    Top = 427
    object ActShowInterdict1: TMenuItem
      Action = ActShowInterdict
    end
    object N1: TMenuItem
      Action = ActPersonelInfoF
    end
    object N2: TMenuItem
      Action = actPrint
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = SrcMission
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeline1'
    Left = 427
    Top = 245
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'MissionID'
      FieldName = 'MissionID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'MissionNo'
      FieldName = 'MissionNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'MissionDate'
      FieldName = 'MissionDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'State'
      FieldName = 'State'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'PersonelInfoName'
      FieldName = 'PersonelInfoName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'MissionPlace'
      FieldName = 'MissionPlace'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'CompanyCode'
      FieldName = 'CompanyCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'MissionStartDate'
      FieldName = 'MissionStartDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'MissionEndDate'
      FieldName = 'MissionEndDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'MissionFunction'
      FieldName = 'MissionFunction'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'MissionTopic'
      FieldName = 'MissionTopic'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'TransPort'
      FieldName = 'TransPort'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'OtherTopic'
      FieldName = 'OtherTopic'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'MissionKind'
      FieldName = 'MissionKind'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'AccTopicCode'
      FieldName = 'AccTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'AccDetailCode'
      FieldName = 'AccDetailCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'AccCTopicCode'
      FieldName = 'AccCTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'AccCTopicCode2'
      FieldName = 'AccCTopicCode2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'AccCTopicCode3'
      FieldName = 'AccCTopicCode3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'CompanyCodeName'
      FieldName = 'CompanyCodeName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
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
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\MissionInfo.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    CachePages = True
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
    Left = 337
    Top = 288
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 56356
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentWidth = False
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 51329
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline2
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
          Units = utMillimeters
          Version = '22.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppDetailBand2: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6879
            mmPrintPosition = 0
            object ppDBText1: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = '_ExpName'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 5821
              mmLeft = 147109
              mmTop = 0
              mmWidth = 48948
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = '_AccCTopicCode'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 5821
              mmLeft = 147109
              mmTop = 1058
              mmWidth = 48948
              BandType = 4
              LayerName = Foreground
            end
            object ppDBTxtCompanyCodeName: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBTxtCompanyCodeName'
              OnGetText = ppDBTxtCompanyCodeNameGetText
              Border.mmPadding = 0
              DataField = 'CompanyCodeName'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5821
              mmLeft = 147109
              mmTop = 529
              mmWidth = 48948
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText2: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = 'Price'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6615
              mmLeft = 265
              mmTop = 0
              mmWidth = 19579
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText5: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'FunMission'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6615
              mmLeft = 137584
              mmTop = 0
              mmWidth = 8731
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText9: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText9'
              Border.mmPadding = 0
              DataField = 'RateMission'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6615
              mmLeft = 21167
              mmTop = 0
              mmWidth = 19579
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText10: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText10'
              Border.mmPadding = 0
              DataField = '_AccCTopicCode2'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 5821
              mmLeft = 66146
              mmTop = 265
              mmWidth = 23548
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText11: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText101'
              AutoSize = True
              Border.mmPadding = 0
              DataField = '_AccCTopicCode3'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 5842
              mmLeft = 41551
              mmTop = 0
              mmWidth = 23537
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText14: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText102'
              AutoSize = True
              Border.mmPadding = 0
              DataField = '_AccCTopicCode'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 5842
              mmLeft = 91027
              mmTop = 0
              mmWidth = 21421
              BandType = 4
              LayerName = Foreground
            end
            object ppLine5: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line5'
              Border.mmPadding = 0
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6879
              mmLeft = 20373
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line6'
              Border.mmPadding = 0
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6879
              mmLeft = 41010
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppLine7: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line7'
              Border.mmPadding = 0
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6879
              mmLeft = 65617
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppLine8: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line8'
              Border.mmPadding = 0
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6879
              mmLeft = 90223
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppLine9: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line9'
              Border.mmPadding = 0
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6879
              mmLeft = 112713
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppLine11: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line11'
              Border.mmPadding = 0
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6879
              mmLeft = 137054
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppLine12: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line12'
              Border.mmPadding = 0
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6879
              mmLeft = 146579
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText8: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText8'
              AutoSize = True
              Border.mmPadding = 0
              DataField = '_AccDetailCode'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 5842
              mmLeft = 72443
              mmTop = 0
              mmWidth = 64347
              BandType = 4
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
              ParentHeight = True
              mmHeight = 7408
              mmLeft = 0
              mmTop = 0
              mmWidth = 197300
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'Price'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;(#,0)'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6615
              mmLeft = 265
              mmTop = 265
              mmWidth = 19579
              BandType = 7
              LayerName = Foreground
            end
            object ppLine13: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line13'
              Border.mmPadding = 0
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 7408
              mmLeft = 20373
              mmTop = 0
              mmWidth = 2646
              BandType = 7
              LayerName = Foreground
            end
          end
          object ppGroup1: TppGroup
            BreakName = 'InfoType'
            DataPipeline = ppDBPipeline2
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            KeepTogether = True
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppDBPipeline2'
            NewFile = False
            object ppGroupHeaderBand1: TppGroupHeaderBand
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 5821
              mmPrintPosition = 0
              object ppShape1: TppShape
                DesignLayer = ppDesignLayer1
                UserName = 'Shape1'
                ParentHeight = True
                mmHeight = 5821
                mmLeft = 0
                mmTop = 0
                mmWidth = 197300
                BandType = 3
                GroupNo = 0
                LayerName = Foreground
              end
              object ppDBTxtInfoType: TppDBText
                DesignLayer = ppDesignLayer1
                UserName = 'DBTxtInfoType'
                OnGetText = ppDBTxtInfoTypeGetText
                AutoSize = True
                Border.mmPadding = 0
                DataField = 'InfoType'
                DataPipeline = ppDBPipeline2
                Font.Charset = ARABIC_CHARSET
                Font.Color = clBlack
                Font.Name = 'Zar'
                Font.Size = 10
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppDBPipeline2'
                mmHeight = 5842
                mmLeft = 193146
                mmTop = 0
                mmWidth = 2032
                BandType = 3
                GroupNo = 0
                LayerName = Foreground
              end
            end
            object ppGroupFooterBand1: TppGroupFooterBand
              Border.mmPadding = 0
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
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
    end
    object ppPageStyle1: TppPageStyle
      Border.mmPadding = 0
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 257969
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line1'
        Border.mmPadding = 0
        ParentHeight = True
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 257969
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 10
        LayerName = PageLayer1
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer3
        UserName = 'Shape2'
        mmHeight = 257969
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 74348
        mmTop = 1058
        mmWidth = 48683
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1711#1586#1575#1585#1588' '#1605#1575#1605#1608#1585#1610#1578' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7144
        mmLeft = 85725
        mmTop = 7144
        mmWidth = 25929
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel14: TppLabel
        Tag = 12
        DesignLayer = ppDesignLayer3
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593' '#1605#1575#1605#1608#1585#1610#1578':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6350
        mmLeft = 25929
        mmTop = 16404
        mmWidth = 24077
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel18: TppLabel
        Tag = 15
        DesignLayer = ppDesignLayer3
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = #1605#1608#1590#1608#1593' '#1605#1575#1605#1608#1585#1610#1578':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6350
        mmLeft = 174625
        mmTop = 31485
        mmWidth = 19050
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line19'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 0
        mmTop = 51329
        mmWidth = 197300
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel15: TppLabel
        Tag = 13
        DesignLayer = ppDesignLayer3
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7112
        mmLeft = 181124
        mmTop = 232569
        mmWidth = 14139
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText3'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'MissionStartDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6519
        mmLeft = 12616
        mmTop = 16404
        mmWidth = 12869
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel4: TppLabel
        Tag = 12
        DesignLayer = ppDesignLayer3
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1582#1575#1578#1605#1607' '#1605#1575#1605#1608#1585#1610#1578':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6350
        mmLeft = 25929
        mmTop = 23283
        mmWidth = 23283
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText4'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'MissionEndDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6519
        mmLeft = 11769
        mmTop = 23283
        mmWidth = 12869
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'MissionTopic'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 19579
        mmLeft = 5292
        mmTop = 31221
        mmWidth = 169069
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 26988
        mmLeft = 98425
        mmTop = 230717
        mmWidth = 265
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel21: TppLabel
        Tag = 19
        DesignLayer = ppDesignLayer3
        UserName = 'Label201'
        Border.mmPadding = 0
        Caption = #1578#1589#1608#1610#1576' '#1603#1606#1606#1583#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 7112
        mmLeft = 78572
        mmTop = 232305
        mmWidth = 16679
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel5: TppLabel
        Tag = 3
        DesignLayer = ppDesignLayer3
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1581#1603#1605':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6615
        mmLeft = 179123
        mmTop = 16404
        mmWidth = 12700
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'MissionNo'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7938
        mmLeft = 164042
        mmTop = 15610
        mmWidth = 14552
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel9: TppLabel
        Tag = 3
        DesignLayer = ppDesignLayer3
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1581#1603#1605':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6615
        mmLeft = 179123
        mmTop = 23283
        mmWidth = 13229
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'MissionDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 164042
        mmTop = 23548
        mmWidth = 14552
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLblDate: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LblDate'
        OnGetText = ppLblDateGetText
        Border.mmPadding = 0
        Caption = 'LblDate'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7144
        mmLeft = 3704
        mmTop = 7408
        mmWidth = 12171
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 0
        mmTop = 30692
        mmWidth = 197300
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 0
        mmTop = 230717
        mmWidth = 197300
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line14'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 0
        mmTop = 15081
        mmWidth = 197300
        BandType = 10
        LayerName = PageLayer1
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'PageLayer1'
        LayerType = ltPage
        Index = 0
      end
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 1
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = SrcMissionInfo
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 419
    Top = 309
    MasterDataPipelineName = 'ppDBPipeline1'
  end
end
