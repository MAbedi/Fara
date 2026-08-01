inherited MaintenanceF: TMaintenanceF
  Left = 389
  Top = 180
  Caption = #1583#1587#1578#1608#1585' '#1705#1575#1585' '#1578#1593#1605#1740#1585#1575#1578' '
  ClientHeight = 518
  ClientWidth = 812
  OnResize = FormResize
  ExplicitWidth = 828
  ExplicitHeight = 557
  TextHeight = 13
  inherited Panel3: TPanel [0]
    Top = 55
    Width = 812
    TabOrder = 1
    TabStop = True
    ExplicitTop = 55
    ExplicitWidth = 816
    ExplicitHeight = 423
    object DBGrid1: TDBGrid
      Tag = 111
      Left = 2
      Top = 275
      Width = 812
      Height = 83
      Align = alClient
      Color = clCream
      DataSource = srcFunctions
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 5
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
          FieldName = 'PersonId'
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_PersonId'
          Width = 125
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'StuffCode2'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_StuffCode2'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FunctionDate'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FunctionAmount'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FunctionHour'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StartHour'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EndHour'
          Width = 63
          Visible = True
        end>
    end
    object pnlDelete: TPanel
      Left = 2
      Top = 398
      Width = 812
      Height = 23
      Align = alBottom
      BevelOuter = bvLowered
      TabOrder = 6
      object spdSelectCheck: TSpeedButton
        Left = 5
        Top = 1
        Width = 23
        Height = 22
        Hint = #1601#1585#1575#1582#1608#1575#1606#1610' '#1670#1603#1607#1575
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000A3A3A55A5A54
          5858466C68477171467070467171467171467171467171467171466E6E466661
          465C5C485555498B8B8A56565054546B5C5EA111239E0101A10303A10101A100
          00A10000A10101A10202A10B0BA12739A05656A26767955C5C5E27271E908FB5
          999EFF2947FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0808FF4362
          FF9090FFAEAEFD68686B2929208483A58A8EF92E4AF43835F83232F80A0AF802
          02F80303F80D0DF83939F83333F83753F78585F99F9FE766666928281F8685A8
          8E93FE2844F95351FDF6F7FDC5C5FD8383FD8A8AFDD2D2FDE8E8FD3F3FFD3653
          FC8888FEA2A2EB66666928281F8685A88C90FE3652F90000FD4F50FDFFFFFDFF
          FFFDFFFFFDFFFFFD2D2DFD0000FD425FFC8686FEA2A2EB66666928281F8685A8
          8D91FE2C48F93F3BFD3D3DFD6969FDFFFFFDF3F3FD5353FD3E3EFD3A3AFD3754
          FC8787FEA2A2EB66666928281F8685A88E92FE2A45F94D4BFCFFFFFDABABFD8E
          8EFD8888FDBFBFFDEEF0FD3839FC3854FC8888FEA2A2EB66666928281F8685A8
          8C90FE3552F90000FE4F42FCFFFFFDBEBFFDD3D4FDFFFFFD2F21FC0000FF415F
          FC8686FEA2A2EB66666928281F8685A88C91FE3048FA1B36EC0D48F77363FDFF
          FFFCFFFAFC584FFE0C4AF42033EF3B55FE8687FEA2A2EB66666928281F8685A8
          8C92FE2F48FA1D32EA33F3EB0AA8FF7D7FFC6578FC0FC3FE32D8E81D25EE3B57
          FD8788FEA2A2EB66666928281F8685A88C90FE3151F80700FF003AEA18FFEC10
          AFFF12C9FF16F2E80021EE0D02FF3E5DFB8686FEA2A2EB6666692828208685A8
          8C90FD314DF80A0BFB0000FE0349E81CFFEE18F6EA0030EC0000FE1014FB3D5A
          FB8686FDA2A2EA6666692929208A89AC9094FF3450FF0C09FC0204FB0100FF12
          5FF90C47FA0700FF0204FF1211FF405DFF8A8AFFA6A6EF68686B25251C767597
          7C80EA253FE60000E30000E10000E90000EA0000EA1012E80000E90303E9304C
          E87676EA9292D85F5F615D5D5C41414341424A3A3C4A37374936364836364A36
          384A36384A38384A36364A37374A3B3D4A43434C4141466F6F6F}
        ParentShowHint = False
        ShowHint = True
      end
      object SpeedButton16: TSpeedButton
        Left = 32
        Top = 1
        Width = 75
        Height = 22
        Action = DataSetDelete1
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000220B0000220B000000010000000100000031DE000031
          E7000031EF000031F700FF00FF000031FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00040404040404
          0404040404040404000004000004040404040404040404000004040000000404
          0404040404040000040404000000000404040404040000040404040402000000
          0404040400000404040404040404000000040000000404040404040404040400
          0101010004040404040404040404040401010204040404040404040404040400
          0201020304040404040404040404030201040403030404040404040404050203
          0404040405030404040404040303050404040404040303040404040303030404
          0404040404040403040403030304040404040404040404040404030304040404
          0404040404040404040404040404040404040404040404040404}
        ParentShowHint = False
        ShowHint = True
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 812
      Height = 29
      Align = alTop
      TabOrder = 0
      DesignSize = (
        808
        29)
      object Label6: TLabel
        Left = 680
        Top = 8
        Width = 102
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1583#1587#1578#1608#1585' '#1705#1575#1585' '#1578#1593#1605#1740#1585#1575#1578
        ExplicitLeft = 661
      end
      object Label4: TLabel
        Left = 94
        Top = 7
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Caption = #1608#1590#1593#1610#1578
        FocusControl = DBEdit3
      end
      object dblkcbb_MaintenanceKind: TDBLookupComboBox
        Left = 382
        Top = 4
        Width = 292
        Height = 21
        Anchors = [akTop, akRight]
        DataField = '_MaintenanceKind'
        DataSource = srcMaintenance
        TabOrder = 0
        ExplicitLeft = 390
      end
      object DBEdit3: TDBEdit
        Left = 25
        Top = 4
        Width = 66
        Height = 19
        Ctl3D = False
        DataField = 'MaintenanceStatus'
        DataSource = srcMaintenance
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object PnlPerson1: TPanel
      Left = 2
      Top = 31
      Width = 808
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 812
      DesignSize = (
        808
        29)
      object LblPerson1: TLabel
        Left = 680
        Top = 6
        Width = 75
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1583#1585' '#1582#1608#1575#1587#1578' '#1603#1606#1606#1583#1607
        FocusControl = edtCustID1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 661
      end
      object btnCustID1: TSpeedButton
        Tag = 1
        Left = 579
        Top = 1
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = btnCustID1Click
        ExplicitLeft = 560
      end
      object dbtxtPersonID1: TDBText
        Left = 251
        Top = 4
        Width = 327
        Height = 16
        Anchors = [akTop, akRight]
        Color = clSilver
        DataSource = srcMaintenance
        ParentColor = False
        Transparent = False
        ExplicitLeft = 232
      end
      object edtCustID1: TDBEdit
        Left = 604
        Top = 2
        Width = 70
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'CustID1'
        DataSource = srcMaintenance
        TabOrder = 0
        OnKeyDown = ALLDBEditKeyDown
        ExplicitLeft = 612
      end
    end
    object PnlPerson2: TPanel
      Left = 2
      Top = 60
      Width = 808
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 812
      DesignSize = (
        808
        29)
      object LblPerson2: TLabel
        Left = 680
        Top = 8
        Width = 134
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1608#1575#1581#1583' '#1578#1580#1607#1610#1586#1575#1578'('#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610')'
        FocusControl = edtCustID2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 661
      end
      object btnCustID2: TSpeedButton
        Tag = 2
        Left = 579
        Top = 3
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = btnCustID1Click
        ExplicitLeft = 560
      end
      object dbtxtPersonID2: TDBText
        Left = 251
        Top = 6
        Width = 327
        Height = 16
        Anchors = [akTop, akRight]
        Color = clSilver
        DataSource = srcMaintenance
        ParentColor = False
        Transparent = False
        ExplicitLeft = 232
      end
      object edtCustID2: TDBEdit
        Left = 604
        Top = 4
        Width = 70
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'CustID2'
        DataSource = srcMaintenance
        TabOrder = 0
        OnKeyDown = ALLDBEditKeyDown
        ExplicitLeft = 612
      end
    end
    object pnlPerson3: TPanel
      Left = 2
      Top = 89
      Width = 808
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      ExplicitWidth = 812
      DesignSize = (
        808
        29)
      object btnCustID3: TSpeedButton
        Tag = 3
        Left = 579
        Top = 3
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = btnCustID1Click
        ExplicitLeft = 560
      end
      object dbtxtPersonID3: TDBText
        Left = 251
        Top = 6
        Width = 327
        Height = 16
        Anchors = [akTop, akRight]
        Color = clSilver
        DataSource = srcMaintenance
        ParentColor = False
        Transparent = False
        ExplicitLeft = 232
      end
      object LblPerson3: TLabel
        Left = 680
        Top = 8
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1605#1588#1578#1585#1610'3'
        FocusControl = edtCustID3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 661
      end
      object edtCustID3: TDBEdit
        Left = 604
        Top = 4
        Width = 70
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'CustID3'
        DataSource = srcMaintenance
        TabOrder = 0
        OnKeyDown = ALLDBEditKeyDown
        ExplicitLeft = 612
      end
    end
    object pnlCustomer1: TPanel
      Left = 2
      Top = 118
      Width = 808
      Height = 157
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      TabStop = True
      ExplicitWidth = 812
      DesignSize = (
        808
        157)
      object Label5: TLabel
        Left = 680
        Top = 8
        Width = 68
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
        ExplicitLeft = 661
      end
      object btnStuffCode: TSpeedButton
        Tag = 1
        Left = 579
        Top = 4
        Width = 23
        Height = 22
        Anchors = [akRight]
        Caption = '...'
        OnClick = btnStuffCodeClick
        ExplicitLeft = 560
      end
      object Label7: TLabel
        Left = 680
        Top = 54
        Width = 74
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1588#1585#1581' '#1583#1585' '#1582#1608#1575#1587#1578
        ExplicitLeft = 661
      end
      object Label8: TLabel
        Left = 680
        Top = 111
        Width = 59
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1582#1608#1583#1585#1608
        ExplicitLeft = 661
      end
      object Label9: TLabel
        Left = 680
        Top = 136
        Width = 53
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1587#1575#1593#1578' '#1608#1585#1608#1583
        ExplicitLeft = 661
      end
      object Label10: TLabel
        Left = 419
        Top = 111
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = #1606#1575#1605' '#1585#1575#1606#1606#1583#1607
      end
      object Label11: TLabel
        Left = 419
        Top = 136
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = #1578#1575#1585#1610#1582' '#1608' '#1587#1575#1593#1578
      end
      object Label3: TLabel
        Left = 680
        Top = 33
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1662#1604#1575#1603' '#1575#1605#1608#1575#1604
        ExplicitLeft = 661
      end
      object edtStuffCode: TDBEdit
        Left = 604
        Top = 4
        Width = 70
        Height = 21
        Anchors = [akTop, akRight]
        Ctl3D = True
        DataField = 'StuffCode'
        DataSource = srcMaintenance
        ParentCtl3D = False
        TabOrder = 0
        OnKeyDown = ALLDBEditKeyDown
        ExplicitLeft = 612
      end
      object edt_StuffCode: TDBEdit
        Left = 251
        Top = 5
        Width = 327
        Height = 19
        TabStop = False
        Anchors = [akRight]
        Color = clSilver
        Ctl3D = False
        DataField = '_StuffCode'
        DataSource = srcMaintenance
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 6
        ExplicitLeft = 259
      end
      object dbmmoDescRequest: TDBMemo
        Left = 54
        Top = 54
        Width = 620
        Height = 49
        Anchors = [akTop, akRight]
        DataField = 'DescRequest'
        DataSource = srcMaintenance
        TabOrder = 1
        ExplicitLeft = 62
      end
      object edtNumberCar: TDBEdit
        Left = 589
        Top = 107
        Width = 85
        Height = 21
        Anchors = [akTop, akRight]
        Ctl3D = True
        DataField = 'NumberCar'
        DataSource = srcMaintenance
        ParentCtl3D = False
        TabOrder = 2
        OnKeyDown = ALLDBEditKeyDown
        ExplicitLeft = 597
      end
      object edtdriverName: TDBEdit
        Left = 285
        Top = 107
        Width = 130
        Height = 21
        Ctl3D = True
        DataField = 'driverName'
        DataSource = srcMaintenance
        ParentCtl3D = False
        TabOrder = 3
        OnKeyDown = ALLDBEditKeyDown
      end
      object edtDateAndTime: TDBEdit
        Left = 285
        Top = 133
        Width = 130
        Height = 19
        TabStop = False
        Color = clSilver
        Ctl3D = False
        DataField = 'DateAndTime'
        DataSource = srcMaintenance
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
        OnKeyDown = ALLDBEditKeyDown
      end
      object DBEdit1: TDBEdit
        Left = 54
        Top = 5
        Width = 195
        Height = 19
        TabStop = False
        Anchors = [akRight]
        Color = clSilver
        Ctl3D = False
        DataField = '_sd1'
        DataSource = srcMaintenance
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 7
        ExplicitLeft = 62
      end
      object medtLoginNow: TMaskEdit
        Left = 589
        Top = 134
        Width = 85
        Height = 21
        Anchors = [akTop, akRight]
        EditMask = '!90:00;1;_'
        MaxLength = 5
        TabOrder = 4
        Text = '  :  '
        ExplicitLeft = 597
      end
      object DBEdit2: TDBEdit
        Left = 251
        Top = 31
        Width = 423
        Height = 19
        TabStop = False
        Anchors = [akRight]
        Color = clSilver
        Ctl3D = False
        DataField = '_sd2'
        DataSource = srcMaintenance
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 8
        ExplicitLeft = 259
      end
    end
    object SumGrid1: TSumGrid
      Top = 357
      Width = 808
      Height = 40
      TabStop = False
      Active = False
      Enable_Controls = True
      SelectedRow = True
      MasterGrid = DBGrid1
      FieldsName = 'FunctionAmount;'
    end
  end
  inherited PnlUnderButton: TPanel [1]
    Top = 477
    Width = 812
    TabOrder = 2
    ExplicitTop = 478
    ExplicitWidth = 816
    object okPanel: TPanel [0]
      Left = 348
      Top = 1
      Width = 163
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        163
        39)
      object BitBtn7: TBitBtn
        Left = 86
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
        Left = 7
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
    object newPanel: TPanel [1]
      Left = 507
      Top = 1
      Width = 304
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      ExplicitLeft = 511
      DesignSize = (
        304
        39)
      object BitBtn3: TBitBtn
        Left = 228
        Top = 7
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 153
        Top = 7
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 79
        Top = 7
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
      object BitBtn6: TBitBtn
        Left = 4
        Top = 7
        Width = 75
        Height = 25
        Action = actGetExcel
        Anchors = [akTop, akRight]
        Caption = #1583#1585#1610#1575#1601#1578'Excel'#8207
        TabOrder = 3
      end
    end
    inherited BtnReject: TBitBtn
      Width = 72
      TabOrder = 6
      ExplicitWidth = 72
    end
    object BitBtn1: TBitBtn
      Left = 215
      Top = 8
      Width = 72
      Height = 25
      Action = actSendToExcel
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 3
    end
    object BitBtn12: TBitBtn
      Left = 143
      Top = 8
      Width = 72
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn9: TBitBtn
      Left = 72
      Top = 8
      Width = 72
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006A00
        00006A0000006A000000FF00FF006A0000006A0000006A000000FF00FF00FF00
        FF00FF00FF00FF00FF0000580300FF00FF00FF00FF00FF00FF00FF00FF006A6A
        6A006A000000FF00FF00FF00FF00FF00FF00980000006A6A6A00FF00FF00FF00
        FF00FF00FF00005803006AFF6A0000580300FF00FF00FF00FF00FF00FF00FF00
        FF006A6A6A006A0000006A0000006A0000006A000000FF00FF00FF00FF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FF00FF00FF00
        FF00FF00FF006A000000FF00FF00980000006A000000FF00FF00FF00FF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FF00FF00FF00
        FF00FF00FF00980000006A0000006A000000FF00FF00FF00FF00FF00FF000058
        0300005803000058030000580300005803000058030000580300FF00FF00FF00
        FF00FF00FF006A6A6A006A0000006A6A6A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0098000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A0000006A0000006A0000006A0000006A00FF00FF00FF00FF00FF00
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
    object BitBtn10: TBitBtn
      Left = 286
      Top = 8
      Width = 72
      Height = 25
      Action = actPrint
      Caption = #1670#1575#1662
      TabOrder = 2
    end
    object DBNavigator1: TDBNavigator
      Left = 432
      Top = 8
      Width = 80
      Height = 25
      DataSource = srcMaintenance
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight]
      Flat = True
      TabOrder = 7
    end
    object BitBtn2: TBitBtn
      Left = 357
      Top = 8
      Width = 72
      Height = 25
      Caption = #1587#1575#1610#1585
      TabOrder = 8
      OnClick = BitBtn2Click
    end
  end
  inherited Panel2: TPanel [2]
    Width = 812
    Height = 55
    TabOrder = 0
    ExplicitWidth = 816
    ExplicitHeight = 55
    inherited ImgTemplate: TImage
      Left = 778
      ExplicitLeft = 751
    end
    inherited lblCaption: TLabel
      Left = 708
      Height = 16
      ExplicitLeft = 708
    end
    object Label1: TLabel
      Left = 96
      Top = 10
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = #1588#1605#1575#1585#1607
    end
    object SpeedButton5: TSpeedButton
      Left = 2
      Top = 6
      Width = 23
      Height = 20
      Caption = '...'
      OnClick = SpeedButton5Click
    end
    object Label2: TLabel
      Left = 96
      Top = 35
      Width = 21
      Height = 13
      Alignment = taRightJustify
      Caption = #1578#1575#1585#1610#1582
    end
    object edtMaintenanceNo: TDBEdit
      Left = 27
      Top = 7
      Width = 66
      Height = 19
      Ctl3D = False
      DataField = 'MaintenanceNo'
      DataSource = srcMaintenance
      ParentCtl3D = False
      TabOrder = 0
    end
    object edtMaintenanceDate: TDBEdit
      Left = 27
      Top = 32
      Width = 66
      Height = 19
      Ctl3D = False
      DataField = 'MaintenanceDate'
      DataSource = srcMaintenance
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  inherited ActionList: TActionList
    Left = 311
    Top = 6
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcMaintenance
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcMaintenance
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcMaintenance
    end
    inherited DataSetCancel1: TDataSetCancel
      ShortCut = 0
      DataSource = srcMaintenance
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcMaintenance
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1585#1583#1610#1601
      DataSource = srcFunctions
    end
    object DataSetInsert2: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      DataSource = srcFunctions
    end
    object DataSetPost2: TDataSetPost
      Category = 'Dataset'
      Caption = 'DataSetPost2'
      DataSource = srcFunctions
    end
    object DataSetCancel2: TDataSetCancel
      Category = 'Dataset'
      Caption = 'DataSetCancel2'
      ShortCut = 27
      DataSource = srcFunctions
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      OnExecute = actSendToExcelExecute
    end
    object actGetExcel: TAction
      Caption = #1583#1585#1610#1575#1601#1578'Excel'#8207
      OnExecute = actGetExcelExecute
    end
    object actMachineStopF1: TAction
      Caption = #1578#1608#1602#1601' '#1583#1585' '#1578#1593#1605#1610#1585' '#1608#1606#1711#1607#1583#1575#1585#1610' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
      OnExecute = actMachineStopF1Execute
    end
  end
  inherited ImageList1: TImageList
    Left = 77
    Top = 232
  end
  object qryMaintenance: TADOQuery
    AutoCalcFields = False
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryMaintenanceAfterInsert
    BeforeEdit = qryMaintenanceBeforeEdit
    BeforePost = qryMaintenanceBeforePost
    AfterPost = qryMaintenanceAfterPost
    BeforeCancel = qryMaintenanceBeforeCancel
    BeforeDelete = qryMaintenanceBeforeDelete
    AfterDelete = qryMaintenanceAfterDelete
    AfterScroll = qryMaintenanceAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM        Machin.Maintenance'
      'where  MaintenanceID <> 0')
    Left = 196
    Top = 5
    object qryMaintenanceMaintenanceID: TIntegerField
      FieldName = 'MaintenanceID'
    end
    object qryMaintenanceYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryMaintenanceMaintenanceKind: TWordField
      FieldName = 'MaintenanceKind'
    end
    object qryMaintenance_MaintenanceKind: TStringField
      FieldKind = fkLookup
      FieldName = '_MaintenanceKind'
      LookupDataSet = qryMaintenanceKind
      LookupKeyFields = 'KindID'
      LookupResultField = 'KindName'
      KeyFields = 'MaintenanceKind'
      Lookup = True
    end
    object qryMaintenanceMaintenanceNo: TWordField
      FieldName = 'MaintenanceNo'
    end
    object qryMaintenanceMaintenanceDate: TStringField
      FieldName = 'MaintenanceDate'
      FixedChar = True
      Size = 10
    end
    object qryMaintenanceCustID1: TIntegerField
      FieldName = 'CustID1'
    end
    object qryMaintenanceCustID2: TIntegerField
      FieldName = 'CustID2'
    end
    object qryMaintenanceCustID3: TIntegerField
      FieldName = 'CustID3'
    end
    object qryMaintenanceStuffCode: TLargeintField
      FieldName = 'StuffCode'
    end
    object qryMaintenance_StuffCode: TStringField
      FieldKind = fkLookup
      FieldName = '_StuffCode'
      LookupDataSet = qryStuffCode
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'StuffCode'
      Size = 200
      Lookup = True
    end
    object qryMaintenanceDescRequest: TStringField
      FieldName = 'DescRequest'
      Size = 1000
    end
    object qryMaintenanceNumberCar: TStringField
      FieldName = 'NumberCar'
    end
    object qryMaintenancedriverName: TStringField
      FieldName = 'driverName'
    end
    object qryMaintenanceDateAndTime: TDateTimeField
      FieldName = 'DateAndTime'
      OnGetText = qryMaintenanceDateAndTimeGetText
    end
    object qryMaintenanceLoginNow: TDateTimeField
      FieldName = 'LoginNow'
      OnGetText = qryFunctionsStartHourGetText
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00:00>LL;1;_'
    end
    object qryMaintenance_sd1: TStringField
      FieldKind = fkLookup
      FieldName = '_sd1'
      LookupDataSet = qryStuffCode
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'sd1'
      KeyFields = 'StuffCode'
      Size = 150
      Lookup = True
    end
    object qryMaintenance_sd2: TStringField
      FieldKind = fkLookup
      FieldName = '_sd2'
      LookupDataSet = qryStuffCode
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'sd2'
      KeyFields = 'StuffCode'
      Size = 150
      Lookup = True
    end
    object qryMaintenanceMaintenanceStatus: TWordField
      FieldName = 'MaintenanceStatus'
      OnGetText = qryMaintenanceMaintenanceStatusGetText
    end
  end
  object srcMaintenance: TDataSource
    AutoEdit = False
    DataSet = qryMaintenance
    OnStateChange = srcMaintenanceStateChange
    Left = 177
    Top = 94
  end
  object srcFunctions: TDataSource
    DataSet = qryFunctions
    Left = 255
    Top = 192
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 2000
    PrinterSetup.mmMarginLeft = 2000
    PrinterSetup.mmMarginRight = 2000
    PrinterSetup.mmMarginTop = 2000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara2010\BSell\Exe\Report\recipt_typ_141_1.rtm'
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
    Left = 667
    Top = 368
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 83000
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'FunctionDate'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6435
        mmLeft = 187061
        mmTop = 0
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'PersonId'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6435
        mmLeft = 170392
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = '_PersonId'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4995
        mmLeft = 131498
        mmTop = 265
        mmWidth = 37042
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        Border.mmPadding = 0
        DataField = 'StuffCode2'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6435
        mmLeft = 114565
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText18'
        Border.mmPadding = 0
        DataField = '_StuffCode2'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 4995
        mmLeft = 73819
        mmTop = 265
        mmWidth = 39688
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText19'
        Border.mmPadding = 0
        DataField = 'FunctionAmount'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6435
        mmLeft = 59002
        mmTop = 0
        mmWidth = 12435
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand2: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppPageStyle1: TppPageStyle
      Border.mmPadding = 0
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 137054
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        mmHeight = 88900
        mmLeft = 2381
        mmTop = 28310
        mmWidth = 198438
        BandType = 10
        LayerName = PageLayer1
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        Shape = stRoundRect
        mmHeight = 9260
        mmLeft = 2381
        mmTop = 18521
        mmWidth = 198702
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 13
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6773
        mmLeft = 71548
        mmTop = 1058
        mmWidth = 56134
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label101'
        OnGetText = ppLblPrintDateGetText
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
        Visible = False
        mmHeight = 6350
        mmLeft = 19050
        mmTop = 1852
        mmWidth = 13758
        BandType = 10
        LayerName = PageLayer1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        OnGetText = ppSysVarPageNoGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 5821
        mmLeft = 19844
        mmTop = 8731
        mmWidth = 6879
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        OnGetText = ppLblCaptionGetText
        Border.mmPadding = 0
        Caption = #1583#1587#1578#1608#1585' '#1705#1575#1585' '#1578#1593#1605#1740#1585#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Titr'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7451
        mmLeft = 85725
        mmTop = 8731
        mmWidth = 27855
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1583#1587#1578#1608#1585' '#1705#1575#1585' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Homa'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5842
        mmLeft = 175948
        mmTop = 20373
        mmWidth = 17780
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        AutoSize = True
        Border.mmPadding = 0
        DataField = '_MaintenanceKind'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5546
        mmLeft = 162222
        mmTop = 20902
        mmWidth = 8424
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Homa'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 64029
        mmTop = 20373
        mmWidth = 8202
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1740#1582':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Homa'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 29369
        mmTop = 20373
        mmWidth = 6879
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1705#1583' '#1608' '#1606#1575#1605' '#1583#1585#1582#1608#1575#1587#1578' '#1705#1606#1606#1583#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Homa'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5080
        mmLeft = 166952
        mmTop = 29369
        mmWidth = 26077
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1705#1583' '#1608' '#1606#1575#1605' '#1588#1575#1576' '#1578#1593#1605#1740#1585#1575#1578' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Homa'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5080
        mmLeft = 166952
        mmTop = 36248
        mmWidth = 26331
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1705#1583' '#1608' '#1606#1575#1605' '#1605#1575#1588#1740#1606' '#1570#1604#1575#1578' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Homa'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5080
        mmLeft = 166952
        mmTop = 43127
        mmWidth = 23707
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1588#1585#1581' '#1583#1585#1582#1608#1575#1587#1578' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Homa'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5080
        mmLeft = 167746
        mmTop = 51329
        mmWidth = 16256
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        AutoSize = True
        Border.mmPadding = 0
        DataField = '_PersonName1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Mitra'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5334
        mmLeft = 118607
        mmTop = 29369
        mmWidth = 17992
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        AutoSize = True
        Border.mmPadding = 0
        DataField = '_PersonName2'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Mitra'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5334
        mmLeft = 110606
        mmTop = 36248
        mmWidth = 25908
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        AutoSize = True
        Border.mmPadding = 0
        DataField = '_StuffCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Mitra'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5334
        mmLeft = 120767
        mmTop = 43127
        mmWidth = 15790
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'DescRequest'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 12171
        mmLeft = 7408
        mmTop = 51329
        mmWidth = 153723
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'CustID1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7112
        mmLeft = 151268
        mmTop = 29369
        mmWidth = 9102
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'CustID2'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7112
        mmLeft = 154909
        mmTop = 36248
        mmWidth = 5461
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'StuffCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7112
        mmLeft = 149479
        mmTop = 43127
        mmWidth = 10922
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1582#1608#1583#1585#1608' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Homa'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5080
        mmLeft = 180975
        mmTop = 66146
        mmWidth = 14393
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label102'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1585#1575#1606#1606#1583#1607' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Homa'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5080
        mmLeft = 126207
        mmTop = 66146
        mmWidth = 11261
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1587#1575#1593#1578' '#1608#1585#1608#1583' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Homa'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5080
        mmLeft = 48154
        mmTop = 66146
        mmWidth = 13123
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 1.000000000000000000
        mmHeight = 2381
        mmLeft = 2646
        mmTop = 62442
        mmWidth = 198173
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpBottom
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 2646
        mmTop = 70644
        mmWidth = 198173
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 1.000000000000000000
        mmHeight = 2381
        mmLeft = 2646
        mmTop = 78317
        mmWidth = 198173
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label103'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1740#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Homa'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5080
        mmLeft = 191040
        mmTop = 74083
        mmWidth = 5165
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = #1705#1583' '#1578#1593#1605#1740#1585#1705#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Homa'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5080
        mmLeft = 171450
        mmTop = 74083
        mmWidth = 12785
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1578#1593#1605#1740#1585#1705#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Homa'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5080
        mmLeft = 142071
        mmTop = 74083
        mmWidth = 13462
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = #1705#1583' '#1593#1605#1604#1740#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Homa'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5080
        mmLeft = 115888
        mmTop = 74083
        mmWidth = 11515
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1593#1605#1604#1740#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Homa'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5080
        mmLeft = 86159
        mmTop = 74083
        mmWidth = 14817
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Homa'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5080
        mmLeft = 62103
        mmTop = 74083
        mmWidth = 5673
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label20'
        Border.mmPadding = 0
        Caption = #1705#1575#1585#1705#1585#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Homa'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5080
        mmLeft = 45905
        mmTop = 74083
        mmWidth = 6350
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label201'
        Border.mmPadding = 0
        Caption = #1588#1585#1608#1593
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Homa'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5080
        mmLeft = 27940
        mmTop = 74083
        mmWidth = 5503
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label22'
        Border.mmPadding = 0
        Caption = #1662#1575#1740#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Homa'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5080
        mmLeft = 9240
        mmTop = 74083
        mmWidth = 5334
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 44450
        mmLeft = 186002
        mmTop = 72761
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 44450
        mmLeft = 169334
        mmTop = 72761
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 44450
        mmLeft = 129382
        mmTop = 72761
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 44450
        mmLeft = 114036
        mmTop = 72761
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 44450
        mmLeft = 71967
        mmTop = 72761
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 44450
        mmLeft = 58208
        mmTop = 72761
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 44450
        mmLeft = 40217
        mmTop = 72761
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line101'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 44450
        mmLeft = 21431
        mmTop = 72761
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape3'
        Shape = stRoundRect
        mmHeight = 18521
        mmLeft = 2381
        mmTop = 117740
        mmWidth = 198702
        BandType = 10
        LayerName = PageLayer1
      end
      object ppRegion1: TppRegion
        DesignLayer = ppDesignLayer2
        UserName = 'Region1'
        Caption = 'Region1'
        Visible = False
        mmHeight = 4498
        mmLeft = 3704
        mmTop = 118798
        mmWidth = 9525
        BandType = 10
        LayerName = PageLayer1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line11'
        Border.mmPadding = 0
        Pen.Style = psDot
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 2646
        mmTop = 48154
        mmWidth = 198438
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'driverName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5588
        mmLeft = 69586
        mmTop = 65881
        mmWidth = 52123
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'NumberCar'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 142082
        mmTop = 65617
        mmWidth = 34925
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = 'DateAndTime'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 7408
        mmTop = 65617
        mmWidth = 35454
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'MaintenanceDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 7673
        mmTop = 20108
        mmWidth = 20373
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'MaintenanceID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 42333
        mmTop = 20108
        mmWidth = 20373
        BandType = 10
        LayerName = PageLayer1
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'PageLayer1'
        LayerType = ltPage
        Index = 0
      end
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 1
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcMaintenance
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeline1'
    Left = 471
    Top = 352
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcFunctions
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 565
    Top = 352
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object qryFunctions: TADOQuery
    AutoCalcFields = False
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryFunctionsBeforeInsert
    AfterInsert = qryFunctionsAfterInsert
    BeforeEdit = qryFunctionsBeforeEdit
    BeforePost = qryFunctionsBeforePost
    AfterPost = qryFunctionsAfterPost
    BeforeDelete = qryFunctionsBeforeDelete
    AfterDelete = qryFunctionsAfterDelete
    Parameters = <
      item
        Name = 'MaintenanceID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         Tsh.Functions'
      'WHERE    FunctionInfoType = 7'
      'AND   MaintenanceID =:MaintenanceID'
      '')
    Left = 233
    Top = 294
    object qryFunctionsFunctionId: TIntegerField
      FieldName = 'FunctionId'
      Required = True
    end
    object qryFunctionsFunctionInfoType: TWordField
      FieldName = 'FunctionInfoType'
      Required = True
    end
    object qryFunctionsFunctionDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'FunctionDate'
      Required = True
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryFunctionsPersonId: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1593#1605#1610#1585' '#1603#1575#1585
      FieldName = 'PersonId'
      Required = True
    end
    object qryFunctions_PersonId: TStringField
      DisplayLabel = #1606#1575#1605' '#1578#1593#1605#1610#1585' '#1603#1575#1585
      FieldKind = fkLookup
      FieldName = '_PersonId'
      LookupDataSet = qryPerson
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonId'
      Size = 100
      Lookup = True
    end
    object qryFunctionsStuffCode2: TLargeintField
      DisplayLabel = #1705#1583' '#1593#1605#1604#1740#1575#1578
      FieldName = 'StuffCode2'
    end
    object qryFunctions_StuffCode2: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1593#1605#1604#1740#1575#1578
      FieldKind = fkLookup
      FieldName = '_StuffCode2'
      LookupDataSet = qryStuffCode2
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'StuffCode2'
      Size = 200
      Lookup = True
    end
    object qryFunctionsFunctionAmount: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1705#1575#1585#1705#1585#1583
      FieldName = 'FunctionAmount'
    end
    object qryFunctionsStartHour: TDateTimeField
      Tag = 3
      DisplayLabel = #1587#1575#1593#1578' '#1588#1585#1608#1593
      FieldName = 'StartHour'
      OnGetText = qryFunctionsStartHourGetText
      EditMask = '!90:00;1;'
    end
    object qryFunctionsEndHour: TDateTimeField
      Tag = 3
      DisplayLabel = #1587#1575#1593#1578' '#1662#1575#1610#1575#1606
      FieldName = 'EndHour'
      OnGetText = qryFunctionsStartHourGetText
      EditMask = '!90:00;1;_'
    end
    object qryFunctionsWorkShopId: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1585#1711#1575#1607'  '
      FieldName = 'WorkShopId'
      Required = True
    end
    object qryFunctionsMachineId: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1582#1608#1583#1585#1608
      FieldName = 'MachineId'
      Required = True
    end
    object qryFunctionsStuffId: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1581#1589#1608#1604' '
      FieldName = 'StuffId'
    end
    object qryFunctionsProductionprocess: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1601#1585#1570#1610#1606#1583' '#1578#1608#1604#1610#1583
      FieldName = 'Productionprocess'
      Required = True
    end
    object qryFunctionsEarthField: TStringField
      DisplayLabel = #1603#1583#1605#1586#1585#1593#1607
      FieldName = 'EarthField'
      Required = True
      Size = 10
    end
    object qryFunctionsGate: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1602#1591#1593#1607
      FieldName = 'Gate'
      Required = True
    end
    object qryFunctionsRatio: TIntegerField
      Tag = 3
      DisplayLabel = #1606#1587#1576#1578
      FieldName = 'Ratio'
    end
    object qryFunctionsFunctionNote: TWideStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'FunctionNote'
      Size = 500
    end
    object qryFunctionsCaseId: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1585#1608#1606#1583#1607' '
      FieldName = 'CaseId'
      Required = True
    end
    object qryFunctionsFunctionType: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1603#1575#1585#1603#1585#1583' '
      FieldName = 'FunctionType'
    end
    object qryFunctionsFunctionStatus: TWordField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578' '
      FieldName = 'FunctionStatus'
    end
    object qryFunctionsAmount1: TFloatField
      FieldName = 'Amount1'
    end
    object qryFunctionsAmount2: TFloatField
      FieldName = 'Amount2'
    end
    object qryFunctionsAmount3: TFloatField
      FieldName = 'Amount3'
    end
    object qryFunctionsStuffCode3: TLargeintField
      DisplayLabel = #1705#1583' '#1575#1583#1608#1575#1578' '
      FieldName = 'StuffCode3'
    end
    object qryFunctionsMaintenanceID: TIntegerField
      FieldName = 'MaintenanceID'
    end
    object qryFunctionsFunctionHour: TDateTimeField
      DisplayLabel = #1603#1575#1585#1603#1585#1583' '
      FieldName = 'FunctionHour'
      OnGetText = qryFunctionsStartHourGetText
      EditMask = '!90:00;1;'
    end
  end
  object popPrint: TPopupMenu
    AutoHotkeys = maManual
    Left = 139
    Top = 248
    object N11: TMenuItem
      Caption = #1670#1575#1662'1'
      object N9: TMenuItem
        Caption = #1601#1585#1605' '#1580#1575#1585#1610
        Hint = 'recipt_typ_141_1.rtm'
        OnClick = AllC_L_i_c_k_Click
      end
      object N10: TMenuItem
        Tag = 1
        Caption = #1607#1605#1607' '#1601#1585#1605' '#1607#1575
        Hint = 'recipt_typ_141_1.rtm'
        OnClick = AllC_L_i_c_k_Click
      end
    end
    object N21: TMenuItem
      Caption = #1670#1575#1662'2'
      object N14: TMenuItem
        Caption = #1601#1585#1605' '#1580#1575#1585#1610
        Hint = 'recipt_typ_141_2.rtm'
        OnClick = AllC_L_i_c_k_Click
      end
      object N15: TMenuItem
        Tag = 1
        Caption = #1607#1605#1607' '#1601#1585#1605' '#1607#1575
        Hint = 'recipt_typ_141_2.rtm'
        OnClick = AllC_L_i_c_k_Click
      end
    end
    object AllC_L_i_c_k_: TMenuItem
      Caption = 'Hint _ Tag'
      Visible = False
      OnClick = AllC_L_i_c_k_Click
    end
    object NReportFileName1: TMenuItem
      Caption = #1670#1575#1662' 1 '#1578#1606#1592#1610#1605#1575#1578
      OnClick = AllC_L_i_c_k_Click
    end
    object NReportFileName2: TMenuItem
      Caption = #1670#1575#1662' 2 '#1578#1606#1592#1610#1605#1575#1578
      OnClick = AllC_L_i_c_k_Click
    end
  end
  object qryMaintenanceKind: TADOQuery
    AutoCalcFields = False
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT    * FROM Machin.MaintenanceKinds')
    Left = 79
    Top = 110
  end
  object qryStuffCode: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName  ,sd1 ,s' +
        'd2'
      
        '   FROM StuffCoding INNER JOIN StuffGroups ON StuffCoding.GroupI' +
        'D = StuffGroups.GroupID '
      '   WHERE (StuffGroups.GroupType IN (9))')
    Left = 360
    Top = 192
  end
  object qryPerson: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT CustID,CustName FROM Vu_CustomersGroups'
      '')
    Left = 504
    Top = 224
  end
  object qryStuffCode2: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT StuffCoding.c_StuffCode, StuffCoding.c_StuffName'
      
        '   FROM StuffCoding INNER JOIN StuffGroups ON StuffCoding.GroupI' +
        'D = StuffGroups.GroupID '
      '   WHERE (StuffGroups.GroupType IN (7))')
    Left = 352
    Top = 384
  end
  object qryinit: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  * FROM    ReciptTypes'
      #13'where ReciptType=:ReciptType'
      #13#13'ORDER BY ReciptType')
    Left = 398
    Top = 12
  end
  object popOther: TPopupMenu
    Left = 504
    Top = 408
    object N1: TMenuItem
      Action = actMachineStopF1
    end
  end
end
