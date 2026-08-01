inherited GetTozinF: TGetTozinF
  Left = 343
  Top = 129
  ActiveControl = edtTozinNumber
  Caption = #1711#1585#1601#1578#1606' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1576#1575#1587#1603#1608#1604
  ClientHeight = 906
  ClientWidth = 833
  ParentFont = False
  Font.Height = -12
  Position = poDesktopCenter
  ExplicitTop = -305
  ExplicitWidth = 839
  ExplicitHeight = 935
  DesignSize = (
    833
    906)
  PixelsPerInch = 96
  TextHeight = 14
  inherited Bevel1: TBevel
    Top = 849
    Width = 833
    ExplicitTop = 450
    ExplicitWidth = 487
  end
  object pnlCustomer: TPanel [1]
    Left = 0
    Top = 57
    Width = 833
    Height = 669
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 753
    ExplicitHeight = 585
    object pnlAll: TPanel
      Left = 0
      Top = 0
      Width = 833
      Height = 415
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 753
      object pnlPlaque: TPanel
        Left = 376
        Top = 0
        Width = 457
        Height = 415
        Align = alClient
        TabOrder = 1
        Visible = False
        ExplicitWidth = 377
        ExplicitHeight = 357
        object vc1: TVideoGrabber
          Left = 1
          Top = 1
          Width = 455
          Height = 350
          Align = alClient
          Caption = 'vc1'
          Color = clBlack
          AspectRatioToUse = -1.000000000000000000
          AudioCompressor = 0
          AutoFileNameDateTimeFormat = 'yymmdd_hhmmss_zzz'
          AutoFilePrefix = 'vg'
          Cropping_Zoom = 1.000000000000000000
          ImageOverlayEnabled = False
          ImageOverlay_AlphaBlend = False
          ImageOverlay_AlphaBlendValue = 180
          ImageOverlay_ChromaKey = False
          ImageOverlay_ChromaKeyLeewayPercent = 25
          ImageOverlay_ChromaKeyRGBColor = 0
          ImageOverlay_Height = -1
          ImageOverlay_LeftLocation = 10
          ImageOverlay_VideoAlignment = oa_LeftTop
          ImageOverlay_StretchToVideoSize = False
          ImageOverlay_TopLocation = 10
          ImageOverlay_Transparent = False
          ImageOverlay_TransparentColorValue = 0
          ImageOverlay_UseTransparentColor = False
          ImageOverlay_Width = -1
          ImageOverlay_TargetDisplay = -1
          LicenseString = 'N/A'
          MotionDetector_Grid = 
            '5555555555 5555555555 5555555555 5555555555 5555555555 555555555' +
            '5 5555555555 5555555555 5555555555 5555555555'
          PlayerSpeedRatio = 1.000000000000000000
          TextOverlay_Enabled = False
          TextOverlay_Font.Charset = DEFAULT_CHARSET
          TextOverlay_Font.Color = clAqua
          TextOverlay_Font.Height = -16
          TextOverlay_Font.Name = 'Arial'
          TextOverlay_Font.Style = []
          TextOverlay_FontColor = clAqua
          TextOverlay_FontSize = 12
          TextOverlay_HighResFont = True
          TextOverlay_Left = 0
          TextOverlay_Top = 0
          TextOverlay_Right = -1
          TextOverlay_Orientation = to_Horizontal
          TextOverlay_Scrolling = False
          TextOverlay_ScrollingSpeed = 1
          TextOverlay_Shadow = True
          TextOverlay_ShadowColor = clBlack
          TextOverlay_ShadowDirection = cd_SouthEast
          TextOverlay_BkColor = clWhite
          TextOverlay_Align = tf_Left
          TextOverlay_AlphaBlend = False
          TextOverlay_AlphaBlendValue = 180
          TextOverlay_GradientMode = gm_Disabled
          TextOverlay_GradientColor = clNavy
          TextOverlay_VideoAlignment = oa_LeftTop
          TextOverlay_String = 
            'Note: the date/time formats '#13#10'can be easily modified.'#13#10#13#10'system ' +
            'date/time: %sys_time[dd/mm/yy hh:nn:ss]%'#13#10'DV time code: %time_co' +
            'de%'#13#10'DV date/time: %dv_time[dd/mm/yy hh:nn:ss]%'#13#10'frame number: %' +
            'frame_count%'#13#10'time (full): %time_full%'#13#10'time (sec): %time_sec%'#13#10 +
            'time (ns): %time_100ns%'
          TextOverlay_TargetDisplay = -1
          TextOverlay_Transparent = True
          VideoCompression_Quality = 1.000000000000000000
          VideoCompressor = 0
          VideoDelay = 0
          VideoFromImages_TemporaryFile = 'SetOfBitmaps01.dat'
          VideoProcessing_RotationCustomAngle = 45.500000000000000000
          OnClick = vc1Click
          OnMotionDetected = vc1MotionDetected
          ExplicitWidth = 375
          ExplicitHeight = 292
        end
        object Panel10: TPanel
          Left = 1
          Top = 351
          Width = 455
          Height = 63
          Align = alBottom
          TabOrder = 0
          ExplicitTop = 293
          ExplicitWidth = 375
          object SpeedButton4: TSpeedButton
            AlignWithMargins = True
            Left = 428
            Top = 4
            Width = 23
            Height = 24
            Align = alRight
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF606060404040FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFF3F3F3F404040404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF2020203F3F3FFFFFFF404040404040FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040606060404040AF
              AFAFFFFFFF404040808080808080404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF2020206F6F6FAFAFAFFFFFFFFFFFFFFFFFFFAFAFAF6F6F6F4040408080
              80606060FFFFFFFFFFFFFFFFFFFFFFFF3F3F3FEFEFEFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFEFEFEF5F5F5F808080606060FFFFFFFFFFFF5F5F5F
              FFFFFFFFFFFFFFFFFFFFBFBFFF7F7FFF7F7FFF7F7FFF7F7FFFFFFFFFFFFFFFFF
              FF5F5F5F808080404040404040EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FFF
              0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFEFEFEF404040808080AFAFAFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF7F7FFF0000FF0000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF6F6F6F808080BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FFF
              0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F808080BFBFBFFFFFFF
              FFFFFFFFFFFFFFFFFFFFBFBFFF3F3FFF0000FF0000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF7F7F7F606060707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF505050202020202020CFCFCF
              FFFFFFFFFFFFFFFFFFFFFFFFEF3030FF0000EF3030FFFFFFFFFFFFFFFFFFFFFF
              FFAFAFAF000000FFFFFFFFFFFF202020DFDFDFFFFFFFFFFFFFFFFFFFEF3030FF
              0000EF3030FFFFFFFFFFFFFFFFFFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF
              202020AFAFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFAFAFAF2020
              20FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040707070BFBFBFBF
              BFBFBFBFBF707070404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = SpeedButton4Click
            ExplicitLeft = 352
            ExplicitTop = 41
            ExplicitHeight = 22
          end
          object BitBtn9: TBitBtn
            Left = 1
            Top = 31
            Width = 453
            Height = 31
            Align = alBottom
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B7B7
              B700979797009898980098989800989898009898980098989800989898009898
              9800989898009898980098989800989898009898980098989800989898009898
              980098989800989898009898980097979700B8B8B800FF00FF00868686003333
              3300333333003333330033333300333333003333330033333300333333003333
              3300333333003333330033333300333333003333330033333300333333003333
              3300333333003333330033333300333333003333330089898900363636007F7F
              7F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF007E7E7E0037373700333333009898
              9800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00C0C0C0009F9F9F009F9F9F00C1C1C100FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF009898980033333300333333009898
              9800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B3B3B3004343
              43003333330033333300333333003333330042424200B7B7B700FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF009898980033333300333333009898
              9800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A1A1A100333333005F5F
              5F00C4C4C400FF00FF00FF00FF00C3C3C3006060600033333300A3A3A300FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF009898980033333300333333009898
              9800FF00FF00FF00FF00FF00FF00FF00FF00D5D5D5003333330078787800FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007474740032323200D7D7
              D700FF00FF00FF00FF00FF00FF00FF00FF009898980033333300333333009898
              9800FF00FF00FF00FF00FF00FF00FF00FF00797979003F3F3F00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003D3D3D007A7A
              7A00FF00FF00FF00FF00FF00FF00FF00FF009898980033333300333333009898
              9800FF00FF00FF00FF00FF00FF00FF00FF004242420080808000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007A7A7A004444
              4400FF00FF00FF00FF00FF00FF00FF00FF009898980033333300333333009898
              9800FF00FF00FF00FF00FF00FF00FF00FF003333330097979700FF00FF008383
              8300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00949494003232
              3200FF00FF00FF00FF00FF00FF00FF00FF009898980033333300333333009898
              9800FF00FF00FF00FF00FF00FF00FF00FF004343430080808000FF00FF006464
              6400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B7B7B004343
              4300FF00FF00FF00FF00FF00FF00FF00FF009898980033333300333333009898
              9800FF00FF00FF00FF00FF00FF00FF00FF00777777003F3F3F00FF00FF00CBCB
              CB0062626200BCBCBC00FF00FF00FF00FF00FF00FF00FF00FF003F3F3F007878
              7800FF00FF00FF00FF00FF00FF00FF00FF009898980033333300333333009898
              9800FF00FF00FF00FF00FF00FF00FF00FF00D3D3D300333333007A7A7A00FF00
              FF00FF00FF00A2A2A200DEDEDE00FF00FF00FF00FF007878780033333300D5D5
              D500FF00FF00FF00FF00FF00FF00FF00FF009898980033333300333333009898
              9800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009E9E9E00333333006565
              6500CCCCCC00FF00FF00FF00FF00C8C8C8005F5F5F0033333300A1A1A100FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0098989800333333003F3F3F006767
              6700D7D7D700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B1B1B1003F3F
              3F003333330033333300333333003333330042424200B3B3B300FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00D7D7D700666666003F3F3F00ABABAB003333
              330033333300333333004E4E4E006F6F6F00D7D7D700FF00FF00FF00FF00FF00
              FF00BFBFBF009D9D9D009D9D9D00C0C0C000FF00FF00FF00FF00FF00FF00D5D5
              D500707070004C4C4C00333333003333330032323200ADADAD00FF00FF00FF00
              FF00BBBBBB009999990076767600373737007B7B7B00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007777
              77003A3A3A007878780099999900BCBCBC00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF008686860036363600FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003737
              37008A8A8A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00D7D7D70033333300A5A5A500FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A1A1A1003333
              3300DCDCDC00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF006363630037373700636363006363
              6300636363006363630063636300636363006363630063636300373737006868
              6800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0082828200636363006363
              630063636300636363006363630063636300636363006363630082828200FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            TabOrder = 0
            OnClick = BitBtn9Click
            ExplicitWidth = 373
          end
          inline frPlaquereader: TfrPelakF
            Left = 1
            Top = 1
            Width = 424
            Height = 30
            Align = alClient
            TabOrder = 1
            ExplicitLeft = 1
            ExplicitTop = 1
            ExplicitWidth = 344
            ExplicitHeight = 30
            inherited mskPelak2: TMaskEdit
              Height = 22
              ExplicitHeight = 22
            end
            inherited mskPelak3: TMaskEdit
              Height = 22
              ExplicitHeight = 22
            end
            inherited mskPelak4: TMaskEdit
              Height = 22
              ExplicitHeight = 22
            end
            inherited mskPelak1: TMaskEdit
              Height = 22
              ExplicitHeight = 22
            end
          end
        end
      end
      object Panel7: TPanel
        Left = 376
        Top = 0
        Width = 457
        Height = 415
        Align = alClient
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 377
        ExplicitHeight = 357
        object grpCustomer2: TGroupBox
          Left = 0
          Top = 45
          Width = 457
          Height = 45
          Align = alTop
          Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610'2'
          TabOrder = 1
          ExplicitWidth = 377
          object spdPersonID2: TSpeedButton
            Left = 342
            Top = 16
            Width = 23
            Height = 27
            Align = alRight
            Caption = '...'
            OnClick = spdPersonID2Click
            ExplicitLeft = 114
            ExplicitTop = 15
            ExplicitHeight = 22
          end
          object edtPersonID2: TDBEdit
            Left = 365
            Top = 16
            Width = 90
            Height = 27
            Align = alRight
            BiDiMode = bdLeftToRight
            DataField = 'PersonID2'
            DataSource = srcTozin
            ParentBiDiMode = False
            TabOrder = 0
            OnKeyDown = edtPersonID2KeyDown
            ExplicitLeft = 282
            ExplicitTop = 19
            ExplicitHeight = 22
          end
          object edt_CustName2: TDBEdit
            Left = 2
            Top = 16
            Width = 340
            Height = 27
            TabStop = False
            Align = alClient
            Color = clBtnFace
            DataField = '_CustName2'
            DataSource = srcTozin
            ReadOnly = True
            TabOrder = 1
            ExplicitLeft = 5
            ExplicitTop = 19
            ExplicitWidth = 242
            ExplicitHeight = 22
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 90
          Width = 457
          Height = 57
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          ExplicitWidth = 377
          object Label8: TLabel
            Left = 289
            Top = 8
            Width = 72
            Height = 14
            Alignment = taRightJustify
            Caption = #1588#1605#1575#1585#1607' '#1605#1575#1588#1610#1606
          end
          object Label7: TLabel
            Left = 289
            Top = 37
            Width = 45
            Height = 14
            Alignment = taRightJustify
            Caption = #1606#1575#1605' '#1585#1575#1606#1606#1583#1607
            FocusControl = edtMachineName
          end
          object SpeedButton3: TSpeedButton
            AlignWithMargins = True
            Left = 61
            Top = 1
            Width = 30
            Height = 26
            Margins.Bottom = 35
            Action = actPlaque
            Flat = True
          end
          object edtMachineName: TDBEdit
            Left = 3
            Top = 34
            Width = 280
            Height = 22
            TabStop = False
            DataField = 'MachineName'
            DataSource = srcTozin
            TabOrder = 1
          end
          inline frPelakF1: TfrPelakF
            Left = 92
            Top = 2
            Width = 191
            Height = 29
            TabOrder = 0
            ExplicitLeft = 92
            ExplicitTop = 2
            inherited mskPelak2: TMaskEdit
              Height = 22
              ExplicitHeight = 22
            end
            inherited mskPelak3: TMaskEdit
              Height = 22
              ExplicitHeight = 22
            end
            inherited mskPelak4: TMaskEdit
              Height = 22
              ExplicitHeight = 22
            end
            inherited mskPelak1: TMaskEdit
              Height = 22
              ExplicitHeight = 22
            end
          end
          object edt4ShowMachineNo: TDBEdit
            Left = 28
            Top = 5
            Width = 32
            Height = 22
            DataField = 'MachineNo'
            DataSource = srcTozin
            TabOrder = 2
            Visible = False
          end
        end
        object grpNote: TGroupBox
          Left = 0
          Top = 274
          Width = 457
          Height = 116
          Align = alClient
          Caption = #1578#1608#1590#1610#1581#1575#1578
          TabOrder = 4
          ExplicitWidth = 377
          ExplicitHeight = 58
          object dbmmoTozinNote: TDBMemo
            Tag = 111
            Left = 2
            Top = 16
            Width = 453
            Height = 98
            TabStop = False
            Align = alClient
            Color = clCream
            DataField = 'TozinNote'
            DataSource = srcTozin
            TabOrder = 0
            ExplicitWidth = 373
            ExplicitHeight = 40
          end
        end
        object grpPerson3: TGroupBox
          Left = 0
          Top = 0
          Width = 457
          Height = 45
          Align = alTop
          Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610'3'
          TabOrder = 0
          ExplicitWidth = 377
          object btnPersonID3: TSpeedButton
            Left = 342
            Top = 16
            Width = 23
            Height = 27
            Align = alRight
            Caption = '...'
            OnClick = btnPersonID3Click
            ExplicitLeft = 112
            ExplicitTop = 15
            ExplicitHeight = 22
          end
          object edtPersonID3: TDBEdit
            Left = 365
            Top = 16
            Width = 90
            Height = 27
            Align = alRight
            BiDiMode = bdLeftToRight
            DataField = 'PersonID3'
            DataSource = srcTozin
            ParentBiDiMode = False
            TabOrder = 0
            OnKeyDown = edtPersonID2KeyDown
            ExplicitLeft = 282
            ExplicitTop = 19
            ExplicitHeight = 22
          end
          object edt_CustName3: TDBEdit
            Left = 2
            Top = 16
            Width = 340
            Height = 27
            TabStop = False
            Align = alClient
            Color = clBtnFace
            DataField = '_CustName3'
            DataSource = srcTozin
            ReadOnly = True
            TabOrder = 1
            ExplicitLeft = 5
            ExplicitTop = 19
            ExplicitWidth = 242
            ExplicitHeight = 22
          end
        end
        object grpDriver: TGroupBox
          Left = 0
          Top = 147
          Width = 457
          Height = 46
          Align = alTop
          Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610
          TabOrder = 3
          ExplicitWidth = 377
          object spdPersonID1: TSpeedButton
            Left = 342
            Top = 16
            Width = 23
            Height = 28
            Align = alRight
            Caption = '...'
            OnClick = spdPersonID1Click
            ExplicitLeft = 112
            ExplicitTop = 15
            ExplicitHeight = 22
          end
          object SpeedButton5: TSpeedButton
            Left = 2
            Top = 16
            Width = 23
            Height = 28
            Action = actCustomersTaxF
            Align = alLeft
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 112
            ExplicitTop = 15
            ExplicitHeight = 22
          end
          object edtPersonID1: TDBEdit
            Left = 365
            Top = 16
            Width = 90
            Height = 28
            TabStop = False
            Align = alRight
            DataField = 'PersonID1'
            DataSource = srcTozin
            TabOrder = 0
            OnKeyDown = edtPersonID2KeyDown
            ExplicitLeft = 282
            ExplicitTop = 19
            ExplicitHeight = 22
          end
          object edt_CustName: TDBEdit
            Left = 25
            Top = 16
            Width = 317
            Height = 28
            TabStop = False
            Align = alClient
            Color = clBtnFace
            DataField = '_CustName'
            DataSource = srcTozin
            ReadOnly = True
            TabOrder = 1
            ExplicitLeft = 34
            ExplicitTop = 19
            ExplicitWidth = 213
            ExplicitHeight = 22
          end
        end
        object PnlAidInfoMaster: TPanel
          Left = 0
          Top = 193
          Width = 457
          Height = 28
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 5
          ExplicitWidth = 377
          object LblAidInfoNo: TLabel
            AlignWithMargins = True
            Left = 421
            Top = 6
            Width = 33
            Height = 19
            Margins.Top = 6
            Align = alRight
            Alignment = taRightJustify
            Caption = #1588#1605#1575#1585#1607' '
            FocusControl = edtAidNumber
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 341
            ExplicitHeight = 13
          end
          object LblAidInfoDate: TLabel
            AlignWithMargins = True
            Left = 121
            Top = 6
            Width = 26
            Height = 19
            Margins.Left = 1
            Margins.Top = 6
            Margins.Right = 1
            Align = alLeft
            Alignment = taRightJustify
            Caption = #1578#1575#1585#1610#1582' '
            FocusControl = edtAidDate
            ExplicitLeft = 83
            ExplicitHeight = 14
          end
          object edtAidNumber: TDBEdit
            Tag = 20
            AlignWithMargins = True
            Left = 151
            Top = 3
            Width = 264
            Height = 22
            Align = alClient
            DataField = 'AidNumber'
            DataSource = srcTozin
            TabOrder = 0
            ExplicitLeft = 152
            ExplicitWidth = 263
          end
          object edtAidDate: TDBEdit
            Tag = 20
            AlignWithMargins = True
            Left = 1
            Top = 3
            Width = 118
            Height = 22
            Margins.Left = 1
            Margins.Right = 1
            Align = alLeft
            DataField = 'AidDate'
            DataSource = srcTozin
            TabOrder = 1
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 390
          Width = 457
          Height = 25
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 6
          ExplicitTop = 332
          ExplicitWidth = 377
          object txtTozinState: TDBText
            AlignWithMargins = True
            Left = 15
            Top = 6
            Width = 412
            Height = 16
            Margins.Top = 6
            Margins.Right = 30
            Align = alClient
            Alignment = taCenter
            AutoSize = True
            DataField = 'TozinState'
            DataSource = srcTozin
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 78
            ExplicitHeight = 13
          end
          object lblTozinID: TLabel
            Left = 0
            Top = 0
            Width = 12
            Height = 25
            Align = alLeft
            Caption = '...'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clGreen
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitHeight = 14
          end
        end
        object pnlTruckNumber_SellsMethod: TPanel
          Left = 0
          Top = 221
          Width = 457
          Height = 25
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 7
          TabStop = True
          ExplicitWidth = 377
          object pnlTruckNumber: TPanel
            Left = 0
            Top = 0
            Width = 185
            Height = 25
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object lblTruckNumber: TLabel
              Left = 121
              Top = 0
              Width = 50
              Height = 25
              Margins.Left = 1
              Margins.Top = 6
              Margins.Right = 1
              Align = alLeft
              Alignment = taRightJustify
              Caption = #1588'.'#1576#1575#1585#1606#1575#1605#1607
              FocusControl = edtTruckNumber
              ExplicitLeft = 83
              ExplicitTop = 6
              ExplicitHeight = 14
            end
            object edtTruckNumber: TDBEdit
              Tag = 20
              Left = 0
              Top = 0
              Width = 121
              Height = 25
              Margins.Left = 1
              Margins.Top = 1
              Margins.Right = 1
              Margins.Bottom = 1
              Align = alLeft
              DataField = 'TruckNumber'
              DataSource = srcTozin
              TabOrder = 0
            end
          end
          object pnlSellsMethod: TPanel
            Left = 185
            Top = 0
            Width = 272
            Height = 25
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            TabStop = True
            ExplicitLeft = 134
            ExplicitWidth = 323
            object Label1: TLabel
              AlignWithMargins = True
              Left = 213
              Top = 3
              Width = 56
              Height = 19
              Align = alRight
              Alignment = taRightJustify
              Caption = #1606#1581#1608#1607' '#1601#1585#1608#1588
              FocusControl = dblkcbb_SellsMethod
              ExplicitLeft = 184
              ExplicitHeight = 14
            end
            object dblkcbb_SellsMethod: TDBLookupComboBox
              Tag = 1
              AlignWithMargins = True
              Left = 3
              Top = 1
              Width = 204
              Height = 22
              Margins.Top = 1
              Margins.Bottom = 1
              Align = alClient
              DataSource = srcTozin
              TabOrder = 0
              ExplicitLeft = 40
              ExplicitWidth = 218
            end
          end
        end
        object pnlPO: TPanel
          Left = 0
          Top = 246
          Width = 457
          Height = 28
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 8
          ExplicitWidth = 377
          object lblPO: TLabel
            AlignWithMargins = True
            Left = 440
            Top = 6
            Width = 14
            Height = 19
            Margins.Top = 6
            Align = alRight
            Alignment = taRightJustify
            Caption = 'PO'
            FocusControl = edtPO
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 360
            ExplicitHeight = 13
          end
          object edtPO: TDBEdit
            Tag = 20
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 431
            Height = 22
            Align = alClient
            DataField = 'PO'
            DataSource = srcTozin
            TabOrder = 0
            ExplicitWidth = 351
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 376
        Height = 415
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitHeight = 357
        object grpPerson4: TGroupBox
          Left = 0
          Top = 0
          Width = 376
          Height = 45
          Align = alTop
          Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610'4'
          TabOrder = 0
          object btnPersonID4: TSpeedButton
            Left = 261
            Top = 16
            Width = 23
            Height = 27
            Align = alRight
            Caption = '...'
            OnClick = btnPersonID4Click
            ExplicitLeft = 112
            ExplicitTop = 15
            ExplicitHeight = 22
          end
          object edtPersonID4: TDBEdit
            Left = 284
            Top = 16
            Width = 90
            Height = 27
            Align = alRight
            BiDiMode = bdLeftToRight
            DataField = 'PersonID4'
            DataSource = srcTozin
            ParentBiDiMode = False
            TabOrder = 0
            OnKeyDown = edtPersonID2KeyDown
            ExplicitLeft = 281
            ExplicitTop = 19
            ExplicitHeight = 22
          end
          object edt_CustName4: TDBEdit
            Left = 2
            Top = 16
            Width = 259
            Height = 27
            TabStop = False
            Align = alClient
            Color = clBtnFace
            DataField = '_CustName4'
            DataSource = srcTozin
            ReadOnly = True
            TabOrder = 1
            ExplicitLeft = 5
            ExplicitTop = 19
            ExplicitWidth = 241
            ExplicitHeight = 22
          end
        end
        object grpRelatedRecipts: TGroupBox
          Left = 0
          Top = 90
          Width = 376
          Height = 44
          Align = alTop
          Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1587#1601#1575#1585#1588#1575#1578
          TabOrder = 2
          object spdRelatedRecipts: TSpeedButton
            Left = 261
            Top = 16
            Width = 23
            Height = 26
            Align = alRight
            Caption = '...'
            OnClick = spdRelatedReciptsClick
            ExplicitLeft = 112
            ExplicitTop = 15
            ExplicitHeight = 22
          end
          object edtRelatedRecipts: TDBEdit
            Left = 284
            Top = 16
            Width = 90
            Height = 26
            Align = alRight
            DataField = 'RelatedRecipts'
            DataSource = srcTozin
            TabOrder = 0
            OnKeyDown = edtRelatedReciptsKeyDown
            ExplicitLeft = 281
            ExplicitTop = 19
            ExplicitHeight = 22
          end
          object edtRelatedName: TDBEdit
            Left = 2
            Top = 16
            Width = 259
            Height = 26
            TabStop = False
            Align = alClient
            Color = clBtnFace
            DataField = 'RelatedName'
            DataSource = srcRelatedRecipts
            ReadOnly = True
            TabOrder = 1
            ExplicitLeft = 5
            ExplicitTop = 19
            ExplicitWidth = 241
            ExplicitHeight = 22
          end
        end
        object grpStore: TGroupBox
          Left = 0
          Top = 178
          Width = 376
          Height = 44
          Align = alTop
          Caption = #1603#1583' '#1608#1606#1575#1605' '#1575#1606#1576#1575#1585
          TabOrder = 4
          object spdStoreID: TSpeedButton
            Left = 261
            Top = 16
            Width = 23
            Height = 26
            Align = alRight
            Caption = '...'
            OnClick = spdStoreIDClick
            ExplicitLeft = 112
            ExplicitTop = 15
            ExplicitHeight = 22
          end
          object edtStoreID: TDBEdit
            Left = 284
            Top = 16
            Width = 90
            Height = 26
            TabStop = False
            Align = alRight
            DataField = 'StoreID'
            DataSource = srcTozin
            TabOrder = 0
            OnKeyDown = edtStoreIDKeyDown
            ExplicitLeft = 281
            ExplicitTop = 19
            ExplicitHeight = 22
          end
          object edt_StoreName: TDBEdit
            Left = 2
            Top = 16
            Width = 259
            Height = 26
            TabStop = False
            Align = alClient
            Color = clBtnFace
            DataField = '_StoreName'
            DataSource = srcTozin
            ReadOnly = True
            TabOrder = 1
            ExplicitLeft = 5
            ExplicitTop = 19
            ExplicitWidth = 241
            ExplicitHeight = 22
          end
        end
        object grpStuff: TGroupBox
          Left = 0
          Top = 266
          Width = 376
          Height = 47
          Align = alTop
          Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1603#1575#1604#1575
          TabOrder = 6
          object spdStuffCode: TSpeedButton
            Left = 261
            Top = 16
            Width = 23
            Height = 29
            Align = alRight
            Caption = '...'
            OnClick = spdStuffCodeClick
            ExplicitLeft = 112
            ExplicitTop = 15
            ExplicitHeight = 22
          end
          object SpeedButton2: TSpeedButton
            Left = 2
            Top = 16
            Width = 23
            Height = 29
            Action = actTozinPurchaseEffectF
            Align = alLeft
            ExplicitLeft = -6
            ExplicitTop = 21
            ExplicitHeight = 23
          end
          object edtStuffCode: TDBEdit
            Left = 284
            Top = 16
            Width = 90
            Height = 29
            TabStop = False
            Align = alRight
            DataField = 'StuffCode'
            DataSource = srcTozin
            TabOrder = 0
            OnKeyDown = edtStuffCodeKeyDown
            ExplicitLeft = 281
            ExplicitTop = 19
            ExplicitHeight = 22
          end
          object edt_StuffName: TDBEdit
            Left = 25
            Top = 16
            Width = 236
            Height = 29
            TabStop = False
            Align = alClient
            Color = clBtnFace
            DataField = '_StuffName'
            DataSource = srcTozin
            ReadOnly = True
            TabOrder = 1
            ExplicitLeft = 34
            ExplicitTop = 19
            ExplicitWidth = 212
            ExplicitHeight = 22
          end
        end
        object Panel8: TPanel
          Left = 0
          Top = 313
          Width = 376
          Height = 102
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 7
          ExplicitTop = 310
          ExplicitHeight = 47
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 376
            Height = 24
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label17: TLabel
              Left = 247
              Top = 4
              Width = 63
              Height = 14
              Margins.Top = 12
              Margins.Bottom = 12
              Alignment = taRightJustify
              Caption = #1608#1586#1606' '#1705#1604' '#1605#1580#1608#1586
            end
            object edtWeightLicense: TDBEdit
              Left = 8
              Top = 0
              Width = 233
              Height = 22
              Margins.Top = 12
              Margins.Bottom = 12
              TabStop = False
              Color = clBtnFace
              DataField = 'Weight'
              DataSource = srcLicense
              ReadOnly = True
              TabOrder = 0
            end
          end
          object CedarDbgrid1: TCedarDbgrid
            Left = 0
            Top = 24
            Width = 376
            Height = 78
            Align = alClient
            AutoFitColWidths = True
            Color = clCream
            DataSource = srcLicenseRpt
            DynProps = <>
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            FooterParams.FillStyle = cfstGradientEh
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
            MinAutoFitWidth = 100
            OddRowColor = clGradientInactiveCaption
            ParentFont = False
            RowHeight = 21
            SearchPanel.Enabled = True
            SearchPanel.FilterOnTyping = True
            SearchPanel.Location = splExternal
            SortLocal = True
            TabOrder = 1
            Visible = False
            ActiveSearchPanel = False
            SelectFooterIndex = 0
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ReciptNumber'
                Footers = <>
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Entity'
                Footers = <>
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Weight'
                Footers = <>
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object grpStoreID2: TGroupBox
          Left = 0
          Top = 222
          Width = 376
          Height = 44
          Align = alTop
          Caption = #1603#1583' '#1608#1606#1575#1605' '#1575#1606#1576#1575#1585'2'
          TabOrder = 5
          object SpeedButton1: TSpeedButton
            Tag = 2
            Left = 261
            Top = 16
            Width = 23
            Height = 26
            Align = alRight
            Caption = '...'
            OnClick = spdStoreIDClick
            ExplicitLeft = 112
            ExplicitTop = 15
            ExplicitHeight = 22
          end
          object edtStoreID2: TDBEdit
            Left = 284
            Top = 16
            Width = 90
            Height = 26
            Align = alRight
            DataField = 'StoreID2'
            DataSource = srcTozin
            TabOrder = 0
            OnKeyDown = edtStoreIDKeyDown
            ExplicitLeft = 281
            ExplicitTop = 19
            ExplicitHeight = 22
          end
          object edt_StoresName2: TDBEdit
            Left = 2
            Top = 16
            Width = 259
            Height = 26
            TabStop = False
            Align = alClient
            Color = clBtnFace
            DataField = '_StoresName2'
            DataSource = srcTozin
            ReadOnly = True
            TabOrder = 1
            ExplicitLeft = 5
            ExplicitTop = 19
            ExplicitWidth = 241
            ExplicitHeight = 22
          end
        end
        object grpMasir: TGroupBox
          Left = 0
          Top = 134
          Width = 376
          Height = 44
          Align = alTop
          Caption = ' '#1605#1587#1610#1585
          Color = clBtnFace
          ParentColor = False
          TabOrder = 3
          object btnMasirID: TSpeedButton
            Tag = 1
            Left = 261
            Top = 16
            Width = 23
            Height = 26
            Align = alRight
            Caption = '...'
            OnClick = btnMasirIDClick
            ExplicitLeft = 211
            ExplicitTop = 3
          end
          object dbedtMasirID: TDBEdit
            Tag = 1
            Left = 284
            Top = 16
            Width = 90
            Height = 26
            Align = alRight
            DataField = 'MasirID'
            DataSource = srcTozin
            TabOrder = 0
            OnKeyDown = dbedtMasirIDKeyDown
            ExplicitLeft = 281
            ExplicitTop = 19
            ExplicitHeight = 22
          end
          object edt_MasirID: TDBEdit
            Left = 2
            Top = 16
            Width = 259
            Height = 26
            TabStop = False
            Align = alClient
            Color = clBtnFace
            DataField = 'MasirID'
            DataSource = srcTozin
            ReadOnly = True
            TabOrder = 1
            ExplicitLeft = 5
            ExplicitTop = 19
            ExplicitWidth = 241
            ExplicitHeight = 22
          end
        end
        object grpPerson5: TGroupBox
          Left = 0
          Top = 45
          Width = 376
          Height = 45
          Align = alTop
          Caption = #1603#1583' '#1608' '#1606#1575#1605' '#1605#1588#1578#1585#1610'5'
          TabOrder = 1
          object btnPersonID5: TSpeedButton
            Left = 261
            Top = 16
            Width = 23
            Height = 27
            Align = alRight
            Caption = '...'
            OnClick = btnPersonID5Click
            ExplicitLeft = 112
            ExplicitTop = 15
            ExplicitHeight = 22
          end
          object edtPersonID5: TDBEdit
            Left = 284
            Top = 16
            Width = 90
            Height = 27
            Align = alRight
            BiDiMode = bdLeftToRight
            DataField = 'PersonID5'
            DataSource = srcTozin
            ParentBiDiMode = False
            TabOrder = 0
            OnKeyDown = edtPersonID2KeyDown
            ExplicitLeft = 281
            ExplicitTop = 19
            ExplicitHeight = 22
          end
          object edt_CustName5: TDBEdit
            Left = 2
            Top = 16
            Width = 259
            Height = 27
            TabStop = False
            Align = alClient
            Color = clBtnFace
            DataField = '_CustName5'
            DataSource = srcTozin
            ReadOnly = True
            TabOrder = 1
            ExplicitLeft = 5
            ExplicitTop = 19
            ExplicitWidth = 241
            ExplicitHeight = 22
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 415
      Width = 833
      Height = 254
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitTop = 357
      ExplicitWidth = 753
      ExplicitHeight = 228
      object pnlWeight: TPanel
        Left = 0
        Top = 101
        Width = 833
        Height = 111
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 753
        ExplicitHeight = 91
        object mskWeight: TMaskEdit
          Left = 0
          Top = 0
          Width = 833
          Height = 111
          TabStop = False
          Align = alClient
          Alignment = taCenter
          AutoSize = False
          BiDiMode = bdLeftToRight
          Color = cl3DDkShadow
          Font.Charset = ARABIC_CHARSET
          Font.Color = clRed
          Font.Height = -64
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = '0'
          OnDblClick = mskWeightDblClick
          ExplicitLeft = 2
          ExplicitTop = -1
          ExplicitHeight = 104
        end
        object UpDown1: TUpDown
          AlignWithMargins = True
          Left = 810
          Top = 8
          Width = 17
          Height = 91
          Associate = mskWeight
          ArrowKeys = False
          Min = -50
          Max = 50
          Increment = 10
          TabOrder = 1
          OnChangingEx = UpDown1ChangingEx
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 212
        Width = 833
        Height = 42
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitTop = 203
        object btnWeight: TSpeedButton
          Left = 0
          Top = 0
          Width = 42
          Height = 42
          Margins.Top = 6
          Margins.Bottom = 6
          Align = alLeft
          Glyph.Data = {
            460A0000424D460A00000000000036000000280000001E0000001C0000000100
            180000000000100A0000C40E0000C40E00000000000000000000D4D4D4D4D4D4
            D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4
            D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4
            D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D40000D4D4D4D4D4D4D4D4D4D4
            D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4
            D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4
            D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D40000D6D6D6D6D6D6D6D6D6D6D6D6D6D6
            D6D6D6D6D6D6D6D5D5D5D4D4D4D3D3D3D4D4D4BCBCBC91919175757567676767
            6767747474919191BABABAD3D3D3D4D4D4D5D5D5D6D6D6D6D6D6D6D6D6D6D6D6
            D6D6D6D6D6D6D6D6D6D6D6D60000D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6
            D6D6D6D6D6D6D5D5D59D9E9E5252523334343333333D3D3D4E4E4E4E4E4E3E3E
            3E3333333333335454549F9F9FD0D0D0D5D5D5D6D6D6D6D6D6D6D6D6D6D6D6D6
            D6D6D6D6D6D6D6D60000D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6C7
            C7C75E5E5E3333334A4A4A898989BBBBBBD5D5D5D6D6D6D6D6D6D6D6D6C0C0C0
            8D8D8D4A4A4A3434345F6060C2C2C2D5D5D5D6D6D6D6D6D6D6D6D6D6D6D6D6D6
            D6D6D6D60000D8D8D8D8D8D8D8D8D8D8D8D8D7D7D7D8D8D8BFBFBF4545453636
            36929292D6D6D6D0D0D0CFCFCFD0D0D0D7D7D7D8D8D8D8D8D8D8D8D8D8D8D8D6
            D6D68E8E8E363636474747BCBCBCD7D7D7D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8
            0000D8D8D8D8D8D8D8D8D8D8D8D8D6D6D6C7C7C7454545414141B8B8B8D8D8D8
            D8D8D8D7D7D7D2D2D2D6D6D6D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8
            D8B4B4B43D3D3D474747C3C3C3D7D7D7D8D8D8D8D8D8D8D8D8D8D8D80000DADA
            DADADADADADADADADADAD7D7D75F5F5F373737BABABADADADADADADADADADADA
            DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA
            B6B6B6363636606161D4D4D4D9D9D9DADADADADADADADADA0000DADADADADADA
            DADADADADADAA0A0A03434348F8F8FD9D9D9DADADADADADADADADADADADAD8D8
            D8D4D4D4D2D2D2D9D9D9DADADADADADADADADADADADADADADADADADADADADA90
            9090343434A2A2A2D8D8D8DADADADADADADADADA0000DADADADADADADADADADA
            DADA5252524B4B4BCFCFCFD2D2D2D9D9D9DADADADADADADADADAD9D9D9DABC7E
            E39C13E3A115E1C385DADADADADADADADADADADADADADADADADADAD8D8D84747
            47555555D7D7D7DADADADADADADADADA0000DBDBDBDBDBDBDBDBDBBDBDBD3333
            33949494D3D3D3D2D2D2D3D3D3DADADADBDBDBDBDBDBDED3BCEDA102E89C04E6
            9B04E59A07DDD4C1DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB909090333333
            C0C0C0DBDBDBDBDBDBDBDBDB0000DBDBDBDBDBDBDBDBDB919191333333C9C9C9
            DADADAD3D3D3D2D2D2D3D3D3DBDBDBDBDBDBE1CCA0F1A100F0A000E89C04E69B
            04D8C59FDADADADBDBDBDADADADBDBDBDBDBDBDBDBDBC5C5C5333333949494DB
            DBDBDBDBDBDBDBDB0000DDDDDDDDDDDDDDDDDD747474404040DDDDDDDDDDDDDC
            DCDCD5D5D5D4D4D4DCDCDCDDDDDDDDDAD4EFA91CF1A100F0A000E3A220D4D2CD
            D5D5D5DBDBDBD5D5D5DCDCDCDDDDDDDDDDDDDDDDDD3E3E3E777777DDDDDDDDDD
            DDDDDDDD0000DDDDDDDDDDDDDDDDDD676767525252DDDDDDDDDDDDDDDDDDDCDC
            DCD5D5D5DCDCDCDDDDDDDDDDDDE1D2B2F1A100F1A100E0D1B5D5D5D5D4D4D4D5
            D5D5D4D4D4D5D5D5DCDCDCDDDDDDDDDDDD4F4F4F696969DDDDDDDDDDDDDDDDDD
            0000DDDDDDDDDDDDDDDDDD676767525252DDDDDDDDDDDDDDDDDDDDDDDDDCDCDC
            D5D5D5DCDCDCDDDDDDDDDCDBF0A20AF0A50EDDDDDCDCDCDCD5D5D5D5D5D5D5D5
            D5D4D4D4D5D5D5DCDCDCDDDDDD4F4F4F696969DDDDDDDDDDDDDDDDDD0000EBEB
            EBEBEBEBEBEBEB7A7A7A424242EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE5E5E5E2
            E2E2EAEAEAEBEBEBEFB23AF0B43FEBEBEBEBEBEBEAEAEAE6E6E6EAEAEAE2E2E2
            E1E1E1E2E2E2EAEAEA3F3F3F7D7D7DEBEBEBEBEBEBEBEBEB0000EBEBEBEBEBEB
            EBEBEB9B9B9B333333D7D7D7EBEBEBEBEBEBEBEBEBEBEBEBD6D6D6E1E1E1E2E2
            E2EAEAEAEEC36DEEC471EBEBEBEBEBEBEBEBEBD8D8D8EBEBEBEAEAEAE2E2E2E1
            E1E1CBCBCB3333339D9D9DEBEBEBEBEBEBEBEBEB0000ECECECECECECECECECCC
            CCCC3333339C9C9CEBEBEBECECECE7E7E7828282555555E8E8E8E2E2E2E3E3E3
            ECD6AAEDD8AEECECECECECECEAEAEA525252858585E7E7E7EBEBEBE3E3E39595
            95333434CDCDCDECECECECECECECECEC0000ECECECECECECECECECECECEC5555
            55515151E1E1E1DFE0E0555555818181E0E0E0555555D6D6D6DEDEDEE3E3E3EB
            EBEBE6E6E6D5D5D5585858E0E0E07D7D7D555555E3E3E3E9E9E94D4D4D565656
            E9E9E9ECECECECECECECECEC0000ECECECECECECECECECECECECACACAC333434
            9C9C9CDEDEDEC2C2C2ECECEC808080828282B8B8B86F6F6F9F9F9F9E9E9E6868
            68B5B6B67D7D7D848484ECECECC2C2C2E8E8E89D9D9D333333ACADADE8E8E8EC
            ECECECECECECECEC0000EDEDEDEDEDEDEDEDEDEDEDEDECECEC6363633C3C3CC3
            C4C4E4E4E4C3C3C3565656E8E8E87D7D7DA9A9A9959595979797A0A0A07D7D7D
            DEDEDE525252C7C7C7EDEDEDC9C9C9363636676767ECECECEAEAEAEDEDEDEDED
            EDEDEDED0000EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDDADADA464646424242C2C2
            C2DFDFDFE0E1E1EBEBEB474747E0E0E0959595989898DDDDDD464646E2E2E2D8
            D8D8E7E8E8C9C9C9434343464646DDDDDDEDEDEDECECECEDEDEDEDEDEDEDEDED
            0000EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFD1D1D14646463B3B3B9D9D9D
            E4E4E4ECEDEDC5C5C5EFEFEFB5B5B5B8B8B8EFEFEFC4C4C4E6E6E6E3E3E39B9B
            9B373737464646D3D3D3EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF0000EFEF
            EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDDDDDD6565653334345151519F
            9F9FDCDCDCEFEFEFEFEFEFEFEFEFEFEFEFDBDBDB9F9F9F515151343434656565
            DEDEDEEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF0000EFEFEFEFEFEF
            EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFAEAEAE5555553333333333
            33424242565656565656444444333333333333565656AFAFAFEBEBEBECECECEE
            EEEEEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF0000F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0CECECE9D9D9D7B7B7B
            6C6C6C6C6C6C7C7C7C9E9E9ED0D0D0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F00000F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F00000F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
            F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
            F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
            F1F1F1F1F1F1F1F10000}
          OnClick = btnWeightClick
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitHeight = 34
        end
        object rgpWeightKind: TDBRadioGroup
          Left = 416
          Top = 0
          Width = 417
          Height = 42
          Align = alClient
          Caption = #1606#1608#1593'  '#1608#1586#1606
          Columns = 2
          DataField = 'WeightKind'
          DataSource = srcTozin
          Items.Strings = (
            #1576#1575#1585#1711#1740#1585#1740
            #1578#1582#1604#1740#1607)
          ReadOnly = True
          TabOrder = 0
          Values.Strings = (
            '0'
            '1')
          OnClick = rgpWeightKindClick
          ExplicitWidth = 337
          ExplicitHeight = 36
        end
        object dbrgrpDirectDownload: TDBRadioGroup
          Left = 42
          Top = 0
          Width = 374
          Height = 42
          Align = alLeft
          Caption = #1576#1575#1585#1711#1740#1585#1740
          Columns = 2
          Ctl3D = True
          DataField = 'DirectDownload'
          DataSource = srcTozin
          Items.Strings = (
            #1605#1600#1587#1578#1602#1740#1605
            #1594#1740#1585' '#1605#1587#1578#1602#1740#1605)
          ParentCtl3D = False
          TabOrder = 1
          Values.Strings = (
            '0'
            '1')
          ExplicitHeight = 36
        end
      end
      object grpWet: TGroupBox
        Left = 0
        Top = 69
        Width = 833
        Height = 32
        Align = alTop
        TabOrder = 2
        ExplicitWidth = 753
        object Label11: TLabel
          Left = 723
          Top = 11
          Width = 61
          Height = 14
          Alignment = taRightJustify
          Caption = #1583#1585#1589#1583' '#1585#1591#1608#1576#1578
          FocusControl = edtMoistureContent
        end
        object Label12: TLabel
          Left = 431
          Top = 8
          Width = 46
          Height = 14
          Alignment = taRightJustify
          Caption = #1575#1601#1578' '#1605#1601#1610#1583
          FocusControl = edtRisingUseful
        end
        object Label13: TLabel
          Left = 182
          Top = 11
          Width = 66
          Height = 14
          Alignment = taRightJustify
          Caption = #1575#1601#1578' '#1594#1610#1585' '#1605#1601#1610#1583
          FocusControl = edtRisingNonUseFul
        end
        object edtMoistureContent: TDBEdit
          Left = 586
          Top = 7
          Width = 134
          Height = 22
          TabStop = False
          DataField = 'MoistureContent'
          DataSource = srcTozin
          TabOrder = 0
        end
        object edtRisingUseful: TDBEdit
          Left = 290
          Top = 7
          Width = 134
          Height = 22
          TabStop = False
          DataField = 'RisingUseful'
          DataSource = srcTozin
          TabOrder = 1
        end
        object edtRisingNonUseFul: TDBEdit
          Left = 41
          Top = 7
          Width = 134
          Height = 22
          TabStop = False
          DataField = 'RisingNonUseFul'
          DataSource = srcTozin
          TabOrder = 2
        end
      end
      object pnlRelatedRecipts: TPanel
        Left = 0
        Top = 34
        Width = 833
        Height = 35
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 4
        ExplicitWidth = 753
        object lblUseAbleWeight: TLabel
          Left = 182
          Top = 10
          Width = 47
          Height = 14
          Caption = #1576#1575#1602#1740#1605#1575#1606#1583#1607' '
          FocusControl = edtUseAbleWeight
        end
        object Label15: TLabel
          Left = 431
          Top = 10
          Width = 65
          Height = 14
          Caption = #1576#1575#1585#1711#1740#1585#1740' '#1588#1583#1607
          FocusControl = edtMachineFullWeight
        end
        object Label16: TLabel
          Left = 723
          Top = 10
          Width = 106
          Height = 14
          Caption = #1605#1602#1583#1575#1585' '#1581#1608#1575#1604#1607' /'#1587#1601#1575#1585#1588
          FocusControl = edtentity
        end
        object edtentity: TDBEdit
          Left = 586
          Top = 6
          Width = 134
          Height = 22
          TabStop = False
          Color = clBtnFace
          DataField = 'entity'
          DataSource = srcRelatedRecipts
          TabOrder = 0
        end
        object edtUseAbleWeight: TDBEdit
          Left = 41
          Top = 6
          Width = 134
          Height = 22
          TabStop = False
          Color = clBtnFace
          DataField = 'UseAbleWeight'
          DataSource = srcRelatedRecipts
          TabOrder = 1
        end
        object edtMachineFullWeight: TDBEdit
          Left = 289
          Top = 5
          Width = 134
          Height = 22
          TabStop = False
          Color = clBtnFace
          DataField = 'MachineFullWeight'
          DataSource = srcRelatedRecipts
          TabOrder = 2
        end
      end
      object pnUseUnitSecondType: TPanel
        Left = 0
        Top = 0
        Width = 833
        Height = 34
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        ExplicitWidth = 753
        object PnlSecondType: TPanel
          Left = 27
          Top = 0
          Width = 354
          Height = 34
          Align = alRight
          BevelOuter = bvNone
          BevelWidth = 2
          TabOrder = 1
          TabStop = True
          object lblSecondType: TLabel
            AlignWithMargins = True
            Left = 287
            Top = 3
            Width = 64
            Height = 28
            Align = alRight
            Alignment = taRightJustify
            Caption = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578' '
            ExplicitHeight = 14
          end
          object CmbSecondType: TDBComboBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 278
            Height = 22
            Hint = #1576#1585#1575#1740' '#1662#1740#1588' '#1601#1585#1590' '#1602#1585#1575#1585#1583#1575#1583#1606' '#1606#1608#1593' '#1580#1575#1585#1740' '#1585#1608#1740' '#1570#1606' double click '#1705#1606#1740#1583
            Align = alClient
            BiDiMode = bdLeftToRight
            DataField = 'SecondType'
            DataSource = srcTozin
            Items.Strings = (
              #1606#1602#1583
              #1593#1585#1601' '#1601#1585#1608#1588#1610)
            ParentBiDiMode = False
            TabOrder = 0
          end
        end
        object PnlUseUnitM: TPanel
          Left = 381
          Top = 0
          Width = 452
          Height = 34
          Align = alRight
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitWidth = 372
          DesignSize = (
            452
            34)
          object LblUseUnitM: TLabel
            Left = 342
            Top = 9
            Width = 54
            Height = 14
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1603#1583#1605' '#1605#1589#1585#1601
            FocusControl = EdtUseUnitID_M
            ExplicitLeft = 261
          end
          object btnUseUnitID: TSpeedButton
            Left = 244
            Top = 5
            Width = 23
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '...'
            OnClick = btnUseUnitIDClick
            ExplicitLeft = 163
          end
          object DBTextUseUnitID_M: TDBText
            Left = 127
            Top = 9
            Width = 111
            Height = 14
            Anchors = [akTop, akRight]
            AutoSize = True
            Color = clCream
            DataField = '_UseUnitName'
            DataSource = srcTozin
            ParentColor = False
            Transparent = True
            ExplicitLeft = 47
          end
          object EdtUseUnitID_M: TDBEdit
            Left = 269
            Top = 5
            Width = 70
            Height = 22
            Anchors = [akTop, akRight]
            DataField = 'UseUnitID'
            DataSource = srcTozin
            TabOrder = 0
            ExplicitLeft = 189
          end
        end
      end
    end
  end
  inherited Panel1: TPanel
    Width = 833
    Height = 57
    BevelOuter = bvNone
    TabOrder = 4
    OnClick = Panel1Click
    ExplicitWidth = 753
    ExplicitHeight = 57
    DesignSize = (
      833
      57)
    inherited Image1: TImage
      Left = 779
      ExplicitLeft = 433
    end
    inherited lblTopic0: TLabel
      Left = 627
      Top = 7
      Width = 132
      Caption = #1711#1585#1601#1578#1606' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1586' '#1576#1575#1587#1603#1608#1604
      ParentShowHint = False
      ShowHint = True
      ExplicitLeft = 573
      ExplicitTop = 7
      ExplicitWidth = 132
    end
    inherited lblTopic1: TLabel
      Left = 703
      Top = 22
      Width = 43
      Height = 28
      Visible = False
      ExplicitLeft = 736
      ExplicitTop = 22
      ExplicitWidth = 43
      ExplicitHeight = 28
    end
    object Label9: TLabel
      Left = 156
      Top = 12
      Width = 33
      Height = 14
      Caption = #1588#1605#1575#1585#1607
      FocusControl = edtTozinNumber
    end
    object Label10: TLabel
      Left = 158
      Top = 36
      Width = 22
      Height = 14
      Caption = #1578#1575#1585#1610#1582
      FocusControl = edtTozinDate
    end
    object btnSearchReciptNumber: TSpeedButton
      Left = 12
      Top = 5
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = btnSearchReciptNumberClick
    end
    object imgPlaqueReader: TImage
      Left = 264
      Top = 0
      Width = 228
      Height = 51
    end
    object edtTozinNumber: TDBEdit
      Left = 39
      Top = 4
      Width = 106
      Height = 22
      BiDiMode = bdRightToLeft
      DataField = 'TozinNumber'
      DataSource = srcTozin
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtTozinDate: TDBEdit
      Left = 39
      Top = 31
      Width = 106
      Height = 22
      BiDiMode = bdRightToLeft
      DataField = 'TozinDate'
      DataSource = srcTozin
      ParentBiDiMode = False
      TabOrder = 1
    end
  end
  inherited pnlDown: TPanel
    Top = 867
    Width = 833
    Height = 39
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitTop = 771
    ExplicitWidth = 753
    ExplicitHeight = 39
    object okPanel: TPanel [0]
      Left = 68
      Top = 0
      Width = 172
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = -12
      object BitBtn5: TBitBtn
        AlignWithMargins = True
        Left = 94
        Top = 3
        Width = 75
        Height = 33
        Action = DataSetPost1
        Align = alRight
        Caption = #1578#1571#1610#1610#1600#1600#1600#1583
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
      object BitBtn6: TBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 33
        Action = DataSetCancel1
        Align = alRight
        Caption = #1575#1606#1589#1600#1600#1600#1585#1575#1601
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
    inherited btnClose: TBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 77
      Height = 33
      Align = alLeft
      TabOrder = 3
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 77
      ExplicitHeight = 33
    end
    object newPanel: TPanel
      Left = 240
      Top = 0
      Width = 593
      Height = 39
      Align = alRight
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 160
      object BitBtn2: TBitBtn
        AlignWithMargins = True
        Left = 508
        Top = 3
        Width = 80
        Height = 33
        Margins.Left = 0
        Margins.Right = 5
        Action = DataSetInsert1
        Align = alRight
        Caption = #1579#1576#1578' '#1587#1740#1587#1578#1605#1740
        TabOrder = 0
      end
      object btnState3: TBitBtn
        AlignWithMargins = True
        Left = 254
        Top = 3
        Width = 63
        Height = 33
        Margins.Left = 0
        Margins.Right = 0
        Align = alRight
        Caption = #1576#1575#1591#1604
        TabOrder = 4
        OnClick = btnState3Click
      end
      object BitBtn3: TBitBtn
        AlignWithMargins = True
        Left = 382
        Top = 3
        Width = 63
        Height = 33
        Margins.Left = 0
        Margins.Right = 0
        Action = actSearch
        Align = alRight
        Caption = #1606#1608#1576#1578' '#1583#1608#1605
        TabOrder = 2
      end
      object BitBtn7: TBitBtn
        AlignWithMargins = True
        Left = 445
        Top = 3
        Width = 63
        Height = 33
        Margins.Left = 0
        Margins.Right = 0
        Action = actManualInsert
        Align = alRight
        Caption = #1579#1576#1578' '#1583#1587#1578#1740
        TabOrder = 1
      end
      object btnCorrelateRecipt1: TBitBtn
        AlignWithMargins = True
        Left = 163
        Top = 3
        Width = 90
        Height = 33
        Margins.Left = 1
        Margins.Right = 1
        Action = actCorrelateRecipt
        Align = alRight
        Caption = 'actCorrelateRecipt'
        TabOrder = 5
      end
      object btnConversionCoSerial: TBitBtn
        AlignWithMargins = True
        Left = 71
        Top = 3
        Width = 90
        Height = 33
        Margins.Left = 1
        Margins.Right = 1
        Action = actConversionCoSerial
        Align = alRight
        Caption = 'actConversionCoSerial'
        TabOrder = 6
      end
      object btnEdit: TBitBtn
        AlignWithMargins = True
        Left = 318
        Top = 3
        Width = 63
        Height = 33
        Margins.Left = 1
        Margins.Right = 1
        Action = actEdit
        Align = alRight
        Caption = #1608#1740#1585#1575#1740#1588
        TabOrder = 3
      end
      object BitBtn8: TBitBtn
        AlignWithMargins = True
        Left = 1
        Top = 3
        Width = 68
        Height = 33
        Margins.Left = 1
        Margins.Right = 1
        Action = actSplitTozin
        Align = alRight
        Caption = #1578#1602#1587#1740#1605' '#1578#1608#1586#1740#1606
        TabOrder = 7
      end
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 86
      Top = 3
      Width = 74
      Height = 33
      Hint = ' '
      Action = actPrint
      Align = alLeft
      Caption = #1670#1575#1662'(F7)'
      TabOrder = 2
    end
  end
  object dbnvgr1: TDBNavigator [4]
    Left = 0
    Top = 849
    Width = 833
    Height = 18
    DataSource = srcTozin
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete]
    Align = alBottom
    Flat = True
    ConfirmDelete = False
    TabOrder = 5
    ExplicitTop = 753
    ExplicitWidth = 753
  end
  object GroupBox3: TGroupBox [5]
    Left = 0
    Top = 761
    Width = 833
    Height = 88
    Align = alBottom
    Caption = #1578#1575#1585#1610#1582' '#1608#1587#1575#1593#1578
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitTop = 752
    ExplicitWidth = 753
    object Label5: TLabel
      Left = 748
      Top = 50
      Width = 29
      Height = 18
      Alignment = taRightJustify
      Caption = ' '#1608#1585#1608#1583
      FocusControl = txtEnter
    end
    object Label6: TLabel
      Left = 461
      Top = 50
      Width = 31
      Height = 18
      Alignment = taRightJustify
      Caption = #1582#1585#1608#1580
      FocusControl = txtExit
    end
    object Label3: TLabel
      Left = 718
      Top = 22
      Width = 59
      Height = 18
      Alignment = taRightJustify
      Caption = #1608#1586#1606' '#1582#1575#1604#1610
      FocusControl = edtMachineWeight
    end
    object Label2: TLabel
      Left = 461
      Top = 22
      Width = 36
      Height = 18
      Alignment = taRightJustify
      Caption = #1608#1586#1606' '#1662#1585
      FocusControl = edtFullweight
    end
    object Label4: TLabel
      Left = 184
      Top = 50
      Width = 61
      Height = 18
      Alignment = taRightJustify
      Caption = #1608#1586#1606' '#1582#1575#1604#1589
    end
    object lblNumberOfBags: TLabel
      Left = 184
      Top = 21
      Width = 51
      Height = 18
      Alignment = taRightJustify
      Caption = #1608#1586#1606' '#1605#1576#1583#1575
      FocusControl = edtNumberOfBags
    end
    object txtEnter: TDBEdit
      Left = 633
      Top = 46
      Width = 78
      Height = 26
      TabStop = False
      Color = 13431799
      DataField = 'EnterDate'
      DataSource = srcTozin
      TabOrder = 1
    end
    object txtExit: TDBEdit
      Left = 375
      Top = 46
      Width = 79
      Height = 26
      TabStop = False
      Color = 13431799
      DataField = 'ExitDate'
      DataSource = srcTozin
      TabOrder = 2
    end
    object edtMachineWeight: TDBEdit
      Left = 541
      Top = 18
      Width = 170
      Height = 26
      TabStop = False
      Color = clBtnFace
      DataField = 'MachineWeight'
      DataSource = srcTozin
      ReadOnly = True
      TabOrder = 3
    end
    object edtFullweight: TDBEdit
      Left = 283
      Top = 18
      Width = 171
      Height = 26
      TabStop = False
      Color = clBtnFace
      DataField = 'MachineFullWeight'
      DataSource = srcTozin
      ReadOnly = True
      TabOrder = 4
    end
    object edtMandeh: TEdit
      Left = 43
      Top = 46
      Width = 134
      Height = 26
      TabStop = False
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 5
    end
    object edtNumberOfBags: TDBEdit
      Left = 43
      Top = 18
      Width = 134
      Height = 26
      DataField = 'NumberOfBags'
      DataSource = srcTozin
      TabOrder = 0
    end
    object edtEnterDate: TDBDateTimeEditEh
      Left = 541
      Top = 47
      Width = 91
      Height = 26
      ControlLabel.BiDiMode = bdRightToLeft
      ControlLabel.ParentBiDiMode = False
      Alignment = taLeftJustify
      DataField = 'EnterDate'
      DataSource = srcTozin
      DynProps = <>
      EditButtons = <>
      Kind = dtkTimeEh
      TabOrder = 6
      Visible = True
    end
    object edtExitDate: TDBDateTimeEditEh
      Left = 283
      Top = 46
      Width = 91
      Height = 26
      ControlLabel.BiDiMode = bdRightToLeft
      ControlLabel.ParentBiDiMode = False
      DataField = 'ExitDate'
      DataSource = srcTozin
      DynProps = <>
      EditButtons = <>
      Kind = dtkTimeEh
      TabOrder = 7
      Visible = True
    end
  end
  object pnlMachineEntity: TPanel [6]
    Left = 0
    Top = 726
    Width = 833
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 642
    ExplicitWidth = 753
    object Label19: TLabel
      Left = 643
      Top = 10
      Width = 30
      Height = 14
      Caption = #1605#1602#1583#1575#1585' '
      FocusControl = edtMachineEntity
    end
    object edtMachineEntity: TDBEdit
      Left = 505
      Top = 6
      Width = 134
      Height = 22
      Color = clWhite
      DataField = 'MachineEntity'
      DataSource = srcTozin
      TabOrder = 0
    end
  end
  inherited ActionList1: TActionList
    Images = ImageList1
    Left = 216
    Top = 8
    inherited DataSetPost1: TDataSetPost
      DataSource = srcTozin
    end
    inherited DataSetCancel1: TDataSetCancel
      DataSource = srcTozin
    end
    object actSearch: TAction
      Caption = #1606#1608#1576#1578' '#1583#1608#1605
      OnExecute = actSearchExecute
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1579#1576#1578' '#1587#1740#1587#1578#1605#1740
      Hint = ' '
      ShortCut = 113
      DataSource = srcTozin
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = ' '
      ShortCut = 115
      DataSource = srcTozin
    end
    object actPrint: TAction
      Caption = #1670#1575#1662'(F7)'
      ShortCut = 118
      OnExecute = actPrintExecute
    end
    object actStoreSettings: TAction
      Caption = #1584#1582#1610#1585#1607' '#1578#1606#1592#1610#1605#1575#1578
      OnExecute = actStoreSettingsExecute
    end
    object actManualInsert: TAction
      Caption = #1579#1576#1578' '#1583#1587#1578#1740
      ShortCut = 114
      OnExecute = actManualInsertExecute
    end
    object actRecipts11: TAction
      Caption = #1601#1585#1605' ...'
      OnExecute = actRecipts11Execute
    end
    object actCorrelateRecipt: TAction
      Caption = 'actCorrelateRecipt'
      OnExecute = actCorrelateReciptExecute
    end
    object actConversionCoSerial: TAction
      Caption = 'actConversionCoSerial'
      OnExecute = actConversionCoSerialExecute
    end
    object actCustomerGrpID4Add2Customers2: TAction
      Caption = 'actCustomerGrpID4Add2Customers2'
      OnExecute = actCustomerGrpID4Add2Customers2Execute
    end
    object actUpDown1Min: TAction
      Caption = 'actUpDown1Min'
    end
    object actSplitTozin: TAction
      Caption = #1578#1602#1587#1740#1605' '#1578#1608#1586#1740#1606
      OnExecute = actSplitTozinExecute
    end
    object actEdit: TAction
      Category = 'Dataset'
      Caption = #1608#1740#1585#1575#1740#1588
      OnExecute = actEditExecute
    end
    object actAdd2CustomersMasir: TAction
      Caption = #1575#1590#1575#1601#1607' '#1705#1585#1583#1606' '#1570#1583#1585#1587
      ShortCut = 16460
      OnExecute = actAdd2CustomersMasirExecute
    end
    object actTozinPurchaseEffectF: TAction
      Caption = #1593#1606#1575#1608#1740#1606' '#1605#1608#1579#1585' '#1576#1585' '#1705#1575#1604#1575
      OnExecute = actTozinPurchaseEffectFExecute
    end
    object actTozinDeficitsF: TAction
      Caption = #1579#1576#1578' '#1603#1587#1608#1585#1575#1578' '#1608' '#1575#1590#1575#1601#1575#1578
      OnExecute = actTozinDeficitsFExecute
    end
    object actCustomerGrpID4Add2Customers1: TAction
      Caption = 'actCustomerGrpID4Add2Customers1'
      OnExecute = actCustomerGrpID4Add2Customers1Execute
    end
    object actCustomerGrpID4Add2Customers3: TAction
      Caption = 'actCustomerGrpID4Add2Customers3'
      OnExecute = actCustomerGrpID4Add2Customers3Execute
    end
    object actPlaque: TAction
      ImageIndex = 0
      OnExecute = actPlaqueExecute
    end
    object actCamera: TAction
      ImageIndex = 1
      OnExecute = actCameraExecute
    end
    object actDeleteRecipts: TAction
      Caption = #1581#1584#1601' '#1601#1585#1605' '#1605#1585#1578#1576#1591
      OnExecute = actDeleteReciptsExecute
    end
    object actCustomersTaxF: TAction
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1575#1604#1610#1575#1578#1610' '#1605#1588#1578#1585#1610
      ShortCut = 8309
      OnExecute = actCustomersTaxFExecute
    end
  end
  object qryTozin: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    BeforeInsert = qryTozinBeforeInsert
    AfterInsert = qryTozinAfterInsert
    BeforeEdit = qryTozinBeforeEdit
    AfterEdit = qryTozinAfterEdit
    BeforePost = qryTozinBeforePost
    AfterPost = qryTozinAfterPost
    AfterCancel = qryTozinAfterCancel
    BeforeDelete = qryTozinBeforeDelete
    BeforeScroll = qryTozinBeforeScroll
    AfterScroll = qryTozinAfterScroll
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end
      item
        Name = 'TozinDate'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '0'
      end
      item
        Name = 'YearIDFrom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'YearIDTo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'StoreIDFrom'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end
      item
        Name = 'StoreIDTo'
        Attributes = [paSigned, paNullable]
        DataType = ftSmallint
        Precision = 5
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'select  *, case when  MachineFullWeight - MachineWeight < 0'
      '                 then 0 else'
      
        '                      MachineFullWeight - MachineWeight end AS M' +
        'andeh'
      
        ', LEFT(MachineNo, 2) AS Pelak1, SUBSTRING(MachineNo, 4, 1) AS Pe' +
        'lak2, SUBSTRING(MachineNo, 6, 3) AS Pelak3, RIGHT(MachineNo, 2) ' +
        'AS Pelak4'
      ',ExitDate AS ExitDateM'
      ''
      'FROM            Tozin'
      
        'WHERE    (ReciptType = :ReciptType ) AND      (TozinDate >= :Toz' +
        'inDate )'
      ' AND (Tozin.YearID BETWEEN :YearIDFrom  AND :YearIDTo)'
      'And(StoreID BetWeen :StoreIDFrom and :StoreIDTo )'
      'ORDER BY TozinNumber')
    Left = 409
    Top = 72
    object qryTozinTozinID: TIntegerField
      FieldName = 'TozinID'
    end
    object qryTozinTozinNumber: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607
      FieldName = 'TozinNumber'
    end
    object qryTozinReciptType: TWordField
      DisplayLabel = #1606#1608#1593
      FieldName = 'ReciptType'
      Required = True
    end
    object qryTozinMachineNo: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1605#1575#1588#1610#1606
      FieldName = 'MachineNo'
      Required = True
      OnChange = qryTozinMachineNoChange
      OnGetText = qryTozinMachineNoGetText
      OnSetText = qryTozinMachineNoSetText
      Size = 25
    end
    object qryTozinStoreID: TSmallintField
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      FieldName = 'StoreID'
      Required = True
      OnChange = qryTozinStoreIDChange
    end
    object qryTozinStuffCode: TLargeintField
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'StuffCode'
      Required = True
      OnChange = qryTozinStuffCodeChange
    end
    object qryTozinPersonID1: TIntegerField
      DisplayLabel = #1603#1583' '#1603#1575#1604#1575
      FieldName = 'PersonID1'
      Required = True
    end
    object qryTozinMachineName: TStringField
      DisplayLabel = #1606#1575#1605' '#1605#1575#1588#1610#1606
      FieldName = 'MachineName'
      OnChange = qryTozinMachineNameChange
      Size = 50
    end
    object qryTozinMachineWeight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1582#1575#1604#1610
      FieldName = 'MachineWeight'
      OnChange = qryTozinMachineFullWeightChange
    end
    object qryTozinMachineFullWeight: TFloatField
      DisplayLabel = #1608#1586#1606' '#1662#1585
      FieldName = 'MachineFullWeight'
      OnChange = qryTozinMachineFullWeightChange
    end
    object qryTozinTozinNote: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'TozinNote'
      Size = 400
    end
    object qryTozinEnterDate: TDateTimeField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1608#1587#1575#1593#1578' '#1608#1585#1608#1583
      FieldName = 'EnterDate'
      OnGetText = qryTozinEnterDateGetText
    end
    object qryTozinFirstUser: TStringField
      DisplayLabel = #1606#1575#1605' '#1575#1662#1585#1575#1578#1608#1585
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryTozinLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryTozinTozinDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582
      FieldName = 'TozinDate'
      Required = True
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryTozin_StuffName: TStringField
      FieldKind = fkLookup
      FieldName = '_StuffName'
      LookupDataSet = qryStuff
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'c_StuffName'
      KeyFields = 'StuffCode'
      Required = True
      Size = 150
      Lookup = True
    end
    object qryTozin_Carton: TFloatField
      FieldKind = fkLookup
      FieldName = '_Carton'
      LookupDataSet = qryStuff
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'Carton'
      KeyFields = 'StuffCode'
      ReadOnly = True
      Lookup = True
    end
    object qryTozin_StuffVolume: TFloatField
      FieldKind = fkLookup
      FieldName = '_StuffVolume'
      LookupDataSet = qryStuff
      LookupKeyFields = 'c_StuffCode'
      LookupResultField = 'StuffVolume'
      KeyFields = 'StuffCode'
      ReadOnly = True
      Lookup = True
    end
    object qryTozin_StoreName: TStringField
      FieldKind = fkLookup
      FieldName = '_StoreName'
      LookupDataSet = qryStore
      LookupKeyFields = 'N_StoreId'
      LookupResultField = 'C_StoreName'
      KeyFields = 'StoreID'
      Size = 150
      Lookup = True
    end
    object qryTozin_CustName: TStringField
      FieldKind = fkLookup
      FieldName = '_CustName'
      LookupDataSet = qryCustomers
      LookupKeyFields = 'CustId'
      LookupResultField = 'Custname'
      KeyFields = 'PersonID1'
      Size = 200
      Lookup = True
    end
    object qryTozinReciptNumber: TIntegerField
      FieldName = 'ReciptNumber'
    end
    object qryTozinMoistureContent: TFloatField
      DisplayLabel = #1583#1585#1589#1583' '#1585#1591#1608#1576#1578
      FieldName = 'MoistureContent'
    end
    object qryTozinRisingUseful: TFloatField
      DisplayLabel = #1575#1601#1578' '#1605#1601#1610#1583
      FieldName = 'RisingUseful'
    end
    object qryTozinRisingNonUseFul: TFloatField
      DisplayLabel = #1575#1601#1578' '#1594#1610#1585' '#1605#1601#1610#1583
      FieldName = 'RisingNonUseFul'
    end
    object qryTozinPersonID2: TIntegerField
      FieldName = 'PersonID2'
      OnChange = qryTozinPersonID2Change
    end
    object qryTozinIsSystem: TBooleanField
      FieldName = 'IsSystem'
    end
    object qryTozin_CustName2: TStringField
      FieldKind = fkLookup
      FieldName = '_CustName2'
      LookupDataSet = qryCustomers
      LookupKeyFields = 'CustId'
      LookupResultField = 'Custname'
      KeyFields = 'PersonID2'
      Size = 200
      Lookup = True
    end
    object qryTozinRelatedRecipts: TStringField
      FieldName = 'RelatedRecipts'
      OnChange = qryTozinRelatedReciptsChange
      Size = 300
    end
    object qryTozinReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryTozinMandeh: TFloatField
      FieldName = 'Mandeh'
      ReadOnly = True
    end
    object qryTozinExitDate: TDateTimeField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1608' '#1587#1575#1593#1578' '#1582#1585#1608#1580
      FieldName = 'ExitDate'
      OnGetText = qryTozinExitDateGetText
    end
    object qryTozinTozinState: TWordField
      FieldName = 'TozinState'
      OnGetText = qryTozinTozinStateGetText
    end
    object qryTozinPersonID3: TIntegerField
      FieldName = 'PersonID3'
    end
    object qryTozin_CustName3: TStringField
      FieldKind = fkLookup
      FieldName = '_CustName3'
      LookupDataSet = qryCustomers
      LookupKeyFields = 'CustId'
      LookupResultField = 'Custname'
      KeyFields = 'PersonID3'
      Size = 200
      Lookup = True
    end
    object qryTozinPersonID4: TIntegerField
      FieldName = 'PersonID4'
    end
    object qryTozin_CustName4: TStringField
      FieldKind = fkLookup
      FieldName = '_CustName4'
      LookupDataSet = qryCustomers
      LookupKeyFields = 'CustId'
      LookupResultField = 'Custname'
      KeyFields = 'PersonID4'
      Size = 200
      Lookup = True
    end
    object qryTozinPersonID5: TIntegerField
      FieldName = 'PersonID5'
    end
    object qryTozin_CustName5: TStringField
      FieldKind = fkLookup
      FieldName = '_CustName5'
      LookupDataSet = qryCustomers
      LookupKeyFields = 'CustId'
      LookupResultField = 'Custname'
      KeyFields = 'PersonID5'
      Size = 200
      Lookup = True
    end
    object qryTozinNumberOfBags: TBCDField
      FieldName = 'NumberOfBags'
      Precision = 18
      Size = 2
    end
    object qryTozinServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryTozinYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryTozinPrvTozinID: TIntegerField
      FieldName = 'PrvTozinID'
    end
    object qryTozinWeightKind: TWordField
      FieldName = 'WeightKind'
    end
    object qryTozinPelak1: TStringField
      FieldName = 'Pelak1'
      ReadOnly = True
      Size = 2
    end
    object qryTozinPelak2: TStringField
      FieldName = 'Pelak2'
      ReadOnly = True
      Size = 1
    end
    object qryTozinPelak3: TStringField
      FieldName = 'Pelak3'
      ReadOnly = True
      Size = 3
    end
    object qryTozinPelak4: TStringField
      FieldName = 'Pelak4'
      ReadOnly = True
      Size = 2
    end
    object qryTozinParentReciptItemID: TIntegerField
      FieldName = 'ParentReciptItemID'
    end
    object qryTozinDirectDownload: TWordField
      FieldName = 'DirectDownload'
    end
    object qryTozin_PostControl: TSmallintField
      FieldKind = fkLookup
      FieldName = '_PostControl'
      LookupDataSet = qryCustomers
      LookupKeyFields = 'CustId'
      LookupResultField = 'PostControl'
      KeyFields = 'PersonID2'
      Lookup = True
    end
    object qryTozinSecondType: TIntegerField
      FieldName = 'SecondType'
      OnChange = qryTozinSecondTypeChange
      OnGetText = ALLGetText
      OnSetText = ALLSetText
    end
    object qryTozinMasirID: TIntegerField
      FieldName = 'MasirID'
    end
    object qryTozinUseUnitID: TIntegerField
      DisplayLabel = #1603#1583' '#1605#1581#1604' '#1605#1589#1585#1601
      FieldName = 'UseUnitID'
    end
    object qryTozin_UseUnitName: TStringField
      DisplayLabel = #1606#1575#1605' '#1605#1581#1604' '#1605#1589#1585#1601
      FieldKind = fkLookup
      FieldName = '_UseUnitName'
      LookupDataSet = DmF.qryUseUnits
      LookupKeyFields = 'UseUnitID'
      LookupResultField = 'UseUnitName'
      KeyFields = 'UseUnitID'
      Size = 100
      Lookup = True
    end
    object qryTozinStoreID2: TSmallintField
      FieldName = 'StoreID2'
    end
    object qryTozin_StoresName2: TStringField
      FieldKind = fkLookup
      FieldName = '_StoresName2'
      LookupDataSet = qryStore
      LookupKeyFields = 'n_StoreID'
      LookupResultField = 'c_StoreName'
      KeyFields = 'StoreID2'
      Size = 100
      Lookup = True
    end
    object qryTozin_InfoWeight: TFloatField
      FieldKind = fkLookup
      FieldName = '_InfoWeight'
      LookupDataSet = qryCustomers
      LookupKeyFields = 'CustID'
      LookupResultField = 'InfoWeight'
      KeyFields = 'PersonID2'
      Lookup = True
    end
    object qryTozinAidDate: TStringField
      FieldName = 'AidDate'
      EditMask = '9999/99/99'
      FixedChar = True
      Size = 10
    end
    object qryTozinAidNumber: TStringField
      FieldName = 'AidNumber'
      Size = 40
    end
    object qryTozinPrvYearID: TIntegerField
      FieldName = 'PrvYearID'
    end
    object qryTozinSellsMethod: TIntegerField
      FieldName = 'SellsMethod'
    end
    object qryTozinTruckNumber: TStringField
      FieldName = 'TruckNumber'
      Size = 100
    end
    object qryTozin_CarType: TStringField
      FieldKind = fkLookup
      FieldName = '_CarType'
      LookupDataSet = qryCustomers
      LookupKeyFields = 'CustID'
      LookupResultField = 'CarType'
      KeyFields = 'PersonID2'
      Size = 30
      Lookup = True
    end
    object qryTozinExitDateM: TDateTimeField
      FieldName = 'ExitDateM'
    end
    object qryTozinPO: TStringField
      FieldName = 'PO'
      Size = 30
    end
    object qryTozinMachineEntity: TFMTBCDField
      FieldName = 'MachineEntity'
      Precision = 38
    end
  end
  object srcTozin: TDataSource
    AutoEdit = False
    DataSet = qryTozin
    OnStateChange = srcTozinStateChange
    OnDataChange = srcTozinDataChange
    Left = 440
    Top = 208
  end
  object qryStore: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'UserID'
        Size = -1
        Value = Null
      end
      item
        Name = 'UserAdmin'
        Size = -1
        Value = Null
      end
      item
        Name = 'StoreKindList'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT  distinct   Stores.n_StoreID, Stores.c_StoreName, Stores.' +
        'n_ValuationType ,'
      
        '           Stores.StoreKind, Stores.HasDeficit, UsersStore.Store' +
        'Type,c_address,c_tel, Stores.EntityDisplayType, Stores.TypeOfSal' +
        'e'
      ',Stores.c_note'
      ''
      'FROM         Stores INNER JOIN'
      
        '                      UsersStore ON Stores.n_StoreID = UsersStor' +
        'e.n_StoreID'
      'WHERE     (UsersStore.n_UserID = :UserID) OR (1  = :UserAdmin)'
      ''
      'AND (Stores.n_StoreID > 0)'
      ' :StoreKindList'
      ''
      ''
      '')
    Left = 121
    Top = 232
  end
  object qryStuff: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterInsert = qryTozinAfterInsert
    Parameters = <>
    SQL.Strings = (
      
        'select c_StuffCode,c_StuffName, Carton,StuffVolume from Stuffcod' +
        'ing'
      '')
    Left = 505
    Top = 216
  end
  object qryCustomers: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterInsert = qryTozinAfterInsert
    Parameters = <>
    SQL.Strings = (
      
        'SELECT        CustID, CustName, PostControl, InfoWeight , CarTyp' +
        'e'
      'FROM            Customers'
      '')
    Left = 617
    Top = 136
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A5'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 5000
    PrinterSetup.mmMarginLeft = 5000
    PrinterSetup.mmMarginRight = 5000
    PrinterSetup.mmMarginTop = 5000
    PrinterSetup.mmPaperHeight = 148000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 11
    Template.FileName = 
      'D:\Projects\FaraXE8\Bsell\Exe\Report\Recipt_11_Parvaneh_Tozin.rt' +
      'm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    CachePages = True
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
    EmailSettings.Enabled = True
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = False
    ThumbnailSettings.Visible = False
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
    PDFSettings.FontEncoding = feUnicode
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PDFSettings.Layers = True
    PDFSettings.Outline = True
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.SinglePageOnly = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
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
    Left = 480
    Top = 403
    Version = '23.0'
    mmColumnWidth = 197300
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 53181
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        OnGetText = ppSystemVariable1GetText
        Border.mmPadding = 0
        VarType = vtPageSet
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4276
        mmLeft = 1588
        mmTop = 2646
        mmWidth = 7535
        BandType = 0
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        OnGetText = ppSystemVariable1GetText
        Border.mmPadding = 0
        VarType = vtDateTime
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 9790
        mmWidth = 31485
        BandType = 0
        LayerName = Foreground
      end
      object plbTozinaOfTozin: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'plbTozinaOfTozin'
        OnGetText = plbTozinaOfTozinGetText
        Border.mmPadding = 0
        Caption = #1578#1608#1586#1740#1606' '#1588#1605#1575#1585' '#1607' '#1575#1586' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Badr'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        Visible = False
        mmHeight = 6350
        mmLeft = 166159
        mmTop = 9260
        mmWidth = 17991
        BandType = 0
        LayerName = Foreground
      end
      object plbltxtEnter: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'plbltxtEnter'
        OnGetText = plbltxtEnterGetText
        Border.mmPadding = 0
        Caption = 'plbltxtEnter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 137848
        mmTop = 7673
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground
      end
      object plbledtEnterDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'plbledtEnterDate'
        OnGetText = plbledtEnterDateGetText
        Border.mmPadding = 0
        Caption = 'plbledtEnterDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 139436
        mmTop = 15081
        mmWidth = 20637
        BandType = 0
        LayerName = Foreground
      end
      object plbltxtExit: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'plbltxtExit'
        OnGetText = plbltxtExitGetText
        Border.mmPadding = 0
        Caption = 'plbltxtExit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 147373
        mmTop = 22754
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object plbledtExitDate: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'plbledtExitDate'
        OnGetText = plbledtExitDateGetText
        Border.mmPadding = 0
        Caption = 'plbledtExitDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yekan'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 150548
        mmTop = 29104
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 265
      mmPrintPosition = 0
    end
    object ppPageStyle1: TppPageStyle
      Border.mmPadding = 0
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 138000
      mmPrintPosition = 0
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Anchors = [atLeft, atRight]
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1586#1605#1575#1606' '#1578#1608#1586#1740#1606
        Color = cl3DLight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Yagut'
        Font.Size = 16
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 10054
        mmLeft = 55827
        mmTop = 22520
        mmWidth = 44979
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Anchors = [atLeft, atRight]
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1602#1576#1590
        Color = cl3DLight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Yagut'
        Font.Size = 16
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 10054
        mmLeft = 10848
        mmTop = 22520
        mmWidth = 44979
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        Anchors = [atLeft, atRight]
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1588#1605#1575#1585#1607' '#1582#1608#1583#1585#1608
        Color = cl3DLight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Yagut'
        Font.Size = 16
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 10054
        mmLeft = 100806
        mmTop = 22520
        mmWidth = 44979
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Anchors = [atLeft, atRight]
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1705#1575#1604#1575
        Color = cl3DLight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Yagut'
        Font.Size = 16
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 10054
        mmLeft = 144726
        mmTop = 22520
        mmWidth = 44979
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Anchors = [atLeft, atRight]
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1608#1586#1606' '#1662#1585
        Color = cl3DLight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Yagut'
        Font.Size = 16
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 10054
        mmLeft = 144820
        mmTop = 47143
        mmWidth = 45000
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Anchors = [atLeft, atRight]
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1608#1586#1606' '#1582#1575#1604#1740
        Color = cl3DLight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Yagut'
        Font.Size = 16
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 10054
        mmLeft = 101217
        mmTop = 46860
        mmWidth = 42741
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Anchors = [atLeft, atRight]
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1608#1586#1606' '#1582#1575#1604#1589
        Color = cl3DLight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Yagut'
        Font.Size = 16
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 10054
        mmLeft = 56305
        mmTop = 46860
        mmWidth = 44387
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Anchors = [atLeft, atRight]
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1606#1575#1605' '#1585#1575#1606#1606#1583#1607
        Color = cl3DLight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Yagut'
        Font.Size = 16
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 10054
        mmLeft = 11005
        mmTop = 46860
        mmWidth = 44775
        BandType = 10
        LayerName = PageLayer1
      end
      object ppTableGrid1: TppTableGrid
        DesignLayer = ppDesignLayer2
        UserName = 'TableGrid1'
        DefaultColWidth = 15.000000000000000000
        DefaultRowHeight = 15.000000000000000000
        mmHeight = 49095
        mmLeft = 10890
        mmTop = 22368
        mmWidth = 177800
        BandType = 10
        LayerName = PageLayer1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmDefaultRowHeight = 15000
        mmDefaultColWidth = 15000
        object ppTableRow1: TppTableRow
          DesignLayer = ppDesignLayer2
          UserName = 'TableRow1'
          mmHeight = 10157
          mmLeft = 0
          mmTop = 23548
          mmWidth = 48948
          BandType = 4
          LayerName = PageLayer1
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppTableCell1: TppTableCell
            DesignLayer = ppDesignLayer2
            UserName = 'TableCell1'
            Border.BorderPositions = [bpLeft, bpTop, bpRight]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1000
            Brush.Style = bsClear
            Padding = 1.000000000000000000
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = PageLayer1
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 10157
            mmPadding = 1000
            object ppDBText2: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText2'
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              DataField = 'TozinNumber'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = '2  Yagut'
              Font.Size = 14
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 15081
              mmLeft = 11005
              mmTop = 31935
              mmWidth = 45026
              BandType = 10
              LayerName = PageLayer1
            end
          end
          object ppTableCell2: TppTableCell
            DesignLayer = ppDesignLayer2
            UserName = 'TableCell2'
            Border.BorderPositions = [bpLeft, bpTop, bpRight]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1000
            Brush.Style = bsClear
            Padding = 1.000000000000000000
            Transparent = True
            mmHeight = 10024
            mmLeft = 62688
            mmTop = 22448
            mmWidth = 42850
            BandType = 4
            LayerName = PageLayer1
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 10157
            mmPadding = 1000
            object ppDBText12: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText12'
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              DataField = 'TozinDate'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = '2  Yagut'
              Font.Size = 14
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 15081
              mmLeft = 56895
              mmTop = 32015
              mmWidth = 42617
              BandType = 10
              LayerName = PageLayer1
            end
          end
          object ppTableCell3: TppTableCell
            DesignLayer = ppDesignLayer2
            UserName = 'TableCell3'
            Border.BorderPositions = [bpLeft, bpTop, bpRight]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1000
            Brush.Style = bsClear
            Padding = 1.000000000000000000
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = PageLayer1
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 10157
            mmPadding = 1000
          end
          object ppTableCell7: TppTableCell
            DesignLayer = ppDesignLayer2
            UserName = 'TableCell7'
            Border.BorderPositions = [bpLeft, bpTop, bpRight]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1000
            Brush.Style = bsClear
            Padding = 1.000000000000000000
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = PageLayer1
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 10157
            mmPadding = 1000
            object ppDBText5: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText5'
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              DataField = '_StuffName'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = '2  Yagut'
              Font.Size = 14
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 15081
              mmLeft = 144898
              mmTop = 32015
              mmWidth = 44977
              BandType = 10
              LayerName = PageLayer1
            end
          end
        end
        object ppTableRow2: TppTableRow
          DesignLayer = ppDesignLayer2
          UserName = 'TableRow2'
          mmHeight = 14391
          mmLeft = 0
          mmTop = 33596
          mmWidth = 48948
          BandType = 4
          LayerName = PageLayer1
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppTableCell4: TppTableCell
            DesignLayer = ppDesignLayer2
            UserName = 'TableCell4'
            Border.BorderPositions = [bpLeft, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1000
            Brush.Style = bsClear
            Padding = 1.000000000000000000
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = PageLayer1
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 14391
            mmPadding = 1000
          end
          object ppTableCell5: TppTableCell
            DesignLayer = ppDesignLayer2
            UserName = 'TableCell5'
            Border.BorderPositions = [bpLeft, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1000
            Brush.Style = bsClear
            Padding = 1.000000000000000000
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = PageLayer1
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 14391
            mmPadding = 1000
          end
          object ppTableCell6: TppTableCell
            DesignLayer = ppDesignLayer2
            UserName = 'TableCell6'
            Border.BorderPositions = [bpLeft, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1000
            Brush.Style = bsClear
            Padding = 1.000000000000000000
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = PageLayer1
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 14391
            mmPadding = 1000
          end
          object ppTableCell8: TppTableCell
            DesignLayer = ppDesignLayer2
            UserName = 'TableCell8'
            Border.BorderPositions = [bpLeft, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1000
            Brush.Style = bsClear
            Padding = 1.000000000000000000
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = PageLayer1
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 14391
            mmPadding = 1000
          end
        end
        object ppTableRow3: TppTableRow
          DesignLayer = ppDesignLayer2
          UserName = 'TableRow3'
          mmHeight = 10157
          mmLeft = 0
          mmTop = 47878
          mmWidth = 48948
          BandType = 4
          LayerName = PageLayer1
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppTableCell9: TppTableCell
            DesignLayer = ppDesignLayer2
            UserName = 'TableCell9'
            Border.BorderPositions = [bpLeft, bpTop, bpRight]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1000
            Brush.Style = bsClear
            Padding = 1.000000000000000000
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = PageLayer1
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 10157
            mmPadding = 1000
            object ppDBText4: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText4'
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              DataField = 'MachineName'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = '2  Yagut'
              Font.Size = 14
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 15081
              mmLeft = 11300
              mmTop = 56918
              mmWidth = 44480
              BandType = 10
              LayerName = PageLayer1
            end
          end
          object ppTableCell10: TppTableCell
            DesignLayer = ppDesignLayer2
            UserName = 'TableCell10'
            Border.BorderPositions = [bpLeft, bpTop, bpRight]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1000
            Brush.Style = bsClear
            Padding = 1.000000000000000000
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = PageLayer1
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 10157
            mmPadding = 1000
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText7'
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              DataField = 'Mandeh'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = '2  Yagut'
              Font.Size = 14
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 15081
              mmLeft = 56305
              mmTop = 56621
              mmWidth = 44387
              BandType = 10
              LayerName = PageLayer1
            end
          end
          object ppTableCell11: TppTableCell
            DesignLayer = ppDesignLayer2
            UserName = 'TableCell11'
            Border.BorderPositions = [bpLeft, bpTop, bpRight]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1000
            Brush.Style = bsClear
            Padding = 1.000000000000000000
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = PageLayer1
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 10157
            mmPadding = 1000
          end
          object ppTableCell12: TppTableCell
            DesignLayer = ppDesignLayer2
            UserName = 'TableCell12'
            Border.BorderPositions = [bpLeft, bpTop, bpRight]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1000
            Brush.Style = bsClear
            Padding = 1.000000000000000000
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = PageLayer1
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 10157
            mmPadding = 1000
            object ppDBText8: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText8'
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              DataField = 'MachineFullWeight'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = '2  Yagut'
              Font.Size = 14
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 15081
              mmLeft = 144898
              mmTop = 56621
              mmWidth = 44977
              BandType = 10
              LayerName = PageLayer1
            end
          end
        end
        object ppTableRow4: TppTableRow
          DesignLayer = ppDesignLayer2
          UserName = 'TableRow4'
          mmHeight = 14417
          mmLeft = 0
          mmTop = 57926
          mmWidth = 48948
          BandType = 4
          LayerName = PageLayer1
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppTableCell13: TppTableCell
            DesignLayer = ppDesignLayer2
            UserName = 'TableCell13'
            Border.BorderPositions = [bpLeft, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1000
            Brush.Style = bsClear
            Padding = 1.000000000000000000
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = PageLayer1
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 14417
            mmPadding = 1000
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText6'
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              DataField = 'MachineNo'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = '2  Yagut'
              Font.Size = 14
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 15081
              mmLeft = 100806
              mmTop = 32279
              mmWidth = 44485
              BandType = 10
              LayerName = PageLayer1
            end
          end
          object ppTableCell14: TppTableCell
            DesignLayer = ppDesignLayer2
            UserName = 'TableCell14'
            Border.BorderPositions = [bpLeft, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1000
            Brush.Style = bsClear
            Padding = 1.000000000000000000
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = PageLayer1
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 14417
            mmPadding = 1000
          end
          object ppTableCell15: TppTableCell
            DesignLayer = ppDesignLayer2
            UserName = 'TableCell15'
            Border.BorderPositions = [bpLeft, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1000
            Brush.Style = bsClear
            Padding = 1.000000000000000000
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = PageLayer1
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 14417
            mmPadding = 1000
          end
          object ppTableCell16: TppTableCell
            DesignLayer = ppDesignLayer2
            UserName = 'TableCell16'
            Border.BorderPositions = [bpLeft, bpRight, bpBottom]
            Border.Weight = 1.000000000000000000
            Border.mmPadding = 1000
            Brush.Style = bsClear
            Padding = 1.000000000000000000
            Transparent = True
            mmHeight = 23548
            mmLeft = 0
            mmTop = 0
            mmWidth = 48948
            BandType = 4
            LayerName = PageLayer1
            mmBottomOffset = 0
            mmOverFlowOffset = 0
            mmStopPosition = 0
            mmMinHeight = 14417
            mmPadding = 1000
            object ppDBText9: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText9'
              Anchors = [atLeft, atRight]
              Border.mmPadding = 0
              DataField = 'MachineWeight'
              DataPipeline = ppDBPipeline1
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Name = '2  Yagut'
              Font.Size = 14
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'ppDBPipeline1'
              mmHeight = 15081
              mmLeft = 101600
              mmTop = 56886
              mmWidth = 42741
              BandType = 10
              LayerName = PageLayer1
            end
          end
        end
        object ppTableColumn1: TppTableColumn
          UserName = 'TableColumn1'
          mmWidth = 45005
        end
        object ppTableColumn2: TppTableColumn
          UserName = 'TableColumn2'
          mmWidth = 44617
        end
        object ppTableColumn3: TppTableColumn
          UserName = 'TableColumn3'
          mmWidth = 44741
        end
        object ppTableColumn4: TppTableColumn
          UserName = 'TableColumn4'
          mmWidth = 43437
        end
      end
      object ppDBText56: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText56'
        OnGetText = pdbtxtMiladi2ShamsiGetText
        Border.mmPadding = 0
        DataField = 'ExitDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yagut'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5678
        mmLeft = 52917
        mmTop = 16204
        mmWidth = 42863
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'CompanyName'
        DataPipeline = DmF.pdbConfig
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Titr'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pdbConfig'
        mmHeight = 7673
        mmLeft = 65556
        mmTop = 2646
        mmWidth = 33602
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1576#1575#1587#1705#1608#1604' '#1705#1575#1605#1662#1740#1608#1578#1585#1740'-'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Titr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 7673
        mmLeft = 100746
        mmTop = 2646
        mmWidth = 33602
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1593#1583#1575#1583' '#1705#1740#1587#1607':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Titr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 7673
        mmLeft = 157427
        mmTop = 75406
        mmWidth = 29369
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1575#1605#1590#1575#1740' '#1578#1581#1608#1740#1604' '#1711#1740#1585#1606#1583#1607':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Titr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 7673
        mmLeft = 10848
        mmTop = 112713
        mmWidth = 32544
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1605#1587#1574#1608#1604' '#1578#1608#1586#1740#1606':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Titr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 7673
        mmLeft = 165746
        mmTop = 112713
        mmWidth = 22580
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        Anchors = [atLeft, atRight]
        Border.mmPadding = 0
        DataField = '_OperatorName'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Yagut'
        Font.Size = 16
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 121183
        mmTop = 112713
        mmWidth = 43482
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1578#1608#1590#1740#1581#1575#1578':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Titr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 7673
        mmLeft = 157957
        mmTop = 85196
        mmWidth = 29104
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText101'
        Anchors = [atLeft, atRight]
        Border.mmPadding = 0
        DataField = 'ReciptNote'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Yagut'
        Font.Size = 16
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 22225
        mmTop = 85241
        mmWidth = 134673
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        Anchors = [atLeft, atRight]
        Border.mmPadding = 0
        DataField = 'OutputEntity'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Yagut'
        Font.Size = 16
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 7673
        mmLeft = 136140
        mmTop = 75671
        mmWidth = 21167
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        Anchors = [atLeft, atRight]
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1586#1605#1575#1606' '#1578#1608#1586#1740#1606' '#1575#1608#1604':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Yagut'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 6000
        mmLeft = 165221
        mmTop = 15882
        mmWidth = 23519
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        Anchors = [atLeft, atRight]
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1586#1605#1575#1606' '#1578#1608#1586#1740#1606' '#1583#1608#1605':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Yagut'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 6000
        mmLeft = 96741
        mmTop = 15882
        mmWidth = 26752
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        Anchors = [atLeft, atRight]
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1662#1585#1608#1575#1606#1607':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Yagut'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 6000
        mmLeft = 28391
        mmTop = 15882
        mmWidth = 16140
        BandType = 10
        LayerName = PageLayer1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        Anchors = [atLeft, atRight]
        Border.mmPadding = 0
        DataField = 'TozinNumber'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Yagut'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 6000
        mmLeft = 10988
        mmTop = 15882
        mmWidth = 15875
        BandType = 10
        LayerName = PageLayer1
      end
      object pdbtxtMiladi2Shamsi: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText25'
        OnGetText = pdbtxtMiladi2ShamsiGetText
        Border.mmPadding = 0
        DataField = 'EnterDate'
        DataPipeline = ppDBPipeline1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = 'B Yagut'
        Font.Size = 12
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 5973
        mmLeft = 125830
        mmTop = 15909
        mmWidth = 38218
        BandType = 10
        LayerName = PageLayer1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = #1575#1605#1590#1575#1740' '#1578#1581#1608#1740#1604' '#1711#1740#1585#1606#1583#1607':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Name = '2  Titr'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 7673
        mmLeft = 61383
        mmTop = 112713
        mmWidth = 32544
        BandType = 10
        LayerName = PageLayer1
      end
      object plblSecondType: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'plblSecondType'
        OnGetText = plblSecondTypeGetText
        Border.mmPadding = 0
        Caption = #1606#1608#1593' '#1575#1591#1604#1575#1593#1575#1578
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Zar'
        Font.Size = 16
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 9260
        mmLeft = 20902
        mmTop = 3175
        mmWidth = 21431
        BandType = 10
        LayerName = PageLayer1
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'PageLayer1'
        LayerType = ltPage
        Index = 0
      end
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 1
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = srcTozin
    OpenDataSource = False
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeline1'
    Left = 505
    Top = 316
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'TozinID'
      FieldName = 'TozinID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'TozinNumber'
      FieldName = 'TozinNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'ReciptType'
      FieldName = 'ReciptType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'MachineNo'
      FieldName = 'MachineNo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'StoreID'
      FieldName = 'StoreID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'StuffCode'
      FieldName = 'StuffCode'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'PersonID1'
      FieldName = 'PersonID1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'MachineName'
      FieldName = 'MachineName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField9: TppField
      FieldAlias = 'MachineWeight'
      FieldName = 'MachineWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'MachineFullWeight'
      FieldName = 'MachineFullWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'TozinNote'
      FieldName = 'TozinNote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'EnterDate'
      FieldName = 'EnterDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'FirstUser'
      FieldName = 'FirstUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField14: TppField
      FieldAlias = 'LastUser'
      FieldName = 'LastUser'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'TozinDate'
      FieldName = 'TozinDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = '_StuffName'
      FieldName = '_StuffName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = '_Carton'
      FieldName = '_Carton'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = '_StuffVolume'
      FieldName = '_StuffVolume'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField19: TppField
      FieldAlias = '_StoreName'
      FieldName = '_StoreName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField20: TppField
      FieldAlias = '_CustName'
      FieldName = '_CustName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField21: TppField
      FieldAlias = 'ReciptNumber'
      FieldName = 'ReciptNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField22: TppField
      FieldAlias = 'MoistureContent'
      FieldName = 'MoistureContent'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField23: TppField
      FieldAlias = 'RisingUseful'
      FieldName = 'RisingUseful'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField24: TppField
      FieldAlias = 'RisingNonUseFul'
      FieldName = 'RisingNonUseFul'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField25: TppField
      FieldAlias = 'PersonID2'
      FieldName = 'PersonID2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField26: TppField
      FieldAlias = 'IsSystem'
      FieldName = 'IsSystem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField27: TppField
      FieldAlias = '_CustName2'
      FieldName = '_CustName2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField28: TppField
      FieldAlias = 'RelatedRecipts'
      FieldName = 'RelatedRecipts'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField29: TppField
      FieldAlias = 'ReciptID'
      FieldName = 'ReciptID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField30: TppField
      FieldAlias = 'Mandeh'
      FieldName = 'Mandeh'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField31: TppField
      FieldAlias = 'ExitDate'
      FieldName = 'ExitDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField32: TppField
      FieldAlias = 'TozinState'
      FieldName = 'TozinState'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField33: TppField
      FieldAlias = 'PersonID3'
      FieldName = 'PersonID3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField34: TppField
      FieldAlias = '_CustName3'
      FieldName = '_CustName3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField35: TppField
      FieldAlias = 'NumberOfBags'
      FieldName = 'NumberOfBags'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField36: TppField
      FieldAlias = 'ServerID'
      FieldName = 'ServerID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField37: TppField
      FieldAlias = 'YearID'
      FieldName = 'YearID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField38: TppField
      FieldAlias = 'PrvTozinID'
      FieldName = 'PrvTozinID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField39: TppField
      FieldAlias = 'WeightKind'
      FieldName = 'WeightKind'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField40: TppField
      FieldAlias = 'Pelak1'
      FieldName = 'Pelak1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField41: TppField
      FieldAlias = 'Pelak2'
      FieldName = 'Pelak2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField42: TppField
      FieldAlias = 'Pelak3'
      FieldName = 'Pelak3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField43: TppField
      FieldAlias = 'Pelak4'
      FieldName = 'Pelak4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField44: TppField
      FieldAlias = 'ParentReciptItemID'
      FieldName = 'ParentReciptItemID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField45: TppField
      FieldAlias = 'DirectDownload'
      FieldName = 'DirectDownload'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField46: TppField
      FieldAlias = '_PostControl'
      FieldName = '_PostControl'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField47: TppField
      FieldAlias = 'SecondType'
      FieldName = 'SecondType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField48: TppField
      FieldAlias = 'MasirID'
      FieldName = 'MasirID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField49: TppField
      FieldAlias = 'UseUnitID'
      FieldName = 'UseUnitID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField50: TppField
      FieldAlias = '_UseUnitName'
      FieldName = '_UseUnitName'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField51: TppField
      FieldAlias = 'StoreID2'
      FieldName = 'StoreID2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField52: TppField
      FieldAlias = '_StoresName2'
      FieldName = '_StoresName2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField53: TppField
      FieldAlias = '_InfoWeight'
      FieldName = '_InfoWeight'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField54: TppField
      FieldAlias = 'AidDate'
      FieldName = 'AidDate'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField55: TppField
      FieldAlias = 'AidNumber'
      FieldName = 'AidNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField56: TppField
      FieldAlias = 'PrvYearID'
      FieldName = 'PrvYearID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField57: TppField
      FieldAlias = 'SellsMethod'
      FieldName = 'SellsMethod'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField58: TppField
      FieldAlias = 'TruckNumber'
      FieldName = 'TruckNumber'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField59: TppField
      FieldAlias = '_CarType'
      FieldName = '_CarType'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
  end
  object qryinit: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'declare @ReciptType int'
      'set @ReciptType= :ReciptType'
      ''
      
        'SELECT  *  ,ReciptTypes.RecallReciptTypes  as RelatedReciptTypes' +
        '  ,(SELECT   count(*)'
      'FROM            ReciptTypes'
      
        'WHERE       ( ('#39','#39' + RecallReciptTypes + '#39','#39' LIKE '#39'%,'#39'+LTRIM( st' +
        'r(@ReciptType))+'#39',%'#39')  OR'
      '       (ReciptType = @ReciptType))'
      
        ' AND (RecallType IN (2, 3, 4, 5, 6, 7, 8, 10, 11, 12, 13, 15, 16' +
        '))) AS ParentFormActive'
      ' ,ReciptTypes_Co.RecallType as RecallTypeCo'
      ', ReciptTypes.ReciptCaption AS TozinCaption'
      ''
      ' FROM    ReciptTypes   left outer JOIN'
      
        '     ReciptTypes AS ReciptTypes_Co ON ReciptTypes.ConversionCoSe' +
        'rial = ReciptTypes_Co.ReciptType'
      ''
      'where ReciptTypes.ReciptType=@ReciptType'
      ''
      ''
      'ORDER BY ReciptTypes.ReciptType'
      ''
      '')
    Left = 598
    Top = 92
  end
  object qryRelatedRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    AfterOpen = qryRelatedReciptsAfterOpen
    Parameters = <>
    Left = 176
    Top = 32
  end
  object Timer12: TTimer
    Enabled = False
    OnTimer = Timer12Timer
    Left = 592
    Top = 8
  end
  object srcRelatedRecipts: TDataSource
    DataSet = qryRelatedRecipts
    Left = 83
    Top = 83
  end
  object plnRelatedRecipts: TppDBPipeline
    DataSource = srcRelatedRecipts
    OpenDataSource = False
    UserName = 'plnRelatedRecipts'
    Left = 241
    Top = 412
  end
  object PopMuPrint: TPopupMenu
    AutoHotkeys = maManual
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    Left = 414
    Top = 337
  end
  object qryLicense: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'TozinID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT'#9'Sum(ReciptItems.InputWeight + ReciptItems.OutputWeight) A' +
        'S Weight'
      'FROM'#9'ReciptItems INNER JOIN'
      #9#9'Recipts ON ReciptItems.ReciptID = Recipts.ReciptID AND '
      #9#9#9#9#9'ReciptItems.ServerID = Recipts.ServerID AND '
      #9#9#9#9#9'ReciptItems.YearID = Recipts.YearID Left Outer JOIN '
      #9#9'StuffCoding S on ReciptItems.StuffCode =S.c_StuffCode '
      ''
      'WHERE'#9'Recipts.TozinID = :TozinID  '
      '')
    Left = 472
    Top = 112
    object qryLicenseWeight: TFloatField
      FieldName = 'Weight'
      ReadOnly = True
    end
  end
  object srcLicense: TDataSource
    DataSet = qryLicense
    Left = 523
    Top = 67
  end
  object plnLicense: TppDBPipeline
    DataSource = srcLicenseRpt
    OpenDataSource = False
    UserName = 'plnLicense'
    Left = 729
    Top = 124
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object qryInit2: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ReciptType'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT  *   '
      ' FROM    ReciptTypes  '
      'where ReciptType= :ReciptType')
    Left = 518
    Top = 12
  end
  object qryLicenseRpt: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'TozinID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        Recipts.ReciptID, Recipts.ServerID, Recipts.YearID' +
        ', Recipts.ReciptNumber, Recipts.ReciptDate, Recipts.ReciptType, '
      
        '                         '#39#1605#1580#1608#1586' : '#39' + LTRIM(STR(CASE WHEN Recipts' +
        '.ReciptType = 11 THEN LTRIM(Recipts.ReciptNumber) ELSE LTRIM(Rec' +
        'ipts.AidNumber) END)) + '#39' -- '#1608#1586#1606' : '#39' + LTRIM(STR(ReciptItems.Inp' +
        'utWeight + ReciptItems.OutputWeight))'
      
        '                         + '#39' -- '#1603#1610#1587#1607' : '#39' + LTRIM(STR(ReciptItems' +
        '.InputEntity + ReciptItems.OutputEntity)) AS txt, ReciptItems.In' +
        'putEntity + ReciptItems.OutputEntity AS Entity, ReciptItems.Inpu' +
        'tWeight + ReciptItems.OutputWeight AS Weight,'
      
        '                          StuffCoding.Carton, ReciptItems.StuffC' +
        'ode, StuffCoding.c_StuffName, Recipts.PersonID2, Customers2.Cust' +
        'Name CustName2, Customers1.CustName'
      ', ReciptItems.PersonID1, CustomersD.CustName AS CustNameD,'
      '                         Recipts.AidNumber'
      'FROM            ReciptItems INNER JOIN'
      
        '                         Recipts ON ReciptItems.ReciptID = Recip' +
        'ts.ReciptID AND ReciptItems.ServerID = Recipts.ServerID AND Reci' +
        'ptItems.YearID = Recipts.YearID INNER JOIN'
      
        '                         StuffCoding ON ReciptItems.StuffCode = ' +
        'StuffCoding.c_StuffCode INNER JOIN'
      
        '                         Customers AS Customers2 ON Recipts.Pers' +
        'onID2 = Customers2.CustID INNER JOIN'
      
        '                         Customers AS Customers1 ON Recipts.Pers' +
        'onID1 = Customers1.CustID INNER JOIN'
      
        '                         Customers AS CustomersD ON ReciptItems.' +
        'PersonID1 = CustomersD.CustID'
      ''
      ''
      'WHERE'#9'(Recipts.TozinID = :TozinID  )'
      '')
    Left = 304
    Top = 192
    object qryLicenseRptReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryLicenseRptServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryLicenseRptYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryLicenseRptReciptNumber: TIntegerField
      DisplayLabel = #1605#1580#1608#1586
      FieldName = 'ReciptNumber'
    end
    object qryLicenseRptReciptDate: TStringField
      FieldName = 'ReciptDate'
      FixedChar = True
      Size = 10
    end
    object qryLicenseRptReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryLicenseRpttxt: TStringField
      FieldName = 'txt'
      ReadOnly = True
      Size = 58
    end
    object qryLicenseRptEntity: TFloatField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'Entity'
      ReadOnly = True
    end
    object qryLicenseRptWeight: TFloatField
      DisplayLabel = #1608#1586#1606
      FieldName = 'Weight'
      ReadOnly = True
    end
    object qryLicenseRptCarton: TFloatField
      FieldName = 'Carton'
    end
    object qryLicenseRptStuffCode: TLargeintField
      FieldName = 'StuffCode'
    end
    object qryLicenseRptc_StuffName: TStringField
      FieldName = 'c_StuffName'
      Size = 150
    end
    object qryLicenseRptPersonID2: TIntegerField
      FieldName = 'PersonID2'
    end
    object qryLicenseRptCustName2: TStringField
      FieldName = 'CustName2'
      Size = 150
    end
    object qryLicenseRptCustName: TStringField
      FieldName = 'CustName'
      Size = 150
    end
    object qryLicenseRptPersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object qryLicenseRptCustNameD: TStringField
      FieldName = 'CustNameD'
      Size = 150
    end
    object qryLicenseRptAidNumber: TStringField
      FieldName = 'AidNumber'
      Size = 40
    end
  end
  object srcLicenseRpt: TDataSource
    DataSet = qryLicenseRpt
    Left = 571
    Top = 211
  end
  object qryOldTozin: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TozinID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select  *'
      'FROM            Tozin'
      'WHERE    (TozinID = :TozinID ) ')
    Left = 121
    Top = 168
    object qryOldTozinTozinID: TIntegerField
      FieldName = 'TozinID'
    end
    object qryOldTozinTozinNumber: TIntegerField
      FieldName = 'TozinNumber'
    end
    object qryOldTozinTozinDate: TStringField
      FieldName = 'TozinDate'
      FixedChar = True
      Size = 10
    end
    object qryOldTozinStuffCode: TLargeintField
      FieldName = 'StuffCode'
    end
    object qryOldTozinPersonID1: TIntegerField
      FieldName = 'PersonID1'
    end
    object qryOldTozinMachineName: TStringField
      FieldName = 'MachineName'
      Size = 50
    end
    object qryOldTozinStoreID: TSmallintField
      FieldName = 'StoreID'
    end
    object qryOldTozinMachineNo: TStringField
      FieldName = 'MachineNo'
      Size = 25
    end
    object qryOldTozinReciptType: TWordField
      FieldName = 'ReciptType'
    end
    object qryOldTozinMachineWeight: TFloatField
      FieldName = 'MachineWeight'
    end
    object qryOldTozinMachineFullWeight: TFloatField
      FieldName = 'MachineFullWeight'
    end
    object qryOldTozinTozinNote: TStringField
      FieldName = 'TozinNote'
      Size = 100
    end
    object qryOldTozinEnterDate: TDateTimeField
      FieldName = 'EnterDate'
    end
    object qryOldTozinExitDate: TDateTimeField
      FieldName = 'ExitDate'
    end
    object qryOldTozinFirstUser: TStringField
      FieldName = 'FirstUser'
      Size = 50
    end
    object qryOldTozinLastUser: TStringField
      FieldName = 'LastUser'
      Size = 50
    end
    object qryOldTozinReciptNumber: TIntegerField
      FieldName = 'ReciptNumber'
    end
    object qryOldTozinMoistureContent: TFloatField
      FieldName = 'MoistureContent'
    end
    object qryOldTozinRisingUseful: TFloatField
      FieldName = 'RisingUseful'
    end
    object qryOldTozinRisingNonUseFul: TFloatField
      FieldName = 'RisingNonUseFul'
    end
    object qryOldTozinPersonID2: TIntegerField
      FieldName = 'PersonID2'
    end
    object qryOldTozinIsSystem: TBooleanField
      FieldName = 'IsSystem'
    end
    object qryOldTozinRelatedRecipts: TStringField
      FieldName = 'RelatedRecipts'
      Size = 300
    end
    object qryOldTozinReciptID: TIntegerField
      FieldName = 'ReciptID'
    end
    object qryOldTozinTozinState: TWordField
      FieldName = 'TozinState'
    end
    object qryOldTozinPersonID3: TIntegerField
      FieldName = 'PersonID3'
    end
    object qryOldTozinNumberOfBags: TBCDField
      FieldName = 'NumberOfBags'
      Precision = 18
      Size = 2
    end
    object qryOldTozinServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object qryOldTozinYearID: TIntegerField
      FieldName = 'YearID'
    end
    object qryOldTozinPrvTozinID: TIntegerField
      FieldName = 'PrvTozinID'
    end
    object qryOldTozinWeightKind: TWordField
      FieldName = 'WeightKind'
    end
  end
  object qryRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'TozinID'
        Attributes = [paSigned, paNullable]
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
      
        'SELECT        Recipts.StoreID, Recipts.ReciptNumber, Recipts.Rec' +
        'iptDate, Recipts.PersonID1, Recipts.PersonID2, Customers_1.CustN' +
        'ame AS CustName1, Customers_2.CustName AS CustName2, StuffCoding' +
        '.c_StuffName,'
      
        '                         ReciptItems.StuffCode, ReciptItems.Inpu' +
        'tEntity, ReciptItems.OutputEntity, ReciptItems.InputWeight, Reci' +
        'ptItems.OutputWeight, ReciptItems.TotalInputPrice, ReciptItems.T' +
        'otalOutputPrice, ReciptItems.UnitSellPrice, '
      
        '                         ReciptItems.TotallSellPrice, dbo.GetPar' +
        'entForm(ReciptItems.StuffCode, ReciptItems.preReciptItemID, Reci' +
        'ptItems.ReciptItemID,ReciptItems.YearID) AS ParentForm, Recipts.' +
        'FirstUser, Recipts.LastUser, Recipts.InsertTime'
      'FROM            Recipts INNER JOIN'
      
        '                         ReciptItems ON Recipts.ReciptID = Recip' +
        'tItems.ReciptID AND Recipts.ServerID = ReciptItems.ServerID AND ' +
        'Recipts.YearID = ReciptItems.YearID INNER JOIN'
      
        '                         Customers AS Customers_2 ON Recipts.Per' +
        'sonID2 = Customers_2.CustID INNER JOIN'
      
        '                         StuffCoding ON ReciptItems.StuffCode = ' +
        'StuffCoding.c_StuffCode INNER JOIN'
      
        '                         Customers AS Customers_1 ON ReciptItems' +
        '.PersonID1 = Customers_1.CustID'
      
        'WHERE        (Recipts.ReciptType = 15) AND (Recipts.TozinID = :T' +
        'ozinID)'
      
        'AND (Recipts.YearID = :YearID) AND (Recipts.ServerID = :ServerID' +
        ')')
    Left = 664
    Top = 136
  end
  object srcRecipts: TDataSource
    DataSet = qryRecipts
    Left = 811
    Top = 195
  end
  object plnRecipts: TppDBPipeline
    DataSource = srcRecipts
    OpenDataSource = False
    UserName = 'plnRecipts'
    Left = 785
    Top = 236
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object qryPurchaseEffect: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ServerID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'TozinID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT        PurchaseEffect.EffectName, ReciptPurchaseEffect.Am' +
        'ount, ReciptPurchaseEffect.EffectNote'
      'FROM            ReciptPurchaseEffect INNER JOIN'
      
        '                         PurchaseEffect ON ReciptPurchaseEffect.' +
        'EffectID = PurchaseEffect.EffectID'
      'WHERE        (ReciptPurchaseEffect.ReciptItemID = 0) '
      
        'AND (ReciptPurchaseEffect.ServerID = :ServerID) AND (ReciptPurch' +
        'aseEffect.YearID = 0)'
      
        ' AND (ReciptPurchaseEffect.ReciptID = 0) AND (ReciptPurchaseEffe' +
        'ct.TozinID = :TozinID)')
    Left = 635
    Top = 345
  end
  object srcPurchaseEffect: TDataSource
    DataSet = qryPurchaseEffect
    Left = 661
    Top = 281
  end
  object plnPurchaseEffect: TppDBPipeline
    DataSource = srcPurchaseEffect
    OpenDataSource = False
    UserName = 'plnPurchaseEffect'
    Left = 593
    Top = 268
    MasterDataPipelineName = 'ppDBPipeline1'
  end
  object qryTozinsRelatedRecipts: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Left = 126
    Top = 100
    object qryTozinsRelatedReciptsRowNumber: TLargeintField
      FieldName = 'RowNumber'
      ReadOnly = True
    end
    object qryTozinsRelatedReciptsTozinID: TIntegerField
      FieldName = 'TozinID'
    end
  end
  object qryTransFormItems: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'StuffCode'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT        TransFormItems.StuffCode, TransFormItems.Entity, S' +
        'tuffCoding.c_StuffName, TransFormItems.CycleMonth'
      'FROM            TransFormItems INNER JOIN'
      
        '                         StuffCoding ON TransFormItems.StuffCode' +
        ' = StuffCoding.c_StuffCode INNER JOIN'
      
        '                         TransForms ON TransFormItems.TransFormI' +
        'D = TransForms.TransFormID'
      
        'WHERE        (TransForms.StuffCode =  :StuffCode  ) AND (ISNULL(' +
        'TransFormItems.CycleMonth, 0) <> 0)'
      'ORDER BY TransFormItems.CycleMonth')
    Left = 80
    Top = 280
  end
  object plnTransFormItems: TppDBPipeline
    DataSource = srcTransFormItems
    OpenDataSource = False
    UserName = 'plnTransFormItems'
    Left = 97
    Top = 340
  end
  object srcTransFormItems: TDataSource
    DataSet = qryTransFormItems
    Left = 171
    Top = 347
  end
  object qryFn_EffectCross: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'StuffCode'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT   *'
      'FROM    Fn_EffectCross( :StuffCode )')
    Left = 376
    Top = 288
  end
  object plnFn_EffectCross: TppDBPipeline
    DataSource = srcFn_EffectCross
    OpenDataSource = False
    UserName = 'plnFn_EffectCross'
    Left = 505
    Top = 260
  end
  object srcFn_EffectCross: TDataSource
    DataSet = qryFn_EffectCross
    Left = 411
    Top = 259
  end
  object ImageList1: TImageList
    Height = 24
    Width = 24
    Left = 216
    Top = 80
    Bitmap = {
      494C010102000500040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B7B7B700979797009898
      9800989898009898980098989800989898009898980098989800989898009898
      9800989898009898980098989800989898009898980098989800989898009898
      98009898980097979700B8B8B800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860033333300333333003333
      3300333333003333330033333300333333003333330033333300333333003333
      3300333333003333330033333300333333003333330033333300333333003333
      3300333333003333330033333300898989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000363636007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007E7E7E00373737000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B4B4B4006F6F6F005656
      5600565656005656560056565600565656005656560056565600565656005656
      560056565600565656005656560078787800DBDBDB0000000000000000000000
      0000000000000000000000000000000000003333330098989800000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0009F9F
      9F009F9F9F00C1C1C10000000000000000000000000000000000000000000000
      0000000000000000000098989800333333000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AFAFAF0043434300BDBDBD00B3B3
      B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300B1B1B10042424200D8D8D800000000000000
      0000000000000000000000000000000000003333330098989800000000000000
      000000000000000000000000000000000000B3B3B30043434300333333003333
      3300333333003333330042424200B7B7B7000000000000000000000000000000
      0000000000000000000098989800333333000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B9B9B9006D6D6D00000000000000
      00000000000000000000C9C9C900787878003333330098989800000000000000
      0000000000000000000000000000A1A1A100333333005F5F5F00C4C4C4000000
      000000000000C3C3C3006060600033333300A3A3A30000000000000000000000
      0000000000000000000098989800333333000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001111110000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60043434300000000000000
      0000DBDBDB0058585800404040000C0C0C003333330098989800000000000000
      00000000000000000000D5D5D500333333007878780000000000000000000000
      00000000000000000000000000007474740032323200D7D7D700000000000000
      0000000000000000000098989800333333000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001111110000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60043434300000000006A6A
      6A002E2E2E00B1B1B100000000000E0E0E003333330098989800000000000000
      00000000000000000000797979003F3F3F000000000000000000000000000000
      0000000000000000000000000000000000003D3D3D007A7A7A00000000000000
      0000000000000000000098989800333333000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001111110000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C6002A2A2A001B1B1B009F9F
      9F000000000000000000000000000E0E0E003333330098989800000000000000
      0000000000000000000042424200808080000000000000000000000000000000
      0000000000000000000000000000000000007A7A7A0044444400000000000000
      0000000000000000000098989800333333000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001111110000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F9F9F000E0E0E00000000000000
      00000000000000000000000000000E0E0E003333330098989800000000000000
      0000000000000000000033333300979797000000000083838300000000000000
      0000000000000000000000000000000000009494940032323200000000000000
      0000000000000000000098989800333333000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001111110000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A9A9A0011111100000000000000
      00000000000000000000000000000E0E0E003333330098989800000000000000
      0000000000000000000043434300808080000000000064646400000000000000
      0000000000000000000000000000000000007B7B7B0043434300000000000000
      0000000000000000000098989800333333000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001111110000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A9A9A0011111100000000000000
      00000000000000000000000000000E0E0E003333330098989800000000000000
      00000000000000000000777777003F3F3F0000000000CBCBCB0062626200BCBC
      BC00000000000000000000000000000000003F3F3F0078787800000000000000
      0000000000000000000098989800333333000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001111110000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009E9E9E000E0E0E00000000000000
      00000000000000000000000000000E0E0E003333330098989800000000000000
      00000000000000000000D3D3D300333333007A7A7A000000000000000000A2A2
      A200DEDEDE0000000000000000007878780033333300D5D5D500000000000000
      0000000000000000000098989800333333000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001111110000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C600292929001F1F1F00A3A3
      A3000000000000000000000000000E0E0E003333330098989800000000000000
      00000000000000000000000000009E9E9E003333330065656500CCCCCC000000
      000000000000C8C8C8005F5F5F0033333300A1A1A10000000000000000000000
      0000000000000000000098989800333333000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001111110000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60043434300000000006666
      660032323200B5B5B500000000000E0E0E003F3F3F0067676700D7D7D7000000
      000000000000000000000000000000000000B1B1B1003F3F3F00333333003333
      3300333333003333330042424200B3B3B3000000000000000000000000000000
      000000000000D7D7D700666666003F3F3F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001111110000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60043434300000000000000
      0000D7D7D70054545400444444000C0C0C00ABABAB0033333300333333003333
      33004E4E4E006F6F6F00D7D7D700000000000000000000000000BFBFBF009D9D
      9D009D9D9D00C0C0C000000000000000000000000000D5D5D500707070004C4C
      4C00333333003333330032323200ADADAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BABABA006D6D6D00000000000000
      00000000000000000000C5C5C500757575000000000000000000BBBBBB009999
      990076767600373737007B7B7B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000777777003A3A3A007878
      780099999900BCBCBC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD0046464600BFBFBF00B6B6
      B600B6B6B600B6B6B600B6B6B600B6B6B600B6B6B600B6B6B600B6B6B600B6B6
      B600B6B6B600B6B6B600B6B6B600B3B3B30042424200D6D6D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008686860036363600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000373737008A8A8A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0B0B0006D6D6D005353
      5300535353005353530053535300535353005353530053535300535353005353
      530053535300535353005353530075757500D8D8D80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D7D7D70033333300A5A5A5000000000000000000000000000000
      000000000000000000000000000000000000A1A1A10033333300DCDCDC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063636300373737006363630063636300636363006363
      6300636363006363630063636300636363003737370068686800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000828282006363630063636300636363006363
      6300636363006363630063636300636363008282820000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF000000000000FFFFFF80
      0001000000000000FFFFFF000000000000000000FFFFFF3FFFFC000000000000
      80007F3FC3FC00000000000000003F3F00FC0000000000007FFF3C3E187C0000
      000000007FFF303C7E3C0000000000007FFF223CFF3C0000000000007FFF0E3C
      FF3C0000000000007FFF3E3CBF3C0000000000007FFF3E3CBF3C000000000000
      7FFF3E3C8F3C0000000000007FFF3E3C663C0000000000007FFF0E3E187C0000
      000000007FFF221F00F80000000000007FFF3001C3800000000000007FFF3CC1
      FF8300000000000000003FF9FF9F00000000000080007FF8FF1F000000000000
      FFFFFFFC003F000000000000FFFFFFFE007F000000000000FFFFFFFFFFFF0000
      00000000FFFFFFFFFFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 560
    Top = 169
  end
  object qryLookUps: TADOQuery
    Connection = DmF.adcBSell
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'UserID'
        Size = -1
        Value = Null
      end
      item
        Name = 'UserAdmin'
        Size = -1
        Value = Null
      end
      item
        Name = 'StoreKindList'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT  distinct   Stores.n_StoreID, Stores.c_StoreName, Stores.' +
        'n_ValuationType ,'
      
        '           Stores.StoreKind, Stores.HasDeficit, UsersStore.Store' +
        'Type,c_address,c_tel, Stores.EntityDisplayType, Stores.TypeOfSal' +
        'e'
      ',Stores.c_note'
      ''
      'FROM         Stores INNER JOIN'
      
        '                      UsersStore ON Stores.n_StoreID = UsersStor' +
        'e.n_StoreID'
      'WHERE     (UsersStore.n_UserID = :UserID) OR (1  = :UserAdmin)'
      ''
      'AND (Stores.n_StoreID > 0)'
      ' :StoreKindList'
      ''
      ''
      '')
    Left = 225
    Top = 232
  end
end
