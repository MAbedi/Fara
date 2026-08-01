inherited RptScheduleTimeWorksF: TRptScheduleTimeWorksF
  Left = 181
  Top = 127
  Caption = #1604#1610#1587#1578' '#1603#1575#1585#1603#1585#1583' '#1608' '#1576#1585#1606#1575#1605#1607' '#1585#1610#1586#1610' '#1593#1608#1575#1605#1604
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
      Left = 542
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662
      TabOrder = 5
    end
    object BitBtn4: TBitBtn
      Left = 623
      Top = 8
      Width = 75
      Height = 25
      Action = actChangeState
      Anchors = [akTop, akRight]
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
  end
  inherited Panel3: TPanel
    Height = 423
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 786
      Height = 420
      Align = alClient
      DataSource = SrcScheduleTimeWorks
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
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MashinID'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_MashinName'
          Title.Alignment = taCenter
          Width = 190
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ProcCode'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_ProcName'
          Title.Alignment = taCenter
          Width = 162
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'State'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ShiftNo'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptNo'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptDate'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFiltter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFiltterExecute
    end
    object actChangeState: TAction
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578
      OnExecute = actChangeStateExecute
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
  end
  object qryScheduleTimeWorks: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
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
        Name = 'StateFrom'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end
      item
        Name = 'StateTo'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 4
      end
      item
        Name = 'MashinIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'MashinIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 99
      end
      item
        Name = 'ProcCodeFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ProcCodeTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 99
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         dbo.ScheduleTimeWorks'
      
        'WHERE     (WorkNo BETWEEN :WorkNoFrom AND :WorkNoTo) AND (WorkDa' +
        'te BETWEEN :WorkDateFrom AND :WorkDateTo) AND (State BETWEEN :St' +
        'ateFrom AND :StateTo)'
      
        'AND (MashinID BETWEEN :MashinIDFrom AND :MashinIDTo)  AND (ProcC' +
        'ode BETWEEN :ProcCodeFrom AND :ProcCodeTo)')
    Left = 680
    Top = 144
    object qryScheduleTimeWorksWorkId: TIntegerField
      FieldName = 'WorkId'
    end
    object qryScheduleTimeWorksWorkNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'WorkNo'
    end
    object qryScheduleTimeWorksWorkDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'WorkDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryScheduleTimeWorksState: TWordField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'State'
      OnGetText = qryScheduleTimeWorksStateGetText
    end
    object qryScheduleTimeWorksMashinID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '
      FieldName = 'MashinID'
    end
    object qryScheduleTimeWorksShiftNo: TWordField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1588#1610#1601#1578
      FieldName = 'ShiftNo'
    end
    object qryScheduleTimeWorksReciptNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1585#1587#1610#1583
      FieldName = 'ReciptNo'
    end
    object qryScheduleTimeWorksReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1585#1587#1610#1583' '#1575#1606#1576#1575#1585
      FieldName = 'ReciptDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryScheduleTimeWorksProcCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '
      FieldName = 'ProcCode'
    end
    object qryScheduleTimeWorks_MashinName: TStringField
      DisplayLabel = #1605#1575#1588#1610#1606' '#1570#1604#1575#1578' /'#1593#1608#1575#1605#1604' '#1578#1608#1604#1610#1583
      FieldKind = fkLookup
      FieldName = '_MashinName'
      LookupDataSet = qryLookup_Mashin
      LookupKeyFields = 'InfoId'
      LookupResultField = 'InfoName'
      KeyFields = 'MashinID'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryScheduleTimeWorks_ProcName: TStringField
      DisplayLabel = #1582#1591' '#1578#1608#1604#1610#1583
      FieldKind = fkLookup
      FieldName = '_ProcName'
      LookupDataSet = qryLookup_Proc
      LookupKeyFields = 'InfoId'
      LookupResultField = 'InfoName'
      KeyFields = 'ProcCode'
      LookupCache = True
      Size = 100
      Lookup = True
    end
  end
  object SrcScheduleTimeWorks: TDataSource
    DataSet = qryScheduleTimeWorks
    Left = 328
    Top = 8
  end
  object PopMnuState: TPopupMenu
    AutoHotkeys = maManual
    Left = 568
    Top = 410
  end
  object qry_LookUpState: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     TOP 100 PERCENT InfoId, InfoName'
      'FROM         dbo.ScheduleInfo'
      'WHERE     (Code = 101)'
      'ORDER BY Code')
    Left = 536
    Top = 336
    object qry_LookUpStateInfoId: TIntegerField
      FieldName = 'InfoId'
    end
    object qry_LookUpStateInfoName: TStringField
      FieldName = 'InfoName'
      Size = 100
    end
  end
  object qryLookup_Mashin: TADOQuery
    Connection = DmF.adcBSell
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     InfoId, InfoName'
      'FROM         ScheduleInfo'
      'WHERE     (Code = 6)')
    Left = 496
    Top = 168
  end
  object qryLookup_Proc: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     InfoId, InfoName'
      'FROM         ScheduleInfo'
      'WHERE     (Code = 7)')
    Left = 601
    Top = 106
  end
end
