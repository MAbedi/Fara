object frmProduction: TfrmProduction
  Left = 0
  Top = 0
  Width = 379
  Height = 43
  TabOrder = 0
  object SpeedButton1: TSpeedButton
    AlignWithMargins = True
    Left = 194
    Top = 3
    Width = 23
    Height = 24
    Align = alRight
    Caption = '...'
    OnClick = SpeedButton1Click
    ExplicitLeft = 260
    ExplicitHeight = 22
  end
  object Label1: TLabel
    AlignWithMargins = True
    Left = 106
    Top = 6
    Width = 82
    Height = 21
    Margins.Top = 6
    Align = alClient
    Alignment = taCenter
    Caption = '0'
    ExplicitWidth = 6
    ExplicitHeight = 13
  end
  object Label2: TLabel
    AlignWithMargins = True
    Left = 326
    Top = 6
    Width = 50
    Height = 21
    Margins.Top = 6
    Align = alRight
    Alignment = taCenter
    Caption = #1603#1583' '#1608' '#1601#1585#1605#1608#1604
    WordWrap = True
    ExplicitHeight = 13
  end
  object Label3: TLabel
    Left = 0
    Top = 30
    Width = 379
    Height = 13
    Align = alBottom
    Color = 13948116
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ExplicitWidth = 3
  end
  object MaskEdit1: TMaskEdit
    AlignWithMargins = True
    Left = 223
    Top = 3
    Width = 97
    Height = 24
    Align = alRight
    EditMask = '999999999999'
    MaxLength = 12
    TabOrder = 0
    Text = '            '
    ExplicitHeight = 21
  end
  object MaskEdit2: TMaskEdit
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 97
    Height = 24
    Align = alLeft
    EditMask = '999999999999'
    MaxLength = 12
    TabOrder = 1
    Text = '            '
    ExplicitHeight = 21
  end
end
