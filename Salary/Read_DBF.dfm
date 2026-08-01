object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 242
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object CedarDbgrid1: TCedarDbgrid
    Left = 0
    Top = 0
    Width = 527
    Height = 242
    Align = alClient
    DynProps = <>
    Flat = True
    FooterParams.FillStyle = cfstSolidEh
    FooterParams.Font.Charset = DEFAULT_CHARSET
    FooterParams.Font.Color = clWindowText
    FooterParams.Font.Height = -12
    FooterParams.Font.Name = 'Tahoma'
    FooterParams.Font.Style = [fsBold]
    FooterParams.ParentFont = False
    FooterParams.VertLines = False
    GridLineParams.VertEmptySpaceStyle = dessNonEh
    HorzScrollBar.ExtraPanel.Visible = True
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    OddRowColor = clGradientInactiveCaption
    RowHeight = 18
    SearchPanel.Enabled = True
    SortLocal = True
    TabOrder = 0
    ActiveSearchPanel = False
    SelectFooterIndex = 0
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Dbf1: TDbf
    FilePath = '..\'
    IndexDefs = <>
    TableLevel = 4
    Left = 232
    Top = 64
  end
  object DataSource1: TDataSource
    Left = 256
    Top = 128
  end
end
