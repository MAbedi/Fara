object ChooseColsF: TChooseColsF
  Left = 432
  Top = 259
  BiDiMode = bdRightToLeft
  BorderStyle = bsToolWindow
  Caption = #1575#1606#1578#1582#1575#1576' '#1587#1578#1608#1606#1607#1575#1610' '#1711#1586#1575#1585#1588
  ClientHeight = 224
  ClientWidth = 243
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 195
    Width = 243
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object BitBtn2: TBitBtn
      Left = 9
      Top = 5
      Width = 50
      Height = 19
      Cancel = True
      Caption = #1575#1606#1589#1585#1575#1601
      ModalResult = 2
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 66
      Top = 5
      Width = 50
      Height = 19
      Caption = #1578#1571#1610#1610#1583
      Default = True
      ModalResult = 1
      TabOrder = 1
    end
  end
  object ListSource: TListBox
    Left = 120
    Top = 0
    Width = 123
    Height = 195
    Align = alRight
    Color = 11796441
    ItemHeight = 13
    TabOrder = 1
    OnDblClick = ListSourceDblClick
  end
  object ListRun: TListBox
    Left = 0
    Top = 0
    Width = 120
    Height = 195
    Align = alClient
    Color = 13303807
    ItemHeight = 13
    TabOrder = 2
    OnDblClick = ListSourceDblClick
  end
  object qryAnalyze: TADOQuery
    Connection = Dmf.adcAccounting
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        '(SELECT    LevelID, TopicType, CodeLength, LevelCaption_L1, Leve' +
        'lCaption_L2'
      'FROM        Acc.AccTopicLevels'
      'WHERE    (TopicType BETWEEN 0 AND 2 OR TopicType = 5) AND'
      
        '                  (LevelID IN (1,2,3,4,5,6,51,52,53,61,62,63,71,' +
        '72)))'
      '')
    Left = 194
    Top = 14
  end
end
