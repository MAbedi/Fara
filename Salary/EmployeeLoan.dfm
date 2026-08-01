inherited EmployeeLoanF: TEmployeeLoanF
  Top = 112
  Caption = #1579#1576#1578' '#1608' '#1608#1610#1585#1575#1610#1588' '#1608#1575#1605' '#1662#1585#1587#1606#1604
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    object newPanel: TPanel
      Left = 536
      Top = 1
      Width = 253
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        253
        39)
      object BitBtn3: TBitBtn
        Left = 168
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 91
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 14
        Top = 8
        Width = 75
        Height = 25
        Action = actDataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object okPanel: TPanel
      Left = 363
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 371
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
        Left = 10
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
    object BitBtn2: TBitBtn
      Left = 93
      Top = 9
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn6: TBitBtn
      Left = 171
      Top = 9
      Width = 75
      Height = 25
      Action = actSearchMASTER
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn9: TBitBtn
      Left = 249
      Top = 9
      Width = 75
      Height = 25
      Action = actSendToExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 5
    end
    object BitBtn11: TBitBtn
      Left = 327
      Top = 9
      Width = 75
      Height = 25
      Action = actPrint
      Caption = #1670#1575#1662
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Height = 16
    end
  end
  inherited Panel3: TPanel
    Height = 423
    ExplicitWidth = 782
    ExplicitHeight = 422
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 778
      Height = 418
      Align = alClient
      Anchors = [akLeft, akRight, akBottom]
      TabOrder = 0
      ExplicitWidth = 782
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 452
        Height = 416
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 456
        DesignSize = (
          452
          417)
        object LblName: TLabel
          Left = 369
          Top = 10
          Width = 44
          Height = 13
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1593#1606#1608#1575#1606' '#1608#1575#1605
          ParentBiDiMode = False
          ExplicitLeft = 365
        end
        object Label2: TLabel
          Left = 369
          Top = 37
          Width = 44
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1576#1604#1594' '#1575#1608#1604#1610#1607
          ExplicitLeft = 365
        end
        object Label3: TLabel
          Left = 178
          Top = 91
          Width = 71
          Height = 13
          Caption = #1602#1575#1576#1604' '#1603#1587#1585' '#1575#1586' '#1605#1575#1607
        end
        object lblAidNo1: TLabel
          Left = 364
          Top = 134
          Width = 71
          Height = 13
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610' 1'
          ParentBiDiMode = False
          ExplicitLeft = 352
        end
        object lblAidNo2: TLabel
          Left = 364
          Top = 160
          Width = 71
          Height = 13
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610' 2'
          ParentBiDiMode = False
          ExplicitLeft = 352
        end
        object Label9: TLabel
          Left = 369
          Top = 91
          Width = 56
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1593#1583#1575#1583' '#1575#1602#1587#1575#1591
          ExplicitLeft = 365
        end
        object LblAidDate1: TLabel
          Left = 117
          Top = 134
          Width = 62
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = #1578#1575#1585#1610#1582' '#1603#1605#1603#1610' 1'
          ParentBiDiMode = False
        end
        object LblAidDate2: TLabel
          Left = 117
          Top = 160
          Width = 62
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = #1578#1575#1585#1610#1582' '#1603#1605#1603#1610' 2'
          ParentBiDiMode = False
        end
        object Label8: TLabel
          Left = 369
          Top = 64
          Width = 48
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1576#1604#1594' '#1602#1587#1591
          ExplicitLeft = 365
        end
        object Bevel1: TBevel
          Left = 16
          Top = 120
          Width = 420
          Height = 9
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
          ExplicitWidth = 408
        end
        object Label1: TLabel
          Left = 123
          Top = 64
          Width = 87
          Height = 13
          Caption = #1662#1585#1583#1575#1582#1578#1610#8207#1587#1606#1608#1575#1578#8207#1602#1576#1604
          FocusControl = DBEdit3
        end
        object lbl1: TLabel
          Left = 392
          Top = 186
          Width = 29
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1587#1608#1610#1607
          FocusControl = edtSettlement
          ExplicitLeft = 380
        end
        object Label4: TLabel
          Left = 91
          Top = 91
          Width = 21
          Height = 13
          Caption = #1587#1575#1604
        end
        object SpeedButton1: TSpeedButton
          Left = 365
          Top = 181
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = SpeedButton1Click
          ExplicitLeft = 353
        end
        object Label6: TLabel
          Left = 117
          Top = 186
          Width = 53
          Height = 13
          Caption = #1578#1575#1585#1610#1582' '#1578#1587#1608#1610#1607
          FocusControl = DBEdit4
        end
        object ChkState: TDBCheckBox
          Left = 37
          Top = 35
          Width = 88
          Height = 17
          Alignment = taLeftJustify
          AllowGrayed = True
          BiDiMode = bdLeftToRight
          Caption = #1605#1581#1575#1587#1576#1607' '#1606#1588#1608#1583'. '#8207
          Ctl3D = False
          DataField = 'State'
          DataSource = SrcItems
          ParentBiDiMode = False
          ParentCtl3D = False
          TabOrder = 16
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBGrid2: TDBGrid
          Left = 1
          Top = 338
          Width = 450
          Height = 78
          Align = alBottom
          Anchors = [akLeft, akTop, akBottom]
          Color = clCream
          DataSource = SrcItems
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 14
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'InfoName_L1'
              Title.Alignment = taCenter
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'InfoName_L2'
              Title.Alignment = taCenter
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EmployerAmount'
              Title.Alignment = taCenter
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EmployeeAmount'
              Title.Alignment = taCenter
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FirstMounth'
              Title.Alignment = taCenter
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EndMounth'
              Title.Alignment = taCenter
              Width = 62
              Visible = True
            end>
        end
        object Panel6: TPanel
          Left = 1
          Top = 250
          Width = 450
          Height = 88
          Align = alBottom
          BevelOuter = bvNone
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 13
          ExplicitWidth = 458
          DesignSize = (
            450
            88)
          object LblAccTopicCode: TLabel
            Left = 370
            Top = 15
            Width = 62
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
            ExplicitLeft = 366
          end
          object LblAccDetailCode: TLabel
            Left = 131
            Top = 15
            Width = 51
            Height = 13
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610
          end
          object LblAccCTopicCode2: TLabel
            Left = 136
            Top = 40
            Width = 68
            Height = 13
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' 2'
          end
          object LblAccCTopicCode: TLabel
            Left = 375
            Top = 40
            Width = 71
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' 1 '
            ExplicitLeft = 383
          end
          object Bevel2: TBevel
            Left = 15
            Top = 7
            Width = 420
            Height = 9
            Anchors = [akLeft, akTop, akRight]
            Shape = bsTopLine
            ExplicitWidth = 416
          end
          object LblAccCTopicCode3: TLabel
            Left = 374
            Top = 64
            Width = 68
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' 3'
            ExplicitLeft = 382
          end
          object EdtAccTopicCode: TDBEdit
            Left = 276
            Top = 14
            Width = 85
            Height = 19
            Anchors = [akTop, akRight]
            Ctl3D = False
            DataField = 'AccTopicCode'
            DataSource = SrcItems
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
            ExplicitLeft = 284
          end
          object EdtAccCTopicCode: TDBEdit
            Left = 276
            Top = 36
            Width = 85
            Height = 19
            Anchors = [akTop, akRight]
            Ctl3D = False
            DataField = 'AccCTopicCode'
            DataSource = SrcItems
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
            ExplicitLeft = 284
          end
          object EdtAccDetailCode: TDBEdit
            Left = 36
            Top = 12
            Width = 85
            Height = 19
            Ctl3D = False
            DataField = 'AccDetailCode'
            DataSource = SrcItems
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
          end
          object EdtAccCTopicCode2: TDBEdit
            Left = 36
            Top = 36
            Width = 85
            Height = 19
            Ctl3D = False
            DataField = 'AccCTopicCode2'
            DataSource = SrcItems
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 4
          end
          object BitBtn1: TBitBtn
            Left = 88
            Top = 60
            Width = 92
            Height = 25
            Action = actRelAcc
            Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
            TabOrder = 0
          end
          object BitBtn10: TBitBtn
            Left = 9
            Top = 60
            Width = 75
            Height = 25
            Action = actSearch_
            Caption = #1580#1587#1578#1580#1608
            TabOrder = 5
          end
          object EdtAccCTopicCode3: TDBEdit
            Left = 276
            Top = 60
            Width = 85
            Height = 19
            Anchors = [akTop, akRight]
            Ctl3D = False
            DataField = 'AccCTopicCode3'
            DataSource = SrcItems
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 6
            ExplicitLeft = 284
          end
        end
        object DBEdit1: TDBEdit
          Left = 243
          Top = 33
          Width = 120
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'EmployerAmount'
          DataSource = SrcItems
          TabOrder = 1
          ExplicitLeft = 251
        end
        object DBEdit2: TDBEdit
          Left = 119
          Top = 87
          Width = 54
          Height = 21
          DataField = 'FirstMounth'
          DataSource = SrcItems
          TabOrder = 5
        end
        object EdtAidNo1: TDBEdit
          Left = 243
          Top = 130
          Width = 120
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'AidNo1'
          DataSource = SrcItems
          TabOrder = 7
          ExplicitLeft = 251
        end
        object EdtAidNo2: TDBEdit
          Left = 243
          Top = 156
          Width = 120
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'AidNo2'
          DataSource = SrcItems
          TabOrder = 9
          ExplicitLeft = 251
        end
        object DBEdit5: TDBEdit
          Left = 243
          Top = 60
          Width = 120
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'EmployeeAmount'
          DataSource = SrcItems
          TabOrder = 2
          ExplicitLeft = 251
        end
        object DBEdit6: TDBEdit
          Left = 294
          Top = 88
          Width = 69
          Height = 19
          Anchors = [akTop, akRight]
          Ctl3D = False
          DataField = 'EndMounth'
          DataSource = SrcItems
          ParentCtl3D = False
          TabOrder = 3
          ExplicitLeft = 302
        end
        object EdtAidDate1: TDBEdit
          Left = 37
          Top = 130
          Width = 77
          Height = 21
          DataField = 'AidDate1'
          DataSource = SrcItems
          TabOrder = 8
        end
        object EdtAidDate2: TDBEdit
          Left = 37
          Top = 156
          Width = 79
          Height = 21
          DataField = 'AidDate2'
          DataSource = SrcItems
          TabOrder = 10
        end
        object CmbLoan: TDBComboBox
          Left = 22
          Top = 6
          Width = 341
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'FormInfoID'
          DataSource = SrcItems
          TabOrder = 0
          OnChange = CmbLoanChange
          OnEnter = CmbLoanEnter
        end
        object DBEdit3: TDBEdit
          Left = 37
          Top = 60
          Width = 77
          Height = 21
          DataField = 'PaymentLoan'
          DataSource = SrcItems
          TabOrder = 4
        end
        object GrpNote: TGroupBox
          Left = 1
          Top = 204
          Width = 450
          Height = 46
          Align = alBottom
          Caption = #1578#1608#1590#1610#1581#1575#1578
          TabOrder = 15
          ExplicitWidth = 458
          object DBMmoNote: TDBMemo
            Left = 2
            Top = 15
            Width = 454
            Height = 29
            Align = alClient
            DataField = 'Note_L1'
            DataSource = SrcItems
            TabOrder = 0
          end
        end
        object edtSettlement: TDBEdit
          Left = 227
          Top = 182
          Width = 120
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'Settlement'
          DataSource = SrcItems
          TabOrder = 11
          ExplicitLeft = 231
        end
        object dbedtStartYear: TDBEdit
          Left = 38
          Top = 87
          Width = 49
          Height = 21
          DataField = 'StartYear'
          DataSource = SrcItems
          TabOrder = 6
        end
        object DBEdit4: TDBEdit
          Left = 37
          Top = 182
          Width = 79
          Height = 21
          Ctl3D = True
          DataField = 'SettlementDate'
          ParentCtl3D = False
          TabOrder = 12
        end
      end
      object Panel5: TPanel
        Left = 453
        Top = 1
        Width = 324
        Height = 417
        Align = alRight
        TabOrder = 1
        ExplicitLeft = 461
        ExplicitHeight = 418
        object DBGrid1: TDBGrid
          Tag = 111
          Left = 1
          Top = 1
          Width = 322
          Height = 393
          Align = alClient
          Color = clCream
          DataSource = SrcMaster
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          OnKeyPress = DBGrid1KeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'PersonelNo'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonName_L1'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonName_L2'
              Width = 91
              Visible = True
            end>
        end
        object Panel7: TPanel
          Left = 1
          Top = 394
          Width = 322
          Height = 23
          Align = alBottom
          BevelOuter = bvLowered
          TabOrder = 1
          DesignSize = (
            322
            23)
          object lblColor1: TLabel
            Left = 207
            Top = 6
            Width = 45
            Height = 13
            Anchors = [akRight, akBottom]
            AutoSize = False
            Caption = '                '
            Color = clBlack
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object LblName1: TLabel
            Left = 255
            Top = 6
            Width = 38
            Height = 13
            Anchors = [akRight, akBottom]
            BiDiMode = bdLeftToRight
            Caption = #1608#1575#1605'  '#1583#1575#1585#1583
            ParentBiDiMode = False
          end
          object lblColor2: TLabel
            Left = 67
            Top = 6
            Width = 44
            Height = 13
            Anchors = [akLeft, akBottom]
            AutoSize = False
            Caption = '                '
            Color = 8388863
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object LblName2: TLabel
            Left = 114
            Top = 6
            Width = 39
            Height = 13
            Anchors = [akLeft, akBottom]
            BiDiMode = bdLeftToRight
            Caption = #1608#1575#1605' '#1606#1583#1575#1585#1583
            ParentBiDiMode = False
          end
        end
      end
    end
  end
  inherited ActionList: TActionList
    inherited DataSetInsert1: TDataSetInsert
      DataSource = SrcItems
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = SrcItems
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = SrcItems
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = SrcItems
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = SrcItems
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actRelAcc: TAction
      Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
      OnExecute = actRelAccExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actDataSetDelete1_: TAction
      Caption = #1581#1584#1601
      OnExecute = actDataSetDelete1_Execute
    end
    object actSearchMASTER: TAction
      Caption = #1580#1587#1578#1580#1608
      OnExecute = actSearchMASTERExecute
    end
  end
  object qryInitForm: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select * FROM Pay.FormTypes'
      'where  FormType=:FormType')
    Left = 474
    Top = 7
  end
  object qryMaster: TADOQuery
    AutoCalcFields = False
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryMasterAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     Pay.PersonelInfo.PersonelNo, Pay.PersonelInfo.lastNam' +
        'e_L1 + '#39' -  '#39' + Pay.PersonelInfo.name_L1 AS PersonName_L1, '
      
        '                      Pay.PersonelInfo.lastName_L2 + '#39' -  '#39' + Pe' +
        'rsonelInfo.name_L2 AS PersonName_L2, Pay.FormsInfo.InfoID, Forms' +
        'Info.InfoName_L1, '
      '                      Pay.FormsInfo.InfoName_L2,'
      
        '                          (SELECT     COUNT(Pay.PersonelDecExt.P' +
        'ersonelNo) AS Expr1'
      
        '                             FROM         Pay.PersonelDecExt INN' +
        'ER JOIN'
      
        '                                                   Pay.FormsInfo' +
        ' ON Pay.PersonelDecExt.FormInfoID = Pay.FormsInfo.FormInfoID'
      
        '                             WHERE     (Pay.FormsInfo.FormType =' +
        ' 33) AND (Pay.PersonelDecExt.PersonelNo = Pay.PersonelInfo.Perso' +
        'nelNo)) AS CalCol'
      'FROM         Pay.PersonelInfo INNER JOIN'
      
        '                      Pay.FormsInfo ON Pay.PersonelInfo.Personel' +
        'State = Pay.FormsInfo.FormInfoID'
      'WHERE     (Pay.FormsInfo.InfoID < 50)')
    Left = 706
    Top = 183
    object qryMasterPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
      FieldName = 'PersonelNo'
    end
    object qryMasterPersonName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      FieldName = 'PersonName_L1'
      ReadOnly = True
      Size = 59
    end
    object qryMasterPersonName_L2: TStringField
      FieldName = 'PersonName_L2'
      ReadOnly = True
      Size = 59
    end
    object qryMasterCalCol: TIntegerField
      FieldName = 'CalCol'
      ReadOnly = True
    end
  end
  object SrcMaster: TDataSource
    DataSet = qryMaster
    Left = 714
    Top = 239
  end
  object qryItems: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterInsert = qryItemsAfterInsert
    BeforePost = qryItemsBeforePost
    AfterPost = qryItemsAfterPost
    Parameters = <
      item
        Name = 'EmployeeNo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'Type'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = 23
      end>
    SQL.Strings = (
      
        'SELECT     Pay.PersonelDecExt.* , Pay.FormsInfo.FormType, Pay.Fo' +
        'rmsInfo.InfoID,'
      '           Pay.FormsInfo.InfoName_L1, Pay.FormsInfo.InfoName_L2'
      'FROM         Pay.PersonelDecExt INNER JOIN'
      
        '                      Pay.FormsInfo ON Pay.PersonelDecExt.FormIn' +
        'foID = Pay.FormsInfo.FormInfoID'
      'where PersonelNo = :EmployeeNo and FormType =:Type')
    Left = 211
    Top = 416
    object qryItemsDecExtID: TIntegerField
      FieldName = 'DecExtID'
    end
    object qryItemsFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
      OnGetText = qryItemsFormInfoIDGetText
      OnSetText = qryItemsFormInfoIDSetText
    end
    object qryItemsPersonelNo: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1603#1575#1585#1605#1606#1583#1610
      FieldName = 'PersonelNo'
    end
    object qryItemsEmployeeAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1602#1587#1591
      FieldName = 'EmployeeAmount'
      OnChange = qryItemsEmployeeAmountChange
      currency = True
      Precision = 19
    end
    object qryItemsFirstMounth: TWordField
      Tag = 3
      DisplayLabel = #1575#1608#1604#1610#1606' '#1605#1575#1607
      FieldName = 'FirstMounth'
      Required = True
    end
    object qryItemsEndMounth: TWordField
      Tag = 3
      DisplayLabel = #1578#1593#1583#1575#1583' '#1575#1602#1587#1575#1591
      FieldName = 'EndMounth'
    end
    object qryItemsAidNo1: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610' 1'
      FieldName = 'AidNo1'
      Size = 30
    end
    object qryItemsAidDate1_L1: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1603#1605#1603#1610'1'
      FieldName = 'AidDate1'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryItemsAidNo2: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610'2'
      FieldName = 'AidNo2'
      Size = 30
    end
    object qryItemsAidDate2_L1: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1603#1605#1603#1610' 2'
      FieldName = 'AidDate2'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryItemsDayTime: TFloatField
      FieldName = 'DayTime'
    end
    object qryItemsEmployerAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1575#1608#1604#1610#1607
      FieldName = 'EmployerAmount'
      OnChange = qryItemsEmployeeAmountChange
      currency = True
      Precision = 19
    end
    object qryItemsFormInfoID2: TIntegerField
      FieldName = 'FormInfoID2'
    end
    object qryItemsAccTopicCode: TIntegerField
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'AccTopicCode'
    end
    object qryItemsAccDetailCode: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'AccDetailCode'
    end
    object qryItemsFormType: TSmallintField
      FieldName = 'FormType'
    end
    object qryItemsInfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qryItemsInfoName_L1: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1608#1575#1605
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryItemsInfoName_L2: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1608#1575#1605
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryItemsAccCTopicCode: TIntegerField
      FieldName = 'AccCTopicCode'
    end
    object qryItemsAccCTopicCode2: TIntegerField
      FieldName = 'AccCTopicCode2'
    end
    object qryItemsDayQuntity: TFloatField
      FieldName = 'DayQuntity'
    end
    object qryItemsPaymentLoan: TBCDField
      DisplayLabel = #1662#1585#1583#1575#1582#1578#1610' '#1587#1606#1608#1575#1578' '#1602#1576#1604
      FieldName = 'PaymentLoan'
      currency = True
      Precision = 19
    end
    object qryItemsState: TWordField
      FieldName = 'State'
    end
    object qryItemsAccCTopicCode3: TIntegerField
      FieldName = 'AccCTopicCode3'
    end
    object qryItemsSettlement: TBCDField
      FieldName = 'Settlement'
      currency = True
      Precision = 19
    end
    object qryItemsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryItemsStartYear: TIntegerField
      FieldName = 'StartYear'
    end
    object qryItemsEndYear: TIntegerField
      FieldName = 'EndYear'
    end
    object qryItemsSettlementDate: TStringField
      FieldName = 'SettlementDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryItemsNote_L1: TWideStringField
      FieldName = 'Note_L1'
      Size = 4000
    end
    object qryItemsNote_L2: TWideStringField
      FieldName = 'Note_L2'
      Size = 4000
    end
  end
  object SrcItems: TDataSource
    DataSet = qryItems
    OnStateChange = SrcItemsStateChange
    Left = 291
    Top = 400
  end
  object qryFormsInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'FROM Pay.FormsInfo')
    Left = 275
    Top = 16
    object qryFormsInfoFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryFormsInfoFormType: TSmallintField
      FieldName = 'FormType'
    end
    object qryFormsInfoInfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qryFormsInfoInfoName_L1: TStringField
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object i: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryFormsInfoPrvInfoID: TIntegerField
      FieldName = 'PrvInfoID'
    end
    object qryFormsInfoAmount: TBCDField
      FieldName = 'Amount'
      Precision = 19
    end
    object qryFormsInfoAmount2: TBCDField
      FieldName = 'Amount2'
      Precision = 19
    end
    object qryFormsInfoCoefficient: TFloatField
      FieldName = 'Coefficient'
    end
    object qryFormsInfoStandardDays: TFloatField
      FieldName = 'StandardDays'
    end
    object qryFormsInfoStandardTimes: TFloatField
      FieldName = 'StandardTimes'
    end
    object qryFormsInfoAccTopicCode: TIntegerField
      FieldName = 'AccTopicCode'
    end
    object qryFormsInfoAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qryFormsInfoCalCulateType: TWordField
      FieldName = 'CalCulateType'
    end
    object qryFormsInfoRecallFormInfoID1: TStringField
      FieldName = 'RecallFormInfoID1'
      Size = 150
    end
    object qryFormsInfoRecallFormInfoID2: TStringField
      FieldName = 'RecallFormInfoID2'
      Size = 150
    end
    object qryFormsInfoWordDocuments: TStringField
      FieldName = 'WordDocuments'
      Size = 150
    end
    object qryFormsInfoRecalKindClock: TWordField
      FieldName = 'RecalKindClock'
    end
    object qryFormsInfoAccCTopicCode: TIntegerField
      FieldName = 'AccCTopicCode'
    end
    object qryFormsInfoAccCTopicCode2: TIntegerField
      FieldName = 'AccCTopicCode2'
    end
  end
  object ppReport1: TppReport
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
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'F:\4share\rptEmployeeInfolist_Bank.rtm'
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
    Left = 601
    Top = 216
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 40746
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
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
        mmTop = 0
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1608#1575#1605' '#1662#1585#1587#1606#1604' '#1576#1578#1601#1603#1610#1603' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8467
        mmLeft = 72231
        mmTop = 6350
        mmWidth = 58738
        BandType = 0
        LayerName = Foreground1
      end
      object SysvarPageNum: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SysVarPageNo1'
        OnGetText = SysvarPageNumGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 4763
        mmTop = 18521
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.250000000000000000
        mmHeight = 1588
        mmLeft = 1058
        mmTop = 26194
        mmWidth = 200290
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1608#1575#1605' '
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
        mmLeft = 82815
        mmTop = 30427
        mmWidth = 46567
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594' '#1608#1575#1605
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
        mmLeft = 50536
        mmTop = 30427
        mmWidth = 31750
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1602#1587#1591' '#1608#1575#1605
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
        mmLeft = 25929
        mmTop = 30427
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1588#1585#1608#1593' '
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
        mmLeft = 15610
        mmTop = 26988
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1852
        mmLeft = 1058
        mmTop = 38894
        mmWidth = 200290
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1662#1585#1587#1606#1604
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
        mmLeft = 129646
        mmTop = 30427
        mmWidth = 67998
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1575#1602#1587#1575#1591
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
        mmLeft = 15875
        mmTop = 32808
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583
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
        mmLeft = 3440
        mmTop = 27252
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1575#1602#1587#1575#1591
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
        mmLeft = 2910
        mmTop = 33073
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 1058
        mmWidth = 203300
        BandType = 4
        LayerName = Foreground1
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
          PrinterSetup.mmPaperHeight = 279000
          PrinterSetup.mmPaperWidth = 216000
          PrinterSetup.PaperSize = 1
          Units = utMillimeters
          Version = '22.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppDBPipeline2'
          object ppTitleBand1: TppTitleBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line6'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.250000000000000000
              mmHeight = 2117
              mmLeft = 3175
              mmTop = 0
              mmWidth = 200290
              BandType = 1
              LayerName = Foreground
            end
            object ppLine7: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line7'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.500000000000000000
              mmHeight = 2117
              mmLeft = 3175
              mmTop = 0
              mmWidth = 200290
              BandType = 1
              LayerName = Foreground
            end
            object ppLine8: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line8'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.250000000000000000
              mmHeight = 2117
              mmLeft = 3175
              mmTop = 0
              mmWidth = 200290
              BandType = 1
              LayerName = Foreground
            end
            object ppLine9: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line9'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.500000000000000000
              mmHeight = 2117
              mmLeft = 3175
              mmTop = 0
              mmWidth = 200290
              BandType = 1
              LayerName = Foreground
            end
            object ppLine10: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line10'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.250000000000000000
              mmHeight = 2117
              mmLeft = 3175
              mmTop = 0
              mmWidth = 200290
              BandType = 1
              LayerName = Foreground
            end
            object ppLine11: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line11'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.500000000000000000
              mmHeight = 2117
              mmLeft = 3175
              mmTop = 0
              mmWidth = 200290
              BandType = 1
              LayerName = Foreground
            end
            object ppLine12: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line12'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.250000000000000000
              mmHeight = 2117
              mmLeft = 3175
              mmTop = 0
              mmWidth = 200290
              BandType = 1
              LayerName = Foreground
            end
            object ppLine13: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line13'
              Border.mmPadding = 0
              Pen.Color = clGray
              Pen.Width = 2
              Weight = 1.500000000000000000
              mmHeight = 2117
              mmLeft = 3175
              mmTop = 0
              mmWidth = 200290
              BandType = 1
              LayerName = Foreground
            end
          end
          object ppDetailBand2: TppDetailBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 7144
            mmPrintPosition = 0
            object ppDBText3: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'EndMounth'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6085
              mmLeft = 5292
              mmTop = 794
              mmWidth = 9525
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = 'FirstMounth'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 17198
              mmTop = 794
              mmWidth = 10583
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText8: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText8'
              Border.mmPadding = 0
              DataField = 'EmployeeAmount'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 28310
              mmTop = 794
              mmWidth = 23813
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'EmployerAmount'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 53711
              mmTop = 794
              mmWidth = 30692
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText1: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = 'InfoName_L1'
              DataPipeline = ppDBPipeline2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Zar'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 5821
              mmLeft = 84931
              mmTop = 794
              mmWidth = 46567
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 7408
            mmPrintPosition = 0
            object ppDBCalc2: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc2'
              Border.mmPadding = 0
              DataField = 'EmployerAmount'
              DataPipeline = ppDBPipeline2
              DisplayFormat = '#,0;-#,0'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = 'Badr'
              Font.Size = 10
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppDBPipeline2'
              mmHeight = 6350
              mmLeft = 53711
              mmTop = 529
              mmWidth = 30692
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel12: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label12'
              Border.mmPadding = 0
              Caption = #1580#1605#1593
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
              mmTop = 529
              mmWidth = 5292
              BandType = 7
              LayerName = Foreground
            end
            object ppLine14: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line14'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 2381
              mmLeft = 0
              mmTop = 0
              mmWidth = 203200
              BandType = 7
              LayerName = Foreground
            end
            object ppLine15: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line15'
              Border.mmPadding = 0
              Position = lpBottom
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 265
              mmTop = 5820
              mmWidth = 203300
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
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'PersonelNo'
      DataPipeline = ppDBPipeline1
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 8467
        mmPrintPosition = 0
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line2'
          Border.mmPadding = 0
          Weight = 1.000000000000000000
          mmHeight = 1323
          mmLeft = 128588
          mmTop = 7144
          mmWidth = 72761
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText1'
          Border.mmPadding = 0
          DataField = 'PersonelNo'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 182827
          mmTop = 0
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText4: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText4'
          Border.mmPadding = 0
          DataField = 'PersonName_L1'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6350
          mmLeft = 130704
          mmTop = 0
          mmWidth = 51594
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Visible = False
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 13494
        mmPrintPosition = 0
        object ppLine4: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line4'
          Border.mmPadding = 0
          Pen.Color = clGray
          Pen.Width = 2
          Weight = 1.250000000000000000
          mmHeight = 2117
          mmLeft = 1058
          mmTop = 1852
          mmWidth = 200290
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label2'
          Border.mmPadding = 0
          Caption = #1580#1605#1593
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
          mmLeft = 82815
          mmTop = 2910
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc1'
          Border.mmPadding = 0
          DataField = 'EmployerAmount'
          DataPipeline = ppDBPipeline2
          DisplayFormat = '#,0;-#,0'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          ResetGroup = ppGroup1
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 6350
          mmLeft = 50536
          mmTop = 3175
          mmWidth = 31750
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine5: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line5'
          Border.mmPadding = 0
          Pen.Color = clGray
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 2117
          mmLeft = 1058
          mmTop = 9790
          mmWidth = 200290
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = SrcMaster
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 601
    Top = 152
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = SrcItems
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 529
    Top = 168
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'DecExtID'
      FieldName = 'DecExtID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'FormInfoID'
      FieldName = 'FormInfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'PersonelNo'
      FieldName = 'PersonelNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = 'EmployeeAmount'
      FieldName = 'EmployeeAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField5: TppField
      FieldAlias = 'FirstMounth'
      FieldName = 'FirstMounth'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = 'EndMounth'
      FieldName = 'EndMounth'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField7: TppField
      FieldAlias = 'AidNo1'
      FieldName = 'AidNo1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField8: TppField
      FieldAlias = 'AidDate1'
      FieldName = 'AidDate1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField9: TppField
      FieldAlias = 'AidNo2'
      FieldName = 'AidNo2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField10: TppField
      FieldAlias = 'AidDate2'
      FieldName = 'AidDate2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField11: TppField
      FieldAlias = 'DayTime'
      FieldName = 'DayTime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField12: TppField
      FieldAlias = 'EmployerAmount'
      FieldName = 'EmployerAmount'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField13: TppField
      FieldAlias = 'FormInfoID2'
      FieldName = 'FormInfoID2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField14: TppField
      FieldAlias = 'Note_L1'
      FieldName = 'Note_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField15: TppField
      FieldAlias = 'Note_L2'
      FieldName = 'Note_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField16: TppField
      FieldAlias = 'AccTopicCode'
      FieldName = 'AccTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField17: TppField
      FieldAlias = 'AccDetailCode'
      FieldName = 'AccDetailCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField18: TppField
      FieldAlias = 'FormType'
      FieldName = 'FormType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField19: TppField
      FieldAlias = 'InfoID'
      FieldName = 'InfoID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField20: TppField
      FieldAlias = 'InfoName_L1'
      FieldName = 'InfoName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField21: TppField
      FieldAlias = 'InfoName_L2'
      FieldName = 'InfoName_L2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField22: TppField
      FieldAlias = 'AccCTopicCode'
      FieldName = 'AccCTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField23: TppField
      FieldAlias = 'AccCTopicCode2'
      FieldName = 'AccCTopicCode2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline2ppField24: TppField
      FieldAlias = 'DayQuntity'
      FieldName = 'DayQuntity'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
  end
end
