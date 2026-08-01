inherited FunctionDayChekF: TFunctionDayChekF
  Left = 337
  Top = 80
  Caption = #1603#1606#1578#1585#1604' '#1579#1576#1578' '#8207#1603#1575#1585#1603#1585#1583' '#1582#1575#1589
  ClientWidth = 822
  OnResize = FormResize
  ExplicitWidth = 838
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 479
    Width = 822
    Height = 38
    ExplicitTop = 479
    ExplicitWidth = 822
    ExplicitHeight = 38
    inherited BtnReject: TBitBtn
      Top = 4
      Height = 30
      Margins.Top = 3
      Margins.Bottom = 3
      ExplicitTop = 4
      ExplicitHeight = 30
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 4
      Width = 75
      Height = 30
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 4
      Width = 75
      Height = 30
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 4
      Width = 75
      Height = 30
      Action = actSendToExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 500
      Top = 4
      Width = 75
      Height = 30
      Align = alRight
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object BitBtn10: TBitBtn
      AlignWithMargins = True
      Left = 581
      Top = 4
      Width = 75
      Height = 30
      Align = alRight
      Caption = #1670#1575#1662' '
      TabOrder = 5
      OnClick = BitBtn10Click
    end
    object BtnDelete: TBitBtn
      AlignWithMargins = True
      Left = 662
      Top = 4
      Width = 75
      Height = 30
      Action = actDelete
      Align = alRight
      Caption = #1581#1584#1601
      TabOrder = 6
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 743
      Top = 4
      Width = 75
      Height = 30
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 7
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 4
      Width = 75
      Height = 30
      Action = actTotalChange
      Align = alLeft
      Caption = #1578#1594#1610#1610#1585' '#1603#1604#1610
      TabOrder = 8
    end
  end
  inherited Panel2: TPanel
    Width = 822
    Height = 52
    ExplicitWidth = 822
    ExplicitHeight = 52
    DesignSize = (
      822
      52)
    inherited ImgTemplate: TImage
      Left = 805
      ExplicitLeft = 769
    end
    inherited lblCaption: TLabel
      Left = 714
      Height = 32
      ExplicitLeft = 714
    end
    inherited lblBaseDate: TLabel
      Left = 362
      ExplicitLeft = 345
    end
  end
  inherited Panel3: TPanel
    Top = 88
    Width = 822
    Height = 391
    ExplicitTop = 88
    ExplicitWidth = 822
    ExplicitHeight = 391
    object grpMaster: TGroupBox
      Left = 2
      Top = 2
      Width = 818
      Height = 38
      Align = alTop
      Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1662#1585#1587#1606#1604
      TabOrder = 1
      object sbtnMaster: TSpeedButton
        Left = 272
        Top = 10
        Width = 21
        Height = 22
        Caption = '...'
        OnClick = sbtnMasterClick
      end
      object EdtCode: TDBEdit
        Left = 295
        Top = 11
        Width = 81
        Height = 21
        DataField = 'MasterCode'
        DataSource = SrcFunctionDay
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 11
        Width = 260
        Height = 21
        BevelOuter = bvNone
        BevelKind = bkFlat
        Color = clBtnFace
        Ctl3D = True
        DataField = 'Name'
        DataSource = SrcFunctionDay
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBNavigator2: TDBNavigator
        AlignWithMargins = True
        Left = 380
        Top = 10
        Width = 196
        Height = 22
        DataSource = SrcFunctionDay
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 2
      end
    end
    object GrdSumDayItems: TCedarDbgrid
      Left = 2
      Top = 218
      Width = 818
      Height = 171
      Align = alBottom
      Color = clCream
      DataSource = srcSumDayItems
      DynProps = <>
      Flat = True
      FooterParams.FillStyle = cfstSolidEh
      FooterParams.Font.Charset = DEFAULT_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -12
      FooterParams.Font.Name = 'Segoe UI'
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
      TabOrder = 2
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PeresentID'
          Footers = <>
          Width = 110
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InfoName_L1'
          Footers = <>
          Width = 153
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PeresentIDCount'
          Footers = <>
          Width = 110
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FunTime'
          Footers = <>
          Width = 110
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtTime'
          Footers = <>
          Width = 110
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ShiftNo'
          Footers = <>
          Width = 110
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object DBGrid1: TCedarDbgrid
      Tag = 111
      Left = 2
      Top = 40
      Width = 818
      Height = 178
      Align = alClient
      Color = clCream
      DataSource = srcFunctionDayItems
      DynProps = <>
      Flat = True
      FooterParams.FillStyle = cfstSolidEh
      FooterParams.Font.Charset = DEFAULT_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -12
      FooterParams.Font.Name = 'Segoe UI'
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      FooterParams.VertLines = False
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clWhite
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 0
      OnEditButtonClick = DBGrid1EditButtonClick
      OnKeyPress = DBGrid1KeyPress
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          CellButtons = <>
          DynProps = <>
          EditButton.Style = ebsEllipsisEh
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'FunNo'
          Footers = <>
          Width = 57
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FunDate'
          Footers = <>
          ReadOnly = True
          Width = 45
        end
        item
          ButtonStyle = cbsEllipsis
          CellButtons = <>
          DynProps = <>
          EditButton.Style = ebsEllipsisEh
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'PeresentID'
          Footers = <>
          Width = 45
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_PeresentID'
          Footers = <>
          Width = 35
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FunTime'
          Footers = <>
          Width = 53
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExtTime'
          Footers = <>
          Width = 49
        end
        item
          ButtonStyle = cbsEllipsis
          CellButtons = <>
          DynProps = <>
          EditButton.Style = ebsEllipsisEh
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'ShiftNo'
          Footers = <>
          Width = 50
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_ShiftNo'
          Footers = <>
          Width = 45
        end
        item
          ButtonStyle = cbsEllipsis
          CellButtons = <>
          DynProps = <>
          EditButton.Style = ebsEllipsisEh
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'WorkID'
          Footers = <>
          Width = 49
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_WorkID'
          Footers = <>
          Width = 45
        end
        item
          ButtonStyle = cbsEllipsis
          CellButtons = <>
          DynProps = <>
          EditButton.Style = ebsEllipsisEh
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'EarthCode'
          Footers = <>
          Width = 42
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_EarthCode'
          Footers = <>
          Width = 35
        end
        item
          ButtonStyle = cbsEllipsis
          CellButtons = <>
          DynProps = <>
          EditButton.Style = ebsEllipsisEh
          EditButton.Visible = True
          EditButtons = <>
          FieldName = 'ProcCode'
          Footers = <>
          Width = 55
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_ProcCode'
          Footers = <>
          Width = 45
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object ToolBar1: TToolBar [3]
    Left = 0
    Top = 52
    Width = 822
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
  inherited ActionList: TActionList
    Left = 490
    Top = 4
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcFunctionDayItems
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcFunctionDayItems
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcFunctionDayItems
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcFunctionDayItems
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actDelete: TAction
      Caption = #1581#1584#1601
      OnExecute = actDeleteExecute
    end
    object actTotalChange: TAction
      Caption = #1578#1594#1610#1610#1585' '#1603#1604#1610
      OnExecute = actTotalChangeExecute
    end
    object actSetSelectedSituation0: TAction
      Caption = #1605#1608#1602#1578' '#1603#1585#1583#1606
      OnExecute = actSetSelectedSituation0Execute
    end
    object actSetSelectedSituationAll0: TAction
      Caption = #1605#1608#1602#1578' '#1603#1585#1583#1606' '#1607#1605#1607' '#1587#1591#1585#1607#1575
      OnExecute = actSetSelectedSituationAll0Execute
    end
    object actSetSelectedSituation1: TAction
      Caption = #1602#1591#1593#1610' '#1603#1585#1583#1606
      OnExecute = actSetSelectedSituation1Execute
    end
    object actSetSelectedSituationAll1: TAction
      Caption = #1602#1591#1593#1610' '#1603#1585#1583#1606' '#1607#1605#1607' '#1587#1591#1585#1607#1575
      OnExecute = actSetSelectedSituationAll1Execute
    end
  end
  inherited ImageList1: TImageList
    Left = 394
    Top = 4
  end
  object qryPersonel: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     PersonelInfo.PersonelNo, PersonelInfo.lastName_L1 + '#39 +
        '  '#39' + PersonelInfo.name_L1 AS PersonName_L1, '
      
        '                      PersonelInfo.lastName_L2 + '#39'  '#39' + Personel' +
        'Info.name_L2 AS PersonName_L2, FormsInfo.InfoID, FormsInfo.InfoN' +
        'ame_L1, FormsInfo.InfoName_L2, '
      
        '                      Interdicts.jobCode, Interdicts.OfficeCode,' +
        ' FormsInfo_1.InfoName_L1 AS Expr1, FormsInfo_1.InfoName_L2 AS Ex' +
        'pr2, Interdicts.EmployTypeID, '
      
        '                      Interdicts.StandardEmployAmount, Interdict' +
        's.InterdicEndDate'
      'FROM Pay.PersonelInfo INNER JOIN'
      
        '                      Pay.FormsInfo ON PersonelInfo.PersonelStat' +
        'e = FormsInfo.FormInfoID INNER JOIN'
      
        '                      Pay.Interdicts ON PersonelInfo.PersonelNo ' +
        '= Interdicts.PersonelNo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo FormsInfo_1 ON Pay.Interdict' +
        's.OfficeCode = FormsInfo_1.FormInfoID'
      'WHERE     (FormsInfo.InfoID < 50) AND (Interdicts.State < 11) '
      '')
    Left = 698
    Top = 185
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
    Left = 586
    Top = 4
  end
  object qryFunctionDay: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterScroll = qryFunctionDayAfterScroll
    Parameters = <
      item
        Name = 'VahedCodeFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'VahedCodeTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 99999
      end
      item
        Name = 'Mounth'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'StateFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'StateTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PersonelNOFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonelNOTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 135201
      end
      item
        Name = 'YearID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT  DISTINCT FunctionDayItems.PersonelNo as MasterCode  , Pe' +
        'rsonelInfo.lastName_L1 + '#39' - - '#39' + PersonelInfo.name_L1 AS Name'
      ', FunctionDay.Situation'
      'FROM Pay.FunctionDayItems INNER JOIN'
      
        '                      Pay.FunctionDay ON FunctionDayItems.FunID ' +
        '= FunctionDay.FunID INNER JOIN'
      
        '                      Pay.PersonelInfo ON FunctionDayItems.Perso' +
        'nelNo = PersonelInfo.PersonelNo INNER JOIN'
      
        '                      Pay.FormsInfo ON FunctionDay.OfficeCode = ' +
        'FormsInfo.FormInfoID LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo AS FormsInfo_State ON Person' +
        'elInfo.PersonelState = FormsInfo_State.FormInfoID'
      
        'Where           (FormsInfo.InfoID BETWEEN  :VahedCodeFrom and :V' +
        'ahedCodeTo )'
      
        'and ((CAST(SUBSTRING(FunctionDay.FunDate, 6, 2) AS int) = :Mount' +
        'h))'
      ' AND (FormsInfo_State.InfoID BETWEEN  :StateFrom AND :StateTo)'
      ''
      
        'AND (FunctionDayItems.PersonelNo BETWEEN   :PersonelNOFrom  and ' +
        ':PersonelNOTo  ) '
      'AND (FunctionDay.YearID = :YearID ) '
      'Order By FunctionDayItems.PersonelNo')
    Left = 50
    Top = 185
    object qryFunctionDayMasterCode: TIntegerField
      FieldName = 'MasterCode'
    end
    object qryFunctionDayName: TStringField
      FieldName = 'Name'
      ReadOnly = True
      Size = 60
    end
    object qryFunctionDaySituation: TWordField
      FieldName = 'Situation'
    end
  end
  object SrcFunctionDay: TDataSource
    DataSet = qryFunctionDay
    OnStateChange = SrcFunctionDayStateChange
    Left = 179
    Top = 185
  end
  object srcFunctionDayItems: TDataSource
    DataSet = qryFunctionDayItems
    Left = 50
    Top = 335
  end
  object qryFunctionDayItems: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterOpen = qryFunctionDayItemsAfterOpen
    BeforeInsert = qryFunctionDayItemsBeforeInsert
    AfterInsert = qryFunctionDayItemsAfterInsert
    BeforeEdit = qryFunctionDayItemsBeforeEdit
    AfterEdit = qryFunctionDayItemsAfterEdit
    BeforePost = qryFunctionDayItemsBeforePost
    BeforeDelete = qryFunctionDayItemsBeforeDelete
    AfterDelete = qryFunctionDayItemsAfterDelete
    AfterScroll = qryFunctionDayItemsAfterScroll
    Parameters = <
      item
        Name = 'Mounth'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'PersonelNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     FunctionDayItems.PersonelNo, FunctionDayItems.Peresen' +
        'tID, FunctionDayItems.WorkID, FunctionDayItems.ProcCode, Functio' +
        'nDayItems.EarthCode,'
      
        '                      FunctionDayItems.FunTime, FunctionDayItems' +
        '.ExtTime, FunctionDayItems.ShiftNo, FunctionDay.FunNo, FunctionD' +
        'ay.FunDate, '
      
        '                      FunctionDayItems.FunID, FunctionDayItems.F' +
        'unItemID, FunctionDayItems.FirstUser, FunctionDayItems.LastUser,' +
        ' '
      
        '                      FunctionDayItems.StandardRate ,FunctionDay' +
        '.State,FunctionDay.Situation'
      'FROM Pay.FunctionDayItems INNER JOIN'
      
        '                      Pay.FunctionDay ON FunctionDayItems.FunID ' +
        '= FunctionDay.FunID'
      'WHERE     (ABS(SUBSTRING(FunctionDay.FunDate, 6, 2)) = :Mounth)'
      'AND (FunctionDayItems.PersonelNo = :PersonelNo)'
      'AND (FunctionDay.YearID = :YearID ) '
      'order by     FunctionDay.FunDate,FunctionDay.FunNo'
      '')
    Left = 50
    Top = 260
    object qryFunctionDayItemsFunItemID: TIntegerField
      FieldName = 'FunItemID'
    end
    object qryFunctionDayItemsFunID: TIntegerField
      FieldName = 'FunID'
    end
    object qryFunctionDayItemsPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNo'
      Required = True
    end
    object qryFunctionDayItems_PersonelName: TStringField
      DisplayLabel = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      FieldKind = fkLookup
      FieldName = '_PersonelName'
      LookupDataSet = qryPersonel
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'PersonName_L1'
      KeyFields = 'PersonelNo'
      Required = True
      Size = 150
      Lookup = True
    end
    object qryFunctionDayItemsPeresentID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1590#1608#1585
      FieldName = 'PeresentID'
    end
    object qryFunctionDayItemsFunTime: TFloatField
      Tag = 3
      DisplayLabel = #1587#1575#1593#1578' '#1603#1575#1585
      FieldName = 'FunTime'
    end
    object qryFunctionDayItemsExtTime: TFloatField
      Tag = 3
      DisplayLabel = #1575#1590#1575#1601#1607' '#1603#1575#1585
      FieldName = 'ExtTime'
    end
    object qryFunctionDayItemsShiftNo: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1588#1610#1601#1578
      FieldName = 'ShiftNo'
    end
    object qryFunctionDayItemsWorkID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1606#1608#1593' '#1603#1575#1585
      FieldName = 'WorkID'
    end
    object qryFunctionDayItemsEarthCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1586#1605#1610#1606
      FieldName = 'EarthCode'
    end
    object qryFunctionDayItemsProcCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1581#1589#1608#1604
      FieldName = 'ProcCode'
    end
    object qryFunctionDayItemsFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryFunctionDayItemsLastUser: TVarBytesField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryFunctionDayItemsStandardRate: TBCDField
      Tag = 3
      DisplayLabel = #1606#1585#1582' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
      FieldName = 'StandardRate'
      currency = True
      Precision = 19
    end
    object qryFunctionDayItems_PeresentID: TStringField
      DisplayLabel = #1581#1590#1608#1585
      FieldKind = fkLookup
      FieldName = '_PeresentID'
      LookupDataSet = qryPeresentID
      LookupKeyFields = 'InfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'PeresentID'
      ReadOnly = True
      Required = True
      Size = 150
      Lookup = True
    end
    object qryFunctionDayItems_ShiftNo: TStringField
      DisplayLabel = #1588#1610#1601#1578
      FieldKind = fkLookup
      FieldName = '_ShiftNo'
      LookupDataSet = qryShiftNo
      LookupKeyFields = 'InfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'ShiftNo'
      ReadOnly = True
      Required = True
      Size = 150
      Lookup = True
    end
    object qryFunctionDayItems_WorkID: TStringField
      DisplayLabel = #1606#1608#1593' '#1603#1575#1585
      FieldKind = fkLookup
      FieldName = '_WorkID'
      LookupDataSet = qryWorkID
      LookupKeyFields = 'InfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'WorkID'
      ReadOnly = True
      Required = True
      Size = 150
      Lookup = True
    end
    object qryFunctionDayItems_EarthCode: TStringField
      DisplayLabel = ' '#1586#1605#1610#1606
      FieldKind = fkLookup
      FieldName = '_EarthCode'
      LookupDataSet = qryEarthCode
      LookupKeyFields = 'InfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'EarthCode'
      ReadOnly = True
      Required = True
      Size = 150
      Lookup = True
    end
    object qryFunctionDayItems_ProcCode: TStringField
      DisplayLabel = #1605#1581#1589#1608#1604
      FieldKind = fkLookup
      FieldName = '_ProcCode'
      LookupDataSet = qryProcCode
      LookupKeyFields = 'InfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'ProcCode'
      ReadOnly = True
      Required = True
      Size = 150
      Lookup = True
    end
    object qryFunctionDayItemsFunNo: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'FunNo'
    end
    object qryFunctionDayItemsFunDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'FunDate'
      FixedChar = True
      Size = 10
    end
    object qryFunctionDayItemsState: TWordField
      FieldName = 'State'
    end
  end
  object qryOfficeCode: TADOQuery
    Connection = DmF.adcsalary
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.For' +
        'msInfo '
      '     WHERE  FormType =12'
      '')
    Left = 568
    Top = 260
  end
  object qryPeresentID: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.For' +
        'msInfo '
      '     WHERE  FormType =64'
      '')
    Left = 698
    Top = 260
  end
  object qryShiftNo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.For' +
        'msInfo '
      '     WHERE  FormType =65'
      '')
    Left = 309
    Top = 185
  end
  object qryWorkID: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.For' +
        'msInfo '
      '     WHERE  FormType =40'
      '')
    Left = 309
    Top = 260
  end
  object qryProcCode: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.For' +
        'msInfo '
      '     WHERE  FormType =67'
      '')
    Left = 403
    Top = 233
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = SrcFunctionDay
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 568
    Top = 185
    MasterDataPipelineName = 'ppDBPipeline2'
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'FunID'
      FieldName = 'FunID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'FunNo'
      FieldName = 'FunNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'FunDate'
      FieldName = 'FunDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'FirstUser'
      FieldName = 'FirstUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'LastUser'
      FieldName = 'LastUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'state'
      FieldName = 'state'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'note'
      FieldName = 'note'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'OfficeCode'
      FieldName = 'OfficeCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = '_OfficeName_L1'
      FieldName = '_OfficeName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcFunctionDayItems
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 454
    Top = 161
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
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\FunctionDay.rtm'
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
    Left = 470
    Top = 292
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 17992
        mmWidth = 197379
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompanyName'
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
        mmLeft = 73025
        mmTop = 1058
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = #1579#1576#1578' '#1603#1575#1585#1603#1585#1583' '#1582#1575#1589
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8382
        mmLeft = 83408
        mmTop = 8467
        mmWidth = 30565
        BandType = 0
        LayerName = Foreground
      end
      object ppLblPrintDate: TppLabel
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
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 9790
        mmTop = 1058
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1662#1585#1587#1606#1604#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4149
        mmLeft = 186796
        mmTop = 19579
        mmWidth = 10160
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 186162
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 150074
        mmTop = 18522
        mmWidth = 35560
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 149545
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1581#1590#1608#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 131237
        mmTop = 18522
        mmWidth = 17780
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 130709
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1587#1575#1593#1578' '#1603#1575#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 112400
        mmTop = 18522
        mmWidth = 17780
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 111872
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1575#1590#1575#1601#1607' '#1603#1575#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 93564
        mmTop = 18522
        mmWidth = 17780
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 93035
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1610#1601#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 74727
        mmTop = 18522
        mmWidth = 17780
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 74199
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1603#1575#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 55890
        mmTop = 18522
        mmWidth = 17780
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 55362
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1586#1605#1610#1606
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 37054
        mmTop = 18522
        mmWidth = 17780
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 36525
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1581#1589#1608#1604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 18217
        mmTop = 18522
        mmWidth = 17780
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 17689
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1585#1582' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 0
        mmTop = 18522
        mmWidth = 17780
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable1GetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5927
        mmLeft = 10848
        mmTop = 8202
        mmWidth = 6943
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7409
      mmPrintPosition = 0
      object ppLineDetail: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'LineDetail'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 194469
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLin4Position: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Lin4Position'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'PersonelNo'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 186690
        mmTop = 0
        mmWidth = 10160
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 186162
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = '_PersonelName'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 150074
        mmTop = 0
        mmWidth = 35560
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 149545
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = '_PeresentID'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 131237
        mmTop = 0
        mmWidth = 17780
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 130709
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'FunTime'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 112400
        mmTop = 0
        mmWidth = 17780
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 111872
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'ExtTime'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 93564
        mmTop = 0
        mmWidth = 17780
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 93035
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = '_ShiftNo'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 74727
        mmTop = 0
        mmWidth = 17780
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 74199
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = '_WorkID'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 55890
        mmTop = 0
        mmWidth = 17780
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 55362
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'EarthCode'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 37054
        mmTop = 0
        mmWidth = 17780
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 36525
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = '_ProcCode'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 18217
        mmTop = 0
        mmWidth = 17780
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 17689
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'StandardRate'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 0
        mmTop = 0
        mmWidth = 17780
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line24'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 197379
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1606#1602#1604' '#1576#1607'..'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6011
        mmLeft = 181240
        mmTop = 529
        mmWidth = 15579
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'FunTime'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 112400
        mmTop = 528
        mmWidth = 17780
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 111872
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'ExtTime'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 93564
        mmTop = 528
        mmWidth = 17780
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 93035
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line101'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 130704
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 197379
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1580#1605#1593
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
        mmLeft = 183886
        mmTop = 529
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'FunTime'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 112400
        mmTop = 528
        mmWidth = 17780
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 111872
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'ExtTime'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 93564
        mmTop = 528
        mmWidth = 17780
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 93035
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 130704
        mmTop = 0
        mmWidth = 2647
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
  object PopList4Print: TPopupMenu
    Left = 634
    Top = 255
    object AllClikPop: TMenuItem
      Caption = #1670#1575#1662#1607#1575#1610' '#1583#1610#1711#1585' '#1585#1575' '#1583#1585' '#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583' '#1605#1588#1582#1589' '#1603#1606#1610#1583'..'
      OnClick = AllClikPopClick
    end
  end
  object qryEarthCode: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.For' +
        'msInfo '
      '     WHERE  FormType =69'
      '')
    Left = 179
    Top = 260
  end
  object srcSumDayItems: TDataSource
    DataSet = qrySumDayItems
    Left = 296
    Top = 424
  end
  object qrySumDayItems: TADOQuery
    Connection = DmF.adcsalary
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'Mounth'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = 0.000000000000000000
      end
      item
        Name = 'PersonelNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'YearID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     FunctionDayItems.PeresentID, FormsInfo.InfoName_L1, C' +
        'OUNT(FunctionDayItems.PeresentID) AS PeresentIDCount, SUM(Functi' +
        'onDayItems.FunTime)'
      
        '                      AS FunTime, SUM(FunctionDayItems.ExtTime) ' +
        'AS ExtTime, FunctionDayItems.ShiftNo'
      'FROM Pay.FunctionDayItems INNER JOIN'
      
        '                      Pay.FunctionDay ON FunctionDayItems.FunID ' +
        '= FunctionDay.FunID INNER JOIN'
      
        '                      Pay.FormsInfo ON FunctionDayItems.Peresent' +
        'ID = FormsInfo.InfoID'
      
        'WHERE     (ABS(SUBSTRING(FunctionDay.FunDate, 6, 2)) = :Mounth) ' +
        'AND (FunctionDayItems.PersonelNo = :PersonelNo)'
      '      AND (FormsInfo.FormType = 64)'
      'AND (FunctionDay.YearID = :YearID ) '
      
        'GROUP BY FunctionDayItems.ShiftNo, FunctionDayItems.PeresentID, ' +
        'FormsInfo.InfoName_L1'
      '')
    Left = 464
    Top = 432
    object qrySumDayItemsPeresentID: TIntegerField
      DisplayLabel = #1603#1583#1581#1590#1608#1585
      FieldName = 'PeresentID'
    end
    object qrySumDayItemsInfoName_L1: TStringField
      DisplayLabel = #1581#1590#1608#1585
      FieldName = 'InfoName_L1'
      Size = 500
    end
    object qrySumDayItemsPeresentIDCount: TIntegerField
      DisplayLabel = #1578#1593#1583#1575#1583' '#1581#1590#1608#1585
      FieldName = 'PeresentIDCount'
      ReadOnly = True
    end
    object qrySumDayItemsFunTime: TFloatField
      DisplayLabel = #1587#1575#1593#1578' '#1603#1575#1585
      FieldName = 'FunTime'
      ReadOnly = True
    end
    object qrySumDayItemsExtTime: TFloatField
      DisplayLabel = #1575#1590#1575#1601#1607' '#1603#1575#1585
      FieldName = 'ExtTime'
      ReadOnly = True
    end
    object qrySumDayItemsShiftNo: TIntegerField
      DisplayLabel = #1588#1610#1601#1578
      FieldName = 'ShiftNo'
    end
  end
end
