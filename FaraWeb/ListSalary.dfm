object ListSalaryF: TListSalaryF
  Width = 811
  Height = 480
  object WebPageControl1: TWebPageControl
    Left = 0
    Top = 0
    Width = 811
    Height = 480
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    Align = alClient
    ChildOrder = 1
    TabIndex = 0
    TabOrder = 0
    object WebPageControl1Sheet1: TWebTabSheet
      Left = 0
      Top = 20
      Width = 811
      Height = 460
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      Caption = #1601#1740#1588'  '#1581#1602#1608#1602
      object WebDBGrid1: TWebDBGrid
        Left = 0
        Top = 25
        Width = 811
        Height = 435
        Align = alClient
        Columns = <
          item
            DataField = 'Kind'
            Title = 'Kind'
          end
          item
            DataField = 'InfoName'
            Title = 'InfoName'
          end
          item
            DataField = 'Price'
            Title = 'Price'
          end
          item
            DataField = 'FHours'
            Title = 'FHours'
          end
          item
            DataField = 'FDaily'
            Title = 'FDaily'
          end
          item
            DataField = 'RemainDayDec'
            Title = 'RemainDayDec'
          end>
        DataSource = WebDataSource1
        FixedCols = 0
        TabOrder = 0
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        ColWidths = (
          64
          64
          64
          64
          64
          64)
        RowHeights = (
          22
          22
          22
          22
          22)
      end
      object WebPanel1: TWebPanel
        Left = 0
        Top = 0
        Width = 811
        Height = 25
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        Align = alTop
        BorderColor = clSilver
        BorderStyle = bsSingle
        ChildOrder = 1
        object WebLabel1: TWebLabel
          AlignWithMargins = True
          Left = 761
          Top = 3
          Width = 47
          Height = 19
          Align = alRight
          Caption = #1587#1575#1604' '#1605#1575#1604#1740
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
          ExplicitHeight = 13
        end
        object WebLabel2: TWebLabel
          AlignWithMargins = True
          Left = 442
          Top = 3
          Width = 35
          Height = 19
          Align = alRight
          Caption = #1705#1583' '#1605#1604#1740
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
          ExplicitHeight = 13
        end
        object cmbMonth: TWebComboBox
          AlignWithMargins = True
          Left = 483
          Top = 3
          Width = 145
          Height = 21
          Align = alRight
          HeightPercent = 100.000000000000000000
          Text = 'cmbMonth'
          WidthPercent = 100.000000000000000000
          OnChange = cmbMonthChange
          ItemIndex = -1
          Items.Strings = (
            #1575#1606#1578#1582#1575#1576#1605#1575#1607
            #1601#1585#1608#1585#1583#1610#1606
            #1575#1585#1583#1610#1576#1607#1588#1578
            #1582#1585#1583#1575#1583
            #1578#1610#1585
            #1605#1585#1583#1575#1583
            #1588#1607#1585#1610#1608#1585
            #1605#1607#1585
            #1570#1576#1575#1606
            #1570#1584#1585
            #1583#1610
            #1576#1607#1605#1606
            #1575#1587#1601#1606#1583)
        end
        object edtYearID: TWebEdit
          AlignWithMargins = True
          Left = 634
          Top = 3
          Width = 121
          Height = 19
          Align = alRight
          ChildOrder = 2
          HeightPercent = 100.000000000000000000
          Text = '1402'
          WidthPercent = 100.000000000000000000
          OnChange = cmbMonthChange
        end
        object edtNationalID: TWebEdit
          AlignWithMargins = True
          Left = 315
          Top = 3
          Width = 121
          Height = 19
          Align = alRight
          ChildOrder = 2
          HeightPercent = 100.000000000000000000
          Text = '4569957064'
          WidthPercent = 100.000000000000000000
          OnChange = cmbMonthChange
        end
      end
    end
    object WebPageControl1Sheet2: TWebTabSheet
      Left = 0
      Top = 20
      Width = 811
      Height = 460
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      Caption = #1578#1606#1592#1740#1605#1575#1578
      ChildOrder = 1
    end
    object WebPageControl1Sheet3: TWebTabSheet
      Left = 0
      Top = 20
      Width = 811
      Height = 460
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      Caption = #1608#1585#1608#1583
      ChildOrder = 2
    end
  end
  object WebClientDataSet1: TWebClientDataSet
    Active = True
    Connection = WebClientConnection1
    Params = <>
    Left = 272
    Top = 356
    object WebClientDataSet1Kind: TStringField
      FieldName = 'Kind'
      Size = 256
    end
    object WebClientDataSet1InfoName: TStringField
      FieldName = 'InfoName'
      Size = 256
    end
    object WebClientDataSet1Price: TFloatField
      FieldName = 'Price'
    end
    object WebClientDataSet1FHours: TStringField
      FieldName = 'FHours'
      Size = 256
    end
    object WebClientDataSet1FDaily: TFloatField
      FieldName = 'FDaily'
    end
    object WebClientDataSet1RemainDayDec: TStringField
      FieldName = 'RemainDayDec'
      Size = 256
    end
  end
  object WebClientConnection1: TWebClientConnection
    Active = True
    URI = 
      'http://127.0.0.1:211/fara/SalaryMethod/GetPayroll?Token={BD5009D' +
      'F-743A-4844-BF76-4B641B967688}&jsonPayroll={"NationalID":4569957' +
      '064,"YearID":1402,"Month":1}'
    Left = 48
    Top = 348
  end
  object WebDataSource1: TWebDataSource
    AutoEdit = False
    DataSet = WebClientDataSet1
    Left = 500
    Top = 380
  end
end
