inherited ZoomF: TZoomF
  Left = 365
  Top = 127
  Width = 267
  Height = 363
  Align = alRight
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1576#1586#1585#1711' '#1606#1605#1575#1610#1610
  ParentFont = False
  Font.Charset = ARABIC_CHARSET
  Font.Name = 'Tahoma'
  FormStyle = fsStayOnTop
  OldCreateOrder = True
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 259
    Height = 77
    Align = alTop
    Brush.Style = bsDiagCross
    Pen.Width = 2
    Shape = stRoundRect
  end
  object Image1: TImage
    Left = 0
    Top = 77
    Width = 259
    Height = 252
    Align = alClient
  end
  object GroupBox1: TGroupBox
    Left = 43
    Top = 4
    Width = 177
    Height = 69
    Caption = #1583#1585#1589#1583' '#1576#1586#1585#1711' '#1606#1605#1575#1610#1610
    TabOrder = 0
    object Label1: TLabel
      Left = 15
      Top = 48
      Width = 14
      Height = 13
      Caption = '1 x'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 47
      Top = 48
      Width = 14
      Height = 13
      Caption = '2 x'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 79
      Top = 48
      Width = 14
      Height = 13
      Caption = '4 x'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 117
      Top = 48
      Width = 14
      Height = 13
      Caption = '6 x'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 148
      Top = 48
      Width = 14
      Height = 13
      Caption = '8 x'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Slider: TTrackBar
      Left = 13
      Top = 16
      Width = 160
      Height = 33
      Max = 5
      Min = 1
      PageSize = 1
      Position = 1
      TabOrder = 0
    end
  end
  object tmrGetDec: TTimer
    Interval = 25
    OnTimer = tmrGetDecTimer
    Left = 32
    Top = 96
  end
end
