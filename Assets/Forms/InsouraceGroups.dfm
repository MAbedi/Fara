inherited InsouraceGroupsF: TInsouraceGroupsF
  Caption = #1579#1576#1578' '#1662#1608#1588#1588' '#1576#1610#1605#1607' '#1575#1610' '#1583#1575#1585#1575#1610#1610' '#1607#1575#1610' '#1579#1575#1576#1578' - '#1576#1589#1608#1585#1578' '#1603#1604#1610
  ClientHeight = 517
  ClientWidth = 815
  OnResize = FormResize
  ExplicitWidth = 827
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    Width = 815
    ExplicitWidth = 815
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 736
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSelected
      Align = alRight
      Caption = #1575#1606#1578#1582#1575#1576
      TabOrder = 6
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 655
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = DataSetDelete1_
      Align = alRight
      Caption = #1581#1584#1601
      TabOrder = 5
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 574
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actKaretDaraiee
      Align = alRight
      Caption = #1603#1575#1585#1578' '#1583#1575#1585#1575#1610#1610
      TabOrder = 4
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort_
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object btnKaretDaraiee: TBitBtn
      AlignWithMargins = True
      Left = 493
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
    Width = 815
    ExplicitWidth = 815
    inherited ImgTemplate: TImage
      Left = 761
      ExplicitLeft = 761
    end
    inherited lblCaption: TLabel
      Left = 707
      Height = 16
      ExplicitLeft = 707
    end
  end
  inherited Panel3: TPanel
    Width = 815
    Height = 423
    ExplicitWidth = 815
    object DBGrid2: TDBGrid
      Left = 2
      Top = 2
      Width = 287
      Height = 420
      Align = alClient
      Color = clCream
      DataSource = srcIncGroups
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnEditButtonClick = DBGrid2EditButtonClick
      OnKeyPress = DBGrid2KeyPress
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'Serial'
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_stuffDesc'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_Pelak'
          Width = 65
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 289
      Top = 2
      Width = 524
      Height = 420
      Align = alRight
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 522
        Height = 313
        TabStop = False
        Align = alClient
        Color = clCream
        DataSource = srcInsourance
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'InsouranceItemsID'
            Width = 29
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InsouranceNo'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InsouranceDate'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TypeName'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StartDate'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EndDate'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InsourancePrice'
            Width = 101
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 314
        Width = 522
        Height = 105
        Align = alBottom
        Caption = #1578#1608#1590#1610#1581#1575#1578' '#1576#1610#1605#1607' '#1606#1575#1605#1607
        TabOrder = 1
        object DBMemo1: TDBMemo
          Left = 2
          Top = 15
          Width = 518
          Height = 88
          TabStop = False
          Align = alClient
          DataField = 'Comments'
          DataSource = srcInsourance
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
  end
  inherited ActionList: TActionList
    inherited actSearch_: TAction
      OnExecute = actSearchExecute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcIncGroups
    end
    inherited actSmsSend: TAction
      OnExecute = actSmsSendExecute
    end
    inherited actSort_: TAction
      OnExecute = actSort_Execute
    end
    object actExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actExcelExecute
    end
    object actSelected: TAction
      Caption = #1575#1606#1578#1582#1575#1576
      OnExecute = actSelectedExecute
    end
    object actKaretDaraiee: TAction
      Caption = #1603#1575#1585#1578' '#1583#1575#1585#1575#1610#1610
      OnExecute = actKaretDaraieeExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
  end
  object qryIncGroups: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryIncGroupsAfterInsert
    BeforeDelete = qryIncGroupsBeforeDelete
    Parameters = <
      item
        Name = 'INCID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from Assets.AssetsInsouraceGroups'
      'where InsouranceItemsID= :INCID')
    Left = 152
    Top = 125
    object qryIncGroupsSerial: TIntegerField
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'Serial'
    end
    object qryIncGroupsInsouranceItemsID: TIntegerField
      FieldName = 'InsouranceItemsID'
    end
    object qryIncGroups_stuffDesc: TStringField
      DisplayLabel = #1588#1585#1581' '#1583#1575#1585#1575#1610#1610
      FieldKind = fkLookup
      FieldName = '_stuffDesc'
      LookupDataSet = DmF.qryAmval
      LookupKeyFields = 'SerialNum'
      LookupResultField = 'StuffDesc'
      KeyFields = 'Serial'
      Size = 200
      Lookup = True
    end
    object qryIncGroups_Pelak: TStringField
      DisplayLabel = #1662#1604#1575#1603
      FieldKind = fkLookup
      FieldName = '_Pelak'
      LookupDataSet = DmF.qryAmval
      LookupKeyFields = 'SerialNum'
      LookupResultField = 'pelakNum'
      KeyFields = 'Serial'
      Lookup = True
    end
  end
  object qryInsourance: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterScroll = qryInsouranceAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     Insourance.*, InsouranceInfo.InsouranceName AS TypeNa' +
        'me'
      'FROM        Assets. Insourance as Insourance   INNER JOIN'
      
        '                       Assets.InsouranceInfo as InsouranceInfo  ' +
        'ON Insourance.InsouranceID = InsouranceInfo.InsouranceID'
      'ORDER BY Insourance.InsouranceItemsID')
    Left = 560
    Top = 133
    object qryInsouranceInsouranceItemsID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'InsouranceItemsID'
    end
    object qryInsouranceInsouranceID: TIntegerField
      Tag = 3
      FieldName = 'InsouranceID'
    end
    object qryInsouranceInsouranceNo: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1576#1610#1605#1607' '#1606#1575#1605#1607
      FieldName = 'InsouranceNo'
      Size = 30
    end
    object qryInsouranceInsouranceDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1576#1610#1605#1607' '#1606#1575#1605#1607
      FieldName = 'InsouranceDate'
      FixedChar = True
      Size = 10
    end
    object qryInsouranceStartDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593
      FieldName = 'StartDate'
      FixedChar = True
      Size = 10
    end
    object qryInsouranceEndDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606
      FieldName = 'EndDate'
      FixedChar = True
      Size = 10
    end
    object qryInsouranceInsourancePrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1662#1608#1588#1588' '#1576#1610#1605#1607' '#1575#1610
      FieldName = 'InsourancePrice'
      currency = True
      Precision = 19
    end
    object qryInsouranceComments: TStringField
      Tag = 3
      FieldName = 'Comments'
      Size = 300
    end
    object qryInsouranceTypeName: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1576#1610#1605#1607' '#1606#1575#1605#1607
      FieldName = 'TypeName'
      Size = 80
    end
  end
  object srcInsourance: TDataSource
    DataSet = qryInsourance
    Left = 672
    Top = 229
  end
  object srcIncGroups: TDataSource
    DataSet = qryIncGroups
    Left = 112
    Top = 229
  end
  object qryAssetsKeeper: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'InsouranceItemsID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        Insourance.InsouranceItemsID, Insourance.Insouranc' +
        'eID, Insourance.InsouranceNo, Insourance.InsouranceDate, Insoura' +
        'nce.StartDate, Insourance.EndDate, Insourance.InsourancePrice, I' +
        'nsourance.Comments, '
      
        '                         InsouranceInfo.InsouranceName AS TypeNa' +
        'me, Assets.AssetsKeeper.KeeperName, Assets.AssetsKeeper.Mobile'
      'FROM            Assets.Insourance AS Insourance INNER JOIN'
      
        '                         Assets.InsouranceInfo AS InsouranceInfo' +
        ' ON Insourance.InsouranceID = InsouranceInfo.InsouranceID CROSS ' +
        'JOIN'
      '                         Assets.AssetsKeeper'
      'where (Insourance.InsouranceItemsID = :InsouranceItemsID )')
    Left = 407
    Top = 128
  end
  object plnAssetsKeeper: TppDBPipeline
    DataSource = srcAssetsKeeper
    OpenDataSource = False
    UserName = 'plnAssetsKeeper'
    Left = 488
    Top = 234
    object pfldAssetsKeeperppField1: TppField
      FieldAlias = 'InsouranceItemsID'
      FieldName = 'InsouranceItemsID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pfldAssetsKeeperppField2: TppField
      FieldAlias = 'InsouranceID'
      FieldName = 'InsouranceID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pfldAssetsKeeperppField3: TppField
      FieldAlias = 'InsouranceNo'
      FieldName = 'InsouranceNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pfldAssetsKeeperppField4: TppField
      FieldAlias = 'InsouranceDate'
      FieldName = 'InsouranceDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pfldAssetsKeeperppField5: TppField
      FieldAlias = 'StartDate'
      FieldName = 'StartDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pfldAssetsKeeperppField6: TppField
      FieldAlias = 'EndDate'
      FieldName = 'EndDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pfldAssetsKeeperppField7: TppField
      FieldAlias = 'InsourancePrice'
      FieldName = 'InsourancePrice'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pfldAssetsKeeperppField8: TppField
      FieldAlias = 'Comments'
      FieldName = 'Comments'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pfldAssetsKeeperppField9: TppField
      FieldAlias = 'TypeName'
      FieldName = 'TypeName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object pfldAssetsKeeperppField10: TppField
      FieldAlias = 'KeeperName'
      FieldName = 'KeeperName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object pfldAssetsKeeperppField11: TppField
      FieldAlias = 'Mobile'
      FieldName = 'Mobile'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
  end
  object prp4SMS: TppReport
    AutoStop = False
    DataPipeline = plnAssetsKeeper
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
    Template.FileName = 'D:\Projects\Fara2010\Assets\Exe\Report\InsouraceGroups.rtm'
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
    PreviewFormSettings.ZoomSetting = zsPageWidth
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
    Left = 508
    Top = 314
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'plnAssetsKeeper'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object plblLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'plblLblCompanyName'
        OnGetText = plblLblCompanyNameGetText
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
        mmLeft = 0
        mmTop = 1058
        mmWidth = 210079
        BandType = 0
        LayerName = Foreground
      end
      object plblLblCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'plblLblCaption'
        OnGetText = plblLblCaptionGetText
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578'  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5842
        mmLeft = 0
        mmTop = 8467
        mmWidth = 210079
        BandType = 0
        LayerName = Foreground
      end
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNo1'
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
        mmLeft = 9790
        mmTop = 8467
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object plblLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lbprintdate'
        OnGetText = plblLblPrintDateGetText
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
        mmLeft = 9790
        mmTop = 1058
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = #1603#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 189327
        mmTop = 18786
        mmWidth = 8052
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1576#1610#1605#1607' '#1606#1575#1605#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 163927
        mmTop = 18786
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1576#1610#1605#1607' '#1606#1575#1605#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 142997
        mmTop = 18786
        mmWidth = 20930
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1576#1610#1605#1607' '#1606#1575#1605#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 117597
        mmTop = 18786
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 95067
        mmTop = 18786
        mmWidth = 22530
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 72131
        mmTop = 18786
        mmWidth = 22936
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594' '#1662#1608#1588#1588' '#1576#1610#1605#1607' '#1575#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 46731
        mmTop = 18786
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = #1580#1605#1593#1583#1575#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 21167
        mmTop = 18785
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = #1607#1605#1585#1575#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 0
        mmTop = 18785
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6858
      mmPrintPosition = 0
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.BorderPositions = [bpLeft, bpRight]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'InsouranceItemsID'
        DataPipeline = plnAssetsKeeper
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'plnAssetsKeeper'
        mmHeight = 6858
        mmLeft = 189327
        mmTop = 0
        mmWidth = 8052
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.BorderPositions = [bpLeft, bpRight]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'InsouranceNo'
        DataPipeline = plnAssetsKeeper
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'plnAssetsKeeper'
        mmHeight = 6858
        mmLeft = 163927
        mmTop = 0
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.BorderPositions = [bpLeft, bpRight]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'InsouranceDate'
        DataPipeline = plnAssetsKeeper
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'plnAssetsKeeper'
        mmHeight = 6858
        mmLeft = 142997
        mmTop = 0
        mmWidth = 20930
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.BorderPositions = [bpLeft, bpRight]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'TypeName'
        DataPipeline = plnAssetsKeeper
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'plnAssetsKeeper'
        mmHeight = 6858
        mmLeft = 117597
        mmTop = 0
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.BorderPositions = [bpLeft, bpRight]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'StartDate'
        DataPipeline = plnAssetsKeeper
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'plnAssetsKeeper'
        mmHeight = 6858
        mmLeft = 95067
        mmTop = 0
        mmWidth = 22530
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.BorderPositions = [bpLeft, bpRight]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'EndDate'
        DataPipeline = plnAssetsKeeper
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'plnAssetsKeeper'
        mmHeight = 6858
        mmLeft = 72131
        mmTop = 0
        mmWidth = 22936
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.BorderPositions = [bpLeft, bpRight]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'InsourancePrice'
        DataPipeline = plnAssetsKeeper
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'plnAssetsKeeper'
        mmHeight = 6858
        mmLeft = 46731
        mmTop = 0
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.BorderPositions = [bpLeft, bpRight]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'KeeperName'
        DataPipeline = plnAssetsKeeper
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'plnAssetsKeeper'
        mmHeight = 6879
        mmLeft = 21167
        mmTop = 0
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.BorderPositions = [bpLeft, bpRight]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'Mobile'
        DataPipeline = plnAssetsKeeper
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'plnAssetsKeeper'
        mmHeight = 6879
        mmLeft = 0
        mmTop = 0
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        ParentHeight = True
        ParentWidth = True
        mmHeight = 9525
        mmLeft = 0
        mmTop = 0
        mmWidth = 197379
        BandType = 8
        LayerName = Foreground
      end
      object plbl1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'plbl1'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1606#1602#1604' '#1576#1607'..'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6011
        mmLeft = 181240
        mmTop = 529
        mmWidth = 15579
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'InsouranceItemsID'
        DataPipeline = plnAssetsKeeper
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'plnAssetsKeeper'
        mmHeight = 9525
        mmLeft = 189327
        mmTop = 0
        mmWidth = 8052
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'InsourancePrice'
        DataPipeline = plnAssetsKeeper
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'plnAssetsKeeper'
        mmHeight = 9525
        mmLeft = 46731
        mmTop = 0
        mmWidth = 25400
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        ParentHeight = True
        ParentWidth = True
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 197379
        BandType = 7
        LayerName = Foreground
      end
      object plbl2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'plbl2'
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
        mmLeft = 183886
        mmTop = 529
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'InsouranceItemsID'
        DataPipeline = plnAssetsKeeper
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'plnAssetsKeeper'
        mmHeight = 7408
        mmLeft = 189327
        mmTop = 0
        mmWidth = 8052
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        DataField = 'InsourancePrice'
        DataPipeline = plnAssetsKeeper
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'plnAssetsKeeper'
        mmHeight = 7408
        mmLeft = 46731
        mmTop = 0
        mmWidth = 25400
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
  object srcAssetsKeeper: TDataSource
    DataSet = qryAssetsKeeper
    Left = 360
    Top = 237
  end
end
