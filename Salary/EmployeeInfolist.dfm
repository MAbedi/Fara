inherited EmployeeInfolistF: TEmployeeInfolistF
  Left = 333
  Caption = #1604#1610#1587#1578' '#1662#1585#1587#1606#1604
  ClientHeight = 516
  ClientWidth = 875
  OnResize = FormResize
  ExplicitWidth = 883
  ExplicitHeight = 547
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel [0]
    Width = 875
    ExplicitWidth = 875
    DesignSize = (
      875
      53)
    inherited ImgTemplate: TImage
      Left = 837
      ExplicitLeft = 740
    end
    inherited lblCaption: TLabel
      Left = 767
      ExplicitLeft = 767
    end
  end
  inherited PnlUnderButton: TPanel [1]
    Top = 456
    Width = 875
    ExplicitTop = 456
    ExplicitWidth = 875
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 796
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
      Left = 715
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actShowForm
      Align = alRight
      Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 634
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662' (F7)'
      TabOrder = 3
    end
    object DBNavigator2: TDBNavigator
      AlignWithMargins = True
      Left = 328
      Top = 4
      Width = 300
      Height = 33
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      TabOrder = 4
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendtoExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'...'
      TabOrder = 5
    end
    object BitBtn6: TBitBtn
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
      TabOrder = 6
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
      TabOrder = 7
    end
  end
  inherited Panel3: TPanel
    Width = 875
    Height = 403
    ExplicitWidth = 875
    ExplicitHeight = 403
    object Dbgrid1: TCedarDbgrid
      Left = 2
      Top = 2
      Width = 871
      Height = 399
      Align = alClient
      Ctl3D = False
      DataSource = SrcEmployeeInfolist
      DynProps = <>
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterParams.FillStyle = cfstGradientEh
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
      ParentCtl3D = False
      ParentFont = False
      RowHeight = 21
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SortLocal = True
      TabOrder = 0
      OnDblClick = Dbgrid1DblClick
      OnKeyPress = Dbgrid1KeyPress
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_Radif'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonelNo'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonelName_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FullName'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'name_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'lastName_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonelName_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'fatherName_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'fatherName_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Nationality_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Nationality_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'BirthDate'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'BirthDateDay'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'BirthPlace_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'BirthPlace_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SodurDate'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SodurPlace_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SodurPlace_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'NationalID'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'IDNumber'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Sex_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Sex_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'marriage_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'marriage_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'childnumber_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'childnumber_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'SupPepNumber'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'LicenceCode'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'studyField_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'studyField_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StudyCity_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StudyCity_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'UnivercityName_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'UnivercityName_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StudyFinishedate'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StudyAverage'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'employDate'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'finishEmployDate'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'BankName_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'BankName_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'BranchCode'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AccountNumber'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AccBankType'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'insuranceID'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'insurancename'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DSW_JOB'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InsuranceNumber'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TaxCalculationType'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'address_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'address_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Note_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Note_L2'
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
          FieldName = 'BankCode'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'personelstate_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'licence_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'licence_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TaxCalculationName_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TaxCalculationName_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AccName_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AccName_L2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AccTopicCode'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AccDetailCode'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AccCTopicCode'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AccCTopicCode2'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AccCTopicCode3'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Mobile'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'personelstate_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonStateNo'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PercentWound'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MartyrChild'
          Footers = <>
          Width = 64
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object StatusBar1: TStatusBar [3]
    Left = 0
    Top = 497
    Width = 875
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 200
      end
      item
        Width = 50
      end>
  end
  inherited ActionList: TActionList
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662' (F7)'
      OnExecute = actPrintExecute
    end
    object actShowForm: TAction
      Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
      OnExecute = actShowFormExecute
    end
    object actSendtoExcel: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'...'
      OnExecute = actSendtoExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actPrintVijeh: TAction
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
    end
    object actSMS: TAction
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1603
      OnExecute = actSMSExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 152
  end
  object qryEmployeeInfolist: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryEmployeeInfolistAfterOpen
    OnCalcFields = qryEmployeeInfolistCalcFields
    Parameters = <
      item
        Name = 'PersonelNoForm'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonelNoTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2147483647
      end
      item
        Name = 'OfficeCodeFromTo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     * ,  RIGHT(BirthDate, 5) AS BirthDateDay, Name_L1 + '#39 +
        ' '#39'+LastName_L1 AS FullName'
      'FROM Pay.EmployeeInfo '
      
        'WHERE      ( EmployeeInfo.PersonelNo BETWEEN :PersonelNoForm AND' +
        ' :PersonelNoTo) '
      ':OfficeCodeFromTo'
      'order by EmployeeInfo.PersonelNo')
    Left = 576
    Top = 144
    object qryEmployeeInfolist_Radif: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldKind = fkCalculated
      FieldName = '_Radif'
      Calculated = True
    end
    object qryEmployeeInfolistPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
    end
    object qryEmployeeInfolistPersonelName_L1: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
      FieldName = 'PersonelName_L1'
      ReadOnly = True
      Size = 60
    end
    object qryEmployeeInfolistFullName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740
      FieldName = 'FullName'
      ReadOnly = True
      Size = 56
    end
    object qryEmployeeInfolistname_L1: TStringField
      DisplayLabel = #1606#1575#1605
      FieldName = 'name_L1'
      Size = 25
    end
    object qryEmployeeInfolistlastName_L1: TStringField
      DisplayLabel = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1740
      FieldName = 'lastName_L1'
      Size = 30
    end
    object qryEmployeeInfolistPersonelName_L2: TStringField
      DisplayLabel = 'PersonelName'
      FieldName = 'PersonelName_L2'
      ReadOnly = True
      Size = 60
    end
    object qryEmployeeInfolistfatherName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1583#1585
      FieldName = 'fatherName_L1'
      Size = 25
    end
    object qryEmployeeInfolistfatherName_L2: TStringField
      DisplayLabel = 'fatherName'
      FieldName = 'fatherName_L2'
      Size = 25
    end
    object qryEmployeeInfolistNationality_L1: TStringField
      DisplayLabel = #1578#1575#1576#1593#1610#1578
      FieldName = 'Nationality_L1'
      Size = 255
    end
    object qryEmployeeInfolistNationality_L2: TStringField
      DisplayLabel = 'Nationality'
      FieldName = 'Nationality_L2'
      Size = 255
    end
    object qryEmployeeInfolistBirthDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1578#1608#1604#1583
      FieldName = 'BirthDate'
      FixedChar = True
      Size = 10
    end
    object qryEmployeeInfolistBirthDateDay: TStringField
      Tag = 3
      DisplayLabel = #1585#1608#1586' '#1578#1608#1604#1583
      FieldName = 'BirthDateDay'
      ReadOnly = True
      Size = 5
    end
    object qryEmployeeInfolistBirthPlace_L1: TStringField
      Tag = 3
      DisplayLabel = #1605#1581#1604' '#1578#1608#1604#1583
      FieldName = 'BirthPlace_L1'
      Size = 255
    end
    object qryEmployeeInfolistBirthPlace_L2: TStringField
      DisplayLabel = 'BirthPlace'
      FieldName = 'BirthPlace_L2'
      Size = 255
    end
    object qryEmployeeInfolistSodurDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1589#1583#1608#1585
      FieldName = 'SodurDate'
      FixedChar = True
      Size = 10
    end
    object qryEmployeeInfolistSodurPlace_L1: TStringField
      Tag = 3
      DisplayLabel = #1605#1581#1604' '#1589#1583#1608#1585
      FieldName = 'SodurPlace_L1'
      Size = 255
    end
    object qryEmployeeInfolistSodurPlace_L2: TStringField
      DisplayLabel = 'SodurPlace'
      FieldName = 'SodurPlace_L2'
      Size = 255
    end
    object qryEmployeeInfolistNationalID: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1604#1610
      FieldName = 'NationalID'
      Size = 12
    end
    object qryEmployeeInfolistIDNumber: TStringField
      Tag = 3
      DisplayLabel = #1588'.'#1588#1606#1575#1587#1606#1575#1605#1607
      FieldName = 'IDNumber'
      Size = 12
    end
    object qryEmployeeInfolistSex_L1: TStringField
      Tag = 3
      DisplayLabel = #1580#1606#1587#1610#1578
      FieldName = 'Sex_L1'
      Size = 255
    end
    object qryEmployeeInfolistSex_L2: TStringField
      DisplayLabel = 'Sex'
      FieldName = 'Sex_L2'
      Size = 255
    end
    object qryEmployeeInfolistmarriage_L1: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1607#1604
      FieldName = 'marriage_L1'
      Size = 255
    end
    object qryEmployeeInfolistmarriage_L2: TStringField
      DisplayLabel = 'marriage'
      FieldName = 'marriage_L2'
      Size = 255
    end
    object qryEmployeeInfolistchildnumber_L1: TStringField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583' '#1601#1585#1586#1606#1583
      FieldName = 'childnumber_L1'
      Size = 255
    end
    object qryEmployeeInfolistchildnumber_L2: TStringField
      DisplayLabel = 'childnumber'
      FieldName = 'childnumber_L2'
      Size = 255
    end
    object qryEmployeeInfolistSupPepNumber: TWordField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583' '#1575#1601#1585#1575#1583' '#1578#1581#1578' '#1578#1603#1601#1604
      FieldName = 'SupPepNumber'
    end
    object qryEmployeeInfolistLicenceCode: TIntegerField
      FieldName = 'LicenceCode'
    end
    object qryEmployeeInfoliststudyField_L1: TStringField
      Tag = 3
      DisplayLabel = #1585#1588#1578#1607' '#1578#1581#1589#1610#1604#1610
      FieldName = 'studyField_L1'
      Size = 255
    end
    object qryEmployeeInfoliststudyField_L2: TStringField
      DisplayLabel = 'studyField'
      FieldName = 'studyField_L2'
      Size = 255
    end
    object qryEmployeeInfolistStudyCity_L1: TStringField
      Tag = 3
      DisplayLabel = #1605#1581#1604' '#1578#1581#1589#1610#1604
      FieldName = 'StudyCity_L1'
      Size = 255
    end
    object qryEmployeeInfolistStudyCity_L2: TStringField
      DisplayLabel = 'StudyCity'
      FieldName = 'StudyCity_L2'
      Size = 255
    end
    object qryEmployeeInfolistUnivercityName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1583#1575#1606#1588#1711#1575#1607
      FieldName = 'UnivercityName_L1'
      Size = 255
    end
    object qryEmployeeInfolistUnivercityName_L2: TStringField
      DisplayLabel = 'UnivercityName'
      FieldName = 'UnivercityName_L2'
      Size = 255
    end
    object qryEmployeeInfolistStudyFinishedate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1582#1584' '#1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610
      FieldName = 'StudyFinishedate'
      FixedChar = True
      Size = 10
    end
    object qryEmployeeInfolistStudyAverage: TFloatField
      Tag = 3
      DisplayLabel = #1605#1593#1583#1604
      FieldName = 'StudyAverage'
    end
    object qryEmployeeInfolistemployDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1587#1578#1582#1583#1575#1605
      FieldName = 'employDate'
      FixedChar = True
      Size = 10
    end
    object qryEmployeeInfolistfinishEmployDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606' '#1575#1587#1578#1582#1583#1575#1605
      FieldName = 'finishEmployDate'
      FixedChar = True
      Size = 10
    end
    object qryEmployeeInfolistBankName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1576#1575#1606#1603
      FieldName = 'BankName_L1'
      Size = 255
    end
    object qryEmployeeInfolistBankName_L2: TStringField
      DisplayLabel = 'BankName'
      FieldName = 'BankName_L2'
      Size = 255
    end
    object qryEmployeeInfolistBranchCode: TStringField
      DisplayLabel = #1603#1583' '#1588#1593#1576#1607
      FieldName = 'BranchCode'
      Size = 12
    end
    object qryEmployeeInfolistAccountNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      FieldName = 'AccountNumber'
      Size = 30
    end
    object qryEmployeeInfolistAccBankType: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1610
      FieldName = 'AccBankType'
    end
    object qryEmployeeInfolistinsuranceID: TWordField
      DisplayLabel = #1603#1583' '#1576#1610#1605#1607
      FieldName = 'insuranceID'
    end
    object qryEmployeeInfolistinsurancename: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1576#1610#1605#1607
      FieldName = 'insurancename'
      Size = 50
    end
    object qryEmployeeInfolistDSW_JOB: TStringField
      DisplayLabel = #1705#1583' '#1593#1606#1608#1575#1606' '#1588#1594#1604#1740
      FieldName = 'DSW_JOB'
      FixedChar = True
      Size = 6
    end
    object qryEmployeeInfolistInsuranceNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1576#1610#1605#1607
      FieldName = 'InsuranceNumber'
      Size = 18
    end
    object qryEmployeeInfolistTaxCalculationType: TIntegerField
      DisplayLabel = #1606#1581#1608#1607' '#1605#1581#1575#1587#1576#1607' '#1605#1575#1604#1610#1575#1578
      FieldName = 'TaxCalculationType'
    end
    object qryEmployeeInfolistaddress_L1: TStringField
      DisplayLabel = #1570#1583#1585#1587
      FieldName = 'address_L1'
      Size = 255
    end
    object qryEmployeeInfolistaddress_L2: TStringField
      DisplayLabel = 'address'
      FieldName = 'address_L2'
      Size = 255
    end
    object qryEmployeeInfolistNote_L1: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610' '
      FieldName = 'Note_L1'
      Size = 250
    end
    object qryEmployeeInfolistNote_L2: TStringField
      DisplayLabel = 'Note'
      FieldName = 'Note_L2'
      Size = 250
    end
    object qryEmployeeInfolistTel: TStringField
      FieldName = 'Tel'
      Size = 15
    end
    object qryEmployeeInfolistBankCode: TIntegerField
      FieldName = 'BankCode'
    end
    object qryEmployeeInfolistpersonelstate_L2: TStringField
      FieldName = 'personelstate_L2'
      Size = 255
    end
    object qryEmployeeInfolistlicence_L1: TStringField
      Tag = 3
      DisplayLabel = #1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610' '
      FieldName = 'licence_L1'
      Size = 255
    end
    object qryEmployeeInfolistlicence_L2: TStringField
      DisplayLabel = 'licence'
      FieldName = 'licence_L2'
      Size = 255
    end
    object qryEmployeeInfolistTaxCalculationName_L1: TStringField
      DisplayLabel = #1606#1581#1608#1607' '#1605#1581#1575#1587#1576#1607' '#1605#1575#1604#1610#1575#1578
      FieldName = 'TaxCalculationName_L1'
      Size = 255
    end
    object qryEmployeeInfolistTaxCalculationName_L2: TStringField
      FieldName = 'TaxCalculationName_L2'
      Size = 255
    end
    object qryEmployeeInfolistAccName_L1: TStringField
      DisplayLabel = #1606#1575#1605' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1610
      FieldName = 'AccName_L1'
      Size = 255
    end
    object qryEmployeeInfolistAccName_L2: TStringField
      DisplayLabel = 'AccName'
      FieldName = 'AccName_L2'
      Size = 255
    end
    object qryEmployeeInfolistAccTopicCode: TIntegerField
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'AccTopicCode'
    end
    object qryEmployeeInfolistAccDetailCode: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'AccDetailCode'
    end
    object qryEmployeeInfolistAccCTopicCode: TIntegerField
      DisplayLabel = #1603#1583'.'#1578#1601#1589#1740#1604#1740'2'
      FieldName = 'AccCTopicCode'
    end
    object qryEmployeeInfolistAccCTopicCode2: TIntegerField
      DisplayLabel = #1603#1583'.'#1578#1601#1589#1740#1604#1740'3'
      FieldName = 'AccCTopicCode2'
    end
    object qryEmployeeInfolistAccCTopicCode3: TIntegerField
      DisplayLabel = #1603#1583'.'#1578#1601#1589#1740#1604#1740'4'
      FieldName = 'AccCTopicCode3'
    end
    object qryEmployeeInfolistMobile: TStringField
      Tag = 3
      DisplayLabel = #1607#1605#1585#1575#1607
      FieldName = 'Mobile'
    end
    object qryEmployeeInfolistpersonelstate_L1: TStringField
      FieldName = 'personelstate_L1'
      Size = 255
    end
    object qryEmployeeInfolistPersonStateNo: TIntegerField
      DisplayLabel = #1608#1590#1593#1610#1578' '#1662#1585#1587#1606#1604
      FieldName = 'PersonStateNo'
    end
    object qryEmployeeInfolistPercentWound: TFloatField
      Tag = 3
      DisplayLabel = #1583#1585#1589#1583' '#1580#1575#1606#1576#1575#1586#1610
      FieldName = 'PercentWound'
    end
    object qryEmployeeInfolistMartyrChild: TBooleanField
      DisplayLabel = #1601#1585#1586#1606#1583' '#1588#1607#1740#1583
      FieldName = 'MartyrChild'
    end
  end
  object SrcEmployeeInfolist: TDataSource
    DataSet = qryEmployeeInfolist
    Left = 328
    Top = 160
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = SrcEmployeeInfolist
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 496
    Top = 264
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
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\rptEmployeeInfolist_Bank2.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
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
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.DropBoxSettings.SharedResources = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.GoogleDriveSettings.SharedResources = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken, oasEncryptTokens]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    CloudDriveSettings.OneDriveSettings.SharedResources = True
    Left = 600
    Top = 280
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 34925
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
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
        mmLeft = 75936
        mmTop = 0
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1585#1587#1606#1604' '#1576#1578#1601#1603#1610#1603' '#1606#1608#1593' '#1576#1575#1606#1603#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8424
        mmLeft = 65352
        mmTop = 6350
        mmWidth = 73025
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 27517
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 185209
        mmTop = 27517
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 138113
        mmTop = 27517
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 119327
        mmTop = 27517
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 62442
        mmTop = 27517
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 46567
        mmTop = 27517
        mmWidth = 2910
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 185738
        mmTop = 28575
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 151871
        mmTop = 28575
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1662#1583#1585' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 119856
        mmTop = 28575
        mmWidth = 17992
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1588#1606#1575#1587#1606#1575#1605#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 99484
        mmTop = 28575
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1605#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 62971
        mmTop = 28575
        mmWidth = 35190
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNo1'
        OnGetText = ppSystemVariable2GetText
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
        mmTop = 9260
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
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
        mmLeft = 9790
        mmTop = 4233
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1588#1593#1576#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 47096
        mmTop = 28575
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 21431
        mmTop = 28575
        mmWidth = 24871
        BandType = 0
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 98425
        mmTop = 27517
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 20902
        mmTop = 27517
        mmWidth = 3175
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5376
        mmLeft = 1323
        mmTop = 28575
        mmWidth = 18542
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = ':'#1603#1583' '#1576#1575#1606#1603
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
        mmLeft = 191823
        mmTop = 16933
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = ':'#1593#1606#1608#1575#1606' '#1576#1575#1606#1603
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
        mmLeft = 163513
        mmTop = 16933
        mmWidth = 14817
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'BankName_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 111125
        mmTop = 16933
        mmWidth = 52123
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'BankCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 178594
        mmTop = 16933
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 200290
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 185209
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 138113
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 119327
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 46567
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 62442
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'PersonelNo'
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
        mmLeft = 185738
        mmTop = 0
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'fatherName_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 119856
        mmTop = 0
        mmWidth = 17992
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'IDNumber'
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
        mmLeft = 99219
        mmTop = 0
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'PersonelName_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 138642
        mmTop = 0
        mmWidth = 46302
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'BranchCode'
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
        mmLeft = 47096
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 98425
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'AccountNumber'
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
        mmLeft = 21431
        mmTop = 0
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'AccName_L1'
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
        mmLeft = 529
        mmTop = 0
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 20902
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'NationalID'
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
        mmLeft = 62971
        mmTop = 0
        mmWidth = 35190
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 1058
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 2117
      mmPrintPosition = 0
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'BankName_L1'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 1323
        mmPrintPosition = 0
        object ppLine16: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line16'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 0
          mmWidth = 203300
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
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
  object PopList4Print: TPopupMenu
    Left = 570
    Top = 351
    object HintName1: TMenuItem
      Caption = #1575#1586' Hint '#1608' Name '#1575#1587#1578#1601#1575#1583#1607' '#1588#1583#1607
      Visible = False
    end
    object rptEmployeeInfolist_Total: TMenuItem
      Tag = 1
      Caption = #1670#1575#1662' '#1603#1604#1610
      Hint = 'PersonelNo'
      OnClick = rptEmployeeInfolist_TotalClick
    end
    object rptEmployeeInfolist_LicenceCode: TMenuItem
      Tag = 2
      Caption = #1604#1610#1587#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1585#1587#1606#1604' '#1576#1578#1601#1603#1610#1603' '#1606#1608#1593' '#1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610
      Hint = 'LicenceCode,PersonelNo'
      OnClick = rptEmployeeInfolist_TotalClick
    end
    object rptEmployeeInfolist_Insurance: TMenuItem
      Tag = 3
      Caption = #1604#1610#1587#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1585#1587#1606#1604' '#1576#1578#1601#1603#1610#1603' '#1606#1608#1593' '#1576#1610#1605#1607' ('#1575#1601#1602#1610')'#8207
      Hint = 'insuranceID,PersonelNo'
      OnClick = rptEmployeeInfolist_TotalClick
    end
    object rptEmployeeInfolist_Insurance2: TMenuItem
      Tag = 4
      Caption = #1604#1610#1587#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1585#1587#1606#1604' '#1576#1578#1601#1603#1610#1603' '#1606#1608#1593' '#1576#1610#1605#1607
      Hint = 'insuranceID,PersonelNo'
      OnClick = rptEmployeeInfolist_TotalClick
    end
    object rptEmployeeInfolist_Bank2: TMenuItem
      Tag = 5
      Caption = #1604#1610#1587#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1585#1587#1606#1604' '#1576#1578#1601#1603#1610#1603' '#1606#1608#1593' '#1581#1587#1575#1576' '#1576#1575#1606#1603#1610
      Hint = 'AccBankType,PersonelNo'
      OnClick = rptEmployeeInfolist_TotalClick
    end
    object rptEmployeeInfolist: TMenuItem
      Tag = 7
      Caption = #1670#1575#1662' '#1576#1585' '#1575#1587#1575#1587' '#1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
      Hint = 'PersonelNo'
      OnClick = rptEmployeeInfolist_TotalClick
    end
  end
  object ppDBPipeline2: TppDBPipeline
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 376
    Top = 264
  end
end
