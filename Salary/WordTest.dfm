inherited WordTestF: TWordTestF
  Left = 198
  Top = 140
  Caption = 'WordTestF'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    object Edit1: TEdit
      Left = 504
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 504
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Edit2'
    end
    object Button1: TButton
      Left = 504
      Top = 136
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object qryList: TADOQuery
    Connection = DMF.adcSalary
    CursorType = ctStatic
    Filter = '(checked=true) '
    Parameters = <>
    SQL.Strings = (
      'SELECT     c_PersonelNo, c_name, c_lastName'
      'FROM Pay.PersonelInfo')
    Left = 194
    Top = 219
    object qryListc_PersonelNo: TStringField
      FieldName = 'c_PersonelNo'
      Size = 12
    end
    object qryListc_name: TStringField
      Tag = 1
      DisplayLabel = 'name'
      FieldName = 'c_name'
      Size = 25
    end
    object qryListc_lastName: TStringField
      Tag = 1
      DisplayLabel = 'lastName'
      FieldName = 'c_lastName'
      Size = 30
    end
  end
  object srcList: TDataSource
    DataSet = qryList
    Left = 98
    Top = 235
  end
end
