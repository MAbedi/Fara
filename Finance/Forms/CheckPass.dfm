object CheckPassF: TCheckPassF
  Left = 429
  Top = 355
  ActiveControl = edtTxt
  BiDiMode = bdRightToLeft
  BorderStyle = bsNone
  ClientHeight = 68
  ClientWidth = 279
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 279
    Height = 68
    Align = alClient
    Pen.Width = 2
    Shape = stRoundRect
  end
  object lblMsg: TLabel
    Left = 242
    Top = 5
    Width = 29
    Height = 13
    Caption = 'lblMsg'
    Transparent = True
  end
  object edtTxt: TEdit
    Left = 8
    Top = 20
    Width = 265
    Height = 19
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Ctl3D = False
    ParentCtl3D = False
    PasswordChar = '*'
    TabOrder = 0
    OnKeyPress = edtTxtKeyPress
  end
  object Office97Button1: TOffice97Button
    Left = 204
    Top = 41
    Width = 70
    Height = 23
    Caption = #1578#1575#1574#1610#1583
    Color = clWhite
    HoverFont.Charset = DEFAULT_CHARSET
    HoverFont.Color = clWindowText
    HoverFont.Height = -11
    HoverFont.Name = 'MS Sans Serif'
    HoverFont.Style = []
    ModalResult = 1
    TabOrder = 1
  end
  object Office97Button2: TOffice97Button
    Left = 133
    Top = 41
    Width = 70
    Height = 23
    Cancel = True
    Caption = #1575#1606#1589#1585#1575#1601
    Color = clWhite
    HoverFont.Charset = DEFAULT_CHARSET
    HoverFont.Color = clWindowText
    HoverFont.Height = -11
    HoverFont.Name = 'MS Sans Serif'
    HoverFont.Style = []
    ModalResult = 2
    TabOrder = 2
  end
end
