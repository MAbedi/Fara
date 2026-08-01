inherited ScheduleTimeWorksF: TScheduleTimeWorksF
  Left = 255
  Top = 87
  Caption = #1711#1586#1575#1585#1588' '#1603#1575#1585#1603#1585#1583' '#1593#1608#1575#1605#1604' '#1578#1608#1604#1610#1583#1610' '#1608' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578
  ClientHeight = 511
  ClientWidth = 806
  OnResize = FormResize
  ExplicitWidth = 822
  ExplicitHeight = 550
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 470
    Width = 806
    TabOrder = 3
    ExplicitTop = 470
    ExplicitWidth = 806
    object newPanel: TPanel
      Left = 488
      Top = 1
      Width = 317
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object BtnInsert: TBitBtn
        Left = 238
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 160
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BtnDelete: TBitBtn
        Left = 83
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Caption = #1581#1584#1601
        TabOrder = 2
      end
      object BitBtn2: TBitBtn
        Left = 5
        Top = 8
        Width = 75
        Height = 25
        Action = actChangeState
        Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578
        TabOrder = 3
      end
    end
    object okPanel: TPanel
      Left = 323
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
    object BitBtn5: TBitBtn
      Left = 94
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 3
    end
    object BitBtn3: TBitBtn
      Left = 172
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
    end
    object BitBtn1: TBitBtn
      Left = 250
      Top = 8
      Width = 75
      Height = 25
      Action = actSendToExcel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 5
    end
    object BitBtn6: TBitBtn
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Caption = #1670#1575#1662
      TabOrder = 6
    end
    object DBNavigator1: TDBNavigator
      Left = 407
      Top = 8
      Width = 204
      Height = 25
      DataSource = SrcScheduleTimeWorks
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akBottom]
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
    Width = 806
    Height = 65
    TabOrder = 0
    ExplicitWidth = 806
    ExplicitHeight = 65
    inherited ImgTemplate: TImage
      Left = 772
      ExplicitLeft = 772
    end
    inherited lblCaption: TLabel
      Left = 698
      Height = 45
      ExplicitLeft = 698
    end
    object Label1: TLabel
      Left = 143
      Top = 10
      Width = 30
      Height = 13
      Caption = #1588#1605#1575#1585#1607
    end
    object Label2: TLabel
      Left = 144
      Top = 34
      Width = 21
      Height = 13
      Caption = #1578#1575#1585#1610#1582
    end
    object Label3: TLabel
      Left = 293
      Top = 10
      Width = 34
      Height = 13
      Caption = #1608#1590#1593#1610#1578
    end
    object SpeedButton2: TSpeedButton
      Left = 48
      Top = 8
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton2Click
    end
    object DBEdit1: TDBEdit
      Left = 72
      Top = 8
      Width = 65
      Height = 21
      DataField = 'WorkNo'
      DataSource = SrcScheduleTimeWorks
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 48
      Top = 32
      Width = 89
      Height = 21
      DataField = 'WorkDate'
      DataSource = SrcScheduleTimeWorks
      TabOrder = 1
    end
    object DBEdit13: TDBEdit
      Left = 200
      Top = 8
      Width = 89
      Height = 19
      TabStop = False
      Ctl3D = False
      DataField = 'State'
      DataSource = SrcScheduleTimeWorks
      ParentCtl3D = False
      TabOrder = 2
    end
  end
  inherited Panel3: TPanel
    Top = 153
    Width = 806
    Height = 317
    ExplicitTop = 153
    ExplicitWidth = 806
    ExplicitHeight = 317
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 802
      Height = 313
      ActivePage = TabSheet1
      Align = alClient
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #1603#1575#1585#1603#1585#1583' '#1711#1586#1575#1585#1588' '#1578#1608#1604#1610#1583
        DesignSize = (
          794
          285)
        object Label4: TLabel
          Left = 726
          Top = 242
          Width = 56
          Height = 13
          Anchors = [akRight, akBottom]
          Caption = #1605#1583#1604' '#1605#1581#1589#1608#1604
          ExplicitLeft = 734
          ExplicitTop = 243
        end
        object Label9: TLabel
          Left = 726
          Top = 265
          Width = 68
          Height = 13
          Anchors = [akRight, akBottom]
          Caption = #1587#1601#1575#1585#1588' '#1583#1607#1606#1583#1607
          ExplicitLeft = 734
          ExplicitTop = 266
        end
        object DBGrid1: TDBGrid
          Tag = 111
          Left = 0
          Top = 0
          Width = 794
          Height = 213
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = SrcScheduleWorksItems
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnColEnter = DBGrid1ColEnter
          OnDrawColumnCell = DBGrid1DrawColumnCell
          OnEditButtonClick = DBGrid1EditButtonClick
          OnKeyPress = DBGrid1KeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'ProcStuffCoding'
              Title.Alignment = taCenter
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_c_StuffName'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 95
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'ProductModel'
              Title.Alignment = taCenter
              Width = 71
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'OrderId'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_OrderName'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 76
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'TrancFormId'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'WorkTime'
              Title.Alignment = taCenter
              Width = 39
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ProcAmount'
              Title.Alignment = taCenter
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LossAmount1'
              Title.Alignment = taCenter
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LossAmount2'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_Sum'
              ReadOnly = True
              Title.Alignment = taCenter
              Visible = True
            end>
        end
        object DBGrid2: TDBGrid
          Left = 0
          Top = 213
          Width = 794
          Height = 22
          Align = alTop
          Color = clCream
          DataSource = SrcSum
          Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 's_u_m'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'WorkTime'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ProcAmount'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LossAmount1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LossAmount2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_Sum'
              Visible = True
            end>
        end
        object DBEdit3: TDBEdit
          Left = 357
          Top = 241
          Width = 364
          Height = 19
          TabStop = False
          Anchors = [akRight, akBottom]
          Ctl3D = False
          DataField = '__ProductName'
          DataSource = SrcScheduleWorksItems
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 357
          Top = 265
          Width = 364
          Height = 19
          TabStop = False
          Anchors = [akRight, akBottom]
          Ctl3D = False
          DataField = '_OrderName'
          DataSource = SrcScheduleWorksItems
          ParentCtl3D = False
          TabOrder = 3
        end
        object BitShowFormol: TBitBtn
          Left = 11
          Top = 262
          Width = 75
          Height = 25
          Action = actShowFormol
          Anchors = [akLeft, akBottom]
          Caption = #1601#1585#1605#1608#1604' '#1587#1575#1582#1578
          TabOrder = 4
        end
        object BitBtn12: TBitBtn
          Left = 93
          Top = 262
          Width = 75
          Height = 25
          Action = DataSetDelete_WorksItem
          Anchors = [akLeft, akBottom]
          Caption = #1581#1584#1601' '#1585#1583#1610#1601
          TabOrder = 5
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1711#1586#1575#1585#1588' '#1578#1608#1602#1601#1575#1578
        ImageIndex = 1
        object DBGrid3: TDBGrid
          Tag = 111
          Left = 0
          Top = 0
          Width = 794
          Height = 233
          Align = alClient
          DataSource = SrcScheduleTimeLossItems
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid3DrawColumnCell
          OnEditButtonClick = DBGrid3EditButtonClick
          OnKeyPress = DBGrid3KeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'LoseId'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_LoseName'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 197
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LossTime'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LossCommant'
              Title.Alignment = taCenter
              Width = 228
              Visible = True
            end>
        end
        object StatusBar1: TStatusBar
          Left = 0
          Top = 266
          Width = 794
          Height = 19
          Panels = <
            item
              Width = 50
            end>
        end
        object Panel5: TPanel
          Left = 0
          Top = 233
          Width = 794
          Height = 33
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          DesignSize = (
            794
            33)
          object Label8: TLabel
            Left = 725
            Top = 9
            Width = 55
            Height = 13
            Anchors = [akRight, akBottom]
            Caption = #1588#1600#1600#1585#1581' '#1578#1608#1602#1601
            ExplicitLeft = 741
          end
          object DBEdit6: TDBEdit
            Left = 141
            Top = 8
            Width = 577
            Height = 19
            Anchors = [akLeft, akRight, akBottom]
            Ctl3D = False
            DataField = 'LossCommant'
            DataSource = SrcScheduleTimeLossItems
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
          object BitBtn9: TBitBtn
            Left = 24
            Top = 6
            Width = 75
            Height = 25
            Action = DataSetDelete_LossTime
            Anchors = [akLeft, akBottom]
            Caption = #1581#1584#1601' '#1585#1583#1610#1601
            TabOrder = 1
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = #1590#1575#1610#1593#1575#1578' '#1605#1608#1575#1583
        ImageIndex = 2
        object DBGrid4: TDBGrid
          Tag = 111
          Left = 0
          Top = 0
          Width = 794
          Height = 233
          Align = alClient
          DataSource = SrcScheduleStuffLossItems
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid4DrawColumnCell
          OnEditButtonClick = DBGrid4EditButtonClick
          OnKeyPress = DBGrid4KeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'LossStuffCoding'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_LossStuffName'
              ReadOnly = True
              Title.Alignment = taCenter
              Width = 229
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LossEntity'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LossWeight'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LossNote'
              Title.Alignment = taCenter
              Width = 189
              Visible = True
            end>
        end
        object StatusBar2: TStatusBar
          Left = 0
          Top = 266
          Width = 794
          Height = 19
          Panels = <
            item
              Width = 400
            end
            item
              Width = 50
            end>
        end
        object Panel6: TPanel
          Left = 0
          Top = 233
          Width = 794
          Height = 33
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          DesignSize = (
            794
            33)
          object Label10: TLabel
            Left = 715
            Top = 9
            Width = 65
            Height = 13
            Anchors = [akRight, akBottom]
            Caption = #1588#1600#1600#1585#1581' '#1590#1575#1610#1593#1575#1578
            ExplicitLeft = 731
          end
          object DBEdit14: TDBEdit
            Left = 141
            Top = 8
            Width = 570
            Height = 19
            Anchors = [akLeft, akRight, akBottom]
            Ctl3D = False
            DataField = 'LossNote'
            DataSource = SrcScheduleStuffLossItems
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
          object BitBtn10: TBitBtn
            Left = 24
            Top = 6
            Width = 75
            Height = 25
            Action = DataSetDelete_StuffLoss
            Anchors = [akLeft, akBottom]
            Caption = #1581#1584#1601' '#1585#1583#1610#1601
            TabOrder = 1
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = #1711#1586#1575#1585#1588' '#1662#1585#1587#1606#1604'  / '#1711#1585#1608#1607#1607#1575#1610' '#1588#1594#1604#1610
        ImageIndex = 3
        object DBGrid5: TDBGrid
          Tag = 111
          Left = 0
          Top = 0
          Width = 794
          Height = 233
          Align = alClient
          DataSource = SrcScheduleTimePerson
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid5DrawColumnCell
          OnEditButtonClick = DBGrid5EditButtonClick
          OnKeyPress = DBGrid5KeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'PersonId'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_PersonName'
              Title.Alignment = taCenter
              Width = 168
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Proc_Entity'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Proc_Time'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Proc_Note'
              Title.Alignment = taCenter
              Width = 240
              Visible = True
            end>
        end
        object StatusBar3: TStatusBar
          Left = 0
          Top = 266
          Width = 794
          Height = 19
          Panels = <
            item
              Width = 400
            end
            item
              Width = 50
            end>
        end
        object Panel4: TPanel
          Left = 0
          Top = 233
          Width = 794
          Height = 33
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          DesignSize = (
            794
            33)
          object Label11: TLabel
            Left = 704
            Top = 9
            Width = 76
            Height = 13
            Anchors = [akRight, akBottom]
            Caption = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
            ExplicitLeft = 720
          end
          object DBEdit15: TDBEdit
            Left = 129
            Top = 8
            Width = 569
            Height = 19
            TabStop = False
            Anchors = [akLeft, akRight, akBottom]
            Ctl3D = False
            DataField = 'Proc_Note'
            DataSource = SrcScheduleTimePerson
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
          object BitBtn11: TBitBtn
            Left = 24
            Top = 6
            Width = 75
            Height = 25
            Action = DataSetDelete_person
            Anchors = [akLeft, akBottom]
            Caption = #1581#1584#1601' '#1585#1583#1610#1601
            TabOrder = 1
          end
        end
      end
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 65
    Width = 806
    Height = 88
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label5: TLabel
      Left = 139
      Top = 9
      Width = 64
      Height = 13
      Caption = #1588#1605#1575#1585#1607' '#1588#1610#1601#1578
    end
    object Label6: TLabel
      Left = 139
      Top = 35
      Width = 78
      Height = 13
      Caption = #1588#1605#1575#1585#1607' '#1585#1587#1610#1583' '#1575#1606#1576#1575#1585
    end
    object Label7: TLabel
      Left = 139
      Top = 62
      Width = 69
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1585#1587#1610#1583' '#1575#1606#1576#1575#1585
    end
    object GroupBox2: TGroupBox
      Left = 206
      Top = 0
      Width = 300
      Height = 88
      Align = alRight
      Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1582#1591' '#1578#1608#1604#1610#1583#1610
      TabOrder = 1
      DesignSize = (
        300
        88)
      object SpeedButton1: TSpeedButton
        Left = 191
        Top = 22
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object DBEdit4: TDBEdit
        Left = 215
        Top = 23
        Width = 66
        Height = 19
        Anchors = [akTop, akRight]
        Ctl3D = False
        DataField = 'ProcCode'
        DataSource = SrcScheduleTimeWorks
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        OnKeyDown = DBEdit4KeyDown
      end
      object DBEdit9: TDBEdit
        Left = 10
        Top = 46
        Width = 271
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Ctl3D = True
        DataField = '_ProcName'
        DataSource = SrcScheduleTimeWorks
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
    end
    object DBEdit7: TDBEdit
      Left = 46
      Top = 7
      Width = 89
      Height = 21
      DataField = 'ShiftNo'
      DataSource = SrcScheduleTimeWorks
      TabOrder = 2
    end
    object DBEdit8: TDBEdit
      Left = 46
      Top = 34
      Width = 89
      Height = 21
      DataField = 'ReciptNo'
      DataSource = SrcScheduleTimeWorks
      TabOrder = 3
    end
    object DBEdit10: TDBEdit
      Left = 46
      Top = 61
      Width = 89
      Height = 21
      DataField = 'ReciptDate'
      DataSource = SrcScheduleTimeWorks
      TabOrder = 4
    end
    object GroupBox1: TGroupBox
      Left = 506
      Top = 0
      Width = 300
      Height = 88
      Align = alRight
      Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578' / '#1593#1608#1575#1605#1604' '#1578#1608#1604#1610#1583
      TabOrder = 0
      DesignSize = (
        300
        88)
      object SpeedButton3: TSpeedButton
        Left = 191
        Top = 22
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = SpeedButton3Click
      end
      object DBEdit11: TDBEdit
        Left = 215
        Top = 23
        Width = 66
        Height = 19
        Anchors = [akTop, akRight]
        Ctl3D = False
        DataField = 'MashinID'
        DataSource = SrcScheduleTimeWorks
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        OnKeyDown = DBEdit11KeyDown
      end
      object DBEdit12: TDBEdit
        Left = 10
        Top = 46
        Width = 271
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Ctl3D = True
        DataField = '_MashinName'
        DataSource = SrcScheduleTimeWorks
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  inherited ActionList: TActionList
    Left = 576
    inherited DataSetInsert1: TDataSetInsert
      DataSource = SrcScheduleTimeWorks
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = SrcScheduleTimeWorks
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = SrcScheduleTimeWorks
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = SrcScheduleTimeWorks
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = SrcScheduleTimeWorks
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
    object actChangeState: TAction
      Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578
      OnExecute = actChangeStateExecute
    end
    object actShowFormol: TAction
      Caption = #1601#1585#1605#1608#1604' '#1587#1575#1582#1578
      OnExecute = actShowFormolExecute
    end
    object DataSetDelete_LossTime: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1585#1583#1610#1601
      DataSource = SrcScheduleTimeLossItems
    end
    object DataSetDelete_StuffLoss: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1585#1583#1610#1601
      DataSource = SrcScheduleStuffLossItems
    end
    object DataSetDelete_person: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1585#1583#1610#1601
      DataSource = SrcScheduleTimePerson
    end
    object DataSetDelete_WorksItem: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601' '#1585#1583#1610#1601
      DataSource = SrcScheduleWorksItems
    end
  end
  inherited ImageList1: TImageList
    Left = 632
  end
  object qryScheduleTimeWorks: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryScheduleTimeWorksAfterInsert
    AfterPost = qryScheduleTimeWorksAfterPost
    BeforeCancel = qryScheduleTimeWorksBeforeCancel
    BeforeDelete = qryScheduleTimeWorksBeforeDelete
    AfterDelete = qryScheduleTimeWorksAfterDelete
    AfterScroll = qryScheduleTimeWorksAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT   *'
      'FROM       ScheduleTimeWorks')
    Left = 488
    Top = 24
    object qryScheduleTimeWorksWorkId: TIntegerField
      FieldName = 'WorkId'
    end
    object qryScheduleTimeWorksWorkNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'WorkNo'
    end
    object qryScheduleTimeWorksWorkDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'WorkDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryScheduleTimeWorksState: TWordField
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'State'
      OnGetText = qryScheduleTimeWorksStateGetText
    end
    object qryScheduleTimeWorksMashinID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1605#1575#1588#1610#1606' '#1570#1604#1575#1578' /'#1593#1608#1575#1605#1604' '#1578#1608#1604#1610#1583
      FieldName = 'MashinID'
    end
    object qryScheduleTimeWorksShiftNo: TWordField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1584#1607' '#1588#1610#1601#1578
      FieldName = 'ShiftNo'
    end
    object qryScheduleTimeWorksReciptNo: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1585#1587#1610#1583
      FieldName = 'ReciptNo'
    end
    object qryScheduleTimeWorksReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1585#1587#1610#1583' '#1575#1606#1576#1575#1585
      FieldName = 'ReciptDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryScheduleTimeWorksProcCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1582#1591' '#1578#1608#1604#1610#1583
      FieldName = 'ProcCode'
    end
    object qryScheduleTimeWorks_MashinName: TStringField
      FieldKind = fkLookup
      FieldName = '_MashinName'
      LookupDataSet = qryLookup_Mashin
      LookupKeyFields = 'InfoId'
      LookupResultField = 'InfoName'
      KeyFields = 'MashinID'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryScheduleTimeWorks_ProcName: TStringField
      FieldKind = fkLookup
      FieldName = '_ProcName'
      LookupDataSet = qryLookup_Proc
      LookupKeyFields = 'InfoId'
      LookupResultField = 'InfoName'
      KeyFields = 'ProcCode'
      LookupCache = True
      Size = 100
      Lookup = True
    end
  end
  object SrcScheduleTimeWorks: TDataSource
    DataSet = qryScheduleTimeWorks
    OnStateChange = SrcScheduleTimeWorksStateChange
    Left = 328
    Top = 8
  end
  object qryScheduleWorksItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qryScheduleWorksItemsAfterInsert
    AfterEdit = qryScheduleWorksItemsAfterEdit
    AfterPost = qryScheduleWorksItemsAfterPost
    BeforeDelete = qryScheduleWorksItemsBeforeDelete
    AfterDelete = qryScheduleWorksItemsAfterDelete
    AfterScroll = qryScheduleWorksItemsAfterScroll
    OnCalcFields = qryScheduleWorksItemsCalcFields
    Parameters = <
      item
        Name = 'WId'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM        ScheduleWorksItems'
      'WHERE     (WorkId = :WId)')
    Left = 166
    Top = 219
    object qryScheduleWorksItemsItemsId: TIntegerField
      FieldName = 'ItemsId'
    end
    object qryScheduleWorksItemsWorkId: TIntegerField
      FieldName = 'WorkId'
    end
    object qryScheduleWorksItemsProcStuffCoding: TLargeintField
      DisplayLabel = #1603#1583' '#1605#1581#1589#1608#1604
      FieldName = 'ProcStuffCoding'
    end
    object qryScheduleWorksItemsProductModel: TLargeintField
      DisplayLabel = #1605#1583#1604' '#1605#1581#1589#1608#1604
      FieldName = 'ProductModel'
    end
    object qryScheduleWorksItemsOrderId: TIntegerField
      DisplayLabel = #1603#1583' '#1587#1601#1575#1585#1588
      FieldName = 'OrderId'
    end
    object qryScheduleWorksItemsTrancFormId: TIntegerField
      DisplayLabel = #1601#1585#1605#1608#1604' '#1587#1575#1582#1578
      FieldName = 'TrancFormId'
    end
    object qryScheduleWorksItemsWorkTime: TFloatField
      DisplayLabel = #1603#1575#1585#1603#1585#1583
      FieldName = 'WorkTime'
    end
    object qryScheduleWorksItemsProcAmount: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1578#1608#1604#1610#1583
      FieldName = 'ProcAmount'
    end
    object qryScheduleWorksItemsLossAmount1: TFloatField
      DisplayLabel = #1590#1575#1610#1593#1575#1578' 1'
      FieldName = 'LossAmount1'
    end
    object qryScheduleWorksItemsLossAmount2: TFloatField
      DisplayLabel = #1590#1575#1610#1593#1575#1578' 2'
      FieldName = 'LossAmount2'
    end
    object qryScheduleWorksItems_c_StuffName: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1605#1581#1589#1608#1604
      FieldKind = fkLookup
      FieldName = '_c_StuffName'
      LookupDataSet = qryLookup_StuffCod
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'ProcStuffCoding'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryScheduleWorksItems__ProductName: TStringField
      DisplayLabel = #1605#1583#1604' '#1605#1581#1589#1608#1604
      FieldKind = fkLookup
      FieldName = '__ProductName'
      LookupDataSet = qryLookup_model
      LookupKeyFields = 'LookUpID'
      LookupResultField = 'Name'
      KeyFields = 'ProductModel'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryScheduleWorksItems_OrderName: TStringField
      DisplayLabel = #1587#1601#1575#1585#1588' '#1583#1607#1606#1583#1607
      FieldKind = fkLookup
      FieldName = '_OrderName'
      LookupDataSet = qryLookup_cust
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'OrderId'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryScheduleWorksItems_Sum: TFloatField
      DisplayLabel = #1580#1605#1593' '
      FieldKind = fkCalculated
      FieldName = '_Sum'
      LookupCache = True
      currency = True
      Calculated = True
    end
  end
  object SrcScheduleWorksItems: TDataSource
    DataSet = qryScheduleWorksItems
    Left = 158
    Top = 275
  end
  object qryScheduleTimeLossItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryScheduleTimeLossItemsAfterOpen
    AfterInsert = qryScheduleTimeLossItemsAfterInsert
    AfterEdit = qryScheduleTimeLossItemsAfterEdit
    AfterPost = qryScheduleTimeLossItemsAfterPost
    BeforeDelete = qryScheduleTimeLossItemsBeforeDelete
    AfterDelete = qryScheduleTimeLossItemsAfterDelete
    Parameters = <
      item
        Name = 'WId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         ScheduleTimeLossItems'
      'WHERE     (WorkId =:WId)')
    Left = 310
    Top = 215
    object qryScheduleTimeLossItemsWorkId: TIntegerField
      FieldName = 'WorkId'
    end
    object qryScheduleTimeLossItemsTimeLossId: TIntegerField
      FieldName = 'TimeLossId'
    end
    object qryScheduleTimeLossItemsLoseId: TIntegerField
      DisplayLabel = #1603#1583' '#1578#1608#1602#1601
      FieldName = 'LoseId'
    end
    object qryScheduleTimeLossItems_LoseName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1603#1604#1610' '#1578#1608#1602#1601#1575#1578
      FieldKind = fkLookup
      FieldName = '_LoseName'
      LookupDataSet = qryLookup_Lose
      LookupKeyFields = 'InfoId'
      LookupResultField = 'InfoName'
      KeyFields = 'LoseId'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qryScheduleTimeLossItemsLossTime: TIntegerField
      DisplayLabel = #1586#1605#1575#1606' '#1578#1608#1602#1601
      FieldName = 'LossTime'
    end
    object qryScheduleTimeLossItemsLossCommant: TStringField
      DisplayLabel = #1588#1585#1581' '#1578#1608#1602#1601
      FieldName = 'LossCommant'
      FixedChar = True
      Size = 500
    end
  end
  object SrcScheduleTimeLossItems: TDataSource
    DataSet = qryScheduleTimeLossItems
    Left = 287
    Top = 325
  end
  object qryScheduleStuffLossItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryScheduleStuffLossItemsAfterOpen
    AfterInsert = qryScheduleStuffLossItemsAfterInsert
    AfterEdit = qryScheduleStuffLossItemsAfterEdit
    AfterPost = qryScheduleStuffLossItemsAfterPost
    BeforeDelete = qryScheduleStuffLossItemsBeforeDelete
    AfterDelete = qryScheduleStuffLossItemsAfterDelete
    Parameters = <
      item
        Name = 'WId'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         ScheduleStuffLossItems'
      'WHERE     (WorkId =:WId)')
    Left = 406
    Top = 235
    object qryScheduleStuffLossItemsLossItemId: TIntegerField
      FieldName = 'LossItemId'
    end
    object qryScheduleStuffLossItemsWorkId: TIntegerField
      FieldName = 'WorkId'
    end
    object qryScheduleStuffLossItemsLossStuffCoding: TIntegerField
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'LossStuffCoding'
    end
    object qryScheduleStuffLossItemsLossEntity: TIntegerField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'LossEntity'
    end
    object qryScheduleStuffLossItemsLossWeight: TIntegerField
      DisplayLabel = #1608#1586#1606
      FieldName = 'LossWeight'
    end
    object qryScheduleStuffLossItemsLossNote: TStringField
      DisplayLabel = #1588#1585#1581' '#1590#1575#1610#1593#1575#1578
      FieldName = 'LossNote'
      FixedChar = True
      Size = 500
    end
    object qryScheduleStuffLossItems_LossStuffName: TStringField
      DisplayLabel = #1588#1600#1600#1600#1600#1600#1585#1581' '#1603#1575#1604#1575
      FieldKind = fkLookup
      FieldName = '_LossStuffName'
      LookupDataSet = qryLookup_StuffCod
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'LossStuffCoding'
      LookupCache = True
      Size = 100
      Lookup = True
    end
  end
  object SrcScheduleStuffLossItems: TDataSource
    DataSet = qryScheduleStuffLossItems
    Left = 422
    Top = 283
  end
  object qryLookup_Mashin: TADOQuery
    Connection = DmF.adcBSell
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     InfoId, InfoName'
      'FROM         ScheduleInfo'
      'WHERE     (Code = 6)')
    Left = 344
    Top = 72
  end
  object qryLookup_Proc: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     InfoId, InfoName'
      'FROM         ScheduleInfo'
      'WHERE     (Code = 7)')
    Left = 73
    Top = 74
  end
  object qryLookup_StuffCod: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     dbo.StuffCoding.c_StuffCode, dbo.StuffCoding.c_StuffN' +
        'ame'
      'FROM         dbo.StuffCoding INNER JOIN'
      
        '                      dbo.StoreStuffs ON dbo.StuffCoding.c_Stuff' +
        'Code = dbo.StoreStuffs.c_StuffCode INNER JOIN'
      
        '                      dbo.Stores ON dbo.StoreStuffs.n_StoreID = ' +
        'dbo.Stores.n_StoreID'
      'WHERE     (dbo.Stores.StoreKind IN (1, 2))')
    Left = 54
    Top = 211
    object qryLookup_StuffCodc_StuffCode: TLargeintField
      FieldName = 'c_StuffCode'
    end
    object qryLookup_StuffCodc_StuffName: TStringField
      FieldName = 'c_StuffName'
      Size = 70
    end
  end
  object qryLookup_model: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     LookUpID,Name'
      'FROM         LookUps'
      'WHERE(Kind=15)')
    Left = 58
    Top = 315
    object qryLookup_modelLookUpID: TIntegerField
      FieldName = 'LookUpID'
    end
    object qryLookup_modelName: TStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object qryLookup_cust: TADOQuery
    Connection = DmF.adcBSell
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     CustID, CustName FROM        Customers')
    Left = 54
    Top = 379
  end
  object qry_Sum: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = qry_SumCalcFields
    Parameters = <
      item
        Name = 'WId'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     '#39#1580#1605#1593' '#1603#1604' '#39' AS s_u_m, SUM(WorkTime) AS WorkTime, SUM(Pr' +
        'ocAmount) AS ProcAmount, SUM(LossAmount1) AS LossAmount1, SUM(Lo' +
        'ssAmount2) '
      '                      AS LossAmount2'
      'FROM         dbo.ScheduleWorksItems'
      'WHERE     (WorkId =:WId)')
    Left = 166
    Top = 355
    object qry_Sums_u_m: TStringField
      FieldName = 's_u_m'
      ReadOnly = True
      Size = 6
    end
    object qry_SumWorkTime: TFloatField
      FieldName = 'WorkTime'
    end
    object qry_SumProcAmount: TFloatField
      FieldName = 'ProcAmount'
    end
    object qry_SumLossAmount1: TFloatField
      FieldName = 'LossAmount1'
    end
    object qry_SumLossAmount2: TFloatField
      FieldName = 'LossAmount2'
    end
    object qry_Sum_Sum: TFloatField
      FieldKind = fkCalculated
      FieldName = '_Sum'
      currency = True
      Calculated = True
    end
  end
  object SrcSum: TDataSource
    DataSet = qry_Sum
    Left = 118
    Top = 355
  end
  object qryLookup_Lose: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     InfoId, InfoName  FROM         dbo.ScheduleInfo WHERE' +
        '     (Code = 2)')
    Left = 282
    Top = 275
    object qryLookup_LoseInfoId: TIntegerField
      FieldName = 'InfoId'
    end
    object qryLookup_LoseInfoName: TStringField
      FieldName = 'InfoName'
      Size = 100
    end
  end
  object PopMnuState: TPopupMenu
    AutoHotkeys = maManual
    Left = 440
    Top = 406
  end
  object qryScheduleTimePerson: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryScheduleTimePersonAfterOpen
    AfterInsert = qryScheduleTimePersonAfterInsert
    AfterEdit = qryScheduleTimePersonAfterEdit
    AfterPost = qryScheduleTimePersonAfterPost
    BeforeDelete = qryScheduleTimePersonBeforeDelete
    AfterDelete = qryScheduleTimePersonAfterDelete
    Parameters = <
      item
        Name = 'WId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         ScheduleTimePerson'
      'WHERE     (WorkId =:WId)')
    Left = 606
    Top = 235
    object qryScheduleTimePersonTimePersonId: TIntegerField
      FieldName = 'TimePersonId'
    end
    object qryScheduleTimePersonWorkId: TIntegerField
      FieldName = 'WorkId'
    end
    object qryScheduleTimePersonPersonId: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'PersonId'
    end
    object qryScheduleTimePersonProc_Entity: TIntegerField
      DisplayLabel = #1605#1602#1583#1575#1585' '#1578#1608#1604#1610#1583
      FieldName = 'Proc_Entity'
    end
    object qryScheduleTimePersonProc_Time: TIntegerField
      DisplayLabel = #1603#1575#1585#1603#1585#1583
      FieldName = 'Proc_Time'
    end
    object qryScheduleTimePersonProc_Note: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      FieldName = 'Proc_Note'
      FixedChar = True
      Size = 500
    end
    object qryScheduleTimePerson_PersonName: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578
      FieldKind = fkLookup
      FieldName = '_PersonName'
      LookupDataSet = qryLookup_Person
      LookupKeyFields = 'InfoId'
      LookupResultField = 'InfoName'
      KeyFields = 'PersonId'
      LookupCache = True
      Size = 120
      Lookup = True
    end
  end
  object SrcScheduleTimePerson: TDataSource
    DataSet = qryScheduleTimePerson
    Left = 598
    Top = 291
  end
  object qryLookup_Person: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     InfoId, InfoName  FROM         dbo.ScheduleInfo WHERE' +
        '     (Code = 9)')
    Left = 610
    Top = 331
    object IntegerField1: TIntegerField
      FieldName = 'InfoId'
    end
    object StringField1: TStringField
      FieldName = 'InfoName'
      Size = 100
    end
  end
  object qry_LookUpState: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT     TOP 100 PERCENT InfoId, InfoName'
      'FROM         dbo.ScheduleInfo'
      'WHERE     (Code = 101)'
      'ORDER BY Code')
    Left = 496
    Top = 408
    object qry_LookUpStateInfoId: TIntegerField
      FieldName = 'InfoId'
    end
    object qry_LookUpStateInfoName: TStringField
      FieldName = 'InfoName'
      Size = 100
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = SrcScheduleTimeWorks
    UserName = 'DBPipeline1'
    Left = 694
    Top = 267
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'WorkId'
      FieldName = 'WorkId'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'WorkNo'
      FieldName = 'WorkNo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'WorkDate'
      FieldName = 'WorkDate'
      FieldLength = 8
      DisplayWidth = 8
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'State'
      FieldName = 'State'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'MashinID'
      FieldName = 'MashinID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'ShiftNo'
      FieldName = 'ShiftNo'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'ReciptNo'
      FieldName = 'ReciptNo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'ReciptDate'
      FieldName = 'ReciptDate'
      FieldLength = 8
      DisplayWidth = 8
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProcCode'
      FieldName = 'ProcCode'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = '_MashinName'
      FieldName = '_MashinName'
      FieldLength = 80
      DisplayWidth = 80
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = '_ProcName'
      FieldName = '_ProcName'
      FieldLength = 80
      DisplayWidth = 80
      Position = 10
    end
  end
  object ppReport1: TppReport
    AutoStop = False
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
      'D:\Projects\Fara\BSell\Exe\Report\ReportCost\ScheduleTimeWorks2.' +
      'rtm'
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
    Left = 742
    Top = 227
    Version = '23.0'
    mmColumnWidth = 0
    object ppHeaderBand3: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 16404
      mmPrintPosition = 0
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblCompanyName'
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
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'LblCaption'
        Border.mmPadding = 0
        Caption = #1603#1575#1585#1603#1585#1583' '#1711#1586#1575#1585#1588' '#1578#1608#1604#1610#1583
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
        mmLeft = 112448
        mmTop = 8467
        mmWidth = 41804
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SysVarPageNo1'
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
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lbprintdate'
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
        LayerName = Foreground1
      end
    end
    object ppDetailBand3: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppSubReport2: TppSubReport
        DesignLayer = ppDesignLayer2
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
        LayerName = Foreground1
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
          Version = '23.0'
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
            mmHeight = 7408
            mmPrintPosition = 0
            object TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'ProcStuffCoding'
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
              mmLeft = 255059
              mmTop = 0
              mmWidth = 10583
              BandType = 4
              LayerName = Foreground
            end
            object TppDBText
              DesignLayer = ppDesignLayer1
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
              mmLeft = 212461
              mmTop = 0
              mmWidth = 42598
              BandType = 4
              LayerName = Foreground
            end
            object TppDBText
              DesignLayer = ppDesignLayer1
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
              mmLeft = 201613
              mmTop = 0
              mmWidth = 10054
              BandType = 4
              LayerName = Foreground
            end
            object TppDBText
              DesignLayer = ppDesignLayer1
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
              mmLeft = 167482
              mmTop = 0
              mmWidth = 34131
              BandType = 4
              LayerName = Foreground
            end
            object TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'OrderId'
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
              mmLeft = 156104
              mmTop = 0
              mmWidth = 10583
              BandType = 4
              LayerName = Foreground
            end
            object TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = '_OrderName'
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
              mmLeft = 122502
              mmTop = 0
              mmWidth = 33602
              BandType = 4
              LayerName = Foreground
            end
            object TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'TrancFormId'
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
              mmLeft = 102129
              mmTop = 0
              mmWidth = 19315
              BandType = 4
              LayerName = Foreground
            end
            object TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText8'
              Border.mmPadding = 0
              DataField = 'WorkTime'
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
              mmLeft = 82021
              mmTop = 0
              mmWidth = 19315
              BandType = 4
              LayerName = Foreground
            end
            object TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText9'
              Border.mmPadding = 0
              DataField = 'ProcAmount'
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
              mmLeft = 61913
              mmTop = 0
              mmWidth = 19315
              BandType = 4
              LayerName = Foreground
            end
            object TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText10'
              Border.mmPadding = 0
              DataField = 'LossAmount1'
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
              mmLeft = 41804
              mmTop = 0
              mmWidth = 19315
              BandType = 4
              LayerName = Foreground
            end
            object TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText11'
              Border.mmPadding = 0
              DataField = '_Sum'
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
              mmWidth = 19315
              BandType = 4
              LayerName = Foreground
            end
            object TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText12'
              Border.mmPadding = 0
              DataField = 'LossAmount2'
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
              mmLeft = 21696
              mmTop = 0
              mmWidth = 19315
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand3: TppSummaryBand
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
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
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 32808
        mmPrintPosition = 0
        object TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label1'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1605#1575#1588#1610#1606' / '#1593#1608#1575#1605#1604' '#1578#1608#1604#1610#1583':'#8207
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          mmHeight = 6350
          mmLeft = 223838
          mmTop = 529
          mmWidth = 43127
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label5'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1582#1591' '#1578#1608#1604#1610#1583#1610' :'#8207
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          mmHeight = 6350
          mmLeft = 223838
          mmTop = 7938
          mmWidth = 37571
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label9'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1588#1605#1575#1585#1607' '#1588#1610#1601#1578' :'#8207
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          mmHeight = 6350
          mmLeft = 224103
          mmTop = 15346
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine11: TppLine
          DesignLayer = ppDesignLayer2
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
          LayerName = Foreground1
        end
        object TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label10'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1588#1605#1575#1585#1607' '#1585#1587#1610#1583' '#1575#1606#1576#1575#1585' :'#8207
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          mmHeight = 6350
          mmLeft = 123031
          mmTop = 529
          mmWidth = 26458
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText1'
          Border.mmPadding = 0
          DataField = 'MashinID'
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
          mmLeft = 212461
          mmTop = 529
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText2'
          Border.mmPadding = 0
          DataField = '_MashinName'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 5842
          mmLeft = 169598
          mmTop = 529
          mmWidth = 42863
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText4'
          Border.mmPadding = 0
          DataField = '_ProcName'
          DataPipeline = ppDBPipeline1
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Zar'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 5842
          mmLeft = 169598
          mmTop = 7938
          mmWidth = 42863
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText7'
          Border.mmPadding = 0
          DataField = 'ShiftNo'
          DataPipeline = ppDBPipeline1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'badr'
          Font.Size = 10
          Font.Style = []
          ParentDataPipeline = False
          TextAlignment = taCentered
          DataPipelineName = 'ppDBPipeline1'
          mmHeight = 6085
          mmLeft = 207169
          mmTop = 15346
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText3'
          Border.mmPadding = 0
          DataField = 'ProcCode'
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
          mmLeft = 212461
          mmTop = 7938
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText8'
          Border.mmPadding = 0
          DataField = 'ReciptNo'
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
          mmLeft = 105834
          mmTop = 529
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine12: TppLine
          DesignLayer = ppDesignLayer2
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
          LayerName = Foreground1
        end
        object TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label15'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1578#1608#1602#1601#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 6350
          mmLeft = 157692
          mmTop = 25929
          mmWidth = 107421
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label18'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1603#1600#1600#1575#1585#1603#1600#1600#1585#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 6350
          mmLeft = 123561
          mmTop = 25929
          mmWidth = 33338
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel14: TppLabel
          DesignLayer = ppDesignLayer2
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
          mmLeft = 156634
          mmTop = 28046
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label101'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1580#1605#1593' '#1578#1608#1604#1610#1583
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
          mmTop = 25929
          mmWidth = 122238
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label102'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1578#1575#1585#1610#1582' '#1585#1587#1610#1583' '#1575#1606#1576#1575#1585' :'#8207
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          mmHeight = 6350
          mmLeft = 123031
          mmTop = 7938
          mmWidth = 26458
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText9'
          Border.mmPadding = 0
          DataField = 'ReciptDate'
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
          mmLeft = 105834
          mmTop = 7938
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label103'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1588#1605#1575#1585#1607'  :'#8207
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          mmHeight = 6350
          mmLeft = 21960
          mmTop = 529
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label2'
          AutoSize = False
          Border.mmPadding = 0
          Caption = #1578#1575#1585#1610#1582'  :'#8207
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Yagut'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          mmHeight = 6350
          mmLeft = 21960
          mmTop = 7938
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label3'
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
          mmLeft = 21960
          mmTop = 15346
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText5'
          Border.mmPadding = 0
          DataField = 'WorkNo'
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
          mmLeft = 4233
          mmTop = 529
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText6'
          Border.mmPadding = 0
          DataField = 'WorkDate'
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
          mmLeft = 4233
          mmTop = 7938
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object LblState: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label4'
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
          TextAlignment = taRightJustified
          mmHeight = 6350
          mmLeft = 4233
          mmTop = 15346
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel1: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label7'
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
          mmLeft = 122767
          mmTop = 28575
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 1588
        mmPrintPosition = 0
        object ppLine10: TppLine
          DesignLayer = ppDesignLayer2
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
  object ppDBPipeline2: TppDBPipeline
    DataSource = SrcScheduleWorksItems
    UserName = 'DBPipeline2'
    Left = 662
    Top = 203
    MasterDataPipelineName = 'ppDBPipeline1'
    object ppDBPipeline2ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ItemsId'
      FieldName = 'ItemsId'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipeline2ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'WorkId'
      FieldName = 'WorkId'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline2ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProcStuffCoding'
      FieldName = 'ProcStuffCoding'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
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
      Alignment = taRightJustify
      FieldAlias = 'OrderId'
      FieldName = 'OrderId'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline2ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'TrancFormId'
      FieldName = 'TrancFormId'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline2ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'WorkTime'
      FieldName = 'WorkTime'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppDBPipeline2ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'ProcAmount'
      FieldName = 'ProcAmount'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppDBPipeline2ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'LossAmount1'
      FieldName = 'LossAmount1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppDBPipeline2ppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'LossAmount2'
      FieldName = 'LossAmount2'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object ppDBPipeline2ppField11: TppField
      FieldAlias = '_c_StuffName'
      FieldName = '_c_StuffName'
      FieldLength = 80
      DisplayWidth = 80
      Position = 10
    end
    object ppDBPipeline2ppField12: TppField
      FieldAlias = '__ProductName'
      FieldName = '__ProductName'
      FieldLength = 80
      DisplayWidth = 80
      Position = 11
    end
    object ppDBPipeline2ppField13: TppField
      FieldAlias = '_OrderName'
      FieldName = '_OrderName'
      FieldLength = 80
      DisplayWidth = 80
      Position = 12
    end
    object ppDBPipeline2ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = '_Sum'
      FieldName = '_Sum'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
  end
end
