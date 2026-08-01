inherited FormInfo_2F: TFormInfo_2F
  Left = 441
  Top = 188
  Caption = #1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583
  ClientWidth = 895
  OnResize = FormResize
  ExplicitWidth = 911
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Width = 895
    ExplicitWidth = 895
    inherited BtnReject: TBitBtn
      Width = 72
      ExplicitWidth = 72
    end
    object newPanel: TPanel
      Left = 597
      Top = 1
      Width = 297
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        297
        39)
      object BitBtn3: TBitBtn
        Left = 221
        Top = 8
        Width = 68
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 151
        Top = 8
        Width = 68
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 81
        Top = 8
        Width = 68
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
      object BitBtn8: TBitBtn
        Left = 9
        Top = 9
        Width = 68
        Height = 25
        Action = actGetExcel
        Anchors = [akTop, akRight]
        Caption = #1583#1585#1610#1575#1601#1578#8207#1575#1586'Excel'
        TabOrder = 3
      end
    end
    object BitBtn6: TBitBtn
      Left = 227
      Top = 8
      Width = 72
      Height = 25
      Action = actSendToExcel
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      Left = 153
      Top = 8
      Width = 72
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 79
      Top = 8
      Width = 72
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 4
    end
    object BitBtn7: TBitBtn
      Left = 301
      Top = 8
      Width = 72
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #1670#1575#1662
      TabOrder = 5
      OnClick = BitBtn7Click
    end
  end
  inherited Panel2: TPanel
    Width = 895
    Height = 69
    ExplicitWidth = 895
    ExplicitHeight = 69
    inherited ImgTemplate: TImage
      Left = 853
      ExplicitLeft = 857
    end
    inherited lblCaption: TLabel
      Left = 787
      Height = 49
      ExplicitLeft = 787
    end
    inherited lblBaseDate: TLabel
      Left = 343
      ExplicitLeft = 343
    end
    object Image3: TImage
      Left = 655
      Top = 19
      Width = 14
      Height = 15
      AutoSize = True
      Picture.Data = {
        07544269746D6170CA020000424DCA0200000000000036000000280000000E00
        00000F0000000100180000000000940200000000000000000000000000000000
        0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFF0000FFFFFFE2EFF1
        E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF199A8
        ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF008000FFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFF
        FFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFF008000008000008000FFFFFFFFFFFF64
        6F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFFFF00800000800000
        8000008000008000FFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFFFF
        FFFF008000008000008000FFFFFF008000008000FFFFFF646F7199A8ACF0FBFF
        0000FFFFFFE2EFF1FFFFFF008000008000008000FFFFFFFFFFFFFFFFFF008000
        FFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFF008000008000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1
        FFFFFF008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8
        ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1646F71646F71646F
        71646F71646F71646F71646F71646F71646F71646F7199A8ACF0FBFF0000FFFF
        FF99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
        A8AC99A8ACF0FBFF0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0
        FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF0000}
      Visible = False
    end
    object Image2: TImage
      Left = 700
      Top = 13
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        0000100000000100180000000000000300000000000000000000000000000000
        0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1
        E2EFF1E2EFF1E2EFF199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1646F71646F71646F71646F71646F71646F71646F71
        646F71646F71646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFF99A8AC99A8AC99A8
        AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACF0FBFFF0
        FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FB
        FFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0
        FBFF}
      Visible = False
    end
    object PnlRecall: TPanel
      Left = 1
      Top = 1
      Width = 240
      Height = 67
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object SpeedButton1: TSpeedButton
        Left = 14
        Top = 1
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object Label2: TLabel
        Left = 112
        Top = 4
        Width = 105
        Height = 13
        Caption = #1603#1583' '#1608' '#1587#1591#1581' '#1593#1606#1608#1575#1606' '#1602#1576#1604#1610
      end
      object DBEdit1: TDBEdit
        Left = 39
        Top = 2
        Width = 68
        Height = 21
        DataField = 'InfoID'
        DataSource = SrcMaster
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 14
        Top = 26
        Width = 202
        Height = 19
        Color = 14540253
        Ctl3D = False
        DataField = 'InfoName_L1'
        DataSource = SrcMaster
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
        Left = 12
        Top = 46
        Width = 190
        Height = 18
        DataSource = SrcMaster
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost]
        Flat = True
        TabOrder = 2
      end
    end
    object Panel1: TPanel
      Left = 241
      Top = 1
      Width = 349
      Height = 67
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object chkAll: TCheckBox
        Left = 0
        Top = 0
        Width = 349
        Height = 21
        Align = alTop
        Caption = #1607#1605#1607' '#1587#1591#1581' '#1607#1575
        TabOrder = 0
        OnClick = chkAllClick
      end
      object yrcmbx1: TYearComboBox
        Left = 0
        Top = 21
        Width = 349
        Height = 46
        Align = alClient
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        TabOrder = 1
        YearID = 0
        YearsParam = 0
        ADOConnection = DmF.adcsalary
        OnYearChangeID = yrcmbx1YearChangeID
        ExplicitTop = 35
        ExplicitHeight = 32
      end
    end
  end
  inherited Panel3: TPanel
    Top = 69
    Width = 895
    Height = 407
    ExplicitTop = 69
    ExplicitWidth = 895
    ExplicitHeight = 407
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 891
      Height = 403
      Align = alClient
      Color = clCream
      DataSource = SrcItem
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
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
          Alignment = taCenter
          Expanded = False
          FieldName = 'InfoID'
          Title.Alignment = taCenter
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InfoName_L1'
          Title.Alignment = taCenter
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InfoName_L2'
          Title.Alignment = taCenter
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FirstAmount'
          Title.Alignment = taCenter
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount2'
          Title.Alignment = taCenter
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Title.Alignment = taCenter
          Width = 52
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'StandardDays'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'StandardTimes'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'Coefficient'
          Title.Alignment = taCenter
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CalCulateType'
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MaxDay'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MaxTime'
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'AccTopicCode'
          Title.Alignment = taCenter
          Width = 51
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'AccDetailCode'
          Title.Alignment = taCenter
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AccCTopiccode'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AccCTopiccode2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AccCTopicCode3'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RecalKindClock'
          Width = 136
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WordDocuments'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PayMentActive'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TaxCode'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FormInfoID2'
          Width = 21
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_FormInfoID2'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Checking4AllPersonnel'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EmployerAmountActive'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_PrvID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_PrvInfoID'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SalaryIDinDocActive'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FormInfoID'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_WageKind'
          Width = 163
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    Left = 448
    Top = 136
    inherited DataSetInsert1: TDataSetInsert
      DataSource = SrcItem
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = SrcItem
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = SrcItem
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = SrcItem
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = SrcItem
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      OnExecute = actSendToExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actGetExcel: TAction
      Caption = #1583#1585#1610#1575#1601#1578#8207#1575#1586'Excel'
      OnExecute = actGetExcelExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 560
    Top = 129
  end
  object qryItem: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterInsert = qryItemAfterInsert
    AfterEdit = qryItemAfterEdit
    BeforePost = qryItemBeforePost
    AfterPost = qryItemAfterPost
    BeforeDelete = qryItemBeforeDelete
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 58
      end
      item
        Name = 'FormInfoID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT Pay.FormsInfo.*'
      'FROM Pay.FormsInfo'
      'WHERE (FormType = :FormType ) '
      'AND (PrvInfoID = isnull(:FormInfoID,0))'
      ''
      'order by InfoID')
    Left = 528
    Top = 240
    object qryItemFormInfoID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1606#1583#1607' '
      FieldName = 'FormInfoID'
      Required = True
    end
    object qryItemFormType: TIntegerField
      DisplayLabel = #1603#1583' '#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' '
      FieldName = 'FormType'
      Required = True
    end
    object qryItemInfoID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'InfoID'
    end
    object qryItemInfoName_L1: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578'  '
      FieldName = 'InfoName_L1'
      Required = True
      Size = 255
    end
    object qryItemInfoName_L2: TStringField
      Tag = 3
      DisplayLabel = 'information caption'
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryItemPrvInfoID: TIntegerField
      DisplayLabel = #1603#1583' '#1587#1591#1581' '#1602#1576#1604#1610
      FieldName = 'PrvInfoID'
    end
    object qryItemAmount: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1579#1575#1576#1578' '
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryItemAmount2: TBCDField
      DisplayLabel = ' '#1578#1575' '#1605#1576#1604#1594'  /'#1575#1601#1585#1575#1583' '#1605#1593#1575#1601
      FieldName = 'Amount2'
      currency = True
      Precision = 19
    end
    object qryItemCoefficient: TFloatField
      DisplayLabel = #1590#1585#1610#1576
      FieldName = 'Coefficient'
    end
    object qryItemStandardDays: TFloatField
      DisplayLabel = #1585#1608#1586' ( '#1575#1587#1578#1575#1606#1583#1575#1585#1583')'
      FieldName = 'StandardDays'
    end
    object qryItemStandardTimes: TFloatField
      DisplayLabel = #1587#1575#1593#1578' '#1575#1587#1578#1575#1606#1583#1575#1585#1583' '
      FieldName = 'StandardTimes'
    end
    object qryItemAccTopicCode: TIntegerField
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'AccTopicCode'
    end
    object qryItemAccDetailCode: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'AccDetailCode'
    end
    object qryItemAccCTopicode: TIntegerField
      DisplayLabel = #1603#1583' '#1605'. '#1607#1586#1610#1606#1607' 1'
      FieldName = 'AccCTopiccode'
    end
    object qryItemAccCTopicode2: TIntegerField
      DisplayLabel = #1603#1583' '#1605'. '#1607#1586#1610#1606#1607' 2'
      FieldName = 'AccCTopiccode2'
    end
    object qryItemCalCulateType: TWordField
      DisplayLabel = #1606#1608#1593' '#1605#1581#1575#1587#1576#1607' '#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583
      FieldName = 'CalCulateType'
      OnGetText = qryItemCalCulateTypeGetText
      OnSetText = qryItemCalCulateTypeSetText
    end
    object qryItemRecallFormInfoID1: TStringField
      DisplayLabel = #1603#1583#1607#1575#1610' '#1602#1575#1576#1604' '#1575#1581#1578#1587#1575#1576' '#1606#1608#1593' 1'
      FieldName = 'RecallFormInfoID1'
      Size = 150
    end
    object qryItemRecallFormInfoID2: TStringField
      DisplayLabel = #1603#1583#1607#1575#1610' '#1602#1575#1576#1604' '#1575#1581#1578#1587#1575#1576' '#1606#1608#1593' 2'
      FieldName = 'RecallFormInfoID2'
      Size = 150
    end
    object qryItemRecalKindClock: TWordField
      DisplayLabel = #1606#1608#1593' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1586' '#1603#1575#1585#1578' '#1587#1575#1593#1578
      FieldName = 'RecalKindClock'
      OnGetText = qryItemRecalKindClockGetText
      OnSetText = qryItemRecalKindClockSetText
    end
    object qryItemWordDocuments: TStringField
      DisplayLabel = #1606#1575#1605' '#1601#1575#1610#1604' Word'
      FieldName = 'WordDocuments'
      Size = 150
    end
    object qryItemFirstAmount: TBCDField
      DisplayLabel = #1605#1576#1604#1594' '#1575#1608#1604#1610#1607
      FieldName = 'FirstAmount'
      currency = True
      Precision = 19
    end
    object qryItemMaxDay: TFloatField
      DisplayLabel = #1581#1583#1575#1603#1579#1585' '#1587#1602#1601' '#1585#1608#1586
      FieldName = 'MaxDay'
    end
    object qryItemMaxTime: TFloatField
      DisplayLabel = #1581#1583#1575#1603#1579#1585#1587#1602#1601' '#1587#1575#1593#1578
      FieldName = 'MaxTime'
    end
    object qryItemMuliplyInDay: TWordField
      FieldName = 'MuliplyInDay'
    end
    object qryItemAccCTopicCode3: TIntegerField
      DisplayLabel = #1603#1583#1578#1601#1589#1740#1604#1740'4'
      FieldName = 'AccCTopicCode3'
    end
    object qryItemPayMentActive: TWordField
      DisplayLabel = #1605#1575#1606#1583#1607' '#1602#1576#1604
      FieldName = 'PayMentActive'
    end
    object qryItemTaxCode: TWordField
      DisplayLabel = #1603#1583' '#1605#1575#1604#1610#1575#1578
      FieldName = 'TaxCode'
    end
    object qryItemFormInfoID2: TIntegerField
      DisplayLabel = #1603#1583' '
      FieldName = 'FormInfoID2'
      OnGetText = qryItemFormInfoID2GetText
    end
    object qryItem_FormInfoID2: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldKind = fkLookup
      FieldName = '_FormInfoID2'
      LookupDataSet = qryFormInfo
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'FormInfoID2'
      Size = 200
      Lookup = True
    end
    object qryItemNote: TMemoField
      FieldName = 'Note'
      BlobType = ftMemo
    end
    object qryItemChecking4AllPersonnel2: TWordField
      DisplayLabel = ' '#1608#1575#1585#1587#1740' '#1576#1585#1575#1740' '#1607#1605#1607
      FieldName = 'Checking4AllPersonnel'
    end
    object qryItemEmployerAmountActive: TWordField
      DisplayLabel = #1587#1607#1605' '#1705#1575#1585#1601#1585#1605#1575
      FieldName = 'EmployerAmountActive'
    end
    object qryItemAccTopicCodeB: TIntegerField
      FieldName = 'AccTopicCodeB'
    end
    object qryItemAccDetailCodeB: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1576#1583'/'#1576#1587
      FieldName = 'AccDetailCodeB'
    end
    object qryItem_PrvID: TIntegerField
      DisplayLabel = #1603#1583'  '#1587#1591#1581' '#1602#1576#1604#1610
      FieldKind = fkLookup
      FieldName = '_PrvID'
      LookupDataSet = qryFormInfo
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoID'
      KeyFields = 'PrvInfoID'
      Lookup = True
    end
    object qryItem_PrvInfoID: TStringField
      DisplayLabel = #1587#1591#1581' '#1593#1606#1608#1575#1606' '#1602#1576#1604#1610
      FieldKind = fkLookup
      FieldName = '_PrvInfoID'
      LookupDataSet = qryFormInfo
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'PrvInfoID'
      Size = 200
      Lookup = True
    end
    object qryItemSalaryIDinDocActive: TWordField
      DisplayLabel = #1606#1605#1575#1740#1588' '#1583#1585' '#1587#1606#1583
      FieldName = 'SalaryIDinDocActive'
    end
    object qryItemWageKind: TWordField
      FieldName = 'WageKind'
    end
    object qryItem_WageKind: TStringField
      DisplayLabel = #1606#1608#1593' '#1581#1602#1608#1602' '#1608' '#1605#1586#1575#1740#1575
      FieldKind = fkLookup
      FieldName = '_WageKind'
      LookupDataSet = qryWageKinds
      LookupKeyFields = 'WageKind'
      LookupResultField = 'WageKindName'
      KeyFields = 'WageKind'
      Size = 100
      Lookup = True
    end
  end
  object qryMaster: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterScroll = qryMasterAfterScroll
    Parameters = <
      item
        Name = 'RecallFormTypes'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT     FormInfoID, FormType, InfoID, InfoName_L1, InfoName_L' +
        '2'
      
        '        , AccTopicCode, AccDetailCode, AccCTopicCode, AccCTopicC' +
        'ode2'
      ',DisableDecContainTaxNumerator'
      'FROM         Pay.FormsInfo'
      'WHERE     (FormType = :RecallFormTypes)'
      '')
    Left = 312
    Top = 189
    object qryMasterFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryMasterFormType: TIntegerField
      FieldName = 'FormType'
    end
    object qryMasterInfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qryMasterInfoName_L1: TStringField
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryMasterInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryMasterAccTopicCode: TIntegerField
      FieldName = 'AccTopicCode'
    end
    object qryMasterAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qryMasterAccCTopicCode: TIntegerField
      FieldName = 'AccCTopicCode'
    end
    object qryMasterAccCTopicCode2: TIntegerField
      FieldName = 'AccCTopicCode2'
    end
  end
  object SrcMaster: TDataSource
    DataSet = qryMaster
    Left = 96
    Top = 157
  end
  object SrcItem: TDataSource
    DataSet = qryItem
    OnStateChange = SrcItemStateChange
    Left = 416
    Top = 221
  end
  object qryInitForm: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 6
      end>
    SQL.Strings = (
      'select * FROM Pay.FormTypes'
      'where  FormType=:FormType')
    Left = 784
    Top = 141
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = SrcMaster
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 192
    Top = 128
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'FormInfoID'
      FieldName = 'FormInfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'FormType'
      FieldName = 'FormType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'InfoID'
      FieldName = 'InfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'InfoName_L1'
      FieldName = 'InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'InfoName_L2'
      FieldName = 'InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'PrvInfoID'
      FieldName = 'PrvInfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'Amount'
      FieldName = 'Amount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'Amount2'
      FieldName = 'Amount2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'Coefficient'
      FieldName = 'Coefficient'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'StandardDays'
      FieldName = 'StandardDays'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'StandardTimes'
      FieldName = 'StandardTimes'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'AccTopicCode'
      FieldName = 'AccTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'AccDetailCode'
      FieldName = 'AccDetailCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'AccCTopiccode'
      FieldName = 'AccCTopiccode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'AccCTopiccode2'
      FieldName = 'AccCTopiccode2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'CalCulateType'
      FieldName = 'CalCulateType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'RecallFormInfoID1'
      FieldName = 'RecallFormInfoID1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'RecallFormInfoID2'
      FieldName = 'RecallFormInfoID2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = 'RecalKindClock'
      FieldName = 'RecalKindClock'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = 'WordDocuments'
      FieldName = 'WordDocuments'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'FirstAmount'
      FieldName = 'FirstAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
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
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\forminfo2day4.rtm'
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
    Left = 296
    Top = 120
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppTitleBand1: TppTitleBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 15610
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 75406
        mmTop = 794
        mmWidth = 52123
        BandType = 1
        LayerName = Foreground
      end
      object ppLblFromCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblFromCaption'
        OnGetText = ppLblFromCaptionGetText
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8202
        mmLeft = 97102
        mmTop = 7144
        mmWidth = 8996
        BandType = 1
        LayerName = Foreground
      end
      object pplblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lblPrintDate'
        OnGetText = pplblPrintDateGetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6350
        mmLeft = 15610
        mmTop = 8996
        mmWidth = 12171
        BandType = 1
        LayerName = Foreground
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 11906
      mmPrintPosition = 0
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '
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
        mmLeft = 118534
        mmTop = 5027
        mmWidth = 62442
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1603#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 183357
        mmTop = 5027
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground
      end
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNo'
        OnGetText = ppSysVarPageNoGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 14552
        mmTop = 0
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 265
        mmTop = 5027
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 10318
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 5556
        mmLeft = 181240
        mmTop = 6085
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 5556
        mmLeft = 85196
        mmTop = 6085
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610
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
        mmLeft = 43921
        mmTop = 5027
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1581#1587#1575#1576
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
        mmLeft = 65352
        mmTop = 5027
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5292
        mmLeft = 63765
        mmTop = 6615
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 5556
        mmLeft = 42069
        mmTop = 6085
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label102'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39'1'
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
        mmLeft = 22225
        mmTop = 5027
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 5556
        mmLeft = 20373
        mmTop = 6085
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'3'
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
        mmLeft = 529
        mmTop = 5027
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 5556
        mmLeft = 116681
        mmTop = 5556
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label103'
        Border.mmPadding = 0
        Caption = #1606#1581#1608#1607' '#1605#1581#1575#1587#1576#1607
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
        mmLeft = 87313
        mmTop = 5027
        mmWidth = 29369
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'InfoID'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5821
        mmLeft = 183357
        mmTop = 0
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'InfoName_L1'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5292
        mmLeft = 118534
        mmTop = 0
        mmWidth = 62442
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'AccDetailCode'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5821
        mmLeft = 65352
        mmTop = 0
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'AccTopicCode'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5821
        mmLeft = 43921
        mmTop = 0
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'AccCTopiccode'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5821
        mmLeft = 22225
        mmTop = 0
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'AccCTopiccode2'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5821
        mmLeft = 529
        mmTop = 0
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        OnGetText = ppDBTxtCalCulateTypeGetText
        Border.mmPadding = 0
        DataField = 'CalCulateType'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5821
        mmLeft = 87313
        mmTop = 0
        mmWidth = 29369
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
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
      mmHeight = 20902
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 194336
        mmTop = 1852
        mmWidth = 7144
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'InfoID'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5821
        mmLeft = 175155
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 164571
        mmTop = 7673
        mmWidth = 39158
        BandType = 7
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 164571
        mmTop = 8467
        mmWidth = 39158
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
  object ppDBPipeline2: TppDBPipeline
    DataSource = SrcItem
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 170
    Top = 199
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object PopList4Printold: TPopupMenu
    Left = 546
    Top = 383
    object AllClick: TMenuItem
      Caption = #1575#1586' Hint '#1608' Name '#1575#1587#1578#1601#1575#1583#1607' '#1588#1583#1607
      Visible = False
    end
    object forminfo2Dtaile: TMenuItem
      Tag = 1
      Caption = #1670#1575#1662' 1'
      Hint = 'forsort'
      OnClick = AllClickClick
    end
    object forminfo2Master: TMenuItem
      Tag = 2
      Caption = #1670#1575#1662' 2'
      Hint = '4sort'
      OnClick = AllClickClick
    end
    object forminfo2day1: TMenuItem
      Tag = 3
      Caption = 'forminfo2day1.rtm'
      Hint = 'insuranceID,PersonelNo'
      OnClick = AllClickClick
    end
    object forminfo2day2: TMenuItem
      Tag = 4
      Caption = 'forminfo2day2'
      Hint = 'insuranceID,PersonelNo'
      OnClick = AllClickClick
    end
    object forminfo2day3: TMenuItem
      Tag = 5
      Caption = 'forminfo2day3'
      Hint = 'AccBankType,PersonelNo'
      OnClick = AllClickClick
    end
    object forminfo2day4: TMenuItem
      Tag = 7
      Caption = 'forminfo2day4'
      Hint = 'PersonelNo'
      OnClick = AllClickClick
    end
    object forminfo2day5: TMenuItem
      Caption = 'forminfo2day5'
      OnClick = AllClickClick
    end
    object forminfo2day6: TMenuItem
      Caption = 'forminfo2day6'
      OnClick = AllClickClick
    end
  end
  object PopList4Print: TPopupMenu
    Left = 658
    Top = 375
    object AllClikPop: TMenuItem
      Caption = #1670#1575#1662#1607#1575#1610' '#1583#1610#1711#1585' '#1585#1575' '#1583#1585' '#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583' '#1605#1588#1582#1589' '#1603#1606#1610#1583'..'
      OnClick = AllClikPopClick
    end
  end
  object qryFormInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     FormInfoID,  InfoID, InfoName_L1, InfoName_L2'
      '       '
      'FROM         Pay.FormsInfo'
      ''
      '')
    Left = 664
    Top = 157
  end
  object qryWageKinds: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * FROM Pay.WageKinds'
      '')
    Left = 744
    Top = 269
  end
end
