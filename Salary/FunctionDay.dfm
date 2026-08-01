inherited FunctionDayF: TFunctionDayF
  Left = 463
  Top = 230
  Caption = #1579#1576#1578' '#1603#1575#1585#1603#1585#1583' '#1582#1575#1589
  ClientWidth = 783
  OnResize = FormResize
  ExplicitWidth = 799
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Width = 783
    ExplicitWidth = 783
    inherited BtnReject: TBitBtn
      Left = 2
      Margins.Left = 1
      Margins.Right = 1
      ExplicitLeft = 2
    end
    object newPanel: TPanel
      Left = 535
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
      Left = 370
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
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 79
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 156
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
      TabOrder = 4
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 233
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Action = actSendToExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 310
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1670#1575#1662' '#1608#1610#1688#1607
      TabOrder = 6
      OnClick = BitBtn1Click
    end
    object BitBtn10: TBitBtn
      AlignWithMargins = True
      Left = 387
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 1
      Margins.Top = 6
      Margins.Right = 1
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1670#1575#1662' '
      TabOrder = 7
      OnClick = BitBtn10Click
    end
  end
  inherited Panel2: TPanel
    Width = 783
    Height = 52
    ExplicitWidth = 783
    ExplicitHeight = 52
    inherited ImgTemplate: TImage
      Left = 741
      ExplicitLeft = 745
    end
    inherited lblCaption: TLabel
      Left = 675
      Height = 32
      ExplicitLeft = 675
    end
    inherited lblBaseDate: TLabel
      Left = 343
      ExplicitLeft = 343
    end
    object yrcmbx1: TYearComboBox
      Left = 23
      Top = 14
      Width = 112
      Height = 32
      Align = alCustom
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 0
      YearID = 0
      YearsParam = 0
      ADOConnection = DmF.adcsalary
    end
  end
  inherited Panel3: TPanel
    Top = 88
    Width = 783
    Height = 388
    ExplicitTop = 88
    ExplicitWidth = 783
    ExplicitHeight = 388
    object PnlRecall: TPanel
      Left = 2
      Top = 2
      Width = 779
      Height = 53
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        779
        53)
      object Label1: TLabel
        Left = 666
        Top = 7
        Width = 72
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1608#1606#1575#1605' '#1602#1587#1605#1578' '
        ExplicitLeft = 632
      end
      object SpeedButton1: TSpeedButton
        Left = 568
        Top = 2
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = SpeedButton1Click
        ExplicitLeft = 534
      end
      object sbtnFunNo: TSpeedButton
        Left = 18
        Top = 2
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = sbtnFunNoClick
      end
      object Label7: TLabel
        Left = 133
        Top = 32
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 133
        Top = 7
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = #1588#1605#1575#1585#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label41: TLabel
        Left = 385
        Top = 7
        Width = 34
        Height = 13
        Caption = #1608#1590#1593#1610#1578
      end
      object BtnRecall: TBitBtn
        Left = 18
        Top = 26
        Width = 23
        Height = 22
        Hint = #1601#1585#1575#1582#1608#1575#1606#1610
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00426BF700426BF700FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00426BF7004080FF004080FF00426B
          F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00426BF7004080FF004080FF004080FF004080
          FF00426BF700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00426BF7004080FF004080FF004080FF004080FF004080
          FF004080FF00426BF700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00426BF7004080FF004080FF004080FF004080FF004080FF004080
          FF004080FF004080FF00426BF700FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00426BF7004080FF004080FF004080FF004080FF004080FF004080FF004080
          FF004080FF004080FF004080FF00426BF700FF00FF00FF00FF00FF00FF00426B
          F7004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
          FF004080FF004080FF004080FF004080FF00426BF700FF00FF00426BF7004080
          FF004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
          FF004080FF004080FF004080FF004080FF004080FF00426BF7004080FF004080
          FF004080FF004080FF004080FF004080FF004080FF004080FF004080FF004080
          FF004080FF004080FF004080FF004080FF004080FF004080FF00FF00FF00FF00
          FF00FF00FF00FF00FF004080FF004080FF004080FF004080FF004080FF004080
          FF004080FF004080FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF004080FF004080FF004080FF004080FF004080FF004080
          FF004080FF004080FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF004080FF004080FF004080FF004080FF004080FF004080
          FF004080FF004080FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF004080FF004080FF004080FF004080FF004080FF004080
          FF004080FF004080FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF004080FF004080FF004080FF004080FF004080FF004080
          FF004080FF004080FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF004080FF004080FF004080FF004080FF004080FF004080
          FF004080FF004080FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF004080FF004080FF004080FF004080FF004080FF004080
          FF004080FF004080FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = BtnRecallClick
      end
      object DBEdit1: TDBEdit
        Left = 593
        Top = 3
        Width = 68
        Height = 19
        TabStop = False
        Anchors = [akTop, akRight]
        Color = 14540253
        Ctl3D = False
        DataField = '_OfficeID'
        DataSource = SrcFunctionDay
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        OnKeyDown = DBEdit1KeyDown
      end
      object DBEdit2: TDBEdit
        Left = 540
        Top = 30
        Width = 229
        Height = 19
        Anchors = [akTop, akRight]
        Color = 14540253
        Ctl3D = False
        DataField = '_OfficeName_L1'
        DataSource = SrcFunctionDay
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object edtFunNo: TDBEdit
        Left = 42
        Top = 3
        Width = 85
        Height = 21
        DataField = 'FunNo'
        DataSource = SrcFunctionDay
        TabOrder = 2
      end
      object edtFunDate: TDBEdit
        Left = 42
        Top = 28
        Width = 85
        Height = 21
        DataField = 'FunDate'
        DataSource = SrcFunctionDay
        TabOrder = 3
      end
      object Cmbstate: TDBComboBox
        Left = 272
        Top = 3
        Width = 109
        Height = 21
        BiDiMode = bdRightToLeft
        DataField = 'state'
        DataSource = SrcFunctionDay
        Items.Strings = (
          #1605#1608#1602#1578
          #1602#1591#1593#1610
          #1583#1575#1574#1605
          #1576#1575#1591#1604#1607' ')
        ParentBiDiMode = False
        TabOrder = 1
      end
      object DBNavigator1: TDBNavigator
        Left = 272
        Top = 29
        Width = 108
        Height = 18
        DataSource = SrcFunctionDay
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Anchors = [akLeft, akTop, akBottom]
        Flat = True
        TabOrder = 6
      end
    end
    object DBGrid1: TDBGrid
      Tag = 111
      Left = 2
      Top = 55
      Width = 779
      Height = 189
      Align = alClient
      Color = clCream
      DataSource = srcFunctionDayItems
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnEditButtonClick = DBGrid1EditButtonClick
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = '_row'
          ReadOnly = True
          Width = 27
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'PersonelNo'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_PersonelName'
          ReadOnly = True
          Width = 85
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'PeresentID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FunTime'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtTime'
          Width = 46
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'ShiftNo'
          Width = 51
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'WorkID'
          Width = 45
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'EarthCode'
          Width = 41
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'ProcCode'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StandardRate'
          Width = 66
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'AccCTopicCode3'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_AccCTopicName3'
          Width = 37
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 2
      Top = 309
      Width = 779
      Height = 54
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        779
        54)
      object Label2: TLabel
        Left = 718
        Top = 9
        Width = 54
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1608#1575#1606' '#1581#1590#1608#1585
        ExplicitLeft = 722
      end
      object Label3: TLabel
        Left = 718
        Top = 32
        Width = 49
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1588#1610#1601#1578
        ExplicitLeft = 722
      end
      object Label4: TLabel
        Left = 256
        Top = 9
        Width = 30
        Height = 13
        Caption = #1606#1608#1593' '#1603#1575#1585
      end
      object Lbl_ProcCode: TLabel
        Left = 256
        Top = 32
        Width = 63
        Height = 13
        Caption = #1593#1606#1608#1575#1606' '#1605#1581#1589#1608#1604
      end
      object Lbl_EarthCode: TLabel
        Left = 451
        Top = 9
        Width = 22
        Height = 13
        Caption = #1586#1605#1610#1606
      end
      object DBEdit3: TDBEdit
        Left = 480
        Top = 6
        Width = 235
        Height = 19
        Anchors = [akTop, akRight]
        Color = 14540253
        Ctl3D = False
        DataField = '_PeresentID'
        DataSource = srcFunctionDayItems
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 480
        Top = 29
        Width = 235
        Height = 19
        Anchors = [akTop, akRight]
        Color = 14540253
        Ctl3D = False
        DataField = '_ShiftNo'
        DataSource = srcFunctionDayItems
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 18
        Top = 6
        Width = 235
        Height = 19
        Color = 14540253
        Ctl3D = False
        DataField = '_WorkID'
        DataSource = srcFunctionDayItems
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object edt_ProcCode: TDBEdit
        Left = 18
        Top = 29
        Width = 235
        Height = 19
        Color = 14540253
        Ctl3D = False
        DataField = '_ProcCode'
        DataSource = srcFunctionDayItems
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object Edt_EarthCode: TDBEdit
        Left = 321
        Top = 6
        Width = 127
        Height = 19
        Color = 14540253
        Ctl3D = False
        DataField = '_EarthCode'
        DataSource = srcFunctionDayItems
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
    end
    object grpNote: TGroupBox
      Left = 2
      Top = 244
      Width = 779
      Height = 65
      Align = alBottom
      Caption = '  '#1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610'  '
      TabOrder = 3
      object DBMemo1: TDBMemo
        Left = 2
        Top = 15
        Width = 775
        Height = 48
        Align = alClient
        DataField = 'note'
        DataSource = SrcFunctionDay
        TabOrder = 0
      end
    end
    object pnlDelete: TPanel
      Left = 2
      Top = 363
      Width = 779
      Height = 23
      Align = alBottom
      TabOrder = 4
      object BitBtn11: TBitBtn
        Left = 88
        Top = 2
        Width = 77
        Height = 20
        Action = actCopyPaste
        Caption = #1603#1662#1610
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
        TabOrder = 0
      end
      object BitBtn12: TBitBtn
        Left = 6
        Top = 2
        Width = 77
        Height = 20
        Action = DataSetDelete2
        Caption = #1581#1584#1601
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B84
          C6000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
          A5000021A5000021A5000021A5000021A5006B84C600FF00FF00FF00FF000021
          A5009494F7000029E7000029E7000029E7000029E7000029E7000029E7000029
          E7000029E7000029E7000029E7000029E7000021A500FF00FF00FF00FF000021
          A500B5C6FF009CBDFF009CBDFF009CB5FF009CB5FF009CB5FF00638CF700638C
          F700638CF700638CF700526BF700526BF7000021A500FF00FF00FF00FF006B84
          C6000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
          A5000021A5000021A5000021A5000021A5006B84C600FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 1
      end
    end
  end
  object ToolBar1: TToolBar [3]
    Left = 0
    Top = 52
    Width = 783
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
  inherited ActionList: TActionList
    Left = 496
    Top = 0
    inherited DataSetInsert1: TDataSetInsert
      DataSource = SrcFunctionDay
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = SrcFunctionDay
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = SrcFunctionDay
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = SrcFunctionDay
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = SrcFunctionDay
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
    object DataSetInsert2: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      DataSource = srcFunctionDayItems
    end
    object DataSetDelete2: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      ImageIndex = 0
      DataSource = srcFunctionDayItems
    end
    object DataSetEdit2: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      DataSource = srcFunctionDayItems
    end
    object DataSetPost2: TDataSetPost
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      DataSource = srcFunctionDayItems
    end
    object DataSetCancel2: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      DataSource = srcFunctionDayItems
    end
    object actCopyPaste: TAction
      Caption = #1603#1662#1610
      ImageIndex = 4
      ShortCut = 8237
      OnExecute = actCopyPasteExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 400
    Top = 1
  end
  object qryPersonel: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     PersonelInfo.PersonelNo, PersonelInfo.lastName_L1 + '#39 +
        '  '#39' + PersonelInfo.name_L1 AS PersonName_L1, '
      
        '                      PersonelInfo.lastName_L2 + '#39'  '#39' + Personel' +
        'Info.name_L2 AS PersonName_L2, FormsInfo.InfoID, FormsInfo.InfoN' +
        'ame_L1, FormsInfo.InfoName_L2, '
      
        '                      Interdicts.jobCode, Interdicts.OfficeCode,' +
        ' FormsInfo_1.InfoName_L1 AS Expr1, FormsInfo_1.InfoName_L2 AS Ex' +
        'pr2, Interdicts.EmployTypeID, '
      
        '                      Interdicts.StandardEmployAmount, Interdict' +
        's.InterdicEndDate'
      'FROM Pay.PersonelInfo INNER JOIN'
      
        '                      Pay.FormsInfo ON PersonelInfo.PersonelStat' +
        'e = FormsInfo.FormInfoID INNER JOIN'
      
        '                      Pay.Interdicts ON PersonelInfo.PersonelNo ' +
        '= Interdicts.PersonelNo LEFT OUTER JOIN'
      
        '                      Pay.FormsInfo FormsInfo_1 ON Pay.Interdict' +
        's.OfficeCode = FormsInfo_1.FormInfoID'
      
        'WHERE     (FormsInfo.InfoID < 50) AND (Interdicts.State < 11) AN' +
        'D (Interdicts.InterdicType = 0 )'
      '')
    Left = 690
    Top = 224
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
    Left = 600
    Top = 5
  end
  object qryFunctionDay: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    AfterOpen = qryFunctionDayAfterOpen
    BeforeInsert = qryFunctionDayBeforeInsert
    AfterInsert = qryFunctionDayAfterInsert
    BeforeEdit = qryFunctionDayBeforeEdit
    AfterEdit = qryFunctionDayAfterEdit
    BeforePost = qryFunctionDayBeforePost
    AfterPost = qryFunctionDayAfterPost
    BeforeCancel = qryFunctionDayBeforeCancel
    BeforeDelete = qryFunctionDayBeforeDelete
    AfterDelete = qryFunctionDayAfterDelete
    AfterScroll = qryFunctionDayAfterScroll
    Parameters = <
      item
        Name = 'Mounth'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM Pay.FunctionDay'
      'WHERE     (CAST(SUBSTRING(FunDate, 6, 2) AS int) = :Mounth)'
      'AND (YearID = :YearID )')
    Left = 82
    Top = 192
    object qryFunctionDayFunID: TIntegerField
      FieldName = 'FunID'
    end
    object qryFunctionDayFunNo: TIntegerField
      FieldName = 'FunNo'
      Required = True
    end
    object qryFunctionDayFunDate: TStringField
      FieldName = 'FunDate'
      Required = True
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryFunctionDayFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryFunctionDayLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryFunctionDaystate: TWordField
      FieldName = 'state'
      OnGetText = qryFunctionDaystateGetText
      OnSetText = qryFunctionDaystateSetText
    end
    object qryFunctionDaynote: TMemoField
      FieldName = 'note'
      BlobType = ftMemo
    end
    object qryFunctionDayOfficeCode: TIntegerField
      DisplayLabel = #1603#1583' '#1608#1575#1581#1583
      FieldName = 'OfficeCode'
      Required = True
    end
    object qryFunctionDay_OfficeName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1608#1575#1581#1583' '#1587#1575#1586#1605#1575#1606#1610
      FieldKind = fkLookup
      FieldName = '_OfficeName_L1'
      LookupDataSet = qryOfficeCode
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'OfficeCode'
      Size = 255
      Lookup = True
    end
    object qryFunctionDay_OfficeID: TIntegerField
      FieldKind = fkLookup
      FieldName = '_OfficeID'
      LookupDataSet = qryOfficeCode
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoID'
      KeyFields = 'OfficeCode'
      Lookup = True
    end
    object qryFunctionDayYearID: TIntegerField
      FieldName = 'YearID'
    end
  end
  object SrcFunctionDay: TDataSource
    DataSet = qryFunctionDay
    OnStateChange = SrcFunctionDayStateChange
    Left = 242
    Top = 191
  end
  object srcFunctionDayItems: TDataSource
    DataSet = qryFunctionDayItems
    Left = 250
    Top = 295
  end
  object qryFunctionDayItems: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryFunctionDayItemsBeforeInsert
    AfterInsert = qryFunctionDayItemsAfterInsert
    BeforeEdit = qryFunctionDayItemsBeforeEdit
    AfterEdit = qryFunctionDayItemsAfterEdit
    BeforePost = qryFunctionDayItemsBeforePost
    BeforeDelete = qryFunctionDayItemsBeforeDelete
    OnCalcFields = qryFunctionDayItemsCalcFields
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
      ''
      'SELECT     *'
      'FROM Pay.FunctionDayItems'
      ''
      ''
      ''
      'where FunID=:FunID'
      'ORDER BY FunItemID')
    Left = 106
    Top = 263
    object qryFunctionDayItemsFunItemID: TIntegerField
      FieldName = 'FunItemID'
    end
    object qryFunctionDayItemsFunID: TIntegerField
      FieldName = 'FunID'
    end
    object qryFunctionDayItemsPersonelNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588'.'#1662#1585#1587#1606#1604
      FieldName = 'PersonelNo'
      Required = True
      OnChange = qryFunctionDayItemsPersonelNoChange
    end
    object qryFunctionDayItems_PersonelName: TStringField
      DisplayLabel = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      FieldKind = fkLookup
      FieldName = '_PersonelName'
      LookupDataSet = qryPersonel
      LookupKeyFields = 'PersonelNo'
      LookupResultField = 'PersonName_L1'
      KeyFields = 'PersonelNo'
      Required = True
      Size = 150
      Lookup = True
    end
    object qryFunctionDayItemsPeresentID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1590#1608#1585
      FieldName = 'PeresentID'
    end
    object qryFunctionDayItemsFunTime: TFloatField
      Tag = 3
      DisplayLabel = #1587#1575#1593#1578' '#1603#1575#1585
      FieldName = 'FunTime'
    end
    object qryFunctionDayItemsExtTime: TFloatField
      Tag = 3
      DisplayLabel = #1575#1590#1575#1601#1607' '#1603#1575#1585
      FieldName = 'ExtTime'
    end
    object qryFunctionDayItemsShiftNo: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1588#1610#1601#1578
      FieldName = 'ShiftNo'
    end
    object qryFunctionDayItemsWorkID: TIntegerField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1603#1575#1585
      FieldName = 'WorkID'
    end
    object qryFunctionDayItemsEarthCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1586#1605#1610#1606
      FieldName = 'EarthCode'
    end
    object qryFunctionDayItemsProcCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1581#1589#1608#1604
      FieldName = 'ProcCode'
    end
    object qryFunctionDayItemsFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryFunctionDayItemsLastUser: TVarBytesField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryFunctionDayItemsStandardRate: TBCDField
      Tag = 3
      DisplayLabel = #1606#1585#1582' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
      FieldName = 'StandardRate'
      currency = True
      Precision = 19
    end
    object qryFunctionDayItems_PeresentID: TStringField
      DisplayLabel = #1603#1583' '#1581#1590#1608#1585
      FieldKind = fkLookup
      FieldName = '_PeresentID'
      LookupDataSet = qryPeresentID
      LookupKeyFields = 'InfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'PeresentID'
      ReadOnly = True
      Required = True
      Size = 150
      Lookup = True
    end
    object qryFunctionDayItems_ShiftNo: TStringField
      DisplayLabel = #1606#1608#1593' '#1588#1610#1601#1578
      FieldKind = fkLookup
      FieldName = '_ShiftNo'
      LookupDataSet = qryShiftNo
      LookupKeyFields = 'InfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'ShiftNo'
      ReadOnly = True
      Required = True
      Size = 150
      Lookup = True
    end
    object qryFunctionDayItems_WorkID: TStringField
      DisplayLabel = #1606#1608#1593' '#1603#1575#1585
      FieldKind = fkLookup
      FieldName = '_WorkID'
      LookupDataSet = qryWorkID
      LookupKeyFields = 'InfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'WorkID'
      ReadOnly = True
      Required = True
      Size = 150
      Lookup = True
    end
    object qryFunctionDayItems_EarthCode: TStringField
      DisplayLabel = #1603#1583' '#1586#1605#1610#1606
      FieldKind = fkLookup
      FieldName = '_EarthCode'
      LookupDataSet = qryEarthCode
      LookupKeyFields = 'InfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'EarthCode'
      ReadOnly = True
      Required = True
      Size = 150
      Lookup = True
    end
    object qryFunctionDayItems_ProcCode: TStringField
      DisplayLabel = #1605#1581#1589#1608#1604
      FieldKind = fkLookup
      FieldName = '_ProcCode'
      LookupDataSet = qryProcCode
      LookupKeyFields = 'InfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'ProcCode'
      ReadOnly = True
      Required = True
      Size = 150
      Lookup = True
    end
    object qryFunctionDayItems_row: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldKind = fkCalculated
      FieldName = '_row'
      Calculated = True
    end
    object qryFunctionDayItemsAccCTopicCode3: TIntegerField
      DisplayLabel = #1705#1583#1605#1585#1705#1586#1607#1586#1740#1606#1607'3'
      FieldName = 'AccCTopicCode3'
    end
    object qryFunctionDayItems_AccCTopicName3: TStringField
      DisplayLabel = #1605#1585#1705#1586#1607#1586#1740#1606#1607'3'
      FieldKind = fkLookup
      FieldName = '_AccCTopicName3'
      LookupDataSet = qryFormType39
      LookupKeyFields = 'FormInfoID'
      LookupResultField = 'InfoName_L1'
      KeyFields = 'AccCTopicCode3'
      ReadOnly = True
      Size = 150
      Lookup = True
    end
  end
  object qryOfficeCode: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.For' +
        'msInfo '
      '     WHERE  FormType =12'
      '')
    Left = 627
    Top = 281
  end
  object qryPeresentID: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.For' +
        'msInfo '
      '     WHERE  FormType =64'
      '')
    Left = 443
    Top = 81
  end
  object qryShiftNo: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.For' +
        'msInfo '
      '     WHERE  FormType =65'
      '')
    Left = 371
    Top = 185
  end
  object qryWorkID: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.For' +
        'msInfo '
      '     WHERE  FormType = :FormType '
      '')
    Left = 411
    Top = 241
  end
  object qryProcCode: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.For' +
        'msInfo '
      '     WHERE  FormType =67'
      '')
    Left = 395
    Top = 289
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = SrcFunctionDay
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 623
    Top = 203
    MasterDataPipelineName = 'ppDBPipeline2'
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'FunID'
      FieldName = 'FunID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'FunNo'
      FieldName = 'FunNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'FunDate'
      FieldName = 'FunDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'FirstUser'
      FieldName = 'FirstUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'LastUser'
      FieldName = 'LastUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'state'
      FieldName = 'state'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'note'
      FieldName = 'note'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'OfficeCode'
      FieldName = 'OfficeCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = '_OfficeName_L1'
      FieldName = '_OfficeName_L1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcFunctionDayItems
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 487
    Top = 187
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara\Salary\Exe\Report\FunctionDay.rtm'
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
    Left = 552
    Top = 251
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 17992
        mmWidth = 197379
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
        mmLeft = 73025
        mmTop = 1058
        mmWidth = 51065
        BandType = 0
        LayerName = Foreground
      end
      object ppLblCaption: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = #1579#1576#1578' '#1603#1575#1585#1603#1585#1583' '#1582#1575#1589
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8382
        mmLeft = 83408
        mmTop = 8467
        mmWidth = 30565
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
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 9790
        mmTop = 1058
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1662#1585#1587#1606#1604#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4149
        mmLeft = 186796
        mmTop = 19579
        mmWidth = 10160
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 186162
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 150074
        mmTop = 18522
        mmWidth = 35560
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 149545
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1581#1590#1608#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 131237
        mmTop = 18522
        mmWidth = 17780
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 130709
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1587#1575#1593#1578' '#1603#1575#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 112400
        mmTop = 18522
        mmWidth = 17780
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 111872
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1575#1590#1575#1601#1607' '#1603#1575#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 93564
        mmTop = 18522
        mmWidth = 17780
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 93035
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1610#1601#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 74727
        mmTop = 18522
        mmWidth = 17780
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 74199
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1603#1575#1585
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 55890
        mmTop = 18522
        mmWidth = 17780
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 55362
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1583' '#1586#1605#1610#1606
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 37054
        mmTop = 18522
        mmWidth = 17780
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 36525
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1581#1589#1608#1604
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 18217
        mmTop = 18522
        mmWidth = 17780
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 17689
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1585#1582' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 6350
        mmLeft = 0
        mmTop = 18522
        mmWidth = 17780
        BandType = 0
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 17991
        mmWidth = 2647
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable1GetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5927
        mmLeft = 10848
        mmTop = 8202
        mmWidth = 6943
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7409
      mmPrintPosition = 0
      object ppLineDetail: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'LineDetail'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 194469
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground
      end
      object ppLin4Position: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Lin4Position'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'PersonelNo'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 186690
        mmTop = 0
        mmWidth = 10160
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 186162
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = '_PersonelName'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 150074
        mmTop = 0
        mmWidth = 35560
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 149545
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = '_PeresentID'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 131237
        mmTop = 0
        mmWidth = 17780
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 130709
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'FunTime'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 112400
        mmTop = 0
        mmWidth = 17780
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 111872
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'ExtTime'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 93564
        mmTop = 0
        mmWidth = 17780
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 93035
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = '_ShiftNo'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 74727
        mmTop = 0
        mmWidth = 17780
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 74199
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = '_WorkID'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 55890
        mmTop = 0
        mmWidth = 17780
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 55362
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'EarthCode'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 37054
        mmTop = 0
        mmWidth = 17780
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 36525
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = '_ProcCode'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 18217
        mmTop = 0
        mmWidth = 17780
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 17689
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
      object TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'StandardRate'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7451
        mmLeft = 0
        mmTop = 0
        mmWidth = 17780
        BandType = 4
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line24'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 0
        mmTop = 0
        mmWidth = 2647
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 197379
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1580#1605#1593' '#1606#1602#1604' '#1576#1607'..'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6011
        mmLeft = 181240
        mmTop = 529
        mmWidth = 15579
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'FunTime'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 112400
        mmTop = 528
        mmWidth = 17780
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 111872
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'ExtTime'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 93564
        mmTop = 528
        mmWidth = 17780
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 93035
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line101'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 130704
        mmTop = 0
        mmWidth = 2647
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        mmHeight = 7408
        mmLeft = 0
        mmTop = 0
        mmWidth = 197379
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
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
        mmHeight = 6085
        mmLeft = 183886
        mmTop = 529
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'FunTime'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 112400
        mmTop = 528
        mmWidth = 17780
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 111872
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'ExtTime'
        DataPipeline = ppDBPipeline2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6350
        mmLeft = 93564
        mmTop = 528
        mmWidth = 17780
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 93035
        mmTop = 0
        mmWidth = 2647
        BandType = 7
        LayerName = Foreground
      end
      object TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 130704
        mmTop = 0
        mmWidth = 2647
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
  object PopList4Print: TPopupMenu
    Left = 490
    Top = 279
    object AllClikPop: TMenuItem
      Caption = #1670#1575#1662#1607#1575#1610' '#1583#1610#1711#1585' '#1585#1575' '#1583#1585' '#1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1575#1591#1604#1575#1593#1575#1578' '#1581#1602#1608#1602' '#1608' '#1583#1587#1578#1605#1586#1583' '#1605#1588#1582#1589' '#1603#1606#1610#1583'..'
      OnClick = AllClikPopClick
    end
  end
  object qryEarthCode: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.For' +
        'msInfo '
      '     WHERE  FormType =69'
      '')
    Left = 299
    Top = 249
  end
  object qryInitQry: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  *  FROM Pay.FormTypes'
      'where FormType= 28')
    Left = 564
    Top = 168
  end
  object qryFormType39: TADOQuery
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT FormInfoID, InfoID, InfoName_L1, InfoName_L2 FROM Pay.For' +
        'msInfo '
      '     WHERE  FormType =39'
      '')
    Left = 115
    Top = 329
  end
end
