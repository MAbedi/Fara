object FrmReciptType: TFrmReciptType
  Left = 0
  Top = 0
  Width = 405
  Height = 28
  TabOrder = 0
  object cmbReciptType: TComboBox
    AlignWithMargins = True
    Left = 3
    Top = 6
    Width = 399
    Height = 21
    Margins.Top = 6
    Align = alClient
    Style = csDropDownList
    TabOrder = 0
    OnChange = cmbReciptTypeChange
  end
  object qryinit: TADOQuery
    Connection = DMF.adcBSell
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
      'declare @ReciptType int'
      'set @ReciptType= :ReciptType'
      'SELECT  *  ,(SELECT   count(*)'
      'FROM            ReciptTypes'
      
        'WHERE       ( ('#39','#39' + RecallReciptTypes + '#39','#39' LIKE '#39'%,'#39'+LTRIM( st' +
        'r(@ReciptType))+'#39',%'#39')  OR'
      '       (ReciptType = @ReciptType))'
      
        ' AND (RecallType IN (2, 3, 4, 5, 6, 7, 8, 10, 11, 12, 13, 15, 16' +
        '))) AS ParentFormActive'
      ''
      ' FROM    ReciptTypes'
      ''
      'where ReciptType=@ReciptType'
      ''
      ''
      'ORDER BY ReciptType'
      '')
    Left = 225
  end
end
