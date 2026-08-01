object frInsouranceCheck: TfrInsouranceCheck
  Left = 0
  Top = 0
  Width = 733
  Height = 167
  BiDiMode = bdRightToLeft
  ParentBiDiMode = False
  TabOrder = 0
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 733
    Height = 167
    Align = alClient
    Caption = '   '#1604#1610#1587#1578' '#1575#1610#1585#1575#1583#1575#1578' '#1605#1586#1575#1610#1575#1610' '#1605#1588#1605#1608#1604' '#1576#1610#1605#1607' '#1608' '#1604#1610#1587#1578' '#1576#1610#1605#1607'   '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object DBGrid2: TCedarDbgrid
      Left = 2
      Top = 15
      Width = 729
      Height = 150
      Align = alClient
      Color = 16768991
      DataSource = srcInsouranceCheck
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
      OddRowColor = clInfoBk
      RowHeight = 18
      SearchPanel.Enabled = True
      SortLocal = True
      TabOrder = 0
      ActiveSearchPanel = False
      SelectFooterIndex = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'kind'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'FormInfoID'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InfoID'
          Footers = <>
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'InfoName_L1'
          Footers = <>
          Width = 189
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object qryInsouranceCheck: TADOQuery
    AutoCalcFields = False
    Connection = DmF.adcsalary
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qryInsouranceCheckAfterOpen
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'PrvInfoID'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      
        '-----SELECT       SalaryID, InfoName_L1, TotalInfoID, CntInfoID,' +
        ' WarnNote FROM         Pay.InsouranceCheck( :PrvInfoID ) AS Inso' +
        'uranceCheck_1'
      ''
      ' SELECT  1 kind ,   fn.FormInfoID , fn.InfoID , fn.InfoName_L1 '
      ' FROM          Pay.FormsInfo INNER JOIN'
      
        '        Pay.SalaryRange ON Pay.FormsInfo.FormInfoID = Pay.Salary' +
        'Range.FormInfoID'
      
        #9#9'join Pay.FormsInfo Fn on Pay.SalaryRange.SalaryID = fn.FormInf' +
        'oID '
      
        'WHERE     (FormsInfo.FormType = 55)  AND (FormsInfo.InfoID in(1,' +
        '2,5,6)) '
      'group by  fn.FormInfoID , fn.InfoID , fn.InfoName_L1,'
      #9#9#9'FormsInfo.PrvInfoID'
      'having count(*) <>1  '
      'union '
      ' SELECT  2 kind ,   fn.FormInfoID , fn.InfoID , fn.InfoName_L1  '
      ' FROM   Pay.FormsInfo f'
      
        #9#9'INNER JOIN Pay.SalaryRange ON f.FormInfoID = Pay.SalaryRange.F' +
        'ormInfoID and  (f.FormType = 55)  AND (f.InfoID in(1,2,5,6)) '
      
        #9#9'join Pay.FormsInfo Fn on Pay.SalaryRange.SalaryID = fn.FormInf' +
        'oID '
      #9#9'left join ('
      #9#9#9#9#9'SELECT     Pay.SalaryRange.SalaryID,FormsInfo.PrvInfoID'
      #9#9#9#9#9'FROM   Pay.FormsInfo '
      
        #9#9#9#9#9'INNER JOIN Pay.SalaryRange ON Pay.FormsInfo.FormInfoID = Pa' +
        'y.SalaryRange.FormInfoID and  (FormsInfo.FormType = 55)  AND (Fo' +
        'rmsInfo.InfoID = 4) '
      
        #9#9#9#9#9') al on fn.FormInfoID =al.SalaryID and f.PrvInfoID=al.PrvIn' +
        'foID'
      ' where al.SalaryID is null ')
    Left = 106
    Top = 69
    object qryInsouranceCheckkind: TIntegerField
      DisplayLabel = #1606#1608#1593
      FieldName = 'kind'
      ReadOnly = True
    end
    object qryInsouranceCheckFormInfoID: TIntegerField
      DisplayLabel = #1587#1585#1740#1575#1604
      FieldName = 'FormInfoID'
      ReadOnly = True
    end
    object qryInsouranceCheckInfoID: TIntegerField
      DisplayLabel = #1705#1583
      FieldName = 'InfoID'
      ReadOnly = True
    end
    object qryInsouranceCheckInfoName_L1: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'InfoName_L1'
      ReadOnly = True
      Size = 255
    end
  end
  object srcInsouranceCheck: TDataSource
    DataSet = qryInsouranceCheck
    Left = 250
    Top = 82
  end
end
