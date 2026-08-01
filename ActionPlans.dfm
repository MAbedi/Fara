inherited ActionPlansF: TActionPlansF
  Caption = #1576#1585#1606#1575#1605#1607' '#1593#1605#1604#1740#1575#1578#1740'(Action Plans)'
  ClientWidth = 882
  ExplicitWidth = 898
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Width = 882
    ExplicitTop = 476
    ExplicitWidth = 886
    object newPanel: TPanel
      Left = 654
      Top = 1
      Width = 231
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 1
      object BitBtn1: TBitBtn
        AlignWithMargins = True
        Left = 155
        Top = 5
        Width = 75
        Height = 29
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Action = DataSetInsert1
        Align = alRight
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn2: TBitBtn
        AlignWithMargins = True
        Left = 78
        Top = 5
        Width = 75
        Height = 29
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Action = DataSetEdit1
        Align = alRight
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object btnDataSetDelete1_: TBitBtn
        AlignWithMargins = True
        Left = 1
        Top = 5
        Width = 75
        Height = 29
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Action = DataSetDelete1_
        Align = alRight
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object okPanel: TPanel
      Left = 500
      Top = 1
      Width = 154
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 2
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 78
        Top = 5
        Width = 75
        Height = 29
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Action = DataSetPost1
        Align = alRight
        Caption = #1578#1575#1610#1610#1583
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00318C2900007B00004A9C4200FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00009C100000AD0800007B0000BDBD5A00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000084420000AD080000B51000008C00007B841800FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000084000000BD180000B51000009400007B6300008CB5
          7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00318C290000A5180000B5100000FF420000BD1800BD9C00000073
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00009C100000A5390000FF420000FF420000AD080000BD1000007B
          00006BAD5A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000B5210000E7420000FF4200318C2900318C2900BDBD1000008C
          000018841800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000084080000940800FF00FF00FF00FF00BD9C000000B5
          1000007B00008CB57300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B84210000B5
          10000084000000730000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00009C
          080000B51000007B000000A55A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00318C
          290000B5100010941800BD9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF001094290039DE8C00BD9C18006BAD5A00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00189C210000CE210000A55A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF008CB57300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        AlignWithMargins = True
        Left = 1
        Top = 5
        Width = 75
        Height = 29
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Action = DataSetCancel1
        Align = alRight
        Caption = #1575#1606#1589#1585#1575#1601
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00424A
          4A00424A4A00424A4A0000424A00424A4A00424A4A00424A4A00005A4A00424A
          4A00424A4A00424A4A00005A4A00424A4A00424A4A00FF00FF00FF00FF006B73
          6B00FFFFFF00FFFFFF0000E7FF00FFFFFF00FFFFFF00FFFFFF00BDFFFF00FFFF
          FF00FFFFFF00FFFFFF00BDFFFF00FFFFFF006B736B00FF00FF00FF00FF006B73
          6B00FFFFFF000010AD0000844A00FF9C4A00FF9C4A00FF9C4A00BD9C4A00FF9C
          4A00FF9C4A00FF9C4A00BD9C4A000018CE006B736B00FF00FF00FF00FF006B73
          6B00FFFFFF000018CE000000AD00FFFFFF00FF9C4A00FFFFFF0000E7FF00FF9C
          4A00FFFFFF00FFFFFF000000CE00FFFFFF006B736B00FF00FF00FF00FF008484
          7300FFFFFF00FF9C4A000000CE000010AD00FF9C4A00FFFFFF00BDFFFF00FF9C
          4A000010AD000018CE00BD9C4A00FFFFFF0084847300FF00FF00FF00FF008484
          7300FFFFFF00FF9C4A0000844A000018CE000010AD00FF9C4A00BD9C4A000010
          AD000018CE00FF9C4A00BD9C4A00FFFFFF0084847300FF00FF00FF00FF008484
          7300FFFFFF00F78C390000E7FF00FFFFFF000018CE000018DE00BD18AD000018
          DE00FFFFFF00FFFFFF00BD9C3900FFFFFF0084847300FF00FF00FF00FF008C8C
          8C00F7F7F700F78C390000E7FF00FFFFFF00F78C39000018DE00BD18DE000018
          CE000010AD00FFFFFF00BD9C3900F7F7F7008C8C8C00FF00FF00FF00FF008C8C
          8C00F7F7F700E784080000840800E78408000018CE000018E700BD9C0800E784
          08000018F7000010AD00BD9C0800F7F7F7008C8C8C00FF00FF00FF00FF009494
          9400E7E7E700E784080000E7FF000018F7000018E700FFFFFF00BDFFFF00E784
          0800FFFFFF000018F700BD9C0800E7E7E70094949400FF00FF00FF00FF009494
          9400E7E7E700E78408000000FF000018E700E7840800FFFFFF00BDFFFF00E784
          0800FFFFFF00FFFFFF00BD18F700E7E7E70094949400FF00FF00FF00FF009C9C
          9C00CED6CE000018F7000000F700E7840800E7840800E7840800FF9C0800E784
          0800E7840800E7840800008408000018F7009C9C9C00FF00FF00FF00FF009C9C
          9C00CED6CE000018F70000C6CE00CED6CE00CED6CE00CED6CE0000DECE00CED6
          CE00CED6CE00CED6CE0000C6CE00CED6CE009C9C9C00FF00FF00FF00FF009C9C
          9C009C9C9C009C9C9C0000849C009C9C9C009C9C9C009C9C9C0084849C009C9C
          9C009C9C9C009C9C9C0000849C009C9C9C009C9C9C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 1
      end
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 160
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 3
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 237
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 4
    end
    object BitBtn7: TBitBtn
      AlignWithMargins = True
      Left = 314
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actPrint
      Align = alLeft
      Caption = #1670#1600#1600#1600#1575#1662
      TabOrder = 5
    end
    object BitBtn8: TBitBtn
      AlignWithMargins = True
      Left = 83
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1740#1576
      TabOrder = 6
    end
    object Panel1: TPanel
      Left = 390
      Top = 1
      Width = 110
      Height = 39
      Align = alClient
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 7
      object BitBtn9: TBitBtn
        AlignWithMargins = True
        Left = 34
        Top = 6
        Width = 75
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = actDeleteAll
        Align = alRight
        Caption = #1581#1584#1601' '#1705#1604#1740
        TabOrder = 0
      end
      object BitBtn10: TBitBtn
        AlignWithMargins = True
        Left = -57
        Top = 6
        Width = 89
        Height = 27
        Margins.Left = 1
        Margins.Top = 6
        Margins.Right = 1
        Margins.Bottom = 6
        Action = actActionPlanState1
        Align = alRight
        Caption = #1575#1585#1587#1575#1604#8207#1576#1607#8207#1705#1575#1585#1578#1575#1576#1604
        TabOrder = 1
      end
    end
  end
  inherited Panel2: TPanel
    Width = 882
    ExplicitWidth = 886
    inherited ImgTemplate: TImage
      Left = 881
      ExplicitLeft = 827
    end
    inherited lblCaption: TLabel
      Left = 764
      Height = 16
      ExplicitLeft = 764
    end
  end
  inherited Panel3: TPanel
    Width = 882
    ExplicitWidth = 886
    ExplicitHeight = 423
    object PnlPerson1: TPanel
      Left = 2
      Top = 2
      Width = 882
      Height = 28
      Align = alTop
      TabOrder = 0
      object LblPerson1: TLabel
        AlignWithMargins = True
        Left = 864
        Top = 4
        Width = 14
        Height = 13
        Align = alRight
        Alignment = taRightJustify
        Caption = #1705#1583' '
        FocusControl = edtCustID
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object btnPersonID1: TSpeedButton
        Tag = 1
        AlignWithMargins = True
        Left = 759
        Top = 4
        Width = 23
        Height = 20
        Align = alRight
        Caption = '...'
        OnClick = btnPersonID1Click
        ExplicitLeft = 233
        ExplicitTop = 1
        ExplicitHeight = 22
      end
      object edtCustID: TDBEdit
        Tag = 1
        AlignWithMargins = True
        Left = 788
        Top = 4
        Width = 70
        Height = 20
        Align = alRight
        Color = clGradientInactiveCaption
        DataField = 'CustID'
        DataSource = srcCustomers
        TabOrder = 0
        ExplicitHeight = 21
      end
      object edtCustName: TDBEdit
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 749
        Height = 20
        Align = alClient
        Color = clInactiveCaption
        DataField = 'CustName'
        DataSource = srcCustomers
        TabOrder = 1
        ExplicitHeight = 21
      end
    end
    object DBGrid1: TDBGrid
      Tag = 111
      Left = 2
      Top = 80
      Width = 882
      Height = 323
      Align = alClient
      Color = clCream
      DataSource = srcActionPlans
      DrawingStyle = gdsGradient
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnEditButtonClick = DBGrid1EditButtonClick
      OnEnter = DBGrid1Enter
      OnKeyPress = DBGrid1KeyPress
      OnTitleClick = DBGrid1TitleClick
      Columns = <
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'ActionPlanDate'
          Width = 122
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'PersonID2'
          Width = 19
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_PersonName2'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_Mobile'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_GrpID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_GrpName'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_State'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_City'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_Address'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_Tel'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_EMail'
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_ActionPlanType'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SendDate'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PurposeOfVisit'
          Width = 68
          Visible = True
        end>
    end
    object rgActionPlanState: TRadioGroup
      Left = 2
      Top = 30
      Width = 882
      Height = 50
      Align = alTop
      Caption = #1608#1590#1593#1740#1578
      Columns = 6
      ItemIndex = 0
      Items.Strings = (
        #1662#1740#1588' '#1606#1608#1740#1587
        #1575#1585#1587#1575#1604' '#1588#1583#1607
        #1578#1575#1740#1740#1583' '#1588#1583#1607
        #1606#1607#1575#1740#1740
        #1576#1575#1740#1711#1575#1606#1740
        #1576#1575#1591#1604#1607)
      TabOrder = 2
      OnClick = rgActionPlanStateClick
    end
    object StatusBar1: TStatusBar
      Left = 2
      Top = 403
      Width = 882
      Height = 19
      Panels = <
        item
          Width = 50
        end>
    end
  end
  inherited ActionList: TActionList
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcActionPlans
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcActionPlans
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcActionPlans
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcActionPlans
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcActionPlans
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1740#1576
      OnExecute = actSortExecute
    end
    object actActionPlanState1: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607#8207#1705#1575#1585#1578#1575#1576#1604
      OnExecute = actActionPlanState1Execute
    end
    object actDBGridSelectAll: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607' '#1587#1591#1585#1607#1575
      OnExecute = actDBGridSelectAllExecute
    end
    object actDeleteAll: TAction
      Caption = #1581#1584#1601' '#1705#1604#1740
      OnExecute = actDeleteAllExecute
    end
    object actExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actExcelExecute
    end
    object actPrint: TAction
      Caption = #1670#1600#1600#1600#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 160
    Top = 1
  end
  object qryinit: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'declare @ReciptType int'
      'set @ReciptType= :ReciptType'
      'SELECT  *  ,(SELECT   count(*)'
      'FROM            ReciptTypes'
      
        'WHERE       ( ('#39','#39' + RecallReciptTypes + '#39','#39' LIKE '#39'%,'#39'+LTRIM( st' +
        'r(@ReciptType))+'#39',%'#39')  OR'
      '       (ReciptType = @ReciptType))'
      
        ' AND (RecallType IN (2, 3, 4, 5, 6, 7, 8, 10, 11, 12, 13, 15, 16' +
        '))) AS ParentFormActive'
      ''
      ' FROM    ReciptTypes'
      ''
      'where ReciptType=@ReciptType'
      ''
      ''
      'ORDER BY ReciptType'
      '')
    Left = 422
    Top = 4
  end
  object qryLookup: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'FormKindSerial'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT     LookUpID,Name'
      'FROM         LookUps'
      'WHERE(Kind=:FormKindSerial )')
    Left = 615
    Top = 284
  end
  object qryCustomers1: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT '
      
        '                         Vu_CustomersGroups.CustID, Vu_Customers' +
        'Groups.CustName, ISNULL(AddressInMasir.MasirText, '#39#39') + '#39' '#39' + Vu' +
        '_CustomersGroups.Address AS Address, Vu_CustomersGroups.Tel, '
      
        '                         Vu_CustomersGroups.PostalCode, Vu_Custo' +
        'mersGroups.email, Vu_CustomersGroups.CustomerGrpID, Vu_Customers' +
        'Groups.CustomerGrpName, Zone.Ostan, Zone.Shahr, '
      
        '                         Vu_CustomersGroups.EconomicNumber, Vu_C' +
        'ustomersGroups.Fax, Vu_CustomersGroups.DayTime, Vu_CustomersGrou' +
        'ps.ValuationType, Vu_CustomersGroups.Discount, '
      
        '                         Vu_CustomersGroups.DiscountNote + '#39' '#1583#1585#1589 +
        #1583': '#39' + LTRIM(STR(Vu_CustomersGroups.Discount)) AS DiscountNote, ' +
        'Vu_CustomersGroups.NationalID, Vu_CustomersGroups.InfoWeight, '
      
        '                         Vu_CustomersGroups.SellsDefaultState, V' +
        'u_CustomersGroups.MasirID, Vu_CustomersGroups.PersonID1, Vu_Cust' +
        'omersGroups.Mobile, Vu_CustomersGroups.Max4WaterCo, '
      
        '                         Vu_CustomersGroups.CustomerActive, Addr' +
        'essInMasir.MasirText, Vu_CustomersGroups.Address AS AddressOnly'
      'FROM            Vu_CustomersGroups LEFT OUTER JOIN'
      
        '                         AddressInMasir ON Vu_CustomersGroups.Ma' +
        'sirID = AddressInMasir.MasirID LEFT OUTER JOIN'
      
        '                         Zone ON Vu_CustomersGroups.StateCode = ' +
        'Zone.OstanCode AND Vu_CustomersGroups.CityCode = Zone.ShahrCode')
    Left = 536
    Top = 174
  end
  object qryCustomers2: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT '
      
        '                         Vu_CustomersGroups.CustID, Vu_Customers' +
        'Groups.CustName, Vu_CustomersGroups.InfoWeight, Vu_CustomersGrou' +
        'ps.Address, Vu_CustomersGroups.CustomerActive, Vu_CustomersGroup' +
        's.Mobile, '
      
        '                         Vu_CustomersGroups.CustomerGrpID, Vu_Cu' +
        'stomersGroups.CustomerGrpName, Zone.Ostan, Zone.Shahr, Vu_Custom' +
        'ersGroups.Tel, Vu_CustomersGroups.email'
      'FROM            Vu_CustomersGroups LEFT OUTER JOIN'
      
        '                         Zone ON Vu_CustomersGroups.StateCode = ' +
        'Zone.OstanCode AND Vu_CustomersGroups.CityCode = Zone.ShahrCode')
    Left = 637
    Top = 190
  end
  object qryActionPlans: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    BeforeInsert = qryActionPlansBeforeInsert
    AfterInsert = qryActionPlansAfterInsert
    BeforeEdit = qryActionPlansBeforeEdit
    BeforePost = qryActionPlansBeforePost
    AfterPost = qryActionPlansAfterPost
    BeforeDelete = qryActionPlansBeforeDelete
    AfterDelete = qryActionPlansAfterDelete
    AfterScroll = qryActionPlansAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'SELECT  ID,     ReciptType, PersonID1, PersonID2, ActionPlanDate' +
        ', ActionPlanType, ActionPlanNote,'
      'ActionPlanState, SendDate, UserName,ModifyDate, UserID'
      
        '   ,PurposeOfVisit,ID AS ActionPlanID ,dbo.MiladiToShamsi(Action' +
        'PlanDate) + '#39' - '#39' +'
      '   CONVERT(char(5), ActionPlanDate, 108) AS _ActionPlanDate '
      ''
      'FROM    ActionPlans ')
    Left = 397
    Top = 179
    object qryActionPlansID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryActionPlansPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583
      FieldName = 'PersonID1'
      OnChange = qryActionPlansPersonID1Change
    end
    object qryActionPlans_PersonName1: TStringField
      FieldKind = fkLookup
      FieldName = '_PersonName1'
      LookupDataSet = qryCustomers1
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonID1'
      Size = 120
      Lookup = True
    end
    object qryActionPlansPersonID2: TIntegerField
      Tag = 3
      DisplayLabel = #1705#1583
      FieldName = 'PersonID2'
      OnChange = qryActionPlansPersonID2Change
    end
    object qryActionPlans_PersonName2: TStringField
      DisplayLabel = #1606#1575#1605' '#1608#1740#1586#1740#1578' '#1588#1608#1606#1583#1607
      FieldKind = fkLookup
      FieldName = '_PersonName2'
      LookupDataSet = qryCustomers2
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'PersonID2'
      Size = 120
      Lookup = True
    end
    object qryActionPlansReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryActionPlansActionPlanDate: TDateTimeField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1740#1582' '#1608' '#1587#1575#1593#1578' '#1576#1585#1606#1575#1605#1607' '#1585#1740#1586#1740
      FieldName = 'ActionPlanDate'
      OnGetText = qryActionPlansActionPlanDateGetText
      OnSetText = qryActionPlansActionPlanDateSetText
    end
    object qryActionPlans_ActionPlanDate: TStringField
      FieldName = '_ActionPlanDate'
      ReadOnly = True
      Size = 18
    end
    object qryActionPlansActionPlanType: TIntegerField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1576#1575#1586#1575#1586#1740#1575#1576#1740
      FieldName = 'ActionPlanType'
    end
    object qryActionPlans_ActionPlanType: TStringField
      DisplayLabel = #1606#1608#1593' '#1576#1575#1586#1575#1586#1740#1575#1576#1740
      FieldKind = fkLookup
      FieldName = '_ActionPlanType'
      LookupDataSet = qryLookup
      LookupKeyFields = 'LookUpID'
      LookupResultField = 'Name'
      KeyFields = 'ActionPlanType'
      Size = 200
      Lookup = True
    end
    object qryActionPlansActionPlanNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'ActionPlanNote'
      Size = 400
    end
    object qryActionPlansActionPlanState: TWordField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1740#1578
      FieldName = 'ActionPlanState'
      OnGetText = qryActionPlansActionPlanStateGetText
    end
    object qryActionPlansSendDate: TDateTimeField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1740#1582' '#1608' '#1587#1575#1593#1578' '#1575#1585#1587#1575#1604
      FieldName = 'SendDate'
      OnGetText = qryActionPlansSendDateGetText
    end
    object qryActionPlansUserName: TStringField
      Tag = 3
      FieldName = 'UserName'
      Size = 50
    end
    object qryActionPlansModifyDate: TDateTimeField
      FieldName = 'ModifyDate'
    end
    object qryActionPlansUserID: TIntegerField
      FieldName = 'UserID'
    end
    object qryActionPlans_Mobile: TStringField
      DisplayLabel = #1605#1608#1576#1575#1740#1604
      FieldKind = fkLookup
      FieldName = '_Mobile'
      LookupDataSet = qryCustomers2
      LookupKeyFields = 'CustID'
      LookupResultField = 'Mobile'
      KeyFields = 'PersonID2'
      ReadOnly = True
      Lookup = True
    end
    object qryActionPlans_GrpID: TIntegerField
      DisplayLabel = #1705#1583' '#1711#1585#1608#1607
      FieldKind = fkLookup
      FieldName = '_GrpID'
      LookupDataSet = qryCustomers2
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustomerGrpID'
      KeyFields = 'PersonID2'
      ReadOnly = True
      Lookup = True
    end
    object qryActionPlans_GrpName: TStringField
      DisplayLabel = #1606#1575#1605' '#1711#1585#1608#1607
      FieldKind = fkLookup
      FieldName = '_GrpName'
      LookupDataSet = qryCustomers2
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustomerGrpName'
      KeyFields = 'PersonID2'
      ReadOnly = True
      Size = 50
      Lookup = True
    end
    object qryActionPlans_State: TStringField
      DisplayLabel = #1575#1587#1578#1575#1606
      FieldKind = fkLookup
      FieldName = '_State'
      LookupDataSet = qryCustomers2
      LookupKeyFields = 'CustID'
      LookupResultField = 'ostan'
      KeyFields = 'PersonID2'
      ReadOnly = True
      Size = 50
      Lookup = True
    end
    object qryActionPlans_City: TStringField
      DisplayLabel = #1588#1607#1585
      FieldKind = fkCalculated
      FieldName = '_City'
      LookupDataSet = qryCustomers2
      LookupKeyFields = 'CustID'
      LookupResultField = 'Shahr'
      KeyFields = 'PersonID2'
      ReadOnly = True
      Size = 50
      Calculated = True
    end
    object qryActionPlans_Address: TStringField
      DisplayLabel = #1570#1583#1585#1587
      FieldKind = fkLookup
      FieldName = '_Address'
      LookupDataSet = qryCustomers2
      LookupKeyFields = 'CustID'
      LookupResultField = 'Address'
      KeyFields = 'PersonID2'
      ReadOnly = True
      Size = 120
      Lookup = True
    end
    object qryActionPlans_Tel: TStringField
      DisplayLabel = #1578#1604#1601#1606
      FieldKind = fkLookup
      FieldName = '_Tel'
      LookupDataSet = qryCustomers2
      LookupKeyFields = 'CustID'
      LookupResultField = 'tel'
      KeyFields = 'PersonID2'
      ReadOnly = True
      Lookup = True
    end
    object qryActionPlans_EMail: TStringField
      DisplayLabel = 'Email'
      FieldKind = fkLookup
      FieldName = '_EMail'
      LookupDataSet = qryCustomers2
      LookupKeyFields = 'CustID'
      LookupResultField = 'Email'
      KeyFields = 'PersonID2'
      ReadOnly = True
      Lookup = True
    end
    object qryActionPlansPurposeOfVisit: TStringField
      Tag = 3
      DisplayLabel = #1607#1583#1601' '#1575#1586' '#1608#1740#1586#1740#1578
      FieldName = 'PurposeOfVisit'
      Size = 100
    end
    object qryActionPlansActionPlanID: TAutoIncField
      FieldName = 'ActionPlanID'
      ReadOnly = True
    end
  end
  object srcActionPlans: TDataSource
    AutoEdit = False
    DataSet = qryActionPlans
    OnStateChange = srcActionPlansStateChange
    Left = 293
    Top = 186
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = plnActionPlans
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A5'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 148000
    PrinterSetup.PaperSize = 11
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\ReciptsGrid0.rtm'
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
    EmailSettings.ShowEmailDialog = True
    EmailSettings.ShowCancelDialog = True
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
    PDFSettings.FontEncoding = feUnicode
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
    Left = 307
    Top = 320
    Version = '22.02'
    mmColumnWidth = 135300
    DataPipelineName = 'plnActionPlans'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
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
  object plnActionPlans: TppDBPipeline
    DataSource = srcActionPlans
    OpenDataSource = False
    UserName = 'plnActionPlans'
    Left = 427
    Top = 282
  end
  object PopMuPrint: TPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    Images = ImageList1
    ParentBiDiMode = False
    Left = 134
    Top = 361
    object NAllRecords: TMenuItem
      Caption = #1670#1575#1662' '#1607#1605#1607' '#1585#1583#1740#1601' '#1607#1575
      OnClick = NAllRecordsClick
    end
    object N10: TMenuItem
      Caption = '-'
    end
  end
  object qryCustomers: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryCustomersAfterScroll
    Parameters = <
      item
        Name = 'CustID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT        CustID, CustName'
      'FROM            Customers'
      'WHERE        (CustID = :CustID)')
    Left = 512
    Top = 6
    object qryCustomersCustID: TIntegerField
      FieldName = 'CustID'
    end
    object qryCustomersCustName: TStringField
      FieldName = 'CustName'
      Size = 120
    end
  end
  object srcCustomers: TDataSource
    AutoEdit = False
    DataSet = qryCustomers
    OnStateChange = srcActionPlansStateChange
    Left = 621
    Top = 10
  end
end
