inherited F5040F: TF5040F
  ActiveControl = cmbReciptType
  Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1608#1576' '#1587#1585#1608#1740#1587' '#1580#1583#1740#1583
  ClientWidth = 817
  ExplicitWidth = 833
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 443
    Width = 817
    BevelOuter = bvNone
    ExplicitTop = 443
    ExplicitWidth = 817
    object lblCaptionS: TLabel [0]
      Left = 717
      Top = 0
      Width = 4
      Height = 41
      Align = alRight
      Caption = '.'
      ExplicitHeight = 13
    end
    inherited BtnReject: TBitBtn
      Left = 3
      Top = 6
      Height = 29
      ExplicitLeft = 3
      ExplicitTop = 6
      ExplicitHeight = 29
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 724
      Top = 6
      Width = 90
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actMove
      Align = alRight
      Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578
      TabOrder = 1
    end
  end
  inherited Panel2: TPanel
    Width = 817
    BevelOuter = bvNone
    ExplicitWidth = 817
    inherited ImgTemplate: TImage
      Left = 812
      ExplicitLeft = 812
    end
    inherited lblCaption: TLabel
      Left = 710
      Top = 15
      Height = 35
      ExplicitLeft = 710
      ExplicitTop = 15
    end
    inherited lblBaseDate: TLabel
      Left = 366
      ExplicitLeft = 366
    end
  end
  inherited Panel3: TPanel
    Width = 817
    Height = 390
    BevelInner = bvNone
    BevelOuter = bvNone
    ExplicitWidth = 817
    ExplicitHeight = 390
    object statRecipts: TStatusBar
      Left = 0
      Top = 186
      Width = 817
      Height = 19
      Panels = <
        item
          Width = 200
        end
        item
          Width = 200
        end
        item
          Width = 200
        end
        item
          Width = 200
        end
        item
          Width = 200
        end>
    end
    object statReciptItems: TStatusBar
      Left = 0
      Top = 338
      Width = 817
      Height = 19
      Panels = <
        item
          Width = 200
        end
        item
          Width = 200
        end
        item
          Width = 200
        end
        item
          Width = 200
        end
        item
          Width = 200
        end>
    end
    object pnlTop: TPanel
      Left = 0
      Top = 357
      Width = 817
      Height = 33
      Margins.Top = 7
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
      object Label3: TLabel
        AlignWithMargins = True
        Left = 774
        Top = 8
        Width = 40
        Height = 22
        Margins.Top = 8
        Align = alRight
        Caption = #1606#1608#1593' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExplicitHeight = 13
      end
      object cmbReciptType: TComboBox
        AlignWithMargins = True
        Left = 602
        Top = 6
        Width = 166
        Height = 21
        Margins.Top = 6
        Align = alRight
        Style = csDropDownList
        TabOrder = 0
        OnChange = cmbReciptTypeChange
        OnEnter = cmbReciptTypeEnter
      end
    end
    object pnlB_or_C: TPanel
      Left = 0
      Top = 0
      Width = 817
      Height = 34
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 5
      object Label4: TLabel
        AlignWithMargins = True
        Left = 783
        Top = 8
        Width = 31
        Height = 23
        Margins.Top = 8
        Align = alRight
        Alignment = taRightJustify
        Caption = #1575#1586' '#1578#1575#1585#1740#1582
        ExplicitHeight = 13
      end
      object Label5: TLabel
        AlignWithMargins = True
        Left = 536
        Top = 8
        Width = 30
        Height = 23
        Margins.Top = 8
        Align = alRight
        Alignment = taRightJustify
        Caption = #1578#1575' '#1578#1575#1585#1740#1582
        ExplicitHeight = 13
      end
      object mskend: TMaskEdit
        AlignWithMargins = True
        Left = 395
        Top = 4
        Width = 135
        Height = 26
        Margins.Top = 4
        Margins.Bottom = 4
        Align = alRight
        Alignment = taRightJustify
        Color = 13431799
        EditMask = '9999-99-99;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '1402-10-02'
        ExplicitHeight = 21
      end
      object mskstart: TMaskEdit
        AlignWithMargins = True
        Left = 648
        Top = 4
        Width = 129
        Height = 26
        Margins.Top = 4
        Margins.Bottom = 4
        Align = alRight
        Alignment = taRightJustify
        Color = 13431799
        EditMask = '9999-99-99;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '1402-10-02'
        OnExit = mskstartExit
        ExplicitHeight = 21
      end
      object Button3: TButton
        AlignWithMargins = True
        Left = 166
        Top = 3
        Width = 146
        Height = 28
        Action = actReadList
        Align = alRight
        TabOrder = 2
      end
      object mskstartT: TMaskEdit
        AlignWithMargins = True
        Left = 572
        Top = 4
        Width = 70
        Height = 26
        Margins.Top = 4
        Margins.Bottom = 4
        Align = alRight
        Alignment = taRightJustify
        Color = clMoneyGreen
        EditMask = '99:00:00;1;_'
        MaxLength = 8
        TabOrder = 3
        Text = '00:00:00'
        OnExit = mskstartExit
        ExplicitHeight = 21
      end
      object mskendT: TMaskEdit
        AlignWithMargins = True
        Left = 318
        Top = 4
        Width = 71
        Height = 26
        Margins.Top = 4
        Margins.Bottom = 4
        Align = alRight
        Alignment = taRightJustify
        Color = clMoneyGreen
        EditMask = '99:00:00;1;_'
        MaxLength = 8
        TabOrder = 4
        Text = '23:59:59'
        OnExit = mskstartExit
        ExplicitHeight = 21
      end
    end
    object grdRecipts: TCedarDbgrid
      Left = 0
      Top = 34
      Width = 817
      Height = 152
      Align = alClient
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
      OddRowColor = clInfoBk
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 0
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object grdReciptItems: TCedarDbgrid
      Left = 0
      Top = 205
      Width = 817
      Height = 133
      Align = alBottom
      DataSource = srcReciptItems
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
      OddRowColor = clInfoBk
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 1
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object pb1: TProgressBar [3]
    Left = 0
    Top = 484
    Width = 817
    Height = 17
    Align = alBottom
    Max = 1
    Step = 1
    TabOrder = 3
  end
  object pb2: TProgressBar [4]
    Left = 0
    Top = 501
    Width = 817
    Height = 17
    Align = alBottom
    Max = 1
    Step = 1
    TabOrder = 4
  end
  inherited ActionList: TActionList
    object actAddCustomers: TAction
      Caption = #1575#1740#1580#1575#1583' '#1605#1588#1578#1585#1740
      OnExecute = actAddCustomersExecute
    end
    object actMove: TAction
      Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578
      OnExecute = actMoveExecute
    end
    object actReadList: TAction
      Caption = #1583#1585#1740#1575#1601#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1587#1585#1608#1585
      OnExecute = actReadListExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 208
    Top = 201
  end
  object qry_Recipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeOpen = qry_ReciptsBeforeOpen
    BeforeInsert = qry_ReciptsBeforeInsert
    BeforeEdit = qry_ReciptsBeforeEdit
    AfterScroll = qry_ReciptsAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        TOP (0) Fitful.Comment2 AS CodeMoshtari,  Fitful.C' +
        'omment2 AS NameMoshtari'
      
        ', Fitful.Comment2 AS CodeMeliMoshtari, Fitful.Comment2 AS Mobile' +
        'Moshtari, Fitful.Comment2 AS TelMoshtari,'
      
        '                        Recipts.ReciptNumber AS SerialFaktor,  R' +
        'ecipts.ReciptValue AS MablaghKol'
      '                        , Fitful.FitfulIDc AS Takhfif,'
      
        '                         Fitful.FitfulIDc AS BimeVaAvarez, Fitfu' +
        'l.FitfulIDc AS HazineErsal'
      
        '                         , Fitful.FitfulIDc AS Maliat, Fitful.Co' +
        'mment2 AS TarikhErsal, Fitful.Comment2 AS TarikhFaktor, Fitful.C' +
        'omment2 AS Address'
      
        ', Fitful.Comment2 AS CodeSarList   , Recipts.ReciptDate AS Tarik' +
        'hSarList'
      ''
      
        '  , Fitful.Comment2 AS TedadFaktor  , Fitful.Comment2 AS CodePey' +
        'k  , Fitful.Comment2 AS NamePeyk'
      
        '  , Fitful.Comment2 AS CodeNamayandegi , Fitful.Comment2 AS Name' +
        'Namayandegi'
      
        '  , Fitful.Comment2 AS CodePeygiri  , Fitful.Comment2 AS VaziatP' +
        'ardakht'
      
        '  , Fitful.Comment2 AS VaziarErsal  , Fitful.Comment2 AS NoePard' +
        'akht, Fitful.Comment2 AS NoePardakhtCode, Fitful.Comment2 AS   T' +
        'arikhTaeinVaziat'
      '    , Fitful.Comment2 AS   PersonalCode'
      ''
      '    , Fitful.FitfulIDc AS D_Collectedcount'
      '    , Fitful.FitfulIDc AS D_Collecteditem_price'
      '    , Fitful.FitfulIDc AS D_Price'
      '    , Fitful.Comment2 AS   D_Cityid'
      '    , Fitful.Comment2 AS   D_Product_id'
      '    , Fitful.Comment2 AS   D_Reseller'
      '    , Fitful.Comment2 AS   D_Resellerid'
      '    , Fitful.Comment2 AS   D_Title'
      '    , Fitful.Comment2 AS   D_ostan'
      ''
      ''
      ''
      ''
      'FROM            Recipts CROSS JOIN'
      '                         Fitful')
    Left = 296
    Top = 312
    object qry_ReciptsCodeMoshtari: TStringField
      FieldName = 'CodeMoshtari'
      Size = 300
    end
    object qry_ReciptsNoePardakhtCode: TStringField
      FieldName = 'NoePardakhtCode'
      Size = 300
    end
    object qry_ReciptsTakhfif: TBCDField
      FieldName = 'Takhfif'
      Precision = 19
    end
    object qry_ReciptsNameNamayandegi: TStringField
      FieldName = 'NameNamayandegi'
      Size = 300
    end
    object qry_ReciptsTarikhErsal: TStringField
      FieldName = 'TarikhErsal'
      Size = 300
    end
    object qry_ReciptsAddress: TStringField
      FieldName = 'Address'
      Size = 300
    end
    object qry_ReciptsTarikhSarList: TStringField
      FieldName = 'TarikhSarList'
      FixedChar = True
      Size = 10
    end
    object qry_ReciptsSerialFaktor: TIntegerField
      FieldName = 'SerialFaktor'
    end
    object qry_ReciptsNameMoshtari: TStringField
      FieldName = 'NameMoshtari'
      Size = 300
    end
    object qry_ReciptsMablaghKol: TBCDField
      FieldName = 'MablaghKol'
      Precision = 19
    end
    object qry_ReciptsTedadFaktor: TStringField
      FieldName = 'TedadFaktor'
      Size = 300
    end
    object qry_ReciptsCodeSarList: TStringField
      FieldName = 'CodeSarList'
      Size = 300
    end
    object qry_ReciptsTarikhFaktor: TStringField
      FieldName = 'TarikhFaktor'
      Size = 300
    end
    object qry_ReciptsCodeNamayandegi: TStringField
      FieldName = 'CodeNamayandegi'
      Size = 300
    end
    object qry_ReciptsCodePeygiri: TStringField
      FieldName = 'CodePeygiri'
      Size = 300
    end
    object qry_ReciptsVaziatPardakht: TStringField
      FieldName = 'VaziatPardakht'
      Size = 300
    end
    object qry_ReciptsVaziarErsal: TStringField
      FieldName = 'VaziarErsal'
      Size = 300
    end
    object qry_ReciptsNamePeyk: TStringField
      FieldName = 'NamePeyk'
      Size = 300
    end
    object qry_ReciptsCodePeyk: TStringField
      FieldName = 'CodePeyk'
      Size = 300
    end
    object qry_ReciptsNoePardakht: TStringField
      FieldName = 'NoePardakht'
      Size = 300
    end
    object qry_ReciptsTarikhTaeinVaziat: TStringField
      FieldName = 'TarikhTaeinVaziat'
      Size = 300
    end
    object qry_ReciptsPersonalCode: TStringField
      FieldName = 'PersonalCode'
      Size = 300
    end
    object qry_ReciptsD_Collectedcount: TBCDField
      FieldName = 'D_Collectedcount'
      Precision = 19
    end
    object qry_ReciptsMaliat: TBCDField
      FieldName = 'Maliat'
      Precision = 19
    end
    object qry_ReciptsHazineErsal: TBCDField
      FieldName = 'HazineErsal'
      Precision = 19
    end
    object qry_ReciptsBimeVaAvarez: TBCDField
      FieldName = 'BimeVaAvarez'
      Precision = 19
    end
    object qry_ReciptsTelMoshtari: TStringField
      FieldName = 'TelMoshtari'
      Size = 300
    end
    object qry_ReciptsMobileMoshtari: TStringField
      FieldName = 'MobileMoshtari'
      Size = 300
    end
    object qry_ReciptsCodeMeliMoshtari: TStringField
      FieldName = 'CodeMeliMoshtari'
      Size = 300
    end
    object qry_ReciptsD_Collecteditem_price: TBCDField
      FieldName = 'D_Collecteditem_price'
      Precision = 19
    end
    object qry_ReciptsD_Price: TBCDField
      FieldName = 'D_Price'
      Precision = 19
    end
    object qry_ReciptsD_Cityid: TStringField
      FieldName = 'D_Cityid'
      Size = 300
    end
    object qry_ReciptsD_Product_id: TStringField
      FieldName = 'D_Product_id'
      Size = 300
    end
    object qry_ReciptsD_Reseller: TStringField
      FieldName = 'D_Reseller'
      Size = 300
    end
    object qry_ReciptsD_Resellerid: TStringField
      FieldName = 'D_Resellerid'
      Size = 300
    end
    object qry_ReciptsD_Title: TStringField
      FieldName = 'D_Title'
      Size = 300
    end
    object qry_ReciptsD_ostan: TStringField
      FieldName = 'D_ostan'
      Size = 300
    end
    object qry_ReciptsD_StoreID: TIntegerField
      FieldKind = fkLookup
      FieldName = 'D_StoreID'
      LookupDataSet = qryStoresAlternative
      LookupKeyFields = 'AlternativeID'
      LookupResultField = 'StoreID'
      KeyFields = 'D_Resellerid'
      Lookup = True
    end
  end
  object qry_Recipt_Items: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qry_Recipt_ItemsAfterOpen
    BeforeInsert = qry_Recipt_ItemsBeforeInsert
    BeforeEdit = qry_Recipt_ItemsBeforeEdit
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        TOP (0) ReciptID AS SerialFaktor, StuffCode AS Cod' +
        'eMahsoul, ItemNote AS OnvanMahsoul, ItemNote AS CodeGheymat, Ite' +
        'mNote AS CodeVahedShomaresh, ItemNote AS OnvaneVahedShomaresh, '
      
        '                         UnitSellPrice AS GheymatVahed, InputEnt' +
        'ity AS Tedad, DeficitValue AS TakhfifMahsoul, TotallSellPrice AS' +
        ' final_price, ReciptID AS D_Resellerid, WaterCo AS DarSadTakhfif'
      'FROM            ReciptItems')
    Left = 120
    Top = 320
    object qry_Recipt_ItemsSerialFaktor: TIntegerField
      FieldName = 'SerialFaktor'
    end
    object qry_Recipt_ItemsCodeMahsoul: TLargeintField
      FieldName = 'CodeMahsoul'
    end
    object qry_Recipt_ItemsOnvanMahsoul: TStringField
      FieldName = 'OnvanMahsoul'
      Size = 100
    end
    object qry_Recipt_ItemsCodeGheymat: TStringField
      FieldName = 'CodeGheymat'
      Size = 100
    end
    object qry_Recipt_ItemsCodeVahedShomaresh: TStringField
      FieldName = 'CodeVahedShomaresh'
      Size = 100
    end
    object qry_Recipt_ItemsOnvaneVahedShomaresh: TStringField
      FieldName = 'OnvaneVahedShomaresh'
      Size = 100
    end
    object qry_Recipt_ItemsGheymatVahed: TBCDField
      FieldName = 'GheymatVahed'
      Precision = 19
    end
    object qry_Recipt_ItemsTedad: TFloatField
      FieldName = 'Tedad'
    end
    object qry_Recipt_ItemsDarSadTakhfif: TFloatField
      FieldName = 'DarSadTakhfif'
    end
    object qry_Recipt_ItemsD_Resellerid: TIntegerField
      FieldName = 'D_Resellerid'
    end
    object qry_Recipt_Itemsfinal_price: TFMTBCDField
      FieldName = 'final_price'
      Precision = 24
      Size = 0
    end
  end
  object srcRecipts: TDataSource
    DataSet = qry_Recipts
    OnStateChange = srcReciptsStateChange
    Left = 376
    Top = 317
  end
  object srcReciptItems: TDataSource
    DataSet = qry_Recipt_Items
    Left = 464
    Top = 357
  end
  object spAdd2Recipt: TADOStoredProc
    ProcedureName = 'Android_NewRecipts;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@ReciptType'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@StoreID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PersonID1'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PersonID2'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PersonID3'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@UserName'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@SellsEmporium'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ReciptID'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end
      item
        Name = '@YearID'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end
      item
        Name = '@ServerID'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end
      item
        Name = '@FormOutput'
        Attributes = [paNullable]
        DataType = ftWord
        Direction = pdInputOutput
        Precision = 3
        Value = Null
      end
      item
        Name = '@ReciptNumber'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end
      item
        Name = '@ReciptCaption'
        Attributes = [paNullable]
        DataType = ftWideString
        Direction = pdInputOutput
        Size = 70
        Value = Null
      end>
    Left = 32
    Top = 328
  end
  object qryCustomersAdd: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT    AlternativeCustID ,AlternativeCustID2 ,     CustID, Cu' +
        'stomerGrpID, CustName, Mobile, Tel, Tel2, Tel3, Fax, email, Nati' +
        'onalID, Address, CustomerNote, ModifyDate'
      'FROM            Customers'
      '')
    Left = 184
    Top = 8
    object qryCustomersAddCustID: TIntegerField
      FieldName = 'CustID'
    end
    object qryCustomersAddCustomerGrpID: TIntegerField
      FieldName = 'CustomerGrpID'
    end
    object qryCustomersAddCustName: TStringField
      FieldName = 'CustName'
      Size = 150
    end
    object qryCustomersAddMobile: TStringField
      FieldName = 'Mobile'
    end
    object qryCustomersAddTel: TStringField
      FieldName = 'Tel'
      Size = 30
    end
    object qryCustomersAddTel2: TWideStringField
      FieldName = 'Tel2'
      Size = 30
    end
    object qryCustomersAddTel3: TWideStringField
      FieldName = 'Tel3'
      Size = 30
    end
    object qryCustomersAddFax: TStringField
      FieldName = 'Fax'
      Size = 30
    end
    object qryCustomersAddemail: TStringField
      FieldName = 'email'
      Size = 30
    end
    object qryCustomersAddNationalID: TStringField
      FieldName = 'NationalID'
      Size = 12
    end
    object qryCustomersAddAddress: TStringField
      FieldName = 'Address'
      Size = 300
    end
    object qryCustomersAddCustomerNote: TStringField
      FieldName = 'CustomerNote'
      Size = 250
    end
    object qryCustomersAddModifyDate: TDateTimeField
      FieldName = 'ModifyDate'
    end
  end
  object qryRecipts4Add: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT        TOP (0) *'
      'FROM            Recipts ')
    Left = 704
    Top = 312
    object qryRecipts4AddReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryRecipts4AddStoreID: TSmallintField
      FieldName = 'StoreID'
    end
    object qryRecipts4AddReciptNumber: TIntegerField
      FieldName = 'ReciptNumber'
    end
    object qryRecipts4AddReciptDate: TStringField
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryRecipts4AddPersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object qryRecipts4AddPersonID2: TIntegerField
      FieldName = 'PersonID2'
    end
    object qryRecipts4AddReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryRecipts4AddSecondType: TIntegerField
      FieldName = 'SecondType'
    end
    object qryRecipts4AddServiceValue: TBCDField
      FieldName = 'ServiceValue'
      Precision = 19
    end
    object qryRecipts4AddReciptValue: TBCDField
      FieldName = 'ReciptValue'
      Precision = 19
    end
    object qryRecipts4AddTotalValue: TBCDField
      FieldName = 'TotalValue'
      Precision = 19
    end
    object qryRecipts4AddAddDecValue: TBCDField
      FieldName = 'AddDecValue'
      Precision = 19
    end
    object qryRecipts4AddDocNo: TIntegerField
      FieldName = 'DocNo'
    end
    object qryRecipts4AddDocDate: TStringField
      FieldName = 'DocDate'
      FixedChar = True
      Size = 10
    end
    object qryRecipts4AddReciptNote: TStringField
      FieldName = 'ReciptNote'
      Size = 400
    end
    object qryRecipts4AddParentReciptID: TIntegerField
      FieldName = 'ParentReciptID'
    end
    object qryRecipts4AddOperatorID: TIntegerField
      FieldName = 'OperatorID'
    end
    object qryRecipts4AddModifyDate: TDateTimeField
      FieldName = 'ModifyDate'
    end
    object qryRecipts4AddReciptState: TWordField
      FieldName = 'ReciptState'
    end
    object qryRecipts4AddUseUnitID: TIntegerField
      FieldName = 'UseUnitID'
    end
    object qryRecipts4AddExpireDate: TStringField
      FieldName = 'ExpireDate'
      FixedChar = True
      Size = 10
    end
    object qryRecipts4AddProjectID: TIntegerField
      FieldName = 'ProjectID'
    end
    object qryRecipts4AddBudgetID: TIntegerField
      FieldName = 'BudgetID'
    end
    object qryRecipts4AddAidNumber: TStringField
      FieldName = 'AidNumber'
      Size = 40
    end
    object qryRecipts4AddAidDate: TStringField
      FieldName = 'AidDate'
      FixedChar = True
      Size = 10
    end
    object qryRecipts4AddFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryRecipts4AddLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryRecipts4AddReciptStartDate: TStringField
      FieldName = 'ReciptStartDate'
      FixedChar = True
      Size = 10
    end
    object qryRecipts4AddReciptEndDate: TStringField
      FieldName = 'ReciptEndDate'
      FixedChar = True
      Size = 10
    end
    object qryRecipts4AddDebtControlActive: TWordField
      FieldName = 'DebtControlActive'
    end
    object qryRecipts4AddStoreID2: TSmallintField
      FieldName = 'StoreID2'
    end
    object qryRecipts4AddTruckNumber: TStringField
      FieldName = 'TruckNumber'
      Size = 100
    end
    object qryRecipts4AddMachineNo: TStringField
      FieldName = 'MachineNo'
      Size = 25
    end
    object qryRecipts4AddMachineName: TStringField
      FieldName = 'MachineName'
      Size = 50
    end
    object qryRecipts4AddArzTypeID: TIntegerField
      FieldName = 'ArzTypeID'
    end
    object qryRecipts4AddRialsEqual: TBCDField
      FieldName = 'RialsEqual'
      Precision = 19
    end
    object qryRecipts4AddUseOtherID: TWideStringField
      FieldName = 'UseOtherID'
      Size = 15
    end
    object qryRecipts4AddReciptsRow: TIntegerField
      FieldName = 'ReciptsRow'
    end
    object qryRecipts4AddSellsMethod: TIntegerField
      FieldName = 'SellsMethod'
    end
    object qryRecipts4AddSellsEmporium: TIntegerField
      FieldName = 'SellsEmporium'
    end
    object qryRecipts4AddMasirID: TIntegerField
      FieldName = 'MasirID'
    end
    object qryRecipts4AddDeliveryID: TIntegerField
      FieldName = 'DeliveryID'
    end
    object qryRecipts4AddPersonID2Bed: TWordField
      FieldName = 'PersonID2Bed'
    end
    object qryRecipts4AddRelatedID: TIntegerField
      FieldName = 'RelatedID'
    end
    object qryRecipts4AddServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryRecipts4AddYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryRecipts4AddPersonID3: TIntegerField
      FieldName = 'PersonID3'
    end
    object qryRecipts4AddCostDownSave: TBCDField
      FieldName = 'CostDownSave'
      Precision = 19
    end
    object qryRecipts4AddDefaultDate: TStringField
      FieldName = 'DefaultDate'
      FixedChar = True
      Size = 10
    end
    object qryRecipts4AddParentCoReciptID: TIntegerField
      FieldName = 'ParentCoReciptID'
    end
    object qryRecipts4AddTransmittal: TIntegerField
      FieldName = 'Transmittal'
    end
    object qryRecipts4AddInsertDate: TDateTimeField
      FieldName = 'InsertDate'
    end
    object qryRecipts4AddMachineInfo: TStringField
      FieldName = 'MachineInfo'
      Size = 50
    end
    object qryRecipts4AddInsertTime: TStringField
      FieldName = 'InsertTime'
      Size = 25
    end
    object qryRecipts4AddEditTime: TStringField
      FieldName = 'EditTime'
      Size = 25
    end
    object qryRecipts4AddPrvYearID: TIntegerField
      FieldName = 'PrvYearID'
    end
    object qryRecipts4AddUserRegistrationDoc: TStringField
      FieldName = 'UserRegistrationDoc'
      Size = 50
    end
    object qryRecipts4AddDefaultDuration: TSmallintField
      FieldName = 'DefaultDuration'
    end
    object qryRecipts4AddCalcGiftItems: TBooleanField
      FieldName = 'CalcGiftItems'
    end
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
      'SELECT  *  FROM    ReciptTypes'
      ''
      'where ReciptType = :ReciptType'
      ''
      ''
      ''
      '')
    Left = 102
    Top = 212
  end
  object qryReciptItems4Add: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT        TOP (0) *'
      'FROM            ReciptItems')
    Left = 568
    Top = 304
    object qryReciptItems4AddReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
    end
    object qryReciptItems4AddReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptItems4AddStuffCode: TLargeintField
      FieldName = 'StuffCode'
    end
    object qryReciptItems4AddStuffSize: TStringField
      FieldName = 'StuffSize'
      Size = 12
    end
    object qryReciptItems4AddStuffDiameter: TFloatField
      FieldName = 'StuffDiameter'
    end
    object qryReciptItems4AddStuffAlloy: TStringField
      FieldName = 'StuffAlloy'
      Size = 12
    end
    object qryReciptItems4AddInputEntity: TFloatField
      FieldName = 'InputEntity'
    end
    object qryReciptItems4AddOutputEntity: TFloatField
      FieldName = 'OutputEntity'
    end
    object qryReciptItems4AddInputWeight: TFloatField
      FieldName = 'InputWeight'
    end
    object qryReciptItems4AddOutputWeight: TFloatField
      FieldName = 'OutputWeight'
    end
    object qryReciptItems4AddRequestedEntity: TFloatField
      FieldName = 'RequestedEntity'
    end
    object qryReciptItems4AddRequestedWeight: TFloatField
      FieldName = 'RequestedWeight'
    end
    object qryReciptItems4AddControlCode: TLargeintField
      FieldName = 'ControlCode'
    end
    object qryReciptItems4AddStuffGrade: TWordField
      FieldName = 'StuffGrade'
    end
    object qryReciptItems4AddTotalInputPrice: TBCDField
      FieldName = 'TotalInputPrice'
      Precision = 19
    end
    object qryReciptItems4AddTotalOutputPrice: TBCDField
      FieldName = 'TotalOutputPrice'
      Precision = 19
    end
    object qryReciptItems4AddUnitSellPrice: TFMTBCDField
      FieldName = 'UnitSellPrice'
      Precision = 19
    end
    object qryReciptItems4AddTotallSellPrice: TBCDField
      FieldName = 'TotallSellPrice'
      Precision = 19
    end
    object qryReciptItems4AddItemNote: TStringField
      FieldName = 'ItemNote'
      Size = 100
    end
    object qryReciptItems4AddpreReciptItemID: TIntegerField
      FieldName = 'preReciptItemID'
    end
    object qryReciptItems4Addacc_TopicCode: TLargeintField
      FieldName = 'acc_TopicCode'
    end
    object qryReciptItems4Addacc_DetailCode: TStringField
      FieldName = 'acc_DetailCode'
      Size = 12
    end
    object qryReciptItems4Addacc_CTopicCode: TStringField
      FieldName = 'acc_CTopicCode'
      Size = 12
    end
    object qryReciptItems4AddUseUnitID: TIntegerField
      FieldName = 'UseUnitID'
    end
    object qryReciptItems4AddAidNumber: TStringField
      FieldName = 'AidNumber'
      Size = 40
    end
    object qryReciptItems4AddAidDate: TStringField
      FieldName = 'AidDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptItems4AddDiscount: TIntegerField
      FieldName = 'Discount'
    end
    object qryReciptItems4Addacc_CTopicCode2: TStringField
      FieldName = 'acc_CTopicCode2'
      Size = 12
    end
    object qryReciptItems4AddPersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object qryReciptItems4AddProductCode: TLargeintField
      FieldName = 'ProductCode'
    end
    object qryReciptItems4AddProductModel: TIntegerField
      FieldName = 'ProductModel'
    end
    object qryReciptItems4AddItemDate: TStringField
      FieldName = 'ItemDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptItems4AddOrderState: TWordField
      FieldName = 'OrderState'
    end
    object qryReciptItems4AddContactRate: TFloatField
      FieldName = 'ContactRate'
    end
    object qryReciptItems4AddWaterCo: TFloatField
      FieldName = 'WaterCo'
    end
    object qryReciptItems4AddFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryReciptItems4AddLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryReciptItems4AddShift: TIntegerField
      FieldName = 'Shift'
    end
    object qryReciptItems4AddDeficitValue: TBCDField
      FieldName = 'DeficitValue'
      Precision = 19
    end
    object qryReciptItems4AddUnitSellPrice2: TBCDField
      FieldName = 'UnitSellPrice2'
      Precision = 19
    end
    object qryReciptItems4AddMachineWeight: TFloatField
      FieldName = 'MachineWeight'
    end
    object qryReciptItems4AddTotalWeight: TFloatField
      FieldName = 'TotalWeight'
    end
    object qryReciptItems4AddAuxiliary: TFloatField
      FieldName = 'Auxiliary'
    end
    object qryReciptItems4AddMachineNo: TStringField
      FieldName = 'MachineNo'
      Size = 25
    end
    object qryReciptItems4AddMachineName: TStringField
      FieldName = 'MachineName'
      Size = 50
    end
    object qryReciptItems4AddMachineFullWeight: TFloatField
      FieldName = 'MachineFullWeight'
    end
    object qryReciptItems4AddSugarCo: TFloatField
      FieldName = 'SugarCo'
    end
    object qryReciptItems4AddSugarEntity: TFloatField
      FieldName = 'SugarEntity'
    end
    object qryReciptItems4AddStandardRate: TBCDField
      FieldName = 'StandardRate'
      Precision = 19
    end
    object qryReciptItems4AddArzAmount: TFloatField
      FieldName = 'ArzAmount'
    end
    object qryReciptItems4AddInvEntity: TFloatField
      FieldName = 'InvEntity'
    end
    object qryReciptItems4AddInvWeight: TFloatField
      FieldName = 'InvWeight'
    end
    object qryReciptItems4AddSecondTypeItem: TIntegerField
      FieldName = 'SecondTypeItem'
    end
    object qryReciptItems4AddTotalStandardRate: TBCDField
      FieldName = 'TotalStandardRate'
      Precision = 19
    end
    object qryReciptItems4AddAcceptEntity: TFloatField
      FieldName = 'AcceptEntity'
    end
    object qryReciptItems4AddRollbackEntity: TFloatField
      FieldName = 'RollbackEntity'
    end
    object qryReciptItems4AddAcceptWeight: TFloatField
      FieldName = 'AcceptWeight'
    end
    object qryReciptItems4AddRollbackWeight: TFloatField
      FieldName = 'RollbackWeight'
    end
    object qryReciptItems4AddTaxCo: TFloatField
      FieldName = 'TaxCo'
    end
    object qryReciptItems4AddTaxValue: TBCDField
      FieldName = 'TaxValue'
      Precision = 19
    end
    object qryReciptItems4AddServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptItems4AddYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryReciptItems4AddPortage: TBCDField
      FieldName = 'Portage'
      Precision = 19
    end
    object qryReciptItems4AddArticle: TBCDField
      FieldName = 'Article'
      Precision = 19
    end
    object qryReciptItems4AddWage: TBCDField
      FieldName = 'Wage'
      Precision = 19
    end
    object qryReciptItems4AddScoria: TBCDField
      FieldName = 'Scoria'
      Precision = 19
    end
    object qryReciptItems4AddWaste1: TBCDField
      FieldName = 'Waste1'
      Precision = 18
      Size = 3
    end
    object qryReciptItems4AddWaste2: TBCDField
      FieldName = 'Waste2'
      Precision = 18
      Size = 3
    end
    object qryReciptItems4AddFunction1: TBCDField
      FieldName = 'Function1'
      Precision = 18
      Size = 3
    end
    object qryReciptItems4AddCustomerRate: TBCDField
      FieldName = 'CustomerRate'
      Precision = 19
    end
    object qryReciptItems4AddPestEntity: TBCDField
      FieldName = 'PestEntity'
      Precision = 18
      Size = 2
    end
    object qryReciptItems4AddArzRate: TBCDField
      FieldName = 'ArzRate'
      Precision = 19
    end
    object qryReciptItems4AddInsertTime: TStringField
      FieldName = 'InsertTime'
      Size = 25
    end
    object qryReciptItems4AddEditTime: TStringField
      FieldName = 'EditTime'
      Size = 25
    end
    object qryReciptItems4AddIRow: TIntegerField
      FieldName = 'IRow'
    end
    object qryReciptItems4Addacc_CTopicCode3: TStringField
      FieldName = 'acc_CTopicCode3'
      Size = 12
    end
    object qryReciptItems4AddUnitCommission: TFMTBCDField
      FieldName = 'UnitCommission'
      Precision = 20
      Size = 4
    end
    object qryReciptItems4AddTransFormID: TIntegerField
      FieldName = 'TransFormID'
    end
    object qryReciptItems4AddPrvYearID: TIntegerField
      FieldName = 'PrvYearID'
    end
    object qryReciptItems4AddConfirming: TStringField
      FieldName = 'Confirming'
      Size = 50
    end
    object qryReciptItems4AddStuffCodingItemID: TIntegerField
      FieldName = 'StuffCodingItemID'
    end
    object qryReciptItems4AddLength_: TFMTBCDField
      FieldName = 'Length_'
      Precision = 20
      Size = 4
    end
    object qryReciptItems4AddWidth: TFMTBCDField
      FieldName = 'Width'
      Precision = 20
      Size = 4
    end
    object qryReciptItems4AddDiagnosisCalcTotalPrice: TWordField
      FieldName = 'DiagnosisCalcTotalPrice'
    end
    object qryReciptItems4AddStandardConsumptionCo: TFMTBCDField
      FieldName = 'StandardConsumptionCo'
      Precision = 20
      Size = 4
    end
    object qryReciptItems4AddStandardConsumption: TFloatField
      FieldName = 'StandardConsumption'
      ReadOnly = True
    end
    object qryReciptItems4AddDeficitValue2: TBCDField
      FieldName = 'DeficitValue2'
      Precision = 19
    end
    object qryReciptItems4AddDeficitValue3: TBCDField
      FieldName = 'DeficitValue3'
      Precision = 19
    end
    object qryReciptItems4AddID: TFMTBCDField
      FieldName = 'ID'
      ReadOnly = True
      Precision = 26
      Size = 0
    end
    object qryReciptItems4AddDeficitValue4: TBCDField
      FieldName = 'DeficitValue4'
      Precision = 19
    end
    object qryReciptItems4AddDeficitValueCo2: TFMTBCDField
      FieldName = 'DeficitValueCo2'
      Precision = 10
      Size = 9
    end
    object qryReciptItems4AddDeficitValueCo3: TFMTBCDField
      FieldName = 'DeficitValueCo3'
      Precision = 10
      Size = 9
    end
    object qryReciptItems4AddDeficitValueCo4: TFMTBCDField
      FieldName = 'DeficitValueCo4'
      Precision = 10
      Size = 9
    end
    object qryReciptItems4AddArzPortage: TFloatField
      FieldName = 'ArzPortage'
    end
    object qryReciptItems4AddIneffectiveInput: TWordField
      FieldName = 'IneffectiveInput'
    end
    object qryReciptItems4AddCommissionPrice: TBCDField
      FieldName = 'CommissionPrice'
      Precision = 19
    end
    object qryReciptItems4AddCommissionCurrency: TFMTBCDField
      FieldName = 'CommissionCurrency'
      Precision = 20
    end
    object qryReciptItems4AddCurrencyDiscounts: TFMTBCDField
      FieldName = 'CurrencyDiscounts'
      Precision = 20
      Size = 3
    end
  end
  object qryStuffcoding: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT        AlternativeStuffCode, StuffCode'
      'FROM            StuffCodingItems'
      'WHERE        (StuffCode <> 0) AND (AlternativeStuffCode <> '#39'0'#39')'
      'ORDER BY AlternativeStuffCode')
    Left = 467
    Top = 300
    object qryStuffcodingAlternativeStuffCode: TStringField
      FieldName = 'AlternativeStuffCode'
      FixedChar = True
      Size = 24
    end
    object qryStuffcodingStuffCode: TLargeintField
      FieldName = 'StuffCode'
    end
  end
  object dlg1: TOpenTextFileDialog
    DefaultExt = 'txt'
    FileName = 'Fara5040.txt'
    Filter = #1607#1585' '#1593#1583#1583' '#1583#1585' '#1740#1705' '#1587#1591#1585' Delimiter ";"|*.Txt|All File|*.*'
    Left = 496
    Top = 8
  end
  object qryDeficits4Add: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT        TOP (0) *'
      'FROM            ReciptsDeficits')
    Left = 576
    Top = 352
    object qryDeficits4AddReciptDeficitID: TIntegerField
      FieldName = 'ReciptDeficitID'
    end
    object qryDeficits4AddReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryDeficits4AddDeficitID: TSmallintField
      FieldName = 'DeficitID'
    end
    object qryDeficits4AddDeficitAdd: TBCDField
      FieldName = 'DeficitAdd'
      Precision = 19
    end
    object qryDeficits4AddDeficitDec: TBCDField
      FieldName = 'DeficitDec'
      Precision = 19
    end
    object qryDeficits4AddDeficitNote: TStringField
      FieldName = 'DeficitNote'
      Size = 50
    end
    object qryDeficits4AddServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryDeficits4AddYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryDeficits4AddArzAmount: TBCDField
      FieldName = 'ArzAmount'
      Precision = 18
    end
    object qryDeficits4AddDeficitCo: TFloatField
      FieldName = 'DeficitCo'
    end
  end
  object qryTransFormItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      ''
      ''
      ''
      '')
    Left = 342
    Top = 196
  end
  object qrySerialFaktors: TADOQuery
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
      'SELECT        TruckNumber'
      'FROM            Recipts'
      'WHERE        (ReciptType = :ReciptType)'
      'ORDER BY TruckNumber')
    Left = 664
    Top = 208
    object qrySerialFaktorsTruckNumber: TStringField
      FieldName = 'TruckNumber'
      Size = 100
    end
  end
  object qryCustomersAlternative: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT        CustID, AlternativeID'
      'FROM            CustomersAlternative')
    Left = 128
    Top = 48
    object qryCustomersAlternativeCustID: TIntegerField
      FieldName = 'CustID'
    end
    object qryCustomersAlternativeAlternativeID: TStringField
      DisplayLabel = #1705#1583' '#1605#1588#1578#1585#1740' '#1580#1575#1740#1711#1586#1740#1606
      FieldName = 'AlternativeID'
      FixedChar = True
      Size = 24
    end
  end
  object qryLookUps1200: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT        LookUpID, FactorType'
      'FROM            LookUps'
      'WHERE        (Kind = 1200)')
    Left = 320
    Top = 368
    object qryLookUps1200LookUpID: TIntegerField
      FieldName = 'LookUpID'
    end
    object qryLookUps1200FactorType: TStringField
      FieldName = 'FactorType'
      FixedChar = True
    end
  end
  object qrySellsEmporiums: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT        SellsEmporium, SellsEmporiumName'
      'FROM            SellsEmporiums')
    Left = 208
    Top = 352
    object qrySellsEmporiumsSellsEmporium: TIntegerField
      FieldName = 'SellsEmporium'
    end
    object qrySellsEmporiumsSellsEmporiumName: TWideStringField
      FieldName = 'SellsEmporiumName'
      Size = 100
    end
  end
  object qryStoresAlternative: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT        StoreID, AlternativeID'
      'FROM            StoresAlternative')
    Left = 506
    Top = 209
  end
end
