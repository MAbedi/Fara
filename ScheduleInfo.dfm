inherited ScheduleInfoF: TScheduleInfoF
  Left = 326
  Top = 160
  Caption = #1578#1593#1585#1610#1601' '#1608' '#1578#1583#1608#1610#1606' '#1575#1591#1604#1575#1593#1575#1578' '
  ClientHeight = 527
  ClientWidth = 778
  OnResize = FormResize
  ExplicitWidth = 794
  ExplicitHeight = 566
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 486
    Width = 778
    ExplicitTop = 486
    ExplicitWidth = 778
    object newPanel: TPanel
      Left = 543
      Top = 1
      Width = 234
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
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
      Left = 378
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
    object BitBtn6: TBitBtn
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      Action = ActPrint
      Caption = #1670#1575#1662
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 250
      Top = 8
      Width = 75
      Height = 25
      Action = actSendtoExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 4
    end
    object BitBtn3: TBitBtn
      Left = 172
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 5
    end
    object BitBtn5: TBitBtn
      Left = 94
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Width = 778
    Height = 57
    ExplicitWidth = 778
    ExplicitHeight = 57
    inherited lblCaption: TLabel
      Left = 670
      Height = 37
      ExplicitLeft = 674
    end
    object PnlMaster: TPanel
      Left = 1
      Top = 1
      Width = 336
      Height = 55
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object LblPerson1: TLabel
        Left = 123
        Top = 8
        Width = 48
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606
        FocusControl = EdtPersonID1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 24
        Top = 5
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object DBTextPersonID1: TDBText
        Left = 24
        Top = 32
        Width = 289
        Height = 17
        Color = 13948116
        DataField = 'InfoName'
        DataSource = srcMaster
        ParentColor = False
        Transparent = True
      end
      object EdtPersonID1: TDBEdit
        Left = 49
        Top = 5
        Width = 68
        Height = 21
        DataField = 'InfoId'
        DataSource = srcMaster
        TabOrder = 0
        OnKeyDown = EdtPersonID1KeyDown
      end
      object DBNavigator1: TDBNavigator
        Left = 178
        Top = 7
        Width = 132
        Height = 21
        DataSource = srcMaster
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 1
      end
    end
  end
  inherited Panel3: TPanel
    Top = 57
    Width = 778
    Height = 429
    ExplicitTop = 57
    ExplicitWidth = 778
    ExplicitHeight = 429
    object DBGrid1: TDBGrid
      Left = 417
      Top = 2
      Width = 359
      Height = 425
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = SrcScheduleInfo
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
          FieldName = 'InfoId'
          Title.Alignment = taCenter
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InfoName'
          Title.Alignment = taCenter
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WorkLoad_Amount'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WorkLoad_time'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StandardRate'
          Title.Alignment = taCenter
          Width = 84
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 415
      Height = 425
      Align = alClient
      TabOrder = 1
      object PnlName: TPanel
        Left = 1
        Top = 1
        Width = 413
        Height = 57
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label5: TLabel
          Left = 272
          Top = 8
          Width = 14
          Height = 13
          Caption = #1603#1583' '
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 272
          Top = 34
          Width = 66
          Height = 13
          Caption = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578
          FocusControl = DBEdit6
        end
        object DBEdit5: TDBEdit
          Left = 200
          Top = 6
          Width = 68
          Height = 21
          DataField = 'InfoId'
          DataSource = SrcScheduleInfo
          TabOrder = 0
        end
        object DBEdit6: TDBEdit
          Left = 18
          Top = 32
          Width = 250
          Height = 21
          DataField = 'InfoName'
          DataSource = SrcScheduleInfo
          TabOrder = 1
        end
      end
      object PnlKind: TPanel
        Left = 1
        Top = 58
        Width = 413
        Height = 30
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label1: TLabel
          Left = 273
          Top = 8
          Width = 42
          Height = 13
          Caption = #1606#1608#1593' '#1593#1575#1605#1604
        end
        object DBComboBox1: TDBComboBox
          Left = 168
          Top = 3
          Width = 101
          Height = 21
          DataField = 'Kind'
          DataSource = SrcScheduleInfo
          Items.Strings = (
            #1575#1589#1604#1610
            #1601#1585#1593#1610)
          TabOrder = 0
        end
      end
      object PnlNormal: TPanel
        Left = 1
        Top = 88
        Width = 413
        Height = 28
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object Label2: TLabel
          Left = 273
          Top = 7
          Width = 66
          Height = 13
          Caption = #1592#1585#1601#1610#1578' '#1575#1587#1605#1610
          FocusControl = DBEdit1
        end
        object DBEdit1: TDBEdit
          Left = 168
          Top = 3
          Width = 101
          Height = 21
          DataField = 'WorkLoad_Normal'
          DataSource = SrcScheduleInfo
          TabOrder = 0
        end
      end
      object PnlAmount: TPanel
        Left = 1
        Top = 116
        Width = 413
        Height = 29
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        object Label3: TLabel
          Left = 273
          Top = 7
          Width = 120
          Height = 13
          Caption = #1592#1585#1601#1610#1578' '#1602#1575#1576#1604' '#1583#1587#1578#1585#1587' '#1578#1593#1583#1575#1583
          FocusControl = DBEdit2
        end
        object DBEdit2: TDBEdit
          Left = 168
          Top = 3
          Width = 101
          Height = 21
          DataField = 'WorkLoad_Amount'
          DataSource = SrcScheduleInfo
          TabOrder = 0
        end
      end
      object PnlTime: TPanel
        Left = 1
        Top = 145
        Width = 413
        Height = 29
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 4
        object Label4: TLabel
          Left = 274
          Top = 7
          Width = 128
          Height = 13
          Caption = #1592#1585#1601#1610#1578' '#1602#1575#1576#1604' '#1583#1587#1578#1585#1587' '#1587#1575#1593#1578
          FocusControl = DBEdit3
        end
        object DBEdit3: TDBEdit
          Left = 169
          Top = 3
          Width = 101
          Height = 21
          DataField = 'WorkLoad_time'
          DataSource = SrcScheduleInfo
          TabOrder = 0
        end
      end
      object PnlRate: TPanel
        Left = 1
        Top = 174
        Width = 413
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 5
        object Label7: TLabel
          Left = 275
          Top = 5
          Width = 60
          Height = 13
          Caption = #1606#1585#1582' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
          FocusControl = DBEdit4
        end
        object DBEdit4: TDBEdit
          Left = 168
          Top = 2
          Width = 103
          Height = 21
          DataField = 'StandardRate'
          DataSource = SrcScheduleInfo
          TabOrder = 0
        end
      end
      object PnlLine: TPanel
        Left = 1
        Top = 201
        Width = 413
        Height = 29
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 6
        object Label8: TLabel
          Left = 275
          Top = 7
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = #1582#1591' '#1578#1608#1604#1610#1583
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton2: TSpeedButton
          Left = 180
          Top = 3
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton2Click
        end
        object DBText1: TDBText
          Left = 24
          Top = 8
          Width = 153
          Height = 17
          Color = 13948116
          DataField = '_ProcInFoName'
          DataSource = SrcScheduleInfo
          ParentColor = False
          Transparent = True
        end
        object DBEdit7: TDBEdit
          Left = 203
          Top = 4
          Width = 68
          Height = 21
          DataField = 'ProcInFoId'
          DataSource = SrcScheduleInfo
          TabOrder = 0
          OnKeyDown = DBEdit7KeyDown
        end
      end
      object PnlNote: TPanel
        Left = 1
        Top = 230
        Width = 413
        Height = 68
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 7
        object Label9: TLabel
          Left = 281
          Top = 6
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBMemo1: TDBMemo
          Left = 21
          Top = 6
          Width = 250
          Height = 61
          DataField = 'Comment'
          DataSource = SrcScheduleInfo
          TabOrder = 0
        end
      end
      object PnlSheet: TPanel
        Left = 1
        Top = 298
        Width = 413
        Height = 126
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 8
        object PageControl1: TPageControl
          Left = 0
          Top = 0
          Width = 413
          Height = 126
          ActivePage = TabAcc
          Align = alClient
          TabOrder = 0
          OnChange = PageControl1Change
          object TabSChedule: TTabSheet
            Caption = #1592#1585#1601#1610#1578' '#1602#1575#1576#1604' '#1583#1587#1578#1585#1587
            object DBGrid2: TDBGrid
              Tag = 111
              Left = 0
              Top = 0
              Width = 405
              Height = 65
              Align = alClient
              DataSource = SrcScheduleProCode
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
                  FieldName = 'ProcCode'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = '__StuffName'
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Width = 242
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ProcWordLoad'
                  Title.Alignment = taCenter
                  Width = 74
                  Visible = True
                end>
            end
            object Panel5: TPanel
              Left = 0
              Top = 65
              Width = 405
              Height = 33
              Align = alBottom
              TabOrder = 1
              object newPanel2: TPanel
                Left = 170
                Top = 1
                Width = 234
                Height = 31
                Align = alRight
                BevelOuter = bvNone
                TabOrder = 0
                object BitBtn2: TBitBtn
                  Left = 156
                  Top = 4
                  Width = 75
                  Height = 25
                  Action = DataSetInsert2
                  Caption = #1580#1583#1610#1583
                  TabOrder = 0
                end
                object BitBtn9: TBitBtn
                  Left = 78
                  Top = 4
                  Width = 75
                  Height = 25
                  Action = DataSetEdit2
                  Caption = #1608#1610#1585#1575#1610#1588
                  TabOrder = 1
                end
                object BitBtn10: TBitBtn
                  Left = 1
                  Top = 4
                  Width = 75
                  Height = 25
                  Action = DataSetDelete1
                  Caption = #1581#1584#1601
                  TabOrder = 2
                end
              end
              object okPanel2: TPanel
                Left = 5
                Top = 1
                Width = 165
                Height = 31
                Align = alRight
                BevelOuter = bvNone
                TabOrder = 1
                DesignSize = (
                  165
                  31)
                object BitBtn11: TBitBtn
                  Left = 88
                  Top = 4
                  Width = 75
                  Height = 25
                  Action = DataSetPost2
                  Anchors = [akTop, akRight]
                  Caption = #1578#1575#1574#1610#1583
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
                object BitBtn12: TBitBtn
                  Left = 8
                  Top = 4
                  Width = 75
                  Height = 25
                  Action = DataSetCancel2
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
          end
          object TabAcc: TTabSheet
            Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
            ImageIndex = 1
            DesignSize = (
              405
              98)
            object Label10: TLabel
              Left = 299
              Top = 6
              Width = 45
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1603#1583' '#1581#1587#1575#1576
              FocusControl = DBEdit8
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitLeft = 303
            end
            object SpeedButton3: TSpeedButton
              Left = 195
              Top = 1
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = SpeedButton3Click
              ExplicitLeft = 199
            end
            object DBText2: TDBText
              Left = 22
              Top = 4
              Width = 167
              Height = 16
              Anchors = [akTop, akRight]
              Color = 13948116
              DataField = '_TopicName'
              DataSource = SrcScheduleInfo
              ParentColor = False
              Transparent = True
              ExplicitLeft = 26
            end
            object DBText5: TDBText
              Left = 22
              Top = 54
              Width = 167
              Height = 16
              Anchors = [akTop, akRight]
              Color = 13948116
              DataField = '_CTopicName'
              DataSource = SrcScheduleInfo
              ParentColor = False
              Transparent = True
              ExplicitLeft = 26
            end
            object SpeedButton5: TSpeedButton
              Left = 195
              Top = 51
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = SpeedButton5Click
              ExplicitLeft = 199
            end
            object Label11: TLabel
              Left = 299
              Top = 56
              Width = 57
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
              FocusControl = DBEdit9
              ExplicitLeft = 303
            end
            object Label12: TLabel
              Left = 299
              Top = 83
              Width = 57
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'3'
              FocusControl = DBEdit10
              ExplicitLeft = 303
            end
            object SpeedButton6: TSpeedButton
              Left = 195
              Top = 77
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = SpeedButton6Click
              ExplicitLeft = 199
            end
            object DBText6: TDBText
              Left = 22
              Top = 81
              Width = 167
              Height = 16
              Anchors = [akTop, akRight]
              Color = 13948116
              DataField = '_CTopicName2'
              DataSource = SrcScheduleInfo
              ParentColor = False
              Transparent = True
              ExplicitLeft = 26
            end
            object Label13: TLabel
              Left = 299
              Top = 31
              Width = 85
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576
              FocusControl = DBEdit11
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ExplicitLeft = 303
            end
            object SpeedButton4: TSpeedButton
              Left = 195
              Top = 26
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Caption = '...'
              OnClick = SpeedButton4Click
              ExplicitLeft = 199
            end
            object DBText3: TDBText
              Left = 22
              Top = 29
              Width = 167
              Height = 16
              Anchors = [akTop, akRight]
              Color = 13948116
              DataField = '_DetailCode'
              DataSource = SrcScheduleInfo
              ParentColor = False
              Transparent = True
              ExplicitLeft = 26
            end
            object DBEdit8: TDBEdit
              Left = 223
              Top = 2
              Width = 70
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'acc_TopicCode'
              DataSource = SrcScheduleInfo
              TabOrder = 0
              OnKeyDown = DBEdit8KeyDown
            end
            object DBEdit9: TDBEdit
              Left = 223
              Top = 52
              Width = 70
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'Acc_CTopicCode1'
              DataSource = SrcScheduleInfo
              TabOrder = 2
              OnKeyDown = DBEdit9KeyDown
            end
            object DBEdit10: TDBEdit
              Left = 223
              Top = 79
              Width = 70
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'acc_CTopicCode2'
              DataSource = SrcScheduleInfo
              TabOrder = 3
              OnKeyDown = DBEdit10KeyDown
            end
            object DBEdit11: TDBEdit
              Left = 223
              Top = 27
              Width = 70
              Height = 21
              Anchors = [akTop, akRight]
              DataField = 'Acc_DetailCode'
              DataSource = SrcScheduleInfo
              TabOrder = 1
              OnKeyDown = DBEdit11KeyDown
            end
          end
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 467
    Top = 95
    inherited DataSetInsert1: TDataSetInsert
      DataSource = SrcScheduleInfo
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = SrcScheduleInfo
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = SrcScheduleInfo
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = SrcScheduleInfo
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = SrcScheduleInfo
    end
    object actSendtoExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendtoExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object ActPrint: TAction
      Caption = #1670#1575#1662
    end
    object DataSetPost2: TDataSetPost
      Category = 'Dataset'
      Caption = #1578#1575#1574#1610#1583
      DataSource = SrcScheduleProCode
    end
    object Action1: TAction
      Caption = 'Action1'
    end
    object DataSetInsert2: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      DataSource = SrcScheduleProCode
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = SrcScheduleProCode
    end
    object DataSetEdit2: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      DataSource = SrcScheduleProCode
    end
    object DataSetCancel2: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      DataSource = SrcScheduleProCode
    end
  end
  inherited ImageList1: TImageList
    Left = 550
    Top = 95
  end
  object qryScheduleInfo: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryScheduleInfoAfterInsert
    AfterPost = qryScheduleInfoAfterPost
    BeforeDelete = qryScheduleInfoBeforeDelete
    AfterDelete = qryScheduleInfoAfterDelete
    AfterScroll = qryScheduleInfoAfterScroll
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'MasterInfoID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *  '
      'FROM         ScheduleInfo'
      'WHERE ( Code =:FormType )  AND (MasterInfoID =:MasterInfoID )')
    Left = 695
    Top = 198
    object qryScheduleInfoCode: TIntegerField
      FieldName = 'Code'
    end
    object qryScheduleInfoInfoId: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'InfoId'
    end
    object qryScheduleInfoInfoName: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'InfoName'
      Size = 100
    end
    object qryScheduleInfoKind: TWordField
      FieldName = 'Kind'
      OnGetText = qryScheduleInfoKindGetText
      OnSetText = qryScheduleInfoKindSetText
    end
    object qryScheduleInfoWorkLoad_Normal: TFloatField
      Tag = 3
      DisplayLabel = #1592#1585#1601#1610#1578' '#1575#1587#1605#1610
      FieldName = 'WorkLoad_Normal'
    end
    object qryScheduleInfoWorkLoad_Amount: TFloatField
      Tag = 3
      DisplayLabel = #1592#1585#1601#1610#1578' '#1578#1593#1583#1575#1583
      FieldName = 'WorkLoad_Amount'
    end
    object qryScheduleInfoWorkLoad_time: TFloatField
      Tag = 3
      DisplayLabel = #1592#1585#1601#1610#1578' '#1603#1575#1585#1603#1585#1583
      FieldName = 'WorkLoad_time'
    end
    object qryScheduleInfoStandardRate: TBCDField
      Tag = 3
      DisplayLabel = #1606#1585#1582' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
      FieldName = 'StandardRate'
      currency = True
      Precision = 19
    end
    object qryScheduleInfoProcInFoId: TIntegerField
      FieldName = 'ProcInFoId'
    end
    object qryScheduleInfoComment: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      FieldName = 'Comment'
      Size = 1000
    end
    object qryScheduleInfoScheduleId: TIntegerField
      FieldName = 'ScheduleId'
    end
    object qryScheduleInfoAcc_TopicCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576
      FieldName = 'Acc_TopicCode'
    end
    object qryScheduleInfoAcc_DetailCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'Acc_DetailCode'
    end
    object qryScheduleInfoAcc_CTopicCode1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' 1'
      FieldName = 'Acc_CTopicCode1'
    end
    object qryScheduleInfoAcc_CTopicCode2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' 2'
      FieldName = 'Acc_CTopicCode2'
    end
    object qryScheduleInfo_TopicName: TStringField
      FieldKind = fkLookup
      FieldName = '_TopicName'
      LookupDataSet = DmF.qryAccTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'Acc_TopicCode'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryScheduleInfo_CTopicName: TStringField
      FieldKind = fkLookup
      FieldName = '_CTopicName'
      LookupDataSet = DmF.qryAccCenterTopics
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName'
      KeyFields = 'Acc_CTopicCode1'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryScheduleInfo_CTopicName2: TStringField
      FieldKind = fkLookup
      FieldName = '_CTopicName2'
      LookupDataSet = DmF.qryAccCenterTopics2
      LookupKeyFields = 'CTopicCode2'
      LookupResultField = 'CTopicName2'
      KeyFields = 'Acc_CTopicCode2'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryScheduleInfo_DetailCode: TStringField
      FieldKind = fkLookup
      FieldName = '_DetailCode'
      LookupDataSet = DmF.qryAccDetailCode
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName'
      KeyFields = 'Acc_DetailCode'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryScheduleInfo_ProcInFoName: TStringField
      FieldKind = fkLookup
      FieldName = '_ProcInFoName'
      LookupDataSet = qryProcInFoId
      LookupKeyFields = 'InfoId'
      LookupResultField = 'InfoName'
      KeyFields = 'ProcInFoId'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryScheduleInfoMasterInfoID: TIntegerField
      FieldName = 'MasterInfoID'
    end
  end
  object SrcScheduleInfo: TDataSource
    DataSet = qryScheduleInfo
    OnStateChange = SrcScheduleInfoStateChange
    Left = 573
    Top = 216
  end
  object qryMaster: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterScroll = qryMasterAfterScroll
    Parameters = <
      item
        Name = 'MasterInfoID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     InfoId, InfoName'
      'FROM         ScheduleInfo'
      'WHERE     (Code =:MasterInfoID)')
    Left = 384
    Top = 9
    object qryMasterInfoId: TIntegerField
      FieldName = 'InfoId'
    end
    object qryMasterInfoName: TStringField
      FieldName = 'InfoName'
      Size = 100
    end
  end
  object srcMaster: TDataSource
    DataSet = qryMaster
    Left = 469
    Top = 12
  end
  object qryInitForm: TADOQuery
    Connection = DmF.adcBSell
    Parameters = <
      item
        Name = 'FormType'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         ScheduleType'
      'WHERE    Code = :FormType')
    Left = 683
    Top = 96
    object qryInitFormCode: TIntegerField
      FieldName = 'Code'
    end
    object qryInitFormName: TStringField
      FieldName = 'Name'
      Size = 100
    end
    object qryInitFormWorkload_Normal: TWordField
      FieldName = 'Workload_Normal'
    end
    object qryInitFormWorkload_Time: TWordField
      FieldName = 'Workload_Time'
    end
    object qryInitFormWorkload_Amountd: TWordField
      FieldName = 'Workload_Amountd'
    end
    object qryInitFormStandardRate: TWordField
      FieldName = 'StandardRate'
    end
    object qryInitFormNote: TWordField
      FieldName = 'Note'
    end
    object qryInitFormAccRelatedActive: TWordField
      FieldName = 'AccRelatedActive'
    end
    object qryInitFormKindActive: TWordField
      FieldName = 'KindActive'
    end
    object qryInitFormProc_Line_Active: TWordField
      FieldName = 'Proc_Line_Active'
    end
    object qryInitFormReportName1: TStringField
      FieldName = 'ReportName1'
      Size = 100
    end
    object qryInitFormReportName2: TStringField
      FieldName = 'ReportName2'
      Size = 100
    end
    object qryInitFormMasterNo: TIntegerField
      FieldName = 'MasterNo'
    end
    object qryInitFormProcRelatedActive: TWordField
      FieldName = 'ProcRelatedActive'
    end
  end
  object qryProcInFoId: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     InfoId, InfoName'
      'FROM         ScheduleInfo'
      'WHERE     (Code = 7)')
    Left = 472
    Top = 209
    object qryProcInFoIdInfoId: TIntegerField
      FieldName = 'InfoId'
    end
    object qryProcInFoIdInfoName: TStringField
      FieldName = 'InfoName'
      Size = 100
    end
  end
  object qryScheduleProCode: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qryScheduleProCodeAfterInsert
    AfterEdit = qryScheduleProCodeAfterEdit
    BeforePost = qryScheduleProCodeBeforePost
    BeforeDelete = qryScheduleProCodeBeforeDelete
    AfterDelete = qryScheduleProCodeAfterDelete
    Parameters = <
      item
        Name = 'SchId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 17
      end>
    SQL.Strings = (
      'SELECT     ScheduleId, ProcCode, ProcWordLoad'
      'FROM         ScheduleProCode'
      'WHERE     (ScheduleId =:SchId)')
    Left = 490
    Top = 386
    object qryScheduleProCodeScheduleId: TIntegerField
      FieldName = 'ScheduleId'
    end
    object qryScheduleProCodeProcCode: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1581#1589#1608#1604
      FieldName = 'ProcCode'
    end
    object qryScheduleProCodeProcWordLoad: TFloatField
      DisplayLabel = #1592#1585#1601#1610#1578' '#1578#1608#1604#1610#1583
      FieldName = 'ProcWordLoad'
    end
    object qryScheduleProCode__StuffName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1581#1589#1608#1604
      FieldKind = fkLookup
      FieldName = '__StuffName'
      LookupDataSet = qryStuffCoding
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'ProcCode'
      LookupCache = True
      Size = 100
      Lookup = True
    end
  end
  object SrcScheduleProCode: TDataSource
    DataSet = qryScheduleProCode
    OnStateChange = SrcScheduleProCodeStateChange
    Left = 605
    Top = 396
  end
  object qryStuffCoding: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     StuffCoding.c_StuffCode, StuffCoding.c_StuffName, Sto' +
        'res.StoreKind'
      'FROM         StuffCoding INNER JOIN'
      
        '                      StoreStuffs ON StuffCoding.c_StuffCode = S' +
        'toreStuffs.c_StuffCode INNER JOIN'
      
        '                      Stores ON StoreStuffs.n_StoreID = Stores.n' +
        '_StoreID'
      'WHERE     (Stores.StoreKind IN (1, 2))')
    Left = 695
    Top = 390
    object qryStuffCodingc_StuffCode: TLargeintField
      FieldName = 'c_StuffCode'
    end
    object qryStuffCodingc_StuffName: TStringField
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qryStuffCodingStoreKind: TWordField
      FieldName = 'StoreKind'
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = SrcScheduleInfo
    UserName = 'DBPipeline1'
    Left = 680
    Top = 265
    MasterDataPipelineName = 'ppDBPipeline2'
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PassSetting = psTwoPass
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
    PrinterSetup.mmPaperHeight = 216000
    PrinterSetup.mmPaperWidth = 279000
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'D:\Projects\Fara\BSell\Exe\Report\ReportCost\RepSchulesInfo4-2.r' +
      'tm'
    Units = utMillimeters
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
    Left = 496
    Top = 287
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppHeaderBand2: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 24342
      mmPrintPosition = 0
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable2GetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 4233
        mmTop = 3175
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        OnGetText = ppLabel7GetText
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
        mmHeight = 6350
        mmLeft = 106892
        mmTop = 0
        mmWidth = 52123
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1608#1590#1593#1610#1578' '#1575#1591#1604#1575#1593#1575#1578
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
        mmLeft = 114829
        mmTop = 6085
        mmWidth = 36513
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        OnGetText = ppLabel9GetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6350
        mmLeft = 4233
        mmTop = 8731
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'InfoId'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 256646
        mmTop = 0
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'InfoName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 209815
        mmTop = 0
        mmWidth = 45773
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'StandardRate'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 188384
        mmTop = 0
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'Acc_TopicCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 174361
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'Acc_DetailCode'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 126207
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Acc_CTopicCode1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 76994
        mmTop = 0
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'Acc_CTopicCode2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 32279
        mmTop = 0
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = '_TopicName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 138907
        mmTop = 0
        mmWidth = 35190
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = '_DetailCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 89429
        mmTop = 0
        mmWidth = 36513
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = '_CTopicName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 44979
        mmTop = 0
        mmWidth = 31750
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = '_CTopicName2'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 0
        mmTop = 265
        mmWidth = 32015
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand2: TppFooterBand
      Border.mmPadding = 0
      PrintOnFirstPage = False
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 266300
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 1852
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'InfoId'
      DataPipeline = ppDBPipeline2
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline2'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 17463
        mmPrintPosition = 0
        object ppDBText12: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText11'
          Border.mmPadding = 0
          DataField = 'InfoName'
          DataPipeline = ppDBPipeline2
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 5821
          mmLeft = 142346
          mmTop = 1058
          mmWidth = 78846
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine5: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line1'
          Border.mmPadding = 0
          ParentWidth = True
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 0
          mmTop = 15875
          mmWidth = 266300
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel18: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label6'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578
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
          mmLeft = 209815
          mmTop = 10848
          mmWidth = 45773
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine7: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line2'
          Border.mmPadding = 0
          Pen.Color = clGray
          Pen.Width = 2
          ParentWidth = True
          Weight = 1.500000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 10583
          mmWidth = 266300
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel23: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label12'
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
          mmLeft = 255588
          mmTop = 12965
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel24: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label3'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '
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
          mmLeft = 256646
          mmTop = 10583
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel1: TppLabel
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
          mmHeight = 5292
          mmLeft = 208492
          mmTop = 14552
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label5'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1606#1585#1582' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
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
          mmLeft = 188384
          mmTop = 10848
          mmWidth = 20108
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel3: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label7'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1578#1601#1589#1610#1604#1610'2'#39' 2'
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
          mmLeft = 0
          mmTop = 11113
          mmWidth = 43127
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel4: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label8'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1578#1601#1589#1610#1604#1610'2'#39' 1'
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
          mmLeft = 44715
          mmTop = 11113
          mmWidth = 43127
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel5: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label9'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1578#1601#1589#1610#1604#1610
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
          mmLeft = 89429
          mmTop = 11113
          mmWidth = 48683
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel6: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label11'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1581#1587#1575#1576
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
          mmLeft = 138907
          mmTop = 11113
          mmWidth = 48683
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel10: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label13'
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
          mmLeft = 43392
          mmTop = 12965
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel11: TppLabel
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
          mmHeight = 5292
          mmLeft = 88371
          mmTop = 13494
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel12: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label15'
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
          mmLeft = 138113
          mmTop = 14023
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel13: TppLabel
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
          mmLeft = 187325
          mmTop = 14552
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel14: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label17'
          AutoSize = False
          Border.mmPadding = 0
          Caption = ' '#1603#1583' '#1608' '#1593#1606#1608#1575#1606'  '#1711#1585#1608#1607'  '#1575#1591#1604#1575#1593#1575#1578' :'
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
          mmLeft = 228336
          mmTop = 794
          mmWidth = 36777
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText13: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText13'
          Border.mmPadding = 0
          DataField = 'InfoId'
          DataPipeline = ppDBPipeline2
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline2'
          mmHeight = 6350
          mmLeft = 221192
          mmTop = 794
          mmWidth = 6615
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 2117
        mmPrintPosition = 0
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line3'
          Border.mmPadding = 0
          ParentWidth = True
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 0
          mmTop = 0
          mmWidth = 266300
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
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
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcMaster
    UserName = 'DBPipeline2'
    Left = 576
    Top = 273
    object ppDBPipeline2ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'InfoId'
      FieldName = 'InfoId'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'InfoName'
      FieldName = 'InfoName'
      FieldLength = 80
      DisplayWidth = 80
      Position = 1
    end
  end
end
