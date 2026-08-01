object TtmsExcelF: TTtmsExcelF
  Left = 313
  Top = 111
  BiDiMode = bdRightToLeft
  BorderStyle = bsToolWindow
  Caption = #1583#1585#1610#1575#1601#1578' '#1588#1605#1575#1585#1607' '#1605#1606#1581#1589#1585#1576#1601#1585#1583' '#1605#1575#1604#1740#1575#1578#1740' '#1575#1586' Excel'
  ClientHeight = 581
  ClientWidth = 849
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = True
  ParentBiDiMode = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 417
    Top = 75
    Height = 170
    ExplicitLeft = 393
    ExplicitTop = 73
    ExplicitHeight = 153
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 245
    Width = 849
    Height = 4
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 244
    ExplicitWidth = 486
  end
  object Label6: TLabel
    Left = 0
    Top = 249
    Width = 849
    Height = 13
    Align = alBottom
    Alignment = taCenter
    Caption = #1587#1578#1608#1606' '#1607#1575#1740' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607' '#1580#1607#1578' '#1605#1602#1575#1740#1587#1607
    Color = 12615680
    Font.Charset = ARABIC_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
    ExplicitWidth = 194
  end
  object Splitter3: TSplitter
    Left = 0
    Top = 337
    Width = 849
    Height = 4
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 400
    ExplicitWidth = 846
  end
  object Splitter4: TSplitter
    Left = 0
    Top = 476
    Width = 849
    Height = 4
    Cursor = crVSplit
    Align = alBottom
    ExplicitLeft = -1
    ExplicitTop = 486
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 849
    Height = 75
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 571
      Top = 8
      Width = 255
      Height = 16
      Caption = #1583#1585#1610#1575#1601#1578' '#1588#1605#1575#1585#1607' '#1605#1606#1581#1589#1585#1576#1601#1585#1583' '#1605#1575#1604#1740#1575#1578#1740' '#1575#1586' Excel'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 1
      Top = 60
      Width = 847
      Height = 14
      Align = alBottom
      Caption = 
        #1578#1608#1580#1607' : '#1587#1591#1585' '#1575#1608#1604' '#1601#1575#1610#1604' Excel '#1580#1607#1578' '#1593#1606#1575#1608#1610#1606' '#1587#1578#1608#1606#1607#1575' '#1575#1587#1578#1601#1575#1583#1607' '#1605#1610#1588#1608#1583' '#1608' '#1583#1585' '#1605 +
        #1602#1575#1740#1587#1607' '#1576#1575' '#1601#1575#1610#1604' '#1548' '#1575#1591#1604#1575#1593#1575#1578' '#1570#1606' '#1605#1602#1575#1740#1587#1607' '#1606#1605#1610' '#1588#1608#1583' .'#8207
      Font.Charset = ARABIC_CHARSET
      Font.Color = 4210816
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitLeft = 249
      ExplicitWidth = 599
    end
    object pnlSheet: TPanel
      Left = 5
      Top = 3
      Width = 196
      Height = 29
      BevelOuter = bvNone
      TabOrder = 0
      object Label4: TLabel
        Left = 136
        Top = 8
        Width = 43
        Height = 13
        Caption = #1606#1575#1605' sheet'
      end
      object cmbSheetName: TComboBox
        Left = 3
        Top = 4
        Width = 126
        Height = 21
        Style = csDropDownList
        TabOrder = 0
        OnChange = cmbSheetNameChange
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 546
    Width = 849
    Height = 35
    Align = alBottom
    TabOrder = 1
    object lblCount: TLabel
      AlignWithMargins = True
      Left = 610
      Top = 9
      Width = 8
      Height = 22
      Margins.Top = 8
      Align = alRight
      Caption = '0'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      ExplicitLeft = 668
      ExplicitHeight = 16
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 766
      Top = 4
      Width = 79
      Height = 27
      Action = actOpenExcel
      Align = alRight
      Caption = #1582#1608#1575#1606#1583#1606' XLS'
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000420B0000420B0000000100000001000000730800087B
        080008841000088C100008A51800108C2100109C210018AD290031C64A0042D6
        6B0052D67B005AE78C0018A5C60018ADD60021ADD60029ADD60031B5DE0052BD
        E7004AC6E7004AC6EF009CDEEF00ADDEEF006BDEF70073DEF700A5EFF700FF00
        FF0084EFFF008CEFFF0094EFFF008CF7FF0094F7FF00A5F7FF0094FFFF009CFF
        FF00ADFFFF00C6FFFF00D6FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00191919191919
        19191919191919191919190F100E191919191919191919191919190F141A120E
        0C0C0C19191919191919190F11212017171717120E0C19191919190F11221D1B
        1B1B171717130E191919190F0F151E1E1B1B1B1B171713191919190F170F211D
        1D1D1B1B1B17170C1919190F1E0F1518181F1B1B1B17000C1919190F21170F0C
        0C0C151D1A000B000C19190F211E171717160F15000A09080019190F211E1E1E
        1E17170F0C0508060C19190F23202124241B1C17170207021919190E14232314
        0D0C0C0C0C03041919191919100F0C0C19191919030402191919191919191919
        1900010303011919191919191919191919191919191919191919}
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 624
      Top = 4
      Width = 136
      Height = 27
      Action = actUpdate
      Align = alRight
      Caption = #1605#1602#1575#1740#1587#1607' '#1608' '#1579#1576#1578' '#1588#1605#1575#1585#1607
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000330B0000330B0000000100000001000000730800B55A
        0000CE630000D8754200008C0800D6840000EF9C2100F7A55A000063CE00FF00
        FF0010F7FF00FFF7E700FFFFFF00000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000090909090909
        0909090909090909090909090909090909090909090909090909090909090909
        0909090902010101010109090909090909090909020202020202090909090909
        0909090902030303030309090909090909090909020505050505080808080808
        090900090202020202020A0A0A0A0A08090900000909090909090A0A0A0A0A08
        000000040009090909090A0A0A0A0A0809090404090909090909080808080808
        0909040906060606060609090909090909090909070B0B0B0B0B090909090909
        09090909070C0C0C0C0C09090909090909090909070C0C0C0C0C090909090909
        0909090906060606060609090909090909090909090909090909}
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      Left = 8
      Top = 6
      Width = 75
      Height = 25
      Action = actClose
      Caption = #1576#1575#1586#1711#1588#1578
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 75
    Width = 417
    Height = 170
    Align = alLeft
    TabOrder = 2
    ExplicitHeight = 135
    object Label2: TLabel
      Left = 1
      Top = 1
      Width = 415
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = #1587#1578#1608#1606#1607#1575#1610' '#1601#1585#1605
      Color = 12615680
      Font.Charset = ARABIC_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      ExplicitWidth = 69
    end
    object lstQry: TListBox
      Left = 1
      Top = 14
      Width = 415
      Height = 155
      Align = alClient
      Color = 13431799
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 0
      ExplicitHeight = 120
    end
  end
  object Panel4: TPanel
    Left = 420
    Top = 75
    Width = 429
    Height = 170
    Align = alClient
    TabOrder = 3
    ExplicitHeight = 135
    object Label3: TLabel
      Left = 1
      Top = 1
      Width = 427
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = #1587#1578#1608#1606#1607#1575#1610' '#1601#1575#1610#1604' Excel'
      Color = 12615680
      Font.Charset = ARABIC_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      ExplicitWidth = 105
    end
    object lstExcel: TListBox
      Left = 1
      Top = 14
      Width = 427
      Height = 155
      Align = alClient
      Color = 15856624
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 0
      ExplicitHeight = 120
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 529
    Width = 849
    Height = 17
    Align = alBottom
    Max = 1
    Step = 1
    TabOrder = 4
  end
  object CedarDbgrid1: TCedarDbgrid
    Left = 0
    Top = 341
    Width = 849
    Height = 135
    Align = alBottom
    DataSource = SrcExcel
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
    SearchPanel.FilterOnTyping = True
    SortLocal = True
    TabOrder = 5
    ActiveSearchPanel = False
    SelectFooterIndex = 0
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 480
    Width = 849
    Height = 49
    Align = alBottom
    Color = clInactiveCaption
    Lines.Strings = (
      'Memo1')
    TabOrder = 6
  end
  object TPanel
    Left = 0
    Top = 262
    Width = 849
    Height = 75
    Align = alBottom
    TabOrder = 7
    ExplicitLeft = 304
    ExplicitTop = 260
    ExplicitWidth = 185
    object lstResult: TListBox
      Left = 385
      Top = 1
      Width = 463
      Height = 73
      Align = alClient
      BevelKind = bkTile
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clSkyBlue
      Ctl3D = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      Items.Strings = (
        
          #1605#1580#1605#1608#1593' '#1589#1608#1585#1578#8204#1581#1587#1575#1576'                                 =               ' +
          '                '#1580#1605#1593' '#1603#1604
        
          #1605#1575#1604#1740#1575#1578' '#1576#1585' '#1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607'                                =   '#1580#1605#1593' '#1605#1575#1604 +
          #1610#1575#1578' '#1576#1585#1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607
        
          #1578#1575#1585#1740#1582' '#1589#1583#1608#1585' '#1589#1608#1585#1578#8204#1581#1587#1575#1576'                            =               ' +
          '   '#1578#1575#1585#1610#1582' '#1601#1585#1605' +_15'
        
          #1588#1606#1575#1587#1607' '#1607#1608#1740#1578#1740' '#1601#1585#1608#1588#1606#1583#1607'/ '#1581#1602#8204#1575#1604#1593#1605#1604#8204#1705#1575#1585'      =                        ' +
          '        '#1705#1583#1605#1604#1740)
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 227
      ExplicitWidth = 849
      ExplicitHeight = 70
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 384
      Height = 73
      Align = alLeft
      ItemIndex = 0
      Items.Strings = (
        
          #1588#1606#1575#1587#1607' '#1607#1608#1740#1578#1740' '#1601#1585#1608#1588#1606#1583#1607'/ '#1581#1602#8204#1575#1604#1593#1605#1604#8204#1705#1575#1585'     =                         ' +
          '       '#1705#1583#1605#1604#1740
        
          #1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1740' '#1601#1585#1608#1588#1606#1583#1607'/ '#1581#1602#8204#1575#1604#1593#1605#1604#8204#1705#1575#1585'    =                   '#1588#1605#1575#1585#1607 +
          ' '#1575#1602#1578#1589#1575#1583#1610)
      TabOrder = 1
      OnClick = RadioGroup1Click
    end
  end
  object ActionList1: TActionList
    Left = 80
    Top = 145
    object actOpenExcel: TAction
      Caption = #1576#1575#1586' '#1705#1585#1583#1606' '#1601#1575#1610#1604' Excel '
      OnExecute = actOpenExcelExecute
    end
    object actUpdate: TAction
      Caption = #1605#1602#1575#1740#1587#1607' '#1608' '#1579#1576#1578' '#1588#1605#1575#1585#1607
      OnExecute = actUpdateExecute
    end
    object actClose: TAction
      Caption = #1576#1575#1586#1711#1588#1578
      OnExecute = actCloseExecute
    end
  end
  object qryExcel: TADOQuery
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryExcelAfterOpen
    Parameters = <>
    SQL.Strings = (
      'select * from [a$]')
    Left = 288
    Top = 161
  end
  object MainMenu1: TMainMenu
    Left = 288
    Top = 320
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 168
    Top = 312
  end
  object SrcExcel: TDataSource
    DataSet = qryExcel
    Left = 400
    Top = 344
  end
end
