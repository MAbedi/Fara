inherited NegotiationsF: TNegotiationsF
  Left = 355
  Top = 210
  Caption = #1579#1576#1578' '#1605#1584#1575#1603#1585#1607' '#1576#1575' '#1601#1585#1608#1588#1606#1583#1711#1575#1606' '
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    object btnSelectAll1: TBitBtn
      Left = 701
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object btnShow: TBitBtn
      Left = 620
      Top = 8
      Width = 75
      Height = 25
      Action = actShow
      Anchors = [akRight, akBottom]
      Caption = #1606#1605#1575#1610#1588
      TabOrder = 2
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Height = 16
    end
  end
  inherited Panel3: TPanel
    Height = 423
    object Panel1: TPanel
      Left = 456
      Top = 2
      Width = 332
      Height = 420
      Align = alRight
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 330
        Height = 418
        Align = alClient
        Color = clCream
        DataSource = srcRecipts
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
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
            FieldName = 'PersonID1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CustName'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReciptNote'
            Width = 45
            Visible = True
          end>
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 454
      Height = 420
      Align = alClient
      TabOrder = 1
      object Panel5: TPanel
        Left = 1
        Top = 387
        Width = 452
        Height = 32
        Align = alBottom
        TabOrder = 0
        object btnAdd: TBitBtn
          Left = 372
          Top = 3
          Width = 75
          Height = 25
          Action = actAdd
          Caption = #1575#1590#1575#1601#1607
          TabOrder = 0
        end
        object btnRemove: TBitBtn
          Left = 294
          Top = 3
          Width = 75
          Height = 25
          Action = actRemove
          Caption = #1581#1584#1601
          TabOrder = 1
        end
        object btnScan: TBitBtn
          Left = 216
          Top = 3
          Width = 75
          Height = 25
          Action = actScan
          Caption = #1575#1587#1603#1606
          TabOrder = 2
        end
        object btnShowFile: TBitBtn
          Left = 5
          Top = 4
          Width = 75
          Height = 25
          Action = actShowFile
          Caption = #1606#1605#1575#1610#1588
          TabOrder = 3
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 452
        Height = 386
        Align = alClient
        TabOrder = 1
        object Panel7: TPanel
          Left = 1
          Top = 1
          Width = 450
          Height = 270
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 13
          ExplicitTop = -23
          object Label1: TLabel
            Left = 370
            Top = 21
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = #1603#1583' '#1601#1585#1608#1588#1606#1583#1607
          end
          object Label2: TLabel
            Left = 370
            Top = 104
            Width = 21
            Height = 13
            Caption = #1578#1575#1585#1610#1582
          end
          object Label3: TLabel
            Left = 179
            Top = 104
            Width = 33
            Height = 13
            Caption = #1605#1582#1575#1591#1576
            FocusControl = DBEdit3
          end
          object Label4: TLabel
            Left = 394
            Top = 138
            Width = 56
            Height = 13
            Caption = #1588#1585#1581' '#1605#1584#1575#1603#1585#1607
          end
          object SpeedButton1: TSpeedButton
            Left = 239
            Top = 16
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SpeedButton1Click
          end
          object DBNavigator1: TDBNavigator
            Left = 2
            Top = 3
            Width = 116
            Height = 18
            DataSource = srcNegotiations
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Flat = True
            TabOrder = 0
          end
          object DBEdit3: TDBEdit
            Left = 40
            Top = 100
            Width = 132
            Height = 21
            DataField = 'Audience'
            DataSource = srcNegotiations
            TabOrder = 2
          end
          object DBMemo1: TDBMemo
            Left = 1
            Top = 159
            Width = 448
            Height = 69
            Align = alBottom
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataField = 'NegDescription'
            DataSource = srcNegotiations
            TabOrder = 3
          end
          object edtCountry: TLabeledEdit
            Left = 229
            Top = 74
            Width = 137
            Height = 19
            TabStop = False
            Color = clBtnFace
            Ctl3D = False
            EditLabel.Width = 26
            EditLabel.Height = 19
            EditLabel.BiDiMode = bdRightToLeft
            EditLabel.Caption = #1603#1588#1608#1585
            EditLabel.ParentBiDiMode = False
            LabelPosition = lpRight
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 4
            Text = ''
          end
          object Panel8: TPanel
            Left = 1
            Top = 228
            Width = 448
            Height = 41
            Align = alBottom
            TabOrder = 5
            object okPanel: TPanel
              Left = 47
              Top = 1
              Width = 165
              Height = 39
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 0
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
            object newPanel: TPanel
              Left = 208
              Top = 1
              Width = 235
              Height = 39
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 1
              ExplicitLeft = 212
              DesignSize = (
                235
                39)
              object BitBtn3: TBitBtn
                Left = 159
                Top = 8
                Width = 75
                Height = 25
                Action = DataSetInsert1
                Anchors = [akTop, akRight]
                Caption = #1580#1583#1610#1583
                TabOrder = 0
              end
              object BitBtn4: TBitBtn
                Left = 81
                Top = 8
                Width = 75
                Height = 25
                Action = DataSetEdit1
                Anchors = [akTop, akRight]
                Caption = #1608#1610#1585#1575#1610#1588
                TabOrder = 1
              end
              object BitBtn5: TBitBtn
                Left = 4
                Top = 8
                Width = 75
                Height = 25
                Action = DataSetDelete1_
                Anchors = [akTop, akRight]
                Caption = #1581#1584#1601
                TabOrder = 2
              end
            end
          end
          object edtCustID: TDBEdit
            Left = 265
            Top = 17
            Width = 101
            Height = 21
            DataField = 'CustID'
            DataSource = srcNegotiations
            TabOrder = 6
            OnKeyPress = edtCustIDKeyPress
          end
          object edtCustName: TLabeledEdit
            Left = 149
            Top = 48
            Width = 217
            Height = 19
            TabStop = False
            Color = clBtnFace
            Ctl3D = False
            EditLabel.Width = 57
            EditLabel.Height = 19
            EditLabel.BiDiMode = bdRightToLeft
            EditLabel.Caption = #1606#1575#1605' '#1601#1585#1608#1588#1606#1583#1607
            EditLabel.ParentBiDiMode = False
            LabelPosition = lpRight
            ParentCtl3D = False
            TabOrder = 7
            Text = ''
          end
          object DBEdit2: TDBEdit
            Left = 302
            Top = 100
            Width = 62
            Height = 21
            DataField = 'NegotiationsDate'
            DataSource = srcNegotiations
            TabOrder = 1
          end
        end
        object Panel9: TPanel
          Left = 1
          Top = 270
          Width = 446
          Height = 114
          Align = alBottom
          BevelInner = bvLowered
          BevelOuter = bvLowered
          BorderWidth = 3
          BorderStyle = bsSingle
          TabOrder = 1
          ExplicitTop = 271
          ExplicitWidth = 450
          object ListView1: TListView
            Left = 5
            Top = 5
            Width = 436
            Height = 100
            Align = alClient
            BiDiMode = bdRightToLeft
            Columns = <
              item
                Caption = #1606#1575#1605' '#1601#1575#1610#1604
                Width = 300
              end
              item
                Alignment = taCenter
                Caption = #1578#1575#1585#1610#1582
                Width = 100
              end>
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            HotTrackStyles = [htHandPoint, htUnderlineHot]
            ReadOnly = True
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
            ViewStyle = vsReport
          end
        end
      end
    end
  end
  inherited ActionList: TActionList
    inherited DataSetInsert1: TDataSetInsert
      DataSource = srcNegotiations
    end
    inherited DataSetEdit1: TDataSetEdit
      DataSource = srcNegotiations
    end
    inherited DataSetPost1: TDataSetPost
      DataSource = srcNegotiations
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcNegotiations
    end
    inherited DataSetDelete1_: TDataSetDelete
      DataSource = srcNegotiations
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actShow: TAction
      Caption = #1606#1605#1575#1610#1588
      OnExecute = actShowExecute
    end
    object actAdd: TAction
      Caption = #1575#1590#1575#1601#1607
      OnExecute = actAddExecute
    end
    object actRemove: TAction
      Caption = #1581#1584#1601
      OnExecute = actRemoveExecute
    end
    object actScan: TAction
      Caption = #1575#1587#1603#1606
      OnExecute = actScanExecute
    end
    object actShowFile: TAction
      Caption = #1606#1605#1575#1610#1588
      OnExecute = actShowFileExecute
    end
    object actExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
    end
    object actSearch: TAction
      Caption = #1580#1587#1578#1580#1608
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
    end
  end
  inherited ImageList1: TImageList
    Left = 544
  end
  object qryRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterScroll = qryReciptsAfterScroll
    Parameters = <
      item
        Name = 'ReciptNumberFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ReciptNumberTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
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
        Name = 'PersonID1From'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PersonID1To'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ReciptStateFrom'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'ReciptStateTo'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'YearIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     Recipts.ReciptID, Recipts.ReciptNumber, Recipts.Recip' +
        'tDate, Recipts.PersonID1, Customers.CustName, Recipts.ServerID, ' +
        'Recipts.YearID, '
      '                      Recipts.ReciptNote'
      'FROM         Recipts INNER JOIN'
      
        '                      Customers ON Recipts.PersonID1 = Customers' +
        '.CustID'
      ''
      
        'WHERE   (  (Recipts.ReciptType = 22 ) OR  Recipts.ReciptType BET' +
        'WEEN   120  AND 129  )'
      
        ' AND (Recipts.ReciptNumber BETWEEN :ReciptNumberFrom AND :Recipt' +
        'NumberTo ) '
      
        ' AND (Recipts.ReciptDate BETWEEN :ReciptDateFrom AND :ReciptDate' +
        'To )  '
      
        ' AND (Recipts.PersonID1  BETWEEN :PersonID1From AND :PersonID1To' +
        ' )'
      
        ' AND (Recipts.ReciptState  BETWEEN :ReciptStateFrom AND :ReciptS' +
        'tateTo )'
      ' AND (Recipts.YearID  BETWEEN :YearIDFrom  AND :YearIDTo )'
      '  '
      ''
      'Order By Recipts.ReciptNumber')
    Left = 640
    Top = 120
    object qryReciptsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryReciptsReciptNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1583#1585#1582#1608#1575#1587#1578
      FieldName = 'ReciptNumber'
    end
    object qryReciptsReciptDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1583#1585#1582#1608#1575#1587#1578
      DisplayWidth = 8
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryReciptsPersonID1: TIntegerField
      DisplayLabel = #1603#1583' '#1583#1585' '#1582#1608#1575#1587#1578' '#1603#1606#1606#1583#1607
      FieldName = 'PersonID1'
    end
    object qryReciptsCustName: TStringField
      DisplayLabel = #1583#1585#1582#1608#1575#1587#1578' '#1603#1606#1606#1583#1607
      FieldName = 'CustName'
      Size = 120
    end
    object qryReciptsReciptNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'ReciptNote'
      Size = 400
    end
    object qryReciptsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryReciptsYearID: TIntegerField
      FieldName = 'YearID'
    end
  end
  object srcRecipts: TDataSource
    DataSet = qryRecipts
    Left = 704
    Top = 216
  end
  object qryNegotiations: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterOpen = qryNegotiationsAfterScroll
    AfterInsert = qryNegotiationsAfterInsert
    AfterPost = qryNegotiationsAfterPost
    BeforeDelete = qryNegotiationsBeforeDelete
    AfterScroll = qryNegotiationsAfterScroll
    Parameters = <
      item
        Name = 'ReciptID'
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
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * From Negotiations'
      
        'WHERE     (ReciptID = :ReciptID ) AND (ServerID = :ServerID ) AN' +
        'D (YearID = :YearID )')
    Left = 208
    Top = 224
    object qryNegotiationsNegotiationsID: TAutoIncField
      FieldName = 'NegotiationsID'
      ReadOnly = True
    end
    object qryNegotiationsCustID: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610
      FieldName = 'CustID'
    end
    object qryNegotiationsNegotiationsDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'NegotiationsDate'
      EditMask = '9999/99/99;1;_'
      FixedChar = True
      Size = 10
    end
    object qryNegotiationsAudience: TStringField
      DisplayLabel = #1605#1582#1575#1591#1576
      FieldName = 'Audience'
      Size = 150
    end
    object qryNegotiationsNegDescription: TStringField
      DisplayLabel = #1588#1585#1581' '#1605#1584#1575#1603#1585#1607
      FieldName = 'NegDescription'
      Size = 1000
    end
    object qryNegotiationsReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryNegotiationsServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryNegotiationsYearID: TIntegerField
      FieldName = 'YearID'
    end
  end
  object srcNegotiations: TDataSource
    DataSet = qryNegotiations
    OnStateChange = srcNegotiationsStateChange
    Left = 96
    Top = 224
  end
  object qryCustomers: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CustID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     CustName, Country'
      'FROM         Customers'
      'Where CustID = :CustID')
    Left = 25
    Top = 112
  end
  object OpenDialog1: TOpenDialog
    Left = 576
    Top = 287
  end
  object qryInitQry: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT      *  from  ReciptTypes'
      'WHERE     ReciptType = 22'
      '')
    Left = 720
    Top = 337
  end
end
