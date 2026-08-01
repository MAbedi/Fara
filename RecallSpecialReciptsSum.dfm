inherited RecallSpecialReciptsSumF: TRecallSpecialReciptsSumF
  Left = 453
  Top = 54
  Align = alClient
  ClientHeight = 534
  ClientWidth = 786
  OnDestroy = FormDestroy
  OnResize = FormResize
  ExplicitWidth = 792
  ExplicitHeight = 563
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 786
    BevelOuter = bvNone
    ExplicitWidth = 658
    inherited Image1: TImage
      Left = 740
      ExplicitLeft = 604
    end
    inherited lblTopic0: TLabel
      Left = 664
      Top = 6
      Width = 56
      Caption = #1575#1606#1578#1582#1575#1576' '#1601#1585#1605
      ExplicitLeft = 528
      ExplicitTop = 6
      ExplicitWidth = 56
    end
    inherited lblTopic1: TLabel
      Left = 365
      Top = 27
      Width = 355
      AutoSize = False
      Caption = #1576#1585#1575#1610' '#1575#1606#1578#1582#1575#1576' '#1601#1585#1605' '#1575#1586' '#1583#1603#1605#1607' Space '#1610#1575' Double Click '#1605#1608#1587' '#1575#1587#1578#1601#1575#1583#1607' '#1603#1606#1610#1583'.'
      ExplicitLeft = 229
      ExplicitTop = 27
      ExplicitWidth = 355
    end
    object chkPrice: TCheckBox
      Left = 607
      Top = 48
      Width = 113
      Height = 17
      TabStop = False
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Caption = #1601#1585#1575' '#1582#1608#1575#1606#1610' '#1576#1575' '#1602#1610#1605#1578
      Checked = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      State = cbChecked
      TabOrder = 0
      ExplicitLeft = 471
    end
  end
  inherited pnlDown: TPanel
    Top = 497
    Width = 786
    BevelOuter = bvNone
    ExplicitTop = 509
    ExplicitWidth = 658
    inherited btnClose: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 72
      Height = 31
      Align = alLeft
      Glyph.Data = {00000000}
      ModalResult = 2
      TabOrder = 4
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 72
      ExplicitHeight = 31
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 719
      Top = 3
      Width = 72
      Height = 31
      Align = alRight
      Caption = #1578#1571#1610#1610#1600#1600#1600#1583
      Default = True
      ModalResult = 1
      TabOrder = 3
      ExplicitLeft = 583
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 159
      Top = 3
      Width = 72
      Height = 31
      Action = actSearch
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 0
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 81
      Top = 3
      Width = 72
      Height = 31
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 237
      Top = 3
      Width = 84
      Height = 31
      Action = actExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 2
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 641
      Top = 3
      Width = 72
      Height = 31
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 5
      ExplicitLeft = 505
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 479
      Top = 3
      Width = 78
      Height = 31
      Action = actDeSelectd
      Align = alRight
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1593#1705#1608#1587
      TabOrder = 6
      ExplicitLeft = 343
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 563
      Top = 3
      Width = 72
      Height = 31
      Action = actSelectAll
      Align = alRight
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      TabOrder = 7
      ExplicitLeft = 427
    end
  end
  object DBGrid1: TDBGrid [2]
    Left = 0
    Top = 106
    Width = 786
    Height = 351
    Align = alClient
    Color = clCream
    DataSource = srcSpecialRecall
    DrawingStyle = gdsGradient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'Selected'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StuffCode'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'c_StuffName'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UnitName'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Entity'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Weight'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Price'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DeficitValue'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DeficitValue2'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DeficitValue3'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DeficitValue4'
        Width = 69
        Visible = True
      end>
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 73
    Width = 786
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 3
    TabOrder = 3
    ExplicitWidth = 658
    object LblStore: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 31
      Height = 13
      Align = alLeft
      Alignment = taCenter
      Caption = #1603#1583' '#1575#1606#1576#1575#1585
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl14: TLabel
      AlignWithMargins = True
      Left = 716
      Top = 6
      Width = 72
      Height = 13
      Align = alRight
      Alignment = taRightJustify
      Caption = #1603#1583' '#1605#1588#1578#1585#1610' '#1570#1610#1578#1605
    end
    object btn3: TSpeedButton
      AlignWithMargins = True
      Left = 554
      Top = 6
      Width = 23
      Height = 21
      Align = alRight
      Caption = '...'
      OnClick = btn3Click
      ExplicitLeft = 418
      ExplicitTop = 4
      ExplicitHeight = 51
    end
    object lbl1: TLabel
      AlignWithMargins = True
      Left = 536
      Top = 6
      Width = 12
      Height = 13
      Align = alRight
      Caption = '__'
      Color = clActiveCaption
      ParentColor = False
      Transparent = True
    end
    object medtPersonID1: TMaskEdit
      AlignWithMargins = True
      Left = 583
      Top = 6
      Width = 127
      Height = 21
      Align = alRight
      EditMask = '999999999999999999;1;_'
      MaxLength = 18
      TabOrder = 0
      Text = '                  '
      ExplicitLeft = 447
    end
  end
  object SumGrid1: TSumGrid [4]
    Left = 0
    Top = 457
    Width = 786
    Height = 40
    TabStop = False
    Active = False
    Enable_Controls = True
    SelectedRow = True
    MasterGrid = DBGrid1
    FieldsName = 'Entity;Weight;Price;'
  end
  inherited ActionList1: TActionList
    object actSearch: TAction
      Caption = #1580#1587#1578#1580#1608
      Hint = ' '
      ShortCut = 114
      OnExecute = actSearchExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      Hint = ' '
      ShortCut = 117
      OnExecute = actSortExecute
    end
    object actExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      Hint = ' '
      ShortCut = 8310
      OnExecute = actExcelExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actSelectAll: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      OnExecute = actSelectAllExecute
    end
    object actDeSelectd: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1593#1705#1608#1587
      OnExecute = actDeSelectdExecute
    end
  end
  object qrySpecialRecall: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 65
    Top = 161
    object qrySpecialRecallSelected: TIntegerField
      DisplayLabel = #1575#1606#1578#1582#1575#1576
      FieldName = 'Selected'
    end
    object qrySpecialRecallStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qrySpecialRecallc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qrySpecialRecallUnitName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583' '
      FieldName = 'UnitName'
      Size = 50
    end
    object qrySpecialRecallSecondTypeItem: TIntegerField
      FieldName = 'SecondTypeItem'
    end
    object qrySpecialRecallEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
    end
    object qrySpecialRecallWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
    end
    object qrySpecialRecallUnitSellPrice: TFMTBCDField
      DisplayLabel = #1601#1610
      FieldName = 'UnitSellPrice'
      Precision = 19
    end
    object qrySpecialRecallUseUnitID: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1581#1604' '#1605#1589#1585#1601
      FieldName = 'UseUnitID'
    end
    object qrySpecialRecallSecondType: TIntegerField
      FieldName = 'SecondType'
    end
    object qrySpecialRecallPersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object qrySpecialRecallPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Price'
      currency = True
      Precision = 19
    end
    object qrySpecialRecallDeficitValue: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1578#1582#1601#1610#1601
      FieldName = 'DeficitValue'
      currency = True
      Precision = 19
    end
    object qrySpecialRecallDeficitValue2: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1578#1582#1601#1610#1601'2'
      FieldName = 'DeficitValue2'
      currency = True
      Precision = 19
    end
    object qrySpecialRecallDeficitValue3: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1578#1582#1601#1610#1601'3'
      FieldName = 'DeficitValue3'
      currency = True
      Precision = 19
    end
    object qrySpecialRecallDeficitValue4: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1578#1582#1601#1610#1601'4'
      FieldName = 'DeficitValue4'
      currency = True
      Precision = 19
    end
  end
  object srcSpecialRecall: TDataSource
    DataSet = qrySpecialRecall
    Left = 192
    Top = 192
  end
  object qryInsert: TADOQuery
    Connection = DmF.adcBSell
    Parameters = <
      item
        Name = 'NewFormItemID'
        Size = -1
        Value = Null
      end
      item
        Name = 'NewFormID'
        Size = -1
        Value = Null
      end
      item
        Name = 'NewRow'
        Size = -1
        Value = Null
      end
      item
        Name = 'OldFormItemID'
        Size = -1
        Value = Null
      end
      item
        Name = 'OldFormItemID1'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'INSERT INTO FormItems'
      
        '                      (FormItemID, FormID, Row, CheckNumber, Che' +
        'ckDate, CheckType, ItemAmount, ItemNote, BankName, AccountNumber' +
        ', City, CustomerID2, '
      '                      preFormItemID)'
      
        'SELECT     :NewFormItemID , :NewFormID , :NewRow, CheckNumber, C' +
        'heckDate, CheckType, ItemAmount, ItemNote, BankName, AccountNumb' +
        'er, City,'
      '                      CustomerID2, :OldFormItemID'
      'FROM         FormItems'
      'WHERE     (FormItemID = :OldFormItemID1 )')
    Left = 106
    Top = 327
  end
end
