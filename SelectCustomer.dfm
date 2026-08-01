object SelectCustomerF: TSelectCustomerF
  Left = 353
  Top = 361
  BiDiMode = bdRightToLeft
  BorderStyle = bsSizeToolWin
  Caption = #1575#1606#1578#1582#1575#1576' '#1605#1588#1578#1585#1610
  ClientHeight = 154
  ClientWidth = 317
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ListCustomer: TListBox
    Left = 0
    Top = 21
    Width = 317
    Height = 133
    Align = alClient
    Color = clCream
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnDblClick = ListCustomerDblClick
    OnKeyDown = ListCustomerKeyDown
  end
  object edtSerch: TEdit
    Left = 0
    Top = 0
    Width = 317
    Height = 21
    Align = alTop
    Color = clGradientInactiveCaption
    TabOrder = 1
    TextHint = #1580#1587#1578#1580#1608'...'
    OnChange = edtSerchChange
    ExplicitLeft = 1
    ExplicitTop = 14
    ExplicitWidth = 208
  end
  object qryCustomer: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     CustID, CustName, ProjectID, BudgetID'
      'FROM        Vu_CustomersGroups')
    Left = 64
    Top = 16
    object qryCustomerCustID: TIntegerField
      FieldName = 'CustID'
    end
    object qryCustomerCustName: TStringField
      FieldName = 'CustName'
      Size = 120
    end
  end
end
