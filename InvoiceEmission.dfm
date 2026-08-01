inherited InvoiceEmissionF: TInvoiceEmissionF
  Left = 364
  Top = 209
  Caption = #1589#1583#1608#1585' '#1601#1575#1603#1578#1608#1585' '#1601#1585#1608#1588' '#1608' '#1602#1591#1593#1610' '#1606#1605#1608#1583#1606' '#1575#1591#1604#1575#1593#1575#1578
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    object BitBtn1: TBitBtn
      Left = 705
      Top = 10
      Width = 72
      Height = 24
      Action = actFilter
      Anchors = [akTop, akRight]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object btnSort: TBitBtn
      Tag = 3
      Left = 84
      Top = 9
      Width = 75
      Height = 25
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 2
      OnClick = btnSendExcelClick
    end
    object btnSearch_: TBitBtn
      Tag = 2
      Left = 161
      Top = 9
      Width = 75
      Height = 25
      Hint = ' '
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 3
      OnClick = btnSendExcelClick
    end
    object btnSendExcel: TBitBtn
      Tag = 1
      Left = 238
      Top = 9
      Width = 75
      Height = 25
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 4
      OnClick = btnSendExcelClick
    end
    object btnDelDriver: TBitBtn
      Left = 483
      Top = 10
      Width = 72
      Height = 24
      Action = actBespokeShow
      Anchors = [akTop, akRight]
      Caption = #1606#1605#1575#1610#1588#8207#1587#1601#1575#1585#1588
      TabOrder = 5
    end
    object btnExportSell: TBitBtn
      Left = 557
      Top = 10
      Width = 72
      Height = 24
      Action = actAssignmentShow
      Anchors = [akTop, akRight]
      Caption = #1606#1605#1575#1610#1588' '#1581#1608#1575#1604#1607
      TabOrder = 6
    end
    object btnSend: TBitBtn
      Left = 631
      Top = 10
      Width = 72
      Height = 24
      Anchors = [akTop, akRight]
      Caption = #1589#1583#1608#1585' ...'
      TabOrder = 7
      OnClick = btnSendClick
    end
    object BitBtn2: TBitBtn
      Left = 409
      Top = 10
      Width = 72
      Height = 24
      Action = actElaboration
      Anchors = [akTop, akRight]
      Caption = #1589#1608#1585#1578#8207#1585#1610#1586#1582#1591#1575#1607#1575
      TabOrder = 8
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
    object Image3: TImage
      Left = 384
      Top = 16
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
    object Image2: TImage
      Left = 360
      Top = 16
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        0000100000000100180000000000000300000000000000000000000000000000
        0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1
        E2EFF1E2EFF1E2EFF199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1646F71646F71646F71646F71646F71646F71646F71
        646F71646F71646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFF99A8AC99A8AC99A8
        AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACF0FBFFF0
        FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FB
        FFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0
        FBFF}
      Visible = False
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 127
      Height = 51
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object lblDate: TLabel
        Left = 92
        Top = 20
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = #1578#1575#1585#1610#1582' '
      end
      object medtDate: TMaskEdit
        Left = 12
        Top = 16
        Width = 77
        Height = 21
        Color = 13431799
        EditMask = '9999/99/99;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '    /  /  '
      end
    end
    object chklstSecondType: TCheckListBox
      Left = 128
      Top = 1
      Width = 193
      Height = 51
      Align = alLeft
      Color = clInactiveCaption
      ItemHeight = 13
      TabOrder = 1
      OnClick = chklstSecondTypeClick
    end
  end
  inherited Panel3: TPanel
    Height = 423
    object Label1: TLabel
      Left = 2
      Top = 2
      Width = 786
      Height = 13
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = #1604#1610#1587#1578' '#1581#1608#1575#1604#1607' '#1607#1575#1610' '#1601#1585#1608#1588
      Color = clGradientInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label2: TLabel
      Left = 2
      Top = 135
      Width = 786
      Height = 13
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = #1604#1610#1587#1578' '#1587#1601#1575#1585#1588#1575#1578' '#1605#1588#1578#1585#1610#1575#1606
      Color = clGradientInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object lblMiscue: TLabel
      Left = 2
      Top = 289
      Width = 786
      Height = 13
      Align = alBottom
      Alignment = taCenter
      AutoSize = False
      Caption = #1604#1610#1587#1578' '#1582#1591#1575#1607#1575
      Color = clGradientInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object dbgrdAssignment: TDBGrid
      Left = 2
      Top = 15
      Width = 786
      Height = 120
      Align = alTop
      Color = clCream
      DataSource = dsAssignment
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = actAssignmentShowExecute
      OnKeyPress = dbgrdAssignmentKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = '_Row'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptNumber'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptDate'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AidNumber'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AidDate'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StoreID'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_StoreName'
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AcceptEntity'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RollbackEntity'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Entity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EntityFactor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptState'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonID3'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustName'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptNote'
          Width = 90
          Visible = True
        end>
    end
    object dbgrdBespoke: TDBGrid
      Left = 2
      Top = 148
      Width = 786
      Height = 141
      Align = alClient
      Color = clCream
      DataSource = dsBespoke
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = dbgrdBespokeDrawColumnCell
      OnDblClick = dbgrdBespokeDblClick
      OnKeyPress = dbgrdAssignmentKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Selected'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_Row'
          Width = 24
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptNumber'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptDate'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptState'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonID3'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustName3'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Entity'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AcceptEntity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RollbackEntity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptNote'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonID1'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustName'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonID2'
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustName2'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Width = 60
          Visible = True
        end>
    end
    object dbgrdMiscue: TDBGrid
      Left = 2
      Top = 302
      Width = 786
      Height = 120
      Align = alBottom
      Color = clCream
      DataSource = dsMiscue
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = actElaborationExecute
      Columns = <
        item
          Expanded = False
          FieldName = 'StuffCode'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_StuffName'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AcceptEntity'
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AcceptWeight'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RollbackEntity'
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RollbackWeight'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Entity'
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Weight'
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    Left = 528
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actInvoiceEmission: TAction
      Caption = #1589#1583#1608#1585' '#1601#1575#1603#1578#1608#1585
      OnExecute = actInvoiceEmissionExecute
    end
    object actAssignmentShow: TAction
      Caption = #1606#1605#1575#1610#1588' '#1581#1608#1575#1604#1607
      OnExecute = actAssignmentShowExecute
    end
    object actBespokeShow: TAction
      Caption = #1606#1605#1575#1610#1588#8207#1587#1601#1575#1585#1588
      OnExecute = actBespokeShowExecute
    end
    object actElaboration: TAction
      Caption = #1589#1608#1585#1578#8207#1585#1610#1586#1582#1591#1575#1607#1575
      OnExecute = actElaborationExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 496
    Top = 113
  end
  object qryAssignment: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeScroll = qryAssignmentBeforeScroll
    AfterScroll = qryAssignmentAfterScroll
    OnCalcFields = qryBespokeCalcFields
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ReciptNumberFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ReciptNumberTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'DateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'DateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'StoreIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 0
      end
      item
        Name = 'StoreIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 0
      end
      item
        Name = 'PersonID3from'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PersonID3to'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'YearID2'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     Recipts.ReciptID, Recipts.ReciptNumber, Recipts.Recip' +
        'tDate, Recipts.ReciptState, Recipts.PersonID3, Customers.CustNam' +
        'e, Recipts.ReciptNote,'
      
        '                      SUM(ReciptItems.InputEntity + ReciptItems.' +
        'OutputEntity) AS Entity, SUM(ReciptItems.AcceptEntity) AS Accept' +
        'Entity, SUM(ReciptItems.RollbackEntity) '
      
        '                      AS RollbackEntity, Recipts.StoreID, Stores' +
        '.c_StoreName, derivedtbl_1.EntityFactor , Recipts.AidNumber, Rec' +
        'ipts.AidDate'
      ',Recipts.ServerID , Recipts.YearID'
      'FROM         ReciptItems INNER JOIN'
      
        '                      Recipts ON Recipts.ReciptID = ReciptItems.' +
        'ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Recipts' +
        '.YearID = ReciptItems.YearID'
      ' INNER JOIN'
      
        '                      Stores ON Recipts.StoreID = Stores.n_Store' +
        'ID LEFT OUTER JOIN'
      
        '                          (SELECT     Recipts_1.ParentReciptID, ' +
        'SUM(ReciptItems_1.InputEntity + ReciptItems_1.OutputEntity) AS E' +
        'ntityFactor'
      
        '                             FROM         Recipts AS Recipts_1 I' +
        'NNER JOIN'
      
        '                                                   ReciptItems A' +
        'S ReciptItems_1 ON Recipts_1.ReciptID = ReciptItems_1.ReciptID A' +
        'ND Recipts_1.ServerID = ReciptItems_1.ServerID AND'
      
        '                                                   Recipts_1.Yea' +
        'rID = ReciptItems_1.YearID'
      
        '                             WHERE     (Recipts_1.ReciptType = 1' +
        '2) AND ( Recipts_1.YearID = :YearID   )'
      
        '                             GROUP BY Recipts_1.ParentReciptID) ' +
        'AS derivedtbl_1 ON Recipts.ReciptID = derivedtbl_1.ParentReciptI' +
        'D LEFT OUTER JOIN'
      
        '                      Customers ON Recipts.PersonID3 = Customers' +
        '.CustID'
      
        'WHERE     (Recipts.ReciptType = 11) AND (Recipts.ReciptState < 3' +
        ')'
      
        'AND (Recipts.ReciptNumber BETWEEN :ReciptNumberFrom AND :ReciptN' +
        'umberTo)'
      '  AND (Recipts.ReciptDate BETWEEN :DateFrom AND :DateTo)'
      '  AND (Recipts.StoreID BETWEEN   :StoreIDFrom AND :StoreIDTo )'
      
        'AND   (Recipts.PersonID3 between :PersonID3from and :PersonID3to' +
        ')'
      ''
      'AND ( Recipts.YearID = :YearID2   )'
      ''
      
        'GROUP BY Recipts.ReciptID, Recipts.StoreID, Recipts.ReciptNumber' +
        ', Recipts.ReciptDate, Customers.CustName, Recipts.ReciptNote, St' +
        'ores.c_StoreName,'
      
        '                      Recipts.PersonID3, Recipts.ReciptState, de' +
        'rivedtbl_1.EntityFactor, Recipts.AidNumber, Recipts.AidDate'
      ',Recipts.ServerID , Recipts.YearID'
      ''
      
        'HAVING      (SUM(ReciptItems.InputEntity + ReciptItems.OutputEnt' +
        'ity) < derivedtbl_1.EntityFactor) OR'
      '                      (derivedtbl_1.EntityFactor IS NULL)'
      'ORDER BY Recipts.ReciptDate, Recipts.ReciptNumber'
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 281
    Top = 109
    object qryAssignment_Row: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldKind = fkCalculated
      FieldName = '_Row'
      Calculated = True
    end
    object qryAssignmentReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryAssignmentReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'ReciptNumber'
    end
    object qryAssignmentReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryAssignmentReciptState: TWordField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'ReciptState'
      OnGetText = ALLStateGetText
    end
    object qryAssignmentReciptNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      FieldName = 'ReciptNote'
      Size = 400
    end
    object qryAssignmentEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1606#1607#1575#1610#1610
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryAssignmentAcceptEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1578#1575#1610#1610#1583' '#1588#1583#1607
      FieldName = 'AcceptEntity'
      ReadOnly = True
    end
    object qryAssignmentRollbackEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1576#1585#1711#1588#1578#1610
      FieldName = 'RollbackEntity'
      ReadOnly = True
    end
    object qryAssignmentStoreID: TSmallintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
    end
    object qryAssignmentc_StoreName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1575#1606#1576#1575#1585
      FieldName = 'c_StoreName'
      Size = 70
    end
    object qryAssignmentEntityFactor: TFloatField
      Tag = 3
      DisplayLabel = #1580#1605#1593' '#1601#1585#1605' '#1589#1575#1583#1585#1607
      FieldName = 'EntityFactor'
      ReadOnly = True
    end
    object qryAssignmentPersonID3: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1585#1575#1606#1606#1583#1607
      FieldName = 'PersonID3'
    end
    object qryAssignmentCustName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1585#1575#1606#1606#1583#1607
      FieldName = 'CustName'
      Size = 120
    end
    object qryAssignmentAidNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610
      FieldName = 'AidNumber'
      Size = 40
    end
    object qryAssignmentAidDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1603#1605#1603#1610
      FieldName = 'AidDate'
      FixedChar = True
      Size = 10
    end
    object qryAssignmentServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryAssignmentYearID: TIntegerField
      FieldName = 'YearID'
    end
  end
  object dsAssignment: TDataSource
    DataSet = qryAssignment
    Left = 136
    Top = 109
  end
  object qryBespoke: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeScroll = qryBespokeBeforeScroll
    OnCalcFields = qryBespokeCalcFields
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'masetr'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end
      item
        Name = 'ServerID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *   FROM('
      
        'SELECT  Recipts.ReciptID/Recipts.ReciptID as Selected , Recipts.' +
        'ReciptID, Recipts.ReciptNumber, Recipts.ReciptDate,'
      
        ' Recipts.ReciptState, Recipts.PersonID3, Customers3.CustName as ' +
        'CustName3,'
      
        '                      SUM(ReciptItems.InputEntity + ReciptItems.' +
        'OutputEntity) AS Entity,'
      
        '                      SUM(ReciptItems.InputWeight + ReciptItems.' +
        'OutputWeight) AS Weight,'
      
        '                      SUM(ReciptItems.AcceptEntity) AS AcceptEnt' +
        'ity, SUM(ReciptItems.RollbackEntity)'
      
        '                      AS RollbackEntity, Recipts.ReciptNote, Rec' +
        'ipts.StoreID, Stores.c_StoreName, Recipts.PersonID1,'
      '                       Customers.CustName, Recipts.PersonID2,'
      
        '                      Personels2.CustName AS CustName2, LookUps.' +
        'Name,Recipts.ServerID , Recipts.YearID'
      'FROM         ReciptItems INNER JOIN'
      
        '                      Recipts ON Recipts.ReciptID = ReciptItems.' +
        'ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Recipts' +
        '.YearID = ReciptItems.YearID'
      ' INNER JOIN'
      
        '                      Stores ON Recipts.StoreID = Stores.n_Store' +
        'ID LEFT OUTER JOIN'
      
        '                      LookUps ON Recipts.SecondType = LookUps.Lo' +
        'okUpID LEFT OUTER JOIN'
      
        '                      Customers ON Recipts.PersonID1 = Customers' +
        '.CustID LEFT OUTER JOIN'
      
        '                      Customers AS Personels2 ON Recipts.PersonI' +
        'D2 = Personels2.CustID LEFT OUTER JOIN'
      
        '                      Customers Customers3 ON Recipts.PersonID3 ' +
        '= Customers3.CustID'
      ''
      
        'WHERE     (Recipts.ReciptType = 10) AND (Recipts.ParentReciptID ' +
        '= :masetr)'
      ''
      
        'AND ( Recipts.YearID = :YearID   ) AND ( Recipts.ServerID =  :Se' +
        'rverID   )'
      'AND (Recipts.ReciptState < 3)'
      
        'GROUP BY Recipts.ReciptID, Recipts.StoreID, Recipts.ReciptNumber' +
        ', Recipts.ReciptDate, Customers3.CustName ,'
      'Recipts.ReciptNote, Stores.c_StoreName,'
      
        '                      Recipts.PersonID3, Recipts.ReciptState, Re' +
        'cipts.PersonID1, Recipts.PersonID2, Customers.CustName,'
      
        '                      Personels2.CustName, LookUps.Name,Recipts.' +
        'ServerID , Recipts.YearID'
      ''
      ')aaaa'
      'ORDER BY ReciptDate, ReciptNumber'
      ' '
      ' '
      ' '
      ' '
      ' '
      '  '
      '  '
      '  '
      ' ')
    Left = 295
    Top = 245
    object qryBespokeReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryBespokeReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'ReciptNumber'
    end
    object qryBespokeReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryBespokeReciptState: TWordField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'ReciptState'
      OnGetText = ALLStateGetText
    end
    object qryBespokeEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1606#1607#1575#1610#1610
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryBespokeAcceptEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1578#1575#1610#1610#1583' '#1588#1583#1607
      FieldName = 'AcceptEntity'
      ReadOnly = True
    end
    object qryBespokeRollbackEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1576#1585#1711#1588#1578#1610
      FieldName = 'RollbackEntity'
      ReadOnly = True
    end
    object qryBespokeReciptNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      FieldName = 'ReciptNote'
      Size = 400
    end
    object qryBespokeStoreID: TSmallintField
      FieldName = 'StoreID'
    end
    object qryBespokec_StoreName: TStringField
      FieldName = 'c_StoreName'
      Size = 70
    end
    object qryBespokePersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1582#1585#1610#1583#1575#1585
      FieldName = 'PersonID1'
    end
    object qryBespokeCustName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1582#1585#1610#1583#1575#1585
      FieldName = 'CustName'
      Size = 120
    end
    object qryBespokePersonID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1608#1610#1586#1610#1578#1608#1585
      FieldName = 'PersonID2'
    end
    object qryBespokeCustName2: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1608#1610#1586#1610#1578#1608#1585
      FieldName = 'CustName2'
      Size = 60
    end
    object qryBespoke_Row: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldKind = fkCalculated
      FieldName = '_Row'
      Calculated = True
    end
    object qryBespokeWeight: TFloatField
      FieldName = 'Weight'
      ReadOnly = True
    end
    object qryBespokeName: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'Name'
      Size = 50
    end
    object qryBespokeSelected: TIntegerField
      DisplayLabel = #1575#1606#1578#1582#1575#1576
      FieldName = 'Selected'
    end
    object qryBespokeIntegerField: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1585#1575#1606#1606#1583#1607
      FieldName = 'PersonID3'
    end
    object qryBespokeCustName3: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1585#1575#1606#1606#1583#1607
      FieldName = 'CustName3'
      Size = 60
    end
    object qryBespokeServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryBespokeYearID: TIntegerField
      FieldName = 'YearID'
    end
  end
  object dsBespoke: TDataSource
    DataSet = qryBespoke
    Left = 184
    Top = 245
  end
  object dsMiscue: TDataSource
    DataSet = qryMiscue
    Left = 112
    Top = 389
  end
  object qryMiscue: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'Havaleh'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearID2'
        Size = -1
        Value = Null
      end
      item
        Name = 'ServerID2'
        Size = -1
        Value = Null
      end
      item
        Name = 'Master'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'YearID'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'ServerID'
        DataType = ftString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT        StuffCode, c_StuffName, ROUND(SUM(AcceptEntity), 2' +
        ') AS AcceptEntity, ROUND(SUM(AcceptWeight), 2) AS AcceptWeight, ' +
        'ROUND(SUM(RollbackEntity), 2) '
      
        '                         AS RollbackEntity, ROUND(SUM(RollbackWe' +
        'ight), 2) AS RollbackWeight, ROUND(SUM(Entity), 2) AS Entity, RO' +
        'UND(SUM(Weight), 2) AS Weight'
      ''
      'FROM         ('
      ''
      'SELECT     ReciptItems.StuffCode, StuffCoding.c_StuffName,'
      'SUM(ReciptItems.AcceptEntity) AS AcceptEntity,'
      'SUM(ReciptItems.AcceptWeight) AS AcceptWeight,'
      'SUM(ReciptItems.RollbackEntity) AS RollbackEntity,'
      'SUM(ReciptItems.RollbackWeight) AS RollbackWeight,'
      
        'SUM(ReciptItems.InputEntity + ReciptItems.OutputEntity) AS Entit' +
        'y ,'
      
        'SUM(ReciptItems.InputWeight + ReciptItems.OutputWeight) AS Weigh' +
        't'
      '                        FROM         ReciptItems INNER JOIN'
      
        '                                              Recipts ON Recipts' +
        '.ReciptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptIt' +
        'ems.ServerID AND Recipts.YearID = ReciptItems.YearID'
      ' INNER JOIN'
      
        '                                              StuffCoding ON Rec' +
        'iptItems.StuffCode = StuffCoding.c_StuffCode'
      
        '                        WHERE     (Recipts.ReciptType = 11) AND ' +
        '(Recipts.ReciptState < 3) AND (Recipts.ReciptID = :Havaleh)'
      
        '                                   AND ( Recipts.YearID = :YearI' +
        'D2   ) AND ( Recipts.ServerID =  :ServerID2   )'
      
        '                        GROUP BY ReciptItems.StuffCode, StuffCod' +
        'ing.c_StuffName'
      '                        UNION ALL'
      
        '                        SELECT     ReciptItems_1.StuffCode, Stuf' +
        'fCoding_1.c_StuffName, '
      
        '                        - SUM(ReciptItems_1.AcceptEntity) AS Acc' +
        'eptEntity, '
      
        '                        - SUM(ReciptItems_1.AcceptWeight) AS Acc' +
        'eptWeight,'
      
        '                        - SUM(ReciptItems_1.RollbackEntity) AS R' +
        'ollbackEntity, '
      
        '                        - SUM(ReciptItems_1.RollbackWeight) AS R' +
        'ollbackWeight, '
      
        '                        - SUM(ReciptItems_1.InputEntity + Recipt' +
        'Items_1.OutputEntity) AS Entity , '
      
        '                        - SUM(ReciptItems_1.InputWeight + Recipt' +
        'Items_1.OutputWeight) AS Weight'
      
        '                        FROM         ReciptItems AS ReciptItems_' +
        '1 INNER JOIN'
      
        '                                              Recipts AS Recipts' +
        '_1 ON Recipts_1.ReciptID = ReciptItems_1.ReciptID AND Recipts_1.' +
        'ServerID = ReciptItems_1.ServerID AND Recipts_1.YearID = ReciptI' +
        'tems_1.YearID'
      ' INNER JOIN'
      
        '                                              StuffCoding AS Stu' +
        'ffCoding_1 ON ReciptItems_1.StuffCode = StuffCoding_1.c_StuffCod' +
        'e'
      
        '                        WHERE     (Recipts_1.ReciptType = 10) AN' +
        'D (Recipts_1.ParentReciptID = :Master) AND (Recipts_1.ReciptStat' +
        'e < 3)'
      ''
      
        'AND ( Recipts_1.YearID = :YearID   ) AND ( Recipts_1.ServerID = ' +
        ' :ServerID   )'
      ''
      
        '                        GROUP BY ReciptItems_1.StuffCode, StuffC' +
        'oding_1.c_StuffName) AS AllInfo'
      'GROUP BY StuffCode, c_StuffName'
      
        'HAVING    (ROUND(SUM(Entity), 2) <> 0)  or (ROUND(SUM(Weight), 2' +
        ') <> 0)'
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' ')
    Left = 233
    Top = 390
    object qryMiscueStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
      ReadOnly = True
    end
    object qryMiscuec_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      ReadOnly = True
      Size = 150
    end
    object qryMiscueAcceptEntity: TFloatField
      Tag = 3
      DisplayLabel = #1575#1582#1578#1604#1575#1601' '#1605#1602#1583#1575#1585' '#1578#1575#1610#1610#1583' '#1588#1583#1607
      FieldName = 'AcceptEntity'
      ReadOnly = True
    end
    object qryMiscueRollbackEntity: TFloatField
      Tag = 3
      DisplayLabel = #1575#1582#1578#1604#1575#1601' '#1605#1602#1583#1575#1585' '#1576#1585#1711#1588#1578#1610
      FieldName = 'RollbackEntity'
      ReadOnly = True
    end
    object qryMiscueEntity: TFloatField
      Tag = 3
      DisplayLabel = #1575#1582#1578#1604#1575#1601' '#1605#1602#1583#1575#1585' '#1606#1607#1575#1610#1610
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryMiscueAcceptWeight: TFloatField
      DisplayLabel = #1575#1582#1578#1604#1575#1601' '#1608#1586#1606' '#1578#1575#1610#1610#1583' '#1588#1583#1607
      FieldName = 'AcceptWeight'
      ReadOnly = True
    end
    object qryMiscueRollbackWeight: TFloatField
      DisplayLabel = #1575#1582#1578#1604#1575#1601' '#1608#1586#1606' '#1576#1585#1711#1588#1578#1610
      FieldName = 'RollbackWeight'
      ReadOnly = True
    end
    object qryMiscueWeight: TFloatField
      DisplayLabel = #1575#1582#1578#1604#1575#1601' '#1608#1586#1606' '#1606#1607#1575#1610#1610
      FieldName = 'Weight'
      ReadOnly = True
    end
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
      
        'SELECT  RestartFormNumberOnStore,ReciptType,FormKindSerial,Secon' +
        'dTypeActive,ReciptCaption'
      '  FROM    ReciptTypes'
      #13'where ReciptType=:ReciptType'
      #13#13'ORDER BY ReciptType')
    Left = 636
    Top = 114
  end
  object pm1: TPopupMenu
    AutoHotkeys = maManual
    Left = 344
    Top = 397
    object N1: TMenuItem
      Tag = 1
      Caption = #1604#1610#1587#1578' '#1581#1608#1575#1604#1607' '#1607#1575#1610' '#1601#1585#1608#1588
      OnClick = AllMenuClick
    end
    object N2: TMenuItem
      Tag = 2
      Caption = #1604#1610#1587#1578' '#1587#1601#1575#1585#1588#1575#1578' '#1605#1588#1578#1585#1610#1575#1606
      OnClick = AllMenuClick
    end
    object N3: TMenuItem
      Tag = 3
      Caption = #1604#1610#1587#1578' '#1582#1591#1575#1607#1575
      OnClick = AllMenuClick
    end
    object AllMenu: TMenuItem
      Caption = #1575#1587#1578#1601#1575#1583#1607' '#1575#1586' '#1578#1711#1607#1575
      Visible = False
      OnClick = AllMenuClick
    end
  end
  object pmSend: TPopupMenu
    Tag = 12
    AutoHotkeys = maManual
    Left = 592
    Top = 389
    object AllSend: TMenuItem
      Caption = 'All'
      OnClick = AllSendClick
    end
  end
end
