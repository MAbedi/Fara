inherited SelectYearF: TSelectYearF
  Left = 281
  Top = 261
  ActiveControl = DBGrid1
  BorderStyle = bsToolWindow
  Caption = #1578#1593#1610#1610#1606' '#1587#1575#1604' '#1605#1575#1604#1610
  ClientHeight = 204
  ClientWidth = 381
  ParentFont = False
  Font.Charset = ARABIC_CHARSET
  Font.Name = 'Tahoma'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 163
    Width = 381
    Height = 41
    Align = alBottom
    TabOrder = 0
    object DBText1: TDBText
      Left = 184
      Top = 13
      Width = 185
      Height = 17
      DataField = 'BankName'
      DataSource = srcSections
    end
    object BitBtn1: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = #1575#1606#1578#1582#1575#1576
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1575#1606#1589#1585#1575#1601
      ModalResult = 2
      TabOrder = 1
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 381
    Height = 144
    Align = alClient
    Color = 11468799
    DataSource = srcSections
    Options = [dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = '_toShow'
        Width = 360
        Visible = True
      end>
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 144
    Width = 381
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object qrySections: TADOQuery
    Connection = DMF.adcFaraSystem
    CursorType = ctStatic
    AfterScroll = qrySectionsAfterScroll
    OnCalcFields = qrySectionsCalcFields
    Parameters = <
      item
        Name = 'sysid'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'Select * from Sections'
      'where sysid=:sysid'
      'order by createdate')
    Left = 80
    Top = 40
    object qrySectionsSid: TIntegerField
      FieldName = 'Sid'
    end
    object qrySectionsSysID: TWordField
      FieldName = 'SysID'
    end
    object qrySectionsTitle: TStringField
      FieldName = 'Title'
      Size = 50
    end
    object qrySectionsBankName: TStringField
      FieldName = 'BankName'
      Size = 50
    end
    object qrySectionsCreateDate: TDateTimeField
      FieldName = 'CreateDate'
    end
    object qrySectionsLastBackupDate: TDateTimeField
      FieldName = 'LastBackupDate'
    end
    object qrySectionsLastConnectDate: TDateTimeField
      FieldName = 'LastConnectDate'
    end
    object qrySectionsMaliYear: TWordField
      FieldName = 'MaliYear'
    end
    object qrySectionsCompanyName: TStringField
      FieldName = 'CompanyName'
      Size = 255
    end
    object qrySectionsisCurrent: TBooleanField
      FieldName = 'isCurrent'
    end
    object qrySections_toShow: TStringField
      FieldKind = fkCalculated
      FieldName = '_toShow'
      Size = 100
      Calculated = True
    end
  end
  object srcSections: TDataSource
    DataSet = qrySections
    Left = 64
    Top = 88
  end
end
