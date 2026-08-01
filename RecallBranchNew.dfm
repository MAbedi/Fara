inherited RecallBranchNewF: TRecallBranchNewF
  Left = 445
  Top = 214
  Caption = #1575#1585#1587#1575#1604' '#1608' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1588#1593#1576' '#1608' '#1606#1605#1575#1610#1606#1583#1711#1610' '#1607#1575
  ClientHeight = 570
  ClientWidth = 901
  OnResize = FormResize
  ExplicitWidth = 917
  ExplicitHeight = 609
  TextHeight = 13
  object spl1: TSplitter [0]
    Left = 643
    Top = 53
    Width = 8
    Height = 476
    Cursor = crDefault
    Align = alRight
    AutoSnap = False
    ExplicitLeft = 532
    ExplicitHeight = 424
  end
  inherited PnlUnderButton: TPanel
    Top = 529
    Width = 901
    ExplicitTop = 530
    ExplicitWidth = 905
    object BitBtn5: TBitBtn
      Left = 82
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 1
    end
    object BitBtn6: TBitBtn
      Left = 160
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object pnl2: TPanel
      Left = 736
      Top = 1
      Width = 168
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
      DesignSize = (
        168
        39)
      object btnFilter: TBitBtn
        Left = 88
        Top = 6
        Width = 75
        Height = 25
        Action = actFilter
        Anchors = [akRight, akBottom]
        Caption = #1605#1581#1583#1608#1583#1607
        TabOrder = 0
      end
      object btnMakeFiles1: TBitBtn
        Left = 10
        Top = 6
        Width = 75
        Height = 25
        Action = actMakeFiles
        Anchors = [akRight, akBottom]
        Caption = #1587#1575#1582#1578' '#1601#1575#1610#1604
        TabOrder = 1
      end
    end
  end
  inherited Panel2: TPanel
    Width = 901
    ExplicitWidth = 905
    inherited ImgTemplate: TImage
      Left = 900
      ExplicitLeft = 900
    end
    inherited lblCaption: TLabel
      Left = 797
      Height = 16
      ExplicitLeft = 797
    end
    object Image2: TImage
      Left = 360
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
    object Image3: TImage
      Left = 384
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
    Width = 643
    Height = 476
    ExplicitWidth = 647
    ExplicitHeight = 477
    object pnlSend: TPanel
      Left = 2
      Top = 2
      Width = 643
      Height = 130
      Align = alTop
      TabOrder = 0
      object grd2: TDBGrid
        Left = 1
        Top = 18
        Width = 641
        Height = 71
        Align = alClient
        Color = clCream
        DataSource = SrcTypesItems
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
            FieldName = 'ReciptCaption'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReciptNumber'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReciptDate'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StoreID'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'c_StoreName'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PersonID1'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CustName'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Entity'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Weight'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalPrice'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReciptNote'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReciptState'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Name'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ServerID'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Transmittal'
            Width = 33
            Visible = True
          end>
      end
      object pnlLblL: TPanel
        Left = 1
        Top = 1
        Width = 641
        Height = 17
        Align = alTop
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Panel4: TPanel
        Left = 1
        Top = 108
        Width = 641
        Height = 21
        Align = alBottom
        TabOrder = 2
        object BitBtn4: TBitBtn
          Left = 1
          Top = 1
          Width = 75
          Height = 19
          Action = actSendExel
          Align = alLeft
          Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
          TabOrder = 0
        end
      end
      object statSend: TStatusBar
        Left = 1
        Top = 89
        Width = 641
        Height = 19
        Panels = <
          item
            Width = 300
          end>
      end
    end
    object pnlGet: TPanel
      Left = 2
      Top = 132
      Width = 643
      Height = 343
      Align = alClient
      TabOrder = 1
      DesignSize = (
        639
        342)
      object lbl1: TLabel
        Left = 1
        Top = 1
        Width = 637
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = '...'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitWidth = 12
      end
      object pnl1: TPanel
        Left = 1
        Top = 308
        Width = 637
        Height = 33
        Align = alBottom
        TabOrder = 0
        ExplicitTop = 309
        ExplicitWidth = 641
        object btnMakeFiles: TBitBtn
          AlignWithMargins = True
          Left = 403
          Top = 4
          Width = 114
          Height = 25
          Action = actLoadNew
          Align = alRight
          Caption = #1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1580#1583#1610#1583
          TabOrder = 0
        end
        object btnLoadNew: TBitBtn
          AlignWithMargins = True
          Left = 249
          Top = 4
          Width = 148
          Height = 25
          Action = actSaveNew
          Align = alRight
          Caption = #1606#1605#1575#1610#1588' '#1608' '#1584#1582#1610#1585#1607' '#1575#1591#1604#1575#1593#1575#1578' '#1580#1583#1610#1583
          TabOrder = 1
        end
        object btnLoadNew1: TBitBtn
          AlignWithMargins = True
          Left = 99
          Top = 4
          Width = 144
          Height = 25
          Action = actLoadEdit
          Align = alRight
          Caption = #1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1608#1610#1585#1575#1610#1588' '#1588#1583#1607
          TabOrder = 2
        end
        object btnSaveNew: TBitBtn
          AlignWithMargins = True
          Left = -82
          Top = 4
          Width = 175
          Height = 25
          Action = actSaveEdit
          Align = alRight
          Caption = #1606#1605#1575#1610#1588' '#1608' '#1584#1582#1610#1585#1607' '#1575#1591#1604#1575#1593#1575#1578' '#1608#1610#1585#1575#1610#1588' '#1588#1583#1607
          TabOrder = 3
        end
        object btnMoveBaseInfo: TBitBtn
          AlignWithMargins = True
          Left = 523
          Top = 4
          Width = 114
          Height = 25
          Action = actMoveBaseInfo
          Align = alRight
          Caption = #1606#1602#1604#8207#8207#1575#1591#1604#1575#1593#1575#1578#8207#1662#1575#1610#1607
          TabOrder = 4
        end
      end
      object grdReciptsDeficits: TDBGrid
        Left = 1
        Top = 14
        Width = 186
        Height = 151
        Align = alLeft
        Color = clCream
        DataSource = srcReciptsDeficits
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object pnl3: TPanel
        Left = 187
        Top = 14
        Width = 451
        Height = 151
        Align = alClient
        TabOrder = 2
        ExplicitWidth = 455
        ExplicitHeight = 152
        object Splitter1: TSplitter
          Left = 1
          Top = 50
          Width = 453
          Height = 4
          Cursor = crVSplit
          Align = alBottom
          ExplicitLeft = -1
          ExplicitTop = 87
        end
        object grdReciptItems: TDBGrid
          Left = 1
          Top = 54
          Width = 453
          Height = 78
          Align = alBottom
          Color = clCream
          DataSource = srcReciptItems
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object grdRecipts: TDBGrid
          Left = 1
          Top = 1
          Width = 453
          Height = 30
          Align = alClient
          Color = clCream
          DataSource = srcRecipts
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object btngrdRecips: TBitBtn
          Left = 5
          Top = 125
          Width = 75
          Height = 25
          Align = alCustom
          Anchors = [akLeft, akBottom]
          Caption = #1575#1585#1587#1575#1604' '#1576#1607'...'
          TabOrder = 2
          OnClick = btngrdRecipsClick
        end
        object statGet: TStatusBar
          Left = 1
          Top = 31
          Width = 453
          Height = 19
          Panels = <
            item
              Width = 450
            end>
        end
        object statItem: TStatusBar
          Left = 1
          Top = 132
          Width = 453
          Height = 19
          Panels = <
            item
              Width = 450
            end>
        end
        object btngrdReciptItems: TBitBtn
          Left = 4
          Top = 126
          Width = 75
          Height = 25
          Align = alCustom
          Anchors = [akLeft, akBottom]
          Caption = #1575#1585#1587#1575#1604' '#1576#1607'...'
          TabOrder = 3
          OnClick = btngrdReciptItemsClick
        end
      end
      object pnlBase: TPanel
        Left = 1
        Top = 165
        Width = 637
        Height = 143
        Align = alBottom
        TabOrder = 3
        ExplicitTop = 166
        ExplicitWidth = 641
        object lslTableName: TListBox
          Left = 340
          Top = 19
          Width = 300
          Height = 123
          Align = alRight
          Color = 13236955
          ItemHeight = 13
          TabOrder = 0
          OnClick = lslTableNameClick
        end
        object DBGrid3: TDBGrid
          Left = 1
          Top = 19
          Width = 335
          Height = 123
          Align = alClient
          Color = clCream
          DataSource = srcShow
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object btnSendExel: TBitBtn
          Left = 5
          Top = 117
          Width = 75
          Height = 25
          Caption = #1575#1585#1587#1575#1604' '#1576#1607'...'
          TabOrder = 2
          OnClick = btnSendExelClick
        end
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 635
          Height = 18
          Align = alTop
          TabOrder = 3
          ExplicitWidth = 639
          object LblMoveBaseInfo: TLabel
            Left = 522
            Top = 4
            Width = 116
            Height = 13
            Align = alBottom
            Caption = #1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1602#1575#1576#1604' '#1575#1606#1578#1602#1575#1604' '#1575#1586
          end
        end
      end
      object BitBtn1: TBitBtn
        Left = 6
        Top = 140
        Width = 75
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = #1575#1585#1587#1575#1604' '#1576#1607'...'
        TabOrder = 4
        OnClick = BitBtn1Click
        ExplicitTop = 141
      end
    end
  end
  object SCGroupBox1: TGroupBox [4]
    Left = 651
    Top = 53
    Width = 250
    Height = 476
    Align = alRight
    BiDiMode = bdRightToLeft
    Caption = #1575#1585#1587#1575#1604'/'#1583#1585#1610#1575#1601#1578' '
    ParentBiDiMode = False
    TabOrder = 3
    ExplicitLeft = 655
    ExplicitHeight = 477
    object SCLabel1: TLabel
      Left = 2
      Top = 67
      Width = 246
      Height = 17
      Align = alTop
      Alignment = taRightJustify
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = ' '#1605#1587#1610#1585' '#1575#1585#1587#1575#1604'/'#1583#1585#1610#1575#1601#1578' '
      ParentBiDiMode = False
      Transparent = True
    end
    object rg1: TRadioGroup
      Left = 2
      Top = 15
      Width = 246
      Height = 52
      Align = alTop
      BiDiMode = bdRightToLeft
      Columns = 2
      Items.Strings = (
        #1575#1585#1587#1575#1604
        #1583#1585#1610#1575#1601#1578)
      ParentBiDiMode = False
      TabOrder = 1
      OnClick = rg1Click
    end
    object SCPanel1: TPanel
      Left = 2
      Top = 84
      Width = 246
      Height = 33
      Align = alTop
      Alignment = taLeftJustify
      UseDockManager = False
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        246
        33)
      object btnpathName: TSpeedButton
        Left = 5
        Top = 5
        Width = 23
        Height = 24
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = btnpathNameClick
      end
      object edtpathName: TEdit
        Left = 29
        Top = 6
        Width = 212
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 0
        Text = 'c:\TransFara\'
        OnExit = edtpathNameExit
      end
    end
    object lstListFiles: TListBox
      Left = 2
      Top = 117
      Width = 246
      Height = 357
      Align = alClient
      BiDiMode = bdLeftToRight
      Color = 13431799
      Columns = 1
      ItemHeight = 13
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = lstListFilesClick
    end
  end
  inherited ActionList: TActionList
    Left = 437
    Top = 6
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actMakeFiles: TAction
      Caption = #1587#1575#1582#1578' '#1601#1575#1610#1604
      OnExecute = actMakeFilesExecute
    end
    object actLoadNew: TAction
      Caption = #1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1580#1583#1610#1583
      OnExecute = actLoadNewExecute
    end
    object actSaveNew: TAction
      Caption = #1606#1605#1575#1610#1588' '#1608' '#1584#1582#1610#1585#1607' '#1575#1591#1604#1575#1593#1575#1578' '#1580#1583#1610#1583
      OnExecute = actSaveNewExecute
    end
    object actLoadEdit: TAction
      Caption = #1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1608#1610#1585#1575#1610#1588' '#1588#1583#1607
      OnExecute = actLoadEditExecute
    end
    object actSaveEdit: TAction
      Caption = #1606#1605#1575#1610#1588' '#1608' '#1584#1582#1610#1585#1607' '#1575#1591#1604#1575#1593#1575#1578' '#1608#1610#1585#1575#1610#1588' '#1588#1583#1607
      OnExecute = actSaveEditExecute
    end
    object actMoveBaseInfo: TAction
      Caption = #1606#1602#1604#8207#8207#1575#1591#1604#1575#1593#1575#1578#8207#1662#1575#1610#1607
      OnExecute = actMoveBaseInfoExecute
    end
    object actDelFilter: TAction
      Caption = #1581#1584#1601'/'#1575#1593#1605#1575#1604' '#1601#1610#1604#1578#1585
      OnExecute = actDelFilterExecute
    end
    object actDeleteLoadEdit: TAction
      Caption = #1581#1584#1601' '#1575#1591#1604#1575#1593#1575#1578' '#1608#1610#1585#1575#1610#1588' '#1588#1583#1607'('#1605#1608#1602#1578'/'#1576#1583#1608#1606' '#1587#1606#1583')'
      OnExecute = actDeleteLoadEditExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 507
    Top = 6
  end
  object qryTypesItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryTypesItemsAfterOpen
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     ReciptTypes.ReciptCaption, Stores.c_StoreName, Custom' +
        'ers.CustName, SUM(ReciptItems.InputEntity + ReciptItems.OutputEn' +
        'tity) AS Entity, '
      
        '                      SUM(ReciptItems.InputWeight + ReciptItems.' +
        'OutputWeight) AS Weight, SUM(ReciptItems.TotalInputPrice + Recip' +
        'tItems.TotalOutputPrice) AS TotalPrice,'
      
        '                       LookUps_SecondType.Name, Recipts.ReciptNu' +
        'mber, Recipts.ReciptDate, Recipts.StoreID, Recipts.PersonID1, Re' +
        'cipts.ReciptNote, '
      
        '                      Recipts.ReciptState, Recipts.ServerID, Rec' +
        'ipts.Transmittal'
      'FROM         ReciptTypes INNER JOIN'
      
        '                      Recipts ON ReciptTypes.ReciptType = Recipt' +
        's.ReciptType LEFT OUTER JOIN'
      
        '                      ReciptsDeficits ON Recipts.ReciptID = Reci' +
        'ptsDeficits.ReciptID AND Recipts.ServerID = ReciptsDeficits.Serv' +
        'erID AND '
      
        '                      Recipts.YearID = ReciptsDeficits.YearID LE' +
        'FT OUTER JOIN'
      
        '                      Customers AS Customers ON Recipts.PersonID' +
        '1 = Customers.CustID LEFT OUTER JOIN'
      
        '                      ReciptItems AS ReciptItems ON Recipts.Reci' +
        'ptID = ReciptItems.ReciptID AND Recipts.ServerID = ReciptItems.S' +
        'erverID AND '
      
        '                      Recipts.YearID = ReciptItems.YearID LEFT O' +
        'UTER JOIN'
      
        '                      Stores AS Stores ON Recipts.StoreID = Stor' +
        'es.n_StoreID LEFT OUTER JOIN'
      
        '                      LookUps AS LookUps_SecondType ON Recipts.S' +
        'econdType = LookUps_SecondType.LookUpID'
      
        'WHERE     (ReciptTypes.TransmittalActive = 1) AND (Recipts.Trans' +
        'mittal < 3)'
      
        'GROUP BY Stores.c_StoreName, Customers.CustName, LookUps_SecondT' +
        'ype.Name, ReciptTypes.ReciptCaption, Stores.n_StoreID, Recipts.R' +
        'eciptNumber, '
      
        '                      Recipts.ReciptType, Recipts.ReciptDate, Re' +
        'cipts.StoreID, Recipts.PersonID1, Recipts.ReciptNote, Recipts.Re' +
        'ciptState, Recipts.ServerID, '
      '                      Recipts.Transmittal'
      'ORDER BY Recipts.ReciptType, Recipts.ReciptNumber')
    Left = 257
    Top = 8
    object qryTypesItemsReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1601#1585#1605
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryTypesItemsReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'ReciptNumber'
    end
    object qryTypesItemsReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryTypesItemsStoreID: TSmallintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585#13#10
      FieldName = 'StoreID'
    end
    object qryTypesItemsc_StoreName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1575#1606#1576#1575#1585
      FieldName = 'c_StoreName'
      Size = 70
    end
    object qryTypesItemsPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583
      FieldName = 'PersonID1'
    end
    object qryTypesItemsCustName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605
      FieldName = 'CustName'
      Size = 120
    end
    object qryTypesItemsName: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'Name'
      Size = 50
    end
    object qryTypesItemsEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryTypesItemsWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
      ReadOnly = True
    end
    object qryTypesItemsTotalPrice: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'TotalPrice'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryTypesItemsReciptNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ReciptNote'
      Size = 400
    end
    object qryTypesItemsReciptState: TWordField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'ReciptState'
      OnGetText = qryTypesItemsReciptStateGetText
    end
    object qryTypesItemsServerID: TIntegerField
      DisplayLabel = #1587#1585#1608#1585
      FieldName = 'ServerID'
    end
    object qryTypesItemsTransmittal: TIntegerField
      DisplayLabel = #1575#1585#1587#1575#1604
      FieldName = 'Transmittal'
      OnGetText = qryTypesItemsTransmittalGetText
    end
  end
  object SrcTypesItems: TDataSource
    DataSet = qryTypesItems
    Left = 147
    Top = 8
  end
  object ZipForge1: TZipForge
    ExtractCorruptedFiles = False
    CompressionLevel = clFastest
    CompressionMode = 1
    CurrentVersion = '6.94 '
    SpanningMode = smNone
    SpanningOptions.AdvancedNaming = True
    SpanningOptions.FirstVolumeSize = 0
    SpanningOptions.VolumeSize = vsAutoDetect
    SpanningOptions.CustomVolumeSize = 65536
    Options.FlushBuffers = True
    Options.OEMFileNames = True
    InMemory = False
    Zip64Mode = zmDisabled
    UnicodeFilenames = False
    EncryptionMethod = caPkzipClassic
    Left = 656
    Top = 243
  end
  object qryRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryReciptsAfterOpen
    AfterScroll = qryReciptsAfterScroll
    Parameters = <>
    Left = 471
    Top = 211
  end
  object srcRecipts: TDataSource
    DataSet = qryRecipts
    Left = 377
    Top = 207
  end
  object qryReciptItems: TADOQuery
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryReciptItemsAfterOpen
    Parameters = <>
    Left = 687
    Top = 354
  end
  object srcReciptItems: TDataSource
    DataSet = qryReciptItems
    Left = 561
    Top = 358
  end
  object qryReciptsDeficits: TADOQuery
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryReciptsDeficitsAfterOpen
    Parameters = <>
    Left = 47
    Top = 178
  end
  object srcReciptsDeficits: TDataSource
    DataSet = qryReciptsDeficits
    Left = 118
    Top = 223
  end
  object qryShow: TADOQuery
    Connection = DmF.adcBSell
    Parameters = <>
    Left = 416
    Top = 333
  end
  object srcShow: TDataSource
    DataSet = qryShow
    Left = 320
    Top = 337
  end
end
