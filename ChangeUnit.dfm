inherited ChangeUnitF: TChangeUnitF
  Left = 495
  Top = 208
  ActiveControl = mskNum
  Caption = #1578#1594#1610#1610#1585' '#1608#1575#1581#1583' '#1588#1605#1575#1585#1588' '#1608' '#1575#1593#1605#1575#1604' '#1590#1585#1610#1576' '#1576#1585#1575#1610' '#1605#1602#1583#1575#1585'  - '#1608#1586#1606
  ClientHeight = 348
  ClientWidth = 485
  OldCreateOrder = True
  ExplicitWidth = 491
  ExplicitHeight = 377
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel [0]
    Left = 6
    Top = 79
    Width = 476
    Height = 91
    Shape = bsFrame
  end
  inherited Bevel1: TBevel
    Left = 69
    Top = 303
    Width = 326
    Height = 11
    Visible = False
    ExplicitLeft = 69
    ExplicitTop = 303
    ExplicitWidth = 326
    ExplicitHeight = 11
  end
  object SpeedButton1: TSpeedButton [2]
    Left = 292
    Top = 89
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton1Click
  end
  object Label1: TLabel [3]
    Left = 414
    Top = 94
    Width = 29
    Height = 13
    Alignment = taRightJustify
    Caption = #1603#1583' '#1603#1575#1604#1575
  end
  object Label2: TLabel [4]
    Left = 414
    Top = 117
    Width = 41
    Height = 13
    Caption = #1588#1585#1581' '#1603#1575#1604#1575
  end
  object Label3: TLabel [5]
    Left = 414
    Top = 139
    Width = 50
    Height = 13
    Caption = #1608#1575#1581#1583' '#1601#1593#1604#1610
  end
  object Label4: TLabel [6]
    Left = 326
    Top = 185
    Width = 87
    Height = 13
    Caption = #1608#1575#1581#1583' '#1588#1605#1575#1585#1588' '#1580#1583#1610#1583
  end
  object lblValue: TLabel [7]
    Left = 316
    Top = 245
    Width = 55
    Height = 13
    Alignment = taRightJustify
    Anchors = [akLeft, akTop, akBottom]
    Caption = #1590#1585#1610#1576' '#1605#1602#1583#1575#1585
    Transparent = False
  end
  object Label6: TLabel [8]
    Left = 247
    Top = 213
    Width = 52
    Height = 13
    Caption = #1589#1608#1585#1578' '#1603#1587#1585
    Transparent = False
  end
  object Label7: TLabel [9]
    Left = 152
    Top = 213
    Width = 50
    Height = 13
    Caption = #1605#1582#1585#1580' '#1603#1587#1585
    Transparent = False
  end
  object lblWeight: TLabel [10]
    Left = 316
    Top = 280
    Width = 46
    Height = 13
    Alignment = taRightJustify
    Caption = #1590#1585#1610#1576' '#1608#1586#1606
    Transparent = False
  end
  object Bevel3: TBevel [11]
    Left = 136
    Top = 231
    Width = 184
    Height = 2
    Shape = bsTopLine
  end
  object Bevel4: TBevel [12]
    Left = 223
    Top = 213
    Width = 5
    Height = 97
    Shape = bsLeftLine
  end
  inherited Panel1: TPanel
    Width = 485
    ExplicitWidth = 485
    inherited Image1: TImage
      Left = 431
      ExplicitLeft = 431
    end
    inherited lblTopic0: TLabel
      Left = 396
      Width = 15
      Caption = '---'
      ExplicitLeft = 396
      ExplicitWidth = 15
    end
    inherited lblTopic1: TLabel
      Left = 338
      Visible = False
      ExplicitLeft = 338
    end
  end
  inherited pnlDown: TPanel
    Top = 311
    Width = 485
    ExplicitTop = 311
    ExplicitWidth = 485
    inherited btnClose: TBitBtn
      Caption = #1575#1606#1589#1585#1575#1601
      Glyph.Data = {00000000}
      ModalResult = 2
      NumGlyphs = 2
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 402
      Top = 7
      Width = 75
      Height = 25
      Caption = #1578#1575#1574#1610#1583
      Default = True
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object cmbUnits: TComboBox [15]
    Left = 123
    Top = 181
    Width = 195
    Height = 21
    Style = csDropDownList
    TabOrder = 3
  end
  object mskRollValue: TMaskEdit [16]
    Left = 242
    Top = 242
    Width = 70
    Height = 19
    Anchors = [akLeft, akTop, akBottom]
    Ctl3D = False
    EditMask = '99999999'
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 4
    Text = '1       '
  end
  object mskVentValue: TMaskEdit [17]
    Left = 146
    Top = 242
    Width = 70
    Height = 19
    Anchors = [akLeft, akTop, akBottom]
    Ctl3D = False
    EditMask = '99999999'
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 5
    Text = '1       '
  end
  object mskVentWeight: TMaskEdit [18]
    Left = 146
    Top = 277
    Width = 70
    Height = 19
    Ctl3D = False
    EditMask = '99999999'
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 7
    Text = '1       '
  end
  object mskRollWeight: TMaskEdit [19]
    Left = 242
    Top = 277
    Width = 70
    Height = 19
    Ctl3D = False
    EditMask = '99999999'
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 6
    Text = '1       '
  end
  object mskNum: TMaskEdit [20]
    Left = 317
    Top = 90
    Width = 94
    Height = 21
    EditMask = '99999999999'
    MaxLength = 11
    TabOrder = 2
    Text = '           '
    OnChange = mskNumChange
  end
  object DBEdit1: TDBEdit [21]
    Left = 20
    Top = 114
    Width = 391
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'c_StuffName'
    DataSource = srcSearch
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 8
  end
  object DBEdit2: TDBEdit [22]
    Left = 243
    Top = 136
    Width = 168
    Height = 19
    TabStop = False
    Ctl3D = False
    DataField = 'UnitName'
    DataSource = srcSearch
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 9
  end
  inherited ActionList1: TActionList
    Left = 33
  end
  object qrySearch: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    AfterScroll = qrySearchAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'SELECT DISTINCT ReciptItems.StuffCode, StuffCoding.c_StuffName,U' +
        'nits.UnitName, StuffCoding.n_UnitCode'
      'FROM         ReciptItems INNER JOIN'
      
        '                      StuffCoding ON ReciptItems.StuffCode = Stu' +
        'ffCoding.c_StuffCode LEFT OUTER JOIN'
      
        '                      Units ON StuffCoding.n_UnitCode = Units.Un' +
        'itCode')
    Left = 32
    Top = 74
    object qrySearchStuffCode: TLargeintField
      FieldName = 'StuffCode'
    end
    object qrySearchc_StuffName: TStringField
      DisplayLabel = #1588#1585#1581' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 150
    end
    object qrySearchUnitName: TStringField
      DisplayLabel = #1608#1575#1581#1583' '#1601#1593#1604#1610
      FieldName = 'UnitName'
      Size = 50
    end
    object qrySearchn_UnitCode: TWordField
      FieldName = 'n_UnitCode'
    end
  end
  object srcSearch: TDataSource
    DataSet = qrySearch
    Left = 32
    Top = 138
  end
end
