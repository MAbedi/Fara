inherited PaymentExpenceF: TPaymentExpenceF
  Left = 383
  Top = 101
  Caption = #1576#1585#1711' '#1585#1587#1610#1583#1711#1610' '#1575#1587#1606#1575#1583' '#1608' '#1605#1580#1608#1586' '#1662#1585#1583#1575#1582#1578
  ClientHeight = 575
  ClientWidth = 833
  OnActivate = FormActivate
  OnResize = FormResize
  ExplicitWidth = 841
  ExplicitHeight = 606
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel [0]
    Width = 833
    Height = 55
    TabOrder = 0
    ExplicitWidth = 829
    ExplicitHeight = 55
    inherited ImgTemplate: TImage
      Left = 795
      ExplicitLeft = 751
    end
    inherited lblCaption: TLabel
      Left = 725
      Height = 16
      ExplicitLeft = 725
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 151
      Height = 53
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object SpeedButton5: TSpeedButton
        Left = 1
        Top = 6
        Width = 23
        Height = 21
        Caption = '...'
        OnClick = SpeedButton5Click
      end
      object Label1: TLabel
        Left = 96
        Top = 10
        Width = 50
        Height = 13
        Alignment = taRightJustify
        Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
      end
      object Label2: TLabel
        Left = 96
        Top = 35
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = #1578#1575#1585#1610#1582' '#1601#1585#1605
      end
      object edtFormNumber: TDBEdit
        Left = 26
        Top = 7
        Width = 66
        Height = 19
        Ctl3D = False
        DataField = 'FormNumber'
        DataSource = srcForms
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 25
        Top = 32
        Width = 66
        Height = 19
        Ctl3D = False
        DataField = 'FormDate'
        DataSource = srcForms
        ParentCtl3D = False
        TabOrder = 1
      end
    end
  end
  inherited PnlUnderButton: TPanel [1]
    Top = 534
    Width = 833
    TabOrder = 2
    ExplicitTop = 533
    ExplicitWidth = 829
    object okPanel: TPanel [0]
      Left = 325
      Top = 1
      Width = 162
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 5
      ExplicitLeft = 321
      object BitBtn7: TBitBtn
        AlignWithMargins = True
        Left = 84
        Top = 6
        Width = 75
        Height = 27
        Margins.Top = 6
        Margins.Bottom = 6
        Action = DataSetPost1
        Align = alRight
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
        AlignWithMargins = True
        Left = 3
        Top = 6
        Width = 75
        Height = 27
        Margins.Top = 6
        Margins.Bottom = 6
        Action = DataSetCancel1
        Align = alRight
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
    object DBNavigator1: TDBNavigator [1]
      AlignWithMargins = True
      Left = 405
      Top = 7
      Width = 204
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      DataSource = srcForms
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alClient
      Flat = True
      TabOrder = 6
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 71
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendToExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 1
    end
    object BitBtn12: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006A00
        00006A0000006A000000FF00FF006A0000006A0000006A000000FF00FF00FF00
        FF00FF00FF00FF00FF0000580300FF00FF00FF00FF00FF00FF00FF00FF006A6A
        6A006A000000FF00FF00FF00FF00FF00FF00980000006A6A6A00FF00FF00FF00
        FF00FF00FF00005803006AFF6A0000580300FF00FF00FF00FF00FF00FF00FF00
        FF006A6A6A006A0000006A0000006A0000006A000000FF00FF00FF00FF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FF00FF00FF00
        FF00FF00FF006A000000FF00FF00980000006A000000FF00FF00FF00FF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FF00FF00FF00
        FF00FF00FF00980000006A0000006A000000FF00FF00FF00FF00FF00FF000058
        0300005803000058030000580300005803000058030000580300FF00FF00FF00
        FF00FF00FF006A6A6A006A0000006A6A6A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0098000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A0000006A0000006A0000006A0000006A00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A00FF00FF00FF00FF00FF00FF000000B600FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006A6A6A0000006A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000006A0000006A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF006A6A6A0000006A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A00FF00FF00FF00FF0000006A0000006A00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF001100
        7B0011007B0011007B0011007B0011007B0011007B00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00}
      TabOrder = 3
    end
    object newPanel: TPanel
      Left = 487
      Top = 1
      Width = 345
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 4
      ExplicitLeft = 483
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 267
        Top = 6
        Width = 75
        Height = 27
        Margins.Top = 6
        Margins.Bottom = 6
        Action = DataSetInsert1
        Align = alRight
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        AlignWithMargins = True
        Left = 186
        Top = 6
        Width = 75
        Height = 27
        Margins.Top = 6
        Margins.Bottom = 6
        Action = DataSetEdit1
        Align = alRight
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        AlignWithMargins = True
        Left = 105
        Top = 6
        Width = 75
        Height = 27
        Margins.Top = 6
        Margins.Bottom = 6
        Action = DataSetDelete1_
        Align = alRight
        Caption = #1581#1584#1601
        TabOrder = 2
      end
      object BitBtn6: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 6
        Width = 96
        Height = 27
        Margins.Top = 6
        Margins.Bottom = 6
        Action = actViewFileF
        Align = alRight
        Caption = #1662#1610#1608#1587#1578' '#1608' '#1575#1587#1603#1606' ...'
        TabOrder = 3
      end
    end
    object BitBtn10: TBitBtn
      AlignWithMargins = True
      Left = 324
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actPrint
      Align = alLeft
      Caption = #1670#1575#1662
      TabOrder = 7
    end
  end
  inherited Panel3: TPanel
    Top = 55
    Width = 833
    Height = 479
    TabOrder = 1
    ExplicitTop = 55
    ExplicitWidth = 829
    ExplicitHeight = 478
    object Panel5: TPanel
      Left = 2
      Top = 60
      Width = 829
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 825
      object pnlCustomer1: TPanel
        Left = 413
        Top = 0
        Width = 416
        Height = 27
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 409
        object lbcustomer1: TLabel
          Left = 301
          Top = 7
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = #1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
        end
        object SpeedButton11: TSpeedButton
          Tag = 1
          Left = 214
          Top = 1
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton11Click
        end
        object edtCustomerID1: TDBEdit
          Tag = 1
          Left = 238
          Top = 3
          Width = 60
          Height = 21
          Ctl3D = True
          DataField = 'CustomerID1'
          DataSource = srcForms
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = edtCustomerID1KeyPress
        end
        object DBEdit11: TDBEdit
          Left = 2
          Top = 3
          Width = 206
          Height = 21
          TabStop = False
          Color = 15000804
          DataField = '_CustomerName'
          DataSource = srcForms
          ReadOnly = True
          TabOrder = 1
        end
      end
      object pnlCustomer2: TPanel
        Left = 0
        Top = 0
        Width = 413
        Height = 27
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 409
        object lbcustomer2: TLabel
          Left = 302
          Top = 6
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = #1588#1593#1576#1607
        end
        object SpeedButton7: TSpeedButton
          Tag = 2
          Left = 214
          Top = 2
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SpeedButton11Click
        end
        object DBEdit1: TDBEdit
          Tag = 2
          Left = 240
          Top = 2
          Width = 60
          Height = 21
          Ctl3D = True
          DataField = 'CustomerID2'
          DataSource = srcForms
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = edtCustomerID1KeyPress
        end
        object DBEdit7: TDBEdit
          Left = 7
          Top = 1
          Width = 201
          Height = 21
          TabStop = False
          Color = 15000804
          DataField = '_CustomerName2'
          DataSource = srcForms
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
    object PageControl1: TPageControl
      Left = 2
      Top = 213
      Width = 829
      Height = 264
      ActivePage = tbsLoan
      Align = alClient
      MultiLine = True
      TabOrder = 4
      ExplicitWidth = 825
      ExplicitHeight = 263
      object tbsAsnad: TTabSheet
        Caption = #1575#1587#1606#1575#1583' '#1607#1586#1610#1606#1607' '#1608' '#1583#1585#1570#1605#1583
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid1: TDBGrid
          Tag = 111
          Left = 0
          Top = 0
          Width = 817
          Height = 152
          Hint = #1575#1587#1606#1575#1583' '#1607#1586#1610#1606#1607' '#1608' '#1583#1585#1570#1605#1583
          Align = alClient
          Color = clCream
          DataSource = srcFormItems
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnEditButtonClick = DBGrid1EditButtonClick
          OnEnter = DBGrid1Enter
          OnKeyPress = DBGrid1KeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'Row'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AidInfoDate'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AidInfoNo'
              Width = 52
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CustomerID2'
              Visible = True
            end
            item
              Color = 15132390
              Expanded = False
              FieldName = '_Cudtomername2'
              ReadOnly = True
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemNote'
              Width = 29
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AccState'
              PickList.Strings = (
                #1576#1583
                #1576#1587)
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemAmount'
              Width = 79
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'TopicCode'
              Width = 42
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'DetailCode'
              Width = 57
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CTopicCode'
              Width = 69
              Visible = True
            end
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CTopicCode2'
              Visible = True
            end>
        end
        object pnlDelete: TPanel
          Left = 0
          Top = 204
          Width = 817
          Height = 31
          Align = alBottom
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 1
          DesignSize = (
            821
            31)
          object SpeedButton16: TSpeedButton
            Left = 10
            Top = 4
            Width = 23
            Height = 22
            Action = DataSetDelete2
            Caption = ' '
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
          object btnExcel: TBitBtn
            Left = 614
            Top = 3
            Width = 75
            Height = 25
            Hint = ' '
            Anchors = [akTop, akRight]
            Caption = #1582#1608#1575#1606#1583#1606' Excel'
            TabOrder = 0
            OnClick = btnExcelClick
            ExplicitLeft = 610
          end
          object btnRecal: TBitBtn
            Left = 695
            Top = 3
            Width = 127
            Height = 25
            Hint = ' '
            Anchors = [akTop, akRight]
            Caption = #1601#1585#1575#1582#1608#1575#1606#1740' '#1575#1586' '#1581#1587#1575#1576#1583#1575#1585#1740' '
            TabOrder = 1
            OnClick = btnRecalClick
            ExplicitLeft = 691
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 173
          Width = 821
          Height = 32
          Align = alBottom
          TabOrder = 2
          ExplicitTop = 172
          ExplicitWidth = 817
          DesignSize = (
            821
            32)
          object Label3: TLabel
            Left = 374
            Top = 9
            Width = 47
            Height = 13
            Alignment = taRightJustify
            Caption = #1605#1585#1603#1586#1607#1586#1610#1606#1607
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 161
            Top = 9
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = #1578#1601#1589#1740#1604#1740'3'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 611
            Top = 9
            Width = 37
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1578#1601#1589#1610#1604#1610
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 615
          end
          object Label8: TLabel
            Left = 787
            Top = 9
            Width = 31
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1581#1587#1575#1576
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 791
          end
          object DBEdit18: TDBEdit
            Left = 218
            Top = 5
            Width = 154
            Height = 21
            TabStop = False
            Color = 15132390
            DataField = '_CTopicName_L1'
            DataSource = srcFormItems
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit23: TDBEdit
            Left = 653
            Top = 5
            Width = 132
            Height = 21
            TabStop = False
            Anchors = [akTop, akRight]
            Color = 15132390
            DataField = '_TopicCodeName_L1'
            DataSource = srcFormItems
            ReadOnly = True
            TabOrder = 0
            ExplicitLeft = 657
          end
          object DBEdit24: TDBEdit
            Left = 463
            Top = 5
            Width = 145
            Height = 21
            TabStop = False
            Anchors = [akTop, akRight]
            Color = 15132390
            DataField = '_DetailsName_L1'
            DataSource = srcFormItems
            ReadOnly = True
            TabOrder = 1
            ExplicitLeft = 467
          end
          object DBEdit26: TDBEdit
            Left = 4
            Top = 5
            Width = 154
            Height = 21
            TabStop = False
            Color = 15132390
            DataField = '_CTopicName2_L1'
            DataSource = srcFormItems
            ReadOnly = True
            TabOrder = 3
          end
        end
        object SumGrid1: TSumGrid
          Left = 0
          Top = 153
          Width = 821
          Hint = #1605#1576#1604#1594
          Active = False
          Enable_Controls = True
          MasterGrid = DBGrid1
          FieldsName = 'ItemAmount;'
        end
      end
      object tbsFish: TTabSheet
        Caption = #1601#1610#1588' '#1576#1575#1606#1603#1610'/'#1608#1580#1607' '#1606#1602#1583
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid2: TDBGrid
          Left = 0
          Top = 33
          Width = 825
          Height = 204
          Hint = #1601#1585#1605' '#1601#1610#1588' '#1576#1575#1606#1603#1610'/'#1608#1580#1607' '#1606#1602#1583
          Align = alClient
          Color = clCream
          DataSource = srcFormsDetail
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'FormType'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FormNumber'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FormDate'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustomerID1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_CustomerID1'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustomerID2'
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_CustomerID2'
              Width = 93
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Amount'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FomNote'
              Width = 204
              Visible = True
            end>
        end
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 825
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object SpeedButton4: TSpeedButton
            Tag = 1
            AlignWithMargins = True
            Left = 610
            Top = 5
            Width = 63
            Height = 23
            Margins.Top = 5
            Margins.Right = 10
            Margins.Bottom = 5
            Align = alRight
            Caption = #1587#1575#1740#1585'...'
            OnClick = SButClick
            ExplicitLeft = 671
          end
          object BitBtn2: TBitBtn
            AlignWithMargins = True
            Left = 686
            Top = 3
            Width = 136
            Height = 27
            Hint = ' '
            Align = alRight
            Caption = #1601#1585#1605' '#1601#1610#1588' '#1576#1575#1606#1603#1610'/'#1608#1580#1607' '#1606#1602#1583
            TabOrder = 0
            OnClick = BitBtn2Click
          end
        end
      end
      object tbsCheckT: TTabSheet
        Caption = #1578#1590#1605#1610#1606#1575#1578' '
        ImageIndex = 4
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 825
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object SpeedButton3: TSpeedButton
            Tag = 2
            AlignWithMargins = True
            Left = 671
            Top = 5
            Width = 63
            Height = 23
            Margins.Top = 5
            Margins.Right = 10
            Margins.Bottom = 5
            Align = alRight
            Caption = #1587#1575#1740#1585'...'
            OnClick = SButClick
            ExplicitLeft = 679
            ExplicitTop = 10
          end
          object btnGuaranteesFormID: TBitBtn
            AlignWithMargins = True
            Left = 747
            Top = 3
            Width = 75
            Height = 27
            Hint = ' '
            Align = alRight
            Caption = #1601#1585#1605' '#1578#1590#1605#1610#1606#1575#1578' '
            TabOrder = 0
            OnClick = btnGuaranteesFormIDClick
          end
        end
        object DBGridCheckT: TDBGrid
          Left = 0
          Top = 33
          Width = 825
          Height = 204
          Hint = #1601#1585#1605' '#1578#1590#1605#1740#1606#1575#1578
          Align = alClient
          Color = clCream
          Ctl3D = False
          DataSource = srcDetail_ItemT
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentCtl3D = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Row'
              Width = 28
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FormNumber'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FormDate'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustomerID1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustName'
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CheckNumber'
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CheckDate'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemAmount'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemNote'
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BankName'
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'City'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AccountNumber'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AccountNumberNew'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustomerID2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustName2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustomerID2D'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustNameD'
              Visible = True
            end>
        end
      end
      object tbsCheck: TTabSheet
        Caption = #1670#1603'/'#1662#1585#1583#1575#1582#1578
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 825
          Height = 237
          Align = alClient
          TabOrder = 0
          ExplicitHeight = 243
          object Panel11: TPanel
            Left = 1
            Top = 1
            Width = 823
            Height = 235
            Align = alClient
            TabOrder = 0
            ExplicitHeight = 241
            object pnl1: TPanel
              Left = 1
              Top = 1
              Width = 821
              Height = 33
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object SpeedButton2: TSpeedButton
                Tag = 3
                AlignWithMargins = True
                Left = 667
                Top = 5
                Width = 63
                Height = 23
                Margins.Top = 5
                Margins.Right = 10
                Margins.Bottom = 5
                Align = alRight
                Caption = #1587#1575#1740#1585'...'
                OnClick = SButClick
                ExplicitLeft = 671
              end
              object BitBtn15: TBitBtn
                AlignWithMargins = True
                Left = 743
                Top = 3
                Width = 75
                Height = 27
                Hint = ' '
                Align = alRight
                Caption = #1601#1585#1605' '#1670#1603
                TabOrder = 0
                OnClick = BitBtn15Click
              end
            end
            object DBGridCheck: TDBGrid
              Left = 1
              Top = 34
              Width = 821
              Height = 139
              Hint = #1601#1585#1605' '#1670#1705
              Align = alClient
              Color = clCream
              Ctl3D = False
              DataSource = srcDetail_Item
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              ParentCtl3D = False
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Row'
                  Title.Alignment = taCenter
                  Width = 27
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FormType'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FormNumber'
                  Width = 57
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FormDate'
                  Width = 45
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CustomerID1'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CustName1'
                  Width = 85
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CheckNumber'
                  Title.Alignment = taCenter
                  Width = 74
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CheckDate'
                  Title.Alignment = taCenter
                  Width = 63
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ItemAmount'
                  Title.Alignment = taCenter
                  Width = 54
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'BankName'
                  Title.Alignment = taCenter
                  Width = 36
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'AccountNumber'
                  Title.Alignment = taCenter
                  Width = 53
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'AccountNumberNew'
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'City'
                  Title.Alignment = taCenter
                  Width = 35
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CustomerID2'
                  Title.Alignment = taCenter
                  Width = 68
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CustName2'
                  Width = 94
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CheckFor'
                  Width = 46
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CheckType'
                  Width = 44
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ItemNote'
                  Title.Alignment = taCenter
                  Width = 102
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CustomerID2D'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CustName2D'
                  Width = 117
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PayTypeName'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TopicTypeName'
                  Width = 80
                  Visible = True
                end>
            end
            object grpDetailNote: TGroupBox
              Left = 1
              Top = 173
              Width = 821
              Height = 61
              Align = alBottom
              Caption = #1578#1608#1590#1610#1581#1575#1578' '#1670#1603' '
              TabOrder = 2
              ExplicitTop = 179
              object DBMemo5: TDBMemo
                Left = 2
                Top = 15
                Width = 817
                Height = 44
                Align = alClient
                DataField = 'ItemNote'
                DataSource = srcDetail_Item
                TabOrder = 0
              end
            end
          end
        end
      end
      object tbsLoan: TTabSheet
        Caption = #1578#1587#1607#1610#1604#1575#1578' '
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 821
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitWidth = 817
          object SpeedButton1: TSpeedButton
            Tag = 4
            AlignWithMargins = True
            Left = 667
            Top = 5
            Width = 63
            Height = 23
            Margins.Top = 5
            Margins.Right = 10
            Margins.Bottom = 5
            Align = alRight
            Caption = #1587#1575#1740#1585'...'
            OnClick = SButClick
            ExplicitLeft = 671
          end
          object btnLoans: TBitBtn
            AlignWithMargins = True
            Left = 743
            Top = 3
            Width = 75
            Height = 27
            Hint = ' '
            Align = alRight
            Caption = #1601#1585#1605' '#1578#1587#1607#1610#1604#1575#1578' '
            TabOrder = 0
            OnClick = btnLoansClick
            ExplicitLeft = 739
          end
        end
        object DBGrid3: TDBGrid
          Tag = 111
          Left = 0
          Top = 33
          Width = 821
          Height = 203
          Hint = #1601#1585#1605' '#1578#1587#1607#1740#1604#1575#1578
          Align = alClient
          Color = clCream
          DataSource = srcLoan
          DrawingStyle = gdsClassic
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnEditButtonClick = DBGrid1EditButtonClick
          OnEnter = DBGrid1Enter
          OnKeyPress = DBGrid1KeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'Row'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FormNumber'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FormDate'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustomerID1'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_CustomerName'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustomerID2'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_CustomerName2'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemAmount'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CashWage'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemNote'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustomerID2D'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustomerNameD2'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ReciptCaption'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PayTypeName'
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ReciptNumber'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'StuffCode'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'c_StuffName'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TotalPrice'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TaxCo'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TaxValue'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TotallSellPrice'
              Width = 60
              Visible = True
            end>
        end
      end
    end
    object pnlManegeComment: TPanel
      Left = 2
      Top = 114
      Width = 829
      Height = 24
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      ExplicitWidth = 825
      DesignSize = (
        829
        24)
      object lblAmountMaster: TLabel
        Left = 706
        Top = 6
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1605#1576#1604#1594' '#1583#1585#1582#1608#1575#1587#1578#1740
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 718
      end
      object LblAidInfoDate: TLabel
        Left = 85
        Top = 6
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LblAidInfoNo: TLabel
        Left = 214
        Top = 6
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = #1588#1605#1575#1585#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtAmountMaster: TDBEdit
        Left = 588
        Top = 2
        Width = 115
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'Amount'
        DataSource = srcForms
        TabOrder = 0
        ExplicitLeft = 584
      end
      object edtAidInfoDate: TDBEdit
        Left = 7
        Top = 2
        Width = 72
        Height = 21
        DataField = 'AidInfoDate'
        DataSource = srcForms
        TabOrder = 2
      end
      object edtAidInfoNo: TDBEdit
        Left = 142
        Top = 2
        Width = 66
        Height = 21
        DataField = 'AidInfoNo'
        DataSource = srcForms
        TabOrder = 1
      end
    end
    object Panel9: TPanel
      Left = 2
      Top = 138
      Width = 829
      Height = 75
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 5
      ExplicitWidth = 825
      object lblMachineNo: TLabel
        AlignWithMargins = True
        Left = 785
        Top = 13
        Width = 41
        Height = 59
        Margins.Top = 13
        Align = alRight
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1576#1606#1583'  '#1588#1605#1575#1585#1607' '#1605#1589#1608#1576#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
        ExplicitLeft = 788
      end
      object GrpNote: TGroupBox
        AlignWithMargins = True
        Left = 359
        Top = 3
        Width = 342
        Height = 69
        Align = alClient
        Caption = #1578#1608#1590#1610#1581#1575#1578' '
        TabOrder = 0
        ExplicitWidth = 338
        object DBMemo1: TDBMemo
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 332
          Height = 46
          Align = alClient
          BevelOuter = bvNone
          DataField = 'FomNote'
          DataSource = srcForms
          TabOrder = 0
          ExplicitWidth = 328
        end
      end
      object GrpCommand: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 350
        Height = 69
        Align = alLeft
        Caption = #1605#1578#1606' '#1583#1587#1578#1608#1585
        TabOrder = 1
        object DBMemo3: TDBMemo
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 340
          Height = 46
          Align = alClient
          BevelOuter = bvNone
          DataField = 'ManegerNote'
          DataSource = srcForms
          TabOrder = 0
        end
      end
      object edtMachineNo: TDBEdit
        AlignWithMargins = True
        Left = 707
        Top = 25
        Width = 72
        Height = 23
        Margins.Top = 25
        Margins.Bottom = 27
        Align = alRight
        DataField = 'MachineNo'
        DataSource = srcForms
        TabOrder = 2
        ExplicitLeft = 703
        ExplicitHeight = 21
      end
    end
    object pnlAidSubAmountCaption: TPanel
      Left = 2
      Top = 87
      Width = 829
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 825
      object pnlAidInfo2NoCaption: TPanel
        Left = 0
        Top = 0
        Width = 353
        Height = 27
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object lblAidInfo2NoCaption: TLabel
          Left = 214
          Top = 6
          Width = 33
          Height = 13
          Alignment = taRightJustify
          Caption = #1588#1605#1575#1585#1607' '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblAidInfo2NoCaptionDate: TLabel
          Left = 85
          Top = 6
          Width = 21
          Height = 13
          Alignment = taRightJustify
          Caption = #1578#1575#1585#1610#1582
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtAidInfoNo2: TDBEdit
          Left = 142
          Top = 2
          Width = 66
          Height = 21
          DataField = 'AidInfoNo2'
          DataSource = srcForms
          TabOrder = 0
        end
        object edtAidInfoDate2: TDBEdit
          Left = 7
          Top = 2
          Width = 72
          Height = 21
          DataField = 'AidInfoDate2'
          DataSource = srcForms
          TabOrder = 1
        end
      end
      object pnlSubAmountCaption: TPanel
        Left = 476
        Top = 0
        Width = 353
        Height = 27
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 472
        DesignSize = (
          353
          27)
        object lblSubAmountCaption: TLabel
          Left = 238
          Top = 6
          Width = 92
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = 'SubAmountCaption'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtSubAmount: TDBEdit
          Left = 120
          Top = 2
          Width = 115
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'SubAmount'
          DataSource = srcForms
          TabOrder = 0
        end
      end
    end
    object Panel12: TPanel
      Left = 2
      Top = 2
      Width = 829
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 6
      ExplicitWidth = 825
      DesignSize = (
        829
        29)
      object txtFormState: TDBText
        Left = 374
        Top = 2
        Width = 73
        Height = 25
        Anchors = [akTop]
        DataField = 'FormState'
        DataSource = srcForms
        Font.Charset = ARABIC_CHARSET
        Font.Color = 8684799
        Font.Height = -15
        Font.Name = 'Tehran Light'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 380
      end
      object BitBtn11: TBitBtn
        Left = 0
        Top = 0
        Width = 96
        Height = 29
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Action = actStateChange
        Align = alLeft
        Caption = #1578#1594#1740#1740#1585' '#1608#1590#1593#1740#1578
        TabOrder = 0
      end
    end
    object pnlRelatedRecipts: TPanel
      Left = 2
      Top = 31
      Width = 829
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 0
      ExplicitWidth = 825
      DesignSize = (
        829
        29)
      object btnRelatedRecipts: TSpeedButton
        Tag = 2
        Left = 619
        Top = 2
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = btnRelatedReciptsClick
        ExplicitLeft = 631
      end
      object Label5: TLabel
        Left = 706
        Top = 7
        Width = 83
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1587#1601#1575#1585#1588#1575#1578
        ExplicitLeft = 718
      end
      object txt_RelatedRecipts: TDBText
        AlignWithMargins = True
        Left = 521
        Top = 3
        Width = 92
        Height = 13
        Anchors = [akTop, akRight]
        AutoSize = True
        Color = 15000804
        DataField = '_RelatedRecipts'
        DataSource = srcForms
        ParentColor = False
      end
      object edtRelatedRecipts: TDBEdit
        Left = 643
        Top = 4
        Width = 60
        Height = 21
        Anchors = [akTop, akRight]
        Ctl3D = True
        DataField = 'RelatedRecipts'
        DataSource = srcForms
        ParentCtl3D = False
        TabOrder = 0
        ExplicitLeft = 639
      end
    end
  end
  inherited ActionList: TActionList
    Left = 568
    object DataSetInsert4: TDataSetInsert [0]
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = ' '
      ShortCut = 113
      DataSource = srcDetail_Item
    end
    object DataSetEdit4: TDataSetEdit [1]
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      ShortCut = 115
      DataSource = srcDetail_Item
    end
    object DataSetPost4: TDataSetPost [2]
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      Hint = ' '
      ShortCut = 119
      DataSource = srcDetail_Item
    end
    object DataSetCancel4: TDataSetCancel [3]
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = ' '
      DataSource = srcDetail_Item
    end
    object DataSetDelete3: TDataSetDelete [4]
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcDetail_Item
    end
    object DataSetInsert3: TDataSetInsert [5]
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = ' '
      ShortCut = 113
      DataSource = srcFormItems
    end
    object DataSetEdit3: TDataSetEdit [6]
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      ShortCut = 115
      DataSource = srcFormItems
    end
    object DataSetPost3: TDataSetPost [7]
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      Hint = ' '
      ShortCut = 119
      DataSource = srcFormItems
    end
    object DataSetCancel3: TDataSetCancel [8]
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = ' '
      DataSource = srcFormItems
    end
    object DataSetDelete2: TDataSetDelete [9]
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcFormItems
    end
    object DataSetInsert2: TDataSetInsert [10]
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = ' '
      ShortCut = 113
      DataSource = srcFormsDetail
    end
    object DataSetEdit2: TDataSetEdit [11]
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      ShortCut = 115
      DataSource = srcFormsDetail
    end
    object DataSetPost2: TDataSetPost [12]
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      Hint = ' '
      ShortCut = 119
      DataSource = srcFormsDetail
    end
    object DataSetCancel2: TDataSetCancel [13]
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = ' '
      DataSource = srcFormsDetail
    end
    object DataSetDelete1: TDataSetDelete [14]
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcFormsDetail
    end
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcForms
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcForms
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcForms
    end
    inherited DataSetCancel1: TDataSetCancel
      ShortCut = 0
      DataSource = srcForms
    end
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcForms
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = 'actSort'
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      OnExecute = actSendToExcelExecute
    end
    object actEdit: TAction
      Caption = #1608#1610#1585#1575#1610#1588
    end
    object actDelete1: TAction
    end
    object actselectCheck: TAction
      Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1670#1603#1607#1575
    end
    object actReportsearch: TAction
      Caption = #1580#1587#1578#1580#1608#1610' '#1711#1586#1575#1585#1588#1575#1578
      OnExecute = actReportsearchExecute
    end
    object actPrintCheck: TAction
      Caption = #1670#1575#1662' '#1670#1603
    end
    object actViewFileF: TAction
      Caption = #1662#1610#1608#1587#1578' '#1608' '#1575#1587#1603#1606' ...'
      OnExecute = actViewFileFExecute
    end
    object actStateChange: TAction
      Caption = #1578#1594#1740#1740#1585' '#1608#1590#1593#1740#1578
      OnExecute = actStateChangeExecute
    end
    object actRequestCash: TAction
      Caption = #1575#1602#1604#1575#1605' '#1583#1585#1582#1608#1575#1587#1578' '#1608#1580#1607
      OnExecute = actRequestCashExecute
    end
    object actOther: TAction
      Caption = #1587#1575#1740#1585'...'
      OnExecute = actOtherExecute
    end
    object actCallGetCheck: TAction
      Caption = 'actCallGetCheck'
      OnExecute = actCallGetCheckExecute
    end
    object actCallGetOtherMoney: TAction
      Caption = 'actCallGetOtherMoney'
      OnExecute = actCallGetOtherMoneyExecute
    end
    object actCallLoan: TAction
      Caption = 'actCallLoan'
      OnExecute = actCallLoanExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 640
    Top = 9
  end
  object qryForms: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryFormsAfterInsert
    BeforePost = qryFormsBeforePost
    AfterPost = qryFormsAfterPost
    BeforeCancel = qryFormsBeforeCancel
    BeforeDelete = qryFormsBeforeDelete
    AfterDelete = qryFormsAfterDelete
    AfterScroll = qryFormsAfterScroll
    Parameters = <
      item
        Name = 'FormType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM         dbo.Forms'
      'where FormType=:FormType'
      'and ( YearID = :YearID )'
      '')
    Left = 224
    Top = 7
    object qryFormsRelatedRecipts: TStringField
      FieldName = 'RelatedRecipts'
      FixedChar = True
      Size = 27
    end
    object qryForms_RelatedRecipts: TStringField
      FieldKind = fkLookup
      FieldName = '_RelatedRecipts'
      LookupDataSet = qryRelatedRecipts
      LookupKeyFields = 'RelatedNo'
      LookupResultField = 'RelatedName'
      KeyFields = 'RelatedRecipts'
      FixedChar = True
      Size = 556
      Lookup = True
    end
    object qryFormsOperatorID: TIntegerField
      FieldName = 'OperatorID'
    end
    object qryFormsFormID: TIntegerField
      FieldName = 'FormID'
    end
    object qryFormsFormType: TWordField
      FieldName = 'FormType'
    end
    object qryFormsFormNumber: TIntegerField
      FieldName = 'FormNumber'
    end
    object qryFormsFormDate: TStringField
      FieldName = 'FormDate'
      EditMask = '!9999/99/00;1;_'
      FixedChar = True
      Size = 10
    end
    object qryFormsCustomerID1: TIntegerField
      FieldName = 'CustomerID1'
    end
    object qryFormsCustomerID2: TIntegerField
      FieldName = 'CustomerID2'
    end
    object qryFormsAmount: TBCDField
      FieldName = 'Amount'
      currency = True
      Precision = 19
    end
    object qryFormsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryFormsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryFormsBudgetCode: TIntegerField
      FieldName = 'BudgetCode'
    end
    object qryFormsProjectID: TIntegerField
      FieldName = 'ProjectID'
    end
    object qryFormsTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '
      FieldName = 'TopicCode'
    end
    object qryFormsDetailCode: TStringField
      FieldName = 'DetailCode'
      EditMask = '999999999999999999'
      Size = 12
    end
    object qryFormsCTopicCode: TStringField
      FieldName = 'CTopicCode'
      EditMask = '999999999999999999'
      Size = 12
    end
    object qryFormsFomNote: TStringField
      FieldName = 'FomNote'
      Size = 255
    end
    object qryFormsAidInfoNo: TStringField
      FieldName = 'AidInfoNo'
      Size = 40
    end
    object qryFormsAidInfoDate: TStringField
      FieldName = 'AidInfoDate'
      EditMask = '!9999/99/00;1;_'
      FixedChar = True
      Size = 10
    end
    object qryFormsCustomerName2: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
      FieldName = 'CustomerName2'
      Size = 100
    end
    object qryForms_CTopicName: TStringField
      FieldKind = fkLookup
      FieldName = '_CTopicName_L1'
      LookupDataSet = DmF.qryAccCenterTopics
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName'
      KeyFields = 'CTopicCode'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryForms_CTopicName2: TStringField
      FieldKind = fkLookup
      FieldName = '_CTopicName2_L1'
      LookupDataSet = DmF.qryAccCenterTopics2
      LookupKeyFields = 'CTopicCode2'
      LookupResultField = 'CTopicName2'
      KeyFields = 'CTopicCode2'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryForms_DetailsName: TStringField
      FieldKind = fkLookup
      FieldName = '_DetailsName_L1'
      LookupDataSet = DmF.qryAccDetailCode
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName'
      KeyFields = 'DetailCode'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryForms_TopicCodeName: TStringField
      FieldKind = fkLookup
      FieldName = '_TopicCodeName_L1'
      LookupDataSet = DmF.qryAccTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'TopicCode'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryForms_CustomerName: TStringField
      FieldKind = fkLookup
      FieldName = '_CustomerName'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustomerID1'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryFormsDocNo: TIntegerField
      FieldName = 'DocNo'
    end
    object qryFormsDocDate: TStringField
      FieldName = 'DocDate'
      FixedChar = True
      Size = 10
    end
    object qryFormsCTopicCode2: TStringField
      FieldName = 'CTopicCode2'
      EditMask = '999999999999999999'
      Size = 12
    end
    object qryFormsModifyDate: TDateTimeField
      FieldName = 'ModifyDate'
    end
    object qryForms_CustomerName2: TStringField
      FieldKind = fkLookup
      FieldName = '_CustomerName2'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustomerID2'
      Size = 100
      Lookup = True
    end
    object qryFormsManegerNote: TStringField
      FieldName = 'ManegerNote'
      Size = 500
    end
    object qryFormsPayTypes: TIntegerField
      FieldName = 'PayTypes'
    end
    object qryFormsTopicTypes: TIntegerField
      FieldName = 'TopicTypes'
    end
    object qryFormsSubAmount: TBCDField
      FieldName = 'SubAmount'
      currency = True
      Precision = 19
    end
    object qryFormsAidInfoNo2: TFloatField
      FieldName = 'AidInfoNo2'
    end
    object qryFormsAidInfoDate2: TStringField
      FieldName = 'AidInfoDate2'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryFormsFormState2: TWordField
      FieldName = 'FormState'
      OnGetText = qryFormsFormState2GetText
    end
    object qryFormsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryFormsMachineNo: TStringField
      FieldName = 'MachineNo'
      Size = 25
    end
  end
  object srcForms: TDataSource
    DataSet = qryForms
    OnStateChange = srcFormsStateChange
    Left = 304
    Top = 7
  end
  object srcFormItems: TDataSource
    DataSet = qryFormItems
    Left = 37
    Top = 346
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
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
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\rptPaymentCash_Customer.rtm'
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
    Left = 720
    Top = 423
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 40000
      object ppDBCalc2: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc2'
        Border.mmPadding = 0
        DataField = 'FormNumber'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6615
        mmLeft = 195792
        mmTop = 0
        mmWidth = 6879
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'CheckDate'
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
        mmHeight = 7144
        mmLeft = 182563
        mmTop = 0
        mmWidth = 12435
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'CustomerID2'
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
        mmHeight = 6615
        mmLeft = 174625
        mmTop = 0
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = '_Cudtomername2'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7144
        mmLeft = 97631
        mmTop = 0
        mmWidth = 76200
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'ItemNote'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7144
        mmLeft = 27517
        mmTop = 0
        mmWidth = 69321
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'ItemAmount'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7144
        mmLeft = 529
        mmTop = 0
        mmWidth = 26194
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand2: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 42069
      mmPrintPosition = 0
      object ppDBCalcSumItemAmount: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalcSumItemAmount'
        OnGetText = ppDBCalcSumItemAmountGetText
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'ItemAmount'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 6435
        mmLeft = 172276
        mmTop = 1588
        mmWidth = 30395
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'ItemAmount'
        DataPipeline = ppDBPipeline2
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 7144
        mmLeft = 0
        mmTop = 1588
        mmWidth = 26194
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppPageStyle1: TppPageStyle
      Border.mmPadding = 0
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 245005
      mmPrintPosition = 0
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 224632
        mmWidth = 203300
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = #1578#1606#1582#1608#1575#1607' '#1711#1585#1583#1575#1606
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
        mmLeft = 169858
        mmTop = 232569
        mmWidth = 16679
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1578#1575#1574#1610#1583' '#1603#1606#1606#1583#1607
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
        mmLeft = 94747
        mmTop = 232569
        mmWidth = 13970
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = #1578#1589#1608#1610#1576' '#1603#1606#1606#1583#1607
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
        mmLeft = 34591
        mmTop = 232569
        mmWidth = 17865
        BandType = 10
        LayerName = PageLayer1
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape3'
        mmHeight = 12965
        mmLeft = 0
        mmTop = 232040
        mmWidth = 203300
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = 'FormDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 164571
        mmTop = 4498
        mmWidth = 15081
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1601#1585#1605':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6350
        mmLeft = 180182
        mmTop = 4763
        mmWidth = 12700
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 244475
        mmWidth = 203200
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'FormNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 164571
        mmTop = 11377
        mmWidth = 15081
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6350
        mmLeft = 180182
        mmTop = 11642
        mmWidth = 13229
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 219075
        mmLeft = 202936
        mmTop = 25665
        mmWidth = 265
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 219075
        mmLeft = 0
        mmTop = 25665
        mmWidth = 3440
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 201348
        mmLeft = 195263
        mmTop = 25665
        mmWidth = 3175
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1585#1583#1610#1601
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
        mmLeft = 195792
        mmTop = 25929
        mmWidth = 6879
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'CustomerID1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 164571
        mmTop = 17727
        mmWidth = 15081
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 201348
        mmLeft = 174096
        mmTop = 25665
        mmWidth = 3175
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 201348
        mmLeft = 182034
        mmTop = 25665
        mmWidth = 3440
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 219075
        mmLeft = 26988
        mmTop = 25665
        mmWidth = 3440
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 201348
        mmLeft = 97102
        mmTop = 25400
        mmWidth = 3440
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = '_CustomerName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7144
        mmLeft = 83344
        mmTop = 17727
        mmWidth = 80698
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = #1578#1606#1582#1608#1575#1607' '#1711#1585#1583#1575#1606' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6435
        mmLeft = 180182
        mmTop = 17992
        mmWidth = 18288
        BandType = 10
        LayerName = PageLayer1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
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
        mmHeight = 5821
        mmLeft = 3704
        mmTop = 14552
        mmWidth = 6879
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label101'
        OnGetText = ppLabel11GetText
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
        mmLeft = 2910
        mmTop = 7673
        mmWidth = 13758
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1589#1608#1585#1578' '#1582#1604#1575#1589#1607' '#1578#1606#1582#1608#1575#1607' '#1711#1585#1583#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6615
        mmLeft = 81492
        mmTop = 9790
        mmWidth = 39952
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        OnGetText = ppLabel2GetText
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
        mmLeft = 75406
        mmTop = 2910
        mmWidth = 52123
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        Border.mmPadding = 0
        Caption = #1603#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 174625
        mmTop = 25929
        mmWidth = 7144
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = ' '#1605#1600#1576#1600#1604#1600#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 529
        mmTop = 25929
        mmWidth = 26194
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1585#1581
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 27517
        mmTop = 25929
        mmWidth = 69321
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1600#1600#1600#1600#1575#1605' '#1583#1585#1610#1600#1600#1600#1600#1600#1575#1601#1578' '#1603#1600#1600#1606#1600#1600#1600#1606#1600#1600#1600#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 97631
        mmTop = 25929
        mmWidth = 76200
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 182563
        mmTop = 25929
        mmWidth = 12435
        BandType = 10
        LayerName = PageLayer1
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        mmHeight = 6615
        mmLeft = 0
        mmTop = 25400
        mmWidth = 203200
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
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcForms
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 720
    Top = 359
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = srcFormItems
    OpenDataSource = False
    UserName = 'DBPipeline2'
    Left = 40
    Top = 407
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object qryCustomer: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      #13'SELECT   * FROM       dbo.Customers LEFT OUTER JOIN'
      
        '                  dbo.CustomersGroup ON dbo.Customers.CustomerGr' +
        'pID = '
      '                  dbo.CustomersGroup.CustomerGrpID')
    Left = 392
    Top = 8
  end
  object qryFormItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryFormItemsBeforeInsert
    AfterInsert = qryFormItemsAfterInsert
    BeforeEdit = qryFormItemsBeforeEdit
    BeforePost = qryFormItemsBeforePost
    BeforeDelete = qryFormItemsBeforeDelete
    AfterDelete = qryFormItemsAfterDelete
    Parameters = <
      item
        Name = 'FormID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     dbo.FormItems.*'
      'FROM         dbo.FormItems  '
      'where FormID=:FormID'
      'and ( YearID = :YearID )'
      'and ( ServerID = :ServerID )')
    Left = 57
    Top = 207
    object qryFormItemsFormItemID: TIntegerField
      FieldName = 'FormItemID'
    end
    object qryFormItemsFormID: TIntegerField
      Tag = 3
      FieldName = 'FormID'
    end
    object qryFormItemsRow: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1583#1610#1601
      FieldName = 'Row'
    end
    object qryFormItemsCheckNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'CheckNumber'
      FixedChar = True
      Size = 20
    end
    object qryFormItemsCheckDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1670#1603
      FieldName = 'CheckDate'
      ImportedConstraint = '0'
      EditMask = '!9999/99/00;1;_'
      Size = 10
    end
    object qryFormItemsCheckType: TWordField
      Tag = 3
      FieldName = 'CheckType'
    end
    object qryFormItemsItemAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'ItemAmount'
      Required = True
      currency = True
      Precision = 19
    end
    object qryFormItemsItemNote: TStringField
      Tag = 3
      DisplayLabel = #1588#1585#1581
      FieldName = 'ItemNote'
      Size = 255
    end
    object qryFormItemsBankName: TStringField
      Tag = 3
      FieldName = 'BankName'
    end
    object qryFormItemsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryFormItemsYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryFormItemsAccountNumber: TStringField
      Tag = 3
      FieldName = 'AccountNumber'
      FixedChar = True
      Size = 25
    end
    object qryFormItemsCity: TStringField
      Tag = 3
      FieldName = 'City'
      FixedChar = True
    end
    object qryFormItemsCustomerID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
      FieldName = 'CustomerID2'
      OnChange = qryFormItemsCustomerID2Change
    end
    object qryFormItemsTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '
      FieldName = 'TopicCode'
    end
    object qryFormItemsDetailCode: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610
      FieldName = 'DetailCode'
      EditMask = '999999999999999999'
      Size = 12
    end
    object qryFormItemsCTopicCode: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
      FieldName = 'CTopicCode'
      EditMask = '999999999999999999'
      Size = 12
    end
    object qryFormItemsCTopicCode2: TStringField
      Tag = 3
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'3'
      FieldName = 'CTopicCode2'
      EditMask = '999999999999999999'
      Size = 12
    end
    object qryFormItemsBudgetCode: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1576#1608#1583#1580#1607
      FieldName = 'BudgetCode'
    end
    object qryFormItemsProjectID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1591#1585#1581
      FieldName = 'ProjectID'
    end
    object qryFormItemspreFormItemID: TIntegerField
      Tag = 3
      FieldName = 'preFormItemID'
    end
    object qryFormItemsAidInfoNo: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'AidInfoNo'
    end
    object qryFormItemsAidInfoDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'AidInfoDate'
      EditMask = '9999/99/99;1;_'
      FixedChar = True
      Size = 10
    end
    object qryFormItems_CTopicName_L1: TStringField
      FieldKind = fkLookup
      FieldName = '_CTopicName_L1'
      LookupDataSet = DmF.qryAccCenterTopics
      LookupKeyFields = 'CTopicCode'
      LookupResultField = 'CTopicName'
      KeyFields = 'CTopicCode'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryFormItems_CTopicName2_L1: TStringField
      FieldKind = fkLookup
      FieldName = '_CTopicName2_L1'
      LookupDataSet = DmF.qryAccCenterTopics2
      LookupKeyFields = 'CTopicCode2'
      LookupResultField = 'CTopicName2'
      KeyFields = 'CTopicCode2'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryFormItems_DetailsName_L1: TStringField
      FieldKind = fkLookup
      FieldName = '_DetailsName_L1'
      LookupDataSet = DmF.qryAccDetailCode
      LookupKeyFields = 'DetailCode'
      LookupResultField = 'DetailName'
      KeyFields = 'DetailCode'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryFormItems_TopicCodeName_L1: TStringField
      FieldKind = fkLookup
      FieldName = '_TopicCodeName_L1'
      LookupDataSet = DmF.qryAccTopicCode
      LookupKeyFields = 'TopicCode'
      LookupResultField = 'MoeenName'
      KeyFields = 'TopicCode'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryFormItems_Cudtomername2: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
      FieldKind = fkLookup
      FieldName = '_Cudtomername2'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustomerID2'
      LookupCache = True
      Size = 60
      Lookup = True
    end
    object qryFormItemsAccState: TWordField
      DisplayLabel = #1578#1588#1582#1610#1589
      FieldName = 'AccState'
      OnGetText = qryFormItemsAccStateGetText
      OnSetText = qryFormItemsAccStateSetText
    end
    object qryFormItems_AccStateDefault: TIntegerField
      FieldKind = fkLookup
      FieldName = '_AccStateDefault'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'accStateDefault'
      KeyFields = 'CustomerID2'
      Lookup = True
    end
  end
  object popprint: TPopupMenu
    AutoHotkeys = maManual
    Left = 72
    Top = 471
    object N11: TMenuItem
      Caption = #1670#1575#1662'1'
      object N9: TMenuItem
        Caption = #1601#1585#1605' '#1580#1575#1585#1610
        Hint = 'rptPaymentCash_Ctopic1,2.rtm'
        OnClick = AllC_L_i_c_k_Click
      end
      object N10: TMenuItem
        Tag = 1
        Caption = #1607#1605#1607' '#1601#1585#1605' '#1607#1575
        Hint = 'rptPaymentCash_Ctopic1,2.rtm'
        OnClick = AllC_L_i_c_k_Click
      end
    end
    object N21: TMenuItem
      Caption = #1670#1575#1662'2'
      object N14: TMenuItem
        Caption = #1601#1585#1605' '#1580#1575#1585#1610
        Hint = 'rptPaymentCash_Ctopic1.rtm'
        OnClick = AllC_L_i_c_k_Click
      end
      object N15: TMenuItem
        Tag = 1
        Caption = #1607#1605#1607' '#1601#1585#1605' '#1607#1575
        Hint = 'rptPaymentCash_Ctopic1.rtm'
        OnClick = AllC_L_i_c_k_Click
      end
    end
    object N31: TMenuItem
      Caption = #1670#1575#1662'3'
      object N16: TMenuItem
        Caption = #1601#1585#1605' '#1580#1575#1585#1610
        Hint = 'rptPaymentCash_withoutCtopic.rtm'
        OnClick = AllC_L_i_c_k_Click
      end
      object N17: TMenuItem
        Tag = 1
        Caption = #1607#1605#1607' '#1601#1585#1605' '#1607#1575
        Hint = 'rptPaymentCash_withoutCtopic.rtm'
        OnClick = AllC_L_i_c_k_Click
      end
    end
    object N32: TMenuItem
      Tag = 1
      Caption = #1670#1575#1662' '#1576#1575' '#1603#1583' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
      Hint = 'rptPaymentCash_Customer.rtm'
      OnClick = AllC_L_i_c_k_Click
    end
    object AllC_L_i_c_k_: TMenuItem
      Caption = 'Hint _ Tag'
      Visible = False
      OnClick = AllC_L_i_c_k_Click
    end
    object NReportFileName1: TMenuItem
      Caption = #1670#1575#1662' 1 '#1578#1606#1592#1610#1605#1575#1578
      OnClick = AllC_L_i_c_k_Click
    end
    object NReportFileName2: TMenuItem
      Caption = #1670#1575#1662' 2 '#1578#1606#1592#1610#1605#1575#1578
      OnClick = AllC_L_i_c_k_Click
    end
  end
  object srcFormsDetail: TDataSource
    AutoEdit = False
    DataSet = qryFormsDetail
    Left = 648
    Top = 384
  end
  object qryDetail_Item: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeInsert = qryFormItemsBeforeInsert
    Parameters = <>
    Left = 145
    Top = 343
    object qryDetail_ItemFormNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'FormNumber'
    end
    object qryDetail_ItemFormDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'FormDate'
      FixedChar = True
      Size = 10
    end
    object qryDetail_ItemCustomerID1: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610
      FieldName = 'CustomerID1'
    end
    object qryDetail_ItemCustName1: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1605#1588#1578#1585#1610'1'
      FieldName = 'CustName1'
      Size = 120
    end
    object qryDetail_ItemCustomerID2: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610' 2'
      FieldName = 'CustomerID2'
      ImportedConstraint = '0'
    end
    object qryDetail_ItemCustName2: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1605#1588#1578#1585#1610'1'
      FieldName = 'CustName2'
      Size = 120
    end
    object qryDetail_ItemCustomerID2D: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610' 2'#1570#1740#1578#1605
      FieldName = 'CustomerID2D'
      ImportedConstraint = '0'
    end
    object qryDetail_ItemCustName2D: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1605#1588#1578#1585#1610'2'#1575#1740#1578#1605
      FieldName = 'CustName2D'
      Size = 120
    end
    object qryDetail_ItemFormItemID: TIntegerField
      FieldName = 'FormItemID'
      ImportedConstraint = '0'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDetail_ItemFormID: TIntegerField
      DisplayLabel = 'ID '#1605#1585#1576#1608#1591' '#1576#1607' Master'
      FieldName = 'FormID'
      ImportedConstraint = '0'
    end
    object qryDetail_ItemRow: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1583#1610#1601
      FieldName = 'Row'
      ImportedConstraint = '0'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDetail_ItemCheckNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1670#1603
      FieldName = 'CheckNumber'
      ImportedConstraint = '0'
      EditMask = '!99999999;0;_'
      Size = 20
    end
    object qryDetail_ItemCheckDate: TStringField
      Tag = 3
      DisplayLabel = #1587#1585#1585#1587#1610#1583' '#1670#1603
      FieldName = 'CheckDate'
      ImportedConstraint = '0'
      Required = True
      EditMask = '!9999/99/99;1;_'
      Size = 10
    end
    object qryDetail_ItemCheckType: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1670#1603
      FieldName = 'CheckType'
      ImportedConstraint = '0'
      OnGetText = qryDetail_ItemCheckTypeGetText
    end
    object qryDetail_ItemItemAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'ItemAmount'
      ImportedConstraint = '0'
      currency = True
      Precision = 19
    end
    object qryDetail_ItemItemNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ItemNote'
      ImportedConstraint = '0'
      Size = 255
    end
    object qryDetail_ItemBankName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1576#1575#1606#1603
      FieldName = 'BankName'
      ImportedConstraint = '0'
    end
    object qryDetail_ItemServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryDetail_ItemYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryDetail_ItemCity: TStringField
      Tag = 3
      DisplayLabel = #1588#1607#1585
      FieldName = 'City'
      ImportedConstraint = '0'
      FixedChar = True
    end
    object qryDetail_ItemTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '
      FieldName = 'TopicCode'
    end
    object qryDetail_ItemDetailCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'DetailCode'
      ImportedConstraint = '0'
      EditMask = '999999999999999999'
      Size = 12
    end
    object qryDetail_ItemCTopicCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'CTopicCode'
      ImportedConstraint = '0'
      EditMask = '999999999999999999'
      Size = 12
    end
    object qryDetail_ItemBudgetCode: TIntegerField
      DisplayLabel = #1603#1583' '#1576#1608#1583#1580#1607' '#1575#1610
      FieldName = 'BudgetCode'
      ImportedConstraint = '0'
    end
    object qryDetail_ItempreFormItemID: TIntegerField
      DisplayLabel = 'ID '#1587#1591#1581' '#1602#1576#1604#1610
      FieldName = 'preFormItemID'
      ImportedConstraint = '0'
    end
    object qryDetail_ItemAccountNumber: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1588#1593#1576#1607
      FieldName = 'AccountNumber'
      ImportedConstraint = '0'
      Size = 25
    end
    object qryDetail_ItemProjectID: TIntegerField
      FieldName = 'ProjectID'
    end
    object qryDetail_ItemAidInfoNo: TStringField
      FieldName = 'AidInfoNo'
      Size = 40
    end
    object qryDetail_ItemAidInfoDate: TStringField
      FieldName = 'AidInfoDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryDetail_ItemCTopicCode2: TStringField
      FieldName = 'CTopicCode2'
      EditMask = '999999999999999999'
      Size = 12
    end
    object qryDetail_Item_CustomerID2: TStringField
      FieldKind = fkLookup
      FieldName = '_CustomerID2'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustomerID2'
      Size = 255
      Lookup = True
    end
    object qryDetail_ItemFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryDetail_ItemCashCheckFormID: TIntegerField
      FieldName = 'CashCheckFormID'
    end
    object qryDetail_ItemLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryDetail_ItemCheckFor: TStringField
      DisplayLabel = #1583#1585' '#1608#1580#1607
      FieldName = 'CheckFor'
      Size = 255
    end
    object qryDetail_ItemAmountArz: TFloatField
      DisplayLabel = #1578#1593#1583#1575#1583' '#1575#1585#1586
      FieldName = 'AmountArz'
    end
    object qryDetail_ItemCashWage: TBCDField
      FieldName = 'CashWage'
      currency = True
      Precision = 19
    end
    object qryDetail_ItemAccountNumberNew: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607#8207#1581#1587#1575#1576
      FieldName = 'AccountNumberNew'
      Size = 32
    end
    object qryDetail_ItemFormType: TWordField
      DisplayLabel = #1606#1575#1605' '#1601#1585#1605
      FieldName = 'FormType'
      OnGetText = qryFormsDetailFormTypeGetText
    end
    object qryDetail_ItemPayTypeName: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1583#1585#1610#1575#1601#1578'/'#1662#1585#1583#1575#1582#1578
      FieldName = 'PayTypeName'
      Size = 50
    end
    object qryDetail_ItemTopicTypeName: TStringField
      Tag = 3
      DisplayLabel = #1605#1608#1590#1608#1593' '#1583#1585#1610#1575#1601#1578'/'#1662#1585#1583#1575#1582#1578
      FieldName = 'TopicTypeName'
      Size = 50
    end
  end
  object srcDetail_Item: TDataSource
    DataSet = qryDetail_Item
    Left = 161
    Top = 376
  end
  object qryFormsDetail: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeInsert = qryFormItemsBeforeInsert
    Parameters = <>
    Left = 564
    Top = 371
    object qryFormsDetailFormID: TIntegerField
      FieldName = 'FormID'
      Required = True
    end
    object qryFormsDetailFormType: TWordField
      DisplayLabel = #1606#1575#1605' '#1601#1585#1605
      FieldName = 'FormType'
      Required = True
      OnGetText = qryFormsDetailFormTypeGetText
    end
    object qryFormsDetailFormNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'FormNumber'
      Required = True
    end
    object qryFormsDetailFormDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'FormDate'
      Required = True
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryFormsDetailCustomerID1: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610
      FieldName = 'CustomerID1'
    end
    object qryFormsDetail_CustomerID1: TStringField
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610
      FieldKind = fkLookup
      FieldName = '_CustomerID1'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustomerID1'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryFormsDetailCustomerID2: TIntegerField
      FieldName = 'CustomerID2'
    end
    object qryFormsDetail_CustomerID2: TStringField
      FieldKind = fkLookup
      FieldName = '_CustomerID2'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustomerID2'
      LookupCache = True
      Size = 150
      Lookup = True
    end
    object qryFormsDetailAmount: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Amount'
      Required = True
      currency = True
      Precision = 19
    end
    object qryFormsDetailBudgetCode: TIntegerField
      FieldName = 'BudgetCode'
    end
    object qryFormsDetailServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryFormsDetailYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryFormsDetailTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '
      FieldName = 'TopicCode'
    end
    object qryFormsDetailDetailCode: TStringField
      FieldName = 'DetailCode'
      EditMask = '999999999999999999'
      Size = 12
    end
    object qryFormsDetailCTopicCode: TStringField
      FieldName = 'CTopicCode'
      EditMask = '999999999999999999'
      Size = 12
    end
    object qryFormsDetailFomNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'FomNote'
      Size = 255
    end
    object qryFormsDetailProjectID: TIntegerField
      FieldName = 'ProjectID'
    end
    object qryFormsDetailAidInfoNo: TStringField
      FieldName = 'AidInfoNo'
      Size = 40
    end
    object qryFormsDetailAidInfoDate: TStringField
      FieldName = 'AidInfoDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryFormsDetailCTopicCode2: TStringField
      FieldName = 'CTopicCode2'
      EditMask = '999999999999999999'
      Size = 12
    end
    object qryFormsDetailCustomerName2: TStringField
      FieldName = 'CustomerName2'
      Size = 100
    end
    object qryFormsDetailPayTypes: TWordField
      DisplayLabel = #1606#1608#1593' '#1583#1585#1610#1575#1601#1578'/'#1662#1585#1583#1575#1582#1578
      FieldName = 'PayTypes'
    end
    object qryFormsDetailTopicTypes: TWordField
      DisplayLabel = #1605#1608#1590#1608#1593' '#1583#1585#1610#1575#1601#1578'/'#1662#1585#1583#1575#1582#1578
      FieldName = 'TopicTypes'
      LookupKeyFields = 'Code'
      LookupResultField = 'Name'
      KeyFields = 'PayTypes'
    end
    object qryFormsDetailFormState: TWordField
      FieldName = 'FormState'
    end
    object qryFormsDetailFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryFormsDetailLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryFormsDetailModifyDate: TDateTimeField
      FieldName = 'ModifyDate'
    end
    object qryFormsDetailCashCheckFormID: TIntegerField
      FieldName = 'CashCheckFormID'#8204
    end
  end
  object qryDetail_ItemT: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeInsert = qryFormItemsBeforeInsert
    Parameters = <
      item
        Name = 'GuaranteesFormID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Type'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        F.FormNumber, F.FormDate, F.CustomerID1, C1.CustNa' +
        'me, Fi.FormItemID, Fi.FormID, Fi.Row,'
      
        '                         Fi.CheckNumber, Fi.CheckDate, Fi.CheckT' +
        'ype, Fi.ItemAmount, Fi.ItemNote, Fi.BankName,'
      
        '                         Fi.AccountNumber, Fi.City, Fi.CustomerI' +
        'D2, Fi.TopicCode, Fi.DetailCode, Fi.CTopicCode,'
      
        '                         Fi.CTopicCode2, Fi.BudgetCode, Fi.Proje' +
        'ctID, Fi.preFormItemID, Fi.AidInfoNo, Fi.AidInfoDate,'
      
        '                         Fi.FirstUser, Fi.LastUser, Fi.AccountNu' +
        'mberNew, Fi.AmountArz, Fi.CheckFor, Fi.CashWage, Fi.ServerID,'
      
        '                         Fi.YearID, F.CashCheckFormID ,  C2.Cust' +
        'Name CustName2, Fi.CustomerID2 CustomerID2D , CD.CustName CustNa' +
        'meD'
      'FROM            FormItems Fi INNER JOIN'
      
        '                         Forms F ON Fi.FormID = F.FormID AND Fi.' +
        'ServerID = F.ServerID AND Fi.YearID = F.YearID INNER JOIN'
      
        '                         Customers C1 ON F.CustomerID1 = C1.Cust' +
        'ID INNER JOIN'
      
        '                         Customers C2 ON F.CustomerID2 = C2.Cust' +
        'ID INNER JOIN'
      
        '                         Customers CD ON Fi.CustomerID2 = CD.Cus' +
        'tID'
      ''
      'WHERE        (F.GuaranteesFormID = :GuaranteesFormID )'
      'AND ( F.YearID = :YearID )'
      'AND ( F.ServerID = :ServerID )'
      'AND (F.FormType = :Type )'
      ''
      'ORDER BY Fi.FormID'
      ''
      '')
    Left = 513
    Top = 247
    object qryDetail_ItemTRow: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1583#1610#1601
      FieldName = 'Row'
      ImportedConstraint = '0'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDetail_ItemTFormNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'FormNumber'
    end
    object qryDetail_ItemTFormDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'FormDate'
      FixedChar = True
      Size = 10
    end
    object qryDetail_ItemTCustomerID1: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610
      FieldName = 'CustomerID1'
    end
    object qryDetail_ItemTCustName: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1605#1588#1578#1585#1610
      FieldName = 'CustName'
      Size = 120
    end
    object qryDetail_ItemTCheckNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1670#1603
      FieldName = 'CheckNumber'
      ImportedConstraint = '0'
      EditMask = '!99999999;0;_'
      Size = 20
    end
    object qryDetail_ItemTCheckDate: TStringField
      Tag = 3
      DisplayLabel = #1587#1585#1585#1587#1610#1583' '#1670#1603
      FieldName = 'CheckDate'
      ImportedConstraint = '0'
      Required = True
      EditMask = '!9999/99/99;1;_'
      Size = 10
    end
    object qryDetail_ItemTCheckType: TWordField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1670#1603
      FieldName = 'CheckType'
      ImportedConstraint = '0'
      OnGetText = qryDetail_ItemCheckTypeGetText
    end
    object qryDetail_ItemTItemAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'ItemAmount'
      ImportedConstraint = '0'
      currency = True
      Precision = 19
    end
    object qryDetail_ItemTItemNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ItemNote'
      ImportedConstraint = '0'
      Size = 255
    end
    object qryDetail_ItemTBankName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1576#1575#1606#1603
      FieldName = 'BankName'
      ImportedConstraint = '0'
    end
    object qryDetail_ItemTServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryDetail_ItemTYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryDetail_ItemTCity: TStringField
      Tag = 3
      DisplayLabel = #1588#1607#1585
      FieldName = 'City'
      ImportedConstraint = '0'
      FixedChar = True
    end
    object qryDetail_ItemTTopicCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '
      FieldName = 'TopicCode'
    end
    object qryDetail_ItemTDetailCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'DetailCode'
      ImportedConstraint = '0'
      EditMask = '999999999999999999'
      Size = 12
    end
    object qryDetail_ItemTCustomerID2: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610' 2'
      FieldName = 'CustomerID2'
      ImportedConstraint = '0'
    end
    object qryDetail_ItemTCTopicCode: TStringField
      DisplayLabel = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'#39' '#1581#1587#1575#1576#1583#1575#1585#1610
      FieldName = 'CTopicCode'
      ImportedConstraint = '0'
      EditMask = '999999999999999999'
      Size = 12
    end
    object qryDetail_ItemTBudgetCode: TIntegerField
      DisplayLabel = #1603#1583' '#1576#1608#1583#1580#1607' '#1575#1610
      FieldName = 'BudgetCode'
      ImportedConstraint = '0'
    end
    object qryDetail_ItemTpreFormItemID: TIntegerField
      DisplayLabel = 'ID '#1587#1591#1581' '#1602#1576#1604#1610
      FieldName = 'preFormItemID'
      ImportedConstraint = '0'
    end
    object qryDetail_ItemTAccountNumber: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1588#1593#1576#1607
      FieldName = 'AccountNumber'
      ImportedConstraint = '0'
      Size = 25
    end
    object qryDetail_ItemTProjectID: TIntegerField
      FieldName = 'ProjectID'
    end
    object qryDetail_ItemTAidInfoNo: TStringField
      FieldName = 'AidInfoNo'
      Size = 40
    end
    object qryDetail_ItemTAidInfoDate: TStringField
      FieldName = 'AidInfoDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryDetail_ItemTCTopicCode2: TStringField
      FieldName = 'CTopicCode2'
      EditMask = '999999999999999999'
      Size = 12
    end
    object qryDetail_ItemT_CustomerID2: TStringField
      FieldKind = fkLookup
      FieldName = '_CustomerID2'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustomerID2'
      Size = 255
      Lookup = True
    end
    object qryDetail_ItemTFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryDetail_ItemTCashCheckFormID: TIntegerField
      FieldName = 'CashCheckFormID'#8204
    end
    object qryDetail_ItemTLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryDetail_ItemTCheckFor: TStringField
      DisplayLabel = #1583#1585' '#1608#1580#1607
      FieldName = 'CheckFor'
      Size = 255
    end
    object qryDetail_ItemTAmountArz: TFloatField
      DisplayLabel = #1578#1593#1583#1575#1583' '#1575#1585#1586
      FieldName = 'AmountArz'
    end
    object qryDetail_ItemTCashWage: TBCDField
      FieldName = 'CashWage'
      currency = True
      Precision = 19
    end
    object qryDetail_ItemTAccountNumberNew: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607#8207#1581#1587#1575#1576
      FieldName = 'AccountNumberNew'
      Size = 32
    end
    object qryDetail_ItemTFormItemID: TIntegerField
      FieldName = 'FormItemID'
      ImportedConstraint = '0'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDetail_ItemTFormID: TIntegerField
      DisplayLabel = 'ID '#1605#1585#1576#1608#1591' '#1576#1607' Master'
      FieldName = 'FormID'
      ImportedConstraint = '0'
    end
    object qryDetail_ItemTCustName2: TStringField
      DisplayLabel = #1605#1588#1578#1585#1740' 2'
      FieldName = 'CustName2'
      Size = 150
    end
    object qryDetail_ItemTCustomerID2D: TIntegerField
      DisplayLabel = #1705#1583' '#1605#1588#1578#1585#1740' '#1570#1740#1578#1605
      FieldName = 'CustomerID2D'
    end
    object qryDetail_ItemTCustNameD: TStringField
      DisplayLabel = ' '#1605#1588#1578#1585#1740' '#1570#1740#1578#1605
      FieldName = 'CustNameD'
      Size = 150
    end
  end
  object srcDetail_ItemT: TDataSource
    DataSet = qryDetail_ItemT
    Left = 417
    Top = 360
  end
  object qryLoan: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    BeforeInsert = qryFormItemsBeforeInsert
    AfterInsert = qryFormItemsAfterInsert
    BeforeEdit = qryFormItemsBeforeEdit
    BeforePost = qryFormItemsBeforePost
    BeforeDelete = qryFormItemsBeforeDelete
    AfterDelete = qryFormItemsAfterDelete
    Parameters = <
      item
        Name = 'LoansFormID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'LoansType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        F.FormNumber, F.FormDate, F.CustomerID1, C1.CustNa' +
        'me AS _CustomerName, F.CustomerID2, C2.CustName AS _CustomerName' +
        '2, Fi.CustomerID2 AS CustomerID2D, CD.CustName AS CustomerNameD2' +
        ', Fi.Row, '
      
        '                         Fi.CheckNumber, Fi.CheckDate, Fi.ItemNo' +
        'te, Fi.ItemAmount, Fi.FormItemID, Fi.FormID, Fi.CashWage, Fi.Ser' +
        'verID, Fi.YearID, F.LoansFormID, Fi.AidInfoNo, Fi.AidInfoDate, F' +
        'i.AccountNumberNew, Fi.AmountArz, Fi.CheckState, '
      
        '                         Fi.CheckFor, Fi.AccState, Fi.ItemState,' +
        ' Fi.ItemStateComment, Fi.SeverableAmount, Fi.VAT, Fi.TopicTypesI' +
        ', Fi.AccountNumberNew1, Fi.ItemAmount + Fi.CashWage AS ItemAmoun' +
        't_CashWage, T.ReciptCaption, R.ReciptNumber, '
      
        '                         Ri.StuffCode, S.c_StuffName, Ri.TotalIn' +
        'putPrice + Ri.TotalOutputPrice AS TotalPrice, Ri.TaxCo, Ri.TaxVa' +
        'lue, Ri.TotallSellPrice, L.Name AS PayTypeName'
      'FROM            StuffCoding AS S RIGHT OUTER JOIN'
      '                         FormItems AS Fi INNER JOIN'
      
        '                         Forms AS F ON Fi.FormID = F.FormID AND ' +
        'Fi.ServerID = F.ServerID AND Fi.YearID = F.YearID INNER JOIN'
      
        '                         Customers AS C1 ON F.CustomerID1 = C1.C' +
        'ustID INNER JOIN'
      
        '                         Customers AS C2 ON F.CustomerID2 = C2.C' +
        'ustID INNER JOIN'
      
        '                         Customers AS CD ON Fi.CustomerID2 = CD.' +
        'CustID LEFT OUTER JOIN'
      
        '                         ReciptItems AS Ri ON Fi.ID = Ri.FormIte' +
        'ms_ID ON S.c_StuffCode = Ri.StuffCode LEFT OUTER JOIN'
      '                         ReciptTypes1 AS T INNER JOIN'
      
        '                         Recipts AS R ON T.ReciptType = R.Recipt' +
        'Type ON Ri.ReciptID = R.ReciptID AND Ri.ServerID = R.ServerID AN' +
        'D Ri.YearID = R.YearID LEFT OUTER JOIN'
      '                         LookUps AS L ON F.PayTypes = L.LookUpID'
      
        'WHERE        (F.LoansFormID = :LoansFormID) AND (Fi.YearID = :Ye' +
        'arID)'
      'AND (Fi.ServerID = :ServerID) AND (F.FormType = :LoansType)'
      ''
      '')
    Left = 304
    Top = 320
    object IntegerField7: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1606#1583#1607
      FieldName = 'FormItemID'
    end
    object qryLoanFormNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1608#1575#1605
      FieldName = 'FormNumber'
    end
    object qryLoanFormDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1608#1575#1605
      FieldName = 'FormDate'
      FixedChar = True
      Size = 10
    end
    object qryLoanCustomerID1: TIntegerField
      DisplayLabel = #1705#1583#1605#1588#1578#1585#1740'1'
      FieldName = 'CustomerID1'
    end
    object IntegerField9: TIntegerField
      Tag = 3
      DisplayLabel = #1585#1583#1610#1601
      FieldName = 'Row'
    end
    object StringField9: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1602#1587#1591
      FieldName = 'CheckNumber'
      FixedChar = True
      Size = 20
    end
    object StringField10: TStringField
      Tag = 3
      DisplayLabel = #1587#1585#1585#1587#1610#1583' '#1602#1587#1591
      FieldName = 'CheckDate'
      ImportedConstraint = '0'
      EditMask = '!9999/99/00;1;_'
      Size = 10
    end
    object BCDField2: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594' '#1602#1587#1591
      FieldName = 'ItemAmount'
      Required = True
      currency = True
      Precision = 19
    end
    object StringField11: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610
      FieldName = 'ItemNote'
      Size = 255
    end
    object IntegerField10: TIntegerField
      DisplayLabel = #1705#1583#1605#1588#1578#1585#1740'2'
      FieldName = 'CustomerID2'
    end
    object qryFormItemsCashWage: TBCDField
      Tag = 3
      DisplayLabel = #1576#1607#1585#1607' '#1608#1575#1605
      FieldName = 'CashWage'
      Required = True
      currency = True
      Precision = 19
    end
    object qryLoanLoansFormID: TIntegerField
      FieldName = 'LoansFormID'
    end
    object qryLoanServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryLoanYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryLoanFormID: TIntegerField
      FieldName = 'FormID'
    end
    object qryLoan_CustomerName: TStringField
      DisplayLabel = #1605#1588#1578#1585#1740'1'
      FieldName = '_CustomerName'
      Size = 60
    end
    object qryLoan_CustomerName2: TStringField
      DisplayLabel = #1605#1588#1578#1585#1740'2'
      FieldName = '_CustomerName2'
      Size = 60
    end
    object qryLoanAidInfoNo: TStringField
      FieldName = 'AidInfoNo'
      Size = 40
    end
    object qryLoanAidInfoDate: TStringField
      FieldName = 'AidInfoDate'
      FixedChar = True
      Size = 10
    end
    object qryLoanAccountNumberNew: TStringField
      FieldName = 'AccountNumberNew'
      Size = 60
    end
    object qryLoanAmountArz: TFloatField
      FieldName = 'AmountArz'
    end
    object qryLoanCheckState: TWordField
      FieldName = 'CheckState'
    end
    object qryLoanCheckFor: TStringField
      FieldName = 'CheckFor'
      Size = 255
    end
    object qryLoanAccState: TWordField
      FieldName = 'AccState'
    end
    object qryLoanItemState: TWordField
      FieldName = 'ItemState'
    end
    object qryLoanItemStateComment: TWideStringField
      FieldName = 'ItemStateComment'
      Size = 200
    end
    object qryLoanSeverableAmount: TWordField
      FieldName = 'SeverableAmount'
    end
    object qryLoanVAT: TBCDField
      FieldName = 'VAT'
      Precision = 19
    end
    object qryLoanTopicTypesI: TIntegerField
      FieldName = 'TopicTypesI'
    end
    object qryLoanAccountNumberNew1: TStringField
      FieldName = 'AccountNumberNew1'
      Size = 60
    end
    object qryLoanItemAmount_CashWage: TBCDField
      FieldName = 'ItemAmount_CashWage'
      ReadOnly = True
      Precision = 19
    end
    object qryLoanCustomerID2D: TIntegerField
      DisplayLabel = ' '#1705#1583#1605#1588#1578#1585#1740' '#1570#1740#1578#1605
      FieldName = 'CustomerID2D'
    end
    object qryLoanCustomerNameD2: TStringField
      DisplayLabel = #1605#1588#1578#1585#1740' '#1570#1740#1578#1605
      FieldName = 'CustomerNameD2'
      Size = 150
    end
    object qryLoanReciptCaption: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryLoanReciptNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptNumber'
    end
    object qryLoanStuffCode: TLargeintField
      DisplayLabel = #1705#1583#1705#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryLoanc_StuffName: TStringField
      DisplayLabel = #1705#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 150
    end
    object qryLoanTotalPrice: TBCDField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'TotalPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryLoanTaxCo: TFloatField
      DisplayLabel = #1583#1585#1589#1583
      FieldName = 'TaxCo'
    end
    object qryLoanTaxValue: TBCDField
      DisplayLabel = #1605#1575#1604#1740#1575#1578
      FieldName = 'TaxValue'
      currency = True
      Precision = 19
    end
    object qryLoanTotallSellPrice: TBCDField
      DisplayLabel = #1576#1607#1575#1740' '#1582#1575#1604#1589
      FieldName = 'TotallSellPrice'
      currency = True
      Precision = 19
    end
    object qryLoanPayTypeName: TStringField
      DisplayLabel = #1606#1608#1593' '#1608#1575#1605
      FieldName = 'PayTypeName'
      Size = 50
    end
  end
  object srcLoan: TDataSource
    DataSet = qryLoan
    Left = 280
    Top = 375
  end
  object pdbLoan: TppDBPipeline
    DataSource = srcLoan
    OpenDataSource = False
    UserName = 'pdbLoan'
    Left = 280
    Top = 431
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object pdbDetail_Item: TppDBPipeline
    DataSource = srcDetail_Item
    OpenDataSource = False
    UserName = 'pdbDetail_Item'
    Left = 160
    Top = 431
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object pdbDetail_ItemT: TppDBPipeline
    DataSource = srcDetail_ItemT
    OpenDataSource = False
    UserName = 'pdbDetail_ItemT'
    Left = 432
    Top = 431
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object pdbFormsDetail: TppDBPipeline
    DataSource = srcFormsDetail
    OpenDataSource = False
    UserName = 'pdbFormsDetail'
    Left = 576
    Top = 439
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object qryRelatedRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    Left = 520
    Top = 152
  end
  object qryRelatType: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT        FormType, FormCaption, DisplayFormType'
      'FROM            FormTypes'
      'WHERE        (FormType IN (0))')
    Left = 440
    Top = 231
    object qryRelatTypeFormType: TWordField
      FieldName = 'FormType'
    end
    object qryRelatTypeFormCaption: TStringField
      FieldName = 'FormCaption'
      Size = 50
    end
    object qryRelatTypeDisplayFormType: TWordField
      FieldName = 'DisplayFormType'
    end
  end
  object popRelatType: TPopupMenu
    Left = 560
    Top = 223
    object mnuGetOtherMoney: TMenuItem
      Tag = 1
      Caption = #1601#1585#1605' '#1601#1610#1588' '#1576#1575#1606#1603#1610'/'#1608#1580#1607' '#1606#1602#1583
    end
    object mnuPaymentCash: TMenuItem
      Tag = 2
      Caption = #1601#1585#1605' '#1578#1590#1605#1610#1606#1575#1578' '
    end
    object mnuGetCheck: TMenuItem
      Tag = 3
      Caption = #1601#1585#1605' '#1670#1603
    end
    object mnuLoan: TMenuItem
      Tag = 4
      Caption = #1601#1585#1605' '#1578#1587#1607#1610#1604#1575#1578' '
    end
    object mnuPaymentCashF: TMenuItem
      Tag = 5
      Caption = #1576#1585#1711' '#1585#1587#1610#1583#1711#1610' '#1575#1587#1606#1575#1583' '#1608' '#1605#1580#1608#1586' '#1662#1585#1583#1575#1582#1578
    end
  end
  object qryFormTypes: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT        FormType, FormCaption'
      'FROM            FormTypes')
    Left = 394
    Top = 164
    object qryFormTypesFormType: TWordField
      FieldName = 'FormType'
    end
    object qryFormTypesFormCaption: TStringField
      FieldName = 'FormCaption'
      Size = 50
    end
  end
end
