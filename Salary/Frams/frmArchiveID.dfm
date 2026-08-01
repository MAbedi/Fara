object frArchiveID: TfrArchiveID
  Left = 0
  Top = 0
  Width = 460
  Height = 25
  TabOrder = 0
  object lblFirstArchiveID: TLabel
    AlignWithMargins = True
    Left = 353
    Top = 3
    Width = 104
    Height = 19
    Align = alRight
    Caption = #1605#1602#1575#1740#1587#1607' '#1588#1605#1575#1585#1607' '#1576#1575#1740#1711#1575#1606#1740
    ExplicitHeight = 13
  end
  object lblLastArchiveID: TLabel
    AlignWithMargins = True
    Left = 147
    Top = 3
    Width = 74
    Height = 19
    Align = alRight
    Caption = #1576#1575' '#1588#1605#1575#1585#1607' '#1576#1575#1740#1711#1575#1606#1740
    ExplicitHeight = 13
  end
  object cmbLastArchiveID: TComboBox
    Left = 0
    Top = 0
    Width = 144
    Height = 21
    Align = alClient
    Color = 13431799
    TabOrder = 0
    Text = 'cmbLastArchiveID'
    OnChange = cmbFirstArchiveIDChange
  end
  object cmbFirstArchiveID: TComboBox
    Left = 224
    Top = 0
    Width = 126
    Height = 21
    Align = alRight
    Color = 13431799
    TabOrder = 1
    Text = 'cmbFirstArchiveID'
    OnChange = cmbFirstArchiveIDChange
  end
  object qryArchiveID: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Mounth'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end
      item
        Name = 'YearID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT Mounth, MIN(ArchiveID) AS MinArchiveID, MAX(ArchiveID) AS' +
        ' MaxArchiveID, '
      
        'CASE WHEN MIN(ArchiveID) = 0 THEN MIN(ArchiveID) ELSE MAX(Archiv' +
        'eID) END AS F_ArchiveID, '
      
        'CASE WHEN MIN(ArchiveID) = 0 THEN MAX(ArchiveID) ELSE MAX(Archiv' +
        'eID) - 1 END AS Last_ArchiveID'
      'FROM Pay.FixedCalculated'
      'WHERE        (Mounth = :Mounth ) AND (YearID = :YearID)'
      'GROUP BY Mounth'
      '')
    Left = 184
    object qryArchiveIDMounth: TWordField
      FieldName = 'Mounth'
    end
    object qryArchiveIDMinArchiveID: TIntegerField
      FieldName = 'MinArchiveID'
      ReadOnly = True
    end
    object qryArchiveIDMaxArchiveID: TIntegerField
      FieldName = 'MaxArchiveID'
      ReadOnly = True
    end
    object qryArchiveIDF_ArchiveID: TIntegerField
      FieldName = 'F_ArchiveID'
      ReadOnly = True
    end
    object qryArchiveIDLast_ArchiveID: TIntegerField
      FieldName = 'Last_ArchiveID'
      ReadOnly = True
    end
  end
end
