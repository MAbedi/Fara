inherited GetReprotsF: TGetReprotsF
  Top = 195
  Caption = #1587#1575#1582#1578' '#1711#1586#1575#1585#1588#1575#1578' '#1581#1602#1608#1602
  ClientHeight = 562
  ClientWidth = 886
  OnResize = FormResize
  ExplicitTop = -105
  ExplicitWidth = 894
  ExplicitHeight = 593
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 521
    Width = 886
    TabOrder = 1
    ExplicitTop = 521
    ExplicitWidth = 886
    inherited BtnReject: TBitBtn
      TabOrder = 1
    end
    object DBNavigator1: TDBNavigator
      Left = 95
      Top = 8
      Width = 248
      Height = 25
      DataSource = srcGetReprots
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight, akBottom]
      Flat = True
      TabOrder = 2
    end
    object newPanel: TPanel
      Left = 570
      Top = 1
      Width = 315
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        315
        39)
      object BitBtn3: TBitBtn
        Left = 237
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 159
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 81
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
      object BitBtn1: TBitBtn
        Left = 4
        Top = 8
        Width = 75
        Height = 25
        Action = actCopy
        Anchors = [akTop, akRight]
        Caption = #1603#1662#1610' '#1711#1586#1575#1585#1588
        TabOrder = 3
      end
    end
    object okPanel: TPanel
      Left = 412
      Top = 1
      Width = 158
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
      DesignSize = (
        158
        39)
      object BitBtn7: TBitBtn
        Left = 81
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
        Left = 3
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
  inherited Panel2: TPanel
    Width = 886
    TabOrder = 2
    ExplicitWidth = 886
    inherited ImgTemplate: TImage
      Left = 889
      ExplicitLeft = 889
    end
    inherited lblCaption: TLabel
      Left = 778
      ExplicitLeft = 778
    end
    inherited lblBaseDate: TLabel
      Left = 403
      ExplicitLeft = 403
    end
  end
  inherited Panel3: TPanel
    Top = 174
    Width = 886
    Height = 347
    TabOrder = 0
    ExplicitTop = 174
    ExplicitWidth = 886
    ExplicitHeight = 347
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 882
      Height = 343
      Align = alClient
      TabOrder = 0
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 880
        Height = 223
        Align = alTop
        TabOrder = 0
        DesignSize = (
          880
          223)
        object Label14: TLabel
          Left = 787
          Top = 11
          Width = 41
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1603#1583' '#1587#1578#1608#1606
          FocusControl = DBEdit20
        end
        object Label15: TLabel
          Left = 787
          Top = 37
          Width = 13
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605
          FocusControl = EdtSerialFrom
        end
        object ColumnsSalaryID: TSpeedButton
          Left = 577
          Top = 58
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = ColumnsSalaryIDClick
        end
        object Label1: TLabel
          Left = 787
          Top = 63
          Width = 30
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1593#1606#1575#1608#1610#1606
          FocusControl = edtColumnsSalaryID
        end
        object Label4: TLabel
          Left = 132
          Top = 63
          Width = 42
          Height = 13
          Caption = #1605#1576#1604#1594' '#1579#1575#1576#1578
        end
        object Label5: TLabel
          Left = 492
          Top = 63
          Width = 77
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1593#1606#1575#1608#1610#1606' '#1602#1575#1576#1604' '#1603#1587#1585
          FocusControl = edtColumnsSalaryIDSub
        end
        object ColumnsSalaryIDSub: TSpeedButton
          Left = 287
          Top = 58
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = ColumnsSalaryIDClick
        end
        object Label6: TLabel
          Left = 409
          Top = 37
          Width = 25
          Height = 13
          Caption = #1585#1606#1583' '#1576#1607
          FocusControl = edtColumnsRoundNo
        end
        object Label7: TLabel
          Left = 424
          Top = 18
          Width = 63
          Height = 13
          Caption = #1603#1583' '#1587#1578#1608#1606' '#1579#1575#1576#1578
          FocusControl = cxDBSpinEdit1
        end
        object DBEdit20: TDBEdit
          Left = 703
          Top = 7
          Width = 78
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'ColumnsID'
          DataSource = srcGetRptColumns
          TabOrder = 0
        end
        object EdtSerialFrom: TDBEdit
          Left = 601
          Top = 33
          Width = 180
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'ColumnsName'
          DataSource = srcGetRptColumns
          TabOrder = 1
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 15
          Top = 1
          Width = 158
          Height = 47
          Align = alCustom
          Caption = '  '#1606#1608#1593'  '
          Columns = 2
          DataField = 'Kind'
          DataSource = srcGetRptColumns
          Items.Strings = (
            #1605#1586#1575#1610#1575
            #1603#1587#1608#1585#1575#1578)
          TabOrder = 2
          Values.Strings = (
            '1'
            '2')
        end
        object edtAmount: TDBEdit
          Left = 15
          Top = 59
          Width = 114
          Height = 21
          DataField = 'Amount'
          DataSource = srcGetRptColumns
          TabOrder = 3
        end
        object edtColumnsSalaryID: TDBEdit
          Left = 601
          Top = 60
          Width = 180
          Height = 19
          Anchors = [akTop, akRight]
          Ctl3D = False
          DataField = 'ColumnsSalaryID'
          DataSource = srcGetRptColumns
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object edtColumnsSalaryIDSub: TDBEdit
          Left = 311
          Top = 60
          Width = 180
          Height = 19
          Anchors = [akTop, akRight]
          Ctl3D = False
          DataField = 'ColumnsSalaryIDSub'
          DataSource = srcGetRptColumns
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object edtColumnsRoundNo: TDBEdit
          Left = 228
          Top = 33
          Width = 180
          Height = 21
          DataField = 'ColumnsRoundNo'
          DataSource = srcGetRptColumns
          TabOrder = 6
        end
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 4
          Top = 83
          Width = 872
          Height = 136
          Align = alBottom
          Caption = #1605#1581#1575#1587#1576#1575#1578' '#1587#1578#1608#1606
          TabOrder = 7
          object lblColumnsCalc: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 118
            Width = 862
            Height = 13
            Align = alBottom
            Color = clCream
            ParentColor = False
            Transparent = False
            ExplicitLeft = 864
            ExplicitWidth = 3
          end
          object DBGrid4: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 18
            Width = 338
            Height = 94
            Align = alLeft
            Color = 13236955
            DataSource = srcWageDec
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = DBGrid4DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'SalaryID'
                Width = 116
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'InfoName_L1'
                Width = 168
                Visible = True
              end>
          end
          object dbmmoColumnsCalc: TDBMemo
            Tag = 111
            AlignWithMargins = True
            Left = 374
            Top = 18
            Width = 493
            Height = 94
            Align = alClient
            BiDiMode = bdLeftToRight
            DataField = 'ColumnsCalc'
            DataSource = srcGetRptColumns
            ParentBiDiMode = False
            TabOrder = 0
          end
          object Panel5: TPanel
            Left = 346
            Top = 15
            Width = 25
            Height = 100
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object btnAdd: TBitBtn
              Left = 1
              Top = 28
              Width = 23
              Height = 21
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000E30E0000E30E0000000100000001000010630000006B
                0000086B00000073000008730000007B0000107B000000840000088400001084
                0000008C0000088C00000094000008940000009C0000089C000000A5000008A5
                000000AD000000B5000000BD000000C6000008C6000000CE000000D6000008D6
                000008630800087B0800107B080010840800008C0800088C0800009408001094
                0800009C080000A5080000AD080000B5080010BD080010C60800087B1000107B
                1000187B10001084100018841000088C1000188C1000109410001894100010D6
                100018D61000107B1800187B18001884180029841800108C1800188C1800218C
                18001094180018941800189C1800219C180010C6180018C6180018D61800187B
                210018842100189421002194210029A521001873290029AD290031DE290029E7
                290029843100298C3100398C310029D6310031D6310039AD390042A5420039DE
                420042DE42004AAD520052AD520052E752005AE75A0063AD630063E763006BEF
                63006B946B0073B56B006BDE6B0063E76B006BE76B0063EF6B007BB5730073B5
                7B007BDE7B007BB5840084BD84008CC69400A5E7A500CEEFBD00BDEFC600C6EF
                C600C6EFCE00CEEFCE00D6F7CE00D6E7D600DEE7D600D6EFD600DEEFD600CEE7
                DE00D6EFDE00DEEFDE00DEEFE700EFF7EF00F7F7F700FF00FF00FFFFFF00FFFF
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
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00777777777777
                772F4F777777777777777777777777777712394F777777777777777777777777
                770E3D354F7777777777777777777777770E0B082D4F77777777125C55523F25
                131F0A4457294F777777225840161413100A1E073957344F7777215817151413
                120E1E07054157344F77105D17161413120C1E0707054B57414F0F5E17161413
                12201E0705034C57464F0E5817161413100C0C071B3657414F77205940161413
                240D0A073757334F7777126256523F25120C0C4357294F777777777777777777
                770E0A082D4F7777777777777777777777213B384F7777777777777777777777
                770E3B4F77777777777777777777777777444F77777777777777}
              Layout = blGlyphTop
              Margin = 1
              Spacing = 0
              TabOrder = 0
              OnClick = btnAddClick
            end
            object BitBtn2: TBitBtn
              Left = 1
              Top = 53
              Width = 23
              Height = 47
              Caption = '...'
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000E30E0000E30E0000000100000001000010630000006B
                0000086B00000073000008730000007B0000107B000000840000088400001084
                0000008C0000088C00000094000008940000009C0000089C000000A5000008A5
                000000AD000000B5000000BD000000C6000008C6000000CE000000D6000008D6
                000008630800087B0800107B080010840800008C0800088C0800009408001094
                0800009C080000A5080000AD080000B5080010BD080010C60800087B1000107B
                1000187B10001084100018841000088C1000188C1000109410001894100010D6
                100018D61000107B1800187B18001884180029841800108C1800188C1800218C
                18001094180018941800189C1800219C180010C6180018C6180018D61800187B
                210018842100189421002194210029A521001873290029AD290031DE290029E7
                290029843100298C3100398C310029D6310031D6310039AD390042A5420039DE
                420042DE42004AAD520052AD520052E752005AE75A0063AD630063E763006BEF
                63006B946B0073B56B006BDE6B0063E76B006BE76B0063EF6B007BB5730073B5
                7B007BDE7B007BB5840084BD84008CC69400A5E7A500CEEFBD00BDEFC600C6EF
                C600C6EFCE00CEEFCE00D6F7CE00D6E7D600DEE7D600D6EFD600DEEFD600CEE7
                DE00D6EFDE00DEEFDE00DEEFE700EFF7EF00F7F7F700FF00FF00FFFFFF00FFFF
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
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00777777777777
                772F4F777777777777777777777777777712394F777777777777777777777777
                770E3D354F7777777777777777777777770E0B082D4F77777777125C55523F25
                131F0A4457294F777777225840161413100A1E073957344F7777215817151413
                120E1E07054157344F77105D17161413120C1E0707054B57414F0F5E17161413
                12201E0705034C57464F0E5817161413100C0C071B3657414F77205940161413
                240D0A073757334F7777126256523F25120C0C4357294F777777777777777777
                770E0A082D4F7777777777777777777777213B384F7777777777777777777777
                770E3B4F77777777777777777777777777444F77777777777777}
              Layout = blGlyphTop
              Margin = 1
              Spacing = 0
              TabOrder = 1
              OnClick = BitBtn2Click
            end
          end
        end
        object cxDBSpinEdit1: TcxDBSpinEdit
          Left = 287
          Top = 3
          DataBinding.DataField = 'ConstID'
          DataBinding.DataSource = srcGetRptColumns
          TabOrder = 8
          Width = 121
        end
      end
      object grdItems: TDBGrid
        Left = 348
        Top = 224
        Width = 533
        Height = 84
        Align = alClient
        Color = clCream
        DataSource = srcGetRptColumns
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = grdItemsDrawColumnCell
        OnEditButtonClick = grdItemsEditButtonClick
        OnEnter = DBGrid1Enter
        Columns = <
          item
            Expanded = False
            FieldName = 'ColumnsID'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ColumnsName'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Kind'
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ColumnsCalc'
            Width = 77
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'ConstID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_ConstID'
            Width = 67
            Visible = True
          end>
      end
      object PnlGetRptColumns: TPanel
        Left = 1
        Top = 308
        Width = 880
        Height = 34
        Align = alBottom
        TabOrder = 2
        object okPanel2: TPanel
          Left = 481
          Top = 1
          Width = 158
          Height = 32
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            158
            32)
          object BitBtn12: TBitBtn
            Left = 3
            Top = 4
            Width = 75
            Height = 25
            Action = DataSetCancel2
            Anchors = [akTop, akRight]
            Caption = #1575#1606#1589#1585#1575#1601
            TabOrder = 1
          end
          object BitBtn13: TBitBtn
            Left = 80
            Top = 4
            Width = 75
            Height = 25
            Action = DataSetPost2
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1610#1610#1583
            TabOrder = 0
          end
        end
        object newPanel2: TPanel
          Left = 639
          Top = 1
          Width = 240
          Height = 32
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          Visible = False
          object BitBtn10: TBitBtn
            Left = 160
            Top = 3
            Width = 75
            Height = 25
            Action = DataSetInsert2
            Caption = #1580#1583#1610#1583
            TabOrder = 0
          end
          object BitBtn14: TBitBtn
            Left = 83
            Top = 3
            Width = 75
            Height = 25
            Action = DataSetEdit2
            Caption = #1608#1610#1585#1575#1610#1588
            TabOrder = 1
          end
          object btnDelete: TBitBtn
            Left = 5
            Top = 3
            Width = 75
            Height = 25
            Action = actDelete
            Caption = #1581#1584#1601
            TabOrder = 2
          end
        end
      end
      object DBGrid3: TDBGrid
        Left = 1
        Top = 224
        Width = 347
        Height = 84
        Align = alLeft
        Color = clCream
        DataSource = SrcWage
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnEnter = DBGrid1Enter
        Columns = <
          item
            Expanded = False
            FieldName = 'FormInfoID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InfoID'
            Width = 28
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InfoName_L1'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InfoName_L2'
            Width = 80
            Visible = True
          end>
      end
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 53
    Width = 886
    Height = 121
    Align = alTop
    TabOrder = 3
    object Label2: TLabel
      Left = 300
      Top = 7
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = #1603#1583' '#1711#1586#1575#1585#1588
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 300
      Top = 33
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = #1606#1575#1605' '#1711#1586#1575#1585#1588
      FocusControl = DBEdit2
    end
    object btnOtherRptFiles: TSpeedButton
      Left = 4
      Top = 54
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = btnOtherRptFilesClick
    end
    object Label110: TLabel
      Left = 300
      Top = 58
      Width = 22
      Height = 13
      Caption = #1670#1575#1662#1607#1575
      FocusControl = DBEdit62
    end
    object DBGrid1: TDBGrid
      Left = 356
      Top = 1
      Width = 529
      Height = 119
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clCream
      DataSource = srcGetReprots
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnEnter = DBGrid1Enter
      Columns = <
        item
          Expanded = False
          FieldName = 'GetReprotsID'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GetReprotsName'
          Width = 268
          Visible = True
        end>
    end
    object DBEdit1: TDBEdit
      Left = 220
      Top = 3
      Width = 78
      Height = 21
      DataField = 'GetReprotsID'
      DataSource = srcGetReprots
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 28
      Top = 29
      Width = 270
      Height = 21
      DataField = 'GetReprotsName'
      DataSource = srcGetReprots
      TabOrder = 2
    end
    object DBEdit62: TDBEdit
      Left = 28
      Top = 55
      Width = 270
      Height = 19
      Ctl3D = False
      DataField = 'OtherRptFiles'
      DataSource = srcGetReprots
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object dbchkActiveFunctionsItems: TDBCheckBox
      Left = 77
      Top = 80
      Width = 221
      Height = 17
      Alignment = taLeftJustify
      BiDiMode = bdLeftToRight
      Caption = #1587#1578#1608#1606' '#1607#1575#1610' '#1593#1606#1575#1608#1610#1606' '#1575#1601#1586#1575#1610#1606#1583#1607' '#1581#1602#1608#1602' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207#13#10#8207
      DataField = 'ActiveFunctionsItems'
      DataSource = srcGetReprots
      ParentBiDiMode = False
      TabOrder = 4
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object btnaddLink: TBitBtn
      Left = 7
      Top = 2
      Width = 162
      Height = 23
      Caption = #1575#1590#1575#1601#1607' '#1603#1585#1583#1606' '#1607#1605#1607' '#1587#1578#1608#1606' '#1605#1608#1580#1608#1583
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000230B0000230B00000001000000010000BF480000FF66
        0100FFB25F00FFAE6200FF00FF00000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000040404040404
        0404040404040404040404040404040404000004040404040404040404040404
        0003010004040404040404040404040003030101000404040404040404040101
        0101000000000404040404040404040404010004040404040404040404040404
        0401000404040404040404040404040404010004040404040404040404040404
        0401000404040404040404040404040404010004040404040404040404040404
        0401000404000404040404040404040404010004000100040404040404040404
        0401000404000404040404040404040404040404040404040404040404040404
        0404040404040404040404040404040404040404040404040404}
      Margin = 1
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
      TabOrder = 5
      WordWrap = True
      OnClick = btnaddLinkClick
    end
    object DBCheckBox1: TDBCheckBox
      Left = 95
      Top = 102
      Width = 203
      Height = 17
      Alignment = taLeftJustify
      BiDiMode = bdLeftToRight
      Caption = #1581#1584#1601' '#1587#1578#1608#1606' '#1607#1575#1610' '#1605#1586#1575#1610#1575#1610#1610' '#1603#1607' '#1589#1601#1585' '#1607#1587#1578#1606#1583
      DataField = 'DeleteColumnIfSumWageIsZero'
      DataSource = srcGetReprots
      ParentBiDiMode = False
      TabOrder = 6
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  inherited ActionList: TActionList
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcGetReprots
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcGetReprots
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcGetReprots
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcGetReprots
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcGetReprots
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
    end
    object DataSetInsert2: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      DataSource = srcGetRptColumns
    end
    object DataSetDelete2: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcGetRptColumns
    end
    object DataSetEdit2: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      DataSource = srcGetRptColumns
    end
    object DataSetPost2: TDataSetPost
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      DataSource = srcGetRptColumns
    end
    object DataSetCancel2: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      DataSource = srcGetRptColumns
    end
    object actSort2: TAction
      Caption = 'actSort2'
      OnExecute = actSort2Execute
    end
    object actCopy: TAction
      Caption = #1603#1662#1610' '#1711#1586#1575#1585#1588
      OnExecute = actCopyExecute
    end
    object actDelete: TAction
      Caption = #1581#1584#1601
      ShortCut = 46
      OnExecute = actDeleteExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 216
    Top = 1
  end
  object qryGetReprots: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterInsert = qryGetReprotsAfterInsert
    BeforePost = qryGetReprotsBeforePost
    AfterPost = qryGetReprotsAfterPost
    BeforeDelete = qryGetReprotsBeforeDelete
    AfterDelete = qryGetReprotsAfterDelete
    AfterScroll = qryGetReprotsAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM Pay.GetReprots'
      'order by GetReprotsID')
    Left = 644
    Top = 95
    object qryGetReprotsGetReprotsID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1711#1586#1575#1585#1588
      FieldName = 'GetReprotsID'
    end
    object qryGetReprotsGetReprotsName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1711#1586#1575#1585#1588
      FieldName = 'GetReprotsName'
      Size = 80
    end
    object qryGetReprotsOtherRptFiles: TStringField
      Tag = 3
      FieldName = 'OtherRptFiles'
      Size = 250
    end
    object qryGetReprotsOtherRptCaptions: TStringField
      Tag = 3
      FieldName = 'OtherRptCaptions'
      Size = 250
    end
    object qryGetReprotsActiveFunctionsItems: TWordField
      FieldName = 'ActiveFunctionsItems'
    end
    object qryGetReprotsDeleteColumnIfSumWageIsZero: TWordField
      FieldName = 'DeleteColumnIfSumWageIsZero'
    end
  end
  object srcGetReprots: TDataSource
    DataSet = qryGetReprots
    OnStateChange = srcGetReprotsStateChange
    Left = 552
    Top = 96
  end
  object qryGetRptColumns: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qryGetRptColumnsAfterInsert
    BeforeEdit = qryGetRptColumnsBeforeEdit
    BeforePost = qryGetRptColumnsBeforePost
    BeforeDelete = qryGetRptColumnsBeforeDelete
    AfterScroll = qryGetRptColumnsAfterScroll
    Parameters = <
      item
        Name = 'GetReprotsID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM Pay.GetRptColumns'
      'where GetReprotsID=:GetReprotsID'
      'order by ColumnsID')
    Left = 654
    Top = 311
    object qryGetRptColumnsColumnsID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1587#1578#1608#1606
      FieldName = 'ColumnsID'
      Required = True
    end
    object qryGetRptColumnsGetReprotsID: TIntegerField
      Tag = 3
      FieldName = 'GetReprotsID'
    end
    object qryGetRptColumnsColumnsName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1587#1578#1608#1606
      FieldName = 'ColumnsName'
      Required = True
      Size = 80
    end
    object qryGetRptColumnsKind: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593
      FieldName = 'Kind'
    end
    object qryGetRptColumnsColumnsSalaryID: TStringField
      Tag = 3
      FieldName = 'ColumnsSalaryID'
      Size = 300
    end
    object qryGetRptColumnsAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1579#1575#1576#1578
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryGetRptColumnsColumnsSalaryIDSub: TWideStringField
      FieldName = 'ColumnsSalaryIDSub'
      Size = 300
    end
    object qryGetRptColumnsColumnsRoundNo: TFloatField
      FieldName = 'ColumnsRoundNo'
    end
    object qryGetRptColumnsColumnsCalc: TWideStringField
      DisplayLabel = #1605#1581#1575#1587#1576#1575#1578' '#1587#1578#1608#1606
      FieldName = 'ColumnsCalc'
      Size = 2000
    end
    object qryGetRptColumnsConstID: TIntegerField
      DisplayLabel = #1603#1583' '#1587#1578#1608#1606' '#1579#1575#1576#1578
      FieldName = 'ConstID'
    end
    object qryGetRptColumns_ConstID: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1587#1578#1608#1606' '#1579#1575#1576#1578
      FieldKind = fkLookup
      FieldName = '_ConstID'
      LookupDataSet = qryGetRptConstColumns
      LookupKeyFields = 'ConstID'
      LookupResultField = 'ColumnsCaption'
      KeyFields = 'ConstID'
      Lookup = True
    end
  end
  object srcGetRptColumns: TDataSource
    DataSet = qryGetRptColumns
    OnStateChange = srcGetRptColumnsStateChange
    Left = 502
    Top = 319
  end
  object qryWage: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     FormsInfo.FormInfoID, FormsInfo.InfoID, FormsInfo.Inf' +
        'oName_L1, FormsInfo.InfoName_L2'
      'FROM Pay.FormsInfo INNER JOIN'
      
        '                      Pay.FormTypes ON FormsInfo.FormType = Form' +
        'Types.FormType'
      
        'WHERE     (FormTypes.SalaryKind IN (1, 2, 3, 4, 5, 6, 7, 8, 13))' +
        ' AND (FormsInfo.FormInfoID IN (1))')
    Left = 80
    Top = 437
    object qryWageFormInfoID: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'FormInfoID'
    end
    object qryWageInfoID: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldName = 'InfoID'
    end
    object qryWageInfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryWageInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
  end
  object SrcWage: TDataSource
    DataSet = qryWage
    Left = 296
    Top = 429
  end
  object srcWageDec: TDataSource
    DataSet = DmF.qryWageDec
    Left = 288
    Top = 339
  end
  object qryGetRptConstColumns: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        ConstID, ColumnsName, Alias, ColumnsCaption, Tabel' +
        'Name, IsOutPut, SortType, SortOrder, GroupBy'
      'FROM Pay.GetRptConstColumns')
    Left = 416
    Top = 109
  end
end
