inherited ImportDataF: TImportDataF
  Caption = #1575#1606#1578#1602#1575#1604' '#1583#1575#1583#1607
  ClientHeight = 296
  ClientWidth = 426
  ExplicitWidth = 432
  ExplicitHeight = 325
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 239
    Width = 426
    ExplicitTop = 94
    ExplicitWidth = 372
  end
  object Label4: TLabel [1]
    AlignWithMargins = True
    Left = 3
    Top = 189
    Width = 420
    Height = 13
    Align = alBottom
    Caption = '.'
    ExplicitLeft = 419
    ExplicitWidth = 4
  end
  inherited Panel1: TPanel
    Width = 426
    Height = 69
    BevelOuter = bvNone
    ExplicitWidth = 426
    ExplicitHeight = 69
    inherited Image1: TImage
      Left = 357
      Top = 3
      ExplicitLeft = 357
      ExplicitTop = 3
    end
    inherited lblTopic0: TLabel
      Left = 387
      Top = 3
      Width = 31
      Caption = #1578#1608#1580#1607' :'
      ExplicitLeft = 376
      ExplicitTop = 3
      ExplicitWidth = 31
    end
    inherited lblTopic1: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 53
      Width = 420
      Align = alBottom
      Caption = #1602#1576#1604' '#1575#1586' '#1607#1585' '#1705#1575#1585#1740' '#1548' '#1662#1588#1578#1740#1576#1575#1606' '#1578#1607#1740#1607' '#1711#1585#1583#1583'!'
      ExplicitTop = 53
      ExplicitWidth = 164
    end
  end
  inherited pnlDown: TPanel
    Top = 259
    Width = 426
    BevelOuter = bvNone
    ExplicitTop = 259
    ExplicitWidth = 426
    object Label2: TLabel [0]
      AlignWithMargins = True
      Left = 84
      Top = 3
      Width = 102
      Height = 31
      Align = alClient
      AutoSize = False
      Caption = 'Label2'
      ExplicitLeft = 198
      ExplicitTop = 11
      ExplicitWidth = 151
      ExplicitHeight = 13
    end
    object Label5: TLabel [1]
      AlignWithMargins = True
      Left = 192
      Top = 3
      Width = 57
      Height = 31
      Align = alRight
      Caption = #1576#1575#1606#1705' '#1605#1602#1589#1583': '
      ExplicitHeight = 13
    end
    inherited btnClose: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 3
      Height = 31
      Align = alLeft
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitHeight = 31
    end
    object btnSend: TBitBtn
      AlignWithMargins = True
      Left = 342
      Top = 3
      Width = 81
      Height = 31
      Align = alRight
      Caption = #1575#1606#1578#1602#1575#1604
      TabOrder = 1
      OnClick = btnSendClick
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 255
      Top = 3
      Width = 81
      Height = 31
      Align = alRight
      Caption = #1587#1575#1740#1585
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object mmo1: TMemo [4]
    Left = 0
    Top = 205
    Width = 426
    Height = 37
    Align = alBottom
    ReadOnly = True
    TabOrder = 2
    Visible = False
  end
  object pb2: TProgressBar [5]
    Left = 0
    Top = 242
    Width = 426
    Height = 17
    Align = alBottom
    TabOrder = 3
  end
  object Panel2: TPanel [6]
    Left = 0
    Top = 81
    Width = 426
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object btnSalary: TSpeedButton
      Tag = 1
      AlignWithMargins = True
      Left = 3
      Top = 6
      Width = 23
      Height = 23
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alLeft
      Caption = '...'
      OnClick = btnSalaryClick
      ExplicitLeft = 58
      ExplicitTop = 13
      ExplicitHeight = 22
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 316
      Top = 3
      Width = 107
      Height = 29
      Align = alRight
      BiDiMode = bdLeftToRight
      Caption = #1606#1575#1605'   '#1576#1575#1606#1705'   '#1605#1576#1583#1575'   '#1581#1602#1608#1602
      ParentBiDiMode = False
      ExplicitHeight = 13
    end
    object cmbSalary: TComboBox
      AlignWithMargins = True
      Left = 32
      Top = 3
      Width = 278
      Height = 21
      Align = alClient
      Style = csDropDownList
      TabOrder = 0
    end
  end
  object Panel3: TPanel [7]
    Left = 0
    Top = 151
    Width = 426
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 5
    object SpeedButton2: TSpeedButton
      Tag = 3
      AlignWithMargins = True
      Left = 3
      Top = 6
      Width = 22
      Height = 23
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alLeft
      Caption = '...'
      OnClick = btnSalaryClick
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitHeight = 426
    end
    object Label6: TLabel
      AlignWithMargins = True
      Left = 314
      Top = 3
      Width = 109
      Height = 29
      Align = alRight
      BiDiMode = bdLeftToRight
      Caption = #1606#1575#1605' '#1576#1575#1606#1705' '#1605#1576#1583#1575' '#1581#1587#1575#1576#1583#1575#1585#1740
      ParentBiDiMode = False
      ExplicitHeight = 13
    end
    object cmbAcc: TComboBox
      AlignWithMargins = True
      Left = 31
      Top = 3
      Width = 277
      Height = 21
      Align = alClient
      Style = csDropDownList
      TabOrder = 0
    end
  end
  object Panel4: TPanel [8]
    Left = 0
    Top = 116
    Width = 426
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 6
    object SpeedButton1: TSpeedButton
      Tag = 2
      AlignWithMargins = True
      Left = 3
      Top = 6
      Width = 23
      Height = 23
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alLeft
      Caption = '...'
      OnClick = btnSalaryClick
      ExplicitLeft = 66
      ExplicitTop = 13
      ExplicitHeight = 22
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 315
      Top = 3
      Width = 108
      Height = 29
      Align = alRight
      BiDiMode = bdLeftToRight
      Caption = #1606#1575#1605'   '#1576#1575#1606#1705'   '#1605#1576#1583#1575'   '#1583#1575#1585#1575#1574#1740
      ParentBiDiMode = False
      ExplicitHeight = 13
    end
    object cmbAsset: TComboBox
      AlignWithMargins = True
      Left = 32
      Top = 3
      Width = 277
      Height = 21
      Align = alClient
      Style = csDropDownList
      TabOrder = 0
    end
  end
  inherited ActionList1: TActionList
    Left = 328
    Top = 8
  end
  object adcMain: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;User ID=sa;Initial Catalog=BPMS_EhtemamJam;D' +
      'ata Source=D1;'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    BeforeConnect = adcMainBeforeConnect
    Left = 160
    Top = 8
  end
  object qrySalary: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Sid, BankName'
      'FROM [FaraSystems].[dbo].[Sections]'
      'WHERE SysID IN (25, 40)'
      'ORDER BY SysID, BankName')
    Left = 64
    Top = 80
    object qrySalarySid: TIntegerField
      FieldName = 'Sid'
    end
    object qrySalaryBankName: TStringField
      FieldName = 'BankName'
      Size = 50
    end
  end
  object qryAsset: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Sid, BankName'
      'FROM [FaraSystems].[dbo].[Sections]'
      'WHERE SysID IN (32)'
      'ORDER BY BankName')
    Left = 104
    Top = 152
    object IntegerField1: TIntegerField
      FieldName = 'Sid'
    end
    object StringField1: TStringField
      FieldName = 'BankName'
      Size = 50
    end
  end
  object qryAcc: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Sid, BankName'
      'FROM [FaraSystems].[dbo].[Sections]'
      'WHERE SysID IN (4, 39)'
      'ORDER BY SysID, BankName')
    Left = 240
    Top = 8
    object IntegerField2: TIntegerField
      FieldName = 'Sid'
    end
    object StringField2: TStringField
      FieldName = 'BankName'
      Size = 50
    end
  end
  object ADOCmdUpDate: TADOCommand
    CommandTimeout = 0
    Connection = adcMain
    ExecuteOptions = [eoExecuteNoRecords]
    Parameters = <>
    ParamCheck = False
    Left = 76
    Top = 9
  end
  object ADOCreateTable: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 152
    Top = 72
  end
  object adcPay: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;User ID=sa;Initial Catalog=BPMS_EhtemamJam;D' +
      'ata Source=D1;'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    BeforeConnect = adcPayBeforeConnect
    Left = 280
    Top = 72
  end
  object adcAsS: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;User ID=sa;Initial Catalog=BPMS_EhtemamJam;D' +
      'ata Source=D1;'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    BeforeConnect = adcAsSBeforeConnect
    Left = 264
    Top = 120
  end
  object adcAcc: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;User ID=sa;Initial Catalog=BPMS_EhtemamJam;D' +
      'ata Source=D1;'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    BeforeConnect = adcAccBeforeConnect
    Left = 296
    Top = 184
  end
  object qryCOUNT: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 192
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Left = 128
    Top = 207
    object N3: TMenuItem
      Caption = 
        #1578#1605#1575#1605#1740' '#1575#1740#1606' '#1605#1608#1575#1585#1583' '#1583#1585' '#1583#1705#1605#1607' '#1575#1606#1578#1602#1575#1604' '#1575#1578#1608#1605#1575#1578#1740#1705' '#1575#1606#1580#1575#1605' '#1605#1740' '#1588#1608#1583' ('#1580#1607#1578' '#1575#1580#1585#1575#1740' ' +
        #1605#1580#1586#1575')'
    end
    object f1: TMenuItem
      Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1740' '#1580#1583#1575#1608#1604'    '#1581#1587#1575#1576#1583#1575#1585#1740
      OnClick = f1Click
    end
    object N1: TMenuItem
      Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1740' '#1580#1583#1575#1608#1604'          '#1581#1602#1608#1602
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1740' '#1580#1583#1575#1608#1604' '#1583#1575#1585#1575#1574#1740' '#1579#1575#1576#1578
      OnClick = N2Click
    end
  end
end
