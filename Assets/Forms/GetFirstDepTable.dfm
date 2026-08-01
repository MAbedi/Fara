object GetFirstDepTableF: TGetFirstDepTableF
  Left = 450
  Top = 208
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1587#1578#1607#1604#1575#1705' '#1587#1575#1604' '#1602#1576#1604
  ClientHeight = 146
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesigned
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 473
    Height = 72
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object pnlBank: TPanel
      Left = 0
      Top = 0
      Width = 473
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 394
        Top = 9
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = #1575#1586' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610
      end
      object cmbBank: TComboBox
        Left = 6
        Top = 5
        Width = 385
        Height = 21
        Style = csDropDownList
        DropDownCount = 20
        TabOrder = 0
        OnChange = cmbBankChange
        OnEnter = cmbAllEnter
      end
    end
    object pnlYear: TPanel
      Left = 0
      Top = 41
      Width = 473
      Height = 31
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object lblYear: TLabel
        Left = 394
        Top = 7
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Caption = #1575#1586' '#1587#1575#1604' '#1605#1575#1604#1610
        Visible = False
      end
      object cmbYear: TComboBox
        Left = 7
        Top = 5
        Width = 385
        Height = 21
        Style = csDropDownList
        DropDownCount = 20
        TabOrder = 0
        Visible = False
        OnChange = cmbYearChange
        OnEnter = cmbAllEnter
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 109
    Width = 473
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 75
      Height = 31
      Align = alLeft
      Cancel = True
      Caption = #1576#1575#1586#1711#1588#1578
      ModalResult = 1
      TabOrder = 0
    end
    object btnDepTable: TBitBtn
      AlignWithMargins = True
      Left = 304
      Top = 3
      Width = 166
      Height = 31
      Align = alRight
      Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1587#1578#1607#1604#1575#1705' '#1587#1575#1604' '#1602#1576#1604
      TabOrder = 1
      OnClick = btnDepTableClick
    end
  end
  object chkMultiYare: TCheckBox
    AlignWithMargins = True
    Left = 3
    Top = 72
    Width = 387
    Height = 17
    Margins.Right = 83
    Align = alBottom
    Caption = #1587#1575#1604' '#1605#1575#1604#1740' '#1740#1705#1662#1575#1585#1670#1607
    TabOrder = 2
    Visible = False
  end
  object LinkLabel1: TLinkLabel
    Left = 0
    Top = 92
    Width = 473
    Height = 17
    CustomHint = DmF.BalloonHint1
    Align = alBottom
    Caption = #1606#1705#1578#1607': '#1602#1576#1604' '#1575#1586' '#1601#1585#1575#1582#1608#1575#1606#1740#1548' '#1605#1581#1575#1587#1576#1575#1578' '#1575#1587#1578#1607#1604#1575#1705' '#1575#1606#1580#1575#1605' '#1588#1583#1607' '#1576#1575#1588#1583'.'
    TabOrder = 3
    ExplicitWidth = 278
  end
  object qry: TADOQuery
    CommandTimeout = 0
    Parameters = <>
    Left = 182
    Top = 24
  end
end
