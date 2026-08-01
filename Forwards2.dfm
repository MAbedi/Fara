inherited Forwards2F: TForwards2F
  Caption = #1603#1575#1585#1578#1575#1576#1604' '#1578#1575#1610#1610#1583' '#1582#1585#1610#1583' '#1608' '#1608#1590#1593#1610#1578' '#1583#1585#1582#1608#1575#1587#1578' '#1607#1575
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object BitBtn6: TBitBtn
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
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendExel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 3
    end
  end
  inherited Panel2: TPanel
    Height = 65
    ExplicitHeight = 65
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
    object Image2: TImage
      Left = 184
      Top = 16
      Width = 16
      Height = 16
      AutoSize = True
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        0000100000000100180000000000000300000000000000000000000000000000
        0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1
        E2EFF1E2EFF1E2EFF199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFFE2EFF1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFFF0
        FBFFF0FBFFFFFFFFE2EFF1646F71646F71646F71646F71646F71646F71646F71
        646F71646F71646F7199A8ACF0FBFFF0FBFFF0FBFFFFFFFF99A8AC99A8AC99A8
        AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8ACF0FBFFF0
        FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FB
        FFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0
        FBFF}
      Visible = False
    end
    object Image1: TImage
      Left = 201
      Top = 16
      Width = 14
      Height = 15
      AutoSize = True
      Picture.Data = {
        07544269746D6170CA020000424DCA0200000000000036000000280000000E00
        00000F0000000100180000000000940200000000000000000000000000000000
        0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF
        F0FBFFF0FBFFF0FBFFF0FBFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FBFF0000FFFFFFE2EFF1
        E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF199A8
        ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF008000FFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFF
        FFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFF008000008000008000FFFFFFFFFFFF64
        6F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFFFF00800000800000
        8000008000008000FFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFFFF
        FFFF008000008000008000FFFFFF008000008000FFFFFF646F7199A8ACF0FBFF
        0000FFFFFFE2EFF1FFFFFF008000008000008000FFFFFFFFFFFFFFFFFF008000
        FFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1FFFFFF008000008000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1
        FFFFFF008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF646F7199A8
        ACF0FBFF0000FFFFFFE2EFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF646F7199A8ACF0FBFF0000FFFFFFE2EFF1646F71646F71646F
        71646F71646F71646F71646F71646F71646F71646F7199A8ACF0FBFF0000FFFF
        FF99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99A8AC99
        A8AC99A8ACF0FBFF0000F0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0
        FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFF0000}
      Visible = False
    end
  end
  inherited Panel3: TPanel
    Top = 65
    Height = 411
    ExplicitTop = 65
    ExplicitHeight = 412
    object grpMaster: TGroupBox
      Left = 2
      Top = 72
      Width = 778
      Height = 44
      Align = alTop
      Caption = ' '#1705#1583' '#1608' '#1606#1575#1605' '#1608#1575#1581#1583' '#1605#1578#1602#1575#1590#1740' '
      TabOrder = 0
      ExplicitWidth = 786
      object sbtnMaster: TSpeedButton
        AlignWithMargins = True
        Left = 671
        Top = 18
        Width = 23
        Height = 21
        Align = alRight
        Caption = '...'
        OnClick = sbtnMasterClick
        ExplicitLeft = 453
        ExplicitTop = 14
        ExplicitHeight = 22
      end
      object edtProductCode: TDBEdit
        AlignWithMargins = True
        Left = 700
        Top = 18
        Width = 81
        Height = 21
        Align = alRight
        DataField = 'ProductCode'
        DataSource = SrcMaster
        TabOrder = 0
      end
      object edtc_StuffName: TDBEdit
        AlignWithMargins = True
        Left = 127
        Top = 18
        Width = 538
        Height = 21
        Align = alClient
        BevelOuter = bvNone
        BevelKind = bkFlat
        Color = clBtnFace
        Ctl3D = True
        DataField = 'c_StuffName'
        DataSource = SrcMaster
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBNavigator1: TDBNavigator
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 116
        Height = 21
        DataSource = SrcMaster
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alLeft
        Flat = True
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 2
      end
    end
    object PageControl1: TPageControl
      Left = 2
      Top = 116
      Width = 778
      Height = 292
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 2
      OnChange = PageControl1Change
      ExplicitWidth = 786
      ExplicitHeight = 294
      object tbsTickets: TTabSheet
        Caption = #1582#1604#1575#1589#1607' '#1608#1590#1593#1740#1578' '#1583#1585#1582#1608#1575#1587#1578#1607#1575#1740' '#1582#1585#1740#1583
        object DBGridTickets: TDBGrid
          Tag = 111
          Left = 0
          Top = 0
          Width = 778
          Height = 266
          Align = alClient
          Color = clCream
          DataSource = srcTickets
          DrawingStyle = gdsGradient
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = #1588#1605#1575#1585#1607#8207#1583#1585#1582#1608#1575#1587#1578
              Visible = True
            end
            item
              Expanded = False
              FieldName = #1578#1575#1585#1610#1582#8207#1583#1585#1582#1608#1575#1587#1578
              Visible = True
            end
            item
              Expanded = False
              FieldName = #1603#1583#1603#1575#1604#1575
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = #1606#1575#1605#8207#1603#1575#1604#1575
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'c_StuffTecInfo'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = #1608#1575#1581#1583#1588#1605#1575#1585#1588
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = #1605#1602#1583#1575#1585#8207#1583#1585#1582#1608#1575#1587#1578
              Visible = True
            end
            item
              Expanded = False
              FieldName = #1578#1581#1602#1602#8207#1610#1575#1601#1578#1607
              Visible = True
            end
            item
              Expanded = False
              FieldName = #1576#1575#1602#1610#1605#1575#1606#1583#1607
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = #1603#1583#1602#1587#1605#1578
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CustName'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemNote'
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'st1'
              Width = 38
              Visible = True
            end>
        end
      end
      object tbsConfirmed: TTabSheet
        Caption = #1578#1575#1574#1740#1583' '#1576#1575#1585#1606#1575#1605#1607' '#1607#1575' '
        ImageIndex = 1
        object DBGridConfirmed: TDBGrid
          Tag = 111
          Left = 0
          Top = 0
          Width = 778
          Height = 225
          Align = alClient
          Color = clCream
          DataSource = srcConfirmed
          DrawingStyle = gdsGradient
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridConfirmedDrawColumnCell
          OnDblClick = DBGridConfirmedDblClick
          OnKeyDown = DBGridConfirmedKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'FitfulID'
              Width = 33
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'StuffCode'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'c_StuffName'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'c_StuffTecInfo'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'StoreID'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ReciptNumber'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ReciptDate'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ReciptCaption'
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Entity'
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RollbackEntity'
              Width = 57
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'weight'
              Width = 22
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AidNumber'
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AidDate'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Prv_ReciptNumber'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Prv_ReciptDate'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Confirming'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemNote'
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'st1'
              Width = 38
              Visible = True
            end>
        end
        object pnlConfirmed: TPanel
          Left = 0
          Top = 225
          Width = 778
          Height = 41
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            770
            41)
          object BitBtn3: TBitBtn
            Left = 683
            Top = 8
            Width = 75
            Height = 25
            Action = actConfirmed
            Anchors = [akRight, akBottom]
            Caption = #1578#1575#1574#1740#1583' '#1576#1575#1585#1606#1575#1605#1607
            TabOrder = 0
            ExplicitLeft = 691
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = #1578#1575#1574#1740#1583' '#1587#1575#1740#1585' '#1576#1575#1585#1606#1575#1605#1607' '#1607#1575
        ImageIndex = 2
        object DBGridOtherConfirmed: TDBGrid
          Tag = 111
          Left = 0
          Top = 0
          Width = 778
          Height = 225
          Align = alClient
          Color = clCream
          DataSource = srcOtherConfirmed
          DrawingStyle = gdsGradient
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridOtherConfirmedDrawColumnCell
          OnDblClick = DBGridOtherConfirmedDblClick
          OnKeyDown = DBGridOtherConfirmedKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'FitfulID'
              Width = 33
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'StuffCode'
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'c_StuffName'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'c_StuffTecInfo'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'StoreID'
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ReciptNumber'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ReciptDate'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ReciptCaption'
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Entity'
              Width = 37
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RollbackEntity'
              Width = 57
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'weight'
              Width = 22
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AidNumber'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AidDate'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Confirming'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ItemNote'
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'st1'
              Width = 40
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 0
          Top = 225
          Width = 778
          Height = 41
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            770
            41)
          object btnOthersConfirmed: TBitBtn
            Left = 683
            Top = 8
            Width = 75
            Height = 25
            Action = actConfirmed
            Anchors = [akRight, akBottom]
            Caption = #1578#1575#1574#1740#1583' '#1576#1575#1585#1606#1575#1605#1607
            TabOrder = 0
            ExplicitLeft = 691
          end
        end
      end
    end
    object grpFilter: TGroupBox
      Left = 2
      Top = 2
      Width = 778
      Height = 70
      Align = alTop
      Caption = '  '#1605#1581#1583#1608#1583#1607'  '
      TabOrder = 1
      ExplicitWidth = 786
      DesignSize = (
        778
        70)
      object btn2: TSpeedButton
        Tag = 1
        Left = 302
        Top = 17
        Width = 25
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = btn1Click
        ExplicitLeft = 306
      end
      object lbl13: TLabel
        Left = 466
        Top = 20
        Width = 41
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1575' '#1603#1583' '#1603#1575#1604#1575' '
        ExplicitLeft = 470
      end
      object btn1: TSpeedButton
        Left = 561
        Top = 17
        Width = 24
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = btn1Click
        ExplicitLeft = 565
      end
      object lbl12: TLabel
        Left = 724
        Top = 20
        Width = 42
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1575#1586' '#1603#1583' '#1603#1575#1604#1575' '
        ExplicitLeft = 728
      end
      object lblDate: TLabel
        Left = 721
        Top = 47
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1575#1586' '#1578#1575#1585#1610#1582' '
        ExplicitLeft = 725
      end
      object Label1: TLabel
        Left = 464
        Top = 47
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1578#1575' '#1578#1575#1585#1610#1582' '
        ExplicitLeft = 468
      end
      object mskStuffCodeTo: TMaskEdit
        Left = 333
        Top = 17
        Width = 128
        Height = 21
        Anchors = [akTop, akRight]
        EditMask = '999999999999999999;1;_'
        MaxLength = 18
        TabOrder = 0
        Text = '                  '
        ExplicitLeft = 337
      end
      object mskStuffCodeFrom: TMaskEdit
        Left = 591
        Top = 17
        Width = 127
        Height = 21
        Anchors = [akTop, akRight]
        EditMask = '999999999999999999;1;_'
        MaxLength = 18
        TabOrder = 1
        Text = '                  '
        ExplicitLeft = 595
      end
      object mskDateFrom: TMaskEdit
        Left = 591
        Top = 43
        Width = 127
        Height = 21
        Anchors = [akTop, akRight]
        Color = 13431799
        EditMask = '9999/99/99;1;_'
        MaxLength = 10
        TabOrder = 2
        Text = '    /  /  '
        ExplicitLeft = 595
      end
      object mskDateTo: TMaskEdit
        Left = 333
        Top = 43
        Width = 128
        Height = 21
        Anchors = [akTop, akRight]
        Color = 13431799
        EditMask = '9999/99/99;1;_'
        MaxLength = 10
        TabOrder = 3
        Text = '    /  /  '
        ExplicitLeft = 337
      end
      object BitBtn1: TBitBtn
        Left = 14
        Top = 40
        Width = 75
        Height = 25
        Action = actFilter
        Caption = #1575#1593#1605#1575#1604' '#1605#1581#1583#1608#1583#1607
        TabOrder = 4
      end
    end
  end
  inherited ActionList: TActionList
    Left = 480
    Top = 16
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      OnExecute = actSendExelExecute
    end
    object actConfirmed: TAction
      Caption = #1578#1575#1574#1740#1583' '#1576#1575#1585#1606#1575#1605#1607
      OnExecute = actConfirmedExecute
    end
    object actFilter: TAction
      Caption = #1575#1593#1605#1575#1604' '#1601#1610#1604#1578#1585
      OnExecute = actFilterExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 560
    Top = 9
  end
  object qryMaster: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryMasterAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT ReciptItems.ProductCode, StuffCoding.c_StuffName'
      'FROM            ReciptItems INNER JOIN'
      
        '                         StuffCoding ON ReciptItems.ProductCode ' +
        '= StuffCoding.c_StuffCode')
    Left = 304
    Top = 17
    object qryMasterProductCode: TLargeintField
      FieldName = 'ProductCode'
    end
    object qryMasterc_StuffName: TStringField
      FieldName = 'c_StuffName'
      Size = 150
    end
  end
  object SrcMaster: TDataSource
    DataSet = qryMaster
    Left = 392
    Top = 17
  end
  object qryTickets: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'ProductCode'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'ReciptDateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'ReciptDateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'StuffCodeFrom'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end
      item
        Name = 'StuffCodeTo'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     Recipts.ReciptNumber AS ['#1588#1605#1575#1585#1607#8207#1583#1585#1582#1608#1575#1587#1578'], Recipts.Reci' +
        'ptDate AS ['#1578#1575#1585#1610#1582#8207#1583#1585#1582#1608#1575#1587#1578'], ReciptItems.StuffCode AS '#1603#1583#1603#1575#1604#1575', Stuf' +
        'fCoding.c_StuffName AS ['#1606#1575#1605#8207#1603#1575#1604#1575'], StuffCoding.c_StuffTecInfo  ,' +
        ' '
      
        '                      Units.UnitName AS '#1608#1575#1581#1583#1588#1605#1575#1585#1588', ReciptItems.I' +
        'nputEntity AS ['#1605#1602#1583#1575#1585#8207#1583#1585#1582#1608#1575#1587#1578'], Recals.Entity AS ['#1578#1581#1602#1602#8207#1610#1575#1601#1578#1607'], Re' +
        'ciptItems.InputEntity - ISNULL(Recals.Entity, 0) '
      
        '                      AS '#1576#1575#1602#1610#1605#1575#1606#1583#1607', Recipts.PersonID3 AS '#1603#1583#1602#1587#1605#1578',' +
        ' Customers.CustName, ReciptItems.ItemNote, StuffCoding.st1'
      'FROM         ReciptItems INNER JOIN'
      
        '                      Recipts ON ReciptItems.ReciptID = Recipts.' +
        'ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND '
      
        '                      ReciptItems.YearID = Recipts.YearID INNER ' +
        'JOIN'
      
        '                      StuffCoding ON ReciptItems.StuffCode = Stu' +
        'ffCoding.c_StuffCode INNER JOIN'
      
        '                      Customers ON Recipts.PersonID3 = Customers' +
        '.CustID LEFT OUTER JOIN'
      
        '                          (SELECT     ReciptItems_1.preReciptIte' +
        'mID, SUM(ReciptItems_1.InputEntity) AS Entity, ReciptItems_1.Ser' +
        'verID, ReciptItems_1.prvYearID'
      
        '                             FROM         ReciptItems AS ReciptI' +
        'tems_1 INNER JOIN'
      
        '                                                   Recipts AS Re' +
        'cipts_1 ON ReciptItems_1.ReciptID = Recipts_1.ReciptID AND Recip' +
        'tItems_1.ServerID = Recipts_1.ServerID AND '
      
        '                                                   ReciptItems_1' +
        '.YearID = Recipts_1.YearID'
      
        '                             GROUP BY ReciptItems_1.preReciptIte' +
        'mID, ReciptItems_1.ServerID, ReciptItems_1.prvYearID'
      
        '                             HAVING      (NOT (ReciptItems_1.pre' +
        'ReciptItemID IS NULL))) Recals ON ReciptItems.ReciptItemID = Rec' +
        'als.preReciptItemID AND '
      
        '                      ReciptItems.YearID = Recals.prvYearID AND ' +
        'ReciptItems.ServerID = Recals.ServerID LEFT OUTER JOIN'
      
        '                      Units ON StuffCoding.n_UnitCode = Units.Un' +
        'itCode'
      
        'WHERE     (ReciptItems.ProductCode = :ProductCode ) AND (Recipts' +
        '.ReciptType IN (22, 120, 121, 122, 123, 124, 125, 126, 127, 128,' +
        ' 129)) AND (Recipts.ReciptState < 3) AND '
      
        '                      (Recipts.ReciptDate BETWEEN :ReciptDateFro' +
        'm AND :ReciptDateTo ) AND (ReciptItems.StuffCode BETWEEN :StuffC' +
        'odeFrom AND :StuffCodeTo )')
    Left = 96
    Top = 305
    object qryTicketsشمارهدرخواست: TIntegerField
      Tag = 3
      FieldName = #1588#1605#1575#1585#1607#8207#1583#1585#1582#1608#1575#1587#1578
    end
    object qryTicketsتاريخدرخواست: TStringField
      Tag = 3
      FieldName = #1578#1575#1585#1610#1582#8207#1583#1585#1582#1608#1575#1587#1578
      FixedChar = True
      Size = 10
    end
    object qryTicketsكدكالا: TLargeintField
      Tag = 3
      FieldName = #1603#1583#1603#1575#1604#1575
    end
    object qryTicketsنامكالا: TStringField
      Tag = 3
      FieldName = #1606#1575#1605#8207#1603#1575#1604#1575
      Size = 150
    end
    object qryTicketsواحدشمارش: TStringField
      Tag = 3
      FieldName = #1608#1575#1581#1583#1588#1605#1575#1585#1588
      Size = 50
    end
    object qryTicketsمقداردرخواست: TFloatField
      Tag = 3
      FieldName = #1605#1602#1583#1575#1585#8207#1583#1585#1582#1608#1575#1587#1578
    end
    object qryTicketsتحققيافته: TFloatField
      Tag = 3
      FieldName = #1578#1581#1602#1602#8207#1610#1575#1601#1578#1607
      ReadOnly = True
    end
    object qryTicketsباقيمانده: TFloatField
      Tag = 3
      FieldName = #1576#1575#1602#1610#1605#1575#1606#1583#1607
      ReadOnly = True
    end
    object qryTicketsكدقسمت: TIntegerField
      Tag = 3
      FieldName = #1603#1583#1602#1587#1605#1578
    end
    object qryTicketsCustName: TStringField
      Tag = 3
      DisplayLabel = #1602#1587#1605#1578
      FieldName = 'CustName'
      Size = 120
    end
    object qryTicketsc_StuffTecInfo: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1601#1606#1740
      FieldName = 'c_StuffTecInfo'
      Size = 30
    end
    object qryTicketsItemNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'ItemNote'
      Size = 100
    end
    object qryTicketsst1: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1606#1575#1587#1607
      FieldName = 'st1'
    end
  end
  object srcTickets: TDataSource
    DataSet = qryTickets
    Left = 192
    Top = 313
  end
  object qryConfirmed: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforePost = qryConfirmedBeforePost
    Parameters = <
      item
        Name = 'ProductCode'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     Recipts.ServerID, Recipts.YearID, Recipts.ReciptID, R' +
        'eciptItems.ReciptItemID, Recipts.StoreID, Recipts.ReciptNumber, ' +
        'Recipts.ReciptDate, Recipts.ReciptType, '
      
        '                      ReciptItems.InputEntity + ReciptItems.Outp' +
        'utEntity AS Entity, ReciptItems.InputWeight + ReciptItems.Output' +
        'Weight AS weight, ReciptItems.AidNumber, '
      
        '                      ReciptItems.AidDate, Recipts_1.PersonID3, ' +
        'Recipts_1.ReciptNumber AS Prv_ReciptNumber, Recipts_1.ReciptDate' +
        ' AS Prv_ReciptDate, Fitful.FitfulID, '
      
        '                      Fitful.FitfulIDc AS RollbackEntity, Recipt' +
        'Items.Confirming, ReciptTypes.ReciptCaption, ReciptTypes.EffectT' +
        'ype, ReciptItems.StuffCode, StuffCoding.c_StuffName, '
      
        '                      StuffCoding.c_StuffTecInfo, ReciptItems.It' +
        'emNote, StuffCoding.st1'
      'FROM         Recipts INNER JOIN'
      
        '                      ReciptItems ON Recipts.ReciptID = ReciptIt' +
        'ems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Rec' +
        'ipts.YearID = ReciptItems.YearID INNER JOIN'
      
        '                      ReciptItems AS ReciptItems_1 ON ReciptItem' +
        's.preReciptItemID = ReciptItems_1.ReciptItemID INNER JOIN'
      
        '                      Recipts AS Recipts_1 ON ReciptItems_1.Reci' +
        'ptID = Recipts_1.ReciptID AND ReciptItems_1.ServerID = Recipts_1' +
        '.ServerID AND '
      
        '                      ReciptItems_1.YearID = Recipts_1.YearID IN' +
        'NER JOIN'
      
        '                      ReciptTypes ON Recipts.ReciptType = Recipt' +
        'Types.ReciptType INNER JOIN'
      
        '                      StuffCoding ON ReciptItems.StuffCode = Stu' +
        'ffCoding.c_StuffCode CROSS JOIN'
      '                      Fitful'
      
        'WHERE     (Recipts.ReciptType between 130 and 139) AND ( ReciptI' +
        'tems_1.ProductCode = :ProductCode )')
    Left = 424
    Top = 297
    object qryConfirmedServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryConfirmedYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryConfirmedReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryConfirmedReciptItemID: TIntegerField
      FieldName = 'ReciptItemID'
    end
    object qryConfirmedReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryConfirmedPersonID3: TIntegerField
      FieldName = 'PersonID3'
    end
    object qryConfirmedEffectType: TWordField
      FieldName = 'EffectType'
    end
    object qryConfirmedFitfulID: TFMTBCDField
      Tag = 3
      DisplayLabel = #1575#1606#1578#1582#1575#1576
      FieldName = 'FitfulID'
      Precision = 20
      Size = 4
    end
    object qryConfirmedStoreID: TSmallintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
    end
    object qryConfirmedReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1576#1575#1585#1606#1575#1605#1607' '
      FieldName = 'ReciptNumber'
    end
    object qryConfirmedReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1740#1582' '#1576#1575#1585#1606#1575#1605#1607' '
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryConfirmedReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1601#1585#1605
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryConfirmedEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1582#1585#1740#1583
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryConfirmedRollbackEntity: TBCDField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1593#1583#1605' '#1578#1575#1574#1740#1583
      FieldName = 'RollbackEntity'
      Precision = 19
    end
    object qryConfirmedweight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'weight'
      ReadOnly = True
    end
    object qryConfirmedAidNumber: TStringField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1603#1605#1603#1610
      FieldName = 'AidNumber'
      Size = 40
    end
    object qryConfirmedAidDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1603#1605#1603#1610
      FieldName = 'AidDate'
      FixedChar = True
      Size = 10
    end
    object qryConfirmedPrv_ReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578
      FieldName = 'Prv_ReciptNumber'
    end
    object qryConfirmedPrv_ReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1583#1585#1582#1608#1575#1587#1578
      FieldName = 'Prv_ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryConfirmedConfirming: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1610#1610#1583' '#1603#1606#1606#1583#1607
      FieldName = 'Confirming'
      Size = 50
    end
    object qryConfirmedStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1705#1583' '#1705#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object qryConfirmedc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1705#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 150
    end
    object qryConfirmedc_StuffTecInfo: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1601#1606#1740
      FieldName = 'c_StuffTecInfo'
      Size = 30
    end
    object qryConfirmedItemNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'ItemNote'
      Size = 100
    end
    object qryConfirmedst1: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1606#1575#1587#1607
      FieldName = 'st1'
    end
  end
  object srcConfirmed: TDataSource
    DataSet = qryConfirmed
    Left = 528
    Top = 289
  end
  object qryOtherConfirmed: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforePost = qryOtherConfirmedBeforePost
    Parameters = <
      item
        Name = 'ProductCode'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     Recipts.ServerID, Recipts.YearID, Recipts.ReciptID, R' +
        'eciptItems.ReciptItemID, Recipts.StoreID, Recipts.ReciptNumber, ' +
        'Recipts.ReciptDate, Recipts.ReciptType, '
      
        '                      ReciptItems.InputEntity + ReciptItems.Outp' +
        'utEntity AS Entity, ReciptItems.InputWeight + ReciptItems.Output' +
        'Weight AS weight, ReciptItems.AidNumber, '
      
        '                      ReciptItems.AidDate, ReciptItems.PersonID1' +
        ', Fitful.FitfulID, Fitful.FitfulIDc AS RollbackEntity, ReciptIte' +
        'ms.Confirming, ReciptTypes.ReciptCaption, '
      
        '                      ReciptTypes.EffectType, ReciptItems.StuffC' +
        'ode, StuffCoding.c_StuffName, StuffCoding.c_StuffTecInfo, Recipt' +
        'Items.ItemNote, StuffCoding.st1'
      'FROM         Recipts INNER JOIN'
      
        '                      ReciptItems ON Recipts.ReciptID = ReciptIt' +
        'ems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Rec' +
        'ipts.YearID = ReciptItems.YearID INNER JOIN'
      
        '                      ReciptTypes ON Recipts.ReciptType = Recipt' +
        'Types.ReciptType INNER JOIN'
      
        '                      StuffCoding ON ReciptItems.StuffCode = Stu' +
        'ffCoding.c_StuffCode CROSS JOIN'
      '                      Fitful'
      
        'WHERE     (Recipts.ReciptType IN (131))  AND ( ReciptItems.Produ' +
        'ctCode = :ProductCode )')
    Left = 336
    Top = 353
    object IntegerField1: TIntegerField
      FieldName = 'ServerID'
    end
    object IntegerField2: TIntegerField
      FieldName = 'YearID'
    end
    object IntegerField3: TIntegerField
      FieldName = 'ReciptID'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ReciptItemID'
    end
    object WordField1: TWordField
      FieldName = 'ReciptType'
    end
    object WordField2: TWordField
      FieldName = 'EffectType'
    end
    object qryOtherConfirmedPersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object FMTBCDField1: TFMTBCDField
      Tag = 3
      DisplayLabel = #1575#1606#1578#1582#1575#1576
      FieldName = 'FitfulID'
      Precision = 20
      Size = 4
    end
    object SmallintField1: TSmallintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
    end
    object IntegerField5: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1576#1575#1585#1606#1575#1605#1607' '
      FieldName = 'ReciptNumber'
    end
    object StringField1: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1740#1582' '#1576#1575#1585#1606#1575#1605#1607' '
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object StringField2: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1601#1585#1605
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object FloatField1: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1582#1585#1740#1583
      FieldName = 'Entity'
      ReadOnly = True
    end
    object BCDField1: TBCDField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1593#1583#1605' '#1578#1575#1574#1740#1583
      FieldName = 'RollbackEntity'
      Precision = 19
    end
    object FloatField2: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'weight'
      ReadOnly = True
    end
    object BCDField2: TBCDField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578
      FieldName = 'AidNumber'
      Precision = 18
    end
    object StringField3: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1583#1585#1582#1608#1575#1587#1578
      FieldName = 'AidDate'
      FixedChar = True
      Size = 10
    end
    object StringField5: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1610#1610#1583' '#1603#1606#1606#1583#1607
      FieldName = 'Confirming'
      Size = 50
    end
    object LargeintField1: TLargeintField
      Tag = 3
      DisplayLabel = #1705#1583' '#1705#1575#1604#1575
      FieldName = 'StuffCode'
    end
    object StringField6: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1705#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 150
    end
    object StringField7: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1601#1606#1740
      FieldName = 'c_StuffTecInfo'
      Size = 30
    end
    object qryOtherConfirmedItemNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'ItemNote'
      Size = 100
    end
    object qryOtherConfirmedst1: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1606#1575#1587#1607
      FieldName = 'st1'
    end
  end
  object srcOtherConfirmed: TDataSource
    DataSet = qryOtherConfirmed
    Left = 512
    Top = 377
  end
end
