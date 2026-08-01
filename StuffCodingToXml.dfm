inherited StuffCodingToXmlF: TStuffCodingToXmlF
  Left = 458
  Top = 345
  AutoSize = True
  Caption = #1575#1585#1587#1575#1604' '#1576#1607' Xml'
  ClientHeight = 81
  ClientWidth = 283
  ExplicitWidth = 291
  ExplicitHeight = 108
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 25
    Width = 283
    ExplicitTop = 0
    ExplicitWidth = 275
  end
  inherited Panel1: TPanel
    Width = 283
    Height = 17
    Visible = False
    ExplicitTop = 1
    ExplicitWidth = 275
    ExplicitHeight = 17
    inherited Image1: TImage
      Left = 246
      Top = 3
      ExplicitLeft = 246
      ExplicitTop = 3
    end
    inherited lblTopic0: TLabel
      Left = 162
      Top = 4
      ExplicitLeft = 162
      ExplicitTop = 4
    end
    inherited lblTopic1: TLabel
      Left = 149
      Top = 20
      ExplicitLeft = 149
      ExplicitTop = 20
    end
  end
  inherited pnlDown: TPanel
    Top = 36
    Width = 283
    Height = 32
    Align = alTop
    TabOrder = 2
    ExplicitTop = 37
    ExplicitWidth = 275
    ExplicitHeight = 32
    inherited btnClose: TBitBtn
      Height = 22
      ExplicitHeight = 22
    end
    object btnSendToXml: TBitBtn
      Left = 205
      Top = 6
      Width = 75
      Height = 22
      Action = actSendCoding
      Anchors = [akTop, akRight]
      Caption = #1575#1585#1587#1575#1604' '#1603#1583#1610#1606#1603
      TabOrder = 2
    end
    object btnSendConst: TBitBtn
      Left = 126
      Top = 6
      Width = 75
      Height = 22
      Action = actSendConst
      Caption = #1575#1585#1587#1575#1604' '#1579#1575#1576#1578#1607#1575
      TabOrder = 1
    end
  end
  object StatusBar1: TStatusBar [3]
    Left = 0
    Top = 17
    Width = 283
    Height = 19
    Align = alTop
    Panels = <
      item
        Width = 150
      end
      item
        Width = 100
      end>
    ExplicitTop = 18
    ExplicitWidth = 275
  end
  inherited ActionList1: TActionList
    Left = 12
    Top = 3
    object actSendCoding: TAction
      Caption = #1575#1585#1587#1575#1604' '#1603#1583#1610#1606#1711
      OnExecute = actSendCodingExecute
    end
    object actSendConst: TAction
      Caption = #1575#1585#1587#1575#1604' '#1579#1575#1576#1578#1607#1575
      OnExecute = actSendConstExecute
    end
  end
  object qryStuffCoding: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterScroll = qryStuffCodingAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     c_StuffCode, c_StuffCode AS Coding, GroupID AS [Group' +
        '], ChangeState AS Status,'
      
        '                      CASE StuffCoding.State WHEN 0 THEN '#39'True'#39' ' +
        'ELSE '#39'False'#39' END AS Active, c_StuffName AS Onvan, 1000+n_UnitCod' +
        'e AS Vahed, SellPrice1 AS Hazine, '
      
        '                      ISNULL(c_KeepPlace, 0) AS Radif, ISNULL(sd' +
        '1, 0) AS Tabaghe, Carton AS Vazn,'
      '                          (SELECT     LookUpID'
      '                             FROM         LookUps'
      
        '                             WHERE     (Code = StuffCoding.st11)' +
        ' AND (Kind = 311)) AS GhateKetab,'
      '                          (SELECT     LookUpID'
      '                             FROM         LookUps AS LookUps_1'
      
        '                             WHERE     (Code = StuffCoding.st12)' +
        ' AND (Kind = 312)) AS JeldType, dbo.ShamsiToMiladi(RTRIM(LTRIM(s' +
        'd2)) + '#39'/01/01'#39') AS TarikhChap, '
      
        '                      c_StuffTecInfo AS Shabak, ISNULL(sd5, '#39'0'#39')' +
        ' AS TedadJeld, ISNULL(StanCode, '#39'0'#39') AS CodeKhas, ISNULL(sd3, '#39'0' +
        #39') AS NobatChap, ISNULL(sd4, '#39'0'#39') '
      
        '                      AS Viraiesh, ISNULL(sd6, '#39'0'#39') AS TedadSafa' +
        'hat,'
      '                          (SELECT     TOP 1 ArchivePath'
      
        '                             FROM         Config) + LTRIM(STR(c_' +
        'StuffCode)) + '#39'.jpg'#39' AS Picture'
      'FROM         StuffCoding'
      'WHERE     (ChangeState <> 3) and (State = 0)'
      ' '
      ' ')
    Left = 123
    Top = 12
    object qryStuffCodingc_StuffCode: TLargeintField
      FieldName = 'c_StuffCode'
    end
    object qryStuffCodingCoding: TLargeintField
      FieldName = 'Coding'
    end
    object qryStuffCodingGroup: TSmallintField
      FieldName = 'Group'
    end
    object qryStuffCodingOnvan: TStringField
      FieldName = 'Onvan'
      Size = 150
    end
    object qryStuffCodingVahed: TWordField
      FieldName = 'Vahed'
    end
    object qryStuffCodingHazine: TBCDField
      FieldName = 'Hazine'
      Precision = 19
    end
    object qryStuffCodingRadif: TStringField
      FieldName = 'Radif'
      Size = 25
    end
    object qryStuffCodingTabaghe: TStringField
      FieldName = 'Tabaghe'
      Size = 64
    end
    object qryStuffCodingVazn: TFloatField
      FieldName = 'Vazn'
    end
    object qryStuffCodingGhateKetab: TIntegerField
      FieldName = 'GhateKetab'
    end
    object qryStuffCodingJeldType: TIntegerField
      FieldName = 'JeldType'
    end
    object qryStuffCodingTarikhChap: TDateTimeField
      FieldName = 'TarikhChap'
      ReadOnly = True
    end
    object qryStuffCodingShabak: TStringField
      FieldName = 'Shabak'
    end
    object qryStuffCodingTedadJeld: TStringField
      FieldName = 'TedadJeld'
      Size = 64
    end
    object qryStuffCodingCodeKhas: TStringField
      FieldName = 'CodeKhas'
      ReadOnly = True
      Size = 27
    end
    object qryStuffCodingNobatChap: TStringField
      FieldName = 'NobatChap'
      Size = 64
    end
    object qryStuffCodingViraiesh: TStringField
      FieldName = 'Viraiesh'
      Size = 64
    end
    object qryStuffCodingTedadSafahat: TStringField
      FieldName = 'TedadSafahat'
      Size = 64
    end
    object qryStuffCodingPicture: TStringField
      FieldName = 'Picture'
      ReadOnly = True
      Size = 256
    end
    object qryStuffCodingActive: TStringField
      FieldName = 'Active'
      ReadOnly = True
      Size = 5
    end
    object qryStuffCodingStatus: TWordField
      FieldName = 'Status'
    end
  end
  object qryAid: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StuffCode'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     LookupDesc AS ConstID, LookupID - 299 AS Type'
      'FROM         StuffCodingAid'
      'WHERE     (c_StuffCode = :StuffCode)'
      'ORDER BY LookupID - 299')
    Left = 175
    Top = 3
  end
  object qryConst: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select  1000+UnitCode as MapID, ChangeState as status , UnitName' +
        ' as title ,1 as type from Units '
      'where (ChangeState <>3)'
      'union all'
      
        'select LookUpID as MapID,ChangeState as status, Name as title ,k' +
        'ind -299 as type  from LookUps'
      'where  (Kind<>0) and (ChangeState <>3)'
      'UNION ALL'
      
        'SELECT     GroupID AS MapID, 0 AS status, GroupName AS title, 17' +
        ' AS type'
      'FROM         StuffGroups')
    Left = 62
    Top = 3
  end
  object qryUpdate: TADOQuery
    Connection = DmF.adcBSell
    Parameters = <>
    Left = 232
    Top = 3
  end
end
