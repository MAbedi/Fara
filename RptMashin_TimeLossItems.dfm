inherited RptMashin_TimeLossItemsF: TRptMashin_TimeLossItemsF
  Left = 167
  Top = 135
  Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578' '#1576#1607' '#1585#1610#1586' '#1578#1608#1602#1601#1575#1578
  OldCreateOrder = True
  OnDestroy = FormDestroy
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
      Action = actPrint
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Height = 79
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
    Height = 402
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 778
      Height = 379
      Align = alClient
      DataSource = SrcScheduleTimeWorks_Loss
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'WorkNo'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WorkDate'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LoseId'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InfoName'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LossTime'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LossCommant'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object StatusBar1: TStatusBar
      Left = 2
      Top = 381
      Width = 778
      Height = 19
      Panels = <
        item
          Width = 50
        end>
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
  end
  inherited ImageList1: TImageList
    Left = 592
  end
  object qryScheduleTimeWorks_Loss: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryScheduleTimeWorks_LossAfterOpen
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
        Name = 'LoseIdFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'LoseIdTo'
        Attributes = [paSigned]
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
      
        'SELECT     dbo.ScheduleTimeWorks.WorkNo, dbo.ScheduleTimeWorks.W' +
        'orkDate, dbo.ScheduleTimeLossItems.LoseId, dbo.ScheduleInfo.Info' +
        'Name, '
      
        '                      dbo.ScheduleTimeLossItems.LossTime, dbo.Sc' +
        'heduleTimeLossItems.LossCommant, dbo.ScheduleTimeWorks.MashinID,' +
        ' '
      '                      dbo.ScheduleTimeLossItems.WorkId'
      'FROM         dbo.ScheduleTimeLossItems INNER JOIN'
      
        '                      dbo.ScheduleTimeWorks ON dbo.ScheduleTimeL' +
        'ossItems.WorkId = dbo.ScheduleTimeWorks.WorkId INNER JOIN'
      
        '                      dbo.ScheduleInfo ON dbo.ScheduleTimeLossIt' +
        'ems.LoseId = dbo.ScheduleInfo.InfoId'
      
        'WHERE     (ScheduleInfo.Code = 2) AND (WorkNo BETWEEN :WorkNoFro' +
        'm AND :WorkNoTo) AND (WorkDate BETWEEN :WorkDateFrom AND :WorkDa' +
        'teTo)'
      
        'AND (ScheduleTimeLossItems.LoseId BETWEEN :LoseIdFrom AND :LoseI' +
        'dTo) AND (dbo.ScheduleTimeWorks.MashinID =:MashinID  )'
      ''
      '')
    Left = 484
    Top = 200
    object qryScheduleTimeWorks_LossWorkNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'WorkNo'
    end
    object qryScheduleTimeWorks_LossWorkDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'WorkDate'
      FixedChar = True
      Size = 10
    end
    object qryScheduleTimeWorks_LossLoseId: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1608#1602#1601
      FieldName = 'LoseId'
    end
    object qryScheduleTimeWorks_LossInfoName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1603#1604#1610' '#1578#1608#1602#1601
      FieldName = 'InfoName'
      Size = 100
    end
    object qryScheduleTimeWorks_LossLossTime: TIntegerField
      Tag = 3
      DisplayLabel = #1586#1605#1575#1606' '#1578#1608#1602#1601
      FieldName = 'LossTime'
    end
    object qryScheduleTimeWorks_LossLossCommant: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      FieldName = 'LossCommant'
      FixedChar = True
      Size = 500
    end
    object qryScheduleTimeWorks_LossMashinID: TIntegerField
      FieldName = 'MashinID'
    end
    object qryScheduleTimeWorks_LossWorkId: TIntegerField
      FieldName = 'WorkId'
    end
  end
  object SrcScheduleTimeWorks_Loss: TDataSource
    DataSet = qryScheduleTimeWorks_Loss
    Left = 320
    Top = 200
  end
  object qryMaster: TADOQuery
    Connection = DMF.adcBSell
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
