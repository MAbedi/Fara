inherited ViewFileF: TViewFileF
  Left = 377
  Top = 160
  Caption = #1662#1610#1608#1587#1578
  ClientHeight = 256
  ClientWidth = 333
  OldCreateOrder = True
  ExplicitWidth = 339
  ExplicitHeight = 280
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 333
    Height = 49
    ExplicitWidth = 333
    ExplicitHeight = 49
    inherited Image1: TImage
      Left = 279
      ExplicitLeft = 279
    end
    inherited lblTopic0: TLabel
      Left = 228
      Width = 31
      Caption = #1601#1575#1610#1604#1607#1575' '
      ExplicitLeft = 228
      ExplicitWidth = 31
    end
    inherited lblTopic1: TLabel
      Left = 186
      Visible = False
      ExplicitLeft = 186
    end
  end
  inherited pnlDown: TPanel
    Top = 219
    Width = 333
    ExplicitTop = 219
    ExplicitWidth = 333
  end
  object pnlAnnex: TPanel [2]
    Left = 0
    Top = 49
    Width = 333
    Height = 170
    Align = alClient
    TabOrder = 2
    DesignSize = (
      333
      170)
    object ListView1: TListView
      Left = 1
      Top = 1
      Width = 331
      Height = 136
      Align = alTop
      BiDiMode = bdLeftToRight
      Columns = <
        item
          Caption = #1606#1575#1605' '#1601#1575#1610#1604
          MaxWidth = 250
          Width = 200
        end
        item
          Alignment = taCenter
          Caption = #1578#1575#1585#1610#1582' '#1601#1575#1610#1604
          MaxWidth = 200
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
      OnDblClick = ListView1DblClick
    end
    object BitBtn8: TBitBtn
      Left = 68
      Top = 141
      Width = 63
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #1579#1576#1578' '#1578#1594#1610#1610#1585#1575#1578
      TabOrder = 1
      OnClick = BitBtn8Click
    end
    object BitBtn5: TBitBtn
      Left = 3
      Top = 141
      Width = 63
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #1606#1605#1575#1610#1588
      TabOrder = 2
      OnClick = BitBtn5Click
    end
    object btnAdd: TBitBtn
      Left = 262
      Top = 141
      Width = 63
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #1575#1590#1575#1601#1607
      TabOrder = 3
      OnClick = btnAddClick
    end
    object btnDelete: TBitBtn
      Left = 196
      Top = 141
      Width = 63
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #1581#1584#1601
      TabOrder = 4
      OnClick = btnDeleteClick
    end
  end
  inherited ActionList1: TActionList
    Left = 64
    Top = 0
  end
  object OpenDialog1: TOpenDialog
    Options = [ofReadOnly, ofAllowMultiSelect, ofExtensionDifferent, ofPathMustExist, ofFileMustExist, ofNoDereferenceLinks, ofEnableSizing, ofForceShowHidden]
    Title = #1604#1591#1601#1575#1611' '#1601#1575#1610#1604'('#1607#1575#1610') '#1590#1605#1610#1605#1607' '#1585#1575' '#1575#1606#1578#1582#1575#1576' '#1603#1606#1610#1583
    Left = 114
    Top = 80
  end
  object ZipForge1: TZipForge
    ExtractCorruptedFiles = False
    CompressionLevel = clMax
    CompressionMode = 9
    CurrentVersion = '5.05 '
    Password = 'tycedar'
    SpanningMode = smNone
    SpanningOptions.AdvancedNaming = True
    SpanningOptions.VolumeSize = vsAutoDetect
    Options.StorePath = spNoPath
    Options.FlushBuffers = True
    Options.OEMFileNames = True
    InMemory = False
    Zip64Mode = zmAuto
    UnicodeFilenames = False
    EncryptionMethod = caPkzipClassic
    Left = 232
    Top = 97
  end
end
