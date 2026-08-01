inherited FeedbackListF: TFeedbackListF
  Caption = #1604#1740#1587#1578' '#1576#1575#1586#1582#1608#1585#1583
  ClientHeight = 547
  ClientWidth = 980
  ExplicitWidth = 996
  ExplicitHeight = 586
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 506
    Width = 980
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 901
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actGet
      Align = alRight
      Caption = #1583#1585#1740#1575#1601#1578
      TabOrder = 1
      ExplicitLeft = 943
    end
  end
  inherited Panel2: TPanel
    Width = 980
    DesignSize = (
      980
      53)
    inherited ImgTemplate: TImage
      Left = 975
    end
    inherited lblCaption: TLabel
      Left = 872
    end
    inherited lblBaseDate: TLabel
      Left = 444
    end
  end
  inherited Panel3: TPanel
    Width = 980
    Height = 453
    object grdFeedBackList: TCedarDbgrid
      Left = 417
      Top = 2
      Width = 561
      Height = 449
      Align = alClient
      Color = clCream
      DataSource = srcFeedBackList
      DynProps = <>
      Flat = True
      FooterParams.FillStyle = cfstSolidEh
      FooterParams.Font.Charset = DEFAULT_CHARSET
      FooterParams.Font.Color = clWindowText
      FooterParams.Font.Height = -12
      FooterParams.Font.Name = 'Tahoma'
      FooterParams.Font.Style = [fsBold]
      FooterParams.ParentFont = False
      FooterParams.VertLines = False
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorTitle.ShowDropDownSign = True
      IndicatorTitle.TitleButton = True
      OddRowColor = clWhite
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 0
      OnDrawColumnCell = grdFeedBackListDrawColumnCell
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'No'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'B5hcpriorityId'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'B5hcstatusId'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'B5idrefId11'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'B5idrefId3'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'B5idrefId8'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Comments'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Id'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Subject'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'T5sctypeId'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Taskdate'
          Footers = <>
          Width = 64
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Title'
          Footers = <>
          Width = 64
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 415
      Height = 449
      Align = alLeft
      TabOrder = 1
      ExplicitLeft = -4
      object Label1: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 53
        Width = 407
        Height = 13
        Margins.Top = 6
        Align = alTop
        Caption = #1605#1608#1590#1608#1593
        FocusControl = edtSubject
        ExplicitLeft = 379
        ExplicitWidth = 32
      end
      object Label2: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 106
        Width = 407
        Height = 13
        Margins.Top = 10
        Align = alTop
        Caption = #1578#1608#1590#1740#1581#1575#1578
        FocusControl = dbmmoComments
        ExplicitLeft = 371
        ExplicitWidth = 40
      end
      object Label3: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 407
        Height = 13
        Align = alTop
        Caption = #1593#1606#1608#1575#1606
        FocusControl = edtTitle
        ExplicitLeft = 385
        ExplicitWidth = 26
      end
      object edtSubject: TDBEdit
        AlignWithMargins = True
        Left = 4
        Top = 72
        Width = 407
        Height = 21
        Align = alTop
        DataField = 'Subject'
        DataSource = srcFeedBackList
        TabOrder = 0
        ExplicitLeft = 176
        ExplicitTop = 144
        ExplicitWidth = 13004
      end
      object dbmmoComments: TDBMemo
        AlignWithMargins = True
        Left = 4
        Top = 125
        Width = 407
        Height = 320
        Align = alClient
        Color = clCream
        DataField = 'Comments'
        DataSource = srcFeedBackList
        TabOrder = 1
        ExplicitLeft = 1
        ExplicitTop = 48
        ExplicitWidth = 413
        ExplicitHeight = 400
      end
      object edtTitle: TDBEdit
        AlignWithMargins = True
        Left = 4
        Top = 23
        Width = 407
        Height = 21
        Align = alTop
        DataField = 'Title'
        DataSource = srcFeedBackList
        TabOrder = 2
        ExplicitLeft = 2
        ExplicitTop = 20
      end
    end
  end
  inherited ActionList: TActionList
    object actGet: TAction
      Caption = #1583#1585#1740#1575#1601#1578
      OnExecute = actGetExecute
    end
  end
  object qryFeedBackList: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        DetailCode AS B5hcpriorityId, DetailCode AS B5hcst' +
        'atusId, DetailCode AS B5idrefId11, DetailCode AS B5idrefId3, Det' +
        'ailCode AS B5idrefId8, FitfulNote AS Comments, DetailCode AS Id,' +
        ' DetailCode AS No, FitfulNote AS Org, '
      
        '                         FitfulNote AS Status, FitfulNote AS Sub' +
        'ject, DetailCode AS T5sctypeId, FitfulNote AS Taskdate, FitfulNo' +
        'te AS Title'
      'FROM            Fitful')
    Left = 672
    Top = 205
    object qryFeedBackListB5hcpriorityId: TIntegerField
      DisplayLabel = #1575#1608#1604#1608#1740#1578
      FieldName = 'B5hcpriorityId'
      OnGetText = qryFeedBackListB5hcpriorityIdGetText
    end
    object qryFeedBackListB5hcstatusId: TIntegerField
      FieldName = 'B5hcstatusId'
    end
    object qryFeedBackListB5idrefId11: TIntegerField
      DisplayLabel = #1662#1585#1608#1688#1607
      FieldName = 'B5idrefId11'
    end
    object qryFeedBackListB5idrefId3: TIntegerField
      FieldName = 'B5idrefId3'
    end
    object qryFeedBackListB5idrefId8: TIntegerField
      DisplayLabel = #1605#1581#1589#1608#1604
      FieldName = 'B5idrefId8'
    end
    object qryFeedBackListComments: TWideStringField
      DisplayLabel = #1578#1608#1590#1740#1581#1575#1578
      FieldName = 'Comments'
      Size = 1000
    end
    object qryFeedBackListId: TIntegerField
      DisplayLabel = #1705#1583
      FieldName = 'Id'
    end
    object qryFeedBackListNo: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'No'
    end
    object qryFeedBackListOrg: TWideStringField
      DisplayLabel = #1587#1575#1586#1605#1575#1606
      FieldName = 'Org'
      Size = 1000
    end
    object qryFeedBackListStatus: TWideStringField
      DisplayLabel = #1608#1590#1593#1740#1578
      FieldName = 'Status'
      Size = 1000
    end
    object qryFeedBackListSubject: TWideStringField
      DisplayLabel = #1605#1608#1590#1608#1593
      FieldName = 'Subject'
      Size = 1000
    end
    object qryFeedBackListT5sctypeId: TIntegerField
      DisplayLabel = #1606#1608#1593' '#1578#1587#1705
      FieldName = 'T5sctypeId'
    end
    object qryFeedBackListTaskdate: TWideStringField
      DisplayLabel = #1578#1575#1585#1740#1582
      FieldName = 'Taskdate'
      Size = 1000
    end
    object qryFeedBackListTitle: TWideStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'Title'
      Size = 1000
    end
  end
  object srcFeedBackList: TDataSource
    DataSet = qryFeedBackList
    Left = 568
    Top = 325
  end
end
