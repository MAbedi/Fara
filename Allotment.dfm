object AllotmentF: TAllotmentF
  Tag = 666
  Left = 514
  Top = 401
  ActiveControl = ComboBox1
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = #1578#1587#1607#1610#1605' '#1608' '#1575#1590#1575#1601#1607' '#1606#1605#1608#1583#1606' '#1605#1576#1604#1594' '#1576#1607' '#1603#1575#1604#1575#1607#1575
  ClientHeight = 128
  ClientWidth = 319
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 252
    Top = 39
    Width = 59
    Height = 13
    Caption = #1606#1581#1608#1607' '#1578#1587#1607#1610#1605' '
  end
  object Label2: TLabel
    Left = 252
    Top = 68
    Width = 23
    Height = 13
    Caption = #1605#1576#1604#1594' '
  end
  object lblPrice: TLabel
    Left = 116
    Top = 40
    Width = 7
    Height = 16
    Caption = '0'
    Color = clBtnFace
    Font.Charset = ARABIC_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 252
    Top = 12
    Width = 59
    Height = 13
    Caption = #1575#1606#1578#1582#1575#1576' '#1587#1578#1608#1606
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 35
    Width = 241
    Height = 21
    Style = csDropDownList
    DropDownCount = 20
    TabOrder = 1
    OnEnter = ComboBox1Enter
    OnKeyDown = ComboBox1KeyDown
    Items.Strings = (
      #1605#1602#1583#1575#1585
      #1608#1586#1606
      #1605#1576#1604#1594
      #1578#1587#1607#1610#1605' '#1576#1585' '#1575#1587#1575#1587' '#1590#1585#1610#1576' '#1608#1575#1581#1583' '#1605#1588#1578#1585#1603' '#1590#1585#1576#1583#1585' '#1605#1602#1583#1575#1585
      #1578#1587#1607#1610#1605' '#1576#1585' '#1575#1587#1575#1587' '#1590#1585#1610#1576' '#1608#1575#1581#1583' '#1605#1588#1578#1585#1603' '#1590#1585#1576#1583#1585' '#1608#1586#1606)
  end
  object BitBtn1: TBitBtn
    Left = 240
    Top = 97
    Width = 75
    Height = 25
    Action = Action1
    Caption = #1578#1575#1610#1610#1583
    Default = True
    TabOrder = 3
  end
  object BitBtn2: TBitBtn
    Left = 3
    Top = 97
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1576#1575#1586#1711#1588#1578
    ModalResult = 1
    TabOrder = 4
  end
  object medtPrice: TMaskEdit
    Left = 125
    Top = 65
    Width = 124
    Height = 21
    BiDiMode = bdLeftToRight
    Color = 12582847
    Ctl3D = True
    ParentBiDiMode = False
    ParentCtl3D = False
    TabOrder = 2
    Text = ''
    OnChange = medtPriceChange
  end
  object cmbFieldName: TComboBox
    Left = 8
    Top = 8
    Width = 241
    Height = 21
    Style = csDropDownList
    DropDownCount = 20
    TabOrder = 0
    OnEnter = ComboBox1Enter
    OnKeyDown = ComboBox1KeyDown
    Items.Strings = (
      #1605#1602#1583#1575#1585
      #1608#1586#1606
      #1605#1576#1604#1594
      #1578#1587#1607#1610#1605' '#1576#1585' '#1575#1587#1575#1587' '#1590#1585#1610#1576' '#1608#1575#1581#1583' '#1605#1588#1578#1585#1603' '#1590#1585#1576#1583#1585' '#1605#1602#1583#1575#1585
      #1578#1587#1607#1610#1605' '#1576#1585' '#1575#1587#1575#1587' '#1590#1585#1610#1576' '#1608#1575#1581#1583' '#1605#1588#1578#1585#1603' '#1590#1585#1576#1583#1585' '#1608#1586#1606)
  end
  object ActionList1: TActionList
    Left = 120
    Top = 88
    object Action1: TAction
      Caption = #1578#1575#1610#1610#1583
      OnExecute = Action1Execute
      OnUpdate = Action1Update
    end
  end
end
