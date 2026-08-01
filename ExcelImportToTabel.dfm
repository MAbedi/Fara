inherited ExcelImportToTabelF: TExcelImportToTabelF
  Left = 193
  Top = 71
  ActiveControl = edtPath
  Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1580#1583#1608#1604
  ClientHeight = 517
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    object BitBtn2: TBitBtn
      Left = 616
      Top = 8
      Width = 75
      Height = 25
      Action = actPost
      Anchors = [akTop, akRight]
      Caption = #1579#1576#1578
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      Left = 696
      Top = 8
      Width = 75
      Height = 25
      Action = actRead
      Anchors = [akTop, akRight]
      Caption = #1582#1608#1575#1606#1583#1606
      TabOrder = 2
    end
  end
  inherited Panel2: TPanel
    inherited ImgTemplate: TImage
      Left = 765
    end
    inherited lblBaseDate: TLabel
      Left = 343
    end
    object Label5: TLabel
      Left = 135
      Top = 29
      Width = 52
      Height = 13
      Alignment = taRightJustify
      Caption = #1575#1606#1578#1582#1575#1576' '#1711#1585#1608#1607
    end
    object cmbGroup: TComboBox
      Left = 8
      Top = 25
      Width = 121
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      Items.Strings = (
        #1711#1585#1608#1607'1'
        #1711#1585#1608#1607'2'
        #1711#1585#1608#1607'3'
        #1711#1585#1608#1607'4')
    end
  end
  inherited Panel3: TPanel
    Height = 423
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 786
      Height = 59
      Align = alTop
      TabOrder = 0
      DesignSize = (
        778
        59)
      object Label1: TLabel
        Left = 696
        Top = 8
        Width = 63
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605' '#1601#1575#1610#1604' Excel'
        ExplicitLeft = 704
      end
      object spdOpenFile: TSpeedButton
        Left = 471
        Top = 3
        Width = 23
        Height = 22
        Action = actOpenExcel
        Anchors = [akTop, akRight]
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0029AD
          D60031B5DE0021ADD600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0029AD
          D6009CDEEF0084EFFF004AC6E70021ADD60018A5C60018A5C60018A5C600FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0029AD
          D60052BDE7009CFFFF0094FFFF0073DEF70073DEF70073DEF70073DEF7004AC6
          E70021ADD60018A5C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0029AD
          D60052BDE700ADFFFF008CF7FF008CEFFF008CEFFF008CEFFF0073DEF70073DE
          F70073DEF7004AC6EF0021ADD600FF00FF00FF00FF00FF00FF00FF00FF0029AD
          D60029ADD600ADDEEF0094F7FF0094F7FF008CEFFF008CEFFF008CEFFF008CEF
          FF0073DEF70073DEF7004AC6EF00FF00FF00FF00FF00FF00FF00FF00FF0029AD
          D60073DEF70029ADD6009CFFFF008CF7FF008CF7FF008CF7FF008CEFFF008CEF
          FF008CEFFF0073DEF70073DEF70018A5C600FF00FF00FF00FF00FF00FF0029AD
          D60094F7FF0029ADD600ADDEEF00A5EFF700A5EFF700A5F7FF008CEFFF008CEF
          FF008CEFFF0073DEF7000073080018A5C600FF00FF00FF00FF00FF00FF0029AD
          D6009CFFFF0073DEF70029ADD60018A5C60018A5C60018A5C600ADDEEF008CF7
          FF0084EFFF00007308005AE78C000073080018A5C600FF00FF00FF00FF0029AD
          D6009CFFFF0094F7FF0073DEF70073DEF70073DEF7006BDEF70029ADD600ADDE
          EF000073080052D67B0042D66B0031C64A0000730800FF00FF00FF00FF0029AD
          D6009CFFFF0094F7FF0094F7FF0094F7FF0094F7FF0073DEF70073DEF70029AD
          D60018A5C600108C210031C64A00109C210018A5C600FF00FF00FF00FF0029AD
          D600C6FFFF0094FFFF009CFFFF00D6FFFF00D6FFFF008CEFFF0094EFFF0073DE
          F70073DEF7000884100018AD290008841000FF00FF00FF00FF00FF00FF0021AD
          D6009CDEEF00C6FFFF00C6FFFF009CDEEF0018ADD60018A5C60018A5C60018A5
          C60018A5C600088C100008A51800FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0031B5DE0029ADD60018A5C60018A5C600FF00FF00FF00FF00FF00FF00FF00
          FF00088C100008A5180008841000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000730800087B0800088C
          1000088C1000087B0800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ExplicitLeft = 479
      end
      object Label2: TLabel
        Left = 162
        Top = 8
        Width = 21
        Height = 13
        Caption = #1578#1575#1585#1610#1582
      end
      object Label3: TLabel
        Left = 162
        Top = 32
        Width = 60
        Height = 13
        Caption = #1603#1583' '#1605#1588#1578#1585#1610' 1'
      end
      object spdSearch: TSpeedButton
        Left = 56
        Top = 27
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = spdSearchClick
      end
      object edtPath: TEdit
        Left = 496
        Top = 4
        Width = 194
        Height = 21
        Anchors = [akTop, akRight]
        ReadOnly = True
        TabOrder = 0
        OnKeyPress = edtPathKeyPress
        ExplicitLeft = 504
      end
      object pnlSheet: TPanel
        Left = 492
        Top = 27
        Width = 265
        Height = 29
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 500
        object Label4: TLabel
          Left = 204
          Top = 8
          Width = 43
          Height = 13
          Caption = #1606#1575#1605' sheet'
        end
        object cmbSheetName: TComboBox
          Left = 3
          Top = 4
          Width = 196
          Height = 21
          Style = csDropDownList
          TabOrder = 0
        end
      end
      object mskDate: TMaskEdit
        Left = 80
        Top = 6
        Width = 76
        Height = 21
        EditMask = '9999/99/99'
        MaxLength = 10
        TabOrder = 2
        Text = '    /  /  '
      end
      object edtCust: TEdit
        Left = 80
        Top = 28
        Width = 76
        Height = 21
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 3
        OnKeyPress = edtCustKeyPress
      end
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 61
      Width = 778
      Height = 360
      Align = alClient
      Color = clCream
      DataSource = srcExcelImport
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = '_ValueCell'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'StoreID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_StuffName'
          Width = 219
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptCaption'
          Width = 129
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    Left = 304
    object actOpenExcel: TAction
      ImageIndex = 3
      OnExecute = actOpenExcelExecute
    end
    object actRead: TAction
      Caption = #1582#1608#1575#1606#1583#1606
      OnExecute = actReadExecute
    end
    object actPost: TAction
      Caption = #1579#1576#1578
      Enabled = False
      OnExecute = actPostExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 376
  end
  object qryExcelImport: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = qryExcelImportAfterOpen
    Parameters = <
      item
        Name = 'Grp'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end>
    SQL.Strings = (
      ''
      
        'SELECT      StuffCoding.c_StuffName as  _ValueCell , StuffCoding' +
        '.c_StuffName,ReciptTypes.ReciptCaption, ExcelImport.CellCode, Ex' +
        'celImport.StoreID, ExcelImport.StuffCode, ExcelImport.ReciptType' +
        ','
      '                      ExcelImport.KindValue, ExcelImport.GroupID'
      'FROM         ExcelImport INNER JOIN'
      
        '                      ReciptTypes ON ExcelImport.ReciptType = Re' +
        'ciptTypes.ReciptType INNER JOIN'
      
        '                      StuffCoding ON ExcelImport.StuffCode = Stu' +
        'ffCoding.c_StuffCode'
      'WHERE     (ExcelImport.GroupID =  :Grp)'
      'ORDER BY ExcelImport.StoreID, ExcelImport.ReciptType'
      ''
      ''
      ''
      ''
      '')
    Left = 168
    Top = 253
    object qryExcelImportCellCode: TStringField
      FieldName = 'CellCode'
      Size = 10
    end
    object qryExcelImportStoreID: TSmallintField
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
    end
    object qryExcelImportStuffCode: TLargeintField
      FieldName = 'StuffCode'
    end
    object qryExcelImportReciptType: TWordField
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'ReciptType'
    end
    object qryExcelImportKindValue: TWordField
      FieldName = 'KindValue'
    end
    object qryExcelImportc_StuffName: TStringField
      DisplayLabel = #1606#1575#1605' '#1603#1575#1604#1575
      FieldName = 'c_StuffName'
      Size = 150
    end
    object qryExcelImportReciptCaption: TStringField
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryExcelImportGroupID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607
      FieldName = 'GroupID'
    end
    object qryExcelImport_ValueCell: TStringField
      FieldName = '_ValueCell'
      Size = 150
    end
  end
  object srcExcelImport: TDataSource
    DataSet = qryExcelImport
    Left = 144
    Top = 317
  end
end
