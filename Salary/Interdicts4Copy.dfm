inherited Interdicts4CopyF: TInterdicts4CopyF
  Left = 406
  Top = 98
  Caption = #1603#1662#1610' '#1575#1581#1603#1575#1605' '#1603#1575#1585#1711#1586#1610#1606#1610
  ClientHeight = 538
  ClientWidth = 803
  OnResize = FormResize
  ExplicitWidth = 811
  ExplicitHeight = 569
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 497
    Width = 803
    ExplicitTop = 497
    ExplicitWidth = 803
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 643
      Top = 4
      Width = 75
      Height = 33
      Action = actShowForm
      Align = alRight
      Caption = #1606#1605#1575#1610#1588' '#1581#1603#1605
      TabOrder = 1
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 4
      Width = 75
      Height = 33
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 2
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 4
      Width = 75
      Height = 33
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 562
      Top = 4
      Width = 75
      Height = 33
      Align = alRight
      Caption = #1605#1593#1585#1601#1610' '#1662#1585#1587#1606#1604
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 724
      Top = 4
      Width = 75
      Height = 33
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    Width = 803
    ExplicitWidth = 803
    DesignSize = (
      803
      53)
    inherited ImgTemplate: TImage
      Left = 761
      ExplicitLeft = 684
    end
    inherited lblCaption: TLabel
      Left = 695
      ExplicitLeft = 695
    end
    inherited lblBaseDate: TLabel
      Left = 341
      ExplicitLeft = 341
    end
  end
  inherited Panel3: TPanel
    Left = 104
    Top = 109
    Width = 699
    Height = 388
    ExplicitLeft = 104
    ExplicitTop = 109
    ExplicitWidth = 699
    ExplicitHeight = 388
    object Panel1: TPanel
      Left = 157
      Top = 2
      Width = 540
      Height = 351
      Align = alClient
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 1
        Top = 301
        Width = 538
        Height = 49
        Align = alClient
        Caption = '  '#1593#1606#1575#1608#1610#1606' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1610#1575'   '
        TabOrder = 0
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 534
          Height = 32
          Align = alClient
          Color = clCream
          DataSource = srcItems
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'SalaryID'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InfoName_L1'
              Width = 31
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InfoName_L2'
              Width = 8
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Amount'
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemNote_L1'
              Width = 113
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemNote_L2'
              Width = 9
              Visible = True
            end>
        end
      end
      object GroupBox2: TGroupBox
        Left = 1
        Top = 1
        Width = 538
        Height = 280
        Align = alTop
        Caption = '  '#1604#1610#1587#1578' '#1575#1581#1603#1575#1605' '#1603#1575#1585#1711#1586#1610#1606#1610' '#1576#1585#1575#1610' '#1603#1662#1610
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 534
          Height = 263
          Align = alClient
          Color = clCream
          DataSource = srcList
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          OnDblClick = DBGrid1DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'rowcounts'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'InterdictNo'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonelNo'
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonelName'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fatherName_L1'
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InterdictDate'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InterdicStartDate'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InterdicEndDate'
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'State'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GradName'
              Width = 22
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ChildNumber'
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SexName'
              Width = 41
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EmployName'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AidNo1'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AidDate1'
              Width = 52
              Visible = True
            end>
        end
      end
      object SumGrid1: TSumGrid
        Left = 1
        Top = 281
        Width = 538
        Active = False
        Enable_Controls = True
        Align = alTop
        MasterGrid = DBGrid1
        FieldsName = 'rowcounts;'
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 353
      Width = 695
      Height = 33
      Align = alBottom
      TabOrder = 1
      object BitBtn4: TBitBtn
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 75
        Height = 25
        Action = actCopy
        Align = alLeft
        Caption = #1603#1662#1610' '#1575#1581#1603#1575#1605
        TabOrder = 0
      end
    end
    object Panel6: TPanel
      Left = 2
      Top = 2
      Width = 155
      Height = 351
      Align = alLeft
      TabOrder = 2
      object Label3: TLabel
        Left = 1
        Top = 1
        Width = 153
        Height = 13
        Align = alTop
        Caption = #1575#1581#1603#1575#1605' '#1579#1576#1578' '#1606#1588#1583#1607
        ExplicitLeft = 79
        ExplicitWidth = 75
      end
      object DBGrid4: TDBGrid
        Left = 1
        Top = 14
        Width = 153
        Height = 336
        Align = alClient
        Color = clCream
        DataSource = srcTempInterdicts
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'InterdictNo'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PersonelNo'
            Width = 71
            Visible = True
          end>
      end
    end
  end
  object GroupBox3: TGroupBox [3]
    Left = 0
    Top = 109
    Width = 104
    Height = 388
    Align = alLeft
    Caption = '  '#1578#1594#1610#1610#1585#1575#1578' '#1575#1581#1603#1575#1605' '#1580#1583#1610#1583'    '
    TabOrder = 3
    Visible = False
    object Label2: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 214
      Width = 94
      Height = 169
      Align = alBottom
      Caption = 
        #1605#1602#1575#1583#1610#1585' '#1580#1583#1610#1583' '#1583#1585' '#1603#1662#1610' '#1581#1603#1605' '#1575#1586' '#1585#1608#1610' '#1605#1608#1575#1585#1583' '#1586#1610#1585' '#1605#1588#1582#1589' '#1588#1608#1606#1583'.'#13#10#1583#1585' '#1589#1608#1585#1578#1610' '#1603#1607' ' +
        #1589#1601#1585' '#1576#1575#1588#1583' '#1576#1575' '#1607#1610#1670' '#1578#1594#1610#1610#1585#1610' '#1607#1605#1575#1606' '#1605#1602#1583#1575#1585' '#1602#1576#1604' '#1603#1662#1610' '#1605#1610#8207#1588#1608#1583' '#1608' '#1583#1585' '#1589#1608#1585#1578' '#1594#1610#1585' '#1589 +
        #1601#1585' '#1576#1608#1583#1606' '#1576#1575' '#1605#1602#1583#1575#1585' '#1579#1576#1578' '#1588#1583#1607' '#1580#1575#1610#1711#1586#1610#1606' '#1605#1610#8207#1588#1608#1583'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      ExplicitLeft = 6
      ExplicitWidth = 93
    end
    object DBGrid3: TDBGrid
      Left = 2
      Top = 15
      Width = 100
      Height = 196
      Align = alClient
      Color = clCream
      DataSource = srcAmount
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'InfoID'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InfoName_L1'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FitfulID'
          Width = 96
          Visible = True
        end>
    end
  end
  object Panel5: TPanel [4]
    Left = 0
    Top = 53
    Width = 803
    Height = 56
    Align = alTop
    TabOrder = 4
    DesignSize = (
      803
      56)
    object lblInterdicStartDate: TLabel
      Left = 700
      Top = 10
      Width = 94
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606' '#1581#1603#1605' '#1602#1576#1604#1610
      ExplicitLeft = 641
    end
    object lblInterdicEndDate: TLabel
      Left = 521
      Top = 10
      Width = 101
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593' '#1581#1603#1605' '#1580#1583#1610#1583
      ExplicitLeft = 529
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 39
      Width = 795
      Height = 13
      Align = alBottom
      Alignment = taRightJustify
      Caption = 
        #1576#1607' '#1593#1604#1578' '#1578#1594#1610#1610#1585' '#1578#1575#1585#1610#1582' '#1608' '#1608#1590#1593#1610#1578' '#1603#1604#1610#1607' '#1581#1603#1605' '#1607#1575#1610' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607' '#1608' '#1603#1662#1610' '#1570#1606#1607#1575' '#1576#1575 +
        ' '#1578#1575#1585#1610#1582' '#1607#1575#1610' '#1580#1583#1610#1583' '#1602#1576#1604' '#1588#1585#1608#1593' '#1603#1662#1610' '#1575#1581#1603#1575#1605' '#1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606' '#1590#1585#1608#1585#1610' '#1605#1610' '#1576#1575#1588#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      OnMouseEnter = Label1MouseEnter
      ExplicitWidth = 710
    end
    object Label4: TLabel
      Left = 349
      Top = 10
      Width = 92
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1662#1575#1740#1575#1606' '#1581#1603#1605' '#1580#1583#1610#1583
      ExplicitLeft = 357
    end
    object mskInterdicNewStartDate: TMaskEdit
      Tag = 2
      Left = 444
      Top = 6
      Width = 75
      Height = 21
      Anchors = [akTop, akRight]
      AutoSize = False
      Color = 13431799
      EditMask = '9999/99/99'
      MaxLength = 10
      TabOrder = 1
      Text = '    /  /  '
      OnChange = mskInterdicNewStartDateChange
    end
    object mskInterdicEndDate: TMaskEdit
      Tag = 2
      Left = 624
      Top = 6
      Width = 75
      Height = 21
      Anchors = [akTop, akRight]
      AutoSize = False
      Color = 13431799
      EditMask = '9999/99/99'
      MaxLength = 10
      TabOrder = 0
      Text = '    /  /  '
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 274
      Height = 35
      Align = alLeft
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #1575#1740#1580#1575#1583' '#1581#1705#1605' '#1705#1575#1605#1604
        #1575#1740#1580#1575#1583' '#1581#1705#1605' '#1576#1583#1608#1606' '#1605#1576#1604#1594)
      TabOrder = 3
    end
    object mskInterdicNewEndDate: TMaskEdit
      Tag = 2
      Left = 273
      Top = 6
      Width = 75
      Height = 21
      Anchors = [akTop, akRight]
      AutoSize = False
      Color = 13431799
      EditMask = '9999/99/99'
      MaxLength = 10
      TabOrder = 2
      Text = '    /  /  '
      OnChange = mskInterdicNewStartDateChange
    end
  end
  inherited ActionList: TActionList
    Left = 392
    Top = 4
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actShowForm: TAction
      Caption = #1606#1605#1575#1610#1588' '#1581#1603#1605
      OnExecute = actShowFormExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actCopy: TAction
      Caption = #1603#1662#1610' '#1575#1581#1603#1575#1605
      OnExecute = actCopyExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 488
    Top = 7
  end
  object srcList: TDataSource
    DataSet = qryList
    Left = 536
    Top = 168
  end
  object qryList: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryListAfterScroll
    Parameters = <
      item
        Name = 'State'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'GroupIDFROM'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'GroupIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PersonelNoFROM'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PersonelNoTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'EmployTypeFROM'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'EmployTypeTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'GradeFROM'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'GradeTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'childNumberFROM'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'childNumberTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SexFROM'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SexTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PersonelStateFROM'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PersonelStateTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'InterdicEndDateFrom'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'InterdicEndDateTo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'InterdicStartDateFrom'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'InterdicStartDateTo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'companyCodeFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'companyCodeTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 999
      end>
    SQL.Strings = (
      
        'SELECT        1 AS rowcounts, Interdicts.subcompanyCode, Interdi' +
        'cts.InterdictID, Interdicts.InterdictNo, Interdicts.PersonelNo, '
      
        '                         PersonelInfo.name_L1 + '#39' '#39' + PersonelIn' +
        'fo.lastName_L1 AS PersonelName, PersonelInfo.fatherName_L1, Inte' +
        'rdicts.InterdictDate, Interdicts.InterdicStartDate, '
      
        '                         Interdicts.InterdicEndDate, Interdicts.' +
        'employDaytime, Interdicts.State, Interdicts.UserID, Interdicts.I' +
        'nterdicType, FormsInfo_grade.InfoName_L1 AS GradName, '
      
        '                         FormsInfoPersonelState.InfoName_L1 AS S' +
        'tateName, FormsInfo_childNumber.InfoName_L1 AS ChildNumber, Form' +
        'sInfo_Sex.InfoName_L1 AS SexName, '
      
        '                         FormsInfo_EmployType.InfoName_L1 AS Emp' +
        'loyName, Interdicts.AidNo1, Interdicts.AidDate1'
      ''
      'FROM Pay.Interdicts INNER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfo_EmployType O' +
        'N Interdicts.EmployTypeID = FormsInfo_EmployType.FormInfoID INNE' +
        'R JOIN'
      
        '                         Pay.FormsInfo AS FormsInfo_grade ON Int' +
        'erdicts.grade = FormsInfo_grade.FormInfoID INNER JOIN'
      
        '                         Pay.PersonelInfo ON Pay.Interdicts.Pers' +
        'onelNo = PersonelInfo.PersonelNo INNER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfo_childNumber ' +
        'ON PersonelInfo.childNumber = FormsInfo_childNumber.FormInfoID I' +
        'NNER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfo_Sex ON Perso' +
        'nelInfo.sex = FormsInfo_Sex.FormInfoID LEFT OUTER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfoPersonelState' +
        ' ON PersonelInfo.PersonelState = FormsInfoPersonelState.FormInfo' +
        'ID LEFT OUTER JOIN'
      
        '                         Pay.FormsInfo AS FormsInfoGroupID ON In' +
        'terdicts.GroupID = FormsInfoGroupID.FormInfoID'
      'WHERE       (Interdicts.State  = :State ) '
      
        'AND ((Interdicts.GroupID=0)or (FormsInfoGroupID.InfoID BETWEEN :' +
        'GroupIDFROM AND :GroupIDTo))'
      
        'AND (Interdicts.PersonelNo BETWEEN :PersonelNoFROM AND :Personel' +
        'NoTo) '
      
        'AND (FormsInfo_EmployType.InfoID BETWEEN :EmployTypeFROM AND :Em' +
        'ployTypeTo) '
      'AND (FormsInfo_grade.InfoID BETWEEN :GradeFROM AND :GradeTo) '
      
        'AND (FormsInfo_childNumber.InfoID BETWEEN :childNumberFROM AND :' +
        'childNumberTo) '
      'AND (FormsInfo_Sex.InfoID BETWEEN :SexFROM AND :SexTo) '
      
        'AND (FormsInfoPersonelState.InfoID BETWEEN :PersonelStateFROM AN' +
        'D :PersonelStateTo)'
      
        'AND (Interdicts.InterdicEndDate   BETWEEN :InterdicEndDateFrom A' +
        'ND :InterdicEndDateTo)'
      
        'AND (Interdicts.InterdicStartDate   BETWEEN :InterdicStartDateFr' +
        'om AND :InterdicStartDateTo)'
      
        'AND(Interdicts.subcompanyCode BETWEEN :companyCodeFrom AND :comp' +
        'anyCodeTo )')
    Left = 664
    Top = 168
    object qryListsubcompanyCode: TIntegerField
      FieldName = 'subcompanyCode'
    end
    object qryListInterdictID: TIntegerField
      FieldName = 'InterdictID'
    end
    object qryListInterdictNo: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1603#1605
      FieldName = 'InterdictNo'
      Size = 50
    end
    object qryListPersonelNo: TIntegerField
      DisplayLabel = #1588'.'#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
    end
    object qryListPersonelName: TStringField
      DisplayLabel = #1606#1575#1605' '#1662#1585#1587#1606#1604
      FieldName = 'PersonelName'
      ReadOnly = True
      Size = 56
    end
    object qryListfatherName_L1: TStringField
      DisplayLabel = #1606#1575#1605' '#1662#1583#1585
      FieldName = 'fatherName_L1'
      Size = 25
    end
    object qryListInterdictDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1581#1603#1605
      FieldName = 'InterdictDate'
      FixedChar = True
      Size = 10
    end
    object qryListInterdicStartDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1580#1585#1575#1610' '#1581#1603#1605
      FieldName = 'InterdicStartDate'
      FixedChar = True
      Size = 10
    end
    object qryListInterdicEndDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606' '#1602#1585#1575#1585#1583#1575#1583
      FieldName = 'InterdicEndDate'
      FixedChar = True
      Size = 10
    end
    object qryListemployDaytime: TWordField
      FieldName = 'employDaytime'
    end
    object qryListState: TWordField
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'State'
      OnGetText = qryListStateGetText
    end
    object qryListGradName: TStringField
      DisplayLabel = #1585#1578#1576#1607
      FieldName = 'GradName'
      Size = 255
    end
    object qryListStateName: TStringField
      FieldName = 'StateName'
      Size = 255
    end
    object qryListChildNumber: TStringField
      DisplayLabel = #1578#1593#1583#1575#1583' '#1575#1608#1604#1575#1583
      FieldName = 'ChildNumber'
      Size = 255
    end
    object qryListSexName: TStringField
      DisplayLabel = #1581#1606#1587#1610#1578
      FieldName = 'SexName'
      Size = 255
    end
    object qryListEmployName: TStringField
      DisplayLabel = #1606#1608#1593' '#1581#1603#1605'/'#1575#1587#1578#1582#1583#1575#1605
      FieldName = 'EmployName'
      Size = 255
    end
    object qryListrowcounts: TIntegerField
      FieldName = 'rowcounts'
      ReadOnly = True
    end
    object qryListAidNo1: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610
      FieldName = 'AidNo1'
    end
    object qryListAidDate1: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1603#1605#1603#1610
      FieldName = 'AidDate1'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
  end
  object qryItems: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'InterdictID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     Pay.InterdictItems.SalaryID, Pay.FormsInfo.InfoName_L' +
        '1, Pay.FormsInfo.InfoName_L2, Pay.InterdictItems.Amount, Pay.Int' +
        'erdictItems.ItemNote_L1,'
      '                      Pay.InterdictItems.ItemNote_L2'
      'FROM         Pay.InterdictItems  LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo ON Pay.InterdictItems.Salary' +
        'ID = Pay.FormsInfo.FormInfoID'
      'WHERE     (Pay.InterdictItems.InterdictID = :InterdictID)')
    Left = 696
    Top = 213
    object qryItemsSalaryID: TIntegerField
      DisplayLabel = #1587#1585#1610#1575#1604
      FieldName = 'SalaryID'
    end
    object qryItemsInfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1581#1602#1608#1602'  '#1608' '#1605#1586#1575#1610#1575
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryItemsInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryItemsAmount: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryItemsItemNote_L1: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ItemNote_L1'
      Size = 250
    end
    object qryItemsItemNote_L2: TStringField
      FieldName = 'ItemNote_L2'
      Size = 250
    end
  end
  object srcItems: TDataSource
    DataSet = qryItems
    Left = 608
    Top = 293
  end
  object qryAmount: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        FormsInfo.FormInfoID, FormsInfo.InfoID, FormsInfo.' +
        'InfoName_L1, Fitful.FitfulID'
      'FROM Pay.FormsInfo INNER JOIN'
      
        '                         Pay.FormTypes ON FormsInfo.FormType = F' +
        'ormTypes.FormType CROSS JOIN'
      '                         dbo.Fitful'
      'WHERE        (FormTypes.SalaryKind BETWEEN 1 AND 4)')
    Left = 224
    Top = 285
    object qryAmountFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
      ReadOnly = True
    end
    object qryAmountInfoID: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'InfoID'
      ReadOnly = True
    end
    object qryAmountInfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'InfoName_L1'
      ReadOnly = True
      Size = 255
    end
    object qryAmountFitfulID: TFMTBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1580#1575#1610#1711#1586#1610#1606
      FieldName = 'FitfulID'
      currency = True
      Precision = 20
      Size = 4
    end
  end
  object srcAmount: TDataSource
    DataSet = qryAmount
    Left = 136
    Top = 285
  end
  object qryInterdicts: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'InterdictID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT        *'
      'FROM Pay.Interdicts'
      'WHERE        (InterdictID = :InterdictID )')
    Left = 200
    Top = 373
  end
  object qryInterdictItems: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'InterdictID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT        *'
      'FROM Pay.InterdictItems'
      'WHERE        (InterdictID = :InterdictID )')
    Left = 128
    Top = 365
  end
  object qryInsInterdictItems: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT        *'
      'FROM Pay.InterdictItems'
      'WHERE        (InterdictID = 0 )')
    Left = 392
    Top = 277
  end
  object qryInsInterdicts: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT        *'
      'FROM Pay.Interdicts'
      'WHERE        (InterdictID = 0)')
    Left = 512
    Top = 269
  end
  object Timer1: TTimer
    Interval = 250
    OnTimer = Timer1Timer
    Left = 96
    Top = 8
  end
  object qryTempInterdicts: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        FitfulID AS InterdictID, FitfulID AS InterdictNo, ' +
        'FitfulID AS PersonelNo , FitfulID AS AidNo1 , FitfulNote AS AidD' +
        'ate1'
      'FROM dbo.Fitful')
    Left = 312
    Top = 189
    object qryTempInterdictsInterdictID: TFMTBCDField
      FieldName = 'InterdictID'
      Precision = 20
      Size = 4
    end
    object qryTempInterdictsInterdictNo: TFMTBCDField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1603#1605
      FieldName = 'InterdictNo'
      Precision = 20
      Size = 4
    end
    object qryTempInterdictsPersonelNo: TFMTBCDField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
      Precision = 20
      Size = 4
    end
    object qryTempInterdictsAidNo1: TFMTBCDField
      FieldName = 'AidNo1'
      Precision = 20
      Size = 4
    end
    object qryTempInterdictsAidDate1: TStringField
      FieldName = 'AidDate1'
      Size = 1000
    end
  end
  object srcTempInterdicts: TDataSource
    DataSet = qryTempInterdicts
    Left = 136
    Top = 205
  end
  object qryInitQry: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  *  FROM Pay.FormTypes'
      'where FormType= 45')
    Left = 388
    Top = 147
  end
end
