inherited RptCrossTabF: TRptCrossTabF
  Left = 168
  Top = 148
  Caption = #1711#1586#1575#1585#1588' '#1605#1575#1578#1585#1610#1587#1610
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 480
    Height = 37
    ExplicitTop = 480
    ExplicitHeight = 37
    inherited BtnReject: TBitBtn
      Height = 23
      ExplicitHeight = 23
    end
    object BitBtn1: TBitBtn
      Left = 696
      Top = 8
      Width = 75
      Height = 25
      Action = actShow
      Anchors = [akTop, akRight]
      Caption = #1606#1605#1575#1610#1588
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 250
      Top = 8
      Width = 75
      Height = 25
      Action = actSentExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 2
    end
    object BitBtn3: TBitBtn
      Left = 94
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      Left = 172
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn5: TBitBtn
      Left = 329
      Top = 8
      Width = 75
      Height = 25
      Action = actChart
      Caption = #1606#1605#1608#1583#1575#1585
      TabOrder = 5
    end
    object BitBtn6: TBitBtn
      Left = 617
      Top = 8
      Width = 75
      Height = 25
      Action = actShowForms
      Anchors = [akTop, akRight]
      Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
      TabOrder = 6
    end
  end
  inherited Panel3: TPanel
    Height = 427
    ExplicitHeight = 427
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 588
      Height = 423
      Align = alClient
      TabOrder = 1
      object DBGrid2: TDBGrid
        Left = 1
        Top = 386
        Width = 586
        Height = 36
        Align = alBottom
        BorderStyle = bsNone
        Color = clCream
        Ctl3D = True
        DataSource = srcSum
        Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid2DrawColumnCell
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 586
        Height = 385
        Align = alClient
        Color = clCream
        DataSource = srcCross
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColEnter = DBGrid1ColEnter
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
      end
    end
    object Panel1: TPanel
      Left = 590
      Top = 2
      Width = 194
      Height = 423
      Align = alRight
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 5
        Top = 9
        Width = 185
        Height = 105
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1591#1585' '#1608' '#1587#1578#1608#1606' '#1605#1575#1578#1585#1610#1587
        TabOrder = 0
        object Label1: TLabel
          Left = 148
          Top = 32
          Width = 24
          Height = 13
          Caption = #1587#1591#1585
        end
        object Label2: TLabel
          Left = 148
          Top = 66
          Width = 27
          Height = 13
          Caption = #1587#1578#1608#1606
        end
        object cmbRow: TComboBox
          Left = 11
          Top = 28
          Width = 133
          Height = 21
          Style = csDropDownList
          Color = 13236955
          ItemIndex = 3
          TabOrder = 0
          Text = #1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610
          OnChange = cmbRowChange
          Items.Strings = (
            #1580#1606#1587#1610#1578
            #1608#1590#1593#1610#1578' '#1578#1571#1607#1604
            #1578#1593#1583#1575#1583' '#1575#1608#1604#1575#1583
            #1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610
            #1593#1606#1608#1575#1606' '#1588#1594#1604#1610
            #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
            #1583#1585#1580#1607
            #1605#1581#1604' '#1582#1583#1605#1578)
        end
        object cmbColumn: TComboBox
          Left = 11
          Top = 62
          Width = 133
          Height = 21
          Style = csDropDownList
          Color = 13431799
          ItemIndex = 0
          TabOrder = 1
          Text = #1580#1606#1587#1610#1578
          OnChange = cmbColumnChange
          Items.Strings = (
            #1580#1606#1587#1610#1578
            #1608#1590#1593#1610#1578' '#1578#1571#1607#1604
            #1578#1593#1583#1575#1583' '#1575#1608#1604#1575#1583
            #1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610
            #1593#1606#1608#1575#1606' '#1588#1594#1604#1610
            #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
            #1583#1585#1580#1607
            #1605#1581#1604' '#1582#1583#1605#1578)
        end
      end
      object GroupBox2: TGroupBox
        Left = 5
        Top = 126
        Width = 185
        Height = 105
        Caption = ' '#1608#1590#1593#1610#1578'  '
        TabOrder = 1
        object Label4: TLabel
          Left = 147
          Top = 66
          Width = 6
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1575
        end
        object Label3: TLabel
          Left = 147
          Top = 32
          Width = 7
          Height = 13
          Alignment = taRightJustify
          Caption = #1575#1586
        end
        object ComboBox1: TComboBox
          Left = 11
          Top = 28
          Width = 133
          Height = 21
          Style = csDropDownList
          Color = 13236955
          ItemIndex = 0
          TabOrder = 0
          Text = #1608#1590#1593#1610#1578
          Items.Strings = (
            #1608#1590#1593#1610#1578)
        end
        object ComboBox2: TComboBox
          Left = 11
          Top = 62
          Width = 133
          Height = 21
          Style = csDropDownList
          Color = 13431799
          ItemIndex = 0
          TabOrder = 1
          Text = #1608#1590#1593#1610#1578
          Items.Strings = (
            #1608#1590#1593#1610#1578)
        end
      end
    end
  end
  inherited ActionList: TActionList
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actShow: TAction
      Caption = #1606#1605#1575#1610#1588
      OnExecute = actShowExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actChart: TAction
      Caption = #1606#1605#1608#1583#1575#1585
      OnExecute = actChartExecute
    end
    object actSentExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSentExcelExecute
    end
    object actShowForms: TAction
      Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
      OnExecute = actShowFormsExecute
    end
  end
  object qryInfoType: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'Type'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     FormInfoID, InfoName_L1'
      'FROM Pay.FormsInfo'
      'WHERE     (FormType = :Type)'
      'order by infoId')
    Left = 576
    Top = 13
    object qryInfoTypeFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryInfoTypeInfoName_L1: TStringField
      FieldName = 'InfoName_L1'
      Size = 255
    end
  end
  object srcCross: TDataSource
    DataSet = qryCross
    Left = 200
    Top = 85
  end
  object qrySum: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Left = 64
    Top = 365
  end
  object srcSum: TDataSource
    DataSet = qrySum
    Left = 136
    Top = 365
  end
  object qryCross: TADOQuery
    Connection = DmF.adcsalary
    LockType = ltReadOnly
    Parameters = <>
    Left = 122
    Top = 103
  end
end
