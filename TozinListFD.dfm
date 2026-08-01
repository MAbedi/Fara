inherited TozinListFDF: TTozinListFDF
  Left = 343
  Top = 129
  Caption = #1604#1740#1587#1578' '#1576#1575#1587#1705#1608#1604
  ClientHeight = 492
  ClientWidth = 1122
  Position = poDesigned
  ExplicitWidth = 1130
  ExplicitHeight = 523
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 451
    Width = 1122
    ExplicitTop = 451
    ExplicitWidth = 1122
    inherited BtnReject: TBitBtn
      Left = 2
      Top = 6
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      ExplicitLeft = 2
      ExplicitTop = 6
      ExplicitHeight = 29
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 905
      Top = 6
      Width = 77
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Action = actInsertForm
      Align = alRight
      TabOrder = 1
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 767
      Top = 6
      Width = 67
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Action = actEditForm
      Align = alRight
      TabOrder = 2
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 163
      Top = 6
      Width = 82
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Action = actSort
      Align = alLeft
      TabOrder = 3
    end
    object Button4: TButton
      AlignWithMargins = True
      Left = 79
      Top = 6
      Width = 82
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Action = actPrint
      Align = alLeft
      TabOrder = 4
    end
    object Button5: TButton
      AlignWithMargins = True
      Left = 247
      Top = 6
      Width = 82
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Action = actSearch_
      Align = alLeft
      TabOrder = 5
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 1053
      Top = 6
      Width = 67
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 6
    end
    object btnTozinState3: TButton
      AlignWithMargins = True
      Left = 560
      Top = 6
      Width = 67
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Action = actTozinState3
      Align = alRight
      TabOrder = 7
    end
    object Button7: TButton
      AlignWithMargins = True
      Left = 698
      Top = 6
      Width = 67
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Action = actEditTozin
      Align = alRight
      TabOrder = 8
    end
    object btnConversionCoSerial: TBitBtn
      AlignWithMargins = True
      Left = 421
      Top = 6
      Width = 137
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Action = actConversionCoSerial
      Align = alRight
      Caption = 'actConversionCoSerial'
      TabOrder = 9
    end
    object btnCorrelateRecipt1: TBitBtn
      AlignWithMargins = True
      Left = 277
      Top = 6
      Width = 142
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Action = actCorrelateRecipt
      Align = alRight
      Caption = 'actCorrelateRecipt'
      TabOrder = 10
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 984
      Top = 6
      Width = 67
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Action = actShowTozin
      Align = alRight
      Caption = #1606#1605#1575#1740#1588
      TabOrder = 11
    end
    object Button8: TButton
      AlignWithMargins = True
      Left = 629
      Top = 6
      Width = 67
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Action = actTozinState1
      Align = alRight
      TabOrder = 12
    end
    object Button9: TButton
      AlignWithMargins = True
      Left = 836
      Top = 6
      Width = 67
      Height = 29
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Action = actManualInsert
      Align = alRight
      TabOrder = 13
    end
  end
  inherited Panel2: TPanel
    Width = 1122
    ExplicitWidth = 1122
    DesignSize = (
      1122
      53)
    inherited ImgTemplate: TImage
      Left = 1099
      ExplicitLeft = 928
    end
    inherited lblCaption: TLabel
      Left = 1014
      ExplicitLeft = 1014
    end
    inherited lblBaseDate: TLabel
      Left = 422
      ExplicitLeft = 394
    end
    object rdoType: TRadioGroup
      Left = 1
      Top = 1
      Width = 158
      Height = 51
      Align = alLeft
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #1608#1586#1606' '#1575#1608#1604#1740
        #1607#1605#1607)
      TabOrder = 0
      OnClick = rdoTypeClick
    end
  end
  inherited Panel3: TPanel
    Width = 1122
    Height = 398
    ExplicitWidth = 1122
    ExplicitHeight = 398
    object grdTozin: TCedarDbgrid
      Left = 2
      Top = 2
      Width = 1118
      Height = 394
      Align = alClient
      DataSource = srcTozin
      DynProps = <>
      Flat = True
      FooterParams.FillStyle = cfstGradientEh
      FooterParams.Font.Charset = DEFAULT_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -11
      FooterParams.Font.Name = 'Tahoma'
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      FooterParams.VertLines = False
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clHighlightText
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ReadOnly = True
      RowHeight = 18
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SortLocal = True
      TabOrder = 0
      OnDblClick = actShowTozinExecute
      OnDrawColumnCell = grdTozinDrawColumnCell
      OnTitleBtnClick = grdTozinTitleBtnClick
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          Color = 15532031
          DynProps = <>
          EditButtons = <>
          FieldName = 'TozinNumber'
          Footer.Color = 15532031
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TozinNumberFormer'
          Footers = <>
        end
        item
          CellButtons = <>
          Color = 13431799
          DynProps = <>
          EditButtons = <>
          FieldName = 'TozinDate'
          Footer.Color = 13431799
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          Color = 15532031
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonID1'
          Footer.Color = 15532031
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          Color = 15532031
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustName1'
          Footer.Color = 15532031
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'NationalID1'
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          Color = 15532031
          DynProps = <>
          EditButtons = <>
          FieldName = 'MachineNo'
          Footer.Color = 15532031
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          Color = 15532031
          DynProps = <>
          EditButtons = <>
          FieldName = 'MachineName'
          Footer.Color = 15532031
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StuffCode'
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'c_StuffName'
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          Color = 15532031
          DynProps = <>
          EditButtons = <>
          FieldName = 'StoreID'
          Footer.Color = 15532031
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          Color = 15532031
          DynProps = <>
          EditButtons = <>
          FieldName = 'c_StoreName'
          Footer.Color = 15532031
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          Color = 15532031
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonID2'
          Footer.Color = 15532031
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          Color = 15532031
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustName2'
          Footer.Color = 15532031
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'NationalID2'
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'NumberOfBags'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'MachineFullWeight'
          Footer.Color = 13236955
          Footer.ValueType = fvtSum
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'MachineWeight'
          Footer.Color = 13236955
          Footer.ValueType = fvtSum
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'Mandeh'
          Footer.Color = 13236955
          Footer.ValueType = fvtSum
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 14024703
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'DeficitAdd_Dec'
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          Color = 13431799
          DynProps = <>
          EditButtons = <>
          FieldName = 'EnterDate'
          Footer.Color = 13431799
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          Color = 13431799
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExitDate'
          Footer.Color = 13431799
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          Color = 15532031
          DynProps = <>
          EditButtons = <>
          FieldName = 'TozinNote'
          Footer.Color = 15532031
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TozinState'
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Tozin_Note'
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptNumber'
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptCaption'
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          Color = 13431799
          DynProps = <>
          EditButtons = <>
          FieldName = 'AidDate'
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          ButtonStyle = cbsDropDown
          CellButtons = <>
          Color = 13236955
          DynProps = <>
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'AidNumber'
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SecondTypeName'
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonID3'
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustName3'
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TruckNumber'
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CarType2'
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'RelatedRecipts'
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'RelatedName'
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FirstUser'
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'LastUser'
          Footers = <>
          Title.TitleButton = True
          Width = 28
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Left = 552
    inherited actExit: TAction
      ImageIndex = 1
    end
    inherited DataSetEdit1: TDataSetEdit
      ShortCut = 0
    end
    object actEditForm: TAction [5]
      Caption = #1606#1608#1576#1578' '#1583#1608#1605
      ImageIndex = 2
      OnExecute = actEditFormExecute
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actInsertForm: TAction
      Caption = #1579#1576#1578' '#1587#1740#1587#1578#1605#1740' '
      ImageIndex = 5
      OnExecute = actInsertFormExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1740#1576
      OnExecute = actSortExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actTozinState1: TAction
      Caption = #1602#1591#1593#1740' '#1705#1585#1583#1606
      OnExecute = actTozinState1Execute
    end
    object actTozinState3: TAction
      Caption = #1576#1575#1591#1604' '#1705#1585#1583#1606
      OnExecute = actTozinState3Execute
    end
    object actCorrelateRecipt: TAction
      Caption = 'actCorrelateRecipt'
      ImageIndex = 4
      OnExecute = actCorrelateReciptExecute
    end
    object actConversionCoSerial: TAction
      Caption = 'actConversionCoSerial'
      ImageIndex = 4
      OnExecute = actConversionCoSerialExecute
    end
    object actShowTozin: TAction
      Caption = #1606#1605#1575#1740#1588
      ImageIndex = 3
      ShortCut = 115
      OnExecute = actShowTozinExecute
    end
    object actEditTozin: TAction
      Caption = #1608#1740#1585#1575#1740#1588'  '
      ImageIndex = 2
      OnExecute = actEditTozinExecute
    end
    object actManualInsert: TAction
      Caption = #1579#1576#1578' '#1583#1587#1578#1740'  '
      ImageIndex = 4
      OnExecute = actManualInsertExecute
    end
    object actSumPost: TAction
      Caption = #1579#1576#1578' '#1578#1580#1605#1740#1593#1740
      ImageIndex = 4
      OnExecute = actSumPostExecute
    end
    object actSumPostPersonID1: TAction
      Caption = #1579#1576#1578' '#1578#1580#1605#1740#1593#1740' '#1605#1588#1578#1585#1740
      ImageIndex = 4
      OnExecute = actSumPostPersonID1Execute
    end
    object actSumPostTozinDate: TAction
      Caption = #1579#1576#1578' '#1578#1580#1605#1740#1593#1740' '#1578#1575#1585#1740#1582
      ImageIndex = 4
      OnExecute = actSumPostTozinDateExecute
    end
    object actAddSum: TAction
      Caption = '  Add Sum'
      OnExecute = actAddSumExecute
    end
    object actTozinState0: TAction
      Caption = #1578#1576#1583#1740#1604' '#1576#1607' '#1605#1608#1602#1578
      OnExecute = actTozinState0Execute
    end
    object actTozinDelete: TAction
      Caption = #1581#1584#1601
      ImageIndex = 0
      OnExecute = actTozinDeleteExecute
    end
    object actSortTozin: TAction
      Caption = #1605#1585#1578#1576' '#1705#1585#1583#1606' '#1588#1605#1575#1585#1607' '#1578#1608#1586#1740#1606
      OnExecute = actSortTozinExecute
    end
  end
  inherited ImageList1: TImageList
    Top = 209
  end
  object srcTozin: TDataSource
    AutoEdit = False
    DataSet = fdqryTozin
    Left = 272
    Top = 224
  end
  object qryinit: TADOQuery
    Connection = DmF.adcBSell
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
      ''
      
        'SELECT  *  ,ReciptTypes.RecallReciptTypes  as RelatedReciptTypes' +
        '  ,(SELECT   count(*)'
      'FROM            ReciptTypes'
      
        'WHERE       ( ('#39','#39' + RecallReciptTypes + '#39','#39' LIKE '#39'%,'#39'+LTRIM( st' +
        'r(@ReciptType))+'#39',%'#39')  OR'
      '       (ReciptType = @ReciptType))'
      
        ' AND (RecallType IN (2, 3, 4, 5, 6, 7, 8, 10, 11, 12, 13, 15, 16' +
        '))) AS ParentFormActive'
      ' ,ReciptTypes_Co.RecallType as RecallTypeCo'
      ', ReciptTypes.ReciptCaption AS TozinCaption'
      ''
      ' FROM    ReciptTypes   left outer JOIN'
      
        '     ReciptTypes AS ReciptTypes_Co ON ReciptTypes.ConversionCoSe' +
        'rial = ReciptTypes_Co.ReciptType'
      ''
      'where ReciptTypes.ReciptType=@ReciptType'
      ''
      ''
      'ORDER BY ReciptTypes.ReciptType'
      ''
      ''
      '')
    Left = 534
    Top = 140
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
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\FaraXE8\Bsell\Exe\Report\ListTozin.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    CachePages = True
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    EmailSettings.ConnectionSettings.ConnectionStatusInfo = [csiStatusBar]
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
    PDFSettings.Layers = True
    PDFSettings.Outline = True
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
    CloudDriveSettings.DropBoxSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.DropBoxSettings.SharedResources = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.GoogleDriveSettings.SharedResources = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    CloudDriveSettings.OneDriveSettings.SharedResources = True
    Left = 352
    Top = 363
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 66146
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 41275
      mmPrintPosition = 0
    end
    object ppPageStyle1: TppPageStyle
      Border.mmPadding = 0
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 284300
      mmPrintPosition = 0
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'PageLayer1'
        LayerType = ltPage
        Index = 0
      end
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 1
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcTozin
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 273
    Top = 348
  end
  object qryLicense: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'TozinID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      ''
      'SELECT'#9'Recipts.ReciptID , Recipts.ServerID ,  Recipts.YearID  ,'
      
        #9#9'Recipts.ReciptNumber , Recipts.Reciptdate ,Recipts.ReciptType ' +
        ','
      
        #9#9#9#39#1605#1580#1608#1586' : '#39' + ltrim(str(case when Recipts.ReciptType= 11 then R' +
        'ecipts.ReciptNumber else Recipts.AidNumber end  ))'
      
        #9#9'+'#9#39' -- '#1608#1586#1606' : '#39' + ltrim(str(ReciptItems.InputWeight + ReciptIte' +
        'ms.OutputWeight))  '
      
        #9#9'+'#9#39' -- '#1603#1610#1587#1607' : '#39' +'#9'ltrim(str(ReciptItems.InputEntity + ReciptIt' +
        'ems.OutputEntity)) as txt ,'
      ''
      #9#9'ReciptItems.InputWeight + ReciptItems.OutputWeight AS Weight'
      'FROM'#9'ReciptItems INNER JOIN'
      #9#9'Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND '
      #9#9#9#9#9'ReciptItems.ServerID = Recipts.ServerID AND '
      #9#9#9#9#9'ReciptItems.YearID = Recipts.YearID'
      'WHERE'#9'Recipts.TozinID = :TozinID  '
      '')
    Left = 568
    Top = 320
    object qryLicenseReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryLicenseServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryLicenseYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryLicenseReciptNumber: TIntegerField
      FieldName = 'ReciptNumber'
    end
    object qryLicenseReciptdate: TStringField
      FieldName = 'Reciptdate'
      FixedChar = True
      Size = 10
    end
    object qryLicenseReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryLicensetxt: TStringField
      FieldName = 'txt'
      ReadOnly = True
      Size = 58
    end
    object qryLicenseWeight: TFloatField
      FieldName = 'Weight'
      ReadOnly = True
    end
  end
  object plnLicense: TppDBPipeline
    DataSource = srcLicense
    OpenDataSource = False
    UserName = 'plnLicense'
    Left = 633
    Top = 268
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object srcLicense: TDataSource
    DataSet = qryLicense
    Left = 643
    Top = 339
  end
  object fdqryTozin: TFDQuery
    AfterScroll = fdqryTozinAfterScroll
    Connection = DmF.fdcBSell
    ResourceOptions.AssignedValues = [rvStoreItems, rvStoreMergeData]
    ResourceOptions.StoreItems = [siMeta, siData, siDelta, siVisible]
    ResourceOptions.StoreMergeData = dmDataSet
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvCountUpdatedRecords, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    SQL.Strings = (
      ' SELECT  * FROM  dbo.Fn_TozinList('
      
        ':States, :ReciptType, :EffectType, :allData, :PersonID1From, :Pe' +
        'rsonID1TO, :TozinNumberFrom, :TozinNumberTo, :TozinDateFrom, :To' +
        'zinDateTO, :PersonID2From, :PersonID2TO,'
      
        ':StoreIDFrom, :StoreIDTO, :YearIDFrom, :YearIDTo, :StuffCodeFrom' +
        ', :StuffCodeTo, :LookUpsCodeFrom, :LookUpsCodeTo, :NotSecondType' +
        ' )'
      ''
      
        'WHERE (NOT (dbo.ChkUsersStore( :UserIDStore , StoreID, :User_Adm' +
        'in) IS NULL))'
      '')
    Left = 704
    Top = 165
    ParamData = <
      item
        Name = 'STATES'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'RECIPTTYPE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'EFFECTTYPE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ALLDATA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PERSONID1FROM'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PERSONID1TO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TOZINNUMBERFROM'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TOZINNUMBERTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TOZINDATEFROM'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TOZINDATETO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PERSONID2FROM'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PERSONID2TO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'STOREIDFROM'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'STOREIDTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'YEARIDFROM'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'YEARIDTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'STUFFCODEFROM'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'STUFFCODETO'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'LOOKUPSCODEFROM'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'LOOKUPSCODETO'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NOTSECONDTYPE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'USERIDSTORE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'USER_ADMIN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqryTozinTozinID: TIntegerField
      FieldName = 'TozinID'
    end
    object fdqryTozinTozinNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'TozinNumber'
    end
    object fdqryTozinTozinNumberFormer: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605' '#1587#1575#1576#1602
      FieldName = 'TozinNumberFormer'
    end
    object fdqryTozinReciptType: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593
      FieldName = 'ReciptType'
      Required = True
    end
    object fdqryTozinMachineNo: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1605#1575#1588#1610#1606
      FieldName = 'MachineNo'
      Required = True
      Size = 25
    end
    object fdqryTozinStoreID: TSmallintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
      Required = True
    end
    object fdqryTozinStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object fdqryTozinPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1740
      FieldName = 'PersonID1'
      Required = True
    end
    object fdqryTozinCustName1: TStringField
      Tag = 3
      FieldName = 'CustName1'
      Size = 150
    end
    object fdqryTozinMachineName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1605#1575#1588#1610#1606
      FieldName = 'MachineName'
      Size = 50
    end
    object fdqryTozinMachineWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1582#1575#1604#1610
      FieldName = 'MachineWeight'
    end
    object fdqryTozinMachineFullWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1662#1585
      FieldName = 'MachineFullWeight'
    end
    object fdqryTozinTozinNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'TozinNote'
      Size = 300
    end
    object fdqryTozinTozinDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'TozinDate'
      Required = True
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object fdqryTozinMoistureContent: TFloatField
      Tag = 3
      DisplayLabel = #1583#1585#1589#1583' '#1585#1591#1608#1576#1578
      FieldName = 'MoistureContent'
    end
    object fdqryTozinRisingUseful: TFloatField
      Tag = 3
      DisplayLabel = #1575#1601#1578' '#1605#1601#1610#1583
      FieldName = 'RisingUseful'
    end
    object fdqryTozinRisingNonUseFul: TFloatField
      Tag = 3
      DisplayLabel = #1575#1601#1578' '#1594#1610#1585' '#1605#1601#1610#1583
      FieldName = 'RisingNonUseFul'
    end
    object fdqryTozinPersonID2: TIntegerField
      Tag = 3
      FieldName = 'PersonID2'
    end
    object fdqryTozinCustName2: TStringField
      Tag = 3
      FieldName = 'CustName2'
      Size = 150
    end
    object fdqryTozinFirstUser: TStringField
      Tag = 3
      DisplayLabel = #1579#1576#1578' '#1603#1606#1606#1583#1607
      FieldName = 'FirstUser'
      Size = 50
    end
    object fdqryTozinLastUser: TStringField
      Tag = 3
      DisplayLabel = #1608#1610#1585#1575#1610#1588' '#1603#1606#1606#1583#1607
      FieldName = 'LastUser'
      Size = 50
    end
    object fdqryTozinIsSystem: TBooleanField
      Tag = 3
      FieldName = 'IsSystem'
    end
    object fdqryTozinc_StoreName: TStringField
      DisplayLabel = #1606#1575#1605' '#1575#1606#1576#1575#1585
      FieldName = 'c_StoreName'
      Size = 70
    end
    object fdqryTozinc_StuffName: TStringField
      DisplayLabel = #1588#1585#1581' '#1705#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 150
    end
    object fdqryTozinMandeh: TFloatField
      DisplayLabel = #1608#1586#1606' '#1582#1575#1604#1589
      FieldName = 'Mandeh'
      ReadOnly = True
    end
    object fdqryTozinEnterDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1608' '#1587#1575#1593#1578' '#1608#1585#1608#1583
      FieldName = 'EnterDate'
      ReadOnly = True
    end
    object fdqryTozinExitDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1608' '#1587#1575#1593#1578' '#1582#1585#1608#1580
      FieldName = 'ExitDate'
      ReadOnly = True
    end
    object fdqryTozinTozinState: TWordField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1740#1578
      FieldName = 'TozinState'
      OnGetText = qryTozinTozinStateGetText
    end
    object fdqryTozinTozin_Note: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578' '#1578#1608#1586#1740#1606
      FieldName = 'Tozin_Note'
      ReadOnly = True
      Size = 58
    end
    object fdqryTozinConversionCoSerial: TWordField
      Tag = 3
      FieldName = 'ConversionCoSerial'
      Required = True
    end
    object fdqryTozinReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptNumber'
    end
    object fdqryTozinReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1601#1585#1605
      FieldName = 'ReciptCaption'
      ReadOnly = True
      Size = 70
    end
    object fdqryTozinServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object fdqryTozinYearID: TIntegerField
      FieldName = 'YearID'
    end
    object fdqryTozinStoreID2: TSmallintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585'2'
      FieldName = 'StoreID2'
    end
    object fdqryTozinReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object fdqryTozinParentReciptItemID: TIntegerField
      FieldName = 'ParentReciptItemID'
    end
    object fdqryTozinprvYearID: TIntegerField
      FieldName = 'prvYearID'
    end
    object fdqryTozinAidNumber: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1705#1605#1705#1740
      FieldName = 'AidNumber'
      Size = 40
    end
    object fdqryTozinAidDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1740#1582' '#1705#1605#1705#1740
      FieldName = 'AidDate'
      FixedChar = True
      Size = 10
    end
    object fdqryTozinSellsMethod: TIntegerField
      FieldName = 'SellsMethod'
    end
    object fdqryTozinSecondTypeName: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'SecondTypeName'
      Size = 50
    end
    object fdqryTozinPersonID3: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1740'3'
      FieldName = 'PersonID3'
    end
    object fdqryTozinCustName3: TStringField
      Tag = 3
      FieldName = 'CustName3'
      Size = 150
    end
    object fdqryTozinPersonID4: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1740'4'
      FieldName = 'PersonID4'
    end
    object fdqryTozinPersonID5: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1740'5'
      FieldName = 'PersonID5'
    end
    object fdqryTozinTruckNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1576#1575#1585#1606#1575#1605#1607
      FieldName = 'TruckNumber'
      Size = 100
    end
    object fdqryTozinCarType2: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1605#1575#1588#1740#1606
      FieldName = 'CarType2'
      Size = 30
    end
    object fdqryTozinNationalID1: TStringField
      FieldName = 'NationalID1'
      Size = 12
    end
    object fdqryTozinNationalID2: TStringField
      FieldName = 'NationalID2'
      Size = 12
    end
    object fdqryTozinRelatedRecipts: TStringField
      Tag = 3
      DisplayLabel = #1705#1583' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1587#1601#1575#1585#1588#1575#1578
      FieldName = 'RelatedRecipts'
      Size = 27
    end
    object fdqryTozinRelatedName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1587#1601#1575#1585#1588#1575#1578
      FieldName = 'RelatedName'
      ReadOnly = True
      Size = 216
    end
    object fdqryTozinpo: TStringField
      FieldName = 'po'
      Size = 30
    end
    object fdqryTozinDeficitAdd_Dec: TCurrencyField
      DisplayLabel = #1705#1587#1608#1585#1575#1578'/'#1575#1590#1575#1601#1575#1578
      FieldName = 'DeficitAdd_Dec'
      Origin = 'DeficitAdd_Dec'
    end
    object fdqryTozinNumberOfBags: TBCDField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583' '#1705#1740#1587#1607
      FieldName = 'NumberOfBags'
      Origin = 'NumberOfBags'
      Precision = 18
      Size = 2
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 800
    Top = 237
  end
end
