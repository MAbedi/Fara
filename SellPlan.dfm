inherited SellPlanF: TSellPlanF
  Left = 428
  Top = 206
  Caption = #1576#1585#1606#1575#1605#1607' '#1585#1610#1586#1610' '#1662#1582#1588
  ClientWidth = 787
  ExplicitWidth = 803
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Width = 787
    ExplicitTop = 476
    ExplicitWidth = 791
    object btnOrderSelect: TBitBtn
      AlignWithMargins = True
      Left = 712
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actOrderSelect
      Align = alRight
      Caption = #1575#1606#1578#1582#1575#1576' '#1587#1601#1575#1585#1588
      TabOrder = 7
    end
    object btnShowForm: TBitBtn
      AlignWithMargins = True
      Left = 631
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actShowForm
      Align = alRight
      Caption = #1606#1605#1575#1610#1588
      TabOrder = 6
    end
    object btnDelDriver: TBitBtn
      AlignWithMargins = True
      Left = 436
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actDelDriver
      Align = alRight
      Caption = #1581#1584#1601' '
      TabOrder = 4
    end
    object btnSort: TBitBtn
      Left = 81
      Top = 7
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object btnSearch_: TBitBtn
      Left = 157
      Top = 7
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object btnSendExcel: TBitBtn
      Left = 234
      Top = 7
      Width = 75
      Height = 25
      Action = actSendExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object btnExportSell: TBitBtn
      AlignWithMargins = True
      Left = 517
      Top = 7
      Width = 108
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actExportSell
      Align = alRight
      Caption = #1589#1583#1608#1585' '#1581#1608#1575#1604#1607
      TabOrder = 5
    end
    object btnPrint: TBitBtn
      Left = 310
      Top = 7
      Width = 75
      Height = 25
      Action = actPrint
      Caption = #1670#1575#1662
      TabOrder = 8
    end
    object btnRow: TBitBtn
      AlignWithMargins = True
      Left = 355
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actRow
      Align = alRight
      Caption = #1578#1594#1610#1610#1585' '#1585#1583#1610#1601' '#1601#1585#1605
      TabOrder = 9
    end
  end
  inherited Panel2: TPanel
    Width = 787
    Height = 77
    BevelOuter = bvNone
    ExplicitWidth = 791
    ExplicitHeight = 77
    DesignSize = (
      787
      77)
    inherited ImgTemplate: TImage
      Left = 774
      ExplicitLeft = 768
    end
    inherited lblCaption: TLabel
      Left = 680
      Top = 15
      Height = 59
      ExplicitLeft = 684
      ExplicitTop = 15
    end
    inherited lblBaseDate: TLabel
      Left = 339
      ExplicitLeft = 343
    end
    object lblDate: TLabel
      Left = 106
      Top = 52
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = #1578#1575#1585#1610#1582' '
    end
    object grpStores: TGroupBox
      Left = 17
      Top = 0
      Width = 292
      Height = 45
      Align = alCustom
      Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1575#1606#1576#1575#1585
      TabOrder = 0
      object btnStores: TSpeedButton
        AlignWithMargins = True
        Left = 188
        Top = 18
        Width = 23
        Height = 22
        Align = alRight
        Caption = '...'
        OnClick = btnStoresClick
        ExplicitLeft = 174
        ExplicitTop = 17
      end
      object DBEdit1: TDBEdit
        AlignWithMargins = True
        Left = 217
        Top = 18
        Width = 70
        Height = 22
        Align = alRight
        DataField = 'n_StoreID'
        DataSource = srcStors
        TabOrder = 1
        ExplicitHeight = 21
      end
      object DBEdit2: TDBEdit
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 177
        Height = 22
        TabStop = False
        Align = alClient
        Color = clBtnFace
        DataField = 'c_StoreName'
        DataSource = srcStors
        ReadOnly = True
        TabOrder = 0
        ExplicitHeight = 21
      end
    end
    object mskDate: TMaskEdit
      Left = 26
      Top = 48
      Width = 77
      Height = 21
      Color = 13431799
      EditMask = '9999/99/99;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '    /  /  '
    end
  end
  inherited Panel3: TPanel
    Top = 109
    Width = 787
    Height = 366
    ExplicitTop = 109
    ExplicitWidth = 791
    ExplicitHeight = 368
    object lblUnitName: TLabel
      Left = 2
      Top = 2
      Width = 787
      Height = 13
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = #1604#1610#1587#1578' '#1585#1575#1606#1606#1583#1711#1575#1606
      Color = clGradientActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      ExplicitLeft = -22
      ExplicitTop = -13
    end
    object Panel1: TPanel
      Left = 2
      Top = 188
      Width = 787
      Height = 178
      Align = alClient
      TabOrder = 1
      object lblRecpits: TLabel
        Left = 1
        Top = 1
        Width = 785
        Height = 13
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = #1604#1610#1587#1578' '#1587#1601#1575#1585#1588#1575#1578' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607' '#1580#1607#1578' :'#8204' %S'
        Color = clGradientActiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        ExplicitWidth = 767
      end
      object DBGrid2: TCedarDbgrid
        Left = 1
        Top = 14
        Width = 785
        Height = 163
        Align = alClient
        Color = clCream
        DataSource = srcRecipts
        DynProps = <>
        Flat = True
        FooterParams.FillStyle = cfstSolidEh
        FooterParams.Font.Charset = DEFAULT_CHARSET
        FooterParams.Font.Color = clWindowText
        FooterParams.Font.Height = -12
        FooterParams.Font.Name = 'Tahoma'
        FooterParams.Font.Style = [fsBold]
        FooterParams.ParentFont = False
        FooterParams.VertLines = False
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        HorzScrollBar.ExtraPanel.Visible = True
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        OddRowColor = clWhite
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        RowHeight = 18
        SearchPanel.Enabled = True
        SortLocal = True
        TabOrder = 0
        OnDblClick = actRowExecute
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ReciptNumber'
            Footers = <>
            Width = 35
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ReciptDate'
            Footers = <>
            Width = 50
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PersonID1'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CustName'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PersonID2'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CustName2'
            Footers = <>
            Width = 82
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'PersonID3'
            Footers = <>
            Width = 46
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CustName3'
            Footers = <>
            Width = 46
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ReciptsRow'
            Footers = <>
            Width = 47
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'CustomersRow'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Address'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Tel'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Entity'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Weight'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SumPrice'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TotallSellPrice'
            Footers = <>
            Width = 64
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object DBGrid1: TCedarDbgrid
      Left = 2
      Top = 15
      Width = 787
      Height = 173
      Align = alTop
      Color = clCream
      DataSource = dsCustomers9
      DynProps = <>
      Flat = True
      FooterParams.FillStyle = cfstSolidEh
      FooterParams.Font.Charset = DEFAULT_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -12
      FooterParams.Font.Name = 'Tahoma'
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      FooterParams.VertLines = False
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clWhite
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 0
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustID'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustName'
          Footers = <>
          Width = 200
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustomerNote'
          Footers = <>
          Width = 330
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object pnlTop: TPanel [3]
    Left = 0
    Top = 77
    Width = 787
    Height = 32
    Margins.Top = 7
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 3
    ExplicitWidth = 791
    object Label3: TLabel
      AlignWithMargins = True
      Left = 310
      Top = 8
      Width = 138
      Height = 13
      Margins.Top = 8
      Align = alLeft
      Caption = #1705#1583' '#1578#1581#1608#1740#1604' '#1583#1607#1606#1583#1607' '#1580#1607#1578' '#1589#1583#1608#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object btn_PersonID2: TSpeedButton
      AlignWithMargins = True
      Left = 205
      Top = 5
      Width = 23
      Height = 22
      Margins.Top = 5
      Margins.Bottom = 5
      Align = alLeft
      Caption = '...'
      OnClick = btn_PersonID2Click
      ExplicitLeft = 174
      ExplicitTop = 10
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 690
      Top = 8
      Width = 98
      Height = 13
      Margins.Top = 8
      Align = alRight
      Caption = #1606#1608#1593' '#1601#1585#1605' '#1580#1607#1578' '#1589#1583#1608#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object cmbReciptType: TComboBox
      AlignWithMargins = True
      Left = 425
      Top = 6
      Width = 259
      Height = 21
      Margins.Top = 6
      Align = alRight
      Style = csDropDownList
      TabOrder = 0
      OnChange = cmbReciptTypeChange
    end
    object edt_PersonName: TDBEdit
      AlignWithMargins = True
      Left = 3
      Top = 5
      Width = 196
      Height = 22
      Margins.Top = 5
      Margins.Bottom = 5
      TabStop = False
      Align = alLeft
      Color = clBtnFace
      DataField = '_PersonName'
      DataSource = srcStors
      ReadOnly = True
      TabOrder = 1
      ExplicitHeight = 21
    end
    object edt_PersonID2: TDBEdit
      AlignWithMargins = True
      Left = 234
      Top = 5
      Width = 70
      Height = 22
      Margins.Top = 5
      Margins.Bottom = 5
      Align = alLeft
      DataField = '_PersonID2'
      DataSource = srcStors
      TabOrder = 2
      ExplicitHeight = 21
    end
  end
  inherited ActionList: TActionList
    Left = 468
    Top = 11
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actOrderSelect: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1587#1601#1575#1585#1588
      OnExecute = actOrderSelectExecute
    end
    object actShowForm: TAction
      Caption = #1606#1605#1575#1610#1588
      OnExecute = actShowFormExecute
    end
    object actDelDriver: TAction
      Caption = #1581#1584#1601' '
      OnExecute = actDelDriverExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExcelExecute
    end
    object actExportSell: TAction
      Caption = #1589#1583#1608#1585' '#1581#1608#1575#1604#1607
      OnExecute = actExportSellExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actprintvijeh: TAction
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      OnExecute = actprintvijehExecute
    end
    object actRow: TAction
      Caption = #1578#1594#1610#1610#1585' '#1585#1583#1610#1601' '#1601#1585#1605
      OnExecute = actRowExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 573
  end
  object qryCustomers9: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryCustomers9AfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     Customers.CustID, Customers.CustName, Customers.Custo' +
        'merNote'
      'FROM         Customers INNER JOIN'
      
        '                      CustomersGroup ON Customers.CustomerGrpID ' +
        '= CustomersGroup.CustomerGrpID'
      'WHERE      (Customers.CustID <> 0) AND'
      '  (Customers.CustomerActive = 0) ')
    Left = 248
    Top = 152
    object qryCustomers9CustID: TIntegerField
      DisplayLabel = #1603#1583' '#1585#1575#1606#1606#1583#1607
      FieldName = 'CustID'
    end
    object qryCustomers9CustName: TStringField
      DisplayLabel = #1606#1575#1605' '#1585#1575#1606#1606#1583#1607
      FieldName = 'CustName'
      Size = 120
    end
    object qryCustomers9CustomerNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'CustomerNote'
      Size = 250
    end
  end
  object dsCustomers9: TDataSource
    DataSet = qryCustomers9
    Left = 385
    Top = 159
  end
  object qryRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    Left = 128
    Top = 357
    object qryReciptsReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'ReciptNumber'
    end
    object qryReciptsReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptsPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610
      FieldName = 'PersonID1'
    end
    object qryReciptsCustName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610
      FieldName = 'CustName'
      Size = 150
    end
    object qryReciptsPersonID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1581#1608#1740#1604' '#1583#1607#1606#1583#1607
      FieldName = 'PersonID2'
    end
    object qryReciptsCustName2: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1578#1581#1608#1740#1604' '#1583#1607#1606#1583#1607
      FieldName = 'CustName2'
      Size = 60
    end
    object qryReciptsPersonID3: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1585#1575#1606#1606#1583#1607
      FieldName = 'PersonID3'
    end
    object qryReciptsCustName3: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1585#1575#1606#1606#1583#1607
      FieldName = 'CustName3'
      Size = 60
    end
    object qryReciptsReciptsRow: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1583#1610#1601' '#1601#1585#1605
      FieldName = 'ReciptsRow'
    end
    object qryReciptsCustomersRow: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1583#1610#1601' '#1605#1588#1578#1585#1610
      FieldName = 'CustomersRow'
    end
    object qryReciptsAddress: TStringField
      Tag = 3
      DisplayLabel = #1570#1583#1585#1587
      FieldName = 'Address'
      Size = 300
    end
    object qryReciptsTel: TStringField
      Tag = 3
      DisplayLabel = #1578#1604#1601#1606
      FieldName = 'Tel'
      Size = 30
    end
    object qryReciptsEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
    end
    object qryReciptsWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
    end
    object qryReciptsSumPrice: TBCDField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1603#1604
      FieldName = 'SumPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryReciptsTotallSellPrice: TBCDField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1582#1575#1604#1589
      FieldName = 'TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryReciptsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptsReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryReciptsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptsYearID: TIntegerField
      FieldName = 'YearID'
    end
  end
  object srcRecipts: TDataSource
    DataSet = qryRecipts
    Left = 222
    Top = 364
  end
  object qryStors: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = qryStorsAfterScroll
    Parameters = <>
    SQL.Strings = (
      ''
      ' ')
    Left = 325
    Top = 7
    object qryStorsn_StoreID: TSmallintField
      DisplayLabel = #1603#1583
      FieldName = 'n_StoreID'
    end
    object qryStorsc_StoreName: TStringField
      DisplayLabel = #1606#1575#1605' '#1575#1606#1576#1575#1585
      FieldName = 'c_StoreName'
      Size = 70
    end
    object qryStors_PersonID2: TIntegerField
      FieldKind = fkCalculated
      FieldName = '_PersonID2'
      Calculated = True
    end
    object qryStors_PersonName: TStringField
      FieldKind = fkCalculated
      FieldName = '_PersonName'
      Size = 200
      Calculated = True
    end
  end
  object srcStors: TDataSource
    DataSet = qryStors
    Left = 396
    Top = 16
  end
  object qryinit: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        RestartFormNumberOnStore, ReciptType, StepCorrelat' +
        'e, ReciptCaption'
      'FROM            ReciptTypes'
      'WHERE        (ReciptType = :ReciptType)'
      'ORDER BY ReciptType')
    Left = 588
    Top = 10
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\RepCustomers2.rtm'
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
    Left = 648
    Top = 367
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
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
    DataSource = dsCustomers9
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 368
    Top = 357
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'CustID'
      FieldName = 'CustID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'CustName'
      FieldName = 'CustName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'CustomerNote'
      FieldName = 'CustomerNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcRecipts
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 504
    Top = 357
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppField1: TppField
      FieldAlias = 'ReciptID'
      FieldName = 'ReciptID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppField2: TppField
      FieldAlias = 'ReciptNumber'
      FieldName = 'ReciptNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppField3: TppField
      FieldAlias = 'ReciptDate'
      FieldName = 'ReciptDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppField4: TppField
      FieldAlias = 'PersonID1'
      FieldName = 'PersonID1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppField5: TppField
      FieldAlias = 'CustName'
      FieldName = 'CustName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppField6: TppField
      FieldAlias = 'ReciptType'
      FieldName = 'ReciptType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppField7: TppField
      FieldAlias = 'UseUnitID'
      FieldName = 'UseUnitID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppField8: TppField
      FieldAlias = 'UseUnitName'
      FieldName = 'UseUnitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppField9: TppField
      FieldAlias = 'CustomersRow'
      FieldName = 'CustomersRow'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppField10: TppField
      FieldAlias = 'ReciptsRow'
      FieldName = 'ReciptsRow'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppField11: TppField
      FieldAlias = 'Address'
      FieldName = 'Address'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
  end
end
