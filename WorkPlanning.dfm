inherited WorkPlanningF: TWorkPlanningF
  Caption = #1576#1585#1606#1575#1605#1607' '#1585#1740#1586#1740' '#1705#1575#1585
  ClientHeight = 314
  ExplicitWidth = 412
  ExplicitHeight = 343
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Top = 257
    ExplicitTop = 257
  end
  object Label1: TLabel [1]
    Left = 350
    Top = 70
    Width = 43
    Height = 13
    Caption = #1711#1585#1583#1588' '#1705#1575#1585
  end
  object Label2: TLabel [2]
    Left = 165
    Top = 70
    Width = 20
    Height = 13
    Caption = #1705#1575#1585#1576#1585
  end
  object Label3: TLabel [3]
    Left = 350
    Top = 96
    Width = 32
    Height = 13
    Caption = #1605#1608#1590#1608#1593
  end
  object Label5: TLabel [4]
    Left = 349
    Top = 120
    Width = 18
    Height = 13
    Caption = #1605#1578#1606
  end
  inherited Panel1: TPanel
    Height = 56
    TabOrder = 4
    ExplicitHeight = 56
    inherited lblTopic0: TLabel
      Left = 253
      Width = 79
      Caption = #1576#1585#1606#1575#1605#1607' '#1585#1740#1586#1740' '#1705#1575#1585
      ExplicitLeft = 253
      ExplicitWidth = 79
    end
  end
  inherited pnlDown: TPanel
    Top = 277
    TabOrder = 5
    ExplicitTop = 277
    inherited btnClose: TBitBtn
      ModalResult = 2
    end
    object btnOK: TBitBtn
      AlignWithMargins = True
      Left = 327
      Top = 4
      Width = 75
      Height = 29
      Align = alRight
      Caption = #1578#1575#1740#1740#1583
      DoubleBuffered = True
      ModalResult = 1
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
  object cmbWorkFlow: TComboBox [7]
    Left = 199
    Top = 66
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 0
  end
  object cmbUser: TComboBox [8]
    Left = 15
    Top = 66
    Width = 145
    Height = 21
    Style = csDropDownList
    DropDownCount = 16
    TabOrder = 1
  end
  object edtSubject: TEdit [9]
    Left = 15
    Top = 93
    Width = 329
    Height = 21
    TabOrder = 2
  end
  object mmoText: TMemo [10]
    Left = 14
    Top = 120
    Width = 329
    Height = 137
    TabOrder = 3
  end
  object qrywfTask: TADOQuery
    Connection = DMF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'wfKey'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'SELECT     id, subject, description, AssignedUserID,SuperUserID'
      'FROM         wstaskinstance'
      'WHERE   ( ID > :ID ) AND (workflowdefinitionkey = :wfKey) ')
    Left = 288
    Top = 152
    object qrywfTaskid: TIntegerField
      FieldName = 'id'
    end
    object qrywfTasksubject: TStringField
      FieldName = 'subject'
      Size = 50
    end
    object qrywfTaskdescription: TMemoField
      FieldName = 'description'
      BlobType = ftMemo
    end
    object qrywfTaskAssignedUserID: TStringField
      FieldName = 'AssignedUserID'
      Size = 50
    end
    object qrywfTaskSuperUserID: TStringField
      FieldName = 'SuperUserID'
      Size = 50
    end
  end
end
