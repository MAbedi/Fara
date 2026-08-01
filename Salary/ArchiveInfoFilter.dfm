object ArchiveInfoFilterF: TArchiveInfoFilterF
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  BorderStyle = bsSizeToolWin
  Caption = #1605#1581#1575#1587#1576#1607' '#1581#1602#1608#1602' '#1576#1575' '#1605#1581#1583#1608#1583#1607' '#1582#1575#1589
  ClientHeight = 252
  ClientWidth = 421
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentBiDiMode = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 421
    Height = 65
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 429
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
      Left = 226
      Top = 4
      Width = 177
      Height = 19
      Margins.Right = 25
      Align = alRight
      BiDiMode = bdRightToLeft
      Caption = #1605#1581#1575#1587#1576#1607' '#1581#1602#1608#1602' '#1576#1575' '#1605#1581#1583#1608#1583#1607' '#1582#1575#1589
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
    Top = 212
    Width = 421
    Height = 40
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 224
    ExplicitWidth = 429
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 350
      Top = 7
      Width = 75
      Height = 26
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      Default = True
      TabOrder = 0
      OnClick = BitBtn1Click
    end
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
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 269
      Top = 7
      Width = 75
      Height = 26
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1605#1581#1575#1587#1576#1607
      Default = True
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 184
      Top = 7
      Width = 79
      Height = 26
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1605#1581#1575#1587#1576#1607' '#1705#1583#1740#1606#1711
      Default = True
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 103
      Top = 7
      Width = 75
      Height = 26
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1605#1581#1575#1587#1576#1607' '#1605#1593#1608#1602
      Default = True
      TabOrder = 4
      OnClick = BitBtn5Click
      ExplicitLeft = 68
      ExplicitTop = -10
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 421
    Height = 128
    Align = alClient
    Color = clCream
    DataSource = srcSelect
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PersonelNo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OfficeCode'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OfficeName'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ProjectCode'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ProjectName'
        Width = 30
        Visible = True
      end>
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 193
    Width = 421
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    ExplicitTop = 205
    ExplicitWidth = 429
  end
  object qrySelect: TADOQuery
    Connection = DmF.adcsalary
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
      
        '                         Pay.PersonelInfo ON Pay.Interdicts.Pers' +
        'onelNo = PersonelInfo.PersonelNo INNER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfo_Office ON In' +
        'terdicts.OfficeCode = FormsInfo_Office.FormInfoID INNER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfo_Project ON I' +
        'nterdicts.ProjectID = FormsInfo_Project.FormInfoID LEFT OUTER JO' +
        'IN'
      
        '   Pay.FormsInfo AS FormsInfoEmployTypeID ON Pay.Interdicts.Empl' +
        'oyTypeID = FormsInfoEmployTypeID.FormInfoID'
      
        'WHERE        (LEFT(Interdicts.InterdicStartDate, 7) <= :YearMoun' +
        'th1) '
      'AND (LEFT(Interdicts.InterdicEndDate, 7) >= :YearMounth2)')
    Left = 312
    Top = 128
    object qrySelectPersonelNo: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
    end
    object qrySelectName: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578
      FieldName = 'Name'
      ReadOnly = True
      Size = 56
    end
    object qrySelectOfficeCode: TIntegerField
      DisplayLabel = #1705#1583' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1740
      FieldName = 'OfficeCode'
    end
    object qrySelectOfficeName: TStringField
      DisplayLabel = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1740
      FieldName = 'OfficeName'
      Size = 255
    end
    object qrySelectProjectCode: TIntegerField
      DisplayLabel = #1705#1583' '#1662#1585#1608#1688#1607
      FieldName = 'ProjectCode'
    end
    object qrySelectProjectName: TStringField
      DisplayLabel = #1662#1585#1608#1688#1607
      FieldName = 'ProjectName'
      Size = 255
    end
  end
  object srcSelect: TDataSource
    DataSet = qrySelect
    Left = 136
    Top = 120
  end
end
