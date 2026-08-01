inherited UserDetailRelatedF: TUserDetailRelatedF
  Caption = #1575#1585#1578#1576#1575#1591' '#1705#1583' '#1607#1575#1740' '#1578#1601#1589#1740#1604#1740' '#1608' '#1705#1575#1585#1576#1585#1575#1606
  ClientHeight = 495
  ClientWidth = 745
  OnResize = FormResize
  ExplicitWidth = 761
  ExplicitHeight = 534
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 745
    ExplicitWidth = 753
    inherited Image1: TImage
      Left = 699
      ExplicitLeft = 699
    end
    inherited lblTopic0: TLabel
      Left = 627
      Visible = False
      ExplicitLeft = 627
    end
    inherited lblTopic1: TLabel
      Left = 480
      Top = 34
      Width = 202
      Caption = #1576#1607' '#1605#1606#1592#1608#1585' '#1575#1587#1578#1601#1575#1583#1607' '#1583#1585' '#1578#1585#1575#1586' '#1608' '#1583#1601#1575#1578#1585' '#1605#1585#1578#1576#1591' '#1576#1575' '#1705#1575#1585#1576#1585
      ExplicitLeft = 480
      ExplicitTop = 34
      ExplicitWidth = 202
    end
  end
  inherited pnlDown: TPanel
    Top = 458
    Width = 745
    ExplicitTop = 470
    ExplicitWidth = 753
    object BitBtn1: TBitBtn
      Left = 89
      Top = 6
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1740#1576
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 170
      Top = 6
      Width = 75
      Height = 25
      Action = actSearch
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
    end
    object PnlOK: TPanel
      Left = 488
      Top = 1
      Width = 176
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
      DesignSize = (
        176
        35)
      object btnPost: TBitBtn
        Left = 91
        Top = 5
        Width = 75
        Height = 25
        Action = DataSetPost1
        Anchors = [akTop, akRight]
        Caption = #1578#1571#1610#1610#1600#1600#1600#1583
        TabOrder = 0
      end
      object btnCancel: TBitBtn
        Left = 12
        Top = 5
        Width = 75
        Height = 25
        Action = DataSetCancel1
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1589#1600#1600#1600#1585#1575#1601
        TabOrder = 1
      end
    end
    object btnEdit: TBitBtn
      AlignWithMargins = True
      Left = 659
      Top = 6
      Width = 75
      Height = 25
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 5
      Action = DataSetEdit1
      Align = alRight
      Caption = #1608#1740#1585#1575#1740#1588
      TabOrder = 4
      ExplicitLeft = 667
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 73
    Width = 302
    Height = 385
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitWidth = 310
    ExplicitHeight = 397
    object CheckListUserID: TCheckListBox
      Left = 0
      Top = 0
      Width = 310
      Height = 397
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object Panel3: TPanel [3]
    Left = 302
    Top = 73
    Width = 443
    Height = 385
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitLeft = 310
    ExplicitHeight = 397
    object DBGrid1: TDBGrid
      Tag = 111
      Left = 0
      Top = 0
      Width = 443
      Height = 397
      Align = alClient
      Color = clCream
      DataSource = srcDetails
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DetailCode'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DetailName_L1'
          Width = 296
          Visible = True
        end>
    end
  end
  inherited ActionList1: TActionList
    inherited DataSetPost1: TDataSetPost
      DataSource = srcDetails
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcDetails
    end
    object actSearch: TAction
      Caption = #1580#1587#1578#1580#1608
      OnExecute = actSearchExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1740#1576
      OnExecute = actSortExecute
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1740#1585#1575#1740#1588
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = srcDetails
    end
  end
  object srcDetails: TDataSource
    DataSet = qryDetails
    OnStateChange = srcDetailsStateChange
    Left = 504
    Top = 152
  end
  object qryDetails: TADOQuery
    Connection = DmF.adcAccounting
    CursorType = ctStatic
    BeforePost = qryDetailsBeforePost
    AfterScroll = qryDetailsAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     cast(details.DetailCode as bigint) as DetailCode,deta' +
        'ils.DetailName_L1,details.DetailName_L2,Cust.OperatorID'
      
        'FROM        acc.Details as details inner join dbo.customers as C' +
        'ust '
      #9'ON details.DetailCode = Cust.CustID'
      'where '
      ' (DetailCode<>0)'
      'order by DetailCode')
    Left = 456
    Top = 232
    object qryDetailsDetailCode: TLargeintField
      Tag = 3
      DisplayLabel = #1705#1583' '#1578#1601#1589#1740#1604#1740
      FieldName = 'DetailCode'
      ReadOnly = True
    end
    object qryDetailsDetailName_L1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1578#1601#1589#1740#1604#1740
      FieldName = 'DetailName_L1'
      Size = 150
    end
    object qryDetailsDetailName_L2: TStringField
      Tag = 3
      DisplayLabel = 'Detail Caption'
      FieldName = 'DetailName_L2'
      Size = 150
    end
    object qryDetailsOperatorID: TWideStringField
      FieldName = 'OperatorID'
      Size = 100
    end
  end
end
