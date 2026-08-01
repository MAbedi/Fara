inherited ReciptsImportF: TReciptsImportF
  Caption = #1583#1585#1740#1575#1601#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1587#1575#1740#1585' '#1587#1740#1587#1578#1605#1607#1575
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 707
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 604
      Top = 7
      Width = 97
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actBasePost
      Align = alRight
      Caption = #1575#1606#1578#1602#1575#1604' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1740#1607
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576' '
      TabOrder = 3
    end
    object BitBtn5: TBitBtn
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
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00636B
        7300C69C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006394B500218C
        EF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0042A5
        FF00218CEF007B849400CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052BD
        FF005ABDFF00218CEF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
        FF0052BDFF0042A5FF00218CEF0084849400CE9C9400FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0052BDFF005ABDFF003184D60052636B00FF00FF009C6B6B00CEA5
        9C00D6B5A500CE9C9C00C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0031A5FF0052BDFF00C6CEDE009C9C9C00AD8C8400E7D6BD00FFFF
        D600FFFFDE00FFFFD600EFDEC600FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00C6ADAD00CEA59400FFE7BD00FFF7CE00FFFF
        D600FFFFD600FFFFDE00FFFFE700FFFFFF00C6A5A500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00BD8C8C00EFDEB500F7D6AD00FFF7CE00FFFF
        D600FFFFDE00FFFFEF00FFFFF700FFFFFF00F7EFDE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00F7CE9C00FFEFC600FFFF
        D600FFFFDE00FFFFF700FFFFF700FFFFDE00FFFFDE00C6949400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00EFD6B500FFE7B500F7C68C00F7DEB500FFFF
        D600FFFFDE00FFFFEF00FFFFEF00FFFFDE00FFFFDE00BD9C8C00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00EFBD8400F7C69400FFEF
        C600FFFFD600FFFFD600FFFFD600FFFFD600FFFFDE00C6949400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6ADA500FFEFBD00F7DEAD00F7CE9C00F7D6
        A500F7E7BD00FFFFD600FFFFD600FFFFD600FFFFD600FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C8C00FFFFFF00FFFFFF00F7C6
        9400EFBD8400F7C69400F7D6AD00FFEFC600BD9C8C00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFEFE700FFFFEF00FFE7
        B500F7DEAD00FFE7B500FFEFBD00C69C9400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C
        8C00CEA59C00C69C9400FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 4
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 5
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 523
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actReciptsPost
      Align = alRight
      Caption = #1579#1576#1578' '#1601#1585#1605
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    inherited ImgTemplate: TImage
      Left = 768
      ExplicitLeft = 768
    end
    inherited lblCaption: TLabel
      Hint = 
        'Fn_ReciptsImport'#13#10#1575#1740#1606' FUNCTION '#1583#1585' '#1589#1608#1585#1578#1740' '#1705#1607' '#1608#1580#1608#1583' '#1606#1583#1575#1588#1578#1607' '#1576#1575#1588#1583' '#1575#1740#1580#1575 +
        #1583' '#1605#1740#1588#1608#1583' '#1608' '#1578#1608#1587#1591' '#1662#1588#1578#1740#1576#1575#1606' '#1607#1575' '#1575#1740#1606' FUNCTION '#1583#1585' SQL '#1608#1740#1585#1575#1740#1588' '#1605#1740' '#1588#1608#1583
    end
    object RadioGroup1: TRadioGroup
      Left = 128
      Top = 1
      Width = 233
      Height = 51
      Align = alLeft
      Caption = #1606#1608#1593' '#1575#1585#1578#1576#1575#1591
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        '0-'#1662#1740#1588' '#1601#1585#1590
        '1-'#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1587#1575#1740#1585' '#1587#1585#1608#1585#1607#1575
        '2-'#1575#1585#1578#1576#1575#1591' '#1576#1575' view')
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object CheckBox1: TCheckBox
      AlignWithMargins = True
      Left = 364
      Top = 4
      Width = 75
      Height = 45
      Align = alLeft
      Caption = #1662#1740#1588' '#1606#1605#1575#1740#1588' '#1575#1591#1604#1575#1593#1575#1578
      TabOrder = 1
      WordWrap = True
    end
    object edtLinkServer: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 14
      Width = 121
      Height = 25
      Margins.Top = 13
      Margins.Bottom = 13
      Align = alLeft
      TabOrder = 2
      Text = 'Fara'
      ExplicitHeight = 21
    end
  end
  inherited Panel3: TPanel
    Top = 70
    Height = 406
    ExplicitTop = 70
    ExplicitHeight = 406
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 782
      Height = 402
      Align = alClient
      Color = clCream
      DataSource = srcReciptsImport
      DrawingStyle = gdsClassic
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object pnlLblLimitPlace: TPanel [3]
    Left = 0
    Top = 53
    Width = 786
    Height = 17
    Hint = 
      '  // CREATE FUNCTION Fn_ReciptsImport (....)'#13#10'  // '#1576#1585#1575#1740' '#1575#1740#1580#1575#1583' '#1601#1575 +
      #1606#1705#1588' '#1576#1585#1575#1740' '#1575#1608#1604#1740#1606' '#1576#1575#1585' '#1575#1740#1606' '#1705#1583' '#1606#1608#1588#1578#1607' '#1588#1583#1607' '#1608' '#1578#1608#1587#1591' '#1662#1588#1578#1740#1576#1575#1606' '#1607#1575' '#1575#1740#1606' '#1601#1575#1606#1705#1588#1606 +
      ' '#1583#1585' '#1575#1587#1705#1740#1608#1575#1604' '#1608#1740#1585#1575#1740#1588' '#1605#1740' '#1588#1608#1583
    Align = alTop
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    object LblShowLimitPlace2: TLabel
      Left = 1
      Top = 1
      Width = 4
      Height = 15
      Align = alLeft
      BiDiMode = bdLeftToRight
      Caption = '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      Transparent = True
      ExplicitHeight = 13
    end
    object LblShowLimitPlace1: TLabel
      Left = 781
      Top = 1
      Width = 4
      Height = 15
      Align = alRight
      Caption = '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExplicitHeight = 13
    end
  end
  inherited ActionList: TActionList
    Left = 496
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actReciptsPost: TAction
      Caption = #1579#1576#1578' '#1601#1585#1605
      OnExecute = actReciptsPostExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576' '
      OnExecute = actSortExecute
    end
    object actSendExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExcelExecute
    end
    object actBasePost: TAction
      Caption = #1575#1606#1578#1602#1575#1604' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1740#1607
      OnExecute = actBasePostExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 552
    Top = 169
  end
  object qryReciptsImport: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeOpen = qryReciptsImportBeforeOpen
    AfterOpen = qryReciptsImportAfterOpen
    CommandTimeout = 0
    Parameters = <>
    Left = 400
    Top = 224
  end
  object srcReciptsImport: TDataSource
    DataSet = qryReciptsImport
    Left = 272
    Top = 213
  end
  object qryRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'SELECT        *'
      'FROM            Recipts'
      'WHERE        (ReciptID = 0)')
    Left = 600
    Top = 240
  end
  object qryReciptItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'SELECT        *'
      'FROM            Reciptitems'
      'WHERE        (ReciptID = 0)')
    Left = 648
    Top = 336
  end
  object cmdFirstRun1: TADOCommand
    CommandText = 
      'CREATE FUNCTION Fn_ReciptsImport (@TopicCodeFrom  bigint , @Topi' +
      'cCodeTo bigint ,@CompanyCodeFrom int ,@CompanyCodeTo int , @Year' +
      'ID int'#13#10'                                  ,@DocDateFrom char(10)' +
      ', @DocDateTo  char(10))'#13#10#13#10'  RETURNS @ReciptsImport TABLE '#13#10'  ('#13 +
      #10#9'Serial int ,ReciptType tinyint, ReciptDate char(10) ,'#9#9'StoreID' +
      ' smallint ,'#9'PersonID1 int ,'#9'PersonID2 int ,'#9'PersonID3 int ,'#9'AddD' +
      'ecValue int ,'#13#10#9'DocNo int ,'#9'DocDate char(10) ,'#9'ServiceValue int ' +
      ','#9'ReciptState int ,'#9'ExpireDate char(10) ,'#9'DebtControlActive int ' +
      ','#9'StoreID2 int ,'#9'SellsMethod int ,'#13#10#9'SellsEmporium int ,'#9'Deliver' +
      'yID int ,'#9'PersonID2Bed int ,'#9'RelatedID int ,'#9'CostDownSave int ,'#9 +
      'Transmittal int ,'#9'UseOtherID int ,'#9'StuffCode bigint ,'#13#10#9'StuffSiz' +
      'e varchar(12) ,'#9'StuffDiameter float ,'#9'StuffAlloy varchar(12) ,'#9'I' +
      'nputEntity int ,'#9'OutputEntity int ,'#9'InputWeight int ,'#9'OutputWeig' +
      'ht int ,'#13#10#9'RequestedEntity int ,'#9'RequestedWeight int ,'#9'ControlCo' +
      'de int ,'#9'StuffGrade int ,'#9'TotalInputPrice money ,'#9'TotalOutputPri' +
      'ce money ,'#9'UnitSellPrice money ,'#13#10#9'TotallSellPrice money ,'#9'ItemN' +
      'ote varchar(100) ,'#9'acc_TopicCode int ,'#9'acc_DetailCode int ,'#9'acc_' +
      'CTopicCode int ,'#9'acc_CTopicCode2 int ,'#9'ProductCode bigint ,'#13#10#9'Pr' +
      'oductModel int ,'#9'OrderState int ,'#9'Shift int ,'#9'MachineWeight int ' +
      ','#9'TotalWeight int ,'#9'MachineFullWeight int ,'#9'SugarCo int ,'#9'SugarE' +
      'ntity int ,'#13#10#9'acc_CTopicCode3 int ,'#9'UnitCommission int ,'#9'TaxCo f' +
      'loat ,'#9'TaxValue money,'#9'TotalValue  money,'#9'ReciptValue   money,'#9'M' +
      'odifyDate datetime'#13#10'  )'#13#10'  AS '#13#10'BEGIN  '#13#10#13#10'--   1 AS OperatorID,' +
      ' ,1 AS FirstUser, 0 AS ServerID, DocGroups.YearID,'#13#10'INSERT INTO ' +
      '@ReciptsImport'#13#10#13#10'SELECT     DocGroups.Serial,12 As ReciptType, ' +
      '  DocGroups.DocDate AS ReciptDate,3 AS StoreID,  5002 AS PersonI' +
      'D1,0 AS PersonID2,0 AS PersonID3, 0 AS AddDecValue, DocGroups.Se' +
      'condaryDocNo as  DocNo,DocGroups.DocDate as  DocDate,'#13#10'         ' +
      '           0 AS ServiceValue,      0 AS ReciptState, '#39#39' AS Expir' +
      'eDate, 0 AS DebtControlActive, 0 AS StoreID2, 1 AS SellsMethod, ' +
      '1 AS SellsEmporium, 361 AS DeliveryID, 0 AS PersonID2Bed, 0 AS R' +
      'elatedID, '#13#10'                           0 AS CostDownSave, 0 AS T' +
      'ransmittal, 0 AS UseOtherID, Documents.TopicCode AS StuffCode, '#39 +
      #39' AS StuffSize, 0 AS StuffDiameter, '#39#39' AS StuffAlloy, '#13#10'        ' +
      '                 0 AS InputEntity, 1 AS OutputEntity, 0 AS Input' +
      'Weight, 0 AS OutputWeight, 0 AS RequestedEntity, 0 AS RequestedW' +
      'eight, 0 AS ControlCode, 1 AS StuffGrade, 0 AS TotalInputPrice, ' +
      'SUM(Documents.Credit) '#13#10'                         AS TotalOutputP' +
      'rice, SUM(Documents.Credit) AS UnitSellPrice, SUM(Documents.Cred' +
      'it) + CASE WHEN DocGroups.DocDate < '#39'93/02/02'#39' THEN 6 ELSE 8 END' +
      ' * SUM(Documents.Credit) '#13#10'                         / 100 AS Tot' +
      'allSellPrice, '#39'   '#39' AS ItemNote, 0 AS acc_TopicCode, 0 AS acc_De' +
      'tailCode, 0 AS acc_CTopicCode, 0 AS acc_CTopicCode2, 0 AS Produc' +
      'tCode, 0 AS ProductModel, 0 AS OrderState, 0 AS Shift, '#13#10'       ' +
      '                  0 AS MachineWeight, 0 AS TotalWeight, 0 AS Mac' +
      'hineFullWeight, 0 AS SugarCo, 0 AS SugarEntity, 0 AS acc_CTopicC' +
      'ode3, 0 AS UnitCommission, '#13#10'                         CASE WHEN ' +
      'DocGroups.DocDate < '#39'93/02/02'#39' THEN 6 ELSE 9 END AS TaxCo, CASE ' +
      'WHEN DocGroups.DocDate <= '#39'93/02/02'#39' THEN 6 ELSE 9 END * SUM(Doc' +
      'uments.Credit) / 100 AS TaxValue'#13#10#9#9#9#9#9#9' ,0 as TotalValue  ,0 as' +
      ' ReciptValue,GETDATE() AS ModifyDate'#13#10#13#10#13#10'FROM           :Acc_Fa' +
      'raRayaneh.Acc.Documents AS Documents INNER JOIN'#13#10'               ' +
      '          :Acc_FaraRayaneh.Acc.DocGroups AS DocGroups ON Documen' +
      'ts.Serial = DocGroups.Serial AND Documents.CompanyCode = DocGrou' +
      'ps.CompanyCode AND Documents.YearID = DocGroups.YearID'#13#10'WHERE (D' +
      'ocuments.TopicCode BETWEEN @TopicCodeFrom AND @TopicCodeTo ) '#13#10' ' +
      ' AND (DocGroups.CompanyCode BETWEEN @CompanyCodeFrom AND @Compan' +
      'yCodeTo ) '#13#10'  AND (DocGroups.YearID = @YearID)'#13#10'  AND (DocGroups' +
      '.DocDate BETWEEN @DocDateFrom AND @DocDateTo ) '#13#10#13#10'  '#13#10#13#10'GROUP B' +
      'Y DocGroups.Serial, DocGroups.DocDate, Documents.TopicCode, DocG' +
      'roups.YearID, DocGroups.CompanyCode,DocGroups.SecondaryDocNo'#13#10#13#10 +
      'ORDER BY DocDate,DocGroups.Serial'#13#10#13#10'---------------------------' +
      '--------------- U P D A T E ----- TotalValue AND ReciptValue ---' +
      '-------------------------------'#13#10'UPDATE       @ReciptsImport'#13#10'SE' +
      'T            TotalValue = goal.TotalValue, ReciptValue = goal.To' +
      'tal'#13#10'FROM            @ReciptsImport as a INNER JOIN'#13#10'           ' +
      '                  (SELECT        Serial, SUM(TotalOutputPrice) +' +
      ' SUM(TaxValue) AS TotalValue, SUM(TotalOutputPrice) AS Total'#13#10'  ' +
      '                              FROM            @ReciptsImport AS ' +
      'aaaaa_1'#13#10'                                GROUP BY Serial) AS goa' +
      'l ON a.Serial = goal.Serial'#13#10'-----------------------------------' +
      '------- U P D A T E ----- TotalValue AND ReciptValue -----------' +
      '-----------------------'#13#10#13#10#13#10#13#10'     RETURN'#13#10'END'#13#10
    Connection = DmF.adcBSell
    Parameters = <
      item
        Name = 'Acc_FaraRayaneh.Acc.Documents'
        DataType = ftWideString
        Size = 135
        Value = 'Acc_FaraRayaneh.Acc.Documents'
      end
      item
        Name = 'Acc_FaraRayaneh.Acc.DocGroups'
        DataType = ftWideString
        Size = 29
        Value = 'Acc_FaraRayaneh.Acc.DocGroups'
      end>
    Left = 80
    Top = 112
  end
  object qryinit: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  *  '
      ' FROM    ReciptTypes')
    Left = 702
    Top = 156
  end
  object spLinksServer_NewRecipts: TADOStoredProc
    Connection = DmF.adcBSell
    CommandTimeout = 0
    ProcedureName = 'LinksServer_NewRecipts;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ReciptDateFrom'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@ReciptDateTo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 304
    Top = 94
  end
  object sp_ReciptsImportBase: TADOStoredProc
    Connection = DmF.adcBSell
    CommandTimeout = 0
    ProcedureName = 'Sp_ReciptsImportBase'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@DateFrom'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@DateTo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 200
    Top = 286
  end
  object cmdFirstRun2: TADOCommand
    CommandText = 
      'CREATE PROCEDURE Sp_ReciptsImportBase'#13#10'@DateFrom char(10),'#13#10'@Dat' +
      'eTo char(10)'#13#10'AS'#13#10'SET NOCOUNT ON'#13#10'BEGIN'#13#10#13#10'select 0'#13#10'--INSERT IN' +
      'TO Customers'#13#10'--                         (CustID,ModifyDate,Cust' +
      'omerGrpID, CustName, CustFirstName, AlternativeCustID)'#13#10'--SELECT' +
      '  (SELECT max( CustID)  from  Customers)+ ROW_NUMBER() OVER(ORDE' +
      'R BY CustName ASC) as CustID ,GETDATE() AS ModifyDate  ,1 as Cus' +
      'tomerGrpID ,'#13#10'--* from('#13#10'--SELECT distinct  FamilyName as CustNa' +
      'me, Familyshort as CustFirstName , FamilyID as AlternativeCustID' +
      #13#10'--FROM            Sheet1$ LEFT OUTER JOIN'#13#10'--                 ' +
      '        Customers AS Customers_1 ON Sheet1$.FamilyID = Customers' +
      '_1.AlternativeCustID'#13#10'--WHERE        (Customers_1.CustID IS NULL' +
      ') '#13#10'-- --AND (Sheet1$.RequestDate BETWEEN @DateFrom AND @DateTo)' +
      #13#10'-- )abcd'#13#10#13#10#13#10'END'
    Connection = DmF.adcBSell
    Parameters = <>
    Left = 80
    Top = 184
  end
  object qryDeficits: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'SELECT      *'
      'FROM            ReciptsDeficits'
      'WHERE        (ReciptID = 0)')
    Left = 456
    Top = 336
  end
end
