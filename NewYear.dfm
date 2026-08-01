object NewYearF: TNewYearF
  Left = 505
  Top = 166
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1575#1610#1580#1575#1583' '#1576#1575#1606#1705' '#1575#1591#1604#1575#1593#1575#1578#1610' '#1608' '#1587#1575#1604' '#1605#1575#1604#1610
  ClientHeight = 378
  ClientWidth = 360
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    AlignWithMargins = True
    Left = 3
    Top = 54
    Width = 354
    Height = 245
    Align = alClient
    ExplicitLeft = -13
    ExplicitTop = -106
    ExplicitHeight = 237
  end
  object Label2: TLabel
    Left = 286
    Top = 64
    Width = 47
    Height = 13
    Alignment = taRightJustify
    Caption = #1606#1575#1605' '#1588#1585#1603#1578
  end
  object Label3: TLabel
    Left = 286
    Top = 89
    Width = 34
    Height = 13
    Alignment = taRightJustify
    Caption = #1606#1575#1605' '#1576#1575#1606#1603
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 360
    Height = 51
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 111
      Top = 17
      Width = 95
      Height = 16
      Caption = #1587#1575#1604' '#1605#1575#1604#1610' '#1580#1583#1610#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtYearNo: TMaskEdit
      Left = 23
      Top = 11
      Width = 66
      Height = 27
      Color = clSkyBlue
      EditMask = '9999'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentFont = False
      TabOrder = 0
      Text = '1403'
      OnChange = edtYearNoChange
    end
    object UpDown1: TUpDown
      Left = 89
      Top = 11
      Width = 17
      Height = 27
      Associate = edtYearNo
      Min = 1300
      Max = 1500
      Position = 1403
      TabOrder = 1
      Thousands = False
    end
  end
  object CheckBox1: TCheckBox
    AlignWithMargins = True
    Left = 0
    Top = 302
    Width = 332
    Height = 35
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 28
    Margins.Bottom = 0
    Align = alBottom
    Caption = 
      #1575#1606#1578#1602#1575#1604' '#1605#1575#1606#1583#1607#8207' '#1605#1588#1578#1585#1610#1575#1606' '#1608' '#1605#1608#1580#1608#1583#1610' '#1603#1575#1604#1575#1607#1575' '#1608' '#1605#1608#1580#1608#1583#1610' '#1670#1603#1607#1575' '#1608' '#1583#1575#1585#1575#1740#1740' '#1579#1575#1576 +
      #1578' '#1575#1606#1580#1575#1605' '#1588#1608#1583'.'
    Checked = True
    State = cbChecked
    TabOrder = 3
    WordWrap = True
  end
  object edtCompanyName: TEdit
    Left = 16
    Top = 60
    Width = 264
    Height = 21
    TabOrder = 0
  end
  object edtdbName: TEdit
    Left = 16
    Top = 85
    Width = 264
    Height = 21
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 337
    Width = 360
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alLeft
      Cancel = True
      Caption = #1576#1575#1586#1711#1588#1578
      ModalResult = 1
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 282
      Top = 6
      Width = 75
      Height = 29
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alRight
      Caption = #1575#1610#1580#1575#1583
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object ChkInterdicts: TCheckBox
    Left = 28
    Top = 261
    Width = 305
    Height = 17
    Align = alCustom
    Caption = #1575#1591#1604#1575#1593#1575#1578' '#1575#1581#1603#1575#1605' '#1603#1575#1585#1711#1586#1610#1606#1610' '#1576#1607' '#1587#1575#1604' '#1605#1575#1604#1610' '#1580#1583#1610#1583' '#1605#1606#1578#1602#1604' '#1588#1608#1583'.'#8207
    Checked = True
    State = cbChecked
    TabOrder = 5
    OnClick = ChkInterdictsHistoryClick
  end
  object ChkInterdictsHistory: TCheckBox
    Left = 28
    Top = 223
    Width = 305
    Height = 17
    Align = alCustom
    Caption = #1587#1608#1575#1576#1602' '#1575#1581#1603#1575#1605' '#1603#1575#1585#1711#1586#1610#1606#1610' '#1605#1606#1578#1602#1604' '#1588#1608#1583'.'#8207
    Checked = True
    State = cbChecked
    TabOrder = 6
    OnClick = ChkInterdictsHistoryClick
  end
  object chkStateSmaller50: TCheckBox
    Left = 28
    Top = 242
    Width = 305
    Height = 17
    Align = alCustom
    Caption = #1575#1606#1578#1602#1575#1604' '#1607#1605#1607' '#1662#1585#1587#1606#1604#1740' '#1705#1607' '#1581#1705#1605' '#1662#1740#1588' '#1606#1608#1740#1587' '#1583#1575#1585#1606#1583
    TabOrder = 7
    OnClick = ChkInterdictsHistoryClick
  end
  object ChkBaseInfo: TCheckBox
    Left = 20
    Top = 280
    Width = 313
    Height = 17
    Caption = #1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1575#1586' '#1587#1575#1604' '#1605#1575#1604#1610' '#1580#1575#1585#1610' '#1576#1607' '#1587#1575#1604' '#1605#1575#1604#1610' '#1580#1583#1610#1583' '#1605#1606#1578#1602#1604' '#1588#1608#1583'.'#8207
    Checked = True
    State = cbChecked
    TabOrder = 8
    OnClick = ChkInterdictsHistoryClick
  end
  object chkCoding: TCheckBox
    Left = 236
    Top = 127
    Width = 97
    Height = 17
    Caption = #1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1583#1575#1585#1610
    Checked = True
    State = cbChecked
    TabOrder = 9
  end
  object chkDec: TCheckBox
    Left = 140
    Top = 184
    Width = 193
    Height = 17
    Caption = #1578#1608#1590#1610#1581#1575#1578' '#1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1583#1575#1585#1610
    Checked = True
    State = cbChecked
    TabOrder = 10
  end
  object chkHesabres: TCheckBox
    Left = 140
    Top = 146
    Width = 193
    Height = 17
    Caption = #1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1585#1587#1610
    Checked = True
    State = cbChecked
    TabOrder = 11
  end
  object chkBudget: TCheckBox
    Left = 140
    Top = 108
    Width = 193
    Height = 17
    Caption = #1603#1583#1610#1606#1711' '#1576#1608#1583#1580#1607
    Checked = True
    State = cbChecked
    TabOrder = 12
  end
  object chkSoratMali: TCheckBox
    Left = 140
    Top = 165
    Width = 193
    Height = 17
    Caption = #1603#1583#1610#1606#1711' '#1589#1608#1585#1578#1607#1575#1610' '#1605#1575#1604#1610
    Checked = True
    State = cbChecked
    TabOrder = 13
  end
  object chkList: TCheckBox
    Left = 76
    Top = 203
    Width = 257
    Height = 18
    Caption = #1575#1591#1604#1575#1593#1575#1578' '#1606#1581#1608#1607' '#1587#1610#1587#1578#1605' '#1607#1586#1610#1606#1607' '#1608' '#1604#1610#1587#1578' '#1578#1605#1575#1605' '#1588#1583#1607
    Checked = True
    State = cbChecked
    TabOrder = 14
  end
  object adcNewData: TADOConnection
    CommandTimeout = 0
    ConnectionTimeout = 0
    LoginPrompt = False
    AfterConnect = adcNewDataAfterConnect
    BeforeConnect = adcNewDataBeforeConnect
    Left = 128
    Top = 24
  end
  object qry: TADOQuery
    Connection = adcNewData
    CommandTimeout = 0
    Parameters = <>
    Left = 184
    Top = 16
  end
  object qryStore: TADOQuery
    Connection = adcNewData
    CommandTimeout = 0
    Parameters = <>
    Left = 56
    Top = 48
  end
  object qry4Loop: TADOQuery
    Connection = DmF.adcBSell
    CommandTimeout = 0
    Parameters = <>
    Left = 248
    Top = 16
  end
  object ADOCmdUpDate: TADOCommand
    CommandTimeout = 0
    Connection = adcNewData
    ExecuteOptions = [eoExecuteNoRecords]
    Parameters = <>
    ParamCheck = False
    Left = 140
    Top = 73
  end
end
