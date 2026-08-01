inherited rptDarayiSellsF: TrptDarayiSellsF
  Left = 303
  Caption = #1711#1586#1575#1585#1588' '#1601#1585#1608#1588' '#1601#1589#1604#1610' '#1580#1607#1578' '#1583#1575#1585#1575#1574#1610'/'#1589#1575#1583#1585#1575#1578
  ClientWidth = 983
  ExplicitWidth = 999
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Width = 983
    ExplicitWidth = 983
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 904
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
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 823
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662
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
      Action = actSendToExle
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
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
    end
    object BitBtn15: TBitBtn
      AlignWithMargins = True
      Left = 742
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1575#1604#1610#1575#1578
      TabOrder = 6
      OnClick = BitBtn15Click
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 661
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actShowForm
      Align = alRight
      Caption = #1606#1605#1575#1740#1588' '#1601#1585#1605
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
    Width = 983
    ExplicitWidth = 983
    DesignSize = (
      983
      53)
    inherited ImgTemplate: TImage
      Left = 970
      ExplicitLeft = 978
    end
    inherited lblCaption: TLabel
      Left = 875
      ExplicitLeft = 875
    end
    inherited lblBaseDate: TLabel
      Left = 441
      ExplicitLeft = 445
    end
    inline frmTax: TfrmTax
      Left = 0
      Top = 0
      Width = 521
      Height = 53
      TabOrder = 0
      ExplicitWidth = 521
      ExplicitHeight = 53
      inherited lblTax: TLabel
        Alignment = taRightJustify
      end
      inherited lblTown: TLabel
        Alignment = taRightJustify
      end
      inherited sSpeedButton1: TSpeedButton
        OnClick = frmTaxsSpeedButton1Click
      end
      inherited mskTax: TMaskEdit
        OnChange = frmTaxmskTaxChange
      end
      inherited mskTown: TMaskEdit
        Left = 133
        Top = 29
        OnChange = frmTaxmskTaxChange
        ExplicitLeft = 133
        ExplicitTop = 29
      end
      inherited Panel1: TPanel
        Left = 361
        Height = 53
        ExplicitLeft = 361
        ExplicitHeight = 53
        inherited chkYear96: TCheckBox
          Top = 30
          ExplicitTop = 30
        end
        inherited cmbStuffShow: TComboBox
          OnChange = frmTaxcmbStuffShowChange
        end
      end
      inherited adcTTMS: TADOConnection
        Left = 67
      end
      inherited OpenDialog1: TOpenDialog
        Left = 81
        Top = 40
      end
      inherited qryConfig: TADOQuery
        Left = 236
        Top = 12
      end
      inherited qryTTMS: TADOQuery
        Left = 316
        Top = 65532
      end
    end
  end
  inherited Panel3: TPanel
    Top = 89
    Width = 983
    Height = 387
    ExplicitTop = 89
    ExplicitWidth = 983
    ExplicitHeight = 387
    object Panel1: TPanel
      Left = 2
      Top = 355
      Width = 979
      Height = 30
      Align = alBottom
      Color = clInactiveCaption
      ParentBackground = False
      TabOrder = 1
      object chkNotnationalID: TCheckBox
        AlignWithMargins = True
        Left = 103
        Top = 4
        Width = 346
        Height = 22
        Align = alLeft
        AllowGrayed = True
        BiDiMode = bdLeftToRight
        Caption = #1601#1585#1608#1588' '#1576#1607' '#1588#1585#1705#1578#1607#1575'('#1575#1601#1585#1575#1583') '#1601#1575#1602#1583' '#1705#1583' '#1575#1602#1578#1589#1575#1583#1740' ('#1705#1583' '#1605#1604#1740') '#1606#1605#1575#1740#1588' '#1583#1575#1583#1607' '#1606#1588#1608#1583'.'#8207
        Color = clInactiveCaption
        Ctl3D = True
        ParentBiDiMode = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 0
        OnClick = chkNotnationalIDClick
      end
      object chkPriceParvane: TCheckBox
        AlignWithMargins = True
        Left = 455
        Top = 4
        Width = 205
        Height = 22
        Align = alLeft
        AllowGrayed = True
        BiDiMode = bdLeftToRight
        Caption = #1605#1581#1575#1587#1576#1607' '#1605#1576#1604#1594' '#1705#1575#1604#1575' '#1740#1575' '#1582#1583#1605#1578' '#1605#1591#1575#1576#1602' '#1662#1585#1608#1575#1606#1607
        Color = clInactiveCaption
        Ctl3D = True
        ParentBiDiMode = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 1
        OnClick = chkNotnationalIDClick
      end
      object chkSum: TCheckBox
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 93
        Height = 22
        Align = alLeft
        AllowGrayed = True
        BiDiMode = bdLeftToRight
        Caption = #1580#1605#1593' '#1587#1591#1585#1607#1575
        Color = clCream
        Ctl3D = True
        ParentBiDiMode = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 2
        OnClick = chkSumClick
      end
    end
    object DBGrid1: TCedarDbgrid
      Left = 2
      Top = 2
      Width = 979
      Height = 336
      Align = alClient
      Color = clCream
      DataSource = srcSells
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
      OddRowColor = clGradientInactiveCaption
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      RowHeight = 21
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SortLocal = True
      TabOrder = 0
      OnDblClick = actShowFormExecute
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonID1'
          Footers = <>
          Width = 25
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptNumber'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptDate'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TAXID'
          Footers = <>
          Width = 106
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'VajhTypes'
          Footers = <>
          Width = 65
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustName'
          Footers = <>
          Width = 48
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'tax_statusNote'
          Footers = <>
          Width = 39
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SarFaslType'
          Footers = <>
          Width = 63
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'HCTarafGaradadTypeCode'
          Footers = <>
          Width = 40
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'HCKharidarTypeCode'
          Footers = <>
          Width = 40
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustFirstName'
          Footers = <>
          Width = 40
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FullCustName'
          Footers = <>
          Width = 48
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'EconomicNumber'
          Footers = <>
          Width = 80
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'NationalID'
          Footers = <>
          Width = 37
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'NationalCode'
          Footers = <>
          Width = 62
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'RegisterNumber'
          Footers = <>
          Width = 40
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PerCityCode'
          Footers = <>
          Width = 40
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Tel'
          Footers = <>
          Width = 24
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Mobile'
          Footers = <>
          Width = 36
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StateCode'
          Footers = <>
          Width = 40
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FullCustNameC3'
          Footers = <>
          Width = 52
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MobileC3'
          Footers = <>
          Width = 104
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'NationalIDC3'
          Footers = <>
          Width = 68
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Ostan'
          Footers = <>
          Width = 35
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CityCode'
          Footers = <>
          Width = 40
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Shahr'
          Footers = <>
          Width = 20
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'LenAddress'
          Footers = <>
          Width = 51
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Address'
          Footers = <>
          Width = 38
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PostalCode'
          Footers = <>
          Width = 46
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'GroupID'
          Footers = <>
          Width = 37
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'c_StuffName'
          Footers = <>
          Width = 86
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ForoushType'
          Footers = <>
          Width = 50
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'KalaType'
          Footers = <>
          Width = 38
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'KeshvarCode'
          Footers = <>
          Width = 48
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Kotaj_No'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Kotaj_Date'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'LC_No'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'LC_Date'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Gomrok_Arzyabi'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Gomrok_khoruj'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'UnitSellPrice'
          Footers = <>
          Width = 45
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotalOutputPrice'
          Footers = <>
          Width = 52
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DeficitValue'
          Footers = <>
          Width = 35
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotalOutputPriceDeficitValue'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TaxValueOnTax'
          Footers = <>
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TaxValueOnTown'
          Footers = <>
          Width = 83
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TaxValue'
          Footers = <>
          Title.Caption = #1580#1605#1593' '#1605#1575#1604#1610#1575#1578' '#1576#1585#1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607
          Width = 59
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TotallSellPrice'
          Footers = <>
          Width = 40
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PriceParvane'
          Footers = <>
          Width = 90
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ArzName'
          Footers = <>
          Width = 35
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'RialsEqual'
          Footers = <>
          Width = 48
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StuffpublicPercentI'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ArzAmount'
          Footers = <>
          Width = 34
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ArzType'
          Footers = <>
          Width = 32
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Arz_PriceParvane'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MoadelRialiPrice'
          Footers = <>
          Width = 53
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
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object Memo1: TMemo
      Left = 2
      Top = 338
      Width = 979
      Height = 17
      Align = alBottom
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clInactiveCaption
      Ctl3D = False
      Lines.Strings = (
        
          #1583#1585' '#1575#1610#1606' '#1711#1586#1575#1585#1588' '#1601#1585#1605#1607#1575#1610#1610' '#1606#1605#1575#1610#1588' '#1583#1575#1583#1607' '#1605#1610' '#1588#1608#1606#1583' '#1603#1607' '#1606#1608#1593' '#1578#1575#1579#1610#1585' '#1570#1606#1607#1575' '#1576#1585' '#1601#1585#1608 +
          #1588' '#1605#1579#1576#1578' '#1610#1575' '#1605#1606#1601#1610' '#1576#1575#1588#1583'.')
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  inline frmTaxTxt1: TfrmTaxTxt [3]
    Left = 0
    Top = 53
    Width = 983
    Height = 36
    Align = alTop
    TabOrder = 3
    ExplicitTop = 53
    ExplicitWidth = 983
    inherited Memo1: TMemo
      Width = 983
      Lines.Strings = (
        
          '1- '#1576#1575' '#1575#1606#1578#1582#1575#1576' '#1601#1575#1610#1604' Access '#1575#1591#1604#1575#1593#1575#1578' '#1575#1610#1606' '#1711#1586#1575#1585#1588' '#1583#1585' '#1570#1606' '#1584#1582#1610#1585#1607' '#1605#1610' '#1588#1608#1583'('#1583#1585 +
          ' '#1589#1608#1585#1578' '#1608#1580#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1576#1604#1610#1548#1575#1591#1604#1575#1593#1575#1578' '#1580#1583#1610#1583' '#1580#1575#1610#1711#1585#1610#1606' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1576#1604#1610' '#1605#1610' '#1711#1585#1583 +
          #1583' ).'
        
          '2- '#1662#1587' '#1575#1586' '#1575#1606#1580#1575#1605' '#1605#1585#1581#1604#1607' '#1610#1603' '#1606#1610#1575#1586' '#1605#1610' '#1576#1575#1588#1583' '#1576#1575' '#1575#1587#1578#1601#1575#1583#1607' '#1575#1586' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1583#1575#1585 +
          #1575#1574#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1584#1582#1610#1585#1607' '#1588#1583#1607' '#1585#1575' '#1576#1585#1585#1587#1610' '#1608' '#1606#1587#1576#1578' '#1576#1607' '#1575#1585#1587#1575#1604' '#1570#1606' '#1575#1602#1583#1575#1605' '#1588#1608#1583'.')
      ExplicitWidth = 983
    end
  end
  inherited ActionList: TActionList [4]
    Left = 616
    Top = 40
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actSendToExle: TAction
      AutoCheck = True
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExleExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actShowForm: TAction
      Caption = #1606#1605#1575#1740#1588' '#1601#1585#1605
      OnExecute = actShowFormExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 552
    Top = 46
  end
  object srcSells: TDataSource
    DataSet = qrySells
    Left = 216
    Top = 261
  end
  object qrySells: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    Left = 272
    Top = 165
    object qrySellsPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1583#1610#1601
      FieldName = 'PersonID1'
    end
    object qrySellsCustName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1588#1585#1705#1578'/'#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740' '#1582#1585#1740#1583#1575#1585
      FieldName = 'CustName'
      Size = 120
    end
    object qrySellsCustFirstName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1582#1585#1610#1583#1575#1585
      FieldName = 'CustFirstName'
      Size = 30
    end
    object qrySellsFullCustName: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578
      FieldName = 'FullCustName'
      ReadOnly = True
      Size = 120
    end
    object qrySellsNationalID: TStringField
      Tag = 3
      DisplayLabel = #1603#1583#1605#1604#1610
      FieldName = 'NationalID'
      Size = 12
    end
    object qrySellstax_statusNote: TStringField
      Tag = 3
      DisplayLabel = #1605#1608#1583#1740#1575#1606
      FieldName = 'tax_statusNote'
      ReadOnly = True
    end
    object qrySellsEconomicNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1610
      FieldName = 'EconomicNumber'
    end
    object qrySellsAddress: TStringField
      Tag = 3
      DisplayLabel = #1606#1588#1575#1606#1610
      FieldName = 'Address'
      Size = 100
    end
    object qrySellsTel: TStringField
      Tag = 3
      DisplayLabel = #1578#1604#1601#1606
      FieldName = 'Tel'
      Size = 30
    end
    object qrySellsMobile: TStringField
      Tag = 3
      DisplayLabel = #1605#1608#1576#1575#1610#1604
      FieldName = 'Mobile'
    end
    object qrySellsFullCustNameC3: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1585#1575#1606#1606#1583#1607
      FieldName = 'FullCustNameC3'
      ReadOnly = True
      Size = 120
    end
    object qrySellsNationalIDC3: TStringField
      Tag = 3
      DisplayLabel = #1705#1583' '#1605#1604#1740' '#1585#1575#1606#1606#1583#1607
      FieldName = 'NationalIDC3'
      Size = 12
    end
    object qrySellsMobileC3: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1607#1605#1585#1575#1607' '#1585#1575#1606#1606#1583#1607
      FieldName = 'MobileC3'
    end
    object qrySellsLenAddress: TIntegerField
      Tag = 3
      DisplayLabel = #1591#1608#1604' '#1570#1583#1585#1587
      FieldName = 'LenAddress'
      ReadOnly = True
    end
    object qrySellsGroupID: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607' '#1603#1575#1604#1575
      FieldName = 'GroupID'
    end
    object qrySellsPostalCode: TStringField
      Tag = 3
      DisplayLabel = #1603#1583#1662#1587#1578#1610
      FieldName = 'PostalCode'
      Size = 12
    end
    object qrySellsc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1603#1575#1604#1575' '#1608' '#1582#1583#1605#1575#1578
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qrySellsTotalOutputPriceDeficitValue: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1662#1587' '#1575#1586' '#1578#1582#1601#1740#1601
      FieldName = 'TotalOutputPriceDeficitValue'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySellsTotalOutputPrice: TBCDField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1585#1610#1575#1604#1610
      FieldName = 'TotalOutputPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySellsSumTotalOutputPrice: TBCDField
      Tag = 3
      FieldName = 'SumTotalOutputPrice'
      ReadOnly = True
      Precision = 19
    end
    object qrySellsTaxValue: TBCDField
      Tag = 3
      DisplayLabel = #1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607
      FieldName = 'TaxValue'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySellsTaxValueOnTax: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1604#1610#1575#1578' '#1576#1585' '#1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607
      FieldName = 'TaxValueOnTax'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySellsTaxValueOnTown: TBCDField
      Tag = 3
      DisplayLabel = #1593#1608#1575#1585#1590' '#1588#1607#1585#1583#1575#1585#1610
      FieldName = 'TaxValueOnTown'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySellsTotallSellPrice: TBCDField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1603#1604
      FieldName = 'TotallSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySellsRegisterNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1579#1576#1578
      FieldName = 'RegisterNumber'
      Size = 30
    end
    object qrySellsHCTarafGaradadTypeCode: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1582#1585#1740#1583#1575#1585
      FieldName = 'HCTarafGaradadTypeCode'
      OnGetText = qrySellsHCTarafGaradadTypeCodeGetText
    end
    object qrySellsHCKharidarTypeCode: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1588#1582#1589
      FieldName = 'HCKharidarTypeCode'
      OnGetText = qrySellsHCKharidarTypeCodeGetText
    end
    object qrySellsStateCode: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583' '#1575#1587#1578#1575#1606
      FieldName = 'StateCode'
    end
    object qrySellsOstan: TWideStringField
      Tag = 3
      DisplayLabel = #1575#1587#1578#1575#1606
      FieldName = 'Ostan'
      Size = 255
    end
    object qrySellsCityCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1588#1607#1585' '#1582#1585#1740#1583#1575#1585
      FieldName = 'CityCode'
    end
    object qrySellsShahr: TWideStringField
      Tag = 3
      DisplayLabel = #1588#1607#1585
      FieldName = 'Shahr'
      Size = 255
    end
    object qrySellsPerCityCode: TStringField
      Tag = 3
      DisplayLabel = #1662#1740#1588' '#1705#1583' '#1588#1607#1585#1587#1578#1575#1606
      FieldName = 'PerCityCode'
      Size = 10
    end
    object qrySellsSellEffect: TWordField
      Tag = 3
      FieldName = 'SellEffect'
    end
    object qrySellsReciptNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptNumber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySellsReciptDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'ReciptDate'
      Required = True
      Size = 10
    end
    object qrySellsVajhTypes: TStringField
      DisplayLabel = #1606#1581#1608#1607' '#1583#1585#1740#1575#1601#1578
      FieldName = 'VajhTypes'
    end
    object qrySellsSarFaslType: TWordField
      DisplayLabel = #1587#1585' '#1601#1589#1604' '#1581#1587#1575#1576
      FieldName = 'SarFaslType'
    end
    object qrySellsForoushType: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1601#1585#1608#1588
      FieldName = 'ForoushType'
    end
    object qrySellsKeshvarCode: TIntegerField
      DisplayLabel = #1605#1602#1589#1583' '#1705#1575#1604#1575
      FieldName = 'KeshvarCode'
    end
    object qrySellsKotaj_No: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1705#1608#1578#1575#1688' '#1575#1592#1607#1575#1585#1606#1575#1605#1607' '#1711#1605#1585#1705#1740
      FieldName = 'Kotaj_No'
    end
    object qrySellsKotaj_Date: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1705#1608#1578#1575#1688' '#1575#1592#1607#1575#1585#1606#1575#1605#1607' '#1711#1605#1585#1705#1740
      FieldName = 'Kotaj_Date'
      FixedChar = True
      Size = 10
    end
    object qrySellsLC_No: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1575#1593#1578#1576#1575#1585' '#1575#1587#1606#1575#1583#1740
      FieldName = 'LC_No'
      FixedChar = True
      Size = 19
    end
    object qrySellsLC_Date: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1575#1593#1578#1576#1575#1585' '#1575#1587#1606#1575#1583#1740
      FieldName = 'LC_Date'
      FixedChar = True
      Size = 10
    end
    object qrySellsGomrok_Arzyabi: TIntegerField
      DisplayLabel = #1705#1583' '#1711#1605#1585#1705' '#1605#1581#1604' '#1575#1585#1586#1740#1575#1576#1740
      FieldName = 'Gomrok_Arzyabi'
    end
    object qrySellsGomrok_khoruj: TIntegerField
      DisplayLabel = #1705#1583' '#1711#1605#1585#1705' '#1582#1585#1608#1580#1740
      FieldName = 'Gomrok_khoruj'
    end
    object qrySellsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qrySellsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qrySellsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qrySellsKalaType: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1705#1575#1604#1575
      FieldName = 'KalaType'
    end
    object qrySellsPriceParvane: TFloatField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1705#1575#1604#1575' '#1740#1575' '#1582#1583#1605#1578' '#1605#1591#1575#1576#1602' '#1662#1585#1608#1575#1606#1607
      FieldName = 'PriceParvane'
      currency = True
    end
    object qrySellsRialsEqual: TBCDField
      DisplayLabel = #1576#1585#1575#1576#1585#1740' '#1575#1585#1586
      FieldName = 'RialsEqual'
      Precision = 19
    end
    object qrySellsArzName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1575#1585#1586
      FieldName = 'ArzName'
      Size = 50
    end
    object qrySellsStuffpublicPercentI: TFloatField
      DisplayLabel = #1590#1585#1740#1576' '#1608#1575#1581#1583#1605#1588#1578#1585#1705
      FieldName = 'StuffpublicPercentI'
    end
    object qrySellsDeficitValue: TBCDField
      DisplayLabel = #1578#1582#1601#1740#1601
      FieldName = 'DeficitValue'
      currency = True
      Precision = 19
    end
    object qrySellsNationalCode: TStringField
      DisplayLabel = #1588#1606#1575#1587#1607' '#1605#1604#1740
      FieldName = 'NationalCode'
      Size = 30
    end
    object qrySellsAmountDeclaration: TFMTBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1585#1740#1575#1604#1740' '#1591#1576#1602' '#1575#1592#1607#1575#1585#1606#1575#1605#1607' '#1711#1605#1585#1705#1740
      FieldName = 'AmountDeclaration'
      Precision = 24
      Size = 4
    end
    object qrySellsAmountDeclarationArz: TFMTBCDField
      DisplayLabel = #1605#1576#1594' '#1575#1585#1586#1740' '#1591#1576#1602' '#1575#1592#1607#1575#1585#1606#1575#1605#1607' '#1711#1605#1585#1705#1740
      FieldName = 'AmountDeclarationArz'
      Precision = 24
      Size = 4
    end
    object qrySellsRTCarton: TFMTBCDField
      DisplayLabel = #1578#1593#1583#1575#1583' '#1705#1575#1585#1578#1606
      FieldName = 'RTCarton'
      Precision = 24
      Size = 4
    end
    object qrySellsRTWeight: TFMTBCDField
      DisplayLabel = #1608#1586#1606
      FieldName = 'RTWeight'
      Precision = 24
      Size = 4
    end
    object qrySellsArzAmount: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1575#1585#1586
      FieldName = 'ArzAmount'
    end
    object qrySellsArzType: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1575#1585#1586
      FieldName = 'ArzType'
    end
    object qrySellsArz_PriceParvane: TFloatField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1575#1585#1586#1740' '#1705#1575#1604#1575' '#1740#1575' '#1582#1583#1605#1578' '#1605#1591#1575#1576#1602' '#1662#1585#1608#1575#1606#1607
      FieldName = 'Arz_PriceParvane'
      currency = True
    end
    object qrySellsMoadelRialiPrice: TFloatField
      DisplayLabel = #1605#1593#1575#1583#1604' '#1585#1740#1575#1604#1740' '#1605#1576#1604#1594' '#1575#1585#1586#1740' '#1705#1575#1604#1575' '#1740#1575' '#1582#1583#1605#1578' '#1605#1591#1575#1576#1602' '#1583#1601#1575#1578#1585
      FieldName = 'MoadelRialiPrice'
    end
    object qrySellsEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
    end
    object qrySellsWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
    end
    object qrySellsUnitSellPrice: TFMTBCDField
      Tag = 3
      DisplayLabel = #1601#1610
      FieldName = 'UnitSellPrice'
      Precision = 19
    end
    object qrySellsTAXID: TStringField
      DisplayLabel = ' '#1588#1605#1575#1585#1607' '#1605#1606#1581#1589#1585' '#1576#1607' '#1601#1585#1583' '#1605#1575#1604#1740#1575#1578#1740
      FieldName = 'TAXID'
      Size = 50
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara2010\BSell\Exe\Report\rptDarayiSells.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
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
    EmailSettings.Enabled = True
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
    Left = 496
    Top = 181
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintCount = 10
      mmBottomOffset = 0
      mmHeight = 12171
      mmPrintPosition = 55000
      object plblBack: TppLabel
        Tag = 1
        DesignLayer = ppDesignLayer1
        UserName = 'plblBack'
        OnGetText = plblBackGetText
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'MS Sans Serif'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5027
        mmLeft = 84402
        mmTop = 794
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'GroupID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Badr'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 97102
        mmTop = 4763
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 255059
        mmTop = 4498
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'TotallSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0;($#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 794
        mmTop = 529
        mmWidth = 28575
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'TaxValue'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0;($#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 29369
        mmTop = 265
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'Tel'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5800
        mmLeft = 121179
        mmTop = 0
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'NationalID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 255853
        mmTop = 4763
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line102'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 92869
        mmTop = 4498
        mmWidth = 52123
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'Shahr'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3969
        mmLeft = 218017
        mmTop = 0
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 0
        mmTop = 8202
        mmWidth = 283898
        BandType = 4
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 230188
        mmTop = 4498
        mmWidth = 46302
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'CustName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4699
        mmLeft = 229130
        mmTop = 0
        mmWidth = 47361
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Address'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 10848
        mmLeft = 147109
        mmTop = 0
        mmWidth = 66146
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'PostalCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5800
        mmLeft = 121179
        mmTop = 5292
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'EconomicNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 230717
        mmTop = 5556
        mmWidth = 24342
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'TotalOutputPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0;($#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 51594
        mmTop = 529
        mmWidth = 26723
        BandType = 4
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'PersonID1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 276755
        mmTop = 529
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'c_StuffName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4064
        mmLeft = 82550
        mmTop = 265
        mmWidth = 37306
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25665
      mmPrintPosition = 0
      object ppDBCalcnum2alphabet: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalcnum2alphabet'
        OnGetText = pdbtxtnum2alphabetGetText
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'TotalOutputPrice'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5800
        mmLeft = 51594
        mmTop = 17727
        mmWidth = 29845
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'TotallSellPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0;($#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 0
        mmTop = 265
        mmWidth = 27517
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'TaxValue'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0;($#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 28575
        mmTop = 265
        mmWidth = 21167
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'TotalOutputPrice'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '$#,0;($#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6615
        mmLeft = 52652
        mmTop = 529
        mmWidth = 26723
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppPageStyle1: TppPageStyle
      Border.mmPadding = 0
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 200555
      mmPrintPosition = 0
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label29'
        Border.mmPadding = 0
        Caption = #1585#1610#1575#1604' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6604
        mmLeft = 92192
        mmTop = 172244
        mmWidth = 7027
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label26'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1604' '#1576#1581#1585#1608#1601' :'#8207
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
        mmLeft = 245798
        mmTop = 172244
        mmWidth = 21431
        BandType = 10
        LayerName = PageLayer1
      end
      object pdbtxtnum2alphabet: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'pdbtxtnum2alphabet'
        OnGetText = pdbtxtnum2alphabetGetText
        Border.mmPadding = 0
        DataField = 'TotalOutputPrice'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6477
        mmLeft = 100806
        mmTop = 171980
        mmWidth = 144463
        BandType = 10
        LayerName = PageLayer1
      end
      object plblPostalCode: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblPostalCode'
        OnGetText = plblPostalCodeGetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'plblPostalCode'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6350
        mmLeft = 15875
        mmTop = 12700
        mmWidth = 39158
        BandType = 10
        LayerName = PageLayer1
      end
      object ppImage3: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'Image3'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        RotationAngle = 0
        Border.mmPadding = 0
        Picture.Data = {
          07544269746D61702E080000424D2E0800000000000036000000280000001400
          0000220000000100180000000000F80700000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFFF4874BF0074BF74BFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFDF9C000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF740000000074BFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000740000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFF
          FFFFFF000000FFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFBFFFFF7474BF00007474BFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0074BF000074FFFFFF000074FFFFBF74000000000074BFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF
          7400740000FFFFFF00000074BFFFBFFFBF000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          BFFFFFFFFFBF749C4800740074480000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFDFFFFFBFFFDF9C000000000000FFFFFFFFFFFFFFFFFF9CDFFFDFDF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFF0000489C9CBFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFF
          FFFFFFFF000000000000FFFFFFFFFFFFFFFFFF000000FFFFBFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74BFFF00007474BFFF
          000000000000FFFFFFFFFFFFFFFFFF000000BFBFBFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9C4874000000000000000000
          0000FFFFFFFFFFFFFFFFFFDF9C48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFBF74FFBF74FFBF74FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFDF4874BF0074BFDFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDF9C00000000489CFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF9CDFFFFFFFFFFFFFFFFFFFFF000000DF9C48FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9CDF00
          00480074BF9CDFFF489CDF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDF9C489C48
          00740048740000740000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFBF
          FFFFBFFFFFBFFFFFFFFFFFFF74BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000009CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF000000000048FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFDFFFFF9CDFFF489CDFFFFFFFFFFFFFBFFFFF00000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFDFDF00004800000074BFFF74BFFF000074740000FFBF74FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFBF74BF74009C4800BF7400FFBF74FFFFBFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        mmHeight = 7408
        mmLeft = 277813
        mmTop = 32279
        mmWidth = 6085
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1575#1604#1610#1575#1578' '#1576#1585' '#1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 29633
        mmTop = 34925
        mmWidth = 19844
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 148696
        mmLeft = 47625
        mmTop = 30427
        mmWidth = 2117
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label202'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1603#1575#1604#1575' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 97102
        mmTop = 39952
        mmWidth = 20108
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label31'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1578#1604#1601#1606' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 129382
        mmTop = 32808
        mmWidth = 10583
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 130440
        mmLeft = 211932
        mmTop = 39952
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label30'
        Border.mmPadding = 0
        Caption = #1582#1610#1575#1576#1575#1606' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 171450
        mmTop = 40746
        mmWidth = 24606
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1588#1607#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 221805
        mmTop = 40746
        mmWidth = 5821
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label28'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1605#1604#1610' /'#1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 242888
        mmTop = 41010
        mmWidth = 27781
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label25'
        Border.mmPadding = 0
        Caption = '('#1582#1585#1610#1583#1575#1585' )'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 254630
        mmTop = 35719
        mmWidth = 8001
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line12'
        Border.mmPadding = 0
        Pen.Width = 0
        Weight = 0.250000000000000000
        mmHeight = 2646
        mmLeft = 92869
        mmTop = 39952
        mmWidth = 183621
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1662#1587#1578#1610' 10'#1585#1602#1605#1610' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5969
        mmLeft = 57150
        mmTop = 12171
        mmWidth = 22945
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = #1711#1586#1575#1585#1588' '#1601#1585#1608#1588' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 84667
        mmTop = 23813
        mmWidth = 22490
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1576#1585#1711#1588#1578#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 81248
        mmTop = 32808
        mmWidth = 10033
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 148696
        mmLeft = 76729
        mmTop = 30427
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel27: TppLabel
        Tag = 10
        DesignLayer = ppDesignLayer2
        UserName = 'Label27'
        OnGetText = ppLabel2GetText
        Border.mmPadding = 0
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'MS Sans Serif'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5165
        mmLeft = 1852
        mmTop = 23813
        mmWidth = 2794
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel14: TppLabel
        Tag = 7
        DesignLayer = ppDesignLayer2
        UserName = 'Label24'
        OnGetText = ppLabel2GetText
        Border.mmPadding = 0
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'MS Sans Serif'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5165
        mmLeft = 24871
        mmTop = 23813
        mmWidth = 2794
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel9: TppLabel
        Tag = 4
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        OnGetText = ppLabel2GetText
        Border.mmPadding = 0
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'MS Sans Serif'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5165
        mmLeft = 44450
        mmTop = 23813
        mmWidth = 2794
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel2: TppLabel
        Tag = 1
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        OnGetText = ppLabel2GetText
        Border.mmPadding = 0
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'MS Sans Serif'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5165
        mmLeft = 67204
        mmTop = 23548
        mmWidth = 2794
        BandType = 10
        LayerName = PageLayer1
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
        mmLeft = 1323
        mmTop = 11642
        mmWidth = 7673
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLblAddress: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblAddress'
        OnGetText = ppLblAddressGetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'LblAddress'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        mmHeight = 12435
        mmLeft = 80963
        mmTop = 11642
        mmWidth = 85196
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLblTel: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblTel'
        OnGetText = ppLblTelGetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'LblTel'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 127265
        mmTop = 23813
        mmWidth = 39158
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLblRegisterNumber: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblRegisterNumber'
        OnGetText = ppLblRegisterNumberGetText
        Border.mmPadding = 0
        Caption = 'LblRegisterNumber'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5821
        mmLeft = 232040
        mmTop = 24342
        mmWidth = 28575
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLblEconomicNumber: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblEconomicNumber'
        OnGetText = ppLblEconomicNumberGetText
        Border.mmPadding = 0
        Caption = 'LblEconomicNumber'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6615
        mmLeft = 223617
        mmTop = 17198
        mmWidth = 36999
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label21'
        OnGetText = ppLblCompanyNameGetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CompanyName'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5842
        mmLeft = 179123
        mmTop = 11642
        mmWidth = 81492
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line21'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 178859
        mmWidth = 79375
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 0
        mmTop = 169863
        mmWidth = 3175
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line101'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 148432
        mmLeft = 27252
        mmTop = 30427
        mmWidth = 2117
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 139700
        mmLeft = 90488
        mmTop = 30692
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 139700
        mmLeft = 117740
        mmTop = 30692
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 139965
        mmLeft = 142346
        mmTop = 30427
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 139700
        mmLeft = 227542
        mmTop = 30692
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 139965
        mmLeft = 273844
        mmTop = 30427
        mmWidth = 2646
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = #1605#1607#1585' '#1608' '#1575#1605#1590#1575' '#1605#1580#1575#1586' '#1588#1582#1589' '#1581#1602#1608#1602#1610
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
        mmLeft = 137584
        mmTop = 185473
        mmWidth = 39158
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label23'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1604' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 8996
        mmTop = 34925
        mmWidth = 11906
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label22'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1588#1575#1606#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 170127
        mmTop = 31221
        mmWidth = 35719
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label201'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1662#1587#1578#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 129382
        mmTop = 40746
        mmWidth = 10583
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1585#1581' '#1606#1608#1593' '#1603#1575#1604#1575' /'#1582#1583#1605#1575#1578' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 97896
        mmTop = 32279
        mmWidth = 20108
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594' '#1601#1585#1608#1588' '#1576#1607' '#1585#1610#1575#1604' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 50271
        mmTop = 34660
        mmWidth = 27517
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1608#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' /'#1606#1575#1605' '#1588#1585#1603#1578' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 233892
        mmTop = 31221
        mmWidth = 38100
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2646
        mmLeft = 0
        mmTop = 45508
        mmWidth = 284300
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1601#1589#1604' '#1576#1607#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5969
        mmLeft = 72231
        mmTop = 24077
        mmWidth = 11980
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = #1601#1589#1604' '#1578#1575#1576#1587#1578#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5969
        mmLeft = 48419
        mmTop = 24077
        mmWidth = 17187
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = #1601#1589#1604' '#1662#1575#1610#1610#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5969
        mmLeft = 29369
        mmTop = 24077
        mmWidth = 13250
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1601#1589#1604' '#1586#1605#1587#1578#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5969
        mmLeft = 6350
        mmTop = 24077
        mmWidth = 16722
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1604#1601#1606':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5969
        mmLeft = 166688
        mmTop = 23813
        mmWidth = 11642
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1579#1576#1578':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 261409
        mmTop = 24077
        mmWidth = 14552
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1588#1575#1606#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 166688
        mmTop = 11642
        mmWidth = 10319
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1575#1602#1578#1589#1575#1583#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5969
        mmLeft = 261409
        mmTop = 17727
        mmWidth = 20616
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1601#1585#1608#1588#1606#1583#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 261409
        mmTop = 11906
        mmWidth = 16637
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 0
        mmTop = 30427
        mmWidth = 284300
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLblYear: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblYear'
        OnGetText = ppLblYearGetText
        Border.mmPadding = 0
        Caption = #1587#1575#1604'     13'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 137584
        mmTop = 5821
        mmWidth = 15081
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = #1711#1586#1575#1585#1588' '#1601#1585#1608#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 133879
        mmTop = 0
        mmWidth = 21167
        BandType = 10
        LayerName = PageLayer1
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        ParentWidth = True
        mmHeight = 159279
        mmLeft = 0
        mmTop = 11113
        mmWidth = 284300
        BandType = 10
        LayerName = PageLayer1
      end
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
    DataSource = srcSells
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 424
    Top = 293
  end
  object qryForoush_Detail: TADOQuery
    Connection = frmTax.adcTTMS
    CursorType = ctStatic
    AfterOpen = qryForoush_DetailAfterOpen
    CommandTimeout = 60
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Foroush_Detail')
    Left = 88
    Top = 216
  end
  object qrySaderat_Detail: TADOQuery
    Connection = frmTax.adcTTMS
    CursorType = ctStatic
    AfterOpen = qryForoush_DetailAfterOpen
    CommandTimeout = 60
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Saderat_Detail')
    Left = 672
    Top = 248
  end
end
