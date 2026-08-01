inherited vjForm1F: TvjForm1F
  Left = 345
  Top = 171
  Caption = #1608#1610#1688#1607
  ClientHeight = 409
  ClientWidth = 447
  OldCreateOrder = True
  ExplicitWidth = 453
  ExplicitHeight = 438
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 447
    ExplicitWidth = 447
    inherited Image1: TImage
      Left = 393
      ExplicitLeft = 393
    end
    inherited lblTopic0: TLabel
      Left = 321
      Visible = False
      ExplicitLeft = 321
    end
    inherited lblTopic1: TLabel
      Left = 300
      Visible = False
      ExplicitLeft = 300
    end
    object Label2: TLabel
      Left = 232
      Top = -8
      Width = 168
      Height = 77
      BiDiMode = bdLeftToRight
      Caption = 'Only!'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clRed
      Font.Height = -64
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 19
      Top = -8
      Width = 205
      Height = 77
      BiDiMode = bdLeftToRight
      Caption = 'Admin'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clRed
      Font.Height = -64
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
  end
  object PageControl1: TPageControl [2]
    Left = 0
    Top = 73
    Width = 447
    Height = 299
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet2: TTabSheet
      Caption = #1588#1585#1603#1578
      ImageIndex = 1
      object BitBtn3: TBitBtn
        Left = 288
        Top = 8
        Width = 139
        Height = 25
        Caption = #1578#1594#1610#1610#1585' '#1606#1575#1605' '#1588#1585#1603#1578
        TabOrder = 0
        OnClick = BitBtn3Click
      end
    end
    object TabSheet1: TTabSheet
      Caption = #1603#1662#1610' '#1576#1575#1606#1603
      object Label1: TLabel
        Left = 363
        Top = 8
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Caption = #1604#1610#1587#1578' '#1580#1583#1575#1608#1604
      end
      object Label3: TLabel
        Left = 179
        Top = 25
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Caption = #1606#1575#1605' '#1576#1575#1606#1603' '#1605#1576#1583#1575#1569
      end
      object Label4: TLabel
        Left = 179
        Top = 57
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = #1606#1575#1605' '#1576#1575#1606#1603' '#1605#1602#1589#1583
      end
      object Label6: TLabel
        Left = 236
        Top = 128
        Width = 3
        Height = 13
      end
      object SpeedButton1: TSpeedButton
        Left = 256
        Top = 8
        Width = 17
        Height = 14
        Hint = #1580#1583#1575#1608#1604' '#1662#1610#1588#8204#1601#1585#1590
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object CheckListBox1: TCheckListBox
        Left = 254
        Top = 27
        Width = 169
        Height = 237
        BiDiMode = bdLeftToRight
        ItemHeight = 13
        Items.Strings = (
          'ReciptTypes'
          'FormTypes'
          'RptChecks'
          'LookUps'
          'Config'
          'Units'
          'Acts'
          'CodesInProcess'
          'CustomersGroup'
          'Customers'
          'Deficits'
          'Stores'
          'StuffGroups'
          'StuffCoding'
          'Counting'
          'CountingItems'
          'StoreStuffs'
          'TransForms'
          'TransFormItems'
          'UsersStore'
          'UseUnits'
          'Recipts'
          'ReciptItems'
          'ReciptsDeficits'
          'Forms'
          'FormItems'
          'CheckBook'
          'PurchaseEffect'
          'ReciptOnFormsRange'
          'ReciptPurchaseEffect'
          'ScheduleInfo'
          'ScheduleProcItems'
          'ScheduleProCode'
          'ScheduleStuffLossItems'
          'ScheduleTimeLossItems'
          'ScheduleTimePerson'
          'ScheduleTimeTabel'
          'ScheduleTimeWorks'
          'ScheduleType'
          'ScheduleWorksItems'
          'StuffsDeficitsRange'
          'TransFormInfo')
        ParentBiDiMode = False
        TabOrder = 0
        OnDblClick = CheckListBox1DblClick
      end
      object edtSource1: TEdit
        Left = 8
        Top = 22
        Width = 164
        Height = 21
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 1
      end
      object edtDest1: TEdit
        Left = 8
        Top = 54
        Width = 164
        Height = 21
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 2
      end
      object BitBtn1: TBitBtn
        Left = 8
        Top = 88
        Width = 75
        Height = 25
        Caption = #1603#1662#1610
        TabOrder = 3
        OnClick = BitBtn1Click
      end
      object lstDefaults1: TListBox
        Left = 120
        Top = 88
        Width = 121
        Height = 177
        ItemHeight = 13
        Items.Strings = (
          'Acts'
          'CodesInProcess'
          'Counting'
          'CountingItems'
          'CustomersGroup'
          'Customers'
          'Deficits'
          'Stores'
          'StuffGroups'
          'StuffCoding'
          'StoreStuffs'
          'TransForms'
          'TransFormItems'
          'UsersStore'
          'UseUnits'
          'Recipts'
          'ReciptItems'
          'ReciptsDeficits'
          'Forms'
          'FormItems'
          'CheckBook'
          'PurchaseEffect'
          'ReciptOnFormsRange'
          'ReciptPurchaseEffect'
          'ScheduleInfo'
          'ScheduleProcItems'
          'ScheduleProCode'
          'ScheduleStuffLossItems'
          'ScheduleTimeLossItems'
          'ScheduleTimePerson'
          'ScheduleTimeTabel'
          'ScheduleTimeWorks'
          'ScheduleType'
          'ScheduleWorksItems'
          'StuffsDeficitsRange'
          'TransFormInfo')
        TabOrder = 4
        Visible = False
      end
    end
  end
  inherited pnlDown: TPanel
    Top = 372
    Width = 447
    ExplicitTop = 372
    ExplicitWidth = 447
    object BtnDelete: TBitBtn
      Left = 360
      Top = 8
      Width = 75
      Height = 25
      Caption = #1581#1584#1601' '#1575#1591#1604#1575#1593#1575#1578'!'
      TabOrder = 1
      OnClick = BtnDeleteClick
    end
  end
  object tblSrc: TADOTable
    AutoCalcFields = False
    Connection = adcSrc
    LockType = ltReadOnly
    TableDirect = True
    Left = 92
    Top = 177
  end
  object tblTrg: TADOTable
    Connection = adcTarget
    Left = 92
    Top = 225
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 176
    Top = 32
  end
  object adcTarget: TADOConnection
    LoginPrompt = False
    Left = 36
    Top = 289
  end
  object qry4delete: TADOQuery
    Connection = adcTarget
    Parameters = <>
    Left = 92
    Top = 289
  end
  object adcSrc: TADOConnection
    LoginPrompt = False
    Left = 36
    Top = 233
  end
end
