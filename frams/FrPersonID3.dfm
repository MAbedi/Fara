object frPersonID3F: TfrPersonID3F
  Left = 0
  Top = 0
  Width = 577
  Height = 67
  BiDiMode = bdRightToLeft
  ParentBiDiMode = False
  TabOrder = 0
  object grpMaster: TGroupBox
    Left = 0
    Top = 0
    Width = 577
    Height = 67
    Align = alClient
    Caption = #1605#1588#1578#1585#1740' '#1570#1585#1578#1740#1705#1604
    TabOrder = 0
    object sbtnMaster: TSpeedButton
      Left = 2
      Top = 15
      Width = 23
      Height = 23
      Align = alLeft
      Caption = '...'
      OnClick = sbtnMasterClick
      ExplicitLeft = 5
      ExplicitTop = 14
      ExplicitHeight = 22
    end
    object edtPersonID1D: TDBEdit
      Left = 25
      Top = 15
      Width = 327
      Height = 23
      Align = alClient
      DataField = 'PersonID1D'
      DataSource = srcPersonID1D
      TabOrder = 0
      ExplicitHeight = 21
    end
    object edtCustName: TDBEdit
      AlignWithMargins = True
      Left = 5
      Top = 41
      Width = 567
      Height = 21
      Align = alBottom
      BevelOuter = bvNone
      BevelKind = bkFlat
      Color = clBtnFace
      Ctl3D = True
      DataField = 'CustName'
      DataSource = srcPersonID1D
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBNavigator1: TDBNavigator
      Left = 352
      Top = 15
      Width = 223
      Height = 23
      DataSource = srcPersonID1D
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alRight
      Flat = True
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 2
    end
  end
  object qryPersonID1D: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'PersonID1DFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PersonID1DTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT DISTINCT ReciptItems.PersonID1 AS PersonID1D, Customers.C' +
        'ustName'
      'FROM            Recipts INNER JOIN'
      
        '                         ReciptTypes ON Recipts.ReciptType = Rec' +
        'iptTypes.ReciptType INNER JOIN'
      
        '                         ReciptItems ON Recipts.ReciptID = Recip' +
        'tItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND ' +
        'Recipts.YearID = ReciptItems.YearID INNER JOIN'
      
        '                         Customers ON ReciptItems.PersonID1 = Cu' +
        'stomers.CustID'
      
        'WHERE        (ReciptTypes.EffectType IN (2, 4, 6, 7, 8)) AND (Re' +
        'cipts.ReciptState < 3)'
      
        '  AND (ReciptItems.PersonID1 BETWEEN :PersonID1DFrom AND :Person' +
        'ID1DTo)')
    Left = 224
    Top = 9
    object qryPersonID1DPersonID1D: TIntegerField
      FieldName = 'PersonID1D'
    end
    object qryPersonID3CustName: TStringField
      FieldName = 'CustName'
      Size = 60
    end
  end
  object srcPersonID1D: TDataSource
    DataSet = qryPersonID1D
    Left = 440
    Top = 9
  end
end
