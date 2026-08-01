inherited ExpenseF: TExpenseF
  Left = 362
  Top = 170
  Caption = #1587#1606#1583' '#1607#1586#1610#1606#1607' '#1585#1587#1605#1610
  ClientWidth = 1001
  OnResize = FormResize
  ExplicitWidth = 1009
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Width = 1001
    ExplicitWidth = 1001
    object newPanel: TPanel
      Left = 747
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
        Left = 171
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 94
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn1: TBitBtn
        Left = 17
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
      Left = 582
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
        Left = 87
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
    object BitBtn9: TBitBtn
      Left = 324
      Top = 9
      Width = 75
      Height = 25
      Action = actPrint
      Caption = #1670#1575#1662
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00ADADAD00F7F7F700F7F7F700ADADAD005A5A5A008484
        8400ADADAD00E7DEDE00E7E7E700B5B5B500FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00BDB5B500E7E7E700FFFFFF00EFEFEF00B5ADAD004A4A4A003131
        31004242420084848400ADADAD00E7E7E700DEDEDE00FF00FF00FF00FF00CECE
        CE00F7F7F700F7F7F700F7F7F700C6C6C600ADADAD00A5A5A500ADADAD00B5AD
        AD009C9C9C005A5A5A003939390042424200A59C9C00FF00FF00FF00FF00EFEF
        EF00F7F7F700DEDEDE00BDBDBD00B5B5B500D6D6D600A5A5A500A59C9C00A59C
        9C00ADA5A500B5B5B500A5A5A5006B6B6B00A59C9C00FF00FF00FF00FF00B5AD
        AD00A5A5A500D6D6D600DEDEDE00D6D6D600EFE7E700F7F7F700EFEFEF00D6D6
        D600CECECE00B5B5B500ADA5A500A59C9C009C9C9C00FF00FF00FF00FF00BDBD
        BD00D6D6D600D6D6D600D6D6D600E7E7E700F7F7F700C6BDC600CECECE00E7E7
        E700E7E7E700D6D6D600CECECE00BDBDBD00A5A5A500FF00FF00FF00FF00BDBD
        BD00DEDEDE00D6D6D600E7E7E700B5B5B500BDBDBD00D6F7D600EFEFEF00F7BD
        B500BDBDBD00ADA5A500ADADAD00BDBDBD00B5B5B500FF00FF00FF00FF00FF00
        FF00B5B5B500D6D6D600C6C6C600CEC6C600F7F7F700F7F7F700EFEFEF00E7E7
        E700E7E7E700D6D6D600CECECE00A5A5A500FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00ADADAD00F7F7F700DEDEDE00BDBDBD00C6C6C600D6D6D600D6D6
        D600D6D6D600ADADAD00BDB5B500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00EFDEDE00FFE7D600FFDED600F7DED600F7DED600E7DE
        DE00DEDEDE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00E7C6BD00FFDED600FFDECE00FFCEBD00FFC6B500F7B5
        A500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00E7CEC600FFDED600FFDECE00FFCEBD00FFC6B500F7B5
        A500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00E7CEC600FFDED600FFDECE00FFCEBD00FFC6B500F7BD
        B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00E7C6C600FFEFE700FFDED600FFDECE00FFCEBD00FFCEB500FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00E7CEC600E7C6C600E7C6BD00E7BDB500E7B5AD00F7BDB500FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      Left = 247
      Top = 9
      Width = 75
      Height = 25
      Action = actSendToExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 4
    end
    object BitBtn5: TBitBtn
      Left = 170
      Top = 9
      Width = 75
      Height = 25
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 5
    end
    object BitBtn6: TBitBtn
      Left = 93
      Top = 9
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Width = 1001
    ExplicitWidth = 1001
    inherited ImgTemplate: TImage
      Left = 937
      ExplicitLeft = 937
    end
    inherited lblCaption: TLabel
      Left = 893
      Height = 16
      ExplicitLeft = 893
    end
  end
  inherited Panel3: TPanel
    Width = 1001
    ExplicitWidth = 1001
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 997
      Height = 143
      Align = alTop
      TabOrder = 0
      DesignSize = (
        997
        143)
      object Label1: TLabel
        Left = 114
        Top = 12
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = #1588#1605#1575#1585#1607
        FocusControl = DBEdit4
      end
      object Label2: TLabel
        Left = 114
        Top = 39
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = #1578#1575#1585#1610#1582
        FocusControl = DBEdit5
      end
      object Label3: TLabel
        Left = 376
        Top = 92
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Anchors = [akRight, akBottom]
        Caption = #1578#1608#1587#1591
        FocusControl = DBEdit6
        ExplicitLeft = 156
        ExplicitTop = 94
      end
      object Label4: TLabel
        Left = 155
        Top = 66
        Width = 20
        Height = 13
        Alignment = taRightJustify
        Caption = #1605#1576#1604#1594
      end
      object Label8: TLabel
        Left = 920
        Top = 8
        Width = 51
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610
      end
      object SpeedButton10: TSpeedButton
        Left = 822
        Top = 3
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = SpeedButton10Click
        ExplicitLeft = 602
      end
      object SBtnSearch: TSpeedButton
        Left = 28
        Top = 8
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SBtnSearchClick
      end
      object Label5: TLabel
        Left = 288
        Top = 122
        Width = 62
        Height = 13
        Caption = #1588#1605#1575#1585#1607' '#1705#1605#1705#1740
      end
      object Label9: TLabel
        Left = 114
        Top = 122
        Width = 53
        Height = 13
        Caption = #1578#1575#1585#1740#1582' '#1705#1605#1705#1740
      end
      object Label10: TLabel
        Left = 926
        Top = 122
        Width = 42
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1740#1582' '#1670#1705
        FocusControl = DBEdit14
      end
      object Label11: TLabel
        Left = 710
        Top = 122
        Width = 86
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1740#1582' '#1587#1585#1585#1587#1740#1583' '#1670#1705
        FocusControl = DBEdit15
      end
      object GroupBox1: TGroupBox
        Left = 540
        Top = 27
        Width = 447
        Height = 88
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1576#1608#1583#1580#1607
        TabOrder = 3
        object SpeedButton1: TSpeedButton
          Tag = 1
          Left = 345
          Top = 15
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Tag = 2
          Left = 345
          Top = 39
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton1Click
        end
        object SpeedButton3: TSpeedButton
          Tag = 3
          Left = 345
          Top = 62
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton1Click
        end
        object DBText1: TDBText
          Left = 13
          Top = 18
          Width = 326
          Height = 17
          Color = clCream
          DataField = '_MoeenName'
          DataSource = srcExpense
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 13
          Top = 42
          Width = 326
          Height = 17
          Color = clCream
          DataField = '_DetailName'
          DataSource = srcExpense
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 13
          Top = 65
          Width = 326
          Height = 17
          Color = clCream
          DataField = '_CTopicName'
          DataSource = srcExpense
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Tag = 1
          Left = 369
          Top = 16
          Width = 70
          Height = 21
          Color = 15395562
          DataField = 'TopicCode'
          DataSource = srcExpense
          TabOrder = 0
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit2: TDBEdit
          Tag = 2
          Left = 369
          Top = 40
          Width = 70
          Height = 21
          Color = 15395562
          DataField = 'DetailCode'
          DataSource = srcExpense
          TabOrder = 1
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit3: TDBEdit
          Tag = 3
          Left = 369
          Top = 63
          Width = 70
          Height = 21
          Color = 15395562
          DataField = 'CTopicCode'
          DataSource = srcExpense
          TabOrder = 2
          OnKeyPress = DBEdit1KeyPress
        end
      end
      object DBEdit4: TDBEdit
        Left = 54
        Top = 10
        Width = 54
        Height = 19
        Ctl3D = False
        DataField = 'FormNo'
        DataSource = srcExpense
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 28
        Top = 37
        Width = 80
        Height = 19
        Ctl3D = False
        DataField = 'FormDate'
        DataSource = srcExpense
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 28
        Top = 90
        Width = 342
        Height = 19
        Anchors = [akLeft, akTop, akRight]
        Color = 14281983
        Ctl3D = False
        DataField = 'Cacther'
        DataSource = srcExpense
        ParentCtl3D = False
        TabOrder = 4
      end
      object edtValue: TEdit
        Left = 28
        Top = 64
        Width = 122
        Height = 19
        TabStop = False
        Color = 15007690
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 7
        Text = '0'
      end
      object DBEdit12: TDBEdit
        Left = 848
        Top = 4
        Width = 66
        Height = 21
        Anchors = [akTop, akRight]
        Ctl3D = True
        DataField = 'CustDetailId'
        DataSource = srcExpense
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
        OnKeyPress = DBEdit12KeyPress
      end
      object DBEdit13: TDBEdit
        Left = 541
        Top = 4
        Width = 275
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Ctl3D = True
        DataField = '_CustDetailName'
        DataSource = srcExpense
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit7: TDBEdit
        Left = 202
        Top = 118
        Width = 80
        Height = 21
        DataField = 'AidNumber'
        DataSource = srcExpense
        TabOrder = 5
      end
      object DBEdit8: TDBEdit
        Left = 28
        Top = 118
        Width = 80
        Height = 21
        DataField = 'AidDate'
        DataSource = srcExpense
        TabOrder = 6
      end
      object DBEdit14: TDBEdit
        Left = 812
        Top = 118
        Width = 108
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'ChequeDate'
        DataSource = srcExpense
        TabOrder = 9
      end
      object DBEdit15: TDBEdit
        Left = 599
        Top = 118
        Width = 108
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'ChequeDueDate'
        DataSource = srcExpense
        TabOrder = 10
      end
    end
    object DBGrid1: TDBGrid
      Tag = 111
      Left = 2
      Top = 145
      Width = 997
      Height = 153
      Align = alClient
      Color = clCream
      DataSource = srcExpenseItems
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnColEnter = DBGrid1ColEnter
      OnColExit = DBGrid1ColExit
      OnEditButtonClick = DBGrid1EditButtonClick
      OnEnter = DBGrid1Enter
      OnKeyPress = DBGrid1KeyPress
      OnKeyUp = DBGrid1KeyUp
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'ItemDetailCode'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CatcherItem'
          Width = 106
          Visible = True
        end
        item
          Color = 15395562
          Expanded = False
          FieldName = 'Desc'
          Width = 327
          Visible = True
        end
        item
          Color = 14024703
          Expanded = False
          FieldName = 'Bed'
          Visible = True
        end
        item
          Color = 14155735
          Expanded = False
          FieldName = 'Bes'
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 2
      Top = 298
      Width = 997
      Height = 123
      Align = alBottom
      TabOrder = 2
      ExplicitTop = 299
      object Panel5: TPanel
        Left = 612
        Top = 28
        Width = 384
        Height = 94
        Align = alRight
        TabOrder = 0
        DesignSize = (
          384
          94)
        object GroupBox2: TGroupBox
          Left = 7
          Top = 2
          Width = 374
          Height = 88
          Anchors = [akTop, akRight]
          Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1581#1604' '#1662#1585#1583#1575#1582#1578
          TabOrder = 0
          object SpeedButton4: TSpeedButton
            Tag = 9
            Left = 272
            Top = 15
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton1Click
          end
          object SpeedButton5: TSpeedButton
            Tag = 10
            Left = 272
            Top = 39
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton1Click
          end
          object SpeedButton6: TSpeedButton
            Tag = 11
            Left = 272
            Top = 62
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton1Click
          end
          object DBText4: TDBText
            Left = 10
            Top = 18
            Width = 257
            Height = 17
            Color = clCream
            DataField = '_PMoeenName'
            DataSource = srcExpense
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object DBText5: TDBText
            Left = 9
            Top = 43
            Width = 257
            Height = 17
            Color = clCream
            DataField = '_PDetailName'
            DataSource = srcExpense
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object DBText6: TDBText
            Left = 10
            Top = 65
            Width = 257
            Height = 17
            Color = clCream
            DataField = '_PCTopicCode'
            DataSource = srcExpense
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object DBEdit9: TDBEdit
            Tag = 4
            Left = 296
            Top = 16
            Width = 70
            Height = 21
            Color = 15395562
            DataField = 'PayerTopicCode'
            DataSource = srcExpense
            TabOrder = 0
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit10: TDBEdit
            Tag = 5
            Left = 296
            Top = 40
            Width = 70
            Height = 21
            Color = 15395562
            DataField = 'PayerDetailCode'
            DataSource = srcExpense
            TabOrder = 1
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit11: TDBEdit
            Tag = 6
            Left = 296
            Top = 63
            Width = 70
            Height = 21
            Color = 15395562
            DataField = 'PayerCTopicCode'
            DataSource = srcExpense
            TabOrder = 2
            OnKeyPress = DBEdit1KeyPress
          end
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 995
        Height = 27
        Align = alTop
        TabOrder = 1
        DesignSize = (
          995
          27)
        object Bevel1: TBevel
          Left = 2
          Top = 2
          Width = 311
          Height = 22
        end
        object Label7: TLabel
          Left = 286
          Top = 6
          Width = 20
          Height = 13
          Alignment = taRightJustify
          Caption = #1580#1605#1593
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblBed: TLabel
          Left = 146
          Top = 4
          Width = 135
          Height = 17
          AutoSize = False
          Caption = '0'
          Color = 14024703
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Badr'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
        end
        object lblBes: TLabel
          Left = 8
          Top = 4
          Width = 134
          Height = 17
          AutoSize = False
          Caption = '0'
          Color = 14155735
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Badr'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
        end
        object Label6: TLabel
          Left = 920
          Top = 6
          Width = 66
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1588#1585#1581' '#1593#1605#1608#1605#1610':'
          FocusControl = dbedtComments
          ExplicitLeft = 709
        end
        object dbedtComments: TDBEdit
          Left = 320
          Top = 2
          Width = 596
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clCream
          DataField = 'Comments'
          DataSource = srcExpense
          TabOrder = 0
        end
      end
      object pnlDocType: TPanel
        Left = 1
        Top = 28
        Width = 611
        Height = 94
        Align = alClient
        TabOrder = 2
        DesignSize = (
          611
          94)
        object SpeedButton9: TSpeedButton
          Left = 50
          Top = 70
          Width = 20
          Height = 22
          Action = actPasteArticle
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000220B0000220B00000001000000010000A57B7300E7AD
            73009C948C00C6AD8C00BD9C9400949C9C00BDA59C00849CA500C6ADA500D6BD
            B500FFDEB500CEC6BD00D6C6BD00E7C6BD00F7DEBD00FFDEBD00DECEC600F7DE
            C600FFDEC600A5C6CE00ADC6CE00B5C6CE00FFE7CE00B5D6D600E7DED600F7E7
            D600FFE7D600FFEFD600299CDE0084C6DE00EFE7DE00F7E7DE00F7EFDE00FFEF
            DE008CCEE700B5D6E700F7E7E700E7EFE700F7EFE700FFEFE700FFF7E7008CD6
            EF00FFEFEF00FFF7EF0084D6F7008CDEF70094DEF700F7F7F700FFF7F700FFFF
            F700FF00FF00A5E7FF0084EFFF0094EFFF00A5EFFF00ADEFFF00B5EFFF00BDEF
            FF00C6EFFF00CEEFFF008CF7FF0094F7FF00A5F7FF00ADF7FF00B5F7FF00BDF7
            FF00CEF7FF00D6F7FF00DEF7FF00CEFFFF00DEFFFF00E7FFFF00EFFFFF00F7FF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003232321C1C00
            0000000000000000003232321C292C0B21262020202020200032321C33353C0B
            19191111110E11190032321C3335340B1F160E0E0E0E11190032321C3736350B
            241911110E0E11190032321C3837360B262016161611191E0032321C39413F0B
            2B160F0E0E0A11260032321C3A42410B302B26262020261E0032321C3B44420B
            304A4A302F1E09080032321C3B47440B304A4A4A4A1001033232321C4349470B
            272B2B2A2B0D031C3232321C444A490B0B0B0B0B0B0B1D1C3232321C442F1413
            1313131317462C1C3232321C441006000000000004252E1C323232321C230518
            1919190B07221C3232323232321C1C02020202021C1C32323232}
          ParentShowHint = False
          ShowHint = True
        end
        object SpeedButton8: TSpeedButton
          Left = 27
          Top = 70
          Width = 23
          Height = 22
          Action = actCopyArticle
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000220B0000220B000000010000000100008C5A5A009C6B
            63009C6B6B00EFB56B00A57B7300B5847300C68C7B00BD848400B58C8C00FFD6
            A500BDADAD00F7DEBD00D6C6C600F7DEC600FFDEC600FFE7C600EFDECE00F7DE
            CE00F7E7CE00FFE7CE00EFE7D600F7E7D600FFE7D600FFEFD600EFDEDE00EFE7
            DE00F7E7DE00F7EFDE00FFEFDE00FFF7DE00FFF7E700FFF7EF00FFFFEF00FFFF
            F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00222222222208
            000000000000000000222222222222081E1B1B1B1B1B1B120022222222222208
            1B110D0D0D0D101000222222222222081E090909090909100022220800000008
            1F0D0D0D0D0B1210012222081E1B1B081F120D0D0D0D1510022222081B110D08
            2109090909090914042222081E0909082116161512161E18042222081F0D0D08
            2323232121180C0A052222081F120D0823232321210808080822220821090908
            2323232323080306222222082116160808080808080807222222220823232321
            21180C0A05222222222222082323232121080808082222222222220823232323
            2308030622222222222222080808080808080722222222222222}
          ParentShowHint = False
          ShowHint = True
        end
        object SpeedButton7: TSpeedButton
          Left = 4
          Top = 70
          Width = 23
          Height = 22
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
        object SpeedButton11: TSpeedButton
          Left = 70
          Top = 70
          Width = 23
          Height = 22
          Action = actExpenseCopy
        end
        object aBigPanel: TPanel
          Left = 99
          Top = 0
          Width = 293
          Height = 92
          Align = alCustom
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -64
          Font.Name = 'Badr'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 3
          Visible = False
          object horoofPanel: TPanel
            Left = 1
            Top = 67
            Width = 291
            Height = 24
            Align = alBottom
            BevelInner = bvLowered
            BevelOuter = bvLowered
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object DBNavigator1: TDBNavigator
          Left = 8
          Top = 104
          Width = 336
          Height = 25
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Anchors = [akLeft, akTop, akRight]
          Flat = True
          TabOrder = 0
        end
        object DBNavigator2: TDBNavigator
          Left = 99
          Top = 71
          Width = 500
          Height = 21
          DataSource = srcExpense
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Anchors = [akLeft, akTop, akRight]
          Flat = True
          TabOrder = 1
        end
        object rdoDocState: TDBRadioGroup
          Left = 395
          Top = 1
          Width = 206
          Height = 68
          Anchors = [akTop, akRight]
          Caption = #1608#1590#1593#1610#1578' '#1587#1606#1583
          DataField = 'State'
          DataSource = srcExpense
          Items.Strings = (
            #1605#1608#1602#1578
            #1602#1591#1593#1610
            #1579#1576#1578' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1588#1583)
          ReadOnly = True
          TabOrder = 2
          Values.Strings = (
            '0'
            '1'
            '2')
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 48
    Top = 312
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcExpense
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcExpense
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcExpense
    end
    object DataSetDelete1: TDataSetDelete [4]
      Category = 'Dataset'
      DataSource = srcExpenseItems
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcExpense
    end
    inherited actSearch_: TAction
      OnExecute = _actSearchExecute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcExpense
    end
    object actCopyArticle: TAction
      Hint = #1603#1662#1610' '#1588#1585#1581' '#1570#1585#1578#1610#1603#1604
      ShortCut = 16507
      OnExecute = actCopyArticleExecute
    end
    object actPasteArticle: TAction
      Hint = #1576#1575#1586#1610#1575#1576#1610' '#1588#1585#1581' '#1570#1585#1578#1610#1603#1604
      ShortCut = 8315
      OnExecute = actPasteArticleExecute
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1575#1603#1587#1604
      OnExecute = actSendToExcelExecute
    end
    object actExpenseCopy: TAction
      Hint = #1705#1662#1740' '#1587#1606#1583' '#1607#1586#1740#1606#1607
      ImageIndex = 6
      OnExecute = actExpenseCopyExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 352
    Top = 65
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000031DE000031DE00FFFFFFFF59CCE60034BAE10034BA
      E100FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BAD840021842900218429006BAD8400000000000000
      000000000000000000000000000000000000000000000031DE000031DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031DE000031DE0000000000FFFFFFFF59CCE60094F0FA007DE1
      F50063D1EB0059CCEB0042C0E60023B5DC0000AFDC00FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE00000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000000000000000000FFFFFFFF59CCE600A8FAFF00A1F5
      FF009BF5FA0094F0FA008CEBFA0085E1F50063D1F00059CCEB0042C0E60023B5
      E10042C0E600FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      000000000000000000000000000000000000000000000031DE000031DE000031
      DE000031DE000000000000000000000000000000000000000000000000000031
      DE000031DE00000000000000000000000000FFFFFFFF59CCE600AFFFFF00A8FA
      FF00A1F5FF009BF0FA0094EBFA008CE6F50085E6F5007DE1F50075DCF5007DDC
      F5006CD6F0004FC6EB0034BAE100FFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000000000000031EF000031
      DE000031DE000031DE00000000000000000000000000000000000031DE000031
      DE0000000000000000000000000000000000FFFFFFFF59CCE600B5FFFF00AFFF
      FF00A8FAFF00A1F5FF009BF0FA0094EBFA008CE6F5007DDCEB007DE1F50075DC
      F50075DCF5006CD6F00034BAE100FFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000031DE000031DE000031DE00000000000031DE000031DE000031DE000000
      000000000000000000000000000000000000FFFFFFFF59CCE600B5FFFF00AFFF
      FF00AFFAFF00A8FAFF00A1F5FF009BF0FA0094EBFA00008500006CD1D1007DDC
      F50075DCF5006CD6F00034BAE100FFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006BAD8400218429002184
      290021842900218429002184290094DE8C0039B5520021842900218429002184
      290021842900218429006BAD8400000000000000000000000000000000000000
      0000000000000031DE000031E7000031E7000031E7000031DE00000000000000
      000000000000000000000000000000000000FFFFFFFF59CCE600B5FFFF00AFFF
      FF00AFFFFF00AFFAFF00A8FAFF00A1F5FF009BF0FA008CE6F000008500007DE1
      F5007DDCF50075DCF00034BAE100FFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A5630039B5520039B5
      520039B5520039B5520039B5520039B5520039B5520039B5520039B5520039B5
      520039B5520039B5520021842900000000000000000000000000000000000000
      000000000000000000000031E7000031E7000031EF0000000000000000000000
      000000000000000000000000000000000000FFFFFFFF59CCE600AFFFFF00AFFF
      FF00AFFFFF00AFFFFF00AFFAFF00A8F5FF009BF5FA0094F0FA0000A123000085
      00007DE1F50075DCF00034BAE100FFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063A5630094DE8C0094DE
      8C0094DE8C0094DE8C0094DE8C0094DE8C0039B5520094DE8C0094DE8C0094DE
      8C0094DE8C0094DE8C0021842900000000000000000000000000000000000000
      0000000000000031DE000031EF000031E7000031EF000031F700000000000000
      000000000000000000000000000000000000FFFFFFFF59CCE600B5FFFF00AFFF
      FF00AFFFFF006CCCA10000940000AFFAFF00A8F5FF00A8F5FF0000A823000085
      000085E6F5007DE1F50034BAE100FFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006BAD840063A5630063A5
      630063A5630063A5630063A5630094DE8C0039B5520021842900218429002184
      290021842900218429006BAD8400000000000000000000000000000000000000
      00000031F7000031EF000031E70000000000000000000031F7000031F7000000
      000000000000000000000000000000000000FFFFFFFF59CCE600DCFAFF00CCFF
      FF00B5EBE100009B2300009B2300AFFAFA00A8F5FF000094000000A823000085
      00008CE6FA0085E1F50034BAE100FFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000031
      FF000031EF000031F700000000000000000000000000000000000031FF000031
      F70000000000000000000000000000000000FFFFFFFF59CCE60042C0E60042C0
      E600008500004FCC7500008C2300008C23000094000000BA2300008500000094
      000094EBFA0085E6F50034BAE100FFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      00000000000000000000000000000000000000000000000000000031F7000031
      F7000031FF000000000000000000000000000000000000000000000000000031
      F7000031F700000000000000000000000000FFFFFFFF59CCE6008CEBF50063CC
      C00023A1420075F0A1004FD1750034C6590023C03400009B000000850000A1F5
      FF009BF0FA008CEBFA0034BAE100FFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      000000000000000000000000000000000000000000000031F7000031F7000031
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000031F7000000000000000000FFFFFFFF59CCE600B5FFFF000085
      000063E194006CEB9B004FD67500008500000085000000850000AFF5FF00A8FA
      FF00A1F5FF009BF0FA0034BAE100FFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000031F7000031F7000031F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF59CCE600BAFFFF0085E1
      C6000085000042C0590034C04F00008500008CC6AF00C6EBF500C0E6F500AFE6
      F500B5EBFA009BEBF50034BAE100FFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BAD840063A5630063A563006BAD8400000000000000
      0000000000000000000000000000000000000031F7000031F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF59CCE600A1F0FA00B5FA
      FF00A1F0E60042AF630023A13400008500000085000059CCE60059CCE60059CC
      E60059CCE60059CCE60059CCE600FFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF59CCE60059CC
      E60059CCE60059CCE60059CCE600FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000031000000420000005200000052000000420000003100000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000052A54A00009408006BB563000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000042
      000000420000007B0800009C0800009C0800009C0800009C0800007B0800004A
      0000004A00000000000000000000000000000000000000000000000000000000
      00000000000018B5290000BD2100009400008CBD7B0000000000000000000000
      0000000000000000000000000000000000000000000029ADD60031B5DE0021AD
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004A08000063
      080000A5100000A50800009C0800009C0800009C0800009C080000A5080000A5
      0800006B08000031000000000000000000000000000000000000000000000000
      00006BB5630000BD210000C6290000A50000319C310000000000000000000000
      0000000000000000000000000000000000000000000029ADD6009CDEEF0084EF
      FF004AC6E70021ADD60018A5C60018A5C60018A5C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004A0800006B100008A5
      210008A51800009C0800009C0800009C0800009C0800009C0800009C0800009C
      080000A50800006B0800004A0000000000000000000000000000000000000000
      0000009C100000CE310000C6290000AD100000940000A5C69400000000000000
      0000000000000000000000000000000000000000000029ADD60052BDE7009CFF
      FF0094FFFF0073DEF70073DEF70073DEF70073DEF7004AC6E70021ADD60018A5
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004A080010AD310008AD
      290008A5180000A510004AC65200E7F7EF00D6F7DE0010AD2100009C0800009C
      0800009C080000A50800004A00000000000000000000000000000000000052A5
      4A0000CE310000C6290000FF630000CE3100009C0000008C0000000000000000
      0000000000000000000000000000000000000000000029ADD60052BDE700ADFF
      FF008CF7FF008CEFFF008CEFFF008CEFFF0073DEF70073DEF70073DEF7004AC6
      EF0021ADD6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000005200000884210010B5420010A5
      3100089C180042BD4A00F7FFF700FFFFFF0084D68C0000A51000009C0800009C
      0800009C080000A50800007B08000042000000000000000000000000000018B5
      290029CE5A0000FF630000FF630000BD210000C62900009400008CBD7B000000
      0000000000000000000000000000000000000000000029ADD60029ADD600ADDE
      EF0094F7FF0094F7FF008CEFFF008CEFFF008CEFFF008CEFFF0073DEF70073DE
      F7004AC6EF00000000000000000000000000000000006B84C6000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5006B84C600000000000052000010A5420018B54A0010AD
      310042BD4A00F7FFF700FFFFFF0073D67B00009C0800009C0800009C0800009C
      0800009C080000A50800009408000042000000000000000000000000000018C6
      420000FF630000FF630052A54A0052A54A0000C6290000A50000319C31000000
      0000000000000000000000000000000000000000000029ADD60073DEF70029AD
      D6009CFFFF008CF7FF008CF7FF008CF7FF008CEFFF008CEFFF008CEFFF0073DE
      F70073DEF70018A5C6000000000000000000000000000021A5009494F7000029
      E7000029E7000029E7000029E7000029E7000029E7000029E7000029E7000029
      E7000029E7000029E7000021A50000000000006B100021B5520021B5520073D6
      9400EFFFEF00FFFFFF00F7FFF700B5EFC600B5E7BD00ADE7B500ADE7B500ADE7
      B500ADE7B500009C0800009C0800004A00000000000000000000000000000000
      000000AD210000AD2100000000000000000000AD180000C6290000940000A5C6
      9400000000000000000000000000000000000000000029ADD60094F7FF0029AD
      D600ADDEEF00A5EFF700A5EFF700A5F7FF008CEFFF008CEFFF008CEFFF0073DE
      F7000073080018A5C6000000000000000000000000000021A500B5C6FF009CBD
      FF009CBDFF009CB5FF009CB5FF009CB5FF00638CF700638CF700638CF700638C
      F700526BF700526BF7000021A500000000000873100039BD6B0029BD5A00BDEF
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00009C0800009C0800005200000000000000000000000000000000
      00000000000000000000000000000000000031B5420000C62900009C0000008C
      0000000000000000000000000000000000000000000029ADD6009CFFFF0073DE
      F70029ADD60018A5C60018A5C60018A5C600ADDEEF008CF7FF0084EFFF000073
      08005AE78C000073080018A5C60000000000000000006B84C6000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5006B84C600000000000873100052C67B0042C6730029BD
      5A00A5E7BD00FFFFFF00F7FFF70084DEA50042BD5A0042BD5A0042BD5A0042BD
      5A0042BD5A0008A51800009C0800004200000000000000000000000000000000
      0000000000000000000000000000000000000000000000B5210000C629000094
      00008CBD7B000000000000000000000000000000000029ADD6009CFFFF0094F7
      FF0073DEF70073DEF70073DEF7006BDEF70029ADD600ADDEEF000073080052D6
      7B0042D66B0031C64A0000730800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087310004ABD6B0084DEA50021B5
      520021B5520094DEB500FFFFFF00E7F7EF0052C6730010AD310010AD310010AD
      310008A5290008A51800008C0800004200000000000000000000000000000000
      0000000000000000000000000000000000000000000052A54A0000C6290029AD
      390031B542000000000000000000000000000000000029ADD6009CFFFF0094F7
      FF0094F7FF0094F7FF0094F7FF0073DEF70073DEF70029ADD60018A5C600108C
      210031C64A00109C210018A5C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A53100ADE7C6006BCE
      8C0010AD4A0018B54A008CDEAD00FFFFFF00F7FFF70029BD520010A5310008A5
      290008A5210008AD1800006B0800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000029AD4A005AE7
      A50029AD39008CBD7B0000000000000000000000000029ADD600C6FFFF0094FF
      FF009CFFFF00D6FFFF00D6FFFF008CEFFF0094EFFF0073DEF70073DEF7000884
      100018AD29000884100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021A5310052C67300BDEF
      D60063CE8C0021B5520018B5520094DEB500ADE7C60021B5520010AD390010AD
      310010AD3100109C2100006B0800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031B5420000D6
      42008CBD7B000000000000000000000000000000000021ADD6009CDEEF00C6FF
      FF00C6FFFF009CDEEF0018ADD60018A5C60018A5C60018A5C60018A5C600088C
      100008A518000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000109C21006BCE
      8C00D6F7E7009CE7B50052C67B0039BD630029BD5A0031BD630031BD630021BD
      4A0010A531000063080000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5C6
      940000000000000000000000000000000000000000000000000031B5DE0029AD
      D60018A5C60018A5C60000000000000000000000000000000000088C100008A5
      1800088410000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004ABD
      63004ABD630094DEB500BDEFD600A5E7C6008CDEAD007BDE9C004AC67B00189C
      3900189C39000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000730800087B0800088C1000088C1000087B
      0800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021A5310039B5520042BD630042BD630029A54A00108C29000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFC00000000FC3F9FF900000000
      FC3F8FF300000000FC3F87E700000000FC3FC3CF00000000FC3FF11F00000000
      8001F83F000000008001FC7F000000008001F83F000000008001F19F00000000
      FC3FE3CF00000000FC3FC7E700000000FC3F8FFB00000000FC3F1FFF00000000
      FC3F3FFF00000000FFFFFFFF00000000FFFFF81FF8FFFFFFFFFFE007F87F8FFF
      FFFFC003F07F807FFFFF8001F03F800FFFFF8001E03F8007FFFF0000E01F8007
      80010000E01F800380010000F30F800380010000FF0F800180010000FF878001
      FFFF0000FF878001FFFF8001FFC38003FFFF8001FFC78007FFFFC003FFEFC3C7
      FFFFE007FFFFFE0FFFFFF81FFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object qryExpense: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    BeforeOpen = qryExpenseBeforeOpen
    BeforeInsert = qryExpenseBeforeInsert
    AfterInsert = qryExpenseAfterInsert
    BeforeEdit = qryExpenseBeforeEdit
    AfterEdit = qryExpenseAfterEdit
    BeforePost = qryExpenseBeforePost
    AfterPost = qryExpenseAfterPost
    BeforeCancel = qryExpenseBeforeCancel
    BeforeDelete = qryExpenseBeforeDelete
    AfterDelete = qryExpenseAfterDelete
    AfterScroll = qryExpenseAfterScroll
    Parameters = <
      item
        Name = 'YearId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM Acc.Expense'
      'WHERE ( YearId = :YearId )'
      'ORDER BY FormNo ')
    Left = 314
    Top = 7
    object qryExpenseExpID: TAutoIncField
      FieldName = 'ExpID'
    end
    object qryExpenseFormNo: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'FormNo'
    end
    object qryExpenseFormDate: TWideStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'FormDate'
      EditMask = '9999/99/99'
      Size = 10
    end
    object qryExpenseBudgetYear: TSmallintField
      DisplayLabel = #1576#1608#1583#1580#1607' '#1587#1575#1604
      FieldName = 'BudgetYear'
    end
    object qryExpenseCacther: TWideStringField
      DisplayLabel = #1578#1608#1587#1591
      FieldName = 'Cacther'
      Size = 100
    end
    object qryExpenseState: TSmallintField
      FieldName = 'State'
    end
    object qryExpenseKind: TSmallintField
      FieldName = 'Kind'
    end
    object qryExpenseComments: TWideStringField
      DisplayLabel = #1588#1585#1581' '#1593#1605#1608#1605#1610':'
      FieldName = 'Comments'
      Size = 120
    end
    object qryExpensePreference: TIntegerField
      FieldName = 'Preference'
    end
    object qryExpenseCTopicCode: TIntegerField
      FieldName = 'CTopicCode'
    end
    object qryExpenseDetailCode: TIntegerField
      FieldName = 'DetailCode'
    end
    object qryExpenseTopicCode: TIntegerField
      FieldName = 'TopicCode'
    end
    object qryExpensePayerTopicCode: TIntegerField
      FieldName = 'PayerTopicCode'
    end
    object qryExpensePayerDetailCode: TIntegerField
      FieldName = 'PayerDetailCode'
    end
    object qryExpensePayerCTopicCode: TIntegerField
      FieldName = 'PayerCTopicCode'
    end
    object qryExpense_DetailName: TStringField
      FieldKind = fkLookup
      FieldName = '_DetailName'
      LookupDataSet = qryDetailCodes
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName_L1'
      KeyFields = 'DetailCode'
      Size = 100
      Lookup = True
    end
    object qryExpense_CTopicName: TStringField
      FieldKind = fkLookup
      FieldName = '_CTopicName'
      LookupDataSet = qryCTopics
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName_L1'
      KeyFields = 'CTopicCode'
      Size = 100
      Lookup = True
    end
    object qryExpense_PMoeenName: TStringField
      FieldKind = fkLookup
      FieldName = '_PMoeenName'
      LookupDataSet = qryCategories
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName_L1'
      KeyFields = 'PayerTopicCode'
      Size = 250
      Lookup = True
    end
    object qryExpense_PDetailName: TStringField
      FieldKind = fkLookup
      FieldName = '_PDetailName'
      LookupDataSet = qryDetailCodes
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName_L1'
      KeyFields = 'PayerDetailCode'
      Size = 250
      Lookup = True
    end
    object qryExpense_PCTopicCode: TStringField
      FieldKind = fkLookup
      FieldName = '_PCTopicCode'
      LookupDataSet = qryCTopics
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName_L1'
      KeyFields = 'PayerCTopicCode'
      Size = 250
      Lookup = True
    end
    object qryExpenseCustDetailId: TIntegerField
      DisplayLabel = #1705#1583' '#1578#1601#1589#1740#1604#1740
      FieldName = 'CustDetailId'
      Required = True
    end
    object qryExpense_CustDetailName: TStringField
      FieldKind = fkLookup
      FieldName = '_CustDetailName'
      LookupDataSet = qryDetailCodes
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName_L1'
      KeyFields = 'CustDetailId'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qryExpensefirstUser: TWideStringField
      FieldName = 'firstUser'
      Size = 50
    end
    object qryExpenselastUser: TWideStringField
      FieldName = 'lastUser'
      Size = 50
    end
    object strngfldExpense_MoeenName: TStringField
      FieldKind = fkLookup
      FieldName = '_MoeenName'
      LookupDataSet = qryCategories
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName_L1'
      KeyFields = 'TopicCode'
      Size = 100
      Lookup = True
    end
    object intgrfldExpenseYearId: TIntegerField
      FieldName = 'YearId'
    end
    object qryExpenseStateChangeDate: TStringField
      FieldName = 'StateChangeDate'
      FixedChar = True
      Size = 10
    end
    object qryExpenseAidDate: TStringField
      FieldName = 'AidDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryExpenseAidNumber: TStringField
      FieldName = 'AidNumber'
      Size = 40
    end
    object qryExpenseChequeDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1670#1705
      FieldName = 'ChequeDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryExpenseChequeDueDate: TStringField
      DisplayLabel = #1578#1575#1585#1740#1582' '#1587#1585#1585#1587#1740#1583' '#1670#1705
      FieldName = 'ChequeDueDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
  end
  object srcExpense: TDataSource
    DataSet = qryExpense
    OnStateChange = srcExpenseStateChange
    Left = 450
    Top = 7
  end
  object qryExpenseItems: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qryExpenseItemsAfterInsert
    BeforePost = qryExpenseItemsBeforePost
    AfterPost = qryExpenseItemsAfterPost
    AfterDelete = qryExpenseItemsAfterDelete
    Parameters = <
      item
        Name = 'EID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      'SELECT *,(bed -  bes)  as mandeh  FROM Acc.ExpenseItems'
      'WHERE ( ExpID = :EID ) ')
    Left = 114
    Top = 224
    object qryExpenseItemsID: TAutoIncField
      Tag = 3
      FieldName = 'ID'
    end
    object qryExpenseItemsExpID: TIntegerField
      Tag = 3
      FieldName = 'ExpID'
    end
    object qryExpenseItemsCatcherItem: TWideStringField
      Tag = 3
      DisplayLabel = #1711#1610#1585#1606#1583#1607' '#1608#1580#1607
      FieldName = 'CatcherItem'
      Size = 80
    end
    object qryExpenseItemsDesc: TWideStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581
      DisplayWidth = 750
      FieldName = 'Desc'
      Size = 750
    end
    object qryExpenseItemsBed: TBCDField
      Tag = 3
      DisplayLabel = #1575#1589#1604' '#1605#1576#1604#1594
      FieldName = 'Bed'
      currency = True
      Precision = 19
    end
    object qryExpenseItemsBes: TBCDField
      Tag = 3
      DisplayLabel = #1603#1587#1608#1585#1575#1578
      FieldName = 'Bes'
      currency = True
      Precision = 19
    end
    object qryExpenseItemsItemDetailCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'ItemDetailCode'
    end
    object qryExpenseItemsmandeh: TBCDField
      Tag = 3
      FieldName = 'mandeh'
      ReadOnly = True
      Precision = 19
    end
  end
  object srcExpenseItems: TDataSource
    DataSet = qryExpenseItems
    Left = 218
    Top = 223
  end
  object qryDetailCodes: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select * from Acc.Details'#10)
    Left = 688
    Top = 13
  end
  object qryCTopics: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select * from Acc.CenterTopics'
      ''
      '')
    Left = 506
    Top = 65535
  end
  object ppDetail: TppDBPipeline
    DataSource = srcExpenseItems
    OpenDataSource = False
    UserName = 'ppDetail'
    Left = 472
    Top = 240
    object ppDetailppField1: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDetailppField2: TppField
      FieldAlias = 'ExpID'
      FieldName = 'ExpID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDetailppField3: TppField
      FieldAlias = 'CatcherItem'
      FieldName = 'CatcherItem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDetailppField4: TppField
      FieldAlias = 'Desc'
      FieldName = 'Desc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDetailppField5: TppField
      FieldAlias = 'Bed'
      FieldName = 'Bed'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDetailppField6: TppField
      FieldAlias = 'Bes'
      FieldName = 'Bes'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDetailppField7: TppField
      FieldAlias = 'ItemDetailCode'
      FieldName = 'ItemDetailCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDetailppField8: TppField
      FieldAlias = 'mandeh'
      FieldName = 'mandeh'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
  end
  object ppMaster: TppDBPipeline
    DataSource = srcExpense
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'Master'
    Left = 336
    Top = 216
    object ppMasterppField1: TppField
      FieldAlias = 'ExpID'
      FieldName = 'ExpID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppMasterppField2: TppField
      FieldAlias = 'FormNo'
      FieldName = 'FormNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppMasterppField3: TppField
      FieldAlias = 'FormDate'
      FieldName = 'FormDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppMasterppField4: TppField
      FieldAlias = 'BudgetYear'
      FieldName = 'BudgetYear'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppMasterppField5: TppField
      FieldAlias = 'Cacther'
      FieldName = 'Cacther'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppMasterppField6: TppField
      FieldAlias = 'State'
      FieldName = 'State'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppMasterppField7: TppField
      FieldAlias = 'Kind'
      FieldName = 'Kind'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppMasterppField8: TppField
      FieldAlias = 'Comments'
      FieldName = 'Comments'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppMasterppField9: TppField
      FieldAlias = 'Preference'
      FieldName = 'Preference'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppMasterppField10: TppField
      FieldAlias = 'CTopicCode'
      FieldName = 'CTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppMasterppField11: TppField
      FieldAlias = 'DetailCode'
      FieldName = 'DetailCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppMasterppField12: TppField
      FieldAlias = 'TopicCode'
      FieldName = 'TopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppMasterppField13: TppField
      FieldAlias = 'PayerTopicCode'
      FieldName = 'PayerTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppMasterppField14: TppField
      FieldAlias = 'PayerDetailCode'
      FieldName = 'PayerDetailCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppMasterppField15: TppField
      FieldAlias = 'PayerCTopicCode'
      FieldName = 'PayerCTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppMasterppField16: TppField
      FieldAlias = '_MoeenName'
      FieldName = '_MoeenName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppMasterppField17: TppField
      FieldAlias = '_DetailName'
      FieldName = '_DetailName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppMasterppField18: TppField
      FieldAlias = '_CTopicName'
      FieldName = '_CTopicName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppMasterppField19: TppField
      FieldAlias = '_PMoeenName'
      FieldName = '_PMoeenName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppMasterppField20: TppField
      FieldAlias = '_PDetailName'
      FieldName = '_PDetailName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppMasterppField21: TppField
      FieldAlias = '_PCTopicCode'
      FieldName = '_PCTopicCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppMasterppField22: TppField
      FieldAlias = 'CustDetailId'
      FieldName = 'CustDetailId'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppMasterppField23: TppField
      FieldAlias = '_CustDetailName'
      FieldName = '_CustDetailName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppMasterppField24: TppField
      FieldAlias = 'firstUser'
      FieldName = 'firstUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppMasterppField25: TppField
      FieldAlias = 'lastUser'
      FieldName = 'lastUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = ppDetail
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
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara\Saman\exe\Report\rptExpenseGarmsar.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    CachePages = True
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
    PreviewFormSettings.ZoomSetting = zs100Percent
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
    Left = 304
    Top = 277
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDetail'
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      PrintCount = 35
      mmBottomOffset = 0
      mmHeight = 13758
      mmPrintPosition = 50000
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'CatcherItem'
        DataPipeline = ppDetail
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDetail'
        mmHeight = 12171
        mmLeft = 171715
        mmTop = 529
        mmWidth = 24606
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Desc'
        DataPipeline = ppDetail
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppDetail'
        mmHeight = 12171
        mmLeft = 107156
        mmTop = 529
        mmWidth = 63765
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'Bed'
        DataPipeline = ppDetail
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDetail'
        mmHeight = 6519
        mmLeft = 81756
        mmTop = 0
        mmWidth = 24077
        BandType = 4
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Color = clGray
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 12965
        mmWidth = 196586
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'Bes'
        DataPipeline = ppDetail
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDetail'
        mmHeight = 6350
        mmLeft = 56886
        mmTop = 0
        mmWidth = 24077
        BandType = 4
        LayerName = Foreground
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.mmPadding = 0
        DataField = 'mandeh'
        DataPipeline = ppDetail
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDetail'
        mmHeight = 6350
        mmLeft = 30427
        mmTop = 0
        mmWidth = 24342
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand2: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 15081
      mmPrintPosition = 0
      object ppDBCalc3: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'Bes'
        DataPipeline = ppDetail
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDetail'
        mmHeight = 6350
        mmLeft = 56356
        mmTop = 265
        mmWidth = 24342
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc4: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'Bed'
        DataPipeline = ppDetail
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDetail'
        mmHeight = 6350
        mmLeft = 81492
        mmTop = 0
        mmWidth = 24342
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'mandeh'
        DataPipeline = ppDetail
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDetail'
        mmHeight = 6350
        mmLeft = 30427
        mmTop = 529
        mmWidth = 24342
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppPageStyle2: TppPageStyle
      Border.mmPadding = 0
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 282840
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        Pen.Width = 2
        mmHeight = 7673
        mmLeft = 265
        mmTop = 268553
        mmWidth = 197300
        BandType = 10
        LayerName = PageLayer1
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        Pen.Width = 2
        mmHeight = 8467
        mmLeft = 0
        mmTop = 33867
        mmWidth = 197115
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1711#1610#1585#1606#1583#1607' '#1608#1580#1607
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
        mmLeft = 172509
        mmTop = 34925
        mmWidth = 23283
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1585#1581
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
        mmLeft = 107421
        mmTop = 35190
        mmWidth = 63765
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1575#1589#1604' '#1605#1576#1604#1594
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
        mmLeft = 82021
        mmTop = 34925
        mmWidth = 24077
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1581#1604' '#1575#1605#1590#1575#1569
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
        mmLeft = 1323
        mmTop = 34925
        mmWidth = 28575
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 241830
        mmLeft = 80963
        mmTop = 34131
        mmWidth = 2381
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 241300
        mmLeft = 106363
        mmTop = 33867
        mmWidth = 2117
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 241565
        mmLeft = 55827
        mmTop = 34396
        mmWidth = 2117
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 234686
        mmLeft = 171450
        mmTop = 34396
        mmWidth = 2117
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LBCompanyName'
        OnGetText = ppLBCompanyNameGetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7112
        mmLeft = 75693
        mmTop = 1323
        mmWidth = 49699
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = #1587#1606#1600#1600#1583' '#1607#1586#1610#1606#1607' '#1585#1587#1605#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6604
        mmLeft = 87085
        mmTop = 8467
        mmWidth = 27178
        BandType = 10
        LayerName = PageLayer1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable1GetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 6350
        mmLeft = 13494
        mmTop = 12965
        mmWidth = 7673
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6350
        mmLeft = 20638
        mmTop = 0
        mmWidth = 5821
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = #1578#1608#1587#1591' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6615
        mmLeft = 179123
        mmTop = 27252
        mmWidth = 8996
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'Cacther'
        DataPipeline = ppMaster
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppMaster'
        mmHeight = 6011
        mmLeft = 78317
        mmTop = 27252
        mmWidth = 100542
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1605#1576#1604#1594' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6615
        mmLeft = 60854
        mmTop = 27252
        mmWidth = 6350
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        OnGetText = ppLabel10GetText
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Label10'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 5927
        mmLeft = 20638
        mmTop = 10054
        mmWidth = 57679
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = #1576#1608#1583#1580#1607' '#1587#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6011
        mmLeft = 180446
        mmTop = 1058
        mmWidth = 14309
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        OnGetText = ppLabel12GetText
        Border.mmPadding = 0
        Caption = 'Label12'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Badr'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6519
        mmLeft = 167640
        mmTop = 1058
        mmWidth = 12277
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1605#1578#1589#1583#1610' '#1575#1593#1578#1576#1575#1585#1575#1578
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
        mmLeft = 171450
        mmTop = 276490
        mmWidth = 24606
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = #1585#1574#1610#1587' '#1581#1587#1575#1576#1583#1575#1585#1610
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
        mmLeft = 85725
        mmTop = 276755
        mmWidth = 25929
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = #1588#1607#1585#1583#1575#1585
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
        mmLeft = 3704
        mmTop = 276226
        mmWidth = 9260
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1575#1606#1583#1607
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
        mmLeft = 31221
        mmTop = 35190
        mmWidth = 24606
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 235215
        mmLeft = 30427
        mmTop = 33602
        mmWidth = 2117
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line101'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 234950
        mmLeft = 196586
        mmTop = 33602
        mmWidth = 1588
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 234686
        mmLeft = 265
        mmTop = 34396
        mmWidth = 1588
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1603#1587#1608#1585#1575#1578
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
        mmLeft = 56092
        mmTop = 35190
        mmWidth = 24606
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'FormDate'
        DataPipeline = ppMaster
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppMaster'
        mmHeight = 6350
        mmLeft = 2910
        mmTop = 0
        mmWidth = 17198
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6435
        mmLeft = 20638
        mmTop = 6350
        mmWidth = 5292
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'FormNo'
        DataPipeline = ppMaster
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppMaster'
        mmHeight = 6350
        mmLeft = 2910
        mmTop = 6350
        mmWidth = 17198
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'Comments'
        DataPipeline = ppMaster
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppMaster'
        mmHeight = 5821
        mmLeft = 107686
        mmTop = 269611
        mmWidth = 88106
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = '_MoeenName'
        DataPipeline = ppMaster
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppMaster'
        mmHeight = 6011
        mmLeft = 122502
        mmTop = 7673
        mmWidth = 57150
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText17'
        AutoSize = True
        Border.mmPadding = 0
        DataField = '_DetailName'
        DataPipeline = ppMaster
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppMaster'
        mmHeight = 5969
        mmLeft = 179917
        mmTop = 14552
        mmWidth = 0
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText18'
        AutoSize = True
        Border.mmPadding = 0
        DataField = '_CTopicName'
        DataPipeline = ppMaster
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppMaster'
        mmHeight = 5969
        mmLeft = 180182
        mmTop = 20902
        mmWidth = 0
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText19'
        Border.mmPadding = 0
        DataField = 'Bed'
        DataPipeline = ppDetail
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'ppDetail'
        mmHeight = 6615
        mmLeft = 3704
        mmTop = 25929
        mmWidth = 24077
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc3'
        Border.mmPadding = 0
        DataField = 'Bed'
        DataPipeline = ppDetail
        DisplayFormat = '#,0;(#,0)'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        LookAhead = True
        DataPipelineName = 'ppDetail'
        mmHeight = 6350
        mmLeft = 29633
        mmTop = 27252
        mmWidth = 28840
        BandType = 10
        LayerName = PageLayer1
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'PageLayer1'
        LayerType = ltPage
        Index = 0
      end
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 1
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 140
    Top = 319
    object N11: TMenuItem
      Caption = #1670#1575#1662' 1'
      OnClick = N11Click
    end
    object N12: TMenuItem
      Caption = #1670#1575#1662' 2'
      OnClick = N12Click
    end
    object h1: TMenuItem
      Caption = #1670#1575#1662' 3'
      OnClick = h1Click
    end
  end
  object popPreDefinedDescs: TPopupMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Left = 394
    Top = 296
    object N111: TMenuItem
      Caption = '11'
    end
  end
  object qryCategories: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     CategoriesForUse_1.TopicCode, CategoriesForUse_1.Moee' +
        'nName_L1'
      'FROM         Acc.CategoriesForUse RIGHT OUTER JOIN'
      
        '                      Acc.CategoriesForUse AS CategoriesForUse_1' +
        ' ON Acc.CategoriesForUse.PrvTopicCode = CategoriesForUse_1.Topic' +
        'Code'
      'WHERE     (Acc.CategoriesForUse.PrvLevelID IS NULL)')
    Left = 600
    Top = 13
  end
end
