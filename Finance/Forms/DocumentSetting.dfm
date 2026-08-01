object DocumentSettingF: TDocumentSettingF
  Left = 348
  Top = 117
  BiDiMode = bdRightToLeft
  Caption = #1578#1606#1592#1610#1605#1575#1578' '#1589#1583#1608#1585' '#1587#1606#1583
  ClientHeight = 436
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentBiDiMode = False
  Position = poMainFormCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 395
    Width = 754
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelWidth = 3
    TabOrder = 0
    ExplicitTop = 396
    ExplicitWidth = 758
    object BitBtn2: TBitBtn
      Left = 13
      Top = 8
      Width = 75
      Height = 25
      Caption = #1575#1606#1589#1585#1575#1601
      ModalResult = 2
      TabOrder = 0
    end
    object BitBtn4: TBitBtn
      Left = 672
      Top = 6
      Width = 75
      Height = 25
      Caption = #1578#1575#1610#1610#1583
      ModalResult = 1
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 754
    Height = 53
    Align = alTop
    BevelWidth = 3
    TabOrder = 1
    ExplicitWidth = 758
    DesignSize = (
      754
      53)
    object lblCaption: TLabel
      Left = 605
      Top = 11
      Width = 97
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1606#1592#1610#1605#1575#1578' '#1589#1583#1608#1585' '#1587#1606#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 562
    end
    object Label1: TLabel
      Left = 188
      Top = 8
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1605#1593#1740#1606' '#1576#1575#1606#1603
    end
    object Label4: TLabel
      Left = 188
      Top = 33
      Width = 136
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1605#1593#1740#1606' '#1575#1587#1606#1575#1583' '#1583#1585' '#1580#1585#1610#1575#1606' '#1608#1589#1608#1604
    end
    object edtBankTopic: TEdit
      Left = 8
      Top = 4
      Width = 173
      Height = 21
      TabOrder = 0
      Text = '11105'
    end
    object edtRunTopic: TEdit
      Left = 8
      Top = 29
      Width = 173
      Height = 21
      TabOrder = 1
      Text = '12301'
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 53
    Width = 754
    Height = 325
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 2
    TabOrder = 2
    ExplicitWidth = 758
    ExplicitHeight = 326
    object DBGrid1: TDBGrid
      Tag = 111
      Left = 4
      Top = 4
      Width = 750
      Height = 243
      Align = alClient
      Color = 14481402
      DataSource = srcDocSet
      DrawingStyle = gdsGradient
      GradientEndColor = clSkyBlue
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BedKind'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TopicCodeBed'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DetailCodeBed'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BesKind'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TopicCodeBes'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DetailCodeBes'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CommentFieldName'
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 4
      Top = 247
      Width = 750
      Height = 75
      Align = alBottom
      TabOrder = 1
      object Label5: TLabel
        Left = 258
        Top = 6
        Width = 485
        Height = 28
        Caption = 
          #1578#1608#1580#1607' : '#1587#1591#1585' '#1575#1608#1604' '#1601#1575#1610#1604' Excel '#1580#1607#1578' '#1593#1606#1575#1608#1610#1606' '#1587#1578#1608#1606#1607#1575' '#1575#1587#1578#1601#1575#1583#1607' '#1605#1610#1588#1608#1583' '#1608' '#1583#1585' '#1601 +
          #1585#1575#1582#1608#1575#1606#1610' '#1575#1586' '#1601#1575#1610#1604' '#1548' '#1575#1591#1604#1575#1593#1575#1578' '#1570#1606' '#1575#1606#1578#1602#1575#1604' '#1583#1575#1583#1607' '#1606#1605#1610' '#1588#1608#1583' .'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = 4210816
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object lblCount: TLabel
        Left = 371
        Top = 47
        Width = 8
        Height = 16
        Caption = '0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object pnlSheet: TPanel
        Left = 5
        Top = 3
        Width = 196
        Height = 29
        TabOrder = 0
        object Label3: TLabel
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
      object chk2007: TCheckBox
        Left = 5
        Top = 32
        Width = 73
        Height = 17
        Caption = 'Excel 2007'
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 584
        Top = 44
        Width = 78
        Height = 25
        Caption = #1575#1606#1578#1602#1575#1604
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
        TabOrder = 2
        OnClick = BitBtn1Click
      end
      object BitBtn3: TBitBtn
        Left = 664
        Top = 44
        Width = 79
        Height = 25
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
        TabOrder = 3
        OnClick = BitBtn3Click
      end
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 378
    Width = 754
    Height = 17
    Align = alBottom
    Max = 1
    Step = 1
    TabOrder = 3
    ExplicitTop = 379
    ExplicitWidth = 758
  end
  object cliDocSet: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'id'
    Params = <>
    Left = 120
    Top = 144
    object cliDocSetID: TSmallintField
      DisplayLabel = #1593#1605#1604#1610#1575#1578
      DisplayWidth = 12
      FieldName = 'ID'
      OnGetText = AllGetText
      OnSetText = AllSetText
    end
    object cliDocSetBedKind: TSmallintField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1576#1583#1607#1603#1575#1585
      DisplayWidth = 12
      FieldName = 'BedKind'
      OnGetText = AllGetText
      OnSetText = AllSetText
    end
    object cliDocSetTopicCodeBed: TLargeintField
      DisplayLabel = #1576#1583#1607#1603#1575#1585' '#1603#1583' '#1581#1587#1575#1576
      FieldName = 'TopicCodeBed'
    end
    object cliDocSetDetailCodeBed: TLargeintField
      DisplayLabel = #1576#1583#1607#1603#1575#1585' '#1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'DetailCodeBed'
    end
    object cliDocSetBesKind: TSmallintField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1576#1587#1578#1575#1606#1603#1575#1585
      DisplayWidth = 12
      FieldName = 'BesKind'
      OnGetText = AllGetText
      OnSetText = AllSetText
    end
    object cliDocSetTopicCodeBes: TLargeintField
      DisplayLabel = #1576#1587#1578#1575#1606#1603#1575#1585' '#1603#1583' '#1581#1587#1575#1576
      FieldName = 'TopicCodeBes'
    end
    object cliDocSetDetailCodeBes: TLargeintField
      DisplayLabel = #1576#1587#1578#1575#1606#1603#1575#1585' '#1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'DetailCodeBes'
    end
    object cliDocSetCommentFieldName: TStringField
      DisplayLabel = #1588#1585#1581' '#1587#1606#1583
      DisplayWidth = 13
      FieldName = 'CommentFieldName'
      Size = 50
    end
  end
  object srcDocSet: TDataSource
    DataSet = cliDocSet
    Left = 200
    Top = 168
  end
  object qryExcel: TADOQuery
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select * from [a$]')
    Left = 392
    Top = 273
  end
  object qryDetailRange: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'DetailCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CompanyCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     Acc.Details.NationalID, Acc.DetailRange.TopicCode, Ac' +
        'c.DetailRange.DetailCode'
      'FROM         Acc.DetailRange INNER JOIN'
      
        '                      Acc.Details ON Acc.DetailRange.CompanyCode' +
        ' = Acc.Details.CompanyCode AND Acc.DetailRange.DetailCode = Acc.' +
        'Details.DetailCode'
      'ORDER BY Acc.Details.NationalID')
    Left = 556
    Top = 120
  end
end
