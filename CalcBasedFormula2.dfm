object CalcBasedFormula2F: TCalcBasedFormula2F
  Tag = 666
  Left = 400
  Top = 386
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = 'CalcBasedFormula2F'
  ClientHeight = 364
  ClientWidth = 668
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentBiDiMode = False
  Position = poDesigned
  OnDestroy = FormDestroy
  TextHeight = 13
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 347
    Width = 668
    Height = 17
    Align = alBottom
    Min = 1
    Position = 1
    Step = 1
    TabOrder = 0
    ExplicitTop = 359
    ExplicitWidth = 676
  end
  object Panel1: TPanel
    Left = 0
    Top = 316
    Width = 668
    Height = 31
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 328
    ExplicitWidth = 676
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 75
      Height = 23
      Align = alLeft
      Cancel = True
      Caption = #1576#1575#1586#1711#1588#1578
      ModalResult = 1
      TabOrder = 0
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 580
      Top = 4
      Width = 92
      Height = 23
      Action = actCalc
      Align = alRight
      Caption = #1605#1581#1575#1587#1576#1607
      TabOrder = 1
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 24
    Width = 436
    Height = 261
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 2
    TabOrder = 2
    ExplicitWidth = 444
    ExplicitHeight = 273
    object Panel2: TPanel
      Left = 4
      Top = 4
      Width = 436
      Height = 265
      Align = alClient
      Caption = 'Panel2'
      TabOrder = 0
      object dbmmoFormulaText: TDBMemo
        Left = 1
        Top = 1
        Width = 434
        Height = 147
        Align = alClient
        Alignment = taRightJustify
        BiDiMode = bdRightToLeft
        Color = clCream
        DataField = 'FormulaText'
        DataSource = srcRatingFormulas
        ParentBiDiMode = False
        TabOrder = 0
        OnDragDrop = dbmmoFormulaTextDragDrop
        OnDragOver = dbmmoFormulaTextDragOver
      end
      object Memo1: TMemo
        Left = 1
        Top = 175
        Width = 434
        Height = 89
        TabStop = False
        Align = alBottom
        Alignment = taRightJustify
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clInactiveCaption
        Ctl3D = False
        Lines.Strings = (
          '')
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object Panel4: TPanel
        Left = 1
        Top = 136
        Width = 426
        Height = 27
        Align = alBottom
        TabOrder = 2
        ExplicitTop = 148
        ExplicitWidth = 434
        object BitBtn1: TBitBtn
          Left = 351
          Top = 1
          Width = 82
          Height = 25
          Align = alRight
          Caption = #1575#1606#1578#1582#1575#1576' '#1601#1740#1604#1583#1607#1575
          TabOrder = 0
          OnClick = BitBtn1Click
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 668
    Height = 24
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 676
  end
  object Panel7: TPanel
    Left = 436
    Top = 24
    Width = 232
    Height = 261
    Align = alRight
    TabOrder = 4
    ExplicitLeft = 444
    ExplicitHeight = 273
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 230
      Height = 244
      Align = alClient
      Color = 14481402
      DataSource = srcRatingFormulas
      DrawingStyle = gdsGradient
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'RowID'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Field_Display'
          Width = 164
          Visible = True
        end>
    end
    object Panel6: TPanel
      Left = 1
      Top = 245
      Width = 230
      Height = 27
      Align = alBottom
      TabOrder = 1
      object pnlOK: TPanel
        Left = 143
        Top = 1
        Width = 86
        Height = 25
        Align = alRight
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        object BitBtn8: TBitBtn
          Left = 43
          Top = 0
          Width = 43
          Height = 25
          Action = DatasetPost1
          Align = alRight
          Caption = #1578#1575#1740#1740#1583
          TabOrder = 0
        end
        object BitBtn7: TBitBtn
          Left = 0
          Top = 0
          Width = 43
          Height = 25
          Action = DatasetCancel1
          Align = alRight
          Caption = #1575#1606#1589#1585#1575#1601
          TabOrder = 1
        end
      end
      object pnlNew: TPanel
        Left = 14
        Top = 1
        Width = 129
        Height = 25
        Align = alRight
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 1
        object BitBtn5: TBitBtn
          Left = 0
          Top = 0
          Width = 43
          Height = 25
          Action = DatasetDelete1
          Align = alRight
          Caption = #1581#1584#1601
          Font.Charset = ARABIC_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object BitBtn6: TBitBtn
          Left = 43
          Top = 0
          Width = 43
          Height = 25
          Action = DatasetEdit1
          Align = alRight
          Caption = #1608#1740#1585#1575#1740#1588
          TabOrder = 1
        end
        object BitBtn3: TBitBtn
          Left = 86
          Top = 0
          Width = 43
          Height = 25
          Action = DatasetInsert1
          Align = alRight
          Caption = #1580#1583#1740#1583
          TabOrder = 2
        end
      end
    end
  end
  object Panel9: TPanel
    Left = 0
    Top = 285
    Width = 668
    Height = 31
    Align = alBottom
    TabOrder = 5
    ExplicitTop = 297
    ExplicitWidth = 684
    object Label3: TLabel
      AlignWithMargins = True
      Left = 626
      Top = 4
      Width = 46
      Height = 23
      Align = alRight
      Alignment = taRightJustify
      Caption = #1605#1581#1575#1587#1576#1607' '#1576#1575
      Layout = tlCenter
      ExplicitHeight = 13
    end
    object cmbQryCalcBased: TDBComboBox
      AlignWithMargins = True
      Left = 475
      Top = 5
      Width = 145
      Height = 21
      Margins.Top = 4
      Align = alRight
      DataField = 'QryCalcBased'
      TabOrder = 0
    end
  end
  object ActionList1: TActionList
    Left = 216
    Top = 32
    object Action1: TAction
      Caption = #1580#1587#1578#1580#1608' F3'
      ShortCut = 114
    end
    object actChang: TAction
      Caption = #1578#1594#1610#1610#1585
      OnExecute = actChangExecute
    end
    object actChangAll: TAction
      Caption = #1578#1594#1610#1610#1585#1603#1604#8207#1587#1591#1585#1607#1575
      OnExecute = actChangAllExecute
    end
    object DatasetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = srcRatingFormulas
    end
    object DatasetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = srcRatingFormulas
    end
    object DatasetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = #1578#1575#1740#1740#1583
      Hint = 'Post'
      ImageIndex = 7
      DataSource = srcRatingFormulas
    end
    object DatasetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1740#1585#1575#1740#1588
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = srcRatingFormulas
    end
    object DatasetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1740#1583
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = srcRatingFormulas
    end
    object actCalc: TAction
      Caption = #1605#1581#1575#1587#1576#1607
      OnExecute = actCalcExecute
    end
  end
  object srcRatingFormulas: TDataSource
    DataSet = qryRatingFormulas
    OnStateChange = srcRatingFormulasStateChange
    Left = 40
    Top = 64
  end
  object qryRun: TADOQuery
    Connection = DmF.adcBSell
    Parameters = <>
    Left = 308
    Top = 84
  end
  object qryRankings: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'RankDate'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select * from rankings'
      'where RankDate = :RankDate')
    Left = 284
    Top = 220
    object qryRankingsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryRankingsRatingID: TIntegerField
      FieldName = 'RatingID'
    end
    object qryRankingsRankType: TWordField
      FieldName = 'RankType'
    end
    object qryRankingsRankDate: TStringField
      FieldName = 'RankDate'
      FixedChar = True
      Size = 10
    end
    object qryRankingsStuffCode: TLargeintField
      FieldName = 'StuffCode'
    end
    object qryRankingsPersonID: TIntegerField
      FieldName = 'PersonID'
    end
    object qryRankingsRankAmount: TFloatField
      FieldName = 'RankAmount'
    end
    object qryRankingsProductCodeDiscount: TLargeintField
      FieldName = 'ProductCodeDiscount'
    end
    object qryRankingsDiscountEntity: TFloatField
      FieldName = 'DiscountEntity'
    end
    object qryRankingsGrade: TWideStringField
      FieldName = 'Grade'
      FixedChar = True
      Size = 1
    end
    object qryRankingsNote: TWideStringField
      FieldName = 'Note'
      Size = 200
    end
  end
  object qryRatingFormulas: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryRatingFormulasAfterInsert
    Parameters = <
      item
        Name = 'FormulaType'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'SELECT      *'
      'FROM            RatingFormulas'
      'WHERE        (FormulaType = :FormulaType)')
    Left = 124
    Top = 84
    object qryRatingFormulasID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryRatingFormulasRowID: TWordField
      FieldName = 'RowID'
    end
    object qryRatingFormulasFormulaType: TSmallintField
      FieldName = 'FormulaType'
    end
    object qryRatingFormulasField_ID: TSmallintField
      FieldName = 'Field_ID'
    end
    object qryRatingFormulasField_Name: TStringField
      FieldName = 'Field_Name'
      Size = 50
    end
    object qryRatingFormulasField_Display: TWideStringField
      FieldName = 'Field_Display'
      Size = 50
    end
    object qryRatingFormulasFormulaText: TWideStringField
      FieldName = 'FormulaText'
      Size = 4000
    end
  end
end
