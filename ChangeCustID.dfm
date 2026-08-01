object ChangeCustIDF: TChangeCustIDF
  Left = 517
  Top = 152
  BiDiMode = bdRightToLeft
  BorderStyle = bsToolWindow
  BorderWidth = 5
  Caption = #1578#1594#1740#1740#1585' '#1705#1583#1607#1575#1740' '#1605#1588#1578#1585#1740' '#1576#1607' '#1705#1583' '#1580#1583#1740#1583
  ClientHeight = 279
  ClientWidth = 598
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 291
    Height = 197
    Align = alLeft
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 94
      Width = 269
      Height = 102
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alClient
      Alignment = taCenter
      Caption = 
        #1576#1607' '#1593#1604#1578' '#1578#1594#1610#1610#1585' '#1705#1583' '#1605#1588#1578#1585#1740#1575#1606#1740' '#1583#1585' '#1587#1605#1578' '#1585#1575#1587#1578' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607' '#1576#1607' '#1705#1583' '#1587#1605#1578' '#1670#1662' '#1602#1576#1604 +
        ' '#1588#1585#1608#1593' '#1593#1605#1604#1740#1575#1578' '#1578#1607#1610#1607' '#1662#1588#1578#1610#1576#1575#1606' '#1590#1585#1608#1585#1610' '#1605#1610' '#1576#1575#1588#1583'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      OnMouseEnter = Label1MouseEnter
      ExplicitWidth = 254
      ExplicitHeight = 39
    end
    object grpMaster: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 283
      Height = 77
      Align = alTop
      Caption = #1578#1576#1583#1740#1604' '#1576#1607' '#1705#1583' '#1605#1588#1578#1585#1610
      TabOrder = 0
      object edtCustName: TMaskEdit
        AlignWithMargins = True
        Left = 5
        Top = 51
        Width = 273
        Height = 21
        Align = alBottom
        BevelOuter = bvNone
        BevelKind = bkFlat
        Color = clBtnFace
        Ctl3D = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        Text = ''
      end
      object Panel2: TPanel
        Left = 2
        Top = 15
        Width = 279
        Height = 29
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object sbtnMaster: TSpeedButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 23
          Height = 23
          Align = alLeft
          Caption = '...'
          OnClick = sbtnMasterClick
          ExplicitLeft = 35
          ExplicitHeight = 22
        end
        object edtCustID: TMaskEdit
          AlignWithMargins = True
          Left = 32
          Top = 3
          Width = 244
          Height = 23
          Align = alClient
          TabOrder = 0
          Text = ''
          ExplicitHeight = 21
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 598
    Height = 41
    Align = alTop
    TabOrder = 1
  end
  object Panel4: TPanel
    Left = 0
    Top = 238
    Width = 598
    Height = 41
    Align = alBottom
    TabOrder = 2
    object btnBsell: TBitBtn
      AlignWithMargins = True
      Left = 488
      Top = 6
      Width = 108
      Height = 29
      Hint = 'ChangeCustID'
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Align = alRight
      Caption = #1575#1606#1580#1575#1605' '#1578#1594#1740#1740#1585#1575#1578' Bsell'
      TabOrder = 0
      OnClick = btnBsellClick
    end
    object btnBPMS: TBitBtn
      AlignWithMargins = True
      Left = 375
      Top = 6
      Width = 111
      Height = 29
      Hint = 'ChangeCustIDWithAccCode'
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 1
      Margins.Bottom = 5
      Align = alRight
      Caption = #1575#1606#1580#1575#1605' '#1578#1594#1740#1740#1585#1575#1578' BPMS'
      TabOrder = 1
      OnClick = btnBsellClick
      ExplicitLeft = 408
    end
    object BtnReject: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 7
      Width = 75
      Height = 27
      Margins.Left = 2
      Margins.Top = 6
      Margins.Right = 2
      Margins.Bottom = 6
      Align = alLeft
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
      ModalResult = 1
      TabOrder = 2
    end
  end
  object Panel5: TPanel
    Left = 291
    Top = 41
    Width = 307
    Height = 197
    Align = alClient
    TabOrder = 3
    object DBGrid1: TDBGrid
      Tag = 111
      Left = 1
      Top = 1
      Width = 305
      Height = 162
      Align = alClient
      Color = clCream
      DataSource = srcFitful
      DrawingStyle = gdsGradient
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnEditButtonClick = DBGrid1EditButtonClick
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'CustID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_CustName'
          Width = 154
          Visible = True
        end>
    end
    object Panel6: TPanel
      Left = 1
      Top = 163
      Width = 305
      Height = 33
      Align = alBottom
      TabOrder = 1
      object BitBtn2: TBitBtn
        AlignWithMargins = True
        Left = 228
        Top = 6
        Width = 75
        Height = 21
        Hint = 'ChangeCustID'
        Margins.Left = 1
        Margins.Top = 5
        Margins.Right = 1
        Margins.Bottom = 5
        Align = alRight
        Caption = #1581#1584#1601
        TabOrder = 0
        OnClick = BitBtn2Click
      end
    end
  end
  object qryCustomers: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT        CustID, CustName'
      'FROM            Customers'
      'WHERE        (CustID <> 0)')
    Left = 472
    Top = 121
    object qryCustomersCustID: TIntegerField
      FieldName = 'CustID'
    end
    object qryCustomersCustName: TStringField
      FieldName = 'CustName'
      Size = 60
    end
  end
  object srcCustomers: TDataSource
    DataSet = qryCustomers
    Left = 344
    Top = 121
  end
  object qryFitful: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforeDelete = qryFitfulBeforeDelete
    Parameters = <>
    SQL.Strings = (
      'SELECT   top 0     TopicCode AS CustID'
      'FROM            Fitful')
    Left = 520
    Top = 73
    object qryFitfulCustID: TLargeintField
      DisplayLabel = #1705#1583' '#1605#1588#1578#1585#1740' '#1576#1585#1575#1740' '#1578#1594#1740#1740#1585
      FieldName = 'CustID'
    end
    object qryFitful_CustName: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1605#1588#1578#1585#1740' '#1576#1585#1575#1740' '#1578#1594#1740#1740#1585
      FieldKind = fkLookup
      FieldName = '_CustName'
      LookupDataSet = qryCustomers
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustID'
      Size = 200
      Lookup = True
    end
  end
  object srcFitful: TDataSource
    DataSet = qryFitful
    OnStateChange = srcFitfulStateChange
    Left = 400
    Top = 73
  end
  object Timer1: TTimer
    Interval = 250
    OnTimer = Timer1Timer
    Left = 112
    Top = 8
  end
end
