inherited RequestManagementF: TRequestManagementF
  Caption = #1605#1583#1740#1585#1740#1578' '#1583#1585#1582#1608#1575#1587#1578' '#1705#1575#1604#1575' '#1575#1586' '#1575#1606#1576#1575#1585
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    inherited BtnReject: TBitBtn
      Tag = 25
    end
    object btnSort: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1740#1576
      TabOrder = 1
    end
    object btnSearch_: TBitBtn
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
      TabOrder = 2
    end
    object btnSendExcel: TBitBtn
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
      TabOrder = 3
    end
    object btnPrint: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alLeft
      Caption = #1670#1575#1662
      TabOrder = 4
    end
    object btnSave: TBitBtn
      AlignWithMargins = True
      Left = 711
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSave
      Align = alRight
      Caption = #1579#1576#1578
      TabOrder = 5
    end
    object btnFilter: TBitBtn
      AlignWithMargins = True
      Left = 630
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
    object chkCheck: TCheckBox
      Left = 1
      Top = 1
      Width = 312
      Height = 51
      Action = actCheck
      Align = alLeft
      BiDiMode = bdRightToLeft
      Caption = #1570#1740#1575' '#1601#1585#1605' '#1607#1575#1740' '#1583#1585#1582#1608#1575#1587#1578' '#1582#1585#1740#1583' '#1576#1607' '#1578#1601#1705#1740#1705' '#1608#1575#1581#1583' '#1605#1578#1602#1575#1590#1740' '#1579#1576#1578' '#1588#1608#1606#1583' '
      ParentBiDiMode = False
      TabOrder = 0
    end
  end
  inherited Panel3: TPanel
    Height = 423
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 786
      Height = 403
      Align = alClient
      DataSource = srcManage
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ReciptNumber'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptDate'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptCaption'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustName'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StoreID'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_StoreName'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StuffCode'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_StuffName'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UnitName'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Entity1'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EntityTahvile'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RemainEntity'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InventoryEntity'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AvailableTahvileEntity'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AvailablePurchaseEntity'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ItemNote'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'YearID'
          Visible = True
        end>
    end
    object pb1: TProgressBar
      Left = 2
      Top = 405
      Width = 786
      Height = 17
      Align = alBottom
      Smooth = True
      SmoothReverse = True
      Step = 1
      TabOrder = 1
    end
  end
  inherited ActionList: TActionList
    Left = 576
    Top = 0
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1740#1576
      OnExecute = actSortExecute
    end
    object actSendExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExcelExecute
    end
    object actSave: TAction
      Caption = #1579#1576#1578
      OnExecute = actSaveExecute
    end
    object actCheck: TAction
      Caption = 'actCheck'
      OnExecute = actCheckExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 96
    Top = 393
  end
  object qryManage: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryManageAfterOpen
    Parameters = <
      item
        Name = 'StuffCodeFrom'
        DataType = ftWideString
        Size = 10
        Value = '0'
      end
      item
        Name = 'StuffCodeTo'
        DataType = ftWideString
        Size = 10
        Value = '99999999'
      end
      item
        Name = 'StoreIDFrom'
        DataType = ftWideString
        Size = 4
        Value = '0'
      end
      item
        Name = 'StoreIDTo'
        DataType = ftWideString
        Size = 4
        Value = '999'
      end
      item
        Name = 'YearIDFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'RcpNumberFrom'
        DataType = ftWideString
        Size = 10
        Value = '0'
      end
      item
        Name = 'RcpNumberTo'
        DataType = ftWideString
        Size = 10
        Value = '99999999'
      end
      item
        Name = 'PersonFrom'
        DataType = ftWideString
        Size = 10
        Value = '0'
      end
      item
        Name = 'PersonTo'
        DataType = ftWideString
        Size = 10
        Value = '99999999'
      end
      item
        Name = 'DateFrom'
        DataType = ftWideString
        Size = 10
        Value = '11/11/11'
      end
      item
        Name = 'DateTo'
        DataType = ftWideString
        Size = 10
        Value = '9999/99/99'
      end
      item
        Name = 'ReciptType'
        DataType = ftWideString
        Size = 4
        Value = '21'
      end>
    SQL.Strings = (
      'DECLARE @StuffFrom BIGINT'
      'DECLARE @StuffTo BIGINT'
      'DECLARE @StoreFrom INT'
      'DECLARE @StoreTo INT'
      'DECLARE @YearFrom INT'
      'DECLARE @YearTo INT'
      'SET @StuffFrom = :StuffCodeFrom'
      'SET @StuffTo = :StuffCodeTo'
      'SET @StoreFrom = :StoreIDFrom'
      'SET @StoreTo = :StoreIDTo'
      'SET @YearFrom = :YearIDFrom'
      'SET @YearTo = :YearIDTo'
      ''
      
        'SELECT  ReciptItems.YearID, ReciptItems.ReciptItemID, Recipts.Re' +
        'ciptNumber,'
      
        '        Recipts.ReciptDate, Recipts.PersonID1 as PersonID, Custo' +
        'mers.CustName,'
      
        '        ReciptItems.StuffCode, StuffCoding.c_StuffName, Units.Un' +
        'itName,'
      
        '        ROUND(ReciptItems.InputEntity + ReciptItems.OutputEntity' +
        ', 3) AS Entity1,'
      
        '        ROUND(ISNULL(AidRecallSpecial.Entity, 0), 3) as EntityTa' +
        'hvile,'
      
        '        ROUND(ReciptItems.InputEntity + ReciptItems.OutputEntity' +
        ' - '
      '        ISNULL(AidRecallSpecial.Entity, 0), 3) AS RemainEntity,'
      '        Mojudi.Entity AS InventoryEntity, '
      
        '       case when  ROUND(ReciptItems.InputEntity + ReciptItems.Ou' +
        'tputEntity - '
      
        '        ISNULL(AidRecallSpecial.Entity, 0), 3) >  Mojudi.Entity ' +
        'then  '
      
        '        Mojudi.Entity else ROUND(ReciptItems.InputEntity + Recip' +
        'tItems.OutputEntity - '
      
        '        ISNULL(AidRecallSpecial.Entity, 0), 3) end as AvailableT' +
        'ahvileEntity ,'
      
        '        case when  ROUND(ReciptItems.InputEntity + ReciptItems.O' +
        'utputEntity - '
      
        '        ISNULL(AidRecallSpecial.Entity, 0), 3) -  Mojudi.Entity ' +
        '>0 then '
      
        '        ROUND(ReciptItems.InputEntity + ReciptItems.OutputEntity' +
        ' - '
      
        '        ISNULL(AidRecallSpecial.Entity, 0), 3) -  Mojudi.Entity ' +
        'else 0 end as AvailablePurchaseEntity ,'
      '        ReciptTypes.ReciptCaption,'
      '        Recipts.StoreID, Stores.c_StoreName ,'
      '        ReciptItems.ItemNote'
      'FROM    ReciptItems INNER JOIN'
      
        '        Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND R' +
        'eciptItems.ServerID = Recipts.ServerID AND ReciptItems.YearID = ' +
        'Recipts.YearID INNER JOIN'
      
        '        ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptTy' +
        'pe INNER JOIN'
      '        Stores ON Recipts.StoreID = Stores.n_StoreID INNER JOIN'
      '        Units INNER JOIN'
      
        '        StuffCoding ON Units.UnitCode = StuffCoding.n_UnitCode O' +
        'N ReciptItems.StuffCode = StuffCoding.c_StuffCode INNER JOIN'
      
        '        dbo.StoreEntity(@StuffFrom, @StuffTo, @StoreFrom, @Store' +
        'To, @YearFrom, @YearTo) AS Mojudi'
      
        '        ON Mojudi.StuffCode = ReciptItems.StuffCode AND Mojudi.Y' +
        'earID = ReciptItems.YearID AND Mojudi.StoreID = Recipts.StoreID ' +
        'INNER JOIN '
      
        '        Customers ON Recipts.PersonID1 = Customers.CustID LEFT O' +
        'UTER JOIN'
      
        '        dbo.AidRecallSpecial(0, 1, 2, 3, 4, 5,6,7,8,9,10) AS Aid' +
        'RecallSpecial ON ReciptItems.StuffCode = AidRecallSpecial.StuffC' +
        'ode AND ReciptItems.ReciptItemID = AidRecallSpecial.preReciptIte' +
        'mID AND'
      '---        ReciptItems.YearID = AidRecallSpecial.YearID'
      ''
      
        'WHERE  (ReciptItems.InputEntity + ReciptItems.OutputEntity - ISN' +
        'ULL(AidRecallSpecial.Entity, 0)> 0.0001)'
      
        '        AND (ReciptItems.StuffCode BETWEEN @StuffFrom AND @Stuff' +
        'To)'
      '        AND (Recipts.StoreID BETWEEN @StoreFrom AND @StoreTo)'
      
        '        AND (Recipts.ReciptNumber BETWEEN :RcpNumberFrom AND :Rc' +
        'pNumberTo)'
      
        '        AND (Recipts.PersonID1 BETWEEN :PersonFrom AND :PersonTo' +
        '   )'
      '        AND (Recipts.ReciptDate BETWEEN :DateFrom AND :DateTo )'
      '        AND(Recipts.YearID BETWEEN  @YearFrom AND @YearTo  )  '
      '        AND (Recipts.ReciptType IN (:ReciptType))'
      '     --   AND(Recipts.ReciptState = 1 ) '
      'ORDER BY Recipts.StoreID')
    Left = 232
    Top = 136
    object qryManageYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryManageReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
    end
    object qryManageReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578
      FieldName = 'ReciptNumber'
    end
    object strngfldManageReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1740#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryManagePersonID: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583' '#1608#1575#1581#1583' '#1605#1578#1602#1575#1590#1740
      FieldName = 'PersonID'
    end
    object strngfldManageCustName: TStringField
      DisplayLabel = #1606#1575#1605' '#1608#1575#1581#1583' '#1605#1578#1602#1575#1590#1740
      FieldName = 'CustName'
      Size = 150
    end
    object qryManageStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1705#1583' '#1705#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object strngfldManagec_StuffName: TStringField
      DisplayLabel = #1606#1575#1605' '#1705#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 150
    end
    object strngfldManageUnitName: TStringField
      DisplayLabel = #1608#1575#1581#1583
      FieldName = 'UnitName'
      Size = 50
    end
    object qryManageEntity1: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1575#1608#1604#1740#1607
      FieldName = 'Entity1'
      ReadOnly = True
    end
    object qryManageEntityTahvile: TFloatField
      Tag = 3
      DisplayLabel = #1578#1581#1608#1740#1604#1740
      FieldName = 'EntityTahvile'
      ReadOnly = True
    end
    object qryManageRemainEntity: TFloatField
      Tag = 3
      DisplayLabel = #1576#1575#1602#1740#1605#1575#1606#1583#1607
      FieldName = 'RemainEntity'
      ReadOnly = True
    end
    object qryManageInventoryEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1608#1580#1608#1583#1740' '#1575#1606#1576#1575#1585
      FieldName = 'InventoryEntity'
      ReadOnly = True
    end
    object qryManageAvailableTahvileEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1602#1575#1576#1604' '#1578#1581#1608#1740#1604
      FieldName = 'AvailableTahvileEntity'
      ReadOnly = True
    end
    object qryManageAvailablePurchaseEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1602#1575#1576#1604' '#1582#1585#1740#1583
      FieldName = 'AvailablePurchaseEntity'
      ReadOnly = True
    end
    object strngfldManageReciptCaption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1601#1585#1605
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryManageStoreID: TSmallintField
      Tag = 3
      DisplayLabel = #1705#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
    end
    object strngfldManagec_StoreName: TStringField
      DisplayLabel = #1606#1575#1605' '#1575#1606#1576#1575#1585
      FieldName = 'c_StoreName'
      Size = 70
    end
    object strngfldManageItemNote: TStringField
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'ItemNote'
      Size = 100
    end
  end
  object srcManage: TDataSource
    DataSet = qryManage
    Left = 304
    Top = 136
  end
  object qryLookUp: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StuffFrom'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'StuffTo'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'StoreFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'StoreTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Year'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     YearID, StoreID, StuffCode, SUM(InputEntity - OutputE' +
        'ntity) AS Entity'
      'FROM         ReciptItems_Stock'
      
        'WHERE     (EffectType IN (2, 4, 6, 7)) AND (ReciptState < 3) AND' +
        ' (StuffCode BETWEEN :StuffFrom AND :StuffTo) AND '
      
        '                 (StoreID BETWEEN :StoreFrom AND :StoreTo) AND (' +
        'YearID = :Year) '
      'GROUP BY YearID, StoreID, StuffCode')
    Left = 40
    Top = 392
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcManage
    UserName = 'DBPipeline1'
    Left = 144
    Top = 392
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 200
    Top = 392
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
