inherited rptSupportCustMonthsF: TrptSupportCustMonthsF
  Left = 183
  Top = 135
  Caption = #1711#1586#1575#1585#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1585#1575#1585#1583#1575#1583#1607#1575' '#1576#1585' '#1575#1587#1575#1587' '#1605#1588#1578#1585#1610
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 456
    ExplicitTop = 457
    object DBNavigator1: TDBNavigator
      Left = 327
      Top = 8
      Width = 272
      Height = 25
      DataSource = SrcSupport
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Anchors = [akLeft, akTop, akRight]
      Flat = True
      TabOrder = 1
    end
    object BitBtn4: TBitBtn
      Left = 247
      Top = 8
      Width = 75
      Height = 25
      Action = actSendExel
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 2
    end
    object BitBtn6: TBitBtn
      Left = 170
      Top = 8
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00636B
        7300C69C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006394B500218C
        EF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004AB5FF0042A5
        FF00218CEF007B849400CE9C9400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0052BD
        FF005ABDFF00218CEF002173B500CE9C9400FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A5
        FF0052BDFF0042A5FF00218CEF0084849400CE9C9400FF00FF00FF00FF00FF00
        FF00FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FFFFFF0052BDFF005ABDFF003184D60052636B00FF00FF009C6B6B00CEA5
        9C00D6B5A500CE9C9C00C6949400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0031A5FF0052BDFF00C6CEDE009C9C9C00AD8C8400E7D6BD00FFFF
        D600FFFFDE00FFFFD600EFDEC600FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00C6ADAD00CEA59400FFE7BD00FFF7CE00FFFF
        D600FFFFD600FFFFDE00FFFFE700FFFFFF00C6A5A500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00BD8C8C00EFDEB500F7D6AD00FFF7CE00FFFF
        D600FFFFDE00FFFFEF00FFFFF700FFFFFF00F7EFDE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00F7CE9C00FFEFC600FFFF
        D600FFFFDE00FFFFF700FFFFF700FFFFDE00FFFFDE00C6949400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00EFD6B500FFE7B500F7C68C00F7DEB500FFFF
        D600FFFFDE00FFFFEF00FFFFEF00FFFFDE00FFFFDE00BD9C8C00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E7CEAD00FFEFBD00EFBD8400F7C69400FFEF
        C600FFFFD600FFFFD600FFFFD600FFFFD600FFFFDE00C6949400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00D6ADA500FFEFBD00F7DEAD00F7CE9C00F7D6
        A500F7E7BD00FFFFD600FFFFD600FFFFD600FFFFD600FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C8C00FFFFFF00FFFFFF00F7C6
        9400EFBD8400F7C69400F7D6AD00FFEFC600BD9C8C00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFEFE700FFFFEF00FFE7
        B500F7DEAD00FFE7B500FFEFBD00C69C9400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C69C
        8C00CEA59C00C69C9400FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 3
    end
    object BitBtn5: TBitBtn
      Left = 93
      Top = 8
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1576#1607' '#1578#1585#1578#1610#1576
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006A00
        00006A0000006A000000FF00FF006A0000006A0000006A000000FFFFFF00FF00
        FF00FF00FF00FF00FF0000580300FF00FF00FF00FF00FF00FF00FFFFFF006A6A
        6A006A000000FF00FF00FF00FF00FF00FF00980000006A6A6A00FF00FF00FF00
        FF00FF00FF00005803006AFF6A0000580300FF00FF00FF00FF00FF00FF00FF00
        FF006A6A6A006A0000006A0000006A0000006A000000FF00FF00FF00FF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FFFFFF00FF00
        FF00FF00FF006A000000FF00FF00980000006A000000FF00FF00FFFFFF00FF00
        FF00FF00FF006AFF6A006AB650000084000000580300FF00FF00FFFFFF00FF00
        FF00FF00FF00980000006A0000006A000000FF00FF00FF00FF00FF00FF000058
        0300005803000058030000580300005803000058030000580300FF00FF00FF00
        FF00FF00FF006A6A6A006A0000006A6A6A00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0098000000FF00FF00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A0000006A0000006A0000006A0000006A00FF00FF00FFFFFF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A00FF00FF00FF00FF00FF00FF000000B600FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006A6A6A0000006A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000006A0000006A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF006A6A6A0000006A00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF000000
        6A0000006A00FF00FF00FF00FF0000006A0000006A00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00FF00FF001100
        7B0011007B0011007B0011007B0011007B0011007B00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00067B1100FF00FF00FF00FF00FF00FF00}
      TabOrder = 4
    end
    object BitBtn1: TBitBtn
      Left = 699
      Top = 8
      Width = 75
      Height = 25
      Action = actFilter
      Anchors = [akRight, akBottom]
      Caption = #1605#1581#1583#1608#1583#1607
      TabOrder = 5
    end
    object BitBtn2: TBitBtn
      Left = 619
      Top = 8
      Width = 75
      Height = 25
      Action = actPrint
      Anchors = [akRight, akBottom]
      Caption = #1670#1575#1662
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Height = 79
    ExplicitHeight = 79
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 300
      Height = 77
      Align = alLeft
      Caption = #1603#1583' '#1608' '#1593#1606#1608#1575#1606' '#1605#1588#1578#1585#1610#1575#1606
      TabOrder = 0
      DesignSize = (
        300
        77)
      object SpeedButton3: TSpeedButton
        Left = 191
        Top = 19
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        OnClick = SpeedButton3Click
      end
      object DBEdit11: TDBEdit
        Left = 215
        Top = 20
        Width = 66
        Height = 19
        Anchors = [akTop, akRight]
        Ctl3D = False
        DataField = 'CustID'
        DataSource = SrcCustomer
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit12: TDBEdit
        Left = 10
        Top = 43
        Width = 271
        Height = 21
        TabStop = False
        Anchors = [akTop, akRight]
        Color = clBtnFace
        Ctl3D = True
        DataField = 'CustName'
        DataSource = SrcCustomer
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object DBNavigator2: TDBNavigator
        Left = 11
        Top = 18
        Width = 172
        Height = 22
        DataSource = SrcCustomer
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        TabOrder = 2
      end
    end
  end
  inherited Panel3: TPanel
    Top = 79
    Height = 377
    ExplicitTop = 79
    ExplicitHeight = 378
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 786
      Height = 374
      Align = alClient
      Color = clCream
      DataSource = SrcSupport
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'StuffCode'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_StuffName'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'price1'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'price2'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'price3'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'price4'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'price5'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'price6'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'price7'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'price8'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'price9'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'price10'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'price11'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'price12'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sum'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  object SumGrid1: TSumGrid [3]
    Left = 0
    Top = 497
    Width = 782
    Active = False
    Enable_Controls = True
    MasterGrid = DBGrid1
    FieldsName = 
      'price1;price2;price3;price4;price5;price6;price7;price8;price9;p' +
      'rice10;price11;price12;Sum;'
  end
  inherited ActionList: TActionList
    Left = 544
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
      OnExecute = actFilterExecute
    end
    object actSendExel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendExelExecute
    end
    object actShowForm: TAction
      Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
    end
    object actPrint: TAction
      Caption = #1670#1575#1662
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actSort: TAction
      Caption = #1576#1607' '#1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 600
  end
  object SrcSupport: TDataSource
    DataSet = qrySupport
    Left = 328
    Top = 113
  end
  object qrySupport: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'YaersFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 10
        Value = 86.000000000000000000
      end
      item
        Name = 'YaersTo'
        Attributes = [paSigned, paNullable]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 10
        Value = 86.000000000000000000
      end
      item
        Name = 'CustId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1007
      end>
    SQL.Strings = (
      
        'SELECT   ReciptItems.StuffCode, StuffCoding.c_StuffName, Recipts' +
        '.PersonID1,'
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 1) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 1)) then' +
        ' '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end ) AS price1, '
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 2) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 2)) then' +
        ' '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end )AS price2, '
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 3) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 3)) then' +
        ' '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end )AS price3, '
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 4) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 4)) then' +
        ' '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end )AS price4, '
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 5) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 5)) then' +
        ' '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end )AS price5, '
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 6) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 6)) then' +
        ' '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end )AS price6, '
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 7) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 7)) then' +
        ' '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end )AS price7, '
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 8) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 8)) then' +
        ' '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end )AS price8, '
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 9) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 9)) then' +
        ' '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end )AS price9, '
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 10) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 10)) th' +
        'en '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end )AS price10, '
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 11) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 11)) th' +
        'en '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end) AS price11, '
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 12) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 12)) th' +
        'en '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end) AS price12 ,'
      
        '(SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <' +
        '= 1) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 1)) the' +
        'n'
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end ) + '
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 2) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 2)) then' +
        ' '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end )+'
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 3) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 3)) then' +
        ' '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end )+ '
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 4) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 4)) then' +
        ' '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end )+'
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 5) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 5)) then' +
        ' '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end )+'
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 6) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 6)) then' +
        ' '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end )+'
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 7) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 7)) then' +
        ' '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end )+'
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 8) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 8)) then' +
        ' '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end )+'
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 9) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 9)) then' +
        ' '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end )+'
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 10) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 10)) th' +
        'en '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end )+'
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 11) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 11)) th' +
        'en '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end) +'
      
        'SUM(case when ((ABS(SUBSTRING(Recipts.ReciptStartDate, 6, 2)) <=' +
        ' 12) AND (ABS(SUBSTRING(Recipts.ReciptEndDate, 6, 2)) >= 12)) th' +
        'en '
      
        #9'ReciptItems.TotalInputPrice + ReciptItems.TotalOutputPrice else' +
        ' 0 end) ) as Sum'
      'FROM         Recipts INNER JOIN'
      
        '                                            Recipts ON dbo.Recip' +
        'ts.ReciptID = dbo.ReciptItems.ReciptID AND '
      
        '                      dbo.Recipts.ServerID = dbo.ReciptItems.Ser' +
        'verID AND dbo.Recipts.YearID = dbo.ReciptItems.YearID  INNER JOI' +
        'N'
      
        '                      StuffCoding ON ReciptItems.StuffCode = Stu' +
        'ffCoding.c_StuffCode'
      'WHERE    (Recipts.ReciptType = 14) AND '
      
        #9'(ABS(LEFT(Recipts.ReciptStartDate, 2)) <=:YaersFrom) AND (ABS(L' +
        'EFT(Recipts.ReciptEndDate, 2)) >=:YaersTo)  AND (Recipts.PersonI' +
        'D1=:CustId)'
      
        'group by    ReciptItems.StuffCode, StuffCoding.c_StuffName,Recip' +
        'ts.PersonID1')
    Left = 456
    Top = 153
    object qrySupportStuffCode: TLargeintField
      Tag = 3
      DisplayLabel = #1603#1583' '#1587#1610#1587#1578#1605
      FieldName = 'StuffCode'
    end
    object qrySupportc_StuffName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1587#1610#1587#1578#1605
      FieldName = 'c_StuffName'
      Size = 70
    end
    object qrySupportprice1: TBCDField
      Tag = 3
      DisplayLabel = #1601#1585#1608#1585#1583#1610#1606
      FieldName = 'price1'
      currency = True
      Precision = 19
    end
    object qrySupportprice2: TBCDField
      Tag = 3
      DisplayLabel = #1575#1585#1583#1610#1576#1607#1588#1578
      FieldName = 'price2'
      currency = True
      Precision = 19
    end
    object qrySupportprice3: TBCDField
      Tag = 3
      DisplayLabel = #1582#1585#1583#1575#1583
      FieldName = 'price3'
      currency = True
      Precision = 19
    end
    object qrySupportprice4: TBCDField
      Tag = 3
      DisplayLabel = #1578#1610#1585
      FieldName = 'price4'
      currency = True
      Precision = 19
    end
    object qrySupportprice5: TBCDField
      Tag = 3
      DisplayLabel = #1605#1585#1583#1575#1583
      FieldName = 'price5'
      currency = True
      Precision = 19
    end
    object qrySupportprice6: TBCDField
      Tag = 3
      DisplayLabel = #1588#1607#1585#1610#1608#1585
      FieldName = 'price6'
      currency = True
      Precision = 19
    end
    object qrySupportprice7: TBCDField
      Tag = 3
      DisplayLabel = #1605#1607#1585
      FieldName = 'price7'
      currency = True
      Precision = 19
    end
    object qrySupportprice8: TBCDField
      Tag = 3
      DisplayLabel = #1570#1576#1575#1606
      FieldName = 'price8'
      currency = True
      Precision = 19
    end
    object qrySupportprice9: TBCDField
      Tag = 3
      DisplayLabel = #1570#1584#1585
      FieldName = 'price9'
      currency = True
      Precision = 19
    end
    object qrySupportprice10: TBCDField
      Tag = 3
      DisplayLabel = #1583#1610
      FieldName = 'price10'
      currency = True
      Precision = 19
    end
    object qrySupportprice11: TBCDField
      Tag = 3
      DisplayLabel = #1576#1607#1605#1606
      FieldName = 'price11'
      currency = True
      Precision = 19
    end
    object qrySupportprice12: TBCDField
      Tag = 3
      DisplayLabel = #1575#1587#1601#1606#1583
      FieldName = 'price12'
      currency = True
      Precision = 19
    end
    object qrySupportSum: TBCDField
      Tag = 3
      DisplayLabel = #1580#1600#1600#1605#1600#1593
      FieldName = 'Sum'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object qrySupportPersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = SrcSupport
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 284
    Top = 308
    MasterDataPipelineName = 'ppDBPipeline2'
  end
  object qryCustomer: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qryCustomerAfterScroll
    Parameters = <
      item
        Name = 'CustIdFrom'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'CustIdTo'
        DataType = ftString
        Size = 7
        Value = '9999999'
      end>
    SQL.Strings = (
      'SELECT     dbo.Customers.CustID, dbo.Customers.CustName'
      'FROM         dbo.Recipts INNER JOIN'
      
        '                      dbo.Customers ON dbo.Recipts.PersonID1 = d' +
        'bo.Customers.CustID'
      'WHERE     (dbo.Recipts.ReciptType = 14)'
      'GROUP BY dbo.Customers.CustID, dbo.Customers.CustName'
      
        'HAVING      (dbo.Customers.CustID BETWEEN :CustIdFrom AND :CustI' +
        'dTo)')
    Left = 336
    Top = 32
    object qryCustomerCustID: TIntegerField
      FieldName = 'CustID'
    end
    object qryCustomerCustName: TStringField
      FieldName = 'CustName'
      Size = 120
    end
  end
  object SrcCustomer: TDataSource
    AutoEdit = False
    DataSet = qryCustomer
    Left = 360
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Projects\Fara\BSell\Exe\Report\rptStuffCodingMonths1_Line.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 213
    Top = 272
    Version = '22.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand2: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 26194
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        mmHeight = 5292
        mmLeft = 0
        mmTop = 20902
        mmWidth = 284428
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label34'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1575#1585#1583#1610#1576#1607#1588#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 196850
        mmTop = 20902
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1603#1600#1600#1583' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5376
        mmLeft = 273315
        mmTop = 20902
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1588#1585#1581' '#1587#1610#1587#1578#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 232834
        mmTop = 20902
        mmWidth = 39158
        BandType = 0
        LayerName = Foreground
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 196321
        mmTop = 20902
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line101'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 214313
        mmTop = 20902
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine41: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 272521
        mmTop = 20902
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label54'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1601#1585#1608#1585#1583#1610#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 214842
        mmTop = 20902
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLine42: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line70'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 232305
        mmTop = 21167
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        OnGetText = ppLabel2GetText
        Border.mmPadding = 0
        Caption = #1588#1585#1603#1578' '#1591#1585#1581' '#1608' '#1662#1585#1583#1575#1586#1588' '#1601#1585#1575' '#1585#1575#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Jadid'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 116152
        mmTop = 0
        mmWidth = 52123
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        OnGetText = ppLabel3GetText
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7144
        mmLeft = 134409
        mmTop = 6615
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable1GetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 6085
        mmLeft = 8731
        mmTop = 1323
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLine71: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Width = 2
        Position = lpBottom
        Weight = 1.200000047683716000
        mmHeight = 2910
        mmLeft = 1852
        mmTop = 15081
        mmWidth = 280723
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        OnGetText = ppLabel8GetText
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6615
        mmLeft = 8731
        mmTop = 7408
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1582#1585#1583#1575#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 178859
        mmTop = 20902
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1605#1593
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 265
        mmTop = 20902
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1583#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 52917
        mmTop = 20902
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1570#1584#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 70908
        mmTop = 20902
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1570#1576#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 88900
        mmTop = 20902
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1607#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 106892
        mmTop = 20902
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1607#1585#1610#1608#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 124884
        mmTop = 20902
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1585#1583#1575#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 142875
        mmTop = 20902
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1610#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 160867
        mmTop = 20902
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLine72: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line102'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 178330
        mmTop = 21167
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine73: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 160338
        mmTop = 21167
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine74: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 142346
        mmTop = 21167
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine75: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 124354
        mmTop = 21167
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1576#1607#1605#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 34925
        mmTop = 20902
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLine76: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 106363
        mmTop = 21167
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine77: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 88371
        mmTop = 21167
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine78: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 70379
        mmTop = 21167
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine79: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 52388
        mmTop = 21167
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1575#1587#1601#1606#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 17463
        mmTop = 20902
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLine80: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line26'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 34925
        mmTop = 20902
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLine81: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line32'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 17198
        mmTop = 21167
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1603#1600#1600#1583' '#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610': '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5969
        mmLeft = 259399
        mmTop = 10848
        mmWidth = 23876
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'CustName'
        DataPipeline = ppDBPipeline2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline2'
        mmHeight = 5821
        mmLeft = 208492
        mmTop = 11113
        mmWidth = 39423
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'PersonID1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 248180
        mmTop = 10848
        mmWidth = 10848
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand2: TppDetailBand
      Border.mmPadding = 0
      PrintCount = 50
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'StuffCode'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6350
        mmLeft = 273051
        mmTop = 0
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'c_StuffName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5842
        mmLeft = 232834
        mmTop = 0
        mmWidth = 39423
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'price11'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 34925
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'price12'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 17463
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'price10'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 52917
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'price9'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 70908
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'price7'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 106892
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'price8'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 88900
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'price6'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 124884
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'price5'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 142875
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'price3'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 178859
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'price4'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 160867
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'price2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5821
        mmLeft = 196850
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppLine82: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 6085
        mmWidth = 284300
        BandType = 4
        LayerName = Foreground
      end
      object ppLine83: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 196321
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine84: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 178330
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine85: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 160338
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine86: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 142346
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine87: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 124354
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine88: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 106363
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine89: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 88371
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine90: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line202'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 70379
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine91: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 214313
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine92: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line31'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 272521
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine93: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line24'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 282840
        mmTop = 0
        mmWidth = 1588
        BandType = 4
        LayerName = Foreground
      end
      object ppLine94: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line28'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 52388
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine95: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line29'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 34925
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine96: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line30'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText25'
        Border.mmPadding = 0
        DataField = 'price1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5800
        mmLeft = 214842
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppLine97: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line69'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 232305
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Sum'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5800
        mmLeft = 0
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppLine98: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line36'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 17198
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand2: TppFooterBand
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'LblEntity1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1600#1600#1605#1593' '#1603#1600#1600#1604': '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 233363
        mmTop = 529
        mmWidth = 50536
        BandType = 8
        LayerName = Foreground
      end
      object ppLine99: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc27: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc15'
        Border.mmPadding = 0
        DataField = 'price12'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 17463
        mmTop = 529
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc28: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc16'
        Border.mmPadding = 0
        DataField = 'price11'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 34925
        mmTop = 529
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc29: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc17'
        Border.mmPadding = 0
        DataField = 'price10'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 52917
        mmTop = 529
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc30: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc18'
        Border.mmPadding = 0
        DataField = 'price9'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 70908
        mmTop = 529
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc31: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc19'
        Border.mmPadding = 0
        DataField = 'price8'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 88900
        mmTop = 529
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc32: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc20'
        Border.mmPadding = 0
        DataField = 'price7'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 106892
        mmTop = 529
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc33: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc102'
        Border.mmPadding = 0
        DataField = 'price5'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 142875
        mmTop = 529
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc34: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc21'
        Border.mmPadding = 0
        DataField = 'price6'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 124884
        mmTop = 529
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc35: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc22'
        Border.mmPadding = 0
        DataField = 'price4'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 160867
        mmTop = 529
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc36: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc23'
        Border.mmPadding = 0
        DataField = 'price3'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 178859
        mmTop = 529
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc37: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc24'
        Border.mmPadding = 0
        DataField = 'price1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 214842
        mmTop = 529
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc38: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc25'
        Border.mmPadding = 0
        DataField = 'price2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 196850
        mmTop = 529
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
      object ppLine100: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line33'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 34925
        mmTop = 0
        mmWidth = 2381
        BandType = 8
        LayerName = Foreground
      end
      object ppLine101: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line34'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 0
        mmTop = 0
        mmWidth = 2910
        BandType = 8
        LayerName = Foreground
      end
      object ppLine102: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line35'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 52388
        mmTop = 0
        mmWidth = 2910
        BandType = 8
        LayerName = Foreground
      end
      object ppLine103: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line37'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 88371
        mmTop = 0
        mmWidth = 2910
        BandType = 8
        LayerName = Foreground
      end
      object ppLine104: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line38'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 70379
        mmTop = 265
        mmWidth = 2910
        BandType = 8
        LayerName = Foreground
      end
      object ppLine105: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line39'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 124354
        mmTop = 0
        mmWidth = 2910
        BandType = 8
        LayerName = Foreground
      end
      object ppLine106: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line40'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 106363
        mmTop = 0
        mmWidth = 2910
        BandType = 8
        LayerName = Foreground
      end
      object ppLine107: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line402'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 196321
        mmTop = 0
        mmWidth = 2910
        BandType = 8
        LayerName = Foreground
      end
      object ppLine108: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line42'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 178330
        mmTop = 0
        mmWidth = 2910
        BandType = 8
        LayerName = Foreground
      end
      object ppLine109: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line43'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 160338
        mmTop = 0
        mmWidth = 2910
        BandType = 8
        LayerName = Foreground
      end
      object ppLine110: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line44'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 142346
        mmTop = 0
        mmWidth = 2910
        BandType = 8
        LayerName = Foreground
      end
      object ppLine111: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line46'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 281517
        mmTop = 0
        mmWidth = 2910
        BandType = 8
        LayerName = Foreground
      end
      object ppLine112: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line47'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 232305
        mmTop = 0
        mmWidth = 2910
        BandType = 8
        LayerName = Foreground
      end
      object ppLine113: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line48'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 214313
        mmTop = 0
        mmWidth = 2910
        BandType = 8
        LayerName = Foreground
      end
      object ppLine114: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 6879
        mmWidth = 284300
        BandType = 8
        LayerName = Foreground
      end
      object ppLine115: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line41'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 17198
        mmTop = 0
        mmWidth = 2381
        BandType = 8
        LayerName = Foreground
      end
      object ppDBCalc39: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'Sum'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 0
        mmTop = 529
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
      object ppLine116: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 6615
        mmWidth = 284300
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc40: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc4'
        Border.mmPadding = 0
        DataField = 'price12'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 17463
        mmTop = 794
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc41: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.mmPadding = 0
        DataField = 'price11'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 34925
        mmTop = 794
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1580#1600#1600#1605#1593' '#1603#1600#1600#1604': '#8207
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 233363
        mmTop = 794
        mmWidth = 50536
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc42: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc6'
        Border.mmPadding = 0
        DataField = 'price10'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 52917
        mmTop = 794
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc43: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc7'
        Border.mmPadding = 0
        DataField = 'price9'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 70908
        mmTop = 794
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc44: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc8'
        Border.mmPadding = 0
        DataField = 'price8'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 88900
        mmTop = 794
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc45: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc9'
        Border.mmPadding = 0
        DataField = 'price7'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 106892
        mmTop = 794
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc46: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc10'
        Border.mmPadding = 0
        DataField = 'price5'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 142875
        mmTop = 794
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc47: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc11'
        Border.mmPadding = 0
        DataField = 'price6'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 124884
        mmTop = 794
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc48: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc12'
        Border.mmPadding = 0
        DataField = 'price4'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 160867
        mmTop = 794
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc49: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc13'
        Border.mmPadding = 0
        DataField = 'price3'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 178859
        mmTop = 794
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc50: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc101'
        Border.mmPadding = 0
        DataField = 'price1'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 214842
        mmTop = 794
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc51: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc14'
        Border.mmPadding = 0
        DataField = 'price2'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 196850
        mmTop = 794
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppLine117: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line27'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 34925
        mmTop = 265
        mmWidth = 2910
        BandType = 7
        LayerName = Foreground
      end
      object ppLine118: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line45'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 124354
        mmTop = 265
        mmWidth = 2381
        BandType = 7
        LayerName = Foreground
      end
      object ppLine119: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line49'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 106363
        mmTop = 265
        mmWidth = 2910
        BandType = 7
        LayerName = Foreground
      end
      object ppLine120: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line50'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 88371
        mmTop = 265
        mmWidth = 2910
        BandType = 7
        LayerName = Foreground
      end
      object ppLine121: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line61'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 70379
        mmTop = 265
        mmWidth = 2910
        BandType = 7
        LayerName = Foreground
      end
      object ppLine122: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line51'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 52388
        mmTop = 265
        mmWidth = 2910
        BandType = 7
        LayerName = Foreground
      end
      object ppLine123: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line52'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 0
        mmTop = 265
        mmWidth = 2910
        BandType = 7
        LayerName = Foreground
      end
      object ppLine124: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 142346
        mmTop = 265
        mmWidth = 2381
        BandType = 7
        LayerName = Foreground
      end
      object ppLine125: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line53'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 232305
        mmTop = 265
        mmWidth = 2381
        BandType = 7
        LayerName = Foreground
      end
      object ppLine126: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line54'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 214313
        mmTop = 265
        mmWidth = 2381
        BandType = 7
        LayerName = Foreground
      end
      object ppLine127: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line55'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 196321
        mmTop = 265
        mmWidth = 2381
        BandType = 7
        LayerName = Foreground
      end
      object ppLine128: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line56'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 178330
        mmTop = 265
        mmWidth = 2381
        BandType = 7
        LayerName = Foreground
      end
      object ppLine129: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line57'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 160338
        mmTop = 265
        mmWidth = 2381
        BandType = 7
        LayerName = Foreground
      end
      object ppLine130: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line58'
        Border.mmPadding = 0
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 282046
        mmTop = 265
        mmWidth = 2381
        BandType = 7
        LayerName = Foreground
      end
      object ppLine131: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 265
        mmWidth = 283898
        BandType = 7
        LayerName = Foreground
      end
      object ppLine132: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line59'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 17198
        mmTop = 265
        mmWidth = 2381
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc52: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc26'
        Border.mmPadding = 0
        DataField = 'Sum'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0;-#,0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 529
        mmTop = 794
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = SrcCustomer
    UserName = 'DBPipeline2'
    Left = 296
    Top = 239
  end
end
