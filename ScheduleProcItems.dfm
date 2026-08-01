inherited ScheduleProcItemsF: TScheduleProcItemsF
  Left = 237
  Top = 144
  Caption = #1576#1585#1606#1575#1605#1607' '#1585#1610#1586#1610' '#1605#1585#1575#1581#1604' '#1587#1575#1582#1578' / '#1578#1608#1604#1610#1583
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    object BitBtn1: TBitBtn
      Left = 250
      Top = 8
      Width = 75
      Height = 25
      Action = actSendToExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      Left = 172
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
      Left = 94
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      Left = 698
      Top = 8
      Width = 75
      Height = 25
      Action = actShow
      Anchors = [akTop, akRight]
      Caption = #1606#1605#1575#1610#1588
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      Left = 620
      Top = 8
      Width = 75
      Height = 25
      Action = actChangeState
      Anchors = [akTop, akRight]
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578
      TabOrder = 5
    end
    object BitBtn9: TBitBtn
      Left = 542
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662
      TabOrder = 6
    end
    object BitBtn10: TBitBtn
      Left = 462
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch2
      Anchors = [akTop, akRight]
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 7
    end
    object BitBtn11: TBitBtn
      Left = 383
      Top = 8
      Width = 75
      Height = 25
      Action = actSort2
      Anchors = [akTop, akRight]
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 8
    end
  end
  inherited Panel2: TPanel
    Height = 73
    ParentBiDiMode = False
    ExplicitHeight = 73
    inherited lblCaption: TLabel
      Height = 16
    end
    object Label1: TLabel
      Left = 222
      Top = 21
      Width = 74
      Height = 13
      Caption = #1608#1590#1593#1610#1578' '#1587#1601#1575#1585#1588
    end
    object chkAllState: TCheckBox
      Left = 34
      Top = 42
      Width = 97
      Height = 17
      BiDiMode = bdRightToLeftNoAlign
      Caption = '&'#1607#1605#1607' '#1575#1591#1604#1575#1593#1575#1578
      ParentBiDiMode = False
      TabOrder = 0
      OnClick = chkAllStateClick
    end
    object cmbState: TComboBox
      Left = 34
      Top = 17
      Width = 183
      Height = 21
      AutoDropDown = True
      Style = csDropDownList
      Color = 14024703
      TabOrder = 1
      OnChange = cmbStateChange
      OnEnter = cmbStateEnter
    end
  end
  inherited Panel3: TPanel
    Top = 73
    Height = 403
    ExplicitTop = 73
    ExplicitHeight = 404
    object Panel1: TPanel
      Left = 352
      Top = 2
      Width = 436
      Height = 400
      Align = alRight
      TabOrder = 0
      DesignSize = (
        436
        399)
      object Label2: TLabel
        Left = 362
        Top = 340
        Width = 70
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = #1588#1605#1575#1585#1607' '#1587#1601#1575#1585#1588
        ExplicitTop = 345
      end
      object Label3: TLabel
        Left = 362
        Top = 361
        Width = 61
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = #1578#1575#1585#1610#1582' '#1587#1601#1575#1585#1588
        ExplicitTop = 366
      end
      object Label4: TLabel
        Left = 362
        Top = 382
        Width = 62
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = #1587#1575#1610#1585' '#1575#1591#1604#1575#1593#1575#1578
        ExplicitTop = 387
      end
      object Label5: TLabel
        Left = 362
        Top = 299
        Width = 68
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = #1587#1601#1575#1585#1588' '#1583#1607#1606#1583#1607
        ExplicitTop = 304
      end
      object Label6: TLabel
        Left = 124
        Top = 340
        Width = 29
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = #1585#1575#1607#1606#1605#1575
        ExplicitTop = 345
      end
      object Label7: TLabel
        Left = 124
        Top = 361
        Width = 74
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = #1608#1590#1593#1610#1578' '#1587#1601#1575#1585#1588
        ExplicitTop = 366
      end
      object DBText2: TDBText
        Left = 262
        Top = 341
        Width = 97
        Height = 16
        Alignment = taRightJustify
        Anchors = [akRight, akBottom]
        Color = 13948116
        DataField = 'ReciptNumber'
        DataSource = SrcqryScheduleProcItems
        ParentColor = False
        Transparent = False
        ExplicitTop = 346
      end
      object DBText1: TDBText
        Left = 262
        Top = 361
        Width = 97
        Height = 16
        Anchors = [akRight, akBottom]
        Color = 13948116
        DataField = 'ReciptDate'
        DataSource = SrcqryScheduleProcItems
        ParentColor = False
        Transparent = False
        ExplicitTop = 366
      end
      object DBText3: TDBText
        Left = 18
        Top = 382
        Width = 341
        Height = 16
        Anchors = [akRight, akBottom]
        Color = 13948116
        DataField = 'ItemNote'
        DataSource = SrcqryScheduleProcItems
        ParentColor = False
        Transparent = False
        ExplicitTop = 387
      end
      object DBText4: TDBText
        Left = 18
        Top = 301
        Width = 341
        Height = 16
        Anchors = [akRight, akBottom]
        Color = 13948116
        DataField = 'CustName'
        DataSource = SrcqryScheduleProcItems
        ParentColor = False
        Transparent = False
        ExplicitTop = 306
      end
      object DBText5: TDBText
        Left = 18
        Top = 341
        Width = 97
        Height = 16
        Alignment = taRightJustify
        Anchors = [akRight, akBottom]
        Color = 13948116
        DataField = 'ControlCode'
        DataSource = SrcqryScheduleProcItems
        ParentColor = False
        Transparent = False
        ExplicitTop = 346
      end
      object DBText6: TDBText
        Left = 18
        Top = 361
        Width = 97
        Height = 16
        Alignment = taRightJustify
        Anchors = [akRight, akBottom]
        Color = 13948116
        DataField = 'OrderState'
        DataSource = SrcqryScheduleProcItems
        ParentColor = False
        Transparent = False
        ExplicitTop = 366
      end
      object Label11: TLabel
        Left = 362
        Top = 319
        Width = 56
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = #1605#1583#1604' '#1605#1581#1589#1608#1604
        ExplicitTop = 324
      end
      object DBText10: TDBText
        Left = 18
        Top = 321
        Width = 341
        Height = 16
        Anchors = [akRight, akBottom]
        Color = 13948116
        DataField = '__ProductName'
        DataSource = SrcqryScheduleProcItems
        ParentColor = False
        Transparent = False
        ExplicitTop = 326
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 434
        Height = 272
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = SrcqryScheduleProcItems
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = actShowExecute
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'StuffCode'
            Title.Alignment = taCenter
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'c_StuffName'
            Title.Alignment = taCenter
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ProductModel'
            Title.Alignment = taCenter
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PersonID1'
            Title.Alignment = taCenter
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ItemDate'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'entity'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
      object StatusBar1: TStatusBar
        Left = 1
        Top = 273
        Width = 434
        Height = 19
        Align = alTop
        Panels = <
          item
            Width = 250
          end
          item
            Width = 50
          end>
        ExplicitTop = 274
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 342
      Height = 399
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 350
      ExplicitHeight = 400
      DesignSize = (
        342
        399)
      object Label8: TLabel
        Left = 259
        Top = 298
        Width = 66
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = #1593#1606#1608#1575#1606' '#1605#1581#1589#1608#1604' '
        ExplicitTop = 303
      end
      object DBText7: TDBText
        Left = 8
        Top = 298
        Width = 247
        Height = 16
        Anchors = [akRight, akBottom]
        Color = 13948116
        DataField = '_c_StuffName'
        DataSource = SrcSchProcItems
        ParentColor = False
        Transparent = False
        ExplicitTop = 303
      end
      object Label9: TLabel
        Left = 259
        Top = 318
        Width = 56
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = #1605#1583#1604' '#1605#1581#1589#1608#1604
        ExplicitTop = 323
      end
      object DBText8: TDBText
        Left = 157
        Top = 318
        Width = 98
        Height = 16
        Anchors = [akRight, akBottom]
        Color = 13948116
        DataField = '__ProductName'
        DataSource = SrcSchProcItems
        ParentColor = False
        Transparent = False
        ExplicitTop = 323
      end
      object Label10: TLabel
        Left = 259
        Top = 338
        Width = 68
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = #1606#1575#1605' '#1605#1585#1581#1604#1607' '#1578#1608#1604#1610#1583
        ExplicitTop = 343
      end
      object DBText9: TDBText
        Left = 8
        Top = 338
        Width = 247
        Height = 16
        Anchors = [akRight, akBottom]
        Color = 13948116
        DataField = '_ProcName'
        DataSource = SrcSchProcItems
        ParentColor = False
        Transparent = False
        ExplicitTop = 343
      end
      object DBGrid2: TDBGrid
        Tag = 111
        Left = 1
        Top = 1
        Width = 340
        Height = 272
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = SrcSchProcItems
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
            FieldName = 'ProcstaffCoding'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_c_StuffName'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'ProductModel'
            Title.Alignment = taCenter
            Width = 74
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'ProcCode'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DeliveryDate'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 1
        Top = 357
        Width = 340
        Height = 41
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 358
        ExplicitWidth = 348
        object newPanel: TPanel
          Left = 113
          Top = 1
          Width = 234
          Height = 39
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object BtnInsert: TBitBtn
            Left = 156
            Top = 8
            Width = 75
            Height = 25
            Action = DataSetInsert1
            Caption = #1580#1583#1610#1583
            TabOrder = 0
          end
          object BitBtn4: TBitBtn
            Left = 78
            Top = 8
            Width = 75
            Height = 25
            Action = DataSetEdit1
            Caption = #1608#1610#1585#1575#1610#1588
            TabOrder = 1
          end
          object BtnDelete: TBitBtn
            Left = 1
            Top = 8
            Width = 75
            Height = 25
            Action = DataSetDelete1_
            Caption = #1581#1584#1601
            TabOrder = 2
          end
        end
        object okPanel: TPanel
          Left = -52
          Top = 1
          Width = 165
          Height = 39
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            165
            39)
          object BitBtn7: TBitBtn
            Left = 88
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
            TabOrder = 0
          end
          object BitBtn8: TBitBtn
            Left = 8
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
            TabOrder = 1
          end
        end
      end
      object StatusBar2: TStatusBar
        Left = 1
        Top = 273
        Width = 340
        Height = 19
        Align = alTop
        Panels = <
          item
            Width = 250
          end
          item
            Width = 50
          end>
        ExplicitTop = 274
        ExplicitWidth = 348
      end
    end
  end
  inherited ActionList: TActionList
    Left = 496
    inherited DataSetInsert1: TDataSetInsert
      DataSource = SrcSchProcItems
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = SrcSchProcItems
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = SrcSchProcItems
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = SrcSchProcItems
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = SrcSchProcItems
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
    object actSort2: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSort2Execute
    end
    object actSearch2: TAction
      Caption = #1580#1587#1578#1580#1608
      OnExecute = actSearch2Execute
    end
    object actChangeState: TAction
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578
      OnExecute = actChangeStateExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actShow: TAction
      Caption = #1606#1605#1575#1610#1588
      OnExecute = actShowExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 408
    Top = 1
  end
  object qryScheduleProcItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryScheduleProcItemsAfterOpen
    AfterScroll = qryScheduleProcItemsAfterScroll
    Parameters = <
      item
        Name = 'OrderStateFrom'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'OrderStateTo'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.Recipts.ReciptNumber, dbo.Recipts.ReciptDate, dbo' +
        '.ReciptItems.StuffCode, dbo.StuffCoding.c_StuffName, dbo.ReciptI' +
        'tems.ProductModel, '
      
        '                      StuffCoding_1.c_StuffName AS _ProductName,' +
        ' dbo.ReciptItems.PersonID1, dbo.Customers.CustName, dbo.ReciptIt' +
        'ems.ItemDate, '
      
        '                      dbo.ReciptItems.ControlCode + dbo.ReciptIt' +
        'ems.OutputEntity AS entity, dbo.ReciptItems.ItemNote, dbo.Recipt' +
        'Items.OrderState, '
      
        '                      dbo.ReciptItems.ControlCode, dbo.ReciptIte' +
        'ms.ReciptItemID, dbo.Stores.StoreKind'
      'FROM         dbo.Recipts RIGHT OUTER JOIN'
      
        '                      dbo.Stores ON dbo.Recipts.StoreID = dbo.St' +
        'ores.n_StoreID RIGHT OUTER JOIN'
      
        '                      dbo.ReciptItems ON dbo.Recipts.ReciptID = ' +
        'dbo.ReciptItems.ReciptID LEFT OUTER JOIN'
      
        '                      dbo.Customers ON dbo.ReciptItems.PersonID1' +
        ' = dbo.Customers.CustID LEFT OUTER JOIN'
      
        '                      dbo.StuffCoding ON dbo.ReciptItems.StuffCo' +
        'de = dbo.StuffCoding.c_StuffCode LEFT OUTER JOIN'
      
        '                      dbo.StuffCoding StuffCoding_1 ON dbo.Recip' +
        'tItems.ProductModel = StuffCoding_1.c_StuffCode'
      
        'WHERE     (dbo.ReciptItems.OrderState BETWEEN :OrderStateFrom  A' +
        'ND :OrderStateTo)  AND (dbo.Stores.StoreKind = 1 OR'
      
        '                      dbo.Stores.StoreKind = 2) AND (dbo.Recipts' +
        '.ReciptType in(10,15))'
      'order by ItemDate,StuffCode')
    Left = 672
    Top = 160
    object qryScheduleProcItemsReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1601#1575#1585#1588
      FieldName = 'ReciptNumber'
    end
    object qryScheduleProcItemsReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1587#1601#1575#1585#1588
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryScheduleProcItemsStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryScheduleProcItemsc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1581#1589#1608#1604' / '#1582#1583#1605#1575#1578
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qryScheduleProcItemsProductModel: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1583#1604
      FieldName = 'ProductModel'
    end
    object qryScheduleProcItemsPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1587#1601#1575#1585#1588
      FieldName = 'PersonID1'
    end
    object qryScheduleProcItemsCustName: TStringField
      Tag = 3
      DisplayLabel = #1587#1601#1575#1585#1588' '#1583#1607#1606#1583#1607
      FieldName = 'CustName'
      Size = 120
    end
    object qryScheduleProcItemsItemDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1578#1581#1608#1610#1604
      FieldName = 'ItemDate'
      FixedChar = True
      Size = 10
    end
    object qryScheduleProcItemsentity: TFloatField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldName = 'entity'
      ReadOnly = True
    end
    object qryScheduleProcItemsItemNote: TStringField
      Tag = 3
      DisplayLabel = #1587#1575#1610#1585' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'ItemNote'
      Size = 100
    end
    object qryScheduleProcItemsOrderState: TWordField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578' '#1587#1601#1575#1585#1588
      FieldName = 'OrderState'
      OnGetText = qryScheduleProcItemsOrderStateGetText
    end
    object qryScheduleProcItemsControlCode: TLargeintField
      Tag = 3
      DisplayLabel = #1585#1575#1607#1606#1605#1575
      FieldName = 'ControlCode'
    end
    object qryScheduleProcItemsReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
    end
    object qryScheduleProcItemsStoreKind: TWordField
      FieldName = 'StoreKind'
    end
    object qryScheduleProcItems__ProductName: TStringField
      FieldKind = fkLookup
      FieldName = '__ProductName'
      LookupDataSet = qry_Lookup
      LookupKeyFields = 'LookUpID'
      LookupResultField = 'Name'
      KeyFields = 'ProductModel'
      Size = 100
      Lookup = True
    end
  end
  object SrcqryScheduleProcItems: TDataSource
    DataSet = qryScheduleProcItems
    Left = 632
    Top = 40
  end
  object qryLookup: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT  StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Stores' +
        '.StoreKind'
      
        'FROM    StuffCoding INNER JOIN StoreStuffs ON StuffCoding.c_Stuf' +
        'fCode = StoreStuffs.c_StuffCode INNER JOIN'
      
        '        Stores ON StoreStuffs.n_StoreID = Stores.n_StoreID WHERE' +
        ' (Stores.StoreKind IN (1, 2))')
    Left = 202
    Top = 147
    object qryLookupc_StuffCode: TLargeintField
      FieldName = 'c_StuffCode'
    end
    object qryLookupc_StuffName: TStringField
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qryLookupStoreKind: TWordField
      FieldName = 'StoreKind'
    end
  end
  object qrySchProcItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterOpen = qrySchProcItemsAfterOpen
    BeforeInsert = qrySchProcItemsBeforeInsert
    AfterInsert = qrySchProcItemsAfterInsert
    BeforeEdit = qrySchProcItemsBeforeEdit
    AfterPost = qrySchProcItemsAfterPost
    BeforeDelete = qrySchProcItemsBeforeDelete
    AfterDelete = qrySchProcItemsAfterDelete
    Parameters = <
      item
        Name = 'RecItem'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *    FROM     ScheduleProcItems'
      'WHERE     (ReciptItemId =:RecItem)'
      'order by DeliveryDate,ProcstaffCoding')
    Left = 42
    Top = 264
    object qrySchProcItemsProcstaffCoding: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'ProcstaffCoding'
    end
    object qrySchProcItemsProcCode: TIntegerField
      Tag = 3
      DisplayLabel = #1605#1585#1581#1604#1607' '#1578#1608#1604#1610#1583
      FieldName = 'ProcCode'
    end
    object qrySchProcItems_c_StuffName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1581#1589#1608#1604' / '#1582#1583#1605#1575#1578
      FieldKind = fkLookup
      FieldName = '_c_StuffName'
      LookupDataSet = qryLookup
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'ProcstaffCoding'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qrySchProcItemsProductModel: TIntegerField
      DisplayLabel = #1605#1583#1604
      FieldName = 'ProductModel'
    end
    object qrySchProcItemsDeliveryDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1578#1581#1608#1610#1604
      FieldName = 'DeliveryDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qrySchProcItemsAmount: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Amount'
    end
    object qrySchProcItemsProcId: TIntegerField
      FieldName = 'ProcId'
    end
    object qrySchProcItemsReciptItemId: TIntegerField
      FieldName = 'ReciptItemId'
    end
    object qrySchProcItems__ProductName: TStringField
      FieldKind = fkLookup
      FieldName = '__ProductName'
      LookupDataSet = qry_Lookup
      LookupKeyFields = 'LookUpID'
      LookupResultField = 'Name'
      KeyFields = 'ProductModel'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qrySchProcItems_ProcName: TStringField
      FieldKind = fkLookup
      FieldName = '_ProcName'
      LookupDataSet = qryScheduleInfo
      LookupKeyFields = 'InfoId'
      LookupResultField = 'InfoName'
      KeyFields = 'ProcCode'
      LookupCache = True
      Size = 100
      Lookup = True
    end
  end
  object SrcSchProcItems: TDataSource
    DataSet = qrySchProcItems
    OnStateChange = SrcSchProcItemsStateChange
    Left = 130
    Top = 267
  end
  object qryScheduleInfo: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     InfoId, InfoName'
      'FROM         ScheduleInfo'
      'WHERE     (Code = 8)')
    Left = 64
    Top = 219
  end
  object qry_Lookup: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     LookUpID,Name'
      'FROM         LookUps'
      'WHERE(Kind=15)')
    Left = 112
    Top = 94
  end
  object PopMnuState: TPopupMenu
    AutoHotkeys = maManual
    Left = 616
    Top = 282
  end
  object qry_LookUpState: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     TOP 100 PERCENT InfoId, InfoName'
      'FROM         dbo.ScheduleInfo'
      'WHERE     (Code = 3)'
      'ORDER BY Code')
    Left = 576
    Top = 224
    object qry_LookUpStateInfoId: TIntegerField
      FieldName = 'InfoId'
    end
    object qry_LookUpStateInfoName: TStringField
      FieldName = 'InfoName'
      Size = 100
    end
  end
  object PopMnuSend: TPopupMenu
    AutoHotkeys = maManual
    Left = 224
    Top = 298
    object N1: TMenuItem
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1587#1601#1575#1585#1588
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1578#1580#1586#1610#1607' '#1588#1583#1607
      OnClick = N2Click
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = SrcqryScheduleProcItems
    UserName = 'DBPipeline1'
    Left = 424
    Top = 123
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ReciptNumber'
      FieldName = 'ReciptNumber'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'ReciptDate'
      FieldName = 'ReciptDate'
      FieldLength = 8
      DisplayWidth = 8
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'StuffCode'
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'c_StuffName'
      FieldName = 'c_StuffName'
      FieldLength = 70
      DisplayWidth = 70
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProductModel'
      FieldName = 'ProductModel'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'PersonID1'
      FieldName = 'PersonID1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'CustName'
      FieldName = 'CustName'
      FieldLength = 60
      DisplayWidth = 60
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'ItemDate'
      FieldName = 'ItemDate'
      FieldLength = 8
      DisplayWidth = 8
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'entity'
      FieldName = 'entity'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'ItemNote'
      FieldName = 'ItemNote'
      FieldLength = 100
      DisplayWidth = 100
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'OrderState'
      FieldName = 'OrderState'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'ControlCode'
      FieldName = 'ControlCode'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'ReciptItemID'
      FieldName = 'ReciptItemID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'StoreKind'
      FieldName = 'StoreKind'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = '__ProductName'
      FieldName = '__ProductName'
      FieldLength = 80
      DisplayWidth = 80
      Position = 14
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'D:\Projects\Fara\BSell\Exe\Report\ReportCost\ScheduleProcItems1.' +
      'rtm'
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
    Left = 488
    Top = 131
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25929
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 0
        mmTop = 22490
        mmWidth = 266701
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCompanyName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompanyName'
        OnGetText = ppLblCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 107686
        mmTop = 1058
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578'  '#1587#1601#1575#1585#1588#1575#1578
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
        mmLeft = 120650
        mmTop = 8467
        mmWidth = 25400
        BandType = 0
        LayerName = Foreground
      end
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNo1'
        OnGetText = ppSysVarPageNoGetText
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
        mmTop = 9260
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lbprintdate'
        OnGetText = ppLblPrintDateGetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1711#1586#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 9790
        mmTop = 3175
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1605#1581#1589#1608#1604' / '#1582#1583#1605#1575#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 210873
        mmTop = 18256
        mmWidth = 55033
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1605#1583#1604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 156634
        mmTop = 18256
        mmWidth = 53446
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606'  '#1587#1601#1575#1585#1588
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 102394
        mmTop = 18256
        mmWidth = 53446
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1578#1581#1608#1610#1604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 41540
        mmTop = 18256
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 794
        mmTop = 18256
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1587#1601#1575#1585#1588
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 81756
        mmTop = 18256
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1587#1601#1575#1585#1588
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 61648
        mmTop = 18256
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1608#1590#1593#1610#1578' '#1587#1601#1575#1585#1588
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 16933
        mmTop = 18256
        mmWidth = 23548
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 155575
        mmTop = 21167
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 209815
        mmTop = 21167
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 101336
        mmTop = 21167
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 80698
        mmTop = 21167
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5027
        mmLeft = 60590
        mmTop = 21167
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5027
        mmLeft = 40481
        mmTop = 21431
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5027
        mmLeft = 16140
        mmTop = 21960
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 17463
        mmWidth = 266701
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'StuffCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 254001
        mmTop = 0
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'c_StuffName'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 211138
        mmTop = 0
        mmWidth = 42863
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = '__ProductName'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 156634
        mmTop = 0
        mmWidth = 43921
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'PersonID1'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 146579
        mmTop = 0
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'CustName'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 102394
        mmTop = 0
        mmWidth = 43921
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'ItemDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 41540
        mmTop = 0
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'entity'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 794
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'ReciptNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 81756
        mmTop = 0
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'ReciptDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 61648
        mmTop = 0
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'OrderState'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 16933
        mmTop = 0
        mmWidth = 23548
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'ProductModel'
        DataPipeline = ppDBPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 200819
        mmTop = 0
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 1588
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 265
        mmWidth = 266701
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 1323
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
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
  object PopMnuPrint: TPopupMenu
    AutoHotkeys = maManual
    Left = 472
    Top = 354
    object MenuItem1: TMenuItem
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1587#1601#1575#1585#1588
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = #1587#1601#1575#1585#1588#1575#1578'  '#1578#1580#1586#1610#1607' '#1588#1583#1607'-'#1585#1603#1608#1585#1583' '#1580#1575#1585#1610
      OnClick = MenuItem2Click
    end
    object N3: TMenuItem
      Caption = #1587#1601#1575#1585#1588#1575#1578'  '#1578#1580#1586#1610#1607' '#1588#1583#1607'-'#1603#1604#1610#1607' '#1575#1591#1604#1575#1593#1575#1578
      OnClick = N3Click
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = SrcSchProcItems
    UserName = 'DBPipeline2'
    Left = 304
    Top = 123
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppDBPipeline2ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProcstaffCoding'
      FieldName = 'ProcstaffCoding'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline2ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProcCode'
      FieldName = 'ProcCode'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = '_c_StuffName'
      FieldName = '_c_StuffName'
      FieldLength = 80
      DisplayWidth = 80
      Position = 2
    end
    object ppDBPipeline2ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProductModel'
      FieldName = 'ProductModel'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline2ppField5: TppField
      FieldAlias = 'DeliveryDate'
      FieldName = 'DeliveryDate'
      FieldLength = 8
      DisplayWidth = 8
      Position = 4
    end
    object ppDBPipeline2ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Amount'
      FieldName = 'Amount'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline2ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProcId'
      FieldName = 'ProcId'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipeline2ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'ReciptItemId'
      FieldName = 'ReciptItemId'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppDBPipeline2ppField9: TppField
      FieldAlias = '__ProductName'
      FieldName = '__ProductName'
      FieldLength = 80
      DisplayWidth = 80
      Position = 8
    end
    object ppDBPipeline2ppField10: TppField
      FieldAlias = '_ProcName'
      FieldName = '_ProcName'
      FieldLength = 80
      DisplayWidth = 80
      Position = 9
    end
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'D:\Projects\Fara\BSell\Exe\Report\ReportCost\ScheduleProcItems2.' +
      'rtm'
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
    Left = 360
    Top = 171
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand2: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 16404
      mmPrintPosition = 0
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LblCompanyName'
        OnGetText = ppLabel7GetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 107686
        mmTop = 1058
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1575#1591#1604#1575#1593#1575#1578'  '#1587#1601#1575#1585#1588#1575#1578' '#1578#1580#1586#1610#1607' '#1588#1583#1607
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
        mmLeft = 100542
        mmTop = 8467
        mmWidth = 65617
        BandType = 0
        LayerName = Foreground2
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer3
        UserName = 'SysVarPageNo1'
        OnGetText = ppSystemVariable1GetText
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
        mmTop = 9260
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'lbprintdate'
        OnGetText = ppLabel10GetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1711#1586#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 9790
        mmTop = 3175
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer3
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 4
        LayerName = Foreground2
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline2
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'Letter'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 215900
          PrinterSetup.mmPaperWidth = 279401
          PrinterSetup.PaperSize = 1
          Version = '22.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppTitleBand1: TppTitleBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand4: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 8467
            mmPrintPosition = 0
            object TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'ProcstaffCoding'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7408
              mmLeft = 250296
              mmTop = 0
              mmWidth = 15346
              BandType = 4
              LayerName = Foreground1
            end
            object TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = '_c_StuffName'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7408
              mmLeft = 191030
              mmTop = 0
              mmWidth = 60325
              BandType = 4
              LayerName = Foreground1
            end
            object TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText3'
              Border.mmPadding = 0
              DataField = 'ProductModel'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7408
              mmLeft = 176213
              mmTop = 0
              mmWidth = 14288
              BandType = 4
              LayerName = Foreground1
            end
            object TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText4'
              Border.mmPadding = 0
              DataField = '__ProductName'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7408
              mmLeft = 114829
              mmTop = 0
              mmWidth = 61383
              BandType = 4
              LayerName = Foreground1
            end
            object TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'ProcId'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7408
              mmLeft = 99748
              mmTop = 0
              mmWidth = 14288
              BandType = 4
              LayerName = Foreground1
            end
            object TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = '__ProductName'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7408
              mmLeft = 38365
              mmTop = 0
              mmWidth = 61383
              BandType = 4
              LayerName = Foreground1
            end
            object TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'DeliveryDate'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7408
              mmLeft = 17992
              mmTop = 0
              mmWidth = 19315
              BandType = 4
              LayerName = Foreground1
            end
            object TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText8'
              Border.mmPadding = 0
              DataField = 'Amount'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7408
              mmLeft = 1852
              mmTop = 0
              mmWidth = 15346
              BandType = 4
              LayerName = Foreground1
            end
          end
          object ppSummaryBand4: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDesignLayers2: TppDesignLayers
            object ppDesignLayer2: TppDesignLayer
              UserName = 'Foreground1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object ppFooterBand2: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'ReciptItemID'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 32808
        mmPrintPosition = 0
        object TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label1'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1605#1581#1589#1608#1604' / '#1582#1583#1605#1575#1578' :'#8207
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          mmHeight = 6350
          mmLeft = 228336
          mmTop = 529
          mmWidth = 37571
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label5'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1605#1583#1604' :'#8207
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          mmHeight = 6350
          mmLeft = 228336
          mmTop = 7938
          mmWidth = 37571
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label7'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606'  '#1587#1601#1575#1585#1588' :'#8207
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          mmHeight = 6350
          mmLeft = 228336
          mmTop = 15346
          mmWidth = 37571
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label9'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1578#1575#1585#1610#1582' '#1578#1581#1608#1610#1604' :'#8207
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          mmHeight = 6350
          mmLeft = 27252
          mmTop = 529
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLine6: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line1'
          Border.mmPadding = 0
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 2117
          mmLeft = 0
          mmTop = 23813
          mmWidth = 266701
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label10'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1578#1593#1583#1575#1583' :'#8207
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          mmHeight = 6350
          mmLeft = 27252
          mmTop = 7938
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText1'
          Border.mmPadding = 0
          DataField = 'StuffCode'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6615
          mmLeft = 216165
          mmTop = 265
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText2'
          Border.mmPadding = 0
          DataField = 'c_StuffName'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6615
          mmLeft = 173302
          mmTop = 265
          mmWidth = 42863
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText4'
          Border.mmPadding = 0
          DataField = '__ProductName'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6615
          mmLeft = 173302
          mmTop = 7938
          mmWidth = 42863
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText5'
          Border.mmPadding = 0
          DataField = 'PersonID1'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6615
          mmLeft = 216165
          mmTop = 15346
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText7'
          Border.mmPadding = 0
          DataField = 'ItemDate'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 9260
          mmTop = 529
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText3'
          Border.mmPadding = 0
          DataField = 'ProductModel'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6615
          mmLeft = 216165
          mmTop = 7938
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText8'
          Border.mmPadding = 0
          DataField = 'entity'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 9260
          mmTop = 7938
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLine9: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line9'
          Border.mmPadding = 0
          ParentWidth = True
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 2646
          mmLeft = 0
          mmTop = 29898
          mmWidth = 266701
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label15'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1605#1581#1589#1608#1604' / '#1582#1583#1605#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 6350
          mmLeft = 190236
          mmTop = 25665
          mmWidth = 75671
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label17'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1605#1583#1604
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 6350
          mmLeft = 114036
          mmTop = 25665
          mmWidth = 75671
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label18'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606'  '#1605#1585#1581#1604#1607' '#1578#1608#1604#1610#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 6350
          mmLeft = 37571
          mmTop = 25665
          mmWidth = 75671
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label19'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1578#1575#1585#1610#1582' '#1578#1581#1608#1610#1604
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 6350
          mmLeft = 17198
          mmTop = 25665
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel18: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label23'
          AutoSize = False
          Border.mmPadding = 0
          Caption = '   '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          mmHeight = 5292
          mmLeft = 112977
          mmTop = 27516
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel19: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label24'
          AutoSize = False
          Border.mmPadding = 0
          Caption = '   '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          mmHeight = 5292
          mmLeft = 189442
          mmTop = 27516
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel22: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label27'
          AutoSize = False
          Border.mmPadding = 0
          Caption = '   '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          mmHeight = 5027
          mmLeft = 36248
          mmTop = 27517
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label101'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1578#1593#1583#1575#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 6350
          mmLeft = 794
          mmTop = 25665
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel24: TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label29'
          AutoSize = False
          Border.mmPadding = 0
          Caption = '   '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          mmHeight = 5027
          mmLeft = 16140
          mmTop = 27781
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText6'
          Border.mmPadding = 0
          DataField = 'CustName'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6615
          mmLeft = 173302
          mmTop = 15346
          mmWidth = 42863
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label102'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1608#1590#1593#1610#1578' :'#8207
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          mmHeight = 6350
          mmLeft = 27252
          mmTop = 15346
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText9'
          Border.mmPadding = 0
          DataField = 'OrderState'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 9260
          mmTop = 15346
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 1323
        mmPrintPosition = 0
        object ppLine7: TppLine
          DesignLayer = ppDesignLayer3
          UserName = 'Line3'
          Border.mmPadding = 0
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 0
          mmWidth = 266701
          BandType = 5
          GroupNo = 0
          LayerName = Foreground2
        end
      end
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppReport3: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline3
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'D:\Projects\Fara\BSell\Exe\Report\ReportCost\ScheduleProcItems3.' +
      'rtm'
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
    Left = 368
    Top = 243
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline3'
    object ppHeaderBand3: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 16404
      mmPrintPosition = 0
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LblCompanyName'
        OnGetText = ppLabel7GetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 107686
        mmTop = 1058
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1575#1591#1604#1575#1593#1575#1578'  '#1587#1601#1575#1585#1588#1575#1578' '#1578#1580#1586#1610#1607' '#1588#1583#1607
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
        mmLeft = 100542
        mmTop = 8467
        mmWidth = 65617
        BandType = 0
        LayerName = Foreground4
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer5
        UserName = 'SysVarPageNo1'
        OnGetText = ppSystemVariable1GetText
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
        mmTop = 9260
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'lbprintdate'
        OnGetText = ppLabel10GetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1711#1586#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 9790
        mmTop = 3175
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground4
      end
    end
    object ppDetailBand3: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppSubReport2: TppSubReport
        DesignLayer = ppDesignLayer5
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 4
        LayerName = Foreground4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline2
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'Letter'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 215900
          PrinterSetup.mmPaperWidth = 279401
          PrinterSetup.PaperSize = 1
          Version = '22.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppTitleBand2: TppTitleBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand5: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 8467
            mmPrintPosition = 0
            object TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'ProcstaffCoding'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7408
              mmLeft = 250296
              mmTop = 0
              mmWidth = 15346
              BandType = 4
              LayerName = Foreground3
            end
            object TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = '_c_StuffName'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7408
              mmLeft = 191030
              mmTop = 0
              mmWidth = 60325
              BandType = 4
              LayerName = Foreground3
            end
            object TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText3'
              Border.mmPadding = 0
              DataField = 'ProductModel'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7408
              mmLeft = 176213
              mmTop = 0
              mmWidth = 14288
              BandType = 4
              LayerName = Foreground3
            end
            object TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText4'
              Border.mmPadding = 0
              DataField = '__ProductName'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7408
              mmLeft = 114829
              mmTop = 0
              mmWidth = 61383
              BandType = 4
              LayerName = Foreground3
            end
            object TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'ProcId'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7408
              mmLeft = 99748
              mmTop = 0
              mmWidth = 14288
              BandType = 4
              LayerName = Foreground3
            end
            object TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = '__ProductName'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7408
              mmLeft = 38365
              mmTop = 0
              mmWidth = 61383
              BandType = 4
              LayerName = Foreground3
            end
            object TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'DeliveryDate'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7408
              mmLeft = 17992
              mmTop = 0
              mmWidth = 19315
              BandType = 4
              LayerName = Foreground3
            end
            object TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText8'
              Border.mmPadding = 0
              DataField = 'Amount'
              DataPipeline = ppDBPipeline2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 7408
              mmLeft = 1852
              mmTop = 0
              mmWidth = 15346
              BandType = 4
              LayerName = Foreground3
            end
          end
          object ppSummaryBand3: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDesignLayers4: TppDesignLayers
            object ppDesignLayer4: TppDesignLayer
              UserName = 'Foreground3'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object ppFooterBand3: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand5: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 1323
      mmPrintPosition = 0
    end
    object ppGroup2: TppGroup
      BreakName = 'ReciptItemID'
      DataPipeline = ppDBPipeline3
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline3'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 32808
        mmPrintPosition = 0
        object TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label1'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1605#1581#1589#1608#1604' / '#1582#1583#1605#1575#1578' :'#8207
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          mmHeight = 6350
          mmLeft = 228336
          mmTop = 529
          mmWidth = 37571
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label5'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1605#1583#1604' :'#8207
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          mmHeight = 6350
          mmLeft = 228336
          mmTop = 7938
          mmWidth = 37571
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label7'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606'  '#1587#1601#1575#1585#1588' :'#8207
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          mmHeight = 6350
          mmLeft = 228336
          mmTop = 15346
          mmWidth = 37571
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label9'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1578#1575#1585#1610#1582' '#1578#1581#1608#1610#1604' :'#8207
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          mmHeight = 6350
          mmLeft = 27252
          mmTop = 529
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppLine11: TppLine
          DesignLayer = ppDesignLayer5
          UserName = 'Line1'
          Border.mmPadding = 0
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 2117
          mmLeft = 0
          mmTop = 23813
          mmWidth = 266701
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label10'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1578#1593#1583#1575#1583' :'#8207
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          mmHeight = 6350
          mmLeft = 27252
          mmTop = 7938
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppDBText
          DesignLayer = ppDesignLayer5
          UserName = 'DBText1'
          Border.mmPadding = 0
          DataField = 'StuffCode'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6615
          mmLeft = 216165
          mmTop = 265
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppDBText
          DesignLayer = ppDesignLayer5
          UserName = 'DBText2'
          Border.mmPadding = 0
          DataField = 'c_StuffName'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6615
          mmLeft = 173302
          mmTop = 265
          mmWidth = 42863
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppDBText
          DesignLayer = ppDesignLayer5
          UserName = 'DBText4'
          Border.mmPadding = 0
          DataField = '__ProductName'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6615
          mmLeft = 173302
          mmTop = 7938
          mmWidth = 42863
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppDBText
          DesignLayer = ppDesignLayer5
          UserName = 'DBText5'
          Border.mmPadding = 0
          DataField = 'PersonID1'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6615
          mmLeft = 216165
          mmTop = 15346
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppDBText
          DesignLayer = ppDesignLayer5
          UserName = 'DBText7'
          Border.mmPadding = 0
          DataField = 'ItemDate'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 9260
          mmTop = 529
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppDBText
          DesignLayer = ppDesignLayer5
          UserName = 'DBText3'
          Border.mmPadding = 0
          DataField = 'ProductModel'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6615
          mmLeft = 216165
          mmTop = 7938
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppDBText
          DesignLayer = ppDesignLayer5
          UserName = 'DBText8'
          Border.mmPadding = 0
          DataField = 'entity'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 9260
          mmTop = 7938
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppLine12: TppLine
          DesignLayer = ppDesignLayer5
          UserName = 'Line9'
          Border.mmPadding = 0
          ParentWidth = True
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 2646
          mmLeft = 0
          mmTop = 29898
          mmWidth = 266701
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label15'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1605#1581#1589#1608#1604' / '#1582#1583#1605#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 6350
          mmLeft = 190236
          mmTop = 25665
          mmWidth = 75671
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label17'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1605#1583#1604
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 6350
          mmLeft = 114036
          mmTop = 25665
          mmWidth = 75671
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label18'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606'  '#1605#1585#1581#1604#1607' '#1578#1608#1604#1610#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 6350
          mmLeft = 37571
          mmTop = 25665
          mmWidth = 75671
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label19'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1578#1575#1585#1610#1582' '#1578#1581#1608#1610#1604
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 6350
          mmLeft = 17198
          mmTop = 25665
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppLabel14: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label23'
          AutoSize = False
          Border.mmPadding = 0
          Caption = '   '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          mmHeight = 5292
          mmLeft = 112977
          mmTop = 27516
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppLabel15: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label24'
          AutoSize = False
          Border.mmPadding = 0
          Caption = '   '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          mmHeight = 5292
          mmLeft = 189442
          mmTop = 27516
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppLabel16: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label27'
          AutoSize = False
          Border.mmPadding = 0
          Caption = '   '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          mmHeight = 5027
          mmLeft = 36248
          mmTop = 27517
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label101'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1578#1593#1583#1575#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 6350
          mmLeft = 794
          mmTop = 25665
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppLabel17: TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label29'
          AutoSize = False
          Border.mmPadding = 0
          Caption = '   '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 9
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          mmHeight = 5027
          mmLeft = 16140
          mmTop = 27781
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppDBText
          DesignLayer = ppDesignLayer5
          UserName = 'DBText6'
          Border.mmPadding = 0
          DataField = 'CustName'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6615
          mmLeft = 173302
          mmTop = 15346
          mmWidth = 42863
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label102'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1608#1590#1593#1610#1578' :'#8207
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          mmHeight = 6350
          mmLeft = 27252
          mmTop = 15346
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppDBText
          DesignLayer = ppDesignLayer5
          UserName = 'DBText9'
          Border.mmPadding = 0
          DataField = 'OrderState'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 9260
          mmTop = 15346
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 1588
        mmPrintPosition = 0
        object ppLine10: TppLine
          DesignLayer = ppDesignLayer5
          UserName = 'Line2'
          Border.mmPadding = 0
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 529
          mmWidth = 266701
          BandType = 5
          GroupNo = 0
          LayerName = Foreground4
        end
      end
    end
    object ppDesignLayers5: TppDesignLayers
      object ppDesignLayer5: TppDesignLayer
        UserName = 'Foreground4'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppDBPipeline3: TppDBPipeline
    DataSource = SrcqryScheduleProcItems
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeline3'
    Left = 440
    Top = 243
    object ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ReciptNumber'
      FieldName = 'ReciptNumber'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppField2: TppField
      FieldAlias = 'ReciptDate'
      FieldName = 'ReciptDate'
      FieldLength = 8
      DisplayWidth = 8
      Position = 1
    end
    object ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'StuffCode'
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppField4: TppField
      FieldAlias = 'c_StuffName'
      FieldName = 'c_StuffName'
      FieldLength = 70
      DisplayWidth = 70
      Position = 3
    end
    object ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProductModel'
      FieldName = 'ProductModel'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'PersonID1'
      FieldName = 'PersonID1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppField7: TppField
      FieldAlias = 'CustName'
      FieldName = 'CustName'
      FieldLength = 60
      DisplayWidth = 60
      Position = 6
    end
    object ppField8: TppField
      FieldAlias = 'ItemDate'
      FieldName = 'ItemDate'
      FieldLength = 8
      DisplayWidth = 8
      Position = 7
    end
    object ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'entity'
      FieldName = 'entity'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppField10: TppField
      FieldAlias = 'ItemNote'
      FieldName = 'ItemNote'
      FieldLength = 100
      DisplayWidth = 100
      Position = 9
    end
    object ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'OrderState'
      FieldName = 'OrderState'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 10
    end
    object ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'ControlCode'
      FieldName = 'ControlCode'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'ReciptItemID'
      FieldName = 'ReciptItemID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'StoreKind'
      FieldName = 'StoreKind'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 13
    end
    object ppField15: TppField
      FieldAlias = '__ProductName'
      FieldName = '__ProductName'
      FieldLength = 80
      DisplayWidth = 80
      Position = 14
    end
  end
  object ppDBPipeline4: TppDBPipeline
    DataSource = SrcSchProcItems
    UserName = 'DBPipeline4'
    Left = 288
    Top = 243
    MasterDataPipelineName = 'ppDBPipeline3'
    object ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProcstaffCoding'
      FieldName = 'ProcstaffCoding'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProcCode'
      FieldName = 'ProcCode'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppField18: TppField
      FieldAlias = '_c_StuffName'
      FieldName = '_c_StuffName'
      FieldLength = 80
      DisplayWidth = 80
      Position = 2
    end
    object ppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProductModel'
      FieldName = 'ProductModel'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppField20: TppField
      FieldAlias = 'DeliveryDate'
      FieldName = 'DeliveryDate'
      FieldLength = 8
      DisplayWidth = 8
      Position = 4
    end
    object ppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Amount'
      FieldName = 'Amount'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProcId'
      FieldName = 'ProcId'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'ReciptItemId'
      FieldName = 'ReciptItemId'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppField24: TppField
      FieldAlias = '__ProductName'
      FieldName = '__ProductName'
      FieldLength = 80
      DisplayWidth = 80
      Position = 8
    end
    object ppField25: TppField
      FieldAlias = '_ProcName'
      FieldName = '_ProcName'
      FieldLength = 80
      DisplayWidth = 80
      Position = 9
    end
  end
end
