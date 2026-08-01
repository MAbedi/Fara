inherited CreateSanamaXMLF: TCreateSanamaXMLF
  Caption = #1578#1607#1740#1607' '#1601#1575#1740#1604' '#1583#1740#1587#1705#1578' '#1587#1606#1575#1605#1575'-XML'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    object BitBtn2: TBitBtn
      Left = 685
      Top = 8
      Width = 75
      Height = 25
      Action = actExport
      Anchors = [akRight, akBottom]
      Caption = #1578#1607#1740#1607' '#1583#1740#1587#1705#1578
      TabOrder = 1
    end
  end
  inherited Panel2: TPanel
    Height = 52
    ExplicitHeight = 52
    inherited lblCaption: TLabel
      Height = 16
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 600
      Height = 50
      Align = alLeft
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        #1578#1607#1740#1607' '#1583#1587#1705#1578' '#1576#1583#1608#1606' '#1605#1581#1583#1608#1583#1607' '#1578#1575#1585#1740#1582#1740
        #1578#1607#1740#1607' '#1583#1740#1587#1705#1578' '#1576#1575' '#1605#1581#1583#1608#1583#1607' '#1578#1575#1585#1740#1582#1740
        #1578#1607#1740#1607' '#1583#1740#1587#1705#1578' '#1608#1585#1688#1606' '#1580#1583#1740#1583'(2.2)')
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
  end
  inherited Panel3: TPanel
    Top = 52
    Height = 425
    ExplicitTop = 52
    ExplicitHeight = 439
    object Label1: TLabel
      Left = 701
      Top = 17
      Width = 46
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1575#1607
    end
    object DBMemo1: TDBMemo
      AlignWithMargins = True
      Left = 5
      Top = 52
      Width = 780
      Height = 368
      Margins.Top = 50
      Align = alClient
      BiDiMode = bdLeftToRight
      DataField = 'XMLReport'
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 771
      ExplicitHeight = 382
    end
    object cmbMount: TComboBox
      Left = 584
      Top = 14
      Width = 110
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 1
      Items.Strings = (
        #1601#1585#1608#1585#1583#1740#1606
        #1575#1585#1583#1740#1576#1607#1588#1578
        #1582#1585#1583#1575#1583
        #1578#1740#1585
        #1605#1585#1583#1575#1583
        #1588#1607#1585#1740#1608#1585
        #1605#1607#1585
        #1570#1576#1575#1606
        #1570#1584#1585
        #1583#1740
        #1576#1607#1605#1606
        #1575#1587#1601#1606#1583
        #1605#1578#1605#1605
        #1606#1607#1575#1740#1740)
    end
    object BitBtn1: TBitBtn
      Left = 492
      Top = 14
      Width = 75
      Height = 22
      Action = actProssXML
      Anchors = [akTop, akRight]
      Caption = #1662#1585#1583#1575#1586#1588
      TabOrder = 2
    end
    object pnlFilter: TPanel
      Left = 71
      Top = 5
      Width = 374
      Height = 41
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      TabOrder = 3
      Visible = False
      object Label2: TLabel
        Left = 322
        Top = 12
        Width = 31
        Height = 13
        Caption = #1575#1586' '#1578#1575#1585#1740#1582
      end
      object Label3: TLabel
        Left = 123
        Top = 12
        Width = 30
        Height = 13
        Caption = #1578#1575' '#1578#1575#1585#1740#1582
      end
      object edtDateFrom: TMaskEdit
        Left = 240
        Top = 9
        Width = 77
        Height = 21
        EditMask = '9999/99/99;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '    /  /  '
      end
      object edtDateTo: TMaskEdit
        Left = 48
        Top = 9
        Width = 70
        Height = 21
        EditMask = '9999/99/99;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '    /  /  '
      end
    end
  end
  inherited ActionList: TActionList
    Left = 352
    Top = 160
    object actProssXML: TAction
      Caption = #1662#1585#1583#1575#1586#1588
      OnExecute = actProssXMLExecute
    end
    object actExport: TAction
      Caption = #1578#1607#1740#1607' '#1583#1740#1587#1705#1578
      OnExecute = actExportExecute
    end
  end
  object qrySanama: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'YearID'
        DataType = ftWideString
        Size = 2
        Value = '94'
      end
      item
        Name = 'CompanyID'
        DataType = ftWideString
        Size = 1
        Value = '1'
      end
      item
        Name = 'MonthID'
        DataType = ftWideString
        Size = 2
        Value = '11'
      end
      item
        Name = 'CompanyName'
        DataType = ftWideString
        Size = 7
        Value = 'company'
      end>
    SQL.Strings = (
      
        'exec Acc.CreateSanamaXML  :YearID , :CompanyID , :MonthID , :Com' +
        'panyName')
    Left = 480
    Top = 240
  end
  object DataSource1: TDataSource
    DataSet = qrySanama
    Left = 264
    Top = 216
  end
  object SaveDialog1: TSaveDialog
    Filter = 'XML|XML'
    Left = 432
    Top = 200
  end
end
