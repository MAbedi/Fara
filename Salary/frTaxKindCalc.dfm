object frmTaxKindCalc: TfrmTaxKindCalc
  Left = 0
  Top = 0
  Width = 416
  Height = 55
  TabOrder = 0
  object Label1: TLabel
    AlignWithMargins = True
    Left = 6
    Top = 6
    Width = 356
    Height = 43
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alClient
    Caption = 
      #1576#1575' '#1578#1594#1740#1740#1585#1575#1578' '#1587#1575#1582#1578#1575#1585' '#1583#1740#1587#1705#1578' '#1605#1575#1604#1740#1575#1578#1740' '#1575#1586' '#1575#1576#1578#1583#1575#1740' '#1587#1575#1604' 1395  '#1606#1581#1608#1607' '#1605#1581#1575#1587#1576#1607' ' +
      #1605#1575#1604#1610#1575#1578' : '#1601#1602#1591' '#1711#1586#1740#1606#1607' "'#1587#1575#1604#1740#1575#1606#1607' '#1576#1585' '#1581#1587#1576' '#1605#1575#1607'" '#1576#1575#1740#1583' '#1575#1606#1578#1582#1575#1576' '#1588#1608#1583'.'#8207
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
    WordWrap = True
    ExplicitWidth = 353
    ExplicitHeight = 26
  end
  object Panel1: TPanel
    Left = 368
    Top = 0
    Width = 48
    Height = 55
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 0
    object Label2: TLabel
      AlignWithMargins = True
      Left = 13
      Top = 3
      Width = 32
      Height = 14
      Align = alRight
      Caption = #1578#1608#1580#1607':'#8207
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 144
    Top = 8
  end
end
