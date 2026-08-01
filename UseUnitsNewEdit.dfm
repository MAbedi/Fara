inherited UseUnitsNewEditF: TUseUnitsNewEditF
  Left = 378
  Top = 189
  Caption = #1605#1593#1585#1601#1610' '#1605#1581#1604' '#1607#1575#1610' '#1605#1589#1585#1601
  ClientHeight = 526
  ClientWidth = 512
  OldCreateOrder = True
  OnClose = FormClose
  ExplicitWidth = 518
  ExplicitHeight = 555
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 473
    Width = 512
    ExplicitTop = 345
    ExplicitWidth = 512
  end
  object DBText1: TDBText [1]
    Left = 8
    Top = 137
    Width = 297
    Height = 16
    Color = 13948116
    DataField = '_ProjectName'
    DataSource = UseUnitsF.srcUseUnits
    ParentColor = False
    Transparent = False
  end
  object Label8: TLabel [2]
    Left = 434
    Top = 60
    Width = 68
    Height = 13
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = #1603#1583' '#1605#1581#1604' '#1605#1589#1585#1601
    FocusControl = DBEdit3
  end
  object Label11: TLabel [3]
    Left = 434
    Top = 139
    Width = 36
    Height = 13
    Alignment = taRightJustify
    Caption = #1603#1583' '#1662#1585#1608#1688#1607
    FocusControl = DBEdit6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton2: TSpeedButton [4]
    Left = 310
    Top = 134
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton2Click
  end
  object Label12: TLabel [5]
    Left = 434
    Top = 112
    Width = 68
    Height = 13
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = #1588#1605#1600#1575#1585#1607' '#1603#1605#1600#1603#1610
    FocusControl = DBEdit8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel [6]
    Left = 434
    Top = 163
    Width = 49
    Height = 13
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = #1578#1600#1608' '#1590#1600#1610#1581#1575#1578
    FocusControl = DBEdit8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel [7]
    Left = 434
    Top = 86
    Width = 70
    Height = 13
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = #1606#1575#1605' '#1605#1581#1604' '#1605#1589#1585#1601
    FocusControl = DBEdit4
  end
  object Label1: TLabel [8]
    Left = 438
    Top = 251
    Width = 38
    Height = 13
    Alignment = taRightJustify
    Caption = #1603#1583' '#1581#1587#1575#1576
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton [9]
    Left = 314
    Top = 246
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton1Click
  end
  object DBText2: TDBText [10]
    Left = 12
    Top = 249
    Width = 297
    Height = 16
    Color = 13948116
    DataField = '_MoeenName'
    DataSource = UseUnitsF.srcUseUnits
    ParentColor = False
    Transparent = False
  end
  object Label2: TLabel [11]
    Left = 438
    Top = 275
    Width = 51
    Height = 13
    Alignment = taRightJustify
    Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton3: TSpeedButton [12]
    Left = 314
    Top = 270
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton3Click
  end
  object DBText3: TDBText [13]
    Left = 12
    Top = 273
    Width = 297
    Height = 16
    Color = 13948116
    DataField = '_DetailName'
    DataSource = UseUnitsF.srcUseUnits
    ParentColor = False
    Transparent = False
  end
  object Label3: TLabel [14]
    Left = 438
    Top = 302
    Width = 54
    Height = 13
    Alignment = taRightJustify
    Caption = #1603#1583' '#1605'. '#1607#1586#1610#1606#1607
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton4: TSpeedButton [15]
    Left = 314
    Top = 297
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton4Click
  end
  object DBText4: TDBText [16]
    Left = 12
    Top = 300
    Width = 297
    Height = 16
    Color = 13948116
    DataField = '_CTopicName'
    DataSource = UseUnitsF.srcUseUnits
    ParentColor = False
    Transparent = False
  end
  object DBText5: TDBText [17]
    Left = 12
    Top = 324
    Width = 297
    Height = 16
    Color = 13948116
    DataField = '_CTopicName2'
    DataSource = UseUnitsF.srcUseUnits
    ParentColor = False
    Transparent = False
  end
  object SpeedButton5: TSpeedButton [18]
    Left = 314
    Top = 321
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton5Click
  end
  object Label4: TLabel [19]
    Left = 438
    Top = 326
    Width = 60
    Height = 13
    Alignment = taRightJustify
    Caption = #1603#1583' '#1605'. '#1607#1586#1610#1606#1607'2'
    FocusControl = DBEdit7
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblYearID: TLabel [20]
    Left = 107
    Top = 112
    Width = 21
    Height = 13
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = #1587#1575#1604
    FocusControl = edtYearID
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [21]
    Left = 438
    Top = 351
    Width = 60
    Height = 13
    Alignment = taRightJustify
    Caption = #1603#1583' '#1605'. '#1607#1586#1610#1606#1607'3'
    FocusControl = DBEdit9
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton6: TSpeedButton [22]
    Left = 314
    Top = 346
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton6Click
  end
  object DBText6: TDBText [23]
    Left = 12
    Top = 349
    Width = 297
    Height = 16
    Color = 13948116
    DataField = '_CTopicName3'
    DataSource = UseUnitsF.srcUseUnits
    ParentColor = False
    Transparent = False
  end
  object txt_CustID1: TDBText [24]
    Left = 12
    Top = 379
    Width = 297
    Height = 16
    Color = 13948116
    DataField = '_CustID1'
    DataSource = UseUnitsF.srcUseUnits
    ParentColor = False
    Transparent = False
  end
  object btnCustID1: TSpeedButton [25]
    Left = 314
    Top = 376
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = btnCustID1Click
  end
  object Label6: TLabel [26]
    Left = 438
    Top = 381
    Width = 57
    Height = 13
    Alignment = taRightJustify
    Caption = #1603#1583' '#1605#1588#1578#1585#1740'1'
    FocusControl = edtCustID1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [27]
    Left = 438
    Top = 406
    Width = 57
    Height = 13
    Alignment = taRightJustify
    Caption = #1603#1583' '#1605#1588#1578#1585#1740'2'
    FocusControl = edtCustID2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnCustID2: TSpeedButton [28]
    Left = 314
    Top = 401
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = btnCustID2Click
  end
  object txt_CustID2: TDBText [29]
    Left = 12
    Top = 404
    Width = 297
    Height = 16
    Color = 13948116
    DataField = '_CustID2'
    DataSource = UseUnitsF.srcUseUnits
    ParentColor = False
    Transparent = False
  end
  object txt_CustID3: TDBText [30]
    Left = 12
    Top = 429
    Width = 297
    Height = 16
    Color = 13948116
    DataField = '_CustID3'
    DataSource = UseUnitsF.srcUseUnits
    ParentColor = False
    Transparent = False
  end
  object btnCustID3: TSpeedButton [31]
    Left = 314
    Top = 426
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = btnCustID3Click
  end
  object Label9: TLabel [32]
    Left = 438
    Top = 431
    Width = 57
    Height = 13
    Alignment = taRightJustify
    Caption = #1603#1583' '#1605#1588#1578#1585#1740'3'
    FocusControl = edtCustID3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel [33]
    Left = 438
    Top = 456
    Width = 57
    Height = 13
    Alignment = taRightJustify
    Caption = #1603#1583' '#1605#1588#1578#1585#1740'4'
    FocusControl = edtCustID4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnCustID4: TSpeedButton [34]
    Left = 314
    Top = 451
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = btnCustID4Click
  end
  object txt_CustID4: TDBText [35]
    Left = 12
    Top = 454
    Width = 297
    Height = 16
    Color = 13948116
    DataField = '_CustID4'
    DataSource = UseUnitsF.srcUseUnits
    ParentColor = False
    Transparent = False
  end
  inherited pnlDown: TPanel [36]
    Top = 489
    Width = 512
    TabOrder = 6
    ExplicitTop = 444
    ExplicitWidth = 512
    inherited btnClose: TBitBtn
      Top = 294
      ExplicitTop = 294
    end
    object BitBtn1: TBitBtn
      Left = 88
      Top = 6
      Width = 75
      Height = 25
      Action = DataSetPost1
      Caption = #1578#1571#1610#1610#1600#1600#1600#1583
      ModalResult = 1
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 8
      Top = 6
      Width = 75
      Height = 25
      Action = DataSetCancel1
      Cancel = True
      Caption = #1575#1606#1589#1600#1600#1600#1585#1575#1601
      ModalResult = 2
      TabOrder = 2
    end
  end
  inherited Panel1: TPanel [37]
    Width = 512
    Height = 51
    TabOrder = 5
    ExplicitWidth = 512
    ExplicitHeight = 51
    inherited Image1: TImage
      Left = 458
      ExplicitLeft = 458
    end
    inherited lblTopic0: TLabel
      Left = 386
      ExplicitLeft = 386
    end
    inherited lblTopic1: TLabel
      Left = 365
      ExplicitLeft = 365
    end
  end
  object DBMemo1: TDBMemo [38]
    Left = 8
    Top = 163
    Width = 421
    Height = 70
    DataField = 'Note'
    DataSource = UseUnitsF.srcUseUnits
    TabOrder = 4
  end
  object DBEdit3: TDBEdit [39]
    Left = 335
    Top = 56
    Width = 94
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'UseUnitID'
    DataSource = UseUnitsF.srcUseUnits
    TabOrder = 0
  end
  object DBEdit4: TDBEdit [40]
    Left = 8
    Top = 82
    Width = 421
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'UseUnitName'
    DataSource = UseUnitsF.srcUseUnits
    TabOrder = 1
  end
  object DBEdit6: TDBEdit [41]
    Left = 335
    Top = 135
    Width = 94
    Height = 21
    DataField = 'ProjectID'
    DataSource = UseUnitsF.srcUseUnits
    TabOrder = 3
    OnKeyDown = DBEdit6KeyDown
  end
  object DBEdit8: TDBEdit [42]
    Left = 335
    Top = 108
    Width = 94
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'IndexNum'
    DataSource = UseUnitsF.srcUseUnits
    TabOrder = 2
  end
  object DBEdit1: TDBEdit [43]
    Left = 339
    Top = 247
    Width = 94
    Height = 21
    DataField = 'acc_TopicCode'
    DataSource = UseUnitsF.srcUseUnits
    TabOrder = 7
    OnKeyDown = DBEdit1KeyDown
  end
  object DBEdit2: TDBEdit [44]
    Left = 339
    Top = 271
    Width = 94
    Height = 21
    DataField = 'acc_DetailCode'
    DataSource = UseUnitsF.srcUseUnits
    TabOrder = 8
    OnKeyDown = DBEdit2KeyDown
  end
  object DBEdit5: TDBEdit [45]
    Left = 339
    Top = 298
    Width = 94
    Height = 21
    DataField = 'acc_CTopicCode'
    DataSource = UseUnitsF.srcUseUnits
    TabOrder = 9
    OnKeyDown = DBEdit5KeyDown
  end
  object DBEdit7: TDBEdit [46]
    Left = 339
    Top = 322
    Width = 94
    Height = 21
    DataField = 'acc_CTopicCode2'
    DataSource = UseUnitsF.srcUseUnits
    TabOrder = 10
    OnKeyDown = DBEdit7KeyDown
  end
  object dbchkUseActive: TDBCheckBox [47]
    Left = 10
    Top = 58
    Width = 118
    Height = 17
    Alignment = taLeftJustify
    Anchors = [akTop, akRight]
    Caption = #1575#1610#1606' '#1603#1583' '#1594#1610#1585' '#1601#1593#1575#1604' '#1588#1608#1583
    DataField = 'UseActive'
    DataSource = UseUnitsF.srcUseUnits
    TabOrder = 11
    ValueChecked = '1'
    ValueUnchecked = '0'
  end
  object edtYearID: TDBEdit [48]
    Left = 8
    Top = 108
    Width = 94
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'YearID'
    DataSource = UseUnitsF.srcUseUnits
    TabOrder = 12
  end
  object DBEdit9: TDBEdit [49]
    Left = 339
    Top = 347
    Width = 94
    Height = 21
    DataField = 'acc_CTopicCode3'
    DataSource = UseUnitsF.srcUseUnits
    TabOrder = 13
    OnKeyDown = DBEdit7KeyDown
  end
  object edtCustID1: TDBEdit [50]
    Left = 339
    Top = 377
    Width = 94
    Height = 21
    DataField = 'CustID1'
    DataSource = UseUnitsF.srcUseUnits
    TabOrder = 14
    OnKeyDown = edtCustID1KeyDown
  end
  object edtCustID2: TDBEdit [51]
    Left = 339
    Top = 402
    Width = 94
    Height = 21
    DataField = 'CustID2'
    DataSource = UseUnitsF.srcUseUnits
    TabOrder = 15
    OnKeyDown = edtCustID2KeyDown
  end
  object edtCustID3: TDBEdit [52]
    Left = 339
    Top = 427
    Width = 94
    Height = 21
    DataField = 'CustID3'
    DataSource = UseUnitsF.srcUseUnits
    TabOrder = 16
    OnKeyDown = edtCustID3KeyDown
  end
  object edtCustID4: TDBEdit [53]
    Left = 339
    Top = 452
    Width = 94
    Height = 21
    DataField = 'CustID4'
    DataSource = UseUnitsF.srcUseUnits
    TabOrder = 17
    OnKeyDown = edtCustID4KeyDown
  end
  inherited ActionList1: TActionList
    Left = 240
    Top = 8
  end
end
