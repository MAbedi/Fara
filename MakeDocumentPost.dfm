object MakeDocumentPostF: TMakeDocumentPostF
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  BorderStyle = bsSizeToolWin
  Caption = #1579#1576#1578' '#1705#1604#1740' '#1575#1587#1606#1575#1583
  ClientHeight = 365
  ClientWidth = 377
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 65
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 333
    object ImgTemplate: TImage
      Left = 1
      Top = 1
      Width = 33
      Height = 63
      Align = alLeft
      AutoSize = True
      ExplicitLeft = 672
      ExplicitTop = 9
      ExplicitHeight = 38
    end
    object lblCaption: TLabel
      AlignWithMargins = True
      Left = 272
      Top = 4
      Width = 79
      Height = 19
      Margins.Right = 25
      Align = alRight
      BiDiMode = bdRightToLeft
      Caption = #1579#1576#1578' '#1705#1604#1740' '#1575#1587#1606#1575#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -17
      Font.Name = 'Jadid'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 325
    Width = 377
    Height = 40
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 317
    ExplicitWidth = 333
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 7
      Width = 75
      Height = 26
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alLeft
      Cancel = True
      Caption = #1576#1575#1586#1711#1588#1578
      ModalResult = 2
      TabOrder = 0
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 298
      Top = 7
      Width = 75
      Height = 26
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1579#1576#1578' '#1575#1587#1606#1575#1583
      Default = True
      TabOrder = 1
      OnClick = BitBtn3Click
      ExplicitLeft = 254
    end
    object btnXml: TBitBtn
      AlignWithMargins = True
      Left = 217
      Top = 7
      Width = 75
      Height = 26
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1579#1576#1578' Xml'
      Default = True
      TabOrder = 2
      OnClick = btnXmlClick
      ExplicitLeft = 173
    end
    object btnXmlDeti: TBitBtn
      AlignWithMargins = True
      Left = 136
      Top = 7
      Width = 75
      Height = 26
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1579#1576#1578' Xml2'
      Default = True
      TabOrder = 3
      OnClick = btnXmlDetiClick
      ExplicitLeft = 92
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 306
    Width = 377
    Height = 19
    Panels = <
      item
        Text = #1578#1608#1602#1601'=Esc'
        Width = 70
      end
      item
        Width = 50
      end>
    ExplicitTop = 298
    ExplicitWidth = 333
  end
  object rgKindPost: TRadioGroup
    Left = 0
    Top = 65
    Width = 377
    Height = 43
    Align = alTop
    Caption = '  '#1579#1576#1578' '#1575#1587#1606#1575#1583' '#1576#1585#1581#1587#1576'  '
    Columns = 5
    Items.Strings = (
      '0'
      '1'
      '2'
      '3'
      '4')
    TabOrder = 4
    OnClick = rgKindPostClick
    ExplicitWidth = 333
  end
  object DBGrid1: TCedarDbgrid
    Left = 0
    Top = 108
    Width = 377
    Height = 198
    Align = alClient
    Color = clCream
    DataSource = srcSelect
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
    TabOrder = 2
    ActiveSearchPanel = False
    SelectFooterIndex = 0
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object qrySelect: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterOpen = qrySelectAfterOpen
    Parameters = <
      item
        Name = 'YearMounth1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 7
        Value = Null
      end
      item
        Name = 'YearMounth2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 7
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT    DISTINCT    Interdicts.PersonelNo, PersonelInfo.name_L' +
        '1 + '#39' '#39' + PersonelInfo.lastName_L1 AS Name'
      
        ', FormsInfo_Office.InfoID AS OfficeCode, FormsInfo_Office.InfoNa' +
        'me_L1 AS OfficeName, '
      
        '                         FormsInfo_Project.InfoID AS ProjectCode' +
        ', FormsInfo_Project.InfoName_L1 AS ProjectName'
      'FROM            Pay.Interdicts INNER JOIN'
      
        '                         Pay.PersonelInfo ON Interdicts.Personel' +
        'No = PersonelInfo.PersonelNo INNER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfo_Office ON In' +
        'terdicts.OfficeCode = FormsInfo_Office.FormInfoID INNER JOIN'
      
        '                         FormsInfo AS FormsInfo_Project ON Inter' +
        'dicts.ProjectID = FormsInfo_Project.FormInfoID'
      
        'WHERE        (LEFT(Interdicts.InterdicStartDate, 7) <= :YearMoun' +
        'th1) '
      'AND (LEFT(Interdicts.InterdicEndDate, 7) >= :YearMounth2)')
    Left = 120
    Top = 200
  end
  object srcSelect: TDataSource
    DataSet = qrySelect
    Left = 176
    Top = 176
  end
  object SaveDialog1: TSaveDialog
    FileName = 'Doc.xml'
    Filter = 'Text Files (*.Xml)|*.Xml|All Files (*.*)|*.*'
    Title = #1605#1587#1610#1585' '#1584#1582#1610#1585#1607' '#1601#1575#1610#1604' Xml'
    Left = 233
    Top = 239
  end
end
