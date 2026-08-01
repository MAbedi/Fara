inherited SendSMSF: TSendSMSF
  Caption = #1575#1585#1587#1575#1604' '#1711#1585#1608#1607#1740' '#1662#1740#1575#1605#1705
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 473
    Width = 776
    ExplicitLeft = 3
    ExplicitTop = 474
    ExplicitWidth = 776
  end
  inherited Panel2: TPanel
    inherited ImgTemplate: TImage
      Left = 777
      ExplicitLeft = 777
    end
    inherited lblCaption: TLabel
      Left = 596
      Width = 126
      Height = 16
      Caption = #1575#1585#1587#1575#1604' '#1711#1585#1608#1607#1740' '#1662#1740#1575#1605#1705
      ExplicitLeft = 596
      ExplicitWidth = 126
    end
  end
  inherited Panel3: TPanel
    Height = 417
    ExplicitWidth = 782
    ExplicitHeight = 418
    object pnlLeft: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 284
      Height = 406
      Align = alLeft
      TabOrder = 0
      ExplicitHeight = 408
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 282
        Height = 13
        Align = alTop
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = #1605#1578#1606' '#1662#1740#1575#1605#1705
        ParentBiDiMode = False
        ExplicitLeft = 235
        ExplicitWidth = 48
      end
      object Label8: TLabel
        Left = 1
        Top = 196
        Width = 282
        Height = 13
        Align = alTop
        BiDiMode = bdLeftToRight
        Caption = '...'
        Color = clMaroon
        Font.Charset = ARABIC_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
        WordWrap = True
        ExplicitWidth = 12
      end
      object mmoMessage: TMemo
        Tag = 111
        AlignWithMargins = True
        Left = 4
        Top = 17
        Width = 276
        Height = 176
        Align = alTop
        Lines.Strings = (
          '')
        TabOrder = 0
        OnChange = mmoMessageChange
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 362
        Width = 276
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitTop = 363
        DesignSize = (
          276
          41)
        object btnSendMessage: TButton
          AlignWithMargins = True
          Left = 128
          Top = 8
          Width = 140
          Height = 29
          Action = actSmsSend
          Anchors = [akTop, akRight]
          TabOrder = 0
        end
        object btnSMSManager: TBitBtn
          Left = 0
          Top = 8
          Width = 124
          Height = 29
          Action = actSendSMSManager
          Caption = #1575#1585#1587#1575#1604' '#1576#1607' SMSManager'
          TabOrder = 1
        end
      end
    end
    object pnlRight: TPanel
      AlignWithMargins = True
      Left = 295
      Top = 5
      Width = 482
      Height = 407
      Align = alClient
      TabOrder = 1
      ExplicitHeight = 408
      object grdCustomers: TDBGrid
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 474
        Height = 365
        Align = alClient
        Anchors = [akLeft, akTop, akRight]
        Color = clCream
        DataSource = srcCustomers
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CustID'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CustName'
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CustName1'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Mobile'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tel'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Address'
            Width = 31
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 1
        Top = 372
        Width = 480
        Height = 35
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          480
          35)
        object btnSelect: TButton
          AlignWithMargins = True
          Left = 384
          Top = 3
          Width = 80
          Height = 25
          Action = actFilter
          Anchors = [akTop, akRight]
          Caption = #1575#1606#1578#1582#1575#1576' '#1605#1588#1578#1585#1740
          TabOrder = 0
        end
      end
    end
  end
  inherited ActionList: TActionList
    inherited actSmsSend: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1587#1585#1608#1740#1587' '#1662#1740#1575#1605#1705
      OnExecute = actSmsSendExecute
    end
    object actSendSMSManager: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' SMSManager'
      OnExecute = actSendSMSManagerExecute
    end
    object actSelect: TAction
      Caption = #1575#1606#1578#1582#1575#1576' '#1605#1588#1578#1585#1740
      OnExecute = actSelectExecute
    end
    object actFilter: TAction
      Caption = 'actFilter'
      OnExecute = actFilterExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 472
    Top = 233
  end
  object srcCustomers: TDataSource
    DataSet = qryCustomers
    Left = 424
    Top = 144
  end
  object qryCustomers: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CustList'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT * FROM (SELECT         CustomerGrpID,CustID, CustName,Cus' +
        'tName AS CustName1,  Mobile,Tel,[Address]'
      'FROM       '
      '                         Customers '
      'WHERE    (LEN(Mobile) > 8)'
      ''
      'UNION ALL'
      ''
      
        'SELECT         Customers.CustomerGrpID,CustomersManag.PersonID1,' +
        'CustName, CustomersManag.ManagName, CustomersManag.Mobile,Custom' +
        'ersManag.Tel,[Address]'
      'FROM            CustomersManag INNER JOIN'
      
        '                         Customers ON CustomersManag.PersonID1 =' +
        ' Customers.CustID'
      
        'WHERE        (LEN(CustomersManag.Mobile ) > 8) ) T              ' +
        '           '
      'WHERE CustID IN (:CustList)'
      '')
    Left = 560
    Top = 144
    object qryCustomersCustID: TIntegerField
      DisplayLabel = #1705#1583#1605#1588#1578#1585#1740
      DisplayWidth = 12
      FieldName = 'CustID'
      ReadOnly = True
    end
    object qryCustomersCustName: TStringField
      DisplayLabel = #1606#1575#1605#8207#1605#1588#1578#1585#1740
      DisplayWidth = 31
      FieldName = 'CustName'
      ReadOnly = True
      Size = 150
    end
    object qryCustomersCustName1: TWideStringField
      DisplayLabel = #1606#1575#1605#8207#1605#1582#1575#1591#1576
      DisplayWidth = 28
      FieldName = 'CustName1'
      ReadOnly = True
      Size = 150
    end
    object qryCustomersMobile: TStringField
      DisplayLabel = #1605#1608#1576#1575#1740#1604
      DisplayWidth = 19
      FieldName = 'Mobile'
      ReadOnly = True
    end
    object qryCustomersTel: TStringField
      DisplayLabel = #1578#1604#1601#1606
      DisplayWidth = 19
      FieldName = 'Tel'
      ReadOnly = True
      Size = 30
    end
    object qryCustomersAddress: TStringField
      DisplayLabel = #1570#1583#1585#1587
      DisplayWidth = 64
      FieldName = 'Address'
      ReadOnly = True
      Size = 300
    end
    object qryCustomersCustomerGrpID: TIntegerField
      FieldName = 'CustomerGrpID'
      ReadOnly = True
    end
  end
  object qryInterView: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     CustID, InterViewKind, InterViewNo, InterViewDate, In' +
        'terViewNote, ModifyDate, InterViewStae,FirstUser'
      'FROM         CustomersInterView')
    Left = 168
    Top = 216
    object qryInterViewCustID: TIntegerField
      FieldName = 'CustID'
    end
    object qryInterViewInterViewKind: TWordField
      FieldName = 'InterViewKind'
    end
    object qryInterViewInterViewNo: TIntegerField
      FieldName = 'InterViewNo'
    end
    object qryInterViewInterViewDate: TStringField
      FieldName = 'InterViewDate'
      FixedChar = True
      Size = 10
    end
    object qryInterViewInterViewNote: TWideStringField
      FieldName = 'InterViewNote'
      Size = 2000
    end
    object qryInterViewModifyDate: TDateTimeField
      FieldName = 'ModifyDate'
    end
    object qryInterViewInterViewStae: TWordField
      FieldName = 'InterViewStae'
    end
    object qryInterViewFirstUser: TWideStringField
      FieldName = 'FirstUser'
    end
  end
end
