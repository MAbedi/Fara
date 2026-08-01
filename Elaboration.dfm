inherited ElaborationF: TElaborationF
  Left = 361
  Top = 231
  Caption = #1589#1608#1585#1578' '#1585#1610#1586' '#1582#1591#1575#1607#1575
  ClientHeight = 517
  OnResize = FormResize
  ExplicitWidth = 794
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 476
    inherited BtnReject: TBitBtn
      Left = 7
      Top = 9
      ExplicitLeft = 7
      ExplicitTop = 9
    end
    object btnReciptShow: TBitBtn
      Left = 705
      Top = 10
      Width = 72
      Height = 24
      Action = actReciptShow
      Anchors = [akTop, akRight]
      Caption = #1606#1605#1575#1610#1588
      TabOrder = 1
    end
    object btnSort: TBitBtn
      Left = 84
      Top = 9
      Width = 75
      Height = 25
      Action = actSort
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 2
    end
    object btnSearch_: TBitBtn
      Left = 161
      Top = 9
      Width = 75
      Height = 25
      Action = actSearch_
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 3
    end
    object btnSendExcel: TBitBtn
      Left = 238
      Top = 9
      Width = 75
      Height = 25
      Action = actSendExcel
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      TabOrder = 4
    end
  end
  inherited Panel2: TPanel
    Height = 67
    ExplicitHeight = 67
    inherited lblCaption: TLabel
      Height = 16
      ExplicitLeft = 674
    end
    object grpMaster: TGroupBox
      Left = 1
      Top = 1
      Width = 240
      Height = 65
      Align = alLeft
      Caption = #1603#1583
      TabOrder = 0
      object btnMaster: TSpeedButton
        Left = 5
        Top = 14
        Width = 23
        Height = 22
        Caption = '...'
      end
      object edtEdtCode: TDBEdit
        Left = 30
        Top = 15
        Width = 81
        Height = 21
        DataField = 'c_StuffCode'
        DataSource = SrcMaster
        TabOrder = 0
      end
      object edt1: TDBEdit
        Left = 5
        Top = 38
        Width = 228
        Height = 21
        BevelOuter = bvNone
        BevelKind = bkFlat
        Color = clBtnFace
        Ctl3D = True
        DataField = 'c_StuffName'
        DataSource = SrcMaster
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object dbnvgr1: TDBNavigator
        Left = 115
        Top = 14
        Width = 116
        Height = 22
        DataSource = SrcMaster
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 2
      end
    end
  end
  inherited Panel3: TPanel
    Top = 67
    Height = 409
    ExplicitTop = 67
    ExplicitHeight = 414
    object dbgrdElaboration: TDBGrid
      Left = 2
      Top = 2
      Width = 778
      Height = 410
      Align = alClient
      Color = clCream
      DataSource = dsElaboration
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = actReciptShowExecute
      Columns = <
        item
          Expanded = False
          FieldName = 'ReciptNumber'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptDate'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptState'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UseUnitID'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UseUnitName'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Entity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AcceptEntity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RollbackEntity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RollbackWeight'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonID1'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustName'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PersonID2'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustName2'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReciptCaption'
          Width = 40
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    Left = 392
    Top = 16
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actFilter: TAction
      Caption = #1605#1581#1583#1608#1583#1607
    end
    object actReciptShow: TAction
      Caption = #1606#1605#1575#1610#1588
      OnExecute = actReciptShowExecute
    end
    object actSendExcel: TAction
      Caption = #1575#1585#1587#1575#1604#8207#1576#1607'Excel'
      OnExecute = actSendExcelExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 480
  end
  object qryElaboration: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'master'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'StuffCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'master2'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'StuffCode2'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'YearID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     Recipts.ParentReciptID, Recipts.ReciptID, Recipts.Rec' +
        'iptType, ReciptItems.StuffCode, ReciptTypes.ReciptCaption, Recip' +
        'ts.ReciptNumber,'
      
        '                      Recipts.ReciptDate, Recipts.ReciptState, R' +
        'ecipts.UseUnitID, UseUnits.UseUnitName, ReciptItems.InputEntity ' +
        '+ ReciptItems.OutputEntity AS Entity, '
      
        '                      ReciptItems.AcceptEntity, ReciptItems.Roll' +
        'backEntity, ReciptItems.RollbackWeight, Recipts.PersonID1, Custo' +
        'mers.CustName, Recipts.PersonID2, '
      
        '                      Personels2.CustName AS CustName2,Recipts.S' +
        'erverID , Recipts.YearID'
      'FROM         ReciptItems INNER JOIN'
      
        '                      Recipts ON Recipts.ReciptID = ReciptItems.' +
        'ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND Recipts' +
        '.YearID = ReciptItems.YearID INNER JOIN'
      
        '                      Stores ON Recipts.StoreID = Stores.n_Store' +
        'ID INNER JOIN'
      
        '                      ReciptTypes ON Recipts.ReciptType = Recipt' +
        'Types.ReciptType LEFT OUTER JOIN'
      
        '                      Customers ON Recipts.PersonID1 = Customers' +
        '.CustID LEFT OUTER JOIN'
      
        '                      Customers AS Personels2 ON Recipts.PersonI' +
        'D2 = Personels2.CustID LEFT OUTER JOIN'
      
        '                      UseUnits ON Recipts.UseUnitID = UseUnits.U' +
        'seUnitID'
      
        'WHERE     (Recipts.ReciptType IN (10, 11)) AND (Recipts.ParentRe' +
        'ciptID = :master) AND (Recipts.ReciptState < 3) AND (ReciptItems' +
        '.StuffCode = :StuffCode) OR'
      
        '                      (Recipts.ReciptType IN (10, 11)) AND (Reci' +
        'pts.ReciptState < 3) AND (Recipts.ReciptID = :master2) AND (Reci' +
        'ptItems.StuffCode = :StuffCode2)'
      
        'AND ( Recipts.YearID = :YearID   ) AND ( Recipts.ServerID =  :Se' +
        'rverID   )'
      ''
      
        'ORDER BY Recipts.ReciptType DESC, Recipts.ReciptDate, Recipts.Re' +
        'ciptNumber'
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' ')
    Left = 297
    Top = 245
    object qryElaborationReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryElaborationReciptNumber: TIntegerField
      Tag = 3
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'ReciptNumber'
    end
    object qryElaborationReciptDate: TStringField
      Tag = 3
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryElaborationReciptState: TWordField
      Tag = 3
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldName = 'ReciptState'
      OnGetText = qryElaborationReciptStateGetText
    end
    object qryElaborationUseUnitID: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1585#1575#1606#1606#1583#1607
      FieldName = 'UseUnitID'
    end
    object qryElaborationUseUnitName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1585#1575#1606#1606#1583#1607
      FieldName = 'UseUnitName'
      Size = 70
    end
    object qryElaborationEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1606#1607#1575#1610#1610
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryElaborationAcceptEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1578#1575#1610#1610#1583' '#1588#1583#1607
      FieldName = 'AcceptEntity'
      ReadOnly = True
    end
    object qryElaborationRollbackEntity: TFloatField
      Tag = 3
      DisplayLabel = #1605#1602#1583#1575#1585' '#1576#1585#1711#1588#1578#1610
      FieldName = 'RollbackEntity'
      ReadOnly = True
    end
    object qryElaborationRollbackWeight: TFloatField
      Tag = 3
      DisplayLabel = #1608#1586#1606' '#1576#1585#1711#1588#1578#1610
      FieldName = 'RollbackWeight'
    end
    object qryElaborationPersonID1: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1582#1585#1610#1583#1575#1585
      FieldName = 'PersonID1'
    end
    object qryElaborationCustName: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1582#1585#1610#1583#1575#1585
      FieldName = 'CustName'
      Size = 120
    end
    object qryElaborationPersonID2: TIntegerField
      Tag = 3
      DisplayLabel = #1603#1583' '#1608#1610#1586#1610#1578#1608#1585
      FieldName = 'PersonID2'
    end
    object qryElaborationCustName2: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1608#1610#1586#1610#1578#1608#1585
      FieldName = 'CustName2'
      Size = 60
    end
    object qryElaborationParentReciptID: TIntegerField
      FieldName = 'ParentReciptID'
    end
    object qryElaborationReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryElaborationStuffCode: TLargeintField
      FieldName = 'StuffCode'
    end
    object qryElaborationReciptCaption: TStringField
      Tag = 3
      DisplayLabel = #1606#1608#1593' '#1601#1585#1605
      FieldName = 'ReciptCaption'
      Size = 70
    end
    object qryElaborationServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryElaborationYearID: TIntegerField
      FieldName = 'YearID'
    end
  end
  object dsElaboration: TDataSource
    DataSet = qryElaboration
    Left = 184
    Top = 245
  end
  object qryMaster: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'StuffCode'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT     c_StuffCode, c_StuffName'
      'FROM         StuffCoding'
      'WHERE     (c_StuffCode = :StuffCode )')
    Left = 512
    Top = 105
    object qryMasterc_StuffCode: TLargeintField
      FieldName = 'c_StuffCode'
    end
    object qryMasterc_StuffName: TStringField
      FieldName = 'c_StuffName'
      Size = 150
    end
  end
  object SrcMaster: TDataSource
    DataSet = qryMaster
    Left = 392
    Top = 113
  end
end
