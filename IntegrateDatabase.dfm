inherited IntegrateDatabaseF: TIntegrateDatabaseF
  Caption = #1578#1580#1605#1740#1593' '#1587#1575#1604#1607#1575#1740' '#1605#1575#1604#1740
  ClientHeight = 270
  ClientWidth = 229
  ExplicitWidth = 235
  ExplicitHeight = 299
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Left = 152
    Top = 213
    Width = 3
    ExplicitLeft = 152
    ExplicitTop = 214
    ExplicitWidth = 180
  end
  object Label1: TLabel [1]
    Left = 0
    Top = 209
    Width = 229
    Height = 13
    Align = alBottom
    Alignment = taRightJustify
    ExplicitWidth = 3
  end
  inherited Panel1: TPanel
    Width = 229
    Height = 9
    ExplicitWidth = 229
    ExplicitHeight = 9
    inherited Image1: TImage
      Left = 175
      ExplicitLeft = 175
    end
    inherited lblTopic0: TLabel
      Left = 103
      ExplicitLeft = 103
    end
    inherited lblTopic1: TLabel
      Left = 82
      ExplicitLeft = 82
    end
  end
  inherited pnlDown: TPanel
    Top = 239
    Width = 229
    Height = 31
    ExplicitTop = 239
    ExplicitWidth = 229
    ExplicitHeight = 31
    inherited btnClose: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Height = 23
      Align = alLeft
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitHeight = 23
    end
    object btnCommit: TBitBtn
      AlignWithMargins = True
      Left = 150
      Top = 4
      Width = 75
      Height = 23
      Action = actIntegrate
      Align = alRight
      Caption = #1575#1606#1580#1575#1605' '#1593#1605#1604#1740#1575#1578
      TabOrder = 1
    end
  end
  object ChkBankName: TCheckListBox [4]
    Left = 0
    Top = 9
    Width = 229
    Height = 200
    Hint = #1575#1606#1578#1582#1575#1576' '#1605#1593#1603#1608#1587
    Align = alLeft
    Color = 13236955
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnDblClick = ChkBankNameDblClick
  end
  object pb1: TProgressBar [5]
    Left = 0
    Top = 222
    Width = 229
    Height = 17
    Align = alBottom
    TabOrder = 3
  end
  inherited ActionList1: TActionList
    object actIntegrate: TAction
      Caption = 'actIntegrate'
      OnExecute = actIntegrateExecute
    end
  end
  object qrySections: TADOQuery
    Connection = DMF.adcFaraSystem
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
      'where sysid=:sysid'
      'order by createdate')
    Left = 48
    Top = 96
  end
  object ADOCmdIntegrate: TADOCommand
    CommandTimeout = 0
    ExecuteOptions = [eoExecuteNoRecords]
    Parameters = <>
    ParamCheck = False
    Left = 140
    Top = 25
  end
end
