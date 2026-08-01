inherited AmvalNoteF: TAmvalNoteF
  Tag = 666
  Left = 323
  Top = 185
  ActiveControl = memNote
  BorderStyle = bsToolWindow
  Caption = #1578#1608#1590#1610#1581#1575#1578
  ClientHeight = 285
  ClientWidth = 433
  ParentFont = False
  Font.Charset = ARABIC_CHARSET
  OldCreateOrder = True
  ExplicitWidth = 439
  ExplicitHeight = 314
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 433
    Height = 285
    HelpType = htKeyword
    Align = alClient
    Pen.Width = 2
  end
  object BitBtn2: TBitBtn
    Left = 270
    Top = 255
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1575#1606#1589#1585#1575#1601
    ModalResult = 2
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 350
    Top = 255
    Width = 75
    Height = 25
    Caption = #1578#1575#1574#1610#1583
    ModalResult = 1
    TabOrder = 1
  end
  object memNote: TMemo
    Tag = 111
    Left = 8
    Top = 9
    Width = 417
    Height = 240
    Align = alCustom
    Color = clCream
    Ctl3D = True
    Lines.Strings = (
      'memNote')
    ParentCtl3D = False
    TabOrder = 2
  end
end
