inherited ProductionForecasts2F: TProductionForecasts2F
  ActiveControl = cmbPerformance
  Caption = #1578#1581#1604#1610#1604' '#1605#1610#1586#1575#1606' '#1578#1608#1604#1610#1583' '#1576#1585' '#1581#1587#1576' '#1601#1585#1605#1608#1604' '#1587#1575#1582#1578' '#1608' '#1605#1608#1580#1608#1583#1610'2'
  ClientHeight = 517
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    object btnSort: TBitBtn
      Left = 95
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object btnSort1: TBitBtn
      Left = 172
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object btnSearch_: TBitBtn
      Left = 250
      Top = 8
      Width = 75
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607'Excel'
      TabOrder = 3
    end
    object btnPrint: TBitBtn
      Left = 709
      Top = 6
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662
      TabOrder = 4
    end
    object BitBtn2: TBitBtn
      Left = 629
      Top = 7
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      TabOrder = 5
      OnClick = BitBtn2Click
    end
  end
  inherited Panel2: TPanel
    ExplicitWidth = 786
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
  end
  inherited Panel3: TPanel
    Top = 143
    Height = 333
    ExplicitTop = 143
    ExplicitHeight = 334
    object grdPrimary: TDBGrid
      Left = 2
      Top = 246
      Width = 786
      Height = 86
      Hint = '2'
      Align = alClient
      Color = clCream
      DataSource = srcItem
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Panel6: TPanel
      Left = 2
      Top = 217
      Width = 786
      Height = 29
      Align = alTop
      TabOrder = 1
      DesignSize = (
        778
        29)
      object lblList: TLabel
        Left = 622
        Top = 9
        Width = 17
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1576#1575#1585
        ExplicitLeft = 630
      end
      object BitBtn1: TBitBtn
        Left = 14
        Top = 0
        Width = 154
        Height = 25
        Action = actCalc
        Caption = #1605#1581#1575#1587#1576#1607
        TabOrder = 0
      end
      object cmbStore: TComboBox
        Left = 310
        Top = 5
        Width = 310
        Height = 21
        Style = csDropDownList
        Anchors = [akTop, akRight]
        DropDownCount = 32
        TabOrder = 1
        OnChange = cmbStoreChange
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 778
      Height = 215
      Align = alTop
      TabOrder = 2
      ExplicitWidth = 786
      object pnlPost: TPanel
        Left = 1
        Top = 1
        Width = 181
        Height = 213
        Align = alLeft
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        Visible = False
        object Label4: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 100
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = #1579#1576#1578' '#1603#1587#1585#1610' '#1603#1575#1604#1575#1610' '#1575#1606#1576#1575#1585
          WordWrap = True
        end
        object lblEffectType2: TLabel
          Left = 164
          Top = 165
          Width = 16
          Height = 13
          Align = alBottom
          Caption = '....'
          Color = clGradientActiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object GroupBox3: TGroupBox
          AlignWithMargins = True
          Left = 4
          Top = 23
          Width = 173
          Height = 80
          Align = alTop
          Caption = ' '#1570#1605#1575#1583#1607' '#1580#1607#1578' '#1575#1601#1586#1575#1740#1606#1583#1607' '#1605#1608#1580#1608#1583#1740
          TabOrder = 0
          DesignSize = (
            173
            80)
          object Label3: TLabel
            Left = 117
            Top = 52
            Width = 50
            Height = 13
            Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
          end
          object cmbEffectType2: TComboBox
            Tag = 2
            Left = 4
            Top = 22
            Width = 164
            Height = 21
            AutoDropDown = True
            Style = csDropDownList
            Anchors = [akLeft, akTop, akRight]
            Color = 14024703
            TabOrder = 0
            OnChange = cmbEffectType2Change
          end
          object mskNumberfrom2: TMaskEdit
            Left = 5
            Top = 48
            Width = 110
            Height = 21
            TabOrder = 1
            Text = ''
          end
        end
        object Panel5: TPanel
          Left = 1
          Top = 178
          Width = 179
          Height = 34
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            179
            34)
          object BitBtn15: TBitBtn
            Tag = 1
            Left = 91
            Top = 5
            Width = 75
            Height = 25
            Anchors = [akLeft, akBottom]
            Caption = #1579#1576#1578' '#1711#1585#1608#1607
            TabOrder = 0
            OnClick = BitBtn15Click
          end
          object BitBtn3: TBitBtn
            Tag = 2
            Left = 12
            Top = 5
            Width = 75
            Height = 25
            Anchors = [akLeft, akBottom]
            Caption = #1579#1576#1578' '#1583#1585' '#1590#1585#1575#1610#1576' '#1578#1576#1583#1610#1604' '#1575#1606#1580#1575#1605' '#1605#1610' '#1588#1608#1583
            TabOrder = 1
            OnClick = BitBtn15Click
          end
        end
      end
      object Panel4: TPanel
        Left = 182
        Top = 1
        Width = 595
        Height = 213
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 603
        object DBGrid1: TDBGrid
          Tag = 111
          Left = 1
          Top = 1
          Width = 601
          Height = 177
          Hint = '2'
          Align = alClient
          Color = clCream
          DataSource = srcFitful
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnEditButtonClick = DBGrid1EditButtonClick
          OnKeyPress = DBGrid1KeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'TransFormID'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'StuffCode'
              Width = 39
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'c_StuffName'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_OldEntity'
              Width = 121
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'WithinTheRangeOfRatio'
              Width = 163
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CalcEntity'
              Width = 119
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FinalEntity'
              Width = 32
              Visible = True
            end>
        end
        object Panel7: TPanel
          Left = 1
          Top = 178
          Width = 601
          Height = 34
          Align = alBottom
          TabOrder = 1
          object lblSum: TLabel
            AlignWithMargins = True
            Left = 585
            Top = 4
            Width = 12
            Height = 13
            Align = alRight
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object BitBtn5: TBitBtn
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 75
            Height = 26
            Align = alLeft
            Caption = #1578#1585#1578#1610#1576
            TabOrder = 0
            OnClick = BitBtn5Click
          end
          object BitBtn6: TBitBtn
            AlignWithMargins = True
            Left = 85
            Top = 4
            Width = 75
            Height = 26
            Hint = ' '
            Align = alLeft
            Caption = #1580#1587#1578#1580#1608
            TabOrder = 1
            OnClick = BitBtn6Click
          end
          object BitBtn7: TBitBtn
            AlignWithMargins = True
            Left = 166
            Top = 4
            Width = 75
            Height = 26
            Align = alLeft
            Caption = #1575#1585#1587#1575#1604' '#1576#1607'Excel'
            TabOrder = 2
            OnClick = BitBtn7Click
          end
        end
      end
    end
  end
  object GroupBox1: TGroupBox [3]
    Left = 0
    Top = 53
    Width = 782
    Height = 90
    Align = alTop
    Caption = ' '#1662#1740#1588' '#1576#1740#1606#1740' '#1576#1585' '#1575#1587#1575#1587' '#1593#1605#1604#1705#1585#1583
    TabOrder = 3
    ExplicitWidth = 790
    DesignSize = (
      782
      90)
    object Label6: TLabel
      Left = 628
      Top = 43
      Width = 68
      Height = 13
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = #1575#1586' '#1578#1575#1585#1740#1582' '#1593#1605#1604#1705#1585#1583
      ParentBiDiMode = False
      ExplicitLeft = 632
    end
    object Label7: TLabel
      Left = 379
      Top = 43
      Width = 67
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575' '#1578#1575#1585#1740#1582' '#1593#1605#1604#1705#1585#1583
      ExplicitLeft = 383
    end
    object Label1: TLabel
      Left = 628
      Top = 17
      Width = 137
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1601#1585#1605' '#1607#1575#1740' '#1605#1608#1580#1608#1583' '#1583#1585' '#1576#1585#1606#1575#1605#1607' '#1578#1608#1604#1740#1583
      ExplicitLeft = 632
    end
    object Label2: TLabel
      Left = 628
      Top = 68
      Width = 86
      Height = 13
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = #1605#1583#1578' '#1578#1608#1604#1610#1583' '#1570#1578#1610'('#1585#1608#1586')'#8207
      ParentBiDiMode = False
      ExplicitLeft = 632
    end
    object lblDays: TLabel
      Left = 295
      Top = 43
      Width = 12
      Height = 13
      Anchors = [akTop, akRight]
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 299
    end
    object Label5: TLabel
      Left = 379
      Top = 68
      Width = 69
      Height = 13
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = #1605#1602#1583#1575#1585' '#1578#1608#1604#1610#1583' '#1570#1578#1610
      ParentBiDiMode = False
      ExplicitLeft = 383
    end
    object lblAmount: TLabel
      Left = 295
      Top = 68
      Width = 12
      Height = 13
      Anchors = [akTop, akRight]
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 299
    end
    object mskPerformanceFrom: TMaskEdit
      Left = 561
      Top = 39
      Width = 63
      Height = 21
      Anchors = [akTop, akRight]
      Color = 13431799
      EditMask = '9999/99/99'
      MaxLength = 10
      TabOrder = 0
      Text = '    /  /  '
      ExplicitLeft = 565
    end
    object mskPerformanceTo: TMaskEdit
      Left = 313
      Top = 39
      Width = 63
      Height = 21
      Anchors = [akTop, akRight]
      Color = 13431799
      EditMask = '9999/99/99'
      MaxLength = 10
      TabOrder = 1
      Text = '    /  /  '
      ExplicitLeft = 317
    end
    object cmbPerformance: TComboBox
      Tag = 2
      Left = 316
      Top = 14
      Width = 308
      Height = 21
      AutoDropDown = True
      Style = csDropDownList
      Anchors = [akTop, akRight]
      Color = 14024703
      TabOrder = 2
      OnChange = cmbPerformanceChange
    end
    object mskDaysFuture: TMaskEdit
      Left = 561
      Top = 64
      Width = 64
      Height = 21
      Anchors = [akTop, akRight]
      Color = clWhite
      EditMask = '999999999'
      MaxLength = 9
      TabOrder = 3
      Text = '30       '
      ExplicitLeft = 565
    end
    object btnPerformance: TBitBtn
      Left = 6
      Top = 62
      Width = 83
      Height = 25
      Action = actPerformance
      Caption = #1605#1581#1575#1587#1576#1607' '#1593#1605#1604#1603#1585#1583
      TabOrder = 4
    end
    object mskAmountFuture: TMaskEdit
      Left = 312
      Top = 64
      Width = 66
      Height = 21
      Anchors = [akTop, akRight]
      Color = clWhite
      EditMask = '999999999'
      MaxLength = 9
      TabOrder = 5
      Text = '0        '
      ExplicitLeft = 316
    end
    object CheckBox1: TCheckBox
      Left = 19
      Top = 16
      Width = 255
      Height = 17
      Caption = #1605#1581#1589#1608#1604#1575#1578' '#1578#1608#1604#1610#1583' '#1606#1588#1583#1607' ('#1605#1608#1580#1608#1583#1610' '#1589#1601#1585')'#1606#1605#1575#1610#1588' '#1606#1588#1608#1606#1583
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object BitBtn8: TBitBtn
      Left = 92
      Top = 62
      Width = 83
      Height = 25
      Caption = #1581#1584#1601' '#1603#1604#1610
      TabOrder = 7
      OnClick = BitBtn8Click
    end
    object btnPerformance2: TBitBtn
      Left = 177
      Top = 62
      Width = 83
      Height = 25
      Caption = #1605#1581#1575#1587#1576#1607' '
      TabOrder = 8
      OnClick = btnPerformance2Click
    end
  end
  inherited ActionList: TActionList
    Left = 80
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actCalc: TAction
      Caption = #1605#1581#1575#1587#1576#1607
      OnExecute = actCalcExecute
    end
    object actExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607'Excel'
      OnExecute = actExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actPerformance: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1593#1605#1604#1603#1585#1583
      OnExecute = actPerformanceExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 344
    Top = 1
  end
  object qryItem: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryItemAfterOpen
    Parameters = <
      item
        Name = 'TransFormID1'
        DataType = ftWideString
        Size = 2
        Value = '60'
      end
      item
        Name = 'TransFormID2'
        DataType = ftWideString
        Size = 2
        Value = '60'
      end
      item
        Name = 'TransFormID3'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'TransFormID4'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'TransFormID5'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'TransFormID6'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Edit1'
        DataType = ftWideString
        Size = 2
        Value = '1'
      end
      item
        Name = 'Edit2'
        DataType = ftWideString
        Size = 2
        Value = '1'
      end
      item
        Name = 'Edit3'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Edit4'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Edit5'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Edit6'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearID'
        DataType = ftWideString
        Size = 2
        Value = '92'
      end>
    SQL.Strings = (
      
        'SELECT        ProductionForecasts_1.StuffCode, ProductionForecas' +
        'ts_1.c_StuffName, ProductionForecasts_1.UnitName, derivedtbl_Moj' +
        'odi.SUMEntity, '
      
        '                         ProductionForecasts_1.Formol1, Producti' +
        'onForecasts_1.Entity1, ProductionForecasts_1.Formol2, Production' +
        'Forecasts_1.Entity2, ProductionForecasts_1.Formol3, '
      
        '                         ProductionForecasts_1.Entity3, Producti' +
        'onForecasts_1.Formol4, ProductionForecasts_1.Entity4, Production' +
        'Forecasts_1.Formol5, ProductionForecasts_1.Entity5, '
      
        '                         ProductionForecasts_1.Formol6, Producti' +
        'onForecasts_1.Entity6     , '
      
        'derivedtbl_Mojodi.SUMEntity-   ProductionForecasts_1.Entity1 -Pr' +
        'oductionForecasts_1.Entity2 '
      
        '- ProductionForecasts_1.Entity3-ProductionForecasts_1.Entity4-Pr' +
        'oductionForecasts_1.Entity5-ProductionForecasts_1.Entity6   AS F' +
        'inalEntity'
      
        'FROM            dbo.ProductionForecasts( :TransFormID1 ,:TransFo' +
        'rmID2  ,:TransFormID3  ,'
      ' :TransFormID4  ,:TransFormID5  ,:TransFormID6 ,'
      ' :Edit1 ,:Edit2  ,:Edit3  ,'
      ' :Edit4  ,:Edit5  ,:Edit6 ) '
      
        '                         AS ProductionForecasts_1 LEFT OUTER JOI' +
        'N'
      
        '                             (SELECT        ReciptItems.StuffCod' +
        'e, ROUND(SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity)' +
        ', 3) AS SUMEntity'
      
        '                                FROM            ReciptItems INNE' +
        'R JOIN'
      
        '                                                         Recipts' +
        ' ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.Serv' +
        'erID = Recipts.ServerID AND '
      
        '                                                         ReciptI' +
        'tems.YearID = Recipts.YearID INNER JOIN'
      
        '                                                         ReciptT' +
        'ypes ON Recipts.ReciptType = ReciptTypes.ReciptType INNER JOIN'
      
        '                                                         Stores ' +
        'ON Recipts.StoreID = Stores.n_StoreID'
      
        '                                WHERE        (ReciptTypes.Effect' +
        'Type IN (2, 4,6,7)) AND (Recipts.ReciptState < 3)'
      
        '                                        AND ( Recipts.YearID =  ' +
        ':YearID )     '
      
        '                                GROUP BY ReciptItems.StuffCode) ' +
        'AS derivedtbl_Mojodi ON ProductionForecasts_1.StuffCode = derive' +
        'dtbl_Mojodi.StuffCode CROSS JOIN'
      '                         Fitful')
    Left = 433
    Top = 279
  end
  object srcItem: TDataSource
    DataSet = qryItem
    Left = 297
    Top = 288
  end
  object qryItemLabel: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end
      item
        Name = 'TransFormID1'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'TransFormID2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'TransFormID3'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'TransFormID4'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'TransFormID5'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'TransFormID6'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Edit1'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Edit2'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Edit3'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Edit4'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Edit5'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Edit6'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT        Label,    ROUND(Formol1,2)  AS Formol1  , :YearID '
      
        'FROM            dbo.ProductionForecasts4Lbl( :TransFormID1 ,:Tra' +
        'nsFormID2  ,:TransFormID3  ,'
      ' :TransFormID4  ,:TransFormID5  ,:TransFormID6 ,'
      ' :Edit1 ,:Edit2  ,:Edit3  ,'
      ' :Edit4  ,:Edit5  ,:Edit6 ) '
      '                         AS ProductionForecasts4Lbl')
    Left = 433
    Top = 207
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcItem
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 563
    Top = 274
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'StuffCode'
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'c_StuffName'
      FieldName = 'c_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'UnitName'
      FieldName = 'UnitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'SUMEntity'
      FieldName = 'SUMEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'Formol1'
      FieldName = 'Formol1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'Entity1'
      FieldName = 'Entity1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'Formol2'
      FieldName = 'Formol2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'Entity2'
      FieldName = 'Entity2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'Formol3'
      FieldName = 'Formol3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'Entity3'
      FieldName = 'Entity3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'Formol4'
      FieldName = 'Formol4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'Entity4'
      FieldName = 'Entity4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'Formol5'
      FieldName = 'Formol5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'Entity5'
      FieldName = 'Entity5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'Formol6'
      FieldName = 'Formol6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'Entity6'
      FieldName = 'Entity6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'FinalEntity'
      FieldName = 'FinalEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ReciptsGridF.ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A5'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 148000
    PrinterSetup.PaperSize = 11
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\ReciptsGrid0.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    EmailSettings.ShowEmailDialog = True
    EmailSettings.ShowCancelDialog = True
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 707
    Top = 280
    Version = '22.02'
    mmColumnWidth = 135300
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object qryFitful: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        FitfulID AS TransFormID, FitfulID AS StuffCode,  F' +
        'itfulIDc AS WithinTheRangeOfRatio ,FitfulIDc AS   ThanToGenerate' +
        'Future ,'
      ' FitfulIDc AS FinalEntity , FitfulIDc AS CalcEntity'
      'FROM            Fitful')
    Left = 569
    Top = 199
    object qryFitfulTransFormID: TFMTBCDField
      Tag = 3
      DisplayLabel = #1603#1583' '#1601#1585#1605#1608#1604
      FieldName = 'TransFormID'
      Precision = 20
      Size = 4
    end
    object qryFitfulStuffCode: TFMTBCDField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
      OnChange = qryFitfulStuffCodeChange
      Precision = 20
      Size = 4
    end
    object qryFitfulc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1600#1600#1600#1600#1600#1600#1585#1581'   '#1603#1600#1600#1600#1600#1575#1604#1575
      FieldKind = fkLookup
      FieldName = 'c_StuffName'
      LookupDataSet = qryStuff_Unit_TecInf
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'StuffCode'
      ReadOnly = True
      Required = True
      Size = 100
      Lookup = True
    end
    object qryFitful_OldEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1593#1605#1604#1603#1585#1583'('#1578#1608#1604#1610#1583' '#1588#1583#1607')'
      FieldKind = fkLookup
      FieldName = '_OldEntity'
      LookupDataSet = qryPerformance
      LookupKeyFields = 'StuffCode'
      LookupResultField = 'Entity'
      KeyFields = 'StuffCode'
      Lookup = True
    end
    object qryFitfulWithinTheRangeOfRatio: TBCDField
      Tag = 3
      DisplayLabel = ' '#1606#1587#1576#1578' '#1576#1607' '#1578#1608#1604#1740#1583' '#1591#1740' '#1605#1581#1583#1608#1583#1607'('#1583#1585#1589#1583')'
      FieldName = 'WithinTheRangeOfRatio'
      Precision = 19
    end
    object qryFitfulThanToGenerateFuture: TBCDField
      Tag = 3
      DisplayLabel = #1606#1587#1576#1578' '#1576#1585#1575#1740' '#1578#1608#1604#1740#1583' '#1570#1578#1740
      FieldName = 'ThanToGenerateFuture'
      Precision = 19
    end
    object qryFitfulCalcEntity: TBCDField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1662#1610#1588' '#1576#1610#1606#1610' '#1593#1605#1604#1603#1585#1583
      FieldName = 'CalcEntity'
      Precision = 19
    end
    object qryFitfulFinalEntity: TBCDField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'FinalEntity'
      Precision = 19
    end
  end
  object srcFitful: TDataSource
    DataSet = qryFitful
    Left = 681
    Top = 200
  end
  object qryStuff_Unit_TecInf: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     c_StuffCode,c_StuffName'
      'FROM        Aid_StuffCoding2  '
      '')
    Left = 283
    Top = 209
  end
  object qryReciptItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  * FROM      ReciptItems'
      'WHERE     (ReciptItemID = 0)')
    Left = 173
    Top = 417
  end
  object qryTransForms: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ReciptType'
        Size = -1
        Value = Null
      end
      item
        Name = 'ReciptDateFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'ReciptDateTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'ShowZero'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        TransForms.TransFormID, ProcessProduce.ProcessID, ' +
        'TransForms.TransFormNo, TransForms.TransFormDate, TransForms.Not' +
        'e, TransForms.StuffCode, '
      
        '                         StuffCoding.c_StuffName, Units.UnitName' +
        ', dev_Entity.Entity, dev_Entity.Weight'
      'FROM            TransForms INNER JOIN'
      
        '                         ProcessProduce ON TransForms.TransFormI' +
        'D = ProcessProduce.TransFormID INNER JOIN'
      
        '                         StuffCoding ON TransForms.StuffCode = S' +
        'tuffCoding.c_StuffCode INNER JOIN'
      
        '                         Units ON StuffCoding.n_UnitCode = Units' +
        '.UnitCode LEFT OUTER JOIN'
      
        '                             (SELECT        ReciptItems.StuffCod' +
        'e, SUM(ReciptItems.InputEntity + ReciptItems.OutputEntity) AS En' +
        'tity, SUM(ReciptItems.InputWeight + ReciptItems.OutputWeight) '
      
        '                                                         AS Weig' +
        'ht'
      
        '                                FROM            ReciptItems INNE' +
        'R JOIN'
      
        '                                                         Recipts' +
        ' ON ReciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.Serv' +
        'erID = Recipts.ServerID AND ReciptItems.YearID = Recipts.YearID'
      ''
      
        'WHERE        (Recipts.ReciptType = :ReciptType ) AND (Recipts.Re' +
        'ciptDate BETWEEN  :ReciptDateFrom  AND :ReciptDateTo )          ' +
        '                    '
      ''
      
        '                                GROUP BY ReciptItems.StuffCode) ' +
        'AS dev_Entity ON TransForms.StuffCode = dev_Entity.StuffCode'
      
        'WHERE        (TransForms.TransFormState = 0)  AND ((dev_Entity.E' +
        'ntity <> 0 )OR( 0 =  :ShowZero))'
      'ORDER BY dev_Entity.Entity DESC')
    Left = 257
    Top = 7
  end
  object ADOQuery1: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        TransForms.TransFormID, ProcessProduce.ProcessID, ' +
        'TransForms.TransFormNo, TransForms.TransFormDate, TransForms.Not' +
        'e, TransForms.StuffCode, '
      '                         StuffCoding.c_StuffName, Units.UnitName'
      'FROM            TransForms INNER JOIN'
      
        '                         ProcessProduce ON TransForms.TransFormI' +
        'D = ProcessProduce.TransFormID INNER JOIN'
      
        '                         StuffCoding ON TransForms.StuffCode = S' +
        'tuffCoding.c_StuffCode INNER JOIN'
      
        '                         Units ON StuffCoding.n_UnitCode = Units' +
        '.UnitCode'
      'WHERE        (TransForms.TransFormState = 0)')
    Left = 497
    Top = 7
  end
  object qryPerformance: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'ReciptDateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'ReciptDateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        ReciptItems.StuffCode, SUM(ReciptItems.InputEntity' +
        ' + ReciptItems.OutputEntity) AS Entity, SUM(ReciptItems.InputWei' +
        'ght + ReciptItems.OutputWeight) '
      '                         AS Weight'
      'FROM            ReciptItems INNER JOIN'
      
        '                         Recipts ON ReciptItems.ReciptID = Recip' +
        'ts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND Reci' +
        'ptItems.YearID = Recipts.YearID'
      
        'WHERE        (Recipts.ReciptType = :ReciptType ) AND (Recipts.Re' +
        'ciptDate BETWEEN  :ReciptDateFrom  AND :ReciptDateTo )'
      'GROUP BY ReciptItems.StuffCode'
      'ORDER BY ReciptItems.StuffCode')
    Left = 163
    Top = 17
    object LargeintField1: TLargeintField
      FieldName = 'StuffCode'
    end
    object FloatField1: TFloatField
      FieldName = 'Entity'
      ReadOnly = True
    end
    object FloatField2: TFloatField
      FieldName = 'Weight'
      ReadOnly = True
    end
  end
end
