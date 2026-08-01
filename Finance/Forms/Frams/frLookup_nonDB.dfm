object frLookup_nonDBF: TfrLookup_nonDBF
  Left = 0
  Top = 0
  Width = 243
  Height = 33
  Hint = #1576#1585#1575#1610' '#1580#1587#1578#1580#1608' '#1575#1586' '#1603#1604#1610#1583' space '#1575#1587#1578#1601#1575#1583#1607' '#1603#1606#1610#1583'.'
  BiDiMode = bdRightToLeft
  ParentBiDiMode = False
  ParentShowHint = False
  ShowHint = True
  TabOrder = 0
  DesignSize = (
    243
    33)
  object lblCaption: TLabel
    Left = 194
    Top = 11
    Width = 47
    Height = 13
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    AutoSize = False
    Caption = #1603#1583
    Transparent = True
  end
  object cmbLookup: TComboBox
    Left = 8
    Top = 7
    Width = 180
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akTop, akRight]
    Color = 12910057
    TabOrder = 0
    OnChange = cmbLookupChange
    OnEnter = cmbLookupEnter
    OnKeyDown = cmbLookupKeyDown
  end
end
