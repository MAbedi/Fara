inherited rptCustTransDetailsF: TrptCustTransDetailsF
  Top = 116
  Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583' '#1582#1585#1610#1583' '#1608' '#1601#1585#1608#1588' '#1607#1585' '#1605#1588#1578#1585#1610
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 256
    Top = 176
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  inherited PnlUnderButton: TPanel
    Top = 476
    object BtnPrint: TBitBtn
      AlignWithMargins = True
      Left = 630
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1670#1575#1662
      TabOrder = 1
      OnClick = BtnPrintClick
      ExplicitLeft = 615
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 711
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 2
      ExplicitLeft = 696
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendToExel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
      ExplicitLeft = 250
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object BitBtn1: TBitBtn
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
      TabOrder = 4
      ExplicitLeft = 172
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 5
      ExplicitLeft = 94
      ExplicitTop = 8
      ExplicitHeight = 25
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Height = 16
    end
    object lblDate: TLabel
      Left = 667
      Top = 38
      Width = 68
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1581#1583#1608#1583#1607' '#1578#1575#1585#1610#1582#1610
    end
    object LblPerson1: TLabel
      Left = 299
      Top = 8
      Width = 75
      Height = 13
      Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610
    end
    object DBText1: TDBText
      Left = 15
      Top = 5
      Width = 189
      Height = 18
      Color = 13948116
      DataField = 'CustName'
      DataSource = srcCustomers
      ParentColor = False
      Transparent = False
    end
    object SpeedButton1: TSpeedButton
      Left = 206
      Top = 3
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object DBEdit1: TDBEdit
      Left = 230
      Top = 4
      Width = 66
      Height = 21
      DataField = 'CustID'
      DataSource = srcCustomers
      TabOrder = 0
      OnKeyDown = DBEdit1KeyDown
    end
    object DBNavigator2: TDBNavigator
      Left = 16
      Top = 26
      Width = 188
      Height = 18
      DataSource = srcCustomers
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    Height = 423
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 786
      Height = 399
      Align = alClient
      Color = clCream
      DataSource = srcCustTrance
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'ReciptNumber'
          Title.Alignment = taCenter
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptDate'
          Title.Alignment = taCenter
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptCaption'
          Title.Alignment = taCenter
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StuffCode'
          Title.Alignment = taCenter
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_StuffName'
          Title.Alignment = taCenter
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UnitName'
          Title.Alignment = taCenter
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StuffSize'
          Title.Alignment = taCenter
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StuffDiameter'
          Title.Alignment = taCenter
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StuffAlloy'
          Title.Alignment = taCenter
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ControlCode'
          Title.Alignment = taCenter
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'entity'
          Title.Alignment = taCenter
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'weight'
          Title.Alignment = taCenter
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ItemNote'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bed'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bes'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end>
    end
    object StatusBar1: TStatusBar
      Left = 2
      Top = 401
      Width = 786
      Height = 21
      Panels = <
        item
          Text = #1580#1605#1593
          Width = 50
        end>
    end
  end
  inherited ActionList: TActionList
    Left = 480
    Top = 0
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actSendToExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExelExecute
    end
    object actPrint1: TAction
      Caption = #1670#1575#1662' '#1605#1602#1583#1575#1585#1610' '#1585#1610#1575#1604#1610
      OnExecute = actPrint1Execute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actPrint2: TAction
      Caption = #1670#1575#1662' '#1605#1602#1583#1575#1585#1610
      OnExecute = actPrint2Execute
    end
  end
  inherited ImageList1: TImageList
    Left = 512
    Top = 1
  end
  object srcCustTrance: TDataSource
    DataSet = qryCustTrance
    Left = 168
    Top = 237
  end
  object qryCustTrance: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryCustTranceAfterOpen
    Parameters = <
      item
        Name = 'bedType1'
        Size = -1
        Value = Null
      end
      item
        Name = 'BedType2'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonID1From'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonID1To'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'StuffCodeFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'StuffCodeTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'bedType3'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonID1From2'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonID1To2'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateFrom2'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateTo2'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     AccTran.*'
      'FROM         ('
      
        'SELECT     Recipts.PersonID1, Recipts.ReciptID, Recipts.ReciptNu' +
        'mber, Recipts.ReciptDate, ReciptTypes.ReciptType,'
      
        '    ReciptTypes.ReciptCaption, ReciptItems.StuffCode, StuffCodin' +
        'g.c_StuffName, Units.UnitName, StuffSize, StuffDiameter,'
      
        '    StuffAlloy, ControlCode, ReciptItems.InputEntity + ReciptIte' +
        'ms.OutputEntity AS entity,'
      
        '    ReciptItems.InputWeight + ReciptItems.OutputWeight AS weight' +
        ','
      
        '    ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice A' +
        'S bed,'
      
        '    ReciptItems.TotalOutputPrice - ReciptItems.TotalOutputPrice ' +
        'AS bes,'
      
        '     3 AS kind, Recipts.StoreID ,ReciptItems.ItemNote+ISNULL(STR' +
        '(ReciptItems.WaterCo),'#39#39') AS ItemNote'
      'FROM'
      '    ReciptItems INNER JOIN'
      
        '    Recipts ON Recipts.ReciptID = ReciptItems.ReciptID AND Recip' +
        'ts.ServerID = ReciptItems.ServerID AND Recipts.YearID = ReciptIt' +
        'ems.YearID  INNER JOIN'
      
        '    ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType I' +
        'NNER JOIN'
      '    Units INNER JOIN'
      
        '    StuffCoding ON Units.UnitCode = StuffCoding.n_UnitCode ON Re' +
        'ciptItems.StuffCode = StuffCoding.c_StuffCode'
      ''
      'WHERE     (ReciptTypes.BedType =:bedType1)'
      '      and (Recipts.ReciptState < 3)'
      'UNION ALL'
      
        'SELECT     Recipts.PersonID1, Recipts.ReciptID, Recipts.ReciptNu' +
        'mber, Recipts.ReciptDate, ReciptTypes.ReciptType,'
      
        '                      ReciptTypes.ReciptCaption, ReciptItems.Stu' +
        'ffCode, StuffCoding.c_StuffName, Units.UnitName, ReciptItems.Stu' +
        'ffSize,'
      
        '                      ReciptItems.StuffDiameter, ReciptItems.Stu' +
        'ffAlloy, ReciptItems.ControlCode,'
      
        '                      ReciptItems.InputEntity + ReciptItems.Outp' +
        'utEntity AS entity,'
      
        '                      ReciptItems.InputWeight + ReciptItems.Outp' +
        'utWeight AS weight,0 AS bed,'
      
        '                      ReciptItems.TotalInputPrice + ReciptItems.' +
        'TotalOutputPrice  AS Bes, 3 AS kind, Recipts.StoreID,ReciptItems' +
        '.ItemNote+ISNULL(STR(ReciptItems.WaterCo),'#39#39') AS ItemNote'
      'FROM'
      '                      ReciptItems INNER JOIN'
      
        '                      Recipts ON Recipts.ReciptID = ReciptItems.' +
        'ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Recipts' +
        '.YearID = ReciptItems.YearID INNER JOIN'
      
        '                      ReciptTypes ON Recipts.ReciptType = Recipt' +
        'Types.ReciptType INNER JOIN'
      '                      Units INNER JOIN'
      
        '                      StuffCoding ON Units.UnitCode = StuffCodin' +
        'g.n_UnitCode ON ReciptItems.StuffCode = StuffCoding.c_StuffCode'
      ''
      
        'WHERE     (ReciptTypes.BesType =:BedType2)and (Recipts.ReciptSta' +
        'te < 3)'
      ') AccTran'
      
        'WHERE     (PersonID1 BETWEEN :PersonID1From  AND :PersonID1To ) ' +
        'AND (ReciptDate BETWEEN :DateFrom  AND :DateTo ) AND (StuffCode ' +
        'BETWEEN :StuffCodeFrom  AND :StuffCodeTo)'
      'UNION ALL'
      
        'SELECT     Recipts.PersonID1, ReciptsDeficits.ReciptID, Recipts.' +
        'ReciptNumber, Recipts.ReciptDate, Recipts.ReciptType,'
      
        '     '#39#1603#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578' '#39' + ReciptTypes.ReciptCaption AS ReciptCapti' +
        'on, 0 AS StuffCode, '#39#39' AS c_StuffName, '#39#39' AS UnitName,'#39#39' AS Stuf' +
        'fSize,'
      
        '     0 AS StuffDiameter, '#39#39' AS StuffAlloy, 0 AS ControlCode, 0 A' +
        'S entity,'
      
        '     0 AS weight, SUM(ReciptsDeficits.DeficitAdd) AS bed, SUM(Re' +
        'ciptsDeficits.DeficitDec) AS bes, 0 AS kind, Recipts.StoreID,'#39#39' ' +
        'as ItemNote'
      'FROM         ReciptsDeficits INNER JOIN'
      
        '    Recipts ON ReciptsDeficits.ReciptID = Recipts.ReciptID AND R' +
        'eciptsDeficits.ServerID = Recipts.ServerID AND ReciptsDeficits.Y' +
        'earID = Recipts.YearID INNER JOIN'
      '    ReciptTypes ON Recipts.ReciptType = ReciptTypes.ReciptType'
      'WHERE     (ReciptTypes.BedType =:bedType3)'
      '      AND (Recipts.ReciptState < 3)'
      
        'AND (Recipts.PersonID1 BETWEEN :PersonID1From2  AND :PersonID1To' +
        '2)'
      
        '         AND (Recipts.ReciptDate BETWEEN :DateFrom2  AND :DateTo' +
        '2)'
      ''
      ''
      
        'GROUP BY ReciptTypes.ReciptCaption, ReciptsDeficits.ReciptID, Re' +
        'cipts.PersonID1, Recipts.ReciptNumber, Recipts.ReciptDate,'
      '         Recipts.ReciptType, Recipts.ReciptNote, Recipts.StoreID'
      'order by ReciptDate')
    Left = 72
    Top = 232
    object qryCustTrancePersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object qryCustTranceReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryCustTranceReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptNumber'
    end
    object qryCustTranceReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryCustTranceReciptType: TWordField
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'ReciptType'
    end
    object qryCustTranceReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryCustTrancec_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1603#1575#1604#1575' '
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qryCustTranceStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
      ReadOnly = True
    end
    object qryCustTranceUnitName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583
      FieldName = 'UnitName'
      Size = 50
    end
    object qryCustTranceStuffSize: TStringField
      Tag = 3
      DisplayLabel = #1575#1576#1593#1575#1583
      FieldName = 'StuffSize'
      Size = 12
    end
    object qryCustTranceStuffDiameter: TFloatField
      Tag = 3
      DisplayLabel = #1590#1582#1575#1605#1578
      FieldName = 'StuffDiameter'
    end
    object qryCustTranceStuffAlloy: TStringField
      Tag = 3
      DisplayLabel = #1570#1604#1610#1575#1688
      FieldName = 'StuffAlloy'
      Size = 12
    end
    object qryCustTranceControlCode: TLargeintField
      Tag = 3
      DisplayLabel = #1585#1575#1607#1606#1605#1575
      FieldName = 'ControlCode'
    end
    object qryCustTranceentity: TFloatField
      Tag = 3
      CustomConstraint = '1'
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'entity'
    end
    object qryCustTranceweight: TFloatField
      Tag = 3
      CustomConstraint = '1'
      DisplayLabel = #1608#1586#1606
      FieldName = 'weight'
    end
    object qryCustTrancebed: TBCDField
      Tag = 3
      CustomConstraint = '1'
      DisplayLabel = #1576#1583#1607#1603#1575#1585
      FieldName = 'bed'
      currency = True
      Precision = 19
    end
    object qryCustTrancebes: TBCDField
      Tag = 3
      CustomConstraint = '1'
      DisplayLabel = #1576#1587#1578#1575#1606#1603#1575#1585
      FieldName = 'bes'
      currency = True
      Precision = 19
    end
    object qryCustTrancekind: TIntegerField
      FieldName = 'kind'
    end
    object qryCustTranceStoreID: TSmallintField
      FieldName = 'StoreID'
    end
    object qryCustTranceItemNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ItemNote'
      Size = 100
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
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
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'D:\Projects\Fara\BSell\Exe\Report\rptCustTransDetailsNoBedBes.rt' +
      'm'
    Units = utMillimeters
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
    Left = 384
    Top = 197
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 35190
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 27781
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground1
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 73025
        mmTop = 0
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583#1582#1585#1610#1583' '#1608' '#1601#1585#1608#1588' '#1607#1585' '#1605#1588#1578#1585#1610
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
        mmLeft = 68527
        mmTop = 6350
        mmWidth = 60325
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        OnGetText = ppLabel3GetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 3969
        mmTop = 15346
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7144
        mmLeft = 172244
        mmTop = 12700
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 0
        mmTop = 20902
        mmWidth = 197300
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        OnGetText = ppLabel6GetText
        Border.mmPadding = 0
        Caption = #1605#1581#1583#1608#1583#1607' '#1578#1575#1585#1610#1582#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 172244
        mmTop = 21431
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 184150
        mmTop = 28310
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1603#1575#1604#1575' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 128059
        mmTop = 28310
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 142875
        mmTop = 28310
        mmWidth = 25929
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1603#1575#1604#1575' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 89165
        mmTop = 28310
        mmWidth = 37835
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = #1608#1575#1581#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 76729
        mmTop = 28310
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 43127
        mmTop = 28310
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = #1585#1575#1607#1606#1605#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 60590
        mmTop = 28310
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1608#1590#1610#1581#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 529
        mmTop = 28310
        mmWidth = 41804
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 169598
        mmTop = 28310
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        OnGetText = ppLabel21GetText
        Border.mmPadding = 0
        Caption = #1605#1581#1583#1608#1583#1607' '#1603#1583' '#1603#1575#1604#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 3969
        mmTop = 21431
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 182298
        mmTop = 28046
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 167746
        mmTop = 27781
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 141023
        mmTop = 27781
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 126207
        mmTop = 27781
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 87313
        mmTop = 28046
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 74877
        mmTop = 28046
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 58738
        mmTop = 28046
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 41275
        mmTop = 28046
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'CustID'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7144
        mmLeft = 157692
        mmTop = 12700
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable1GetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 6350
        mmLeft = 3969
        mmTop = 8731
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText15'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'CustName'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7144
        mmLeft = 141817
        mmTop = 12700
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ParentWidth = False
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline1
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
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '22.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline1'
          object ppDetailBand2: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
            object ppDBText18: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText18'
              Border.mmPadding = 0
              DataField = 'ReciptNumber'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6085
              mmLeft = 184150
              mmTop = 0
              mmWidth = 13229
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText19: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText19'
              Border.mmPadding = 0
              DataField = 'ReciptDate'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6085
              mmLeft = 169598
              mmTop = 0
              mmWidth = 13758
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText20: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText20'
              Border.mmPadding = 0
              DataField = 'ReciptCaption'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6085
              mmLeft = 142875
              mmTop = 0
              mmWidth = 25929
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText21: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText21'
              Border.mmPadding = 0
              DataField = 'StuffCode'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6085
              mmLeft = 128059
              mmTop = 0
              mmWidth = 14023
              BandType = 4
              LayerName = Foreground
            end
            object ppLine39: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line39'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 182298
              mmTop = 0
              mmWidth = 1588
              BandType = 4
              LayerName = Foreground
            end
            object ppLine40: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line40'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 167746
              mmTop = 0
              mmWidth = 1588
              BandType = 4
              LayerName = Foreground
            end
            object ppLine41: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line41'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 141023
              mmTop = 0
              mmWidth = 1588
              BandType = 4
              LayerName = Foreground
            end
            object ppLine56: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line56'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 195792
              mmTop = 0
              mmWidth = 1588
              BandType = 4
              LayerName = Foreground
            end
            object ppLine58: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line58'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6000
              mmLeft = 0
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppLine42: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line42'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 126207
              mmTop = 0
              mmWidth = 1588
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText22: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText22'
              Border.mmPadding = 0
              DataField = 'c_StuffName'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6085
              mmLeft = 89165
              mmTop = 0
              mmWidth = 38100
              BandType = 4
              LayerName = Foreground
            end
            object ppLine43: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line201'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 87313
              mmTop = 0
              mmWidth = 1588
              BandType = 4
              LayerName = Foreground
            end
            object ppLine54: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line54'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 75142
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppLine55: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line301'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 41275
              mmTop = 0
              mmWidth = 1588
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText27: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText102'
              Border.mmPadding = 0
              DataField = 'ControlCode'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6085
              mmLeft = 60590
              mmTop = 0
              mmWidth = 15346
              BandType = 4
              LayerName = Foreground
            end
            object ppLine51: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line51'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6085
              mmLeft = 58738
              mmTop = 0
              mmWidth = 1588
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText28: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText28'
              Border.mmPadding = 0
              DataField = 'entity'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6085
              mmLeft = 43127
              mmTop = 0
              mmWidth = 16669
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText1: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'ItemNote'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6085
              mmLeft = 529
              mmTop = 0
              mmWidth = 41804
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText23: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText23'
              Border.mmPadding = 0
              DataField = 'UnitName'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6085
              mmLeft = 76729
              mmTop = 0
              mmWidth = 11642
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 7144
            mmPrintPosition = 0
            object ppShape2: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape2'
              mmHeight = 7144
              mmLeft = 0
              mmTop = 0
              mmWidth = 197380
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc7: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc7'
              Border.mmPadding = 0
              DataField = 'entity'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 12
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6615
              mmLeft = 43127
              mmTop = 265
              mmWidth = 16669
              BandType = 7
              LayerName = Foreground
            end
            object ppLine49: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line49'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 58738
              mmTop = 0
              mmWidth = 1588
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel4: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label4'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1580#1605#1593' '#1603#1604':'#8207
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Yagut'
              Font.Size = 11
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 6615
              mmLeft = 183886
              mmTop = 265
              mmWidth = 13494
              BandType = 7
              LayerName = Foreground
            end
            object ppLine50: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line50'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 7144
              mmLeft = 41275
              mmTop = 0
              mmWidth = 1588
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
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 2646
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'CustID'
      DataPipeline = ppDBPipeline2
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Visible = False
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppDBCalc4: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc4'
          Border.mmPadding = 0
          DataField = 'entity'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 12
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 7673
          mmLeft = 43127
          mmTop = 0
          mmWidth = 16669
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel22: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label21'
          Border.mmPadding = 0
          Caption = #1580#1605#1593' '#1603#1604':'#8207
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 12
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 7112
          mmLeft = 183357
          mmTop = 0
          mmWidth = 12446
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine31: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line11'
          Border.mmPadding = 0
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 2646
          mmLeft = 0
          mmTop = 4763
          mmWidth = 197300
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine35: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line35'
          Border.mmPadding = 0
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 7408
          mmLeft = 58738
          mmTop = 0
          mmWidth = 1588
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine36: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line36'
          Border.mmPadding = 0
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 7408
          mmLeft = 41275
          mmTop = 0
          mmWidth = 1588
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine37: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line37'
          Border.mmPadding = 0
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 7408
          mmLeft = 0
          mmTop = 0
          mmWidth = 1588
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object srcCustomers: TDataSource
    DataSet = qryCustomers
    Left = 232
    Top = 93
  end
  object qryCustomers: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterScroll = qryCustomersAfterScroll
    Parameters = <
      item
        Name = 'CustIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'CustIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 99999
      end>
    SQL.Strings = (
      
        'SELECT     dbo.Recipts.PersonID1 as CustID , dbo.Customers.CustN' +
        'ame'
      'FROM         dbo.Recipts INNER JOIN'
      
        '                      dbo.Customers ON dbo.Recipts.PersonID1 = d' +
        'bo.Customers.CustID'
      'GROUP BY dbo.Recipts.PersonID1, dbo.Customers.CustName'
      
        'HAVING       (dbo.Recipts.PersonID1 BETWEEN :CustIDFrom  AND :Cu' +
        'stIDTo )')
    Left = 120
    Top = 85
    object qryCustomersCustID: TIntegerField
      FieldName = 'CustID'
    end
    object qryCustomersCustName: TStringField
      FieldName = 'CustName'
      Size = 120
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcCustTrance
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 360
    Top = 136
    MasterDataPipelineName = 'ppDBPipeline2'
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'PersonID1'
      FieldName = 'PersonID1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'ReciptID'
      FieldName = 'ReciptID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'ReciptNumber'
      FieldName = 'ReciptNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'ReciptDate'
      FieldName = 'ReciptDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'ReciptType'
      FieldName = 'ReciptType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'ReciptCaption'
      FieldName = 'ReciptCaption'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'StuffCode'
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'c_StuffName'
      FieldName = 'c_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'UnitName'
      FieldName = 'UnitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'StuffSize'
      FieldName = 'StuffSize'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'StuffDiameter'
      FieldName = 'StuffDiameter'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'StuffAlloy'
      FieldName = 'StuffAlloy'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'ControlCode'
      FieldName = 'ControlCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'entity'
      FieldName = 'entity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'weight'
      FieldName = 'weight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'bed'
      FieldName = 'bed'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'bes'
      FieldName = 'bes'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'kind'
      FieldName = 'kind'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'StoreID'
      FieldName = 'StoreID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'ItemNote'
      FieldName = 'ItemNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcCustomers
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 448
    Top = 136
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'CustID'
      FieldName = 'CustID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'CustName'
      FieldName = 'CustName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
  end
  object PopPrint: TPopupMenu
    AutoHotkeys = maManual
    Left = 440
    Top = 325
    object N4: TMenuItem
      Action = actPrint1
    end
    object N6: TMenuItem
      Action = actPrint2
    end
  end
end
