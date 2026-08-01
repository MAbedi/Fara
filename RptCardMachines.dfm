inherited RptCardMachinesF: TRptCardMachinesF
  Left = 167
  Top = 135
  Caption = #1603#1575#1585#1578' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    object BitBtn1: TBitBtn
      Left = 708
      Top = 8
      Width = 75
      Height = 25
      Action = actFiltter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object BitBtn5: TBitBtn
      Left = 85
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 2
    end
    object BitBtn3: TBitBtn
      Left = 163
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      Left = 241
      Top = 8
      Width = 75
      Height = 25
      Action = actSendToExcel
      Caption = ' '#1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      Left = 628
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
  end
  inherited Panel3: TPanel
    Top = 141
    Height = 335
    ExplicitTop = 141
    ExplicitHeight = 336
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 778
      Height = 330
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      OnChange = PageControl1Change
      ExplicitWidth = 786
      ExplicitHeight = 332
      object TabSheet1: TTabSheet
        Caption = #1603#1575#1585#1603#1585#1583' '#1578#1593#1605#1610#1585#1603#1575#1585#1575#1606
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 778
          Height = 284
          Align = alClient
          DataSource = srcFunction0
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'MaintenanceNo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MaintenanceDate'
              Width = 27
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LoginNow'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustID2'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustName2'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DescRequest'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonId'
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustName'
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FunctionDate'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'StuffCode2'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'c_StuffName'
              Width = 67
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FunctionAmount'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FunctionHour'
              Width = 32
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ShiftWork'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ShiftWorkTime'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OverTime'
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Amount1'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Amount2'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Amount3'
              Width = 39
              Visible = True
            end>
        end
        object SumGrid1: TSumGrid
          Left = 0
          Top = 284
          Width = 778
          Active = False
          Enable_Controls = True
          MasterGrid = DBGrid1
          FieldsName = 
            'LoginNow;FunctionAmount;FunctionHour;ShiftWork;ShiftWorkTime;Ove' +
            'rTime;Amount1;Amount2;Amount3;'
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1602#1591#1593#1575#1578
        ImageIndex = 1
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 778
          Height = 284
          Align = alClient
          DataSource = srcFunction1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'StuffCode'
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'c_StuffName'
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'c_StuffTecInfo'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UnitName'
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemNote'
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Entity'
              Width = 29
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UnitSellPrice'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Price'
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ReciptNumber'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ReciptDate'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ReciptCaption'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustID2'
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustName2'
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ReciptNote'
              Width = 63
              Visible = True
            end>
        end
        object SumGrid2: TSumGrid
          Left = 0
          Top = 284
          Width = 778
          Active = False
          Enable_Controls = True
          MasterGrid = DBGrid2
          FieldsName = 'Entity;UnitSellPrice;Price;'
        end
      end
      object TabSheet3: TTabSheet
        Caption = #1603#1575#1585#1603#1585#1583' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
        ImageIndex = 2
        object DBGrid3: TDBGrid
          Left = 0
          Top = 0
          Width = 778
          Height = 284
          Align = alClient
          DataSource = srcFunction2
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'FunctionDate'
              Width = 29
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'WorkShopId'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustName'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonId'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonName'
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FunctionHour'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'StuffCode2'
              Width = 52
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'c_StuffName'
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FunctionAmount'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ShiftWork'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ShiftWorkTime'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OverTime'
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Amount1'
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Amount2'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Amount3'
              Width = 39
              Visible = True
            end>
        end
        object SumGrid3: TSumGrid
          Left = 0
          Top = 284
          Width = 778
          Active = False
          Enable_Controls = True
          MasterGrid = DBGrid3
          FieldsName = 
            'FunctionHour;FunctionAmount;ShiftWork;ShiftWorkTime;OverTime;Amo' +
            'unt1;Amount2;Amount3;'
        end
      end
    end
  end
  object GroupBox1: TGroupBox [3]
    Left = 0
    Top = 53
    Width = 782
    Height = 88
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 790
    DesignSize = (
      782
      88)
    object SpeedButton3: TSpeedButton
      Left = 587
      Top = 6
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '...'
      OnClick = SpeedButton3Click
      ExplicitLeft = 591
    end
    object lblLblsd1: TLabel
      Left = 683
      Top = 38
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1575#1606#1578#1592#1575#1605#1610
      ExplicitLeft = 687
    end
    object lblLblsd4: TLabel
      Left = 683
      Top = 67
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1662#1604#1575#1603' '#1575#1605#1608#1575#1604
      ExplicitLeft = 687
    end
    object Label1: TLabel
      Left = 683
      Top = 11
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1603#1583' '#1582#1608#1583#1585#1608
      ExplicitLeft = 687
    end
    object DBEdit11: TDBEdit
      Left = 611
      Top = 8
      Width = 66
      Height = 19
      Anchors = [akTop, akRight]
      Ctl3D = False
      DataField = 'c_StuffCode'
      DataSource = srcStuffCoding
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      OnKeyDown = DBEdit11KeyDown
      ExplicitLeft = 615
    end
    object edtc_StuffName: TDBEdit
      Left = 310
      Top = 7
      Width = 275
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      Color = clBtnFace
      Ctl3D = True
      DataField = 'c_StuffName'
      DataSource = srcStuffCoding
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 314
    end
    object DBNavigator2: TDBNavigator
      Left = 17
      Top = 9
      Width = 264
      Height = 20
      DataSource = srcStuffCoding
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akBottom]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object edtsd1: TDBEdit
      Left = 310
      Top = 32
      Width = 367
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      Color = clBtnFace
      Ctl3D = True
      DataField = 'sd1'
      DataSource = srcStuffCoding
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      ExplicitLeft = 314
    end
    object edtsd2: TDBEdit
      Left = 310
      Top = 57
      Width = 367
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      Color = clBtnFace
      Ctl3D = True
      DataField = 'sd2'
      DataSource = srcStuffCoding
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      ExplicitLeft = 314
    end
  end
  inherited ActionList: TActionList
    Left = 368
    Top = 0
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFiltter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFiltterExecute
    end
    object actChangeState: TAction
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578
    end
    object actSendToExcel: TAction
      Caption = ' '#1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 440
    Top = 1
  end
  object qryFunction0: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'StuffCode'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'DateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'DateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     Machin.Maintenance.MaintenanceNo, Machin.Maintenance.' +
        'MaintenanceDate, Machin.Maintenance.LoginNow, Machin.Maintenance' +
        '.CustID2, '
      
        '                      Customers_Cust2.CustName AS CustName2, Mac' +
        'hin.Maintenance.DescRequest, Tsh.Functions.PersonId, Customers_P' +
        'erson.CustName, Tsh.Functions.StuffCode2, '
      
        '                      StuffCoding2.c_StuffName, Tsh.Functions.Fu' +
        'nctionAmount, FunctionDate ,  Tsh.Functions.FunctionHour, Tsh.Fu' +
        'nctions.ShiftWork, Tsh.Functions.ShiftWorkTime, Tsh.Functions.Ov' +
        'erTime, Tsh.Functions.Amount1, Tsh.Functions.Amount2, '
      '                      Tsh.Functions.Amount3'
      ''
      'FROM         Tsh.Functions INNER JOIN'
      
        '                      Machin.Maintenance ON Tsh.Functions.Mainte' +
        'nanceID = Machin.Maintenance.MaintenanceID INNER JOIN'
      
        '                      Customers AS Customers_Person ON Tsh.Funct' +
        'ions.PersonId = Customers_Person.CustID INNER JOIN'
      
        '                      Customers AS Customers_Cust2 ON Machin.Mai' +
        'ntenance.CustID2 = Customers_Cust2.CustID INNER JOIN'
      
        '                      StuffCoding AS StuffCoding2 ON Tsh.Functio' +
        'ns.StuffCode2 = StuffCoding2.c_StuffCode'
      'WHERE     (Machin.Maintenance.StuffCode = :StuffCode )'
      
        '      AND (FunctionDate  BETWEEN :DateFrom AND :DateTo)  AND ( T' +
        'sh.Functions.MaintenanceID <> 0)')
    Left = 52
    Top = 200
    object qryFunction0MaintenanceNo: TWordField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1583#1587#1578#1608#1585#1603#1575#1585
      FieldName = 'MaintenanceNo'
    end
    object qryFunction0MaintenanceDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'MaintenanceDate'
      FixedChar = True
      Size = 10
    end
    object qryFunction0LoginNow: TDateTimeField
      Tag = 3
      DisplayLabel = #1587#1575#1593#1578' '#1608#1585#1608#1583
      FieldName = 'LoginNow'
      OnGetText = qryFunction0ShiftWorkTimeGetText
    end
    object qryFunction0CustID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1602#1587#1605#1578
      FieldName = 'CustID2'
    end
    object qryFunction0CustName2: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1602#1587#1605#1578
      FieldName = 'CustName2'
      Size = 60
    end
    object qryFunction0DescRequest: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1583#1585' '#1582#1608#1575#1587#1578
      FieldName = 'DescRequest'
      Size = 60
    end
    object qryFunction0PersonId: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1593#1605#1610#1585#1603#1575#1585
      FieldName = 'PersonId'
    end
    object qryFunction0CustName: TStringField
      Tag = 3
      DisplayLabel = #1578#1593#1605#1610#1585' '#1603#1575#1585
      FieldName = 'CustName'
      Size = 120
    end
    object qryFunction0FunctionDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1578#1593#1605#1610#1585
      FieldName = 'FunctionDate'
      FixedChar = True
      Size = 10
    end
    object qryFunction0StuffCode2: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1593#1605#1604#1610#1575#1578
      FieldName = 'StuffCode2'
    end
    object qryFunction0c_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1593#1605#1604#1610#1575#1578
      FieldName = 'c_StuffName'
      Size = 50
    end
    object qryFunction0FunctionAmount: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1705#1575#1585#1705#1585#1583
      FieldName = 'FunctionAmount'
    end
    object qryFunction0ShiftWork: TWordField
      DisplayLabel = #1606#1608#1593' '#1606#1608#1576#1578' '#1603#1575#1585#1610
      FieldName = 'ShiftWork'
    end
    object qryFunction0ShiftWorkTime: TDateTimeField
      DisplayLabel = #1606#1608#1576#1578' '#1603#1575#1585#1610
      FieldName = 'ShiftWorkTime'
      OnGetText = qryFunction0ShiftWorkTimeGetText
    end
    object qryFunction0OverTime: TDateTimeField
      DisplayLabel = #1575#1590#1575#1601#1607' '#1603#1575#1585#1610
      FieldName = 'OverTime'
      OnGetText = qryFunction0ShiftWorkTimeGetText
    end
    object qryFunction0Amount1: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585'1'
      FieldName = 'Amount1'
    end
    object qryFunction0Amount2: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585'2'
      FieldName = 'Amount2'
    end
    object qryFunction0Amount3: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585'3'
      FieldName = 'Amount3'
    end
    object qryFunction0FunctionHour: TDateTimeField
      Tag = 3
      DisplayLabel = #1603#1575#1585#1603#1585#1583
      FieldName = 'FunctionHour'
      OnGetText = qryFunction0ShiftWorkTimeGetText
    end
  end
  object srcFunction0: TDataSource
    DataSet = qryFunction0
    Left = 56
    Top = 264
  end
  object qryStuffCoding: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterScroll = qryStuffCodingAfterScroll
    Parameters = <
      item
        Name = 'StuffCodeFrom'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'StuffCodeTo'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Stu' +
        'ffCoding.sd1, StuffCoding.sd2'
      'FROM         StuffCoding INNER JOIN'
      
        '                      StuffGroups ON StuffCoding.GroupID = Stuff' +
        'Groups.GroupID'
      'WHERE     (StuffGroups.GroupType = 9) and '
      
        '                 (StuffCoding.c_StuffCode BETWEEN :StuffCodeFrom' +
        ' AND :StuffCodeTo )')
    Left = 216
    Top = 88
    object qryStuffCodingc_StuffCode: TLargeintField
      FieldName = 'c_StuffCode'
    end
    object qryStuffCodingc_StuffName: TStringField
      FieldName = 'c_StuffName'
      Size = 150
    end
    object qryStuffCodingsd1: TStringField
      FieldName = 'sd1'
      Size = 64
    end
    object qryStuffCodingsd2: TStringField
      FieldName = 'sd2'
      Size = 64
    end
  end
  object srcStuffCoding: TDataSource
    DataSet = qryStuffCoding
    Left = 96
    Top = 8
  end
  object qryFunction1: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'StuffCode'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'DateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'DateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     ReciptItems.StuffCode, StuffCoding.c_StuffName, Stuff' +
        'Coding.c_StuffTecInfo, Units.UnitName, ReciptItems.ItemNote, '
      
        '                      ReciptItems.InputEntity + ReciptItems.Outp' +
        'utEntity AS Entity, ReciptItems.UnitSellPrice, ReciptItems.Total' +
        'InputPrice + ReciptItems.TotalOutputPrice AS Price, '
      
        '                      Recipts.ReciptNumber, Recipts.ReciptDate, ' +
        'ReciptTypes.ReciptCaption, Recipts.PersonID2 AS CustID2, Custome' +
        'rs.CustName AS CustName2, '
      '                      Recipts.ReciptNote'
      'FROM         Units INNER JOIN'
      
        '                      StuffCoding ON Units.UnitCode = StuffCodin' +
        'g.n_UnitCode AND Units.UnitCode = StuffCoding.n_UnitCode INNER J' +
        'OIN'
      '                      ReciptTypes INNER JOIN'
      '                      Recipts INNER JOIN'
      
        '                      ReciptItems ON Recipts.ReciptID = ReciptIt' +
        'ems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Rec' +
        'ipts.YearID = ReciptItems.YearID ON '
      
        '                      ReciptTypes.ReciptType = Recipts.ReciptTyp' +
        'e ON StuffCoding.c_StuffCode = ReciptItems.StuffCode INNER JOIN'
      
        '                      Customers ON Recipts.PersonID2 = Customers' +
        '.CustID'
      'WHERE     (ReciptItems.ProductCode =  :StuffCode   ) AND'
      
        ' (  Recipts.ReciptDate  BETWEEN :DateFrom AND :DateTo) And  (NOT' +
        ' (Recipts.ReciptType IN (22)))'
      '')
    Left = 188
    Top = 200
    object qryFunction1StuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryFunction1c_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 50
    end
    object qryFunction1UnitName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583
      FieldName = 'UnitName'
      Size = 50
    end
    object qryFunction1ItemNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ItemNote'
      Size = 100
    end
    object qryFunction1Entity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryFunction1UnitSellPrice: TFMTBCDField
      Tag = 3
      DisplayLabel = #1601#1610
      FieldName = 'UnitSellPrice'
      currency = True
      Precision = 19
    end
    object qryFunction1Price: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Price'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryFunction1ReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptNumber'
    end
    object qryFunction1ReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryFunction1ReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1601#1585#1605
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object IntegerField1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1602#1587#1605#1578
      FieldName = 'CustID2'
    end
    object StringField2: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1602#1587#1605#1578
      FieldName = 'CustName2'
      Size = 60
    end
    object qryFunction1c_StuffTecInfo: TStringField
      DisplayLabel = #1605#1588#1582#1589#1607' '#1601#1606#1610
      FieldName = 'c_StuffTecInfo'
      Size = 30
    end
    object qryFunction1ReciptNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1601#1585#1605
      FieldName = 'ReciptNote'
      Size = 400
    end
  end
  object srcFunction1: TDataSource
    DataSet = qryFunction1
    Left = 192
    Top = 264
  end
  object qryFunction2: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'StuffCode'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'DateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'DateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     Tsh.Functions.FunctionDate, Tsh.Functions.WorkShopId,' +
        ' Customers_WorkShop.CustName, Tsh.Functions.PersonId, Customers_' +
        'Person.CustName AS PersonName, '
      
        '                      Tsh.Functions.FunctionHour, Tsh.Functions.' +
        'ShiftWork, Tsh.Functions.ShiftWorkTime, Tsh.Functions.OverTime, ' +
        'Tsh.Functions.Amount1, Tsh.Functions.Amount2, '
      
        '                      Tsh.Functions.Amount3 ,  Tsh.Functions.Stu' +
        'ffCode2, StuffCoding2.c_StuffName, Tsh.Functions.FunctionAmount'
      'FROM         Tsh.Functions LEFT OUTER  JOIN'
      
        '                      Customers AS Customers_Person ON Tsh.Funct' +
        'ions.PersonId = Customers_Person.CustID LEFT OUTER  JOIN'
      
        '                      StuffCoding AS StuffCoding2 ON Tsh.Functio' +
        'ns.StuffCode2 = StuffCoding2.c_StuffCode  LEFT OUTER  JOIN'
      
        '                      Customers AS Customers_WorkShop ON Tsh.Fun' +
        'ctions.WorkShopId = Customers_WorkShop.CustID'
      'WHERE     (Tsh.Functions.MachineId = :StuffCode )'
      
        '      AND (FunctionDate  BETWEEN :DateFrom AND :DateTo) AND ( Ts' +
        'h.Functions.MaintenanceID =0)')
    Left = 348
    Top = 208
    object StringField8: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'FunctionDate'
      FixedChar = True
      Size = 10
    end
    object qryFunction2WorkShopId: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1602#1587#1605#1578
      FieldName = 'WorkShopId'
    end
    object StringField7: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
      FieldName = 'CustName'
      Size = 60
    end
    object IntegerField3: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1585#1587#1606#1604
      FieldName = 'PersonId'
    end
    object qryFunction2PersonName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1585#1587#1606#1604'/'#1662#1610#1605#1575#1606#1603#1575#1585
      FieldName = 'PersonName'
      Size = 60
    end
    object LargeintField1: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1593#1605#1604#1610#1575#1578
      FieldName = 'StuffCode2'
    end
    object StringField9: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1593#1605#1604#1610#1575#1578
      FieldName = 'c_StuffName'
      Size = 150
    end
    object IntegerField4: TIntegerField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1603#1575#1585#1603#1585#1583
      FieldName = 'FunctionAmount'
    end
    object qryFunction2ShiftWork: TWordField
      DisplayLabel = #1606#1608#1593' '#1606#1608#1576#1578' '#1603#1575#1585#1610
      FieldName = 'ShiftWork'
    end
    object qryFunction2ShiftWorkTime: TDateTimeField
      DisplayLabel = #1606#1608#1576#1578' '#1603#1575#1585#1610
      FieldName = 'ShiftWorkTime'
      OnGetText = qryFunction0ShiftWorkTimeGetText
      EditMask = '!90:00;1;'
    end
    object qryFunction2OverTime: TDateTimeField
      DisplayLabel = #1575#1590#1575#1601#1607' '#1603#1575#1585#1610
      FieldName = 'OverTime'
      OnGetText = qryFunction0ShiftWorkTimeGetText
      EditMask = '!90:00;1;'
    end
    object qryFunction2Amount1: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585'1'
      FieldName = 'Amount1'
    end
    object qryFunction2Amount2: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585'2'
      FieldName = 'Amount2'
    end
    object qryFunction2Amount3: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585'3'
      FieldName = 'Amount3'
    end
    object qryFunction2FunctionHour: TDateTimeField
      Tag = 3
      DisplayLabel = #1603#1575#1585#1603#1585#1583
      FieldName = 'FunctionHour'
      OnGetText = qryFunction0ShiftWorkTimeGetText
      EditMask = '!90:00;1;'
    end
  end
  object srcFunction2: TDataSource
    DataSet = qryFunction2
    Left = 352
    Top = 272
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcStuffCoding
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeline1'
    Left = 563
    Top = 202
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'c_StuffCode'
      FieldName = 'c_StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'c_StuffName'
      FieldName = 'c_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'sd1'
      FieldName = 'sd1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'sd2'
      FieldName = 'sd2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 3000
    PrinterSetup.mmMarginLeft = 3000
    PrinterSetup.mmMarginRight = 3000
    PrinterSetup.mmMarginTop = 3000
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara2010\BSell\Exe\Report\RptCardMachinesF3.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    EmailSettings.ShowEmailDialog = True
    EmailSettings.ShowCancelDialog = True
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
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 659
    Top = 216
    Version = '22.02'
    mmColumnWidth = 291000
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 45000
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'CustName'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5821
        mmLeft = 225955
        mmTop = 0
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'FunctionAmount'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 62177
        mmTop = 265
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'FunctionDate'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6519
        mmLeft = 274109
        mmTop = 0
        mmWidth = 12435
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'PersonId'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 206640
        mmTop = 0
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'PersonName'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7789
        mmLeft = 160338
        mmTop = 0
        mmWidth = 44450
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'StuffCode2'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 126736
        mmTop = 265
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'OverTime'
        DataPipeline = ppDBPipeline2
        DisplayFormat = 'hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5821
        mmLeft = 46038
        mmTop = 265
        mmWidth = 7673
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'ShiftWork'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 55298
        mmTop = 265
        mmWidth = 4498
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'WorkShopId'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5821
        mmLeft = 260880
        mmTop = 0
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'c_StuffName'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7112
        mmLeft = 78052
        mmTop = 0
        mmWidth = 46831
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'OverTime'
        DataPipeline = ppDBPipeline2
        DisplayFormat = 'hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5821
        mmLeft = 36513
        mmTop = 265
        mmWidth = 7673
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'FunctionHour'
        DataPipeline = ppDBPipeline2
        DisplayFormat = 'hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 143669
        mmTop = 265
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 1323
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 2910
        mmTop = 0
        mmWidth = 285221
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppPageStyle1: TppPageStyle
      Border.mmPadding = 0
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 201877
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape3'
        mmHeight = 16404
        mmLeft = 2910
        mmTop = 12435
        mmWidth = 285221
        BandType = 10
        LayerName = PageLayer1
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape4'
        mmHeight = 11113
        mmLeft = 2910
        mmTop = 29633
        mmWidth = 285221
        BandType = 10
        LayerName = PageLayer1
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape5'
        mmHeight = 143669
        mmLeft = 2910
        mmTop = 41010
        mmWidth = 285221
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1705#1583#1593#1605#1604#1740#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 126736
        mmTop = 31485
        mmWidth = 15081
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1588#1585#1581' '#1593#1605#1604#1740#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 78052
        mmTop = 31485
        mmWidth = 46831
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 155046
        mmLeft = 142611
        mmTop = 29633
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 154782
        mmLeft = 159015
        mmTop = 29633
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label24'
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585#1705#1575#1585#1705#1585#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 62177
        mmTop = 31485
        mmWidth = 14023
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label26'
        Border.mmPadding = 0
        Caption = #1605#1583#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 46038
        mmTop = 35983
        mmWidth = 7673
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label27'
        Border.mmPadding = 0
        Caption = #1705#1575#1585#1705#1585#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 143669
        mmTop = 31485
        mmWidth = 14552
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 154782
        mmLeft = 125677
        mmTop = 29633
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 154517
        mmLeft = 61383
        mmTop = 29898
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line21'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 155046
        mmLeft = 76994
        mmTop = 29633
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line25'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 154782
        mmLeft = 44715
        mmTop = 29633
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line26'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 154782
        mmLeft = 35454
        mmTop = 29633
        mmWidth = 1852
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label30'
        Border.mmPadding = 0
        Caption = #1575#1590#1575#1601#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 36513
        mmTop = 31485
        mmWidth = 7673
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label32'
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585'1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 25665
        mmTop = 31485
        mmWidth = 8996
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label33'
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585'2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 3969
        mmTop = 31485
        mmWidth = 8996
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label34'
        Border.mmPadding = 0
        Caption = #1605#1602#1583#1575#1585'3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 14552
        mmTop = 31485
        mmWidth = 8996
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line27'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 155046
        mmLeft = 13758
        mmTop = 29633
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1705#1583#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 206640
        mmTop = 31485
        mmWidth = 17727
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1662#1585#1587#1606#1604'\'#1662#1740#1605#1575#1606#1705#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 160338
        mmTop = 31485
        mmWidth = 44450
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 154517
        mmLeft = 273051
        mmTop = 29633
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 154517
        mmLeft = 259821
        mmTop = 29633
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 154517
        mmLeft = 224896
        mmTop = 29633
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 155046
        mmLeft = 205582
        mmTop = 29369
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1740#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 274109
        mmTop = 31485
        mmWidth = 12435
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1740
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 225955
        mmTop = 31485
        mmWidth = 32808
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1705#1583#1602#1587#1605#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 260880
        mmTop = 31485
        mmWidth = 11642
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = ' '#1606#1608#1576#1578' '#1705#1575#1585#1740
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 46038
        mmTop = 29898
        mmWidth = 14817
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 154782
        mmLeft = 24342
        mmTop = 29633
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape6'
        mmHeight = 15081
        mmLeft = 2910
        mmTop = 185209
        mmWidth = 285221
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1606#1608#1593
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 55298
        mmTop = 35983
        mmWidth = 4498
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 44979
        mmTop = 35983
        mmWidth = 16404
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 148432
        mmLeft = 54240
        mmTop = 35983
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'c_StuffCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5588
        mmLeft = 254001
        mmTop = 13758
        mmWidth = 17198
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1705#1583#1582#1608#1583#1585#1608':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 271463
        mmTop = 13758
        mmWidth = 14817
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1575#1606#1578#1592#1575#1605#1740
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 268817
        mmTop = 19844
        mmWidth = 17727
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = #1662#1604#1575#1705' '#1575#1605#1608#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5556
        mmLeft = 193146
        mmTop = 21960
        mmWidth = 15346
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'sd2'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5556
        mmLeft = 174625
        mmTop = 21960
        mmWidth = 17198
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1582#1608#1583#1585#1608':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5588
        mmLeft = 194734
        mmTop = 13758
        mmWidth = 13885
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'c_StuffName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5556
        mmLeft = 174625
        mmTop = 13758
        mmWidth = 17198
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer2
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
        mmLeft = 119856
        mmTop = 0
        mmWidth = 51065
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLblCaption: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblCaption'
        OnGetText = ppLblCaptionGetText
        Border.mmPadding = 0
        Caption = #1705#1575#1585#1578' '#1605#1575#1588#1740#1606' '#1570#1604#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Zar'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7789
        mmLeft = 129382
        mmTop = 6350
        mmWidth = 32089
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer2
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
        mmLeft = 7144
        mmTop = 1323
        mmWidth = 12171
        BandType = 10
        LayerName = PageLayer1
      end
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SysVarPageNo1'
        OnGetText = ppSysVarPageNoGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 7408
        mmTop = 6879
        mmWidth = 12171
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
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcFunction0
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 563
    Top = 274
  end
end
