inherited Template5F1: TTemplate5F1
  Caption = 'Template5F1'
  ClientHeight = 299
  ClientWidth = 315
  ExplicitWidth = 321
  ExplicitHeight = 323
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 315
    Height = 57
    ExplicitWidth = 315
    ExplicitHeight = 57
    inherited Image1: TImage
      Left = 261
      ExplicitLeft = 261
    end
    inherited lblTopic0: TLabel
      Left = 189
      ExplicitLeft = 189
    end
    inherited lblTopic1: TLabel
      Left = 168
      ExplicitLeft = 168
    end
  end
  inherited pnlDown: TPanel
    Top = 262
    Width = 315
    ExplicitTop = 262
    ExplicitWidth = 315
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 57
    Width = 315
    Height = 205
    Align = alClient
    TabOrder = 2
    object Label1: TLabel
      Left = 250
      Top = 24
      Width = 30
      Height = 13
      Caption = #1588#1605#1575#1585#1607
    end
    object edtNumber: TEdit
      Left = 40
      Top = 21
      Width = 204
      Height = 21
      TabOrder = 0
      Text = 'edtNumber'
    end
    object memMsg: TMemo
      Left = 40
      Top = 48
      Width = 204
      Height = 145
      Lines.Strings = (
        'Memo1')
      TabOrder = 1
    end
  end
  inherited ActionList1: TActionList
    Left = 264
    Top = 160
    object Action1: TAction
      Caption = 'Action1'
    end
  end
  object nrComm: TnrComm
    Active = False
    BaudRate = 9600
    Parity = pNone
    StopBits = sbOne
    ByteSize = 8
    ComPortNo = 2
    ComPort = cpCOM2
    TraceStates = []
    EventChar = #0
    StreamProtocol = spHardware
    DataProcessor = nrGsm
    BufferInSize = 8192
    BufferOutSize = 8192
    TimeoutRead = 0
    TimeoutWrite = 100
    RS485Mode = False
    EnumPorts = epQuickAll
    UseMainThread = True
    TerminalUsage = tuNone
    TerminalEcho = False
    Left = 16
  end
  object nrGsm: TnrGsm
    Active = False
    Autodetect = True
    IgnoreInitErrors = True
    TimeOut = 10000
    NewSmsMode = nsmRead
    Left = 64
  end
end
