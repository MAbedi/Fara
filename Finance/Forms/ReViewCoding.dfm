inherited ReViewCodingF: TReViewCodingF
  Left = 208
  Top = 308
  Caption = #1605#1585#1608#1585' '#1603#1583#1610#1606#1711' '#1583#1585#1582#1600#1578#1740
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    object BitBtn1: TBitBtn
      Left = 688
      Top = 8
      Width = 83
      Height = 25
      Action = actSaveToWord
      Anchors = [akTop, akRight]
      Caption = #1584#1582#1610#1585#1607' '#1583#1585' WORD'
      TabOrder = 1
    end
  end
  inherited Panel2: TPanel
    inherited lblCaption: TLabel
      Height = 16
    end
  end
  inherited Panel3: TPanel
    object trvRelation: TTreeView
      Left = 2
      Top = 2
      Width = 786
      Height = 420
      Align = alClient
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      Color = clCream
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Indent = 19
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      SortType = stText
      TabOrder = 0
      ExplicitWidth = 777
      ExplicitHeight = 434
    end
  end
  inherited ActionList: TActionList
    object actSaveToWord: TAction
      Caption = #1584#1582#1610#1585#1607' '#1583#1585' WORD'
      OnExecute = actSaveToWordExecute
    end
  end
end
