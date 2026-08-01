inherited rptBuySpecialOnCostomersF: TrptBuySpecialOnCostomersF
  Left = 349
  Top = 175
  Caption = #1711#1586#1575#1585#1588' '#1585#1610#1586' '#1582#1585#1610#1583' '#1607#1575#1610' '#1582#1575#1589' '#1605#1588#1578#1585#1610#1575#1606
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    object BitBtn7: TBitBtn
      Left = 699
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 622
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662
      TabOrder = 2
    end
    object BitBtn6: TBitBtn
      Left = 250
      Top = 8
      Width = 75
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 172
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn3: TBitBtn
      Left = 94
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
    object LblPerson1: TLabel
      Left = 271
      Top = 10
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1605#1588#1578#1585#1610
      FocusControl = EdtPersonID1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 189
      Top = 5
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object DBTextPersonID1: TDBText
      Left = 8
      Top = 8
      Width = 180
      Height = 17
      Color = 13948116
      DataField = 'CustName'
      DataSource = srccust
      ParentColor = False
      Transparent = False
    end
    object EdtPersonID1: TDBEdit
      Left = 213
      Top = 6
      Width = 57
      Height = 21
      DataField = 'PersonID1'
      DataSource = srccust
      TabOrder = 0
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 27
      Width = 180
      Height = 18
      DataSource = srccust
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    Height = 423
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 786
      Height = 401
      Align = alClient
      Color = clCream
      DataSource = SrcBuy
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ReadOnly = True
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
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptDate'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'shiftName'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RequestedEntity'
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WaterCo'
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InputEntity'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ContactRate'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NameAmount1'
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReplaceRate1'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NameAmount2'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReplaceRate2'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NameAmount3'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReplaceRate3'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NameAmount4'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReplaceRate4'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NameAmount5'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReplaceRate5'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UnitSellPrice'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalInputPrice'
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonID2'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'person2Name'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ItemNote'
          Width = 45
          Visible = True
        end>
    end
    object StatusBar1: TStatusBar
      Left = 2
      Top = 403
      Width = 786
      Height = 19
      BiDiMode = bdRightToLeft
      Panels = <
        item
          Width = 160
        end
        item
          Width = 160
        end
        item
          Width = 160
        end
        item
          Text = #1580#1605#1593' '#1603#1604
          Width = 160
        end>
      ParentBiDiMode = False
    end
  end
  inherited ActionList: TActionList
    Left = 456
    inherited DataSetInsert1: TDataSetInsert [0]
    end
    inherited DataSetEdit1: TDataSetEdit [1]
    end
    inherited DataSetPost1: TDataSetPost [2]
    end
    inherited DataSetCancel1: TDataSetCancel [3]
    end
    inherited DataSetDelete1_: TDataSetDelete [4]
    end
    inherited actshowChart: TAction [5]
    end
    object actFilter: TAction [6]
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actPrint: TAction [7]
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actExcel: TAction [8]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actExcelExecute
    end
    inherited actSearch_: TAction [9]
      OnExecute = actSearch_Execute
    end
    object actSort: TAction [10]
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    inherited actExit: TAction [11]
    end
  end
  inherited ImageList1: TImageList
    Left = 536
    Top = 17
  end
  object qryBuy: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryBuyAfterOpen
    Parameters = <
      item
        Name = 'ReNumberFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ReNumberTo'
        DataType = ftString
        Size = 6
        Value = '999999'
      end
      item
        Name = 'ReDateFrom'
        DataType = ftString
        Size = 10
        Value = '0'
      end
      item
        Name = 'ReDateTo'
        DataType = ftString
        Size = 10
        Value = '9999/99/99'
      end
      item
        Name = 'PersonID1From'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonID1To'
        DataType = ftString
        Size = 5
        Value = '99999'
      end
      item
        Name = 'StoreIDFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'StoreIDTo'
        DataType = ftString
        Size = 2
        Value = '99'
      end
      item
        Name = 'FormType'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'select func.*,dbo.Customers.CustName as person1Name,Customers_1.' +
        'CustName as person2Name'
      'from'
      '('
      '  SELECT  dbo.Recipts.ReciptNumber, dbo.Recipts.ReciptDate,'
      
        '          sum((case when dbo.PurchaseEffect.Effectid=1 then  dbo' +
        '.ReciptPurchaseEffect.Amount else 0 end))as NameAmount1'
      
        '          ,sum((case when dbo.PurchaseEffect.Effectid=2 then  db' +
        'o.ReciptPurchaseEffect.Amount else 0 end))as NameAmount2'
      
        '          ,sum((case when dbo.PurchaseEffect.Effectid=3 then  db' +
        'o.ReciptPurchaseEffect.Amount else 0 end))as NameAmount3'
      
        '          ,sum((case when dbo.PurchaseEffect.Effectid=4 then  db' +
        'o.ReciptPurchaseEffect.Amount else 0 end))as NameAmount4'
      
        '          ,sum((case when dbo.PurchaseEffect.Effectid=5 then  db' +
        'o.ReciptPurchaseEffect.Amount else 0 end))as NameAmount5'
      ''
      
        '          ,sum((case when dbo.PurchaseEffect.Effectid=1 then  db' +
        'o.ReciptPurchaseEffect.ReplaceRate else 0 end))as ReplaceRate1'
      
        '          ,sum((case when dbo.PurchaseEffect.Effectid=2 then  db' +
        'o.ReciptPurchaseEffect.ReplaceRate else 0 end))as ReplaceRate2'
      
        '          ,sum((case when dbo.PurchaseEffect.Effectid=3 then  db' +
        'o.ReciptPurchaseEffect.ReplaceRate else 0 end))as ReplaceRate3'
      
        '          ,sum((case when dbo.PurchaseEffect.Effectid=4 then  db' +
        'o.ReciptPurchaseEffect.ReplaceRate else 0 end))as ReplaceRate4'
      
        '          ,sum((case when dbo.PurchaseEffect.Effectid=5 then  db' +
        'o.ReciptPurchaseEffect.ReplaceRate else 0 end))as ReplaceRate5'
      ''
      
        '          ,dbo.ReciptItems.ContactRate,dbo.ReciptItems.InputEnti' +
        'ty, dbo.ReciptItems.UnitSellPrice,dbo.ReciptItems.TotalInputPric' +
        'e'
      
        '          , dbo.Recipts.PersonID1, dbo.Recipts.PersonID2,dbo.Rec' +
        'ipts.StoreID , dbo.ReciptItems.WaterCo,dbo.ReciptItems.Requested' +
        'Entity'
      
        '          ,dbo.ReciptItems.shift, dbo.LookUps.Name as shiftName ' +
        ',dbo.ReciptItems.ItemNote'
      'FROM         dbo.LookUps INNER JOIN'
      '                      dbo.Recipts INNER JOIN'
      
        '                      dbo.ReciptItems ON dbo.Recipts.ReciptID = ' +
        'dbo.ReciptItems.ReciptID AND '
      
        '                      dbo.Recipts.ServerID = dbo.ReciptItems.Ser' +
        'verID AND dbo.Recipts.YearID = dbo.ReciptItems.YearID'
      ''
      ''
      ' ON dbo.LookUps.LookUpID = dbo.ReciptItems.Shift LEFT OUTER JOIN'
      '                      dbo.PurchaseEffect INNER JOIN'
      
        '                      dbo.ReciptPurchaseEffect ON dbo.PurchaseEf' +
        'fect.EffectID = dbo.ReciptPurchaseEffect.EffectID ON'
      
        '                      dbo.ReciptItems.ReciptItemID = dbo.ReciptP' +
        'urchaseEffect.ReciptItemID'
      
        '      where  (dbo.Recipts.ReciptNumber between :ReNumberFrom and' +
        ' :ReNumberTo)and'
      
        '         (dbo.Recipts.ReciptDate between :ReDateFrom and :ReDate' +
        'To)and'
      
        '         (dbo.Recipts.PersonID1 between :PersonID1From and :Pers' +
        'onID1To)and'
      
        '         (dbo.Recipts.StoreID between :StoreIDFrom and :StoreIDT' +
        'o) and'
      '          dbo.Recipts.ReciptType=:FormType '
      ''
      
        '  group by dbo.Recipts.ReciptDate, dbo.Recipts.ReciptNumber,dbo.' +
        'ReciptItems.ContactRate, dbo.ReciptItems.InputEntity, dbo.Recipt' +
        'Items.UnitSellPrice,'
      
        '           dbo.ReciptItems.TotalInputPrice , dbo.Recipts.PersonI' +
        'D2, dbo.ReciptItems.WaterCo,'
      
        '           dbo.ReciptItems.RequestedEntity,dbo.Recipts.StoreID, ' +
        'dbo.Recipts.PersonID1, dbo.Recipts.PersonID2,dbo.ReciptItems.shi' +
        'ft'
      '           , dbo.LookUps.Name ,dbo.ReciptItems.ItemNote'
      '           )'
      
        'func INNER JOIN  dbo.Customers ON func.PersonID1 = dbo.Customers' +
        '.CustID'
      
        '       INNER JOIN  dbo.Customers Customers_1 ON func.PersonID2 =' +
        ' Customers_1.CustID'
      ''
      ''
      ''
      ' ')
    Left = 184
    Top = 176
    object qryBuyReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'ReciptNumber'
    end
    object qryBuyReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      EditMask = '!9999/99/00;1;_'
      FixedChar = True
      Size = 10
    end
    object qryBuyPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1601#1585#1608#1588#1606#1583#1607
      FieldName = 'PersonID1'
    end
    object qryBuypersonName1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1601#1585#1608#1588#1606#1583#1607
      FieldName = 'person1Name'
      Size = 60
    end
    object qryBuyRequestedEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'RequestedEntity'
    end
    object qryBuyWaterCo: TFloatField
      Tag = 3
      DisplayLabel = #1583#1585#1589#1583' '#1570#1576
      FieldName = 'WaterCo'
    end
    object qryBuyInputEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1606#1607#1575#1610#1610
      FieldName = 'InputEntity'
    end
    object qryBuyContactRate: TFloatField
      Tag = 3
      DisplayLabel = #1601#1610' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'ContactRate'
    end
    object qryBuyUnitSellPrice: TFMTBCDField
      Tag = 3
      DisplayLabel = #1601#1610' '#1606#1607#1575#1610#1610
      FieldName = 'UnitSellPrice'
      Precision = 19
    end
    object qryBuyTotalInputPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1603#1604
      FieldName = 'TotalInputPrice'
      currency = True
      Precision = 19
    end
    object qryBuyPersonID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607
      FieldName = 'PersonID2'
    end
    object qryBuypersonName2: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607
      FieldName = 'person2Name'
      Size = 60
    end
    object qryBuyStoreID: TSmallintField
      FieldName = 'StoreID'
    end
    object qryBuyReplaceRate1: TFloatField
      DisplayLabel = #1578#1594#1610#1610#1585' '#1601#1610
      FieldName = 'ReplaceRate1'
    end
    object qryBuyReplaceRate2: TFloatField
      DisplayLabel = #1578#1594#1610#1610#1585' '#1601#1610
      FieldName = 'ReplaceRate2'
    end
    object qryBuyReplaceRate3: TFloatField
      DisplayLabel = #1578#1594#1610#1610#1585' '#1601#1610
      FieldName = 'ReplaceRate3'
    end
    object qryBuyReplaceRate4: TFloatField
      DisplayLabel = #1578#1594#1610#1610#1585' '#1601#1610
      FieldName = 'ReplaceRate4'
    end
    object qryBuyReplaceRate5: TFloatField
      DisplayLabel = #1578#1594#1610#1610#1585' '#1601#1610
      FieldName = 'ReplaceRate5'
    end
    object qryBuyNameAmount1: TFloatField
      DisplayLabel = #1670#1585#1576#1610
      FieldName = 'NameAmount1'
    end
    object qryBuyNameAmount2: TFloatField
      DisplayLabel = #1583#1575#1606#1587#1610#1578#1607
      FieldName = 'NameAmount2'
    end
    object qryBuyNameAmount3: TFloatField
      DisplayLabel = #1575#1587#1610#1583#1610#1578#1607
      FieldName = 'NameAmount3'
    end
    object qryBuyNameAmount4: TFloatField
      DisplayLabel = #1578#1587#1578' '#1575#1604#1603#1604
      FieldName = 'NameAmount4'
      OnGetText = qryBuyNameAmount4GetText
    end
    object qryBuyNameAmount5: TFloatField
      FieldName = 'NameAmount5'
    end
    object qryBuyshift: TIntegerField
      DisplayLabel = #1588#1610#1601#1578' '#1578#1581#1608#1610#1604
      FieldName = 'shift'
    end
    object qryBuyshiftName: TStringField
      DisplayLabel = #1588#1610#1601#1578' '#1578#1581#1608#1610#1604
      FieldName = 'shiftName'
      Size = 50
    end
    object qryBuyItemNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ItemNote'
      Size = 100
    end
  end
  object SrcBuy: TDataSource
    DataSet = qryBuy
    Left = 104
    Top = 176
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\rptBuySpesial_2.rtm'
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
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
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
    PreviewFormSettings.ZoomSetting = zs100Percent
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
    TextSearchSettings.Enabled = False
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
    Left = 704
    Top = 128
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 27252
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 10319
        mmLeft = 0
        mmTop = 16933
        mmWidth = 196850
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label202'
        Border.mmPadding = 0
        Caption = #1670#1585#1576#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Visible = False
        mmHeight = 4763
        mmLeft = 115094
        mmTop = 17727
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 54769
        mmTop = 17198
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 73025
        mmTop = 0
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption'
        OnGetText = ppLblCaptionGetText
        Border.mmPadding = 0
        Caption = #1711#1600#1600#1586#1575#1585#1588' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7144
        mmLeft = 91281
        mmTop = 7144
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lbprintdate'
        OnGetText = ppLblPrintDateGetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1711#1586#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 2910
        mmTop = 2910
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '#1588#1605#1575#1585#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3969
        mmLeft = 181769
        mmTop = 17463
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 166952
        mmTop = 18256
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 180975
        mmTop = 16933
        mmWidth = 4763
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 154517
        mmTop = 16933
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1601#1610' '#1606#1607#1575#1610#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 35454
        mmTop = 18785
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line52'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 34925
        mmTop = 17198
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 20902
        mmTop = 18785
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594' '#1603#1604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 529
        mmTop = 18785
        mmWidth = 19050
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line60'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 20108
        mmTop = 17198
        mmWidth = 4763
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1594#1610#1610#1585#1601#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5821
        mmLeft = 100542
        mmTop = 19050
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 99748
        mmTop = 17463
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 114300
        mmTop = 17198
        mmWidth = 3440
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '#1587#1585#1610#1575#1604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 181769
        mmTop = 21431
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        OnGetText = ppSysVarPageNoGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 2910
        mmTop = 7938
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1670#1585#1576#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5556
        mmLeft = 142611
        mmTop = 19315
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 142082
        mmTop = 16933
        mmWidth = 4763
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1580#1575#1610#1586#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Visible = False
        WordWrap = True
        mmHeight = 4763
        mmLeft = 115094
        mmTop = 21696
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1583#1585#1589#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 131234
        mmTop = 17727
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 130440
        mmTop = 17463
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label201'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1670#1585#1576#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 131234
        mmTop = 21960
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        Border.mmPadding = 0
        Caption = #1601#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 155046
        mmTop = 17463
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1602#1585#1575#1585#1583#1575#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4763
        mmLeft = 155046
        mmTop = 21431
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 166423
        mmTop = 17198
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'person1Name'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 143140
        mmTop = 8731
        mmWidth = 24342
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText18'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'PersonID1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 174625
        mmTop = 7673
        mmWidth = 17992
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1608#1590#1610#1581#1575#1578' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5821
        mmLeft = 55563
        mmTop = 19050
        mmWidth = 43656
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 193411
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLin4Position: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Lin4Position'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'ReciptNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 181505
        mmTop = 0
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'ReciptDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 166952
        mmTop = 0
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 180975
        mmTop = 0
        mmWidth = 4763
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'ContactRate'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 155046
        mmTop = 0
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 154517
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'UnitSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 35454
        mmTop = 0
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line53'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 34925
        mmTop = 0
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'InputEntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 20638
        mmTop = 0
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line57'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 20108
        mmTop = 0
        mmWidth = 3175
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'TotalInputPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 529
        mmTop = 0
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'ReplaceRate1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 100542
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 99748
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 114300
        mmTop = 0
        mmWidth = 2381
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line29'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 54769
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line102'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 142082
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'NameAmount1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 142611
        mmTop = 0
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        Border.mmPadding = 0
        Caption = '3.2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 131234
        mmTop = 0
        mmWidth = 10583
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line26'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 130440
        mmTop = 0
        mmWidth = 2381
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 166688
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        OnGetText = ppDBText2GetText
        Border.mmPadding = 0
        DataField = 'NameAmount1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0 ;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 115094
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'itemnote'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 55563
        mmTop = 529
        mmWidth = 43656
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 12700
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 7673
        mmLeft = 0
        mmTop = 0
        mmWidth = 196586
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1606#1602#1604' '#1576#1607'..'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 55298
        mmTop = 529
        mmWidth = 19579
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line51'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 54769
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc26'
        Border.mmPadding = 0
        DataField = 'UnitSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 35454
        mmTop = 529
        mmWidth = 19050
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line55'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 34925
        mmTop = 0
        mmWidth = 11377
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc28'
        Border.mmPadding = 0
        DataField = 'InputEntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 20638
        mmTop = 529
        mmWidth = 14023
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line59'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 20108
        mmTop = 0
        mmWidth = 3175
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc30'
        Border.mmPadding = 0
        DataField = 'TotalInputPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 529
        mmTop = 265
        mmWidth = 19315
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'UnitSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DBCalcType = dcAverage
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 77788
        mmTop = 794
        mmWidth = 18521
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        Border.mmPadding = 0
        Caption = ': '#1605#1610#1575#1606#1711#1610#1606' '#1601#1610' '#1606#1607#1575#1610#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 96573
        mmTop = 794
        mmWidth = 23813
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 19050
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 196850
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1580#1605#1593
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 57415
        mmTop = 529
        mmWidth = 10848
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line50'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 54769
        mmTop = 0
        mmWidth = 3704
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc25'
        Border.mmPadding = 0
        DataField = 'UnitSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Visible = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 35454
        mmTop = 529
        mmWidth = 19050
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line54'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 34925
        mmTop = 0
        mmWidth = 11377
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc27'
        Border.mmPadding = 0
        DataField = 'InputEntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 20638
        mmTop = 529
        mmWidth = 14023
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line58'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 20108
        mmTop = 0
        mmWidth = 3175
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc29'
        Border.mmPadding = 0
        DataField = 'TotalInputPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 529
        mmTop = 529
        mmWidth = 19315
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1578#1606#1592#1610#1605' '#1603#1606#1606#1583#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 164307
        mmTop = 10319
        mmWidth = 15875
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = #1578#1575#1574#1610#1583' '#1603#1606#1606#1583#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 11377
        mmTop = 10583
        mmWidth = 14817
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = ': '#1605#1610#1575#1606#1711#1610#1606' '#1601#1610' '#1606#1607#1575#1610#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 88900
        mmTop = 529
        mmWidth = 23813
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'UnitSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DBCalcType = dcAverage
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 70115
        mmTop = 529
        mmWidth = 18521
        BandType = 7
        LayerName = Foreground
      end
    end
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
  object ppDBPipeline1: TppDBPipeline
    DataSource = SrcBuy
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 712
    Top = 197
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'ReciptNumber'
      FieldName = 'ReciptNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'ReciptDate'
      FieldName = 'ReciptDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'PersonID1'
      FieldName = 'PersonID1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'person1Name'
      FieldName = 'person1Name'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'RequestedEntity'
      FieldName = 'RequestedEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'WaterCo'
      FieldName = 'WaterCo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'InputEntity'
      FieldName = 'InputEntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'ContactRate'
      FieldName = 'ContactRate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'UnitSellPrice'
      FieldName = 'UnitSellPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'TotalInputPrice'
      FieldName = 'TotalInputPrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'PersonID2'
      FieldName = 'PersonID2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'person2Name'
      FieldName = 'person2Name'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'StoreID'
      FieldName = 'StoreID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'ReplaceRate1'
      FieldName = 'ReplaceRate1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'ReplaceRate2'
      FieldName = 'ReplaceRate2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'ReplaceRate3'
      FieldName = 'ReplaceRate3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'ReplaceRate4'
      FieldName = 'ReplaceRate4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'ReplaceRate5'
      FieldName = 'ReplaceRate5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'NameAmount1'
      FieldName = 'NameAmount1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'NameAmount2'
      FieldName = 'NameAmount2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'NameAmount3'
      FieldName = 'NameAmount3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'NameAmount4'
      FieldName = 'NameAmount4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'NameAmount5'
      FieldName = 'NameAmount5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'shift'
      FieldName = 'shift'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'shiftName'
      FieldName = 'shiftName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
  end
  object qryCust: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryCustAfterScroll
    Parameters = <
      item
        Name = 'ReNumberFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ReNumberTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ReDateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'ReDateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'PersonID1From'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonID1To'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'StoreIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 0
      end
      item
        Name = 'StoreIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 0
      end
      item
        Name = 'FormType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     Recipts.PersonID1, Customers.CustName'
      'FROM         Recipts INNER JOIN'
      
        '                      Customers ON Recipts.PersonID1 = Customers' +
        '.CustID'
      
        'WHERE  (dbo.Recipts.ReciptNumber between :ReNumberFrom and :ReNu' +
        'mberTo)and'
      
        '         (dbo.Recipts.ReciptDate between :ReDateFrom and :ReDate' +
        'To)and'
      
        '         (dbo.Recipts.PersonID1 between :PersonID1From and :Pers' +
        'onID1To)and'
      
        '         (dbo.Recipts.StoreID between :StoreIDFrom and :StoreIDT' +
        'o) and'
      '          dbo.Recipts.ReciptType=:FormType'
      'GROUP BY Recipts.PersonID1, Customers.CustName')
    Left = 264
    Top = 77
    object qryCustPersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object qryCustCustName: TStringField
      FieldName = 'CustName'
      Size = 120
    end
  end
  object srccust: TDataSource
    DataSet = qryCust
    Left = 184
    Top = 77
  end
  object PopList4Print: TPopupMenu
    AutoHotkeys = maManual
    Left = 362
    Top = 247
    object AllClikPop: TMenuItem
      Caption = #1670#1575#1662' 1'
      OnClick = AllPrint
    end
    object N21: TMenuItem
      Tag = 1
      Caption = #1670#1575#1662' 2'
      OnClick = AllPrint
    end
  end
end
