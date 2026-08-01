object frmMakeDocs: TfrmMakeDocs
  Left = 0
  Top = 0
  Width = 681
  Height = 179
  TabOrder = 0
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 681
    Height = 158
    Align = alClient
    BiDiMode = bdRightToLeft
    Color = clCream
    DataSource = srcMakeDocs
    DrawingStyle = gdsClassic
    ParentBiDiMode = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DocRow'
        Width = 27
        Visible = True
      end
      item
        Color = 13236955
        Expanded = False
        FieldName = 'DocCaption'
        Width = 281
        Visible = True
      end
      item
        Alignment = taRightJustify
        Color = 13431799
        Expanded = False
        FieldName = 'DocName'
        Width = 314
        Visible = True
      end>
  end
  object edtDocName: TDBEdit
    Left = 0
    Top = 158
    Width = 681
    Height = 21
    Align = alBottom
    BiDiMode = bdLeftToRight
    Color = 13431799
    DataField = 'DocName'
    DataSource = srcMakeDocs
    ParentBiDiMode = False
    TabOrder = 1
    OnEnter = edtDocNameEnter
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 129
    Width = 75
    Height = 25
    Caption = #1581#1584#1601' '#1705#1604#1740
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object srcMakeDocs: TDataSource
    DataSet = qryMakeDocs
    Left = 145
    Top = 62
  end
  object qryMakeDocs: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    BeforeOpen = qryMakeDocsBeforeOpen
    AfterInsert = qryMakeDocsAfterInsert
    BeforePost = qryMakeDocsBeforePost
    Parameters = <>
    SQL.Strings = (
      
        'SELECT top 1 DocKind,DocType,DocTypeIndex,DocRow,DocCaption,DocN' +
        'ame'
      '   FROM MakeDocs')
    Left = 280
    Top = 80
    object qryMakeDocsDocKind: TIntegerField
      FieldName = 'DocKind'
    end
    object qryMakeDocsDocType: TIntegerField
      FieldName = 'DocType'
    end
    object qryMakeDocsDocTypeIndex: TIntegerField
      FieldName = 'DocTypeIndex'
    end
    object qryMakeDocsDocRow: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      FieldName = 'DocRow'
    end
    object qryMakeDocsDocCaption: TWideStringField
      DisplayLabel = #1588#1585#1581' '#1579#1575#1576#1578
      FieldName = 'DocCaption'
      Size = 200
    end
    object qryMakeDocsDocName: TWideStringField
      DisplayLabel = #1588#1585#1581' '#1605#1578#1594#1610#1585
      FieldName = 'DocName'
      OnGetText = qryMakeDocsDocNameGetText
      Size = 200
    end
  end
end
