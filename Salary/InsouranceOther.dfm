inherited InsouranceOtherF: TInsouranceOtherF
  Left = 438
  Top = 208
  Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1576#1610#1605#1607' '#1578#1603#1605#1610#1604#1610' '#1608' '#1582#1583#1605#1575#1578' '#1583#1585#1605#1575#1606#1610' '
  ClientHeight = 541
  ClientWidth = 769
  OnResize = FormResize
  ExplicitWidth = 785
  ExplicitHeight = 580
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 500
    Width = 769
    ExplicitTop = 500
    ExplicitWidth = 769
    inherited BtnReject: TBitBtn
      ExplicitLeft = 6
    end
    object newPanel: TPanel
      Left = 521
      Top = 1
      Width = 247
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        247
        39)
      object BitBtn3: TBitBtn
        Left = 162
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 85
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object okPanel: TPanel
      Left = 356
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
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
    object BitBtn1: TBitBtn
      Left = 318
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Cancel = True
      Caption = #1670#1575#1662'(F7)'#8207
      ModalResult = 1
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      Left = 84
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      Left = 162
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 5
    end
    object BitBtn9: TBitBtn
      Left = 240
      Top = 8
      Width = 75
      Height = 25
      Action = actSend2Excel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Width = 769
    Height = 66
    ExplicitWidth = 773
    ExplicitHeight = 66
    inherited ImgTemplate: TImage
      Left = 735
      ExplicitLeft = 735
    end
    inherited lblCaption: TLabel
      Left = 671
      Height = 16
      ExplicitLeft = 671
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 280
      Height = 64
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 119
        Top = 5
        Width = 108
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1587#1591#1581' '#1602#1576#1604#1610' '
        FocusControl = edtCaption
      end
      object SpeedButton1: TSpeedButton
        Left = 8
        Top = 0
        Width = 23
        Height = 22
        Caption = '...'
      end
      object DBEdit1: TDBEdit
        Left = 32
        Top = 2
        Width = 81
        Height = 19
        Ctl3D = False
        DataField = 'InfoID'
        DataSource = srcMaster
        ParentCtl3D = False
        TabOrder = 0
      end
      object edtCaption: TDBEdit
        Tag = 10
        Left = 8
        Top = 24
        Width = 218
        Height = 19
        Color = 14408667
        Ctl3D = False
        DataField = 'InfoName_L1'
        DataSource = srcMaster
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object DBNavigator1: TDBNavigator
        Left = 8
        Top = 44
        Width = 216
        Height = 18
        DataSource = srcMaster
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        TabOrder = 2
      end
    end
  end
  inherited Panel3: TPanel
    Top = 102
    Width = 769
    Height = 379
    ExplicitTop = 102
    ExplicitWidth = 769
    ExplicitHeight = 379
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 434
      Height = 375
      Align = alClient
      BevelInner = bvLowered
      BevelWidth = 2
      BorderWidth = 3
      BorderStyle = bsSingle
      TabOrder = 0
      object DBGrid2: TDBGrid
        Tag = 111
        Left = 7
        Top = 275
        Width = 416
        Height = 89
        Align = alClient
        Color = clCream
        DataSource = srcDecExtItems
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnEditButtonClick = DBGrid2EditButtonClick
        OnEnter = DBGrid2Enter
        OnKeyDown = DBGrid2KeyDown
        Columns = <
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'SalaryID'
            ReadOnly = True
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_Object_l1'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_Object2_L2'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DayQuntity'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Width = 88
            Visible = True
          end>
      end
      object PnlProject: TPanel
        Left = 7
        Top = 72
        Width = 416
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        TabStop = True
        DesignSize = (
          416
          25)
        object Label7: TLabel
          Left = 349
          Top = 5
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1603#1583' '#1662#1585#1608#1688#1607
          ExplicitLeft = 345
        end
        object btnFormInfoID2: TSpeedButton
          Left = 244
          Top = 0
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = btnFormInfoID2Click
          ExplicitLeft = 240
        end
        object DBEdit17: TDBEdit
          Left = 268
          Top = 1
          Width = 74
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'FormInfoID2'
          DataSource = srcdecExt
          ReadOnly = True
          TabOrder = 0
          ExplicitLeft = 264
        end
        object DBEdit18: TDBEdit
          Left = 11
          Top = 2
          Width = 229
          Height = 19
          TabStop = False
          Anchors = [akTop, akRight]
          Ctl3D = False
          DataField = '_projectname_L1'
          DataSource = srcdecExt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          ExplicitLeft = 7
        end
      end
      object Panel5: TPanel
        Left = 7
        Top = 7
        Width = 416
        Height = 65
        Align = alTop
        TabOrder = 0
        DesignSize = (
          416
          65)
        object Label2: TLabel
          Left = 345
          Top = 7
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1603#1583' '#1662#1585#1587#1606#1604
          ExplicitLeft = 341
        end
        object lblEmployeeName_L1: TLabel
          Left = 342
          Top = 28
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605' '#1662#1585#1587#1606#1604
          ExplicitLeft = 338
        end
        object lblEmployeeName_L2: TLabel
          Left = 342
          Top = 48
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605' '#1662#1585#1587#1606#1604
          ExplicitLeft = 338
        end
        object SpeedButton2: TSpeedButton
          Left = 228
          Top = 2
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = SpeedButton2Click
          ExplicitLeft = 224
        end
        object Label12: TLabel
          Left = 153
          Top = 7
          Width = 68
          Height = 13
          Caption = #1608#1590#1593#1610#1578' '#1662#1585#1587#1606#1604
        end
        object DBEdit3: TDBEdit
          Left = 252
          Top = 4
          Width = 85
          Height = 19
          Anchors = [akTop, akRight]
          Color = 14540253
          Ctl3D = False
          DataField = 'PersonelNo'
          DataSource = srcdecExt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnExit = DBEdit3Exit
          OnKeyDown = DBEdit3KeyDown
          ExplicitLeft = 248
        end
        object DBEdit4: TDBEdit
          Left = 90
          Top = 25
          Width = 248
          Height = 19
          TabStop = False
          Anchors = [akTop, akRight]
          Color = clCream
          Ctl3D = False
          DataField = '_PersonName_l1'
          DataSource = srcdecExt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          ExplicitLeft = 86
        end
        object DBEdit9: TDBEdit
          Left = 90
          Top = 43
          Width = 248
          Height = 19
          TabStop = False
          Anchors = [akTop, akRight]
          Color = clCream
          Ctl3D = False
          DataField = '_PersonName_l2'
          DataSource = srcdecExt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          ExplicitLeft = 86
        end
        object DBEdtState: TDBEdit
          Left = 5
          Top = 4
          Width = 147
          Height = 19
          TabStop = False
          Color = 14540253
          Ctl3D = False
          DataField = '_StateName_L1'
          DataSource = srcdecExt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
      end
      object Panel6: TPanel
        Left = 7
        Top = 97
        Width = 416
        Height = 53
        Align = alTop
        TabOrder = 2
        ExplicitWidth = 412
        object Label6: TLabel
          Left = 338
          Top = 9
          Width = 53
          Height = 13
          Alignment = taRightJustify
          Caption = #1588#1605#1575#1585#1607' '#1576#1610#1605#1607
          FocusControl = DBEdit8
        end
        object lblAidDate1: TLabel
          Left = 338
          Top = 29
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1575#1585#1610#1582' '#1608#1585#1608#1583
          FocusControl = DBEdit8
        end
        object DBEdit7: TDBEdit
          Left = 234
          Top = 4
          Width = 100
          Height = 21
          DataField = 'AidNo1'
          DataSource = srcdecExt
          TabOrder = 0
        end
        object DBEdit8: TDBEdit
          Left = 234
          Top = 27
          Width = 100
          Height = 21
          DataField = 'AidDate1'
          DataSource = srcdecExt
          TabOrder = 1
        end
      end
      object Panel7: TPanel
        Left = 7
        Top = 150
        Width = 416
        Height = 72
        Align = alTop
        TabOrder = 3
        ExplicitWidth = 412
        object Label4: TLabel
          Left = 92
          Top = 20
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = #1605#1583#1578
          FocusControl = DBEdit6
          Visible = False
        end
        object DBEdit6: TDBEdit
          Left = 48
          Top = 16
          Width = 41
          Height = 21
          TabStop = False
          DataField = 'DayQuntity'
          DataSource = srcdecExt
          TabOrder = 0
          Visible = False
        end
        object GrpBoxLimit: TGroupBox
          Left = 197
          Top = 1
          Width = 214
          Height = 70
          Align = alRight
          Caption = #1605#1581#1583#1608#1583#1607' '#1602#1575#1576#1604' '#1575#1580#1585#1575
          TabOrder = 1
          object Label10: TLabel
            Left = 154
            Top = 22
            Width = 24
            Height = 13
            Caption = #1575#1586' '#1605#1575#1607
          end
          object Label11: TLabel
            Left = 154
            Top = 44
            Width = 23
            Height = 13
            Caption = #1578#1575' '#1605#1575#1607
          end
          object Label8: TLabel
            Left = 63
            Top = 45
            Width = 21
            Height = 13
            Caption = #1587#1575#1604
          end
          object Label18: TLabel
            Left = 63
            Top = 22
            Width = 21
            Height = 13
            Caption = #1587#1575#1604
          end
          object DBEdit11: TDBEdit
            Left = 100
            Top = 18
            Width = 53
            Height = 21
            DataField = 'FirstMounth'
            DataSource = srcdecExt
            TabOrder = 0
          end
          object DBEdit13: TDBEdit
            Left = 100
            Top = 40
            Width = 53
            Height = 21
            DataField = 'EndMounth'
            DataSource = srcdecExt
            ParentShowHint = False
            ShowHint = False
            TabOrder = 2
          end
          object DBEdit2: TDBEdit
            Left = 4
            Top = 40
            Width = 53
            Height = 21
            DataField = 'EndYear'
            DataSource = srcdecExt
            TabOrder = 3
          end
          object DBEdit23: TDBEdit
            Left = 4
            Top = 18
            Width = 53
            Height = 21
            DataField = 'StartYear'
            DataSource = srcdecExt
            TabOrder = 1
          end
        end
      end
      object Panel8: TPanel
        Left = 7
        Top = 222
        Width = 416
        Height = 53
        Align = alTop
        TabOrder = 4
        DesignSize = (
          416
          53)
        object lblEmployeeAmount: TLabel
          Left = 332
          Top = 4
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = #1580#1605#1593' '#1603#1604
          FocusControl = dbedtEmployeeAmount
        end
        object SpeedButton16: TSpeedButton
          Left = 3
          Top = 28
          Width = 23
          Height = 21
          Action = DataSetDelete1
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000220B0000220B000000010000000100000031DE000031
            E7000031EF000031F700FF00FF000031FF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00040404040404
            0404040404040404000004000004040404040404040404000004040000000404
            0404040404040000040404000000000404040404040000040404040402000000
            0404040400000404040404040404000000040000000404040404040404040400
            0101010004040404040404040404040401010204040404040404040404040400
            0201020304040404040404040404030201040403030404040404040404050203
            0404040405030404040404040303050404040404040303040404040303030404
            0404040404040403040403030304040404040404040404040404030304040404
            0404040404040404040404040404040404040404040404040404}
          ParentShowHint = False
          ShowHint = True
        end
        object dbedtEmployeeAmount: TDBEdit
          Left = 197
          Top = 3
          Width = 131
          Height = 19
          TabStop = False
          Ctl3D = False
          DataField = 'EmployeeAmount'
          DataSource = srcdecExt
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBNavigator2: TDBNavigator
          Left = 262
          Top = 30
          Width = 156
          Height = 19
          DataSource = srcdecExt
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Anchors = [akTop, akRight]
          Flat = True
          TabOrder = 1
          ExplicitLeft = 258
        end
        object BitBtn10: TBitBtn
          Left = 29
          Top = 29
          Width = 87
          Height = 19
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
          TabOrder = 2
          OnClick = BitBtn10Click
        end
      end
    end
    object DBGrid1: TDBGrid
      Tag = 111
      Left = 436
      Top = 2
      Width = 331
      Height = 375
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clCream
      DataSource = srcdecExt
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'PersonelNo'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_PersonName_l1'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_PersonName_l2'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EmployeeAmount'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FirstMounth'
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EndMounth'
          Width = 28
          Visible = True
        end>
    end
  end
  object StatusBar1: TStatusBar [3]
    Left = 0
    Top = 481
    Width = 769
    Height = 19
    Panels = <
      item
        Width = 220
      end
      item
        Width = 220
      end
      item
        Width = 220
      end
      item
        Width = 220
      end>
    ExplicitTop = 482
    ExplicitWidth = 773
  end
  object ToolBar1: TToolBar [4]
    Left = 0
    Top = 66
    Width = 769
    Height = 36
    BorderWidth = 2
    ButtonHeight = 21
    ButtonWidth = 54
    Caption = 'ToolBar1'
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    EdgeInner = esLowered
    ShowCaptions = True
    TabOrder = 4
    ExplicitWidth = 773
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
  object yrcmbx1: TYearComboBox [5]
    Left = 245
    Top = 20
    Width = 112
    Height = 32
    Align = alCustom
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    TabOrder = 5
    YearID = 0
    YearsParam = 0
    ADOConnection = DmF.adcsalary
    OnYearChangeID = yrcmbx1YearChangeID
  end
  inherited ActionList: TActionList
    Left = 418
    Top = 10
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcdecExt
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcdecExt
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcdecExt
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcdecExt
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcdecExt
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      DataSource = srcDecExtItems
    end
    object actPrint: TAction
      Caption = #1670#1575#1662'(F7)'#8207
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSend2Excel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSend2ExcelExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 490
    Top = 8
  end
  object qryMaster: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterScroll = qryMasterAfterScroll
    Parameters = <
      item
        Name = 'type'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     FormInfoID, FormType, InfoID, InfoName_L1, InfoName_L' +
        '2,StandardDays'
      'FROM         Pay.FormsInfo'
      'WHERE     (FormType = :type)'
      '')
    Left = 144
    Top = 24
    object qryMasterFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryMasterFormType: TIntegerField
      FieldName = 'FormType'
    end
    object qryMasterInfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qryMasterInfoName_L1: TStringField
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryMasterInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryMasterStandardDays: TFloatField
      FieldName = 'StandardDays'
    end
  end
  object srcMaster: TDataSource
    DataSet = qryMaster
    Left = 48
    Top = 29
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
        Value = 6
      end>
    SQL.Strings = (
      'select * FROM Pay.FormTypes'
      'where  FormType=:FormType')
    Left = 608
    Top = 13
  end
  object qrydecExt: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterOpen = qrydecExtAfterOpen
    AfterInsert = qrydecExtAfterInsert
    AfterEdit = qrydecExtAfterEdit
    BeforePost = qrydecExtBeforePost
    AfterPost = qrydecExtAfterPost
    AfterCancel = qrydecExtAfterCancel
    BeforeDelete = qrydecExtBeforeDelete
    AfterScroll = qrydecExtAfterScroll
    Parameters = <
      item
        Name = 'years'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'fInfoId'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Mounth'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT    * FROM    Pay.PersonelDecExt'
      'WHERE     ( :years between  StartYear and  EndYear  )  AND'
      
        '  (FormInfoID = :fInfoId)  AND ( :Mounth BETWEEN FirstMounth AND' +
        ' EndMounth)'
      'order by PersonelNo')
    Left = 474
    Top = 144
    object qrydecExtDecExtID: TIntegerField
      FieldName = 'DecExtID'
    end
    object qrydecExtFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qrydecExtPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
      OnChange = qrydecExtPersonelNoChange
    end
    object qrydecExtEmployeeAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'EmployeeAmount'
      currency = True
      Precision = 19
    end
    object qrydecExtFirstMounth: TWordField
      DisplayLabel = #1575#1586' '#1605#1575#1607
      FieldName = 'FirstMounth'
      Required = True
    end
    object qrydecExt_StateName_L1: TStringField
      FieldKind = fkLookup
      FieldName = '_StateName_L1'
      LookupDataSet = PersonelInfo
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'StateName_L1'
      KeyFields = 'PersonelNo'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qrydecExtEndMounth: TWordField
      DisplayLabel = #1578#1575' '#1605#1575#1607
      FieldName = 'EndMounth'
      Required = True
    end
    object qrydecExtAidNo1: TStringField
      Tag = 3
      FieldName = 'AidNo1'
      Size = 30
    end
    object qrydecExtAidDate1_L1: TStringField
      Tag = 3
      FieldName = 'AidDate1'
      EditMask = '!9999/99/99;1;_'
      FixedChar = True
      Size = 10
    end
    object qrydecExtAidNo2: TStringField
      Tag = 3
      FieldName = 'AidNo2'
      Size = 30
    end
    object qrydecExtAidDate2_L1: TStringField
      Tag = 3
      FieldName = 'AidDate2'
      EditMask = '!9999/99/99;1;_'
      FixedChar = True
      Size = 10
    end
    object qrydecExtDayQuntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1583#1578' '
      FieldName = 'DayQuntity'
      OnChange = qrydecExtDayQuntityChange
    end
    object qrydecExtDayTime: TFloatField
      FieldName = 'DayTime'
    end
    object qrydecExtEmployerAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'EmployerAmount'
      Precision = 19
    end
    object qrydecExtFormInfoID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1662#1585#1608#1688#1607
      FieldName = 'FormInfoID2'
    end
    object qrydecExtAccTopicCode: TIntegerField
      FieldName = 'AccTopicCode'
    end
    object qrydecExtAccCTopicCode: TIntegerField
      FieldName = 'AccCTopicCode'
    end
    object qrydecExtAccCTopicCode2: TIntegerField
      FieldName = 'AccCTopicCode2'
    end
    object qrydecExtAccDetailCode: TIntegerField
      FieldName = 'AccDetailCode'
    end
    object qrydecExt_PersonName1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1662#1585#1587#1606#1604
      FieldKind = fkLookup
      FieldName = '_PersonName_l1'
      LookupDataSet = PersonelInfo
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'EmployeeName_L1'
      KeyFields = 'PersonelNo'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qrydecExt_PersonName_L22: TStringField
      DisplayLabel = #1606#1575#1605' '#1662#1585#1587#1606#1604'2'
      FieldKind = fkLookup
      FieldName = '_PersonName_l2'
      LookupDataSet = PersonelInfo
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'EmployeeName_L2'
      KeyFields = 'PersonelNo'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qrydecExt_projectname_L1: TStringField
      DisplayLabel = #1606#1575#1605' '#1662#1585#1608#1688#1607' '
      FieldKind = fkLookup
      FieldName = '_projectname_L1'
      LookupDataSet = qryLookupPrj
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'FormInfoID2'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qrydecExt_projectname_L2: TStringField
      DisplayLabel = #1606#1575#1605' '#1662#1585#1608#1688#1607' 2'
      FieldKind = fkLookup
      FieldName = '_projectname_L2'
      LookupDataSet = qryLookupPrj
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L2'
      KeyFields = 'FormInfoID2'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qrydecExtAccCTopicCode3: TIntegerField
      FieldName = 'AccCTopicCode3'
    end
    object qrydecExtYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qrydecExtStartYear: TIntegerField
      FieldName = 'StartYear'
    end
    object qrydecExtEndYear: TIntegerField
      FieldName = 'EndYear'
    end
    object qrydecExtNote_L1: TWideStringField
      FieldName = 'Note_L1'
      Size = 4000
    end
    object qrydecExtNote_L2: TWideStringField
      FieldName = 'Note_L2'
      Size = 4000
    end
  end
  object srcdecExt: TDataSource
    DataSet = qrydecExt
    OnStateChange = srcdecExtStateChange
    Left = 494
    Top = 207
  end
  object qryDecExtItems: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterEdit = qryDecExtItemsAfterEdit
    Parameters = <
      item
        Name = 'ExtID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  * FROM Pay.DecExtItems'
      #13'WHERE     (DecExtID = :ExtID)'#10
      #13'ORDER BY DecExtID')
    Left = 97
    Top = 373
    object qryDecExtItemsDecExtID: TIntegerField
      FieldName = 'DecExtID'
    end
    object qryDecExtItemsSalaryID: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'SalaryID'
    end
    object qryDecExtItemsAmount: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryDecExtItems_Amount2: TCurrencyField
      FieldKind = fkLookup
      FieldName = '_Amount'
      LookupDataSet = qryLookUp
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'Amount'
      KeyFields = 'SalaryID'
      LookupCache = True
      Lookup = True
    end
    object qryDecExtItems_Object: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldKind = fkLookup
      FieldName = '_Object_l1'
      LookupDataSet = qryLookUp
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'SalaryID'
      LookupCache = True
      ReadOnly = True
      Size = 50
      Lookup = True
    end
    object qryDecExtItems_Object2: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' 2'
      FieldKind = fkLookup
      FieldName = '_Object2_L2'
      LookupDataSet = qryLookUp
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L2'
      KeyFields = 'SalaryID'
      LookupCache = True
      ReadOnly = True
      Size = 50
      Lookup = True
    end
    object qryDecExtItemsDecExtItemID: TIntegerField
      FieldName = 'DecExtItemID'
    end
    object qryDecExtItemsDayQuntity: TFloatField
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldName = 'DayQuntity'
      OnChange = qryDecExtItemsDayQuntityChange
    end
  end
  object srcDecExtItems: TDataSource
    DataSet = qryDecExtItems
    Left = 213
    Top = 387
  end
  object qryLookUp: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'PInfoID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     FormInfoID, InfoID, FormType, InfoName_L1, InfoName_L' +
        '2, Amount'
      'FROM         Pay.FormsInfo'
      'WHERE     (PrvInfoID = :PInfoID)')
    Left = 368
    Top = 352
    object qryLookUpFormInfoID: TIntegerField
      FieldName = 'FormInfoID'
    end
    object qryLookUpInfoID: TIntegerField
      FieldName = 'InfoID'
    end
    object qryLookUpFormType: TSmallintField
      FieldName = 'FormType'
    end
    object qryLookUpInfoName_L1: TStringField
      FieldName = 'InfoName_L1'
      Size = 255
    end
    object qryLookUpInfoName_L2: TStringField
      FieldName = 'InfoName_L2'
      Size = 255
    end
    object qryLookUpAmount: TBCDField
      FieldName = 'Amount'
      Precision = 19
    end
  end
  object PersonelInfo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     PersonelInfo.PersonelNo, PersonelInfo.lastName_L1 + '#39 +
        '-'#39' + PersonelInfo.name_L1 AS EmployeeName_L1, '
      
        '                      PersonelInfo.lastName_L2 + '#39'-'#39' + PersonelI' +
        'nfo.name_L2 AS EmployeeName_L2, FormsInfo.InfoID AS PersonelStat' +
        'e, '
      '                      FormsInfo.InfoName_L1 AS StateName_L1'
      'FROM Pay.PersonelInfo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo ON PersonelInfo.PersonelStat' +
        'e = FormsInfo.FormInfoID')
    Left = 608
    Top = 149
  end
  object qryLookupPrj: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     FormInfoID, InfoName_L1, InfoName_L2'
      'FROM Pay.FormsInfo')
    Left = 74
    Top = 189
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcdecExt
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 704
    Top = 160
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
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\MissionItemsF 1.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    EmailSettings.ConnectionSettings.ConnectionStatusInfo = [csiStatusBar]
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
    PDFSettings.Layers = True
    PDFSettings.Outline = True
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
    CloudDriveSettings.DropBoxSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.DropBoxSettings.SharedResources = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.GoogleDriveSettings.SharedResources = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    CloudDriveSettings.OneDriveSettings.SharedResources = True
    Left = 712
    Top = 256
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand1: TppTitleBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 14817
      mmPrintPosition = 0
      object ppLblCompany: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCompany'
        OnGetText = ppLblCompanyGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 75406
        mmTop = 0
        mmWidth = 52123
        BandType = 1
        LayerName = Foreground
      end
      object ppLblReportName: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblReportName'
        OnGetText = ppLblReportNameGetText
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1605#1588#1582#1589#1575#1578' '#1601#1585#1605#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8467
        mmLeft = 82550
        mmTop = 6350
        mmWidth = 38100
        BandType = 1
        LayerName = Foreground
      end
      object ppLblPrintDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblPrintDate'
        OnGetText = ppLblPrintDateGetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5800
        mmLeft = 11906
        mmTop = 8202
        mmWidth = 11430
        BandType = 1
        LayerName = Foreground
      end
    end
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 12435
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 5027
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
      end
      object ppSysVarPageNo: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SysVarPageNo'
        OnGetText = ppSysVarPageNoGetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 9790
        mmTop = 0
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 265
        mmTop = 10319
        mmWidth = 203200
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1662#1585#1587#1606#1604#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 183092
        mmTop = 5027
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594' '#1605#1575#1605#1608#1585#1610#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 43656
        mmTop = 5027
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5292
        mmLeft = 68792
        mmTop = 6350
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1662#1585#1587#1606#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 138377
        mmTop = 5027
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1581#1603#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 94721
        mmTop = 5027
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1581#1603#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 74348
        mmTop = 5027
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5292
        mmLeft = 110596
        mmTop = 6879
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5292
        mmLeft = 178594
        mmTop = 6350
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 5556
        mmLeft = 90488
        mmTop = 6879
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5292
        mmLeft = 36248
        mmTop = 6350
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1662#1585#1608#8205#1688#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 7958
        mmTop = 5027
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'PersonelNo'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 180975
        mmTop = 0
        mmWidth = 21431
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'AidNo1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 93927
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = '_PersonName_l1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 114300
        mmTop = 0
        mmWidth = 63236
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'EmployeeAmount'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 39688
        mmTop = 0
        mmWidth = 28575
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'AidDate1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 71702
        mmTop = 0
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = '_projectname_L1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 0
        mmTop = 0
        mmWidth = 24606
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'FormInfoID2'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5292
        mmLeft = 25929
        mmTop = 0
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = '  '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 5292
        mmLeft = 24606
        mmTop = 529
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'EmployeeAmount'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 39688
        mmTop = 1058
        mmWidth = 28575
        BandType = 7
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 265
        mmTop = 0
        mmWidth = 203200
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'DecExtID'
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
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
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
  object PopList4Print: TPopupMenu
    Left = 505
    Top = 372
    object AllClikPop: TMenuItem
      Caption = #1670#1575#1662#1607#1575#1610' '#1583#1610#1711#1585' '#1585#1575' '#1583#1585' '#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583' '#1605#1588#1582#1589' '#1603#1606#1610#1583'..'
      OnClick = AllClikPopClick
    end
  end
end
