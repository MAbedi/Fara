inherited CofferFormTypesF: TCofferFormTypesF
  Left = 397
  Top = 229
  Caption = #1605#1593#1585#1601#1610' '#1575#1606#1608#1575#1593' '#1583#1585#1610#1575#1601#1578' '#1608' '#1662#1585#1583#1575#1582#1578' ('#1582#1586#1575#1606#1607' '#1583#1575#1585#1610')'#8207
  ClientHeight = 659
  ClientWidth = 841
  OnResize = FormResize
  ExplicitWidth = 849
  ExplicitHeight = 690
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlUnderButton: TPanel
    Top = 618
    Width = 841
    ExplicitTop = 618
    ExplicitWidth = 841
    object newPanel: TPanel
      Left = 606
      Top = 1
      Width = 234
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        234
        39)
      object BtnInsert: TBitBtn
        Left = 156
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 78
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        TabOrder = 1
      end
      object BtnDelete: TBitBtn
        Left = 1
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetDelete1_
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        TabOrder = 2
      end
    end
    object okPanel: TPanel
      Left = 441
      Top = 1
      Width = 165
      Height = 39
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        165
        39)
      object BitBtn7: TBitBtn
        Left = 88
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetPost1
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00318C2900007B00004A9C4200FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00009C100000AD0800007B0000BDBD5A00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000084420000AD080000B51000008C00007B841800FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000084000000BD180000B51000009400007B6300008CB5
          7300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00318C290000A5180000B5100000FF420000BD1800BD9C00000073
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00009C100000A5390000FF420000FF420000AD080000BD1000007B
          00006BAD5A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000B5210000E7420000FF4200318C2900318C2900BDBD1000008C
          000018841800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000084080000940800FF00FF00FF00FF00BD9C000000B5
          1000007B00008CB57300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B84210000B5
          10000084000000730000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00009C
          080000B51000007B000000A55A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00318C
          290000B5100010941800BD9C2100FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF001094290039DE8C00BD9C18006BAD5A00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00189C210000CE210000A55A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF008CB57300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
      end
      object BitBtn8: TBitBtn
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        Action = DataSetCancel1
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1589#1585#1575#1601
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00424A
          4A00424A4A00424A4A0000424A00424A4A00424A4A00424A4A00005A4A00424A
          4A00424A4A00424A4A00005A4A00424A4A00424A4A00FF00FF00FF00FF006B73
          6B00FFFFFF00FFFFFF0000E7FF00FFFFFF00FFFFFF00FFFFFF00BDFFFF00FFFF
          FF00FFFFFF00FFFFFF00BDFFFF00FFFFFF006B736B00FF00FF00FF00FF006B73
          6B00FFFFFF000010AD0000844A00FF9C4A00FF9C4A00FF9C4A00BD9C4A00FF9C
          4A00FF9C4A00FF9C4A00BD9C4A000018CE006B736B00FF00FF00FF00FF006B73
          6B00FFFFFF000018CE000000AD00FFFFFF00FF9C4A00FFFFFF0000E7FF00FF9C
          4A00FFFFFF00FFFFFF000000CE00FFFFFF006B736B00FF00FF00FF00FF008484
          7300FFFFFF00FF9C4A000000CE000010AD00FF9C4A00FFFFFF00BDFFFF00FF9C
          4A000010AD000018CE00BD9C4A00FFFFFF0084847300FF00FF00FF00FF008484
          7300FFFFFF00FF9C4A0000844A000018CE000010AD00FF9C4A00BD9C4A000010
          AD000018CE00FF9C4A00BD9C4A00FFFFFF0084847300FF00FF00FF00FF008484
          7300FFFFFF00F78C390000E7FF00FFFFFF000018CE000018DE00BD18AD000018
          DE00FFFFFF00FFFFFF00BD9C3900FFFFFF0084847300FF00FF00FF00FF008C8C
          8C00F7F7F700F78C390000E7FF00FFFFFF00F78C39000018DE00BD18DE000018
          CE000010AD00FFFFFF00BD9C3900F7F7F7008C8C8C00FF00FF00FF00FF008C8C
          8C00F7F7F700E784080000840800E78408000018CE000018E700BD9C0800E784
          08000018F7000010AD00BD9C0800F7F7F7008C8C8C00FF00FF00FF00FF009494
          9400E7E7E700E784080000E7FF000018F7000018E700FFFFFF00BDFFFF00E784
          0800FFFFFF000018F700BD9C0800E7E7E70094949400FF00FF00FF00FF009494
          9400E7E7E700E78408000000FF000018E700E7840800FFFFFF00BDFFFF00E784
          0800FFFFFF00FFFFFF00BD18F700E7E7E70094949400FF00FF00FF00FF009C9C
          9C00CED6CE000018F7000000F700E7840800E7840800E7840800FF9C0800E784
          0800E7840800E7840800008408000018F7009C9C9C00FF00FF00FF00FF009C9C
          9C00CED6CE000018F70000C6CE00CED6CE00CED6CE00CED6CE0000DECE00CED6
          CE00CED6CE00CED6CE0000C6CE00CED6CE009C9C9C00FF00FF00FF00FF009C9C
          9C009C9C9C009C9C9C0000849C009C9C9C009C9C9C009C9C9C0084849C009C9C
          9C009C9C9C009C9C9C0000849C009C9C9C009C9C9C00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 1
      end
    end
    object BitBtn6: TBitBtn
      AlignWithMargins = True
      Left = 328
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actprint
      Align = alLeft
      Caption = #1670#1575#1662
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 85
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSort
      Align = alLeft
      Caption = #1578#1585#1578#1610#1576
      TabOrder = 4
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 166
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSearch_
      Align = alLeft
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 5
    end
    object BitBtn9: TBitBtn
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 75
      Height = 27
      Margins.Top = 6
      Margins.Bottom = 6
      Action = actSendToExcel
      Align = alLeft
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      TabOrder = 6
    end
  end
  inherited Panel2: TPanel
    Width = 841
    ExplicitWidth = 841
    DesignSize = (
      841
      53)
    inherited ImgTemplate: TImage
      Left = 813
      ExplicitLeft = 750
    end
    inherited lblCaption: TLabel
      Left = 733
      ExplicitLeft = 733
    end
    inherited lblBaseDate: TLabel
      Left = 383
      ExplicitLeft = 384
    end
  end
  inherited Panel3: TPanel
    Width = 841
    Height = 565
    ExplicitWidth = 841
    ExplicitHeight = 565
    object PageControl1: TPageControl
      Left = 2
      Top = 202
      Width = 837
      Height = 361
      ActivePage = TabSheet4
      Align = alBottom
      MultiLine = True
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = #1603#1606#1578#1585#1604#1607#1575#1610' '#1601#1585#1605
        DesignSize = (
          829
          315)
        object Label34: TLabel
          Left = 61
          Top = 114
          Width = 98
          Height = 13
          Caption = #1581#1583#1575#1603#1579#1585' '#1585#1603#1608#1585#1583' '#1583#1585' Detail'
          FocusControl = DBEdit22
        end
        object Label97: TLabel
          Left = 194
          Top = 9
          Width = 40
          Height = 13
          Caption = #1578#1575#1585#1610#1582' '#1670#1603
        end
        object Label106: TLabel
          Left = 197
          Top = 173
          Width = 77
          Height = 13
          Caption = #1603#1606#1578#1585#1604' '#1588#1605#1575#1585#1607' '#1670#1603
        end
        object Label2: TLabel
          Left = 781
          Top = 146
          Width = 30
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1583#1585' '#1608#1580#1607
          FocusControl = DBEdit22
          ExplicitLeft = 718
        end
        object lbl2: TLabel
          Left = 582
          Top = 34
          Width = 75
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1602#1583#1605' '#1608' '#1578#1575#1612#1582#1585' '#1578#1575#1585#1610#1582
          ExplicitLeft = 519
        end
        object Label84: TLabel
          Left = 196
          Top = 32
          Width = 105
          Height = 13
          Caption = #1603#1606#1578#1585#1604' '#1608#1590#1593#1610#1578' '#1575#1591#1604#1575#1593#1575#1578' '
        end
        object Label134: TLabel
          Left = 196
          Top = 84
          Width = 155
          Height = 13
          Caption = ' '#1575#1591#1604#1575#1593#1575#1578'  '#1576#1585' '#1575#1587#1575#1587' '#1603#1583' '#1603#1575#1585#1576#1585' '#1603#1606#1578#1585#1604' '
        end
        object dbchkDetailNoteVisible: TDBCheckBox
          Left = 680
          Top = 7
          Width = 131
          Height = 17
          Alignment = taLeftJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1578#1608#1590#1610#1581#1575#1578' '#1670#1603' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
          DataField = 'DetailNoteVisible'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbchkNoteVisible: TDBCheckBox
          Left = 692
          Top = 32
          Width = 119
          Height = 17
          Alignment = taLeftJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1578#1608#1590#1610#1581#1575#1578' '#1606#1605#1575#1610#1588' '#1588#1608#1583'.'#8207
          DataField = 'NoteVisible'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbchkValueVisible: TDBCheckBox
          Left = 700
          Top = 57
          Width = 111
          Height = 17
          Alignment = taLeftJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1570#1610#1575' '#1605#1576#1604#1594' '#1606#1605#1575#1610#1588' '#1588#1608#1583'.'#8207
          DataField = 'ValueVisible'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbchkCheckEntity: TDBCheckBox
          Left = 596
          Top = 87
          Width = 215
          Height = 14
          Alignment = taLeftJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1570#1610#1575' '#1586#1605#1575#1606' '#1579#1576#1578' '#1662#1585#1583#1575#1582#1578#1607#1575#1610' '#1605#1608#1580#1608#1583#1610' '#1603#1606#1578#1585#1604' '#1588#1608#1583'.'#8207
          DataField = 'CheckEntity'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbchkAutoStateChange: TDBCheckBox
          Left = 378
          Top = 57
          Width = 143
          Height = 17
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1570#1610#1575' '#1576#1593#1583' '#1575#1586' '#1670#1575#1662' '#1602#1591#1593#1610' '#1588#1608#1583
          DataField = 'AutoStateChange'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 4
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBEdit22: TDBEdit
          Left = 5
          Top = 110
          Width = 44
          Height = 21
          DataField = 'MaxRowsPerForm'
          DataSource = srcFormTypes
          TabOrder = 5
        end
        object dbchkChangeFormNo_DateActive: TDBCheckBox
          Left = 3
          Top = 57
          Width = 180
          Height = 17
          BiDiMode = bdRightToLeft
          Caption = #1588#1605#1575#1585#1607' '#1608' '#1578#1575#1585#1610#1582' '#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588' '#1576#1575#1588#1583
          DataField = 'ChangeFormNo_DateActive'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 6
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object CmbCheckDateActive: TDBComboBox
          Left = 5
          Top = 5
          Width = 185
          Height = 21
          DataField = 'CheckDateActive'
          DataSource = srcFormTypes
          Items.Strings = (
            #1606#1605#1575#1610#1588' '#1606#1588#1608#1583
            #1606#1605#1575#1610#1588' '#1588#1608#1583
            #1606#1605#1575#1610#1588' '#1588#1608#1583' '#1576#1583#1608#1606' '#1603#1606#1578#1585#1604)
          TabOrder = 7
        end
        object cmbSerialCheckActive: TDBComboBox
          Left = 5
          Top = 169
          Width = 185
          Height = 21
          DataField = 'SerialCheckActive'
          DataSource = srcFormTypes
          Items.Strings = (
            #1606#1583#1575#1585#1583
            #1601#1602#1591' '#1662#1610#1594#1575#1605' '#1583#1607#1583
            #1662#1610#1594#1575#1605' '#1583#1607#1583'.'#1608' '#1575#1586' '#1579#1576#1578' '#1580#1604#1608#1711#1610#1585#1610' '#1603#1606#1583)
          TabOrder = 8
        end
        object dbchkCalcCheckDateOfLookUpsAmount1: TDBCheckBox
          Left = 418
          Top = 171
          Width = 393
          Height = 17
          Alignment = taLeftJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = 
            #1605#1581#1575#1587#1576#1607' '#1578#1575#1585#1610#1582' '#1587#1585#1585#1587#1610#1583' '#1670#1603' '#1575#1586' '#1605#1602#1583#1575#1585'1 '#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578'('#1606#1608#1593' '#1583#1585#1610#1575#1601#1578'/'#1662#1585#1583#1575#1582#1578') ' +
            #1575#1606#1578#1582#1575#1576' '#1588#1583#1607
          DataField = 'CalcCheckDateOfLookUpsAmount1'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 9
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object cmbCheckFor_4Print: TDBComboBox
          Left = 378
          Top = 140
          Width = 400
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'CheckFor_4Print'
          DataSource = srcFormTypes
          Items.Strings = (
            #1594#1610#1585' '#1601#1593#1575#1604
            ' '#1576#1585#1575#1610' '#1670#1575#1662' '#1670#1603' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
            ' '#1581#1575#1589#1604' ('#1606#1575#1605' '#1605#1588#1578#1585#1610' '#1608' '#1578#1608#1590#1610#1581#1575#1578') '#1583#1585' '#1670#1575#1662' '#1576#1575#1588#1583'.'#8207
            #1601#1593#1575#1604
            ' '#1581#1575#1589#1604' ('#1578#1608#1590#1610#1581#1575#1578' '#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610' ) '#1583#1585' '#1670#1575#1662' '#1576#1575#1588#1583'.'#8207)
          TabOrder = 10
        end
        object dbchkTransmittalActive: TDBCheckBox
          Left = 378
          Top = 7
          Width = 153
          Height = 17
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1575#1585#1587#1575#1604' '#1575#1591#1604#1575#1593#1575#1578' '#1601#1593#1575#1604' '#1576#1575#1588#1583
          DataField = 'TransmittalActive'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 11
          ValueChecked = '1'
          ValueUnchecked = '0'
          WordWrap = True
        end
        object GroupBox3: TGroupBox
          Left = 0
          Top = 207
          Width = 821
          Height = 40
          Align = alCustom
          Anchors = [akLeft, akTop, akRight]
          Caption = '   '#1603#1606#1578#1585#1604' '#1576#1585' '#1575#1587#1575#1587' '#1578#1575#1585#1610#1582'  '
          TabOrder = 12
          object Label31: TLabel
            AlignWithMargins = True
            Left = 656
            Top = 18
            Width = 160
            Height = 17
            Align = alRight
            Caption = '  '#1578#1593#1583#1575#1583' '#1585#1608#1586' '#1605#1607#1604#1578' '#1576#1585#1575#1610' '#1608#1610#1585#1575#1610#1588' '#1601#1585#1605'  '
            ExplicitHeight = 13
          end
          object edtDay4Edit: TDBEdit
            Left = 571
            Top = 15
            Width = 82
            Height = 23
            Align = alRight
            DataField = 'Day4Edit'
            DataSource = srcFormTypes
            TabOrder = 0
            ExplicitHeight = 21
          end
        end
        object cmbPriorityFormDate: TDBComboBox
          Left = 378
          Top = 30
          Width = 200
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'PriorityFormDate'
          DataSource = srcFormTypes
          Items.Strings = (
            #1594#1610#1585' '#1601#1593#1575#1604
            #1601#1585#1605' '#1594#1610#1585' '#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588
            #1601#1602#1591' '#1578#1575#1585#1610#1582' '#1594#1610#1585' '#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588)
          TabOrder = 13
        end
        object CmbAutoStateChange: TDBComboBox
          Left = 5
          Top = 30
          Width = 185
          Height = 21
          AutoDropDown = True
          Color = clWhite
          DataField = 'AutoStateChange'
          DataSource = srcFormTypes
          Items.Strings = (
            '0- '
            '1-'#1576#1593#1583' '#1575#1586' '#1670#1575#1662' '#1602#1591#1593#1610' '#1588#1608#1583
            '2-'#1605#1608#1602#1578' '#1576#1575#1588#1583
            '3-'#1579#1576#1578' '#1575#1608#1604#1740#1607' '#1662#1740#1588' '#1606#1608#1740#1587' '#1576#1575#1588#1583
            '4-'#1579#1576#1578' '#1575#1608#1604#1740#1607' '#1605#1600#1600#1600#1600#1608#1602#1600#1600#1600#1578' '#1576#1575#1588#1583)
          TabOrder = 14
        end
        object dbchkCheckNumberActive: TDBCheckBox
          Left = 378
          Top = 85
          Width = 132
          Height = 17
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1588#1605#1575#1585#1607' '#1670#1705' '#1606#1605#1575#1610#1588' '#1588#1608#1583'.'#8207
          DataField = 'CheckNumberActive'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 15
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbchkDefaultDateActive: TDBCheckBox
          Left = 378
          Top = 112
          Width = 169
          Height = 17
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1578#1575#1585#1610#1582' '#1580#1575#1606#1576#1610' '#1583#1585' '#1601#1585#1605#8207#1607#1575' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
          DataField = 'DefaultDateActive'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 16
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object cmbUserSecurityCheckActive: TDBComboBox
          Left = 5
          Top = 80
          Width = 185
          Height = 21
          DataField = 'UserSecurityCheckActive'
          DataSource = srcFormTypes
          Items.Strings = (
            ' '#1575#1591#1604#1575#1593#1575#1578'  '#1576#1585' '#1575#1587#1575#1587' '#1603#1583' '#1603#1575#1585#1576#1585' '#1603#1606#1578#1585#1604' '#1606#1588#1608#1583
            #1705#1606#1578#1585#1604' '#1583#1585' '#1586#1605#1575#1606' '#1579#1576#1578
            #1705#1606#1578#1585#1604' '#1583#1585' '#1586#1605#1575#1606' '#1711#1586#1575#1585#1588
            #1607#1585#1583#1608)
          TabOrder = 17
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1606#1605#1575#1610#1588
        ImageIndex = 1
        object PageControl5: TPageControl
          Left = 0
          Top = 0
          Width = 829
          Height = 315
          ActivePage = TabSheet22
          Align = alClient
          TabOrder = 0
          object TabSheet22: TTabSheet
            Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
            object Label11: TLabel
              Left = 653
              Top = 13
              Width = 89
              Height = 13
              Alignment = taRightJustify
              BiDiMode = bdRightToLeft
              Caption = #1593#1606#1608#1575#1606' '#1603#1583' '#1605#1588#1578#1585#1610' 1'
              ParentBiDiMode = False
            end
            object Label13: TLabel
              Left = 653
              Top = 42
              Width = 89
              Height = 13
              Alignment = taRightJustify
              BiDiMode = bdRightToLeft
              Caption = #1593#1606#1608#1575#1606' '#1603#1583' '#1605#1588#1578#1585#1610' 2'
              ParentBiDiMode = False
            end
            object Label26: TLabel
              Left = 270
              Top = 13
              Width = 126
              Height = 13
              Caption = #1605#1581#1604' '#1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1605#1603#1610
            end
            object Label27: TLabel
              Left = 270
              Top = 42
              Width = 124
              Height = 13
              Alignment = taRightJustify
              BiDiMode = bdRightToLeft
              Caption = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1605#1603#1610
              ParentBiDiMode = False
            end
            object Label35: TLabel
              Left = 653
              Top = 120
              Width = 95
              Height = 13
              Caption = #1606#1575#1605' '#1605#1588#1578#1585#1610' '#1583#1585' Detail'
              FocusControl = edtCustomer2OnDetailLable
            end
            object Label1: TLabel
              Left = 653
              Top = 69
              Width = 89
              Height = 13
              Alignment = taRightJustify
              BiDiMode = bdRightToLeft
              Caption = #1593#1606#1608#1575#1606' '#1603#1583' '#1605#1588#1578#1585#1610' 3'
              ParentBiDiMode = False
            end
            object Label118: TLabel
              Left = 653
              Top = 212
              Width = 67
              Height = 13
              Caption = 'OrderByFields'
              FocusControl = edtOrderByFields
            end
            object Label81: TLabel
              Left = 270
              Top = 69
              Width = 130
              Height = 13
              Alignment = taRightJustify
              BiDiMode = bdRightToLeft
              Caption = #1593#1606#1608#1575#1606' '#1576#1580#1575#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1605#1603#1610'2'
              ParentBiDiMode = False
            end
            object Label82: TLabel
              Left = 270
              Top = 96
              Width = 131
              Height = 13
              Alignment = taRightJustify
              BiDiMode = bdRightToLeft
              Caption = #1593#1606#1608#1575#1606' '#1576#1585#1575#1610' '#1605#1576#1604#1594' SubAmount'
              ParentBiDiMode = False
            end
            object Label109: TLabel
              Left = 653
              Top = 252
              Width = 92
              Height = 13
              Caption = 'OrderByFields Item'
              FocusControl = edtOrderByFieldsItem
            end
            object Label120: TLabel
              Left = 653
              Top = 95
              Width = 89
              Height = 13
              Alignment = taRightJustify
              BiDiMode = bdRightToLeft
              Caption = #1593#1606#1608#1575#1606' '#1603#1583' '#1605#1588#1578#1585#1610' 4'
              ParentBiDiMode = False
            end
            object DBEdit8: TDBEdit
              Left = 438
              Top = 9
              Width = 209
              Height = 21
              DataField = 'Customer1Label'
              DataSource = srcFormTypes
              TabOrder = 0
            end
            object DBEdit9: TDBEdit
              Left = 438
              Top = 38
              Width = 209
              Height = 21
              DataField = 'Customer2Lable'
              DataSource = srcFormTypes
              TabOrder = 1
            end
            object cmbAidInfoActive: TDBComboBox
              Left = 45
              Top = 9
              Width = 209
              Height = 21
              DataField = 'AidInfoActive'
              DataSource = srcFormTypes
              Items.Strings = (
                #1606#1583#1575#1585#1583
                'Master'
                'Details'
                'Master&Detail'
                'Master '#1608' '#1662#1610#1588' '#1601#1585#1590' '#1575#1586'  Master&Detail ')
              TabOrder = 2
            end
            object DBEdit16: TDBEdit
              Left = 45
              Top = 38
              Width = 209
              Height = 21
              DataField = 'AidInfoCaption'
              DataSource = srcFormTypes
              TabOrder = 3
            end
            object edtCustomer2OnDetailLable: TDBEdit
              Left = 438
              Top = 116
              Width = 209
              Height = 21
              DataField = 'Customer2OnDetailLable'
              DataSource = srcFormTypes
              TabOrder = 4
            end
            object dbchkUpholdActive: TDBCheckBox
              Left = 3
              Top = 160
              Width = 251
              Height = 17
              Alignment = taLeftJustify
              BiDiMode = bdLeftToRight
              Caption = #1606#1608#1593' '#1578#1575#1610#1610#1583'/'#1578#1601#1705#1610#1705' '#1662#1585#1583#1575#1582#1578' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207'('#1578#1601#1603#1610#1603' '#1662#1585#1583#1575#1582#1578')'
              DataField = 'UpholdActive'
              DataSource = srcFormTypes
              ParentBiDiMode = False
              TabOrder = 5
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object edtCustomer3Lable: TDBEdit
              Left = 438
              Top = 65
              Width = 209
              Height = 21
              DataField = 'Customer3Lable'
              DataSource = srcFormTypes
              TabOrder = 6
            end
            object GroupBox2: TGroupBox
              Left = 276
              Top = 147
              Width = 371
              Height = 55
              Caption = #1603#1583' '#1607#1575#1610' '#1602#1575#1576#1604' '#1575#1585#1578#1576#1575#1591' '#1575#1606#1576#1575#1585
              TabOrder = 7
              object SpeedButton2: TSpeedButton
                Left = 16
                Top = 20
                Width = 23
                Height = 22
                Caption = '...'
                OnClick = SpeedButton2Click
              end
              object edtRelatedReciptTypes: TDBEdit
                Left = 48
                Top = 21
                Width = 313
                Height = 21
                DataField = 'RelatedReciptTypes'
                DataSource = srcFormTypes
                TabOrder = 0
              end
            end
            object dbchkAccountNumberNewActive: TDBCheckBox
              Left = 69
              Top = 210
              Width = 155
              Height = 17
              Alignment = taLeftJustify
              BiDiMode = bdLeftToRight
              Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1588#1576#1575' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
              DataField = 'AccountNumberNewActive'
              DataSource = srcFormTypes
              ParentBiDiMode = False
              TabOrder = 8
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object edtOrderByFields: TDBEdit
              Left = 319
              Top = 208
              Width = 328
              Height = 21
              BiDiMode = bdLeftToRight
              DataField = 'OrderByFields'
              DataSource = srcFormTypes
              ParentBiDiMode = False
              TabOrder = 9
            end
            object edtAidInfo2NoCaption: TDBEdit
              Left = 45
              Top = 65
              Width = 209
              Height = 21
              DataField = 'AidInfo2NoCaption'
              DataSource = srcFormTypes
              TabOrder = 10
            end
            object edtSubAmountCaption: TDBEdit
              Left = 45
              Top = 92
              Width = 209
              Height = 21
              DataField = 'SubAmountCaption'
              DataSource = srcFormTypes
              TabOrder = 11
            end
            object edtOrderByFieldsItem: TDBEdit
              Left = 319
              Top = 248
              Width = 328
              Height = 21
              BiDiMode = bdLeftToRight
              DataField = 'OrderByFieldsItem'
              DataSource = srcFormTypes
              ParentBiDiMode = False
              TabOrder = 12
            end
            object edtCustomer4Lable: TDBEdit
              Left = 438
              Top = 91
              Width = 209
              Height = 21
              DataField = 'Customer4Lable'
              DataSource = srcFormTypes
              TabOrder = 13
            end
          end
          object TabSheet23: TTabSheet
            Caption = #1605#1608#1590#1608#1593' '#1610#1575' '#1606#1608#1593' '#1583#1585#1610#1575#1601#1578'/'#1662#1585#1583#1575#1582#1578
            ImageIndex = 1
            object Label43: TLabel
              Left = 553
              Top = 28
              Width = 129
              Height = 13
              Caption = #1605#1608#1590#1608#1593' '#1610#1575' '#1606#1608#1593' '#1583#1585#1610#1575#1601#1578'/'#1662#1585#1583#1575#1582#1578
            end
            object Label100: TLabel
              Left = 553
              Top = 60
              Width = 117
              Height = 13
              Caption = #1587#1585#1610#1575#1604' '#1606#1608#1593' '#1583#1585#1610#1575#1601#1578'/'#1662#1585#1583#1575#1582#1578
              FocusControl = edtFormTopicSerial
            end
            object Label102: TLabel
              Left = 553
              Top = 92
              Width = 134
              Height = 13
              Caption = #1587#1585#1610#1575#1604' '#1605#1608#1590#1608#1593' '#1583#1585#1610#1575#1601#1578'/'#1662#1585#1583#1575#1582#1578
              FocusControl = edtFormPaySerial
            end
            object CmbPay_Topic_Active: TDBComboBox
              Left = 160
              Top = 29
              Width = 387
              Height = 21
              DataField = 'Pay_Topic_Active'
              DataSource = srcFormTypes
              Items.Strings = (
                #1606#1583#1575#1585#1583
                #1605#1608#1590#1608#1593' '#1583#1585#1610#1575#1601#1578'/'#1662#1585#1583#1575#1582#1578'1  '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
                #1605#1608#1590#1608#1593' '#1583#1585#1610#1575#1601#1578'/'#1662#1585#1583#1575#1582#1578'2  '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
                #1605#1608#1590#1608#1593' '#1583#1585#1610#1575#1601#1578'/'#1662#1585#1583#1575#1582#1578'1'#1608'2  '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
                #1605#1608#1590#1608#1593' '#1583#1585#1610#1575#1601#1578'/'#1662#1585#1583#1575#1582#1578'2 '#1583#1585' '#1601#1585#1605' '#1608' '#1670#1603#1607#1575#1610' '#1601#1585#1605' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
                #1605#1608#1590#1608#1593' '#1583#1585#1740#1575#1601#1578' '#1608' '#1662#1585#1583#1575#1582#1578' '#1585#1575' '#1601#1602#1591' '#1583#1585' Detail '#1606#1605#1575#1740#1588' '#1583#1607#1583'.')
              TabOrder = 0
            end
            object edtFormTopicSerial: TDBEdit
              Left = 160
              Top = 88
              Width = 387
              Height = 21
              DataField = 'FormTopicSerial'
              DataSource = srcFormTypes
              TabOrder = 1
            end
            object edtFormPaySerial: TDBEdit
              Left = 160
              Top = 56
              Width = 387
              Height = 21
              DataField = 'FormPaySerial'
              DataSource = srcFormTypes
              TabOrder = 2
            end
          end
          object TabSheet25: TTabSheet
            Caption = #1603#1606#1578#1585#1604' '#1607#1575#1610' '#1601#1585#1608#1588
            ImageIndex = 2
            DesignSize = (
              821
              287)
            object dbchkSellsEmporiumActive: TDBCheckBox
              Left = 545
              Top = 25
              Width = 148
              Height = 17
              Anchors = [akTop, akRight]
              BiDiMode = bdRightToLeft
              Caption = #1603#1583' '#1605#1585#1603#1586' '#1601#1585#1608#1588' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
              DataField = 'SellsEmporiumActive'
              DataSource = srcFormTypes
              ParentBiDiMode = False
              TabOrder = 0
              ValueChecked = '1'
              ValueUnchecked = '0'
              WordWrap = True
            end
            object dbchkSellsMethodActive: TDBCheckBox
              Left = 546
              Top = 57
              Width = 147
              Height = 17
              Anchors = [akTop, akRight]
              BiDiMode = bdRightToLeft
              Caption = #1603#1583' '#1606#1581#1608#1607' '#1601#1585#1608#1588' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
              DataField = 'SellsMethodActive'
              DataSource = srcFormTypes
              ParentBiDiMode = False
              TabOrder = 1
              ValueChecked = '1'
              ValueUnchecked = '0'
              WordWrap = True
            end
          end
          object TabSheet20: TTabSheet
            Caption = #1605#1583#1604'/'#1575#1605#1608#1575#1604
            ImageIndex = 3
            object GroupBox6: TGroupBox
              Left = 385
              Top = 24
              Width = 328
              Height = 179
              Caption = #1601#1593#1575#1604' '#1705#1585#1583#1606' '#1605#1583#1604' /'#1575#1605#1608#1575#1604' '#1608' '#1603#1583#1610#1606#1711' '#1603#1575#1604#1575#1610' '#1602#1575#1576#1604' '#1606#1605#1575#1610#1588
              TabOrder = 0
              object chklstProcedureKindList: TCheckListBox
                Left = 2
                Top = 15
                Width = 324
                Height = 162
                Hint = 'chklstProcedureKindList'
                Align = alClient
                ItemHeight = 13
                TabOrder = 0
                OnClick = ChkCustomerKind1Click
              end
            end
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = #1581#1587#1575#1576#1583#1575#1585#1610
        ImageIndex = 3
        object PageControl3: TPageControl
          Left = 0
          Top = 0
          Width = 829
          Height = 315
          ActivePage = TabSheet11
          Align = alClient
          TabOrder = 0
          object TabSheet11: TTabSheet
            Caption = #1606#1608#1593#8207#1578#1575#1579#1610#1585#1576#1585#1711#1586#1575#1585#1588#1575#1578
            object Label7: TLabel
              Left = 542
              Top = 14
              Width = 139
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1608#1593' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1605#1588#1578#1585#1610' 1'
            end
            object Label8: TLabel
              Left = 542
              Top = 43
              Width = 139
              Height = 13
              Alignment = taRightJustify
              Caption = #1578#1588#1582#1610#1589' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1605#1588#1578#1585#1610' 1'
            end
            object Label9: TLabel
              Left = 542
              Top = 72
              Width = 136
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1608#1593' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1605#1588#1578#1585#1610'2'
            end
            object Label104: TLabel
              Left = 542
              Top = 118
              Width = 165
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1608#1593' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1605#1588#1578#1585#1610' Details'
            end
            object Label105: TLabel
              Left = 542
              Top = 147
              Width = 165
              Height = 13
              Alignment = taRightJustify
              Caption = #1578#1588#1582#1610#1589' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1605#1588#1578#1585#1610' Details'
            end
            object cmbCustomer1DocType: TDBComboBox
              Left = 209
              Top = 10
              Width = 324
              Height = 21
              DataField = 'Customer1DocType'
              DataSource = srcFormTypes
              Items.Strings = (
                '00-'#1606#1583#1575#1585#1583' '
                '01-'#1589#1606#1583#1608#1602
                '02-'#1576#1575#1606#1603
                '03-'#1575#1587#1606#1575#1583' '#1583#1585' '#1580#1585#1610#1575#1606' '#1608#1589#1608#1604' '
                '04-'#1575#1587#1606#1575#1583' '#1583#1585#1610#1575#1601#1578#1606#1610
                '05-'#13#1575#1587#1606#1575#1583' '#1578#1590#1605#1610#1606#1610
                '06-'#1575#1587#1606#1575#1583' '#1662#1585#1583#1575#1582#1578#1606#1610' '
                '07-'#1583#1585#1570#1605#1583
                '08-'#1583#1585#1570#1605#1583' '#1583#1585' '#1580#1585#1610#1575#1606' '#1608#1589#1608#1604' '
                '09-'#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610
                '10-'#1581#1587#1575#1576' '#1605#1588#1578#1585#1610' '
                '11-'#1575#1587#1606#1575#1583' '#1608#1575#1582#1608#1575#1587#1578#1610
                '12-'#1575#1587#1606#1575#1583' '#1576#1585#1711#1588#1578#1610
                '13-'#1575#1587#1606#1575#1583' '#1662#1585#1583#1575#1582#1578#1606#1610' '#1608' '#1576#1575#1606#1603
                '14-'#1576#1575#1606#1603' - '#1670#1603#1607#1575#1610' '#1605#1583#1578' '#1583#1575#1585
                '15-'#1575#1587#1606#1575#1583' '#1662#1585#1583#1575#1582#1578#1610' '#1601#1602#1591' '#1670#1603#1607#1575#1610' '#1605#1583#1578' '#1583#1575#1585
                '16-'#1578#1587#1607#1610#1604#1575#1578' '#1583#1585#1610#1600#1575#1601#1600#1578#1610
                '17-'#1578#1587#1607#1610#1604#1575#1578' '#1662#1585#1583#1575#1582#1578#1610)
              TabOrder = 0
            end
            object cmbCustomer2DocType: TDBComboBox
              Left = 209
              Top = 68
              Width = 324
              Height = 21
              DataField = 'Customer2DocType'
              DataSource = srcFormTypes
              Items.Strings = (
                '')
              TabOrder = 1
            end
            object cmbBedBes: TDBComboBox
              Left = 209
              Top = 39
              Width = 324
              Height = 21
              DataField = 'BedBes'
              DataSource = srcFormTypes
              Items.Strings = (
                #1576#1587#1578#1575#1606#1603#1575#1585
                #1576#1583#1607#1603#1575#1585)
              TabOrder = 2
            end
            object cmbCustomerDetailsDocType: TDBComboBox
              Left = 209
              Top = 114
              Width = 324
              Height = 21
              DataField = 'CustomerDetailsDocType'
              DataSource = srcFormTypes
              TabOrder = 3
            end
            object cmbBedBesDetails: TDBComboBox
              Left = 209
              Top = 143
              Width = 324
              Height = 21
              DataField = 'BedBesDetails'
              DataSource = srcFormTypes
              Items.Strings = (
                #1606#1583#1575#1585#1583
                #1576#1583#1607#1603#1575#1585
                #1576#1587#1578#1575#1606#1603#1575#1585)
              TabOrder = 4
            end
          end
          object TabSheet12: TTabSheet
            Caption = #1581#1587#1575#1576#1583#1575#1585#1610
            ImageIndex = 1
            object PageControl4: TPageControl
              Left = 0
              Top = 0
              Width = 821
              Height = 287
              ActivePage = TabSheet30
              Align = alClient
              TabOrder = 0
              object TabSheet24: TTabSheet
                Caption = '...'#1589#1583#1608#1585
                object Label15: TLabel
                  Left = 234
                  Top = 46
                  Width = 159
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1605#1581#1604#8207#1575#1587#1578#1601#1575#1583#1607#8207#1587#1585#1601#1589#1604#1607#1575#1610#8207#1581#1587#1575#1576#1583#1575#1585#1610
                end
                object Label21: TLabel
                  Left = 231
                  Top = 85
                  Width = 89
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1662#1610#1588' '#1601#1585#1590' '#1606#1608#1593' '#1587#1606#1583
                  FocusControl = edtDocTypeCode
                end
                object lbl4: TLabel
                  Left = 231
                  Top = 123
                  Width = 202
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1593#1606#1608#1575#1606' '#1705#1605#1705#1740' '#1580#1607#1578' '#1578#1588#1582#1740#1589' '#1591#1585#1601' '#1581#1587#1575#1576#1583#1575#1585#1740
                  FocusControl = edtRelating4Help
                end
                object Label117: TLabel
                  Left = 234
                  Top = 162
                  Width = 122
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1608#1590#1593#1740#1578' '#1601#1585#1605' '#1576#1585#1575#1740' '#1579#1576#1578' '#1587#1606#1583
                end
                object DBCheckBox17: TDBCheckBox
                  Left = 51
                  Top = 6
                  Width = 254
                  Height = 18
                  Alignment = taLeftJustify
                  Caption = #1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1576#1585' '#1585#1608#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1610#1606' '#1601#1585#1605' '#1589#1575#1583#1585' '#1588#1608#1583'.'#8207
                  DataField = 'MakeDoc'
                  DataSource = srcFormTypes
                  TabOrder = 0
                  ValueChecked = '1'
                  ValueUnchecked = '0'
                  WordWrap = True
                end
                object cmbAccountRelationPosition: TDBComboBox
                  Left = 47
                  Top = 42
                  Width = 179
                  Height = 21
                  DataField = 'AccountRelationPosition'
                  DataSource = srcFormTypes
                  Items.Strings = (
                    #1607#1610#1670#1603#1583#1575#1605
                    'Detail'
                    'Master&Detail'
                    'Master')
                  TabOrder = 1
                end
                object grpAcc: TGroupBox
                  Left = 454
                  Top = 11
                  Width = 288
                  Height = 177
                  Align = alCustom
                  Anchors = [akTop, akRight]
                  Caption = '  '#1603#1583#1607#1575#1610' '#1581#1587#1575#1576' '#1601#1593#1575#1604'  '
                  TabOrder = 2
                  object DBCheckBox3: TLabel
                    Left = 195
                    Top = 29
                    Width = 31
                    Height = 13
                    BiDiMode = bdRightToLeft
                    Caption = #1581#1587#1575#1576
                    ParentBiDiMode = False
                    WordWrap = True
                  end
                  object DBCheckBox5: TLabel
                    Left = 202
                    Top = 56
                    Width = 37
                    Height = 13
                    BiDiMode = bdRightToLeft
                    Caption = #1578#1601#1589#1610#1604#1610
                    ParentBiDiMode = False
                  end
                  object DBCheckBox6: TLabel
                    Left = 218
                    Top = 83
                    Width = 43
                    Height = 13
                    BiDiMode = bdRightToLeft
                    Caption = #1578#1601#1589#1610#1604#1610'2'
                    ParentBiDiMode = False
                  end
                  object DBCheckBox7: TLabel
                    Left = 218
                    Top = 110
                    Width = 43
                    Height = 13
                    BiDiMode = bdRightToLeft
                    Caption = #1578#1601#1589#1610#1604#1610'3'
                    ParentBiDiMode = False
                  end
                  object DBCheckBox8: TLabel
                    Left = 218
                    Top = 137
                    Width = 43
                    Height = 13
                    BiDiMode = bdRightToLeft
                    Caption = #1578#1601#1589#1610#1604#1610'4'
                    ParentBiDiMode = False
                  end
                  object cmbTopicCodeActive: TDBComboBox
                    Left = 16
                    Top = 25
                    Width = 178
                    Height = 21
                    BiDiMode = bdRightToLeft
                    DataField = 'TopicCodeActive'
                    DataSource = srcFormTypes
                    Items.Strings = (
                      #1594#1740#1585' '#1601#1593#1575#1604
                      #1607#1585#1583#1608'(Master/Detail)'
                      'Master'
                      'Detail')
                    ParentBiDiMode = False
                    ParentColor = True
                    TabOrder = 0
                  end
                  object cmbDetailCodeActive: TDBComboBox
                    Left = 16
                    Top = 52
                    Width = 178
                    Height = 21
                    BiDiMode = bdRightToLeft
                    DataField = 'DetailCodeActive'
                    DataSource = srcFormTypes
                    ParentBiDiMode = False
                    ParentColor = True
                    TabOrder = 1
                  end
                  object cmbCTopicCode1Active: TDBComboBox
                    Left = 16
                    Top = 79
                    Width = 178
                    Height = 21
                    BiDiMode = bdRightToLeft
                    DataField = 'CTopicCode1Active'
                    DataSource = srcFormTypes
                    ParentBiDiMode = False
                    ParentColor = True
                    TabOrder = 2
                  end
                  object cmbCTopicCode2Active: TDBComboBox
                    Left = 16
                    Top = 106
                    Width = 178
                    Height = 21
                    BiDiMode = bdRightToLeft
                    DataField = 'CTopicCode2Active'
                    DataSource = srcFormTypes
                    ParentBiDiMode = False
                    ParentColor = True
                    TabOrder = 3
                  end
                  object cmbCTopicCode3Active: TDBComboBox
                    Left = 16
                    Top = 133
                    Width = 178
                    Height = 21
                    BiDiMode = bdRightToLeft
                    DataField = 'CTopicCode3Active'
                    DataSource = srcFormTypes
                    Items.Strings = (
                      #1594#1740#1585' '#1601#1593#1575#1604
                      #1607#1585#1583#1608
                      'Master'
                      'Detials')
                    ParentBiDiMode = False
                    ParentColor = True
                    TabOrder = 4
                  end
                end
                object edtDocTypeCode: TDBEdit
                  Left = 47
                  Top = 81
                  Width = 179
                  Height = 21
                  DataField = 'DocTypeCode'
                  DataSource = srcFormTypes
                  TabOrder = 3
                end
                object edtRelating4Help: TDBEdit
                  Left = 47
                  Top = 119
                  Width = 179
                  Height = 21
                  DataField = 'Relating4Help'
                  DataSource = srcFormTypes
                  TabOrder = 4
                end
                object cmbFormStateDefault4Doc: TDBComboBox
                  Left = 47
                  Top = 158
                  Width = 179
                  Height = 21
                  DataField = 'FormStateDefault4Doc'
                  DataSource = srcFormTypes
                  Items.Strings = (
                    #1607#1605#1607' '#1608#1590#1593#1740#1578' '#1607#1575' '#1575#1606#1580#1575#1605' '#1588#1608#1583
                    #1602#1591#1593#1610
                    '2'
                    '3'
                    '4'
                    '5'
                    '6'
                    '7'
                    '8'
                    '9'
                    #1576#1575#1591#1604#1607
                    #1585#1586#1585#1608
                    #1662#1740#1588' '#1606#1608#1740#1587)
                  TabOrder = 5
                end
                object dbchkSeparationDoc: TDBCheckBox
                  Left = 51
                  Top = 197
                  Width = 254
                  Height = 18
                  Alignment = taLeftJustify
                  Caption = #1576#1587#1578#1575#1606#1705#1575#1585' '#1578#1601#1705#1740#1705' '#1662#1585#1583#1575#1582#1578' '#1576#1589#1608#1585#1578' '#1578#1601#1705#1740#1705#1740' '#1579#1576#1578' '#1588#1608#1583
                  DataField = 'SeparationDoc'
                  DataSource = srcFormTypes
                  TabOrder = 6
                  ValueChecked = '1'
                  ValueUnchecked = '0'
                  WordWrap = True
                end
              end
              object TabSheet13: TTabSheet
                Caption = #1662#1610#1588' '#1601#1585#1590' '#1603#1583#1610#1606#1711' '#1576#1583#1607#1603#1575#1585
                object Label47: TLabel
                  Left = 632
                  Top = 13
                  Width = 31
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1581#1587#1575#1576
                end
                object Label48: TLabel
                  Left = 632
                  Top = 47
                  Width = 37
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1578#1601#1589#1610#1604#1610
                end
                object Label49: TLabel
                  Left = 632
                  Top = 80
                  Width = 43
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1578#1601#1589#1610#1604#1610'2'
                end
                object Label50: TLabel
                  Left = 632
                  Top = 114
                  Width = 43
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1578#1601#1589#1610#1604#1610'3'
                end
                object Label41: TLabel
                  Left = 632
                  Top = 181
                  Width = 114
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1603#1583' '#1605#1588#1578#1585#1610' '#1605#1608#1585#1583' '#1575#1587#1578#1601#1575#1583#1607
                end
                object Label95: TLabel
                  Left = 632
                  Top = 215
                  Width = 158
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1608#1585#1583' '#1575#1587#1578#1601#1575#1583#1607' '#1591#1585#1601' '#1576#1583#1607#1603#1575#1585
                end
                object Label28: TLabel
                  Left = 632
                  Top = 148
                  Width = 43
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1578#1601#1589#1610#1604#1610'4'
                end
                object Label125: TLabel
                  Left = 335
                  Top = 13
                  Width = 25
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1705#1583' '#1575#1585#1586
                end
                object Label126: TLabel
                  Left = 335
                  Top = 46
                  Width = 40
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1705#1583' '#1576#1608#1583#1580#1607
                end
                object Label127: TLabel
                  Left = 335
                  Top = 78
                  Width = 36
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1705#1583' '#1662#1585#1608#1688#1607
                end
                object Label128: TLabel
                  Left = 335
                  Top = 111
                  Width = 69
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1575#1591#1604#1575#1593#1575#1578' '#1705#1605#1705#1740
                end
                object CmbDefaultTopic_Bed: TDBComboBox
                  Left = 429
                  Top = 9
                  Width = 198
                  Height = 21
                  DataField = 'DefaultTopic_Bed'
                  DataSource = srcFormTypes
                  DropDownCount = 16
                  Items.Strings = (
                    '0-'#1606#1583#1575#1585#1583' '
                    '1-'#1603#1583' '#1581#1587#1575#1576
                    '2-'#1575#1587#1606#1575#1583' '#1583#1585' '#1580#1585#1610#1575#1606' '#1608#1589#1608#1604' '
                    '3-'#1575#1587#1606#1575#1583' '#1583#1585#1610#1575#1601#1578#1606#1610
                    '4-'#1575#1587#1606#1575#1583' '#1608#1575#1582#1608#1575#1587#1578#1610
                    '5-'#1575#1587#1606#1575#1583' '#1578#1590#1605#1610#1606#1610
                    '6-'#1575#1587#1606#1575#1583' '#1662#1585#1583#1575#1582#1578#1606#1610' '
                    '7-'#1575#1587#1606#1575#1583' '#1662#1585#1583#1575#1582#1578#1606#1610' '#1582#1575#1589
                    '8-'#1575#1587#1606#1575#1583' '#1662#1585#1583#1575#1582#1578#1606#1610' '#1608' '#1576#1575#1606#1603
                    '9-'#1603#1583' '#1581#1587#1575#1576' Forms'
                    '10-'#1603#1583' '#1581#1587#1575#1576' FormItems'
                    '11-'#1605#1608#1590#1608#1593' '#1583#1585#1610#1575#1601#1578' '#1608' '#1662#1585#1583#1575#1582#1578'1'
                    '12-'#1605#1608#1590#1608#1593' '#1583#1585#1610#1575#1601#1578' '#1608' '#1662#1585#1583#1575#1582#1578'2'
                    '13-'#1603#1583' '#1579#1575#1576#1578
                    '14-'#1605#1608#1590#1608#1593' '#1583#1585#1610#1575#1601#1578' '#1608' '#1662#1585#1583#1575#1582#1578'FormItems'
                    '15-'#1705#1583' '#1576#1608#1583#1580#1607)
                  TabOrder = 0
                end
                object CmbDefaultDetail_Bed: TDBComboBox
                  Left = 429
                  Top = 43
                  Width = 198
                  Height = 21
                  Color = clWhite
                  DataField = 'DefaultDetail_Bed'
                  DataSource = srcFormTypes
                  DropDownCount = 16
                  Items.Strings = (
                    '0-'#1606#1583#1575#1585#1583
                    '1-'#1575#1591#1604#1575#1593#1575#1578' '#1605#1588#1578#1585#1610#1575#1606
                    '2-'#1605#1608#1590#1608#1593' '#1583#1585#1610#1575#1601#1578' '#1608' '#1662#1585#1583#1575#1582#1578'1'
                    '3-'#1605#1608#1590#1608#1593' '#1583#1585#1610#1575#1601#1578' '#1608' '#1662#1585#1583#1575#1582#1578'2'
                    '4-Forms'
                    '5-FormItems'
                    '6-'#1603#1583' '#1579#1575#1576#1578
                    '7-'#1575#1587#1606#1575#1583' '#1662#1585#1583#1575#1582#1578#1606#1610' '#1608' '#1576#1575#1606#1603
                    '8-'#1705#1583' '#1576#1608#1583#1580#1607)
                  TabOrder = 1
                end
                object CmbDefaultCTopic_Bed: TDBComboBox
                  Left = 429
                  Top = 76
                  Width = 198
                  Height = 21
                  DataField = 'DefaultCTopic_Bed'
                  DataSource = srcFormTypes
                  DropDownCount = 16
                  Items.Strings = (
                    #1606#1583#1575#1585#1583
                    #1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606
                    #1605#1608#1590#1608#1593' '#1583#1585#1610#1575#1601#1578' '#1608' '#1662#1585#1583#1575#1582#1578'1'
                    #1605#1608#1590#1608#1593' '#1583#1585#1610#1575#1601#1578' '#1608' '#1662#1585#1583#1575#1582#1578'2'
                    'Forms'
                    'FormItems'
                    #1605#1588#1578#1585#1610
                    #1605#1588#1578#1585#1740'3'
                    #1605#1585#1705#1586' '#1601#1585#1608#1588)
                  TabOrder = 2
                end
                object CmbDefaultCTopic2_Bed: TDBComboBox
                  Left = 429
                  Top = 110
                  Width = 198
                  Height = 21
                  DataField = 'DefaultCTopic2_Bed'
                  DataSource = srcFormTypes
                  DropDownCount = 16
                  TabOrder = 3
                end
                object CmbCustCodeUse4Bed: TDBComboBox
                  Left = 131
                  Top = 177
                  Width = 496
                  Height = 21
                  DataField = 'CustCodeUse4Bed'
                  DataSource = srcFormTypes
                  DropDownCount = 16
                  Items.Strings = (
                    '0-'#1606#1583#1575#1585#1583
                    '1-Forms'#1605#1588#1578#1585#1610'1'
                    '2-Forms'#1605#1588#1578#1585#1610'2'
                    '3-FormItems'
                    '4-'#1578#1601#1589#1610#1604#1610' '#1575#1586' Forms '#1605#1588#1578#1585#1610' 2 '#1608' '#1576#1602#1610#1607'  Forms '#1605#1588#1578#1585#1610'1'
                    '5-'#1578#1601#1589#1610#1604#1610' '#1575#1586' FormItems  '#1608' '#1576#1602#1610#1607'  Forms '#1605#1588#1578#1585#1610'1'
                    '6-Forms '#1605#1588#1578#1585#1610'3'
                    '7-'#1605#1588#1578#1585#1610'1'#1578#1601#1589#1610#1604#1610'-'#1605#1588#1578#1585#1610'2'#1605#1585#1603#1586#1607#1586#1610#1606#1607'1-'#1605#1588#1578#1585#1610'3'#1578#1601#1589#1740#1604#1740'3'
                    '8-'#1670#1705' '#1585#1608#1586'='#1605#1588#1578#1585#1740' 1 '#1608' '#1605#1583#1578' '#1583#1575#1585'='#1605#1588#1578#1585#1740' 2')
                  TabOrder = 5
                end
                object CmbInfoUse4Bed: TDBComboBox
                  Left = 131
                  Top = 211
                  Width = 496
                  Height = 21
                  DataField = 'InfoUse4Bed'
                  DataSource = srcFormTypes
                  DropDownCount = 16
                  Items.Strings = (
                    '0-'#1606#1583#1575#1585#1583
                    '1-'#1575#1591#1604#1575#1593#1575#1578' '#1670#1603
                    '2-'#1575#1591#1604#1575#1593#1575#1578' '#1608#1580#1607' '#1606#1602#1583
                    '3-'#1575#1591#1604#1575#1593#1575#1578' '#1587#1606#1583' '#1607#1586#1610#1606#1607
                    '4-'#1575#1591#1604#1575#1593#1575#1578' '#1601#1585#1605' '#1575#1589#1604#1610)
                  TabOrder = 6
                end
                object cmbDefaultCTopic3_Bed: TDBComboBox
                  Left = 429
                  Top = 144
                  Width = 198
                  Height = 21
                  DataField = 'DefaultCTopic3_Bed'
                  DataSource = srcFormTypes
                  DropDownCount = 16
                  TabOrder = 4
                end
                object cmbDefaultCurrencyType_Bed: TDBComboBox
                  Left = 131
                  Top = 9
                  Width = 198
                  Height = 21
                  DataField = 'DefaultCurrencyType_Bed'
                  DataSource = srcFormTypes
                  DropDownCount = 16
                  Items.Strings = (
                    '0-'#1705#1583' '#1575#1585#1586' '#1583#1585' master'
                    '1-'#1705#1583' '#1575#1585#1586' '#1583#1585' Detail'
                    '2-'#1705#1583' '#1575#1585#1586' '#1578#1587#1593#1740#1585' '#1583#1585' Master'
                    '3-'#1705#1583' '#1575#1585#1586' '#1578#1587#1593#1740#1585' '#1583#1585' Detail ')
                  TabOrder = 7
                end
                object cmbDefaultBudget_Bed: TDBComboBox
                  Left = 131
                  Top = 42
                  Width = 198
                  Height = 21
                  DataField = 'DefaultBudget_Bed'
                  DataSource = srcFormTypes
                  DropDownCount = 16
                  TabOrder = 8
                end
                object cmbDefaultProject_Bed: TDBComboBox
                  Left = 131
                  Top = 74
                  Width = 198
                  Height = 21
                  DataField = 'DefaultProject_Bed'
                  DataSource = srcFormTypes
                  DropDownCount = 16
                  TabOrder = 9
                end
                object cmbDefaultAidInfo_Bed: TDBComboBox
                  Left = 131
                  Top = 107
                  Width = 198
                  Height = 21
                  DataField = 'DefaultAidInfo_Bed'
                  DataSource = srcFormTypes
                  DropDownCount = 16
                  Items.Strings = (
                    '0-'#1588#1605#1575#1585#1607' '#1608' '#1578#1575#1585#1740#1582' '#1601#1585#1605
                    '1-'#1588#1605#1575#1585#1607' '#1608' '#1587#1585#1585#1587#1740#1583' '#1670#1705
                    '2-'#1588#1605#1575#1585#1607' '#1608' '#1578#1575#1585#1740#1582' '#1705#1605#1705#1740' Master'
                    '3-'#1588#1605#1575#1585#1607' '#1608' '#1578#1575#1585#1740#1582' '#1705#1605#1705#1740' Detail '
                    '4- '#1588#1605#1575#1585#1607' '#1608' '#1578#1575#1585#1740#1582' '#1705#1605#1705#1740' detail  '#1575#1711#1585' '#1582#1575#1604#1740' '#1576#1608#1583' Master')
                  TabOrder = 10
                end
              end
              object TabSheet14: TTabSheet
                Caption = #1662#1610#1588' '#1601#1585#1590' '#1603#1583#1610#1606#1711' '#1576#1587#1578#1575#1606#1603#1575#1585
                ImageIndex = 1
                object Label51: TLabel
                  Left = 631
                  Top = 13
                  Width = 31
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1581#1587#1575#1576
                end
                object Label52: TLabel
                  Left = 631
                  Top = 47
                  Width = 37
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1578#1601#1589#1610#1604#1610
                end
                object Label53: TLabel
                  Left = 631
                  Top = 80
                  Width = 43
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1578#1601#1589#1610#1604#1610'2'
                end
                object Label54: TLabel
                  Left = 631
                  Top = 114
                  Width = 43
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1578#1601#1589#1610#1604#1610'3'
                end
                object Label42: TLabel
                  Left = 631
                  Top = 181
                  Width = 114
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1603#1583' '#1605#1588#1578#1585#1610' '#1605#1608#1585#1583' '#1575#1587#1578#1601#1575#1583#1607
                end
                object Label96: TLabel
                  Left = 631
                  Top = 215
                  Width = 166
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1608#1585#1583' '#1575#1587#1578#1601#1575#1583#1607' '#1591#1585#1601' '#1576#1587#1578#1575#1606#1603#1575#1585
                end
                object Label29: TLabel
                  Left = 631
                  Top = 148
                  Width = 43
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1578#1601#1589#1610#1604#1610'4'
                end
                object Label129: TLabel
                  Left = 337
                  Top = 13
                  Width = 25
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1705#1583' '#1575#1585#1586
                end
                object Label130: TLabel
                  Left = 337
                  Top = 47
                  Width = 40
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1705#1583' '#1576#1608#1583#1580#1607
                end
                object Label131: TLabel
                  Left = 337
                  Top = 80
                  Width = 36
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1705#1583' '#1662#1585#1608#1688#1607
                end
                object Label132: TLabel
                  Left = 337
                  Top = 114
                  Width = 69
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1575#1591#1604#1575#1593#1575#1578' '#1705#1605#1705#1740
                end
                object CmbDefaultTopic_Bes: TDBComboBox
                  Left = 429
                  Top = 9
                  Width = 198
                  Height = 21
                  DataField = 'DefaultTopic_Bes'
                  DataSource = srcFormTypes
                  DropDownCount = 16
                  TabOrder = 0
                end
                object CmbDefaultDetail_Bes: TDBComboBox
                  Left = 429
                  Top = 43
                  Width = 198
                  Height = 21
                  DataField = 'DefaultDetail_Bes'
                  DataSource = srcFormTypes
                  DropDownCount = 16
                  TabOrder = 1
                end
                object CmbDefaultCTopic_Bes: TDBComboBox
                  Left = 429
                  Top = 76
                  Width = 198
                  Height = 21
                  DataField = 'DefaultCTopic_Bes'
                  DataSource = srcFormTypes
                  DropDownCount = 16
                  TabOrder = 2
                end
                object CmbDefaultCTopic2_Bes: TDBComboBox
                  Left = 429
                  Top = 110
                  Width = 198
                  Height = 21
                  DataField = 'DefaultCTopic2_Bes'
                  DataSource = srcFormTypes
                  DropDownCount = 16
                  TabOrder = 3
                end
                object CmbCustCodeUse4Bes: TDBComboBox
                  Left = 131
                  Top = 177
                  Width = 496
                  Height = 21
                  DataField = 'CustCodeUse4Bes'
                  DataSource = srcFormTypes
                  DropDownCount = 16
                  TabOrder = 5
                end
                object CmbInfoUse4Bes: TDBComboBox
                  Left = 131
                  Top = 211
                  Width = 496
                  Height = 21
                  DataField = 'InfoUse4Bes'
                  DataSource = srcFormTypes
                  DropDownCount = 16
                  TabOrder = 6
                end
                object cmbDefaultCTopic3_Bes: TDBComboBox
                  Left = 429
                  Top = 144
                  Width = 198
                  Height = 21
                  DataField = 'DefaultCTopic3_Bes'
                  DataSource = srcFormTypes
                  DropDownCount = 16
                  TabOrder = 4
                end
                object cmbDefaultCurrencyType_Bes: TDBComboBox
                  Left = 131
                  Top = 9
                  Width = 198
                  Height = 21
                  DataField = 'DefaultCurrencyType_Bes'
                  DataSource = srcFormTypes
                  DropDownCount = 16
                  TabOrder = 7
                end
                object cmbDefaultBudget_Bes: TDBComboBox
                  Left = 131
                  Top = 43
                  Width = 198
                  Height = 21
                  DataField = 'DefaultBudget_Bes'
                  DataSource = srcFormTypes
                  DropDownCount = 16
                  TabOrder = 8
                end
                object cmbDefaultProject_Bes: TDBComboBox
                  Left = 131
                  Top = 76
                  Width = 198
                  Height = 21
                  DataField = 'DefaultProject_Bes'
                  DataSource = srcFormTypes
                  DropDownCount = 16
                  TabOrder = 9
                end
                object cmbDefaultAidInfo_Bes: TDBComboBox
                  Left = 131
                  Top = 110
                  Width = 198
                  Height = 21
                  DataField = 'DefaultAidInfo_Bes'
                  DataSource = srcFormTypes
                  DropDownCount = 16
                  TabOrder = 10
                end
              end
              object TabSheet15: TTabSheet
                Caption = #1603#1583#1610#1606#1711' '#1579#1575#1576#1578
                ImageIndex = 2
                object Label45: TLabel
                  Left = 373
                  Top = 10
                  Width = 78
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1603#1583' '#1581#1587#1575#1576' '#1576#1583#1607#1603#1575#1585
                  FocusControl = edtConstTopicCode_Bed
                end
                object Label46: TLabel
                  Left = 373
                  Top = 42
                  Width = 86
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1603#1583' '#1581#1587#1575#1576' '#1576#1587#1578#1575#1606#1603#1575#1585
                  FocusControl = edtConstTopicCode_Bes
                end
                object Label58: TLabel
                  Left = 373
                  Top = 74
                  Width = 84
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1576#1583#1607#1603#1575#1585
                  FocusControl = edtConstDetailCode_Bed
                end
                object Label59: TLabel
                  Left = 373
                  Top = 106
                  Width = 92
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610' '#1576#1587#1578#1575#1606#1603#1575#1585
                  FocusControl = edtConstDetailCode_Bes
                end
                object Label157: TLabel
                  Left = 373
                  Top = 138
                  Width = 92
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1603#1583' '#1581#1587#1575#1576' '#1575#1585#1586' '#1576#1583#1607#1603#1575#1585
                  FocusControl = edtConstTopicCode_ArzBed
                end
                object Label158: TLabel
                  Left = 371
                  Top = 170
                  Width = 100
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1603#1583' '#1581#1587#1575#1576' '#1575#1585#1586' '#1576#1587#1578#1575#1606#1603#1575#1585
                  FocusControl = edtConstTopicCode_ArzBes
                end
                object edtConstTopicCode_Bed: TDBEdit
                  Left = 230
                  Top = 6
                  Width = 134
                  Height = 21
                  DataField = 'ConstTopicCode_Bed'
                  DataSource = srcFormTypes
                  TabOrder = 0
                end
                object edtConstTopicCode_Bes: TDBEdit
                  Left = 230
                  Top = 38
                  Width = 134
                  Height = 21
                  DataField = 'ConstTopicCode_Bes'
                  DataSource = srcFormTypes
                  TabOrder = 1
                end
                object edtConstDetailCode_Bed: TDBEdit
                  Left = 230
                  Top = 70
                  Width = 134
                  Height = 21
                  DataField = 'ConstDetailCode_Bed'
                  DataSource = srcFormTypes
                  TabOrder = 2
                end
                object edtConstDetailCode_Bes: TDBEdit
                  Left = 230
                  Top = 102
                  Width = 134
                  Height = 21
                  DataField = 'ConstDetailCode_Bes'
                  DataSource = srcFormTypes
                  TabOrder = 3
                end
                object edtConstTopicCode_ArzBed: TDBEdit
                  Left = 230
                  Top = 134
                  Width = 134
                  Height = 21
                  DataField = 'ConstTopicCode_ArzBed'
                  DataSource = srcFormTypes
                  TabOrder = 4
                end
                object edtConstTopicCode_ArzBes: TDBEdit
                  Left = 230
                  Top = 166
                  Width = 134
                  Height = 21
                  DataField = 'ConstTopicCode_ArzBes'
                  DataSource = srcFormTypes
                  TabOrder = 5
                end
              end
              object TabSheet21: TTabSheet
                Caption = #1662#1610#1588' '#1601#1585#1590' '#1579#1576#1578' '#1603#1583#1610#1606#1711
                ImageIndex = 3
                object Label89: TLabel
                  Left = 427
                  Top = 11
                  Width = 31
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1581#1587#1575#1576
                end
                object Label90: TLabel
                  Left = 427
                  Top = 46
                  Width = 37
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1578#1601#1589#1610#1604#1610
                end
                object Label91: TLabel
                  Left = 166
                  Top = 11
                  Width = 43
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1578#1601#1589#1610#1604#1610'2'
                end
                object Label92: TLabel
                  Left = 166
                  Top = 46
                  Width = 43
                  Height = 13
                  Alignment = taRightJustify
                  Caption = #1578#1601#1589#1610#1604#1610'3'
                end
                object CmbDefaultTopicInInset: TDBComboBox
                  Left = 279
                  Top = 7
                  Width = 145
                  Height = 21
                  DataField = 'DefaultTopicInInset'
                  DataSource = srcFormTypes
                  Items.Strings = (
                    #1606#1583#1575#1585#1583
                    #1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1605#1588#1578#1585#1610' 1'
                    #1605#1588#1578#1585#1610' 2 '
                    #1605#1588#1578#1585#1610' '#1583#1585' Details'#8204)
                  TabOrder = 0
                end
                object CmbDefaultDetailInInsert: TDBComboBox
                  Left = 279
                  Top = 42
                  Width = 145
                  Height = 21
                  DataField = 'DefaultDetailInInsert'
                  DataSource = srcFormTypes
                  Items.Strings = (
                    #1606#1583#1575#1585#1583
                    #1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1605#1588#1578#1585#1610' 1'
                    #1605#1588#1578#1585#1610' 2 '
                    #1605#1588#1578#1585#1610' '#1583#1585' Details'#8204)
                  TabOrder = 1
                end
                object CmbDefaultCTopicInInsert: TDBComboBox
                  Left = 16
                  Top = 7
                  Width = 145
                  Height = 21
                  DataField = 'DefaultCTopicInInsert'
                  DataSource = srcFormTypes
                  Items.Strings = (
                    #1606#1583#1575#1585#1583
                    #1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1605#1588#1578#1585#1610' 1'
                    #1605#1588#1578#1585#1610' 2 '
                    #1605#1588#1578#1585#1610' '#1583#1585' Details'#8204
                    #1711#1585#1608#1607' '#1605#1588#1578#1585#1610'1'
                    #1711#1585#1608#1607' '#1605#1588#1578#1585#1610'2'
                    #1711#1585#1608#1607' '#1605#1588#1578#1585#1610' '#1583#1585' Details'#8204)
                  TabOrder = 2
                end
                object CmbDefaultCTopic2InInsert: TDBComboBox
                  Left = 16
                  Top = 42
                  Width = 145
                  Height = 21
                  DataField = 'DefaultCTopic2InInsert'
                  DataSource = srcFormTypes
                  Items.Strings = (
                    #1606#1583#1575#1585#1583
                    #1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1605#1588#1578#1585#1610' 1'
                    #1605#1588#1578#1585#1610' 2 '
                    #1605#1588#1578#1585#1610' '#1583#1585' Details'#8204
                    #1711#1585#1608#1607' '#1605#1588#1578#1585#1610'1'
                    #1711#1585#1608#1607' '#1605#1588#1578#1585#1610'2'
                    #1711#1585#1608#1607' '#1605#1588#1578#1585#1610' '#1583#1585' Details'#8204)
                  TabOrder = 3
                end
              end
              object TabSheet30: TTabSheet
                Caption = #1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578' '#1582#1591#1610
                ImageIndex = 5
                object dbgrdAccCode: TCedarDbgrid
                  Tag = 111
                  Left = 0
                  Top = 0
                  Width = 813
                  Height = 259
                  Align = alClient
                  Color = clCream
                  DataSource = srcAccCode
                  DynProps = <>
                  Flat = True
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  FooterParams.FillStyle = cfstSolidEh
                  FooterParams.Font.Charset = DEFAULT_CHARSET
                  FooterParams.Font.Color = clWindowText
                  FooterParams.Font.Height = -13
                  FooterParams.Font.Name = 'Tahoma'
                  FooterParams.Font.Style = [fsBold]
                  FooterParams.ParentFont = False
                  FooterParams.VertLines = False
                  GridLineParams.VertEmptySpaceStyle = dessNonEh
                  HorzScrollBar.ExtraPanel.Visible = True
                  IndicatorTitle.ShowDropDownSign = True
                  IndicatorTitle.TitleButton = True
                  OddRowColor = clGradientInactiveCaption
                  Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                  ParentFont = False
                  RowHeight = 18
                  SearchPanel.Enabled = True
                  SearchPanel.FilterOnTyping = True
                  SortLocal = True
                  TabOrder = 0
                  OnEditButtonClick = dbgrdAccCodeEditButtonClick
                  OnKeyPress = dbgrdAccCodeKeyPress
                  ActiveSearchPanel = False
                  SelectFooterIndex = 0
                  Columns = <
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'InfoKind'
                      Footers = <>
                      PickList.Strings = (
                        '0-'
                        '1-'#1705#1575#1585#1605#1586#1583' '#1670#1705'/'#1608#1589#1608#1604' '#1662#1585#1583#1575#1582#1578#1740' ('#1576#1583#1607#1705#1575#1585')'
                        '2-'#1705#1575#1585#1605#1586#1583' '#1670#1705'/'#1608#1589#1608#1604' '#1583#1585#1740#1575#1601#1578#1740' ('#1576#1587#1578#1575#1606#1705#1575#1585')'
                        '3-'#1605#1575#1604#1740#1575#1578' '#1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607
                        '4-'#1578#1587#1593#1740#1585' '#1575#1585#1586' '
                        '5-'#1705#1583#1740#1606#1711' '#1579#1575#1576#1578' '#1576#1585#1575#1740' '#1576#1583#1607#1705#1575#1585
                        '6-'#1705#1583#1740#1606#1711' '#1579#1575#1576#1578' '#1576#1585#1575#1740' '#1576#1587#1578#1575#1606#1705#1575#1585
                        '7-'#1705#1583#1740#1606#1711' '#1579#1575#1576#1578)
                      Title.TitleButton = True
                      Width = 73
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'BedBes'
                      Footers = <>
                      PickList.Strings = (
                        #1576#1583#1607#1603#1575#1585
                        #1576#1587#1578#1575#1606#1603#1575#1585)
                      Title.TitleButton = True
                      Width = 73
                    end
                    item
                      ButtonStyle = cbsEllipsis
                      CellButtons = <>
                      DynProps = <>
                      EditButton.Style = ebsEllipsisEh
                      EditButton.Visible = True
                      EditButtons = <>
                      FieldName = 'TopicCode'
                      Footers = <>
                      Title.TitleButton = True
                      Width = 73
                    end
                    item
                      ButtonStyle = cbsEllipsis
                      CellButtons = <>
                      DynProps = <>
                      EditButton.Style = ebsEllipsisEh
                      EditButton.Visible = True
                      EditButtons = <>
                      FieldName = 'DetailCode'
                      Footers = <>
                      Title.TitleButton = True
                      Width = 73
                    end
                    item
                      ButtonStyle = cbsEllipsis
                      CellButtons = <>
                      DynProps = <>
                      EditButton.Style = ebsEllipsisEh
                      EditButton.Visible = True
                      EditButtons = <>
                      FieldName = 'CTopicCode'
                      Footers = <>
                      Title.TitleButton = True
                      Width = 73
                    end
                    item
                      ButtonStyle = cbsEllipsis
                      CellButtons = <>
                      DynProps = <>
                      EditButton.Style = ebsEllipsisEh
                      EditButton.Visible = True
                      EditButtons = <>
                      FieldName = 'CTopicCode2'
                      Footers = <>
                      Title.TitleButton = True
                      Width = 73
                    end
                    item
                      ButtonStyle = cbsEllipsis
                      CellButtons = <>
                      DynProps = <>
                      EditButton.Style = ebsEllipsisEh
                      EditButton.Visible = True
                      EditButtons = <>
                      FieldName = 'CTopicCode3'
                      Footers = <>
                      Title.TitleButton = True
                      Width = 73
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'CustID'
                      Footers = <>
                      Title.TitleButton = True
                      Width = 73
                    end
                    item
                      CellButtons = <>
                      DynProps = <>
                      EditButtons = <>
                      FieldName = 'Note'
                      Footers = <>
                      Title.TitleButton = True
                      Width = 73
                    end>
                  object RowDetailData: TRowDetailPanelControlEh
                  end
                end
              end
            end
          end
          object TabSheet16: TTabSheet
            Caption = #1576#1608#1583#1580#1607
            ImageIndex = 2
            object Label14: TLabel
              Left = 468
              Top = 30
              Width = 155
              Height = 13
              Alignment = taRightJustify
              Caption = #1605#1581#1604' '#1575#1587#1578#1601#1575#1583#1607' '#1587#1585#1601#1589#1604' '#1607#1575#1610' '#1576#1608#1583#1580#1607
            end
            object Label22: TLabel
              Left = 468
              Top = 131
              Width = 119
              Height = 13
              Caption = #1603#1583' '#1601#1585#1605#1607#1575#1610' '#1578#1575#1579#1610#1585' '#1662#1584#1610#1585' '#1576#1608#1583#1580#1607
              FocusControl = DBEdit15
            end
            object SpeedButton8: TSpeedButton
              Left = 152
              Top = 130
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = SpeedButton8Click
            end
            object Label24: TLabel
              Left = 468
              Top = 79
              Width = 145
              Height = 13
              Caption = #1606#1581#1608#1607' '#1576#1585#1582#1608#1583' '#1576#1575' '#1578#1594#1610#1610#1585' '#1605#1575#1607#1610#1578' '#1576#1608#1583#1580#1607
            end
            object Label25: TLabel
              Left = 468
              Top = 56
              Width = 108
              Height = 13
              Caption = #1606#1581#1608#1607' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1603#1583' '#1576#1608#1583#1580#1607
            end
            object Label23: TLabel
              Left = 468
              Top = 105
              Width = 76
              Height = 13
              Caption = #1606#1608#1593' '#1578#1575#1579#1610#1585' '#1576#1585' '#1576#1608#1583#1580#1607
            end
            object Label122: TLabel
              Left = 468
              Top = 174
              Width = 235
              Height = 13
              Alignment = taRightJustify
              Caption = #1606#1581#1608#1607' '#1575#1606#1578#1602#1575#1604' '#1705#1583' '#1576#1608#1583#1580#1607' '#1583#1585' '#1591#1585#1601' '#1607#1575#1740' '#1576#1583#1607#1705#1575#1585' '#1608' '#1576#1587#1578#1575#1606#1705#1575#1585
            end
            object cmbBudgetCodePosition: TDBComboBox
              Left = 177
              Top = 28
              Width = 286
              Height = 21
              DataField = 'BudgetCodePosition'
              DataSource = srcFormTypes
              Items.Strings = (
                #1607#1610#1670#1603#1583#1575#1605
                'Detail'
                'Master&Detail'
                'Master')
              TabOrder = 0
            end
            object DBEdit15: TDBEdit
              Left = 177
              Top = 129
              Width = 286
              Height = 21
              DataField = 'EffectableFormTypes'
              DataSource = srcFormTypes
              TabOrder = 1
            end
            object cmbBudgetEffectChangeAction: TDBComboBox
              Left = 177
              Top = 76
              Width = 286
              Height = 21
              DataField = 'BudgetEffectChangeAction'
              DataSource = srcFormTypes
              Items.Strings = (
                #1606#1583#1575#1585#1583
                #1662#1610#1594#1575#1605
                #1662#1610#1594#1575#1605' '#1608' '#1580#1604#1608#1711#1610#1585#1610' '#1575#1586' '#1579#1576#1578)
              TabOrder = 2
            end
            object cmbBudgetRecalKind: TDBComboBox
              Left = 177
              Top = 54
              Width = 286
              Height = 21
              DataField = 'BudgetRecalKind'
              DataSource = srcFormTypes
              Items.Strings = (
                #1606#1583#1575#1585#1583
                #1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1603#1583' '#1605#1588#1578#1585#1610' 1'
                #13#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1603#1583' '#1605#1588#1578#1585#1610' 2')
              TabOrder = 3
            end
            object cmbBudgetEffect: TDBComboBox
              Left = 177
              Top = 103
              Width = 286
              Height = 21
              DataField = 'BudgetEffect'
              DataSource = srcFormTypes
              Items.Strings = (
                #1576#1610' '#1578#1575#1579#1610#1585
                #1576#1583#1607#1603#1575#1585
                #1576#1587#1578#1575#1606#1603#1575#1585)
              TabOrder = 4
            end
            object cmbUseBudgetKind: TDBComboBox
              Left = 176
              Top = 172
              Width = 286
              Height = 21
              DataField = 'UseBudgetKind'
              DataSource = srcFormTypes
              Items.Strings = (
                '0 - '#1606#1583#1575#1585#1583' '
                '1 - '#1576#1583#1607#1705#1575#1585' '
                '2- '#1576#1587#1578#1575#1606#1705#1575#1585' '
                '3- '#1607#1585' '#1583#1608
                '4- '#1576#1583#1607#1705#1575#1585' '#1608' '#1576#1587#1578#1575#1606#1705#1575#1585' '#1576#1607' '#1607#1605#1585#1575#1607' '#1578#1705#1585#1575#1585' '#1587#1606#1583)
              TabOrder = 5
            end
          end
          object TabSheet3: TTabSheet
            Caption = #1603#1575#1585#1605#1586#1583
            ImageIndex = 3
            object Label44: TLabel
              Left = 542
              Top = 61
              Width = 45
              Height = 13
              BiDiMode = bdLeftToRight
              Caption = #1603#1583' '#1581#1587#1575#1576
              FocusControl = edtCashWageTopicCode
              ParentBiDiMode = False
            end
            object Label55: TLabel
              Left = 542
              Top = 88
              Width = 51
              Height = 13
              BiDiMode = bdLeftToRight
              Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610
              FocusControl = edtCashWageDetailCode
              ParentBiDiMode = False
            end
            object Label56: TLabel
              Left = 542
              Top = 114
              Width = 57
              Height = 13
              BiDiMode = bdLeftToRight
              Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
              FocusControl = edtCashWageCTopicCode
              ParentBiDiMode = False
            end
            object Label57: TLabel
              Left = 542
              Top = 140
              Width = 57
              Height = 13
              BiDiMode = bdLeftToRight
              Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'3'
              FocusControl = edtCashWageCTopicCode2
              ParentBiDiMode = False
            end
            object Label121: TLabel
              Left = 542
              Top = 35
              Width = 71
              Height = 13
              Alignment = taRightJustify
              Caption = #1601#1610#1604#1583#1607#1575#1610' '#1603#1575#1585#1605#1586#1583
            end
            object edtCashWageTopicCode: TDBEdit
              Tag = 1
              Left = 209
              Top = 57
              Width = 324
              Height = 21
              DataField = 'CashWageTopicCode'
              DataSource = srcFormTypes
              TabOrder = 0
            end
            object edtCashWageDetailCode: TDBEdit
              Tag = 2
              Left = 209
              Top = 84
              Width = 324
              Height = 21
              DataField = 'CashWageDetailCode'
              DataSource = srcFormTypes
              TabOrder = 1
            end
            object edtCashWageCTopicCode: TDBEdit
              Tag = 3
              Left = 209
              Top = 110
              Width = 324
              Height = 21
              DataField = 'CashWageCTopicCode'
              DataSource = srcFormTypes
              TabOrder = 2
            end
            object edtCashWageCTopicCode2: TDBEdit
              Tag = 4
              Left = 209
              Top = 136
              Width = 324
              Height = 21
              DataField = 'CashWageCTopicCode2'
              DataSource = srcFormTypes
              TabOrder = 3
            end
            object cmbCashWageActive: TDBComboBox
              Left = 209
              Top = 31
              Width = 324
              Height = 21
              DataField = 'CashWageActive'
              DataSource = srcFormTypes
              Items.Strings = (
                '0-'#1594#1740#1585' '#1601#1593#1575#1604
                '1-'#1601#1610#1604#1583#1607#1575#1610' '#1603#1575#1585#1605#1586#1583' '#1608#1589#1608#1604' '#1579#1576#1578' '#1588#1608#1583'.'#8207'('#1576#1600#1583#1607#1600#1705#1600#1575#1585')'
                '2-'#1601#1610#1604#1583#1607#1575#1610' '#1603#1575#1585#1605#1586#1583' '#1608#1589#1608#1604' '#1579#1576#1578' '#1588#1608#1583'.'#8207'('#1576#1587#1578#1575#1606#1705#1575#1585')')
              TabOrder = 4
            end
          end
          object TabSheet18: TTabSheet
            Caption = #1606#1608#1593' '#1578#1575#1579#1610#1585' '#1583#1585' '#1711#1586#1575#1585#1588#1575#1578
            ImageIndex = 4
            object GroupBox7: TGroupBox
              Left = 240
              Top = 10
              Width = 235
              Height = 175
              Caption = '  '#1575#1601#1586#1575#1610#1606#1583#1607'  '
              TabOrder = 0
              object Label67: TLabel
                Left = 126
                Top = 27
                Width = 91
                Height = 13
                Alignment = taRightJustify
                Caption = #1606#1600#1600#1600#1600#1608' '#1593'   '#1581#1600#1600#1600#1600#1587#1600#1600#1575' '#1576
              end
              object Label68: TLabel
                Left = 125
                Top = 66
                Width = 105
                Height = 13
                Caption = #1603#1583#1605#1588#1578#1585#1610#8207#1605#1608#1585#1583#1575#1587#1578#1601#1575#1583#1607
              end
              object Label69: TLabel
                Left = 125
                Top = 105
                Width = 104
                Height = 13
                Alignment = taRightJustify
                Caption = #1575#1606#1600#1608#1575#1593' '#1670#1600#1600#1603' '#1602#1600#1575#1576#1604' '#1575#1593#1605#1575#1604
              end
              object cmbRptAddAccountKind: TDBComboBox
                Left = 4
                Top = 23
                Width = 118
                Height = 21
                DataField = 'RptAddAccountKind'
                DataSource = srcFormTypes
                Items.Strings = (
                  #1606#1583#1575#1585#1583
                  #1575#1587#1606#1575#1583' '#1583#1585' '#1580#1585#1610#1575#1606' '#1608#1589#1608#1604' '
                  #1575#1587#1606#1575#1583' '#1583#1585#1610#1575#1601#1578#1606#1610
                  #1575#1587#1606#1575#1583' '#1578#1590#1605#1610#1606#1610
                  #1575#1587#1606#1575#1583' '#1662#1585#1583#1575#1582#1578#1606#1610' '
                  #1575#1587#1606#1575#1583' '#1608#1575#1582#1608#1575#1587#1578#1610)
                TabOrder = 0
              end
              object cmbRptAddUtilizeCustCode: TDBComboBox
                Left = 4
                Top = 62
                Width = 118
                Height = 21
                DataField = 'RptAddUtilizeCustCode'
                DataSource = srcFormTypes
                Items.Strings = (
                  'Forms_1'
                  'Forms_2'
                  'FormItems')
                TabOrder = 1
              end
              object cmbRptAddWorkableCheckKind: TDBComboBox
                Left = 4
                Top = 102
                Width = 118
                Height = 21
                DataField = 'RptAddWorkableCheckKind'
                DataSource = srcFormTypes
                Items.Strings = (
                  #1607#1605#1607
                  #1670#1603' '#1585#1608#1586
                  #1670#1603' '#1605#1583#1578' '#1583#1575#1585)
                TabOrder = 2
              end
            end
            object GroupBox10: TGroupBox
              Left = 0
              Top = 10
              Width = 235
              Height = 175
              Caption = '  '#1603#1575#1607#1606#1583#1607'  '
              TabOrder = 1
              object Label71: TLabel
                Left = 125
                Top = 66
                Width = 105
                Height = 13
                Caption = #1603#1583#1605#1588#1578#1585#1610#8207#1605#1608#1585#1583#1575#1587#1578#1601#1575#1583#1607
              end
              object Label70: TLabel
                Left = 126
                Top = 27
                Width = 91
                Height = 13
                Alignment = taRightJustify
                Caption = #1606#1600#1600#1600#1600#1608' '#1593'   '#1581#1600#1600#1600#1600#1587#1600#1600#1575' '#1576
              end
              object Label72: TLabel
                Left = 125
                Top = 105
                Width = 104
                Height = 13
                Alignment = taRightJustify
                Caption = #1575#1606#1600#1608#1575#1593' '#1670#1600#1600#1603' '#1602#1600#1575#1576#1604' '#1575#1593#1605#1575#1604
              end
              object cmbRptDecAccountKind: TDBComboBox
                Left = 4
                Top = 23
                Width = 118
                Height = 21
                DataField = 'RptDecAccountKind'
                DataSource = srcFormTypes
                Items.Strings = (
                  #1606#1583#1575#1585#1583
                  #1575#1587#1606#1575#1583' '#1583#1585' '#1580#1585#1610#1575#1606' '#1608#1589#1608#1604' '
                  #1575#1587#1606#1575#1583' '#1583#1585#1610#1575#1601#1578#1606#1610
                  #1575#1587#1606#1575#1583' '#1578#1590#1605#1610#1606#1610
                  #1575#1587#1606#1575#1583' '#1662#1585#1583#1575#1582#1578#1606#1610' '
                  #1575#1587#1606#1575#1583' '#1608#1575#1582#1608#1575#1587#1578#1610)
                TabOrder = 0
              end
              object cmbRptDecUtilizeCustCode: TDBComboBox
                Left = 4
                Top = 62
                Width = 118
                Height = 21
                DataField = 'RptDecUtilizeCustCode'
                DataSource = srcFormTypes
                Items.Strings = (
                  'Forms_1'
                  'Forms_2'
                  'FormItems')
                TabOrder = 1
              end
              object cmbRptDecWorkableCheckKind: TDBComboBox
                Left = 4
                Top = 102
                Width = 118
                Height = 21
                DataField = 'RptDecWorkableCheckKind'
                DataSource = srcFormTypes
                Items.Strings = (
                  #1607#1605#1607
                  #1670#1603' '#1585#1608#1586
                  #1670#1603' '#1605#1583#1578' '#1583#1575#1585)
                TabOrder = 2
              end
            end
          end
          object TabSheet19: TTabSheet
            Caption = #1606#1608#1593' '#1578#1575#1579#1610#1585' '#1576#1585#1581#1587#1575#1576' '#1605#1588#1578#1585#1610
            ImageIndex = 5
            object GroupBox11: TGroupBox
              Left = 0
              Top = 10
              Width = 235
              Height = 175
              Caption = '  '#1603#1575#1607#1606#1583#1607'  '
              TabOrder = 0
              object Label73: TLabel
                Left = 125
                Top = 28
                Width = 105
                Height = 13
                Caption = #1603#1583#1605#1588#1578#1585#1610#8207#1605#1608#1585#1583#1575#1587#1578#1601#1575#1583#1607
              end
              object Label74: TLabel
                Left = 207
                Top = 67
                Width = 23
                Height = 13
                Alignment = taRightJustify
                Caption = #1588#1585#1591
              end
              object Label75: TLabel
                Left = 125
                Top = 105
                Width = 104
                Height = 13
                Alignment = taRightJustify
                Caption = #1575#1606#1600#1608#1575#1593' '#1670#1600#1600#1603' '#1602#1600#1575#1576#1604' '#1575#1593#1605#1575#1604
              end
              object cmbCustDecUtilizeCustCode: TDBComboBox
                Left = 4
                Top = 24
                Width = 118
                Height = 21
                DataField = 'CustDecUtilizeCustCode'
                DataSource = srcFormTypes
                Items.Strings = (
                  #13#1606#1583#1575#1585#1583
                  'Forms_1'
                  'Forms_2'
                  'FormItems')
                TabOrder = 0
              end
              object cmbCustDecCondition: TDBComboBox
                Left = 4
                Top = 63
                Width = 199
                Height = 21
                DataField = 'CustDecCondition'
                DataSource = srcFormTypes
                Items.Strings = (
                  'FormDate'
                  'CheckDate'
                  #1670#1603#1607#1575#1610#8207#1606#1586#1583#1570#1606'FormType'#1576#1575#1588#1585#1591#8207#1587#1585#1585#1587#1610#1583)
                TabOrder = 1
              end
              object cmbCustDecWorkableCheckKind: TDBComboBox
                Left = 4
                Top = 102
                Width = 118
                Height = 21
                DataField = 'CustDecWorkableCheckKind'
                DataSource = srcFormTypes
                Items.Strings = (
                  #1607#1605#1607
                  #1670#1603' '#1585#1608#1586
                  #1670#1603' '#1605#1583#1578' '#1583#1575#1585)
                TabOrder = 2
              end
            end
            object GroupBox12: TGroupBox
              Left = 240
              Top = 10
              Width = 235
              Height = 175
              Caption = '  '#1575#1601#1586#1575#1610#1606#1583#1607'  '
              TabOrder = 1
              object Label76: TLabel
                Left = 207
                Top = 67
                Width = 23
                Height = 13
                Alignment = taRightJustify
                Caption = #1588#1585#1591
              end
              object Label77: TLabel
                Left = 125
                Top = 28
                Width = 105
                Height = 13
                Caption = #1603#1583#1605#1588#1578#1585#1610#8207#1605#1608#1585#1583#1575#1587#1578#1601#1575#1583#1607
              end
              object Label78: TLabel
                Left = 125
                Top = 105
                Width = 104
                Height = 13
                Alignment = taRightJustify
                Caption = #1575#1606#1600#1608#1575#1593' '#1670#1600#1600#1603' '#1602#1600#1575#1576#1604' '#1575#1593#1605#1575#1604
              end
              object cmbCustAddCondition: TDBComboBox
                Left = 4
                Top = 63
                Width = 199
                Height = 21
                DataField = 'CustAddCondition'
                DataSource = srcFormTypes
                Items.Strings = (
                  'FormDate'
                  'CheckDate'
                  #1670#1603#1607#1575#1610#8207#1606#1586#1583#1570#1606'FormType'#1576#1575#1588#1585#1591#8207#1587#1585#1585#1587#1610#1583)
                TabOrder = 0
              end
              object cmbCustAddUtilizeCustCode: TDBComboBox
                Left = 4
                Top = 24
                Width = 118
                Height = 21
                DataField = 'CustAddUtilizeCustCode'
                DataSource = srcFormTypes
                Items.Strings = (
                  #13#1606#1583#1575#1585#1583
                  'Forms_1'
                  'Forms_2'
                  'FormItems')
                TabOrder = 1
              end
              object cmbCustAddWorkableCheckKind: TDBComboBox
                Left = 4
                Top = 102
                Width = 118
                Height = 21
                DataField = 'CustAddWorkableCheckKind'
                DataSource = srcFormTypes
                Items.Strings = (
                  #1607#1605#1607
                  #1670#1603' '#1585#1608#1586
                  #1670#1603' '#1605#1583#1578' '#1583#1575#1585)
                TabOrder = 2
              end
            end
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = #1670#1575#1662
        ImageIndex = 4
        DesignSize = (
          829
          315)
        object Label10: TLabel
          Left = 671
          Top = 30
          Width = 69
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605' '#1601#1585#1605' '#1670#1575#1662#1610' 1'
          ExplicitLeft = 608
        end
        object Label18: TLabel
          Left = 671
          Top = 75
          Width = 69
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605' '#1601#1585#1605' '#1670#1575#1662#1610' 2'
          ExplicitLeft = 608
        end
        object Label19: TLabel
          Left = 671
          Top = 193
          Width = 79
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1593#1583#1575#1583' '#1606#1587#1582#1607' '#1670#1575#1662' '
          ExplicitLeft = 608
        end
        object Label32: TLabel
          Left = 671
          Top = 147
          Width = 143
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1593#1606#1575#1608#1610#1606' '#1576#1585#1575#1610' '#1605#1581#1604' '#1575#1605#1590#1575#1569'('#1578#1607' '#1601#1585#1605')'
          ExplicitLeft = 608
        end
        object SpeedButton4: TSpeedButton
          Left = 360
          Top = 25
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = SpeedButton4Click
          ExplicitLeft = 297
        end
        object SpeedButton5: TSpeedButton
          Left = 360
          Top = 74
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = SpeedButton5Click
          ExplicitLeft = 297
        end
        object Label85: TLabel
          Left = 666
          Top = 105
          Width = 47
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1587#1575#1610#1585' '#1670#1575#1662#1607#1575
          FocusControl = DBEdit1
          ExplicitLeft = 603
        end
        object btnOtherRptFiles: TSpeedButton
          Left = 360
          Top = 100
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = btnOtherRptFilesClick
          ExplicitLeft = 297
        end
        object DBCheckBox1: TDBCheckBox
          Left = 430
          Top = 53
          Width = 233
          Height = 17
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeftNoAlign
          Caption = #1576#1585#1575#1610' '#1601#1585#1605' '#1670#1575#1662#1610' 2 '#1604#1610#1587#1578' '#1603#1604#1610#1607' '#1670#1575#1662#1607#1575' '#1606#1605#1575#1610#1588' '#1588#1608#1583
          DataField = 'ShowListForReport2'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBEdit7: TDBEdit
          Left = 609
          Top = 188
          Width = 54
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'PrintCount'
          DataSource = srcFormTypes
          TabOrder = 1
        end
        object DBMemo4: TDBMemo
          Tag = 111
          Left = 360
          Top = 130
          Width = 303
          Height = 49
          Anchors = [akTop, akRight]
          DataField = 'FooterSigns'
          DataSource = srcFormTypes
          ScrollBars = ssVertical
          TabOrder = 2
        end
        object DBEdit10: TDBEdit
          Left = 384
          Top = 26
          Width = 279
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'ReportFileName1'
          DataSource = srcFormTypes
          TabOrder = 3
        end
        object DBEdit20: TDBEdit
          Left = 384
          Top = 74
          Width = 279
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'ReportFileName2'
          DataSource = srcFormTypes
          TabOrder = 4
        end
        object dbchkPrintAfterPost: TDBCheckBox
          Left = 483
          Top = 5
          Width = 180
          Height = 17
          Alignment = taLeftJustify
          Anchors = [akTop, akRight]
          Caption = #1670#1575#1662' '#1575#1578#1608#1605#1575#1578#1610#1603' '#1662#1587' '#1575#1586' '#1579#1576#1578' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
          DataField = 'PrintAfterPost'
          DataSource = srcFormTypes
          TabOrder = 5
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object GroupBox4: TGroupBox
          Left = 164
          Top = 215
          Width = 499
          Height = 53
          Anchors = [akTop, akRight]
          Caption = 
            #1575#1711#1585' '#1605#1576#1604#1594' '#1670#1705' '#1575#1586' '#1593#1583#1583' '#1584#1610#1604' '#1576#1575#1604#1575#1578#1585' '#1576#1608#1583#1548' '#1670#1575#1662' '#1583#1608#1605' '#1601#1585#1605' ('#1605#1579#1604#1575#1611' '#1578#1571#1610#1610#1583#1610#1607' '#1576#1575 +
            #1606#1705') '#1575#1578#1608#1605#1575#1578#1740#1705' '#1575#1585#1587#1575#1604' '#1588#1608#1583'. ('#1589#1601#1585' '#1594#1610#1585' '#1601#1593#1575#1604')'#8207
          TabOrder = 6
          object edtAutoPrintOnItemAmount: TDBEdit
            Left = 217
            Top = 21
            Width = 181
            Height = 21
            DataField = 'AutoPrintOnItemAmount'
            DataSource = srcFormTypes
            TabOrder = 0
          end
        end
        object DBEdit1: TDBEdit
          Left = 384
          Top = 101
          Width = 279
          Height = 19
          Anchors = [akTop, akRight]
          Ctl3D = False
          DataField = 'OtherRptFiles'
          DataSource = srcFormTypes
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
        end
      end
      object TabSheet6: TTabSheet
        Caption = #1587#1575#1610#1585
        ImageIndex = 5
        DesignSize = (
          829
          315)
        object Label86: TLabel
          Left = 774
          Top = 230
          Width = 40
          Height = 13
          Anchors = [akRight, akBottom]
          Caption = #1578#1608#1590#1610#1581#1575#1578
          ExplicitLeft = 711
          ExplicitTop = 196
        end
        object Label87: TLabel
          Left = 331
          Top = 17
          Width = 150
          Height = 13
          Alignment = taRightJustify
          Caption = ' '#1606#1608#1593' '#1603#1575#1585#1576#1585#1583' '#1578#1588#1582#1610#1589' '#1583#1585' '#1601#1585#1605' '#1578#1606#1582#1608#1575#1607
        end
        object Label88: TLabel
          Left = 331
          Top = 47
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tab'#1607#1575#1610' '#1601#1593#1575#1604
        end
        object Label93: TLabel
          Left = 331
          Top = 78
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = #1603#1583' '#1601#1585#1605' '#1670#1603
          FocusControl = edtCheckType
        end
        object Label94: TLabel
          Left = 331
          Top = 108
          Width = 70
          Height = 13
          Alignment = taRightJustify
          Caption = #1603#1583' '#1601#1585#1605' '#1608#1580#1607' '#1606#1602#1583
          FocusControl = edtCashType
        end
        object Label79: TLabel
          Left = 332
          Top = 139
          Width = 56
          Height = 13
          Caption = #1603#1583' '#1578#1587#1607#1610#1604#1575#1578
          FocusControl = edtGuaranteesType
        end
        object Label80: TLabel
          Left = 332
          Top = 169
          Width = 56
          Height = 13
          Caption = #1603#1583' '#1578#1590#1605#1610#1606#1575#1578' '
          FocusControl = edtLoansType
        end
        object DBMemo1: TDBMemo
          Tag = 111
          Left = 0
          Top = 249
          Width = 829
          Height = 66
          Align = alBottom
          DataField = 'FormDescription'
          DataSource = srcFormTypes
          TabOrder = 0
        end
        object CmbAccStateActive: TDBComboBox
          Left = 107
          Top = 13
          Width = 220
          Height = 21
          DataField = 'AccStateActive'
          DataSource = srcFormTypes
          Items.Strings = (
            '0 - '#1606#1583#1575#1585#1583
            '1- '#1662#1610#1588' '#1601#1585#1590' '#1575#1586' '#1605#1588#1578#1585#1610' '#1583#1585' Detail    '
            #8207'2- '#1575#1586' '#1605#1588#1578#1585#1610' '#1583#1585' Detail '#1608' ReadOnly'#8204#8207)
          TabOrder = 1
        end
        object dbchkManegerNoteActive: TDBCheckBox
          Left = 680
          Top = 15
          Width = 122
          Height = 17
          Alignment = taLeftJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1605#1578#1606' '#1583#1587#1578#1608#1585' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
          DataField = 'ManegerNoteActive'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object CmbTabSheetActive: TDBComboBox
          Left = 107
          Top = 43
          Width = 220
          Height = 21
          DataField = 'TabSheetActive'
          DataSource = srcFormTypes
          Items.Strings = (
            #1575#1587#1606#1575#1583' '#1607#1586#1610#1606#1607' '#1608' '#1583#1585#1570#1605#1583
            #1601#1610#1588' '#1576#1575#1606#1603#1610'/'#1608#1580#1607' '#1606#1602#1583
            #1670#1603
            #1575#1587#1606#1575#1583' '#1607#1586#1610#1606#1607' '#1608' '#1583#1585#1570#1605#1583' - '#1601#1610#1588' '#1576#1575#1606#1603#1610'/'#1608#1580#1607' '#1606#1602#1583
            #1575#1587#1606#1575#1583' '#1607#1586#1610#1606#1607' '#1608' '#1583#1585#1570#1605#1583' - '#1670#1603
            #1601#1610#1588' '#1576#1575#1606#1603#1610'/'#1608#1580#1607' '#1606#1602#1583'  -  '#1670#1603
            #1607#1585' '#1587#1607' '#1605#1608#1585#1583
            #1578#1590#1605#1610#1606#1575#1578'-'#1578#1587#1607#1610#1604#1575#1578'-'#1670#1603)
          TabOrder = 3
        end
        object edtCheckType: TDBEdit
          Left = 107
          Top = 74
          Width = 220
          Height = 21
          DataField = 'CheckType'
          DataSource = srcFormTypes
          TabOrder = 4
        end
        object edtCashType: TDBEdit
          Left = 107
          Top = 104
          Width = 220
          Height = 21
          DataField = 'CashType'
          DataSource = srcFormTypes
          TabOrder = 5
        end
        object dbchkMasterLoan: TDBCheckBox
          Left = 656
          Top = 45
          Width = 146
          Height = 17
          Alignment = taLeftJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1570#1610#1578#1605' '#1607#1575#1610' '#1608#1575#1605' '#1582#1575#1605#1608#1588' '#1588#1608#1606#1583'.'#8207
          DataField = 'MasterLoan'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 6
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object edtGuaranteesType: TDBEdit
          Left = 107
          Top = 165
          Width = 220
          Height = 21
          DataField = 'GuaranteesType'
          DataSource = srcFormTypes
          TabOrder = 7
        end
        object edtLoansType: TDBEdit
          Left = 107
          Top = 135
          Width = 220
          Height = 21
          DataField = 'LoansType'
          DataSource = srcFormTypes
          TabOrder = 8
        end
        object GroupBox14: TGroupBox
          Left = 484
          Top = 136
          Width = 318
          Height = 46
          Anchors = [akTop, akRight]
          Caption = #1601#1585#1605' '#1607#1575#1740' '#1602#1575#1576#1604' '#1575#1606#1578#1582#1575#1576' '#1583#1585' '#1576#1585#1711' '#1585#1587#1610#1583#1711#1610' '#1575#1587#1606#1575#1583' '#1608' '#1605#1580#1608#1586' '#1662#1585#1583#1575#1582#1578
          TabOrder = 9
          object SpeedButton3: TSpeedButton
            AlignWithMargins = True
            Left = 5
            Top = 18
            Width = 23
            Height = 23
            Hint = 'RelationshipFormTypes'
            Align = alLeft
            Caption = '...'
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton1Click
            ExplicitLeft = 16
            ExplicitTop = 24
            ExplicitHeight = 22
          end
          object edtRelationshipFormTypes: TDBEdit
            AlignWithMargins = True
            Left = 34
            Top = 18
            Width = 279
            Height = 23
            Align = alClient
            DataField = 'RelationshipFormTypes'
            DataSource = srcFormTypes
            TabOrder = 0
            ExplicitHeight = 21
          end
        end
      end
      object TabSheet7: TTabSheet
        Hint = '`'
        Caption = #1605#1588#1578#1585#1610
        ImageIndex = 6
        DesignSize = (
          829
          315)
        object Label39: TLabel
          Left = 678
          Top = 236
          Width = 130
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1608#1593' '#1578#1575#1579#1610#1585' '#1576#1585' '#1581#1587#1575#1576' '#1605#1588#1578#1585#1610' 1'
          ExplicitLeft = 679
        end
        object Label40: TLabel
          Left = 678
          Top = 261
          Width = 130
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1608#1593' '#1578#1575#1579#1610#1585' '#1576#1585' '#1581#1587#1575#1576' '#1605#1588#1578#1585#1610' 2'
          ExplicitLeft = 679
        end
        object Label17: TLabel
          Left = 2
          Top = 29
          Width = 152
          Height = 13
          BiDiMode = bdRightToLeft
          Caption = #1603#1583' '#1605#1588#1578#1585#1610' 2 '#1583#1585' Detail '#1601#1593#1575#1604' '#1576#1575#1588#1583
          ParentBiDiMode = False
        end
        object Label108: TLabel
          Left = 678
          Top = 288
          Width = 130
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1608#1593' '#1578#1575#1579#1610#1585' '#1576#1585' '#1581#1587#1575#1576' '#1605#1588#1578#1585#1610' 3'
          ExplicitLeft = 679
        end
        object GroupBox9: TGroupBox
          Left = 677
          Top = 54
          Width = 137
          Height = 170
          Anchors = [akTop, akRight]
          Caption = ' '#1606#1608#1593' '#1605#1588#1578#1585#1610' 1 '
          TabOrder = 0
          object ChkCustomerKind1: TCheckListBox
            Left = 2
            Top = 15
            Width = 133
            Height = 153
            Align = alClient
            ItemHeight = 13
            TabOrder = 0
            OnClick = ChkCustomerKind1Click
          end
        end
        object GroupBox8: TGroupBox
          Left = 531
          Top = 54
          Width = 137
          Height = 170
          Anchors = [akTop, akRight]
          Caption = ' '#1606#1608#1593' '#1605#1588#1578#1585#1610' 2 '
          TabOrder = 1
          object chkCustomerKind2: TCheckListBox
            Left = 2
            Top = 15
            Width = 133
            Height = 153
            Align = alClient
            ItemHeight = 13
            TabOrder = 0
            OnClick = ChkCustomerKind1Click
          end
        end
        object chkCustomer1: TDBCheckBox
          Left = 687
          Top = 27
          Width = 127
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1603#1583' '#1605#1588#1578#1585#1610' 1 '#1601#1593#1575#1604' '#1576#1575#1588#1583
          DataField = 'Customer1Active'
          DataSource = srcFormTypes
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object chkCustomer2: TDBCheckBox
          Left = 531
          Top = 27
          Width = 137
          Height = 17
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1603#1583' '#1605#1588#1578#1585#1610' 2 '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
          DataField = 'Customer2Active'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object BitBtn3: TBitBtn
          Left = 19
          Top = 230
          Width = 200
          Height = 25
          Caption = #1578#1606#1592#1610#1605' '#1606#1608#1593' '#1605#1588#1578#1585#1610' '#1575#1586' '#1603#1583' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606
          TabOrder = 4
          WordWrap = True
          OnClick = BtnCustomerGroupsToCustomerKindClick
        end
        object CmbCustomer1Effect: TDBComboBox
          Left = 364
          Top = 232
          Width = 311
          Height = 21
          Anchors = [akTop, akRight]
          Color = clWhite
          DataField = 'Customer1Effect'
          DataSource = srcFormTypes
          Items.Strings = (
            #1606#1583#1575#1585#1583
            #1575#1601#1586#1575#1610#1606#1583#1607' FormDate'
            #1603#1575#1607#1606#1583#1607'   FormDate'
            #1575#1601#1586#1575#1610#1606#1583#1607' '#1576#1575' '#1588#1585#1591' '#1587#1585#1585#1587#1610#1583' CheckDate'
            #1603#1575#1607#1606#1583#1607'   '#1576#1575' '#1588#1585#1591' '#1587#1585#1585#1587#1610#1583' CheckDate'
            #1575#1601#1586#1575#1610#1606#1583#1607' '#1594#1610#1585#1602#1591#1593#1610'('#1601#1602#1591' '#1670#1603#1607#1575#1610' '#1606#1586#1583' '#1570#1606' FromType '#1576#1575' '#1588#1585#1591' '#1587#1585#1585#1587#1610#1583')'
            #1603#1575#1607#1606#1583#1607'   '#1594#1610#1585#1602#1591#1593#1610'('#1601#1602#1591' '#1670#1603#1607#1575#1610' '#1606#1586#1583' '#1570#1606' FromType '#1576#1575' '#1588#1585#1591' '#1587#1585#1585#1587#1610#1583')')
          TabOrder = 5
        end
        object CmbCustomer2Effect: TDBComboBox
          Left = 364
          Top = 257
          Width = 311
          Height = 21
          Anchors = [akTop, akRight]
          Color = clWhite
          DataField = 'Customer2Effect'
          DataSource = srcFormTypes
          TabOrder = 6
        end
        object GroupBox13: TGroupBox
          Left = 17
          Top = 45
          Width = 137
          Height = 170
          Caption = 'Detail'#8207#1603#1583' '#1605#1588#1578#1585#1610' 2 '#1583#1585' '
          TabOrder = 7
          object ChkCustomer2DetailKind: TCheckListBox
            Left = 2
            Top = 15
            Width = 133
            Height = 153
            Align = alClient
            ItemHeight = 13
            TabOrder = 0
            OnClick = ChkCustomerKind1Click
          end
        end
        object BitBtn12: TBitBtn
          Left = 19
          Top = 255
          Width = 200
          Height = 25
          Caption = #1578#1606#1592#1610#1605' '#1603#1583' '#1605#1588#1578#1585#1610' 2 '#1583#1585' Detail'#8207' '#8207' '#1575#1586' '#1605#1588#1578#1585#1610'1'
          TabOrder = 8
          OnClick = BitBtn12Click
        end
        object GroupBox1: TGroupBox
          Left = 386
          Top = 54
          Width = 137
          Height = 170
          Caption = ' '#1606#1608#1593' '#1605#1588#1578#1585#1610' 3 '
          TabOrder = 9
          object chkCustomerKind3: TCheckListBox
            Left = 2
            Top = 15
            Width = 133
            Height = 153
            Align = alClient
            ItemHeight = 13
            TabOrder = 0
            OnClick = ChkCustomerKind1Click
          end
        end
        object dbchkPerson3Active: TDBCheckBox
          Left = 386
          Top = 27
          Width = 137
          Height = 17
          BiDiMode = bdRightToLeft
          Caption = #1603#1583' '#1605#1588#1578#1585#1610' 3 '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
          DataField = 'Customer3Active'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 10
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object cmbCustomer2ActiveOnDetail: TDBComboBox
          Left = 5
          Top = 1
          Width = 351
          Height = 21
          DataField = 'Customer2ActiveOnDetail'
          DataSource = srcFormTypes
          Items.Strings = (
            '0-'#1606#1576#1575#1588#1583
            '1- '#1576#1575#1588#1583' '#1608' '#1662#1740#1588' '#1601#1585#1590' '#1575#1606' '#1605#1588#1578#1585#1740' 2 Master'
            '2-'#1576#1575#1588#1583' '#1576#1583#1608#1606' '#1662#1610#1588' '#1601#1585#1590
            '3-'#1601#1602#1591' '#1583#1585' Grid '#1605#1585#1576#1608#1591' '#1576#1607' Detail'#1606#1605#1575#1610#1588' '#1588#1608#1583'.'#8207
            '4-'#1576#1575#1588#1583' '#1608' '#1662#1740#1588' '#1601#1585#1590' '#1575#1606' '#1605#1588#1578#1585#1740' 2 Master'#1608' '#1594#1740#1585#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588
            '5-'#1601#1593#1575#1604' '#1576#1575#1588#1583' '#1608' '#1662#1740#1588#1601#1585#1590' '#1575#1606' '#1605#1588#1578#1585#1740' 3 Master')
          TabOrder = 11
        end
        object cmbCustomer3Effect: TDBComboBox
          Left = 364
          Top = 284
          Width = 311
          Height = 21
          Anchors = [akTop, akRight]
          Color = clWhite
          DataField = 'Customer3Effect'
          DataSource = srcFormTypes
          TabOrder = 12
        end
        object dbchkCustomer4Active: TDBCheckBox
          Left = 240
          Top = 27
          Width = 137
          Height = 17
          BiDiMode = bdRightToLeft
          Caption = #1603#1583' '#1605#1588#1578#1585#1610' 4 '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
          DataField = 'Customer4Active'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 13
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object GroupBox17: TGroupBox
          Left = 240
          Top = 54
          Width = 137
          Height = 170
          Caption = ' '#1606#1608#1593' '#1605#1588#1578#1585#1610' 4 '
          TabOrder = 14
          object chkCustomerKind4: TCheckListBox
            Left = 2
            Top = 15
            Width = 133
            Height = 153
            Align = alClient
            ItemHeight = 13
            TabOrder = 0
            OnClick = ChkCustomerKind1Click
          end
        end
      end
      object TabSheet8: TTabSheet
        Caption = #1578#1606#1592#1610#1605#1575#1578' Menu'
        ImageIndex = 7
        object Label12: TLabel
          Left = 305
          Top = 13
          Width = 84
          Height = 13
          Caption = #1605#1581#1604' '#1606#1605#1575#1610#1588' '#1583#1585' '#1605#1606#1608
        end
        object Label38: TLabel
          Left = 305
          Top = 47
          Width = 52
          Height = 13
          Caption = #1585#1583#1610#1601' '#1583#1585' '#1605#1606#1608
          FocusControl = DBEdit26
        end
        object Label6: TLabel
          Left = 305
          Top = 111
          Width = 93
          Height = 13
          Alignment = taRightJustify
          BiDiMode = bdRightToLeft
          Caption = #1606#1608#1593' '#1601#1585#1605' '#1602#1575#1576#1604' '#1606#1605#1575#1610#1588' '
          ParentBiDiMode = False
        end
        object Label16: TLabel
          Left = 305
          Top = 144
          Width = 113
          Height = 13
          Alignment = taRightJustify
          BiDiMode = bdRightToLeft
          Caption = #1606#1608#1593' ('#1601#1585#1605') '#1575#1591#1604#1575#1593#1575#1578' Detail'#8207
          ParentBiDiMode = False
        end
        object cmbMnuPlaceID: TDBComboBox
          Left = 88
          Top = 10
          Width = 209
          Height = 21
          Style = csDropDownList
          DataField = 'MnuPlaceID'
          DataSource = srcFormTypes
          Items.Strings = (
            '0-'#1606#1583#1575#1585#1583
            '1-'#1608#1580#1607' '#1606#1602#1583
            '2-'#1583#1585#1610#1575#1601#1578' '#1670#1603' '#1608' '#1587#1601#1578#1607
            '3-'#1589#1583#1608#1585' '#1670#1603
            '4-'#1601#1610#1588' '#1608' '#1581#1608#1575#1604#1607
            '5-'#1578#1590#1605#1610#1606#1575#1578
            '6-'#1587#1575#1610#1585' '#1593#1605#1604#1610#1575#1578' '#1670#1603
            '7-'#1601#1585#1608#1588
            '8-'#1578#1587#1607#1610#1604#1575#1578)
          TabOrder = 0
        end
        object dbchkShowListOnMnu: TDBCheckBox
          Left = 120
          Top = 77
          Width = 177
          Height = 17
          Alignment = taLeftJustify
          BiDiMode = bdLeftToRight
          Caption = #1570#1610#1575' '#1604#1610#1587#1578' '#1601#1585#1605' '#1583#1585' '#1605#1606#1608' '#1606#1605#1575#1610#1588' '#1588#1608#1583'.'#8207
          DataField = 'ShowListOnMnu'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBEdit26: TDBEdit
          Left = 163
          Top = 43
          Width = 134
          Height = 21
          DataField = 'RowOnMnu'
          DataSource = srcFormTypes
          TabOrder = 1
        end
        object cmbDisplayFormType: TDBComboBox
          Left = 88
          Top = 107
          Width = 209
          Height = 21
          DataField = 'DisplayFormType'
          DataSource = srcFormTypes
          Items.Strings = (
            #1601#1585#1605' '#1608#1580#1607' '#1606#1602#1583
            #1601#1585#1605' '#1670#1603' '
            #1601#1585#1605' '#1601#1585#1575#1582#1608#1575#1606#1610
            #1601#1585#1605'  '#1578#1606#1582#1608#1575#1607
            #1601#1585#1605' '#1576#1585#1711' '#1585#1587#1610#1583#1711#1610' '#1575#1587#1606#1575#1583
            #1601#1585#1605' '#1578#1587#1607#1610#1604#1575#1578
            #1583#1585#1582#1608#1575#1587#1578' '#1608#1580#1607' '#1576#1608#1583#1580#1607
            #1601#1585#1605' '#1608#1580#1607' '#1606#1602#1583' '#1580#1583#1740#1583)
          TabOrder = 3
        end
        object cmbDetailDataType: TDBComboBox
          Left = 88
          Top = 140
          Width = 209
          Height = 21
          DataField = 'DetailDataType'
          DataSource = srcFormTypes
          Items.Strings = (
            #1583#1585#1610#1575#1601#1578' '#1670#1603
            #1589#1583#1608#1585' '#1670#1603
            #1601#1585#1575#1582#1608#1575#1606#1610
            #1578#1606#1582#1608#1575#1607)
          TabOrder = 4
        end
        object DBCheckBox9: TDBCheckBox
          Left = 100
          Top = 173
          Width = 197
          Height = 17
          Alignment = taLeftJustify
          BiDiMode = bdLeftToRight
          Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1583#1610#1587#1603#1578' '#1607#1575#1610' '#1576#1575#1606#1603' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'#8207
          DataField = 'RecallFormDisk'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 5
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object TabSheet17: TTabSheet
        Caption = #1583#1587#1578#1585#1587#1610
        ImageIndex = 7
        DesignSize = (
          829
          315)
        object Label60: TLabel
          Left = 740
          Top = 58
          Width = 26
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1575#1590#1575#1601#1607
          FocusControl = DBEdit37
          ExplicitLeft = 677
        end
        object Label61: TLabel
          Left = 740
          Top = 86
          Width = 33
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1608#1610#1585#1575#1610#1588
          FocusControl = DBEdit38
          ExplicitLeft = 677
        end
        object Label62: TLabel
          Left = 740
          Top = 115
          Width = 23
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1581#1584#1601
          FocusControl = DBEdit39
          ExplicitLeft = 677
        end
        object Label63: TLabel
          Left = 740
          Top = 143
          Width = 59
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578
          FocusControl = DBEdit40
          ExplicitLeft = 677
        end
        object Label64: TLabel
          Left = 740
          Top = 172
          Width = 19
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1670#1575#1662
          FocusControl = DBEdit41
          ExplicitLeft = 677
        end
        object Label65: TLabel
          Left = 740
          Top = 200
          Width = 66
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1579#1576#1578' '#1601#1585#1605' '#1605#1585#1578#1576#1591
          FocusControl = edtFormRelatedLevelID
          ExplicitLeft = 677
        end
        object Label66: TLabel
          Left = 502
          Top = 143
          Width = 80
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1603#1583#1610#1606#1711' '#1581#1587#1575#1576#1583#1575#1585#1610
          FocusControl = DBEdit43
          ExplicitLeft = 439
        end
        object Label98: TLabel
          Left = 502
          Top = 58
          Width = 65
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1576#1583#1610#1604' '#1576#1607' '#1605#1608#1602#1578
          FocusControl = DBEdit29
          ExplicitLeft = 439
        end
        object Label99: TLabel
          Left = 502
          Top = 86
          Width = 60
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1602#1591#1593#1610' '#1606#1605#1608#1583#1606
          FocusControl = DBEdit30
          ExplicitLeft = 439
        end
        object Label101: TLabel
          Left = 502
          Top = 115
          Width = 51
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1576#1575#1591#1604' '#1606#1605#1608#1583#1606
          FocusControl = DBEdit54
          ExplicitLeft = 439
        end
        object Label20: TLabel
          Left = 149
          Top = 58
          Width = 130
          Height = 13
          Caption = #1578#1594#1610#1610#1585' '#1608#1590#1593#1610#1578' '#1575#1585#1587#1575#1604' '#1575#1591#1604#1575#1593#1575#1578
          FocusControl = DBEdit5
        end
        object Label30: TLabel
          Left = 149
          Top = 86
          Width = 40
          Height = 13
          Caption = #1603#1662#1610' '#1601#1585#1605
          FocusControl = edtCopyFormLevelID
        end
        object DBEdit37: TDBEdit
          Left = 661
          Top = 54
          Width = 72
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'ADDLevelID'
          DataSource = srcFormTypes
          TabOrder = 0
        end
        object DBEdit38: TDBEdit
          Left = 661
          Top = 82
          Width = 72
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'EditLevelID'
          DataSource = srcFormTypes
          TabOrder = 1
        end
        object DBEdit39: TDBEdit
          Left = 661
          Top = 111
          Width = 72
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'DeleteLevelID'
          DataSource = srcFormTypes
          TabOrder = 2
        end
        object DBEdit40: TDBEdit
          Left = 661
          Top = 139
          Width = 72
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'ChangeStateLevelID'
          DataSource = srcFormTypes
          TabOrder = 3
        end
        object DBEdit41: TDBEdit
          Left = 661
          Top = 168
          Width = 72
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'PrintLevelID'
          DataSource = srcFormTypes
          TabOrder = 4
        end
        object edtFormRelatedLevelID: TDBEdit
          Left = 661
          Top = 196
          Width = 72
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'FormRelatedLevelID'
          DataSource = srcFormTypes
          TabOrder = 5
        end
        object DBEdit43: TDBEdit
          Left = 426
          Top = 139
          Width = 72
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'AccCodeLevelID'
          DataSource = srcFormTypes
          TabOrder = 6
        end
        object DBEdit29: TDBEdit
          Left = 426
          Top = 54
          Width = 72
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'State0ChangeLevelID'
          DataSource = srcFormTypes
          TabOrder = 7
        end
        object DBEdit30: TDBEdit
          Left = 426
          Top = 82
          Width = 72
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'State1ChangeLevelID'
          DataSource = srcFormTypes
          TabOrder = 8
        end
        object DBEdit54: TDBEdit
          Left = 424
          Top = 109
          Width = 72
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'State10ChangeLevelID'
          DataSource = srcFormTypes
          TabOrder = 9
        end
        object GroupBox15: TGroupBox
          Left = 0
          Top = 0
          Width = 688
          Height = 47
          Align = alCustom
          Caption = '  '#1601#1610#1604#1583#1607#1575#1610' '#1602#1575#1576#1604' '#1608#1610#1585#1575#1610#1588' '#1583#1585' '#1589#1608#1585#1578' '#1602#1591#1593#1610' '#1576#1608#1583#1606'  '
          TabOrder = 10
          object btnEditableFields: TSpeedButton
            Left = 6
            Top = 16
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = btnEditableFieldsClick
          end
          object edtEditableFields: TDBEdit
            Left = 31
            Top = 16
            Width = 442
            Height = 21
            DataField = 'EditableFields'
            DataSource = srcFormTypes
            TabOrder = 0
          end
        end
        object DBEdit5: TDBEdit
          Left = 72
          Top = 54
          Width = 72
          Height = 21
          DataField = 'TransmittalLevelID'
          DataSource = srcFormTypes
          TabOrder = 11
        end
        object edtCopyFormLevelID: TDBEdit
          Left = 72
          Top = 82
          Width = 72
          Height = 21
          DataField = 'CopyFormLevelID'
          TabOrder = 12
        end
      end
      object ts1: TTabSheet
        Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
        ImageIndex = 8
        DesignSize = (
          829
          315)
        object Label116: TLabel
          Left = 708
          Top = 98
          Width = 95
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Restart  '#1588#1605#1575#1585#1607' '#1601#1585#1605' '
          FocusControl = DBEdit22
          ExplicitLeft = 709
        end
        object dbchkRestartFormNumberOnCust1: TDBCheckBox
          Left = 567
          Top = 23
          Width = 236
          Height = 17
          Alignment = taLeftJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = '.'#1588#1608#1583' Restart '#1570#1610#1575' '#1588#1605#1575#1585#1607' '#1601#1585#1605' '#1576#1585' '#1581#1587#1576' '#1605#1588#1578#1585#1610'1 '
          DataField = 'RestartFormNumberOnCust1'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbchkDuplicateFormNoActive: TDBCheckBox
          Left = 653
          Top = 59
          Width = 150
          Height = 17
          Alignment = taLeftJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1570#1610#1575' '#1588#1605#1575#1585#1607' '#1601#1585#1605' '#1578#1603#1585#1575#1585#1610' '#1576#1575#1588#1583'.'#8207
          DataField = 'DuplicateFormNoActive'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
          WordWrap = True
        end
        object cmbRestartFormNumberOnSellsEmporium: TDBComboBox
          Left = 302
          Top = 96
          Width = 400
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'RestartFormNumberOnSellsEmporium'
          DataSource = srcFormTypes
          Items.Strings = (
            #1594#1610#1585' '#1601#1593#1575#1604
            #1588#1605#1575#1585#1607' '#1601#1585#1605' '#1576#1585' '#1581#1587#1576' '#1605#1585#1603#1586' '#1601#1585#1608#1588' Restart '#1588#1608#1583
            #1588#1605#1575#1585#1607' '#1601#1585#1605' '#1576#1585' '#1581#1587#1576' '#1606#1608#1593' '#1583#1585#1610#1575#1601#1578'/'#1662#1585#1583#1575#1582#1578' Restart '#1588#1608#1583' ')
          TabOrder = 2
        end
      end
      object TabSheet9: TTabSheet
        Caption = #1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607
        ImageIndex = 9
        DesignSize = (
          829
          315)
        object Label112: TLabel
          Left = 343
          Top = 58
          Width = 45
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = #1603#1583' '#1581#1587#1575#1576
          FocusControl = edtCashWageTopicCode1
          ParentBiDiMode = False
        end
        object Label113: TLabel
          Left = 343
          Top = 84
          Width = 51
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610
          FocusControl = edtCashWageDetailCode1
          ParentBiDiMode = False
        end
        object Label114: TLabel
          Left = 343
          Top = 110
          Width = 57
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'2'
          FocusControl = edtCashWageCTopicCode1
          ParentBiDiMode = False
        end
        object Label115: TLabel
          Left = 343
          Top = 136
          Width = 57
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = #1603#1583' '#1578#1601#1589#1610#1604#1610'3'
          FocusControl = edtCashWageCTopicCode3
          ParentBiDiMode = False
        end
        object dbchkVATActive: TDBCheckBox
          Left = 581
          Top = 17
          Width = 135
          Height = 17
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1575#1585#1586#1588' '#1575#1601#1586#1608#1583#1607' '#1601#1593#1575#1604' '#1576#1575#1588#1583
          DataField = 'VATActive'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
          WordWrap = True
        end
        object edtCashWageTopicCode1: TDBEdit
          Tag = 1
          Left = 200
          Top = 54
          Width = 140
          Height = 21
          DataField = 'CashWageTopicCode'
          DataSource = srcFormTypes
          TabOrder = 1
        end
        object edtCashWageDetailCode1: TDBEdit
          Tag = 2
          Left = 200
          Top = 80
          Width = 140
          Height = 21
          DataField = 'CashWageDetailCode'
          DataSource = srcFormTypes
          TabOrder = 2
        end
        object edtCashWageCTopicCode1: TDBEdit
          Tag = 3
          Left = 200
          Top = 106
          Width = 140
          Height = 21
          DataField = 'CashWageCTopicCode'
          DataSource = srcFormTypes
          TabOrder = 3
        end
        object edtCashWageCTopicCode3: TDBEdit
          Tag = 4
          Left = 200
          Top = 132
          Width = 140
          Height = 21
          DataField = 'CashWageCTopicCode2'
          DataSource = srcFormTypes
          TabOrder = 4
        end
      end
      object TabSheet10: TTabSheet
        Caption = #1601#1585#1575#1582#1608#1575#1606#1610
        ImageIndex = 10
        DesignSize = (
          829
          315)
        object Label107: TLabel
          Left = 688
          Top = 114
          Width = 128
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1608#1590#1593#1740#1578' '#1607#1575#1740' '#1602#1575#1576#1604' '#1601#1585#1575#1582#1608#1575#1606#1740' '
          ExplicitLeft = 689
        end
        object Label103: TLabel
          Left = 688
          Top = 84
          Width = 79
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1601#1610#1604#1578#1585' '#1583#1585' '#1601#1585#1575#1582#1608#1575#1606#1610
          ExplicitLeft = 689
        end
        object lbl3: TLabel
          Left = 688
          Top = 25
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1601#1585#1575#1582#1608#1575#1606#1740' '
          ExplicitLeft = 689
        end
        object Label119: TLabel
          Left = 688
          Top = 55
          Width = 102
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = #1603#1583' '#1607#1575#1610' '#1602#1575#1576#1604' '#1601#1585#1575#1582#1608#1575#1606#1610
          ExplicitLeft = 689
        end
        object SpeedButton1: TSpeedButton
          Left = 322
          Top = 50
          Width = 23
          Height = 22
          Hint = 'RecallFormTypes'
          Anchors = [akTop, akRight]
          Caption = '...'
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton1Click
          ExplicitLeft = 323
        end
        object edtCallableStates: TDBEdit
          Left = 322
          Top = 110
          Width = 365
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'CallableStates'
          DataSource = srcFormTypes
          TabOrder = 0
        end
        object DBCheckBox2: TDBCheckBox
          Left = 322
          Top = 137
          Width = 230
          Height = 17
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1583#1585' '#1607#1606#1711#1575#1605' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1670#1705#1607#1575#1740' '#1585#1608#1586' '#1606#1605#1575#1740#1588' '#1606#1588#1608#1606#1583'.'#8207
          DataField = 'NotSelcetCheckType1InRecall'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object cmbCustomer1UseInRecall: TDBComboBox
          Left = 322
          Top = 78
          Width = 365
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'Customer1UseInRecall'
          DataSource = srcFormTypes
          Items.Strings = (
            #1606#1583#1575#1585#1583
            #1605#1588#1578#1585#1610' 1 '#1610#1575' '#1605#1588#1578#1585#1610' 2'
            #1605#1588#1578#1585#1610'1'
            #1605#1588#1578#1585#1610'2'
            #1605#1588#1578#1585#1610' 2 '#1576#1575' '#1605#1588#1578#1585#1610' 1'
            #1605#1588#1578#1585#1610' 1 '#1576#1575'1 '#1608' '#1605#1588#1578#1585#1610' 2'#1576#1575'2'
            #1605#1588#1578#1585#1610' 2'#1576#1575'2')
          TabOrder = 2
        end
        object cmbHasRecall: TDBComboBox
          Left = 322
          Top = 23
          Width = 365
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'HasRecall'
          DataSource = srcFormTypes
          Items.Strings = (
            #1601#1585#1575#1582#1608#1575#1606#1740' '#1606#1583#1575#1585#1583'0- '
            '1-'#1601#1585#1575#1582#1608#1575#1606#1740'  '#1583#1575#1585#1583
            '2-'#1601#1585#1575#1582#1608#1575#1606#1740' '#1740#1705' '#1576#1607' '#1740#1705' ('#1601#1585#1575#1582#1608#1575#1606#1740' '#1575#1586' '#1601#1585#1605' '#1583#1585#1740#1575#1601#1578'/'#1662#1585#1583#1575#1582#1578' '#1576#1607' '#1670#1705')'
            '3-'#1601#1585#1575#1582#1608#1575#1606#1740' '#1576#1575' '#1580#1575#1576#1580#1575#1740#1740' '#1588#1605#1575#1585#1607' '#1670#1705' '#1608' '#1587#1585#1585#1587#1740#1583' '#1583#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1705#1605#1705#1740
            '4-'#1578#1594#1740#1740#1585' '#1601#1585#1605' '#1578#1575#1740#1662' '#1601#1593#1575#1604' '#1576#1575#1588#1583
            '5-'#1578#1594#1740#1740#1585' '#1601#1585#1605' '#1578#1575#1740#1662' '#1601#1593#1575#1604' '#1576#1575#1588#1583' AidInfoDate > FormDate ')
          TabOrder = 3
        end
        object edtRecallFormTypes: TDBEdit
          Left = 351
          Top = 51
          Width = 336
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'RecallFormTypes'
          DataSource = srcFormTypes
          TabOrder = 4
        end
        object Panel5: TPanel
          Left = 0
          Top = 215
          Width = 829
          Height = 100
          Align = alBottom
          Caption = 'Panel5'
          TabOrder = 5
          object chklstCopyAccOnRecall: TCheckListBox
            Left = 1
            Top = 1
            Width = 827
            Height = 98
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = clGradientInactiveCaption
            Columns = 1
            ItemHeight = 13
            Items.Strings = (
              
                #1583#1585' '#1607#1606#1711#1575#1605' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1603#1583#1607#1575#1610' '#1581#1587#1575#1576#1583#1575#1585#1610'  Detail    '#1576#1607'  Detail '#1606#1610#1586' '#1605#1606#1578#1602#1604 +
                ' '#1588#1608#1606#1583'.'#8207
              
                #1583#1585' '#1607#1606#1711#1575#1605' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1603#1583#1607#1575#1610' '#1581#1587#1575#1576#1583#1575#1585#1610'  Master  '#1576#1607'  Detail '#1606#1610#1586' '#1605#1606#1578#1602#1604' '#1588 +
                #1608#1606#1583'.'#8207
              
                #1583#1585' '#1607#1606#1711#1575#1605' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1603#1583#1607#1575#1610' '#1581#1587#1575#1576#1583#1575#1585#1610'  Master  '#1576#1607'  Detail '#1575#1711#1585' '#1582#1575#1604#1740' '#1576#1608 +
                #1583' Detail    '#1576#1607'  Detail   '#1606#1610#1586' '#1605#1606#1578#1602#1604' '#1588#1608#1606#1583'.'#8207
              
                #1601#1602#1591' '#1670#1705' '#1607#1575#1740' '#1579#1576#1578' '#1588#1583#1607' '#1583#1585' '#1587#1575#1605#1575#1606#1607' '#1589#1740#1575#1583' '#1583#1585' '#1601#1585#1575#1582#1608#1575#1606#1740' '#1670#1705' '#1607#1575' '#1606#1605#1575#1740#1588' '#1583#1575#1583#1607' '#1588 +
                #1608#1606#1583'.')
            TabOrder = 0
            OnClick = chklstOtherSettingsClick
          end
        end
        object chklstInsertSeverableOnRecall: TCheckListBox
          Left = 0
          Top = 0
          Width = 317
          Height = 215
          Align = alLeft
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = clGradientInactiveCaption
          Columns = 1
          ItemHeight = 13
          Items.Strings = (
            #1583#1585' '#1607#1606#1711#1575#1605' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1578#1601#1705#1740#1705' '#1662#1585#1583#1575#1582#1578' '#1606#1610#1586' '#1605#1606#1578#1602#1604' '#1588#1608#1583'.'#8207
            #1589#1583#1608#1585' '#1587#1606#1583' '#1705#1583' '#1605#1593#1740#1606' '#1605#1587#1578#1602#1740#1605' '#1575#1586' '#1578#1601#1705#1740#1705' '#1662#1585#1583#1575#1582#1578' '#1576#1575#1588#1583
            #1589#1583#1608#1585' '#1587#1606#1583' '#1705#1583' '#1578#1601#1589#1740#1604#1740' '#1605#1587#1578#1602#1740#1605' '#1575#1586' '#1578#1601#1705#1740#1705' '#1662#1585#1583#1575#1582#1578' '#1576#1575#1588#1583)
          TabOrder = 6
          OnClick = chklstOtherSettingsClick
        end
        object dbchkFormDateBiggerCheckDate: TDBCheckBox
          Left = 322
          Top = 162
          Width = 420
          Height = 17
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = 
            #1583#1585' '#1607#1606#1711#1575#1605' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1670#1705#1607#1575#1740' '#1705#1608#1670#1705#1578#1585' '#1740#1575' '#1605#1587#1575#1608#1740' '#1578#1575#1585#1740#1582' '#1601#1585#1605' '#1604#1740#1587#1578' '#1588#1608#1583'.'#8207'('#1608#1589#1608 +
            #1604' '#1670#1705#1607#1575#1740' '#1570#1740#1606#1583#1607')'
          DataField = 'FormDateBiggerCheckDate'
          DataSource = srcFormTypes
          ParentBiDiMode = False
          TabOrder = 7
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbchkFilterYearIDActive: TDBCheckBox
          Left = 435
          Top = 185
          Width = 307
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1575#1591#1604#1575#1593#1575#1578' '#1607#1605#1607' '#1587#1575#1604#1607#1575#1610' '#1605#1575#1604#1610' '#1580#1607#1578' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1606#1605#1575#1610#1588' '#1606#1600#1600#1588#1608#1606#1583'.'
          DataField = 'FilterYearIDActive'
          DataSource = srcFormTypes
          TabOrder = 8
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object TabSheet26: TTabSheet
        Caption = #1711#1585#1583#1588' '#1705#1575#1585
        ImageIndex = 11
        DesignSize = (
          829
          315)
        object Label83: TLabel
          Left = 733
          Top = 30
          Width = 43
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1711#1585#1583#1588' '#1705#1575#1585
          ExplicitLeft = 670
        end
      end
      object TabSheet27: TTabSheet
        Caption = #1601#1585#1605' '#1605#1585#1578#1576#1591
        ImageIndex = 12
        object Label110: TLabel
          Left = 603
          Top = 36
          Width = 134
          Height = 13
          BiDiMode = bdRightToLeftNoAlign
          Caption = #1705#1583' '#1601#1585#1605' '#1605#1585#1578#1576#1591' '#1579#1576#1578' '#1576#1607' '#1591#1608#1585' '#1705#1604#1740
          FocusControl = edtPostOverallType
          ParentBiDiMode = False
        end
        object Label124: TLabel
          Left = 615
          Top = 88
          Width = 60
          Height = 13
          Caption = #1603#1583' '#1601#1585#1605' '#1605#1585#1578#1576#1591
          FocusControl = edtCorrelateFormType
        end
        object edtPostOverallType: TDBEdit
          Left = 464
          Top = 32
          Width = 134
          Height = 21
          DataField = 'PostOverallType'
          DataSource = srcFormTypes
          TabOrder = 0
        end
        object edtCorrelateFormType: TDBEdit
          Left = 464
          Top = 88
          Width = 134
          Height = 21
          DataField = 'CorrelateFormType'
          DataSource = srcFormTypes
          TabOrder = 1
        end
        object chklstFormRegistrationControls: TCheckListBox
          Left = 0
          Top = 128
          Width = 829
          Height = 187
          Align = alBottom
          ItemHeight = 13
          Items.Strings = (
            #1580#1604#1608#1711#1610#1585#1610' '#1575#1586' '#1580#1583#1610#1583' '#1586#1583#1606' '#1548' '#1575#1711#1585' '#1575#1610#1606' '#1601#1585#1605' '#1575#1586' '#1591#1585#1610#1602' '#1601#1585#1605' '#1583#1740#1711#1585' '#1579#1576#1578' '#1605#1610' '#1588#1608#1583'.')
          TabOrder = 2
          OnClick = chklstOtherSettingsClick
        end
      end
      object TabSheet28: TTabSheet
        Caption = #1662#1585#1608#1688#1607'/'#1605#1588#1578#1585#1740
        ImageIndex = 13
        DesignSize = (
          829
          315)
        object Label111: TLabel
          Left = 494
          Top = 74
          Width = 80
          Height = 13
          Caption = #1606#1575#1605' '#1662#1585#1608#1688#1607' '#1583#1585' Detail'
          FocusControl = edtProjectIDLable
        end
        object dbchkProjectIDActive: TDBCheckBox
          Left = 680
          Top = 29
          Width = 127
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1603#1583' '#1662#1585#1608#1688#1607' '#1601#1593#1575#1604' '#1576#1575#1588#1583
          DataField = 'ProjectIDActive'
          DataSource = srcFormTypes
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object GroupBox16: TGroupBox
          Left = 670
          Top = 53
          Width = 137
          Height = 170
          Anchors = [akTop, akRight]
          Caption = ' '#1606#1608#1593' '#1605#1588#1578#1585#1610' '#1576#1585#1575#1740' '#1662#1585#1608#1688#1607' '
          TabOrder = 1
          object chkProjectIDKind: TCheckListBox
            Left = 2
            Top = 15
            Width = 133
            Height = 153
            Align = alClient
            ItemHeight = 13
            TabOrder = 0
            OnClick = ChkCustomerKind1Click
          end
        end
        object edtProjectIDLable: TDBEdit
          Left = 278
          Top = 70
          Width = 209
          Height = 21
          DataField = 'ProjectIDLable'
          DataSource = srcFormTypes
          TabOrder = 2
        end
      end
      object TabSheet29: TTabSheet
        Caption = #1705#1606#1578#1585#1604' '#1582#1575#1589
        ImageIndex = 14
        object chklstOtherSettings: TCheckListBox
          Left = 0
          Top = 0
          Width = 829
          Height = 315
          Align = alClient
          ItemHeight = 13
          Items.Strings = (
            #1670#1575#1576' '#1670#1705' '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
            #1606#1575#1605' '#1576#1575#1606#1705'/'#1588#1593#1576#1607'/'#1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1583#1585' '#1578#1606#1582#1608#1575#1607' '#1575#1590#1575#1601#1607' '#1588#1608#1583'.')
          TabOrder = 0
          OnClick = chklstOtherSettingsClick
        end
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 837
      Height = 200
      Align = alClient
      TabOrder = 0
      object Label5: TLabel
        Left = 424
        Top = 104
        Width = 3
        Height = 13
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 450
        Height = 198
        Align = alLeft
        TabOrder = 1
        object Label3: TLabel
          Left = 361
          Top = 41
          Width = 66
          Height = 13
          BiDiMode = bdRightToLeftNoAlign
          Caption = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578
          FocusControl = edtFormCaption
          ParentBiDiMode = False
        end
        object Label4: TLabel
          Left = 355
          Top = 12
          Width = 72
          Height = 13
          BiDiMode = bdRightToLeftNoAlign
          Caption = #1603#1583' '#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' '
          FocusControl = DBEdit3
          ParentBiDiMode = False
        end
        object SBtnReciptNumber: TSpeedButton
          Left = 190
          Top = 7
          Width = 23
          Height = 22
          Caption = '...'
          OnClick = SBtnReciptNumberClick
        end
        object lbl1: TLabel
          Left = 77
          Top = 12
          Width = 62
          Height = 13
          Caption = #1603#1583' '#1601#1585#1605' '#1580#1575#1606#1576#1610
          FocusControl = edtNextFormType
        end
        object LblRecordCount: TLabel
          Left = 1
          Top = 184
          Width = 448
          Height = 13
          Align = alBottom
          Alignment = taRightJustify
          Caption = 'LblRecordCount'
          ExplicitWidth = 76
        end
        object Label33: TLabel
          Left = 328
          Top = 143
          Width = 117
          Height = 13
          Caption = #1606#1581#1608#1607' '#1606#1605#1575#1740#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1585#1586#1740
        end
        object Label123: TLabel
          Left = 361
          Top = 68
          Width = 61
          Height = 13
          BiDiMode = bdRightToLeftNoAlign
          Caption = 'FormCaption'
          FocusControl = edtFormCaption_L2
          ParentBiDiMode = False
        end
        object Label133: TLabel
          Left = 355
          Top = 102
          Width = 61
          Height = 13
          Caption = #1603#1583' '#1601#1585#1605' '#1575#1589#1604#1610
          FocusControl = edtPrimaryFormType
        end
        object DBEdit3: TDBEdit
          Left = 216
          Top = 8
          Width = 134
          Height = 21
          DataField = 'FormType'
          DataSource = srcFormTypes
          TabOrder = 0
        end
        object edtFormCaption: TDBEdit
          Left = 13
          Top = 36
          Width = 336
          Height = 21
          DataField = 'FormCaption'
          DataSource = srcFormTypes
          TabOrder = 1
        end
        object GroupBox5: TGroupBox
          Left = 14
          Top = 88
          Width = 185
          Height = 45
          Caption = #1587#1585#1610#1575#1604' '#1601#1585#1605
          TabOrder = 4
          object Label36: TLabel
            Left = 170
            Top = 22
            Width = 7
            Height = 13
            Caption = #1575#1586
            FocusControl = DBEdit24
          end
          object Label37: TLabel
            Left = 80
            Top = 22
            Width = 6
            Height = 13
            Caption = #1578#1575
            FocusControl = DBEdit25
          end
          object DBEdit24: TDBEdit
            Left = 95
            Top = 18
            Width = 72
            Height = 21
            DataField = 'SerialNoFrom'
            DataSource = srcFormTypes
            TabOrder = 0
          end
          object DBEdit25: TDBEdit
            Left = 6
            Top = 18
            Width = 72
            Height = 21
            DataField = 'SerialNoTo'
            DataSource = srcFormTypes
            TabOrder = 1
          end
        end
        object edtNextFormType: TDBEdit
          Left = 14
          Top = 8
          Width = 60
          Height = 21
          DataField = 'NextFormType'
          DataSource = srcFormTypes
          TabOrder = 5
        end
        object cmbHow2DisplayArzTypeID: TDBComboBox
          Left = 13
          Top = 139
          Width = 311
          Height = 21
          DataField = 'How2DisplayArzTypeID'
          DataSource = srcFormTypes
          Items.Strings = (
            #1601#1593#1575#1604' '#1606#1576#1575#1588#1583
            #1601#1593#1575#1604' '#1576#1575#1588#1583#1608' '#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588' '#1576#1575#1588#1583
            #1601#1593#1575#1604' '#1576#1575#1588#1583' '#1608' '#1606#1585#1582' '#1575#1585#1586' '#1594#1740#1585' '#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588
            #1601#1593#1575#1604' '#1576#1575#1588#1583' '#1608' '#1711#1586#1740#1606#1607' '#1575#1608#1604#1548' '#1575#1585#1586' '#1575#1589#1604#1740#1548' '#1605#1576#1604#1594' '#1705#1604' '#1602#1575#1576#1604' '#1608#1740#1585#1575#1740#1588' '#1576#1575#1588#1583)
          TabOrder = 6
        end
        object edtFormCaption_L2: TDBEdit
          Left = 13
          Top = 63
          Width = 336
          Height = 21
          DataField = 'FormCaption_L2'
          DataSource = srcFormTypes
          TabOrder = 2
        end
        object edtPrimaryFormType: TDBEdit
          Left = 216
          Top = 100
          Width = 133
          Height = 21
          DataField = 'PrimaryFormType'
          DataSource = srcFormTypes
          TabOrder = 3
        end
      end
      object DBGrid1: TCedarDbgrid
        Left = 451
        Top = 1
        Width = 385
        Height = 198
        Align = alClient
        AutoFitColWidths = True
        Color = clCream
        DataSource = srcFormTypes
        DynProps = <>
        Flat = True
        FooterParams.FillStyle = cfstSolidEh
        FooterParams.Font.Charset = DEFAULT_CHARSET
        FooterParams.Font.Color = clWindowText
        FooterParams.Font.Height = -11
        FooterParams.Font.Name = 'Tahoma'
        FooterParams.Font.Style = [fsBold]
        FooterParams.ParentFont = False
        FooterParams.VertLines = False
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        HorzScrollBar.ExtraPanel.Visible = True
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        OddRowColor = clGradientInactiveCaption
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        RowHeight = 18
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        SortLocal = True
        TabOrder = 0
        OnKeyPress = DBGrid1KeyPress
        ActiveSearchPanel = False
        SelectFooterIndex = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FormType'
            Footers = <>
            Width = 67
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'FormCaption'
            Footers = <>
            Width = 68
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ReportFileName1'
            Footers = <>
            Width = 74
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ReportFileName2'
            Footers = <>
            Width = 77
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'HasRecall'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'RecallFormTypes'
            Footers = <>
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DisplayFormType'
            Footers = <>
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'DetailDataType'
            Footers = <>
            Width = 55
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  inherited ActionList: TActionList
    inherited actSearch_: TAction
      OnExecute = actSearch_Execute
    end
    object actMakeRecal: TAction [6]
      Caption = #1587#1575#1582#1578#1606' '#1601#1575#1610#1604' '#1580#1607#1578' '#1601#1585#1575#1582#1608#1575#1606#1610
      OnExecute = actMakeRecalExecute
    end
    object actprint: TAction
      Caption = #1670#1575#1662
      OnExecute = actprintExecute
    end
    object actSort: TAction
      Caption = #1578#1585#1578#1610#1576
      OnExecute = actSortExecute
    end
    object actSendToExcel: TAction
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnExecute = actSendToExcelExecute
    end
    object actRecal: TAction
      Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1578#1606#1592#1610#1605#1575#1578' '#1575#1586' '#1601#1575#1610#1604
      OnExecute = actRecalExecute
    end
    object actRecal2: TAction
      Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1578#1606#1592#1610#1605#1575#1578' '#1575#1586' '#1601#1575#1610#1604'('#1601#1602#1591' '#1578#1601#1575#1608#1578#1607#1575')'#8207
      OnExecute = actRecal2Execute
    end
    object actCopy: TAction
      Caption = #1603#1662#1610' '#1587#1591#1585' '#1580#1575#1585#1610
      OnExecute = actCopyExecute
    end
  end
  inherited ImageList1: TImageList
    Left = 152
    Top = 17
  end
  object qryFormTypes: TADOQuery
    AutoCalcFields = False
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterOpen = qryFormTypesAfterOpen
    AfterInsert = qryFormTypesAfterInsert
    BeforePost = qryFormTypesBeforePost
    AfterPost = qryFormTypesAfterPost
    BeforeDelete = qryFormTypesBeforeDelete
    AfterScroll = qryFormTypesAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT *  FROM  FormTypes')
    Left = 616
    Top = 109
    object qryFormTypesFormType: TWordField
      Tag = 3
      DisplayLabel = #1603#1583' '#1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' '
      FieldName = 'FormType'
    end
    object qryFormTypesFormCaption: TStringField
      Tag = 3
      DisplayLabel = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578
      FieldName = 'FormCaption'
      Required = True
      FixedChar = True
      Size = 50
    end
    object qryFormTypesReportFileName1: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1601#1585#1605' '#1670#1575#1662#1610' 1'
      FieldName = 'ReportFileName1'
      Size = 50
    end
    object qryFormTypesReportFileName2: TStringField
      Tag = 3
      DisplayLabel = #1606#1575#1605' '#1601#1585#1605' '#1670#1575#1662#1610' 2'
      FieldName = 'ReportFileName2'
      Size = 50
    end
    object qryFormTypesHasRecall: TWordField
      DisplayLabel = #1570#1610#1575' '#1601#1585#1575#1582#1575#1606#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1575#1585#1583'.'
      FieldName = 'HasRecall'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesRecallFormTypes: TStringField
      DisplayLabel = #1603#1583' '#1607#1575#1610' '#1602#1575#1576#1604' '#1601#1585#1575#1582#1575#1606#1610
      FieldName = 'RecallFormTypes'
      FixedChar = True
      Size = 250
    end
    object qryFormTypesCustomer1Active: TWordField
      DisplayLabel = #1570#1610#1575' '#1603#1583' '#1605#1588#1578#1585#1610' 1 '#1601#1593#1575#1604' '#1575#1587#1578'.'
      FieldName = 'Customer1Active'
    end
    object qryFormTypesCustomer1UseInRecall: TWordField
      DisplayLabel = #1570#1610#1575' '#1575#1586' '#1605#1588#1578#1585#1610' 1 '#1586#1605#1575#1606' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1576#1585#1575#1610' '#1601#1610#1604#1578#1585' '#1575#1587#1578#1601#1575#1583#1607' '#1605#1610#1588#1608#1583'.'
      FieldName = 'Customer1UseInRecall'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesCustomer1Groups: TStringField
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607#1575#1610' '#1602#1575#1576#1604' '#1606#1605#1575#1610#1588' '#1576#1585#1575#1610' '#1603#1583' '#1605#1588#1578#1585#1610' 1'
      FieldName = 'Customer1Groups'
      FixedChar = True
      Size = 250
    end
    object qryFormTypesCustomer1Label: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1603#1583' '#1605#1588#1578#1585#1610' 1'
      FieldName = 'Customer1Label'
      FixedChar = True
      Size = 50
    end
    object qryFormTypesCustomer1DocType: TWordField
      DisplayLabel = #1606#1608#1593' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1605#1588#1578#1585#1610' 1'
      FieldName = 'Customer1DocType'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesBedBes: TWordField
      DisplayLabel = #1578#1588#1582#1610#1589' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1605#1588#1578#1585#1610' 1'
      FieldName = 'BedBes'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesCustomer2Active: TWordField
      DisplayLabel = #1570#1610#1575' '#1603#1583' '#1605#1588#1578#1585#1610' 2 '#1601#1593#1575#1604' '#1575#1587#1578'.'
      FieldName = 'Customer2Active'
    end
    object qryFormTypesCustomer2Groups: TStringField
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607' '#1605#1588#1578#1585#1610#1575#1606' 2'
      FieldName = 'Customer2Groups'
      FixedChar = True
      Size = 250
    end
    object qryFormTypesCustomer2Lable: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1603#1583' '#1605#1588#1578#1585#1610' 2'
      FieldName = 'Customer2Lable'
      FixedChar = True
      Size = 50
    end
    object qryFormTypesCustomer2DocType: TWordField
      DisplayLabel = #1606#1608#1593' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1605#1588#1578#1585#1610'2'
      FieldName = 'Customer2DocType'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDisplayFormType: TWordField
      DisplayLabel = #1606#1608#1593' '#1601#1585#1605' '#1602#1575#1576#1604' '#1606#1605#1575#1610#1588' '
      FieldName = 'DisplayFormType'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesRestartFormNumberOnCust1: TWordField
      DisplayLabel = #1570#1610#1575' '#1588#1605#1575#1585#1607' '#1601#1585#1605' '#1576#1585' '#1581#1587#1576' '#1605#1588#1578#1585#1610'1 Restart  '#1588#1608#1583'.'
      FieldName = 'RestartFormNumberOnCust1'
    end
    object qryFormTypesNoteVisible: TWordField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1606#1605#1575#1610#1588' '#1588#1608#1583'.'
      FieldName = 'NoteVisible'
    end
    object qryFormTypesValueVisible: TWordField
      DisplayLabel = #1570#1610#1575' '#1605#1576#1604#1594' '#1606#1605#1575#1610#1588' '#1588#1608#1583'.'
      FieldName = 'ValueVisible'
    end
    object qryFormTypesCheckEntity: TWordField
      DisplayLabel = #1605#1608#1580#1608#1583#1610' '#1586#1605#1575#1606' '#1579#1576#1578' '#1582#1585#1608#1580#1610' '#1603#1606#1578#1585#1604' .'#1582#1585#1608#1580#1610' '#1603#1606#1578#1585#1604' '#1588#1608#1583'.'
      FieldName = 'CheckEntity'
    end
    object qryFormTypesShowListForReport2: TWordField
      DisplayLabel = #1576#1585#1575#1610' '#1601#1585#1605' '#1670#1575#1662#1610' 2 '#1604#1610#1587#1578' '#1603#1604#1610#1607' '#1670#1575#1662#1607#1575' '#1606#1605#1575#1610#1588' '#1588#1608#1583
      FieldName = 'ShowListForReport2'
    end
    object qryFormTypesBudgetCodePosition: TWordField
      DisplayLabel = #1603#1583' '#1576#1608#1583#1580#1607' '#1583#1585' Master '#1601#1593#1575#1604' '#1576#1575#1588#1583' '#1610#1575' Details'
      FieldName = 'BudgetCodePosition'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesAccountRelationPosition: TWordField
      DisplayLabel = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1583#1585' Master  '#1601#1593#1575#1604' '#1576#1575#1588#1583' '#1610#1575' Details'
      FieldName = 'AccountRelationPosition'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDetailNoteVisible: TWordField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' Details '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
      FieldName = 'DetailNoteVisible'
    end
    object qryFormTypesCustomer2ActiveOnDetail: TWordField
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610' 2 '#1583#1585' Detail '#1601#1593#1575#1604' '#1576#1575#1588#1583'.'
      FieldName = 'Customer2ActiveOnDetail'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDefaultCustDetailCodeFromMaster: TWordField
      DisplayLabel = #1662#1610#1588' '#1601#1585#1590' '#1603#1583' '#1605#1588#1578#1585#1610' 2 Details '#1575#1586' Master  '#1580#1608#1575#1606#1583#1607' '#1588#1608#1583' '
      FieldName = 'DefaultCustDetailCodeFromMaster'
    end
    object qryFormTypesDetailDataType: TWordField
      DisplayLabel = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' Details'
      FieldName = 'DetailDataType'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesPrintCount: TWordField
      FieldName = 'PrintCount'
    end
    object qryFormTypesFooterSigns: TStringField
      FieldName = 'FooterSigns'
      Size = 250
    end
    object qryFormTypesFormDescription: TStringField
      FieldName = 'FormDescription'
      Size = 250
    end
    object qryFormTypesBudgetEffect: TWordField
      DisplayLabel = #1606#1608#1593' '#1578#1575#1579#1610#1585' '#1576#1585' '#1576#1608#1583#1580#1607
      FieldName = 'BudgetEffect'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesEffectableFormTypes: TStringField
      DisplayLabel = #1603#1583' '#1601#1585#1605#1607#1575#1610' '#1578#1570' '#1579#1610#1585' '#1662#1584#1610#1585' '#1576#1608' '#1583#1580#1607
      FieldName = 'EffectableFormTypes'
      Size = 200
    end
    object qryFormTypesBudgetEffectChangeAction: TWordField
      DisplayLabel = #1606#1581#1608#1607' '#1576#1585#1582#1608#1583' '#1576#1575' '#1578#1594#1610#1610#1585' '#1605#1575#1607#1610#1578' '#1576#1608#1583#1580#1607
      FieldName = 'BudgetEffectChangeAction'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesBudgetActiveOnCustomer1: TWordField
      FieldName = 'BudgetActiveOnCustomer1'
    end
    object qryFormTypesBudgetRecalKind: TWordField
      DisplayLabel = #1606#1581#1608#1607' '#1576#1585#1582#1608#1583' '#1576#1575' '#1578#1594#1610#1610#1585' '#1605#1575#1607#1610#1578' '#1576#1608#1583#1580#1607
      FieldName = 'BudgetRecalKind'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesAidInfoActive: TWordField
      DisplayLabel = #1605#1581#1604' '#1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1603#1605#1603#1610
      FieldName = 'AidInfoActive'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesAidInfoCaption: TStringField
      FieldName = 'AidInfoCaption'
      Size = 50
    end
    object qryFormTypesCheckDateActive: TWordField
      FieldName = 'CheckDateActive'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesPay_Topic_Active: TWordField
      FieldName = 'Pay_Topic_Active'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesMnuPlaceID: TIntegerField
      DisplayLabel = #1605#1581#1604' '#1606#1605#1575#1610#1588' '#1583#1585' '#1605#1606#1608
      FieldName = 'MnuPlaceID'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesSerialNoFrom: TIntegerField
      DisplayLabel = #1575#1586
      FieldName = 'SerialNoFrom'
    end
    object qryFormTypesSerialNoTo: TIntegerField
      DisplayLabel = #1578#1575
      FieldName = 'SerialNoTo'
    end
    object qryFormTypesAutoStateChange: TWordField
      DisplayLabel = #1570#1610#1575' '#1576#1593#1583' '#1575#1586' '#1670#1575#1662' '#1602#1591#1593#1610' '#1588#1608#1583
      FieldName = 'AutoStateChange'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesUserSecurityCheckActive: TWordField
      DisplayLabel = #1570#1610#1575' '#1575#1591#1604#1575#1593#1575#1578' '#1575' '#1576#1585' '#1575#1587#1575#1587' '#1603#1583' '#1603#1575#1585#1576#1585' '#1603#1606#1578#1585#1604' '#1588#1608#1583
      FieldName = 'UserSecurityCheckActive'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesMaxRowsPerForm: TIntegerField
      DisplayLabel = #1581#1583#1575#1603#1579#1585' '#1585#1603#1608#1585#1583' '#1583#1585' Detail'
      FieldName = 'MaxRowsPerForm'
    end
    object qryFormTypesCustomer2OnDetailLable: TStringField
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610' '#1583#1585' Detail'
      FieldName = 'Customer2OnDetailLable'
      Size = 50
    end
    object qryFormTypesChangeFormNo_DateActive: TWordField
      FieldName = 'ChangeFormNo_DateActive'
    end
    object qryFormTypesCustomerKind1: TStringField
      FieldName = 'CustomerKind1'
      Size = 50
    end
    object qryFormTypesCustomerKind2: TStringField
      FieldName = 'CustomerKind2'
      Size = 50
    end
    object qryFormTypesSerialCheckActive: TWordField
      FieldName = 'SerialCheckActive'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesShowListOnMnu: TWordField
      FieldName = 'ShowListOnMnu'
    end
    object qryFormTypesRowOnMnu: TIntegerField
      DisplayLabel = #1585#1583#1610#1601' '#1583#1585' '#1605#1606#1608
      FieldName = 'RowOnMnu'
    end
    object qryFormTypesCheckFor_4Print: TWordField
      DisplayLabel = #1583#1585' '#1608#1580#1607
      FieldName = 'CheckFor_4Print'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesCustomer1Effect: TWordField
      FieldName = 'Customer1Effect'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesCustomer2Effect: TWordField
      FieldName = 'Customer2Effect'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDefaultCTopic2_Bed: TWordField
      FieldName = 'DefaultCTopic2_Bed'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDefaultCTopic2_Bes: TWordField
      FieldName = 'DefaultCTopic2_Bes'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDefaultCTopic_Bed: TWordField
      FieldName = 'DefaultCTopic_Bed'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDefaultCTopic_Bes: TWordField
      FieldName = 'DefaultCTopic_Bes'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDefaultDetail_Bed: TWordField
      FieldName = 'DefaultDetail_Bed'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDefaultDetail_Bes: TWordField
      FieldName = 'DefaultDetail_Bes'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDefaultTopic_Bed: TWordField
      FieldName = 'DefaultTopic_Bed'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDefaultTopic_Bes: TWordField
      FieldName = 'DefaultTopic_Bes'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesCustCodeUse4Bed: TWordField
      FieldName = 'CustCodeUse4Bed'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesCustCodeUse4Bes: TWordField
      FieldName = 'CustCodeUse4Bes'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesMakeDoc: TWordField
      FieldName = 'MakeDoc'
    end
    object qryFormTypesCashWageActive: TWordField
      FieldName = 'CashWageActive'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesCashWageDetailCode: TStringField
      FieldName = 'CashWageDetailCode'
      Size = 12
    end
    object qryFormTypesCashWageCTopicCode: TStringField
      FieldName = 'CashWageCTopicCode'
      Size = 12
    end
    object qryFormTypesCashWageCTopicCode2: TStringField
      FieldName = 'CashWageCTopicCode2'
      Size = 12
    end
    object qryFormTypesConstDetailCode_Bed: TStringField
      FieldName = 'ConstDetailCode_Bed'
      Size = 12
    end
    object qryFormTypesConstDetailCode_Bes: TStringField
      FieldName = 'ConstDetailCode_Bes'
      Size = 12
    end
    object qryFormTypesADDLevelID: TWordField
      FieldName = 'ADDLevelID'
    end
    object qryFormTypesEditLevelID: TWordField
      FieldName = 'EditLevelID'
    end
    object qryFormTypesDeleteLevelID: TWordField
      FieldName = 'DeleteLevelID'
    end
    object qryFormTypesChangeStateLevelID: TWordField
      FieldName = 'ChangeStateLevelID'
    end
    object qryFormTypesPrintLevelID: TWordField
      FieldName = 'PrintLevelID'
    end
    object qryFormTypesFormRelatedLevelID: TWordField
      FieldName = 'FormRelatedLevelID'
    end
    object qryFormTypesAccCodeLevelID: TWordField
      FieldName = 'AccCodeLevelID'
    end
    object qryFormTypesRptAddAccountKind: TWordField
      FieldName = 'RptAddAccountKind'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesRptAddUtilizeCustCode: TWordField
      FieldName = 'RptAddUtilizeCustCode'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesRptAddWorkableCheckKind: TWordField
      FieldName = 'RptAddWorkableCheckKind'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesRptDecAccountKind: TWordField
      FieldName = 'RptDecAccountKind'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesRptDecUtilizeCustCode: TWordField
      FieldName = 'RptDecUtilizeCustCode'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesRptDecWorkableCheckKind: TWordField
      FieldName = 'RptDecWorkableCheckKind'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesCustAddUtilizeCustCode: TWordField
      FieldName = 'CustAddUtilizeCustCode'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesCustAddCondition: TWordField
      FieldName = 'CustAddCondition'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesCustAddWorkableCheckKind: TWordField
      FieldName = 'CustAddWorkableCheckKind'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesCustDecUtilizeCustCode: TWordField
      FieldName = 'CustDecUtilizeCustCode'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesCustDecCondition: TWordField
      FieldName = 'CustDecCondition'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesCustDecWorkableCheckKind: TWordField
      FieldName = 'CustDecWorkableCheckKind'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesCustomer2DetailKind: TStringField
      FieldName = 'Customer2DetailKind'
      Size = 50
    end
    object qryFormTypesAccStateActive: TWordField
      FieldName = 'AccStateActive'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesManegerNoteActive: TWordField
      FieldName = 'ManegerNoteActive'
    end
    object qryFormTypesTabSheetActive: TWordField
      FieldName = 'TabSheetActive'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDefaultTopicInInset: TWordField
      FieldName = 'DefaultTopicInInset'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDefaultDetailInInsert: TWordField
      FieldName = 'DefaultDetailInInsert'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDefaultCTopicInInsert: TWordField
      FieldName = 'DefaultCTopicInInsert'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDefaultCTopic2InInsert: TWordField
      FieldName = 'DefaultCTopic2InInsert'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesCheckType: TIntegerField
      FieldName = 'CheckType'
    end
    object qryFormTypesCashType: TIntegerField
      FieldName = 'CashType'
    end
    object qryFormTypesInfoUse4Bed: TWordField
      FieldName = 'InfoUse4Bed'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesInfoUse4Bes: TWordField
      FieldName = 'InfoUse4Bes'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesState0ChangeLevelID: TWordField
      FieldName = 'State0ChangeLevelID'
    end
    object qryFormTypesState1ChangeLevelID: TWordField
      FieldName = 'State1ChangeLevelID'
    end
    object qryFormTypesState10ChangeLevelID: TWordField
      FieldName = 'State10ChangeLevelID'
    end
    object qryFormTypesFormTopicSerial: TIntegerField
      FieldName = 'FormTopicSerial'
    end
    object qryFormTypesFormPaySerial: TIntegerField
      FieldName = 'FormPaySerial'
    end
    object qryFormTypesMasterLoan: TWordField
      FieldName = 'MasterLoan'
    end
    object qryFormTypesRecallFormDisk: TWordField
      FieldName = 'RecallFormDisk'
    end
    object qryFormTypesTopicCodeActive: TWordField
      FieldName = 'TopicCodeActive'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDetailCodeActive: TWordField
      FieldName = 'DetailCodeActive'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesCTopicCode1Active: TWordField
      FieldName = 'CTopicCode1Active'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesCTopicCode2Active: TWordField
      FieldName = 'CTopicCode2Active'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesUpholdActive: TWordField
      FieldName = 'UpholdActive'
    end
    object qryFormTypesEditableFields: TWideStringField
      FieldName = 'EditableFields'
      Size = 1000
    end
    object qryFormTypesCustomerDetailsDocType: TWordField
      FieldName = 'CustomerDetailsDocType'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesBedBesDetails: TWordField
      FieldName = 'BedBesDetails'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesSellsEmporiumActive: TWordField
      FieldName = 'SellsEmporiumActive'
    end
    object qryFormTypesSellsMethodActive: TWordField
      FieldName = 'SellsMethodActive'
    end
    object qryFormTypesDuplicateFormNoActive: TWordField
      FieldName = 'DuplicateFormNoActive'
    end
    object qryFormTypesPrintAfterPost: TWordField
      FieldName = 'PrintAfterPost'
    end
    object qryFormTypesCalcCheckDateOfLookUpsAmount1: TWordField
      FieldName = 'CalcCheckDateOfLookUpsAmount1'
    end
    object qryFormTypesCustomer3Active: TWordField
      FieldName = 'Customer3Active'
    end
    object qryFormTypesCustomer3Lable: TWideStringField
      FieldName = 'Customer3Lable'
      Size = 50
    end
    object qryFormTypesCustomerKind3: TWideStringField
      FieldName = 'CustomerKind3'
      Size = 50
    end
    object qryFormTypesRestartFormNumberOnSellsEmporium: TWordField
      FieldName = 'RestartFormNumberOnSellsEmporium'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesTransmittalActive: TWordField
      FieldName = 'TransmittalActive'
    end
    object qryFormTypesTransmittalLevelID: TWordField
      FieldName = 'TransmittalLevelID'
    end
    object qryFormTypesDocTypeCode: TIntegerField
      FieldName = 'DocTypeCode'
    end
    object qryFormTypesRelatedReciptTypes: TStringField
      FieldName = 'RelatedReciptTypes'
      FixedChar = True
      Size = 270
    end
    object qryFormTypesVATActive: TWordField
      FieldName = 'VATActive'
    end
    object qryFormTypesNextFormType: TWordField
      FieldName = 'NextFormType'
    end
    object qryFormTypesDefaultCTopic3_Bed: TWordField
      FieldName = 'DefaultCTopic3_Bed'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDefaultCTopic3_Bes: TWordField
      FieldName = 'DefaultCTopic3_Bes'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesCTopicCode3Active: TWordField
      FieldName = 'CTopicCode3Active'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesAccountNumberNewActive: TWordField
      FieldName = 'AccountNumberNewActive'
    end
    object qryFormTypesCopyFormLevelID: TWordField
      FieldName = 'CopyFormLevelID'
    end
    object qryFormTypesOrderByFields: TWideStringField
      FieldName = 'OrderByFields'
      Size = 100
    end
    object qryFormTypesDay4Edit: TWordField
      FieldName = 'Day4Edit'
    end
    object qryFormTypesHow2DisplayArzTypeID: TWordField
      FieldName = 'How2DisplayArzTypeID'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesLoansType: TIntegerField
      FieldName = 'LoansType'
    end
    object qryFormTypesGuaranteesType: TIntegerField
      FieldName = 'GuaranteesType'
    end
    object qryFormTypesAidInfo2NoCaption: TStringField
      FieldName = 'AidInfo2NoCaption'
      Size = 50
    end
    object qryFormTypesSubAmountCaption: TStringField
      FieldName = 'SubAmountCaption'
      Size = 50
    end
    object qryFormTypesConstTopicCode_Bed: TLargeintField
      FieldName = 'ConstTopicCode_Bed'
    end
    object qryFormTypesConstTopicCode_Bes: TLargeintField
      FieldName = 'ConstTopicCode_Bes'
    end
    object qryFormTypesCashWageTopicCode: TLargeintField
      FieldName = 'CashWageTopicCode'
    end
    object qryFormTypesAutoPrintOnItemAmount: TBCDField
      FieldName = 'AutoPrintOnItemAmount'
      Precision = 19
    end
    object qryFormTypesPriorityFormDate: TWordField
      FieldName = 'PriorityFormDate'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesRelating4Help: TStringField
      FieldName = 'Relating4Help'
      Size = 25
    end
    object qryFormTypesProcedureKindList: TStringField
      FieldName = 'ProcedureKindList'
      Size = 50
    end
    object qryFormTypesWorkFlowID: TIntegerField
      FieldName = 'WorkFlowID'
    end
    object qryFormTypesOtherRptFiles: TStringField
      FieldName = 'OtherRptFiles'
      Size = 250
    end
    object qryFormTypesOtherRptCaptions: TStringField
      FieldName = 'OtherRptCaptions'
      Size = 250
    end
    object qryFormTypesCheckNumberActive: TWordField
      FieldName = 'CheckNumberActive'
    end
    object qryFormTypesCallableStates: TStringField
      FieldName = 'CallableStates'
      FixedChar = True
      Size = 250
    end
    object qryFormTypesInsertSeverableOnRecall: TWordField
      FieldName = 'InsertSeverableOnRecall'
    end
    object qryFormTypesDefaultDateActive: TWordField
      FieldName = 'DefaultDateActive'
    end
    object qryFormTypesCustomer3Effect: TWordField
      FieldName = 'Customer3Effect'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesOrderByFieldsItem: TWideStringField
      FieldName = 'OrderByFieldsItem'
      Size = 100
    end
    object qryFormTypesRelationshipFormTypes: TStringField
      FieldName = 'RelationshipFormTypes'
      Size = 200
    end
    object qryFormTypesPostOverallType: TIntegerField
      FieldName = 'PostOverallType'
    end
    object qryFormTypesNotSelcetCheckType1InRecall: TWordField
      FieldName = 'NotSelcetCheckType1InRecall'
    end
    object qryFormTypesProjectIDActive: TWordField
      FieldName = 'ProjectIDActive'
    end
    object qryFormTypesProjectIDLable: TWideStringField
      FieldName = 'ProjectIDLable'
      Size = 50
    end
    object qryFormTypesProjectIDKind: TWideStringField
      FieldName = 'ProjectIDKind'
      Size = 50
    end
    object qryFormTypesFormStateDefault4Doc: TWordField
      FieldName = 'FormStateDefault4Doc'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesConstTopicCode_ArzBed: TLargeintField
      FieldName = 'ConstTopicCode_ArzBed'
    end
    object qryFormTypesConstTopicCode_ArzBes: TLargeintField
      FieldName = 'ConstTopicCode_ArzBes'
    end
    object qryFormTypesOtherSettings: TLargeintField
      FieldName = 'OtherSettings'
    end
    object qryFormTypesFormDateBiggerCheckDate: TWordField
      FieldName = 'FormDateBiggerCheckDate'
    end
    object qryFormTypesCustomer4Active: TWordField
      FieldName = 'Customer4Active'
    end
    object qryFormTypesCustomer4Lable: TWideStringField
      FieldName = 'Customer4Lable'
      Size = 50
    end
    object qryFormTypesCustomerKind4: TWideStringField
      FieldName = 'CustomerKind4'
      Size = 50
    end
    object qryFormTypesSeparationDoc: TWordField
      FieldName = 'SeparationDoc'
    end
    object qryFormTypesCopyAccOnRecall: TLargeintField
      FieldName = 'CopyAccOnRecall'
    end
    object qryFormTypesFilterYearIDActive: TWordField
      FieldName = 'FilterYearIDActive'
    end
    object qryFormTypesUseBudgetKind: TWordField
      FieldName = 'UseBudgetKind'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesFormCaption_L2: TStringField
      DisplayLabel = 'FormCaption'
      FieldName = 'FormCaption_L2'
      Size = 50
    end
    object qryFormTypesCorrelateFormType: TWordField
      Tag = 3
      DisplayLabel = #1603#1583' '#1601#1585#1605' '#1605#1585#1578#1576#1591
      FieldName = 'CorrelateFormType'
    end
    object qryFormTypesFormRegistrationControls: TLargeintField
      FieldName = 'FormRegistrationControls'
    end
    object qryFormTypesDefaultCurrencyType_Bed: TWordField
      FieldName = 'DefaultCurrencyType_Bed'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDefaultCurrencyType_Bes: TWordField
      FieldName = 'DefaultCurrencyType_Bes'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDefaultBudget_Bed: TWordField
      FieldName = 'DefaultBudget_Bed'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDefaultBudget_Bes: TWordField
      FieldName = 'DefaultBudget_Bes'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDefaultProject_Bed: TWordField
      FieldName = 'DefaultProject_Bed'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDefaultProject_Bes: TWordField
      FieldName = 'DefaultProject_Bes'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDefaultAidInfo_Bed: TWordField
      FieldName = 'DefaultAidInfo_Bed'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesDefaultAidInfo_Bes: TWordField
      FieldName = 'DefaultAidInfo_Bes'
      OnGetText = ForAllDBComboBoxGetText
      OnSetText = ForAllDBComboBoxSetText
    end
    object qryFormTypesPrimaryFormType: TWordField
      FieldName = 'PrimaryFormType'
    end
  end
  object srcFormTypes: TDataSource
    DataSet = qryFormTypes
    OnStateChange = srcFormTypesStateChange
    Left = 712
    Top = 103
  end
  object OpenDialog1: TOpenDialog
    Filter = 'ReportName|*.rtm'
    Left = 316
    Top = 11
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcFormTypes
    OpenDataSource = False
    UserName = 'DBPipeline1'
    Left = 456
    Top = 8
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RefreshTokenLifeSpan = 365
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    EmailSettings.ConnectionSettings.ConnectionStatusInfo = [csiStatusBar]
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
    PDFSettings.Layers = True
    PDFSettings.Outline = True
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
    CloudDriveSettings.DropBoxSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.DropBoxSettings.SharedResources = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.GoogleDriveSettings.SharedResources = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.OAuth2.RefreshTokenLifeSpan = 365
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    CloudDriveSettings.OneDriveSettings.SharedResources = True
    Left = 559
    Top = 6
    Version = '23.0'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 17992
        mmWidth = 266701
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = #1593#1606#1608#1575#1606' '#1575#1591#1604#1575#1593#1575#1578
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
        mmLeft = 210344
        mmTop = 16140
        mmWidth = 43921
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 0
        mmTop = 12171
        mmWidth = 266701
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 254530
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = #1603#1583' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 256117
        mmTop = 16404
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1670#1575#1662' 2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 109273
        mmTop = 16404
        mmWidth = 41540
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 151077
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 5821
        mmLeft = 1588
        mmTop = 6615
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1601#1585#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5292
        mmLeft = 248709
        mmTop = 10319
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1670#1575#1662' 1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 152929
        mmTop = 16404
        mmWidth = 38629
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 208757
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = #1606#1581#1608#1607' '#1601#1585#1575#1582#1608#1575#1606#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 193675
        mmTop = 16140
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 192088
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label201'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 107686
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 34131
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1605#1588#1578#1585#1610' 2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 0
        mmTop = 16404
        mmWidth = 32808
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1605#1588#1578#1585#1610'1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 75406
        mmTop = 16404
        mmWidth = 31750
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1588#1582#1610#1589' '#1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610' '#1605#1588#1578#1585#1610'1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 36513
        mmTop = 16404
        mmWidth = 35719
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Yagut'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        mmHeight = 5292
        mmLeft = 73290
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
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
        mmLeft = 95250
        mmTop = 0
        mmWidth = 52917
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = #1604#1610#1587#1578' '#1605#1588#1582#1589#1575#1578' '#1601#1585#1605#1607#1575#1610' '#1582#1586#1575#1606#1607#8204#1583#1575#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 7673
        mmLeft = 91017
        mmTop = 6615
        mmWidth = 63500
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = #1578#1575#1585#1610#1582' '#1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 6350
        mmLeft = 1588
        mmTop = 0
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'FormType'
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
        mmLeft = 256117
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'FormCaption'
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
        mmLeft = 210344
        mmTop = 0
        mmWidth = 43921
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'ReportFileName1'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 152929
        mmTop = 0
        mmWidth = 38629
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'ReportFileName2'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6085
        mmLeft = 109273
        mmTop = 265
        mmWidth = 41540
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        OnGetText = ppDBText6GetText
        Border.mmPadding = 0
        DataField = 'HasRecall'
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
        mmLeft = 193940
        mmTop = 0
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppDBTxtBedBes: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTxtBedBes'
        OnGetText = ppDBTxtBedBesGetText
        Border.mmPadding = 0
        DataField = 'Customer1DocType'
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
        mmLeft = 75671
        mmTop = 265
        mmWidth = 31750
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        OnGetText = ppDBTxtBedBesGetText
        Border.mmPadding = 0
        DataField = 'Customer2DocType'
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
        mmLeft = 0
        mmTop = 0
        mmWidth = 32808
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBTxtBedBes1'
        OnGetText = ppDBText3GetText
        Border.mmPadding = 0
        DataField = 'BedBes'
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
        mmLeft = 36513
        mmTop = 265
        mmWidth = 35719
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 0
        mmTop = 0
        mmWidth = 266701
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
  object qryAccCode: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterInsert = qryAccCodeAfterInsert
    BeforePost = qryAccCodeBeforePost
    Parameters = <
      item
        Name = 'FormType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  * FROM    FormTypesAccCode'
      'WHERE FormType = :FormType')
    Left = 519
    Top = 146
    object qryAccCodeFormType: TWordField
      FieldName = 'FormType'
    end
    object qryAccCodeInfoKind: TWordField
      DisplayLabel = #1606#1608#1593
      FieldName = 'InfoKind'
      OnGetText = qryAccCodeInfoKindGetText
      OnSetText = qryAccCodeInfoKindSetText
    end
    object qryAccCodeBedBes: TWordField
      DisplayLabel = #1578#1588#1582#1610#1589
      FieldName = 'BedBes'
      OnGetText = qryAccCodeBedBesGetText
      OnSetText = qryAccCodeBedBesSetText
    end
    object qryAccCodeTopicCode: TLargeintField
      DisplayLabel = #1603#1583#1581#1587#1575#1576
      FieldName = 'TopicCode'
    end
    object qryAccCodeDetailCode: TStringField
      DisplayLabel = #1603#1583#1578#1601#1589#1610#1604#1610
      FieldName = 'DetailCode'
      Size = 12
    end
    object qryAccCodeCTopicCode: TStringField
      DisplayLabel = #1603#1583#1578#1601#1589#1740#1604#1740'2'
      FieldName = 'CTopicCode'
      Size = 12
    end
    object qryAccCodeCTopicCode2: TStringField
      DisplayLabel = #1603#1583#1605'.'#1607'2'
      FieldName = 'CTopicCode2'
      Size = 12
    end
    object qryAccCodeCTopicCode3: TStringField
      DisplayLabel = #1603#1583#1605'.'#1607'3'
      FieldName = 'CTopicCode3'
      Size = 12
    end
    object qryAccCodeNote: TWideStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'Note'
      Size = 250
    end
    object qryAccCodeCustID: TIntegerField
      DisplayLabel = #1705#1583#1605#1588#1578#1585#1740
      FieldName = 'CustID'
    end
  end
  object srcAccCode: TDataSource
    DataSet = qryAccCode
    OnStateChange = srcAccCodeStateChange
    Left = 449
    Top = 137
  end
end
