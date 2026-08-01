inherited EmployeeDeeExtinfo_4F: TEmployeeDeeExtinfo_4F
  Left = 281
  Top = 183
  Caption = #1582#1604#1575#1589#1607' '#1608#1590#1593#1610#1578' '#1605#1585#1582#1589#1610' '#1662#1585#1587#1606#1604
  ClientHeight = 510
  OnResize = FormResize
  ExplicitHeight = 549
  PixelsPerInch = 96
  TextHeight = 13
  object lblFilterStringCaption: TLabel [0]
    AlignWithMargins = True
    Left = 3
    Top = 68
    Width = 780
    Height = 13
    Align = alTop
    AutoSize = False
    BiDiMode = bdRightToLeft
    Caption = 'FilterStringCaption'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    Transparent = True
    WordWrap = True
    ExplicitLeft = 678
    ExplicitTop = 56
    ExplicitWidth = 89
  end
  inherited PnlUnderButton: TPanel
    Top = 469
    ExplicitTop = 469
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 707
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
    object Button1: TButton
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actsendtoExcel
      Align = alLeft
      TabOrder = 2
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
      TabOrder = 3
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
      TabOrder = 4
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 626
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actShow
      Align = alRight
      Caption = #1606#1605#1575#1610#1588
      TabOrder = 5
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 545
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alRight
      Caption = #1670#1575#1662
      TabOrder = 6
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 404
      Top = 7
      Width = 135
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actInsert2PersonelDecExt
      Align = alRight
      Caption = #1579#1576#1578' '#1605#1575#1586#1575#1583' '#1575#1586' 9 '#1585#1608#1586' '#1605#1585#1582#1589#1610
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
    Height = 65
    ExplicitHeight = 65
    DesignSize = (
      786
      65)
    inherited lblCaption: TLabel
      Height = 45
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 312
      Height = 63
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object ldlMaster: TLabel
        Left = 119
        Top = 5
        Width = 108
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1587#1591#1581' '#1602#1576#1604#1610' '
        FocusControl = edtCaption
      end
      object SpeedButton1: TSpeedButton
        Left = 8
        Top = 0
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object DBEdit1: TDBEdit
        Left = 32
        Top = 2
        Width = 81
        Height = 19
        Ctl3D = False
        DataField = 'InfoID'
        DataSource = srcFormInfo
        ParentCtl3D = False
        TabOrder = 0
      end
      object edtCaption: TDBEdit
        Tag = 10
        Left = 8
        Top = 24
        Width = 218
        Height = 19
        Color = 14408667
        Ctl3D = False
        DataField = 'InfoName_L1'
        DataSource = srcFormInfo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object DBNavigator1: TDBNavigator
        Left = 8
        Top = 44
        Width = 216
        Height = 18
        DataSource = srcFormInfo
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        TabOrder = 2
      end
    end
  end
  inherited Panel3: TPanel
    Top = 84
    Height = 385
    ExplicitTop = 84
    ExplicitHeight = 385
    object Label1: TLabel
      Left = 240
      Top = 104
      Width = 55
      Height = 13
      Caption = 'FormInfoID'
    end
    object DBGrid1: TCedarDbgrid
      Left = 2
      Top = 2
      Width = 782
      Height = 381
      Align = alClient
      BorderStyle = bsNone
      Color = clCream
      DataSource = srcDecExtInfo
      DynProps = <>
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
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
      ParentFont = False
      RowHeight = 21
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SortLocal = True
      TabOrder = 0
      OnDrawColumnCell = DBGrid1DrawColumnCell
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OfficeCode'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'OfficeName'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'EmployTypeIDName'
          Footers = <>
          Width = 64
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
          FieldName = 'Name_L1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Name_L2'
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
          FieldName = 'BeginningOfYear'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FunctionDay'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FunctionTime'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ContainDay'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'UseDay'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'AllDay'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'BalanceAllDay'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MoreThanOf9'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'BalanceDay'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Left = 704
    Top = 144
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actsendtoExcel: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      OnExecute = actsendtoExcelExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actShow: TAction
      Caption = #1606#1605#1575#1610#1588
      OnExecute = actShowExecute
    end
    object actSMS: TAction
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1603
      OnExecute = actSMSExecute
    end
    object actInsert2PersonelDecExt: TAction
      Caption = #1579#1576#1578' '#1605#1575#1586#1575#1583' '#1575#1586' 9 '#1585#1608#1586' '#1605#1585#1582#1589#1610
      OnExecute = actInsert2PersonelDecExtExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 592
    Top = 129
  end
  object qryinitForm: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'Type'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select * FROM Pay.FormTypes'
      'where FormType=:Type')
    Left = 592
    Top = 8
  end
  object qryFormInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryFormInfoAfterScroll
    Parameters = <
      item
        Name = 'Type'
        DataType = ftString
        Size = 2
        Value = '16'
      end>
    SQL.Strings = (
      
        'SELECT     FormInfoID, InfoID, InfoName_L1, InfoName_L2, FormTyp' +
        'e,StandardDays,StandardTimes,FormsInfo.Amount'
      ''
      'FROM         Pay.FormsInfo'
      'where(FormType=:Type)'
      'order by infoid')
    Left = 352
    Top = 8
    object qryFormInfoFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryFormInfoInfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qryFormInfoInfoName_L1: TStringField
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryFormInfoInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryFormInfoFormType: TSmallintField
      FieldName = 'FormType'
    end
    object qryFormInfoStandardDays: TFloatField
      FieldName = 'StandardDays'
    end
    object qryFormInfoStandardTimes: TFloatField
      FieldName = 'StandardTimes'
    end
    object qryFormInfoAmount: TBCDField
      FieldName = 'Amount'
      Precision = 19
    end
  end
  object qryDecExtInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeOpen = qryDecExtInfoBeforeOpen
    Parameters = <
      item
        Name = 'Amount1'
        DataType = ftWideString
        Size = 4
        Value = '7.32'
      end
      item
        Name = 'Amount3'
        DataType = ftWideString
        Size = 4
        Value = '7.32'
      end
      item
        Name = 'YearIDFROM'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearIDTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'MounthFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'MounthTo'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelNoFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonNoTo'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'FormInfoID'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'StandardDays'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'StandardTimes'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'OfficeCodeFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'OfficeCodeTo'
        DataType = ftWideString
        Size = 3
        Value = '999'
      end
      item
        Name = 'PersonelStateFrom'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'PersonelStateTo'
        DataType = ftWideString
        Size = 3
        Value = '999'
      end
      item
        Name = 'EmployTypeIDFROM'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'EmployTypeIDTo'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = 'Amount2'
        DataType = ftWideString
        Size = 4
        Value = '7.32'
      end
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT  AllDay as UseDay ,BalanceAllDay+AllDay+BeginningOfYear a' +
        's AllDay ,BalanceAllDay+BeginningOfYear as BalanceAllDay ,'
      ' :Amount1 * AllDay AS UseHour,'
      ' :Amount3 * BalanceAllDay AS UseHourBalance,'
      ''
      
        ' case  when  BalanceAllDay>9 then  BalanceAllDay-9 else 0 end Mo' +
        'reThanOf9'
      '          , BalanceBeginningOfYear.BeginningOfYear'
      ', balanceDecExt_1.*'
      ''
      
        'From Pay.balanceDecExt(  :YearIDFROM , :YearIDTo , :MounthFrom,:' +
        'MounthTo,'
      '                   :PersonelNoFrom , :PersonNoTo ,'
      '                   :FormInfoID, :StandardDays, :StandardTimes ,'
      
        '                   :OfficeCodeFrom  , :OfficeCodeTo , :PersonelS' +
        'tateFrom  , :PersonelStateTo , :EmployTypeIDFROM  , :EmployTypeI' +
        'DTo )  AS balanceDecExt_1 LEFT OUTER JOIN'
      
        '                             (SELECT        PersonelDecExt.FormI' +
        'nfoID, PersonelDecExt.PersonelNo, ROUND(ROUND(SUM(ISNULL(Persone' +
        'lDecExt.DayQuntity, 0)) '
      
        '                                                         + ROUND' +
        '(SUM(PersonelDecExt.DayTime) + SUM(PersonelDecExt.Minute_) / 60,' +
        ' 2) / :Amount2 , 2), 2) AS BeginningOfYear'
      
        '                                FROM Pay.PersonelDecExt INNER JO' +
        'IN'
      
        '                                                         Pay.For' +
        'msInfo ON PersonelDecExt.FormInfoID = FormsInfo.FormInfoID'
      
        '                                WHERE        (FormsInfo.FormType' +
        ' = 16) AND (PersonelDecExt.FirstMounth = 0)'
      '               AND (PersonelDecExt.YearID = :YearID  )'
      
        '                                GROUP BY PersonelDecExt.Personel' +
        'No, PersonelDecExt.FormInfoID) AS BalanceBeginningOfYear ON '
      
        '                         balanceDecExt_1.FormInfoID = BalanceBeg' +
        'inningOfYear.FormInfoID AND balanceDecExt_1.PersonelNo = Balance' +
        'BeginningOfYear.PersonelNo'
      ''
      'order by  balanceDecExt_1.PersonelNo'
      ''
      '')
    Left = 66
    Top = 203
    object qryDecExtInfoOfficeCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1608#1575#1581#1583
      FieldName = 'OfficeCode'
    end
    object qryDecExtInfoOfficeName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
      FieldName = 'OfficeName'
      Size = 255
    end
    object qryDecExtInfoEmployTypeIDName: TStringField
      DisplayLabel = #1606#1608#1593' '#1581#1603#1605' '#1575#1587#1578#1582#1583#1575#1605
      FieldName = 'EmployTypeIDName'
      Size = 255
    end
    object qryDecExtInfoPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
    end
    object qryDecExtInfoPersonName_L1: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
      FieldName = 'Name_L1'
      ReadOnly = True
      Size = 55
    end
    object qryDecExtInfoPersonName_L2: TStringField
      Tag = 3
      DisplayLabel = 'PersonName'
      FieldName = 'Name_L2'
      ReadOnly = True
      Size = 55
    end
    object qryDecExtInfofatherName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1583#1585
      FieldName = 'fatherName_L1'
      Size = 25
    end
    object qryDecExtInfofatherName_L2: TStringField
      Tag = 3
      DisplayLabel = 'fatherName'
      FieldName = 'fatherName_L2'
      Size = 25
    end
    object qryDecExtInfoNationalID: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1604#1610' '
      FieldName = 'NationalID'
      Size = 12
    end
    object qryDecExtInfoIDNumber: TStringField
      Tag = 3
      DisplayLabel = #1588'.'#1588
      FieldName = 'IDNumber'
      Size = 12
    end
    object qryDecExtInfoBeginningOfYear: TFloatField
      Tag = 3
      DisplayLabel = #1605#1575#1606#1583#1607' '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
      FieldName = 'BeginningOfYear'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtInfoFunctionDay: TFloatField
      Tag = 3
      DisplayLabel = #1603#1575#1585#1603#1585#1583#1585#1608#1586
      FieldName = 'FunctionDay'
    end
    object qryDecExtInfoFunctionTime: TFloatField
      Tag = 3
      DisplayLabel = #1603#1575#1585#1603#1585#1583#1587#1575#1593#1578
      FieldName = 'FunctionTime'
    end
    object qryDecExtInfoContainDay: TFloatField
      Tag = 3
      DisplayLabel = #1578#1581#1602#1602#8207#1610#1575#1601#1578#1607'-'#1585#1608#1586
      FieldName = 'ContainDay'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtInfoContainTime: TFloatField
      Tag = 3
      DisplayLabel = #1578#1581#1602#1602#8207#1610#1575#1601#1578#1607'-'#1587#1575#1593#1578
      FieldName = 'ContainTime'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtInfoExpireDay: TFloatField
      Tag = 3
      DisplayLabel = #1575#1587#1578#1601#1575#1583#1607#8207#1588#1583#1607'-'#1585#1608#1586
      FieldName = 'ExpireDay'
      ReadOnly = True
    end
    object qryDecExtInfoExpireTime: TFloatField
      Tag = 3
      DisplayLabel = #1575#1587#1578#1601#1575#1583#1607#8207#1588#1583#1607'-'#1587#1575#1593#1578
      FieldName = 'ExpireTime'
      ReadOnly = True
    end
    object qryDecExtInfoMinute_: TFloatField
      Tag = 3
      DisplayLabel = #1575#1587#1578#1601#1575#1583#1607#8207#1588#1583#1607'-'#1583#1602#1610#1602#1607
      FieldName = 'Minute_'
    end
    object qryDecExtInfoUseHour: TFloatField
      DisplayLabel = #1575#1587#1578#1601#1575#1583#1607#8207#1588#1583#1607' ('#1587#1575#1593#1578')'
      FieldName = 'UseHour'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtInfoBalanceDay: TFloatField
      Tag = 3
      DisplayLabel = #1591#1604#1576'('#1576#1583#1607#1610')'#1585#1608#1586'-'#1587#1575#1604#1575#1606#1607
      FieldName = 'BalanceDay'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtInfoBalanceTime: TFloatField
      Tag = 3
      DisplayLabel = #1591#1604#1576'('#1576#1583#1607#1610')'#1587#1575#1593#1578'-'#1587#1575#1604#1575#1606#1607
      FieldName = 'BalanceTime'
      ReadOnly = True
    end
    object qryDecExtInfoUseDay: TFloatField
      Tag = 3
      DisplayLabel = #1575#1587#1578#1601#1575#1583#1607' '#1588#1583#1607
      FieldName = 'UseDay'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtInfoAllDay: TFloatField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1603#1604'('#1585#1608#1586'+'#1587#1575#1593#1578'+'#1583#1602#1610#1602#1607')'#8207#1585#1608#1586' '#1576#1575' '#1605#1575#1606#1583#1607' '#1575#1576#1578#1583#1575#1740' '#1587#1575#1604
      FieldName = 'AllDay'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtInfoBalanceAllDay: TFloatField
      Tag = 3
      DisplayLabel = #1605#1575#1606#1583#1607'('#1585#1608#1586'+'#1587#1575#1593#1578'+'#1583#1602#1610#1602#1607')'#8207#1585#1608#1586
      FieldName = 'BalanceAllDay'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
    end
    object qryDecExtInfoUseHourBalance: TFMTBCDField
      DisplayLabel = #1605#1575#1606#1583#1607'('#1587#1575#1593#1578')'#8207
      FieldName = 'UseHourBalance'
      ReadOnly = True
      OnGetText = AllFloatToTimeGetText
      Precision = 37
      Size = 4
    end
    object qryDecExtInfoMoreThanOf9: TBCDField
      Tag = 3
      DisplayLabel = #1605#1575#1586#1575#1583' '#1575#1586' 9 '#1585#1608#1586' '#1605#1585#1582#1589#1610
      FieldName = 'MoreThanOf9'
      ReadOnly = True
      Precision = 19
      Size = 2
    end
    object qryDecExtInfoMobile: TStringField
      Tag = 3
      FieldName = 'Mobile'
    end
    object qryDecExtInfoFirstTime: TFloatField
      Tag = 3
      DisplayLabel = #1575#1576#1578#1583#1575#1610#8207#1587#1575#1604#8207#1587#1575#1593#1578
      FieldName = 'FirstTime'
      ReadOnly = True
    end
    object qryDecExtInfoFirstDay: TFloatField
      Tag = 3
      DisplayLabel = #1575#1576#1578#1583#1575#1610#8207#1587#1575#1604#8207#1585#1608#1586
      FieldName = 'FirstDay'
      ReadOnly = True
    end
  end
  object srcDecExtInfo: TDataSource
    DataSet = qryDecExtInfo
    Left = 210
    Top = 179
  end
  object srcFormInfo: TDataSource
    DataSet = qryFormInfo
    Left = 272
    Top = 8
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcDecExtInfo
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 336
    Top = 177
    MasterDataPipelineName = 'ppDBPipeline2'
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'Name_L1'
      FieldName = 'Name_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'Name_L2'
      FieldName = 'Name_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'fatherName_L1'
      FieldName = 'fatherName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'fatherName_L2'
      FieldName = 'fatherName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'NationalID'
      FieldName = 'NationalID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'IDNumber'
      FieldName = 'IDNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'FunctionTime'
      FieldName = 'FunctionTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'FirstDay'
      FieldName = 'FirstDay'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'FirstTime'
      FieldName = 'FirstTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'ContainDay'
      FieldName = 'ContainDay'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'ContainTime'
      FieldName = 'ContainTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'ExpireDay'
      FieldName = 'ExpireDay'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'ExpireTime'
      FieldName = 'ExpireTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'Minute_'
      FieldName = 'Minute_'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'AllDay'
      FieldName = 'AllDay'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'BalanceDay'
      FieldName = 'BalanceDay'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'BalanceTime'
      FieldName = 'BalanceTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'BalanceAllDay'
      FieldName = 'BalanceAllDay'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'FunctionDay'
      FieldName = 'FunctionDay'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'Mobile'
      FieldName = 'Mobile'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'OfficeCode'
      FieldName = 'OfficeCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'OfficeName'
      FieldName = 'OfficeName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'MoreThanOf9'
      FieldName = 'MoreThanOf9'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'EmployTypeIDName'
      FieldName = 'EmployTypeIDName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'BeginningOfYear'
      FieldName = 'BeginningOfYear'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcFormInfo
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeline2'
    Left = 328
    Top = 257
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'FormInfoID'
      FieldName = 'FormInfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'InfoID'
      FieldName = 'InfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'InfoName_L1'
      FieldName = 'InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = 'InfoName_L2'
      FieldName = 'InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField5: TppField
      FieldAlias = 'FormType'
      FieldName = 'FormType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = 'StandardDays'
      FieldName = 'StandardDays'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField7: TppField
      FieldAlias = 'StandardTimes'
      FieldName = 'StandardTimes'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField8: TppField
      FieldAlias = 'Amount'
      FieldName = 'Amount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
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
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\EmployeeDeeExtinfo_4.rtm'
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
    PreviewFormSettings.ZoomPercentage = 125
    PreviewFormSettings.ZoomSetting = zsPercentage
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
    Left = 480
    Top = 187
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 33338
      mmPrintPosition = 0
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label22'
        Border.mmPadding = 0
        Caption = #1578#1576#1583#1740#1604' '#1575#1593#1588#1575#1585' '#1576#1607' '#1583#1602#1740#1602#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 12700
        mmLeft = 24871
        mmTop = 0
        mmWidth = 34131
        BandType = 0
        LayerName = Foreground1
      end
      object ppLbCompanyName: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LbCompanyName'
        OnGetText = ppLbCompanyNameGetText
        Border.mmPadding = 0
        Caption = 'LbCompanyName'
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
        mmLeft = 86254
        mmTop = 0
        mmWidth = 30956
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 14023
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = #1582#1604#1575#1589#1607' '#1608#1590#1593#1610#1578' '#1605#1585#1582#1589#1610' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7144
        mmLeft = 77258
        mmTop = 6350
        mmWidth = 48948
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1605#1585#1582#1589#1610' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 181240
        mmTop = 15610
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground1
      end
      object ppLbprintDate: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LbprintDate'
        OnGetText = ppLbprintDateGetText
        Border.mmPadding = 0
        Caption = 'ppLbprintDate'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6350
        mmLeft = 794
        mmTop = 6350
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground1
      end
      object ppSyVpageNumber: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SyVpageNumber'
        OnGetText = ppSyVpageNumberGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 6350
        mmLeft = 794
        mmTop = 0
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'InfoName_L1'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7144
        mmLeft = 146315
        mmTop = 15081
        mmWidth = 34396
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        mmHeight = 10054
        mmLeft = 0
        mmTop = 23283
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588'.'#1662#1585#1587#1606#1604#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 186532
        mmTop = 25135
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1588#1582#1589#1575#1578' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 128059
        mmTop = 25135
        mmWidth = 57679
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1585#1608#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 5821
        mmLeft = 76465
        mmTop = 27517
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1587#1575#1593#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 87313
        mmTop = 27517
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588'. '#1588#1606#1575#1587#1606#1575#1605#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 109009
        mmTop = 25135
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1575#1585#1603#1585#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 87313
        mmTop = 23019
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '#1585#1608#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 98161
        mmTop = 27517
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 186002
        mmTop = 23548
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 97631
        mmTop = 27781
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 108479
        mmTop = 23548
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 127529
        mmTop = 23548
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 21696
        mmTop = 23283
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 43392
        mmTop = 23283
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 65088
        mmTop = 23283
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 9790
        mmLeft = 86784
        mmTop = 23283
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1587#1575#1593#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 5821
        mmLeft = 65617
        mmTop = 27517
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1581#1602#1602' '#1610#1575#1601#1578#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 43921
        mmTop = 23019
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line13'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 265
        mmTop = 27517
        mmWidth = 108479
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1575#1576#1578#1583#1575#1610' '#1587#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 5821
        mmLeft = 65617
        mmTop = 23019
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 75936
        mmTop = 27517
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1587#1575#1593#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 43921
        mmTop = 27517
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 54240
        mmTop = 27781
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1585#1608#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 54769
        mmTop = 27517
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1575#1587#1578#1601#1575#1583#1607' '#1588#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 22225
        mmTop = 23019
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1587#1575#1593#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 22225
        mmTop = 27517
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 32544
        mmTop = 27781
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1585#1608#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 33073
        mmTop = 27517
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '('#1591#1604#1576'('#1576#1583#1607#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 529
        mmTop = 23019
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5556
        mmLeft = 10848
        mmTop = 27781
        mmWidth = 2381
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1585#1608#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 11377
        mmTop = 27517
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1587#1575#1593#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 529
        mmTop = 27517
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground1
      end
      object plblFilterStringCaption: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label21'
        OnGetText = plblFilterStringCaptionGetText
        Border.mmPadding = 0
        Caption = #1606#1605#1575#1610#1588' '#1603#1604' '#1605#1581#1583#1608#1583#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        WordWrap = True
        mmHeight = 4064
        mmLeft = 6085
        mmTop = 16669
        mmWidth = 15198
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        OnGetText = ppAllFloatToTimeGetText
        Border.mmPadding = 0
        DataField = 'BeginningOfYear'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4498
        mmLeft = 32802
        mmTop = 7148
        mmWidth = 17198
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
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
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
          PrinterSetup.PaperName = 'Letter'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '23.0'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline1'
          object ppDetailBand2: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6350
            mmPrintPosition = 0
            object ppDBText14: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText14'
              Border.mmPadding = 0
              DataField = 'Name_L1'
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
              mmLeft = 128059
              mmTop = 0
              mmWidth = 57415
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText3: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText3'
              Border.mmPadding = 0
              DataField = 'BalanceTime'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6435
              mmLeft = 529
              mmTop = 0
              mmWidth = 10053
              BandType = 4
              LayerName = Foreground
            end
            object ppLine10: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line10'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 0
              mmTop = 0
              mmWidth = 2381
              BandType = 4
              LayerName = Foreground
            end
            object ppLine12: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line12'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 10848
              mmTop = 0
              mmWidth = 2381
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText4: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText4'
              Border.mmPadding = 0
              DataField = 'BalanceDay'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6435
              mmLeft = 11377
              mmTop = 0
              mmWidth = 10054
              BandType = 4
              LayerName = Foreground
            end
            object ppLine11: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line11'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 21696
              mmTop = 0
              mmWidth = 2381
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText5: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'ExpireTime'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6435
              mmLeft = 22225
              mmTop = 0
              mmWidth = 10054
              BandType = 4
              LayerName = Foreground
            end
            object ppLine18: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line18'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 32544
              mmTop = 0
              mmWidth = 2381
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = 'ExpireDay'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6435
              mmLeft = 33073
              mmTop = 0
              mmWidth = 10054
              BandType = 4
              LayerName = Foreground
            end
            object ppLine19: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line19'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 43392
              mmTop = 0
              mmWidth = 2381
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'ContainTime'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6435
              mmLeft = 43921
              mmTop = 0
              mmWidth = 10054
              BandType = 4
              LayerName = Foreground
            end
            object ppLine20: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line20'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 54240
              mmTop = 0
              mmWidth = 2381
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText8: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText8'
              Border.mmPadding = 0
              DataField = 'ContainDay'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6435
              mmLeft = 54769
              mmTop = 0
              mmWidth = 10054
              BandType = 4
              LayerName = Foreground
            end
            object ppLine21: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line21'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 65088
              mmTop = 0
              mmWidth = 2381
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText9: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText9'
              Border.mmPadding = 0
              DataField = 'FirstTime'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6435
              mmLeft = 65617
              mmTop = 0
              mmWidth = 10054
              BandType = 4
              LayerName = Foreground
            end
            object ppLine22: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line201'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 75936
              mmTop = 0
              mmWidth = 2381
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText10: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText10'
              Border.mmPadding = 0
              DataField = 'FirstDay'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6435
              mmLeft = 76465
              mmTop = 0
              mmWidth = 10054
              BandType = 4
              LayerName = Foreground
            end
            object ppLine23: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line23'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 86784
              mmTop = 0
              mmWidth = 2381
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText11: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText11'
              Border.mmPadding = 0
              DataField = 'FunctionTime'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6435
              mmLeft = 87313
              mmTop = 0
              mmWidth = 10054
              BandType = 4
              LayerName = Foreground
            end
            object ppLine24: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line24'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 97631
              mmTop = 0
              mmWidth = 2381
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText12: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText101'
              Border.mmPadding = 0
              DataField = 'FunctionDay'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6435
              mmLeft = 98161
              mmTop = 0
              mmWidth = 10054
              BandType = 4
              LayerName = Foreground
            end
            object ppLine25: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line25'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 108479
              mmTop = 0
              mmWidth = 2381
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText13: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText13'
              Border.mmPadding = 0
              DataField = 'IDNumber'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6435
              mmLeft = 109009
              mmTop = 0
              mmWidth = 18255
              BandType = 4
              LayerName = Foreground
            end
            object ppLine26: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line26'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 127529
              mmTop = 0
              mmWidth = 2381
              BandType = 4
              LayerName = Foreground
            end
            object ppLine27: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line27'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 186002
              mmTop = 0
              mmWidth = 2381
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText15: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText15'
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
              mmHeight = 6350
              mmLeft = 186532
              mmTop = 0
              mmWidth = 16139
              BandType = 4
              LayerName = Foreground
            end
            object ppLine28: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line28'
              Border.mmPadding = 0
              Position = lpRight
              Weight = 0.750000000000000000
              mmHeight = 6350
              mmLeft = 200819
              mmTop = 0
              mmWidth = 2381
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppFooterBand2: TppFooterBand
            Visible = False
            Border.mmPadding = 0
            PrintOnLastPage = False
            mmBottomOffset = 0
            mmHeight = 1852
            mmPrintPosition = 0
            object ppLine29: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line29'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 0
              mmTop = 0
              mmWidth = 203200
              BandType = 8
              LayerName = Foreground
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 6879
            mmPrintPosition = 0
            object ppShape2: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape2'
              mmHeight = 6879
              mmLeft = 0
              mmTop = 0
              mmWidth = 203200
              BandType = 7
              LayerName = Foreground
            end
            object ppLine32: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line32'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 10848
              mmTop = 264
              mmWidth = 2381
              BandType = 7
              LayerName = Foreground
            end
            object ppLine33: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line33'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 21696
              mmTop = 264
              mmWidth = 2381
              BandType = 7
              LayerName = Foreground
            end
            object ppLine34: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line34'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 32544
              mmTop = 264
              mmWidth = 2381
              BandType = 7
              LayerName = Foreground
            end
            object ppLine35: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line35'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 43392
              mmTop = 264
              mmWidth = 2381
              BandType = 7
              LayerName = Foreground
            end
            object ppLine36: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line202'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 54240
              mmTop = 264
              mmWidth = 2381
              BandType = 7
              LayerName = Foreground
            end
            object ppLine37: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line37'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 65088
              mmTop = 264
              mmWidth = 2381
              BandType = 7
              LayerName = Foreground
            end
            object ppLine38: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line38'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 75936
              mmTop = 264
              mmWidth = 2381
              BandType = 7
              LayerName = Foreground
            end
            object ppLine39: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line39'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 86784
              mmTop = 264
              mmWidth = 2381
              BandType = 7
              LayerName = Foreground
            end
            object ppLine40: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line40'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 97631
              mmTop = 264
              mmWidth = 2381
              BandType = 7
              LayerName = Foreground
            end
            object ppLine41: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line41'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 108479
              mmTop = 264
              mmWidth = 2381
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel21: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label21'
              AutoSize = False
              Border.mmPadding = 0
              Caption = #1580#1605#1593' '#1603#1604
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 5821
              mmLeft = 109009
              mmTop = 529
              mmWidth = 93663
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'BalanceTime'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6350
              mmLeft = 529
              mmTop = 265
              mmWidth = 10054
              BandType = 7
              LayerName = Foreground
            end
            object ppLine31: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line101'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 6615
              mmLeft = 0
              mmTop = 264
              mmWidth = 2381
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc2: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc2'
              Border.mmPadding = 0
              DataField = 'BalanceDay'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6350
              mmLeft = 11377
              mmTop = 265
              mmWidth = 10054
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc3: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc3'
              Border.mmPadding = 0
              DataField = 'ExpireDay'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6350
              mmLeft = 33073
              mmTop = 265
              mmWidth = 10054
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc4: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc4'
              Border.mmPadding = 0
              DataField = 'ExpireTime'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6350
              mmLeft = 22225
              mmTop = 265
              mmWidth = 10054
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc5: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc5'
              Border.mmPadding = 0
              DataField = 'ContainDay'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6350
              mmLeft = 54769
              mmTop = 265
              mmWidth = 10054
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc6: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc6'
              Border.mmPadding = 0
              DataField = 'ContainTime'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6350
              mmLeft = 43921
              mmTop = 265
              mmWidth = 10054
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc7: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc7'
              Border.mmPadding = 0
              DataField = 'FirstDay'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6350
              mmLeft = 76465
              mmTop = 265
              mmWidth = 10054
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc8: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc8'
              Border.mmPadding = 0
              DataField = 'FirstTime'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              Visible = False
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6350
              mmLeft = 65617
              mmTop = 265
              mmWidth = 10054
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc9: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc9'
              Border.mmPadding = 0
              DataField = 'FunctionDay'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6350
              mmLeft = 98161
              mmTop = 265
              mmWidth = 10054
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc10: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc10'
              Border.mmPadding = 0
              DataField = 'FunctionTime'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 6350
              mmLeft = 87313
              mmTop = 265
              mmWidth = 10054
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
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 3200
      mmPrintPosition = 0
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line103'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 8
        LayerName = Foreground1
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
  object DBPipelineSumGrid1: TppDBPipeline
    OpenDataSource = False
    UserName = 'DBPipelineSumGrid1'
    Left = 224
    Top = 313
  end
end
