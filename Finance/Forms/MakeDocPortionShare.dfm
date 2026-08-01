inherited MakeDocPortionShareF: TMakeDocPortionShareF
  Left = 255
  Top = 117
  Caption = #1589#1583#1608#1585' '#1587#1606#1583' '#1578#1587#1607#1610#1605' '#1607#1586#1610#1606#1607' '
  ClientWidth = 836
  OnResize = FormResize
  ExplicitWidth = 844
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 482
    Width = 836
    Height = 35
    ExplicitTop = 483
    ExplicitWidth = 836
    ExplicitHeight = 35
    inherited BtnReject: TBitBtn
      Height = 21
      ExplicitHeight = 21
    end
    object BitBtn16: TBitBtn
      Left = 240
      Top = 5
      Width = 76
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607'Excel'
      TabOrder = 1
    end
    object BitBtn8: TBitBtn
      Left = 163
      Top = 5
      Width = 75
      Height = 25
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object BitBtn11: TBitBtn
      Left = 86
      Top = 5
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 752
      Top = 5
      Width = 73
      Height = 25
      Action = actFilter
      Anchors = [akTop, akRight]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 4
    end
    object btnMakeDoc: TBitBtn
      Left = 678
      Top = 5
      Width = 70
      Height = 25
      Action = ActMakeDoc
      Anchors = [akTop, akRight]
      Caption = #1589#1583#1608#1585' '#1587#1606#1583
      TabOrder = 5
    end
    object btnDisplayDoc: TBitBtn
      Left = 604
      Top = 5
      Width = 70
      Height = 25
      Action = actShowForm
      Anchors = [akTop, akRight]
      Caption = #1606#1605#1575#1740#1588' '#1587#1606#1583
      TabOrder = 6
      Visible = False
    end
  end
  inherited Panel2: TPanel
    Width = 836
    Height = 126
    ExplicitWidth = 836
    ExplicitHeight = 126
    inherited ImgTemplate: TImage
      Left = 768
      ExplicitLeft = 772
    end
    inherited lblCaption: TLabel
      Left = 728
      Height = 106
      ExplicitLeft = 728
    end
    inherited lblBaseDate: TLabel
      Left = 343
      ExplicitLeft = 343
    end
    object Label9: TLabel
      Left = 113
      Top = 6
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = #1588#1605#1575#1585#1607' '#1601#1585#1593#1610
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 113
      Top = 29
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = #1578#1575#1585#1610#1582' '#1587#1606#1583' '
      FocusControl = DBEdit10
    end
    object SpeedButton1: TSpeedButton
      Left = 311
      Top = 4
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '...'
      OnClick = SpeedButton1Click
      ExplicitLeft = 260
    end
    object Label11: TLabel
      Left = 432
      Top = 8
      Width = 77
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1603#1600#1583'  '#1608'  '#1606#1600#1575#1605' '#1608#1575#1581#1600#1583' '
      FocusControl = DBEdit12
      ExplicitLeft = 381
    end
    object Label12: TLabel
      Left = 439
      Top = 54
      Width = 42
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1608#1593' '#1587#1606#1583' '
      FocusControl = DBEdit13
      ExplicitLeft = 388
    end
    object Label13: TLabel
      Left = 722
      Top = 56
      Width = 61
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1608#1590#1593#1610#1578' '#1587#1606#1583' '
      FocusControl = DBEdit13
      ExplicitLeft = 671
    end
    object Label14: TLabel
      Left = 113
      Top = 54
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = #1587#1585#1610#1575#1604' '#1587#1606#1583' '
      FocusControl = DBEdit14
    end
    object Label15: TLabel
      Left = 722
      Top = 80
      Width = 86
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1585#1581' '#1593#1605#1608#1605#1610' '#1587#1606#1583
      FocusControl = DBEdit13
      ExplicitLeft = 671
    end
    object spdDetailCode: TSpeedButton
      Left = 599
      Top = 100
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '...'
      OnClick = spdDetailCodeClick
      ExplicitLeft = 548
    end
    object lblDetail: TLabel
      Left = 722
      Top = 104
      Width = 37
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1601#1589#1740#1604#1740
      ExplicitLeft = 671
    end
    object DBEdit9: TDBEdit
      Left = 23
      Top = 2
      Width = 82
      Height = 21
      DataField = 'SecondaryDocNo'
      DataSource = src_DocGroups
      TabOrder = 0
    end
    object DBEdit10: TDBEdit
      Left = 23
      Top = 25
      Width = 82
      Height = 21
      DataField = 'DocDate'
      DataSource = src_DocGroups
      TabOrder = 1
    end
    object dbedt_CompanyName_L1: TDBEdit
      Left = 311
      Top = 27
      Width = 213
      Height = 19
      TabStop = False
      Anchors = [akTop, akRight]
      Color = clBtnFace
      Ctl3D = False
      DataField = '_CompanyName_L1'
      DataSource = src_DocGroups
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      ExplicitLeft = 315
    end
    object DBEdit12: TDBEdit
      Left = 338
      Top = 6
      Width = 67
      Height = 19
      Anchors = [akTop, akRight]
      Ctl3D = False
      DataField = 'CompanyCode'
      DataSource = src_DocGroups
      ParentCtl3D = False
      TabOrder = 3
      ExplicitLeft = 342
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 311
      Top = 49
      Width = 124
      Height = 21
      Anchors = [akTop, akRight]
      DataField = '_DocTypeName_L1'
      DataSource = src_DocGroups
      TabOrder = 4
      ExplicitLeft = 315
    end
    object DBEdit13: TDBEdit
      Left = 591
      Top = 53
      Width = 124
      Height = 19
      TabStop = False
      Anchors = [akTop, akRight]
      Ctl3D = False
      DataField = 'Status'
      DataSource = src_DocGroups
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
      ExplicitLeft = 595
    end
    object DBEdit14: TDBEdit
      Left = 23
      Top = 51
      Width = 82
      Height = 19
      TabStop = False
      Color = 15132390
      Ctl3D = False
      DataField = 'Serial'
      DataSource = src_DocGroups
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit15: TDBEdit
      Left = 24
      Top = 77
      Width = 692
      Height = 21
      Anchors = [akLeft, akRight, akBottom]
      DataField = 'DocTopic_L1'
      DataSource = src_DocGroups
      TabOrder = 6
      ExplicitWidth = 696
    end
    object mskDetailCode: TMaskEdit
      Left = 624
      Top = 101
      Width = 92
      Height = 21
      Anchors = [akTop, akRight]
      EditMask = '999999;0;_'
      MaxLength = 6
      ReadOnly = True
      TabOrder = 7
      Text = '0'
      OnChange = mskDetailCodeChange
      OnKeyPress = mskDetailCodeKeyPress
      ExplicitLeft = 628
    end
    object edtDetailName: TEdit
      Left = 75
      Top = 100
      Width = 521
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      TabOrder = 9
      ExplicitLeft = 79
    end
    object chkSum: TCheckBox
      Left = 10
      Top = 103
      Width = 142
      Height = 17
      Caption = #1605#1580#1605#1608#1593' '#1590#1585#1575#1574#1576' '#1578#1575' '#1605#1575#1607' '#1580#1575#1585#1740
      TabOrder = 10
      OnClick = chkSumClick
    end
  end
  inherited Panel3: TPanel
    Top = 126
    Width = 836
    Height = 356
    ExplicitTop = 126
    ExplicitWidth = 836
    ExplicitHeight = 357
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 832
      Height = 353
      Align = alClient
      TabOrder = 0
      object Panel4: TPanel
        Left = 1
        Top = 285
        Width = 830
        Height = 67
        Align = alBottom
        TabOrder = 0
        DesignSize = (
          830
          67)
        object Bevel1: TBevel
          Left = 0
          Top = 3
          Width = 827
          Height = 58
          Anchors = [akLeft, akTop, akRight, akBottom]
          Shape = bsFrame
          Style = bsRaised
          ExplicitWidth = 772
        end
        object Label1: TLabel
          Left = 337
          Top = 13
          Width = 31
          Height = 13
          Caption = #1581#1587#1575#1576
        end
        object Label2: TLabel
          Left = 344
          Top = 40
          Width = 37
          Height = 13
          Caption = #1578#1601#1589#1610#1604#1610
        end
        object Label3: TLabel
          Left = 155
          Top = 13
          Width = 22
          Height = 13
          Caption = #1605'.'#1607'1'
        end
        object Label4: TLabel
          Left = 156
          Top = 40
          Width = 22
          Height = 13
          Caption = #1605'.'#1607'2'
        end
        object Label5: TLabel
          Left = 772
          Top = 13
          Width = 31
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1581#1587#1575#1576
          FocusControl = DBEdit3
        end
        object Label6: TLabel
          Left = 779
          Top = 40
          Width = 37
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1601#1589#1610#1604#1610
          FocusControl = DBEdit4
          ExplicitLeft = 724
        end
        object Label7: TLabel
          Left = 602
          Top = 13
          Width = 22
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605'.'#1607'1'
          FocusControl = DBEdit5
          ExplicitLeft = 547
        end
        object Label8: TLabel
          Left = 602
          Top = 40
          Width = 22
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605'.'#1607'2'
          FocusControl = DBEdit6
          ExplicitLeft = 547
        end
        object Bevel2: TBevel
          Left = -1
          Top = 30
          Width = 824
          Height = 4
          Anchors = [akLeft, akTop, akRight]
          Shape = bsBottomLine
          Style = bsRaised
          ExplicitWidth = 769
        end
        object Bevel3: TBevel
          Left = 176
          Top = 5
          Width = 7
          Height = 54
          Shape = bsRightLine
          Style = bsRaised
        end
        object Bevel4: TBevel
          Left = 441
          Top = 5
          Width = 7
          Height = 54
          Anchors = [akTop, akRight]
          Shape = bsRightLine
          Style = bsRaised
          ExplicitLeft = 386
        end
        object Bevel5: TBevel
          Left = 625
          Top = 5
          Width = 7
          Height = 54
          Anchors = [akTop, akRight]
          Shape = bsRightLine
          Style = bsRaised
          ExplicitLeft = 570
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 10
          Width = 150
          Height = 19
          TabStop = False
          Color = clBtnFace
          Ctl3D = False
          DataField = 'CTopicName_L1'
          DataSource = srcDetailPortion
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 3
          Top = 37
          Width = 150
          Height = 19
          TabStop = False
          Color = clBtnFace
          Ctl3D = False
          DataField = 'CTopicName2_L1'
          DataSource = srcDetailPortion
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 636
          Top = 10
          Width = 139
          Height = 19
          TabStop = False
          Anchors = [akTop, akRight]
          Color = clBtnFace
          Ctl3D = False
          DataField = 'MoeenName_L1'
          DataSource = srcMasterPortion
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 636
          Top = 37
          Width = 139
          Height = 19
          TabStop = False
          Anchors = [akTop, akRight]
          Color = clBtnFace
          Ctl3D = False
          DataField = 'DetailName_L1'
          DataSource = srcMasterPortion
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 450
          Top = 10
          Width = 150
          Height = 19
          TabStop = False
          Anchors = [akTop, akRight]
          Color = clBtnFace
          Ctl3D = False
          DataField = 'CTopicName_L1'
          DataSource = srcMasterPortion
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 450
          Top = 37
          Width = 150
          Height = 19
          TabStop = False
          Anchors = [akTop, akRight]
          Color = clBtnFace
          Ctl3D = False
          DataField = 'CTopicName2_L1'
          DataSource = srcMasterPortion
          ParentCtl3D = False
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 191
          Top = 10
          Width = 150
          Height = 19
          TabStop = False
          Color = clBtnFace
          Ctl3D = False
          DataField = '_TopicName'
          DataSource = srcDetailPortion
          ParentCtl3D = False
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 191
          Top = 37
          Width = 150
          Height = 19
          TabStop = False
          Color = clBtnFace
          Ctl3D = False
          DataField = 'DetailName_L1'
          DataSource = srcMasterPortion
          ParentCtl3D = False
          TabOrder = 7
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 25
        Width = 51
        Height = 259
        Align = alClient
        TabOrder = 1
        ExplicitHeight = 260
        object Label17: TLabel
          Left = 1
          Top = 1
          Width = 116
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = #1604#1610#1587#1578' '#1575#1602#1604#1575#1605' '#1578#1587#1607#1610#1605' '#1588#1583#1607
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object DBGrid2: TDBGrid
          Left = 1
          Top = 14
          Width = 49
          Height = 196
          Align = alClient
          Color = clCream
          DataSource = srcDetailPortion
          ImeMode = imChinese
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CenterTopics2'
              Width = 29
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CTopicCode'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'detailCode'
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_TopicCode'
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ExpName_L1'
              Width = 114
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CofficientItem'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'amount'
              Visible = True
            end>
        end
        object Panel7: TPanel
          Left = 1
          Top = 230
          Width = 49
          Height = 29
          Align = alBottom
          TabOrder = 1
          object BitBtn3: TBitBtn
            Left = 150
            Top = 4
            Width = 70
            Height = 21
            Caption = #1575#1585#1587#1575#1604' '#1576#1607'Excel'
            TabOrder = 0
            OnClick = actExcelExecute
          end
          object BitBtn4: TBitBtn
            Left = 78
            Top = 4
            Width = 70
            Height = 21
            Hint = ' '
            Caption = #1580#1587#1578#1580#1608
            TabOrder = 1
            OnClick = actSearch_Execute
          end
          object BitBtn5: TBitBtn
            Left = 6
            Top = 4
            Width = 70
            Height = 21
            Caption = #1578#1585#1578#1610#1576
            TabOrder = 2
            OnClick = actSortExecute
          end
        end
        object SumGrid1: TSumGrid
          Left = 1
          Top = 210
          Width = 49
          Active = False
          Enable_Controls = True
          MasterGrid = DBGrid2
          FieldsName = 'CofficientItem;amount;'
        end
      end
      object ToolBar1: TToolBar
        Left = 1
        Top = 1
        Width = 830
        Height = 24
        Caption = 'ToolBar1'
        EdgeOuter = esNone
        ShowCaptions = True
        TabOrder = 2
        OnClick = ToolBar1Click
      end
      object pnlDetailCodeNotZero: TPanel
        Left = 441
        Top = 25
        Width = 390
        Height = 259
        Align = alRight
        TabOrder = 3
        Visible = False
        ExplicitHeight = 260
        object Label18: TLabel
          Left = 1
          Top = 1
          Width = 89
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = #1578#1601#1589#1740#1604#1740' '#1594#1740#1585' '#1575#1586' '#1589#1601#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object grdDetailCodeNotZero: TDBGrid
          Left = 1
          Top = 14
          Width = 388
          Height = 225
          Align = alClient
          Color = clCream
          DataSource = srcDetailCodeNotZero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'TopicCode'
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CTopicCode'
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CTopicCode2'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InfoID'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InfoName_L1'
              Width = 20
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Balance'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CTopicCode3'
              Width = 31
              Visible = True
            end>
        end
        object SumGrid3: TSumGrid
          Left = 1
          Top = 239
          Width = 388
          Hint = #1605#1575#1606#1583#1607' '#1581#1587#1575#1576
          Active = False
          Enable_Controls = True
          MasterGrid = grdDetailCodeNotZero
          FieldsName = 'Balance;'
        end
      end
      object Panel5: TPanel
        Left = 52
        Top = 25
        Width = 389
        Height = 259
        Align = alRight
        TabOrder = 4
        ExplicitHeight = 260
        object Label16: TLabel
          Left = 1
          Top = 1
          Width = 142
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = #1593#1606#1608#1575#1606' '#1604#1610#1587#1578' '#1575#1602#1604#1575#1605' '#1602#1575#1576#1604' '#1578#1587#1607#1610#1605
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBGrid1: TDBGrid
          Left = 1
          Top = 14
          Width = 387
          Height = 225
          Align = alClient
          Color = clCream
          DataSource = srcMasterPortion
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CTopicCode3'
              Width = 31
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CTopicCode2'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CTopicCode'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DetailCode'
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TopicCode'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InfoID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InfoName_L1'
              Width = 118
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Balance'
              Width = 62
              Visible = True
            end>
        end
        object SumGrid2: TSumGrid
          Left = 1
          Top = 239
          Width = 387
          Hint = #1605#1575#1606#1583#1607' '#1581#1587#1575#1576
          Active = False
          Enable_Controls = True
          MasterGrid = DBGrid1
          FieldsName = 'Balance;'
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 624
    inherited DataSetInsert1: TDataSetInsert
      Tag = -2
    end
    inherited DataSetPost1: TDataSetPost [2]
      Tag = -2
    end
    inherited DataSetCancel1: TDataSetCancel [3]
      Tag = -2
    end
    inherited DataSetDelete1_: TDataSetDelete [4]
      Tag = -2
    end
    object actFilter: TAction [5]
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actPrint: TAction [6]
      Caption = #1670#1575#1662
    end
    object actExcel: TAction [7]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1575#1603#1587#1604
      OnExecute = actExcelExecute
    end
    object actSort: TAction [8]
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    inherited DataSetEdit1: TDataSetEdit [9]
      Tag = -2
    end
    inherited actSearch_: TAction [10]
      OnExecute = _actSearchExecute
    end
    object ActMakeDoc: TAction
      Caption = #1589#1583#1608#1585' '#1587#1606#1583
      OnExecute = ActMakeDocExecute
    end
    object actShowForm: TAction
      Caption = #1606#1605#1575#1740#1588' '#1587#1606#1583
      OnExecute = actShowFormExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 688
    Top = 9
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
  object qryMasterPortion: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    AfterScroll = qryMasterPortionAfterScroll
    Parameters = <
      item
        Name = 'SecFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'SecTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 99999
      end
      item
        Name = 'PriFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PriTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2147483647
      end
      item
        Name = 'CompanyCodeFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'CompanyCodeTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2147483647
      end
      item
        Name = 'DocDateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0000/00/00'
      end
      item
        Name = 'DocDateTO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '9999/99/99'
      end
      item
        Name = 'aYearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 90
      end
      item
        Name = 'TopicCodeFrom'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = '0'
      end
      item
        Name = 'TopicCodeTo'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = '2147483647'
      end
      item
        Name = 'cTopicCodeFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'cTopicCodeTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2147483647
      end
      item
        Name = 'cTopicCode2From'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'cTopicCode2To'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 99999
      end
      item
        Name = 'cTopicCode3From'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'cTopicCode3To'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2147483647
      end
      item
        Name = 'DetailCodeFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'DetailCodeTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2147483647
      end
      item
        Name = 'CodeFrom'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end
      item
        Name = 'CodeTo'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 2147483647
      end>
    SQL.Strings = (
      
        'SELECT     Acc.Documents.TopicCode, Acc.Documents.DetailCode, Ac' +
        'c.Documents.CTopicCode, Acc.Documents.CTopicCode2, Acc.FormsInfo' +
        '.FormInfoID, Acc.FormsInfo.InfoID, '
      
        '                       Acc.FormsInfo.InfoName_L1, SUM(Acc.Docume' +
        'nts.Debt - Acc.Documents.Credit) AS Balance, Acc.Categories.Moee' +
        'nName_L1, Acc.CenterTopics.CTopicName_L1, '
      
        '                      Acc.CenterTopics2.CTopicName2_L1, Acc.Deta' +
        'ils.DetailName_L1, Acc.PortionRange.CTopicCode3, Acc.CTopicCode3' +
        '.CTopicName3_L1'
      'FROM   Acc.CTopicCode3 INNER JOIN'
      
        '                      Acc.PortionRange ON Acc.CTopicCode3.CTopic' +
        'Code3 = Acc.PortionRange.CTopicCode3 RIGHT OUTER JOIN'
      '                      Acc.CenterTopics INNER JOIN'
      '                      Acc.Categories INNER JOIN'
      
        '                      Acc.Documents ON Acc.Categories.TopicCode ' +
        '= Acc.Documents.TopicCode INNER JOIN'
      
        '                      Acc.Details ON Acc.Documents.DetailCode = ' +
        'Acc.Details.DetailCode ls. ON '
      
        '                      Acc.CenterTopics.CTopicCode = Acc.Document' +
        's.CTopicCode INNER JOIN'
      
        '                      Acc.CenterTopics2 ON Acc.Documents.CTopicC' +
        'ode2 = Acc.CenterTopics2.CTopicCode2 INNER JOIN'
      
        '                      Acc.DocGroups ON Acc.Documents.Serial = Ac' +
        'c.DocGroups.Serial AND Acc.Documents.YearID = Acc.DocGroups.Year' +
        'ID AND '
      
        '                      Acc.Documents.CompanyCode = Acc.DocGroups.' +
        'CompanyCode ON Acc.CTopicCode3.CTopicCode3 = Acc.Documents.ctopi' +
        'ccode3 AND '
      
        '                      Acc.PortionRange.YearID = Acc.Documents.Ye' +
        'arID AND Acc.PortionRange.CompanyCode = Acc.Documents.CompanyCod' +
        'e AND '
      
        '                      Acc.PortionRange.TopicCode = Acc.Documents' +
        '.TopicCode AND Acc.PortionRange.DetailCode = Acc.Documents.Detai' +
        'lCode AND '
      
        '                      Acc.PortionRange.CTopicCode = Acc.Document' +
        's.CTopicCode AND Acc.PortionRange.CTopicCode2 = Acc.Documents.CT' +
        'opicCode2 LEFT OUTER JOIN'
      
        '                      Acc.FormsInfo ON Acc.PortionRange.FormInfo' +
        'ID = Acc.FormsInfo.FormInfoID'
      
        'WHERE (acc.DocGroups.SecondaryDocNo BETWEEN :SecFrom AND :SecTo)' +
        ' '
      
        '                     AND (acc.DocGroups.PrimaryDocNo BETWEEN :Pr' +
        'iFrom AND :PriTo) '
      
        '                     AND (acc.Documents.CompanyCode between :Com' +
        'panyCodeFrom AND :CompanyCodeTo)'
      
        '                     AND (acc.DocGroups.DocDate BETWEEN :DocDate' +
        'From AND :DocDateTO) '
      '                     AND (acc.DocGroups.YearId = :aYearID )'
      
        '                     AND (acc.Documents.TopicCode between :Topic' +
        'CodeFrom and :TopicCodeTo )'
      
        '                     AND (acc.Documents.cTopicCode between :cTop' +
        'icCodeFrom and :cTopicCodeTo )'
      
        '                     AND (acc.Documents.cTopicCode2 between :cTo' +
        'picCode2From and :cTopicCode2To )'
      
        '                     AND (acc.Documents.cTopicCode3 between :cTo' +
        'picCode3From and :cTopicCode3To )'
      
        '                     AND (acc.Documents.DetailCode between :Deta' +
        'ilCodeFrom and :DetailCodeTo )'
      
        '                     AND (ISNULL(acc.FormsInfo.InfoID,0) BETWEEN' +
        ' :CodeFrom AND :CodeTo )'
      
        'GROUP BY Acc.Documents.TopicCode, Acc.Documents.DetailCode, Acc.' +
        'Documents.CTopicCode, Acc.Documents.CTopicCode2, Acc.FormsInfo.F' +
        'ormInfoID, Acc.FormsInfo.InfoID, '
      
        '                       Acc.FormsInfo.InfoName_L1, Acc.Categories' +
        '.MoeenName_L1, Acc.CenterTopics.CTopicName_L1, Acc.CenterTopics2' +
        '.CTopicName2_L1, Acc.Details.DetailName_L1, Acc.PortionRange.CTo' +
        'picCode3, '
      '                      Acc.CTopicCode3.CTopicName3_L1'
      
        'HAVING      (SUM(Acc.Documents.Debt - Acc.Documents.Credit) <> 0' +
        ')')
    Left = 491
    Top = 207
    object qryMasterPortionTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1581#1587#1575#1576
      FieldName = 'TopicCode'
    end
    object qryMasterPortionDetailCode: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1601#1589#1610#1604#1610
      FieldName = 'DetailCode'
    end
    object qryMasterPortionCTopicCode: TIntegerField
      Tag = 3
      DisplayLabel = #1605'.'#1607'1'
      FieldName = 'CTopicCode'
    end
    object qryMasterPortionCTopicCode2: TIntegerField
      Tag = 3
      DisplayLabel = #1605'.'#1607'2'
      FieldName = 'CTopicCode2'
    end
    object qryMasterPortionFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryMasterPortionInfoID: TWordField
      Tag = 3
      DisplayLabel = #1603#1583' '#1606#1581#1608#1607' '#1578#1587#1607#1610#1605
      FieldName = 'InfoID'
    end
    object qryMasterPortionInfoName_L1: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1606#1581#1608#1607' '#1578#1587#1607#1610#1605
      FieldName = 'InfoName_L1'
      Size = 150
    end
    object qryMasterPortionBalance: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1606#1583#1607' '#1581#1587#1575#1576
      FieldName = 'Balance'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryMasterPortionMoeenName_L1: TStringField
      FieldName = 'MoeenName_L1'
      Size = 100
    end
    object qryMasterPortionCTopicName_L1: TStringField
      FieldName = 'CTopicName_L1'
      Size = 120
    end
    object qryMasterPortionCTopicName2_L1: TStringField
      FieldName = 'CTopicName2_L1'
      Size = 120
    end
    object qryMasterPortionDetailName_L1: TStringField
      FieldName = 'DetailName_L1'
      Size = 150
    end
    object qryMasterPortionCTopicCode3: TIntegerField
      DisplayLabel = #1605'.'#1607'3'
      FieldName = 'CTopicCode3'
    end
    object qryMasterPortionCTopicName3_L1: TStringField
      FieldName = 'CTopicName3_L1'
      Size = 120
    end
  end
  object srcMasterPortion: TDataSource
    DataSet = qryMasterPortion
    Left = 331
    Top = 207
  end
  object qryDetailPortion: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    BeforeOpen = qryDetailPortionBeforeOpen
    Parameters = <
      item
        Name = 'detail'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'remain'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'FormInfoID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'subPortionCunt'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'yearId'
        DataType = ftWideString
        Size = 2
        Value = '90'
      end
      item
        Name = 'remain2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT'#9':detail AS detailCode, pt.FormInfoID, '
      #9#9'pt.CTopicCode, '
      #9#9'isnull(pti.CTopicCode2,0) AS CenterTopics2, '
      #9#9'ISNULL(PTI.CofficientItem, '#9'pt.Cofficient) AS CofficientItem, '
      #9#9'Acc.CenterTopics.CTopicName_L1, '
      #9#9'Acc.CenterTopics2.CTopicName2_L1, '
      #9#9'Acc.CenterTopics.CTopicName_L1 + '#39' _ '#39' '
      
        #9#9#9'+ ISNULL(Acc.CenterTopics2.CTopicName2_L1, '#39#39') AS ExpName_L1,' +
        ' '
      #9#9'ROUND((:remain * pt.Cofficient/ SPT.SumCofficient)'
      
        #9#9#9'* ISNULL(PTI.CofficientItem ,1 ) /ISNULL(SPTI.SumCofficientIt' +
        'em ,1 )'
      #9#9', 0) AS amount'
      ''
      'FROM'#9'Acc.CenterTopics RIGHT OUTER JOIN'
      #9#9'Acc.PortionTable PT INNER JOIN'
      
        #9#9'('#9'select  FormInfoID , yearid ,PortionCunt,sum(Cofficient)as S' +
        'umCofficient  '
      #9#9#9'from Acc.PortionTable'
      #9#9#9'group by  FormInfoID , yearid , PortionCunt'
      #9#9')SPT  on PT.FormInfoID = SPT.FormInfoID '
      #9#9#9#9'and PT.YearID = SPT.YearID '
      #9#9#9#9'AND PT.PortionCunt = SPT.PortionCunt  Left Outer Join '
      
        #9#9'(SELECT CofficientID , Sum(CofficientItem) as SumCofficientIte' +
        'm'
      #9#9#9'From Acc.PortionTableItems'
      #9#9#9'Group by CofficientID'
      ''
      #9#9') AS SPTI ON PT.CofficientID = SPTI.CofficientID  '
      #9#9'ON Acc.CenterTopics.CTopicCode = pt.CTopicCode LEFT OUTER JOIN'
      #9#9'Acc.CenterTopics2 RIGHT OUTER JOIN'
      
        #9#9'Acc.PortionTableItems AS PTI ON Acc.CenterTopics2.CTopicCode2 ' +
        '= PTI.CTopicCode2 ON '
      #9#9'pt.CofficientID = PTI.CofficientID'
      'WHERE'#9'(pt.FormInfoID = :FormInfoID) AND  '
      #9#9'(pt.PortionCunt = :subPortionCunt) and'
      #9#9'(pt.YearID = :yearId) AND '
      #9#9'ROUND((:remain2 * pt.Cofficient/ SPT.SumCofficient)'
      
        #9#9#9'* ISNULL(PTI.CofficientItem ,1 ) /ISNULL(SPTI.SumCofficientIt' +
        'em ,1 )'
      #9#9', 0) <>0'
      ' '
      '')
    Left = 134
    Top = 242
    object qryDetailPortionFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryDetailPortionCTopicCode: TIntegerField
      Tag = 3
      DisplayLabel = #1605'.'#1607'1'
      FieldName = 'CTopicCode'
    end
    object qryDetailPortion_TopicCode: TIntegerField
      Tag = 3
      DisplayLabel = #1581#1587#1575#1576
      FieldKind = fkLookup
      FieldName = '_TopicCode'
      LookupDataSet = qryFindTopicCode
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'PortionTopicCode'
      KeyFields = 'CTopicCode'
      Lookup = True
    end
    object qryDetailPortionCenterTopics2: TIntegerField
      Tag = 3
      DisplayLabel = #1605'.'#1607'2'
      FieldName = 'CenterTopics2'
      ReadOnly = True
    end
    object qryDetailPortion_TopicName: TStringField
      Tag = 3
      FieldKind = fkLookup
      FieldName = '_TopicName'
      LookupDataSet = qryFindTopicCode
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'MoeenName_L1'
      KeyFields = 'CTopicCode'
      Size = 100
      Lookup = True
    end
    object qryDetailPortionCTopicName_L1: TStringField
      Tag = 3
      FieldName = 'CTopicName_L1'
      Size = 120
    end
    object qryDetailPortionCTopicName2_L1: TStringField
      Tag = 3
      FieldName = 'CTopicName2_L1'
      Size = 120
    end
    object qryDetailPortionExpName_L1: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1585#1603#1586#1607#1586#1610#1606#1607' (1'#1608'2)'
      FieldName = 'ExpName_L1'
      ReadOnly = True
      Size = 242
    end
    object qryDetailPortionCofficientItem: TFloatField
      Tag = 3
      DisplayLabel = #1590#1585#1610#1576'/'#1605#1602#1583#1575#1585
      FieldName = 'CofficientItem'
    end
    object qryDetailPortionamount: TFloatField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'amount'
      ReadOnly = True
      currency = True
    end
    object qryDetailPortiondetailCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'detailCode'
      ReadOnly = True
      Size = 15
    end
  end
  object srcDetailPortion: TDataSource
    DataSet = qryDetailPortion
    Left = 34
    Top = 231
  end
  object qryFindTopicCode: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TopicCode'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT    acc.CenterTopicRange.CTopicCode, acc.PortionTopicCode.' +
        'PortionTopicCode, acc.Categories.MoeenName_L1'
      'FROM      acc.CenterTopicRange INNER JOIN'
      
        '           acc.PortionTopicCode ON  acc.CenterTopicRange.TopicCo' +
        'de =  acc.PortionTopicCode.PortionTopicCode LEFT OUTER JOIN'
      
        '           acc.Categories ON  acc.PortionTopicCode.PortionTopicC' +
        'ode =  acc.Categories.TopicCode'
      'WHERE     (acc.PortionTopicCode.TopicCode = :TopicCode )')
    Left = 58
    Top = 303
  end
  object qryInsertPortion: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 90
      end>
    SQL.Strings = (
      'SELECT     acc.PortionRange.*'
      'FROM         acc.PortionRange'
      'where yearid = :YearID')
    Left = 498
    Top = 295
    object qryInsertPortionID: TIntegerField
      FieldName = 'ID'
    end
    object qryInsertPortionFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryInsertPortionTopicCode: TLargeintField
      FieldName = 'TopicCode'
    end
    object qryInsertPortionDetailCode: TIntegerField
      FieldName = 'DetailCode'
    end
    object qryInsertPortionCTopicCode: TIntegerField
      FieldName = 'CTopicCode'
    end
    object qryInsertPortionCTopicCode2: TIntegerField
      FieldName = 'CTopicCode2'
    end
    object qryInsertPortionCTopicCode3: TIntegerField
      FieldName = 'CTopicCode3'
    end
  end
  object qry_DocTypes: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         [acc].[DocTypes]')
    Left = 384
    Top = 304
  end
  object qry_Company: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT  * FROM  acc.Companies'
      'ORDER BY CompanyCode')
    Left = 498
    Top = 8
    object qry_CompanyCompanyCode: TIntegerField
      FieldName = 'CompanyCode'
    end
    object qry_CompanyLevelID: TIntegerField
      FieldName = 'LevelID'
    end
    object qry_CompanyMakeDate: TDateTimeField
      FieldName = 'MakeDate'
    end
    object qry_CompanyCompanyName_L1: TStringField
      FieldName = 'CompanyName_L1'
      Size = 150
    end
    object qry_CompanyCompanyName_L2: TStringField
      FieldName = 'CompanyName_L2'
      Size = 150
    end
    object qry_CompanyComment_L1: TStringField
      FieldName = 'Comment_L1'
      Size = 255
    end
    object qry_CompanyComment_L2: TStringField
      FieldName = 'Comment_L2'
      Size = 255
    end
  end
  object src_Documents: TDataSource
    DataSet = qry_Documents
    Left = 184
    Top = 121
  end
  object src_DocGroups: TDataSource
    DataSet = qry_DocGroups
    Left = 72
    Top = 120
  end
  object qry_DocGroups: TADOQuery
    Tag = 15
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    AfterInsert = qry_DocGroupsAfterInsert
    Parameters = <>
    SQL.Strings = (
      'Select top 0 *  from acc.Docgroups'
      'Order by SecondaryDocNo')
    Left = 40
    Top = 121
    object qry_DocGroupsSerial: TIntegerField
      DisplayLabel = #1587#1585#1610#1575#1604' '#1587#1606#1583' '
      FieldName = 'Serial'
    end
    object qry_DocGroupsCompanyCode: TIntegerField
      Tag = -1
      DisplayLabel = #1603#1583' '#1608#1575#1581#1583' '
      FieldName = 'CompanyCode'
    end
    object qry_DocGroupsSecondaryDocNo: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1593#1610
      FieldName = 'SecondaryDocNo'
    end
    object qry_DocGroupsPrimaryDocNo: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1575#1589#1604#1610' '#1587#1606#1583' '
      FieldName = 'PrimaryDocNo'
    end
    object qry_DocGroupsDocDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1587#1606#1583' '
      FieldName = 'DocDate'
      EditMask = '!9999/99/99;1;_'
      FixedChar = True
      Size = 10
    end
    object qry_DocGroupsDocTypeCode: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'DocTypeCode'
    end
    object qry_DocGroupsStatus: TWordField
      Tag = -1
      DisplayLabel = #1608#1590#1593#1610#1578' '#1587#1606#1583' '
      FieldName = 'Status'
      OnGetText = qry_DocGroupsStatusGetText
    end
    object qry_DocGroupsDocTopic: TStringField
      DisplayLabel = #1605#1608#1590#1608#1593' '#1603#1604#1610' '#1587#1606#1583
      FieldName = 'DocTopic_L1'
      Size = 150
    end
    object qry_DocGroupsDocTopic_L2: TStringField
      Tag = -1
      FieldName = 'DocTopic_L2'
      Size = 150
    end
    object qry_DocGroupsAttachFolderName: TStringField
      Tag = -1
      DisplayLabel = #1606#1575#1605' '#1601#1575#1610#1604' '#1662#1610#1608#1587#1578#1610
      FieldName = 'AttachFolderName'
      Size = 120
    end
    object qry_DocGroupsDocNote_L2: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610' '#1587#1606#1583'2'
      FieldName = 'DocNote_L2'
      Size = 6000
    end
    object qry_DocGroups_CompanyName: TStringField
      Tag = -1
      FieldKind = fkLookup
      FieldName = '_CompanyName_L1'
      LookupKeyFields = 'CompanyCode'
      LookupResultField = 'CompanyName_L1'
      KeyFields = 'CompanyCode'
      LookupCache = True
      Size = 120
      Lookup = True
    end
    object qry_DocGroups_DocTypeName: TStringField
      Tag = -1
      FieldKind = fkLookup
      FieldName = '_DocTypeName_L1'
      LookupDataSet = qry_DocTypes
      LookupKeyFields = 'DocTypeCode'
      LookupResultField = 'DocTypeName_L1'
      KeyFields = 'DocTypeCode'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qry_DocGroupsMakeDate: TDateTimeField
      Tag = -1
      FieldName = 'MakeDate'
    end
    object qry_DocGroups_DocTypeName_L2: TStringField
      FieldKind = fkLookup
      FieldName = '_DocTypeName_L2'
      LookupDataSet = qry_DocTypes
      LookupKeyFields = 'DocTypeCode'
      LookupResultField = 'DocTypeName_L2'
      KeyFields = 'DocTypeCode'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qry_DocGroupsUserID: TIntegerField
      DisplayLabel = #1578#1606#1590#1610#1605' '#1603#1606#1606#1583#1607
      FieldName = 'UserID'
    end
    object qry_DocGroupsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qry_DocGroupsDocNote_L1: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610' '#1587#1606#1583
      FieldName = 'DocNote_L1'
      Size = 6000
    end
  end
  object qry_Documents: TADOQuery
    Tag = 15
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'LenCodeKol'
        DataType = ftString
        Size = 1
        Value = '2'
      end
      item
        Name = 'Serial'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 46
      end>
    SQL.Strings = (
      
        'select *, CASE WHEN Debt <>0THEN 1 ELSE 2 END  as BedBes , left(' +
        'topicCode,:LenCodeKol) as codeKol'
      'from acc.documents'
      'WHERE     (Serial = :Serial)'
      
        'order by CASE WHEN Debt <>0THEN 1 ELSE 2 END ,TopicCode,DetailCo' +
        'de,CTopicCode')
    Left = 151
    Top = 119
    object qry_DocumentsID: TIntegerField
      Tag = -1
      DisplayLabel = #1588#1605#1575#1585#1606#1583#1607' '
      FieldName = 'ID'
    end
    object qry_DocumentsSerial: TIntegerField
      DisplayLabel = #1587#1585#1610#1575#1604' '#1587#1606#1583
      FieldName = 'Serial'
    end
    object qry_DocumentsTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1593#1740#1606
      FieldName = 'TopicCode'
    end
    object qry_DocumentsDetailCode: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1601#1589#1610#1604#1610
      FieldName = 'DetailCode'
    end
    object qry_DocumentsCTopicCode: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1601#1589#1740#1604#1740'2'
      FieldName = 'CTopicCode'
    end
    object qry_DocumentsCTopicCode2: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1601#1589#1740#1604#1740'2'#39' 2'
      FieldName = 'CTopicCode2'
    end
    object qry_DocumentsComment: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'Comment_L1'
      Size = 700
    end
    object qry_DocumentsComment_L2: TStringField
      DisplayLabel = #1588#1585#1581' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610'2'
      FieldName = 'Comment_L2'
      Size = 200
    end
    object qry_DocumentsRow: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldName = 'Row'
    end
    object qry_DocumentsDebt: TFMTBCDField
      Tag = 3
      DisplayLabel = #1576#1583#1607#1603#1575#1585
      FieldName = 'Debt'
      currency = True
      Precision = 38
    end
    object qry_DocumentsCredit: TFMTBCDField
      Tag = 3
      DisplayLabel = #1576#1587#1578#1575#1606#1603#1575#1585
      FieldName = 'Credit'
      currency = True
      Precision = 38
    end
    object qry_DocumentsAidDocNo: TFMTBCDField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1705#1605#1705#1740
      FieldName = 'AidDocNo'
      Precision = 20
      Size = 4
    end
    object qry_DocumentsAidDocdate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1603#1605#1603#1610
      FieldName = 'AidDocdate'
      EditMask = '!9999/99/99;1;_'
      FixedChar = True
      Size = 10
    end
    object qry_DocumentsAidAmount: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1603#1605#1603#1610' '
      FieldName = 'AidAmount'
    end
    object qry_DocumentsBudgetTopicID: TIntegerField
      DisplayLabel = #1603#1583' '#1576#1608#1583#1580#1607' '
      FieldName = 'BudgetTopicID'
    end
    object qry_DocumentsBudgetID: TIntegerField
      DisplayLabel = #1603#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1576#1608#1583#1580#1607' '
      FieldName = 'BudgetID'
    end
    object qry_DocumentsReferenceNo: TIntegerField
      DisplayLabel = #1593#1591#1601' - '#1593#1583#1583#1610
      FieldName = 'ReferenceNo'
    end
    object qry_DocumentsReferenceTxt: TStringField
      DisplayLabel = #1593#1591#1601' - '#1605#1578#1606#1610
      FieldName = 'ReferenceTxt'
      Size = 15
    end
    object qry_DocumentsReferenceDate: TStringField
      DisplayLabel = #1593#1591#1601' - '#1578#1575#1585#1610#1582' '
      FieldName = 'ReferenceDate'
      FixedChar = True
      Size = 10
    end
    object qry_DocumentsProjectID: TIntegerField
      DisplayLabel = #1603#1583' '#1591#1585#1581' '#1608' '#1662#1585#1608#1688#1607' '#1576#1608#1583#1580#1607' '
      FieldName = 'ProjectID'
    end
    object qry_DocumentsReferenceCheck: TWordField
      DisplayLabel = #1593#1591#1601' - '#1603#1606#1578#1585#1604#1610
      FieldName = 'ReferenceCheck'
    end
    object qry_Documents_MoeenName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576
      FieldKind = fkLookup
      FieldName = '_MoeenName_L1'
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName_l1'
      KeyFields = 'TopicCode'
      LookupCache = True
      ReadOnly = True
      Size = 80
      Lookup = True
    end
    object qry_Documents_DetailName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576' '#1578#1601#1589#1610#1604#1610
      FieldKind = fkLookup
      FieldName = '_DetailName_L1'
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName_l1'
      KeyFields = 'DetailCode'
      LookupCache = True
      ReadOnly = True
      Size = 80
      Lookup = True
    end
    object qry_Documents_CtopicName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1578#1601#1589#1610#1604#1610'2'#39' 1'
      FieldKind = fkLookup
      FieldName = '_CtopicName_L1'
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName_l1'
      KeyFields = 'CTopicCode'
      LookupCache = True
      ReadOnly = True
      Size = 80
      Lookup = True
    end
    object qry_Documents_CTopicName2: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1578#1601#1589#1610#1604#1610'2'#39' 2'
      FieldKind = fkLookup
      FieldName = '_CTopicName2_L1'
      LookupKeyFields = 'CTopicCode2'
      LookupResultField = 'CTopicName2_l1'
      KeyFields = 'CTopicCode2'
      LookupCache = True
      ReadOnly = True
      Size = 80
      Lookup = True
    end
    object qry_Documents_Radif: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldKind = fkCalculated
      FieldName = '_Radif'
      LookupCache = True
      ReadOnly = True
      Calculated = True
    end
    object qry_Documents_HasAid: TIntegerField
      FieldKind = fkLookup
      FieldName = '_HasAid'
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'InfoID'
      KeyFields = 'TopicCode'
      LookupCache = True
      ReadOnly = True
      Lookup = True
    end
    object qry_DocumentsBedBes: TIntegerField
      FieldName = 'BedBes'
    end
    object qry_DocumentscodeKol: TStringField
      FieldName = 'codeKol'
      Size = 8000
    end
    object qry_Documents_KolName: TStringField
      FieldKind = fkLookup
      FieldName = '_KolName'
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName_L1'
      KeyFields = 'codeKol'
      LookupCache = True
      FixedChar = True
      Size = 100
      Lookup = True
    end
    object qry_Documents_HasBudget: TIntegerField
      FieldKind = fkLookup
      FieldName = '_HasBudget'
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'InfoID'
      KeyFields = 'TopicCode'
      LookupCache = True
      Lookup = True
    end
    object qry_Documents_BudgetTopicID: TIntegerField
      FieldKind = fkLookup
      FieldName = '_BudgetTopicID'
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'BudgetTopicID'
      KeyFields = 'TopicCode'
      LookupCache = True
      Lookup = True
    end
    object qry_Documents_ProjectID: TIntegerField
      FieldKind = fkLookup
      FieldName = '_ProjectID'
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'ProjectID'
      KeyFields = 'TopicCode'
      LookupCache = True
      Lookup = True
    end
    object qry_Documents_Essence: TIntegerField
      FieldKind = fkLookup
      FieldName = '_Essence'
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'Essence'
      KeyFields = 'TopicCode'
      LookupCache = True
      Lookup = True
    end
    object qry_Documents_RepEssence: TIntegerField
      FieldKind = fkLookup
      FieldName = '_RepEssence'
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'ReactionForRepEssence'
      KeyFields = 'TopicCode'
      LookupCache = True
      Lookup = True
    end
    object qry_Documents_LevelID: TIntegerField
      FieldKind = fkLookup
      FieldName = '_LevelID'
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'LevelID'
      KeyFields = 'TopicCode'
      LookupCache = True
      Lookup = True
    end
    object qry_Documents_LenghtTopic: TIntegerField
      FieldKind = fkLookup
      FieldName = '_LenghtTopic'
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'CodeLength'
      KeyFields = 'TopicCode'
      LookupCache = True
      Lookup = True
    end
    object qry_DocumentsCompanyCode: TIntegerField
      FieldName = 'CompanyCode'
    end
    object qry_DocumentsAuditDoPrint: TWordField
      FieldName = 'AuditDoPrint'
    end
    object qry_Documentsctopiccode3: TIntegerField
      FieldName = 'ctopiccode3'
    end
    object qry_DocumentsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qry_DocumentsRelatedID: TIntegerField
      FieldName = 'RelatedID'
    end
  end
  object qryDetailCodeNotZero: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    AfterScroll = qryMasterPortionAfterScroll
    Parameters = <
      item
        Name = 'SecFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'SecTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 99999
      end
      item
        Name = 'PriFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PriTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2147483647
      end
      item
        Name = 'CompanyCodeFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'CompanyCodeTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2147483647
      end
      item
        Name = 'DocDateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0000/00/00'
      end
      item
        Name = 'DocDateTO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '9999/99/99'
      end
      item
        Name = 'aYearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 90
      end
      item
        Name = 'TopicCodeFrom'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = '0'
      end
      item
        Name = 'TopicCodeTo'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = '2147483647'
      end
      item
        Name = 'cTopicCodeFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'cTopicCodeTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2147483647
      end
      item
        Name = 'cTopicCode2From'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'cTopicCode2To'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 99999
      end
      item
        Name = 'cTopicCode3From'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'cTopicCode3To'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2147483647
      end
      item
        Name = 'DetailCodeFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'DetailCodeTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2147483647
      end
      item
        Name = 'CodeFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'CodeTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2147483647
      end>
    SQL.Strings = (
      ''
      ''
      
        'SELECT        Acc.Documents.TopicCode, Acc.Documents.CTopicCode,' +
        ' Acc.Documents.CTopicCode2, Acc.FormsInfo.FormInfoID, '
      
        '            Acc.FormsInfo.InfoID, Acc.FormsInfo.InfoName_L1, SUM' +
        '(Acc.Documents.Debt - Acc.Documents.Credit) AS Balance, '
      
        '            Acc.Categories.MoeenName_L1, Acc.CenterTopics.CTopic' +
        'Name_L1, Acc.CenterTopics2.CTopicName2_L1, '
      
        '            Acc.PortionRange.CTopicCode3, Acc.CTopicCode3.CTopic' +
        'Name3_L1'
      'FROM   Acc.CTopicCode3 INNER JOIN'
      
        '            Acc.PortionRange ON Acc.CTopicCode3.CTopicCode3 = Ac' +
        'c.PortionRange.CTopicCode3 RIGHT OUTER JOIN'
      '            Acc.CenterTopics INNER JOIN'
      '            Acc.Categories INNER JOIN'
      
        '            Acc.Documents ON Acc.Categories.TopicCode = Acc.Docu' +
        'ments.TopicCode INNER JOIN'
      
        '            Acc.Details ON Acc.Documents.DetailCode = Acc.Detail' +
        's.DetailCode  ON '
      
        '            Acc.CenterTopics.CTopicCode = Acc.Documents.CTopicCo' +
        'de INNER JOIN'
      
        '            Acc.CenterTopics2 ON Acc.Documents.CTopicCode2 = Acc' +
        '.CenterTopics2.CTopicCode2 INNER JOIN'
      
        '            Acc.DocGroups ON Acc.Documents.Serial = Acc.DocGroup' +
        's.Serial AND Acc.Documents.YearID = Acc.DocGroups.YearID AND '
      
        '            Acc.Documents.CompanyCode = Acc.DocGroups.CompanyCod' +
        'e ON Acc.CTopicCode3.CTopicCode3 = Acc.Documents.ctopiccode3 AND' +
        ' '
      
        '            Acc.PortionRange.YearID = Acc.Documents.YearID AND A' +
        'cc.PortionRange.CompanyCode = Acc.Documents.CompanyCode AND '
      
        '            Acc.PortionRange.TopicCode = Acc.Documents.TopicCode' +
        ' AND Acc.PortionRange.DetailCode = Acc.Documents.DetailCode AND '
      
        '            Acc.PortionRange.CTopicCode = Acc.Documents.CTopicCo' +
        'de AND Acc.PortionRange.CTopicCode2 = Acc.Documents.CTopicCode2 ' +
        'LEFT OUTER JOIN'
      
        '            Acc.FormsInfo ON Acc.PortionRange.FormInfoID = Acc.F' +
        'ormsInfo.FormInfoID'
      
        'WHERE        (acc.DocGroups.SecondaryDocNo BETWEEN :SecFrom AND ' +
        ':SecTo) '
      
        '            AND (acc.DocGroups.PrimaryDocNo BETWEEN :PriFrom AND' +
        ' :PriTo) '
      
        '            AND (acc.Documents.CompanyCode between :CompanyCodeF' +
        'rom AND :CompanyCodeTo)'
      
        '            AND (acc.DocGroups.DocDate BETWEEN :DocDateFrom AND ' +
        ':DocDateTO) '
      '            AND (acc.DocGroups.YearId = :aYearID )'
      
        '            AND (acc.Documents.TopicCode between :TopicCodeFrom ' +
        'and :TopicCodeTo )'
      
        '            AND (acc.Documents.cTopicCode between :cTopicCodeFro' +
        'm and :cTopicCodeTo )'
      
        '            AND (acc.Documents.cTopicCode2 between :cTopicCode2F' +
        'rom and :cTopicCode2To )'
      
        '            AND (acc.Documents.cTopicCode3 between :cTopicCode3F' +
        'rom and :cTopicCode3To )'
      
        '            AND (acc.Documents.DetailCode between :DetailCodeFro' +
        'm and :DetailCodeTo )'
      
        '            AND (ISNULL(acc.FormsInfo.InfoID,0) BETWEEN :CodeFro' +
        'm AND :CodeTo )'
      
        'GROUP BY    Acc.Documents.TopicCode, Acc.Documents.CTopicCode, A' +
        'cc.Documents.CTopicCode2, Acc.FormsInfo.FormInfoID, '
      
        '            Acc.FormsInfo.InfoID, Acc.FormsInfo.InfoName_L1, Acc' +
        '.Categories.MoeenName_L1, Acc.CenterTopics.CTopicName_L1, '
      
        '            Acc.CenterTopics2.CTopicName2_L1,  Acc.PortionRange.' +
        'CTopicCode3, '
      '            Acc.CTopicCode3.CTopicName3_L1'
      
        'HAVING      (SUM(Acc.Documents.Debt - Acc.Documents.Credit) <> 0' +
        ')')
    Left = 747
    Top = 215
    object qryDetailCodeNotZeroTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1581#1587#1575#1576
      FieldName = 'TopicCode'
    end
    object qryDetailCodeNotZeroCTopicCode: TIntegerField
      Tag = 3
      DisplayLabel = #1605'.'#1607'1'
      FieldName = 'CTopicCode'
    end
    object qryDetailCodeNotZeroCTopicCode2: TIntegerField
      Tag = 3
      DisplayLabel = #1605'.'#1607'2'
      FieldName = 'CTopicCode2'
    end
    object qryDetailCodeNotZeroFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryDetailCodeNotZeroInfoID: TWordField
      Tag = 3
      DisplayLabel = #1603#1583' '#1606#1581#1608#1607' '#1578#1587#1607#1610#1605
      FieldName = 'InfoID'
    end
    object qryDetailCodeNotZeroInfoName_L1: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1606#1581#1608#1607' '#1578#1587#1607#1610#1605
      FieldName = 'InfoName_L1'
      Size = 150
    end
    object qryDetailCodeNotZeroBalance: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1606#1583#1607' '#1581#1587#1575#1576
      FieldName = 'Balance'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryDetailCodeNotZeroMoeenName_L1: TStringField
      FieldName = 'MoeenName_L1'
      Size = 100
    end
    object qryDetailCodeNotZeroCTopicName_L1: TStringField
      FieldName = 'CTopicName_L1'
      Size = 120
    end
    object qryDetailCodeNotZeroCTopicName2_L1: TStringField
      FieldName = 'CTopicName2_L1'
      Size = 120
    end
    object qryDetailCodeNotZeroCTopicCode3: TIntegerField
      DisplayLabel = #1605'.'#1607'3'
      FieldName = 'CTopicCode3'
    end
    object qryDetailCodeNotZeroCTopicName3_L1: TStringField
      FieldName = 'CTopicName3_L1'
      Size = 120
    end
  end
  object srcDetailCodeNotZero: TDataSource
    DataSet = qryDetailCodeNotZero
    Left = 739
    Top = 303
  end
end
