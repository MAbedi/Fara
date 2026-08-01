object frmDBLookupComboBox: TfrmDBLookupComboBox
  Left = 0
  Top = 0
  Width = 227
  Height = 21
  TabOrder = 0
  object btnFr1: TSpeedButton
    Tag = 1
    Left = 0
    Top = 0
    Width = 23
    Height = 21
    Align = alLeft
    Caption = '...'
    OnClick = btnFr1Click
    ExplicitLeft = 233
    ExplicitTop = 1
    ExplicitHeight = 22
  end
  object lblFrCaption: TLabel
    AlignWithMargins = True
    Left = 212
    Top = 3
    Width = 12
    Height = 15
    Align = alRight
    Caption = '...'
    ExplicitLeft = 219
    ExplicitTop = 0
    ExplicitHeight = 13
  end
  object dblkcbbFr1: TDBLookupComboBox
    Left = 23
    Top = 0
    Width = 186
    Height = 21
    Align = alClient
    TabOrder = 0
    OnKeyDown = dblkcbbFr1KeyDown
    ExplicitWidth = 204
  end
end
