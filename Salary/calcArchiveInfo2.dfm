inherited CalcArchiveInfo2F: TCalcArchiveInfo2F
  Left = 330
  Top = 104
  Caption = #1605#1581#1575#1587#1576#1607' '#1581#1602#1608#1602
  ClientHeight = 536
  ClientWidth = 806
  OnDestroy = FormDestroy
  OnResize = FormResize
  ExplicitWidth = 814
  ExplicitHeight = 567
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel [0]
    Width = 806
    Height = 51
    ExplicitWidth = 806
    ExplicitHeight = 51
    inherited ImgTemplate: TImage
      Left = 672
      Top = 9
      Width = 33
      ExplicitLeft = 672
      ExplicitTop = 9
      ExplicitWidth = 33
    end
    inherited lblCaption: TLabel
      Left = 732
      ParentBiDiMode = False
      ExplicitLeft = 732
    end
  end
  inherited PnlUnderButton: TPanel [1]
    Top = 495
    Width = 806
    ExplicitTop = 495
    ExplicitWidth = 806
    inherited BtnReject: TBitBtn
      Left = 11
      ExplicitLeft = 11
    end
    object BitBtn1: TBitBtn
      Left = 500
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1605#1581#1575#1587#1576#1607'...'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 578
      Top = 8
      Width = 75
      Height = 25
      Action = ActBackWard
      Anchors = [akTop, akRight]
      Caption = #1605#1581#1575#1587#1576#1607' '#1605#1593#1608#1602
      TabOrder = 2
    end
    object BitBtn3: TBitBtn
      Left = 656
      Top = 8
      Width = 75
      Height = 25
      Action = ActArchive
      Anchors = [akTop, akRight]
      Caption = #1576#1575#1610#1711#1575#1606#1610#8207#1575#1591#1604#1575#1593#1575#1578
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Action = _actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 4
    end
    object BitBtn5: TBitBtn
      Left = 166
      Top = 8
      Width = 75
      Height = 25
      Action = _actSearch
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 5
    end
    object BitBtn6: TBitBtn
      Left = 244
      Top = 8
      Width = 75
      Height = 25
      Action = actSendToExcel
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 6
    end
    object BitBtn7: TBitBtn
      Left = 734
      Top = 8
      Width = 75
      Height = 25
      Action = ActFillter
      Anchors = [akTop, akRight]
      Caption = #1575#1593#1605#1575#1604' '#1601#1610#1604#1578#1585
      TabOrder = 7
    end
    object BitBtn8: TBitBtn
      Left = 422
      Top = 8
      Width = 75
      Height = 25
      Action = actDELETE
      Anchors = [akTop, akRight]
      Caption = #1581#1584#1601' '#1605#1581#1575#1587#1576#1607
      TabOrder = 8
    end
  end
  inherited Panel3: TPanel
    Top = 51
    Width = 806
    Height = 444
    ExplicitTop = 51
    ExplicitWidth = 806
    ExplicitHeight = 444
    object DBGrid1: TDBGrid
      Left = 2
      Top = 38
      Width = 586
      Height = 385
      Align = alClient
      Color = clCream
      DataSource = srcArchiveInfo
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PersonelNO'
          Title.Alignment = taCenter
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersoneName_L1'
          Title.Alignment = taCenter
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersoneName_L2'
          Title.Alignment = taCenter
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SalaryID'
          Title.Alignment = taCenter
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SalaryName_L1'
          Title.Alignment = taCenter
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SalaryName_L2'
          Title.Alignment = taCenter
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ProjectID'
          Title.Alignment = taCenter
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ProjectName_L1'
          Title.Alignment = taCenter
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ProjectName_L2'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Price'
          Title.Alignment = taCenter
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ArchiveID'
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 588
      Top = 38
      Width = 216
      Height = 385
      Align = alRight
      BevelInner = bvRaised
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      Ctl3D = True
      ParentBiDiMode = False
      ParentCtl3D = False
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 1
        Top = 159
        Width = 214
        Height = 225
        Align = alClient
        Caption = #1604#1610#1587#1578' '#1575#1601#1585#1575#1583' '#1601#1575#1602#1583' '#1605#1581#1575#1587#1576#1607' '#1581#1602#1608#1602
        TabOrder = 0
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 210
          Height = 189
          Align = alClient
          Color = 13431799
          DataSource = SrcOutPersonel
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PersonelNo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonName_L1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonName_L2'
              Visible = True
            end>
        end
        object StatusBar2: TStatusBar
          Left = 2
          Top = 204
          Width = 210
          Height = 19
          Panels = <
            item
              Width = 110
            end
            item
              Text = #1578#1593#1583#1575#1583
              Width = 50
            end>
        end
      end
      object GrpYears: TGroupBox
        Left = 1
        Top = 1
        Width = 214
        Height = 158
        Align = alTop
        Caption = #1587#1575#1604' 1384'
        TabOrder = 1
        object Label1: TLabel
          Left = 119
          Top = 15
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = #1575#1586' '#1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
        end
        object SpeedButton1: TSpeedButton
          Tag = 1
          Left = 8
          Top = 10
          Width = 22
          Height = 21
          Caption = '...'
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Tag = 2
          Left = 8
          Top = 58
          Width = 22
          Height = 21
          Caption = '...'
          OnClick = SpeedButton1Click
        end
        object Label2: TLabel
          Left = 119
          Top = 63
          Width = 80
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1575' '#1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
        end
        object Label3: TLabel
          Left = 119
          Top = 110
          Width = 56
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1575#1585#1610#1582' '#1576#1575#1610#1711#1575#1606#1610
        end
        object Label5: TLabel
          Left = 119
          Top = 138
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Caption = #1588#1605#1575#1585#1607' '#1576#1575#1610#1711#1575#1606#1610
        end
        object mskPrsnlNo1: TMaskEdit
          Tag = 1
          Left = 31
          Top = 10
          Width = 88
          Height = 21
          EditMask = '99999999999;1;_'
          MaxLength = 11
          TabOrder = 0
          Text = '           '
          OnChange = mskPrsnlNo1Change
        end
        object edtPrsnlName1: TEdit
          Tag = 1
          Left = 7
          Top = 32
          Width = 181
          Height = 21
          TabStop = False
          Color = clCream
          ReadOnly = True
          TabOrder = 1
        end
        object mskPrsnlNo2: TMaskEdit
          Tag = 2
          Left = 31
          Top = 58
          Width = 86
          Height = 21
          EditMask = '99999999999;1;_'
          MaxLength = 11
          TabOrder = 2
          Text = '           '
          OnChange = mskPrsnlNo1Change
        end
        object edtPrsnlName2: TEdit
          Tag = 2
          Left = 7
          Top = 82
          Width = 179
          Height = 21
          TabStop = False
          Color = clCream
          ReadOnly = True
          TabOrder = 3
        end
        object MskDate: TMaskEdit
          Tag = 2
          Left = 31
          Top = 106
          Width = 84
          Height = 21
          AutoSize = False
          Color = 13431799
          EditMask = '9999/99/99'
          MaxLength = 10
          TabOrder = 4
          Text = '    /  /  '
        end
        object MaskEdit1: TMaskEdit
          Tag = 2
          Left = 31
          Top = 131
          Width = 84
          Height = 21
          AutoSize = False
          Color = 13431799
          Ctl3D = False
          EditMask = '99999999'
          MaxLength = 8
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
          Text = '        '
        end
      end
    end
    object StatusBar1: TStatusBar
      Left = 2
      Top = 423
      Width = 802
      Height = 19
      Panels = <
        item
          Width = 300
        end
        item
          Width = 300
        end
        item
          Text = #1578#1593#1583#1575#1583
          Width = 300
        end>
    end
    object ToolBar1: TToolBar
      Left = 2
      Top = 2
      Width = 802
      Height = 36
      BorderWidth = 2
      ButtonHeight = 21
      ButtonWidth = 54
      Caption = 'ToolBar1'
      EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
      EdgeInner = esLowered
      ShowCaptions = True
      TabOrder = 3
      object ToolButton1: TToolButton
        Tag = 1
        Left = 0
        Top = 0
        Caption = #1601#1585#1608#1585#1583#1610#1606
        Grouped = True
        ImageIndex = 0
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton2: TToolButton
        Tag = 2
        Left = 54
        Top = 0
        Caption = #1575#1585#1583#1610#1576#1607#1588#1578
        Grouped = True
        ImageIndex = 1
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton3: TToolButton
        Tag = 3
        Left = 108
        Top = 0
        Caption = #1582#1585#1583#1575#1583
        Grouped = True
        ImageIndex = 2
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton4: TToolButton
        Tag = 4
        Left = 162
        Top = 0
        Caption = #1578#1610#1585
        Grouped = True
        ImageIndex = 3
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton5: TToolButton
        Tag = 5
        Left = 216
        Top = 0
        Caption = #1605#1585#1583#1575#1583
        Grouped = True
        ImageIndex = 4
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton6: TToolButton
        Tag = 6
        Left = 270
        Top = 0
        Caption = #1588#1607#1585#1610#1608#1585
        Grouped = True
        ImageIndex = 5
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton7: TToolButton
        Tag = 7
        Left = 324
        Top = 0
        Caption = #1605#1607#1585
        Grouped = True
        ImageIndex = 6
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton8: TToolButton
        Tag = 8
        Left = 378
        Top = 0
        Caption = #1570#1576#1575#1606
        Grouped = True
        ImageIndex = 7
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton9: TToolButton
        Tag = 9
        Left = 432
        Top = 0
        Caption = #1570#1584#1585
        Grouped = True
        ImageIndex = 8
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton10: TToolButton
        Tag = 10
        Left = 486
        Top = 0
        Caption = #1583#1610
        Grouped = True
        ImageIndex = 9
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton11: TToolButton
        Tag = 11
        Left = 540
        Top = 0
        Caption = #1576#1607#1605#1606
        Grouped = True
        ImageIndex = 10
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton12: TToolButton
        Tag = 12
        Left = 594
        Top = 0
        Caption = #1575#1587#1601#1606#1583
        Grouped = True
        ImageIndex = 11
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
    end
  end
  inherited ActionList: TActionList
    Left = 576
    inherited _actSearch: TAction
      OnExecute = _actSearchExecute
    end
    inherited _actSort: TAction
      OnExecute = _actSortExecute
    end
    object actCal: TAction
      Caption = #1605#1581#1575#1587#1576#1607
      OnExecute = actCalExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
    end
    object ActArchive: TAction
      Caption = #1576#1575#1610#1711#1575#1606#1610#8207#1575#1591#1604#1575#1593#1575#1578
      OnExecute = ActArchiveExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      OnExecute = actSendToExcelExecute
    end
    object ActBackWard: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1605#1593#1608#1602
      OnExecute = ActBackWardExecute
    end
    object ActFillter: TAction
      Caption = #1575#1593#1605#1575#1604' '#1601#1610#1604#1578#1585
      OnExecute = ActFillterExecute
    end
    object actDELETE: TAction
      Caption = #1581#1584#1601' '#1605#1581#1575#1587#1576#1607
      OnExecute = actDELETEExecute
    end
    object actInsourance: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1576#1610#1605#1607
      OnExecute = actInsouranceExecute
    end
    object actContainTax: TAction
      Caption = #1605#1581#1575#1587#1576#1607' '#1605#1575#1604#1610#1575#1578
      OnExecute = actContainTaxExecute
    end
  end
  object qryArchiveInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    BeforeOpen = qryArchiveInfoBeforeOpen
    AfterOpen = qryArchiveInfoAfterOpen
    CommandTimeout = 60
    Parameters = <
      item
        Name = 'Mounth'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'PersonelNoFrom'
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
      end>
    SQL.Strings = (
      
        'SELECT      Pay.FixedCalculated.*, Pay.PersonelInfo.lastName_L1 ' +
        '+ '#39' '#39' + Pay.PersonelInfo.name_L1 AS PersoneName_L1,'
      
        '                      Pay.PersonelInfo.lastName_L2 + '#39' '#39' + Pay.P' +
        'ersonelInfo.name_L2 AS PersoneName_L2, Pay.FormsInfo.InfoName_L1' +
        ' AS ProjectName_L1,'
      
        '                      Pay.FormsInfo.InfoName_L2 AS ProjectName_L' +
        '2, FormsInfo_1.InfoName_L1 AS SalaryName_L1, FormsInfo_1.InfoNam' +
        'e_L2 AS SalaryName_L2'
      'FROM         Pay.FixedCalculated LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo ON Pay.FixedCalculated.Proje' +
        'ctID = Pay.FormsInfo.FormInfoID LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo FormsInfo_1 ON Pay.FixedCalc' +
        'ulated.SalaryID = FormsInfo_1.FormInfoID LEFT OUTER JOIN'
      
        '                      Pay.PersonelInfo ON Pay.FixedCalculated.Pe' +
        'rsonelNO = Pay.PersonelInfo.PersonelNo'
      
        'WHERE     (Pay.FixedCalculated.Mounth = :Mounth) AND (Pay.FixedC' +
        'alculated.PersonelNO BETWEEN :PersonelNoFrom AND :PersonelNoTo)'
      
        'ORDER BY Pay.FixedCalculated.PersonelNO, Pay.FixedCalculated.Arc' +
        'hiveID')
    Left = 224
    Top = 337
    object qryArchiveInfoFixedCID: TAutoIncField
      FieldName = 'FixedCID'
      ReadOnly = True
    end
    object qryArchiveInfoFunctionID: TIntegerField
      FieldName = 'FunctionID'
    end
    object qryArchiveInfoFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryArchiveInfoPersonelNO: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607#8207#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNO'
    end
    object qryArchiveInfoProjectID: TIntegerField
      Tag = 3
      CustomConstraint = 's'
      DisplayLabel = #1603#1583'.'#1662#1585#1608#1688#1607
      FieldName = 'ProjectID'
    end
    object qryArchiveInfoOfficeCode: TIntegerField
      FieldName = 'OfficeCode'
    end
    object qryArchiveInfoJobCede: TIntegerField
      FieldName = 'JobCede'
    end
    object qryArchiveInfoSalaryID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1593#1575#1605#1604
      FieldName = 'SalaryID'
    end
    object qryArchiveInfoMounth: TWordField
      FieldName = 'Mounth'
    end
    object qryArchiveInfoPrice: TBCDField
      Tag = 3
      CustomConstraint = 's'
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Price'
      currency = True
      Precision = 19
    end
    object qryArchiveInfoBedBes: TWordField
      FieldName = 'BedBes'
    end
    object qryArchiveInfoCalCulateKind: TWordField
      FieldName = 'CalCulateKind'
    end
    object qryArchiveInfoAccTopicCode: TLargeintField
      FieldName = 'AccTopicCode'
    end
    object qryArchiveInfoAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qryArchiveInfoAccCTopicCode: TIntegerField
      FieldName = 'AccCTopicCode'
    end
    object qryArchiveInfoAccCTopicCode2: TIntegerField
      FieldName = 'AccCTopicCode2'
    end
    object qryArchiveInfoArchiveDate: TStringField
      FieldName = 'ArchiveDate'
      FixedChar = True
      Size = 10
    end
    object qryArchiveInfoDocNo: TIntegerField
      FieldName = 'DocNo'
    end
    object qryArchiveInfoDocDate: TStringField
      FieldName = 'DocDate'
      FixedChar = True
      Size = 10
    end
    object qryArchiveInfoShowListKind: TWordField
      FieldName = 'ShowListKind'
    end
    object qryArchiveInfoArchiveID: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1576#1575#1610#1711#1575#1606#1610
      FieldName = 'ArchiveID'
    end
    object qryArchiveInfoPersoneName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605#8207#1608#1606#1575#1605#8207#1582#1575#1606#1608#1575#1583#1711#1610
      FieldName = 'PersoneName_L1'
      ReadOnly = True
      Size = 56
    end
    object qryArchiveInfoPersoneName_L2: TStringField
      FieldName = 'PersoneName_L2'
      ReadOnly = True
      Size = 56
    end
    object qryArchiveInfoProjectName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1585#1608#1688#1607
      FieldName = 'ProjectName_L1'
      Size = 255
    end
    object qryArchiveInfoProjectName_L2: TStringField
      FieldName = 'ProjectName_L2'
      Size = 255
    end
    object qryArchiveInfoSalaryName_L1: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606#8207#1593#1575#1605#1604#8207#1581#1602#1608#1602#1610
      FieldName = 'SalaryName_L1'
      Size = 255
    end
    object qryArchiveInfoSalaryName_L2: TStringField
      FieldName = 'SalaryName_L2'
      Size = 255
    end
    object qryArchiveInfoAccCTopicCode3: TIntegerField
      FieldName = 'AccCTopicCode3'
    end
  end
  object srcArchiveInfo: TDataSource
    DataSet = qryArchiveInfo
    Left = 120
    Top = 337
  end
  object qryCalculateSalary: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    CommandTimeout = 60
    Parameters = <
      item
        Name = 'Mounth'
        DataType = ftString
        Size = 1
        Value = '9'
      end
      item
        Name = 'Year'
        DataType = ftString
        Size = 2
        Value = '84'
      end
      item
        Name = 'YearMounth'
        DataType = ftString
        Size = 5
        Value = '84/01'
      end
      item
        Name = 'PersonelNoFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelNoTo'
        DataType = ftString
        Size = 10
        Value = '2147483647'
      end>
    SQL.Strings = (
      'SELECT     FixCalculateType1.*'
      
        'FROM         Pay.FixCalculateType1( :Mounth, :Year, :YearMounth,' +
        ' :PersonelNoFrom, :PersonelNoTo) FixCalculateType1')
    Left = 480
    Top = 209
  end
  object qryFixedCalculated: TADOQuery
    Connection = DmF.adcsalary
    CommandTimeout = 60
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM         Pay.FixedCalculated'
      'WHERE     (FixedCID < 0)')
    Left = 232
    Top = 129
    object qryFixedCalculatedFixedCID: TAutoIncField
      FieldName = 'FixedCID'
      ReadOnly = True
    end
    object qryFixedCalculatedFunctionID: TIntegerField
      FieldName = 'FunctionID'
    end
    object qryFixedCalculatedFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryFixedCalculatedPersonelNO: TIntegerField
      FieldName = 'PersonelNO'
    end
    object qryFixedCalculatedProjectID: TIntegerField
      FieldName = 'ProjectID'
    end
    object qryFixedCalculatedOfficeCode: TIntegerField
      FieldName = 'OfficeCode'
    end
    object qryFixedCalculatedJobCede: TIntegerField
      FieldName = 'JobCede'
    end
    object qryFixedCalculatedSalaryID: TIntegerField
      FieldName = 'SalaryID'
    end
    object qryFixedCalculatedMounth: TWordField
      FieldName = 'Mounth'
    end
    object qryFixedCalculatedPrice: TBCDField
      FieldName = 'Price'
      Precision = 19
    end
    object qryFixedCalculatedBedBes: TWordField
      FieldName = 'BedBes'
    end
    object qryFixedCalculatedCalCulateKind: TWordField
      FieldName = 'CalCulateKind'
    end
    object qryFixedCalculatedAccTopicCode: TLargeintField
      FieldName = 'AccTopicCode'
    end
    object qryFixedCalculatedAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qryFixedCalculatedAccCTopicCode: TIntegerField
      FieldName = 'AccCTopicCode'
    end
    object qryFixedCalculatedAccCTopicCode2: TIntegerField
      FieldName = 'AccCTopicCode2'
    end
    object qryFixedCalculatedArchiveDate: TStringField
      FieldName = 'ArchiveDate'
      FixedChar = True
      Size = 10
    end
    object qryFixedCalculatedDocNo: TIntegerField
      FieldName = 'DocNo'
    end
    object qryFixedCalculatedDocDate: TStringField
      FieldName = 'DocDate'
      FixedChar = True
      Size = 10
    end
    object qryFixedCalculatedShowListKind: TWordField
      FieldName = 'ShowListKind'
    end
    object qryFixedCalculatedArchiveID: TIntegerField
      FieldName = 'ArchiveID'
    end
    object qryFixedCalculatedAccCTopicCode3: TIntegerField
      FieldName = 'AccCTopicCode3'
    end
  end
  object srcFixedCalculated: TDataSource
    DataSet = qryFixedCalculated
    Left = 88
    Top = 121
  end
  object qrySearch: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     PersonelNo, name_L1+'#39' '#39'+lastName_L1 as name_L1,name_L' +
        '2+'#39' '#39'+lastName_L2 as name_L2'
      'FROM         Pay.PersonelInfo')
    Left = 576
    Top = 120
    object qrySearchPersonelNo: TIntegerField
      FieldName = 'PersonelNo'
    end
    object qrySearchname_L1: TStringField
      FieldName = 'name_L1'
      ReadOnly = True
      Size = 56
    end
    object qrySearchname_L2: TStringField
      FieldName = 'name_L2'
      ReadOnly = True
      Size = 56
    end
  end
  object qryOutPersonel: TADOQuery
    Connection = DmF.adcsalary
    LockType = ltReadOnly
    AfterOpen = qryOutPersonelAfterOpen
    Parameters = <
      item
        Name = 'Mounth'
        DataType = ftString
        Size = 1
        Value = '6'
      end>
    SQL.Strings = (
      
        'SELECT     Pay.PersonelInfo.PersonelNo, Pay.PersonelInfo.lastNam' +
        'e_L1 + '#39'  '#39' + Pay.PersonelInfo.name_L1 AS PersonName_L1,'
      
        '                      Pay.PersonelInfo.lastName_L2 + '#39'  '#39' + Pay.' +
        'PersonelInfo.name_L2 AS PersonName_L2'
      'FROM         Pay.PersonelInfo INNER JOIN'
      
        '                      Pay.Interdicts ON Pay.PersonelInfo.Persone' +
        'lNo = Pay.Interdicts.PersonelNo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo ON Pay.PersonelInfo.Personel' +
        'State = Pay.FormsInfo.FormInfoID'
      
        'WHERE     (Pay.FormsInfo.InfoID < 50) AND (Pay.PersonelInfo.Pers' +
        'onelNo NOT IN'
      '                          (SELECT     PersonelNO'
      '                             FROM         Pay.FixedCalculated'
      '                             WHERE     (Mounth = :Mounth)'
      
        '                             GROUP BY PersonelNO)) AND (Pay.Inte' +
        'rdicts.State < 50)'
      'ORDER BY Pay.PersonelInfo.PersonelNo'
      '')
    Left = 646
    Top = 377
    object qryOutPersonelPersonelNo: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607#8207#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNo'
    end
    object qryOutPersonelPersonName_L1: TStringField
      DisplayLabel = #1606#1575#1605#8207#1608#1606#1575#1605#8207#1582#1575#1606#1608#1575#1583#1711#1610
      FieldName = 'PersonName_L1'
      ReadOnly = True
      Size = 57
    end
    object qryOutPersonelPersonName_L2: TStringField
      DisplayLabel = 'PersonName'
      FieldName = 'PersonName_L2'
      ReadOnly = True
      Size = 57
    end
  end
  object SrcOutPersonel: TDataSource
    DataSet = qryOutPersonel
    Left = 742
    Top = 337
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     PersonelDecExt.PersonelNo, FormsInfo.InfoName_L1, Per' +
        'sonelInfo.name_L1 + '#39' '#39' + PersonelInfo.lastName_L1 AS Name'
      'FROM         Pay.PersonelDecExt INNER JOIN'
      
        '                      Pay.FormsInfo ON PersonelDecExt.FormInfoID' +
        ' = FormsInfo.FormInfoID INNER JOIN'
      
        '                      Pay.PersonelInfo ON PersonelDecExt.Persone' +
        'lNo = PersonelInfo.PersonelNo'
      'WHERE     (PersonelDecExt.State > 0)')
    Left = 408
    Top = 315
  end
  object PopupMenu1: TPopupMenu
    Left = 456
    Top = 411
    object N1: TMenuItem
      Action = actCal
    end
    object N2: TMenuItem
      Action = actInsourance
    end
    object N3: TMenuItem
      Action = actContainTax
    end
  end
end
