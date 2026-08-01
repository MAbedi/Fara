inherited CountingF: TCountingF
  Left = 252
  Top = 189
  Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1585#1576#1608#1591' '#1576#1607' '#1575#1606#1576#1575#1585#1711#1585#1583#1575#1606#1610
  ClientHeight = 422
  ClientWidth = 472
  OldCreateOrder = True
  OnClose = FormClose
  ExplicitWidth = 478
  ExplicitHeight = 451
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 369
    Width = 472
    ExplicitTop = 263
    ExplicitWidth = 472
  end
  inherited Panel1: TPanel
    Width = 472
    Height = 50
    TabOrder = 4
    ExplicitWidth = 472
    ExplicitHeight = 50
    inherited Image1: TImage
      Left = 418
      ExplicitLeft = 418
    end
    inherited lblTopic0: TLabel
      Left = 346
      ExplicitLeft = 346
    end
    inherited lblTopic1: TLabel
      Left = 325
      Visible = False
      ExplicitLeft = 325
    end
    object dbtxtState: TDBText
      Left = 175
      Top = 12
      Width = 123
      Height = 31
      Alignment = taCenter
      Anchors = [akTop]
      DataField = 'State'
      DataSource = SrcCounting
      Font.Charset = ARABIC_CHARSET
      Font.Color = 8684799
      Font.Height = -15
      Font.Name = 'Jadid'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  inherited pnlDown: TPanel
    Top = 385
    Width = 472
    TabOrder = 3
    ExplicitTop = 385
    ExplicitWidth = 472
    object okPanel: TPanel [0]
      Left = 72
      Top = 1
      Width = 165
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        165
        35)
      object BitBtn7: TBitBtn
        Left = 88
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetPost1
        Anchors = [akTop, akRight]
        Caption = #1578#1571#1610#1610#1600#1600#1600#1583
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
        Caption = #1575#1606#1589#1600#1600#1600#1585#1575#1601
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
    inherited btnClose: TBitBtn
      Top = 294
      TabOrder = 5
      ExplicitTop = 294
    end
    object BtnReject: TBitBtn
      Left = 7
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1576#1575#1586#1711#1588#1578
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000220B0000220B00000001000000010000003100000042
        0000004A000000520000006B0000004A080000630800006B0800007B0800008C
        080000940800009C080000A50800006B10000873100000A51000089C180000A5
        180008A5180008AD180008842100109C210008A5210010AD2100108C290008A5
        290008AD290008B5290010A5310018A5310021A5310008AD310010AD3100189C
        390010AD390010A5420010B5420029A54A0010AD4A0018B54A0021BD4A0042BD
        4A0018B5520021B5520039B5520029BD520042BD52004AC6520029BD5A0039BD
        5A0042BD5A0042C65A0031BD630039BD630042BD63004ABD630039BD6B004ABD
        6B0042C673004AC6730052C673004AC67B0052C67B0073D67B0063CE8C006BCE
        8C006BD68C0084D68C0073D694007BDE9C0084DEA5008CDEAD0094DEB50094E7
        B5009CE7B500ADE7B500B5E7B500A5E7BD00B5E7BD00A5E7C600ADE7C600B5EF
        C600BDEFCE00BDEFD600C6F7DE00D6F7DE00D6F7E700E7F7EF00EFFFEF00F7FF
        F700FF00FF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005A5A5A5A5A00
        01030301005A5A5A5A5A5A5A5A0101080B0B0B0B0802025A5A5A5A5A05060F0C
        0B0B0B0B0C0C07005A5A5A050D16120B0B0B0B0B0B0B0C07025A5A05201A120F
        2F5755170B0B0B0C025A0314241C1029595C430F0B0B0B0C0801032327202959
        5C3F0B0B0B0B0B0C0A010D2B2B44585C59514E4B4B4B4B0B0B020E3830525C5C
        5C5C5C5C5C5C5C0B0B030E3E3A304D5C59463232323232120B010E39462B2B48
        5C573C202020191209015A1E50412627475C592D1C191613075A5A1E3C53402B
        2A48502B22202015075A5A5A1541564A3E35303434281C065A5A5A5A5A373748
        534F47453D21215A5A5A5A5A5A5A5A1E2C363625185A5A5A5A5A}
      ModalResult = 2
      TabOrder = 4
    end
    object BitBtn9: TBitBtn
      Left = 85
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Anchors = [akLeft, akBottom]
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 3
    end
    object newPanel: TPanel
      Left = 237
      Top = 1
      Width = 234
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        234
        35)
      object BitBtn3: TBitBtn
        Left = 156
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 78
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn5: TBitBtn
        Left = 1
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object btnState: TBitBtn
      Left = 161
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #1587#1575#1610#1585
      TabOrder = 2
      OnClick = btnStateClick
    end
  end
  object Panel2: TPanel [3]
    Left = 0
    Top = 50
    Width = 472
    Height = 64
    Align = alTop
    TabOrder = 0
    DesignSize = (
      472
      64)
    object Label8: TLabel
      Left = 419
      Top = 14
      Width = 30
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607
      FocusControl = EdtCountNumber
    end
    object SpeedButton2: TSpeedButton
      Left = 299
      Top = 9
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '...'
      OnClick = SpeedButton2Click
    end
    object Label10: TLabel
      Left = 421
      Top = 38
      Width = 21
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582
      FocusControl = EdtDate
    end
    object Label1: TLabel
      Left = 197
      Top = 18
      Width = 76
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1575#1605' '#1601#1575#1610#1604' '#1662#1610#1608#1587#1578#1610
      FocusControl = DBEdit1
    end
    object SpeedButton1: TSpeedButton
      Left = 19
      Top = 13
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object EdtCountNumber: TDBEdit
      Left = 328
      Top = 10
      Width = 83
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'CountNumber'
      DataSource = SrcCounting
      TabOrder = 0
      OnKeyDown = EdtCountNumberKeyDown
    end
    object EdtDate: TDBEdit
      Left = 328
      Top = 37
      Width = 83
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'CountDate'
      DataSource = SrcCounting
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 42
      Top = 14
      Width = 153
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      DataField = 'AttachFileName'
      DataSource = SrcCounting
      ParentBiDiMode = False
      TabOrder = 2
      OnKeyDown = DBEdit1KeyDown
    end
    object DBNavigator1: TDBNavigator
      Left = 18
      Top = 38
      Width = 172
      Height = 20
      DataSource = SrcCounting
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      TabOrder = 3
    end
  end
  object GroupBox1: TGroupBox [4]
    Left = 0
    Top = 300
    Width = 472
    Height = 81
    Align = alTop
    Caption = ' '#1593#1606#1575#1608#1610#1606' '#1584#1610#1604' '#1711#1586#1575#1585#1588' '#1575#1606#1576#1575#1585' '#1711#1585#1583#1575#1606#1610' '
    TabOrder = 2
    object DBMemo1: TDBMemo
      Tag = 111
      Left = 8
      Top = 18
      Width = 450
      Height = 57
      DataField = 'FormSignature'
      DataSource = SrcCounting
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox [5]
    Left = 0
    Top = 219
    Width = 472
    Height = 81
    Align = alTop
    Caption = ' '#1578#1608#1590#1610#1581#1575#1578' '#1590#1585#1608#1585#1610' '
    TabOrder = 1
    object DBMemo2: TDBMemo
      Left = 8
      Top = 16
      Width = 450
      Height = 57
      DataField = 'Note'
      DataSource = SrcCounting
      TabOrder = 0
    end
  end
  object dbrgrpCountingCalckind: TDBRadioGroup [6]
    Left = 0
    Top = 114
    Width = 472
    Height = 105
    Align = alTop
    Caption = ' '#1606#1581#1608#1607' '#1605#1581#1575#1587#1576#1607' '#1605#1608#1580#1608#1583#1740' '#1606#1607#1575#1740#1740'  '
    DataField = 'CountingCalckind'
    DataSource = SrcCounting
    TabOrder = 5
    Values.Strings = (
      '0'
      '1'
      '2')
  end
  inherited ActionList1: TActionList
    Left = 96
    inherited DataSetPost1: TDataSetPost
      DataSource = SrcCounting
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = SrcCounting
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      DataSource = SrcCounting
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = SrcCounting
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      DataSource = SrcCounting
    end
    object actSearch_: TAction
      Category = 'Dataset'
      Caption = #1580#1587#1578#1580#1608
      OnExecute = actSearch_Execute
    end
    object actPrint: TAction
      Category = 'Dataset'
      Caption = 'actPrint'
    end
    object actState: TAction
      Caption = #1602#1591#1593#1610' '#1606#1605#1608#1583#1606
      OnExecute = actStateExecute
    end
    object actState0: TAction
      Caption = #1605#1608#1602#1578' '#1606#1605#1608#1583#1606
      OnExecute = actState0Execute
    end
  end
  object qryCounting: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryCountingAfterInsert
    BeforePost = qryCountingBeforePost
    AfterPost = qryCountingAfterPost
    BeforeDelete = qryCountingBeforeDelete
    AfterDelete = qryCountingAfterDelete
    Parameters = <
      item
        Name = 'CountDateFrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'CountDateTo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     *'
      'FROM         Counting'
      'WHERE     (CountDate BETWEEN :CountDateFrom  AND :CountDateTo )'
      'order by CountNumber')
    Left = 196
    Top = 8
    object qryCountingCountID: TIntegerField
      FieldName = 'CountID'
      Required = True
    end
    object qryCountingCountNumber: TIntegerField
      FieldName = 'CountNumber'
      Required = True
    end
    object qryCountingCountDate: TStringField
      FieldName = 'CountDate'
      Required = True
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryCountingNote: TStringField
      FieldName = 'Note'
      Size = 255
    end
    object qryCountingAttachFileName: TStringField
      FieldName = 'AttachFileName'
      Size = 150
    end
    object qryCountingFormSignature: TStringField
      FieldName = 'FormSignature'
      Size = 250
    end
    object qryCountingState: TWordField
      FieldName = 'State'
      OnGetText = qryCountingStateGetText
    end
    object qryCountingCountingCalckind: TWordField
      FieldName = 'CountingCalckind'
    end
  end
  object SrcCounting: TDataSource
    DataSet = qryCounting
    OnStateChange = SrcCountingStateChange
    Left = 272
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Filter = 'AttachFileName|*.*'
    Left = 407
    Top = 7
  end
  object pm1: TPopupMenu
    Left = 216
    Top = 232
    object mnuState: TMenuItem
      Action = actState
    end
    object mnuN1: TMenuItem
      Caption = '-'
    end
    object mnuState0: TMenuItem
      Action = actState0
    end
  end
end
