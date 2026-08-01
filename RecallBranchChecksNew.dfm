inherited RecallBranchChecksNewF: TRecallBranchChecksNewF
  Left = 375
  Top = 200
  Caption = #1575#1585#1587#1575#1604' '#1608' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1588#1593#1576' '#1608' '#1606#1605#1575#1610#1606#1583#1711#1610' '#1607#1575'('#1582#1586#1575#1606#1607' '#1583#1575#1585#1610')'
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  object spl1: TSplitter [0]
    Left = 524
    Top = 53
    Width = 8
    Height = 423
    Cursor = crDefault
    Align = alRight
    AutoSnap = False
    ExplicitLeft = 532
    ExplicitHeight = 424
  end
  inherited PnlUnderButton: TPanel
    Top = 476
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
    object BitBtn4: TBitBtn
      Left = 237
      Top = 8
      Width = 75
      Height = 25
      Action = actSendExel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 3
    end
    object pnl2: TPanel
      Left = 621
      Top = 1
      Width = 168
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 4
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
    inherited lblCaption: TLabel
      Height = 16
    end
    object Image2: TImage
      Left = 200
      Top = 23
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
      Left = 263
      Top = 24
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
    Width = 524
    Height = 423
    ExplicitWidth = 524
    object pnlSend: TPanel
      Left = 2
      Top = 2
      Width = 528
      Height = 95
      Align = alTop
      TabOrder = 0
      object grd2: TDBGrid
        Left = 1
        Top = 18
        Width = 526
        Height = 56
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
            FieldName = 'FormCaption'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FormNumber'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FormDate'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CustomerID1'
            Width = 54
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
            FieldName = 'ItemAmount'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FomNote'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FormState'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ServerID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Transmittal'
            Visible = True
          end>
      end
      object pnlLblL: TPanel
        Left = 1
        Top = 1
        Width = 526
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
      object SumGrid1: TSumGrid
        Left = 1
        Top = 74
        Width = 526
        TabStop = False
        Active = False
        Enable_Controls = True
        MasterGrid = grd2
        ShowZero = True
        FieldsName = 'ItemAmount;'
      end
    end
    object pnlGet: TPanel
      Left = 2
      Top = 97
      Width = 528
      Height = 325
      Align = alClient
      TabOrder = 1
      object lbl1: TLabel
        Left = 1
        Top = 1
        Width = 12
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
      end
      object pnl1: TPanel
        Left = 1
        Top = 291
        Width = 526
        Height = 33
        Align = alBottom
        TabOrder = 0
        DesignSize = (
          518
          33)
        object btnMakeFiles: TBitBtn
          Left = 252
          Top = 5
          Width = 114
          Height = 25
          Action = actLoadNew
          Anchors = [akRight, akBottom]
          Caption = #1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1580#1583#1610#1583
          TabOrder = 0
          ExplicitLeft = 260
        end
        object btnLoadNew: TBitBtn
          Left = 90
          Top = 5
          Width = 148
          Height = 25
          Action = actSaveNew
          Anchors = [akRight, akBottom]
          Caption = #1606#1605#1575#1610#1588' '#1608' '#1584#1582#1610#1585#1607' '#1575#1591#1604#1575#1593#1575#1578' '#1580#1583#1610#1583
          TabOrder = 1
          ExplicitLeft = 98
        end
        object btnLoadNew1: TBitBtn
          Left = -67
          Top = 5
          Width = 144
          Height = 25
          Action = actLoadEdit
          Anchors = [akRight, akBottom]
          Caption = #1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1608#1610#1585#1575#1610#1588' '#1588#1583#1607
          TabOrder = 2
          ExplicitLeft = -59
        end
        object btnSaveNew: TBitBtn
          Left = -256
          Top = 5
          Width = 175
          Height = 25
          Action = actSaveEdit
          Anchors = [akRight, akBottom]
          Caption = #1606#1605#1575#1610#1588' '#1608' '#1584#1582#1610#1585#1607' '#1575#1591#1604#1575#1593#1575#1578' '#1608#1610#1585#1575#1610#1588' '#1588#1583#1607
          TabOrder = 3
          ExplicitLeft = -248
        end
        object btnMoveBaseInfo: TBitBtn
          Left = 380
          Top = 5
          Width = 114
          Height = 25
          Action = actMoveBaseInfo
          Anchors = [akRight, akBottom]
          Caption = #1606#1602#1604#8207#8207#1575#1591#1604#1575#1593#1575#1578#8207#1662#1575#1610#1607
          TabOrder = 4
          ExplicitLeft = 388
        end
      end
      object pnl3: TPanel
        Left = 1
        Top = 14
        Width = 518
        Height = 133
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 526
        ExplicitHeight = 134
        object grdFormItems: TDBGrid
          Left = 1
          Top = -119
          Width = 524
          Height = 252
          Align = alBottom
          Color = clCream
          DataSource = srcFormItems
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object grdForms: TDBGrid
          Left = 1
          Top = 1
          Width = 524
          Height = 265
          Align = alClient
          Color = clCream
          DataSource = srcForms
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object stat1: TStatusBar
          Left = 1
          Top = -138
          Width = 524
          Height = 19
          Panels = <
            item
              Width = 50
            end>
        end
      end
      object pnlBase: TPanel
        Left = 1
        Top = 147
        Width = 518
        Height = 143
        Align = alBottom
        TabOrder = 2
        ExplicitTop = 148
        ExplicitWidth = 526
        object LblMoveBaseInfo: TLabel
          Left = 409
          Top = 1
          Width = 116
          Height = 13
          Align = alTop
          Caption = #1575#1591#1604#1575#1593#1575#1578' '#1662#1575#1610#1607' '#1602#1575#1576#1604' '#1575#1606#1578#1602#1575#1604' '#1575#1586
        end
        object lslTableName: TListBox
          Left = 225
          Top = 14
          Width = 300
          Height = 128
          Align = alRight
          Color = 13236955
          ItemHeight = 13
          TabOrder = 0
          OnClick = lslTableNameClick
        end
        object DBGrid3: TDBGrid
          Left = 1
          Top = 14
          Width = 216
          Height = 128
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
      end
    end
  end
  object SCGroupBox1: TGroupBox [4]
    Left = 532
    Top = 53
    Width = 250
    Height = 423
    Align = alRight
    BiDiMode = bdLeftToRight
    Caption = ' '#1605#1587#1610#1585' '#1575#1585#1587#1575#1604'/'#1583#1585#1610#1575#1601#1578' '
    ParentBiDiMode = False
    TabOrder = 3
    ExplicitLeft = 540
    ExplicitHeight = 424
    object SCLabel1: TLabel
      Left = 2
      Top = 67
      Width = 246
      Height = 17
      Align = alTop
      Alignment = taRightJustify
      AutoSize = False
      Caption = ' '#1605#1587#1610#1585' '#1575#1585#1587#1575#1604'/'#1583#1585#1610#1575#1601#1578' '
      Transparent = False
    end
    object lstListFiles: TListBox
      Left = 2
      Top = 117
      Width = 246
      Height = 305
      Align = alClient
      BiDiMode = bdLeftToRight
      Color = 13431799
      Columns = 1
      ItemHeight = 13
      ParentBiDiMode = False
      TabOrder = 0
      OnClick = lstListFilesClick
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
      TabOrder = 2
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
      TabOrder = 1
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
      
        'SELECT     FormTypes.FormCaption, Customers.CustName, dbo.FormIt' +
        'emsAmount(Forms.FormID,Forms.ServerID,Forms.YearID)  AS ItemAmou' +
        'nt, Forms.FormNumber, Forms.FormDate, Forms.CustomerID1, '
      
        '                      Forms.FomNote, Forms.FormState, Forms.Serv' +
        'erID, Forms.Transmittal'
      'FROM         FormTypes INNER JOIN'
      
        '                      Forms ON FormTypes.FormType = Forms.FormTy' +
        'pe LEFT OUTER JOIN'
      
        '                      Customers AS Customers ON Forms.CustomerID' +
        '1 = Customers.CustID LEFT OUTER JOIN'
      
        '                      FormItems AS FormItems ON Forms.FormID = F' +
        'ormItems.FormID AND Forms.ServerID = FormItems.ServerID AND Form' +
        's.YearID = FormItems.YearID'
      
        'WHERE     (FormTypes.TransmittalActive = 1) AND (Forms.Transmitt' +
        'al < 3)'
      
        'GROUP BY Customers.CustName, FormTypes.FormCaption, Forms.FormNu' +
        'mber, Forms.FormType, Forms.FormDate, Forms.CustomerID1, Forms.F' +
        'omNote, Forms.FormState, '
      
        '                      Forms.ServerID, Forms.Transmittal,Forms.Fo' +
        'rmID,Forms.YearID'
      'ORDER BY Forms.FormType, Forms.FormNumber')
    Left = 361
    Top = 96
    object qryTypesItemsFormCaption: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'FormCaption'
      Size = 50
    end
    object qryTypesItemsFormNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'FormNumber'
    end
    object qryTypesItemsFormDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'FormDate'
      FixedChar = True
      Size = 10
    end
    object qryTypesItemsCustomerID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583#1605#1588#1578#1585#1610
      FieldName = 'CustomerID1'
    end
    object qryTypesItemsCustName: TStringField
      Tag = 3
      DisplayLabel = #1605#1588#1578#1585#1610
      FieldName = 'CustName'
      Size = 120
    end
    object qryTypesItemsItemAmount: TBCDField
      Tag = 3
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'ItemAmount'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qryTypesItemsFomNote: TStringField
      Tag = 3
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'FomNote'
      Size = 255
    end
    object qryTypesItemsFormState: TWordField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'FormState'
      OnGetText = qryTypesItemsFormStateGetText
    end
    object qryTypesItemsServerID: TIntegerField
      Tag = 3
      DisplayLabel = #1587#1585#1608#1585
      FieldName = 'ServerID'
    end
    object qryTypesItemsTransmittal: TIntegerField
      Tag = 3
      DisplayLabel = #1575#1585#1587#1575#1604
      FieldName = 'Transmittal'
      OnGetText = qryTypesItemsTransmittalGetText
    end
  end
  object SrcTypesItems: TDataSource
    DataSet = qryTypesItems
    Left = 243
    Top = 96
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
    Left = 664
    Top = 291
  end
  object qryForms: TADOQuery
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryFormsAfterOpen
    AfterScroll = qryFormsAfterScroll
    Parameters = <>
    Left = 479
    Top = 171
  end
  object srcForms: TDataSource
    DataSet = qryForms
    Left = 393
    Top = 175
  end
  object qryFormItems: TADOQuery
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryFormItemsAfterOpen
    Parameters = <>
    Left = 487
    Top = 258
  end
  object srcFormItems: TDataSource
    DataSet = qryFormItems
    Left = 369
    Top = 262
  end
  object qryShow: TADOQuery
    Connection = DmF.adcBSell
    Parameters = <>
    Left = 296
    Top = 373
  end
  object srcShow: TDataSource
    DataSet = qryShow
    Left = 200
    Top = 369
  end
end
