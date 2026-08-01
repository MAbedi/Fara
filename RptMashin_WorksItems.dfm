inherited RptMashin_WorksItemsF: TRptMashin_WorksItemsF
  Left = 246
  Top = 155
  Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578' '#1576#1607' '#1578#1601#1603#1610#1603' '#1605#1581#1589#1608#1604#1575#1578
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    object BitBtn1: TBitBtn
      Left = 702
      Top = 8
      Width = 75
      Height = 25
      Action = actFiltter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object BitBtn5: TBitBtn
      Left = 94
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 2
    end
    object BitBtn3: TBitBtn
      Left = 172
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      Left = 250
      Top = 8
      Width = 75
      Height = 25
      Action = actSendToExcel
      Caption = ' '#1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      Left = 625
      Top = 8
      Width = 75
      Height = 25
      Action = actShow
      Anchors = [akRight, akBottom]
      Caption = #1606#1605#1575#1610#1588
      TabOrder = 5
    end
    object BitBtn4: TBitBtn
      Left = 548
      Top = 8
      Width = 75
      Height = 25
      Action = actFormoul
      Anchors = [akRight, akBottom]
      Caption = #1601#1585#1605#1608#1604' '#1587#1575#1582#1578
      TabOrder = 6
    end
    object BitBtn7: TBitBtn
      Left = 470
      Top = 8
      Width = 75
      Height = 25
      Action = actRecipt
      Anchors = [akRight, akBottom]
      Caption = #1585#1587#1610#1583' '#1605#1581#1589#1608#1604
      TabOrder = 7
    end
    object BitBtn8: TBitBtn
      Left = 392
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662
      TabOrder = 8
    end
  end
  inherited Panel2: TPanel
    Height = 79
    ExplicitHeight = 79
    inherited lblCaption: TLabel
      Height = 59
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 300
      Height = 77
      Align = alLeft
      Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
      TabOrder = 0
      DesignSize = (
        300
        77)
      object SpeedButton3: TSpeedButton
        Left = 191
        Top = 22
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = SpeedButton3Click
      end
      object DBEdit11: TDBEdit
        Left = 215
        Top = 23
        Width = 66
        Height = 19
        Anchors = [akTop, akRight]
        Ctl3D = False
        DataField = 'InfoId'
        DataSource = SrcMaster
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        OnKeyDown = DBEdit11KeyDown
      end
      object DBEdit12: TDBEdit
        Left = 10
        Top = 46
        Width = 271
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Ctl3D = True
        DataField = 'InfoName'
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
    end
    object DBNavigator2: TDBNavigator
      Left = 17
      Top = 24
      Width = 168
      Height = 20
      DataSource = SrcMaster
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akBottom]
      TabOrder = 1
    end
  end
  inherited Panel3: TPanel
    Top = 79
    Height = 397
    ExplicitTop = 79
    ExplicitHeight = 397
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 782
      Height = 351
      Align = alClient
      DataSource = SrcScheduleTimeWorks_Loss
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnColEnter = DBGrid1ColEnter
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'WorkNo'
          Title.Alignment = taCenter
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WorkDate'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ProcStuffCoding'
          Title.Alignment = taCenter
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_StuffName'
          Title.Alignment = taCenter
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UnitName'
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ProductModel'
          Title.Alignment = taCenter
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Title.Alignment = taCenter
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OrderId'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustName'
          Title.Alignment = taCenter
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TrancFormId'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WorkTime'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ProcAmount'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LossAmount1'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LossAmount2'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SumAmount'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object StatusBar1: TStatusBar
      Left = 2
      Top = 373
      Width = 782
      Height = 22
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
          Width = 150
        end
        item
          Width = 150
        end>
    end
    object SumGrid1: TSumGrid
      Top = 353
      Width = 782
      Active = False
      Enable_Controls = True
      MasterGrid = DBGrid1
      FieldsName = 'WorkTime;ProcAmount;LossAmount1;LossAmount2;SumAmount;'
    end
  end
  inherited ActionList: TActionList
    Left = 552
    Top = 16
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
    end
    object actShow: TAction
      Caption = #1606#1605#1575#1610#1588
      OnExecute = actShowExecute
    end
    object actFormoul: TAction
      Caption = #1601#1585#1605#1608#1604' '#1587#1575#1582#1578
      OnExecute = actFormoulExecute
    end
    object actRecipt: TAction
      Caption = #1585#1587#1610#1583' '#1605#1581#1589#1608#1604
      OnExecute = actReciptExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 592
  end
  object qryMashin_WorksItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryMashin_WorksItemsAfterScroll
    Parameters = <
      item
        Name = 'WorkNoFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'WorkNoTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2
      end
      item
        Name = 'WorkDateFrom'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '11/11/11'
      end
      item
        Name = 'WorkDateTo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '9999/99/99'
      end
      item
        Name = 'ProcStuffCodingFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ProcStuffCodingTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 9
      end
      item
        Name = 'MashinID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      
        'SELECT     dbo.ScheduleTimeWorks.MashinID, dbo.ScheduleTimeWorks' +
        '.WorkId, dbo.ScheduleTimeWorks.WorkNo, dbo.ScheduleTimeWorks.Wor' +
        'kDate, '
      
        '                      dbo.ScheduleWorksItems.ProcStuffCoding, db' +
        'o.StuffCoding.c_StuffName, dbo.Units.UnitName, dbo.ScheduleWorks' +
        'Items.ProductModel, '
      
        '                      dbo.LookUps.Name, dbo.ScheduleWorksItems.O' +
        'rderId, dbo.Customers.CustName, dbo.ScheduleWorksItems.TrancForm' +
        'Id, '
      
        '                      dbo.ScheduleWorksItems.WorkTime, dbo.Sched' +
        'uleWorksItems.ProcAmount, dbo.ScheduleWorksItems.LossAmount1, '
      '                      dbo.ScheduleWorksItems.LossAmount2, '
      
        '                      dbo.ScheduleWorksItems.ProcAmount + dbo.Sc' +
        'heduleWorksItems.LossAmount1 + dbo.ScheduleWorksItems.LossAmount' +
        '2 AS SumAmount, '
      
        '                      dbo.ScheduleTimeWorks.ShiftNo, dbo.Schedul' +
        'eTimeWorks.State, dbo.ScheduleTimeWorks.ReciptNo, dbo.ScheduleTi' +
        'meWorks.ReciptDate, '
      
        '                      dbo.ScheduleTimeWorks.ProcCode, dbo.Recipt' +
        's.StoreID'
      'FROM         dbo.ScheduleWorksItems INNER JOIN'
      
        '                      dbo.ScheduleTimeWorks ON dbo.ScheduleWorks' +
        'Items.WorkId = dbo.ScheduleTimeWorks.WorkId INNER JOIN'
      
        '                      dbo.StuffCoding ON dbo.ScheduleWorksItems.' +
        'ProcStuffCoding = dbo.StuffCoding.c_StuffCode INNER JOIN'
      
        '                      dbo.Units ON dbo.StuffCoding.n_UnitCode = ' +
        'dbo.Units.UnitCode INNER JOIN'
      
        '                      dbo.Customers ON dbo.ScheduleWorksItems.Or' +
        'derId = dbo.Customers.CustID LEFT OUTER JOIN'
      
        '                      dbo.Recipts ON dbo.ScheduleTimeWorks.Recip' +
        'tNo = dbo.Recipts.ReciptID LEFT OUTER JOIN'
      
        '                      dbo.LookUps ON dbo.ScheduleWorksItems.Prod' +
        'uctModel = dbo.LookUps.LookUpID'
      
        'WHERE   (WorkNo BETWEEN :WorkNoFrom AND :WorkNoTo) AND (WorkDate' +
        ' BETWEEN :WorkDateFrom AND :WorkDateTo)'
      
        'AND (ScheduleWorksItems.ProcStuffCoding  BETWEEN :ProcStuffCodin' +
        'gFrom  AND :ProcStuffCodingTo) AND (dbo.ScheduleTimeWorks.Mashin' +
        'ID =:MashinID  )'
      ''
      '')
    Left = 372
    Top = 184
    object qryMashin_WorksItemsWorkNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'WorkNo'
    end
    object qryMashin_WorksItemsWorkDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'WorkDate'
      FixedChar = True
      Size = 10
    end
    object qryMashin_WorksItemsMashinID: TIntegerField
      FieldName = 'MashinID'
    end
    object qryMashin_WorksItemsWorkId: TIntegerField
      FieldName = 'WorkId'
    end
    object qryMashin_WorksItemsProcStuffCoding: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1581#1589#1608#1604
      FieldName = 'ProcStuffCoding'
    end
    object qryMashin_WorksItemsc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1605#1581#1589#1608#1604
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qryMashin_WorksItemsUnitName: TStringField
      Tag = 3
      DisplayLabel = #1608#1575#1581#1583' '#1575#1606#1583#1575#1586#1607' '#1711#1610#1585#1610
      FieldName = 'UnitName'
      Size = 50
    end
    object qryMashin_WorksItemsProductModel: TLargeintField
      Tag = 3
      DisplayLabel = #1605#1583#1604
      FieldName = 'ProductModel'
    end
    object qryMashin_WorksItemsName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1583#1604
      FieldName = 'Name'
      Size = 50
    end
    object qryMashin_WorksItemsOrderId: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610
      FieldName = 'OrderId'
    end
    object qryMashin_WorksItemsCustName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1588#1578#1585#1610
      FieldName = 'CustName'
      Size = 120
    end
    object qryMashin_WorksItemsTrancFormId: TIntegerField
      Tag = 3
      DisplayLabel = #1601#1585#1605#1608#1604' '#1587#1575#1582#1578
      FieldName = 'TrancFormId'
    end
    object qryMashin_WorksItemsWorkTime: TFloatField
      Tag = 3
      DisplayLabel = #1603#1575#1585#1603#1585#1583
      FieldName = 'WorkTime'
    end
    object qryMashin_WorksItemsProcAmount: TFloatField
      Tag = 3
      DisplayLabel = #1578#1608#1604#1610#1583' '#1587#1575#1604#1605
      FieldName = 'ProcAmount'
    end
    object qryMashin_WorksItemsLossAmount1: TFloatField
      Tag = 3
      DisplayLabel = #1590#1575#1610#1593#1575#1578' 1'
      FieldName = 'LossAmount1'
    end
    object qryMashin_WorksItemsLossAmount2: TFloatField
      Tag = 3
      DisplayLabel = #1590#1575#1610#1593#1575#1578' 2'
      FieldName = 'LossAmount2'
    end
    object qryMashin_WorksItemsSumAmount: TFloatField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1578#1608#1604#1610#1583
      FieldName = 'SumAmount'
      ReadOnly = True
    end
    object qryMashin_WorksItemsShiftNo: TWordField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1588#1610#1601#1578
      FieldName = 'ShiftNo'
    end
    object qryMashin_WorksItemsState: TWordField
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'State'
      OnGetText = qryMashin_WorksItemsStateGetText
    end
    object qryMashin_WorksItemsReciptNo: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1585#1587#1610#1583' '
      FieldName = 'ReciptNo'
    end
    object qryMashin_WorksItemsReciptDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1585#1587#1610#1583
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryMashin_WorksItemsProcCode: TIntegerField
      DisplayLabel = #1603#1583' '#1582#1591' '#1578#1608#1604#1610#1583#1610
      FieldName = 'ProcCode'
    end
    object qryMashin_WorksItemsStoreID: TSmallintField
      FieldName = 'StoreID'
    end
  end
  object SrcScheduleTimeWorks_Loss: TDataSource
    DataSet = qryMashin_WorksItems
    Left = 640
    Top = 128
  end
  object qryMaster: TADOQuery
    Connection = DmF.adcBSell
    AfterScroll = qryMasterAfterScroll
    Parameters = <
      item
        Name = 'MashinIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'MashinIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  InfoId, InfoName FROM  ScheduleInfo '
      
        ' WHERE  (Code = 6) and (InfoId BETWEEN :MashinIDFrom  AND :Mashi' +
        'nIDTo )')
    Left = 320
    Top = 16
    object qryMasterInfoId: TIntegerField
      FieldName = 'InfoId'
    end
    object qryMasterInfoName: TStringField
      FieldName = 'InfoName'
      Size = 100
    end
  end
  object SrcMaster: TDataSource
    DataSet = qryMaster
    Left = 368
    Top = 16
  end
end
