inherited RecallPersonelInfosF: TRecallPersonelInfosF
  Left = 411
  Top = 127
  ActiveControl = frServerName1.cmbServerName
  Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1588#1593#1576' '#1608' '#1606#1605#1575#1610#1606#1583#1711#1610' '#1607#1575
  ClientWidth = 809
  OldCreateOrder = True
  ExplicitWidth = 825
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 257
    Width = 809
    ExplicitTop = 257
    ExplicitWidth = 809
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 84
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 165
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendExel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 488
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSelectAll
      Align = alRight
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      TabOrder = 4
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 650
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actMoveBaseInfo
      Align = alRight
      Caption = #1606#1602#1604#8207#8207#1575#1591#1604#1575#1593#1575#1578#8207#1662#1575#1610#1607
      TabOrder = 5
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 731
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 6
    end
    object BitBtn8: TBitBtn
      AlignWithMargins = True
      Left = 407
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSlelectInverse
      Align = alRight
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1593#1603#1608#1587
      TabOrder = 7
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 569
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actMove
      Align = alRight
      Caption = #1575#1606#1578#1602#1575#1604
      TabOrder = 8
      ExplicitTop = 302
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 246
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actShift
      Align = alLeft
      Caption = #1570#1605#1575#1583#1607#8207#1587#1575#1586#1610#8207#1576#1575#1606#1603
      TabOrder = 9
    end
  end
  inherited Panel2: TPanel
    Width = 809
    Height = 59
    ExplicitWidth = 809
    ExplicitHeight = 59
    DesignSize = (
      809
      59)
    inherited ImgTemplate: TImage
      Left = 804
      ExplicitLeft = 804
    end
    inherited lblCaption: TLabel
      Left = 701
      ExplicitLeft = 701
    end
    inline frServerName1: TfrServerName
      Left = 0
      Top = 0
      Width = 664
      Height = 59
      Align = alLeft
      TabOrder = 0
      ExplicitWidth = 664
      ExplicitHeight = 59
      inherited Panel1: TPanel
        Width = 664
        ExplicitWidth = 664
        inherited SpeedButton1: TSpeedButton
          Left = 638
          ExplicitLeft = 471
        end
        inherited cmbServerName: TComboBox
          Width = 561
          ExplicitWidth = 561
        end
      end
      inherited Panel2: TPanel
        Width = 664
        Height = 29
        ExplicitWidth = 664
        ExplicitHeight = 29
        inherited Label2: TLabel
          Left = 565
          Height = 20
          ExplicitLeft = 565
        end
        inherited cmbBankName: TComboBox
          Width = 556
          OnChange = frServerName1cmbBankNameChange
          ExplicitWidth = 556
        end
      end
    end
  end
  inherited Panel3: TPanel
    Top = 59
    Width = 809
    Height = 198
    ExplicitTop = 59
    ExplicitWidth = 809
    ExplicitHeight = 198
    object pnlLblL: TPanel
      Left = 0
      Top = 0
      Width = 809
      Height = 15
      Align = alTop
      Alignment = taLeftJustify
      Caption = 
        #1583#1585' '#1589#1608#1585#1578#1610#1603#1607' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1578#1594#1610#1610#1585' '#1603#1585#1583#1607' '#1576#1575#1588#1583' '#1548' '#1604#1575#1586#1605' '#1575#1587#1578' '#1602#1576#1604' '#1575#1586' '#1575#1606#1578#1602#1575#1604 +
        ' '#1548' '#1575#1606#1578#1602#1575#1604' '#1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1585#1575' '#1576#1586#1606#1610#1583' .'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object LblLimit: TLabel
        Left = 1
        Top = 1
        Width = 807
        Height = 13
        Align = alTop
        BiDiMode = bdLeftToRight
        Caption = #1593#1606#1608#1575#1606' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        ExplicitWidth = 46
      end
    end
    object DBGrid2: TCedarDbgrid
      Left = 0
      Top = 15
      Width = 809
      Height = 183
      Align = alClient
      Color = clCream
      DataSource = SrcTypesItems
      DynProps = <>
      Flat = True
      FooterParams.FillStyle = cfstSolidEh
      FooterParams.Font.Charset = DEFAULT_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -11
      FooterParams.Font.Name = 'Tahoma'
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      FooterParams.VertLines = False
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clGradientInactiveCaption
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      RowHeight = 18
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SortLocal = True
      TabOrder = 0
      OnDblClick = DBGrid2DblClick
      OnKeyDown = DBGrid2KeyDown
      OnMouseDown = DBGrid2MouseDown
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_checked'
          Footers = <>
          Width = 57
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1588#1605#1575#1585#1607#8207#1601#1585#1605
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1606#1608#1593#8207#1670#1603
          Footers = <>
          Width = 85
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1578#1575#1585#1610#1582#8207#1601#1585#1605
          Footers = <>
          Width = 62
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1603#1583#1589#1606#1583#1608#1602#1583#1575#1585
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = #1589#1606#1583#1608#1602#1583#1575#1585
          Footers = <>
          Width = 119
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object StatusBar1: TStatusBar [3]
    Left = 0
    Top = 441
    Width = 809
    Height = 19
    BiDiMode = bdRightToLeft
    Panels = <
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 50
      end>
    ParentBiDiMode = False
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 298
    Width = 809
    Height = 143
    Align = alBottom
    TabOrder = 4
    object LblMoveBaseInfo: TLabel
      Left = 1
      Top = 1
      Width = 807
      Height = 13
      Align = alTop
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1602#1575#1576#1604' '#1575#1606#1578#1602#1575#1604' '#1575#1586
      ExplicitLeft = 692
      ExplicitWidth = 116
    end
    object lslTableName: TListBox
      Left = 508
      Top = 14
      Width = 300
      Height = 128
      Align = alRight
      Color = 13236955
      ItemHeight = 13
      TabOrder = 0
      OnClick = lslTableNameClick
    end
    object DBGrid3: TCedarDbgrid
      Left = 1
      Top = 14
      Width = 507
      Height = 128
      Align = alClient
      Color = clCream
      DataSource = srcShow
      DynProps = <>
      Flat = True
      FooterParams.FillStyle = cfstSolidEh
      FooterParams.Font.Charset = DEFAULT_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -11
      FooterParams.Font.Name = 'Tahoma'
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      FooterParams.VertLines = False
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clGradientInactiveCaption
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      RowHeight = 18
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SortLocal = True
      TabOrder = 1
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Left = 368
    Top = 144
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSelectAll: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      OnExecute = actSelectAllExecute
    end
    object actSlelectInverse: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1593#1603#1608#1587
      OnExecute = actSlelectInverseExecute
    end
    object actMove: TAction
      Caption = #1575#1606#1578#1602#1575#1604
      OnExecute = actMoveExecute
    end
    object actMoveBaseInfo: TAction
      Caption = #1606#1602#1604#8207#8207#1575#1591#1604#1575#1593#1575#1578#8207#1662#1575#1610#1607
      OnExecute = actMoveBaseInfoExecute
    end
    object actShift: TAction
      Caption = #1570#1605#1575#1583#1607#8207#1587#1575#1586#1610#8207#1576#1575#1606#1603
      OnExecute = actShiftExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 552
    Top = 161
  end
  object qryTypesItems: TADOQuery
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'Bsell.dbo.Forms'
        Size = -1
        Value = Null
      end
      item
        Name = 'Bsell.Pay.FormTypes'
        Size = -1
        Value = Null
      end
      item
        Name = 'Bsell.dbo.Customers'
        Size = -1
        Value = Null
      end
      item
        Name = 'Type'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end
      item
        Name = 'DateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'DateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'NumberFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'NumberTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'SellsMethodFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'SellsMethodTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'SellsEmporiumFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'SellsEmporiumTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonID1From'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonID1To'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonID2From'
        Size = -1
        Value = Null
      end
      item
        Name = 'PersonID2To'
        Size = -1
        Value = Null
      end
      item
        Name = 'PayTypesFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'PayTypesTo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     PersonelInfo.PersonelNo AS ['#1588#1605#1575#1585#1607#8207#1601#1585#1605'], FormTypes.For' +
        'mCaption AS ['#1606#1608#1593#8207#1670#1603'], PersonelInfo.FormDate AS ['#1578#1575#1585#1610#1582#8207#1601#1585#1605'], Pers' +
        'onelInfo.CustomerID1 AS '#1603#1583#1589#1606#1583#1608#1602#1583#1575#1585','
      
        '                      Customers_1.CustName AS '#1589#1606#1583#1608#1602#1583#1575#1585', Personel' +
        'Info.PersonelNo, PersonelInfo.ServerID, PersonelInfo.YearID'
      
        'FROM         :Salary.Pay.PersonelInfo AS PersonelInfo  LEFT OUTE' +
        'R JOIN'
      
        '                      Pay.PersonelInfo AS PersonelInfo_1 ON Personel' +
        'Info.PersonelNo = PersonelInfo_1.PersonelNo'
      'WHERE     (PersonelInfo_1.PersonelNo IS NULL)'
      ''
      ''
      ''
      'AND  (PersonelInfo.PersonelNo BETWEEN :NumberFrom AND :NumberTo)'
      'rom AND :PayTypesTo)')
    Left = 168
    Top = 113
  end
  object SrcTypesItems: TDataSource
    DataSet = qryTypesItems
    Left = 224
    Top = 161
  end
  object qryMove: TADOQuery
    Parameters = <>
    Left = 648
    Top = 157
  end
  object qryItems: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  * FROM      FormItems'
      'WHERE     ( FormItemID= 0)')
    Left = 149
    Top = 337
  end
  object qryForms: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM     Forms'
      'WHERE     ( FormID = 0)')
    Left = 438
    Top = 161
  end
  object adcSrc: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=tycedar;Persist Security Info=True;' +
      'User ID=FaraUser;Initial Catalog=Bsell_Bidestan88;Data Source=AB' +
      'EDI'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    AfterConnect = adcSrcAfterConnect
    Left = 299
    Top = 130
  end
  object qrySrc: TADOQuery
    Connection = adcSrc
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM     Forms'
      'WHERE     ( FormiD = 0)')
    Left = 318
    Top = 345
  end
  object srcShow: TDataSource
    DataSet = qryShow
    Left = 184
    Top = 409
  end
  object qryShow: TADOQuery
    Parameters = <>
    Left = 288
    Top = 413
  end
  object qrySeverable: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  * FROM      Severable'
      'WHERE     ( FormItemID= 0)')
    Left = 381
    Top = 409
  end
end
