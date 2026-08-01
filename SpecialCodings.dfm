inherited SpecialCodingsF: TSpecialCodingsF
  Left = 392
  Top = 196
  Caption = #1588#1605#1575#1585#1607' '#1588#1575#1587#1740
  ClientHeight = 364
  ClientWidth = 733
  ExplicitWidth = 749
  ExplicitHeight = 403
  DesignSize = (
    733
    364)
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 219
    Width = 733
    Height = 15
    Align = alBottom
    ExplicitLeft = 8
    ExplicitTop = 147
    ExplicitWidth = 741
    ExplicitHeight = 15
  end
  object Label40: TLabel [1]
    Left = -5
    Top = 85
    Width = 13
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'C4'
    ParentShowHint = False
    ShowHint = False
    ExplicitLeft = 11
  end
  object Label2: TLabel [2]
    Left = 243
    Top = 85
    Width = 13
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'C5'
    ParentShowHint = False
    ShowHint = False
    ExplicitLeft = 259
  end
  object Label3: TLabel [3]
    Left = 485
    Top = 85
    Width = 13
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'C6'
    ParentShowHint = False
    ShowHint = False
    ExplicitLeft = 501
  end
  object Label4: TLabel [4]
    Left = -5
    Top = 118
    Width = 13
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'C7'
    ParentShowHint = False
    ShowHint = False
    ExplicitLeft = 11
  end
  object Label5: TLabel [5]
    Left = 243
    Top = 118
    Width = 13
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'C8'
    ParentShowHint = False
    ShowHint = False
    ExplicitLeft = 259
  end
  object Label6: TLabel [6]
    Left = 485
    Top = 118
    Width = 13
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'C9'
    ParentShowHint = False
    ShowHint = False
    ExplicitLeft = 501
  end
  object Label7: TLabel [7]
    Left = -11
    Top = 151
    Width = 19
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'C10'
    ParentShowHint = False
    ShowHint = False
    ExplicitLeft = 5
  end
  object Label8: TLabel [8]
    Left = 237
    Top = 151
    Width = 19
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'C11'
    ParentShowHint = False
    ShowHint = False
    ExplicitLeft = 253
  end
  object Label9: TLabel [9]
    Left = 479
    Top = 151
    Width = 19
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'C12'
    ParentShowHint = False
    ShowHint = False
    ExplicitLeft = 495
  end
  object Label10: TLabel [10]
    Left = 177
    Top = 184
    Width = 79
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'SERIAL NUMBER'
    ParentShowHint = False
    ShowHint = False
    ExplicitLeft = 193
  end
  object btnSerial: TSpeedButton [11]
    Tag = 1
    Left = 477
    Top = 180
    Width = 23
    Height = 22
    Anchors = [akTop, akRight]
    Caption = '...'
    OnClick = btnSerialClick
    ExplicitLeft = 493
  end
  object Label11: TLabel [12]
    Left = 0
    Top = 206
    Width = 733
    Height = 13
    Align = alBottom
    Caption = #1705#1575#1585#1575#1705#1578#1585' =C'
    ParentShowHint = False
    ShowHint = False
    ExplicitLeft = 702
    ExplicitTop = 218
    ExplicitWidth = 47
  end
  inherited Panel1: TPanel
    Width = 733
    TabOrder = 2
    ExplicitLeft = 96
    ExplicitTop = 216
    ExplicitWidth = 741
    DesignSize = (
      733
      73)
    inherited Image1: TImage
      Left = 671
      ExplicitLeft = 687
    end
    inherited lblTopic0: TLabel
      Left = 574
      Top = 9
      Width = 77
      Caption = #1588#1605#1575#1585#1607' '#1588#1575#1587#1740
      ExplicitLeft = 590
      ExplicitTop = 9
      ExplicitWidth = 77
    end
    inherited lblTopic1: TLabel
      Left = 578
      Top = 28
      Visible = False
      ExplicitLeft = 594
      ExplicitTop = 28
    end
    object Label1: TLabel
      Left = -8
      Top = 43
      Width = 173
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'WMI(World Manufacturer Identifier)'
      ParentShowHint = False
      ShowHint = True
      ExplicitLeft = 8
    end
    object Edit1: TEdit
      Left = 187
      Top = 40
      Width = 58
      Height = 21
      TabOrder = 0
      Text = 'N42'
      OnChange = cmbChar4Change
    end
  end
  inherited pnlDown: TPanel
    Top = 327
    Width = 733
    ExplicitTop = 362
    ExplicitWidth = 741
    inherited btnClose: TBitBtn
      ModalResult = 2
    end
    object newPanel: TPanel
      Left = 655
      Top = 1
      Width = 85
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      Caption = '`'
      TabOrder = 1
      DesignSize = (
        85
        35)
      object BitBtn9: TBitBtn
        Left = 5
        Top = 5
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        ModalResult = 1
        TabOrder = 0
      end
    end
    object okPanel: TPanel
      Left = 484
      Top = 1
      Width = 163
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 492
    end
  end
  object cmbChar4: TComboBox [15]
    Tag = 4
    Left = 14
    Top = 81
    Width = 215
    Height = 21
    AutoDropDown = True
    Anchors = [akTop, akRight]
    BiDiMode = bdLeftToRight
    Color = clWhite
    ParentBiDiMode = False
    TabOrder = 0
    Text = 'cmbChar4'
    OnChange = cmbChar4Change
  end
  object pnlBigText: TPanel [16]
    AlignWithMargins = True
    Left = 3
    Top = 237
    Width = 727
    Height = 87
    Align = alBottom
    BevelOuter = bvNone
    BiDiMode = bdLeftToRight
    Caption = 'N420'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clGreen
    Font.Height = -64
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
    ExplicitLeft = 0
    ExplicitTop = 275
    ExplicitWidth = 741
  end
  object cmbChar5: TComboBox [17]
    Tag = 4
    Left = 259
    Top = 81
    Width = 215
    Height = 21
    AutoDropDown = True
    Anchors = [akTop, akRight]
    BiDiMode = bdLeftToRight
    Color = clWhite
    ParentBiDiMode = False
    TabOrder = 4
    Text = 'cmbChar5'
    OnChange = cmbChar4Change
  end
  object cmbChar6: TComboBox [18]
    Tag = 4
    Left = 502
    Top = 81
    Width = 215
    Height = 21
    AutoDropDown = True
    Anchors = [akTop, akRight]
    BiDiMode = bdLeftToRight
    Color = clWhite
    ParentBiDiMode = False
    TabOrder = 5
    Text = 'cmbChar6'
    OnChange = cmbChar4Change
  end
  object cmbChar7: TComboBox [19]
    Tag = 4
    Left = 14
    Top = 114
    Width = 215
    Height = 21
    AutoDropDown = True
    Anchors = [akTop, akRight]
    BiDiMode = bdLeftToRight
    Color = clWhite
    ParentBiDiMode = False
    TabOrder = 6
    Text = 'cmbChar7'
    OnChange = cmbChar4Change
  end
  object cmbChar8: TComboBox [20]
    Tag = 4
    Left = 259
    Top = 114
    Width = 215
    Height = 21
    AutoDropDown = True
    Anchors = [akTop, akRight]
    BiDiMode = bdLeftToRight
    Color = clWhite
    ParentBiDiMode = False
    TabOrder = 7
    Text = 'cmbChar8'
    OnChange = cmbChar4Change
  end
  object cmbChar9: TComboBox [21]
    Tag = 4
    Left = 502
    Top = 114
    Width = 215
    Height = 21
    AutoDropDown = True
    Anchors = [akTop, akRight]
    BiDiMode = bdLeftToRight
    Color = clWhite
    ParentBiDiMode = False
    TabOrder = 8
    Text = 'cmbChar9'
    OnChange = cmbChar4Change
  end
  object cmbChar10: TComboBox [22]
    Tag = 4
    Left = 14
    Top = 147
    Width = 215
    Height = 21
    AutoDropDown = True
    Anchors = [akTop, akRight]
    BiDiMode = bdLeftToRight
    Color = clWhite
    ParentBiDiMode = False
    TabOrder = 9
    Text = 'cmbChar10'
    OnChange = cmbChar4Change
  end
  object cmbChar11: TComboBox [23]
    Tag = 4
    Left = 259
    Top = 147
    Width = 215
    Height = 21
    AutoDropDown = True
    Anchors = [akTop, akRight]
    BiDiMode = bdLeftToRight
    Color = clWhite
    ParentBiDiMode = False
    TabOrder = 10
    Text = 'cmbChar11'
    OnChange = cmbChar4Change
  end
  object cmbChar12: TComboBox [24]
    Tag = 4
    Left = 502
    Top = 147
    Width = 215
    Height = 21
    AutoDropDown = True
    Anchors = [akTop, akRight]
    BiDiMode = bdLeftToRight
    Color = clWhite
    ParentBiDiMode = False
    TabOrder = 11
    Text = 'cmbChar12'
    OnChange = cmbChar4Change
  end
  object edtSERIAL: TEdit [25]
    Left = 272
    Top = 180
    Width = 215
    Height = 21
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 12
    Text = 'edtSERIAL'
    OnChange = cmbChar4Change
  end
  inherited ActionList1: TActionList
    Left = 407
    Top = 6
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
    end
    object actSearch: TAction
      Caption = #1580#1587#1578#1580#1608
    end
    object actExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
    end
    object actOther: TAction
      Caption = #1587#1575#1610#1585
    end
  end
end
