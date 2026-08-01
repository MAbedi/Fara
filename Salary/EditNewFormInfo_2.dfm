inherited EditNewFormInfo_2F: TEditNewFormInfo_2F
  Left = 342
  Top = 169
  Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588'  '#1575#1591#1604#1575#1593#1575#1578
  ClientHeight = 576
  ClientWidth = 556
  OnClose = FormClose
  ExplicitWidth = 562
  ExplicitHeight = 605
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 573
    Width = 556
    Height = 3
    Align = alBottom
    Visible = False
    ExplicitTop = 462
    ExplicitWidth = 526
    ExplicitHeight = 3
  end
  inherited Panel1: TPanel
    Width = 556
    Height = 70
    ExplicitWidth = 556
    ExplicitHeight = 70
    DesignSize = (
      556
      70)
    inherited Image1: TImage
      Left = 502
      ExplicitLeft = 472
    end
    inherited lblTopic0: TLabel
      Left = 363
      Width = 119
      Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588'  '#1575#1591#1604#1575#1593#1575#1578
      ExplicitLeft = 333
      ExplicitWidth = 119
    end
    inherited lblTopic1: TLabel
      Left = 235
      Top = 37
      Width = 234
      Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1575#1585#1711#1586#1610#1606#1610' '#1608' '#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583' '
      ExplicitLeft = 205
      ExplicitTop = 37
      ExplicitWidth = 234
    end
  end
  inherited pnlDown: TPanel
    Top = 536
    Width = 556
    ExplicitTop = 503
    ExplicitWidth = 556
    DesignSize = (
      556
      37)
    object BitBtn2: TBitBtn
      Left = 473
      Top = 6
      Width = 75
      Height = 25
      Action = DataSetPost1
      Anchors = [akTop, akRight]
      Caption = #1578#1571#1610#1610#1600#1600#1600#1583
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      Left = 392
      Top = 6
      Width = 75
      Height = 25
      Action = DataSetCancel1
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1589#1600#1600#1600#1585#1575#1601
      ModalResult = 2
      TabOrder = 2
    end
  end
  object pnlTop: TPanel [3]
    Left = 0
    Top = 70
    Width = 556
    Height = 76
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      556
      76)
    object Label2: TLabel
      Left = 503
      Top = 7
      Width = 11
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1603#1583
      ExplicitLeft = 473
    end
    object Label3: TLabel
      Left = 503
      Top = 30
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1593#1606#1608#1575#1606
      ExplicitLeft = 473
    end
    object Label4: TLabel
      Left = 503
      Top = 54
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'InfoName'
      ExplicitLeft = 473
    end
    object lblTaxCode: TLabel
      Left = 135
      Top = 6
      Width = 42
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1603#1583' '#1605#1575#1604#1610#1575#1578
      ExplicitLeft = 105
    end
    object DBEdit3: TDBEdit
      Left = 408
      Top = 3
      Width = 89
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'InfoID'
      DataSource = SrcItem
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 35
      Top = 51
      Width = 462
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'InfoName_L2'
      DataSource = SrcItem
      TabOrder = 3
    end
    object edtTaxCode: TDBEdit
      Left = 38
      Top = 2
      Width = 89
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'TaxCode'
      DataSource = SrcItem
      TabOrder = 1
    end
    object dbmmoInfoName_L1: TDBMemo
      Tag = 111
      Left = 35
      Top = 26
      Width = 462
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'InfoName_L1'
      DataSource = SrcItem
      ParentShowHint = False
      ScrollBars = ssVertical
      ShowHint = True
      TabOrder = 2
      OnEnter = dbmmoInfoName_L1Enter
    end
  end
  object Panel3: TPanel [4]
    Left = 0
    Top = 146
    Width = 556
    Height = 46
    Align = alTop
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 3
    DesignSize = (
      556
      46)
    object Label5: TLabel
      Left = 417
      Top = 3
      Width = 75
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1605#1583#1578' ('#1590#1585#1610#1576') '#1585#1608#1586
      ExplicitLeft = 387
    end
    object Label6: TLabel
      Left = 135
      Top = 6
      Width = 93
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1583#1578' ('#1590#1585#1610#1576') '#1587#1575#1593#1578
      ExplicitLeft = 105
    end
    object Label7: TLabel
      Left = 135
      Top = 29
      Width = 85
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575' '#1605#1576#1604#1594'/ '#1575#1601#1585#1575#1583' '#1605#1593#1575#1601
      ExplicitLeft = 105
    end
    object lblFirstAmount: TLabel
      Left = 417
      Top = 29
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1605#1576#1604#1594' '#1575#1608#1604#1610#1607
      ExplicitLeft = 387
    end
    object DBEdit6: TDBEdit
      Left = 311
      Top = 0
      Width = 95
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'StandardDays'
      DataSource = SrcItem
      TabOrder = 0
    end
    object DBEdit7: TDBEdit
      Left = 38
      Top = 2
      Width = 89
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'StandardTimes'
      DataSource = SrcItem
      TabOrder = 1
    end
    object DBEdit8: TDBEdit
      Left = 38
      Top = 25
      Width = 89
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'Amount2'
      DataSource = SrcItem
      TabOrder = 3
    end
    object dbedtFirstAmount: TDBEdit
      Left = 311
      Top = 25
      Width = 95
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'FirstAmount'
      DataSource = SrcItem
      TabOrder = 2
    end
  end
  object PnlAmount_Coefficient: TPanel [5]
    Left = 0
    Top = 192
    Width = 556
    Height = 26
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    DesignSize = (
      556
      26)
    object Label8: TLabel
      Left = 135
      Top = 7
      Width = 27
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1590#1585#1610#1576
      ExplicitLeft = 105
    end
    object lblAmount: TLabel
      Left = 417
      Top = 7
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1605#1576#1604#1594' '#1579#1575#1576#1578
      ExplicitLeft = 387
    end
    object DBEdit9: TDBEdit
      Left = 38
      Top = 4
      Width = 89
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'Coefficient'
      DataSource = SrcItem
      TabOrder = 1
    end
    object edtAmount: TDBEdit
      Left = 311
      Top = 4
      Width = 95
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'Amount'
      DataSource = SrcItem
      TabOrder = 0
    end
  end
  object pnl5: TPanel [6]
    Left = 0
    Top = 391
    Width = 556
    Height = 58
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    DesignSize = (
      556
      58)
    object lbl1: TLabel
      Left = 414
      Top = 11
      Width = 122
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1603#1583#1607#1575#1610' '#1602#1575#1576#1604' '#1575#1581#1578#1587#1575#1576' '#1606#1608#1593' 1'
      Visible = False
      ExplicitLeft = 384
    end
    object lbl2: TLabel
      Left = 135
      Top = 11
      Width = 122
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1603#1583#1607#1575#1610' '#1602#1575#1576#1604' '#1575#1581#1578#1587#1575#1576' '#1606#1608#1593' 2'
      Visible = False
      ExplicitLeft = 105
    end
    object LblCalCulateType: TLabel
      Left = 414
      Top = 37
      Width = 134
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1606#1608#1593' '#1605#1581#1575#1587#1576#1607' '#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583
    end
    object SpeedButton3: TSpeedButton
      Left = 317
      Top = 6
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '...'
      Visible = False
      OnClick = SpeedButton3Click
      ExplicitLeft = 287
    end
    object SpeedButton4: TSpeedButton
      Left = 38
      Top = 6
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '...'
      Visible = False
      OnClick = SpeedButton4Click
      ExplicitLeft = 8
    end
    object edtRecallFormInfoID1: TDBEdit
      Left = 343
      Top = 6
      Width = 65
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'RecallFormInfoID1'
      DataSource = SrcItem
      TabOrder = 0
      Visible = False
    end
    object edtRecallFormInfoID2: TDBEdit
      Left = 61
      Top = 7
      Width = 65
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'RecallFormInfoID2'
      DataSource = SrcItem
      TabOrder = 1
      Visible = False
    end
    object CmbCalCulateType: TDBComboBox
      Left = 40
      Top = 33
      Width = 368
      Height = 21
      DataField = 'CalCulateType'
      DataSource = SrcItem
      Items.Strings = (
        #1606#1583#1575#1585#1583
        #1590#1585#1610#1576' '#1575#1586' 30 '#1585#1608#1586
        #1590#1585#1610#1576' '#1575#1586' '#1585#1608#1586#1607#1575#1610' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
        #1590#1585#1610#1576' '#1575#1586' '#1587#1575#1593#1575#1578' '#1575#1587#1578#1575#1606#1583#1575#1585#1583' '#1578#1575' '#1587#1602#1601' '#1605#1576#1604#1594' '#1581#1603#1605
        #1605#1576#1604#1594' '#1579#1575#1576#1578
        #1590#1585#1610#1576' '#1575#1586' '#1605#1575#1607
        #1581#1602#1608#1602' '#1585#1608#1586#1575#1606#1607
        #1578#1602#1587#1610#1605' '#1576#1585' 30 '#1590#1585#1576#1583#1585' '#1585#1608#1586#1607#1575#1610' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
        ' '#1603#1575#1585#1603#1585#1583' '#1576#1593#1604#1575#1608#1607' '#1575#1610#1575#1605' '#1576#1610#1605#1575#1585#1610' '#1578#1602#1587#1610#1605' '#1576#1585' 30'
        #1585#1608#1586#1607#1575#1610' '#1603#1575#1585#1603#1585#1583' '#1548' '#1603#1575#1585#1603#1585#1583' '#1575#1589#1604#1610' '#1580#1607#1578' '#1587#1575#1610#1585' '#1605#1586#1575#1610#1575
        #1587#1575#1593#1575#1578' '#1603#1575#1585#1603#1585#1583' '#1548' '#1603#1575#1585#1603#1585#1583' '#1575#1589#1604#1610' '#1548' '#1580#1607#1578' '#1587#1575#1610#1585' '#1605#1586#1575#1610#1575
        #1605#1576#1604#1594' '#1579#1575#1576#1578' '#1576#1583#1608#1606' '#1583#1585' '#1606#1592#1585' '#1711#1585#1601#1578#1606' '#1662#1585#1608#1688#1607
        #1581#1602#1608#1602' '#1587#1575#1593#1578#1610
        #1581#1602#1608#1602' '#1585#1608#1586#1575#1606#1607' '#1605#1575#1586#1575#1583' '#1576#1585' 15 '#1585#1608#1586' '#1576#1575' '#1590#1585#1740#1576' 1.4'
        #1590#1585#1610#1576' '#1575#1586' '#1587#1575#1593#1578' '#1575#1587#1578#1575#1606#1583#1575#1585#1583' - '#1576#1583#1608#1606' '#1587#1602#1601
        #1705#1575#1585#1705#1585#1583' + '#1575#1740#1575#1605' '#1576#1740#1605#1575#1585#1740' / '#1585#1608#1586#1607#1575#1740' '#1575#1587#1578#1575#1606#1583#1575#1585#1583)
      TabOrder = 2
    end
  end
  object Panel6: TPanel [7]
    Left = 0
    Top = 481
    Width = 556
    Height = 38
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    ExplicitTop = 449
    DesignSize = (
      556
      38)
    object Label13: TLabel
      Left = 414
      Top = 8
      Width = 67
      Height = 13
      Alignment = taRightJustify
      Caption = #1606#1575#1605' '#1601#1575#1610#1604' Word '
    end
    object SpeedButton2: TSpeedButton
      Left = 214
      Top = 8
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '...'
      OnClick = SpeedButton2Click
      ExplicitLeft = 184
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 6
      Width = 97
      Height = 25
      Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object DBEdit14: TDBEdit
      Left = 240
      Top = 8
      Width = 168
      Height = 21
      DataField = 'WordDocuments'
      DataSource = SrcItem
      TabOrder = 1
    end
  end
  object Panel7: TPanel [8]
    Left = 0
    Top = 218
    Width = 556
    Height = 26
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 7
    object Label15: TLabel
      Left = 417
      Top = 5
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = #1581#1583#1575#1603#1579#1585'  '#1585#1608#1586
    end
    object Label16: TLabel
      Left = 135
      Top = 6
      Width = 64
      Height = 13
      Caption = #1581#1583#1575#1603#1579#1585' '#1587#1575#1593#1578
    end
    object edtMaxDay: TDBEdit
      Left = 311
      Top = 3
      Width = 95
      Height = 21
      DataField = 'MaxDay'
      DataSource = SrcItem
      TabOrder = 0
    end
    object edtMaxTime: TDBEdit
      Left = 38
      Top = 3
      Width = 89
      Height = 21
      DataField = 'MaxTime'
      DataSource = SrcItem
      TabOrder = 1
    end
  end
  object PnlRecalKindClock: TPanel [9]
    Left = 0
    Top = 244
    Width = 556
    Height = 26
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 8
    DesignSize = (
      556
      26)
    object Label17: TLabel
      Left = 417
      Top = 7
      Width = 128
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1606#1608#1593' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1586' '#1603#1575#1585#1578' '#1587#1575#1593#1578
      ExplicitLeft = 387
    end
    object CmbRecalKindClock: TDBComboBox
      Left = 238
      Top = 5
      Width = 168
      Height = 21
      DataField = 'RecalKindClock'
      DataSource = SrcItem
      Items.Strings = (
        #1606#1583#1575#1585#1583
        #1575#1590#1575#1601#1607' '#1603#1575#1585#1610
        #1588#1576#1603#1575#1585#1610
        #1606#1608#1576#1578' '#1603#1575#1585#1610
        #1578#1593#1591#1610#1604' '#1603#1575#1585#1610
        #1594#1610#1576#1578
        #1605#1585#1582#1589#1610' '#1587#1575#1593#1578#1610
        #1605#1585#1582#1589#1610' '#1575#1587#1578#1581#1602#1575#1602#1610
        #1605#1585#1582#1589#1610' '#1575#1587#1578#1593#1604#1575#1580#1610
        #1605#1585#1582#1589#1610' '#1576#1583#1608#1606' '#1581#1602#1608#1602)
      TabOrder = 0
    end
  end
  object pnlMuliplyInDay: TPanel [10]
    Left = 0
    Top = 296
    Width = 556
    Height = 22
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 9
    DesignSize = (
      556
      22)
    object DBCheckBox8: TDBCheckBox
      Left = 246
      Top = 1
      Width = 159
      Height = 17
      Alignment = taLeftJustify
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = #1570#1610#1575' '#1583#1585' '#1585#1608#1586#1607#1575#1610' '#1603#1575#1585#1603#1585#1583' '#1590#1585#1576' '#1588#1608#1583'.'#8207
      DataField = 'MuliplyInDay'
      DataSource = SrcItem
      ParentBiDiMode = False
      TabOrder = 0
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  object PnlPayMentShow: TPanel [11]
    Left = 0
    Top = 318
    Width = 556
    Height = 19
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 10
    DesignSize = (
      556
      19)
    object chkPayMentActive: TDBCheckBox
      Left = 193
      Top = -2
      Width = 212
      Height = 17
      Alignment = taLeftJustify
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = #1606#1605#1575#1740#1588' '#1605#1575#1606#1583#1607' '#1575#1586' '#1602#1576#1604' / '#1606#1605#1575#1740#1588' '#1583#1585' '#1601#1740#1588' '#1581#1602#1608#1602
      DataField = 'PayMentActive'
      DataSource = SrcItem
      ParentBiDiMode = False
      TabOrder = 0
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  object pnlFormInfoID2: TPanel [12]
    Left = 0
    Top = 270
    Width = 556
    Height = 26
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 11
    DesignSize = (
      556
      26)
    object Label1: TLabel
      Left = 417
      Top = 7
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1601#1585#1605' '#1578#1575#1662#1662' '#1605#1585#1578#1576#1591
      ExplicitLeft = 387
    end
    object cmbFormInfoID2: TDBComboBox
      Left = 238
      Top = 5
      Width = 168
      Height = 21
      DataField = 'FormInfoID2'
      DataSource = SrcItem
      Items.Strings = (
        #1606#1583#1575#1585#1583
        #1575#1590#1575#1601#1607' '#1603#1575#1585#1610
        #1588#1576#1603#1575#1585#1610
        #1606#1608#1576#1578' '#1603#1575#1585#1610
        #1578#1593#1591#1610#1604' '#1603#1575#1585#1610
        #1594#1610#1576#1578
        #1605#1585#1582#1589#1610' '#1587#1575#1593#1578#1610
        #1605#1585#1582#1589#1610' '#1575#1587#1578#1581#1602#1575#1602#1610
        #1605#1585#1582#1589#1610' '#1575#1587#1578#1593#1604#1575#1580#1610
        #1605#1585#1582#1589#1610' '#1576#1583#1608#1606' '#1581#1602#1608#1602)
      TabOrder = 0
    end
  end
  object grpNote: TGroupBox [13]
    Left = 8
    Top = 121
    Width = 49
    Height = 245
    Caption = '  '#1578#1608#1590#1610#1581#1575#1578'  '
    TabOrder = 12
    object dbmmoNote: TDBMemo
      Tag = 111
      Left = 2
      Top = 15
      Width = 45
      Height = 228
      Align = alClient
      DataField = 'Note'
      DataSource = SrcItem
      ParentShowHint = False
      ScrollBars = ssVertical
      ShowHint = True
      TabOrder = 0
      OnEnter = dbmmoInfoName_L1Enter
    end
  end
  object Panel4: TPanel [14]
    Left = 0
    Top = 356
    Width = 556
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 13
    object dbchkChecking4AllPersonnel: TDBCheckBox
      Left = 214
      Top = -1
      Width = 191
      Height = 17
      Align = alCustom
      Alignment = taLeftJustify
      BiDiMode = bdLeftToRight
      Caption = #1576#1705#1575#1585' '#1576#1587#1578#1606'  '#1608' '#1608#1575#1585#1587#1740' '#1576#1585#1575#1740' '#1607#1605#1607' '#1662#1585#1587#1606#1604
      DataField = 'Checking4AllPersonnel'
      DataSource = SrcItem
      ParentBiDiMode = False
      TabOrder = 0
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object dbchkEmployerAmountActive: TDBCheckBox
      Left = 278
      Top = 18
      Width = 127
      Height = 17
      Align = alCustom
      Alignment = taLeftJustify
      BiDiMode = bdLeftToRight
      Caption = #1587#1607#1605' '#1705#1575#1585#1601#1585#1605#1575' '#1601#1593#1575#1604' '#1576#1575#1588#1583
      DataField = 'EmployerAmountActive'
      DataSource = SrcItem
      ParentBiDiMode = False
      TabOrder = 1
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  object pnlSalaryIDinDocActive: TPanel [15]
    Left = 0
    Top = 337
    Width = 556
    Height = 19
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 14
    DesignSize = (
      556
      19)
    object dbchkSalaryIDinDocActive: TDBCheckBox
      Left = 296
      Top = -1
      Width = 108
      Height = 17
      CustomHint = DmF.BalloonHint1
      Alignment = taLeftJustify
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = #1583#1585' '#1587#1606#1583' '#1606#1605#1575#1740#1588' '#1588#1608#1583
      DataField = 'SalaryIDinDocActive'
      ParentBiDiMode = False
      TabOrder = 0
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  object pnlWageKind: TPanel [16]
    Left = 0
    Top = 449
    Width = 556
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 15
    DesignSize = (
      556
      32)
    object Label11: TLabel
      Left = 414
      Top = 9
      Width = 77
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1606#1608#1593' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1740#1575
    end
    object cmb_WageKind: TDBLookupComboBox
      Left = 40
      Top = 5
      Width = 368
      Height = 21
      DataField = '_WageKind'
      DataSource = SrcItem
      DropDownRows = 14
      TabOrder = 0
    end
  end
  inherited ActionList1: TActionList
    Left = 48
    Top = 8
  end
  object qryInitForm: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 16
      end>
    SQL.Strings = (
      'select * FROM Pay.FormTypes'
      'where  FormType= :FormType')
    Left = 128
    Top = 17
  end
  object OpenDialog1: TOpenDialog
    Filter = 'WordFile|*.doc'
    Left = 136
    Top = 293
  end
  object SrcItem: TDataSource
    DataSet = FormInfo_2F.qryItem
    Left = 240
    Top = 13
  end
end
