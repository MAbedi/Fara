inherited ScheduleTimeTabelF: TScheduleTimeTabelF
  Left = 147
  Top = 140
  Caption = #1576#1585#1606#1575#1605#1607' '#1585#1610#1586#1610' '#1593#1608#1575#1605#1604' '#1605#1608#1579#1585' '#1576#1585' '#1578#1608#1604#1610#1583
  ClientHeight = 517
  ClientWidth = 818
  OnResize = FormResize
  ExplicitWidth = 830
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    Width = 818
    ExplicitWidth = 818
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
      Left = 742
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1606#1605#1575#1610#1588
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      Left = 664
      Top = 8
      Width = 75
      Height = 25
      Action = actChangeState
      Anchors = [akTop, akRight]
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578
      TabOrder = 5
    end
    object BitBtn9: TBitBtn
      Left = 586
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662
      TabOrder = 6
    end
    object BitBtn10: TBitBtn
      Left = 506
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch2
      Anchors = [akTop, akRight]
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 7
    end
    object BitBtn11: TBitBtn
      Left = 427
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
    Width = 818
    Height = 73
    ParentBiDiMode = False
    ExplicitWidth = 818
    ExplicitHeight = 73
    inherited ImgTemplate: TImage
      Left = 780
      ExplicitLeft = 780
    end
    inherited lblCaption: TLabel
      Left = 716
      Height = 16
      ExplicitLeft = 716
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
    Width = 818
    Height = 403
    ExplicitTop = 73
    ExplicitWidth = 818
    ExplicitHeight = 404
    object Panel1: TPanel
      Left = 346
      Top = 2
      Width = 470
      Height = 400
      Align = alRight
      TabOrder = 0
      DesignSize = (
        470
        399)
      object Label2: TLabel
        Left = 396
        Top = 340
        Width = 70
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = #1588#1605#1575#1585#1607' '#1587#1601#1575#1585#1588
        ExplicitTop = 345
      end
      object Label3: TLabel
        Left = 396
        Top = 361
        Width = 61
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = #1578#1575#1585#1610#1582' '#1587#1601#1575#1585#1588
        ExplicitTop = 366
      end
      object Label4: TLabel
        Left = 396
        Top = 382
        Width = 62
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = #1587#1575#1610#1585' '#1575#1591#1604#1575#1593#1575#1578
        ExplicitTop = 387
      end
      object Label5: TLabel
        Left = 396
        Top = 299
        Width = 68
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = #1587#1601#1575#1585#1588' '#1583#1607#1606#1583#1607
        ExplicitTop = 304
      end
      object Label6: TLabel
        Left = 158
        Top = 340
        Width = 29
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = #1585#1575#1607#1606#1605#1575
        ExplicitTop = 345
      end
      object Label7: TLabel
        Left = 158
        Top = 361
        Width = 74
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = #1608#1590#1593#1610#1578' '#1587#1601#1575#1585#1588
        ExplicitTop = 366
      end
      object DBText2: TDBText
        Left = 296
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
        Left = 296
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
        Left = 52
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
        Left = 52
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
        Left = 52
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
        Left = 52
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
        Left = 396
        Top = 319
        Width = 56
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = #1605#1583#1604' '#1605#1581#1589#1608#1604
        ExplicitTop = 324
      end
      object DBText10: TDBText
        Left = 52
        Top = 321
        Width = 341
        Height = 16
        Anchors = [akRight, akBottom]
        Color = 13948116
        DataField = 'Name'
        DataSource = SrcqryScheduleProcItems
        ParentColor = False
        Transparent = False
        ExplicitTop = 326
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 468
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
        OnDblClick = axtShowExecute
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
        Width = 468
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
      Width = 344
      Height = 399
      Align = alClient
      TabOrder = 1
      ExplicitHeight = 400
      DesignSize = (
        344
        399)
      object Label8: TLabel
        Left = 266
        Top = 297
        Width = 60
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = #1605#1575#1588#1610#1606'/'#1593#1575#1605#1604
        ExplicitLeft = 274
        ExplicitTop = 302
      end
      object DBText7: TDBText
        Left = 95
        Top = 298
        Width = 168
        Height = 16
        Anchors = [akRight, akBottom]
        Color = 13948116
        DataField = '_MashineName'
        DataSource = SrcScheduleTimeTabel
        ParentColor = False
        Transparent = False
        ExplicitLeft = 103
        ExplicitTop = 303
      end
      object Label9: TLabel
        Left = 266
        Top = 320
        Width = 39
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = #1582#1591' '#1578#1608#1604#1610#1583
        ExplicitLeft = 274
        ExplicitTop = 325
      end
      object DBText8: TDBText
        Left = 94
        Top = 320
        Width = 169
        Height = 16
        Anchors = [akRight, akBottom]
        Color = 13948116
        DataField = '_ProcName'
        DataSource = SrcScheduleTimeTabel
        ParentColor = False
        Transparent = False
        ExplicitLeft = 102
        ExplicitTop = 325
      end
      object Label10: TLabel
        Left = 266
        Top = 340
        Width = 73
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = #1602#1575#1576#1604' '#1576#1585#1606#1575#1605#1607' '#1585#1610#1586#1610
        ExplicitLeft = 274
        ExplicitTop = 345
      end
      object Label12: TLabel
        Left = 68
        Top = 298
        Width = 21
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = #1578#1575#1585#1610#1582
        ExplicitTop = 303
      end
      object DBText12: TDBText
        Left = 8
        Top = 298
        Width = 56
        Height = 16
        Anchors = [akLeft, akBottom]
        Color = 13948116
        DataField = 'S_Date'
        DataSource = SrcScheduleTimeTabel
        ParentColor = False
        Transparent = False
        ExplicitTop = 303
      end
      object Label13: TLabel
        Left = 68
        Top = 320
        Width = 103
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = #1592#1585#1601#1610#1578' '#1603#1575#1585#1603#1585#1583' '#1576#1575#1602#1610#1605#1575#1606#1583#1607
        ExplicitTop = 325
      end
      object Label14: TLabel
        Left = 68
        Top = 342
        Width = 97
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = #1592#1585#1601#1610#1578' '#1578#1608#1604#1610#1583' '#1576#1575#1602#1610#1605#1575#1606#1583#1607
        ExplicitTop = 347
      end
      object LblSculde: TLabel
        Left = 207
        Top = 342
        Width = 56
        Height = 16
        Anchors = [akRight, akBottom]
        AutoSize = False
        Caption = 'LblSculde'
        Color = 13948116
        ParentColor = False
        Transparent = False
        ExplicitLeft = 215
        ExplicitTop = 347
      end
      object Lbl_Time: TLabel
        Left = 8
        Top = 320
        Width = 56
        Height = 16
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = 'Lbl_Time'
        Color = 13948116
        ParentColor = False
        Transparent = False
        ExplicitTop = 325
      end
      object Lbl_Amount: TLabel
        Left = 8
        Top = 342
        Width = 56
        Height = 16
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = 'Lbl_Amount'
        Color = 13948116
        ParentColor = False
        Transparent = False
        ExplicitTop = 347
      end
      object DBGrid2: TDBGrid
        Tag = 111
        Left = 1
        Top = 1
        Width = 342
        Height = 272
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = SrcScheduleTimeTabel
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid2DrawColumnCell
        OnDblClick = actShowFormolExecute
        OnEditButtonClick = DBGrid2EditButtonClick
        OnKeyPress = DBGrid2KeyPress
        Columns = <
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'MashineID'
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'ProcCode'
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'TrnsFormID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'S_Date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'S_Amount'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'S_Function'
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 1
        Top = 357
        Width = 342
        Height = 41
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 358
        DesignSize = (
          342
          41)
        object newPanel: TPanel
          Left = 107
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
          Left = -58
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
        object BitShowFormol: TBitBtn
          Left = 185
          Top = 8
          Width = 90
          Height = 25
          Action = actPast
          Anchors = [akLeft, akBottom]
          Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1586' '#1581#1575#1601#1592#1607
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object BitBtn12: TBitBtn
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Action = actShowFormol
          Anchors = [akLeft, akBottom]
          Caption = #1601#1585#1605#1608#1604' '#1587#1575#1582#1578
          TabOrder = 3
        end
        object BitBtn13: TBitBtn
          Left = 87
          Top = 8
          Width = 94
          Height = 25
          Action = actCopy
          Anchors = [akLeft, akBottom]
          Caption = #1603#1662#1610' '#1583#1585' '#1581#1575#1601#1592#1607
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
      end
      object StatusBar2: TStatusBar
        Left = 1
        Top = 273
        Width = 342
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
  end
  inherited ActionList: TActionList
    Left = 456
    Top = 0
    inherited DataSetInsert1: TDataSetInsert
      DataSource = SrcScheduleTimeTabel
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = SrcScheduleTimeTabel
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = SrcScheduleTimeTabel
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = SrcScheduleTimeTabel
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = SrcScheduleTimeTabel
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
    object actShowFormol: TAction
      Caption = #1601#1585#1605#1608#1604' '#1587#1575#1582#1578
      OnExecute = actShowFormolExecute
    end
    object actCopy: TAction
      Caption = #1603#1662#1610' '#1583#1585' '#1581#1575#1601#1592#1607
      Hint = ' '
      ShortCut = 16507
      OnExecute = actCopyExecute
    end
    object actPast: TAction
      Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1586' '#1581#1575#1601#1592#1607
      Hint = ' '
      ShortCut = 8315
      OnExecute = actPastExecute
    end
    object axtShow: TAction
      Caption = #1606#1605#1575#1610#1588
      OnExecute = axtShowExecute
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
        DataType = ftString
        Size = 1
        Value = '4'
      end
      item
        Name = 'OrderStateTo'
        DataType = ftString
        Size = 2
        Value = '9'
      end
      item
        Name = 'OrderStateFrom2'
        DataType = ftString
        Size = 1
        Value = '4'
      end
      item
        Name = 'OrderStateTo2'
        DataType = ftString
        Size = 2
        Value = '9'
      end>
    SQL.Strings = (
      
        'SELECT    dbo.ReciptItems.ReciptItemID as ProcID ,  dbo.Recipts.' +
        'ReciptNumber, dbo.Recipts.ReciptDate, dbo.ReciptItems.StuffCode,' +
        ' dbo.StuffCoding.c_StuffName, dbo.ReciptItems.ProductModel, '
      
        '                      lookUps.Name, dbo.ReciptItems.PersonID1, d' +
        'bo.Customers.CustName, dbo.ReciptItems.ItemDate, '
      
        '                      dbo.ReciptItems.ControlCode + dbo.ReciptIt' +
        'ems.OutputEntity AS entity, dbo.ReciptItems.ItemNote, dbo.Recipt' +
        'Items.OrderState, '
      
        '                      dbo.ReciptItems.ControlCode, dbo.ReciptIte' +
        'ms.ReciptItemID, dbo.Stores.StoreKind ,0 AS KIND'
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
        'eProcItems.ReciptItemId IS NULL) AND (dbo.Recipts.ReciptType in(' +
        '10,15) )'
      'union all'
      
        'SELECT    dbo.ScheduleProcItems.ProcId , dbo.Recipts.ReciptNumbe' +
        'r, dbo.Recipts.ReciptDate, dbo.ScheduleProcItems.ProcstaffCoding' +
        ' AS StuffCode, dbo.StuffCoding.c_StuffName,'
      
        '                      dbo.ScheduleProcItems.ProductModel, lookUp' +
        's.Name, dbo.ReciptItems.PersonID1, dbo.Customers.CustName,'
      
        '                      dbo.ScheduleProcItems.DeliveryDate AS Item' +
        'Date, dbo.ScheduleProcItems.Amount AS entity, dbo.ReciptItems.It' +
        'emNote, dbo.ReciptItems.OrderState,'
      
        '                      dbo.ReciptItems.ControlCode, dbo.ReciptIte' +
        'ms.ReciptItemID, dbo.Stores.StoreKind, 1 AS KIND'
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
        '.ReciptType in(15))'
      ''
      'order by  dbo.ReciptItems.ItemDate, dbo.ReciptItems.StuffCode'
      ''
      ''
      '')
    Left = 592
    Top = 128
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
    object qryScheduleFinalProcProcID: TIntegerField
      FieldName = 'ProcID'
    end
    object qryScheduleFinalProcName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object qryScheduleFinalProcKIND: TIntegerField
      FieldName = 'KIND'
      ReadOnly = True
    end
  end
  object SrcqryScheduleProcItems: TDataSource
    DataSet = qryScheduleFinalProc
    Left = 632
    Top = 40
  end
  object qryScheduleTimeTabel: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryScheduleTimeTabel2AfterInsert
    AfterPost = qryScheduleTimeTabelAfterPost
    BeforeDelete = qryScheduleTimeTabelBeforeDelete
    AfterDelete = qryScheduleTimeTabelAfterDelete
    AfterScroll = qryScheduleTimeTabelAfterScroll
    Parameters = <
      item
        Name = 'Kind'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ProcID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         ScheduleTimeTabel'
      'WHERE     (KIND =:KIND) AND (ProcID =:ProcID)')
    Left = 226
    Top = 136
    object qryScheduleTimeTabelTimeTabelId: TIntegerField
      FieldName = 'TimeTabelId'
    end
    object qryScheduleTimeTabelKIND: TIntegerField
      FieldName = 'KIND'
    end
    object qryScheduleTimeTabelProcID: TIntegerField
      FieldName = 'ProcID'
    end
    object qryScheduleTimeTabelMashineID: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1575#1588#1610#1606
      FieldName = 'MashineID'
    end
    object qryScheduleTimeTabelProcCode: TIntegerField
      DisplayLabel = #1603#1583' '#1582#1591' '#1578#1608#1604#1610#1583
      FieldName = 'ProcCode'
    end
    object qryScheduleTimeTabelTrnsFormID: TIntegerField
      DisplayLabel = #1587#1585#1610#1575#1604' '#1601#1585#1605#1608#1604' '#1587#1575#1582#1578
      FieldName = 'TrnsFormID'
    end
    object qryScheduleTimeTabelS_Amount: TIntegerField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1578#1608#1604#1610#1583
      FieldName = 'S_Amount'
    end
    object qryScheduleTimeTabelS_Date: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'S_Date'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryScheduleTimeTabelS_Function: TIntegerField
      DisplayLabel = #1603#1575#1585#1603#1585#1583
      FieldName = 'S_Function'
    end
    object qryScheduleTimeTabel_MashineName: TStringField
      FieldKind = fkLookup
      FieldName = '_MashineName'
      LookupDataSet = qryScheduleInfo
      LookupKeyFields = 'InfoId'
      LookupResultField = 'InfoName'
      KeyFields = 'MashineID'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryScheduleTimeTabel_ProcName: TStringField
      FieldKind = fkLookup
      FieldName = '_ProcName'
      LookupDataSet = qryScheduleInfo2
      LookupKeyFields = 'InfoId'
      LookupResultField = 'InfoName'
      KeyFields = 'ProcCode'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryScheduleTimeTabel_WorkLoad_time: TIntegerField
      FieldKind = fkLookup
      FieldName = '_WorkLoad_time'
      LookupDataSet = qryScheduleInfo
      LookupKeyFields = 'InfoId'
      LookupResultField = 'WorkLoad_time'
      KeyFields = 'MashineID'
      LookupCache = True
      Lookup = True
    end
    object qryScheduleTimeTabel_WorkLoad_Amount: TIntegerField
      FieldKind = fkLookup
      FieldName = '_WorkLoad_Amount'
      LookupDataSet = qryScheduleInfo
      LookupKeyFields = 'InfoId'
      LookupResultField = 'WorkLoad_Amount'
      KeyFields = 'MashineID'
      LookupCache = True
      Lookup = True
    end
  end
  object SrcScheduleTimeTabel: TDataSource
    DataSet = qryScheduleTimeTabel
    OnStateChange = SrcScheduleTimeTabelStateChange
    Left = 58
    Top = 171
  end
  object qryScheduleInfo: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     InfoId, InfoName, WorkLoad_time, WorkLoad_Amount'
      'FROM         dbo.ScheduleInfo'
      'WHERE     (Code = 6)')
    Left = 64
    Top = 227
    object qryScheduleInfoInfoId: TIntegerField
      FieldName = 'InfoId'
    end
    object qryScheduleInfoInfoName: TStringField
      FieldName = 'InfoName'
      Size = 100
    end
    object qryScheduleInfoWorkLoad_time: TFloatField
      FieldName = 'WorkLoad_time'
    end
    object qryScheduleInfoWorkLoad_Amount: TFloatField
      FieldName = 'WorkLoad_Amount'
    end
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
    Left = 528
    Top = 272
    object qry_LookUpStateInfoId: TIntegerField
      FieldName = 'InfoId'
    end
    object qry_LookUpStateInfoName: TStringField
      FieldName = 'InfoName'
      Size = 100
    end
  end
  object qryScheduleInfo2: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     InfoId, InfoName'
      'FROM         ScheduleInfo'
      'WHERE     (Code =7)')
    Left = 184
    Top = 219
    object IntegerField1: TIntegerField
      FieldName = 'InfoId'
    end
    object StringField1: TStringField
      FieldName = 'InfoName'
      Size = 100
    end
  end
  object PopMnuSend: TPopupMenu
    AutoHotkeys = maManual
    Left = 296
    Top = 322
    object N1: TMenuItem
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1587#1601#1575#1585#1588
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1576#1585#1606#1575#1605#1607' '#1585#1610#1586#1610' '#1588#1583#1607
      OnClick = N2Click
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = SrcqryScheduleProcItems
    UserName = 'DBPipeline1'
    Left = 522
    Top = 107
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
      Alignment = taRightJustify
      FieldAlias = 'ProcID'
      FieldName = 'ProcID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'Name'
      FieldName = 'Name'
      FieldLength = 50
      DisplayWidth = 50
      Position = 15
    end
    object ppDBPipeline1ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'KIND'
      FieldName = 'KIND'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
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
      'D:\Projects\Fara\BSell\Exe\Report\ReportCost\ScheduleTimeTabel1.' +
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
    Left = 458
    Top = 107
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
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5842
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
        DataField = 'Name'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Zar'
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
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
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
      object Date: TppDBText
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
      object LblState: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        OnGetText = LblStateGetText
        Border.mmPadding = 0
        DataField = 'CustName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7408
        mmLeft = 16933
        mmTop = 0
        mmWidth = 23548
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
    Left = 408
    Top = 362
    object MenuItem1: TMenuItem
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1587#1601#1575#1585#1588
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = #1604#1610#1587#1578' '#1576#1585#1606#1575#1605#1607' '#1585#1610#1586#1610' - '#1587#1601#1575#1585#1588' '#1580#1575#1585#1610
      OnClick = MenuItem2Click
    end
    object N3: TMenuItem
      Caption = #1604#1610#1587#1578' '#1576#1585#1606#1575#1605#1607' '#1585#1610#1586#1610' - '#1603#1604#1610#1607' '#1587#1601#1575#1585#1588#1575#1578
      OnClick = N3Click
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = SrcScheduleTimeTabel
    UserName = 'DBPipeline2'
    Left = 266
    Top = 107
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'D:\Projects\Fara\BSell\Exe\Report\ReportCost\ScheduleTimeTabel2.' +
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
    Left = 378
    Top = 115
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand2: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 17992
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
        mmLeft = 75936
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
        mmLeft = 68792
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
        mmWidth = 203200
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
          PrinterSetup.PaperName = 'Letter'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
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
            mmHeight = 7408
            mmPrintPosition = 0
            object TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'MashineID'
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
              mmLeft = 187325
              mmTop = 0
              mmWidth = 15346
              BandType = 4
              LayerName = Foreground1
            end
            object TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = '_MashineName'
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
              mmLeft = 132027
              mmTop = 0
              mmWidth = 55298
              BandType = 4
              LayerName = Foreground1
            end
            object TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText3'
              Border.mmPadding = 0
              DataField = 'ProcCode'
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
              mmLeft = 117475
              mmTop = 0
              mmWidth = 14288
              BandType = 4
              LayerName = Foreground1
            end
            object TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText4'
              Border.mmPadding = 0
              DataField = '_ProcName'
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
              mmLeft = 61648
              mmTop = 0
              mmWidth = 56092
              BandType = 4
              LayerName = Foreground1
            end
            object TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'S_Amount'
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
              mmLeft = 42069
              mmTop = 0
              mmWidth = 19315
              BandType = 4
              LayerName = Foreground1
            end
            object TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText8'
              Border.mmPadding = 0
              DataField = 'S_Function'
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
              mmWidth = 19050
              BandType = 4
              LayerName = Foreground1
            end
            object TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'S_Date'
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
              mmLeft = 21960
              mmTop = 0
              mmWidth = 19315
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
          mmLeft = 165100
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
          mmLeft = 165100
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
          mmLeft = 165100
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
          mmLeft = 19315
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
          mmWidth = 203200
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
          mmLeft = 19315
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
          mmLeft = 152929
          mmTop = 529
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
          mmLeft = 110067
          mmTop = 529
          mmWidth = 42863
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText4'
          Border.mmPadding = 0
          DataField = 'Name'
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
          mmLeft = 110067
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
          mmLeft = 152929
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
          mmLeft = 1323
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
          mmLeft = 152929
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
          mmLeft = 1323
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
          mmWidth = 203200
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label15'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 6350
          mmLeft = 132027
          mmTop = 25665
          mmWidth = 70908
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label17'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1582#1591' '#1578#1608#1604#1610#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 6350
          mmLeft = 60325
          mmTop = 25665
          mmWidth = 70908
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
          mmLeft = 20373
          mmTop = 25665
          mmWidth = 19315
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
          mmLeft = 130969
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
          mmLeft = 59267
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
          Caption = #1603#1575#1585#1603#1585#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 6350
          mmLeft = 265
          mmTop = 25665
          mmWidth = 19050
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
          mmLeft = 19050
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
          mmLeft = 110067
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
          mmLeft = 19315
          mmTop = 15346
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object LblState2: TppDBText
          DesignLayer = ppDesignLayer3
          UserName = 'DBText9'
          OnGetText = LblState2GetText
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
          mmLeft = 1323
          mmTop = 15346
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object TppLabel
          DesignLayer = ppDesignLayer3
          UserName = 'Label2'
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
          mmLeft = 40481
          mmTop = 25665
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
          LayerName = Foreground2
        end
        object ppLabel11: TppLabel
          DesignLayer = ppDesignLayer3
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
          mmHeight = 5027
          mmLeft = 39423
          mmTop = 26988
          mmWidth = 1323
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
          mmWidth = 203200
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
  object ppDBPipeline3: TppDBPipeline
    DataSource = SrcqryScheduleProcItems
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeline3'
    Left = 474
    Top = 195
    object ppDBPipeline3ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ReciptNumber'
      FieldName = 'ReciptNumber'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipeline3ppField2: TppField
      FieldAlias = 'ReciptDate'
      FieldName = 'ReciptDate'
      FieldLength = 8
      DisplayWidth = 8
      Position = 1
    end
    object ppDBPipeline3ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'StuffCode'
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline3ppField4: TppField
      FieldAlias = 'c_StuffName'
      FieldName = 'c_StuffName'
      FieldLength = 70
      DisplayWidth = 70
      Position = 3
    end
    object ppDBPipeline3ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProductModel'
      FieldName = 'ProductModel'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline3ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'PersonID1'
      FieldName = 'PersonID1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline3ppField7: TppField
      FieldAlias = 'CustName'
      FieldName = 'CustName'
      FieldLength = 60
      DisplayWidth = 60
      Position = 6
    end
    object ppDBPipeline3ppField8: TppField
      FieldAlias = 'ItemDate'
      FieldName = 'ItemDate'
      FieldLength = 8
      DisplayWidth = 8
      Position = 7
    end
    object ppDBPipeline3ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'entity'
      FieldName = 'entity'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppDBPipeline3ppField10: TppField
      FieldAlias = 'ItemNote'
      FieldName = 'ItemNote'
      FieldLength = 100
      DisplayWidth = 100
      Position = 9
    end
    object ppDBPipeline3ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'OrderState'
      FieldName = 'OrderState'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 10
    end
    object ppDBPipeline3ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'ControlCode'
      FieldName = 'ControlCode'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppDBPipeline3ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'ReciptItemID'
      FieldName = 'ReciptItemID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppDBPipeline3ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'StoreKind'
      FieldName = 'StoreKind'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 13
    end
    object ppDBPipeline3ppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProcID'
      FieldName = 'ProcID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object ppDBPipeline3ppField16: TppField
      FieldAlias = 'Name'
      FieldName = 'Name'
      FieldLength = 50
      DisplayWidth = 50
      Position = 15
    end
    object ppDBPipeline3ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'KIND'
      FieldName = 'KIND'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
  end
  object ppDBPipeline4: TppDBPipeline
    DataSource = SrcScheduleTimeTabel
    UserName = 'DBPipeline4'
    Left = 290
    Top = 179
    MasterDataPipelineName = 'ppDBPipeline3'
  end
  object ppReport3: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline3
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
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'D:\Projects\Fara\BSell\Exe\Report\ReportCost\ScheduleTimeTabel2.' +
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
    Left = 394
    Top = 179
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline3'
    object ppHeaderBand3: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 17992
      mmPrintPosition = 0
      object ppLabel12: TppLabel
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
        mmLeft = 75936
        mmTop = 1058
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel13: TppLabel
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
        mmLeft = 68792
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
      object ppLabel14: TppLabel
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
        DataPipelineName = 'ppDBPipeline4'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 4
        LayerName = Foreground4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppDBPipeline4
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
          PrinterSetup.mmPaperHeight = 279401
          PrinterSetup.mmPaperWidth = 215900
          PrinterSetup.PaperSize = 1
          Version = '22.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline4'
          object ppTitleBand2: TppTitleBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand5: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 7408
            mmPrintPosition = 0
            object TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'MashineID'
              DataPipeline = ppDBPipeline4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              DataPipelineName = 'ppDBPipeline4'
              mmHeight = 7408
              mmLeft = 187325
              mmTop = 0
              mmWidth = 15346
              BandType = 4
              LayerName = Foreground3
            end
            object TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = '_MashineName'
              DataPipeline = ppDBPipeline4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              DataPipelineName = 'ppDBPipeline4'
              mmHeight = 7408
              mmLeft = 132027
              mmTop = 0
              mmWidth = 55298
              BandType = 4
              LayerName = Foreground3
            end
            object TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText3'
              Border.mmPadding = 0
              DataField = 'ProcCode'
              DataPipeline = ppDBPipeline4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              DataPipelineName = 'ppDBPipeline4'
              mmHeight = 7408
              mmLeft = 117475
              mmTop = 0
              mmWidth = 14288
              BandType = 4
              LayerName = Foreground3
            end
            object TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText4'
              Border.mmPadding = 0
              DataField = '_ProcName'
              DataPipeline = ppDBPipeline4
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              DataPipelineName = 'ppDBPipeline4'
              mmHeight = 7408
              mmLeft = 61648
              mmTop = 0
              mmWidth = 56092
              BandType = 4
              LayerName = Foreground3
            end
            object TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'S_Amount'
              DataPipeline = ppDBPipeline4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              DataPipelineName = 'ppDBPipeline4'
              mmHeight = 7408
              mmLeft = 42069
              mmTop = 0
              mmWidth = 19315
              BandType = 4
              LayerName = Foreground3
            end
            object TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText8'
              Border.mmPadding = 0
              DataField = 'S_Function'
              DataPipeline = ppDBPipeline4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              DataPipelineName = 'ppDBPipeline4'
              mmHeight = 7408
              mmLeft = 1852
              mmTop = 0
              mmWidth = 19050
              BandType = 4
              LayerName = Foreground3
            end
            object TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'S_Date'
              DataPipeline = ppDBPipeline4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              DataPipelineName = 'ppDBPipeline4'
              mmHeight = 7408
              mmLeft = 21960
              mmTop = 0
              mmWidth = 19315
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
      mmHeight = 0
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
          mmLeft = 165100
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
          mmLeft = 165100
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
          mmLeft = 165100
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
          mmLeft = 19315
          mmTop = 529
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppLine5: TppLine
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
          mmWidth = 203200
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
          mmLeft = 19315
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
          DataPipeline = ppDBPipeline3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          DataPipelineName = 'ppDBPipeline3'
          mmHeight = 6615
          mmLeft = 152929
          mmTop = 529
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
          DataPipeline = ppDBPipeline3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          DataPipelineName = 'ppDBPipeline3'
          mmHeight = 6615
          mmLeft = 110067
          mmTop = 529
          mmWidth = 42863
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppDBText
          DesignLayer = ppDesignLayer5
          UserName = 'DBText4'
          Border.mmPadding = 0
          DataField = 'Name'
          DataPipeline = ppDBPipeline3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          DataPipelineName = 'ppDBPipeline3'
          mmHeight = 6615
          mmLeft = 110067
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
          DataPipeline = ppDBPipeline3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          DataPipelineName = 'ppDBPipeline3'
          mmHeight = 6615
          mmLeft = 152929
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
          DataPipeline = ppDBPipeline3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          DataPipelineName = 'ppDBPipeline3'
          mmHeight = 6350
          mmLeft = 1323
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
          DataPipeline = ppDBPipeline3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          DataPipelineName = 'ppDBPipeline3'
          mmHeight = 6615
          mmLeft = 152929
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
          DataPipeline = ppDBPipeline3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          DataPipelineName = 'ppDBPipeline3'
          mmHeight = 6350
          mmLeft = 1323
          mmTop = 7938
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppLine8: TppLine
          DesignLayer = ppDesignLayer5
          UserName = 'Line9'
          Border.mmPadding = 0
          ParentWidth = True
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 2646
          mmLeft = 0
          mmTop = 29898
          mmWidth = 203200
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label15'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 6350
          mmLeft = 132027
          mmTop = 25665
          mmWidth = 70908
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label17'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1582#1591' '#1578#1608#1604#1610#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 6350
          mmLeft = 60325
          mmTop = 25665
          mmWidth = 70908
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
          mmLeft = 20373
          mmTop = 25665
          mmWidth = 19315
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
          mmLeft = 130969
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
          mmLeft = 59267
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
          Caption = #1603#1575#1585#1603#1585#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 6350
          mmLeft = 265
          mmTop = 25665
          mmWidth = 19050
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
          mmLeft = 19050
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
          DataPipeline = ppDBPipeline3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          DataPipelineName = 'ppDBPipeline3'
          mmHeight = 6615
          mmLeft = 110067
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
          mmLeft = 19315
          mmTop = 15346
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer5
          UserName = 'DBText9'
          OnGetText = LblState2GetText
          Border.mmPadding = 0
          DataField = 'OrderState'
          DataPipeline = ppDBPipeline3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          DataPipelineName = 'ppDBPipeline3'
          mmHeight = 6350
          mmLeft = 1323
          mmTop = 15346
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object TppLabel
          DesignLayer = ppDesignLayer5
          UserName = 'Label2'
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
          mmLeft = 40481
          mmTop = 25665
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
        object ppLabel18: TppLabel
          DesignLayer = ppDesignLayer5
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
          mmHeight = 5027
          mmLeft = 39423
          mmTop = 26988
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground4
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 1323
        mmPrintPosition = 0
        object ppLine10: TppLine
          DesignLayer = ppDesignLayer5
          UserName = 'Line3'
          Border.mmPadding = 0
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 0
          mmWidth = 203200
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
end
