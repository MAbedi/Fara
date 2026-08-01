inherited StuffCodingMachineryF: TStuffCodingMachineryF
  Left = 456
  Top = 133
  ActiveControl = cmbGroups
  Caption = #1588#1606#1575#1587#1606#1575#1605#1607' '#1582#1608#1583#1585#1608
  ClientHeight = 586
  ClientWidth = 828
  OnResize = FormResize
  ExplicitWidth = 844
  ExplicitHeight = 625
  TextHeight = 13
  inherited Panel2: TPanel [0]
    Width = 828
    ExplicitWidth = 832
    inherited ImgTemplate: TImage
      Left = 827
      ExplicitLeft = 827
    end
    inherited lblCaption: TLabel
      Left = 710
      Height = 16
      ExplicitLeft = 710
    end
  end
  inherited Panel3: TPanel [1]
    Top = 117
    Width = 828
    Height = 428
    ExplicitTop = 117
    ExplicitWidth = 832
    ExplicitHeight = 429
    object pgc1: TPageControl
      Left = 2
      Top = 2
      Width = 828
      Height = 425
      ActivePage = ts3
      Align = alClient
      TabOrder = 0
      OnChange = pgc1Change
      object ts1: TTabSheet
        Caption = #1588#1606#1575#1587#1606#1575#1605#1607' '#1605#1575#1588#1610#1606
        object pnl2: TPanel
          Left = 0
          Top = 0
          Width = 820
          Height = 397
          Align = alClient
          Color = cl3DLight
          ParentBackground = False
          TabOrder = 0
          object pnlST: TPanel
            Left = 1
            Top = 213
            Width = 818
            Height = 113
            Align = alTop
            BevelOuter = bvLowered
            BorderWidth = 1
            TabOrder = 3
            DesignSize = (
              814
              113)
            object Label1: TLabel
              Left = 716
              Top = 16
              Width = 48
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1578#1608#1604#1610#1583' '#1603#1606#1606#1583#1607
              FocusControl = edtsd2
              ExplicitLeft = 724
            end
            object Label2: TLabel
              Left = 716
              Top = 44
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1606#1608#1593' '#1587#1608#1582#1578
              FocusControl = edtsd2
              ExplicitLeft = 724
            end
            object Label3: TLabel
              Left = 716
              Top = 74
              Width = 75
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1603#1575#1585#1576#1585#1610' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
              FocusControl = edtsd3
              ExplicitLeft = 724
            end
            object Label4: TLabel
              Left = 334
              Top = 16
              Width = 44
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1606#1608#1593' '#1582#1608#1583#1585#1608
              FocusControl = edtsd5
              ExplicitLeft = 342
            end
            object Label5: TLabel
              Left = 334
              Top = 44
              Width = 68
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1605#1575#1604#1603#1610#1578
              FocusControl = edtsd5
              ExplicitLeft = 342
            end
          end
          object pnlSD: TPanel
            Left = 1
            Top = 93
            Width = 814
            Height = 88
            Align = alTop
            BevelOuter = bvLowered
            TabOrder = 1
            ExplicitWidth = 818
            DesignSize = (
              814
              88)
            object lblLblsd2: TLabel
              Left = 560
              Top = 37
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1588#1605#1575#1585#1607' '#1576#1583#1606#1607
              FocusControl = edtsd2
              ExplicitLeft = 568
            end
            object lblLblsd3: TLabel
              Left = 560
              Top = 65
              Width = 56
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1588#1605#1575#1585#1607' '#1605#1608#1578#1608#1585
              FocusControl = edtsd3
              ExplicitLeft = 568
            end
            object lblLblsd1: TLabel
              Left = 560
              Top = 9
              Width = 71
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1588#1605#1575#1585#1607' '#1575#1606#1578#1592#1575#1605#1610
              FocusControl = edtsd2
              ExplicitLeft = 568
            end
            object lblLblsd5: TLabel
              Left = 334
              Top = 37
              Width = 69
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1588#1605#1575#1585#1607' '#1588#1575#1587#1610
              FocusControl = edtsd5
              ExplicitLeft = 342
            end
            object lblLblsd6: TLabel
              Left = 334
              Top = 65
              Width = 19
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1605#1583#1604
              FocusControl = edtsd6
              ExplicitLeft = 342
            end
            object lblLblsd4: TLabel
              Left = 334
              Top = 9
              Width = 46
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1662#1604#1575#1603' '#1575#1605#1608#1575#1604
              FocusControl = edtsd5
              ExplicitLeft = 342
            end
            object lbl3: TLabel
              Left = 127
              Top = 10
              Width = 92
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1605#1578#1608#1587#1591' '#1705#1575#1585#1705#1585#1583' '#1585#1608#1586#1575#1606#1607
              FocusControl = edtsd5
              ExplicitLeft = 135
            end
            object edtsd2: TDBEdit
              Left = 228
              Top = 5
              Width = 100
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'sd2'
              DataSource = srcStuffcoding
              TabOrder = 1
              ExplicitLeft = 236
            end
            object edtsd3: TDBEdit
              Left = 454
              Top = 33
              Width = 100
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'sd3'
              DataSource = srcStuffcoding
              TabOrder = 2
              ExplicitLeft = 462
            end
            object edtsd5: TDBEdit
              Left = 454
              Top = 61
              Width = 100
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'sd5'
              DataSource = srcStuffcoding
              TabOrder = 4
              ExplicitLeft = 462
            end
            object edtsd6: TDBEdit
              Left = 228
              Top = 61
              Width = 100
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'sd6'
              DataSource = srcStuffcoding
              TabOrder = 5
              ExplicitLeft = 236
            end
            object edtsd4: TDBEdit
              Left = 228
              Top = 33
              Width = 100
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'sd4'
              DataSource = srcStuffcoding
              TabOrder = 3
              ExplicitLeft = 236
            end
            object DBEdit6: TDBEdit
              Left = 454
              Top = 5
              Width = 100
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'sd1'
              DataSource = srcStuffcoding
              TabOrder = 0
              ExplicitLeft = 462
            end
            object edtsd7: TDBEdit
              Left = 21
              Top = 6
              Width = 100
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'sd7'
              DataSource = srcStuffcoding
              TabOrder = 6
              ExplicitLeft = 29
            end
          end
          object Panel1: TPanel
            Left = 1
            Top = 181
            Width = 814
            Height = 32
            Align = alTop
            BevelOuter = bvLowered
            TabOrder = 2
            ExplicitWidth = 818
            DesignSize = (
              814
              32)
            object DBText2: TDBText
              Left = 454
              Top = 8
              Width = 171
              Height = 17
              Anchors = [akTop, akRight]
              Color = 13948116
              DataField = '_CTopicName'
              DataSource = srcStuffcoding
              ParentColor = False
              Transparent = False
              ExplicitLeft = 462
            end
            object Label12: TLabel
              Left = 723
              Top = 10
              Width = 57
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
              FocusControl = DBEdit5
              ExplicitLeft = 731
            end
            object SpeedButton2: TSpeedButton
              Left = 625
              Top = 6
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = SpeedButton2Click
              ExplicitLeft = 633
            end
            object DBText4: TDBText
              Left = 40
              Top = 8
              Width = 171
              Height = 17
              Color = 13948116
              DataField = '_CTopicName2'
              DataSource = srcStuffcoding
              ParentColor = False
              Transparent = False
            end
            object Label19: TLabel
              Left = 355
              Top = 10
              Width = 57
              Height = 13
              Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'3'
              FocusControl = DBEdit18
            end
            object SpeedButton4: TSpeedButton
              Left = 212
              Top = 6
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = SpeedButton4Click
            end
            object DBEdit5: TDBEdit
              Tag = 2
              Left = 650
              Top = 6
              Width = 65
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'acc_CTopicCode'
              DataSource = srcStuffcoding
              TabOrder = 0
              ExplicitLeft = 658
            end
            object DBEdit18: TDBEdit
              Tag = 4
              Left = 236
              Top = 6
              Width = 100
              Height = 21
              DataField = 'acc_CTopicCode2'
              DataSource = srcStuffcoding
              TabOrder = 1
            end
          end
          object Panel4: TPanel
            Left = 1
            Top = 326
            Width = 814
            Height = 69
            Align = alClient
            BevelOuter = bvLowered
            TabOrder = 4
            ExplicitWidth = 818
            ExplicitHeight = 70
            DesignSize = (
              814
              69)
            object Label25: TLabel
              Left = 716
              Top = 7
              Width = 74
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1583#1585#1589#1583' '#1570#1605#1575#1583#1607' '#1603#1575#1585#1610
              FocusControl = DBEdit24
              ExplicitLeft = 724
            end
            object GroupBox1: TGroupBox
              Left = 1
              Top = 21
              Width = 812
              Height = 47
              Align = alBottom
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
              TabOrder = 2
              ExplicitWidth = 816
              ExplicitHeight = 48
              object DBMemo1: TDBMemo
                Left = 2
                Top = 15
                Width = 812
                Height = 31
                Align = alClient
                DataField = 'StuffNote'
                DataSource = srcStuffcoding
                TabOrder = 0
              end
            end
            object dbchkState: TDBCheckBox
              Left = 20
              Top = 5
              Width = 93
              Height = 17
              BiDiMode = bdLeftToRight
              Caption = #1594#1610#1585' '#1601#1593#1575#1604' '#1588#1608#1583'.'#8207
              DataField = 'State'
              DataSource = srcStuffcoding
              ParentBiDiMode = False
              TabOrder = 1
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBEdit24: TDBEdit
              Left = 580
              Top = 3
              Width = 134
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'StuffpurePercent'
              DataSource = srcStuffcoding
              TabOrder = 0
              ExplicitLeft = 588
            end
          end
          object Panel6: TPanel
            Left = 1
            Top = 1
            Width = 814
            Height = 92
            Align = alTop
            TabOrder = 0
            ExplicitWidth = 818
            DesignSize = (
              814
              92)
            object lbl2: TLabel
              Left = 561
              Top = 66
              Width = 69
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1605#1588#1582#1589#1575#1578' '#1601#1606#1610
              FocusControl = edtc_StuffTecInfo
              ExplicitLeft = 569
            end
            object lbl7: TLabel
              Left = 335
              Top = 66
              Width = 62
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
              ExplicitLeft = 343
            end
            object lbl8: TLabel
              Left = 561
              Top = 11
              Width = 92
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1588#1606#1575#1587#1607' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
              ExplicitLeft = 569
            end
            object lbl9: TLabel
              Left = 561
              Top = 42
              Width = 114
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1593#1606#1608#1575#1606' '#1575#1605#1608#1575#1604'/ '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
              ExplicitLeft = 569
            end
            object edtc_StuffName: TDBEdit
              Left = 198
              Top = 35
              Width = 357
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'c_StuffName'
              DataSource = srcStuffcoding
              ParentShowHint = False
              ShowHint = False
              TabOrder = 0
              ExplicitLeft = 206
            end
            object edtc_StuffCode: TDBEdit
              Left = 385
              Top = 8
              Width = 170
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'c_StuffCode'
              DataSource = srcStuffcoding
              TabOrder = 1
              ExplicitLeft = 393
            end
            object edtc_StuffTecInfo: TDBEdit
              Left = 423
              Top = 62
              Width = 132
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'c_StuffTecInfo'
              DataSource = srcStuffcoding
              TabOrder = 2
              ExplicitLeft = 431
            end
            object dblkcbb_UntilName: TDBLookupComboBox
              Left = 198
              Top = 62
              Width = 131
              Height = 21
              Anchors = [akTop, akRight]
              DataField = '_UntilName'
              DataSource = srcStuffcoding
              TabOrder = 3
              ExplicitLeft = 206
            end
          end
        end
      end
      object ts2: TTabSheet
        Caption = #1604#1610#1587#1578' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
        ImageIndex = 1
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 820
          Height = 397
          Align = alClient
          Color = clCream
          DataSource = srcStuffcoding
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          PopupMenu = popMnuGroups
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          OnDblClick = DBGrid1DblClick
          OnKeyPress = DBGrid1KeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'c_StuffCode'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'c_StuffName'
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'c_StuffTecInfo'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sd1'
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sd2'
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sd3'
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sd4'
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sd5'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'StuffpurePercent'
              Width = 87
              Visible = True
            end>
        end
      end
      object ts3: TTabSheet
        Caption = #1576#1575#1586#1585#1587#1610' '#1608' '#1603#1606#1578#1585#1604' - '#1587#1608#1582#1578' '#1608' '#1585#1608#1594#1606' '#1607#1575' - '#1578#1593#1608#1610#1590' '#1602#1591#1593#1607' - '#1575#1583#1608#1575#1578' '#1602#1575#1576#1604' '#1606#1589#1576
        ImageIndex = 2
        object tbcMachinType: TTabControl
          Left = 0
          Top = 0
          Width = 820
          Height = 397
          Align = alClient
          TabOrder = 0
          Tabs.Strings = (
            #1576#1575#1586#1585#1587#1610' '#1608' '#1603#1606#1578#1585#1604
            #1587#1608#1582#1578' '#1608' '#1585#1608#1594#1606' '#1607#1575
            #1578#1593#1608#1610#1590' '#1602#1591#1593#1607
            #1575#1583#1608#1575#1578' '#1602#1575#1576#1604' '#1606#1589#1576
            #1592#1585#1601#1740#1578' '#1608' '#1601#1593#1575#1604#1740#1578' '#1607#1575)
          TabIndex = 0
          OnChange = tbcMachinTypeChange
          object Panel5: TPanel
            Left = 4
            Top = 24
            Width = 808
            Height = 94
            Align = alTop
            BevelInner = bvLowered
            BevelKind = bkSoft
            BevelOuter = bvLowered
            BorderWidth = 3
            TabOrder = 0
            ExplicitWidth = 812
            DesignSize = (
              804
              90)
            object Label8: TLabel
              Left = 441
              Top = 11
              Width = 92
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1588#1606#1575#1587#1607' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
              ExplicitLeft = 569
            end
            object Label9: TLabel
              Left = 441
              Top = 42
              Width = 114
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1593#1606#1608#1575#1606' '#1575#1605#1608#1575#1604'/ '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
              ExplicitLeft = 569
            end
            object Label6: TLabel
              Left = 442
              Top = 65
              Width = 71
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1588#1605#1575#1585#1607' '#1575#1606#1578#1592#1575#1605#1610
              FocusControl = DBEdit3
              ExplicitLeft = 570
            end
            object Label7: TLabel
              Left = 183
              Top = 65
              Width = 46
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1662#1604#1575#1603' '#1575#1605#1608#1575#1604
              FocusControl = edtsd5
              ExplicitLeft = 311
            end
            object DBEdit1: TDBEdit
              Left = 76
              Top = 35
              Width = 357
              Height = 19
              Anchors = [akTop, akRight]
              Color = clInactiveCaption
              Ctl3D = False
              DataField = 'c_StuffName'
              DataSource = srcStuffcoding
              ParentCtl3D = False
              ParentShowHint = False
              ShowHint = False
              TabOrder = 0
              ExplicitLeft = 92
            end
            object DBEdit2: TDBEdit
              Left = 263
              Top = 8
              Width = 170
              Height = 19
              Anchors = [akTop, akRight]
              Color = clInactiveCaption
              Ctl3D = False
              DataField = 'c_StuffCode'
              DataSource = srcStuffcoding
              ParentCtl3D = False
              TabOrder = 1
              ExplicitLeft = 279
            end
            object DBEdit3: TDBEdit
              Left = 77
              Top = 62
              Width = 100
              Height = 19
              Anchors = [akTop, akRight]
              Color = clInactiveCaption
              Ctl3D = False
              DataField = 'sd2'
              DataSource = srcStuffcoding
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 2
              ExplicitLeft = 93
            end
            object DBEdit4: TDBEdit
              Left = 332
              Top = 62
              Width = 100
              Height = 19
              Anchors = [akTop, akRight]
              Color = clInactiveCaption
              Ctl3D = False
              DataField = 'sd1'
              DataSource = srcStuffcoding
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 3
              ExplicitLeft = 348
            end
          end
          object DBGrid2: TDBGrid
            Tag = 111
            Left = 4
            Top = 118
            Width = 808
            Height = 244
            Align = alClient
            DataSource = srcMachinery
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
                FieldName = 'MachineId'
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_StuffName'
                Width = 137
                Visible = True
              end
              item
                Expanded = False
                FieldName = '_UnitName'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ControlType'
                PickList.Strings = (
                  #1603#1575#1585#1603#1585#1583' - '#1587#1575#1593#1578
                  #1605#1587#1575#1601#1578' - '#1603#1610#1604#1608#1605#1578#1585
                  #1605#1585#1608#1585' '#1586#1605#1575#1606' - '#1585#1608#1586)
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Amount'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Total'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'states'
                PickList.Strings = (
                  #1601#1593#1575#1604
                  #1662#1740#1588' '#1601#1585#1590
                  #1575#1608#1604#1608#1740#1578' '#1583#1575#1585
                  #1594#1740#1585#1601#1593#1575#1604)
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Amount2'
                Width = 58
                Visible = True
              end>
          end
          object pnlItem: TPanel
            Left = 4
            Top = 362
            Width = 808
            Height = 30
            Align = alBottom
            TabOrder = 2
            ExplicitTop = 363
            ExplicitWidth = 812
            object newPanel2: TPanel
              Left = 577
              Top = 1
              Width = 234
              Height = 28
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 0
              DesignSize = (
                234
                28)
              object BitBtn3: TBitBtn
                Left = 157
                Top = 1
                Width = 75
                Height = 25
                Action = DataSetInsert2
                Anchors = [akTop, akRight]
                Caption = #1580#1583#1610#1583
                TabOrder = 0
              end
              object BitBtn4: TBitBtn
                Left = 82
                Top = 1
                Width = 75
                Height = 25
                Action = DataSetEdit2
                Anchors = [akTop, akRight]
                Caption = #1608#1610#1585#1575#1610#1588
                TabOrder = 1
              end
              object BitBtn5: TBitBtn
                Left = 5
                Top = 1
                Width = 75
                Height = 25
                Action = DataSetDelete2
                Anchors = [akTop, akRight]
                Caption = #1581#1584#1601
                TabOrder = 2
              end
            end
            object okPanel2: TPanel
              Left = 415
              Top = 1
              Width = 158
              Height = 28
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 1
              ExplicitLeft = 419
              DesignSize = (
                158
                28)
              object BitBtn9: TBitBtn
                Left = 81
                Top = 1
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
                TabOrder = 0
              end
              object BitBtn10: TBitBtn
                Left = 5
                Top = 1
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
                TabOrder = 1
              end
            end
          end
        end
      end
    end
  end
  inherited PnlUnderButton: TPanel [2]
    Top = 545
    Width = 828
    ExplicitTop = 546
    ExplicitWidth = 832
    object DBNavigator1: TDBNavigator [0]
      Left = 486
      Top = 6
      Width = 120
      Height = 25
      DataSource = srcStuffcoding
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight, akBottom]
      Flat = True
      TabOrder = 4
    end
    inherited BtnReject: TBitBtn
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 305
      Top = 8
      Width = 75
      Height = 25
      Action = actSendToExcedl
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 380
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Caption = #1670#1575#1662
      TabOrder = 0
    end
    object BitBtn6: TBitBtn
      Left = 154
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object BitBtn7: TBitBtn
      Left = 78
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576' '
      TabOrder = 5
    end
    object BitBtn8: TBitBtn
      Left = 229
      Top = 8
      Width = 75
      Height = 25
      Caption = #1580#1587#1578#1580#1608' '#1582#1575#1589
      TabOrder = 6
      OnClick = BitBtn8Click
    end
    object btnOtherMenu: TBitBtn
      Left = 455
      Top = 8
      Width = 25
      Height = 25
      Hint = #1587#1575#1610#1585' '#1575#1605#1603#1575#1606#1575#1578
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000BEBEBEBEBEBE
        BEBEBEBABDBDBDBDBDBCBDBDC9C1C12E8D900065660466650072729EB4B4CCC3
        C3B9BCBCBEBEBEBEBEBEBEBEBEBEBEBEBBBDBDC6C1C1C0BEBEBABCBCC9C2C32E
        8770005948024646015758217C7CA4B5B5C7C1C1BBBDBDBEBEBEBEBEBEBCBDBD
        D0C4C44D97979AB2B2C7C1C0C5C1C4308661169145094F27002E2C005152207C
        7CA5B6B6C9C2C2BCBDBDBABCBCC6C0C0569C9C0074731D8080A4B6B5D2C6C729
        847427B25C47C9660F532B012F2C0057582081809DB3B3C6C0C0B9BCBCCAC2C2
        258481004E4D0055541F7A7AB1BABA368B8C199F525EF38643C8690A4624023A
        390067678BAEADCAC1C1BABDBAC7C0C63B9253004A1E033232004949227E7E0E
        6E5E2AAD5858ED8562FE96208538003123015E628FB0AFC9C1C1BABDBBC7C1C6
        409D4D169D390A5723012D26004045086D3341CF6B57F08A5DF69338BE560841
        2900575D8FB1AFC9C1C1BABDBAC8C1C73F9D5023BD5029B35107541C024B152C
        AD4F4AE37B50E88257EF8B3BC65A0B492F00585E8FB0AFC9C1C1BABDBAC8C1C7
        3D9A4B1EB64636D06824AA4924A8453CD26C45DF7A49E17C52EB8634BA520954
        3C01616690B0AEC9C1C1BABDBAC8C1C73C994818B03C2FC65D31C96235CD6839
        D16C40D77244DB764CE6811C8934025B4B006F738BAEADCAC1C1BABDBAC8C1C7
        3A974413AB3129C0502CC35931C96334CC6738D16B41DB7631BE5309673E0069
        686AA2A2B9BCBCBFBEBEBABDBAC8C1C837953F0DA62723BB4426BD4B2BC45730
        C86134CC6731C45B0E602901443F0068699EB3B3CEC3C3BABCBCB9BDBAC8C2C8
        35923A08A11B1CB4371FB73E25BD4A2BC35531C86130C65F0E6627002C250148
        4A217776A4B5B5C9C2C2B9BDBAC8C2C8329037029B1017AE2B19B0331FB63F25
        BC4A2BC25530C8612BB9570C6327002F2900474A227B7A9DB3B3B9BCB9C9C2C8
        308F2F00980211AB1C14AE261AB53220BA3F27C04A2DC75634D0642FC05A0F73
        3303514800656785ABABB9BCBAC9C2C52F8757007629057E33047E35057F3807
        803B09823E0A84410B84440E8A4907793B006D5F6B9DA0BABDBC}
      Layout = blGlyphRight
      Style = bsWin31
      TabOrder = 7
      OnClick = btnOtherMenuClick
    end
    object okPanel: TPanel
      Left = 439
      Top = 1
      Width = 158
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 8
      DesignSize = (
        158
        39)
      object btn2: TBitBtn
        Left = 81
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
      object btn3: TBitBtn
        Left = 5
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
    object newPanel: TPanel
      Left = 593
      Top = 1
      Width = 234
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 9
      ExplicitLeft = 597
      DesignSize = (
        234
        39)
      object btn4: TBitBtn
        Left = 157
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object btn5: TBitBtn
        Left = 82
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object btn6: TBitBtn
        Left = 5
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
  end
  object pnl1: TPanel [3]
    Left = 0
    Top = 53
    Width = 828
    Height = 64
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvLowered
    BiDiMode = bdRightToLeft
    BorderWidth = 5
    BorderStyle = bsSingle
    ParentBiDiMode = False
    TabOrder = 3
    ExplicitWidth = 832
    DesignSize = (
      824
      60)
    object lbl1: TLabel
      Left = 587
      Top = 18
      Width = 47
      Height = 13
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = #1711#1585#1608#1607' '#1575#1605#1608#1575#1604
      ParentBiDiMode = False
      ExplicitLeft = 681
    end
    object btn1: TSpeedButton
      Left = 36
      Top = 13
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = btn1Click
    end
    object btnSelect: TSpeedButton
      Left = 11
      Top = 13
      Width = 23
      Height = 22
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00636B
        7300C69C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006394B500218C
        EF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0042A5
        FF00218CEF007B849400CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052BD
        FF005ABDFF00218CEF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
        FF0052BDFF0042A5FF00218CEF0084849400CE9C9400FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0052BDFF005ABDFF003184D60052636B00FF00FF009C6B6B00CEA5
        9C00D6B5A500CE9C9C00C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0031A5FF0052BDFF00C6CEDE009C9C9C00AD8C8400E7D6BD00FFFF
        D600FFFFDE00FFFFD600EFDEC600FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00C6ADAD00CEA59400FFE7BD00FFF7CE00FFFF
        D600FFFFD600FFFFDE00FFFFE700FFFFFF00C6A5A500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00BD8C8C00EFDEB500F7D6AD00FFF7CE00EFDE
        A500B55A1800FFFFEF00FFFFF700FFFFFF00F7EFDE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00F7CE9C00EFC68400EFC6
        8400B55A1800E7D6C600E7D6C600FFFFDE00FFFFDE00C6949400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00EFD6B500FFE7B500F7C68C00B55A1800B55A
        1800B55A1800B55A1800B55A1800FFFFDE00FFFFDE00BD9C8C00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00EFBD8400F7C69400FFEF
        C600B55A1800FFFFD600FFFFD600FFFFD600FFFFDE00C6949400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6ADA500FFEFBD00F7DEAD00F7CE9C00F7D6
        A500B55A1800FFFFD600FFFFD600FFFFD600FFFFD600FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C8C00FFFFFF00FFFFFF00F7C6
        9400EFBD8400F7C69400F7D6AD00FFEFC600BD9C8C00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFEFE700FFFFEF00FFE7
        B500F7DEAD00FFE7B500FFEFBD00C69C9400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C
        8C00CEA59C00C69C9400FF00FF00FF00FF00FF00FF00FF00FF00}
      OnClick = btnSelectClick
    end
    object cmbGroups: TComboBox
      Left = 65
      Top = 13
      Width = 518
      Height = 21
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      Color = 14024703
      DropDownCount = 16
      TabOrder = 0
      OnChange = cmbGroupsChange
      OnEnter = cmbGroupsEnter
    end
    object chkAllGroup: TCheckBox
      Left = 11
      Top = 36
      Width = 97
      Height = 17
      Alignment = taLeftJustify
      Caption = #1607#1605#1607' '#1711#1585#1608#1607#1607#1575
      TabOrder = 1
      OnClick = chkAllGroupClick
    end
  end
  inherited ActionList: TActionList
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcStuffcoding
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcStuffcoding
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcStuffcoding
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcStuffcoding
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcStuffcoding
    end
    object actSendToExcedl: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcedlExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576' '
      OnExecute = actSortExecute
    end
    object actChangeStuffCode: TAction
      Caption = #1578#1594#1610#1610#1585' '#1603#1583' '#1603#1575#1604#1575' '
      OnExecute = actChangeStuffCodeExecute
    end
    object actGetExcel: TAction
      Caption = #1582#1608#1575#1606#1583#1606'Excel'
      OnExecute = actGetExcelExecute
    end
    object actMakeRecal: TAction
      Caption = #1587#1575#1582#1578' '#1601#1575#1610#1604' '#1603#1583#1610#1606#1711' '#1603#1575#1604#1575
      OnExecute = actMakeRecalExecute
    end
    object actGetRecal: TAction
      Caption = #1582#1608#1575#1606#1583#1606' '#1575#1586' '#1601#1575#1610#1604' '#1603#1583#1610#1606#1711' '#1603#1575#1604#1575'('#1601#1602#1591' '#1578#1601#1575#1608#1578#1607#1575')'#8207
      OnExecute = actGetRecalExecute
    end
    object actMakeManifesto: TAction
      Caption = #1587#1575#1582#1578' '#1601#1575#1610#1604' '#1575#1593#1604#1575#1605#1610#1607' '#1602#1610#1605#1578
      OnExecute = actMakeManifestoExecute
    end
    object actGetManifesto: TAction
      Caption = #1582#1608#1575#1606#1583#1606' '#1575#1586' '#1601#1575#1610#1604' '#1575#1593#1604#1575#1605#1610#1607' '#1602#1610#1605#1578
      OnExecute = actGetManifestoExecute
    end
    object actGetRecal2: TAction
      Caption = #1582#1608#1575#1606#1583#1606' '#1575#1586' '#1601#1575#1610#1604' '#1603#1583#1610#1606#1711' '#1603#1575#1604#1575
      OnExecute = actGetRecal2Execute
    end
    object actMakeDeficitsCorrelation: TAction
      Caption = #1587#1575#1582#1578' '#1601#1575#1610#1604' '#1603#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578
      OnExecute = actMakeDeficitsCorrelationExecute
    end
    object actGetDeficitsCorrelation: TAction
      Caption = #1582#1608#1575#1606#1583#1606' '#1575#1586' '#1601#1575#1610#1604' '#1603#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578
      OnExecute = actGetDeficitsCorrelationExecute
    end
    object actSearchTree: TAction
      Caption = #1580#1587#1578#1580#1608#1610' '#1711#1585#1608#1607#1607#1575#1610' '#1603#1575#1604#1575
    end
    object DataSetInsert2: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = ' '
      ShortCut = 113
      DataSource = srcMachinery
    end
    object DataSetEdit2: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      ShortCut = 115
      DataSource = srcMachinery
    end
    object DataSetPost2: TDataSetPost
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      Hint = ' '
      ShortCut = 119
      DataSource = srcMachinery
    end
    object DataSetCancel2: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = ' '
      ShortCut = 27
      DataSource = srcMachinery
    end
    object DataSetDelete2: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcMachinery
    end
  end
  inherited ImageList1: TImageList
    Left = 142
    Top = 5
  end
  object qryStuffcoding: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    BeforeInsert = qryStuffcodingBeforeInsert
    AfterInsert = qryStuffcodingAfterInsert
    BeforePost = qryStuffcodingBeforePost
    AfterPost = qryStuffcodingAfterPost
    BeforeDelete = qryStuffcodingBeforeDelete
    AfterDelete = qryStuffcodingAfterDelete
    AfterScroll = qryStuffcodingAfterScroll
    Parameters = <
      item
        Name = 'groupId'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'allgroup'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'select  * from Stuffcoding '
      
        'WHERE     (CAST(GroupID AS int) = :Groupid) OR (CAST(GroupID AS ' +
        'int) < :AllGroup)'
      #13'Order by Groupid'#10
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 80
    Top = 192
    object qryStuffcodingc_StuffCode: TLargeintField
      Alignment = taLeftJustify
      DisplayLabel = #1588#1606#1575#1587#1607' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
      FieldName = 'c_StuffCode'
    end
    object qryStuffcodingc_StuffName: TWideStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1575#1605#1608#1575#1604'/ '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
      FieldName = 'c_StuffName'
      Required = True
      Size = 150
    end
    object qryStuffcodingGroupID: TIntegerField
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607' '#1603#1575#1604#1575
      FieldName = 'GroupID'
    end
    object qryStuffcodingn_UnitCode: TWordField
      Tag = 3
      DefaultExpression = '0'
      DisplayLabel = #1603#1583' '#1608#1575#1581#1583' '#1587#1601#1575#1585#1588
      FieldName = 'n_UnitCode'
      Required = True
    end
    object qryStuffcodingn_minOrder: TFloatField
      DisplayLabel = #1581#1583#1575#1602#1604' '#1605#1608#1580#1608#1583#1610
      DisplayWidth = 14
      FieldName = 'n_minOrder'
    end
    object qryStuffcodingn_maxOrder: TFloatField
      DisplayLabel = #1581#1583#1575#1603#1579#1585' '#1605#1608#1580#1608#1583#1610
      DisplayWidth = 14
      FieldName = 'n_maxOrder'
    end
    object qryStuffcodingc_KeepPlace: TStringField
      DisplayLabel = #1605#1581#1604' '#1606#1711#1607#1583#1575#1585#1610' '#1603#1575#1604#1575
      DisplayWidth = 30
      FieldName = 'c_KeepPlace'
      Size = 50
    end
    object qryStuffcodingBuyPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1582#1585#1610#1583
      DisplayWidth = 24
      FieldName = 'BuyPrice'
      currency = True
      Precision = 19
    end
    object qryStuffcodingacc_DetaiCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      DisplayWidth = 15
      FieldName = 'acc_DetaiCode'
      Size = 12
    end
    object qryStuffcodingacc_CTopicCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
      DisplayWidth = 15
      FieldName = 'acc_CTopicCode'
      Size = 12
    end
    object qryStuffcodingModifyDate: TDateTimeField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1585#1587#1575#1604' '#1575#1591#1604#1575#1593#1575#1578
      DisplayWidth = 22
      FieldName = 'ModifyDate'
    end
    object qryStuffcodingOperatorID: TSmallintField
      DisplayLabel = #1603#1583' '#1603#1575#1585#1576#1585
      DisplayWidth = 12
      FieldName = 'OperatorID'
    end
    object qryStuffcoding_CTopicName: TStringField
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
    object qryStuffcoding_DetailName: TStringField
      FieldKind = fkLookup
      FieldName = '_DetailName'
      LookupDataSet = DmF.qryAccDetailCode
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName'
      KeyFields = 'acc_DetaiCode'
      LookupCache = True
      Size = 255
      Lookup = True
    end
    object qryStuffcoding_UntilName: TStringField
      DisplayLabel = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
      FieldKind = fkLookup
      FieldName = '_UntilName'
      LookupDataSet = qryUnits
      LookupKeyFields = 'UnitCode'
      LookupResultField = 'UnitName'
      KeyFields = 'n_UnitCode'
      LookupCache = True
      Required = True
      Lookup = True
    end
    object qryStuffcodingState: TWordField
      DisplayWidth = 12
      FieldName = 'State'
    end
    object qryStuffcodings_s: TWordField
      DisplayWidth = 12
      FieldName = 's_s'
    end
    object qryStuffcodingBudgetID: TIntegerField
      FieldName = 'BudgetID'
    end
    object qryStuffcodingStandardRate: TBCDField
      FieldName = 'StandardRate'
      Precision = 19
    end
    object qryStuffcodingSellPrice1: TBCDField
      FieldName = 'SellPrice1'
      currency = True
      Precision = 19
    end
    object qryStuffcodingSellPrice2: TBCDField
      FieldName = 'SellPrice2'
      currency = True
      Precision = 19
    end
    object qryStuffcodingSellPrice3: TBCDField
      FieldName = 'SellPrice3'
      currency = True
      Precision = 19
    end
    object qryStuffcodingSellPrice4: TBCDField
      FieldName = 'SellPrice4'
      currency = True
      Precision = 19
    end
    object qryStuffcoding_BudgetIName: TStringField
      FieldKind = fkLookup
      FieldName = '_BudgetIName'
      LookupDataSet = DmF.qryAccBudget
      LookupKeyFields = 'BudgetTopicID'
      LookupResultField = 'BudgetCaption_L1'
      KeyFields = 'BudgetID'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryStuffcodingCarton: TFloatField
      FieldName = 'Carton'
    end
    object qryStuffcodingacc_CTopicCode2: TStringField
      FieldName = 'acc_CTopicCode2'
      Size = 12
    end
    object qryStuffcoding_CTopicName2: TStringField
      FieldKind = fkLookup
      FieldName = '_CTopicName2'
      LookupDataSet = DmF.qryAccCenterTopics2
      LookupKeyFields = 'CTopicCode2'
      LookupResultField = 'CTopicName2'
      KeyFields = 'acc_CTopicCode2'
      Size = 100
      Lookup = True
    end
    object qryStuffcodingOptimumPoint: TFloatField
      FieldName = 'OptimumPoint'
    end
    object qryStuffcodingUnitPriceUseKind: TWordField
      DisplayLabel = #1606#1608#1593' '#1575#1587#1578#1601#1575#1583#1607' '#1576#1607#1575#1610' '#1608#1575#1581#1583
      FieldName = 'UnitPriceUseKind'
    end
    object qryStuffcodingsd1: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1575#1606#1578#1592#1575#1605#1610
      FieldName = 'sd1'
      Size = 64
    end
    object qryStuffcodingsd2: TStringField
      DisplayLabel = #1662#1604#1575#1603' '#1575#1605#1608#1575#1604
      FieldName = 'sd2'
      Size = 64
    end
    object qryStuffcodingsd3: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1576#1583#1606#1607
      FieldName = 'sd3'
      Size = 64
    end
    object qryStuffcodingsd4: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1588#1575#1587#1610
      FieldName = 'sd4'
      Size = 64
    end
    object qryStuffcodingsd5: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1605#1608#1578#1608#1585
      FieldName = 'sd5'
      Size = 64
    end
    object qryStuffcodingsd6: TStringField
      DisplayLabel = #1605#1583#1604
      FieldName = 'sd6'
      Size = 64
    end
    object qryStuffcodingsd7: TStringField
      FieldName = 'sd7'
      Size = 64
    end
    object qryStuffcodingsd8: TStringField
      FieldName = 'sd8'
      Size = 64
    end
    object qryStuffcodingsd9: TStringField
      FieldName = 'sd9'
      Size = 64
    end
    object qryStuffcodingStuffNote: TStringField
      FieldName = 'StuffNote'
      Size = 255
    end
    object qryStuffcodingControl_orderPoint_Entity: TWordField
      FieldName = 'Control_orderPoint_Entity'
    end
    object qryStuffcodingStanCode: TStringField
      FieldName = 'StanCode'
      Size = 25
    end
    object qryStuffcodingOwnerShipKind: TWordField
      FieldName = 'OwnerShipKind'
    end
    object qryStuffcodingAcc_InComeTopicCode: TLargeintField
      FieldName = 'Acc_InComeTopicCode'
    end
    object qryStuffcodingAcc_BidTopicCode: TLargeintField
      FieldName = 'Acc_BidTopicCode'
    end
    object qryStuffcodingAcc_CommissionTopicCode: TLargeintField
      FieldName = 'Acc_CommissionTopicCode'
    end
    object qryStuffcodingCommission: TFloatField
      FieldName = 'Commission'
    end
    object qryStuffcoding_IncomeTopicCode: TStringField
      FieldKind = fkLookup
      FieldName = '_IncomeTopicCode'
      LookupDataSet = DmF.qryAccTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'Acc_InComeTopicCode'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryStuffcoding_BidTopicCode: TStringField
      FieldKind = fkLookup
      FieldName = '_BidTopicCode'
      LookupDataSet = DmF.qryAccTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'Acc_BidTopicCode'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryStuffcoding_CommissionTopicCode: TStringField
      FieldKind = fkLookup
      FieldName = '_CommissionTopicCode'
      LookupDataSet = DmF.qryAccTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'Acc_CommissionTopicCode'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryStuffcodingStuffpurePercent: TFloatField
      DisplayLabel = #1583#1585#1589#1583' '#1570#1605#1575#1583#1607' '#1603#1575#1585#1610
      FieldName = 'StuffpurePercent'
    end
    object qryStuffcodingStuffpublicPercent: TFloatField
      FieldName = 'StuffpublicPercent'
    end
    object qryStuffcodingc_StuffTecInfo: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1601#1606#1610
      FieldName = 'c_StuffTecInfo'
      Size = 30
    end
    object qryStuffcodingStuffExpireDate: TStringField
      FieldName = 'StuffExpireDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryStuffcodingSellPrice_S: TBCDField
      FieldName = 'SellPrice_S'
      currency = True
      Precision = 19
    end
    object qryStuffcodingCabinet: TWideStringField
      FieldName = 'Cabinet'
      Size = 100
    end
    object qryStuffcodingTierced: TWideStringField
      FieldName = 'Tierced'
      Size = 100
    end
    object qryStuffcodingTariffsID: TStringField
      FieldName = 'TariffsID'
      Size = 15
    end
    object qryStuffcodingVatExempt: TWordField
      FieldName = 'VatExempt'
    end
    object qryStuffcodingChangeState: TWordField
      FieldName = 'ChangeState'
    end
    object qryStuffcodingVendorBarcode: TWideStringField
      FieldName = 'VendorBarcode'
      Size = 30
    end
    object qryStuffcodingn_orderPoint: TFloatField
      DisplayLabel = #1606#1602#1591#1607' '#1587#1601#1575#1585#1588
      FieldName = 'n_orderPoint'
    end
    object qryStuffcodingacc_CTopicCode3: TStringField
      FieldName = 'acc_CTopicCode3'
      Size = 12
    end
  end
  object srcStuffcoding: TDataSource
    DataSet = qryStuffcoding
    OnStateChange = srcStuffcodingStateChange
    Left = 592
    Top = 381
  end
  object zbal: TzAPIBalloon
    AutoCloseMode = acAutoCalc
    Prompt.Strings = (
      'FINANCES Ltd'
      'TzAPIBalloon ver. 1')
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 488
    Top = 8
  end
  object qryUnits: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT UnitCode, UnitName'
      'FROM Units')
    Left = 752
    Top = 183
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcStuffcoding
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 488
    Top = 327
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'c_StuffName'
      FieldName = 'c_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'GroupID'
      FieldName = 'GroupID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'n_UnitCode'
      FieldName = 'n_UnitCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'n_minOrder'
      FieldName = 'n_minOrder'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'n_maxOrder'
      FieldName = 'n_maxOrder'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'n_orderPoint'
      FieldName = 'n_orderPoint'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'c_KeepPlace'
      FieldName = 'c_KeepPlace'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'BuyPrice'
      FieldName = 'BuyPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'acc_DetaiCode'
      FieldName = 'acc_DetaiCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'acc_CTopicCode'
      FieldName = 'acc_CTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'ModifyDate'
      FieldName = 'ModifyDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'OperatorID'
      FieldName = 'OperatorID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = '_CTopicName'
      FieldName = '_CTopicName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = '_DetailName'
      FieldName = '_DetailName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = '_UntilName'
      FieldName = '_UntilName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'State'
      FieldName = 'State'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 's_s'
      FieldName = 's_s'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'BudgetID'
      FieldName = 'BudgetID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'StandardRate'
      FieldName = 'StandardRate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'SellPrice1'
      FieldName = 'SellPrice1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'SellPrice2'
      FieldName = 'SellPrice2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'SellPrice3'
      FieldName = 'SellPrice3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'SellPrice4'
      FieldName = 'SellPrice4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = '_BudgetIName'
      FieldName = '_BudgetIName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'Carton'
      FieldName = 'Carton'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'acc_CTopicCode2'
      FieldName = 'acc_CTopicCode2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = '_CTopicName2'
      FieldName = '_CTopicName2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField28: TppField
      FieldAlias = 'OptimumPoint'
      FieldName = 'OptimumPoint'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = 'UnitPriceUseKind'
      FieldName = 'UnitPriceUseKind'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField30: TppField
      FieldAlias = 'sd1'
      FieldName = 'sd1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField31: TppField
      FieldAlias = 'sd2'
      FieldName = 'sd2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField32: TppField
      FieldAlias = 'sd3'
      FieldName = 'sd3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField33: TppField
      FieldAlias = 'sd4'
      FieldName = 'sd4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField34: TppField
      FieldAlias = 'sd5'
      FieldName = 'sd5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField35: TppField
      FieldAlias = 'sd6'
      FieldName = 'sd6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField36: TppField
      FieldAlias = 'sd7'
      FieldName = 'sd7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField37: TppField
      FieldAlias = 'sd8'
      FieldName = 'sd8'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField38: TppField
      FieldAlias = 'sd9'
      FieldName = 'sd9'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField39: TppField
      FieldAlias = 'StuffNote'
      FieldName = 'StuffNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField40: TppField
      FieldAlias = 'Control_orderPoint_Entity'
      FieldName = 'Control_orderPoint_Entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField41: TppField
      FieldAlias = 'StanCode'
      FieldName = 'StanCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField42: TppField
      FieldAlias = 'OwnerShipKind'
      FieldName = 'OwnerShipKind'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField43: TppField
      FieldAlias = 'Acc_InComeTopicCode'
      FieldName = 'Acc_InComeTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField44: TppField
      FieldAlias = 'Acc_BidTopicCode'
      FieldName = 'Acc_BidTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField45: TppField
      FieldAlias = 'Acc_CommissionTopicCode'
      FieldName = 'Acc_CommissionTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField46: TppField
      FieldAlias = 'Commission'
      FieldName = 'Commission'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField47: TppField
      FieldAlias = '_IncomeTopicCode'
      FieldName = '_IncomeTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField48: TppField
      FieldAlias = '_BidTopicCode'
      FieldName = '_BidTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField49: TppField
      FieldAlias = '_CommissionTopicCode'
      FieldName = '_CommissionTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField50: TppField
      FieldAlias = 'StuffpurePercent'
      FieldName = 'StuffpurePercent'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField51: TppField
      FieldAlias = 'StuffpublicPercent'
      FieldName = 'StuffpublicPercent'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField52: TppField
      FieldAlias = 'st1'
      FieldName = 'st1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField53: TppField
      FieldAlias = 'st2'
      FieldName = 'st2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField54: TppField
      FieldAlias = 'st3'
      FieldName = 'st3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField55: TppField
      FieldAlias = 'st4'
      FieldName = 'st4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField56: TppField
      FieldAlias = 'c_StuffTecInfo'
      FieldName = 'c_StuffTecInfo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField57: TppField
      FieldAlias = 'StuffExpireDate'
      FieldName = 'StuffExpireDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField58: TppField
      FieldAlias = 'SellPrice_S'
      FieldName = 'SellPrice_S'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField59: TppField
      FieldAlias = 'Cabinet'
      FieldName = 'Cabinet'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField60: TppField
      FieldAlias = 'Tierced'
      FieldName = 'Tierced'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField61: TppField
      FieldAlias = 'c_StuffCode'
      FieldName = 'c_StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField62: TppField
      FieldAlias = 'TariffsID'
      FieldName = 'TariffsID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
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
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\rptStuffCodingF1.rtm'
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
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 752
    Top = 280
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 24077
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1603#1575#1604#1575' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 184415
        mmTop = 17727
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1585#1581' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 110596
        mmTop = 17727
        mmWidth = 64823
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 88900
        mmTop = 17727
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1605#1588#1582#1589#1575#1578' '#1601#1606#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 67469
        mmTop = 17727
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1606#1602#1591#1607' '#1587#1601#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 2117
        mmTop = 17727
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 1058
        mmTop = 22754
        mmWidth = 200819
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6085
        mmLeft = 175684
        mmTop = 17463
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6085
        mmLeft = 108479
        mmTop = 17463
        mmWidth = 1588
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
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 87048
        mmTop = 17198
        mmWidth = 1588
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
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6085
        mmLeft = 65617
        mmTop = 17463
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable1GetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 6350
        mmLeft = 3969
        mmTop = 8202
        mmWidth = 7673
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
        Caption = #1604#1610#1587#1578' '#1603#1583#1610#1606#1711' '#1603#1575#1604#1575' '
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
        mmLeft = 84402
        mmTop = 6879
        mmWidth = 34396
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 16669
        mmWidth = 200819
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        OnGetText = ppLabel12GetText
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
        mmLeft = 2117
        mmTop = 0
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1581#1583#1575#1602#1604' '#1605#1608#1580#1608#1583#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 46038
        mmTop = 17727
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = #1581#1583#1575#1603#1579#1585' '#1605#1608#1580#1608#1583#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 23813
        mmTop = 17727
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6085
        mmLeft = 44186
        mmTop = 17463
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6085
        mmLeft = 21960
        mmTop = 16933
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object plblGropReng: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        OnGetText = plblGropRengGetText
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1711#1585#1608#1607' '#1608' '#1605#1581#1583#1608#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4487
        mmLeft = 182298
        mmTop = 11113
        mmWidth = 19431
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'c_StuffCode'
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
        mmHeight = 5821
        mmLeft = 178330
        mmTop = 0
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'c_StuffName'
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
        mmHeight = 6350
        mmLeft = 110596
        mmTop = 0
        mmWidth = 64823
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'c_StuffTecInfo'
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
        mmHeight = 6350
        mmLeft = 67469
        mmTop = 0
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = '_UntilName'
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
        mmHeight = 6350
        mmLeft = 88900
        mmTop = 0
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'n_minOrder'
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
        mmHeight = 6350
        mmLeft = 46038
        mmTop = 0
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'n_maxOrder'
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
        mmHeight = 6350
        mmLeft = 23813
        mmTop = 0
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'n_orderPoint'
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
        mmHeight = 6350
        mmLeft = 2117
        mmTop = 0
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 2117
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 0
        mmWidth = 200819
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 140759
        mmTop = 8731
        mmWidth = 61119
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583' '#1603#1575#1604#1575':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 180711
        mmTop = 2117
        mmWidth = 14023
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'c_StuffCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 161925
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 0
        mmWidth = 200819
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
    Top = 304
    object N1: TMenuItem
      Caption = #1576#1607' '#1578#1585#1578#1610#1576' '#1603#1583
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1576#1607' '#1578#1585#1578#1610#1576' '#1588#1585#1581
      OnClick = N2Click
    end
  end
  object PopList4Print: TPopupMenu
    AutoHotkeys = maManual
    Left = 682
    Top = 391
    object HintName1: TMenuItem
      Caption = #1575#1586' Hint '#1608' Name '#1575#1587#1578#1601#1575#1583#1607' '#1588#1583#1607
      Visible = False
    end
    object rptStuffCodingF1: TMenuItem
      Caption = #1670#1575#1662
      OnClick = rptStuffCodingF1Click
    end
    object rptStuffCodingF2: TMenuItem
      Caption = #1670#1575#1662' '#1606#1585#1582' '#1607#1575#1610' '#1601#1585#1608#1588
      OnClick = rptStuffCodingF1Click
    end
    object rptStuffCodingF3: TMenuItem
      Caption = #1670#1575#1662' '#1606#1585#1582' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
      OnClick = rptStuffCodingF1Click
    end
    object StuffCodingBarCode: TMenuItem
      Caption = #1670#1575#1662' '#1576#1575' '#1576#1575#1585#1603#1583
      OnClick = rptStuffCodingF1Click
    end
    object StuffCodingExtraCoding: TMenuItem
      Caption = #1670#1575#1662' '#1576#1575' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1605#1603#1610
      OnClick = rptStuffCodingF1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnClick = N4Click
    end
    object mnuAllRecords: TMenuItem
      Caption = #1670#1575#1662' '#1607#1605#1607' '#1587#1591#1585' '#1607#1575
      Checked = True
      OnClick = mnuAllRecordsClick
    end
  end
  object popMnuGroups: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = popMnuGroupsPopup
    Left = 696
    Top = 224
    object Mnu_AllClick: TMenuItem
      Caption = #1578#1594#1610#1610#1585' '#1711#1585#1608#1607' '#1603#1575#1604#1575#1610' '#1580#1575#1585#1610
      object N3: TMenuItem
        Caption = #1604#1610#1587#1578' '#1711#1585#1608#1607' '#1607#1575#1610' '#1603#1575#1604#1575
        Visible = False
        OnClick = Mnu_AllClickClick
      end
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object N7: TMenuItem
      Action = actChangeStuffCode
    end
  end
  object pm1: TPopupMenu
    AutoHotkeys = maManual
    Left = 568
    Top = 440
    object mnuMakeRecal: TMenuItem
      Action = actMakeRecal
    end
    object mnuN8: TMenuItem
      Caption = '-'
    end
    object mnuGetRecal2: TMenuItem
      Action = actGetRecal2
    end
    object mnuGetRecal: TMenuItem
      Action = actGetRecal
    end
    object mnuMakeManifesto: TMenuItem
      Action = actMakeManifesto
      Break = mbBreak
    end
    object mnuN11: TMenuItem
      Caption = '-'
    end
    object mnuGetManifesto: TMenuItem
      Action = actGetManifesto
    end
    object mnuMakeDeficitsCorrelation: TMenuItem
      Action = actMakeDeficitsCorrelation
      Break = mbBreak
    end
    object mnuN9: TMenuItem
      Caption = '-'
    end
    object mnuGetDeficitsCorrelation: TMenuItem
      Action = actGetDeficitsCorrelation
    end
  end
  object qryMachinery: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryMachineryAfterInsert
    BeforeDelete = qryMachineryBeforeDelete
    Parameters = <
      item
        Name = 'StuffId'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'MachinType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM Machin.Machinery'
      'WHERE ( StuffId = :StuffId )'
      'AND MachinType = :MachinType')
    Left = 152
    Top = 344
    object qryMachineryMachinType: TWordField
      FieldName = 'MachinType'
    end
    object qryMachineryMachineId: TLargeintField
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'MachineId'
    end
    object qryMachineryStuffId: TLargeintField
      FieldName = 'StuffId'
    end
    object qryMachinery_StuffName: TStringField
      DisplayLabel = #1588#1600#1600#1600#1600#1600#1600#1585#1581'   '#1603#1600#1600#1600#1600#1575#1604#1575'/'#1582#1583#1605#1575#1578
      FieldKind = fkLookup
      FieldName = '_StuffName'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'MachineId'
      ReadOnly = True
      Required = True
      Size = 100
      Lookup = True
    end
    object qryMachinery_UnitName: TStringField
      DisplayLabel = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588
      FieldKind = fkLookup
      FieldName = '_UnitName'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'UnitName'
      KeyFields = 'MachineId'
      ReadOnly = True
      Size = 100
      Lookup = True
    end
    object qryMachineryControlType: TWordField
      DisplayLabel = #1606#1608#1593' '#1603#1606#1578#1585#1604
      FieldName = 'ControlType'
      OnGetText = qryMachineryControlTypeGetText
      OnSetText = qryMachineryControlTypeSetText
    end
    object qryMachineryAmount: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Amount'
    end
    object qryMachineryTotal: TFloatField
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldName = 'Total'
    end
    object qryMachinerystates: TWordField
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'states'
      OnGetText = qryMachineryControlTypeGetText
      OnSetText = qryMachineryControlTypeSetText
    end
    object qryMachineryLookUpID1: TIntegerField
      FieldName = 'LookUpID1'
    end
    object qryMachineryLookUpID2: TIntegerField
      FieldName = 'LookUpID2'
    end
    object qryMachineryLookUpID3: TIntegerField
      FieldName = 'LookUpID3'
    end
    object qryMachineryAmount2: TFMTBCDField
      DisplayLabel = #1605#1602#1583#1575#1585'2'
      FieldName = 'Amount2'
      Precision = 20
      Size = 4
    end
  end
  object srcMachinery: TDataSource
    DataSet = qryMachinery
    OnStateChange = srcMachineryStateChange
    Left = 176
    Top = 416
  end
  object qryStuff_Unit_TecInf: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Uni' +
        'ts.UnitName'
      'FROM         StuffCoding INNER JOIN'
      
        '                      Units ON StuffCoding.n_UnitCode = Units.Un' +
        'itCode')
    Left = 426
    Top = 428
  end
end
