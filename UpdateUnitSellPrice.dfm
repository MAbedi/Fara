inherited UpdateUnitSellPriceF: TUpdateUnitSellPriceF
  Left = 365
  Top = 265
  Caption = #1578#1594#1610#1610#1585' '#1601#1610' '#1608' '#1576#1607#1575#1610' '#1603#1604' '#1601#1585#1605' '#1607#1575#1610' '#1608#1585#1608#1583#1610
  ClientHeight = 481
  ClientWidth = 777
  OnResize = FormResize
  ExplicitWidth = 793
  ExplicitHeight = 520
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 440
    Width = 777
    ExplicitTop = 441
    ExplicitWidth = 781
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendExel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object btnSlelectInverse: TBitBtn
      AlignWithMargins = True
      Left = 621
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPost
      Align = alRight
      Caption = #1579#1576#1578' '#1601#1610
      TabOrder = 4
    end
    object btnSelectAll: TBitBtn
      AlignWithMargins = True
      Left = 702
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 5
      ExplicitTop = 9
    end
  end
  inherited Panel2: TPanel
    Width = 777
    ExplicitWidth = 781
    inherited ImgTemplate: TImage
      Left = 776
      ExplicitLeft = 776
    end
    inherited lblCaption: TLabel
      Left = 673
      Height = 16
      ExplicitLeft = 673
    end
  end
  inherited Panel3: TPanel
    Width = 777
    Height = 387
    ExplicitWidth = 781
    ExplicitHeight = 388
    object DBGrid2: TDBGrid
      Left = 2
      Top = 33
      Width = 777
      Height = 333
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
          FieldName = 'ReciptType'
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptCaption'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptDate'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonID1'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustName'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StuffCode'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InputEntity'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UnitSellPrice'
          Width = 26
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalInputPrice'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CalcUnitSellPrice'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CalcTotalInputPrice'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UnitSellPrice2'
          Width = 76
          Visible = True
        end>
    end
    object pnl1: TPanel
      Left = 2
      Top = 2
      Width = 777
      Height = 31
      Align = alTop
      TabOrder = 1
      object lbl6: TLabel
        AlignWithMargins = True
        Left = 757
        Top = 5
        Width = 16
        Height = 13
        Margins.Top = 4
        Margins.Bottom = 4
        Align = alRight
        Alignment = taRightJustify
        Caption = #1601#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        AlignWithMargins = True
        Left = 588
        Top = 5
        Width = 69
        Height = 13
        Margins.Top = 4
        Margins.Bottom = 4
        Align = alRight
        Alignment = taRightJustify
        Caption = #1601#1740' '#1608#1575#1581#1583' '#1670#1585#1576#1740
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object mskUnitSellPrice: TMaskEdit
        AlignWithMargins = True
        Left = 663
        Top = 4
        Width = 88
        Height = 23
        Align = alRight
        AutoSize = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Text = '0'
        OnExit = mskEndOfPriceCoChange
      end
      object BitBtn1: TBitBtn
        AlignWithMargins = True
        Left = 413
        Top = 4
        Width = 75
        Height = 23
        Action = actFilter
        Align = alRight
        Caption = #1605#1581#1575#1587#1576#1607
        TabOrder = 1
      end
      object MskUnitSellPrice2: TMaskEdit
        AlignWithMargins = True
        Left = 494
        Top = 4
        Width = 88
        Height = 23
        Align = alRight
        AutoSize = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Text = '0'
        OnExit = mskEndOfPriceCoChange
      end
    end
    object SumGrid1: TSumGrid
      Left = 0
      Top = 366
      Width = 777
      Active = False
      Enable_Controls = True
      MasterGrid = DBGrid2
      ShowZero = True
      FieldsName = 
        'UnitSellPrice;TotalInputPrice;CalcUnitSellPrice;CalcTotalInputPr' +
        'ice;'
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
        Name = 'UnitSellPrice'
        DataType = ftFloat
        Size = 1
        Value = 1.000000000000000000
      end
      item
        Name = 'UnitSellPrice1'
        DataType = ftFloat
        Size = 1
        Value = 2.000000000000000000
      end
      item
        Name = 'UnitSellPrice2'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        Recipts.ReciptType, ReciptTypes1.ReciptCaption, Re' +
        'cipts.ReciptDate, Recipts.PersonID1, Customers.CustName, ReciptI' +
        'tems.StuffCode,'
      
        ' ReciptItems.InputEntity,ReciptItems.UnitSellPrice,ReciptItems.T' +
        'otalInputPrice'
      ', CalcUnitSellPrice = :UnitSellPrice'
      
        ', CalcTotalInputPrice = ROUND( :UnitSellPrice1 * ReciptItems.Inp' +
        'utEntity, 0)'
      ', UnitSellPrice2 = :UnitSellPrice2'
      '')
    Left = 205
    Top = 288
    object qryTypesItemsReciptType: TWordField
      Tag = 3
      DisplayLabel = #1603#1583' '#1601#1585#1605
      FieldName = 'ReciptType'
    end
    object qryTypesItemsReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1601#1585#1605
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryTypesItemsReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryTypesItemsPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610
      FieldName = 'PersonID1'
    end
    object qryTypesItemsCustName: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1578#1585#1610
      FieldName = 'CustName'
      Size = 120
    end
    object qryTypesItemsStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryTypesItemsInputEntity: TFloatField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldName = 'InputEntity'
    end
    object qryTypesItemsUnitSellPrice: TFMTBCDField
      Tag = 3
      DisplayLabel = #1601#1610
      FieldName = 'UnitSellPrice'
      Precision = 19
    end
    object qryTypesItemsTotalInputPrice: TBCDField
      Tag = 3
      DisplayLabel = #1576#1607#1575#1610' '#1603#1604
      FieldName = 'TotalInputPrice'
      currency = True
      Precision = 19
    end
    object qryTypesItemsCalcUnitSellPrice: TFMTBCDField
      Tag = 3
      DisplayLabel = #1601#1610' '#1605#1581#1575#1587#1576#1607' '#1588#1583#1607
      FieldName = 'CalcUnitSellPrice'
      Precision = 19
    end
    object qryTypesItemsCalcTotalInputPrice: TBCDField
      Tag = 3
      DisplayLabel = #1576#1607#1575#1610' '#1603#1604' '#1605#1581#1575#1587#1576#1607' '#1588#1583#1607
      FieldName = 'CalcTotalInputPrice'
      currency = True
      Precision = 19
    end
    object qryTypesItemsUnitSellPrice2: TBCDField
      DisplayLabel = #1601#1740' '#1608#1575#1581#1583' '#1670#1585#1576#1740
      FieldName = 'UnitSellPrice2'
      Precision = 19
    end
  end
  object SrcTypesItems: TDataSource
    DataSet = qryTypesItems
    Left = 205
    Top = 205
  end
end
