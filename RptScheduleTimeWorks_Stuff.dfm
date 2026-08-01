inherited RptScheduleTimeWorks_StuffF: TRptScheduleTimeWorks_StuffF
  Left = 167
  Top = 135
  Caption = #1711#1586#1575#1585#1588' '#1603#1575#1585#1603#1585#1583' '#1576#1585' '#1585#1608#1610' '#1605#1581#1589#1608#1604#1575#1578' '#1576#1607' '#1578#1601#1603#1610#1603' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
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
      Left = 622
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
    Height = 79
    ExplicitHeight = 79
    inherited lblCaption: TLabel
      Height = 59
      ExplicitLeft = 674
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 300
      Height = 77
      Align = alLeft
      Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1605#1581#1589#1608#1604
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
        DataField = 'ProcStuffCoding'
        DataSource = SrcStuffCod
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
        DataField = 'c_StuffName'
        DataSource = SrcStuffCod
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
      DataSource = SrcStuffCod
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
      Height = 393
      Align = alClient
      DataSource = SrcScheduleTimeWorks_Suff
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
          FieldName = 'MashinID'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InfoName'
          Title.Alignment = taCenter
          Width = 147
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
          FieldName = 'Sum'
          Title.Alignment = taCenter
          Visible = True
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
  end
  inherited ImageList1: TImageList
    Left = 592
  end
  object qryScheduleTimeWorks_Suff: TADOQuery
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
        Name = 'StuffCod'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     ScheduleTimeWorks.WorkNo, ScheduleTimeWorks.WorkDate,' +
        ' ScheduleTimeWorks.MashinID, ScheduleInfo.InfoName, '
      
        '                      ScheduleWorksItems.TrancFormId, ScheduleWo' +
        'rksItems.WorkTime, ScheduleWorksItems.ProcAmount, ScheduleWorksI' +
        'tems.LossAmount1, '
      
        '                      ScheduleWorksItems.LossAmount2, ScheduleWo' +
        'rksItems.ProcStuffCoding, ScheduleTimeWorks.WorkId, ScheduleInfo' +
        '.InfoId, '
      
        '                      ScheduleWorksItems.ProcAmount + ScheduleWo' +
        'rksItems.LossAmount1 + ScheduleWorksItems.LossAmount2 AS [Sum]'
      'FROM         ScheduleTimeWorks INNER JOIN'
      
        '                      ScheduleWorksItems ON ScheduleTimeWorks.Wo' +
        'rkId = ScheduleWorksItems.WorkId RIGHT OUTER JOIN'
      
        '                      ScheduleInfo ON ScheduleTimeWorks.MashinID' +
        ' = ScheduleInfo.InfoId'
      
        'WHERE     (ScheduleInfo.Code = 6) AND (WorkNo BETWEEN :WorkNoFro' +
        'm AND :WorkNoTo) AND (WorkDate BETWEEN :WorkDateFrom AND :WorkDa' +
        'teTo) AND (MashinID BETWEEN :MashinIDFrom AND :MashinIDTo)'
      'AND (ScheduleWorksItems.ProcStuffCoding =:StuffCod)'
      '')
    Left = 436
    Top = 216
    object qryScheduleTimeWorks_SuffWorkNo: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'WorkNo'
    end
    object qryScheduleTimeWorks_SuffWorkDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'WorkDate'
      FixedChar = True
      Size = 10
    end
    object qryScheduleTimeWorks_SuffMashinID: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'MashinID'
    end
    object qryScheduleTimeWorks_SuffInfoName: TStringField
      DisplayLabel = #1605#1575#1588#1610#1606' '#1570#1604#1575#1578' / '#1593#1608#1575#1605#1604' '#1578#1608#1604#1610#1583
      FieldName = 'InfoName'
      Size = 100
    end
    object qryScheduleTimeWorks_SuffTrancFormId: TIntegerField
      DisplayLabel = #1601#1585#1605#1608#1604' '#1587#1575#1582#1578
      FieldName = 'TrancFormId'
    end
    object qryScheduleTimeWorks_SuffWorkTime: TFloatField
      DisplayLabel = #1603#1575#1585#1603#1585#1583
      FieldName = 'WorkTime'
    end
    object qryScheduleTimeWorks_SuffProcAmount: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1578#1608#1604#1610#1583
      FieldName = 'ProcAmount'
    end
    object qryScheduleTimeWorks_SuffLossAmount1: TFloatField
      DisplayLabel = #1590#1575#1610#1593#1575#1578' 1'
      FieldName = 'LossAmount1'
    end
    object qryScheduleTimeWorks_SuffLossAmount2: TFloatField
      DisplayLabel = #1590#1575#1610#1593#1575#1578' 2'
      FieldName = 'LossAmount2'
    end
    object qryScheduleTimeWorks_SuffSum: TFloatField
      DisplayLabel = #1578#1608#1604#1610#1583' '#1603#1604
      FieldName = 'Sum'
      ReadOnly = True
    end
    object qryScheduleTimeWorks_SuffProcStuffCoding: TLargeintField
      FieldName = 'ProcStuffCoding'
    end
    object qryScheduleTimeWorks_SuffWorkId: TIntegerField
      FieldName = 'WorkId'
    end
    object qryScheduleTimeWorks_SuffInfoId: TIntegerField
      FieldName = 'InfoId'
    end
  end
  object SrcScheduleTimeWorks_Suff: TDataSource
    DataSet = qryScheduleTimeWorks_Suff
    Left = 416
    Top = 288
  end
  object qryStuffCod: TADOQuery
    Connection = DmF.adcBSell
    AfterScroll = qryStuffCodAfterScroll
    Parameters = <
      item
        Name = 'ProcStuffCodingFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ProcStuffCodingTo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     ScheduleWorksItems.ProcStuffCoding, StuffCoding.c_Stu' +
        'ffName'
      'FROM         ScheduleWorksItems INNER JOIN'
      
        '                      StuffCoding ON ScheduleWorksItems.ProcStuf' +
        'fCoding = StuffCoding.c_StuffCode'
      
        'GROUP BY ScheduleWorksItems.ProcStuffCoding, StuffCoding.c_Stuff' +
        'Name'
      
        'HAVING      (ScheduleWorksItems.ProcStuffCoding BETWEEN :ProcStu' +
        'ffCodingFrom  AND :ProcStuffCodingTo)')
    Left = 328
    Top = 16
    object qryStuffCodProcStuffCoding: TLargeintField
      FieldName = 'ProcStuffCoding'
    end
    object qryStuffCodc_StuffName: TStringField
      FieldName = 'c_StuffName'
      Size = 70
    end
  end
  object SrcStuffCod: TDataSource
    DataSet = qryStuffCod
    Left = 376
    Top = 16
  end
end
