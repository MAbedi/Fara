inherited GetCheckPostOverallTypeF: TGetCheckPostOverallTypeF
  ActiveControl = edtFormNumber
  Caption = #1601#1585#1575#1582#1608#1575#1606#1740' '#1605#1580#1608#1586
  ClientHeight = 185
  ClientWidth = 350
  ExplicitWidth = 356
  ExplicitHeight = 214
  DesignSize = (
    350
    185)
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 146
    Width = 350
    Height = 2
    ExplicitTop = 119
    ExplicitWidth = 353
    ExplicitHeight = 2
  end
  inherited Panel1: TPanel
    Width = 350
    Height = 39
    TabOrder = 3
    ExplicitWidth = 350
    ExplicitHeight = 39
    inherited Image1: TImage
      Left = 306
      Top = 6
      ExplicitLeft = 309
      ExplicitTop = 6
    end
    inherited lblTopic0: TLabel
      Left = 197
      Width = 79
      Caption = #1601#1585#1575#1582#1608#1575#1606#1740' '#1605#1580#1608#1586
      ExplicitLeft = 200
      ExplicitWidth = 79
    end
    inherited lblTopic1: TLabel
      Left = 107
      Top = 20
      Visible = False
      ExplicitLeft = 110
      ExplicitTop = 20
    end
  end
  inherited pnlDown: TPanel
    Top = 152
    Width = 350
    Height = 33
    TabOrder = 4
    ExplicitTop = 152
    ExplicitWidth = 350
    ExplicitHeight = 33
    inherited btnClose: TBitBtn
      Top = 3
      ModalResult = 8
      TabOrder = 1
      ExplicitTop = 3
    end
    object btnok: TBitBtn
      AlignWithMargins = True
      Left = 271
      Top = 4
      Width = 75
      Height = 25
      Hint = ' '
      Align = alRight
      Caption = #1578#1571#1610#1610#1600#1600#1600#1583
      ModalResult = 1
      TabOrder = 0
    end
  end
  object rdoType: TRadioGroup [3]
    Left = 0
    Top = 111
    Width = 350
    Height = 38
    Align = alTop
    Caption = #1606#1581#1608#1607' '#1589#1583#1608#1585
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      #1578#1580#1605#1740#1593#1740
      #1578#1601#1705#1740#1705#1740)
    TabOrder = 2
  end
  inline frCustomer: TfrLookup_nonDBF [4]
    Left = 0
    Top = 73
    Width = 350
    Height = 38
    Hint = #1576#1585#1575#1610' '#1580#1587#1578#1580#1608' '#1575#1586' '#1603#1604#1610#1583' space '#1575#1587#1578#1601#1575#1583#1607' '#1603#1606#1610#1583'.'
    Align = alTop
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    ExplicitTop = 73
    ExplicitWidth = 350
    ExplicitHeight = 38
    inherited lblCaption: TLabel
      Left = 301
      Width = 29
      ExplicitLeft = 245
      ExplicitWidth = 29
    end
    inherited cmbLookup: TComboBox
      Top = 11
      Width = 287
      Font.Charset = ARABIC_CHARSET
      Font.Height = -13
      ParentFont = False
      ExplicitTop = 11
      ExplicitWidth = 287
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 39
    Width = 350
    Height = 34
    Align = alTop
    TabOrder = 0
    DesignSize = (
      350
      34)
    object Label1: TLabel
      Left = 293
      Top = 8
      Width = 50
      Height = 13
      Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
    end
    object SpeedButton1: TSpeedButton
      Tag = 19
      Left = 137
      Top = 6
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object edtFormNumber: TEdit
      Left = 166
      Top = 7
      Width = 121
      Height = 21
      TabOrder = 0
      OnExit = edtFormNumberExit
    end
  end
  inherited ActionList1: TActionList
    Top = 8
    object actOk: TAction
      Caption = 'actOk'
      ShortCut = 119
      OnExecute = actOkExecute
    end
  end
  object qry4Locate: TADOQuery
    Connection = DmF.adcBSell
    Parameters = <>
    Left = 192
    Top = 80
  end
end
