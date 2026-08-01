object frmTreeChart: TfrmTreeChart
  Left = 0
  Top = 0
  Width = 779
  Height = 488
  TabOrder = 0
  object Panel1: TPanel
    Left = 594
    Top = 0
    Width = 185
    Height = 488
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 0
    object btnClearSeries: TSpeedButton
      Left = 0
      Top = 0
      Width = 185
      Height = 22
      Align = alTop
      Caption = #1576#1575#1586#1587#1575#1586#1740' '#1601#1740#1604#1583#1607#1575
      OnClick = btnClearSeriesClick
      ExplicitLeft = 6
      ExplicitTop = -16
    end
    object btnAddSerie: TSpeedButton
      Left = 0
      Top = 65
      Width = 185
      Height = 22
      Align = alTop
      Caption = #1575#1590#1575#1601#1607' '#1705#1585#1583#1606
      OnClick = btnAddSerieClick
      ExplicitLeft = 5
      ExplicitTop = 49
    end
    object CmbShow1: TComboBox
      Left = 0
      Top = 22
      Width = 185
      Height = 21
      Align = alTop
      Color = clSkyBlue
      TabOrder = 0
      OnClick = CmbShow1Click
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 272
      Width = 185
      Height = 175
      Align = alBottom
      Caption = #1578#1606#1592#1610#1605#1575#1578
      TabOrder = 1
      object rdoPosition: TRadioGroup
        Left = 2
        Top = 45
        Width = 181
        Height = 63
        Align = alBottom
        Caption = 'Legend Position'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Left'
          'Right'
          'Top'
          'Bottom'
          'None')
        TabOrder = 0
        OnClick = rdoPositionClick
      end
      object btnShow: TButton
        Left = 2
        Top = 20
        Width = 181
        Height = 25
        Align = alBottom
        Caption = #1606#1605#1575#1610#1588
        TabOrder = 1
        OnClick = btnShowClick
      end
      object pnlChartType: TPanel
        Left = 2
        Top = -4
        Width = 181
        Height = 24
        Align = alBottom
        BevelOuter = bvNone
        Caption = '3'
        TabOrder = 2
        object btnChartTypeUp: TSpeedButton
          Left = 0
          Top = 0
          Width = 69
          Height = 24
          HelpType = htKeyword
          Align = alLeft
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000010000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333FF3333333333333003333
            3333333333773FF3333333333309003333333333337F773FF333333333099900
            33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
            99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
            33333333337F3F77333333333309003333333333337F77333333333333003333
            3333333333773333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
          OnClick = btnChartTypeUpClick
        end
        object btnChartTypeDown: TSpeedButton
          Left = 112
          Top = 0
          Width = 69
          Height = 24
          HelpType = htKeyword
          Align = alRight
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000010000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333FF3333333333333003333333333333F77F33333333333009033
            333333333F7737F333333333009990333333333F773337FFFFFF330099999000
            00003F773333377777770099999999999990773FF33333FFFFF7330099999000
            000033773FF33777777733330099903333333333773FF7F33333333333009033
            33333333337737F3333333333333003333333333333377333333333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
          OnClick = btnChartTypeDownClick
        end
      end
      object Button1: TButton
        Left = 2
        Top = 148
        Width = 181
        Height = 25
        Align = alBottom
        Caption = #1587#1575#1740#1585' '#1578#1606#1592#1740#1605#1575#1578
        TabOrder = 3
        OnClick = Button1Click
      end
      object chk3D: TCheckBox
        Left = 2
        Top = 128
        Width = 181
        Height = 20
        Align = alBottom
        Caption = '3D'
        TabOrder = 4
        Visible = False
      end
      object chkShowValues: TCheckBox
        Left = 2
        Top = 108
        Width = 181
        Height = 20
        Align = alBottom
        Caption = #1606#1605#1575#1740#1588' '#1605#1602#1583#1575#1585' '#1585#1608#1740' '#1606#1605#1608#1583#1575#1585
        TabOrder = 5
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 447
      Width = 185
      Height = 41
      Align = alBottom
      TabOrder = 2
      object btnTelegram: TBitBtn
        AlignWithMargins = True
        Left = 98
        Top = 7
        Width = 83
        Height = 27
        Margins.Top = 6
        Margins.Bottom = 6
        Align = alRight
        Caption = 'Telegram'
        NumGlyphs = 2
        TabOrder = 0
        OnClick = btnTelegramClick
      end
      object btnPrint: TBitBtn
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 82
        Height = 33
        Align = alLeft
        Caption = '&Print !'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
        TabOrder = 1
        Visible = False
        OnClick = btnPrintClick
      end
      object btnPic: TBitBtn
        AlignWithMargins = True
        Left = 9
        Top = 7
        Width = 83
        Height = 27
        Margins.Top = 6
        Margins.Bottom = 6
        Align = alRight
        Caption = #1601#1575#1740#1604' '#1578#1589#1608#1740#1585
        NumGlyphs = 2
        TabOrder = 2
        OnClick = btnPicClick
      end
    end
    object mmoFields: TMemo
      Left = 0
      Top = 87
      Width = 185
      Height = 163
      Align = alClient
      ScrollBars = ssHorizontal
      TabOrder = 3
      WordWrap = False
    end
    object cmbColor: TColorBox
      Left = 0
      Top = 250
      Width = 185
      Height = 22
      Align = alBottom
      Selected = clRed
      TabOrder = 4
    end
    object Panel4: TPanel
      Left = 0
      Top = 43
      Width = 185
      Height = 22
      Align = alTop
      Caption = 'Panel1'
      TabOrder = 5
      object btnSetAllField: TSpeedButton
        Left = 1
        Top = 1
        Width = 36
        Height = 20
        HelpType = htKeyword
        Align = alLeft
        Caption = #1607#1605#1607
        NumGlyphs = 2
        OnClick = btnSetAllFieldClick
      end
      object cmbValue1: TComboBox
        Left = 37
        Top = 1
        Width = 147
        Height = 21
        Align = alClient
        Color = 12308991
        TabOrder = 0
        Text = 'cmbValue1'
        OnClick = cmbValue1Click
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 594
    Height = 488
    Align = alClient
    TabOrder = 1
    object ScrollBar1: TScrollBar
      Left = 1
      Top = 468
      Width = 592
      Height = 19
      Align = alBottom
      PageSize = 0
      TabOrder = 0
    end
    object ScrollBar2: TScrollBar
      Left = 574
      Top = 1
      Width = 19
      Height = 467
      Align = alRight
      Kind = sbVertical
      PageSize = 0
      TabOrder = 1
    end
    object DBAdvGDIPChartView1: TDBAdvGDIPChartView
      Left = 1
      Top = 1
      Width = 573
      Height = 467
      ShowDesignHelper = True
      Align = alClient
      Color = clWhite
      Panes = <
        item
          Bands.Distance = 2.000000000000000000
          Background.Font.Charset = DEFAULT_CHARSET
          Background.Font.Color = clWindowText
          Background.Font.Height = -11
          Background.Font.Name = 'Tahoma'
          Background.Font.Style = []
          BorderColor = clBlack
          CrossHair.CrossHairYValues.Position = [chYAxis]
          CrossHair.Distance = 0
          Height = 100.000000000000000000
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clWindowText
          Legend.Font.Height = -11
          Legend.Font.Name = 'Tahoma'
          Legend.Font.Style = []
          Margin.LeftMargin = 10
          Margin.RightMargin = 10
          Margin.TopMargin = 10
          Name = 'ChartPane 10'
          Options = []
          Range.StartDate = 43305.607620243070000000
          Range.RangeTo = 5
          Series = <
            item
              AutoRange = arDisabled
              Pie.ValueFont.Charset = DEFAULT_CHARSET
              Pie.ValueFont.Color = clWindowText
              Pie.ValueFont.Height = -11
              Pie.ValueFont.Name = 'Tahoma'
              Pie.ValueFont.Style = []
              Pie.LegendFont.Charset = DEFAULT_CHARSET
              Pie.LegendFont.Color = clWindowText
              Pie.LegendFont.Height = -11
              Pie.LegendFont.Name = 'Tahoma'
              Pie.LegendFont.Style = []
              Annotations = <>
              ChartType = ctBar
              Color = 22015
              CrossHairYValue.BorderWidth = 0
              CrossHairYValue.Font.Charset = DEFAULT_CHARSET
              CrossHairYValue.Font.Color = clWindowText
              CrossHairYValue.Font.Height = -11
              CrossHairYValue.Font.Name = 'Tahoma'
              CrossHairYValue.Font.Style = []
              CrossHairYValue.GradientSteps = 0
              LineColor = 22015
              LegendText = 'Serie 0'
              Marker.MarkerType = mCircle
              Marker.MarkerColor = 22015
              Maximum = 12.000000000000000000
              Name = 'Serie 0'
              ValueFont.Charset = DEFAULT_CHARSET
              ValueFont.Color = clWindowText
              ValueFont.Height = -11
              ValueFont.Name = 'Tahoma'
              ValueFont.Style = []
              ValueFormat = '%g'
              ValueWidth = 80
              XAxis.DateTimeFont.Charset = DEFAULT_CHARSET
              XAxis.DateTimeFont.Color = clWindowText
              XAxis.DateTimeFont.Height = -11
              XAxis.DateTimeFont.Name = 'Tahoma'
              XAxis.DateTimeFont.Style = []
              XAxis.MajorFont.Charset = DEFAULT_CHARSET
              XAxis.MajorFont.Color = clWindowText
              XAxis.MajorFont.Height = -11
              XAxis.MajorFont.Name = 'Tahoma'
              XAxis.MajorFont.Style = []
              XAxis.MajorUnit = 1.000000000000000000
              XAxis.MajorUnitSpacing = 0
              XAxis.MinorFont.Charset = DEFAULT_CHARSET
              XAxis.MinorFont.Color = clWindowText
              XAxis.MinorFont.Height = -11
              XAxis.MinorFont.Name = 'Tahoma'
              XAxis.MinorFont.Style = []
              XAxis.MinorUnit = 1.000000000000000000
              XAxis.MinorUnitSpacing = 0
              XAxis.TextTop.Font.Charset = DEFAULT_CHARSET
              XAxis.TextTop.Font.Color = clWindowText
              XAxis.TextTop.Font.Height = -11
              XAxis.TextTop.Font.Name = 'Tahoma'
              XAxis.TextTop.Font.Style = []
              XAxis.TextBottom.Font.Charset = DEFAULT_CHARSET
              XAxis.TextBottom.Font.Color = clWindowText
              XAxis.TextBottom.Font.Height = -11
              XAxis.TextBottom.Font.Name = 'Tahoma'
              XAxis.TextBottom.Font.Style = []
              XAxis.TickMarkSize = 6
              YAxis.MajorFont.Charset = DEFAULT_CHARSET
              YAxis.MajorFont.Color = clWindowText
              YAxis.MajorFont.Height = -11
              YAxis.MajorFont.Name = 'Tahoma'
              YAxis.MajorFont.Style = []
              YAxis.MajorUnit = 1.000000000000000000
              YAxis.MajorUnitSpacing = 0
              YAxis.MinorFont.Charset = DEFAULT_CHARSET
              YAxis.MinorFont.Color = clWindowText
              YAxis.MinorFont.Height = -11
              YAxis.MinorFont.Name = 'Tahoma'
              YAxis.MinorFont.Style = []
              YAxis.MinorUnitSpacing = 10
              YAxis.TextLeft.Angle = -90
              YAxis.TextLeft.Font.Charset = DEFAULT_CHARSET
              YAxis.TextLeft.Font.Color = clWindowText
              YAxis.TextLeft.Font.Height = -11
              YAxis.TextLeft.Font.Name = 'Tahoma'
              YAxis.TextLeft.Font.Style = []
              YAxis.TextRight.Angle = 90
              YAxis.TextRight.Font.Charset = DEFAULT_CHARSET
              YAxis.TextRight.Font.Color = clWindowText
              YAxis.TextRight.Font.Height = -11
              YAxis.TextRight.Font.Name = 'Tahoma'
              YAxis.TextRight.Font.Style = []
              YAxis.TickMarkColor = clRed
              BarValueTextFont.Charset = DEFAULT_CHARSET
              BarValueTextFont.Color = clWindowText
              BarValueTextFont.Height = -11
              BarValueTextFont.Name = 'Tahoma'
              BarValueTextFont.Style = []
              XAxisGroups = <>
              SerieType = stNormal
            end
            item
              AutoRange = arDisabled
              Pie.ValueFont.Charset = DEFAULT_CHARSET
              Pie.ValueFont.Color = clWindowText
              Pie.ValueFont.Height = -11
              Pie.ValueFont.Name = 'Tahoma'
              Pie.ValueFont.Style = []
              Pie.LegendFont.Charset = DEFAULT_CHARSET
              Pie.LegendFont.Color = clWindowText
              Pie.LegendFont.Height = -11
              Pie.LegendFont.Name = 'Tahoma'
              Pie.LegendFont.Style = []
              Annotations = <>
              Color = 13599488
              CrossHairYValue.BorderWidth = 0
              CrossHairYValue.Font.Charset = DEFAULT_CHARSET
              CrossHairYValue.Font.Color = clWindowText
              CrossHairYValue.Font.Height = -11
              CrossHairYValue.Font.Name = 'Tahoma'
              CrossHairYValue.Font.Style = []
              CrossHairYValue.GradientSteps = 0
              LineColor = 13599488
              LegendText = 'Serie 1'
              Marker.MarkerType = mCircle
              Marker.MarkerColor = 13599488
              Maximum = 12.000000000000000000
              Name = 'Serie 1'
              ValueFont.Charset = DEFAULT_CHARSET
              ValueFont.Color = clWindowText
              ValueFont.Height = -11
              ValueFont.Name = 'Tahoma'
              ValueFont.Style = []
              ValueFormat = '%g'
              ValueWidth = 80
              XAxis.DateTimeFont.Charset = DEFAULT_CHARSET
              XAxis.DateTimeFont.Color = clWindowText
              XAxis.DateTimeFont.Height = -11
              XAxis.DateTimeFont.Name = 'Tahoma'
              XAxis.DateTimeFont.Style = []
              XAxis.MajorFont.Charset = DEFAULT_CHARSET
              XAxis.MajorFont.Color = clWindowText
              XAxis.MajorFont.Height = -11
              XAxis.MajorFont.Name = 'Tahoma'
              XAxis.MajorFont.Style = []
              XAxis.MajorUnit = 1.000000000000000000
              XAxis.MajorUnitSpacing = 0
              XAxis.MinorFont.Charset = DEFAULT_CHARSET
              XAxis.MinorFont.Color = clWindowText
              XAxis.MinorFont.Height = -11
              XAxis.MinorFont.Name = 'Tahoma'
              XAxis.MinorFont.Style = []
              XAxis.MinorUnit = 1.000000000000000000
              XAxis.MinorUnitSpacing = 0
              XAxis.TextTop.Font.Charset = DEFAULT_CHARSET
              XAxis.TextTop.Font.Color = clWindowText
              XAxis.TextTop.Font.Height = -11
              XAxis.TextTop.Font.Name = 'Tahoma'
              XAxis.TextTop.Font.Style = []
              XAxis.TextBottom.Font.Charset = DEFAULT_CHARSET
              XAxis.TextBottom.Font.Color = clWindowText
              XAxis.TextBottom.Font.Height = -11
              XAxis.TextBottom.Font.Name = 'Tahoma'
              XAxis.TextBottom.Font.Style = []
              XAxis.Visible = False
              YAxis.MajorFont.Charset = DEFAULT_CHARSET
              YAxis.MajorFont.Color = clWindowText
              YAxis.MajorFont.Height = -11
              YAxis.MajorFont.Name = 'Tahoma'
              YAxis.MajorFont.Style = []
              YAxis.MajorUnitSpacing = 0
              YAxis.MinorFont.Charset = DEFAULT_CHARSET
              YAxis.MinorFont.Color = clWindowText
              YAxis.MinorFont.Height = -11
              YAxis.MinorFont.Name = 'Tahoma'
              YAxis.MinorFont.Style = []
              YAxis.MinorUnitSpacing = 0
              YAxis.Position = yNone
              YAxis.TextLeft.Angle = -90
              YAxis.TextLeft.Font.Charset = DEFAULT_CHARSET
              YAxis.TextLeft.Font.Color = clWindowText
              YAxis.TextLeft.Font.Height = -11
              YAxis.TextLeft.Font.Name = 'Tahoma'
              YAxis.TextLeft.Font.Style = []
              YAxis.TextRight.Angle = 90
              YAxis.TextRight.Font.Charset = DEFAULT_CHARSET
              YAxis.TextRight.Font.Color = clWindowText
              YAxis.TextRight.Font.Height = -11
              YAxis.TextRight.Font.Name = 'Tahoma'
              YAxis.TextRight.Font.Style = []
              BarValueTextFont.Charset = DEFAULT_CHARSET
              BarValueTextFont.Color = clWindowText
              BarValueTextFont.Height = -11
              BarValueTextFont.Name = 'Tahoma'
              BarValueTextFont.Style = []
              XAxisGroups = <>
              SerieType = stNormal
            end
            item
              AutoRange = arDisabled
              Pie.ValueFont.Charset = DEFAULT_CHARSET
              Pie.ValueFont.Color = clWindowText
              Pie.ValueFont.Height = -11
              Pie.ValueFont.Name = 'Tahoma'
              Pie.ValueFont.Style = []
              Pie.LegendFont.Charset = DEFAULT_CHARSET
              Pie.LegendFont.Color = clWindowText
              Pie.LegendFont.Height = -11
              Pie.LegendFont.Name = 'Tahoma'
              Pie.LegendFont.Style = []
              Annotations = <>
              Color = 6732418
              CrossHairYValue.BorderWidth = 0
              CrossHairYValue.Font.Charset = DEFAULT_CHARSET
              CrossHairYValue.Font.Color = clWindowText
              CrossHairYValue.Font.Height = -11
              CrossHairYValue.Font.Name = 'Tahoma'
              CrossHairYValue.Font.Style = []
              CrossHairYValue.GradientSteps = 0
              LineColor = 6732418
              LegendText = 'Serie 2'
              Marker.MarkerType = mCircle
              Marker.MarkerColor = 6732418
              Maximum = 12.000000000000000000
              Name = 'Serie 2'
              ValueFont.Charset = DEFAULT_CHARSET
              ValueFont.Color = clWindowText
              ValueFont.Height = -11
              ValueFont.Name = 'Tahoma'
              ValueFont.Style = []
              ValueFormat = '%g'
              ValueWidth = 80
              XAxis.DateTimeFont.Charset = DEFAULT_CHARSET
              XAxis.DateTimeFont.Color = clWindowText
              XAxis.DateTimeFont.Height = -11
              XAxis.DateTimeFont.Name = 'Tahoma'
              XAxis.DateTimeFont.Style = []
              XAxis.MajorFont.Charset = DEFAULT_CHARSET
              XAxis.MajorFont.Color = clWindowText
              XAxis.MajorFont.Height = -11
              XAxis.MajorFont.Name = 'Tahoma'
              XAxis.MajorFont.Style = []
              XAxis.MajorUnit = 1.000000000000000000
              XAxis.MajorUnitSpacing = 0
              XAxis.MinorFont.Charset = DEFAULT_CHARSET
              XAxis.MinorFont.Color = clWindowText
              XAxis.MinorFont.Height = -11
              XAxis.MinorFont.Name = 'Tahoma'
              XAxis.MinorFont.Style = []
              XAxis.MinorUnit = 1.000000000000000000
              XAxis.MinorUnitSpacing = 0
              XAxis.TextTop.Font.Charset = DEFAULT_CHARSET
              XAxis.TextTop.Font.Color = clWindowText
              XAxis.TextTop.Font.Height = -11
              XAxis.TextTop.Font.Name = 'Tahoma'
              XAxis.TextTop.Font.Style = []
              XAxis.TextBottom.Font.Charset = DEFAULT_CHARSET
              XAxis.TextBottom.Font.Color = clWindowText
              XAxis.TextBottom.Font.Height = -11
              XAxis.TextBottom.Font.Name = 'Tahoma'
              XAxis.TextBottom.Font.Style = []
              XAxis.TickMarkColor = clRed
              XAxis.TickMarkSize = 6
              XAxis.TickMarkWidth = 2
              YAxis.MajorFont.Charset = DEFAULT_CHARSET
              YAxis.MajorFont.Color = clWindowText
              YAxis.MajorFont.Height = -11
              YAxis.MajorFont.Name = 'Tahoma'
              YAxis.MajorFont.Style = []
              YAxis.MajorUnit = 2.000000000000000000
              YAxis.MajorUnitSpacing = 0
              YAxis.MinorFont.Charset = DEFAULT_CHARSET
              YAxis.MinorFont.Color = clWindowText
              YAxis.MinorFont.Height = -11
              YAxis.MinorFont.Name = 'Tahoma'
              YAxis.MinorFont.Style = []
              YAxis.MinorUnitSpacing = 10
              YAxis.TextLeft.Angle = -90
              YAxis.TextLeft.Font.Charset = DEFAULT_CHARSET
              YAxis.TextLeft.Font.Color = clWindowText
              YAxis.TextLeft.Font.Height = -11
              YAxis.TextLeft.Font.Name = 'Tahoma'
              YAxis.TextLeft.Font.Style = []
              YAxis.TextRight.Angle = 90
              YAxis.TextRight.Font.Charset = DEFAULT_CHARSET
              YAxis.TextRight.Font.Color = clWindowText
              YAxis.TextRight.Font.Height = -11
              YAxis.TextRight.Font.Name = 'Tahoma'
              YAxis.TextRight.Font.Style = []
              YAxis.TickMarkColor = clBlue
              BarValueTextFont.Charset = DEFAULT_CHARSET
              BarValueTextFont.Color = clWindowText
              BarValueTextFont.Height = -11
              BarValueTextFont.Name = 'Tahoma'
              BarValueTextFont.Style = []
              XAxisGroups = <>
              SerieType = stNormal
            end
            item
              Pie.ValueFont.Charset = DEFAULT_CHARSET
              Pie.ValueFont.Color = clWindowText
              Pie.ValueFont.Height = -11
              Pie.ValueFont.Name = 'Tahoma'
              Pie.ValueFont.Style = []
              Pie.LegendFont.Charset = DEFAULT_CHARSET
              Pie.LegendFont.Color = clWindowText
              Pie.LegendFont.Height = -11
              Pie.LegendFont.Name = 'Tahoma'
              Pie.LegendFont.Style = []
              Annotations = <>
              CrossHairYValue.BorderWidth = 0
              CrossHairYValue.Font.Charset = DEFAULT_CHARSET
              CrossHairYValue.Font.Color = clWindowText
              CrossHairYValue.Font.Height = -11
              CrossHairYValue.Font.Name = 'Tahoma'
              CrossHairYValue.Font.Style = []
              CrossHairYValue.GradientSteps = 0
              LegendText = 'Serie 3'
              Name = 'Serie 3'
              ValueFont.Charset = DEFAULT_CHARSET
              ValueFont.Color = clWindowText
              ValueFont.Height = -11
              ValueFont.Name = 'Tahoma'
              ValueFont.Style = []
              ValueFormat = '%g'
              XAxis.DateTimeFont.Charset = DEFAULT_CHARSET
              XAxis.DateTimeFont.Color = clWindowText
              XAxis.DateTimeFont.Height = -11
              XAxis.DateTimeFont.Name = 'Tahoma'
              XAxis.DateTimeFont.Style = []
              XAxis.MajorFont.Charset = DEFAULT_CHARSET
              XAxis.MajorFont.Color = clWindowText
              XAxis.MajorFont.Height = -11
              XAxis.MajorFont.Name = 'Tahoma'
              XAxis.MajorFont.Style = []
              XAxis.MajorUnit = 1.000000000000000000
              XAxis.MajorUnitSpacing = 0
              XAxis.MinorFont.Charset = DEFAULT_CHARSET
              XAxis.MinorFont.Color = clWindowText
              XAxis.MinorFont.Height = -11
              XAxis.MinorFont.Name = 'Tahoma'
              XAxis.MinorFont.Style = []
              XAxis.MinorUnit = 1.000000000000000000
              XAxis.MinorUnitSpacing = 0
              XAxis.TextTop.Font.Charset = DEFAULT_CHARSET
              XAxis.TextTop.Font.Color = clWindowText
              XAxis.TextTop.Font.Height = -11
              XAxis.TextTop.Font.Name = 'Tahoma'
              XAxis.TextTop.Font.Style = []
              XAxis.TextBottom.Font.Charset = DEFAULT_CHARSET
              XAxis.TextBottom.Font.Color = clWindowText
              XAxis.TextBottom.Font.Height = -11
              XAxis.TextBottom.Font.Name = 'Tahoma'
              XAxis.TextBottom.Font.Style = []
              YAxis.MajorFont.Charset = DEFAULT_CHARSET
              YAxis.MajorFont.Color = clWindowText
              YAxis.MajorFont.Height = -11
              YAxis.MajorFont.Name = 'Tahoma'
              YAxis.MajorFont.Style = []
              YAxis.MajorUnitSpacing = 0
              YAxis.MinorFont.Charset = DEFAULT_CHARSET
              YAxis.MinorFont.Color = clWindowText
              YAxis.MinorFont.Height = -11
              YAxis.MinorFont.Name = 'Tahoma'
              YAxis.MinorFont.Style = []
              YAxis.MinorUnitSpacing = 0
              YAxis.TextLeft.Font.Charset = DEFAULT_CHARSET
              YAxis.TextLeft.Font.Color = clWindowText
              YAxis.TextLeft.Font.Height = -11
              YAxis.TextLeft.Font.Name = 'Tahoma'
              YAxis.TextLeft.Font.Style = []
              YAxis.TextRight.Font.Charset = DEFAULT_CHARSET
              YAxis.TextRight.Font.Color = clWindowText
              YAxis.TextRight.Font.Height = -11
              YAxis.TextRight.Font.Name = 'Tahoma'
              YAxis.TextRight.Font.Style = []
              BarValueTextFont.Charset = DEFAULT_CHARSET
              BarValueTextFont.Color = clWindowText
              BarValueTextFont.Height = -11
              BarValueTextFont.Name = 'Tahoma'
              BarValueTextFont.Style = []
              XAxisGroups = <>
              SerieType = stNormal
            end>
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Title.Position = tTop
          XAxis.Font.Charset = DEFAULT_CHARSET
          XAxis.Font.Color = clWindowText
          XAxis.Font.Height = -11
          XAxis.Font.Name = 'Tahoma'
          XAxis.Font.Style = []
          XAxis.Text = 'X-axis'
          XGrid.MajorLineStyle = psClear
          XGrid.MajorFont.Charset = DEFAULT_CHARSET
          XGrid.MajorFont.Color = clWindowText
          XGrid.MajorFont.Height = -11
          XGrid.MajorFont.Name = 'Tahoma'
          XGrid.MajorFont.Style = []
          XGrid.MinorFont.Charset = DEFAULT_CHARSET
          XGrid.MinorFont.Color = clWindowText
          XGrid.MinorFont.Height = -11
          XGrid.MinorFont.Name = 'Tahoma'
          XGrid.MinorFont.Style = []
          YAxis.Font.Charset = DEFAULT_CHARSET
          YAxis.Font.Color = clWindowText
          YAxis.Font.Height = -11
          YAxis.Font.Name = 'Tahoma'
          YAxis.Font.Style = []
          YAxis.Size = 40
          YAxis.Text = 'Y-axis'
          YGrid.MinorDistance = 1.000000000000000000
          YGrid.MajorDistance = 2.000000000000000000
        end>
      TabOrder = 2
      Tracker.Font.Charset = DEFAULT_CHARSET
      Tracker.Font.Color = clWindowText
      Tracker.Font.Height = -11
      Tracker.Font.Name = 'Tahoma'
      Tracker.Font.Style = []
      Tracker.Title.Font.Charset = DEFAULT_CHARSET
      Tracker.Title.Font.Color = clWindowText
      Tracker.Title.Font.Height = -11
      Tracker.Title.Font.Name = 'Tahoma'
      Tracker.Title.Font.Style = []
      Tracker.Title.Text = 'TRACKER'
      Version = '3.2.1.4 SEPTEMBER, 2014'
      XAxisZoomSensitivity = 1.000000000000000000
      YAxisZoomSensitivity = 1.000000000000000000
      DoubleBuffered = True
    end
  end
  object DataSource1: TDataSource
    Left = 448
    Top = 16
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 240
    Top = 136
  end
  object AdvChartPanesEditorDialog1: TAdvChartPanesEditorDialog
    Left = 376
    Top = 232
  end
end
