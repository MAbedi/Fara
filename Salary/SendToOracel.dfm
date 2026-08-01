inherited SendToOracelF: TSendToOracelF
  Caption = 'SendToOracelF'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    ExplicitTop = 419
    ExplicitWidth = 745
    inherited BtnReject: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 3
      Height = 35
      Align = alLeft
      Cancel = False
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitHeight = 35
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 637
      Top = 3
      Width = 105
      Height = 35
      Action = actCurentRow
      Align = alRight
      Caption = #1575#1585#1587#1575#1604' '#1587#1591#1585' '#1580#1575#1585#1740
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 512
      Top = 3
      Width = 119
      Height = 35
      Action = actAllRow
      Align = alRight
      Caption = #1575#1585#1587#1575#1604' '#1607#1605#1607' '#1587#1591#1585#1607#1575
      TabOrder = 2
    end
  end
  inherited Panel3: TPanel
    ExplicitWidth = 745
    ExplicitHeight = 366
    object Panel1: TPanel
      Left = 0
      Top = 162
      Width = 745
      Height = 115
      Align = alBottom
      TabOrder = 0
      ExplicitTop = 156
      DesignSize = (
        745
        115)
      object Label1: TLabel
        Left = 44
        Top = 16
        Width = 19
        Height = 13
        Caption = 'URL'
      end
      object lblOrganization: TLabel
        Left = 2
        Top = 50
        Width = 61
        Height = 13
        Caption = 'Organization'
      end
      object Label2: TLabel
        Left = 692
        Top = 77
        Width = 35
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1605#1604#1610
        FocusControl = DBEdit1
      end
      object edtUrl: TEdit
        Left = 69
        Top = 13
        Width = 644
        Height = 21
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 0
        Text = 'http://138.201.40.210/ords/fara/integration/UserInsert'
      end
      object edtOrganization: TEdit
        Left = 69
        Top = 46
        Width = 428
        Height = 21
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 1
        Text = 'FARA'
      end
      object ComboBox1: TComboBox
        Left = 69
        Top = 73
        Width = 145
        Height = 21
        ItemIndex = 1
        TabOrder = 2
        Text = 'JSONValue'
        Items.Strings = (
          'Content'
          'JSONValue')
      end
      object DBEdit1: TDBEdit
        Left = 526
        Top = 73
        Width = 160
        Height = 19
        Anchors = [akTop, akRight]
        Color = clMenu
        Ctl3D = False
        DataField = 'NationalID'
        DataSource = srcPeronalInfo
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
    end
    object CedarDbgrid1: TCedarDbgrid
      Left = 0
      Top = 0
      Width = 745
      Height = 162
      Align = alClient
      DataSource = srcPeronalInfo
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
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 1
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object MemoContent: TMemo
      Left = 0
      Top = 277
      Width = 745
      Height = 89
      Align = alBottom
      Lines.Strings = (
        'MemoContent')
      TabOrder = 2
    end
  end
  inherited ActionList: TActionList
    object actCurentRow: TAction
      Caption = #1575#1585#1587#1575#1604' '#1587#1591#1585' '#1580#1575#1585#1740
      OnExecute = actCurentRowExecute
    end
    object actAllRow: TAction
      Caption = #1575#1585#1587#1575#1604' '#1607#1605#1607' '#1587#1591#1585#1607#1575
      OnExecute = actAllRowExecute
    end
  end
  object qryPeronalInfo: TADOQuery
    Connection = DMF.adcSalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  * FROM Pay.PersonelInfo '
      'ORDER BY PersonelNo')
    Left = 496
    Top = 295
    object qryPeronalInfoPersonelNo: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNo'
    end
    object qryPeronalInfoname_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605
      FieldName = 'name_L1'
      Required = True
      Size = 25
    end
    object qryPeronalInfoname_L2: TStringField
      FieldName = 'name_L2'
      Size = 25
    end
    object qryPeronalInfolastName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      FieldName = 'lastName_L1'
      Required = True
      Size = 50
    end
    object qryPeronalInfolastName_L2: TStringField
      FieldName = 'lastName_L2'
      Size = 50
    end
    object qryPeronalInfofatherName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1583#1585
      FieldName = 'fatherName_L1'
      Size = 25
    end
    object qryPeronalInfofatherName_L2: TStringField
      FieldName = 'fatherName_L2'
      Size = 25
    end
    object qryPeronalInfoNationalityCode: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1575#1576#1593#1610#1578
      FieldName = 'NationalityCode'
    end
    object qryPeronalInfoBirthDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1578#1608#1604#1583
      FieldName = 'BirthDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryPeronalInfoSodurDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1589#1583#1608#1585
      FieldName = 'SodurDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryPeronalInfoBirthPlace: TIntegerField
      Tag = 3
      DisplayLabel = #1605#1581#1604' '#1578#1608#1604#1583
      FieldName = 'BirthPlace'
      Required = True
    end
    object qryPeronalInfoSodurPlace: TIntegerField
      Tag = 3
      DisplayLabel = #1605#1581#1604' '#1589#1583#1608#1585
      FieldName = 'SodurPlace'
      Required = True
    end
    object qryPeronalInfoNationalID: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1604#1610
      FieldName = 'NationalID'
      Size = 12
    end
    object qryPeronalInfoIDNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1588#1606#1575#1587#1606#1575#1605#1607
      FieldName = 'IDNumber'
      Required = True
      Size = 12
    end
    object qryPeronalInfosex: TIntegerField
      Tag = 3
      DisplayLabel = #1580#1606#1587#1610#1578
      FieldName = 'sex'
      Required = True
    end
    object qryPeronalInfomarriage: TIntegerField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578' '#1578#1575#1607#1604
      FieldName = 'marriage'
    end
    object qryPeronalInfochildNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583' '#1575#1608#1604#1575#1583
      FieldName = 'childNumber'
      Required = True
    end
    object qryPeronalInfoLicenceCode: TIntegerField
      DisplayLabel = #1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610
      FieldName = 'LicenceCode'
      Required = True
    end
    object qryPeronalInfostudyField: TIntegerField
      DisplayLabel = #1585#1588#1578#1607' '#1578#1581#1589#1610#1604#1610
      FieldName = 'studyField'
    end
    object qryPeronalInfoStudyCityCode: TIntegerField
      FieldName = 'StudyCityCode'
    end
    object qryPeronalInfoUnivercityCode: TIntegerField
      DisplayLabel = #1606#1575#1605' '#1583#1575#1606#1588#1711#1575#1607
      FieldName = 'UnivercityCode'
    end
    object qryPeronalInfoStudyAverage: TFloatField
      FieldName = 'StudyAverage'
    end
    object qryPeronalInfoemployDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1587#1578#1582#1583#1575#1605
      FieldName = 'employDate'
      Required = True
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryPeronalInfofinishEmployDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1582#1575#1578#1605#1607' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'finishEmployDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryPeronalInfoBankCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1576#1575#1606#1603
      FieldName = 'BankCode'
    end
    object qryPeronalInfoBranchCode: TStringField
      FieldName = 'BranchCode'
      Size = 12
    end
    object qryPeronalInfoAccountNumber: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1610
      FieldName = 'AccountNumber'
      Size = 30
    end
    object qryPeronalInfoinsuranceID: TWordField
      DisplayLabel = #1606#1608#1593' '#1576#1610#1605#1607
      FieldName = 'insuranceID'
      Required = True
    end
    object qryPeronalInfoInsuranceNumber: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1576#1610#1605#1607
      FieldName = 'InsuranceNumber'
      Required = True
      Size = 18
    end
    object qryPeronalInfoTaxZone: TIntegerField
      DisplayLabel = #1605#1606#1591#1602#1607' '#1605#1575#1604#1610#1575#1578#1610
      FieldName = 'TaxZone'
    end
    object qryPeronalInfoCoTax: TBCDField
      DisplayLabel = #1590#1585#1610#1576' '#1579#1575#1576#1578' '#1605#1575#1604#1610#1575#1578#1610
      FieldName = 'CoTax'
      Precision = 10
      Size = 0
    end
    object qryPeronalInfoaddress_L1: TStringField
      DisplayLabel = #1570#1583#1585#1587
      FieldName = 'address_L1'
      Size = 255
    end
    object qryPeronalInfoaddress_L2: TStringField
      FieldName = 'address_L2'
      Size = 255
    end
    object qryPeronalInfoNote_L1: TStringField
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'Note_L1'
      Size = 500
    end
    object qryPeronalInfoNote_L2: TStringField
      FieldName = 'Note_L2'
      Size = 500
    end
    object qryPeronalInfoTel: TStringField
      DisplayLabel = #1578#1604#1601#1606
      FieldName = 'Tel'
      Size = 15
    end
    object qryPeronalInfoStoreDayTime: TWordField
      DisplayLabel = #1584#1582#1610#1585#1607' '#1575#1606#1578#1602#1575#1604#1610' '#1587#1606#1608#1575#1578
      FieldName = 'StoreDayTime'
    end
    object qryPeronalInfoemployDateM: TDateTimeField
      FieldName = 'employDateM'
    end
    object qryPeronalInfoStoreDayTimeActive: TBooleanField
      FieldName = 'StoreDayTimeActive'
    end
    object qryPeronalInfoEmployID: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1605#1587#1578#1582#1583#1605
      FieldName = 'EmployID'
      Size = 12
    end
    object qryPeronalInfoAccTopicCode: TIntegerField
      DisplayLabel = 'TopicCode'
      FieldName = 'AccTopicCode'
    end
    object qryPeronalInfoAccDetailCode: TIntegerField
      DisplayLabel = 'DetailCode'
      FieldName = 'AccDetailCode'
    end
    object qryPeronalInfoAccCTopicCode: TIntegerField
      DisplayLabel = 'CTopicCode'
      FieldName = 'AccCTopicCode'
    end
    object qryPeronalInfoAccCTopicCode2: TIntegerField
      DisplayLabel = 'CTopicCode2'
      FieldName = 'AccCTopicCode2'
    end
    object qryPeronalInfoPercentWound: TFloatField
      DisplayLabel = #1583#1585#1589#1583' '#1580#1575#1606#1576#1575#1586#1610
      FieldName = 'PercentWound'
    end
    object qryPeronalInfoSoldierState: TIntegerField
      DisplayLabel = #1608#1590#1593#1610#1578' '#1606#1592#1575#1605' '#1608#1592#1610#1601#1607
      FieldName = 'SoldierState'
    end
    object qryPeronalInfoSpecialJob: TWordField
      FieldName = 'SpecialJob'
    end
    object qryPeronalInfoAccCTopicCode3: TIntegerField
      FieldName = 'AccCTopicCode3'
    end
    object qryPeronalInfoCreditCardNo: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1603#1575#1585#1578' '#1575#1593#1578#1576#1575#1585#1610
      FieldName = 'CreditCardNo'
      Size = 25
    end
    object qryPeronalInfoMaskanKind: TIntegerField
      FieldName = 'MaskanKind'
    end
    object qryPeronalInfoSpecialState: TIntegerField
      FieldName = 'SpecialState'
    end
    object qryPeronalInfoPostalCode: TStringField
      DisplayLabel = #1705#1583#1662#1587#1578#1740
      FieldName = 'PostalCode'
      Size = 15
    end
    object qryPeronalInfoBranchInfo: TIntegerField
      FieldName = 'BranchInfo'
    end
    object qryPeronalInfoOffTime: TIntegerField
      FieldName = 'OffTime'
    end
    object qryPeronalInfoDSW_JOB: TStringField
      FieldName = 'DSW_JOB'
      FixedChar = True
      Size = 6
    end
    object qryPeronalInfoEducationType: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1578#1581#1589#1610#1604#1575#1578
      FieldName = 'EducationType'
    end
    object qryPeronalInfoEducationDegree: TIntegerField
      DisplayLabel = #1605#1602#1591#1593#8207#1578#1581#1589#1610#1604#1610
      FieldName = 'EducationDegree'
    end
    object qryPeronalInfoEducationGrade: TIntegerField
      DisplayLabel = #1662#1575#1610#1607#8207#1578#1581#1589#1610#1604#1610
      FieldName = 'EducationGrade'
    end
    object qryPeronalInfoTimeCardNumber: TStringField
      FieldName = 'TimeCardNumber'
      Size = 15
    end
    object qryPeronalInfoNumberOfMedicalOffice: TIntegerField
      FieldName = 'NumberOfMedicalOffice'
    end
    object qryPeronalInfoIssuedProvince: TIntegerField
      FieldName = 'IssuedProvince'
    end
    object qryPeronalInfoIssuedSection: TIntegerField
      FieldName = 'IssuedSection'
    end
    object qryPeronalInfoIssuedVillage: TIntegerField
      FieldName = 'IssuedVillage'
    end
    object qryPeronalInfoBirthProvince: TIntegerField
      FieldName = 'BirthProvince'
    end
    object qryPeronalInfoBirthSection: TIntegerField
      FieldName = 'BirthSection'
    end
    object qryPeronalInfoBirthVillage: TIntegerField
      FieldName = 'BirthVillage'
    end
    object qryPeronalInfoEmployTypeID: TIntegerField
      FieldName = 'EmployTypeID'
    end
    object qryPeronalInfoMobile: TStringField
      DisplayLabel = #1607#1605#1585#1575#1607
      FieldName = 'Mobile'
    end
    object qryPeronalInfoEmail: TWideStringField
      DisplayLabel = #1575#1740#1605#1740#1604
      FieldName = 'Email'
      Size = 100
    end
    object qryPeronalInfoMartyrChild: TBooleanField
      FieldName = 'MartyrChild'
    end
    object qryPeronalInfoTelegramChatID: TStringField
      DisplayLabel = 'Telegram Chat ID'
      FieldName = 'TelegramChatID'
      FixedChar = True
      Size = 30
    end
    object qryPeronalInfoStudyFinishedate: TStringField
      FieldName = 'StudyFinishedate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryPeronalInfoPersonelState: TIntegerField
      DisplayLabel = #1608#1590#1593#1610#1578' '#1662#1585#1587#1606#1604
      FieldName = 'PersonelState'
      Required = True
    end
    object qryPeronalInfoAccBankType: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1610
      FieldName = 'AccBankType'
      Required = True
    end
    object qryPeronalInfoTaxCalculationType: TIntegerField
      DisplayLabel = #1605#1576#1606#1575#1610' '#1605#1581#1575#1587#1576#1607' '#1605#1575#1604#1610#1575#1578
      FieldName = 'TaxCalculationType'
      Required = True
    end
    object qryPeronalInfoSupPepNumber: TWordField
      DisplayLabel = #1575#1601#1585#1575#1583' '#1578#1581#1578' '#1578#1603#1601#1604
      FieldName = 'SupPepNumber'
    end
  end
  object srcPeronalInfo: TDataSource
    AutoEdit = False
    DataSet = qryPeronalInfo
    Left = 352
    Top = 255
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 536
    Top = 109
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        name = 'DATA'
        Value = 
          '{"accountTypeId":"","address":"","bankAccount":"","bankId":"","b' +
          'irthDate":"1350\/09\/06","cellPhone":"09166321638","countryId":"' +
          '","currencyId":"","empNo":"37711","fatherName":"\u0639\u0628\u06' +
          '2F \u0639\u0644\u064A","fax":"","firstName":"\u0639\u0644\u064A"' +
          ',"idNumber":"977","idSerial":"","kind":"p","lastName":"\u0639\u0' +
          '628\u062F\u0627\u0644\u0647 \u0632\u0627\u062F\u0647","nationalC' +
          'ode":"1881180425","organization":"FARA","phone":"6202686","posta' +
          'lCode":""}'
      end>
    SynchronizedEvents = False
    Left = 184
    Top = 101
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'http://138.201.40.210/ords/fara/integration/UserInsert'
    ContentType = 'application/x-www-form-urlencoded'
    Params = <
      item
        name = 'DATA'
        Value = 
          '{"accountTypeId":"","address":"","bankAccount":"847","bankId":"8' +
          '47","birthDate":"1350\/09\/06","cellPhone":"09166321638","countr' +
          'yId":"","currencyId":"","empNo":"37711","fatherName":"\u0639\u06' +
          '28\u062F \u0639\u0644\u064A","fax":"","firstName":"\u0639\u0644\' +
          'u064A","idNumber":"977","idSerial":"","kind":"p","lastName":"\u0' +
          '639\u0628\u062F\u0627\u0644\u0647 \u0632\u0627\u062F\u0647","nat' +
          'ionalCode":"1881180425","organization":"FARA","phone":"6202686",' +
          '"postalCode":""}'
      end>
    HandleRedirects = True
    Left = 101
    Top = 126
  end
  object RESTResponse1: TRESTResponse
    Left = 360
    Top = 101
  end
end
