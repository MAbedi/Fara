object search3F: Tsearch3F
  Tag = 666
  Left = 445
  Top = 401
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = #1580#1587#1578#1580#1608
  ClientHeight = 137
  ClientWidth = 221
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 64
    Top = 74
    Width = 145
    Height = 17
    Alignment = taRightJustify
  end
  object searchbox: TEdit
    Left = 8
    Top = 40
    Width = 201
    Height = 21
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 136
    Top = 104
    Width = 75
    Height = 25
    Action = Action1
    Caption = #1580#1587#1578#1580#1608' F3'
    Default = True
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 104
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1576#1575#1586#1711#1588#1578
    ModalResult = 1
    TabOrder = 2
  end
  object ActionList1: TActionList
    Left = 184
    Top = 32
    object Action1: TAction
      Caption = #1580#1587#1578#1580#1608' F3'
      ShortCut = 114
      OnExecute = Action1Execute
    end
  end
  object srcSearch: TDataSource
    Left = 32
  end
end
