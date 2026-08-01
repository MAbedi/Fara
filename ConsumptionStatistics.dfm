inherited ConsumptionStatisticsF: TConsumptionStatisticsF
  Left = 365
  Top = 265
  Caption = #1579#1576#1578' '#1570#1605#1575#1585' '#1605#1589#1585#1601' '#1576#1585' '#1575#1587#1575#1587' '#1601#1585#1605#1608#1604' '#1587#1575#1582#1578
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 457
    ExplicitTop = 457
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
    object BitBtn1: TBitBtn
      Left = 629
      Top = 8
      Width = 75
      Height = 25
      Action = actPost
      Anchors = [akRight, akBottom]
      Caption = #1579#1576#1578
      TabOrder = 4
    end
    object btnSelectAll1: TBitBtn
      Left = 709
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      ExplicitLeft = 674
    end
  end
  inherited Panel3: TPanel
    Top = 272
    Height = 185
    ExplicitTop = 272
    ExplicitHeight = 185
    object DBGrid1: TDBGrid
      Left = 429
      Top = 2
      Width = 355
      Height = 181
      CustomHint = DmF.BalloonHint1
      Align = alClient
      Color = clCream
      DataSource = srcProduct
      DrawingStyle = gdsClassic
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ReciptDate'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StuffCode'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_StuffName'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UnitName'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Entity'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Weight'
          Width = 47
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 427
      Height = 181
      Align = alLeft
      Caption = 'Panel4'
      TabOrder = 1
      object Label3: TLabel
        Left = 1
        Top = 1
        Width = 425
        Height = 18
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = '  '#1578#1601#1603#1610#1603' '#1578#1585#1603#1610#1576' '#1605#1608#1575#1583' '#1605#1589#1585#1601#1610
        Color = clInactiveCaption
        Font.Charset = ARABIC_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
        ExplicitLeft = 4
        ExplicitTop = 4
        ExplicitWidth = 419
      end
      object DBGrid2: TDBGrid
        Left = 1
        Top = 19
        Width = 425
        Height = 161
        Align = alClient
        DataSource = srcConsumption
        DrawingStyle = gdsClassic
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'StuffCode'
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'c_StuffName'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UnitName'
            Width = 28
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ProcCode'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EntityUse'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'WeightUse'
            Visible = True
          end>
      end
    end
  end
  object StatusBar1: TStatusBar [3]
    Left = 0
    Top = 498
    Width = 786
    Height = 19
    BiDiMode = bdRightToLeft
    Panels = <
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 50
      end>
    ParentBiDiMode = False
  end
  object GroupBox1: TGroupBox [4]
    AlignWithMargins = True
    Left = 3
    Top = 221
    Width = 780
    Height = 48
    CustomHint = DmF.BalloonHint1
    Align = alTop
    BiDiMode = bdRightToLeft
    Caption = #1606#1581#1608#1607' '#1605#1581#1575#1587#1576#1607
    ParentBiDiMode = False
    TabOrder = 4
    DesignSize = (
      780
      48)
    object lbl4: TLabel
      Left = 597
      Top = 24
      Width = 33
      Height = 13
      CustomHint = DmF.BalloonHint1
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1576#1607' '#1578#1575#1585#1610#1582
      ExplicitLeft = 607
    end
    object RadioButton1: TRadioButton
      Left = 645
      Top = 22
      Width = 121
      Height = 17
      CustomHint = DmF.BalloonHint1
      Anchors = [akTop, akRight]
      Caption = #1605#1581#1575#1587#1576#1607' '#1608' '#1579#1576#1578' '#1603#1604#1610
      TabOrder = 0
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 152
      Top = 22
      Width = 160
      Height = 17
      CustomHint = DmF.BalloonHint1
      Caption = #1576#1578#1575#1585#1610#1582' '#1606#1605#1575#1610#1588' '#1588#1583#1607' '#1583#1585' '#1580#1583#1608#1604
      TabOrder = 1
      OnClick = RadioButton1Click
    end
    object mskDateFrom: TMaskEdit
      Left = 509
      Top = 20
      Width = 81
      Height = 21
      CustomHint = DmF.BalloonHint1
      Anchors = [akTop, akRight]
      EditMask = '9999/99/99;1;_'
      MaxLength = 10
      TabOrder = 2
      Text = '    /  /  '
    end
  end
  object Panel1: TPanel [5]
    Left = 0
    Top = 53
    Width = 786
    Height = 94
    CustomHint = DmF.BalloonHint1
    Align = alTop
    TabOrder = 5
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 412
      Height = 86
      CustomHint = DmF.BalloonHint1
      Align = alClient
      Caption = #1606#1575#1605' '#1601#1585#1605' '#1578#1608#1604#1610#1583
      TabOrder = 0
      object chklstTypes: TCheckListBox
        Left = 2
        Top = 15
        Width = 408
        Height = 69
        CustomHint = DmF.BalloonHint1
        Align = alClient
        Columns = 1
        ItemHeight = 13
        TabOrder = 0
        OnClick = chklstTypesClick
      end
    end
    object rdgrpType: TRadioGroup
      AlignWithMargins = True
      Left = 422
      Top = 4
      Width = 360
      Height = 86
      CustomHint = DmF.BalloonHint1
      Align = alRight
      Caption = '  '#1606#1575#1605' '#1601#1585#1605' '#1582#1585#1608#1580#1610'  '
      Columns = 2
      TabOrder = 1
      OnClick = rdgrpTypeClick
    end
  end
  object GroupBox3: TGroupBox [6]
    AlignWithMargins = True
    Left = 3
    Top = 150
    Width = 780
    Height = 65
    Align = alTop
    Caption = #1575#1606#1578#1582#1575#1576' '#1575#1606#1576#1575#1585' '#1608' '#1605#1588#1578#1585#1610
    TabOrder = 6
    object grp6: TGroupBox
      Left = 419
      Top = 15
      Width = 359
      Height = 48
      Align = alRight
      Caption = ' '#1575#1606#1576#1575#1585' '
      TabOrder = 0
      DesignSize = (
        359
        48)
      object SpeedButton1: TSpeedButton
        Left = 178
        Top = 14
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object lblStoreID: TLabel
        Left = 160
        Top = 19
        Width = 12
        Height = 13
        Caption = '...'
        Color = clHighlight
        ParentColor = False
      end
      object mskStoreID: TMaskEdit
        Left = 203
        Top = 15
        Width = 127
        Height = 21
        Anchors = [akTop, akRight]
        EditMask = '999999999999999999;1;_'
        MaxLength = 18
        TabOrder = 0
        Text = '                  '
      end
    end
    object grp5: TGroupBox
      Left = 2
      Top = 15
      Width = 417
      Height = 48
      Align = alClient
      Caption = ' '#1603#1583' '#1605#1588#1578#1585#1610' '
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      DesignSize = (
        417
        48)
      object btn3: TSpeedButton
        Left = 239
        Top = 15
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = btn3Click
        ExplicitLeft = 243
      end
      object lblPersonID1: TLabel
        Left = 221
        Top = 19
        Width = 12
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '...'
        Color = clHighlight
        ParentColor = False
        ExplicitLeft = 225
      end
      object mskPersonID1: TMaskEdit
        Left = 264
        Top = 16
        Width = 128
        Height = 21
        Anchors = [akTop, akRight]
        Ctl3D = True
        EditMask = '999999999999999999;1;_'
        MaxLength = 18
        ParentCtl3D = False
        TabOrder = 0
        Text = '0                 '
      end
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
    Top = 9
  end
  object qryProduct: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = qryProductAfterScroll
    Parameters = <>
    Left = 714
    Top = 312
    object qryProductReciptDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryProductStuffCode: TLargeintField
      DisplayLabel = #1603#1583' '#1605#1581#1589#1608#1604
      FieldName = 'StuffCode'
    end
    object qryProductc_StuffName: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1605#1581#1589#1608#1604
      FieldName = 'c_StuffName'
      Size = 150
    end
    object qryProductUnitName: TStringField
      DisplayLabel = #1608#1575#1581#1583
      FieldName = 'UnitName'
      Size = 50
    end
    object qryProductEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryProductWeight: TFloatField
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
      ReadOnly = True
    end
  end
  object srcProduct: TDataSource
    DataSet = qryProduct
    Left = 533
    Top = 365
  end
  object qryConsumption: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 218
    Top = 328
    object qryConsumptionStuffCode: TLargeintField
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryConsumptionc_StuffName: TStringField
      DisplayLabel = #1606#1575#1605' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 150
    end
    object qryConsumptionUnitName: TStringField
      DisplayLabel = #1608#1575#1581#1583
      FieldName = 'UnitName'
      Size = 50
    end
    object qryConsumptionProcCode: TLargeintField
      FieldName = 'ProcCode'
    end
    object qryConsumptionEntityUse: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'EntityUse'
      ReadOnly = True
    end
    object qryConsumptionWeightUse: TFloatField
      DisplayLabel = #1608#1586#1606
      FieldName = 'WeightUse'
      ReadOnly = True
    end
  end
  object srcConsumption: TDataSource
    DataSet = qryConsumption
    Left = 85
    Top = 325
  end
  object qryInitType: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  * FROM    ReciptTypes'
      ''
      'where ReciptType=:ReciptType'
      ''
      ''
      'ORDER BY ReciptType')
    Left = 662
    Top = 76
  end
end
