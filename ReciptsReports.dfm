inherited ReciptsReportsF: TReciptsReportsF
  Left = 178
  Top = 129
  Caption = 'ReciptsReportsF'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    object BitBtn1: TBitBtn
      Left = 696
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  inherited Panel3: TPanel
    object ppViewer1: TppViewer
      Left = 2
      Top = 2
      Width = 529
      Height = 424
      Align = alClient
      PageColor = clWindow
      ZoomPercentage = 100
      ZoomSetting = zsPageWidth
    end
    object lstListFiles: TListBox
      Left = 531
      Top = 2
      Width = 249
      Height = 424
      Align = alRight
      BiDiMode = bdLeftToRight
      Color = clWhite
      ItemHeight = 13
      ParentBiDiMode = False
      Sorted = True
      TabOrder = 1
      OnClick = lstListFilesClick
    end
  end
end
