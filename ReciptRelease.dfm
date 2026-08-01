inherited ReciptReleaseF: TReciptReleaseF
  Left = 272
  Top = 250
  Caption = #1578#1608#1586#1610#1593' '#1603#1575#1604#1575
  ClientHeight = 517
  ClientWidth = 776
  OnResize = FormResize
  ExplicitWidth = 788
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    Width = 776
    ExplicitWidth = 776
    object btnSearch_: TBitBtn
      Left = 94
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 172
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 2
    end
    object btnExcel: TBitBtn
      Left = 250
      Top = 8
      Width = 75
      Height = 25
      Action = actExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object btnFilter: TButton
      Left = 704
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akTop, akRight]
      TabOrder = 4
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
      Left = 659
      Height = 16
      ExplicitLeft = 659
    end
    object Label1: TLabel
      Left = 203
      Top = 7
      Width = 60
      Height = 13
      Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1603#1575#1604#1575' :'#8207
    end
    object Label2: TLabel
      Left = 203
      Top = 32
      Width = 28
      Height = 13
      Caption = #1578#1575#1585#1610#1582' :'#8207
    end
    object SpeedButton1: TSpeedButton
      Left = 8
      Top = 27
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 3
      Width = 193
      Height = 21
      DataField = 'StuffCodeName'
      DataSource = srcStuff
      TabOrder = 0
    end
    object dbedtReciptDate: TDBEdit
      Left = 120
      Top = 28
      Width = 81
      Height = 21
      DataField = 'ReciptDate'
      DataSource = srcRecipts
      TabOrder = 1
    end
    object DBNavigator1: TDBNavigator
      Left = 34
      Top = 28
      Width = 80
      Height = 20
      DataSource = srcStuff
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      TabOrder = 2
    end
  end
  inherited Panel3: TPanel
    Left = 384
    Width = 392
    Height = 423
    ExplicitLeft = 384
    ExplicitWidth = 392
    object pnlRight: TPanel
      Left = 2
      Top = 2
      Width = 388
      Height = 420
      Align = alClient
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 386
        Height = 398
        Align = alClient
        Color = clCream
        DataSource = srcRecipts
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
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
            FieldName = 'PersonID1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PersonID2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PersonName1'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PersonName2'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Entity'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Weight'
            Visible = True
          end>
      end
      object SumGrid1: TSumGrid
        Left = 1
        Top = 399
        Width = 386
        Hint = #1608#1586#1606
        Active = False
        Enable_Controls = True
        MasterGrid = DBGrid1
        FieldsName = 'Entity;Weight;'
      end
    end
  end
  object PnlLeft: TPanel [3]
    Left = 0
    Top = 53
    Width = 384
    Height = 423
    Align = alLeft
    TabOrder = 3
    ExplicitHeight = 424
    object DBGrid2: TDBGrid
      Tag = 111
      Left = 1
      Top = 1
      Width = 382
      Height = 364
      Align = alClient
      Color = clCream
      DataSource = srcReciptRelease
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid2DrawColumnCell
      OnEditButtonClick = DBGrid2EditButtonClick
      OnKeyPress = DBGrid2KeyPress
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'CustID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_CustName'
          Width = 127
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReleaseEntity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReleaseWeight'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReleaseKind'
          PickList.Strings = (
            'Pos'
            #1606#1608#1593' '#1662#1585#1583#1575#1582#1578)
          Visible = True
        end>
    end
    object SumGrid2: TSumGrid
      Left = 1
      Top = 365
      Width = 382
      Hint = #1608#1586#1606
      Active = False
      Enable_Controls = True
      MasterGrid = DBGrid2
      ShowZero = True
      FieldsName = 'ReleaseEntity;ReleaseWeight;'
    end
    object Panel1: TPanel
      Left = 1
      Top = 385
      Width = 382
      Height = 38
      Align = alBottom
      TabOrder = 2
      object newPanel: TPanel
        Left = 151
        Top = 1
        Width = 230
        Height = 36
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object BtnInsert: TBitBtn
          Left = 155
          Top = 8
          Width = 75
          Height = 25
          Action = DataSetInsert1
          Caption = #1580#1583#1610#1583
          TabOrder = 2
        end
        object BitBtn4: TBitBtn
          Left = 77
          Top = 8
          Width = 75
          Height = 25
          Action = DataSetEdit1
          Caption = #1608#1610#1585#1575#1610#1588
          TabOrder = 1
        end
        object BtnDelete: TBitBtn
          Left = 0
          Top = 8
          Width = 75
          Height = 25
          Action = DataSetDelete1_
          Caption = #1581#1584#1601
          TabOrder = 0
        end
      end
      object okPanel: TPanel
        Left = -4
        Top = 1
        Width = 155
        Height = 36
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          155
          36)
        object BitBtn7: TBitBtn
          Left = 80
          Top = 8
          Width = 75
          Height = 25
          Action = DataSetPost1
          Anchors = [akTop, akRight]
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
          TabOrder = 1
        end
        object BitBtn8: TBitBtn
          Left = 0
          Top = 8
          Width = 75
          Height = 25
          Action = DataSetCancel1
          Anchors = [akTop, akRight]
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
          TabOrder = 0
        end
      end
      object btnSelected: TBitBtn
        Left = 1
        Top = 7
        Width = 75
        Height = 25
        Action = actSelected
        Caption = #1575#1606#1578#1582#1575#1576
        TabOrder = 2
      end
    end
  end
  inherited ActionList: TActionList
    Left = 296
    Top = 128
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcReciptRelease
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcReciptRelease
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcReciptRelease
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcReciptRelease
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcReciptRelease
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actExcelExecute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actSelected: TAction
      Caption = #1575#1606#1578#1582#1575#1576
      OnExecute = actSelectedExecute
    end
  end
  inherited ImageList1: TImageList
    Top = 145
  end
  object qryRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryReciptsAfterScroll
    Parameters = <
      item
        Name = 'StuffCode'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'DateTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'CustFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'CustTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'FormType'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     a.ReciptNumber,a.ReciptType , a.ReciptDate, a.PersonI' +
        'D1, a.PersonID2, a.PersonName1, a.PersonName2, a.Entity, a.Weigh' +
        't, a.ReciptID, a.ReciptItemID, a.ServerID, '
      
        '                      a.YearID, case when (SUM(ReciptItemsReleas' +
        'e.ReleaseEntity)+ SUM(ReciptItemsRelease.ReleaseWeight) = (a.Wei' +
        'ght + a.Entity)) then 1 else 0 end  AS HasColor ,'
      'a.StuffCode ,a.CustomerGrpID'
      ' FROM         ('
      ''
      
        'SELECT     Recipts.ReciptNumber, Recipts.ReciptType, Recipts.Rec' +
        'iptDate, Recipts.PersonID1, Recipts.PersonID2, Customers.CustNam' +
        'e AS PersonName1, '
      
        '                      Customers_1.CustName AS PersonName2, SUM(R' +
        'eciptItems.OutputEntity + ReciptItems.InputEntity) AS Entity, '
      
        '                      SUM(ReciptItems.OutputWeight + ReciptItems' +
        '.InputWeight) AS Weight, Recipts.ReciptID, ReciptItems.ReciptIte' +
        'mID, Recipts.ServerID, Recipts.YearID, '
      
        '                      ReciptItems.StuffCode, StuffCoding.Custome' +
        'rGrpID'
      'FROM         Recipts INNER JOIN'
      
        '                      ReciptItems ON Recipts.ReciptID = ReciptIt' +
        'ems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND '
      
        '                      Recipts.YearID = ReciptItems.YearID INNER ' +
        'JOIN'
      
        '                      Customers ON Recipts.PersonID1 = Customers' +
        '.CustID INNER JOIN'
      
        '                      Customers AS Customers_1 ON Recipts.Person' +
        'ID2 = Customers_1.CustID INNER JOIN'
      
        '                      StuffCoding ON ReciptItems.StuffCode = Stu' +
        'ffCoding.c_StuffCode'
      
        'WHERE     (ReciptItems.StuffCode = :StuffCode) and (Recipts.Reci' +
        'ptDate between :DateFrom and :DateTo )And'
      '(Recipts.PersonID1 between :CustFrom and :CustTo )'
      
        'GROUP BY Recipts.ReciptNumber, Recipts.ReciptType, Recipts.Recip' +
        'tDate, Recipts.PersonID1, Recipts.PersonID2, Customers.CustName,' +
        ' '
      
        '                      Customers_1.CustName, Recipts.ReciptID, Re' +
        'ciptItems.ReciptItemID, Recipts.ServerID, Recipts.YearID, Recipt' +
        'Items.StuffCode, '
      '                      StuffCoding.CustomerGrpID'
      ''
      ') AS a LEFT OUTER JOIN'
      
        '                      ReciptItemsRelease ON a.ReciptID = ReciptI' +
        'temsRelease.ReciptID AND a.ServerID = ReciptItemsRelease.ServerI' +
        'D AND '
      
        '                      a.YearID = ReciptItemsRelease.YearID AND a' +
        '.ReciptItemID = ReciptItemsRelease.ReciptItemID'
      'Where (a.ReciptType = :FormType)         '
      '                    '
      
        'GROUP BY a.ReciptNumber, a.ReciptDate, a.PersonID1, a.PersonID2,' +
        ' a.PersonName1, a.PersonName2, a.Entity, a.Weight, a.ReciptID, a' +
        '.ReciptItemID, '
      
        '                      a.ServerID, a.YearID,a.ReciptType , a.Stuf' +
        'fCode  ,a.CustomerGrpID              '
      ''
      ''
      '')
    Left = 489
    Top = 112
    object qryReciptsReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1575#1603#1578#1608#1585
      FieldName = 'ReciptNumber'
    end
    object qryReciptsReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptsPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610
      FieldName = 'PersonID1'
    end
    object qryReciptsPersonID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610'2'
      FieldName = 'PersonID2'
    end
    object qryReciptsPersonName1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610
      FieldName = 'PersonName1'
      Size = 60
    end
    object qryReciptsPersonName2: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610'2'
      FieldName = 'PersonName2'
      Size = 60
    end
    object qryReciptsEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryReciptsWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
      ReadOnly = True
    end
    object qryReciptsReciptID: TIntegerField
      Tag = 3
      FieldName = 'ReciptID'
    end
    object qryReciptsReciptItemID: TIntegerField
      Tag = 3
      FieldName = 'ReciptItemID'
    end
    object qryReciptsHasColor: TIntegerField
      Tag = 3
      FieldName = 'HasColor'
      ReadOnly = True
    end
    object qryReciptsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryReciptsCustomerGrpID: TIntegerField
      FieldName = 'CustomerGrpID'
    end
  end
  object srcRecipts: TDataSource
    DataSet = qryRecipts
    Left = 498
    Top = 199
  end
  object qryReciptRelease: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryReciptReleaseAfterInsert
    BeforePost = qryReciptReleaseBeforePost
    AfterPost = qryReciptReleaseAfterPost
    BeforeDelete = qryReciptReleaseBeforeDelete
    Parameters = <
      item
        Name = 'YearId'
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
      end
      item
        Name = 'ReciptID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ReciptItemID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         ReciptItemsRelease'
      
        'where   (YearID =:YearId) and (ServerId =:ServerID) And (ReciptI' +
        'D=:ReciptID) And   (ReciptItemID =:ReciptItemID) ')
    Left = 41
    Top = 100
    object qryReciptReleaseReleaseID: TIntegerField
      FieldName = 'ReleaseID'
    end
    object qryReciptReleaseReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
    end
    object qryReciptReleaseServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptReleaseYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryReciptReleaseReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptReleaseCustID: TIntegerField
      DisplayLabel = #1603#1583' '#1711#1610#1585#1606#1583#1607
      FieldName = 'CustID'
    end
    object qryReciptReleaseReleaseEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'ReleaseEntity'
    end
    object qryReciptReleaseReleaseWeight: TFloatField
      DisplayLabel = #1608#1586#1606
      FieldName = 'ReleaseWeight'
    end
    object qryReciptReleaseReleaseKind: TWordField
      DisplayLabel = #1606#1608#1593' '#1662#1585#1583#1575#1582#1578
      FieldName = 'ReleaseKind'
      OnGetText = qryReciptReleaseReleaseKindGetText
      OnSetText = qryReciptReleaseReleaseKindSetText
    end
    object qryReciptRelease_CustName: TStringField
      DisplayLabel = #1606#1575#1605' '#1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607
      FieldKind = fkLookup
      FieldName = '_CustName'
      LookupDataSet = qryCustomers
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustID'
      Size = 120
      Lookup = True
    end
    object qryReciptRelease_InfoWeight: TFloatField
      FieldKind = fkLookup
      FieldName = '_InfoWeight'
      LookupDataSet = qryCustomers
      LookupKeyFields = 'CustID'
      LookupResultField = 'InfoWeight'
      KeyFields = 'CustID'
      Lookup = True
    end
  end
  object srcReciptRelease: TDataSource
    DataSet = qryReciptRelease
    OnStateChange = srcReciptReleaseStateChange
    Left = 48
    Top = 157
  end
  object qryCustomers: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT    CustID, CustName,InfoWeight'
      'FROM         Customers'
      'ORDER BY CustID')
    Left = 689
    Top = 128
  end
  object qryStuff: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryStuffAfterScroll
    Parameters = <
      item
        Name = 'DateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'DateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'StuffFrom'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'StuffTo'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'Fromtype'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     ReciptItems.StuffCode, StuffCoding.c_StuffName,CAST(R' +
        'eciptItems.StuffCode AS nvarchar(14)) '
      
        '                      +  '#39' - '#39' + StuffCoding.c_StuffName AS Stuf' +
        'fCodeName'
      'FROM         Recipts INNER JOIN'
      
        '                      ReciptItems ON Recipts.ReciptID = ReciptIt' +
        'ems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND '
      
        '                      Recipts.YearID = ReciptItems.YearID INNER ' +
        'JOIN'
      
        '                      StuffCoding ON ReciptItems.StuffCode = Stu' +
        'ffCoding.c_StuffCode'
      
        'WHERE (reciptdate between  :DateFrom and  :DateTo) and   (Recipt' +
        'Items.StuffCode Between  :StuffFrom  and  :StuffTo) and (Recipts' +
        '.recipttype= :Fromtype)'
      'GROUP BY  ReciptItems.StuffCode, StuffCoding.c_StuffName')
    Left = 328
    Top = 15
    object qryStuffStuffCode: TLargeintField
      FieldName = 'StuffCode'
    end
    object qryStuffc_StuffName: TStringField
      DisplayLabel = #1606#1575#1605' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 150
    end
    object qryStuffStuffCodeName: TWideStringField
      DisplayLabel = #1603#1583' '#1608' '#1606#1575#1605' '#1603#1575#1604#1575
      FieldName = 'StuffCodeName'
      ReadOnly = True
      Size = 167
    end
  end
  object srcStuff: TDataSource
    DataSet = qryStuff
    Left = 272
    Top = 8
  end
end
