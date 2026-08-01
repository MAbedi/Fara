object ExcelComparisonRecallF: TExcelComparisonRecallF
  Left = 497
  Top = 166
  BiDiMode = bdRightToLeft
  Caption = #1583#1585#1610#1575#1601#1578' '#1608' '#1605#1602#1575#1610#1587#1607' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1585' '#1601#1585#1575#1582#1608#1575#1606#1740
  ClientHeight = 440
  ClientWidth = 1178
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 1175
    Top = 97
    Height = 291
    Align = alRight
    ExplicitLeft = 544
    ExplicitTop = 83
    ExplicitHeight = 116
  end
  object lblEcxel1: TLabel
    Left = 0
    Top = 84
    Width = 1178
    Height = 13
    Align = alTop
    Alignment = taCenter
    BiDiMode = bdLeftToRight
    Caption = '...'
    Color = 12615680
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    Transparent = False
    ExplicitWidth = 9
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1178
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      1178
      55)
    object Label1: TLabel
      Left = 971
      Top = 19
      Width = 156
      Height = 16
      Anchors = []
      Caption = #1583#1585#1610#1575#1601#1578' '#1608' '#1605#1602#1575#1610#1587#1607' '#1575#1591#1604#1575#1593#1575#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 991
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 405
    Width = 1178
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 406
    ExplicitWidth = 1182
    object lblCount: TLabel
      Left = 1073
      Top = 0
      Width = 8
      Height = 16
      Align = alClient
      Caption = '0'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object btnClose: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 75
      Height = 29
      Align = alLeft
      Caption = #1576#1575#1586#1711#1588#1578
      ModalResult = 2
      TabOrder = 0
    end
    object BitBtn10: TBitBtn
      AlignWithMargins = True
      Left = 1084
      Top = 3
      Width = 95
      Height = 29
      Align = alRight
      Caption = #1575#1606#1578#1602#1575#1604
      TabOrder = 1
      OnClick = BitBtn10Click
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 388
    Width = 1178
    Height = 17
    Align = alBottom
    Max = 1
    Step = 1
    TabOrder = 2
    ExplicitTop = 389
    ExplicitWidth = 1182
  end
  object pnlSheet: TPanel
    Left = 0
    Top = 55
    Width = 1178
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object Label4: TLabel
      Tag = 1
      AlignWithMargins = True
      Left = 1008
      Top = 5
      Width = 43
      Height = 21
      Margins.Top = 5
      Align = alRight
      Caption = #1606#1575#1605' sheet'
      ExplicitLeft = 1012
      ExplicitHeight = 13
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 867
      Height = 23
      Align = alClient
      BiDiMode = bdRightToLeft
      Caption = 
        #1587#1578#1608#1606#1607#1575#1610' '#1601#1575#1610#1604' Excel '#1581#1578#1605#1575' '#1576#1575#1740#1583' '#1583#1575#1585#1575#1740' '#1587#1578#1608#1606'   ControlCode  '#1608' Amount ' +
        ' '#1576#1575#1588#1583'.'
      Color = clBtnFace
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      Transparent = False
      ExplicitLeft = 529
      ExplicitWidth = 345
      ExplicitHeight = 13
    end
    object cmbSheetName1: TComboBox
      Tag = 1
      AlignWithMargins = True
      Left = 876
      Top = 3
      Width = 126
      Height = 21
      Align = alRight
      Style = csDropDownList
      TabOrder = 0
      OnChange = cmbSheetName1Change
    end
    object btnOpen: TBitBtn
      Tag = 1
      Left = 1054
      Top = 0
      Width = 124
      Height = 29
      Align = alRight
      Caption = #1582#1608#1575#1606#1583#1606' '#1601#1575#1740#1604' Excel'
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnOpenClick
      ExplicitLeft = 1058
    end
  end
  object dbgrd1: TCedarDbgrid
    Left = 145
    Top = 97
    Width = 1030
    Height = 291
    Align = alClient
    BiDiMode = bdRightToLeft
    DataSource = srcExcel1
    DynProps = <>
    Flat = True
    FooterParams.FillStyle = cfstGradientEh
    FooterParams.Font.Charset = DEFAULT_CHARSET
    FooterParams.Font.Color = clWindowText
    FooterParams.Font.Height = -12
    FooterParams.Font.Name = 'Tahoma'
    FooterParams.Font.Style = [fsBold]
    FooterParams.ParentFont = False
    FooterParams.VertLines = False
    GridLineParams.VertEmptySpaceStyle = dessNonEh
    HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
    HorzScrollBar.ExtraPanel.Visible = True
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    OddRowColor = clCream
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove]
    ParentBiDiMode = False
    ReadOnly = True
    RowHeight = 18
    SearchPanel.Enabled = True
    SearchPanel.Location = splHorzScrollBarExtraPanelEh
    SortLocal = True
    TabOrder = 4
    ActiveSearchPanel = True
    SelectFooterIndex = 0
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object pnlTruckNumber: TPanel
    Left = 0
    Top = 97
    Width = 145
    Height = 291
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 5
    Visible = False
    ExplicitHeight = 292
    object Label2: TLabel
      Left = 0
      Top = 0
      Width = 145
      Height = 13
      Align = alTop
      Alignment = taCenter
      BiDiMode = bdLeftToRight
      Caption = #1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575' '#1662#1740#1583#1575' '#1606#1588#1583#1607
      Color = clOlive
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      Transparent = False
      ExplicitWidth = 123
    end
    object mmo1: TMemo
      Left = 0
      Top = 13
      Width = 145
      Height = 278
      Align = alClient
      BiDiMode = bdLeftToRight
      Lines.Strings = (
        'Memo1')
      ParentBiDiMode = False
      ScrollBars = ssBoth
      TabOrder = 0
    end
  end
  object ActionList1: TActionList
    Left = 216
    Top = 217
    object actOpenExcel: TAction
      Caption = #1576#1575#1586' '#1705#1585#1583#1606' '#1601#1575#1610#1604' Excel '
      OnExecute = actOpenExcelExecute
    end
    object actCompareExcelwithInfo: TAction
      Caption = #1605#1602#1575#1610#1587#1607' Excel'#8207' '#1576#1575' '#1575#1591#1604#1575#1593#1575#1578
    end
    object actDownItem4Add: TAction
      Caption = 'actDownItem4Add'
    end
    object actUpItem4Add: TAction
      Caption = 'actUpItem4Add'
    end
    object actCompareInfowithExcel: TAction
      Caption = #1605#1602#1575#1610#1587#1607' '#1575#1591#1604#1575#1593#1575#1578' '#1576#1575' Excel'
    end
  end
  object qryExcel1: TADOQuery
    ConnectionString = 'Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False'
    CursorType = ctOpenForwardOnly
    LockType = ltBatchOptimistic
    AfterOpen = qryExcel1AfterOpen
    Parameters = <>
    SQL.Strings = (
      'select * from [a$]')
    Left = 400
    Top = 136
  end
  object srcExcel1: TDataSource
    DataSet = qryExcel1
    Left = 272
    Top = 144
  end
  object qryExcelErorr: TADOQuery
    ConnectionString = 'Provider=Microsoft.Jet.OLEDB.4.0;Persist Security Info=False'
    CursorType = ctOpenForwardOnly
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from [a$]')
    Left = 536
    Top = 216
  end
end
