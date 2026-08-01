inherited KartSaat_NewF: TKartSaat_NewF
  Left = 338
  Top = 180
  Caption = #1583#1585#1610#1575#1601#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1575#1585#1603#1585#1583' '#1575#1586' '#1603#1575#1585#1578' '#1587#1575#1593#1578' ... Excel'
  ClientHeight = 632
  ClientWidth = 785
  OnResize = FormResize
  ExplicitWidth = 801
  ExplicitHeight = 671
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 591
    Width = 785
    ExplicitTop = 591
    ExplicitWidth = 785
    DesignSize = (
      785
      41)
    object lblproc: TLabel [0]
      Left = 604
      Top = 13
      Width = 4
      Height = 13
      Anchors = [akTop, akRight]
      Caption = '|'
      ExplicitLeft = 612
    end
    inherited BtnReject: TBitBtn
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 699
      Top = 6
      Width = 75
      Height = 25
      Action = actTransfer
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1578#1602#1575#1604
      TabOrder = 0
    end
    object btnTransferOfExcel: TBitBtn
      Left = 616
      Top = 6
      Width = 77
      Height = 25
      Action = actTransferOfExcel
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1578#1602#1575#1604' '#1575#1586' Excel'
      TabOrder = 2
    end
  end
  inherited Panel2: TPanel
    Width = 785
    ExplicitWidth = 785
    DesignSize = (
      785
      53)
    inherited ImgTemplate: TImage
      Left = 743
      ExplicitLeft = 751
    end
    inherited lblCaption: TLabel
      Left = 677
      ExplicitLeft = 677
    end
    inherited lblBaseDate: TLabel
      Left = 341
      ExplicitLeft = 341
    end
    object chkEmploySalaryRange: TCheckBox
      Left = 4
      Top = 28
      Width = 229
      Height = 17
      Caption = #1575#1606#1578#1602#1575#1604' '#1576#1575' '#1578#1608#1580#1607' '#1576#1607' '#1593#1606#1575#1608#1610#1606' '#1581#1603#1605' '#1603#1575#1585' '#1711#1586#1610#1606#1610' '#1576#1575#1588#1583'.'
      TabOrder = 0
    end
    object chkDelPreviousFunctions: TCheckBox
      Left = 77
      Top = 6
      Width = 156
      Height = 17
      Caption = #1603#1575#1585#1603#1585#1583#1607#1575#1610' '#1602#1576#1604#1610' &'#1581#1584#1601' '#1588#1608#1606#1583'.'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object yrcmbx1: TYearComboBox
      Left = 276
      Top = 14
      Width = 112
      Height = 32
      Align = alCustom
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 2
      YearID = 0
      YearsParam = 0
      ADOConnection = DmF.adcsalary
    end
  end
  inherited Panel3: TPanel
    Top = 151
    Width = 785
    Height = 440
    ExplicitTop = 151
    ExplicitWidth = 785
    ExplicitHeight = 440
    object Splitter1: TSplitter
      Left = 2
      Top = 354
      Width = 781
      Height = 3
      Cursor = crVSplit
      Align = alBottom
      ExplicitLeft = 0
      ExplicitTop = 307
      ExplicitWidth = 53
    end
    object pnlText: TPanel
      Left = 2
      Top = 157
      Width = 781
      Height = 152
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 261
        Top = 4
        Width = 125
        Height = 13
        Caption = #1605#1587#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1575#1585#1578' '#1587#1575#1593#1578
      end
      object SpeedButton1: TSpeedButton
        Left = 373
        Top = 20
        Width = 23
        Height = 22
        Hint = #1575#1606#1578#1582#1575#1576' '#1605#1587#1610#1585' '#1575#1591#1604#1575#1593#1575#1578
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000420B0000420B0000000100000001000000730800087B
          080008841000088C100008A51800108C2100109C210018AD290031C64A0042D6
          6B0052D67B005AE78C0018A5C60018ADD60021ADD60029ADD60031B5DE0052BD
          E7004AC6E7004AC6EF009CDEEF00ADDEEF006BDEF70073DEF700A5EFF700FF00
          FF0084EFFF008CEFFF0094EFFF008CF7FF0094F7FF00A5F7FF0094FFFF009CFF
          FF00ADFFFF00C6FFFF00D6FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00191919191919
          19191919191919191919190F100E191919191919191919191919190F141A120E
          0C0C0C19191919191919190F11212017171717120E0C19191919190F11221D1B
          1B1B171717130E191919190F0F151E1E1B1B1B1B171713191919190F170F211D
          1D1D1B1B1B17170C1919190F1E0F1518181F1B1B1B17000C1919190F21170F0C
          0C0C151D1A000B000C19190F211E171717160F15000A09080019190F211E1E1E
          1E17170F0C0508060C19190F23202124241B1C17170207021919190E14232314
          0D0C0C0C0C03041919191919100F0C0C19191919030402191919191919191919
          1900010303011919191919191919191919191919191919191919}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object edtPath: TEdit
        Tag = 111
        Left = 8
        Top = 20
        Width = 362
        Height = 21
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 0
        OnKeyDown = edtPathKeyDown
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 45
        Width = 397
        Height = 87
        Align = alCustom
        Caption = '  '#1604#1610#1587#1578' '#1603#1575#1585#1603#1585#1583#1607#1575#1610' '#1662#1610#1583#1575' '#1588#1583#1607'  '
        TabOrder = 1
        object lstListFiles: TListBox
          Left = 2
          Top = 15
          Width = 393
          Height = 70
          Align = alClient
          BiDiMode = bdLeftToRight
          Color = 13431799
          ItemHeight = 13
          ParentBiDiMode = False
          TabOrder = 0
          OnClick = lstListFilesClick
        end
      end
      object GroupBox4: TGroupBox
        Left = 403
        Top = 1
        Width = 377
        Height = 131
        Align = alRight
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = '  '#1605#1585#1575#1581#1604' '#1575#1606#1578#1602#1575#1604' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1575#1585#1603#1585#1583' '#1575#1586' '#1603#1575#1585#1578' '#1587#1575#1593#1578' '#1576#1607' '#1606#1585#1605#8204#1575#1601#1586#1575#1585':   '#8207
        TabOrder = 2
        object Memo1: TMemo
          Left = 2
          Top = 15
          Width = 373
          Height = 114
          TabStop = False
          Align = alClient
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Lines.Strings = (
            '1. '#1575#1591#1604#1575#1593#1575#1578' '#1580#1583#1608#1604' '#1576#1575#1604#1575' '#1585#1575' '#1576#1575' '#1603#1605#1603' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1608' '#1587#1662#1587' '#1583#1587#1578#1610' '#1608#1575#1585#1583' '#1603#1606#1610#1583'.'
            '2. '#1605#1587#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1575#1585#1578' '#1587#1575#1593#1578' '#1585#1575' '#1605#1588#1582#1589' '#1603#1606#1610#1583'.'
            
              '   ('#1583#1585' '#1589#1608#1585#1578#1610' '#1603#1607' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1586' '#1601#1575#1610#1604' Excel '#1605#1610' '#1576#1575#1588#1583' '#1583#1585' '#1576#1575#1604#1575#1610' '#1601#1585#1605' '#1585#1608#1610'"' +
              #1583#1585#1610#1575#1601#1578' '#1575#1586' '
            'Excel "'#8207' Double Cliek '#1603#1606#1610#1583'. )'
            
              '3. '#1604#1610#1587#1578' '#1605#1608#1585#1583' '#1606#1592#1585' '#1585#1575' '#1575#1586' '#1602#1587#1605#1578' "'#1604#1610#1587#1578' '#1603#1575#1585#1603#1585#1583#1607#1575#1610' '#1662#1610#1583#1575' '#1588#1583#1607'" '#1575#1606#1578#1582#1575#1576' '#1603#1606#1610 +
              #1583'.'
            
              '4. '#1583#1585' '#1589#1608#1585#1578' '#1606#1610#1575#1586' '#1576#1607' '#1581#1584#1601' '#1603#1575#1585#1603#1585#1583#1607#1575#1610' '#1605#1585#1576#1608#1591' '#1576#1607' '#1605#1575#1607' '#1605#1608#1585#1583' '#1606#1592#1585' '#1603#1607' '#1602#1576#1604#1575#1611' ' +
              #1583#1585' '
            #1587#1610#1587#1578#1605' '#1579#1576#1578' '#1588#1583#1607' '#1711#1586#1610#1606#1607' '#1605#1585#1576#1608#1591#1607' '#1585#1575' '#1578#1610#1603' '#1603#1606#1610#1583'.'
            '5. '#1583#1603#1605#1607' '#1575#1606#1578#1602#1575#1604' '#1585#1575' '#1576#1586#1606#1610#1583'.')
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          WantTabs = True
        end
      end
      object mmo1: TMemo
        Left = 1
        Top = 132
        Width = 779
        Height = 19
        Align = alBottom
        BiDiMode = bdLeftToRight
        Lines.Strings = (
          'Memo2')
        ParentBiDiMode = False
        TabOrder = 3
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 781
      Height = 155
      Align = alTop
      TabOrder = 1
      object DBGrid2: TDBGrid
        Left = 436
        Top = 1
        Width = 344
        Height = 153
        Align = alClient
        Color = clCream
        DataSource = srcRecalClocks
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SalaryID'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InfoName_L1'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RecalClockName'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StartStr'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CountStr'
            Width = 27
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StartFloatStr'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CountFloatStr'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ExcelFieldName'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ExcelFieldName2'
            Width = 40
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 435
        Height = 153
        Align = alLeft
        TabOrder = 1
        DesignSize = (
          435
          153)
        object Label41: TLabel
          Left = 375
          Top = 39
          Width = 56
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1593#1606#1608#1575#1606' '#1603#1575#1585#1603#1585#1583
        end
        object Label7: TLabel
          Left = 375
          Top = 10
          Width = 41
          Height = 13
          Caption = #1603#1583' '#1603#1575#1585#1603#1585#1583
        end
        object lblExcelFieldName: TLabel
          Left = 151
          Top = 23
          Width = 71
          Height = 13
          Alignment = taRightJustify
          Caption = #1606#1575#1605' '#1587#1578#1608#1606' Excel'
        end
        object lblExcelFieldName2: TLabel
          Left = 151
          Top = 46
          Width = 77
          Height = 13
          Alignment = taRightJustify
          Caption = #1606#1575#1605' '#1587#1578#1608#1606'2 Excel'
        end
        object CmbRecalClockName: TDBComboBox
          Left = 269
          Top = 35
          Width = 100
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          DataField = 'RecalClockName'
          DataSource = srcRecalClocks
          ParentBiDiMode = False
          TabOrder = 0
        end
        object DBEdit5: TDBEdit
          Left = 269
          Top = 6
          Width = 100
          Height = 21
          DataField = 'SalaryID'
          DataSource = srcRecalClocks
          ReadOnly = True
          TabOrder = 1
        end
        object Panel6: TPanel
          Left = 1
          Top = 121
          Width = 433
          Height = 31
          Align = alBottom
          TabOrder = 2
          object newPanel: TPanel
            Left = 198
            Top = 1
            Width = 234
            Height = 29
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              234
              29)
            object BitBtn3: TBitBtn
              Left = 156
              Top = 2
              Width = 75
              Height = 25
              Action = DataSetInsert1
              Anchors = [akTop, akRight]
              Caption = #1580#1583#1610#1583
              TabOrder = 0
            end
            object BitBtn4: TBitBtn
              Left = 79
              Top = 2
              Width = 75
              Height = 25
              Action = DataSetEdit1
              Anchors = [akTop, akRight]
              Caption = #1608#1610#1585#1575#1610#1588
              TabOrder = 1
            end
            object BitBtn5: TBitBtn
              Left = 2
              Top = 2
              Width = 75
              Height = 25
              Action = DataSetDelete1_
              Anchors = [akTop, akRight]
              Caption = #1581#1584#1601
              TabOrder = 2
            end
          end
          object okPanel: TPanel
            Left = 39
            Top = 1
            Width = 159
            Height = 29
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              159
              29)
            object BitBtn8: TBitBtn
              Left = 82
              Top = 3
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
            object BitBtn18: TBitBtn
              Left = 6
              Top = 3
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
            Left = 4
            Top = 3
            Width = 116
            Height = 25
            Action = actRecal
            Cancel = True
            Caption = #1601#1585#1575#1582#1608#1575#1606#8207#1593#1606#1575#1608#1610#1606#8207#1603#1575#1585#1603#1585#1583
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF006BAD840021842900218429006BAD
              8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
              2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
              2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
              2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
              2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006BAD
              8400218429002184290021842900218429002184290094DE8C0039B552002184
              2900218429002184290021842900218429006BAD8400FF00FF00FF00FF0063A5
              630039B5520039B5520039B5520039B5520039B5520039B5520039B5520039B5
              520039B5520039B5520039B5520039B5520021842900FF00FF00FF00FF0063A5
              630094DE8C0094DE8C0094DE8C0094DE8C0094DE8C0094DE8C0039B5520094DE
              8C0094DE8C0094DE8C0094DE8C0094DE8C0021842900FF00FF00FF00FF006BAD
              840063A5630063A5630063A5630063A5630063A5630094DE8C0039B552002184
              2900218429002184290021842900218429006BAD8400FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
              2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
              2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
              2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0063A5630094DE8C0039B552002184
              2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF006BAD840063A5630063A563006BAD
              8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            ModalResult = 1
            TabOrder = 2
          end
          object btnOtherMenu: TBitBtn
            Left = 123
            Top = 3
            Width = 25
            Height = 25
            Hint = #1587#1575#1610#1585' '#1575#1605#1603#1575#1606#1575#1578
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000BEBEBEBEBEBE
              BEBEBEBABDBDBDBDBDBCBDBDC9C1C12E8D900065660466650072729EB4B4CCC3
              C3B9BCBCBEBEBEBEBEBEBEBEBEBEBEBEBBBDBDC6C1C1C0BEBEBABCBCC9C2C32E
              8770005948024646015758217C7CA4B5B5C7C1C1BBBDBDBEBEBEBEBEBEBCBDBD
              D0C4C44D97979AB2B2C7C1C0C5C1C4308661169145094F27002E2C005152207C
              7CA5B6B6C9C2C2BCBDBDBABCBCC6C0C0569C9C0074731D8080A4B6B5D2C6C729
              847427B25C47C9660F532B012F2C0057582081809DB3B3C6C0C0B9BCBCCAC2C2
              258481004E4D0055541F7A7AB1BABA368B8C199F525EF38643C8690A4624023A
              390067678BAEADCAC1C1BABDBAC7C0C63B9253004A1E033232004949227E7E0E
              6E5E2AAD5858ED8562FE96208538003123015E628FB0AFC9C1C1BABDBBC7C1C6
              409D4D169D390A5723012D26004045086D3341CF6B57F08A5DF69338BE560841
              2900575D8FB1AFC9C1C1BABDBAC8C1C73F9D5023BD5029B35107541C024B152C
              AD4F4AE37B50E88257EF8B3BC65A0B492F00585E8FB0AFC9C1C1BABDBAC8C1C7
              3D9A4B1EB64636D06824AA4924A8453CD26C45DF7A49E17C52EB8634BA520954
              3C01616690B0AEC9C1C1BABDBAC8C1C73C994818B03C2FC65D31C96235CD6839
              D16C40D77244DB764CE6811C8934025B4B006F738BAEADCAC1C1BABDBAC8C1C7
              3A974413AB3129C0502CC35931C96334CC6738D16B41DB7631BE5309673E0069
              686AA2A2B9BCBCBFBEBEBABDBAC8C1C837953F0DA62723BB4426BD4B2BC45730
              C86134CC6731C45B0E602901443F0068699EB3B3CEC3C3BABCBCB9BDBAC8C2C8
              35923A08A11B1CB4371FB73E25BD4A2BC35531C86130C65F0E6627002C250148
              4A217776A4B5B5C9C2C2B9BDBAC8C2C8329037029B1017AE2B19B0331FB63F25
              BC4A2BC25530C8612BB9570C6327002F2900474A227B7A9DB3B3B9BCB9C9C2C8
              308F2F00980211AB1C14AE261AB53220BA3F27C04A2DC75634D0642FC05A0F73
              3303514800656785ABABB9BCBAC9C2C52F8757007629057E33047E35057F3807
              803B09823E0A84410B84440E8A4907793B006D5F6B9DA0BABDBC}
            Layout = blGlyphRight
            Style = bsWin31
            TabOrder = 3
            OnClick = btnOtherMenuClick
          end
        end
        object cmbExcelFieldName: TDBComboBox
          Left = 2
          Top = 19
          Width = 145
          Height = 21
          DataField = 'ExcelFieldName'
          DataSource = srcRecalClocks
          TabOrder = 3
        end
        object pnlTxt: TPanel
          Left = 1
          Top = 62
          Width = 433
          Height = 59
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 4
          object Label3: TLabel
            Left = 374
            Top = 8
            Width = 28
            Height = 13
            Caption = #1588#1585#1608#1593
          end
          object Label4: TLabel
            Left = 374
            Top = 38
            Width = 23
            Height = 13
            Caption = #1578#1593#1583#1575#1583
          end
          object Label5: TLabel
            Left = 103
            Top = 38
            Width = 55
            Height = 13
            Caption = #1578#1593#1583#1575#1583' '#1575#1593#1588#1575#1585
          end
          object Label6: TLabel
            Left = 103
            Top = 8
            Width = 60
            Height = 13
            Caption = #1588#1585#1608#1593' '#1575#1593#1588#1575#1585
          end
          object DBEdit1: TDBEdit
            Left = 268
            Top = 4
            Width = 100
            Height = 21
            DataField = 'StartStr'
            DataSource = srcRecalClocks
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 268
            Top = 34
            Width = 100
            Height = 21
            DataField = 'CountStr'
            DataSource = srcRecalClocks
            TabOrder = 1
          end
          object DBEdit4: TDBEdit
            Left = 2
            Top = 34
            Width = 100
            Height = 21
            DataField = 'CountFloatStr'
            DataSource = srcRecalClocks
            TabOrder = 2
          end
          object DBEdit3: TDBEdit
            Left = 2
            Top = 4
            Width = 100
            Height = 21
            DataField = 'StartFloatStr'
            DataSource = srcRecalClocks
            TabOrder = 3
          end
        end
        object cmbExcelFieldName2: TDBComboBox
          Left = 2
          Top = 42
          Width = 145
          Height = 21
          DataField = 'ExcelFieldName2'
          DataSource = srcRecalClocks
          TabOrder = 5
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 2
      Top = 309
      Width = 781
      Height = 45
      Align = alClient
      Caption = '    '#1603#1575#1585#1603#1585#1583#1607#1575#1610' '#1579#1576#1578' '#1588#1583#1607'    '
      TabOrder = 2
      object GroupBox2: TGroupBox
        Left = 2
        Top = 15
        Width = 397
        Height = 28
        Align = alLeft
        Caption = '  '#1604#1610#1587#1578' '#1582#1591#1575'  '
        TabOrder = 0
        object memWarning: TMemo
          Tag = 111
          Left = 2
          Top = 15
          Width = 393
          Height = 58
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object DBGrid3: TDBGrid
        Left = 399
        Top = 15
        Width = 282
        Height = 28
        Align = alLeft
        Color = clCream
        DataSource = srcqryFunctionItems
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SalaryID'
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FDaily'
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FHours'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InfoName_L1'
            Width = 163
            Visible = True
          end>
      end
      object DBGrid1: TDBGrid
        Left = 681
        Top = 15
        Width = 98
        Height = 28
        Align = alClient
        Color = clCream
        DataSource = srcFunctions
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PersonelNo'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TimeCardNumber'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ProjectID'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JobCode'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FunctionDay'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FunctionTime'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SickDay'
            Width = 76
            Visible = True
          end>
      end
    end
    object grdExcel: TCedarDbgrid
      Left = 2
      Top = 357
      Width = 781
      Height = 81
      Align = alBottom
      Color = clCream
      DataSource = srcExcel
      DynProps = <>
      Flat = True
      FooterParams.FillStyle = cfstSolidEh
      FooterParams.Font.Charset = DEFAULT_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -12
      FooterParams.Font.Name = 'Tahoma'
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      FooterParams.VertLines = False
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbRefreshEh]
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clWhite
      ReadOnly = True
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 3
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object ToolBar1: TToolBar [3]
    Left = 0
    Top = 53
    Width = 785
    Height = 36
    BorderWidth = 2
    ButtonHeight = 21
    ButtonWidth = 54
    Caption = 'ToolBar1'
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    EdgeInner = esLowered
    ShowCaptions = True
    TabOrder = 3
    object ToolButton1: TToolButton
      Tag = 1
      Left = 0
      Top = 0
      Caption = #1601#1585#1608#1585#1583#1610#1606
      Grouped = True
      ImageIndex = 0
      Style = tbsCheck
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Tag = 2
      Left = 54
      Top = 0
      Caption = #1575#1585#1583#1610#1576#1607#1588#1578
      Grouped = True
      ImageIndex = 1
      Style = tbsCheck
      OnClick = ToolButton1Click
    end
    object ToolButton3: TToolButton
      Tag = 3
      Left = 108
      Top = 0
      Caption = #1582#1585#1583#1575#1583
      Grouped = True
      ImageIndex = 2
      Style = tbsCheck
      OnClick = ToolButton1Click
    end
    object ToolButton4: TToolButton
      Tag = 4
      Left = 162
      Top = 0
      Caption = #1578#1610#1585
      Grouped = True
      ImageIndex = 3
      Style = tbsCheck
      OnClick = ToolButton1Click
    end
    object ToolButton5: TToolButton
      Tag = 5
      Left = 216
      Top = 0
      Caption = #1605#1585#1583#1575#1583
      Grouped = True
      ImageIndex = 4
      Style = tbsCheck
      OnClick = ToolButton1Click
    end
    object ToolButton6: TToolButton
      Tag = 6
      Left = 270
      Top = 0
      Caption = #1588#1607#1585#1610#1608#1585
      Grouped = True
      ImageIndex = 5
      Style = tbsCheck
      OnClick = ToolButton1Click
    end
    object ToolButton7: TToolButton
      Tag = 7
      Left = 324
      Top = 0
      Caption = #1605#1607#1585
      Grouped = True
      ImageIndex = 6
      Style = tbsCheck
      OnClick = ToolButton1Click
    end
    object ToolButton8: TToolButton
      Tag = 8
      Left = 378
      Top = 0
      Caption = #1570#1576#1575#1606
      Grouped = True
      ImageIndex = 7
      Style = tbsCheck
      OnClick = ToolButton1Click
    end
    object ToolButton9: TToolButton
      Tag = 9
      Left = 432
      Top = 0
      Caption = #1570#1584#1585
      Grouped = True
      ImageIndex = 8
      Style = tbsCheck
      OnClick = ToolButton1Click
    end
    object ToolButton10: TToolButton
      Tag = 10
      Left = 486
      Top = 0
      Caption = #1583#1610
      Grouped = True
      ImageIndex = 9
      Style = tbsCheck
      OnClick = ToolButton1Click
    end
    object ToolButton11: TToolButton
      Tag = 11
      Left = 540
      Top = 0
      Caption = #1576#1607#1605#1606
      Grouped = True
      ImageIndex = 10
      Style = tbsCheck
      OnClick = ToolButton1Click
    end
    object ToolButton12: TToolButton
      Tag = 12
      Left = 594
      Top = 0
      Caption = #1575#1587#1601#1606#1583
      Grouped = True
      ImageIndex = 11
      Style = tbsCheck
      OnClick = ToolButton1Click
    end
  end
  object GroupBox5: TGroupBox [4]
    Left = 0
    Top = 89
    Width = 785
    Height = 62
    Align = alTop
    Caption = '   '#1583#1585#1610#1575#1601#1578' '#1575#1586' '#1601#1575#1610#1604' Excel   '
    TabOrder = 4
    OnDblClick = GroupBox5DblClick
    DesignSize = (
      785
      62)
    object Label2: TLabel
      Left = 2
      Top = 15
      Width = 781
      Height = 14
      Align = alTop
      Caption = 
        #1578#1608#1580#1607' : '#1587#1591#1585' '#1575#1608#1604' '#1601#1575#1610#1604' Excel '#1580#1607#1578' '#1593#1606#1575#1608#1610#1606' '#1587#1578#1608#1606#1607#1575' '#1575#1587#1578#1601#1575#1583#1607' '#1605#1610#1588#1608#1583' '#1608' '#1583#1585' '#1601 +
        #1585#1575#1582#1608#1575#1606#1610' '#1575#1586' '#1601#1575#1610#1604' '#1548' '#1575#1591#1604#1575#1593#1575#1578' '#1570#1606' '#1575#1606#1578#1602#1575#1604' '#1583#1575#1583#1607' '#1606#1605#1610' '#1588#1608#1583' .'#8207
      Font.Charset = ARABIC_CHARSET
      Font.Color = 4210816
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitLeft = 165
      ExplicitWidth = 618
    end
    object Label8: TLabel
      Left = 216
      Top = 40
      Width = 43
      Height = 13
      Caption = #1606#1575#1605' sheet'
    end
    object BitBtn6: TBitBtn
      Left = 647
      Top = 34
      Width = 123
      Height = 25
      Action = actOpenExcel
      Anchors = [akTop, akRight]
      Caption = #1576#1575#1586' '#1705#1585#1583#1606' '#1601#1575#1610#1604' Excel '
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000420B0000420B0000000100000001000000730800087B
        080008841000088C100008A51800108C2100109C210018AD290031C64A0042D6
        6B0052D67B005AE78C0018A5C60018ADD60021ADD60029ADD60031B5DE0052BD
        E7004AC6E7004AC6EF009CDEEF00ADDEEF006BDEF70073DEF700A5EFF700FF00
        FF0084EFFF008CEFFF0094EFFF008CF7FF0094F7FF00A5F7FF0094FFFF009CFF
        FF00ADFFFF00C6FFFF00D6FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00191919191919
        19191919191919191919190F100E191919191919191919191919190F141A120E
        0C0C0C19191919191919190F11212017171717120E0C19191919190F11221D1B
        1B1B171717130E191919190F0F151E1E1B1B1B1B171713191919190F170F211D
        1D1D1B1B1B17170C1919190F1E0F1518181F1B1B1B17000C1919190F21170F0C
        0C0C151D1A000B000C19190F211E171717160F15000A09080019190F211E1E1E
        1E17170F0C0508060C19190F23202124241B1C17170207021919190E14232314
        0D0C0C0C0C03041919191919100F0C0C19191919030402191919191919191919
        1900010303011919191919191919191919191919191919191919}
      TabOrder = 0
    end
    object cmbSheetName: TComboBox
      Left = 3
      Top = 36
      Width = 207
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      OnChange = cmbSheetNameChange
    end
  end
  inherited ActionList: TActionList
    Left = 424
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcRecalClocks
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcRecalClocks
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcRecalClocks
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcRecalClocks
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcRecalClocks
    end
    object actTransfer: TAction
      Caption = #1575#1606#1578#1602#1575#1604
      Hint = ' '
      ShortCut = 117
      OnExecute = actTransferExecute
    end
    object actRecal: TAction
      Caption = #1601#1585#1575#1582#1608#1575#1606#8207#1593#1606#1575#1608#1610#1606#8207#1603#1575#1585#1603#1585#1583
      ImageIndex = 4
      OnExecute = actRecalExecute
    end
    object actUpdate: TAction
      Caption = #1576#1585#1608#1586#1585#1587#1575#1606#1610
      OnExecute = actUpdateExecute
    end
    object actSend: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      OnExecute = actSendExecute
    end
    object actGet: TAction
      Caption = #1582#1608#1575#1606#1583#1606'Excel'
      OnExecute = actGetExecute
    end
    object actOpenExcel: TAction
      Caption = #1576#1575#1586' '#1705#1585#1583#1606' '#1601#1575#1610#1604' Excel '
      OnExecute = actOpenExcelExecute
    end
    object actTransferOfExcel: TAction
      Caption = #1575#1606#1578#1602#1575#1604' '#1575#1586' Excel'
      OnExecute = actTransferOfExcelExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 518
    Top = 3
  end
  object qryPersonels: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM Pay.PersonelInfo')
    Left = 648
    Top = 184
  end
  object qryFunctions: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    BeforePost = qryFunctionsBeforePost
    AfterScroll = qryFunctionsAfterScroll
    Parameters = <
      item
        Name = 'Mounth'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'YearID'
        Size = -1
        Value = Null
      end
      item
        Name = 'Years'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        FunctionID, FormInfoID, Mounth, PersonelNo, Functi' +
        'onDay, FunctionTime, ProjectID, JobCode, OfficeCode, ProjectRow,' +
        ' '
      
        '                         ProcCode, CTopic3, SickDay, YearID, Yea' +
        'rs, Situation,(select top(1) TimeCardNumber FROM Pay.PersonelInf' +
        'o where  Functions.PersonelNo = PersonelInfo.PersonelNo)TimeCard' +
        'Number'
      'FROM Pay.Functions '
      'WHERE        (Functions.Mounth = :Mounth)'
      'AND (YearID = :YearID ) '
      'AND (Years = :Years )')
    Left = 517
    Top = 94
    object qryFunctionsFunctionID: TIntegerField
      FieldName = 'FunctionID'
    end
    object qryFunctionsFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryFunctionsMounth: TWordField
      FieldName = 'Mounth'
    end
    object qryFunctionsPersonelNo: TIntegerField
      DisplayLabel = #1588'.'#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
    end
    object qryFunctionsProjectID: TIntegerField
      DisplayLabel = #1603#1583#1662#1585#1608#1688#1607
      FieldName = 'ProjectID'
    end
    object qryFunctionsJobCode: TIntegerField
      DisplayLabel = #1603#1583#1588#1594#1604
      FieldName = 'JobCode'
    end
    object qryFunctionsFunctionTime: TFloatField
      DisplayLabel = #1587#1575#1593#1575#1578' '#1603#1575#1585#1603#1585#1583
      FieldName = 'FunctionTime'
    end
    object qryFunctionsOfficeCode: TIntegerField
      DisplayLabel = #1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
      FieldName = 'OfficeCode'
    end
    object qryFunctionsProjectRow: TIntegerField
      FieldName = 'ProjectRow'
    end
    object qryFunctionsProcCode: TIntegerField
      FieldName = 'ProcCode'
    end
    object qryFunctionsCTopic3: TIntegerField
      FieldName = 'CTopic3'
    end
    object qryFunctionsSickDay: TIntegerField
      DisplayLabel = #1585#1608#1586#1607#1575#1610' '#1576#1610#1605#1575#1585#1610
      FieldName = 'SickDay'
    end
    object qryFunctionsFunctionDay: TFloatField
      DisplayLabel = #1585#1608#1586#1607#1575#1610' '#1603#1575#1585#1603#1585#1583
      FieldName = 'FunctionDay'
    end
    object qryFunctionsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryFunctionsYears: TIntegerField
      FieldName = 'Years'
    end
    object qryFunctionsTimeCardNumber: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1603#1575#1585#1578' '#1587#1575#1593#1578
      FieldName = 'TimeCardNumber'
      Size = 15
    end
  end
  object srcFunctions: TDataSource
    DataSet = qryFunctions
    Left = 656
    Top = 397
  end
  object qryFunctionItems: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FunID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 2
      end>
    SQL.Strings = (
      
        'SELECT        FunctionsItemsID, FunctionID, SalaryID, FDaily, FH' +
        'ours, Amount, AccTopicCode, AccDetailCode, AccCTopicCode, AccCTo' +
        'picCode2,'
      '                             (SELECT        InfoName_L1'
      '                                FROM Pay.FormsInfo'
      
        '                                WHERE        (FormInfoID = Funct' +
        'ionsItems.SalaryID)) AS InfoName_L1'
      'FROM Pay.FunctionsItems'
      'WHERE        (FunctionID = :FunID)')
    Left = 330
    Top = 111
    object qryFunctionItemsFunctionsItemsID: TIntegerField
      FieldName = 'FunctionsItemsID'
    end
    object qryFunctionItemsFunctionID: TIntegerField
      FieldName = 'FunctionID'
    end
    object qryFunctionItemsSalaryID: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'SalaryID'
    end
    object qryFunctionItemsFDaily: TFloatField
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldName = 'FDaily'
    end
    object qryFunctionItemsFHours: TFloatField
      DisplayLabel = #1587#1575#1593#1578
      FieldName = 'FHours'
    end
    object qryFunctionItemsInfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'InfoName_L1'
      ReadOnly = True
      Size = 255
    end
  end
  object qryRecalClocks: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterInsert = qryRecalClocksAfterInsert
    BeforePost = qryRecalClocksBeforePost
    AfterPost = qryRecalClocksAfterPost
    AfterScroll = qryRecalClocksAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'SELECT    RecalClocks.* ,(SELECT InfoName_L1 FROM Pay.FormsInfo ' +
        'WHERE FormInfoID=RecalClocks.SalaryID )as InfoName_L1'
      'FROM Pay.RecalClocks'
      'WHERE        (Kind = 0)'
      'order by SalaryID')
    Left = 608
    Top = 248
    object qryRecalClocksID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qryRecalClocksSalaryID: TIntegerField
      DisplayLabel = #1603#1583' '#1603#1575#1585#1603#1585#1583
      FieldName = 'SalaryID'
    end
    object qryRecalClocksRecalClockName: TWordField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1603#1575#1585#1603#1585#1583
      FieldName = 'RecalClockName'
      OnChange = qryRecalClocksRecalClockNameChange
      OnGetText = qryFormTypesAllGetText
      OnSetText = qryFormTypesAllSetText
    end
    object qryRecalClocksStartStr: TWordField
      DisplayLabel = #1588#1585#1608#1593
      FieldName = 'StartStr'
      OnChange = qryRecalClocksStartStrChange
    end
    object qryRecalClocksCountStr: TWordField
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldName = 'CountStr'
      OnChange = qryRecalClocksStartStrChange
    end
    object qryRecalClocksStartFloatStr: TWordField
      DisplayLabel = #1588#1585#1608#1593' '#1575#1593#1588#1575#1585
      FieldName = 'StartFloatStr'
    end
    object qryRecalClocksCountFloatStr: TWordField
      DisplayLabel = #1578#1593#1583#1575#1583' '#1575#1593#1588#1575#1585
      FieldName = 'CountFloatStr'
    end
    object qryRecalClocksInfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '
      FieldName = 'InfoName_L1'
      Size = 500
    end
    object qryRecalClocksExcelFieldName: TStringField
      DisplayLabel = #1606#1575#1605' '#1587#1578#1608#1606' Excel'
      FieldName = 'ExcelFieldName'
      Size = 150
    end
    object qryRecalClocksExcelFieldName2: TStringField
      FieldName = 'ExcelFieldName2'
      Size = 150
    end
  end
  object srcRecalClocks: TDataSource
    DataSet = qryRecalClocks
    OnStateChange = srcRecalClocksStateChange
    Left = 496
    Top = 253
  end
  object qry4LocateRecalClocks: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT    * '
      'FROM Pay.RecalClocks'
      'WHERE        (Kind = 0)')
    Left = 280
    Top = 384
  end
  object srcqryFunctionItems: TDataSource
    DataSet = qryFunctionItems
    Left = 56
    Top = 397
  end
  object PopOtherMenu: TPopupMenu
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 152
    Top = 313
    object Excel1: TMenuItem
      Action = actSend
    end
    object Excel2: TMenuItem
      Action = actGet
    end
  end
  object qryEmploySalaryRange: TADOQuery
    Connection = DmF.adcsalary
    Parameters = <
      item
        Name = 'PersonelNo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     Interdicts.EmployTypeID, SalaryRange.SalaryID'
      'FROM Pay.Interdicts INNER JOIN'
      
        '                      Pay.SalaryRange ON Pay.Interdicts.EmployTy' +
        'peID = SalaryRange.FormInfoID'
      
        'WHERE     (Interdicts.State < 11) AND (Interdicts.InterdicType =' +
        ' 0) '
      
        'AND (Interdicts.PersonelNo = :PersonelNo ) AND (SalaryRange.Kind' +
        ' = 0)')
    Left = 481
    Top = 197
  end
  object qryExcel: TADOQuery
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select * from [a$]')
    Left = 128
    Top = 113
  end
  object qryFormsInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     FormInfoID, InfoID'
      'FROM Pay.FormsInfo')
    Left = 490
    Top = 463
    object qryFormsInfoFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryFormsInfoInfoID: TIntegerField
      FieldName = 'InfoID'
    end
  end
  object srcExcel: TDataSource
    DataSet = qryExcel
    Left = 411
    Top = 419
  end
end
