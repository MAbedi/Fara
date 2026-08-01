object GetFaraFieldsF: TGetFaraFieldsF
  Left = 517
  Top = 152
  BiDiMode = bdRightToLeft
  BorderStyle = bsToolWindow
  BorderWidth = 5
  Caption = #1601#1740#1604#1583#1607#1575#1740' '#1602#1575#1576#1604' '#1575#1606#1578#1582#1575#1576
  ClientHeight = 506
  ClientWidth = 586
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDefault
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 120
    Top = 80
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 580
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = 
      #1601#1740#1604#1583' '#1605#1608#1585#1583' '#1606#1592#1585' '#1585#1575' '#1711#1585#1601#1578#1607' '#1608' '#1583#1585' '#1580#1575#1740' '#1583#1604#1582#1608#1575#1607' '#1583#1585' '#1601#1585#1605#1608#1604' '#1576#1740#1575#1606#1583#1575#1586#1740#1583' (Drag&' +
      'Drop)'
    ExplicitWidth = 311
  end
  object Label3: TLabel
    Left = 0
    Top = 493
    Width = 586
    Height = 13
    Align = alBottom
    Alignment = taCenter
    Caption = '...'
    ExplicitWidth = 12
  end
  object lvVars: TListView
    Left = 0
    Top = 19
    Width = 586
    Height = 474
    Align = alClient
    Columns = <>
    DragMode = dmAutomatic
    HideSelection = False
    ReadOnly = True
    RowSelect = True
    TabOrder = 0
    ViewStyle = vsReport
  end
  object qryWageFormula: TADOQuery
    Connection = DMF.adcSalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT        ID, Name'
      'FROM Pay.Vu_WageFormula')
    Left = 136
    Top = 88
  end
end
