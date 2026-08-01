inherited RptMashin_TimePersonF: TRptMashin_TimePersonF
  Left = 167
  Top = 135
  Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578' '#1576#1607' '#1585#1610#1586' '#1662#1585#1587#1606#1604
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
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
    ExplicitHeight = 79
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
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
    ExplicitHeight = 402
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 778
      Height = 379
      Align = alClient
      DataSource = SrcMashin_TimePerson
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WorkDate'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonId'
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
          FieldName = 'Proc_Entity'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Proc_Time'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Proc_Note'
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
          Width = 400
        end
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
  object qryMashin_TimePerson: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryMashin_TimePersonAfterOpen
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
        Name = 'PersonIdFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PersonIdTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
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
        'orkDate, dbo.ScheduleTimePerson.PersonId, dbo.ScheduleInfo.InfoN' +
        'ame, '
      
        '                      dbo.ScheduleTimePerson.Proc_Entity, dbo.Sc' +
        'heduleTimePerson.Proc_Time, dbo.ScheduleTimePerson.Proc_Note, db' +
        'o.ScheduleTimeWorks.MashinID, '
      '                      dbo.ScheduleTimeWorks.WorkId'
      'FROM         dbo.ScheduleTimeWorks INNER JOIN'
      
        '                      dbo.ScheduleTimePerson ON dbo.ScheduleTime' +
        'Works.WorkId = dbo.ScheduleTimePerson.WorkId INNER JOIN'
      
        '                      dbo.ScheduleInfo ON dbo.ScheduleTimePerson' +
        '.PersonId = dbo.ScheduleInfo.InfoId'
      
        'WHERE  (dbo.ScheduleInfo.Code = 9) and (WorkNo BETWEEN :WorkNoFr' +
        'om AND :WorkNoTo) AND (WorkDate BETWEEN :WorkDateFrom AND :WorkD' +
        'ateTo)'
      
        'AND (dbo.ScheduleTimePerson.PersonId  BETWEEN :PersonIdFrom  AND' +
        ' :PersonIdTo) AND (dbo.ScheduleTimeWorks.MashinID =:MashinID  )'
      ''
      '')
    Left = 484
    Top = 200
    object qryMashin_TimePersonWorkNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'WorkNo'
    end
    object qryMashin_TimePersonWorkDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'WorkDate'
      FixedChar = True
      Size = 10
    end
    object qryMashin_TimePersonPersonId: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1585#1587#1606#1604
      FieldName = 'PersonId'
    end
    object qryMashin_TimePersonInfoName: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578
      FieldName = 'InfoName'
      Size = 100
    end
    object qryMashin_TimePersonProc_Entity: TIntegerField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldName = 'Proc_Entity'
    end
    object qryMashin_TimePersonProc_Time: TIntegerField
      Tag = 3
      DisplayLabel = #1586#1605#1575#1606
      FieldName = 'Proc_Time'
    end
    object qryMashin_TimePersonProc_Note: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'Proc_Note'
      FixedChar = True
      Size = 500
    end
    object qryMashin_TimePersonMashinID: TIntegerField
      FieldName = 'MashinID'
    end
    object qryMashin_TimePersonWorkId: TIntegerField
      FieldName = 'WorkId'
    end
  end
  object SrcMashin_TimePerson: TDataSource
    DataSet = qryMashin_TimePerson
    Left = 488
    Top = 264
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
