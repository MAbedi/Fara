inherited QuotaPostF: TQuotaPostF
  Left = 426
  Top = 206
  ActiveControl = mskDate
  Caption = #1579#1576#1578' '#1575#1578#1608#1605#1575#1578#1610#1603' '#1581#1608#1575#1604#1607' '#1587#1607#1605#1610#1607#8207#1575#1610
  ClientHeight = 517
  ClientWidth = 776
  OnResize = FormResize
  ExplicitWidth = 788
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    Width = 776
    ExplicitWidth = 776
    object btnSort: TBitBtn
      Left = 94
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576' '
      TabOrder = 1
    end
    object btnSearch_: TBitBtn
      Left = 172
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00636B
        7300C69C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006394B500218C
        EF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0042A5
        FF00218CEF007B849400CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052BD
        FF005ABDFF00218CEF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
        FF0052BDFF0042A5FF00218CEF0084849400CE9C9400FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0052BDFF005ABDFF003184D60052636B00FF00FF009C6B6B00CEA5
        9C00D6B5A500CE9C9C00C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0031A5FF0052BDFF00C6CEDE009C9C9C00AD8C8400E7D6BD00FFFF
        D600FFFFDE00FFFFD600EFDEC600FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00C6ADAD00CEA59400FFE7BD00FFF7CE00FFFF
        D600FFFFD600FFFFDE00FFFFE700FFFFFF00C6A5A500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00BD8C8C00EFDEB500F7D6AD00FFF7CE00FFFF
        D600FFFFDE00FFFFEF00FFFFF700FFFFFF00F7EFDE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00F7CE9C00FFEFC600FFFF
        D600FFFFDE00FFFFF700FFFFF700FFFFDE00FFFFDE00C6949400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00EFD6B500FFE7B500F7C68C00F7DEB500FFFF
        D600FFFFDE00FFFFEF00FFFFEF00FFFFDE00FFFFDE00BD9C8C00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00EFBD8400F7C69400FFEF
        C600FFFFD600FFFFD600FFFFD600FFFFD600FFFFDE00C6949400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6ADA500FFEFBD00F7DEAD00F7CE9C00F7D6
        A500F7E7BD00FFFFD600FFFFD600FFFFD600FFFFD600FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C8C00FFFFFF00FFFFFF00F7C6
        9400EFBD8400F7C69400F7D6AD00FFEFC600BD9C8C00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFEFE700FFFFEF00FFE7
        B500F7DEAD00FFE7B500FFEFBD00C69C9400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C
        8C00CEA59C00C69C9400FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 2
    end
    object btnSendExcel: TBitBtn
      Left = 250
      Top = 8
      Width = 75
      Height = 25
      Action = actSendExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object btnSend: TBitBtn
      AlignWithMargins = True
      Left = 586
      Top = 4
      Width = 186
      Height = 33
      Action = actSend
      Align = alRight
      Caption = #1589#1583#1608#1585
      TabOrder = 4
      ExplicitLeft = 592
      ExplicitTop = 8
      ExplicitHeight = 25
    end
    object btnFilter: TBitBtn
      AlignWithMargins = True
      Left = 505
      Top = 4
      Width = 75
      Height = 33
      Action = actFilter
      Align = alRight
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 5
      ExplicitLeft = 512
      ExplicitTop = 8
      ExplicitHeight = 25
    end
  end
  inherited Panel2: TPanel
    Width = 776
    ExplicitWidth = 776
    inherited ImgTemplate: TImage
      Left = 771
      ExplicitLeft = 771
    end
    inherited lblCaption: TLabel
      Left = 668
      Height = 16
      ExplicitLeft = 668
    end
    object lbl1: TLabel
      Left = 407
      Top = 34
      Width = 21
      Height = 13
      Caption = #1578#1575#1585#1610#1582
    end
    object lbl2: TLabel
      Left = 263
      Top = 34
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = #1606#1575#1605' '#1601#1585#1605' '
    end
    object lbl3: TLabel
      Left = 263
      Top = 9
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1575#1606#1576#1575#1585
    end
    object img1: TImage
      Left = 600
      Top = 34
      Width = 14
      Height = 15
      AutoSize = True
      Picture.Data = {
        07544269746D6170CA020000424DCA0200000000000036000000280000000E00
        00000F0000000100180000000000940200000000000000000000000000000000
        0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFF0000FFFFFFE2EFF1
        E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF199A8
        ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF008000FFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFF
        FFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFF008000008000008000FFFFFFFFFFFF64
        6F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFFFF00800000800000
        8000008000008000FFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFFFF
        FFFF008000008000008000FFFFFF008000008000FFFFFF646F7199A8ACF0FBFF
        0000FFFFFFE2EFF1FFFFFF008000008000008000FFFFFFFFFFFFFFFFFF008000
        FFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFF008000008000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1
        FFFFFF008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8
        ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1646F71646F71646F
        71646F71646F71646F71646F71646F71646F71646F7199A8ACF0FBFF0000FFFF
        FF99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
        A8AC99A8ACF0FBFF0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0
        FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF0000}
      Visible = False
    end
    object lbl4: TLabel
      Left = 593
      Top = 8
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = #1605#1585#1581#1604#1607
    end
    object mskDate: TMaskEdit
      Left = 338
      Top = 30
      Width = 65
      Height = 21
      Color = 13431799
      EditMask = '9999/99/99;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '    /  /  '
      OnChange = AllUpDate
    end
    object cmbStore: TComboBox
      Left = 10
      Top = 5
      Width = 249
      Height = 21
      Style = csDropDownList
      Color = 13434879
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = AllUpDate
      OnEnter = cmbStoreEnter
    end
    object cmbReciptType: TComboBox
      Left = 10
      Top = 30
      Width = 249
      Height = 21
      Style = csDropDownList
      Color = 13434879
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnChange = cmbReciptTypeChange
      OnClick = AllUpDate
    end
    object cmbUseUnitID: TComboBox
      Left = 338
      Top = 5
      Width = 249
      Height = 21
      Style = csDropDownList
      Color = 13434879
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnChange = AllUpDate
      OnEnter = cmbUseUnitIDEnter
    end
  end
  inherited Panel3: TPanel
    Left = 344
    Width = 432
    Height = 423
    Align = alRight
    ExplicitLeft = 344
    ExplicitWidth = 432
    object grdQuota: TDBGrid
      Tag = 111
      Left = 2
      Top = 2
      Width = 428
      Height = 379
      Align = alClient
      Color = clCream
      DataSource = SrcQuota
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = grdQuotaDrawColumnCell
      OnDblClick = grdQuotaDblClick
      OnKeyPress = grdQuotaKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = '_Selected'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UseOtherID'
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UseOtherName'
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HealthNumber'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Width = 65
          Visible = True
        end>
    end
    object pnl2: TPanel
      Left = 2
      Top = 381
      Width = 428
      Height = 41
      Align = alBottom
      TabOrder = 1
      object btnSearch_1: TBitBtn
        Left = 85
        Top = 8
        Width = 75
        Height = 25
        Hint = ' '
        Caption = #1580#1587#1578#1580#1608
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00636B
          7300C69C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006394B500218C
          EF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0042A5
          FF00218CEF007B849400CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052BD
          FF005ABDFF00218CEF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
          FF0052BDFF0042A5FF00218CEF0084849400CE9C9400FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0052BDFF005ABDFF003184D60052636B00FF00FF009C6B6B00CEA5
          9C00D6B5A500CE9C9C00C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0031A5FF0052BDFF00C6CEDE009C9C9C00AD8C8400E7D6BD00FFFF
          D600FFFFDE00FFFFD600EFDEC600FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C6ADAD00CEA59400FFE7BD00FFF7CE00FFFF
          D600FFFFD600FFFFDE00FFFFE700FFFFFF00C6A5A500FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00BD8C8C00EFDEB500F7D6AD00FFF7CE00FFFF
          D600FFFFDE00FFFFEF00FFFFF700FFFFFF00F7EFDE00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00F7CE9C00FFEFC600FFFF
          D600FFFFDE00FFFFF700FFFFF700FFFFDE00FFFFDE00C6949400FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00EFD6B500FFE7B500F7C68C00F7DEB500FFFF
          D600FFFFDE00FFFFEF00FFFFEF00FFFFDE00FFFFDE00BD9C8C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00EFBD8400F7C69400FFEF
          C600FFFFD600FFFFD600FFFFD600FFFFD600FFFFDE00C6949400FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00D6ADA500FFEFBD00F7DEAD00F7CE9C00F7D6
          A500F7E7BD00FFFFD600FFFFD600FFFFD600FFFFD600FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C8C00FFFFFF00FFFFFF00F7C6
          9400EFBD8400F7C69400F7D6AD00FFEFC600BD9C8C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFEFE700FFFFEF00FFE7
          B500F7DEAD00FFE7B500FFEFBD00C69C9400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C
          8C00CEA59C00C69C9400FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
        OnClick = btnSearch_1Click
      end
      object btnSort1: TBitBtn
        Left = 7
        Top = 8
        Width = 75
        Height = 25
        Caption = #1578#1585#1578#1610#1576' '
        TabOrder = 1
        OnClick = btnSort1Click
      end
      object btnSendExcel1: TBitBtn
        Left = 164
        Top = 8
        Width = 75
        Height = 25
        Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
        TabOrder = 2
        OnClick = btnSendExcel1Click
      end
    end
  end
  object pnl1: TPanel [3]
    Left = 0
    Top = 53
    Width = 344
    Height = 423
    Align = alClient
    Caption = 'pnl1'
    TabOrder = 3
    ExplicitHeight = 424
    object grdQuotaItems: TDBGrid
      Tag = 111
      Left = 1
      Top = 1
      Width = 342
      Height = 382
      Align = alClient
      Color = clCream
      DataSource = SrcQuotaItems
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = grdQuotaItemsDrawColumnCell
      OnKeyDown = grdQuotaItemsKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'StuffCode'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Entity'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Weight'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_StuffName'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUMEntity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUMWeight'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LocatorStuffCode'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LocatorEntity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LocatorWeight'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalEntity'
          Width = 58
          Visible = True
        end>
    end
    object SumGrid1: TSumGrid
      Left = 1
      Top = 383
      Width = 342
      Height = 40
      Hint = #1605#1608#1580#1608#1583#1610' '#1608#1586#1606
      TabStop = False
      Active = False
      Enable_Controls = True
      SelectedRow = True
      MasterGrid = grdQuotaItems
      FieldsName = 'Entity;Weight;SUMEntity;SUMWeight;'
    end
  end
  inherited ActionList: TActionList
    Left = 400
    Top = 104
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576' '
      OnExecute = actSortExecute
    end
    object actSendExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExcelExecute
    end
    object actSend: TAction
      Caption = #1589#1583#1608#1585
      OnExecute = actSendExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 480
    Top = 105
  end
  object SrcQuota: TDataSource
    DataSet = cliQuota
    Left = 712
    Top = 184
  end
  object qryQuota: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryQuotaAfterOpen
    Parameters = <
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end
      item
        Name = 'RunDateFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'RunDateTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'ReciptType'
        Size = -1
        Value = Null
      end
      item
        Name = 'UseUnitID'
        Size = -1
        Value = Null
      end
      item
        Name = 'CutDate'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT DISTINCT    Quota.*, UseOthers.UseOtherName,HealthNumber,' +
        'UseNote, UseOthers.CustID'
      ''
      'FROM         Quota  LEFT OUTER JOIN'
      
        '                      UseOthers ON Quota.UseOtherID = UseOthers.' +
        'UseOtherID'
      
        'WHERE     (YearID = :YearID )AND (Quota.RunDate BETWEEN :RunDate' +
        'From AND :RunDateTo ) AND '
      'Quota.useOtherID not in'
      '   (SELECT DISTINCT UseOtherID FROM Recipts'
      '     WHERE (ReciptType = :ReciptType )'
      '      AND (UseUnitID = :UseUnitID ) AND (ReciptState < 3))'
      ''
      'AND  (ISNULL(LEN(UseOthers.ExpirationDate), 0) < 8)'
      'AND (CutDate >= :CutDate or CutDate is null   or CutDate='#39#39')'
      'ORDER BY Quota.UseOtherID')
    Left = 712
    Top = 342
  end
  object qryQuotaItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ReciptDate'
        DataType = ftString
        Size = 10
        Value = '89/04/01'
      end
      item
        Name = 'StoreID'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'ReciptDate2'
        DataType = ftString
        Size = 10
        Value = '89/04/01'
      end
      item
        Name = 'StoreID2'
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        Name = 'UseOtherID'
        DataType = ftString
        Size = 10
        Value = '0004001314'
      end
      item
        Name = 'YearID'
        DataType = ftString
        Size = 2
        Value = '89'
      end
      item
        Name = 'RunDate'
        DataType = ftString
        Size = 10
        Value = '89/04/01'
      end>
    SQL.Strings = (
      
        'SELECT     QuotaItems.StuffCode, StuffCoding.c_StuffName, SUM(Qu' +
        'otaItems.Entity) AS Entity, SUM(QuotaItems.Weight) AS Weight, tb' +
        'l_Entity.SUMEntity, '
      
        '                      tbl_Entity.SUMWeight, tbl_LocatorEntity.St' +
        'uffCode AS LocatorStuffCode, tbl_LocatorEntity.SUMEntity AS Loca' +
        'torEntity, '
      
        '                      tbl_LocatorEntity.SUMWeight AS LocatorWeig' +
        'ht, ISNULL( tbl_Entity.SUMEntity,0) + ISNULL(tbl_LocatorEntity.S' +
        'UMEntity,0) AS TotalEntity'
      'FROM         Quota INNER JOIN'
      
        '                      QuotaItems ON Quota.QuotaID = QuotaItems.Q' +
        'uotaID AND Quota.YearID = QuotaItems.YearID INNER JOIN'
      
        '                      StuffCoding ON QuotaItems.StuffCode = Stuf' +
        'fCoding.c_StuffCode LEFT OUTER JOIN'
      
        '                          (SELECT     ReciptItems.StuffCode, ROU' +
        'ND(SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity), 3) A' +
        'S SUMEntity, '
      
        '                                                   ROUND(SUM(Rec' +
        'iptItems.InputWeight - ReciptItems.OutputWeight), 3) AS SUMWeigh' +
        't'
      '                             FROM         ReciptItems INNER JOIN'
      
        '                                                   Recipts ON Re' +
        'ciptItems.ReciptID = Recipts.ReciptID AND ReciptItems.ServerID =' +
        ' Recipts.ServerID AND '
      
        '                                                   ReciptItems.Y' +
        'earID = Recipts.YearID INNER JOIN'
      
        '                                                   ReciptTypes O' +
        'N Recipts.ReciptType = ReciptTypes.ReciptType'
      
        '                             WHERE     (Recipts.ReciptDate <= :R' +
        'eciptDate ) AND (Recipts.StoreID = :StoreID ) AND (ReciptTypes.E' +
        'ffectType IN (2, 4)) AND (Recipts.ReciptState < 3)'
      
        '                             GROUP BY ReciptItems.StuffCode) AS ' +
        'tbl_Entity ON StuffCoding.c_StuffCode = tbl_Entity.StuffCode LEF' +
        'T OUTER JOIN'
      
        '                          (SELECT     ReciptItems_1.StuffCode, R' +
        'OUND(SUM(ReciptItems_1.InputEntity - ReciptItems_1.OutputEntity)' +
        ', 3) AS SUMEntity,'
      
        '                                                   ROUND(SUM(Rec' +
        'iptItems_1.InputWeight - ReciptItems_1.OutputWeight), 3) AS SUMW' +
        'eight'
      
        '                             FROM         ReciptItems AS ReciptI' +
        'tems_1 INNER JOIN'
      
        '                                                   Recipts AS Re' +
        'cipts_1 ON ReciptItems_1.ReciptID = Recipts_1.ReciptID AND Recip' +
        'tItems_1.ServerID = Recipts_1.ServerID AND'
      
        '                                                   ReciptItems_1' +
        '.YearID = Recipts_1.YearID INNER JOIN'
      
        '                                                   ReciptTypes A' +
        'S ReciptTypes_1 ON Recipts_1.ReciptType = ReciptTypes_1.ReciptTy' +
        'pe'
      
        '                             WHERE     (Recipts_1.ReciptDate <= ' +
        ':ReciptDate2 ) AND (Recipts_1.StoreID = :StoreID2 ) AND (ReciptT' +
        'ypes_1.EffectType IN (2, 4)) AND (Recipts_1.ReciptState < 3)'
      
        '                             GROUP BY ReciptItems_1.StuffCode) A' +
        'S tbl_LocatorEntity ON StuffCoding.StanCode = tbl_LocatorEntity.' +
        'StuffCode'
      
        'WHERE     (Quota.UseOtherID =  :UseOtherID ) AND (Quota.YearID =' +
        ' :YearID ) AND (Quota.RunDate <= :RunDate )'
      
        'GROUP BY QuotaItems.StuffCode, StuffCoding.c_StuffName, tbl_Enti' +
        'ty.SUMEntity, tbl_Entity.SUMWeight, tbl_LocatorEntity.StuffCode,'
      
        '                      tbl_LocatorEntity.SUMEntity, tbl_LocatorEn' +
        'tity.SUMWeight'
      ''
      ''
      ''
      ' ')
    Left = 200
    Top = 189
    object qryQuotaItemsStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryQuotaItemsEntity: TFloatField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldName = 'Entity'
    end
    object qryQuotaItemsWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
    end
    object qryQuotaItemsc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 150
    end
    object qryQuotaItemsSUMEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1608#1580#1608#1583#1610' '#1605#1602#1583#1575#1585
      FieldName = 'SUMEntity'
      ReadOnly = True
    end
    object qryQuotaItemsSUMWeight: TFloatField
      Tag = 3
      DisplayLabel = #1605#1608#1580#1608#1583#1610' '#1608#1586#1606
      FieldName = 'SUMWeight'
      ReadOnly = True
    end
    object qryQuotaItemsLocatorStuffCode: TLargeintField
      DisplayLabel = #1603#1583#1603#1575#1604#1575#1610' '#1580#1575#1610#1711#1586#1610#1606
      FieldName = 'LocatorStuffCode'
    end
    object qryQuotaItemsLocatorEntity: TFloatField
      DisplayLabel = #1578#1593#1583#1575#1583#1580#1575#1610#1711#1586#1610#1606
      FieldName = 'LocatorEntity'
      ReadOnly = True
    end
    object qryQuotaItemsLocatorWeight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1580#1575#1610#1711#1586#1610#1606
      FieldName = 'LocatorWeight'
      ReadOnly = True
    end
    object qryQuotaItemsTotalEntity: TFloatField
      DisplayLabel = #1603#1604' '#1605#1608#1580#1608#1583#1610
      FieldName = 'TotalEntity'
      ReadOnly = True
    end
  end
  object SrcQuotaItems: TDataSource
    DataSet = qryQuotaItems
    Left = 280
    Top = 192
  end
  object cliQuota: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    AfterScroll = cliQuotaAfterScroll
    Left = 688
    Top = 125
    object cliQuotaQuotaID: TIntegerField
      FieldName = 'QuotaID'
    end
    object cliQuotaYearID: TIntegerField
      FieldName = 'YearID'
    end
    object cliQuotaUseOtherID: TWideStringField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'UseOtherID'
      Size = 15
    end
    object cliQuotaAmount: TBCDField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583' '#1583#1585' '#1587#1575#1604
      FieldName = 'Amount'
      Precision = 19
    end
    object cliQuotaRunDate: TStringField
      FieldName = 'RunDate'
      FixedChar = True
      Size = 10
    end
    object cliQuotaCutDate: TStringField
      FieldName = 'CutDate'
      FixedChar = True
      Size = 10
    end
    object cliQuotaUseOtherName: TWideStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'UseOtherName'
      Size = 50
    end
    object cliQuotaHealthNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1662#1585#1608#1606#1583#1607
      FieldName = 'HealthNumber'
      Size = 18
    end
    object cliQuotaUseNote: TStringField
      FieldName = 'UseNote'
      Size = 255
    end
    object cliQuotaCustID: TIntegerField
      FieldName = 'CustID'
    end
    object cliQuota_Selected: TBooleanField
      DisplayLabel = #1575#1606#1578#1582#1575#1576
      FieldKind = fkInternalCalc
      FieldName = '_Selected'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = qryQuota
    Left = 704
    Top = 253
  end
  object qryinit: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT  RestartFormNumberOnStore,ReciptType,EffectType  FROM    ' +
        'ReciptTypes'
      #13'where ReciptType=:ReciptType'
      #13#13'ORDER BY ReciptType')
    Left = 500
    Top = 178
  end
  object qryRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'ReciptID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM Recipts WHERE (ReciptID = :ReciptID )'
      'and ( YearID = :YearID )'
      'and ( ServerID = :ServerID )')
    Left = 437
    Top = 322
  end
  object qryReciptItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ReciptItems WHERE (ReciptID = 0)')
    Left = 436
    Top = 394
  end
end
