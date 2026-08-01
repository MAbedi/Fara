object template2F: Ttemplate2F
  Tag = 666
  Left = 228
  Top = 164
  BiDiMode = bdRightToLeft
  Caption = 'Template2'
  ClientHeight = 532
  ClientWidth = 780
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlUnderButton: TPanel
    Left = 0
    Top = 491
    Width = 780
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BtnReject: TBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Action = actExit
      Cancel = True
      Caption = #1576#1575#1586#1711#1588#1578
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF33339993707399933333773337F3777FF3399933000339
        9933377333777F3377F3399333707333993337733337333337FF993333333333
        399377F33333F333377F993333303333399377F33337FF333373993333707333
        333377F333777F333333993333101333333377F333777F3FFFFF993333000399
        999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
        99933773FF777F3F777F339993707399999333773F373F77777F333999999999
        3393333777333777337333333999993333333333377777333333}
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 780
    Height = 41
    Align = alTop
    TabOrder = 1
    object ImgTemplate: TImage
      Left = 8
      Top = 1
      Width = 105
      Height = 38
      AutoSize = True
    end
    object lblCaption: TLabel
      Left = 700
      Top = 1
      Width = 73
      Height = 19
      Align = alRight
      Alignment = taRightJustify
      Caption = '   '#1593#1606#1608#1575#1606' '#1601#1585#1605
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Jadid'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 780
    Height = 450
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 2
  end
  object ActionList: TActionList
    Left = 64
    Top = 8
    object actExit: TAction
      Caption = #1576#1575#1586#1711#1588#1578
      OnExecute = actExitExecute
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = ' '
      ShortCut = 113
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      ShortCut = 115
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      Hint = ' '
      ShortCut = 119
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = ' '
    end
    object _actSearch: TAction
      Caption = #1580#1587#1578#1580#1608
      Hint = ' '
    end
    object DataSet_Delete2: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
    end
    object _actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      Hint = ' '
    end
  end
end
