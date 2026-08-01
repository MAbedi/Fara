inherited SellPricingF: TSellPricingF
  Left = 365
  Top = 265
  Caption = #1602#1610#1605#1578' '#1711#1584#1575#1585#1610' '#1601#1585#1608#1588
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    object BitBtn5: TBitBtn
      Left = 82
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object BitBtn6: TBitBtn
      Left = 160
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      Left = 237
      Top = 8
      Width = 75
      Height = 25
      Action = actSendExel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object btnSlelectInverse: TBitBtn
      Left = 625
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 4
    end
    object btnSelectAll: TBitBtn
      Left = 703
      Top = 8
      Width = 75
      Height = 25
      Action = actPost
      Anchors = [akRight, akBottom]
      Caption = #1579#1576#1578
      TabOrder = 5
    end
    object btnSelectAll1: TBitBtn
      Left = 547
      Top = 8
      Width = 75
      Height = 25
      Action = actSelectAll
      Anchors = [akRight, akBottom]
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Top = 10
      Height = 16
      ExplicitLeft = 674
      ExplicitTop = 10
    end
    object Image2: TImage
      Left = 360
      Top = 16
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        0000100000000100180000000000000300000000000000000000000000000000
        0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1
        E2EFF1E2EFF1E2EFF199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1646F71646F71646F71646F71646F71646F71646F71
        646F71646F71646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFF99A8AC99A8AC99A8
        AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACF0FBFFF0
        FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FB
        FFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0
        FBFF}
      Visible = False
    end
    object Image3: TImage
      Left = 384
      Top = 16
      Width = 14
      Height = 15
      AutoSize = True
      Picture.Data = {
        07544269746D6170CA020000424DCA0200000000000036000000280000000E00
        00000F0000000100180000000000940200000000000000000000000000000000
        0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFF0000FFFFFFE2EFF1
        E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF199A8
        ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF008000FFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFF
        FFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFF008000008000008000FFFFFFFFFFFF64
        6F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFFFF00800000800000
        8000008000008000FFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFFFF
        FFFF008000008000008000FFFFFF008000008000FFFFFF646F7199A8ACF0FBFF
        0000FFFFFFE2EFF1FFFFFF008000008000008000FFFFFFFFFFFFFFFFFF008000
        FFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFF008000008000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1
        FFFFFF008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8
        ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1646F71646F71646F
        71646F71646F71646F71646F71646F71646F71646F7199A8ACF0FBFF0000FFFF
        FF99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
        A8AC99A8ACF0FBFF0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0
        FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF0000}
      Visible = False
    end
  end
  inherited Panel3: TPanel
    Height = 423
    object DBGrid2: TDBGrid
      Left = 2
      Top = 68
      Width = 786
      Height = 334
      Align = alClient
      Color = clCream
      DataSource = SrcTypesItems
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ReciptNumber'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptDate'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptState'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UseOtherID'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UseOtherName'
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalOutputPrice'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalStandardRate'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UpTotalStandardPrice'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TaxValue'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UpTaxValue'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TaxCo'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UpTaxCo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StandardRate'
          Width = 26
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UpStandardRate'
          Width = 63
          Visible = True
        end>
    end
    object pnl1: TPanel
      Left = 2
      Top = 2
      Width = 786
      Height = 66
      Align = alTop
      TabOrder = 1
      DesignSize = (
        778
        66)
      object lbl6: TLabel
        Left = 121
        Top = 9
        Width = 107
        Height = 13
        Alignment = taRightJustify
        Caption = #1590#1585#1610#1576' '#1576#1607#1575#1610' '#1578#1605#1575#1605' '#1588#1583#1607' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl7: TLabel
        Left = 121
        Top = 37
        Width = 92
        Height = 13
        Alignment = taRightJustify
        Caption = #1590#1585#1610#1576' '#1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl1: TLabel
        Left = 691
        Top = 9
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' '
        ExplicitLeft = 699
      end
      object mskEndOfPriceCo: TMaskEdit
        Left = 38
        Top = 5
        Width = 88
        Height = 21
        AutoSize = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = '15'
        OnExit = mskEndOfPriceCoChange
      end
      object mskAddValueCo: TMaskEdit
        Left = 38
        Top = 33
        Width = 87
        Height = 21
        AutoSize = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Text = '3'
        OnExit = mskEndOfPriceCoChange
      end
      object cmbReciptType: TComboBox
        Left = 438
        Top = 5
        Width = 249
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        Color = 13434879
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnChange = mskEndOfPriceCoChange
      end
    end
    object SumGrid1: TSumGrid
      Top = 401
      Width = 778
      Active = False
      Enable_Controls = True
      MasterGrid = DBGrid2
      ShowZero = True
      FieldsName = 
        'TotalOutputPrice;TotalStandardRate;UpTotalStandardPrice;TaxValue' +
        ';UpTaxValue;TaxCo;UpTaxCo;StandardRate;UpStandardRate;'
    end
  end
  inherited ActionList: TActionList
    Left = 190
    Top = 1
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSelectAll: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      Visible = False
    end
    object actSlelectInverse: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1593#1603#1608#1587
      Visible = False
    end
    object actPost: TAction
      Caption = #1579#1576#1578
      OnExecute = actPostExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 273
    Top = 1
  end
  object qryTypesItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'EndOfPriceCo1'
        DataType = ftFloat
        Size = -1
        Value = 0.000000000000000000
      end
      item
        Name = 'EndOfPriceCo2'
        DataType = ftFloat
        Size = -1
        Value = 0.000000000000000000
      end
      item
        Name = 'AddValueCo1'
        DataType = ftFloat
        Size = -1
        Value = 0.000000000000000000
      end
      item
        Name = 'AddValueCo2'
        DataType = ftFloat
        Size = -1
        Value = 0.000000000000000000
      end
      item
        Name = 'EndOfPriceCo3'
        DataType = ftFloat
        Size = -1
        Value = 0.000000000000000000
      end>
    SQL.Strings = (
      
        'SELECT     Recipts.ReciptID, Recipts.ServerID, Recipts.YearID, R' +
        'ecipts.ReciptNumber, Recipts.ReciptDate, Recipts.ReciptState, Re' +
        'cipts.UseOtherID, '
      
        '                      UseOthers.UseOtherName, ReciptItems.TotalO' +
        'utputPrice, ReciptItems.TotalStandardRate, '
      ''
      
        '                      ROUND(ReciptItems.TotalOutputPrice * :EndO' +
        'fPriceCo1  / 100, 0) AS UpTotalStandardPrice'
      ', ReciptItems.TaxValue, '
      
        '                      ROUND(ReciptItems.TotalOutputPrice * :EndO' +
        'fPriceCo2 / 100 * :AddValueCo1 / 100, 0) AS UpTaxValue, '
      'ReciptItems.TaxCo,'
      ' :AddValueCo2  AS UpTaxCo,'
      ''
      ' ReciptItems.StandardRate, '
      
        '                      CASE WHEN ReciptItems.OutputEntity <> 0 TH' +
        'EN ROUND(ReciptItems.TotalOutputPrice * :EndOfPriceCo3  / 100 / ' +
        'ReciptItems.OutputEntity, 0) '
      '                      ELSE 0 END AS UpStandardRate'
      ''
      ''
      'FROM         Recipts INNER JOIN'
      
        '                      ReciptItems ON Recipts.ReciptID = ReciptIt' +
        'ems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND '
      
        '                      Recipts.YearID = ReciptItems.YearID INNER ' +
        'JOIN'
      
        '                      UseOthers ON Recipts.UseOtherID = UseOther' +
        's.UseOtherID')
    Left = 205
    Top = 288
    object qryTypesItemsReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'ReciptNumber'
    end
    object qryTypesItemsReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryTypesItemsReciptState: TWordField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'ReciptState'
      OnGetText = qryTypesItemsReciptStateGetText
    end
    object qryTypesItemsUseOtherID: TWideStringField
      Tag = 3
      DisplayLabel = #1603#1583#1580#1575#1606#1576#1575#1586
      FieldName = 'UseOtherID'
      Size = 15
    end
    object qryTypesItemsUseOtherName: TWideStringField
      Tag = 3
      DisplayLabel = #1580#1575#1606#1576#1575#1586
      FieldName = 'UseOtherName'
      Size = 50
    end
    object qryTypesItemsTotalOutputPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'TotalOutputPrice'
      currency = True
      Precision = 19
    end
    object qryTypesItemsTotalStandardRate: TBCDField
      Tag = 3
      DisplayLabel = #1576#1607#1575#1610' '#1603#1604' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
      FieldName = 'TotalStandardRate'
      currency = True
      Precision = 19
    end
    object qryTypesItemsUpTotalStandardPrice: TFloatField
      Tag = 3
      DisplayLabel = #1605#1581#1575#1587#1576#1607' '#1576#1607#1575#1610' '#1603#1604' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
      FieldName = 'UpTotalStandardPrice'
      ReadOnly = True
      currency = True
    end
    object qryTypesItemsTaxValue: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1605#1575#1604#1610#1575#1578
      FieldName = 'TaxValue'
      currency = True
      Precision = 19
    end
    object qryTypesItemsUpTaxValue: TFloatField
      Tag = 3
      DisplayLabel = #1605#1581#1575#1587#1576#1607' '#1605#1576#1604#1594' '#1605#1575#1604#1610#1575#1578
      FieldName = 'UpTaxValue'
      ReadOnly = True
      currency = True
    end
    object qryTypesItemsTaxCo: TFloatField
      Tag = 3
      DisplayLabel = #1583#1585#1589#1583#1605#1575#1604#1610#1575#1578
      FieldName = 'TaxCo'
    end
    object qryTypesItemsUpTaxCo: TFloatField
      Tag = 3
      DisplayLabel = #1605#1581#1575#1587#1576#1607' '#1583#1585#1589#1583#1605#1575#1604#1610#1575#1578
      FieldName = 'UpTaxCo'
      ReadOnly = True
    end
    object qryTypesItemsStandardRate: TBCDField
      Tag = 3
      DisplayLabel = #1606#1585#1582
      FieldName = 'StandardRate'
      currency = True
      Precision = 19
    end
    object qryTypesItemsUpStandardRate: TFloatField
      Tag = 3
      DisplayLabel = #1605#1581#1575#1587#1576#1607' '#1606#1585#1582
      FieldName = 'UpStandardRate'
      ReadOnly = True
      currency = True
    end
    object qryTypesItemsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
  end
  object SrcTypesItems: TDataSource
    DataSet = qryTypesItems
    Left = 189
    Top = 229
  end
end
