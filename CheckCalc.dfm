object CheckCalcF: TCheckCalcF
  Tag = 666
  Left = 445
  Top = 401
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = #1585#1571#1587' '#1711#1740#1585#1740
  ClientHeight = 431
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 395
    Width = 463
    Height = 36
    Align = alBottom
    TabOrder = 0
    object btn1: TBitBtn
      Left = 7
      Top = 5
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1576#1575#1586#1711#1588#1578
      ModalResult = 2
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 376
      Top = 6
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1579#1576#1578
      ModalResult = 1
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 120
    Width = 463
    Height = 59
    Align = alTop
    TabOrder = 1
    object lbl1: TLabel
      Left = 119
      Top = 10
      Width = 53
      Height = 13
      Caption = ' '#1578#1575#1585#1740#1582' '#1601#1575#1705#1578#1608#1585
    end
    object Label1: TLabel
      Left = 407
      Top = 10
      Width = 21
      Height = 13
      Caption = #1605#1583#1578
    end
    object Label2: TLabel
      Left = 407
      Top = 37
      Width = 44
      Height = 13
      Caption = #1578#1593#1583#1575#1583' '#1670#1705
    end
    object mskReciptDate: TMaskEdit
      Left = 23
      Top = 6
      Width = 90
      Height = 21
      Color = 13431799
      EditMask = '9999/99/99;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /  '
    end
    object mskCount: TMaskEdit
      Left = 311
      Top = 33
      Width = 90
      Height = 21
      TabOrder = 1
      Text = '5'
    end
    object btnAction1: TBitBtn
      Left = 23
      Top = 31
      Width = 90
      Height = 25
      Action = Action1
      Caption = #1605#1581#1575#1587#1576#1607' F3'
      Default = True
      TabOrder = 2
    end
    object mskDefaultDate: TMaskEdit
      Left = 311
      Top = 6
      Width = 90
      Height = 21
      Color = 13431799
      EditMask = '9999/99/99;1;_'
      MaxLength = 10
      TabOrder = 3
      Text = '  /  /  '
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 463
    Height = 120
    Align = alTop
    DataSource = srcForms
    TabOrder = 2
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FormCaption'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ReciptNumber'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ReciptDate'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DefaultDate'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Amount'
        Width = 126
        Visible = True
      end>
  end
  object DBGrid2: TCedarDbgrid
    Left = 0
    Top = 179
    Width = 463
    Height = 216
    Align = alClient
    DataSource = srcCheck
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
    OddRowColor = clWhite
    RowHeight = 18
    SearchPanel.Enabled = True
    SortLocal = True
    TabOrder = 3
    ActiveSearchPanel = False
    SelectFooterIndex = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CheckNumber'
        Footers = <>
        Width = 128
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CheckDate'
        Footers = <>
        Width = 127
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ItemAmount'
        Footers = <>
        Width = 109
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ActionList1: TActionList
    Left = 104
    Top = 224
    object Action1: TAction
      Caption = #1605#1581#1575#1587#1576#1607' F3'
      ShortCut = 114
      OnExecute = Action1Execute
    end
  end
  object srcSearch: TDataSource
    Left = 72
    Top = 200
  end
  object qryForms: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ReciptID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM  Fn_CheckCalc (:YearID  ,:ServerID , :ReciptID)')
    Left = 56
    Top = 40
    object qryFormsFormCaption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'FormCaption'
      Size = 150
    end
    object qryFormsReciptNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryFormsReciptDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryFormsDefaultDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1580#1575#1606#1576#1740
      FieldName = 'DefaultDate'
      FixedChar = True
      Size = 10
    end
    object qryFormsAmount: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryFormsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryFormsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryFormsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryFormsFormID: TIntegerField
      FieldName = 'FormID'
    end
  end
  object srcForms: TDataSource
    DataSet = qryForms
    Left = 144
    Top = 56
  end
  object qryCheck: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'SELECT       *'
      'FROM            FormItems'
      'WHERE        (1 = 0)')
    Left = 208
    Top = 272
    object qryCheckCheckNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1670#1603
      FieldName = 'CheckNumber'
      ImportedConstraint = '0'
      EditMask = '999999999999999'
      Size = 15
    end
    object qryCheckCheckDate: TStringField
      Tag = 3
      DisplayLabel = #1587#1585#1585#1587#1610#1583' '#1670#1603
      FieldName = 'CheckDate'
      ImportedConstraint = '0'
      Required = True
      EditMask = '9999/99/99'
      Size = 10
    end
    object qryCheckItemAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'ItemAmount'
      ImportedConstraint = '0'
      currency = True
      Precision = 19
    end
  end
  object srcCheck: TDataSource
    DataSet = qryCheck
    Left = 296
    Top = 288
  end
end
