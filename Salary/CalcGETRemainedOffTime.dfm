inherited CalcGETRemainedOffTimeF: TCalcGETRemainedOffTimeF
  Left = 501
  Top = 82
  Caption = #1605#1581#1575#1587#1576#1607' '#1603#1587#1585#1610' '#1605#1585#1582#1589#1610' '#1583#1585' '#1594#1610#1576#1578
  ClientHeight = 345
  ClientWidth = 576
  ExplicitWidth = 592
  ExplicitHeight = 384
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 288
    Width = 568
    ExplicitTop = 225
    ExplicitWidth = 584
  end
  inherited Panel1: TPanel
    Width = 576
    Height = 68
    ExplicitWidth = 584
    ExplicitHeight = 68
    inherited Image1: TImage
      Left = 530
      ExplicitLeft = 530
    end
    inherited lblTopic0: TLabel
      Left = 338
      Top = 7
      Width = 172
      Caption = #1605#1581#1575#1587#1576#1607' '#1603#1587#1585#1610' '#1605#1585#1582#1589#1610' '#1583#1585' '#1594#1610#1576#1578
      ExplicitLeft = 338
      ExplicitTop = 7
      ExplicitWidth = 172
    end
    inherited lblTopic1: TLabel
      Left = 109
      Top = 23
      Width = 388
      Height = 39
      Caption = 
        #1583#1585' '#1579#1576#1578' '#1603#1575#1585#1603#1585#1583' '#1575#1586' '#1578#1593#1583#1575#1583' '#1585#1608#1586#1607#1575#1610' '#1603#1575#1585#1603#1585#1583' '#1603#1587#1585' '#1605#1610#1588#1608#1583' '#1608' '#1576#1607' '#1607#1605#1575#1606' '#1578#1593#1583#1575#1583' '#1594 +
        #1610#1576#1578' '#1579#1576#1578' '#1605#1610' '#1588#1608#1583#13#10#1583#1585' '#1579#1576#1578' '#1605#1585#1582#1589#1610' '#1662#1585#1587#1606#1604' '#1606#1610#1586' '#1576#1607' '#1607#1605#1575#1606' '#1578#1593#1583#1575#1583' '#1605#1585#1582#1589#1610' '#1605#1606#1601#1610' ' +
        ' '#1579#1576#1578' '#1605#1610' '#1588#1608#1583#13#10#1578#1608#1580#1607' '#1603#1606#1610#1583' '#1603#1607' '#1583#1585' '#1605#1585#1582#1589#1610' '#1594#1610#1585' '#1585#1606#1583' '#1605#1575#1606#1606#1583' 2.2   '#1610#1575' 2.9  '#1585 +
        #1608#1586' '#1607#1585' '#1583#1608' '#1605#1587#1575#1608#1610' '#1576#1575' 3 '#1585#1608#1586' '#1605#1610' '#1588#1608#1583
      ExplicitLeft = 109
      ExplicitTop = 23
      ExplicitWidth = 388
      ExplicitHeight = 39
    end
  end
  inherited pnlDown: TPanel
    Top = 308
    Width = 576
    ExplicitTop = 320
    ExplicitWidth = 584
    inherited btnClose: TBitBtn
      AlignWithMargins = True
      Left = 2
      Top = 7
      Height = 23
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alLeft
      ExplicitLeft = 2
      ExplicitTop = 7
      ExplicitHeight = 23
    end
    object btnPersonelDecExt: TBitBtn
      AlignWithMargins = True
      Left = 507
      Top = 7
      Width = 75
      Height = 23
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alRight
      Caption = #1605#1581#1575#1587#1576#1607' '#1594#1740#1576#1578
      TabOrder = 1
      OnClick = btnPersonelDecExtClick
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 79
      Top = 7
      Width = 75
      Height = 23
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 2
      OnClick = BitBtn6Click
    end
    object btnFunctions: TBitBtn
      AlignWithMargins = True
      Left = 419
      Top = 7
      Width = 86
      Height = 23
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alRight
      Caption = #1605#1581#1575#1587#1576#1607' '#1605#1585#1582#1589#1740
      TabOrder = 3
      OnClick = btnFunctionsClick
    end
  end
  object Panel2: TPanel [3]
    Left = 0
    Top = 68
    Width = 576
    Height = 220
    Align = alClient
    AutoSize = True
    TabOrder = 2
    ExplicitWidth = 584
    ExplicitHeight = 232
    object grdGETRemainedOffTime: TDBGrid
      Left = 1
      Top = 1
      Width = 582
      Height = 230
      Align = alClient
      Color = 16768991
      DataSource = srcGetOffTime_
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PersonelNo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Width = 118
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Day_Quntity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DayQuntity'
          Width = 84
          Visible = True
        end>
    end
  end
  object Memo1: TMemo [4]
    Left = 0
    Top = 288
    Width = 576
    Height = 20
    Align = alBottom
    Alignment = taCenter
    Color = clInactiveCaption
    Ctl3D = False
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      #1575#1576#1578#1583#1575' '#1605#1581#1575#1587#1576#1607' '#1594#1740#1576#1578' '#1575#1606#1580#1575#1605' '#1588#1608#1583' '#1608' '#1576#1593#1583' '#1605#1581#1575#1587#1576#1607' '#1605#1585#1582#1589#1740)
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
  end
  inherited ActionList1: TActionList
    Left = 56
  end
  object qryGetOffTime_: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'YearIDFROM'
        Size = -1
        Value = Null
      end
      item
        Name = 'YearIDTo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        GETOffTime_1.PersonelNo, FormsInfo.FormInfoID, FLO' +
        'OR(GETOffTime_1.Remained) AS DayQuntity, '
      
        '                         PersonelInfo.name_L1 + '#39' '#39' + PersonelIn' +
        'fo.lastName_L1 AS Name, GETOffTime_1.Remained AS Day_Quntity'
      
        'FROM            Pay.GETRemainedOffTime( :YearIDFROM , :YearIDTo ' +
        ',  DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT) AS GETOffTime_1 ' +
        'LEFT OUTER JOIN'
      
        '                         Pay.PersonelInfo ON GETOffTime_1.Person' +
        'elNo = PersonelInfo.PersonelNo CROSS JOIN'
      '                         Pay.FormsInfo'
      
        'WHERE        (FLOOR(GETOffTime_1.Remained) < 0) AND (FormsInfo.F' +
        'ormType = 16) AND (FormsInfo.InfoID = 1)'
      'ORDER BY GETOffTime_1.PersonelNo')
    Left = 178
    Top = 139
    object qryGetOffTime_PersonelNo: TIntegerField
      DisplayLabel = #1588'.'#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
      ReadOnly = True
    end
    object qryGetOffTime_Name: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578
      FieldName = 'Name'
      ReadOnly = True
      Size = 56
    end
    object qryGetOffTime_FormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryGetOffTime_Day_Quntity: TFloatField
      DisplayLabel = #1605#1585#1582#1589#1610' '#1605#1606#1601#1610'('#1583#1602#1610#1602')'
      FieldName = 'Day_Quntity'
    end
    object qryGetOffTime_DayQuntity: TFloatField
      DisplayLabel = #1605#1585#1582#1589#1610' '#1605#1606#1601#1610
      FieldName = 'DayQuntity'
      ReadOnly = True
    end
  end
  object srcGetOffTime_: TDataSource
    DataSet = qryGetOffTime_
    Left = 378
    Top = 146
  end
  object qryDecExt: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT TOP 0 DecExtID,PersonelNo, DayQuntity, FormInfoID,  First' +
        'Mounth, AidNo1, AidDate1, AidDate2, EndDate, Note_L1'
      '    FROM Pay.PersonelDecExt')
    Left = 170
    Top = 239
    object qryDecExtDecExtID: TIntegerField
      FieldName = 'DecExtID'
    end
    object qryDecExtPersonelNo: TIntegerField
      FieldName = 'PersonelNo'
    end
    object qryDecExtDayQuntity: TFloatField
      FieldName = 'DayQuntity'
    end
    object qryDecExtFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryDecExtFirstMounth: TIntegerField
      FieldName = 'FirstMounth'
    end
    object qryDecExtAidNo1: TStringField
      FieldName = 'AidNo1'
    end
    object qryDecExtAidDate1: TStringField
      FieldName = 'AidDate1'
      FixedChar = True
      Size = 10
    end
    object qryDecExtAidDate2: TStringField
      FieldName = 'AidDate2'
      FixedChar = True
      Size = 10
    end
    object qryDecExtEndDate: TStringField
      FieldName = 'EndDate'
      FixedChar = True
      Size = 10
    end
    object qryDecExtNote_L1: TWideStringField
      FieldName = 'Note_L1'
      Size = 4000
    end
  end
  object qry: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    Left = 362
    Top = 239
  end
end
