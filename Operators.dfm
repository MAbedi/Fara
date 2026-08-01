object OperatorsF: TOperatorsF
  Tag = 666
  Left = 154
  Top = 229
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = #1605#1593#1585#1601#1610' '#1603#1575#1585#1576#1585#1575#1606
  ClientHeight = 253
  ClientWidth = 660
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel5: TPanel
    Left = 337
    Top = 0
    Width = 323
    Height = 253
    Align = alRight
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 321
      Height = 156
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 2
        Top = 2
        Width = 317
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = '  '#1604#1610#1587#1578' '#1603#1575#1585#1576#1585#1575#1606' '#1605#1593#1585#1601#1610' '#1588#1583#1607' '#1583#1585' '#1587#1610#1587#1578#1605
        Color = 16744448
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 317
        Height = 139
        Align = alClient
        Color = clSilver
        DataSource = srcOperators
        Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'name'
            Width = 295
            Visible = True
          end>
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 157
      Width = 321
      Height = 60
      Align = alBottom
      TabOrder = 1
      object Label2: TLabel
        Left = 264
        Top = 9
        Width = 40
        Height = 13
        Caption = #1606#1575#1605' '#1603#1575#1585#1576#1585':'
      end
      object Label3: TLabel
        Left = 260
        Top = 34
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = #1603#1604#1605#1607' '#1593#1576#1608#1585':'
      end
      object DBEdit1: TDBEdit
        Left = 80
        Top = 6
        Width = 177
        Height = 21
        DataField = 'name'
        DataSource = srcOperators
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 80
        Top = 30
        Width = 177
        Height = 21
        DataField = 'password'
        DataSource = srcOperators
        TabOrder = 1
      end
      object BitBtn3: TBitBtn
        Left = 8
        Top = 7
        Width = 63
        Height = 22
        Action = DataSetPost1
        Caption = #1578#1575#1610#1610#1583
        TabOrder = 2
      end
      object BitBtn4: TBitBtn
        Left = 8
        Top = 31
        Width = 63
        Height = 22
        Action = DataSetCancel1
        Caption = #1575#1606#1589#1585#1575#1601
        TabOrder = 3
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 217
      Width = 321
      Height = 35
      Align = alBottom
      TabOrder = 2
      object BitBtn1: TBitBtn
        Left = 248
        Top = 6
        Width = 58
        Height = 22
        Action = DataSetInsert1
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn2: TBitBtn
        Left = 8
        Top = 5
        Width = 75
        Height = 25
        Cancel = True
        Caption = #1576#1575#1586#1711#1588#1578
        ModalResult = 1
        TabOrder = 3
        OnClick = BitBtn2Click
      end
      object BitBtn5: TBitBtn
        Left = 186
        Top = 6
        Width = 58
        Height = 22
        Action = DataSetEdit1
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BitBtn6: TBitBtn
        Left = 124
        Top = 6
        Width = 58
        Height = 22
        Action = DataSetDelete1
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 337
    Height = 253
    Align = alLeft
    Caption = 'Panel2'
    TabOrder = 1
    object TreeView1: TTreeView
      Left = 1
      Top = 1
      Width = 150
      Height = 251
      Align = alClient
      Color = clCream
      Indent = 19
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      OnDblClick = TreeView1DblClick
    end
    object Panel6: TPanel
      Left = 151
      Top = 1
      Width = 185
      Height = 251
      Align = alRight
      TabOrder = 1
      object Label4: TLabel
        Left = 1
        Top = 1
        Width = 183
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = #1575#1605#1603#1575#1606#1575#1578' '#1603#1575#1585#1576#1585
      end
      object ListBox1: TListBox
        Left = 1
        Top = 14
        Width = 183
        Height = 236
        Align = alClient
        Color = 15132390
        ItemHeight = 13
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnDblClick = ListBox1DblClick
        OnKeyDown = ListBox1KeyDown
      end
    end
    object BitBtn7: TBitBtn
      Left = 72
      Top = 232
      Width = 75
      Height = 17
      Caption = '&'#1607#1605#1607' '#1575#1605#1603#1575#1606#1575#1578
      TabOrder = 2
      OnClick = BitBtn7Click
    end
  end
  object srcOperators: TDataSource
    AutoEdit = False
    DataSet = qryOperators
    OnStateChange = srcOperatorsStateChange
    Left = 360
    Top = 120
  end
  object ActionList1: TActionList
    Left = 464
    Top = 48
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      DataSource = srcOperators
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = srcOperators
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      DataSource = srcOperators
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = #1578#1575#1610#1610#1583
      DataSource = srcOperators
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      DataSource = srcOperators
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 96
    Top = 80
  end
  object qryOperators: TADOQuery
    AfterInsert = qryOperatorsAfterInsert
    BeforePost = qryOperatorsBeforePost
    BeforeDelete = qryOperatorsBeforeDelete
    AfterScroll = qryOperatorsAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from operators'
      'order by name')
    Left = 386
    Top = 57
  end
end
