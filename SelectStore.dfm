object SelectStoreF: TSelectStoreF
  Left = 423
  Top = 316
  BiDiMode = bdRightToLeft
  BorderStyle = bsToolWindow
  Caption = #1575#1606#1578#1582#1575#1576' ...'
  ClientHeight = 141
  ClientWidth = 327
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ListStores: TListBox
    Left = 0
    Top = 21
    Width = 327
    Height = 120
    Align = alClient
    Color = clCream
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnDblClick = ListStoresDblClick
    OnKeyDown = ListStoresKeyDown
  end
  object edtSerch: TEdit
    Left = 0
    Top = 0
    Width = 327
    Height = 21
    Align = alTop
    Color = clGradientInactiveCaption
    TabOrder = 1
    TextHint = #1580#1587#1578#1580#1608'...'
    OnChange = edtSerchChange
  end
  object qryStores: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'UserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'UserIDAdmin'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'StoreKindList'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     Stores.n_StoreID, Stores.c_StoreName, Stores.c_accTop' +
        'icCode, Stores.c_accDetailCode, Stores.c_accCTopicCode, Stores.n' +
        '_ValuationType'
      '    , Stores.EntityDisplayType , Stores.StoreKind'
      'FROM         Stores INNER JOIN'
      
        '                      UsersStore ON Stores.n_StoreID = UsersStor' +
        'e.n_StoreID'
      
        'WHERE   (Stores.n_StoreID > 0) AND   ( (UsersStore.n_UserID = :U' +
        'serID) OR'
      '                      (127 = :UserIDAdmin))'
      ' :StoreKindList'
      
        'GROUP BY Stores.n_StoreID, Stores.c_StoreName, Stores.c_accTopic' +
        'Code, Stores.c_accDetailCode, Stores.c_accCTopicCode, Stores.n_V' +
        'aluationType'
      '    , Stores.EntityDisplayType, Stores.StoreKind'
      ''
      ' '
      'ORDER BY Stores.n_StoreID'
      '')
    Left = 64
    Top = 48
  end
end
