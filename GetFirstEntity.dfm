object GetFirstEntityF: TGetFirstEntityF
  Left = 450
  Top = 208
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1575#1606#1578#1602#1575#1604' '#1605#1608#1580#1608#1583#1740' '#1575#1576#1578#1583#1575#1740' '#1583#1608#1585#1607
  ClientHeight = 450
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesigned
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 473
    Height = 72
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object pnlBank: TPanel
      Left = 0
      Top = 0
      Width = 473
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 394
        Top = 9
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = #1575#1586' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610
      end
      object cmbBank: TComboBox
        Left = 6
        Top = 5
        Width = 385
        Height = 21
        Style = csDropDownList
        DropDownCount = 20
        TabOrder = 0
        OnChange = cmbBankChange
        OnEnter = cmbAllEnter
      end
    end
    object pnlYear: TPanel
      Left = 0
      Top = 41
      Width = 473
      Height = 31
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object lblYear: TLabel
        Left = 394
        Top = 7
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Caption = #1575#1586' '#1587#1575#1604' '#1605#1575#1604#1610
        Visible = False
      end
      object cmbYear: TComboBox
        Left = 7
        Top = 5
        Width = 385
        Height = 21
        Style = csDropDownList
        DropDownCount = 20
        TabOrder = 0
        Visible = False
        OnChange = cmbYearChange
        OnEnter = cmbAllEnter
      end
    end
  end
  object grp2: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 126
    Width = 467
    Height = 173
    Align = alBottom
    Caption = #1605#1608#1580#1608#1583#1740' '#1670#1705#1607#1575#1740#1740' '#1705#1607' '#1605#1606#1578#1602#1604' '#1605#1740' '#1588#1608#1606#1583
    TabOrder = 1
    object Panel5: TPanel
      Left = 2
      Top = 137
      Width = 463
      Height = 34
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object btnCachir: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 168
        Height = 28
        Align = alLeft
        Caption = #1605#1575#1606#1583#1607' '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604' '#1589#1606#1583#1608#1602' '#1608' '#1576#1575#1606#1603#1607#1575
        TabOrder = 0
        OnClick = btnCachirClick
      end
      object btnGetCheck: TBitBtn
        AlignWithMargins = True
        Left = 379
        Top = 3
        Width = 81
        Height = 28
        Align = alRight
        Caption = #1575#1606#1578#1602#1575#1604
        Enabled = False
        TabOrder = 1
        OnClick = btnGetCheckClick
      end
      object btnCust2: TBitBtn
        AlignWithMargins = True
        Left = 249
        Top = 3
        Width = 124
        Height = 28
        Align = alRight
        Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1605#1575#1606#1583#1607' '#1605#1588#1578#1585#1610#1575#1606
        TabOrder = 2
        OnClick = btnCustClick
      end
    end
    object chklstGetCheck: TCheckListBox
      Left = 2
      Top = 15
      Width = 463
      Height = 122
      Align = alClient
      ItemHeight = 13
      Items.Strings = (
        #1670#1603#1607#1575#1610' '#1576#1585#1711#1588#1578#1610' '#1606#1586#1583' '#1589#1606#1583#1608#1602' '
        #1670#1603#1607#1575#1610' '#1606#1586#1583' '#1589#1606#1583#1608#1602
        ' '#1670#1603#1607#1575#1610' '#1606#1586#1583' '#1576#1575#1606#1603
        #1670#1603#1607#1575#1610' '#1578#1590#1605#1610#1606#1610' '#1606#1586#1583' '#1589#1606#1583#1608#1602
        #1670#1603#1607#1575#1610' '#1589#1575#1583#1585#1607' '#1576#1585#1583#1575#1588#1578' '#1606#1588#1583#1607' '#1575#1586' '#1576#1575#1606#1603#1607#1575
        #1605#1608#1580#1608#1583#1740' '#1670#1705#1607#1575#1740' '#1608#1575#1711#1584#1575#1585#1740' '#1576#1607' '#1605#1588#1578#1585#1740#1575#1606
        #1605#1575#1606#1583#1607' '#1587#1601#1578#1607'(107)'
        #1583#1585#1740#1575#1601#1578' '#1590#1605#1575#1606#1578#1606#1575#1605#1607'(120>121)'
        #1670#1705' '#1607#1575#1740' '#1576#1585#1711#1588#1578#1740' '#1608#1575#1711#1584#1575#1585' '#1576#1607' '#1608#1575#1581#1583' '#1581#1602#1608#1602#1740'(183>184)')
      TabOrder = 1
      OnClick = chklstGetCheckClick
    end
  end
  object grpS: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 305
    Width = 467
    Height = 59
    Align = alBottom
    Caption = ' '#1575#1606#1578#1602#1575#1604' '#1575#1591#1604#1575#1593#1575#1578' '
    TabOrder = 2
    object pnl1: TPanel
      Left = 2
      Top = 23
      Width = 463
      Height = 34
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object btnStore: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 117
        Height = 28
        Align = alLeft
        Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1605#1608#1580#1608#1583#1610' '#1575#1606#1576#1575#1585
        TabOrder = 0
        OnClick = btnStoreClick
      end
      object btnCust: TBitBtn
        AlignWithMargins = True
        Left = 126
        Top = 3
        Width = 124
        Height = 28
        Align = alLeft
        Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1605#1575#1606#1583#1607' '#1605#1588#1578#1585#1610#1575#1606
        TabOrder = 1
        OnClick = btnCustClick
      end
      object btnRemainsEarly: TBitBtn
        AlignWithMargins = True
        Left = 256
        Top = 3
        Width = 169
        Height = 28
        Align = alLeft
        Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1605#1575#1606#1583#1607' '#1575#1576#1578#1583#1575#1610' '#1587#1575#1604
        TabOrder = 2
        OnClick = btnRemainsEarlyClick
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 419
    Width = 473
    Height = 31
    Align = alBottom
    TabOrder = 3
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 75
      Height = 23
      Align = alLeft
      Cancel = True
      Caption = #1576#1575#1586#1711#1588#1578
      ModalResult = 1
      TabOrder = 0
    end
  end
  object chkMultiYare: TCheckBox
    AlignWithMargins = True
    Left = 3
    Top = 370
    Width = 467
    Height = 20
    Align = alBottom
    Caption = #1605#1575#1606#1583#1607' '#1605#1588#1578#1585#1740#1575#1606' '#1583#1585' '#1605#1593#1585#1601#1740' '#1605#1588#1578#1585#1740#1575#1606' '#1575#1606#1578#1602#1575#1604' '#1583#1575#1583#1607' '#1606#1600#1600#1600#1600#1588#1608#1583
    TabOrder = 4
    OnClick = chkMultiYareClick
  end
  object chkSellsEmporium: TCheckBox
    AlignWithMargins = True
    Left = 3
    Top = 396
    Width = 467
    Height = 20
    Align = alBottom
    Caption = #1605#1575#1606#1583#1607' '#1605#1588#1578#1585#1740#1575#1606' '#1576#1607' '#1578#1601#1705#1740#1705' '#1605#1585#1705#1586' '#1601#1585#1608#1588' '#1575#1606#1578#1602#1575#1604' '#1583#1575#1583#1607' '#1588#1608#1583
    TabOrder = 5
    OnClick = chkMultiYareClick
  end
  object grpMandeh: TGroupBox
    Left = 0
    Top = 72
    Width = 473
    Height = 51
    Align = alClient
    Caption = #1605#1575#1606#1583#1607' '#1581#1587#1575#1576#1607#1575#1740#1740' '#1705#1607' '#1605#1606#1578#1602#1604' '#1605#1740' '#1588#1608#1606#1583
    TabOrder = 6
    object chkBank1: TCheckBox
      AlignWithMargins = True
      Left = 394
      Top = 18
      Width = 74
      Height = 28
      Align = alRight
      Caption = ' '#1576#1575#1606#1705#1607#1575
      TabOrder = 0
    end
    object chkCash2: TCheckBox
      AlignWithMargins = True
      Left = 272
      Top = 18
      Width = 116
      Height = 28
      Align = alRight
      Caption = #1589#1606#1583#1608#1602#1583#1575#1585#1607#1575
      TabOrder = 1
    end
    object chkLoan7: TCheckBox
      AlignWithMargins = True
      Left = 150
      Top = 18
      Width = 116
      Height = 28
      Align = alRight
      Caption = #1578#1587#1607#1740#1604#1575#1578
      TabOrder = 2
    end
    object chkSupplier17: TCheckBox
      AlignWithMargins = True
      Left = 70
      Top = 18
      Width = 74
      Height = 28
      Align = alRight
      Caption = #1705#1575#1585#1662#1585#1583#1575#1586#1575#1606
      TabOrder = 3
    end
  end
  object spGetFirstEntity: TADOStoredProc
    Connection = DmF.adcBSell
    CommandTimeout = 0
    ProcedureName = 'GetFirstEntity;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@OldBankName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end
      item
        Name = '@YearNo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@YearID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ServerID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@YearIDFrom'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 70
    Top = 17
  end
  object qry: TADOQuery
    Connection = DmF.adcBSell
    CommandTimeout = 0
    Parameters = <>
    Left = 350
    Top = 32
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 249
    Top = 32
    object N121: TMenuItem
      Caption = ' 1- '#1591#1576#1602' '#1585#1608#1588' '#1580#1575#1585#1610
      OnClick = N121Click
    end
    object N21: TMenuItem
      Caption = ' 2- '#1591#1576#1602' '#1576#1607#1575#1610' '#1582#1575#1604#1589'('#1575#1586' '#1575#1608#1604#1740#1606' '#1587#1575#1604' '#1605#1575#1604#1740' '#1578#1575' '#1587#1575#1604' '#1575#1606#1578#1582#1575#1576#1740')'
      OnClick = N21Click
    end
  end
  object popGetFirstEntity: TPopupMenu
    AutoHotkeys = maManual
    Left = 113
    Top = 128
    object GetFirstEntity: TMenuItem
      Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1605#1608#1580#1608#1583#1610' '#1575#1606#1576#1575#1585'  '#1608' ('#1575#1606#1576#1575#1585' '#1588#1606#1575#1587#1575#1740#1740' '#1608#1740#1688#1607')'
      Hint = 'GetFirstEntity;1'
      OnClick = GetFirstEntityClick
    end
    object GetFirstEntityMalek: TMenuItem
      Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1605#1608#1580#1608#1583#1610' '#1575#1606#1576#1575#1585' '#1576#1585' '#1575#1587#1575#1587' '#1605#1588#1578#1585#1610' 3('#1605#1575#1604#1603')'#8207
      Hint = 'GetFirstEntityMalek;1'
      OnClick = GetFirstEntityClick
    end
    object mnuGetFirstEntityUseUnitID: TMenuItem
      Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1605#1608#1580#1608#1583#1610' '#1575#1606#1576#1575#1585' '#1576#1585' '#1575#1587#1575#1587' '#1605#1581#1604' '#1605#1589#1585#1601
      Hint = 'GetFirstEntityUseUnitID;1'
      OnClick = GetFirstEntityClick
    end
    object mnuGetFirstEntityControlCode: TMenuItem
      Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1605#1608#1580#1608#1583#1610' '#1575#1606#1576#1575#1585' '#1576#1585' '#1575#1587#1575#1587' '#1588#1605#1575#1585#1607' '#1585#1575#1607#1606#1605#1575
      Hint = 'GetFirstEntityControlCode;1'
      OnClick = GetFirstEntityClick
    end
  end
end
