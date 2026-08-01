inherited checkReportF: TcheckReportF
  Left = 232
  Top = 190
  Caption = 'checkReportF'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    object BitBtn1: TBitBtn
      Left = 608
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akTop, akRight]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 1
    end
    object BitBtn5: TBitBtn
      Left = 528
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662
      TabOrder = 2
    end
  end
  inherited Panel2: TPanel
    object Label1: TLabel
      Left = 612
      Top = 28
      Width = 46
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1593#1606#1608#1575#1606' '#1601#1585#1605
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LblDate: TLabel
      Left = 604
      Top = 12
      Width = 46
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1593#1606#1608#1575#1606' '#1601#1585#1605
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 188
      Top = 28
      Width = 46
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1593#1606#1608#1575#1606' '#1601#1585#1605
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 188
      Top = 8
      Width = 46
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1593#1606#1608#1575#1606' '#1601#1585#1605
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  inherited Panel3: TPanel
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 784
      Height = 430
      Align = alClient
      Color = clCream
      DataSource = srcCash_Check
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CustomerID1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FormID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FormNumber'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FormDate'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Formtype'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FormCaption'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FomNote'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CheckNumber'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CheckDate'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AccountNumber'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BankName'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bed'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bes'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kind'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustForShowForm'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BudgetCode'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Customer1DocType'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Balance'
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    Left = 400
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actSendtoExel: TAction
      Caption = 'actSendtoExel'
    end
  end
  inherited ImageList1: TImageList
    Left = 344
    Top = 1
  end
  object qryCash_Check: TADOQuery
    Connection = dm_CofferF.adcCoffer
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'datefrom'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'dateto'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '9999/99/99'
      end
      item
        Name = 'customdoc1from'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end
      item
        Name = 'customdoc1to'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 999999
      end
      item
        Name = 'formtypefrom'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end
      item
        Name = 'formtypeto'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 999999
      end
      item
        Name = 'customid1from'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'customid1to'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 999999
      end
      item
        Name = 'CustForShowFormfrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'CustForShowFormto'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 999999
      end
      item
        Name = 'BudgetCodefrom'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'BudgetCodeto'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 999999
      end>
    SQL.Strings = (
      'SELECT     *, bed + bes AS Balance'
      
        'FROM         (SELECT     dbo.Forms.CustomerID1, dbo.Forms.FormID' +
        ', dbo.Forms.FormNumber, dbo.Forms.FormDate, dbo.FormTypes.Formty' +
        'pe, '
      
        '                                              dbo.FormTypes.Form' +
        'Caption, dbo.Forms.FomNote, 0 AS CheckNumber, '#39#39' AS CheckDate, '#39 +
        #39' AS AccountNumber, '#39#39' AS BankName, 0 AS bed, '
      
        '                                              dbo.Forms.Amount A' +
        'S bes, 1 AS kind, dbo.Forms.CustomerID1 AS CustForShowForm, Form' +
        's.BudgetCode, '
      
        '                                              dbo.FormTypes.Cust' +
        'omer1DocType'
      '                        FROM         dbo.Forms INNER JOIN'
      
        '                                              dbo.FormTypes ON d' +
        'bo.Forms.FormType = dbo.FormTypes.FormType'
      
        '                        WHERE     (dbo.FormTypes.BedBes = 1) AND' +
        ' (dbo.FormTypes.DisplayFormType = 0)'
      '                        UNION ALL'
      
        '                        SELECT     dbo.Forms.CustomerID1, dbo.Fo' +
        'rms.FormID, dbo.Forms.FormNumber, dbo.Forms.FormDate, dbo.FormTy' +
        'pes.Formtype, '
      
        '                                              dbo.FormTypes.Form' +
        'Caption, dbo.Forms.FomNote, 0 AS CheckNumber, '#39#39' AS CheckDate, '#39 +
        #39' AS AccountNumber, '#39#39' AS BankName, '
      
        '                                              dbo.Forms.Amount A' +
        'S bed, 0 AS bes, 1 AS kind, dbo.Forms.CustomerID1 AS CustForShow' +
        'Form, Forms.BudgetCode, '
      
        '                                              dbo.FormTypes.Cust' +
        'omer1DocType'
      '                        FROM         dbo.Forms INNER JOIN'
      
        '                                              dbo.FormTypes ON d' +
        'bo.Forms.FormType = dbo.FormTypes.FormType'
      
        '                        WHERE     (dbo.FormTypes.BedBes = 0) AND' +
        ' (dbo.FormTypes.DisplayFormType = 0)'
      '                        UNION ALL'
      
        '                        SELECT     dbo.Forms.CustomerID2, dbo.Fo' +
        'rms.FormID, dbo.Forms.FormNumber, dbo.Forms.FormDate, dbo.FormTy' +
        'pes.Formtype, '
      
        '                                              dbo.FormTypes.Form' +
        'Caption, dbo.Forms.FomNote, 0 AS CheckNumber, '#39#39' AS CheckDate, '#39 +
        #39' AS AccountNumber, '#39#39' AS BankName, '
      
        '                                              dbo.Forms.Amount A' +
        'S bed, 0 AS bes, 1 AS kind, dbo.Forms.CustomerID1 AS CustForShow' +
        'Form, Forms.BudgetCode, '
      
        '                                              dbo.FormTypes.Cust' +
        'omer2DocType'
      '                        FROM         dbo.Forms INNER JOIN'
      
        '                                              dbo.FormTypes ON d' +
        'bo.Forms.FormType = dbo.FormTypes.FormType'
      
        '                        WHERE     (dbo.FormTypes.BedBes = 0) AND' +
        ' (dbo.FormTypes.DisplayFormType = 0)'
      '                        UNION ALL'
      
        '                        SELECT     dbo.Forms.CustomerID2, dbo.Fo' +
        'rms.FormID, dbo.Forms.FormNumber, dbo.Forms.FormDate, dbo.FormTy' +
        'pes.Formtype, '
      
        '                                              dbo.FormTypes.Form' +
        'Caption, dbo.Forms.FomNote, 0 AS CheckNumber, '#39#39' AS CheckDate, '#39 +
        #39' AS AccountNumber, '#39#39' AS BankName, 0 AS bed, '
      
        '                                              dbo.Forms.Amount A' +
        'S bes, 1 AS kind, dbo.Forms.CustomerID1 AS CustForShowForm, Form' +
        's.BudgetCode, '
      
        '                                              dbo.FormTypes.Cust' +
        'omer2DocType'
      '                        FROM         dbo.Forms INNER JOIN'
      
        '                                              dbo.FormTypes ON d' +
        'bo.Forms.FormType = dbo.FormTypes.FormType'
      
        '                        WHERE     (dbo.FormTypes.BedBes = 1) AND' +
        ' (dbo.FormTypes.DisplayFormType = 0)'
      '                        UNION ALL'
      
        '                        SELECT     dbo.Forms.CustomerID1, dbo.Fo' +
        'rms.FormID, dbo.Forms.FormNumber, dbo.Forms.FormDate, dbo.FormTy' +
        'pes.Formtype, '
      
        '                                              dbo.FormTypes.Form' +
        'Caption, dbo.FormItems.ItemNote, dbo.FormItems.CheckNumber, dbo.' +
        'FormItems.CheckDate, '
      
        '                                              dbo.FormItems.Acco' +
        'untNumber, dbo.FormItems.BankName, 0 AS bed, dbo.FormItems.ItemA' +
        'mount AS bes, 2 AS kind, '
      
        '                                              dbo.Forms.Customer' +
        'ID1 AS CustForShowForm, FormItems.BudgetCode, dbo.FormTypes.Cust' +
        'omer1DocType'
      '                        FROM         dbo.Forms INNER JOIN'
      
        '                                              dbo.FormTypes ON d' +
        'bo.Forms.FormType = dbo.FormTypes.FormType INNER JOIN'
      
        '                                              dbo.FormItems ON d' +
        'bo.Forms.FormID = dbo.FormItems.FormID'
      '                        WHERE     (dbo.FormTypes.BedBes = 1)'
      '                        UNION ALL'
      
        '                        SELECT     dbo.Forms.CustomerID1, dbo.Fo' +
        'rms.FormID, dbo.Forms.FormNumber, dbo.Forms.FormDate, dbo.FormTy' +
        'pes.Formtype, '
      
        '                                              dbo.FormTypes.Form' +
        'Caption, dbo.FormItems.ItemNote, dbo.FormItems.CheckNumber, dbo.' +
        'FormItems.CheckDate, '
      
        '                                              dbo.FormItems.Acco' +
        'untNumber, dbo.FormItems.BankName, dbo.FormItems.ItemAmount AS b' +
        'ed, 0 AS bes, 2 AS kind, '
      
        '                                              dbo.Forms.Customer' +
        'ID1 AS CustForShowForm, FormItems.BudgetCode, dbo.FormTypes.Cust' +
        'omer1DocType'
      '                        FROM         dbo.Forms INNER JOIN'
      
        '                                              dbo.FormTypes ON d' +
        'bo.Forms.FormType = dbo.FormTypes.FormType INNER JOIN'
      
        '                                              dbo.FormItems ON d' +
        'bo.Forms.FormID = dbo.FormItems.FormID'
      '                        WHERE     (dbo.FormTypes.BedBes = 0)'
      '                        UNION ALL'
      
        '                        SELECT     dbo.FormItems.CustomerID2, db' +
        'o.Forms.FormID, dbo.Forms.FormNumber, dbo.Forms.FormDate, dbo.Fo' +
        'rmTypes.Formtype, '
      
        '                                              dbo.FormTypes.Form' +
        'Caption, dbo.FormItems.ItemNote, dbo.FormItems.CheckNumber, dbo.' +
        'FormItems.CheckDate, '
      
        '                                              dbo.FormItems.Acco' +
        'untNumber, dbo.FormItems.BankName, dbo.FormItems.ItemAmount AS b' +
        'ed, 0 AS bes, 2 AS kind, '
      
        '                                              dbo.Forms.Customer' +
        'ID1 AS CustForShowForm, FormItems.BudgetCode, dbo.FormTypes.Cust' +
        'omer2DocType'
      '                        FROM         dbo.Forms INNER JOIN'
      
        '                                              dbo.FormTypes ON d' +
        'bo.Forms.FormType = dbo.FormTypes.FormType INNER JOIN'
      
        '                                              dbo.FormItems ON d' +
        'bo.Forms.FormID = dbo.FormItems.FormID'
      '                        WHERE     (dbo.FormTypes.BedBes = 1)'
      '                        UNION ALL'
      
        '                        SELECT     dbo.Forms.CustomerID2, dbo.Fo' +
        'rms.FormID, dbo.Forms.FormNumber, dbo.Forms.FormDate, dbo.FormTy' +
        'pes.Formtype, '
      
        '                                              dbo.FormTypes.Form' +
        'Caption, dbo.FormItems.ItemNote, dbo.FormItems.CheckNumber, dbo.' +
        'FormItems.CheckDate, '
      
        '                                              dbo.FormItems.Acco' +
        'untNumber, dbo.FormItems.BankName, 0 AS bed, dbo.FormItems.ItemA' +
        'mount AS bes, 2 AS kind, '
      
        '                                              dbo.Forms.Customer' +
        'ID1 AS CustForShowForm, FormItems.BudgetCode, dbo.FormTypes.Cust' +
        'omer2DocType'
      '                        FROM         dbo.Forms INNER JOIN'
      
        '                                              dbo.FormTypes ON d' +
        'bo.Forms.FormType = dbo.FormTypes.FormType INNER JOIN'
      
        '                                              dbo.FormItems ON d' +
        'bo.Forms.FormID = dbo.FormItems.FormID'
      
        '                        WHERE     (dbo.FormTypes.BedBes = 0)) ca' +
        'shtransactionCust'
      
        'WHERE     (FormDate BETWEEN :datefrom AND :dateto) AND (Customer' +
        '1DocType BETWEEN :customdoc1from AND :customdoc1to) AND (Formtyp' +
        'e BETWEEN :formtypefrom AND :formtypeto) AND'
      
        '                      (CustomerID1 BETWEEN :customid1from AND :c' +
        'ustomid1to) AND (CustForShowForm BETWEEN :CustForShowFormfrom AN' +
        'D :CustForShowFormto) AND (BudgetCode BETWEEN :BudgetCodefrom AN' +
        'D :BudgetCodeto)')
    Left = 88
    Top = 85
    object qryCash_CheckFormID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605' '
      FieldName = 'FormID'
    end
    object qryCash_CheckFormDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1585#1605
      FieldName = 'FormDate'
      FixedChar = True
      Size = 10
    end
    object qryCash_CheckFormCaption: TStringField
      FieldName = 'FormCaption'
      Size = 50
    end
    object qryCash_CheckFomNote: TStringField
      FieldName = 'FomNote'
      Size = 255
    end
    object qryCash_CheckCheckNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1670#1603
      FieldName = 'CheckNumber'
    end
    object qryCash_CheckCheckDate: TStringField
      DisplayLabel = #1587#1585#1585#1587#1610#1583' '#1670#1603
      FieldName = 'CheckDate'
      FixedChar = True
      Size = 10
    end
    object qryCash_CheckAccountNumber: TStringField
      DisplayLabel = #1605#1588#1582#1589#1575#1578' '#1581#1587#1575#1576
      FieldName = 'AccountNumber'
      FixedChar = True
      Size = 25
    end
    object qryCash_CheckBankName: TStringField
      DisplayLabel = #1606#1575#1605' '#1576#1575#1606#1603
      FieldName = 'BankName'
    end
    object qryCash_Checkbed: TBCDField
      DisplayLabel = #1576#1583#1607#1603#1575#1585
      FieldName = 'bed'
      Precision = 19
    end
    object qryCash_Checkbes: TBCDField
      DisplayLabel = #1576#1587#1578#1575#1606#1603#1575#1585
      FieldName = 'bes'
      Precision = 19
    end
    object qryCash_Checkkind: TIntegerField
      FieldName = 'kind'
    end
    object qryCash_CheckCustForShowForm: TIntegerField
      FieldName = 'CustForShowForm'
    end
    object qryCash_CheckBudgetCode: TIntegerField
      DisplayLabel = #1603#1583' '#1576#1608#1583#1580#1607
      FieldName = 'BudgetCode'
    end
    object qryCash_CheckCustomer1DocType: TWordField
      FieldName = 'Customer1DocType'
    end
    object qryCash_Check_CustDocTName: TStringField
      FieldKind = fkLookup
      FieldName = '_CustName2'
      LookupDataSet = qryCustomers
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustForShowForm'
      Size = 100
      Lookup = True
    end
    object qryCash_CheckBalance: TBCDField
      FieldName = 'Balance'
      ReadOnly = True
      Precision = 19
    end
    object qryCash_CheckCustomerID1: TIntegerField
      FieldName = 'CustomerID1'
    end
    object qryCash_Check_CustName: TStringField
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610
      FieldKind = fkLookup
      FieldName = '_CustName'
      LookupDataSet = qryCustomers
      LookupKeyFields = 'CustID'
      LookupResultField = 'CustName'
      KeyFields = 'CustomerID1'
      Size = 120
      Lookup = True
    end
    object qryCash_CheckFormNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1585#1605
      FieldName = 'FormNumber'
    end
    object qryCash_CheckFormtype: TWordField
      FieldName = 'Formtype'
    end
  end
  object srcCash_Check: TDataSource
    DataSet = qryCash_Check
    Left = 88
    Top = 141
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    Left = 352
    Top = 184
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 44450
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6350
        mmLeft = 107686
        mmTop = 0
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583'"'#1607#1585' '#1601#1585#1605'"'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8424
        mmLeft = 114036
        mmTop = 6350
        mmWidth = 40217
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 0
        mmTop = 19315
        mmWidth = 266701
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = #1603#1583' '#1608#1606#1575#1605' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8467
        mmLeft = 221986
        mmTop = 10848
        mmWidth = 39688
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = #1605#1581#1583#1608#1583#1607' '#1578#1575#1585#1610#1582#1610' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 238125
        mmTop = 19844
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = #1605#1581#1583#1608#1583#1607' '#1603#1583' '#1605#1588#1578#1585#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 235215
        mmTop = 26988
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = #1605#1581#1583#1608#1583#1607' '#1603#1583' '#1576#1608#1583#1580#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 79640
        mmTop = 23813
        mmWidth = 25135
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        ParentWidth = True
        mmHeight = 7673
        mmLeft = 0
        mmTop = 36777
        mmWidth = 266701
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 249503
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 230717
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 207698
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 187061
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 157163
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 127529
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 108744
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 55298
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 36248
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 250296
        mmTop = 37306
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = #1578#1575#1585#1610#1582' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 231246
        mmTop = 37306
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = #1588#1605#1575#1585#1607' '#1670#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 208227
        mmTop = 37306
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = #1587#1585#1585#1587#1610#1583' '#1670#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 187855
        mmTop = 37306
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = #1606#1575#1605' '#1576#1575#1606#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 157692
        mmTop = 37306
        mmWidth = 29104
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label11'
        Caption = #1605#1588#1582#1589#1575#1578' '#1581#1587#1575#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 128323
        mmTop = 37306
        mmWidth = 28310
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label102'
        Caption = #1603#1583' '#1605#1588#1578#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 109273
        mmTop = 37306
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = #1606#1575#1605' '#1605#1588#1578#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 55827
        mmTop = 37306
        mmWidth = 52388
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = #1603#1583' '#1576#1608#1583#1580#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 37042
        mmTop = 37306
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label12'
        Caption = #1605#1576#1604#1594'_'#1585#1610#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 529
        mmTop = 37306
        mmWidth = 35190
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppLine11: TppLine
        UserName = 'Line11'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 262467
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 249502
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 230716
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 207699
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 36248
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 127529
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 157163
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 187061
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 108745
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 55298
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'FormNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 250296
        mmTop = 265
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'FormDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 231246
        mmTop = 265
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'CheckNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 208227
        mmTop = 265
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CheckDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 187855
        mmTop = 265
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'BankName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6096
        mmLeft = 157692
        mmTop = 265
        mmWidth = 29104
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = '_CustName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6477
        mmLeft = 56092
        mmTop = 265
        mmWidth = 52388
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CustomerID1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 109273
        mmTop = 265
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'AccountNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 128323
        mmTop = 265
        mmWidth = 28310
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'Balance'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 529
        mmTop = 265
        mmWidth = 35190
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'BudgetCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 36777
        mmTop = 265
        mmWidth = 17992
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'CustForShowForm'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7144
        mmPrintPosition = 0
        object ppShape2: TppShape
          UserName = 'Shape2'
          ParentWidth = True
          mmHeight = 7144
          mmLeft = 0
          mmTop = 0
          mmWidth = 266701
          BandType = 5
          GroupNo = 0
        end
        object ppLabel17: TppLabel
          UserName = 'Label13'
          Caption = #1580#1605#1593' '#1603#1604' :'#8207
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 11
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 6350
          mmLeft = 249767
          mmTop = 529
          mmWidth = 12192
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcCash_Check
    UserName = 'DBPipeline1'
    Left = 392
    Top = 248
  end
  object qryCustomers: TADOQuery
    Active = True
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     CustID, CustName'
      'FROM         Customers')
    Left = 328
    Top = 93
    object qryCustomersCustID: TIntegerField
      FieldName = 'CustID'
    end
    object qryCustomersCustName: TStringField
      FieldName = 'CustName'
      Size = 120
    end
  end
  object ppReport2: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    Left = 200
    Top = 176
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 44450
      mmPrintPosition = 0
      object ppLabel18: TppLabel
        UserName = 'Label1'
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6350
        mmLeft = 107686
        mmTop = 0
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label2'
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583'"'#1607#1585' '#1601#1585#1605'"'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8424
        mmLeft = 114036
        mmTop = 6350
        mmWidth = 40217
        BandType = 0
      end
      object ppLine22: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 0
        mmTop = 19315
        mmWidth = 266701
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label3'
        Caption = #1603#1583' '#1576#1608#1583#1580#1607' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8467
        mmLeft = 242359
        mmTop = 9790
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label4'
        Caption = #1605#1581#1583#1608#1583#1607' '#1578#1575#1585#1610#1582#1610' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 238125
        mmTop = 19844
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label5'
        Caption = #1605#1581#1583#1608#1583#1607' '#1603#1583' '#1605#1588#1578#1585#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 235215
        mmTop = 26988
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label7'
        Caption = #1605#1581#1583#1608#1583#1607' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 75936
        mmTop = 23019
        mmWidth = 30692
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape1'
        ParentWidth = True
        mmHeight = 7673
        mmLeft = 0
        mmTop = 36777
        mmWidth = 266701
        BandType = 0
      end
      object ppLine23: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 249503
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine24: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 230717
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine25: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 207698
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine26: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 187061
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine27: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 157163
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine28: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 127529
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine29: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 108744
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine30: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 57679
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine31: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 35983
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label6'
        Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 250296
        mmTop = 37306
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label8'
        Caption = #1578#1575#1585#1610#1582' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 231246
        mmTop = 37306
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label9'
        Caption = #1588#1605#1575#1585#1607' '#1670#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 208227
        mmTop = 37306
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label10'
        Caption = #1587#1585#1585#1587#1610#1583' '#1670#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 187855
        mmTop = 37306
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label101'
        Caption = #1606#1575#1605' '#1576#1575#1606#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 157692
        mmTop = 37306
        mmWidth = 29104
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label11'
        Caption = #1605#1588#1582#1589#1575#1578' '#1581#1587#1575#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 128323
        mmTop = 37306
        mmWidth = 28310
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label102'
        Caption = #1603#1583' '#1605#1588#1578#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 109273
        mmTop = 37306
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = #1606#1575#1605' '#1605#1588#1578#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 58208
        mmTop = 37306
        mmWidth = 50271
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label15'
        Caption = #1603#1583' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 36513
        mmTop = 37306
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label12'
        Caption = #1605#1576#1604#1594'_'#1585#1610#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 529
        mmTop = 37306
        mmWidth = 35190
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppLine32: TppLine
        UserName = 'Line11'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 262467
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppLine33: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 249502
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine34: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 230716
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine35: TppLine
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 207699
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine36: TppLine
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 35983
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine37: TppLine
        UserName = 'Line16'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 127529
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine38: TppLine
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 157163
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine39: TppLine
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 187061
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine40: TppLine
        UserName = 'Line19'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 108745
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine41: TppLine
        UserName = 'Line20'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 57679
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine42: TppLine
        UserName = 'Line21'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText1'
        DataField = 'FormNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 250296
        mmTop = 265
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText2'
        DataField = 'FormDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 231246
        mmTop = 265
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText3'
        DataField = 'CheckNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 208227
        mmTop = 265
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText4'
        DataField = 'CheckDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 187855
        mmTop = 265
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText5'
        DataField = 'BankName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6096
        mmLeft = 157692
        mmTop = 265
        mmWidth = 29104
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText6'
        DataField = '_CustName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 58208
        mmTop = 265
        mmWidth = 50271
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText7'
        DataField = 'CustomerID1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 109273
        mmTop = 265
        mmWidth = 17992
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText8'
        DataField = 'AccountNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 128323
        mmTop = 265
        mmWidth = 28310
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText9'
        DataField = 'Balance'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6435
        mmLeft = 529
        mmTop = 265
        mmWidth = 35190
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText10'
        DataField = 'Customer1DocType'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Badr'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 36513
        mmTop = 265
        mmWidth = 20902
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
    end
    object ppGroup2: TppGroup
      BreakName = 'CustForShowForm'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7144
        mmPrintPosition = 0
        object ppShape4: TppShape
          UserName = 'Shape2'
          ParentWidth = True
          mmHeight = 7144
          mmLeft = 0
          mmTop = 0
          mmWidth = 266701
          BandType = 5
          GroupNo = 0
        end
        object ppLabel34: TppLabel
          UserName = 'Label13'
          Caption = #1580#1605#1593' '#1603#1604' :'#8207
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 11
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 6350
          mmLeft = 249767
          mmTop = 529
          mmWidth = 12192
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ppReport3: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    Left = 288
    Top = 184
    Version = '7.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 44450
      mmPrintPosition = 0
      object ppLabel35: TppLabel
        UserName = 'Label1'
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6350
        mmLeft = 107686
        mmTop = 0
        mmWidth = 51065
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label2'
        Caption = #1711#1586#1575#1585#1588' '#1593#1605#1604#1603#1585#1583'"'#1607#1585' '#1601#1585#1605'"'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8424
        mmLeft = 114036
        mmTop = 6350
        mmWidth = 40217
        BandType = 0
      end
      object ppLine43: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 0
        mmTop = 19315
        mmWidth = 266701
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label3'
        Caption = #1603#1583' '#1608#1606#1575#1605' '#1605#1588#1578#1585#1610' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 8467
        mmLeft = 232040
        mmTop = 10583
        mmWidth = 29369
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label4'
        Caption = #1605#1581#1583#1608#1583#1607' '#1578#1575#1585#1610#1582#1610' :'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 238125
        mmTop = 19844
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label5'
        Caption = #1605#1581#1583#1608#1583#1607' '#1603#1583' '#1605#1588#1578#1585#1610':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 235215
        mmTop = 26988
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label7'
        Caption = #1605#1581#1583#1608#1583#1607' '#1603#1583' '#1576#1608#1583#1580#1607':'#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6615
        mmLeft = 82021
        mmTop = 23813
        mmWidth = 25135
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape1'
        ParentWidth = True
        mmHeight = 7673
        mmLeft = 0
        mmTop = 36777
        mmWidth = 266701
        BandType = 0
      end
      object ppLine44: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 249503
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine45: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 230717
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine46: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 207698
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine47: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 187061
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine48: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 157163
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine49: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 127529
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine50: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 105569
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine51: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 55298
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLine52: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 36248
        mmTop = 36777
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label6'
        Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 250296
        mmTop = 37306
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label8'
        Caption = #1578#1575#1585#1610#1582' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 231246
        mmTop = 37306
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label9'
        Caption = #1588#1605#1575#1585#1607' '#1670#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 208227
        mmTop = 37306
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label10'
        Caption = #1587#1585#1585#1587#1610#1583' '#1670#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 187855
        mmTop = 37306
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label101'
        Caption = #1606#1575#1605' '#1576#1575#1606#1603
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 157692
        mmTop = 37306
        mmWidth = 29104
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label11'
        Caption = #1605#1588#1582#1589#1575#1578' '#1581#1587#1575#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 128323
        mmTop = 37306
        mmWidth = 28310
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label102'
        Caption = #1603#1583' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 106363
        mmTop = 37306
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = #1606#1575#1605' '#1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 55827
        mmTop = 37306
        mmWidth = 49213
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label15'
        Caption = #1603#1583' '#1576#1608#1583#1580#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 37042
        mmTop = 37306
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label12'
        Caption = #1605#1576#1604#1594'_'#1585#1610#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 529
        mmTop = 37306
        mmWidth = 35190
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label16'
        Caption = 'Label16'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 8202
        mmLeft = 214313
        mmTop = 10848
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label17'
        Caption = 'Label17'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 6435
        mmLeft = 225161
        mmTop = 20108
        mmWidth = 12107
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        Caption = 'Label54'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 6435
        mmLeft = 222250
        mmTop = 27252
        mmWidth = 12107
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        Caption = 'Label55'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 6435
        mmLeft = 69586
        mmTop = 23813
        mmWidth = 12107
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppLine53: TppLine
        UserName = 'Line11'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 262467
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppLine54: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 249502
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine55: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 230716
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine56: TppLine
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 207699
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine57: TppLine
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 36248
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine58: TppLine
        UserName = 'Line16'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 127529
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine59: TppLine
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 157163
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine60: TppLine
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 187061
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine61: TppLine
        UserName = 'Line19'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 105569
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine62: TppLine
        UserName = 'Line20'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 55298
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppLine63: TppLine
        UserName = 'Line21'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText1'
        DataField = 'FormNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7112
        mmLeft = 250296
        mmTop = 265
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText2'
        DataField = 'FormDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7112
        mmLeft = 231246
        mmTop = 265
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText3'
        DataField = 'CheckNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7112
        mmLeft = 208227
        mmTop = 265
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText4'
        DataField = 'CheckDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7112
        mmLeft = 187855
        mmTop = 265
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText5'
        DataField = 'BankName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6096
        mmLeft = 157692
        mmTop = 265
        mmWidth = 29104
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText6'
        DataField = '_CustName2'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 56092
        mmTop = 265
        mmWidth = 49213
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText7'
        DataField = 'CustForShowForm'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7112
        mmLeft = 106363
        mmTop = 265
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText8'
        DataField = 'AccountNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7112
        mmLeft = 128323
        mmTop = 265
        mmWidth = 28310
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText9'
        DataField = 'Balance'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7112
        mmLeft = 529
        mmTop = 265
        mmWidth = 35190
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText10'
        DataField = 'BudgetCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7112
        mmLeft = 36777
        mmTop = 265
        mmWidth = 17992
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
    end
    object ppGroup3: TppGroup
      BreakName = 'CustForShowForm'
      DataPipeline = ppDBPipeline1
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline1'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7144
        mmPrintPosition = 0
        object ppShape6: TppShape
          UserName = 'Shape2'
          ParentWidth = True
          mmHeight = 7144
          mmLeft = 0
          mmTop = 0
          mmWidth = 266701
          BandType = 5
          GroupNo = 0
        end
        object ppLabel51: TppLabel
          UserName = 'Label13'
          Caption = #1580#1605#1593' '#1603#1604' :'#8207
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Name = 'Yagut'
          Font.Size = 11
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 6350
          mmLeft = 249767
          mmTop = 529
          mmWidth = 12192
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 272
  end
  object DataSource1: TDataSource
    Left = 208
    Top = 16
  end
end
