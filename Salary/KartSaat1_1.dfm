inherited KartSaat1_1F: TKartSaat1_1F
  Left = 321
  Top = 88
  Caption = #1583#1585#1610#1575#1601#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1575#1585#1603#1585#1583' '#1575#1586' '#1603#1575#1585#1578' '#1587#1575#1593#1578' '#1603#1575#1585#1575'(DOS)'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    inherited BtnReject: TBitBtn
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 690
      Top = 6
      Width = 75
      Height = 25
      Action = actTransfer
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1578#1602#1575#1604
      TabOrder = 0
    end
  end
  inherited Panel2: TPanel
    object yrcmbx1: TYearComboBox
      Left = 16
      Top = 15
      Width = 112
      Height = 32
      Align = alCustom
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 0
      YearID = 0
      YearsParam = 0
      ADOConnection = DmF.adcsalary
    end
  end
  inherited Panel3: TPanel
    Top = 89
    Height = 387
    ExplicitTop = 89
    ExplicitHeight = 387
    object SpeedButton1: TSpeedButton
      Left = 248
      Top = 32
      Width = 23
      Height = 22
      Hint = #1575#1606#1578#1582#1575#1576' '#1605#1587#1610#1585' '#1575#1591#1604#1575#1593#1575#1578
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000420B0000420B0000000100000001000000730800087B
        080008841000088C100008A51800108C2100109C210018AD290031C64A0042D6
        6B0052D67B005AE78C0018A5C60018ADD60021ADD60029ADD60031B5DE0052BD
        E7004AC6E7004AC6EF009CDEEF00ADDEEF006BDEF70073DEF700A5EFF700FF00
        FF0084EFFF008CEFFF0094EFFF008CF7FF0094F7FF00A5F7FF0094FFFF009CFF
        FF00ADFFFF00C6FFFF00D6FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00191919191919
        19191919191919191919190F100E191919191919191919191919190F141A120E
        0C0C0C19191919191919190F11212017171717120E0C19191919190F11221D1B
        1B1B171717130E191919190F0F151E1E1B1B1B1B171713191919190F170F211D
        1D1D1B1B1B17170C1919190F1E0F1518181F1B1B1B17000C1919190F21170F0C
        0C0C151D1A000B000C19190F211E171717160F15000A09080019190F211E1E1E
        1E17170F0C0508060C19190F23202124241B1C17170207021919190E14232314
        0D0C0C0C0C03041919191919100F0C0C19191919030402191919191919191919
        1900010303011919191919191919191919191919191919191919}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object Label1: TLabel
      Left = 146
      Top = 16
      Width = 125
      Height = 13
      Caption = #1605#1587#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1575#1585#1578' '#1587#1575#1593#1578
    end
    object Label2: TLabel
      Left = 147
      Top = 72
      Width = 124
      Height = 13
      Caption = #1604#1610#1587#1578' '#1603#1575#1585#1603#1585#1583#1607#1575#1610' '#1662#1610#1583#1575' '#1588#1583#1607
    end
    object edtPath: TEdit
      Tag = 111
      Left = 24
      Top = 32
      Width = 221
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 0
      OnKeyDown = edtPathKeyDown
    end
    object Memo1: TMemo
      Left = 288
      Top = 24
      Width = 473
      Height = 241
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        #1605#1585#1575#1581#1604' '#1575#1606#1578#1602#1575#1604' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1575#1585#1603#1585#1583' '#1575#1586' '#1603#1575#1585#1578' '#1587#1575#1593#1578' '#1576#1607' '#1606#1585#1605#8204#1575#1601#1586#1575#1585':'
        ''
        '        1. '#1605#1587#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1575#1585#1578' '#1587#1575#1593#1578' '#1585#1575' '#1605#1588#1582#1589' '#1603#1606#1610#1583'.'
        
          '        2. '#1604#1610#1587#1578' '#1605#1608#1585#1583' '#1606#1592#1585' '#1585#1575' '#1575#1586' '#1602#1587#1605#1578' "'#1604#1610#1587#1578' '#1603#1575#1585#1603#1585#1583#1607#1575#1610' '#1662#1610#1583#1575' '#1588#1583#1607'" '#1575#1606 +
          #1578#1582#1575#1576' '#1603#1606#1610#1583'.'
        
          '        3. '#1583#1585' '#1589#1608#1585#1578' '#1606#1610#1575#1586' '#1576#1607' '#1581#1584#1601' '#1603#1575#1585#1603#1585#1583#1607#1575#1610' '#1605#1585#1576#1608#1591' '#1576#1607' '#1605#1575#1607' '#1605#1608#1585#1583' '#1606#1592#1585' '#1603 +
          #1607' '#1602#1576#1604#1575#1611' '#1583#1585' '#1587#1610#1587#1578#1605' '#1579#1576#1578' '
        #1588#1583#1607' '#1711#1586#1610#1606#1607' '#1605#1585#1576#1608#1591#1607' '#1585#1575' '#1578#1610#1603' '#1603#1606#1610#1583'.'
        '        4. '#1583#1603#1605#1607' '#1575#1606#1578#1602#1575#1604' '#1585#1575' '#1576#1586#1606#1610#1583'.')
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object lstListFiles: TListBox
      Left = 24
      Top = 88
      Width = 249
      Height = 177
      Color = 12189695
      ItemHeight = 13
      TabOrder = 2
      OnClick = lstListFilesClick
    end
    object memWarning: TMemo
      Tag = 111
      Left = 2
      Top = 307
      Width = 782
      Height = 78
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object chkDelPreviousFunctions: TCheckBox
      Left = 560
      Top = 280
      Width = 201
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1603#1575#1585#1603#1585#1583#1607#1575#1610' '#1602#1576#1604#1610' &'#1581#1584#1601' '#1588#1608#1606#1583'.'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
  end
  object ToolBar1: TToolBar [3]
    Left = 0
    Top = 53
    Width = 786
    Height = 36
    BorderWidth = 2
    ButtonHeight = 21
    ButtonWidth = 54
    Caption = 'ToolBar1'
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    EdgeInner = esLowered
    ShowCaptions = True
    TabOrder = 3
    object ToolButton1: TToolButton
      Tag = 1
      Left = 0
      Top = 0
      Caption = #1601#1585#1608#1585#1583#1610#1606
      Grouped = True
      ImageIndex = 0
      Style = tbsCheck
    end
    object ToolButton2: TToolButton
      Tag = 2
      Left = 54
      Top = 0
      Caption = #1575#1585#1583#1610#1576#1607#1588#1578
      Grouped = True
      ImageIndex = 1
      Style = tbsCheck
    end
    object ToolButton3: TToolButton
      Tag = 3
      Left = 108
      Top = 0
      Caption = #1582#1585#1583#1575#1583
      Grouped = True
      ImageIndex = 2
      Style = tbsCheck
    end
    object ToolButton4: TToolButton
      Tag = 4
      Left = 162
      Top = 0
      Caption = #1578#1610#1585
      Grouped = True
      ImageIndex = 3
      Style = tbsCheck
    end
    object ToolButton5: TToolButton
      Tag = 5
      Left = 216
      Top = 0
      Caption = #1605#1585#1583#1575#1583
      Grouped = True
      ImageIndex = 4
      Style = tbsCheck
    end
    object ToolButton6: TToolButton
      Tag = 6
      Left = 270
      Top = 0
      Caption = #1588#1607#1585#1610#1608#1585
      Grouped = True
      ImageIndex = 5
      Style = tbsCheck
    end
    object ToolButton7: TToolButton
      Tag = 7
      Left = 324
      Top = 0
      Caption = #1605#1607#1585
      Grouped = True
      ImageIndex = 6
      Style = tbsCheck
    end
    object ToolButton8: TToolButton
      Tag = 8
      Left = 378
      Top = 0
      Caption = #1570#1576#1575#1606
      Grouped = True
      ImageIndex = 7
      Style = tbsCheck
    end
    object ToolButton9: TToolButton
      Tag = 9
      Left = 432
      Top = 0
      Caption = #1570#1584#1585
      Grouped = True
      ImageIndex = 8
      Style = tbsCheck
    end
    object ToolButton10: TToolButton
      Tag = 10
      Left = 486
      Top = 0
      Caption = #1583#1610
      Grouped = True
      ImageIndex = 9
      Style = tbsCheck
    end
    object ToolButton11: TToolButton
      Tag = 11
      Left = 540
      Top = 0
      Caption = #1576#1607#1605#1606
      Grouped = True
      ImageIndex = 10
      Style = tbsCheck
    end
    object ToolButton12: TToolButton
      Tag = 12
      Left = 594
      Top = 0
      Caption = #1575#1587#1601#1606#1583
      Grouped = True
      ImageIndex = 11
      Style = tbsCheck
    end
  end
  inherited ActionList: TActionList
    object actTransfer: TAction
      Caption = #1575#1606#1578#1602#1575#1604
      Hint = ' '
      ShortCut = 117
      OnExecute = actTransferExecute
    end
  end
  object qryPersonels: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     PersonelNo'
      'FROM Pay.PersonelInfo')
    Left = 440
    Top = 261
    object qryPersonelsPersonelNo: TIntegerField
      FieldName = 'PersonelNo'
    end
  end
  object qryFunctions: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Month'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Years'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *   FROM Pay.Functions WHERE     Mounth =  :Month'
      'AND (YearID = :YearID)'
      'AND (Years = :Years)')
    Left = 344
    Top = 261
  end
end
