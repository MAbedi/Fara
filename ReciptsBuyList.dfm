inherited ReciptsBuyListF: TReciptsBuyListF
  Left = 390
  Top = 233
  Caption = 'ReciptsBuyListF'
  ClientHeight = 527
  ClientWidth = 819
  ExplicitWidth = 835
  ExplicitHeight = 566
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 486
    Width = 819
    ExplicitTop = 488
    ExplicitWidth = 827
    DesignSize = (
      819
      41)
    object BitBtn1: TBitBtn
      Left = 649
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akTop, akRight]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
      ExplicitLeft = 665
    end
    object BitBtn2: TBitBtn
      Left = 238
      Top = 8
      Width = 75
      Height = 25
      Action = actSendToExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      Left = 727
      Top = 8
      Width = 75
      Height = 25
      Action = actShowForm
      Anchors = [akTop, akRight]
      Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
      TabOrder = 3
      ExplicitLeft = 743
    end
    object BitBtn6: TBitBtn
      Left = 159
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
      TabOrder = 4
    end
    object BitBtn7: TBitBtn
      Left = 81
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576' '
      TabOrder = 5
    end
    object BtnReciptState: TBitBtn
      Left = 571
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578
      TabOrder = 6
      OnClick = BtnReciptStateClick
      ExplicitLeft = 587
    end
    object btnPrint: TBitBtn
      Left = 415
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662
      TabOrder = 7
      ExplicitLeft = 431
    end
    object btnDocNo: TBitBtn
      Left = 493
      Top = 8
      Width = 74
      Height = 25
      Action = actDocNo
      Anchors = [akTop, akRight]
      Caption = #1662#1575#1603#1587#1575#1586#1610' '#1587#1606#1583
      TabOrder = 8
      ExplicitLeft = 509
    end
    object BitBtn3: TBitBtn
      Left = 316
      Top = 8
      Width = 75
      Height = 25
      Caption = #1587#1575#1610#1585'...'
      TabOrder = 9
      OnClick = BitBtn3Click
    end
  end
  inherited Panel2: TPanel
    Width = 819
    Height = 49
    ExplicitWidth = 827
    ExplicitHeight = 49
    DesignSize = (
      819
      49)
    inherited ImgTemplate: TImage
      Left = 806
      ExplicitLeft = 797
    end
    inherited lblCaption: TLabel
      Left = 711
      Height = 29
      ExplicitLeft = 711
    end
    inherited lblBaseDate: TLabel
      Left = 337
      ExplicitLeft = 341
    end
    object lblStoreName: TLabel
      Left = 25
      Top = 20
      Width = 76
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'lblStoreName'
      Color = clBtnFace
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
  end
  inherited Panel3: TPanel
    Top = 49
    Width = 819
    Height = 437
    ExplicitTop = 49
    ExplicitWidth = 827
    ExplicitHeight = 439
    object DBGrid1: TCedarDbgrid
      Left = 2
      Top = 2
      Width = 823
      Height = 435
      Align = alClient
      Color = clCream
      DataSource = srcRecipts
      DynProps = <>
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterParams.FillStyle = cfstGradientEh
      FooterParams.Font.Charset = DEFAULT_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -12
      FooterParams.Font.Name = 'Tahoma'
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      FooterParams.VertLines = False
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clGradientInactiveCaption
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      RowHeight = 21
      SearchPanel.Enabled = True
      SearchPanel.FilterOnTyping = True
      SortLocal = True
      TabOrder = 0
      OnDblClick = DBGrid1DblClick
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnKeyPress = DBGrid1KeyPress
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptNumber'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptNumberFormer'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptDate'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonID1'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = '_PersonName1'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'StoreID'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'c_StoreName'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ReciptState'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'PersonID2'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'CustName2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Entity'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Weight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'UnitSellPrice'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'price'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DocNo'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DocDate'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FirstUser'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'LastUser'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'DeficitValue'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'UnitSellPrice2'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MachineNo'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MachineName'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TozinMachineName'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TozinMachineNo'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MachineWeight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'MachineFullWeight'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Mandeh'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'EnterDate'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ExitDate'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TozinFirstUser'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'TozinLastUser'
          Footers = <>
          Width = 64
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  inherited ActionList: TActionList
    Left = 368
    Top = 3
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607'Excel'
      OnExecute = actSendToExcelExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actShowForm: TAction
      Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
      OnExecute = actShowFormExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576' '
      OnExecute = actSortExecute
    end
    object actReciptState1: TAction
      Caption = #1602#1591#1593#1610' '#1606#1605#1608#1583#1606
      OnExecute = actReciptState1Execute
    end
    object actReciptState2: TAction
      Caption = #1583#1575#1574#1605' '#1606#1605#1608#1583#1606
      OnExecute = actReciptState2Execute
    end
    object actDocNo: TAction
      Caption = #1662#1575#1603#1587#1575#1586#1610' '#1587#1606#1583
      OnExecute = Action1Execute
    end
    object actReciptState3: TAction
      Caption = #1576#1575#1591#1604' '#1606#1605#1608#1583#1606
      OnExecute = actReciptState3Execute
    end
    object actReciptState0: TAction
      Caption = #1578#1576#1583#1610#1604' '#1576#1607' '#1605#1608#1602#1578
      OnExecute = actReciptState0Execute
    end
    object actNewReciptsCorrelate: TAction
      Caption = #1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591
      OnExecute = actNewReciptsCorrelateExecute
    end
    object actSortRun: TAction
      Caption = #1605#1585#1578#1576' '#1603#1585#1583#1606
      OnExecute = actSortRunExecute
    end
    object actUpDate: TAction
      Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610
      OnExecute = actUpDateExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 488
    Top = 17
  end
  object qryRecipts: TADOQuery
    AutoCalcFields = False
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryReciptsAfterScroll
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 11
      end
      item
        Name = 'NumberFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'NumberTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 100
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
        Value = '9999/99/99'
      end
      item
        Name = 'StoreFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 0
      end
      item
        Name = 'StoreTo'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 9999
      end
      item
        Name = 'YearIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'YearIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT       Recipts.ID,  Recipts.ReciptID, Recipts.ReciptNumber' +
        ', Recipts.ReciptNumberFormer ,  Recipts.ReciptDate, Recipts.Pers' +
        'onID1,'
      
        '    CASE WHEN LEN(isnull(Customers_1.CustFirstName,'#39#39')) = 0 THEN' +
        ' Customers_1.CustName'
      
        #9'     ELSE  Customers_1.CustFirstName+'#39' '#39' +Customers_1.CustName ' +
        'END AS _PersonName1'
      
        '  , Recipts.ReciptState, Recipts.StoreID, Stores.c_StoreName, Re' +
        'cipts.ReciptType, Recipts.PersonID2,'
      
        '    CASE WHEN LEN(isnull(Customers_2.CustFirstName,'#39#39')) = 0 THEN' +
        ' Customers_2.CustName'
      
        '         ELSE  Customers_2.CustFirstName+'#39' '#39' +Customers_2.CustNa' +
        'me END AS  CustName2'
      
        '  , ABS(SUM(ReciptItems.InputEntity - ReciptItems.OutputEntity))' +
        ' AS Entity, ABS(SUM(ReciptItems.InputWeight - ReciptItems.Output' +
        'Weight)) AS Weight, MAX(ReciptItems.UnitSellPrice)'
      
        '    AS UnitSellPrice, SUM(ReciptItems.TotalInputPrice + ReciptIt' +
        'ems.TotalOutputPrice) AS price, Recipts.FirstUser, Recipts.LastU' +
        'ser, SUM(ReciptItems.DeficitValue) AS DeficitValue, Recipts.DocN' +
        'o, Recipts.DocDate,'
      
        '    SUM(ReciptItems.UnitSellPrice2) AS UnitSellPrice2, ReciptIte' +
        'ms.MachineNo, ReciptItems.MachineName, Recipts.ParentReciptID, R' +
        'ecipts.ServerID, Recipts.YearID, Tozin.MachineName AS TozinMachi' +
        'neName,'
      
        '   Tozin.MachineNo AS TozinMachineNo, Tozin.MachineWeight, Tozin' +
        '.MachineFullWeight, dbo.MiladiToShamsiTime(Tozin.EnterDate, 1) A' +
        'S EnterDate, dbo.MiladiToShamsiTime(Tozin.ExitDate, 1) AS ExitDa' +
        'te,'
      
        '   Tozin.FirstUser AS TozinFirstUser, Tozin.LastUser AS TozinLas' +
        'tUser, CASE WHEN Tozin.MachineFullWeight - Tozin.MachineWeight <' +
        ' 0 THEN 0 ELSE Tozin.MachineFullWeight - Tozin.MachineWeight END' +
        ' AS Mandeh'
      'FROM            Customers AS Customers_2 RIGHT OUTER JOIN'
      '                         Tozin RIGHT OUTER JOIN'
      
        '                         Recipts ON Tozin.TozinID = Recipts.Tozi' +
        'nID ON Customers_2.CustID = Recipts.PersonID2 LEFT OUTER JOIN'
      
        '                         Customers AS Customers_1 ON Recipts.Per' +
        'sonID1 = Customers_1.CustID LEFT OUTER JOIN'
      
        '                         Stores ON Recipts.StoreID = Stores.n_St' +
        'oreID LEFT OUTER JOIN'
      
        '                         ReciptTypes ON Recipts.ReciptType = Rec' +
        'iptTypes.ReciptType LEFT OUTER JOIN'
      
        '                         ReciptItems ON Recipts.ReciptID = Recip' +
        'tItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND ' +
        'Recipts.YearID = ReciptItems.YearID'
      'WHERE (Recipts.ReciptType =:ReciptType )'
      '  AND (Recipts.ReciptNumber BETWEEN :NumberFrom AND :NumberTo)'
      '  AND (Recipts.ReciptDate BETWEEN :DateFrom AND :DateTo)'
      '  AND (Recipts.StoreID BETWEEN :StoreFrom AND :StoreTo )'
      '  AND (Recipts.YearID BETWEEN :YearIDFrom AND :YearIDTo )'
      ''
      
        'GROUP BY Recipts.ID,Recipts.ReciptID, Recipts.StoreID, Recipts.R' +
        'eciptNumber, Recipts.ReciptNumberFormer, Recipts.ReciptDate, Rec' +
        'ipts.PersonID1, Recipts.PersonID2'
      
        ', Customers_1.CustName,Customers_1.CustFirstName, Customers_2.Cu' +
        'stName,Customers_2.CustFirstName, Recipts.ReciptState, Stores.c_' +
        'StoreName,'
      
        '                         Recipts.ReciptNote, Recipts.ReciptType,' +
        ' Recipts.DocNo, Recipts.DocDate, Recipts.FirstUser, Recipts.Last' +
        'User, ReciptItems.MachineNo, ReciptItems.MachineName, Recipts.Pa' +
        'rentReciptID, Recipts.ServerID, Recipts.YearID,'
      
        '                         Tozin.MachineName, Tozin.MachineNo, Toz' +
        'in.MachineWeight, Tozin.MachineFullWeight, Tozin.EnterDate, Tozi' +
        'n.ExitDate, Tozin.FirstUser, Tozin.LastUser'
      'ORDER BY Recipts.ReciptNumber, Recipts.ReciptDate'
      ''
      ''
      ''
      ''
      ''
      ' ')
    Left = 48
    Top = 93
    object qryReciptsReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptNumber'
    end
    object qryReciptsReciptNumberFormer: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605' '#1587#1575#1576#1602
      FieldName = 'ReciptNumberFormer'
    end
    object qryReciptsReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptsPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610' 1'
      FieldName = 'PersonID1'
    end
    object qryRecipts_PersonName1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610' '
      FieldName = '_PersonName1'
      Size = 120
    end
    object qryReciptsStoreID: TSmallintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
    end
    object qryReciptsc_StoreName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1575#1606#1576#1575#1585
      FieldName = 'c_StoreName'
      Size = 70
    end
    object qryReciptsReciptState: TWordField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'ReciptState'
      OnGetText = qryReciptsReciptStateGetText
    end
    object qryReciptsPersonID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610'2'
      FieldName = 'PersonID2'
    end
    object qryReciptsCustName2: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610' 2'
      FieldName = 'CustName2'
      Size = 60
    end
    object qryReciptsEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
    end
    object qryReciptsWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
    end
    object qryReciptsUnitSellPrice: TFMTBCDField
      DisplayLabel = #1601#1740
      FieldName = 'UnitSellPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryReciptsprice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'price'
      currency = True
      Precision = 19
    end
    object qryReciptsDocNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1587#1606#1583
      FieldName = 'DocNo'
    end
    object qryReciptsDocDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582'.'#1587#1606#1583
      FieldName = 'DocDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptsFirstUser: TStringField
      Tag = 3
      DisplayLabel = #1579#1576#1578' '#1603#1606#1606#1583#1607
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryReciptsLastUser: TStringField
      Tag = 3
      DisplayLabel = #1608#1610#1585#1575#1610#1588' '#1603#1606#1606#1583#1607
      FieldName = 'LastUser'
      Size = 50
    end
    object qryReciptsDeficitValue: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1603#1585#1575#1610#1607' '#1581#1605#1604
      FieldName = 'DeficitValue'
      currency = True
      Precision = 19
    end
    object qryReciptsUnitSellPrice2: TBCDField
      Tag = 3
      DisplayLabel = #1607#1586#1610#1606#1607' '#1603#1605#1576#1575#1610#1606
      FieldName = 'UnitSellPrice2'
      currency = True
      Precision = 19
    end
    object qryReciptsMachineNo: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1605#1575#1588#1610#1606' '
      FieldName = 'MachineNo'
      Size = 25
    end
    object qryReciptsMachineName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1585#1575#1606#1606#1583#1607
      FieldName = 'MachineName'
      Size = 50
    end
    object qryReciptsTozinMachineName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1585#1575#1606#1606#1583#1607'.'
      FieldName = 'TozinMachineName'
      Size = 50
    end
    object qryReciptsTozinMachineNo: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1605#1575#1588#1610#1606' .'
      FieldName = 'TozinMachineNo'
      Size = 25
    end
    object qryReciptsMachineWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1582#1575#1604#1740
      FieldName = 'MachineWeight'
    end
    object qryReciptsMachineFullWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1662#1585
      FieldName = 'MachineFullWeight'
    end
    object qryReciptsMandeh: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1582#1575#1604#1589
      FieldName = 'Mandeh'
      ReadOnly = True
    end
    object qryReciptsEnterDate: TStringField
      DisplayLabel = #1608#1585#1608#1583
      FieldName = 'EnterDate'
      ReadOnly = True
    end
    object qryReciptsExitDate: TStringField
      DisplayLabel = #1582#1585#1608#1580
      FieldName = 'ExitDate'
      ReadOnly = True
    end
    object qryReciptsTozinFirstUser: TStringField
      Tag = 3
      DisplayLabel = #1579#1576#1578' '#1705#1606#1606#1583#1607
      FieldName = 'TozinFirstUser'
      Size = 50
    end
    object qryReciptsTozinLastUser: TStringField
      Tag = 3
      DisplayLabel = #1608#1610#1585#1575#1610#1588' '#1603#1606#1606#1583#1607
      FieldName = 'TozinLastUser'
      Size = 50
    end
    object qryReciptsReciptType: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'ReciptType'
    end
    object qryReciptsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryReciptsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptsParentReciptID: TIntegerField
      FieldName = 'ParentReciptID'
    end
    object qryReciptsID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
  end
  object srcRecipts: TDataSource
    DataSet = qryRecipts
    Left = 48
    Top = 149
  end
  object qryInitQry: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'Type'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT      *  from  ReciptTypes'
      'WHERE     ReciptType = :Type'
      'ORDER BY ReciptType')
    Left = 682
    Top = 167
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcRecipts
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 500
    Top = 212
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\rpt001.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 512
    Top = 320
    Version = '22.05'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 26194
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 6879
        mmLeft = 0
        mmTop = 19315
        mmWidth = 203300
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 77788
        mmTop = 0
        mmWidth = 47625
        BandType = 0
        LayerName = Foreground
      end
      object ppLblFormName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblFormName'
        OnGetText = ppLblFormNameGetText
        Border.mmPadding = 0
        Caption = #1711#1586#1575#1585#1588' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7144
        mmLeft = 95779
        mmTop = 5292
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 0
        mmTop = 12435
        mmWidth = 203300
        BandType = 0
        LayerName = Foreground
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblPrintDate'
        OnGetText = ppLblPrintDateGetText
        Border.mmPadding = 0
        Caption = #1576#1578#1575#1585#1610#1582':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5292
        mmLeft = 9790
        mmTop = 7144
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppSysVarPageNumber: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNumber'
        OnGetText = ppSysVarPageNumberGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 9790
        mmTop = 1852
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 148961
        mmTop = 19315
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 106892
        mmTop = 19315
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine50: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line50'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 170127
        mmTop = 19315
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLine51: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line501'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 185738
        mmTop = 19315
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 41010
        mmTop = 19315
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 83079
        mmTop = 19315
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCustomerID2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label102'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 529
        mmTop = 19844
        mmWidth = 24871
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1575#1606#1576#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 42863
        mmTop = 19844
        mmWidth = 41275
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCustomerID1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCustomerID1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1575#1606#1576#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 84931
        mmTop = 19844
        mmWidth = 23019
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label32'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1582#1585#1610#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 108744
        mmTop = 19844
        mmWidth = 41275
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1582#1585#1610#1583#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 150813
        mmTop = 19844
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 171715
        mmTop = 19844
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 187590
        mmTop = 19844
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLblAidInfoNo: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblAidInfoNo'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1608#1590#1593#1610#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 26194
        mmTop = 19844
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 24342
        mmTop = 19315
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 201613
        mmTop = 19315
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintCount = 60
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6500
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'ReciptNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 187590
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'ReciptDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 171715
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = '_PersonName1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 108744
        mmTop = 0
        mmWidth = 41275
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0 ;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 529
        mmTop = 0
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText19'
        Border.mmPadding = 0
        DataField = 'c_StoreName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 44450
        mmTop = 0
        mmWidth = 39688
        BandType = 4
        LayerName = Foreground
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 186796
        mmTop = 0
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line33'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 106627
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 169334
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine46: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line46'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 148696
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 42333
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'PersonID1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 150813
        mmTop = 0
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'StoreID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 84931
        mmTop = 0
        mmWidth = 23019
        BandType = 4
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 1852
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTxtState: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTxtState'
        OnGetText = ppDBTxtStateGetText
        Border.mmPadding = 0
        DataField = 'ReciptState'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 26194
        mmTop = 265
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 80963
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 22225
        mmTop = 0
        mmWidth = 3704
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 202671
        mmTop = 265
        mmWidth = 529
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 6000
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc17: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc17'
        Border.mmPadding = 0
        DataField = 'ReciptNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 169598
        mmTop = 0
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1606#1602#1604' '#1576#1607' '#1589#1601#1581#1607' '#1576#1593#1583':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6085
        mmLeft = 26194
        mmTop = 0
        mmWidth = 29898
        BandType = 8
        LayerName = Foreground
      end
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line38'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc19: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc19'
        Border.mmPadding = 0
        DataField = 'price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0 ;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 529
        mmTop = 0
        mmWidth = 24871
        BandType = 8
        LayerName = Foreground
      end
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line36'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 25665
        mmTop = 0
        mmWidth = 265
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 203300
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583#1601#1585#1605#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 187590
        mmTop = 0
        mmWidth = 10319
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'ReciptNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5027
        mmLeft = 169598
        mmTop = 0
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1603#1604':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6085
        mmLeft = 26194
        mmTop = 0
        mmWidth = 11642
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'price'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0 ;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 529
        mmTop = 0
        mmWidth = 24871
        BandType = 7
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 25665
        mmTop = 0
        mmWidth = 265
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object srcItems: TDataSource
    DataSet = qryItems
    Left = 164
    Top = 152
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcItems
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 411
    Top = 212
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object qryItems: TADOQuery
    AutoCalcFields = False
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = qryItemsCalcFields
    DataSource = srcRecipts
    Parameters = <
      item
        Name = 'ReciptID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 620209
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
      
        'SELECT     *, StuffCoding.c_StuffName AS _StuffName, Units.UnitN' +
        'ame AS _UnitName,'
      '             StuffCoding.c_StuffTecInfo AS _StuffTecInfo,'
      '                      StuffCoding.Carton AS _Carton'
      'FROM         Units RIGHT OUTER JOIN'
      
        '                      StuffCoding ON Units.UnitCode = StuffCodin' +
        'g.n_UnitCode RIGHT OUTER JOIN'
      
        '                      ReciptItems ON StuffCoding.c_StuffCode = R' +
        'eciptItems.StuffCode'
      'WHERE     (ReciptItems.ReciptID = :ReciptID)'
      'AND (ReciptItems.ServerID = :ServerID )'
      'ORDER BY ReciptItems.ReciptItemID'
      ' ')
    Left = 169
    Top = 98
    object qryItemsReciptItemID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1606#1583#1607
      FieldName = 'ReciptItemID'
    end
    object qryItemsReciptID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptID'
    end
    object qryItemsStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryItems_StuffName: TStringField
      DisplayLabel = #1588#1600#1600#1600#1600#1600#1600#1585#1581'   '#1603#1600#1600#1600#1600#1575#1604#1575
      FieldName = '_StuffName'
      Size = 70
    end
    object qryItemsStuffSize: TStringField
      DisplayLabel = #1575#1576#1600#1600#1593#1575#1583
      FieldName = 'StuffSize'
      FixedChar = True
      Size = 12
    end
    object qryItemsStuffAlloy: TStringField
      DisplayLabel = #1570#1604#1610#1575#1688
      FieldName = 'StuffAlloy'
      Size = 12
    end
    object qryItemsInputEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'InputEntity'
    end
    object qryItemsOutputEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'OutputEntity'
    end
    object qryItemsInputWeight: TFloatField
      DisplayLabel = #1608#1586#1606
      FieldName = 'InputWeight'
    end
    object qryItemsOutputWeight: TFloatField
      DisplayLabel = #1608#1586#1606
      FieldName = 'OutputWeight'
    end
    object qryItemsRequestedEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1583#1585#1582#1608#1575#1587#1578#1610
      FieldName = 'RequestedEntity'
    end
    object qryItemsRequestedWeight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1583#1585' '#1582#1608#1575#1587#1578#1610
      FieldName = 'RequestedWeight'
    end
    object qryItemsStuffGrade: TWordField
      DisplayLabel = #1583#1585#1580#1607' '#1603#1575#1604#1575
      FieldName = 'StuffGrade'
    end
    object qryItemsTotalInputPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1603#1604' '#1608#1575#1585#1583#1607
      FieldName = 'TotalInputPrice'
      currency = True
      Precision = 19
    end
    object qryItemsTotalOutputPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1610' '#1603#1604' '#1589#1575#1583#1585#1607
      FieldName = 'TotalOutputPrice'
      currency = True
      Precision = 19
    end
    object qryItemsTotallSellPrice: TBCDField
      FieldName = 'TotallSellPrice'
      currency = True
      Precision = 19
    end
    object qryItemsUnitSellPrice: TFMTBCDField
      FieldName = 'UnitSellPrice'
      currency = True
      Precision = 19
    end
    object qryItemsItemNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ItemNote'
      Size = 100
    end
    object qryItemsacc_TopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'acc_TopicCode'
    end
    object qryItemsacc_DetailCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'acc_DetailCode'
      Size = 12
    end
    object qryItemsacc_CTopicCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
      FieldName = 'acc_CTopicCode'
      Size = 12
    end
    object qryItemsUseUnitID: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1581#1604' '#1605#1589#1585#1601
      FieldName = 'UseUnitID'
    end
    object qryItemspreReciptItemID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1575#1582#1608#1575#1606#1610
      FieldName = 'preReciptItemID'
    end
    object qryItemsStuffDiameter: TFloatField
      DisplayLabel = #1590#1582#1575#1605#1578
      FieldName = 'StuffDiameter'
    end
    object qryItemsControlCode: TLargeintField
      DisplayLabel = #1587#1585#1610#1575#1604' '#1603#1606#1578#1585#1604
      FieldName = 'ControlCode'
    end
    object qryItemsacc_CTopicCode2: TStringField
      FieldName = 'acc_CTopicCode2'
      Size = 12
    end
    object qryItemsPersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object qryItems_radif: TIntegerField
      FieldKind = fkCalculated
      FieldName = '_radif'
      LookupCache = True
      Calculated = True
    end
    object qryItemsAidNumber: TStringField
      FieldName = 'AidNumber'
      Size = 40
    end
    object qryItemsAidDate: TStringField
      FieldName = 'AidDate'
      FixedChar = True
      Size = 10
    end
    object qryItemsDiscount: TIntegerField
      FieldName = 'Discount'
    end
    object qryItems_UnitName: TStringField
      DisplayLabel = #1608#1575#1581#1583
      FieldName = '_UnitName'
      Size = 50
    end
    object qryItems_StuffTecInfo: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1601#1606#1610
      FieldName = '_StuffTecInfo'
      Size = 15
    end
    object qryItems_Carton: TFloatField
      FieldName = '_Carton'
    end
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 384
    Top = 381
    object MenuItem3: TMenuItem
      Caption = #1670#1575#1662' '
      OnClick = MenuItem3Click
    end
    object N7: TMenuItem
      Caption = #1670#1575#1662' '#1576#1575' '#1605#1602#1583#1575#1585
      OnClick = N7Click
    end
    object MenuItem4: TMenuItem
      Caption = #1670#1575#1662' '#1603#1604#1610' '
      OnClick = MenuItem4Click
    end
    object PerformFileName: TMenuItem
      Caption = 'PerformFileName'
      OnClick = PerformFileNameClick
    end
    object ReportFileName: TMenuItem
      Caption = 'ReportFileName'
      OnClick = PerformFileNameClick
    end
  end
  object PopMnuReciptState: TPopupMenu
    AutoHotkeys = maManual
    Left = 296
    Top = 344
    object MenuItem5: TMenuItem
      Action = actReciptState1
    end
    object MenuItem6: TMenuItem
      Action = actReciptState2
    end
    object MenuItem7: TMenuItem
      Action = actReciptState3
    end
    object actReciptState01: TMenuItem
      Action = actReciptState0
    end
    object N1: TMenuItem
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607' '#1587#1591#1585#1607#1575
      OnClick = N1Click
    end
  end
  object stpNewReciptsCorrelate: TADOStoredProc
    Connection = DmF.adcBSell
    ProcedureName = 'NewReciptsCorrelate;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@OldID'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = Null
      end
      item
        Name = '@ID'
        Attributes = [paNullable]
        DataType = ftLargeint
        Direction = pdInputOutput
        Precision = 19
        Value = Null
      end>
    Left = 152
    Top = 233
  end
  object pmOther: TPopupMenu
    AutoHotkeys = maManual
    Left = 137
    Top = 371
    object N2: TMenuItem
      Action = actUpDate
    end
  end
  object popSortRun: TPopupMenu
    Left = 640
    Top = 368
    object N12: TMenuItem
      Tag = 1
      Caption = #1605#1585#1578#1576' '#1603#1585#1583#1606' '#1601#1585#1605' '#1580#1575#1585#1610' '#1608' '#1601#1585#1605' '#1605#1585#1578#1576#1591
      OnClick = allSort1Click
    end
    object N13: TMenuItem
      Tag = 2
      Caption = #1605#1585#1578#1576' '#1603#1585#1583#1606' '#1601#1585#1605' '#1580#1575#1585#1610
      OnClick = allSort1Click
    end
    object allSort1: TMenuItem
      Caption = 'allSortRun'
      Visible = False
      OnClick = allSort1Click
    end
  end
end
