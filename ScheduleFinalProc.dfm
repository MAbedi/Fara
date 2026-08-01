inherited ScheduleFinalProcF: TScheduleFinalProcF
  Left = 195
  Top = 142
  Caption = #1576#1585#1606#1575#1605#1607' '#1585#1610#1586#1610' '#1593#1608#1575#1605#1604' '#1605#1608#1579#1585' '#1576#1585' '#1578#1608#1604#1610#1583
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
      ExplicitLeft = 674
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
    Left = 456
    Top = 0
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
    end
  end
  inherited ImageList1: TImageList
    Left = 408
    Top = 1
  end
  object qryScheduleFinalProc: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryScheduleFinalProcAfterOpen
    AfterScroll = qryScheduleFinalProcAfterScroll
    Parameters = <
      item
        Name = 'OrderStateFrom'
        Size = -1
        Value = Null
      end
      item
        Name = 'OrderStateTo'
        Size = -1
        Value = Null
      end
      item
        Name = 'OrderStateFrom2'
        Size = -1
        Value = Null
      end
      item
        Name = 'OrderStateTo2'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     dbo.Recipts.ReciptNumber, dbo.Recipts.ReciptDate, dbo' +
        '.ReciptItems.StuffCode, dbo.StuffCoding.c_StuffName, dbo.ReciptI' +
        'tems.ProductModel, '
      
        '                      lookUps.Name, dbo.ReciptItems.PersonID1, d' +
        'bo.Customers.CustName, dbo.ReciptItems.ItemDate, '
      
        '                      dbo.ReciptItems.ControlCode + dbo.ReciptIt' +
        'ems.OutputEntity AS entity, dbo.ReciptItems.ItemNote, dbo.Recipt' +
        'Items.OrderState, '
      
        '                      dbo.ReciptItems.ControlCode, dbo.ReciptIte' +
        'ms.ReciptItemID, dbo.Stores.StoreKind'
      'FROM         dbo.ScheduleProcItems RIGHT OUTER JOIN'
      
        '                      dbo.ReciptItems ON dbo.ScheduleProcItems.R' +
        'eciptItemId = dbo.ReciptItems.ReciptItemID LEFT OUTER JOIN'
      '                      dbo.Recipts RIGHT OUTER JOIN'
      
        '                      dbo.Stores ON dbo.Recipts.StoreID = dbo.St' +
        'ores.n_StoreID ON dbo.ReciptItems.ReciptID = dbo.Recipts.ReciptI' +
        'D LEFT OUTER JOIN'
      
        '                      dbo.Customers ON dbo.ReciptItems.PersonID1' +
        ' = dbo.Customers.CustID LEFT OUTER JOIN'
      
        '                      dbo.StuffCoding ON dbo.ReciptItems.StuffCo' +
        'de = dbo.StuffCoding.c_StuffCode LEFT OUTER JOIN'
      '                          (SELECT     *'
      '                             FROM         dbo.LookUps'
      
        '                             WHERE     kind = 15) lookUps ON dbo' +
        '.ReciptItems.ProductModel = lookUps.Code'
      
        'WHERE     (dbo.ReciptItems.OrderState BETWEEN :OrderStateFrom AN' +
        'D :OrderStateTo) AND (dbo.Stores.StoreKind = 1 OR'
      
        '                      dbo.Stores.StoreKind = 2) AND (dbo.Schedul' +
        'eProcItems.ReciptItemId IS NULL) AND (dbo.Recipts.ReciptType <> ' +
        '0)'
      'union all'
      
        'SELECT     dbo.Recipts.ReciptNumber, dbo.Recipts.ReciptDate, dbo' +
        '.ScheduleProcItems.ProcstaffCoding AS StuffCode, dbo.StuffCoding' +
        '.c_StuffName, '
      
        '                      dbo.ScheduleProcItems.ProductModel, lookUp' +
        's.Name, dbo.ReciptItems.PersonID1, dbo.Customers.CustName, '
      
        '                      dbo.ScheduleProcItems.DeliveryDate AS Item' +
        'Date, dbo.ScheduleProcItems.Amount AS entity, dbo.ReciptItems.It' +
        'emNote, dbo.ReciptItems.OrderState, '
      
        '                      dbo.ReciptItems.ControlCode, dbo.ReciptIte' +
        'ms.ReciptItemID, dbo.Stores.StoreKind'
      'FROM         dbo.ScheduleProcItems INNER JOIN'
      
        '                      dbo.ReciptItems ON dbo.ScheduleProcItems.R' +
        'eciptItemId = dbo.ReciptItems.ReciptItemID LEFT OUTER JOIN'
      '                          (SELECT     *'
      '                             FROM         dbo.LookUps'
      
        '                             WHERE     kind = 15) lookUps ON dbo' +
        '.ScheduleProcItems.ProductModel = lookUps.Code LEFT OUTER JOIN'
      
        '                      dbo.StuffCoding ON dbo.ScheduleProcItems.P' +
        'rocstaffCoding = dbo.StuffCoding.c_StuffCode LEFT OUTER JOIN'
      '                      dbo.Recipts RIGHT OUTER JOIN'
      
        '                      dbo.Stores ON dbo.Recipts.StoreID = dbo.St' +
        'ores.n_StoreID ON dbo.ReciptItems.ReciptID = dbo.Recipts.ReciptI' +
        'D LEFT OUTER JOIN'
      
        '                      dbo.Customers ON dbo.ReciptItems.PersonID1' +
        ' = dbo.Customers.CustID'
      
        'WHERE     (dbo.ReciptItems.OrderState BETWEEN :OrderStateFrom2 A' +
        'ND :OrderStateTo2) AND (dbo.Stores.StoreKind = 1 OR'
      
        '                      dbo.Stores.StoreKind = 2) AND (dbo.Recipts' +
        '.ReciptType <> 0)')
    Left = 584
    Top = 112
    object qryScheduleFinalProcReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1601#1575#1585#1588
      FieldName = 'ReciptNumber'
    end
    object qryScheduleFinalProcReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1587#1601#1575#1585#1588
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryScheduleFinalProcStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryScheduleFinalProcc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1581#1589#1608#1604' / '#1582#1583#1605#1575#1578
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qryScheduleFinalProcProductModel: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1583#1604
      FieldName = 'ProductModel'
    end
    object qryScheduleFinalProcPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1587#1601#1575#1585#1588
      FieldName = 'PersonID1'
    end
    object qryScheduleFinalProcCustName: TStringField
      Tag = 3
      DisplayLabel = #1587#1601#1575#1585#1588' '#1583#1607#1606#1583#1607
      FieldName = 'CustName'
      Size = 120
    end
    object qryScheduleFinalProcItemDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1578#1581#1608#1610#1604
      FieldName = 'ItemDate'
      FixedChar = True
      Size = 10
    end
    object qryScheduleFinalProcentity: TFloatField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldName = 'entity'
      ReadOnly = True
    end
    object qryScheduleFinalProcItemNote: TStringField
      Tag = 3
      DisplayLabel = #1587#1575#1610#1585' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'ItemNote'
      Size = 100
    end
    object qryScheduleFinalProcOrderState: TWordField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578' '#1587#1601#1575#1585#1588
      FieldName = 'OrderState'
      OnGetText = qryScheduleFinalProcOrderStateGetText
    end
    object qryScheduleFinalProcControlCode: TLargeintField
      Tag = 3
      DisplayLabel = #1585#1575#1607#1606#1605#1575
      FieldName = 'ControlCode'
    end
    object qryScheduleFinalProcReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
    end
    object qryScheduleFinalProcStoreKind: TWordField
      FieldName = 'StoreKind'
    end
    object qryScheduleFinalProc__ProductName: TStringField
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
    DataSet = qryScheduleFinalProc
    Left = 632
    Top = 40
  end
  object qryLookup: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.ReciptItems.StuffCode, dbo.StuffCoding.c_StuffNam' +
        'e, dbo.ReciptItems.ProductModel, StuffCoding_1.c_StuffName AS _P' +
        'roductName, '
      
        '                      dbo.Stores.StoreKind, dbo.ReciptItems.Reci' +
        'ptItemID'
      'FROM         dbo.Recipts RIGHT OUTER JOIN'
      
        '                      dbo.Stores ON dbo.Recipts.StoreID = dbo.St' +
        'ores.n_StoreID RIGHT OUTER JOIN'
      
        '                      dbo.ReciptItems ON dbo.Recipts.ReciptID = ' +
        'dbo.ReciptItems.ReciptID LEFT OUTER JOIN'
      
        '                      dbo.StuffCoding ON dbo.ReciptItems.StuffCo' +
        'de = dbo.StuffCoding.c_StuffCode LEFT OUTER JOIN'
      
        '                      dbo.StuffCoding StuffCoding_1 ON dbo.Recip' +
        'tItems.ProductModel = StuffCoding_1.c_StuffCode'
      'WHERE     (dbo.Stores.StoreKind = 1 OR'
      '                      dbo.Stores.StoreKind = 2)')
    Left = 242
    Top = 203
    object qryLookupStuffCode: TLargeintField
      FieldName = 'StuffCode'
    end
    object qryLookupc_StuffName: TStringField
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qryLookupProductModel: TIntegerField
      FieldName = 'ProductModel'
    end
    object qryLookup_ProductName: TStringField
      FieldName = '_ProductName'
      Size = 70
    end
  end
  object qrySchProcItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterOpen = qrySchProcItemsAfterOpen
    AfterInsert = qrySchProcItemsAfterInsert
    AfterPost = qrySchProcItemsAfterPost
    BeforeDelete = qrySchProcItemsBeforeDelete
    AfterDelete = qrySchProcItemsAfterDelete
    Parameters = <
      item
        Name = 'RecItem'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *    FROM     ScheduleProcItems'
      'WHERE     (ReciptItemId =:RecItem)')
    Left = 138
    Top = 288
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
      LookupKeyFields = 'StuffCode'
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
      DisplayLabel = #1578#1575#1585#1610#1582' '#1578#1608#1604#1610#1583
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
    Left = 226
    Top = 283
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
    Left = 376
    Top = 222
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
end
