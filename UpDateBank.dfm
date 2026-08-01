inherited UpDateBankF: TUpDateBankF
  Left = 451
  Top = 157
  Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1576#1575#1606#1603
  ClientHeight = 495
  ClientWidth = 416
  ExplicitWidth = 422
  ExplicitHeight = 524
  DesignSize = (
    416
    495)
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Left = 30
    Top = 441
    Width = 367
    Visible = False
    ExplicitLeft = 30
    ExplicitTop = 231
    ExplicitWidth = 327
  end
  inherited Panel1: TPanel
    Width = 416
    Height = 11
    ExplicitWidth = 416
    ExplicitHeight = 11
    DesignSize = (
      416
      11)
    inherited Image1: TImage
      Left = 354
      ExplicitLeft = 314
    end
    inherited lblTopic0: TLabel
      Left = 282
      Visible = False
      ExplicitLeft = 242
    end
    inherited lblTopic1: TLabel
      Left = 157
      Top = 8
      Visible = False
      ExplicitLeft = 117
      ExplicitTop = 8
    end
  end
  inherited pnlDown: TPanel
    Top = 458
    Width = 416
    ExplicitTop = 458
    ExplicitWidth = 416
    object lbl1: TLabel [0]
      Left = 82
      Top = 1
      Width = 315
      Height = 35
      Align = alClient
      Caption = '000'
      ExplicitLeft = 379
      ExplicitWidth = 18
      ExplicitHeight = 13
    end
    object lbl2: TLabel [1]
      Left = 397
      Top = 1
      Width = 18
      Height = 35
      Align = alRight
      Caption = '000'
      ExplicitHeight = 13
    end
    inherited btnClose: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Height = 29
      Align = alLeft
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitHeight = 29
    end
  end
  object ChkBankName: TCheckListBox [3]
    Left = 14
    Top = 11
    Width = 211
    Height = 380
    Hint = #1575#1606#1578#1582#1575#1576' '#1605#1593#1603#1608#1587
    Align = alLeft
    Color = 13236955
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnDblClick = ChkBankNameDblClick
  end
  object pb2: TProgressBar [4]
    Left = 0
    Top = 11
    Width = 14
    Height = 380
    Align = alLeft
    Orientation = pbVertical
    TabOrder = 3
  end
  object pnlBtn: TPanel [5]
    Left = 225
    Top = 11
    Width = 191
    Height = 380
    Align = alClient
    TabOrder = 4
    object BtnCmdUpDate: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 183
      Height = 25
      Align = alTop
      Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1576#1575#1606#1603
      TabOrder = 0
      OnClick = BtnCmdUpDateClick
    end
    object BtnViews_Fun: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 35
      Width = 183
      Height = 25
      Align = alTop
      Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1711#1586#1575#1585#1588#1575#1578
      TabOrder = 1
      OnClick = BtnViews_FunClick
    end
    object BtnClearDefaultIndex: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 66
      Width = 183
      Height = 25
      Align = alTop
      Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1580#1587#1578#1580#1608#1607#1575
      TabOrder = 2
      OnClick = BtnClearDefaultIndexClick
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 97
      Width = 183
      Height = 25
      Align = alTop
      Caption = #1662#1575#1603#1587#1575#1586#1610' '#1587#1575#1604' '#1607#1575#1610' '#1605#1575#1604#1610
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object btnRemove: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 190
      Width = 183
      Height = 25
      Align = alTop
      Caption = #1585#1601#1593' '#1582#1591#1575#1740' ??'#1583#1585' '#1670#1705' '#1607#1575
      TabOrder = 4
      OnClick = btnRemoveClick
    end
    object btnROUND: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 227
      Width = 183
      Height = 25
      Hint = #1576#1607#1578#1585' '#1575#1587#1578' '#1586#1605#1575#1606#1740' '#1575#1606#1580#1575#1605' '#1588#1608#1583' '#1705#1607' '#1576#1575#1585' '#1705#1605#1740' '#1585#1608#1740' '#1587#1585#1608#1585' '#1576#1575#1588#1583'.'
      Align = alBottom
      Caption = ' '#1605#1585#1578#1576' '#1587#1575#1586#1740' '#1576#1575#1606#1603
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnROUNDClick
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 258
      Width = 183
      Height = 25
      Align = alBottom
      Caption = #1662#1575#1603#1587#1575#1586#1610' '#1603#1575#1585#1576#1585#1575#1606
      TabOrder = 6
      OnClick = BitBtn2Click
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 289
      Width = 183
      Height = 25
      Action = actactUpdateMakeReport
      Align = alBottom
      Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1740' '#1711#1586#1575#1585#1588#1575#1578' '#1662#1608#1740#1575
      TabOrder = 7
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 320
      Width = 183
      Height = 25
      Align = alBottom
      Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1740' '#1605#1593#1585#1601#1740' '#1705#1575#1585#1576#1585#1575#1606
      TabOrder = 8
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 351
      Width = 183
      Height = 25
      Align = alBottom
      Caption = #1575#1740#1580#1575#1583' '#1580#1583#1608#1604' '#1705#1583' '#1588#1594#1604' '#1576#1740#1605#1607
      TabOrder = 9
      OnClick = BitBtn7Click
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 159
      Width = 183
      Height = 25
      Align = alTop
      Caption = #1575#1740#1580#1575#1583' '#1580#1583#1575#1608#1604' '#1740#1705#1662#1575#1585#1670#1607
      TabOrder = 10
      OnClick = BitBtn4Click
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 128
      Width = 183
      Height = 25
      Align = alTop
      Caption = #1575#1589#1604#1575#1581#1575#1578'  '#1576#1575#1606#1603
      TabOrder = 11
      OnClick = BitBtn3Click
    end
  end
  object Panel2: TPanel [6]
    Left = 0
    Top = 391
    Width = 416
    Height = 41
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 5
    object pb1: TProgressBar
      Left = 1
      Top = 2
      Width = 414
      Height = 17
      Align = alBottom
      TabOrder = 0
    end
    object Label1: TEdit
      Left = 1
      Top = 19
      Width = 414
      Height = 21
      Align = alBottom
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      ParentColor = True
      TabOrder = 1
    end
  end
  object chkVertion: TCheckBox [7]
    Left = 0
    Top = 432
    Width = 416
    Height = 26
    Hint = #1601#1602#1591' '#1576#1585#1575#1740' '#1575#1711#1586#1607' '#1607#1575' '#1608' '#1583#1740#1578#1575#1607#1575#1740' '#1602#1583#1740#1605#1740
    Margins.Top = 9
    Margins.Bottom = 0
    Align = alBottom
    Caption = #1575#1586' '#1608#1585#1688#1606' 0 '#1575#1580#1585#1575' '#1588#1608#1583
    Checked = True
    Enabled = False
    State = cbChecked
    TabOrder = 6
  end
  inherited ActionList1: TActionList
    object actactUpdateMakeReport: TAction
      Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1740' '#1711#1586#1575#1585#1588#1575#1578' '#1662#1608#1740#1575
      OnExecute = actactUpdateMakeReportExecute
    end
  end
  object qrySections: TADOQuery
    Connection = DmF.adcFaraSystem
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'sysid'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'Select BankName from Sections'
      'where ((sysid=:sysid) OR (sysid= 40))'
      'group by BankName'
      'order by max(createdate)')
    Left = 48
    Top = 88
  end
  object ADOCmdUpDate: TADOCommand
    CommandTimeout = 0
    ExecuteOptions = [eoExecuteNoRecords]
    Parameters = <>
    ParamCheck = False
    Left = 124
    Top = 33
  end
  object qryVu_StuffCoding: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 136
    Top = 120
  end
  object qryFUp: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'sysid'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT        UpFileName, FileAge'
      'FROM            Util.Fara_UpDateBank')
    Left = 72
    Top = 208
    object qryFUpUpFileName: TStringField
      FieldName = 'UpFileName'
      Size = 200
    end
    object qryFUpFileAge: TLargeintField
      FieldName = 'FileAge'
    end
  end
  object popFarsi: TPopupMenu
    Left = 136
    Top = 200
    object All1: TMenuItem
      Caption = 'All'
      Visible = False
      OnClick = All1Click
    end
    object N1: TMenuItem
      Caption = #1601#1575#1585#1587#1740' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
      Hint = 'Script\01-FarsiSaz.sql'
      OnClick = All1Click
    end
    object N2: TMenuItem
      Caption = #1601#1575#1585#1587#1740
      Hint = 'Script\02-FarsiSaz.sql'
      OnClick = All1Click
    end
  end
  object qry: TADOQuery
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'sysid'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT        UpFileName, FileAge'
      'FROM            Util.Fara_UpDateBank')
    Left = 64
    Top = 144
  end
  object FDScript1: TFDScript
    SQLScripts = <>
    Connection = FDConnection1
    Params = <>
    Macros = <>
    OnProgress = FDScript1Progress
    Left = 168
    Top = 272
  end
  object FDConnection1: TFDConnection
    Left = 56
    Top = 272
  end
end
