inherited AccCode3F: TAccCode3F
  Left = 214
  Top = 140
  Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1583#1575#1585#1610' '
  ClientHeight = 520
  ClientWidth = 778
  PopupMenu = PopupMenu1
  OnResize = FormResize
  ExplicitWidth = 786
  ExplicitHeight = 551
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 479
    Width = 778
    ExplicitTop = 480
    ExplicitWidth = 778
    inherited BtnReject: TBitBtn
      ExplicitLeft = 15
    end
    object newPanel: TPanel
      Left = 555
      Top = 1
      Width = 234
      Height = 39
      Align = alRight
      BevelOuter = bvNone
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
        TabOrder = 2
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
        TabOrder = 0
      end
    end
    object Button1: TButton
      Left = 246
      Top = 8
      Width = 75
      Height = 25
      Action = actSendToExcel
      TabOrder = 5
    end
    object btnPrint: TButton
      Left = 324
      Top = 7
      Width = 75
      Height = 26
      Action = actprint
      TabOrder = 2
    end
    object btnSort: TButton
      Left = 92
      Top = 8
      Width = 75
      Height = 25
      Action = actsort
      TabOrder = 3
    end
    object btnSersh: TButton
      Left = 169
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      TabOrder = 4
    end
  end
  inherited Panel2: TPanel
    Width = 778
    ExplicitWidth = 778
    inherited lblCaption: TLabel
      Height = 16
    end
  end
  inherited Panel3: TPanel
    Width = 778
    Height = 426
    ExplicitWidth = 778
    ExplicitHeight = 427
    object Label1: TLabel
      Left = 2
      Top = 2
      Width = 774
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'PrvLevelCaption'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 90
    end
    object Label2: TLabel
      Left = 2
      Top = 172
      Width = 774
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'LevelCaption'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 72
    end
    object DBGPLCaption: TDBGrid
      Left = 2
      Top = 18
      Width = 774
      Height = 154
      Align = alTop
      Color = clCream
      DataSource = srcprvcategories
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'TopicCode'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MoeenName_L1'
          Title.Alignment = taCenter
          Width = 647
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MoeenName_L2'
          Width = 5
          Visible = True
        end>
    end
    object DBGLCaption: TDBGrid
      Left = 2
      Top = 188
      Width = 774
      Height = 782
      Align = alTop
      Color = clCream
      DataSource = srccategories
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = DBGLCaptionKeyPress
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'TopicCode'
          Title.Alignment = taCenter
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MoeenName_L1'
          Title.Alignment = taCenter
          Width = 651
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MoeenName_L2'
          Width = 3
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 2
      Top = 970
      Width = 774
      Height = 471
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 2
      ExplicitWidth = 777
      object Panel4: TPanel
        Left = 417
        Top = 2
        Width = 355
        Height = 467
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 358
        object Label3: TLabel
          Left = 1
          Top = 1
          Width = 31
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = 'Label1'
        end
        object Label4: TLabel
          Left = 1
          Top = 191
          Width = 31
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = 'Label2'
        end
        object DBGrid1: TDBGrid
          Left = 1
          Top = 14
          Width = 356
          Height = 177
          Align = alTop
          Color = clCream
          DataSource = srcprvcategories
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'TopicCode'
              Title.Alignment = taCenter
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MoeenName_L1'
              Title.Alignment = taCenter
              Width = 171
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MoeenName_L2'
              Width = 121
              Visible = True
            end>
        end
        object DBGrid2: TDBGrid
          Left = 1
          Top = 204
          Width = 356
          Height = 262
          Align = alClient
          Color = clCream
          DataSource = srccategories
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'TopicCode'
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MoeenName_L1'
              Title.Alignment = taCenter
              Width = 184
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MoeenName_L2'
              Visible = True
            end>
        end
      end
      object Panel5: TPanel
        Left = 2
        Top = 2
        Width = 415
        Height = 467
        Align = alLeft
        TabOrder = 0
        object Panel6: TPanel
          Left = 1
          Top = 1
          Width = 413
          Height = 216
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelOuter = bvNone
          TabOrder = 0
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 413
            Height = 34
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              413
              34)
            object Label5: TLabel
              Left = 298
              Top = 10
              Width = 38
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1603#1583' '#1605#1593#1740#1606
              FocusControl = DBEdit1
            end
            object DBEdit1: TDBEdit
              Left = 200
              Top = 6
              Width = 80
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'TopicCode'
              DataSource = srccategories
              TabOrder = 0
            end
          end
          object pnl_l1: TPanel
            Left = 0
            Top = 34
            Width = 413
            Height = 30
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              413
              30)
            object LabelMoeenName_L1: TLabel
              Left = 291
              Top = 9
              Width = 60
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576
              FocusControl = DBEditMoeenName_L1
            end
            object DBEditMoeenName_L1: TDBEdit
              Left = 10
              Top = 6
              Width = 272
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'MoeenName_L1'
              DataSource = srccategories
              TabOrder = 0
            end
          end
          object pnl_L2: TPanel
            Left = 0
            Top = 64
            Width = 413
            Height = 42
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            DesignSize = (
              413
              42)
            object LabelMoeenName_L2: TLabel
              Left = 12
              Top = 5
              Width = 80
              Height = 13
              Anchors = [akTop, akRight]
              Caption = 'Account CAption'
              FocusControl = DBEditMoeenName_L2
            end
            object DBEditMoeenName_L2: TDBEdit
              Left = 10
              Top = 20
              Width = 272
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'MoeenName_L2'
              DataSource = srccategories
              TabOrder = 0
            end
          end
          object pnlAidInfoType: TPanel
            Left = 0
            Top = 106
            Width = 413
            Height = 34
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 3
            DesignSize = (
              413
              34)
            object Label6: TLabel
              Left = 290
              Top = 9
              Width = 87
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1605#1603#1610
            end
            object cmbAidInfoType: TDBComboBox
              Tag = 3
              Left = 69
              Top = 6
              Width = 212
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'AidInfoType'
              DataSource = srccategories
              TabOrder = 0
            end
          end
          object pnlEssence: TPanel
            Left = 0
            Top = 140
            Width = 413
            Height = 34
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 4
            DesignSize = (
              413
              34)
            object Label7: TLabel
              Left = 289
              Top = 9
              Width = 68
              Height = 13
              Caption = ' '#1605#1575#1607#1610#1578' '#1581#1587#1575#1576
            end
            object cmbEssence: TDBComboBox
              Tag = 5
              Left = 69
              Top = 6
              Width = 212
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'Essence'
              DataSource = srccategories
              Items.Strings = (
                '')
              TabOrder = 0
            end
          end
          object pnlReactionForRepEssence: TPanel
            Left = 0
            Top = 174
            Width = 413
            Height = 34
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 5
            DesignSize = (
              413
              34)
            object Label8: TLabel
              Left = 293
              Top = 9
              Width = 115
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1606#1608#1593' '#1576#1585#1582#1608#1585#1583' '#1576#1575' '#1578#1594#1610#1610#1585' '#1605#1575#1607#1610#1578
            end
            object cmbReactionForRepEssence: TDBComboBox
              Tag = 4
              Left = 70
              Top = 6
              Width = 212
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'ReactionForRepEssence'
              DataSource = srccategories
              Items.Strings = (
                '')
              TabOrder = 0
            end
          end
        end
        object PageControl1: TPageControl
          Left = 1
          Top = 217
          Width = 413
          Height = 249
          ActivePage = TabSheet1
          Align = alClient
          TabOrder = 1
          object TabSheet1: TTabSheet
            Caption = #1578#1601#1589#1610#1604#1610
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object gridTopic: TDBGrid
              Left = 0
              Top = 0
              Width = 405
              Height = 189
              Align = alClient
              Color = clCream
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'DetailCode'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = '_DetailName_L1'
                  Title.Alignment = taCenter
                  Width = 184
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = '_DetailName_L2'
                  Title.Alignment = taCenter
                  Visible = True
                end>
            end
            object Panel7: TPanel
              Left = 0
              Top = 189
              Width = 405
              Height = 32
              Align = alBottom
              TabOrder = 1
              DesignSize = (
                405
                32)
              object BitBtn1: TBitBtn
                Left = 267
                Top = 4
                Width = 135
                Height = 25
                Anchors = [akRight, akBottom]
                Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1607#1575#1610' '#1578#1601#1589#1610#1604#1610' '
                TabOrder = 1
              end
              object BitBtn2: TBitBtn
                Left = 11
                Top = 4
                Width = 75
                Height = 25
                Caption = #1581#1584#1601' '#1575#1585#1578#1576#1575#1591
                TabOrder = 0
              end
            end
          end
          object TabSheet2: TTabSheet
            Caption = #1576#1608#1583#1580#1607
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object GrpBudget: TGroupBox
              Left = 0
              Top = 0
              Width = 405
              Height = 73
              Align = alTop
              Caption = ' '#1603#1583' '#1576#1608#1583#1580#1607'  '#1662#1610#1588' '#1601#1585#1590' '
              TabOrder = 0
              DesignSize = (
                405
                73)
              object SpeedButton2: TSpeedButton
                Left = 282
                Top = 33
                Width = 23
                Height = 21
                Anchors = [akTop, akRight]
                Caption = '...'
              end
              object DBEdit11: TDBEdit
                Left = 308
                Top = 33
                Width = 53
                Height = 21
                DataField = 'BudgetTopicID'
                DataSource = srccategories
                TabOrder = 0
              end
              object DBEdit_BudgetTopicName: TDBEdit
                Tag = 10
                Left = 35
                Top = 35
                Width = 245
                Height = 19
                Color = 15132390
                Ctl3D = False
                DataField = '_BudgetTopicName'
                DataSource = srccategories
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 1
              end
            end
            object GrpProject: TGroupBox
              Left = 0
              Top = 73
              Width = 405
              Height = 70
              Align = alTop
              Caption = ' '#1603#1583' '#1591#1585#1581' '#1608' '#1662#1585#1608#1688#1607' '#1662#1610#1588' '#1601#1585#1590' '
              TabOrder = 1
              DesignSize = (
                405
                70)
              object SpeedButton5: TSpeedButton
                Left = 282
                Top = 25
                Width = 23
                Height = 21
                Anchors = [akTop, akRight]
                Caption = '...'
              end
              object DBEdit9: TDBEdit
                Left = 308
                Top = 26
                Width = 53
                Height = 21
                DataField = 'ProjectID'
                DataSource = srccategories
                TabOrder = 0
              end
              object DBEdit_ProjectName: TDBEdit
                Tag = 10
                Left = 35
                Top = 26
                Width = 245
                Height = 19
                Color = 15132390
                Ctl3D = False
                DataField = '_ProjectName'
                DataSource = srccategories
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 1
              end
            end
          end
          object TabSheet3: TTabSheet
            Caption = #1581#1587#1575#1576#1585#1587#1610' '
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            DesignSize = (
              405
              221)
            object Label11: TLabel
              Left = 232
              Top = 27
              Width = 121
              Height = 13
              Anchors = [akRight]
              Caption = #1593#1591#1601' '#1581#1587#1575#1576#1585#1587#1610' - '#1593#1583#1583#1610' '
            end
            object Label12: TLabel
              Left = 232
              Top = 55
              Width = 111
              Height = 13
              Anchors = [akRight]
              Caption = #1593#1591#1601' '#1581#1587#1575#1576#1585#1587#1610' - '#1605#1578#1606' '
            end
            object DBEdit7: TDBEdit
              Left = 107
              Top = 23
              Width = 121
              Height = 21
              Anchors = [akRight]
              DataField = 'AuditReferenceNo'
              DataSource = srccategories
              TabOrder = 0
            end
            object DBEdit8: TDBEdit
              Left = 107
              Top = 51
              Width = 121
              Height = 21
              Anchors = [akRight]
              DataField = 'AuditReferenceTxt'
              DataSource = srccategories
              TabOrder = 1
            end
            object pnlAuditID: TGroupBox
              Left = -15
              Top = 82
              Width = 420
              Height = 65
              TabOrder = 2
              DesignSize = (
                420
                65)
              object Label15: TLabel
                Left = 254
                Top = 15
                Width = 94
                Height = 13
                Caption = #1603#1583' '#1603#1606#1578#1585#1604' '#1581#1587#1575#1576#1585#1587#1610
              end
              object SpeedButton1: TSpeedButton
                Left = 122
                Top = 10
                Width = 23
                Height = 21
                Anchors = [akTop, akRight]
                Caption = '...'
              end
              object DBEditAuditID: TDBEdit
                Left = 147
                Top = 10
                Width = 95
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'AuditID'
                DataSource = srccategories
                TabOrder = 0
              end
              object DBEdit13: TDBEdit
                Left = 122
                Top = 36
                Width = 234
                Height = 19
                Color = 15132390
                Ctl3D = False
                DataField = '_AuditName'
                DataSource = srccategories
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 1
              end
            end
          end
          object TabSheet4: TTabSheet
            Caption = #1589#1608#1585#1578#1607#1575#1610' '#1605#1575#1604#1610' '
            ImageIndex = 3
            object PnlLastYear: TGroupBox
              Left = 0
              Top = 0
              Width = 405
              Height = 57
              Align = alTop
              Caption = #1603#1583' '#1605#1593#1740#1606' '#1587#1575#1604' '#1602#1576#1604#1610
              TabOrder = 0
              DesignSize = (
                405
                57)
              object Label9: TLabel
                Left = 305
                Top = 12
                Width = 3
                Height = 13
                Anchors = [akTop, akRight]
              end
              object SpeedButton6: TSpeedButton
                Left = 259
                Top = 23
                Width = 23
                Height = 21
                Anchors = [akTop, akRight]
                Caption = '...'
              end
              object DBEdit2: TDBEdit
                Left = 285
                Top = 23
                Width = 52
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'LastYearTopicCode'
                DataSource = srccategories
                TabOrder = 0
              end
              object DBEdit3: TDBEdit
                Left = 23
                Top = 24
                Width = 233
                Height = 19
                Color = 15132390
                Ctl3D = False
                DataField = '_LastYearTopicCodeName'
                DataSource = srccategories
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 1
              end
            end
            object pnlFinancialID: TGroupBox
              Left = 0
              Top = 57
              Width = 405
              Height = 56
              Align = alTop
              Caption = #1603#1583' '#1578#1585#1575#1586' '#1606#1575#1605#1607#8207#1575#1610
              TabOrder = 1
              DesignSize = (
                405
                56)
              object SpeedButton4: TSpeedButton
                Left = 261
                Top = 22
                Width = 23
                Height = 21
                Anchors = [akTop, akRight]
                Caption = '...'
              end
              object DBEdit4: TDBEdit
                Left = 287
                Top = 22
                Width = 50
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'FinancialID'
                DataSource = srccategories
                TabOrder = 0
              end
              object DBEdit6: TDBEdit
                Left = 24
                Top = 23
                Width = 233
                Height = 19
                Color = 15132390
                Ctl3D = False
                DataField = '_FinancialName'
                DataSource = srccategories
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 1
              end
            end
            object pnlTaxonomy: TGroupBox
              Left = 0
              Top = 113
              Width = 405
              Height = 85
              Align = alTop
              Caption = #1591#1576#1602#1607' '#1576#1606#1583#1610
              TabOrder = 2
              DesignSize = (
                405
                85)
              object Label10: TLabel
                Left = 276
                Top = 16
                Width = 72
                Height = 13
                Caption = #1606#1581#1608#1607' '#1591#1576#1602#1607' '#1576#1606#1583#1610
              end
              object Label14: TLabel
                Left = 276
                Top = 43
                Width = 100
                Height = 13
                Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1591#1576#1602#1607' '#1576#1606#1583#1610
              end
              object SpeedButton3: TSpeedButton
                Left = 140
                Top = 38
                Width = 23
                Height = 21
                Anchors = [akTop, akRight]
                Caption = '...'
              end
              object cmbTaxonomyType: TDBComboBox
                Left = 54
                Top = 13
                Width = 213
                Height = 21
                DataField = 'TaxonomyType'
                DataSource = srccategories
                TabOrder = 0
              end
              object DBEdit5: TDBEdit
                Left = 166
                Top = 38
                Width = 101
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'TaxonomyTopicCode'
                DataSource = srccategories
                TabOrder = 1
              end
              object DBEdit12: TDBEdit
                Left = 54
                Top = 62
                Width = 213
                Height = 19
                Color = 15132390
                Ctl3D = False
                DataField = '_TaxonomyName'
                DataSource = srccategories
                ParentCtl3D = False
                ReadOnly = True
                TabOrder = 2
              end
            end
          end
          object TabSheet5: TTabSheet
            Caption = #1605#1585#1603#1586#1607#1586#1610#1606#1607' 1'
            ImageIndex = 4
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object gridCtopic: TDBGrid
              Left = 0
              Top = 0
              Width = 405
              Height = 189
              Align = alClient
              Color = clCream
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'CTopicCode'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = '_CenterTopicName_l1'
                  Title.Alignment = taCenter
                  Width = 94
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = '_CenterTopicName_l2'
                  Title.Alignment = taCenter
                  Width = 165
                  Visible = True
                end>
            end
            object Panel9: TPanel
              Left = 0
              Top = 189
              Width = 405
              Height = 32
              Align = alBottom
              TabOrder = 1
              DesignSize = (
                405
                32)
              object BitBtn3: TBitBtn
                Left = 299
                Top = 4
                Width = 101
                Height = 25
                Anchors = [akRight, akBottom]
                Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1578#1601#1589#1610#1604#1610'2'#39' '
                TabOrder = 0
              end
              object BitBtn4: TBitBtn
                Left = 11
                Top = 4
                Width = 75
                Height = 25
                Caption = #1581#1584#1601' '#1575#1585#1578#1576#1575#1591
                TabOrder = 1
              end
            end
          end
        end
      end
    end
  end
  inherited ActionList: TActionList
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srccategories
    end
    inherited DataSetPost1: TDataSetPost [2]
      DataSource = srccategories
    end
    inherited DataSetCancel1: TDataSetCancel [3]
      DataSource = srccategories
    end
    inherited DataSetDelete1_: TDataSetDelete [4]
      DataSource = srccategories
    end
    object actprint: TAction [5]
      Caption = #1670#1575#1662' '
      OnExecute = actprintExecute
    end
    object actSendToExcel: TAction [6]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
    object actsort: TAction [7]
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actsortExecute
    end
    inherited DataSetEdit1: TDataSetEdit [8]
      DataSource = srccategories
    end
    inherited actSearch_: TAction [9]
      OnExecute = actSearch_Execute
    end
  end
  inherited ImageList1: TImageList
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
  object qryprvcategories: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryprvcategoriesAfterScroll
    Parameters = <
      item
        Name = 'LevelID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         dbo.Categories'
      'WHERE     (LevelID =:LevelID )')
    Left = 200
    Top = 8
    object qryprvcategoriesTopicCode: TLargeintField
      DisplayLabel = #1603#1583' '#1605#1593#1740#1606
      FieldName = 'TopicCode'
    end
    object qryprvcategoriesMoeenName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576
      FieldName = 'MoeenName_L1'
      Size = 100
    end
    object qryprvcategoriesMoeenName_L2: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576' 2'
      FieldName = 'MoeenName_L2'
      Size = 100
    end
  end
  object qrycategories: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    BeforeInsert = qrycategoriesBeforeInsert
    AfterInsert = qrycategoriesAfterInsert
    BeforeEdit = qrycategoriesBeforeEdit
    AfterEdit = qrycategoriesAfterEdit
    BeforePost = qrycategoriesBeforePost
    AfterPost = qrycategoriesAfterPost
    AfterCancel = qrycategoriesAfterCancel
    BeforeDelete = qrycategoriesBeforeDelete
    AfterDelete = qrycategoriesAfterDelete
    Parameters = <
      item
        Name = 'PrvCodelength1'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'LevelID'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'PrvCodelength'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'PrvTopicCode'
        DataType = ftString
        Size = 1
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT     *, LEFT(TopicCode, :PrvCodelength1) AS PrvTopicCode '
      'FROM         dbo.Categories'
      
        'WHERE      (LevelID =:LevelID ) AND (LEFT(TopicCode, :PrvCodelen' +
        'gth) =:PrvTopicCode)'
      ''
      ''
      '')
    Left = 528
    Top = 280
    object qrycategoriesTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1593#1740#1606
      FieldName = 'TopicCode'
    end
    object qrycategoriesLevelID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1591#1581' '
      FieldName = 'LevelID'
    end
    object qrycategoriesFinancialID: TIntegerField
      DisplayLabel = #1603#1583' '#1589#1608#1585#1578#1607#1575#1610' '#1605#1575#1604#1610' '
      FieldName = 'FinancialID'
    end
    object qrycategoriesAuditID: TIntegerField
      DisplayLabel = #1603#1583' '#1603#1606#1578#1585#1604' '#1581#1587#1575#1576#1585#1587#1610' '
      FieldName = 'AuditID'
    end
    object qrycategoriesEssence: TWordField
      DisplayLabel = #1605#1575#1607#1610#1578' '
      FieldName = 'Essence'
    end
    object qrycategoriesReactionForRepEssence: TWordField
      DisplayLabel = #1606#1608#1593' '#1576#1585#1582#1608#1585#1583' '#1576#1575' '#1578#1594#1610#1610#1585' '#1605#1575#1607#1610#1578' '
      FieldName = 'ReactionForRepEssence'
      OnGetText = qrycategoriesReactionForRepEssenceGetText
      OnSetText = qrycategoriesReactionForRepEssenceSetText
    end
    object qrycategoriesTaxonomyType: TWordField
      DisplayLabel = #1606#1581#1608#1607' '#1591#1576#1602#1607' '#1576#1606#1583#1610' '
      FieldName = 'TaxonomyType'
      OnGetText = qrycategoriesTaxonomyTypeGetText
      OnSetText = qrycategoriesTaxonomyTypeSetText
    end
    object qrycategoriesTaxonomyTopicCode: TLargeintField
      DisplayLabel = #1603#1583' '#1591#1576#1602#1607' '#1576#1606#1583#1610' '
      FieldName = 'TaxonomyTopicCode'
    end
    object qrycategoriesLastYearTopicCode: TLargeintField
      DisplayLabel = #1603#1583' '#1605#1593#1740#1606' '#1587#1575#1604' '#1602#1576#1604' '
      FieldName = 'LastYearTopicCode'
    end
    object qrycategoriesLastTopicCode: TLargeintField
      DisplayLabel = #1603#1583' '#1605#1593#1740#1606' '#1602#1576#1604#1610' '
      FieldName = 'LastTopicCode'
    end
    object qrycategoriesAidInfoType: TWordField
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1605#1603#1610' '
      FieldName = 'AidInfoType'
      OnGetText = qrycategoriesAidInfoTypeGetText
      OnSetText = qrycategoriesAidInfoTypeSetText
    end
    object qrycategoriesAuditReferenceNo: TIntegerField
      DisplayLabel = #1593#1591#1601' '#1581#1587#1575#1576#1585#1587#1610' - '#1593#1583#1583#1610
      FieldName = 'AuditReferenceNo'
    end
    object qrycategoriesAuditReferenceTxt: TStringField
      DisplayLabel = #1593#1591#1601' '#1581#1587#1575#1576#1585#1587#1610' - '#1605#1578#1606#1610
      FieldName = 'AuditReferenceTxt'
      Size = 30
    end
    object qrycategoriesRecalInterfaceID: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1591#1581' '#1576#1608#1583#1580#1607' '
      FieldName = 'RecalInterfaceID'
      Size = 120
    end
    object qrycategoriesBudgetTopicID: TIntegerField
      DisplayLabel = #1603#1583' '#1576#1608#1583#1580#1607' '#1662#1610#1588' '#1601#1585#1590
      FieldName = 'BudgetTopicID'
    end
    object qrycategoriesProjectID: TIntegerField
      DisplayLabel = #1603#1583' '#1591#1585#1581' '#1608' '#1662#1585#1608#1688#1607' '#1662#1610#1588' '#1601#1585#1590' '
      FieldName = 'ProjectID'
    end
    object qrycategoriesmakeDate: TDateTimeField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1610#1580#1575#1583
      FieldName = 'makeDate'
    end
    object qrycategoriesPrvTopicCode: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1591#1581' '#1602#1576#1604#1610' '
      FieldName = 'PrvTopicCode'
      ReadOnly = True
      Size = 8000
    end
    object qrycategoriesMoeenName_L1: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576
      FieldName = 'MoeenName_L1'
      Size = 100
    end
    object qrycategoriesMoeenName_L2: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576' 2'
      FieldName = 'MoeenName_L2'
      Size = 100
    end
    object qrycategories_DetailsRelation: TBooleanField
      FieldKind = fkLookup
      FieldName = '_DetailsRelation'
      LookupDataSet = qryAccTopicLevels
      LookupKeyFields = 'LevelID'
      LookupResultField = 'DetailsRelationType'
      KeyFields = 'LevelID'
      LookupCache = True
      Lookup = True
    end
    object qrycategories_CodeLength: TIntegerField
      FieldKind = fkLookup
      FieldName = '_CodeLength'
      LookupDataSet = qryAccTopicLevels
      LookupKeyFields = 'LevelID'
      LookupResultField = 'CodeLength'
      KeyFields = 'LevelID'
      Lookup = True
    end
    object qrycategories_AuditName: TStringField
      FieldKind = fkLookup
      FieldName = '_AuditName'
      LookupDataSet = qry_AuditID
      LookupKeyFields = 'AuditCode'
      LookupResultField = 'AuditName_L1'
      KeyFields = 'AuditID'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qrycategories_TaxonomyName: TStringField
      FieldKind = fkLookup
      FieldName = '_TaxonomyName'
      LookupDataSet = qry_Taxonomy
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName_L1'
      KeyFields = 'TaxonomyTopicCode'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qrycategories_FinancialName: TStringField
      FieldKind = fkLookup
      FieldName = '_FinancialName'
      LookupDataSet = qry_FinancialID
      LookupKeyFields = 'FinancialCode'
      LookupResultField = 'FinancialName_L1'
      KeyFields = 'FinancialID'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qrycategories_LastYearTopicCodeName: TStringField
      FieldKind = fkLookup
      FieldName = '_LastYearTopicCodeName'
      LookupDataSet = qry_LastYearTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName_L1'
      KeyFields = 'LastYearTopicCode'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qrycategories_BudgetTopicName: TStringField
      FieldKind = fkLookup
      FieldName = '_BudgetTopicName'
      LookupDataSet = qryBudget
      LookupKeyFields = 'BudgetTopicID'
      LookupResultField = 'BudgetCaption_L1'
      KeyFields = 'BudgetTopicID'
      LookupCache = True
      Lookup = True
    end
    object qrycategories_ProjectName: TStringField
      FieldKind = fkLookup
      FieldName = '_ProjectName'
      LookupDataSet = qry_project
      LookupKeyFields = 'ProjectID'
      LookupResultField = 'ProjectCaption_L1'
      KeyFields = 'ProjectID'
      LookupCache = True
      Size = 150
      Lookup = True
    end
  end
  object srcprvcategories: TDataSource
    DataSet = qryprvcategories
    Left = 296
  end
  object srccategories: TDataSource
    DataSet = qrycategories
    OnStateChange = srccategoriesStateChange
    Left = 432
    Top = 264
  end
  object qryinit: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryinitAfterScroll
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.AccTopicLevels.PrvLevelID, AccTopicLevels_1.Level' +
        'Caption_L1 AS PrvLevelCaption_L1, dbo.AccTopicLevels.LevelID, '
      
        '                      dbo.AccTopicLevels.LevelCaption_L1, AccTop' +
        'icLevels_1.CodeLength AS prvCodeLength, dbo.AccTopicLevels.CodeL' +
        'ength, '
      
        '                      dbo.AccTopicLevels.LevelCaption_L2, AccTop' +
        'icLevels_1.LevelCaption_L2 AS PrvLevelCaption_L2'
      'FROM         dbo.AccTopicLevels LEFT OUTER JOIN'
      
        '                      dbo.AccTopicLevels AccTopicLevels_1 ON dbo' +
        '.AccTopicLevels.PrvLevelID = AccTopicLevels_1.LevelID'
      'WHERE     (dbo.AccTopicLevels.LevelID = :FormType)')
    Left = 464
    Top = 8
    object qryinitPrvLevelID: TIntegerField
      FieldName = 'PrvLevelID'
    end
    object qryinitPrvLevelCaption_L1: TStringField
      FieldName = 'PrvLevelCaption_L1'
      Size = 80
    end
    object qryinitPrvLevelCaption_L2: TStringField
      FieldName = 'PrvLevelCaption_L2'
      Size = 80
    end
    object qryinitLevelID: TIntegerField
      FieldName = 'LevelID'
    end
    object qryinitprvCodeLength: TWordField
      FieldName = 'prvCodeLength'
    end
    object qryinitCodeLength: TWordField
      FieldName = 'CodeLength'
    end
    object qryinitLevelCaption_L1: TStringField
      FieldName = 'LevelCaption_L1'
      Size = 80
    end
    object qryinitLevelCaption_L2: TStringField
      FieldName = 'LevelCaption_L2'
      Size = 80
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 248
    Top = 301
    object N1: TMenuItem
      Action = DataSetInsert1
    end
    object N2: TMenuItem
      Action = DataSetEdit1
    end
    object N3: TMenuItem
      Action = DataSetDelete1_
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Excel1: TMenuItem
      Action = actSendToExcel
    end
    object N5: TMenuItem
      Action = actprint
    end
    object N6: TMenuItem
      Action = actsort
    end
    object N7: TMenuItem
      Action = actSearch_
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object N9: TMenuItem
      Action = actExit
    end
  end
  object qry_Taxonomy: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     TopicCode, MoeenName_L2, MoeenName_L1'
      'FROM         dbo.Categories'
      'WHERE     (LevelID = :FormType)')
    Left = 615
    Top = 101
  end
  object qry_FinancialID: TADOQuery
    Connection = DmF.adcAccounting
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.FinancialTopics.FinancialCode, dbo.FinancialTopic' +
        's.FinancialName_L1, dbo.FinancialTopics.FinancialName_L2'
      'FROM         dbo.FinancialTopicsForUse RIGHT OUTER JOIN'
      
        '                      dbo.FinancialTopics ON dbo.FinancialTopics' +
        'ForUse.FinancialCode = dbo.FinancialTopics.FinancialCode'
      'WHERE     (dbo.FinancialTopicsForUse.PrvFinancialCode IS NULL)')
    Left = 575
    Top = 157
  end
  object qry_project: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.Projects.ProjectID, dbo.Projects.ProjectCaption_L' +
        '1, dbo.Projects.ProjectCaption_L2'
      'FROM         dbo.Projects LEFT OUTER JOIN'
      
        '                      dbo.ProjectsForUse ON dbo.Projects.Project' +
        'ID = dbo.ProjectsForUse.PrvProjectID'
      'WHERE     (dbo.ProjectsForUse.PrvProjectID IS NULL)')
    Left = 567
    Top = 237
    object qry_projectProjectID: TIntegerField
      FieldName = 'ProjectID'
    end
    object qry_projectProjectCaption_L1: TStringField
      FieldName = 'ProjectCaption_L1'
      Size = 100
    end
    object qry_projectProjectCaption_L2: TStringField
      FieldName = 'ProjectCaption_L2'
      Size = 100
    end
  end
  object qryBudget: TADOQuery
    AutoCalcFields = False
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.BudgetTopics.BudgetTopicID, dbo.BudgetTopics.Budg' +
        'etCaption_L1 , dbo.BudgetTopics.BudgetCaption_L2'
      'FROM         dbo.BudgetTopics LEFT OUTER JOIN'
      
        '                      dbo.BudgetTopicsForUse ON dbo.BudgetTopics' +
        '.BudgetTopicID = dbo.BudgetTopicsForUse.PrvBudgetTopicID'
      'WHERE     (dbo.BudgetTopicsForUse.PrvBudgetTopicID IS NULL)')
    Left = 668
    Top = 293
    object qryBudgetBudgetTopicID: TIntegerField
      FieldName = 'BudgetTopicID'
    end
    object qryBudgetBudgetCaption_L1: TStringField
      FieldName = 'BudgetCaption_L1'
      Size = 100
    end
    object qryBudgetBudgetCaption_L2: TStringField
      FieldName = 'BudgetCaption_L2'
      Size = 100
    end
  end
  object qry_LastYearTopicCode: TADOQuery
    Connection = DmF.adcOldAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     TopicCode, MoeenName_L2, MoeenName_L1'
      'FROM         dbo.Categories'
      'WHERE     (LevelID = :FormType)')
    Left = 647
    Top = 349
  end
  object qry_AuditID: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.AuditTopics.AuditCode, dbo.AuditTopics.AuditName_' +
        'L1, dbo.AuditTopics.AuditName_L2'
      'FROM         dbo.AuditTopics LEFT OUTER JOIN'
      
        '                      dbo.AuditTopicForUse ON dbo.AuditTopics.Au' +
        'ditCode = dbo.AuditTopicForUse.PrvAuditCode'
      'WHERE     (dbo.AuditTopicForUse.PrvAuditCode IS NULL)')
    Left = 655
    Top = 397
  end
  object qryAccTopicLevels: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
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
      'Select * from  AccTopicLevels'
      #13#13'where  AccTopicLevels.LevelID=:LevelID'
      #13'order by LevelID')
    Left = 520
    Top = 104
    object qryAccTopicLevelsLevelID: TIntegerField
      FieldName = 'LevelID'
    end
    object qryAccTopicLevelsLevelCaption_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1587#1591#1581' '
      FieldName = 'LevelCaption_L1'
      Size = 50
    end
    object qryAccTopicLevelsLevelCaption_L2: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1587#1591#1581' 2'
      FieldName = 'LevelCaption_L2'
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
    end
    object qryAccTopicLevelsAuditRelationType: TWordField
      DisplayLabel = #1606#1581#1608#1607' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1603#1606#1578#1585#1604' '#1607#1575#1610' '#1581#1587#1575#1576#1585#1587#1610
      FieldName = 'AuditRelationType'
    end
    object qryAccTopicLevelsEssenceSelectable: TWordField
      DisplayLabel = #1606#1581#1608#1607' '#1575#1606#1578#1582#1575#1576' '#1605#1575#1607#1610#1578' '#1581#1587#1575#1576' '
      FieldName = 'EssenceSelectable'
    end
    object qryAccTopicLevelsAccRelationType: TWordField
      DisplayLabel = #1606#1581#1608#1607' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'AccRelationType'
    end
    object qryAccTopicLevelsCenterTopicsRelationType: TWordField
      DisplayLabel = #1606#1581#1608#1607' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1605#1585#1575#1603#1586' '#1607#1586#1610#1606#1607
      FieldName = 'CenterTopicsRelationType'
    end
    object qryAccTopicLevelsAssignedForm: TWordField
      DisplayLabel = #1601#1585#1605' '#1602#1575#1576#1604' '#1606#1605#1575#1610#1588' '
      FieldName = 'AssignedForm'
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
    end
    object qryAccTopicLevelsProjectsRelationType: TWordField
      DisplayLabel = #1606#1581#1608#1607' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1603#1583#1610#1606#1711' '#1591#1585#1581' '#1608' '#1662#1585#1608#1688#1607' '#1607#1575
      FieldName = 'ProjectsRelationType'
    end
    object qryAccTopicLevelsUseInDocumentsActive: TWordField
      DisplayLabel = #1570#1610#1575' '#1605#1580#1575#1586' '#1576#1607' '#1575#1587#1578#1601#1575#1583#1607' '#1583#1585' '#1575#1575#1587#1606#1575#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1605#1610' '#1588#1608#1583
      FieldName = 'UseInDocumentsActive'
    end
    object qryAccTopicLevelsReactionEssenceType: TWordField
      DisplayLabel = #1606#1581#1608#1607' '#1575#1606#1578#1582#1575#1576' ('#1606#1581#1608#1607' '#1576#1585#1582#1608#1585#1583' '#1576#1575' '#1578#1594#1610#1610#1585' '#1605#1575#1607#1610#1578')'
      FieldName = 'ReactionEssenceType'
    end
    object qryAccTopicLevelsNoteActive: TWordField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610' '#1606#1605#1575#1610#1588' '#1588#1608#1583
      FieldName = 'NoteActive'
    end
    object qryAccTopicLevelsDetailsRelationType: TWordField
      FieldName = 'DetailsRelationType'
    end
    object qryAccTopicLevelsAccLastYearActive: TWordField
      FieldName = 'AccLastYearActive'
    end
    object qryAccTopicLevelsRecalInterfaceID: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1591#1581' '#1607#1575#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1576#1608#1583#1580#1607
      FieldName = 'RecalInterfaceID'
      Size = 120
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
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
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\Accounting\Exe\Report\accreport2.rtm'
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
    Left = 89
    Top = 391
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 29104
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 7938
        mmTop = 23283
        mmWidth = 185209
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        OnGetText = ppLabel6GetText
        Border.mmPadding = 0
        Caption = 'Label6'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 12435
        mmTop = 12435
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable1GetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 12965
        mmTop = 6615
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607' '
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
        mmLeft = 74877
        mmTop = 2646
        mmWidth = 53181
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line21'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 8996
        mmTop = 18785
        mmWidth = 185209
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1605#1593#1740#1606' '
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
        mmLeft = 175155
        mmTop = 19579
        mmWidth = 12488
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 112977
        mmTop = 19579
        mmWidth = 34131
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1605#1593#1740#1606' '#1607#1575#1610' '#1603#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 89429
        mmTop = 8996
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '    '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4022
        mmLeft = 169905
        mmTop = 24342
        mmWidth = 3895
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'Accont Caption'
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
        mmLeft = 37547
        mmTop = 19579
        mmWidth = 22013
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 14288
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'TopicCode'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 173567
        mmTop = 4498
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'MoeenName_L1'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6085
        mmLeft = 87048
        mmTop = 4498
        mmWidth = 78846
        BandType = 4
        LayerName = Foreground1
      end
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 11113
        mmWidth = 203200
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline1
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
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '23.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline1'
          object ppHeaderBand2: TppHeaderBand
            Visible = False
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand2: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppDBText3: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText3'
              Border.mmPadding = 0
              DataField = 'TopicCode'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6350
              mmLeft = 178065
              mmTop = 0
              mmWidth = 21696
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText4: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText4'
              Border.mmPadding = 0
              DataField = 'MoeenName_L1'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5821
              mmLeft = 71438
              mmTop = 0
              mmWidth = 89165
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = 'MoeenName_L2'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 5821
              mmLeft = 3175
              mmTop = 0
              mmWidth = 45508
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
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
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'MoeenName_L2'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6085
        mmLeft = 2381
        mmTop = 4498
        mmWidth = 57150
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'TopicCode'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 152929
        mmTop = 1323
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583' '#1603#1583' '#1581#1587#1575#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 173567
        mmTop = 1323
        mmWidth = 16404
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 8996
        mmTop = 5556
        mmWidth = 185209
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpBottom
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 8996
        mmTop = 5029
        mmWidth = 185209
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583' '#1603#1583' '#1581#1587#1575#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 174096
        mmTop = 0
        mmWidth = 16404
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'TopicCode'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 153459
        mmTop = 0
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground1
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srccategories
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 33
    Top = 303
    MasterDataPipelineName = 'ppDBPipeline2'
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'TopicCode'
      FieldName = 'TopicCode'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'MoeenName_L1'
      FieldName = 'MoeenName_L1'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'MoeenName_L2'
      FieldName = 'MoeenName_L2'
      FieldLength = 100
      DisplayWidth = 100
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'LevelID'
      FieldName = 'LevelID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'FinancialID'
      FieldName = 'FinancialID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'AuditID'
      FieldName = 'AuditID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'TaxonomyType'
      FieldName = 'TaxonomyType'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Essence'
      FieldName = 'Essence'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'ReactionForRepEssence'
      FieldName = 'ReactionForRepEssence'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'TaxonomyTopicCode'
      FieldName = 'TaxonomyTopicCode'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'LastYearTopicCode'
      FieldName = 'LastYearTopicCode'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'LastTopicCode'
      FieldName = 'LastTopicCode'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'AidInfoType'
      FieldName = 'AidInfoType'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'AuditReferenceNo'
      FieldName = 'AuditReferenceNo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'AuditReferenceTxt'
      FieldName = 'AuditReferenceTxt'
      FieldLength = 30
      DisplayWidth = 30
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'RecalInterfaceID'
      FieldName = 'RecalInterfaceID'
      FieldLength = 120
      DisplayWidth = 120
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'BudgetTopicID'
      FieldName = 'BudgetTopicID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppDBPipeline1ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProjectID'
      FieldName = 'ProjectID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'makeDate'
      FieldName = 'makeDate'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 18
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'PrvTopicCode'
      FieldName = 'PrvTopicCode'
      FieldLength = 8000
      DisplayWidth = 8000
      Position = 19
    end
    object ppDBPipeline1ppField21: TppField
      Alignment = taRightJustify
      FieldAlias = '_CodeLength'
      FieldName = '_CodeLength'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = '_AuditName'
      FieldName = '_AuditName'
      FieldLength = 150
      DisplayWidth = 150
      Position = 21
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = '_TaxonomyName'
      FieldName = '_TaxonomyName'
      FieldLength = 150
      DisplayWidth = 150
      Position = 22
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = '_FinancialName'
      FieldName = '_FinancialName'
      FieldLength = 150
      DisplayWidth = 150
      Position = 23
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = '_LastYearTopicCodeName'
      FieldName = '_LastYearTopicCodeName'
      FieldLength = 150
      DisplayWidth = 150
      Position = 24
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = '_BudgetTopicName'
      FieldName = '_BudgetTopicName'
      FieldLength = 20
      DisplayWidth = 20
      Position = 25
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = '_ProjectName'
      FieldName = '_ProjectName'
      FieldLength = 150
      DisplayWidth = 150
      Position = 26
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcprvcategories
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 41
    Top = 111
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'TopicCode'
      FieldName = 'TopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'MoeenName_L1'
      FieldName = 'MoeenName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'MoeenName_L2'
      FieldName = 'MoeenName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
  end
  object PopPrint: TPopupMenu
    Left = 576
    Top = 8
    object N11: TMenuItem
      Caption = #1670#1575#1662'1'
      OnClick = N11Click
    end
    object N21: TMenuItem
      Caption = #1670#1575#1662'2'
      OnClick = N21Click
    end
  end
end
