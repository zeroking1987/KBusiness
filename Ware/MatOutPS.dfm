inherited MatOutFM: TMatOutFM
  Caption = #21457#26009#20986#24211
  ClientWidth = 1071
  ExplicitWidth = 1071
  ExplicitHeight = 536
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    Width = 1071
    TabOrder = 0
    ExplicitWidth = 1071
    inherited cxLabTitle: TcxLabel
      Caption = #21457#26009#20986#24211
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
    inherited cxLabAudit: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 256
      AnchorY = 17
    end
    inherited cxLabPrint: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 880
      AnchorY = 16
    end
    inherited cxLabTemp1: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 360
      AnchorY = 17
    end
    inherited cxLabTemp2: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 445
      AnchorY = 17
    end
    inherited cxLabTemp3: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 533
      AnchorY = 17
    end
    inherited cxLabTemp4: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 643
      AnchorY = 17
    end
    inherited cxLabTemp5: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 752
      AnchorY = 17
    end
  end
  inherited pnlInfo: TPanel
    Width = 1071
    TabOrder = 1
    ExplicitWidth = 1071
  end
  inherited pnlEdit: TPanel
    Width = 1071
    Height = 78
    ExplicitWidth = 1071
    ExplicitHeight = 78
    inherited lbl1: TLabel
      Top = 8
      Caption = #21457#26009#37096#38376
      ExplicitTop = 8
    end
    inherited lbl7: TLabel
      Top = 35
      Caption = #39046#29992#20154
      ExplicitTop = 35
    end
    inherited lbl8: TLabel
      Top = 35
      ExplicitTop = 35
    end
    inherited Label14: TLabel
      Top = 35
      ExplicitTop = 35
    end
    inherited Label15: TLabel
      Top = 8
      ExplicitTop = 8
    end
    inherited lbl2: TLabel
      Top = 58
      ExplicitTop = 58
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 577
      ExplicitLeft = 577
      ExplicitHeight = 53
      Height = 53
      inherited Label1: TLabel
        Top = 8
        ExplicitTop = 8
      end
      inherited Label9: TLabel
        Top = 30
        ExplicitTop = 30
      end
      inherited cxEdtNo: TcxDBTextEdit
        Top = 4
        Style.IsFontAssigned = True
        ExplicitTop = 4
      end
      inherited cxdt: TcxDBDateEdit
        Left = 44
        Top = 26
        ExplicitLeft = 44
        ExplicitTop = 26
      end
    end
    inherited cxObject: TcxDBButtonEdit
      Top = 4
      ExplicitTop = 4
    end
    inherited cxEmp: TcxDBButtonEdit
      Top = 31
      ExplicitTop = 31
    end
    inherited cxSubjoinNO: TcxDBButtonEdit
      Top = 31
      ExplicitTop = 31
    end
    inherited cxMoRemark: TcxDBMemo
      Top = 31
      ExplicitTop = 31
    end
    inherited cxPupEdtRemark: TcxDBPopupEdit
      Top = 31
      ExplicitTop = 31
    end
    inherited cExbbBillFind: TcxExtLookupComboBox
      Top = 54
      ExplicitTop = 54
    end
  end
  inherited pnlBody: TPanel
    Top = 154
    Width = 1071
    Height = 359
    ExplicitTop = 154
    ExplicitWidth = 1071
    ExplicitHeight = 359
    inherited cxPgc: TcxPageControl
      Width = 1071
      Height = 359
      ExplicitWidth = 1071
      ExplicitHeight = 359
      ClientRectBottom = 353
      ClientRectRight = 1065
      inherited cxtbsht1: TcxTabSheet
        ExplicitLeft = 2
        ExplicitTop = 27
        ExplicitWidth = 1063
        ExplicitHeight = 326
        inherited cxgrd: TcxGrid
          Left = 351
          Width = 712
          Height = 326
          ExplicitLeft = 351
          ExplicitWidth = 712
          ExplicitHeight = 326
        end
        object cxSplitter1: TcxSplitter
          Left = 343
          Top = 0
          Width = 8
          Height = 326
          Control = Panel1
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 343
          Height = 326
          Align = alLeft
          Caption = 'Panel1'
          TabOrder = 2
          object cxgrd1: TcxGrid
            Left = 1
            Top = 1
            Width = 341
            Height = 296
            Align = alClient
            PopupMenu = PopupMenu1
            TabOrder = 0
            object cxgrdbtblvw1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.Insert.Visible = False
              Navigator.Buttons.Append.Visible = False
              Navigator.Buttons.Delete.Visible = False
              Navigator.Buttons.Edit.Visible = False
              Navigator.Buttons.Post.Visible = False
              Navigator.Buttons.Cancel.Visible = False
              Navigator.Buttons.Refresh.Visible = False
              Navigator.Buttons.SaveBookmark.Visible = False
              Navigator.Buttons.GotoBookmark.Visible = False
              Navigator.Buttons.Filter.Visible = False
              Navigator.InfoPanel.Visible = True
              DataController.DataSource = dsBomMat
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = #21512#35745#65306'0'
                  Kind = skCount
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skSum
                end
                item
                  Kind = skSum
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.PullFocusing = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Editing = False
              OptionsView.NoDataToDisplayInfoText = #24658#21019#36719#20214
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              OptionsView.IndicatorWidth = 40
              object cxgrdbtblvw1ItemCode: TcxGridDBColumn
                Caption = #20135#21697#20195#21495
                DataBinding.FieldName = 'ItemCode'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = cxgrdbtblvw1ItemCodePropertiesButtonClick
                Width = 70
              end
              object cxgrdbtblvw1ItemName: TcxGridDBColumn
                Caption = #20135#21697#21517#31216
                DataBinding.FieldName = 'ItemName'
                Width = 70
              end
              object cxgrdbtblvw1ItemSpc: TcxGridDBColumn
                Caption = #35268#26684
                DataBinding.FieldName = 'ItemSpc'
                Width = 70
              end
              object cxgrdbtblvw1ItemPic: TcxGridDBColumn
                Caption = #22270#21495
                DataBinding.FieldName = 'ItemPic'
                Visible = False
                Width = 70
              end
              object cxgrdbtblvw1ItemUnit: TcxGridDBColumn
                Caption = #21333#20301
                DataBinding.FieldName = 'ItemUnit'
                Visible = False
                Width = 70
              end
              object cxgrdbtblvw1MainNum: TcxGridDBColumn
                Caption = #25968#37327
                DataBinding.FieldName = 'MainNum'
                Width = 70
              end
              object cxgrdbtblvw1Remark: TcxGridDBColumn
                Caption = #22791#27880
                DataBinding.FieldName = 'Remark'
                Visible = False
                Width = 70
              end
            end
            object cxGridDBTableView2: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.Insert.Visible = False
              Navigator.Buttons.Delete.Visible = False
              Navigator.Buttons.Edit.Visible = False
              Navigator.Buttons.Post.Visible = False
              Navigator.Buttons.Cancel.Visible = False
              Navigator.Buttons.Refresh.Visible = False
              Navigator.Buttons.SaveBookmark.Visible = False
              Navigator.Buttons.GotoBookmark.Visible = False
              Navigator.Buttons.Filter.Visible = False
              Navigator.InfoPanel.Visible = True
              Navigator.Visible = True
              DataController.DataSource = dsFind
              DataController.KeyFieldNames = #21333#21495
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.PullFocusing = True
              OptionsView.NoDataToDisplayInfoText = #24658#21019#36719#20214
              OptionsView.Indicator = True
              OptionsView.IndicatorWidth = 35
              object cxGridDBColumn30: TcxGridDBColumn
                DataBinding.FieldName = #26085#26399
                Width = 71
              end
              object cxGridDBColumn31: TcxGridDBColumn
                DataBinding.FieldName = #21333#20301
                Width = 195
              end
              object cxGridDBColumn32: TcxGridDBColumn
                DataBinding.FieldName = #21333#21495
                Width = 102
              end
              object cxGridDBColumn33: TcxGridDBColumn
                DataBinding.FieldName = #21046#21333#20154
                Width = 57
              end
              object cxGridDBColumn34: TcxGridDBColumn
                DataBinding.FieldName = #20449#24687
                Visible = False
                Width = 132
              end
            end
            object cxgrdlvl1: TcxGridLevel
              GridView = cxgrdbtblvw1
            end
          end
          object Panel2: TPanel
            Left = 1
            Top = 297
            Width = 341
            Height = 28
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object cxbtnLeftAdd: TcxButton
              Left = 184
              Top = 0
              Width = 81
              Height = 28
              Align = alRight
              Caption = #22686#34892
              OptionsImage.Glyph.Data = {
                36090000424D3609000000000000360000002800000018000000180000000100
                2000000000000009000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000001212121C4041426E6E6E
                70B3959697DDA9AAABF3A7A8A9F3919193DF666668B53A3A3B74111112200000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000001112121A6666689FBCBCBDF7E7E7E7FFF6F6
                F6FFF0F0F0FFEEEEEEFFEFEFF0FFF4F4F4FFF9F9F9FFE4E4E5FFAFAFB1F95556
                57A5111111200000000000000000000000000000000000000000000000000000
                0000000000000000000035363650AFB0B1EBF1F1F1FFE6E6E7FFBDC1BAFF8299
                7CFF629064FF528E5BFF549462FF68A075FF8FB598FFD1DCD4FFF5F5F5FFEFF0
                F0FF9A9B9DEF2C2C2D5A00000000000000000000000000000000000000000000
                00000000000048494968D1D1D2FDF0F0F0FFB2B7B0FF58794DFF28722FFF2984
                41FF298442FF2A8542FF2A8442FF2A8442FF2A8341FF2A8240FF66A174FFD2DE
                D5FFFAFAFAFFBEBEBFFD3B3B3C76000000000000000000000000000000000000
                00003A3A3A50D5D5D5FDE8E8E8FF8A9683FF2E6727FF298542FF298947FF298A
                48FF2A8442FF2A8442FF2A8442FF2A8442FF298947FF298846FF298644FF3389
                4AFFADCAB5FFF9F9F9FFBEBFC0FD2D2D2E5C0000000000000000000000001414
                141ABFBFBFEDEDEDEDFF85907DFF296724FF298B49FF2A8D4BFF2A8F4DFF2779
                36FFA3AE9BFFCCCFCBFFCBCECAFFAAB7A6FF298E4BFF2A8E4CFF2A8C4AFF2A8A
                48FF2C8948FFACCAB4FFFAFAFAFF9E9EA0F11313142400000000000000007A7A
                7A9FF4F4F4FF9FA59DFF2D6020FF298E4CFF2A914FFF299352FF2A9553FF2675
                30FFB0B9A9FFDEDEDEFFDCDCDDFFB8C3B5FF299451FF2A9452FF2A9250FF2A90
                4EFF2A8D4BFF328E4FFFD0DED4FFF1F2F2FF5B5B5DAB000000001717171CD4D4
                D5F7D5D5D6FF4B6739FF298845FF2A9553FF299755FF2A9A58FF299B5AFF2678
                34FFB5BEAEFFE4E4E4FFE2E2E3FFBCC8BAFF299A58FF299A58FF299856FF2995
                53FF299250FF298F4DFF61A778FFF5F5F5FFB5B5B6FB151515265757586EF2F2
                F2FF989E97FF266622FF299755FF2A9A58FF2A9D5BFF2A9F5EFF2AA160FF267C
                38FFBAC3B3FFEAEAEAFFE8E8E8FFC1CDBFFF29A05EFF2AA05FFF2A9E5CFF2A9B
                59FF2A9856FF2A9452FF2A904FFFCBDBD1FFE9E9E9FF3F3F417C939394B3EEEE
                EFFF5F7052FF288441FF299C5AFF299E5DFF29A160FF29A463FF29A665FF267E
                3BFFBEC7B7FFF0F0F0FFEEEEEEFFC6D1C4FF28A563FF29A563FF29A261FF299F
                5EFF299C5AFF299957FF2A9553FF88BC9CFFF9F9F9FF727274C1C1C1C2DFD8D8
                D9FF466033FF299A58FF297E3CFFB4C7B3FFC1D2C1FFC3D5C3FFC4D6C5FFC4D3
                C1FFEBEDE9FFF6F6F6FFF4F4F4FFE7E9E6FFBBCDBCFFB8CAB9FFB5C6B5FFB1C2
                B1FFA8BAA8FF2D9554FF299A58FF60AC7EFFF3F3F3FF9F9FA0EBD7D8D8F3CACA
                CBFF3B5F2AFF2AA261FF286D29FFE7EAE5FFF8F8F8FFFBFBFBFFFCFCFCFFFCFC
                FCFFFCFCFCFFFCFCFCFFF9F9F9FFF5F5F5FFF1F1F1FFECECECFFE7E7E7FFE1E1
                E2FFD6D7D5FF2F9959FF2A9E5DFF4DA773FFEFEFEFFFB1B1B3FBDADADAF3C8C8
                C9FF3A5F2AFF2AA765FF286E2BFFEBEEE9FFFCFCFCFFFDFDFDFFFDFDFDFFFCFC
                FCFFFDFDFDFFFDFDFDFFFCFCFCFFFAFAFAFFF5F5F5FFEFEFF0FFEAEAEAFFE4E4
                E5FFD8D9D8FF2F9D5DFF2AA261FF4CA975FFEDEDEDFFB3B4B5FBC8C8C8DFD3D3
                D4FF415C2FFF29A867FF27702CFFC6CFBEFFD1D9CCFFD1D9CCFFD1D9CCFFD1D9
                CCFFF2F4F0FFFDFDFDFFFDFDFDFFF4F5F3FFCED6C9FFCAD2C5FFC6CDC1FFC1C8
                BCFFB7BFB1FF2EA05FFF2AA665FF5BAF82FFEEEEEEFFA7A7A8EDA0A0A0B5EBEB
                EBFF516344FF289957FF289D5CFF279250FF269352FF269453FF269553FF2474
                30FFC6CFBFFFFDFDFDFFFDFDFDFFD1DDCFFF259351FF269453FF269352FF2793
                51FF289B5AFF29AE6DFF29A968FF7BB998FFF5F5F5FF7F7F80C366666674F7F8
                F8FF80867EFF267935FF29B271FF29B373FF29B575FF28B676FF28B878FF2588
                46FFC6D0BFFFFEFEFEFFFDFDFDFFD2DFD0FF27B575FF28B777FF29B575FF29B4
                73FF2AB272FF2AB170FF29AC6BFFB2C9BEFFEEEEEEFF4F4F50831D1D1D20E8E8
                E8F9C2C2C4FF3C5E2EFF29AB6AFF29B474FF28B676FF28B778FF27B979FF2589
                47FFC6D0BFFFFDFDFDFFFDFDFDFFD2DFD1FF27B677FF28B878FF28B676FF28B5
                74FF29B373FF2AB170FF51B384FFE2E2E3FFC9C9CAFD1C1D1D2C000000009595
                95A5F8F8F8FF797F77FF297332FF28B575FF28B777FF28B879FF27BA7BFF258A
                48FFC6D0BFFFFDFDFDFFFDFDFDFFD1DFD1FF26B878FF28B979FF28B777FF29B5
                75FF29B473FF2EB273FFA8C0B6FFF5F5F5FF777879B300000000000000001D1D
                1D20E1E1E1F1DFDFE0FF5A6853FF278644FF28B777FF27B979FF27BB7CFF258A
                48FFC0CAB7FFF4F6F3FFF4F6F3FFCBD9C9FF26B879FF27B97AFF28B878FF28B6
                76FF2AB474FF81B49DFFECECECFFC0C0C1F51C1C1D2A00000000000000000000
                00005252525AF1F1F1FDD0D1D2FF5A6852FF298242FF27B878FF27BB7CFF26A4
                64FF2A8949FF2C8B4DFF2C8B4DFF2B9B5DFF26BB7CFF27BA7AFF28B878FF2CB6
                77FF7BAF98FFE2E2E2FFDDDDDDFF474747680000000000000000000000000000
                0000000000006B6B6C76F1F1F2FDDEDEDEFF767D74FF3A6F40FF26A160FF26BD
                7EFF26BE7FFF25BF80FF26BE80FF26BD7EFF27BB7CFF27B97AFF46B082FF95AF
                A5FFE7E7E8FFDFE0E0FF5E5F5F85000000000000000000000000000000000000
                000000000000000000005656565EE1E1E2F1F7F7F7FFBEBEC0FF7A8177FF4E78
                58FF3F9366FF37A672FF38B17EFF43AD81FF5AA586FF8DA79EFFCECDCEFFF5F5
                F5FFCCCDCDF54B4C4C6800000000000000000000000000000000000000000000
                0000000000000000000000000000212121249B9B9CABEBECECFBF8F8F8FFE6E6
                E6FFCDCDCEFFC3C3C5FFC5C5C6FFD1D1D2FFE8E8E9FFF5F5F5FFDFDFDFFD8C8C
                8DB32020202A0000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000222222267070707EADAD
                ADC1D5D5D6EBE3E3E4FBE1E1E2FBD1D1D2EDA6A6A7C5696969832323242C0000
                0000000000000000000000000000000000000000000000000000}
              TabOrder = 0
              OnClick = cxbtnLeftAddClick
            end
            object cxbtnLeftDel: TcxButton
              Left = 265
              Top = 0
              Width = 76
              Height = 28
              Align = alRight
              Caption = #21024#34892
              OptionsImage.Glyph.Data = {
                36090000424D3609000000000000360000002800000018000000180000000100
                2000000000000009000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000001212121C4041426E6E6E
                70B3959697DDA9AAABF3A7A8A9F3919193DF666668B53A3A3B74111112200000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000001112121A6666689FBCBCBDF7E7E7E7FFF6F6
                F6FFF0F0F0FFEEEEEEFFEFF0F0FFF4F4F4FFF9F9F9FFE4E4E5FFAFAFB1F95556
                57A5111111200000000000000000000000000000000000000000000000000000
                0000000000000000000035363650AFB0B1EBF1F1F1FFE6E6E6FFBBBBC4FF7C7D
                9FFF585C99FF464B99FF484D9FFF5E62A9FF888BBCFFCFD0DEFFF5F5F5FFEFF0
                F0FF9A9B9DEF2C2C2D5A00000000000000000000000000000000000000000000
                00000000000048494968D1D1D2FDF0F0F0FFB0B1B9FF4F5182FF1A1F7FFF1A21
                92FF1A2193FF1B2193FF1B2193FF1A2192FF1A2191FF1B2190FF5B60ABFFD0D1
                E0FFFAFAFAFFBEBEBFFD3B3B3C76000000000000000000000000000000000000
                00003A3A3A50D5D5D5FDE8E8E8FF87879AFF212573FF1A2194FF1B2298FF1B22
                99FF1B229AFF1B229AFF1B229AFF1B229AFF1B2299FF1B2197FF1A2195FF242A
                97FFA8AACFFFF9F9F9FFBEBFC0FD2D2D2E5C0000000000000000000000001414
                141ABFBFBFEDEDEDEDFF818195FF1C1F74FF1B229AFF1B229CFF1B229DFF1C23
                9EFF1B239FFF1C239FFF1C239FFF1C239EFF1B239EFF1B229DFF1B229BFF1B22
                99FF1E2497FFA7A9CFFFFAFAFAFF9E9EA0F11313142400000000000000007A7A
                7A9FF4F4F4FF9E9EA7FF20236DFF1B229CFF1C239FFF1B23A0FF1C23A1FF1C23
                A2FF1B23A3FF1C23A3FF1C23A3FF1C23A2FF1C23A2FF1C23A1FF1C239FFF1C23
                9EFF1B229CFF242A9DFFCDCEE1FFF1F2F2FF5B5B5DAB000000001717171CD4D4
                D5F7D5D5D6FF43446FFF1B2195FF1B22A1FF1B23A3FF1B23A4FF1B22A5FF1B23
                A6FF1B23A7FF1B22A7FF1B22A7FF1B22A7FF1B22A6FF1B22A5FF1B22A3FF1B22
                A1FF1B22A0FF1B229DFF575CB2FFF5F5F5FFB5B5B6FB151515265757586EF2F2
                F2FF9798A1FF191C72FF1C23A2FF1C23A4FF1C23A6FF1B23A8FF1C23A9FF1C23
                AAFF1B23ABFF1C23ABFF1C23ABFF1C23ABFF1B23AAFF1C23A9FF1C23A7FF1B23
                A5FF1C23A3FF1C23A1FF1B239EFFC9CADEFFE9E9E9FF3F3F417C939394B3EEEE
                EFFF595A76FF1A208FFF1B22A6FF1B22A7FF1B22A9FF1B22ABFF1B22ACFF1B22
                AEFF1B22AEFF1B22AFFF1B22AFFF1B22AEFF1B22ADFF1B22ACFF1B22AAFF1B22
                A8FF1B22A6FF1B22A4FF1C23A1FF8185C2FFF9F9F9FF727274C1C1C1C2DFD8D8
                D9FF3E3F68FF1B22A4FF1C2191FFB8B9D3FFC3C4DBFFC3C4DCFFC3C4DBFFC3C4
                DBFFC2C3DBFFBFC0D8FFBABBD3FFB5B6CDFFAFB0C8FFAAABC2FFA4A5BDFF9FA0
                B7FF9596AFFF1F259EFF1B22A4FF565BB4FFF3F3F3FF9F9FA0EBD7D8D8F3CACA
                CBFF313268FF1C23AAFF1B1F82FFEEEFF3FFFEFEFEFFFEFEFEFFFDFDFDFFFDFD
                FDFFFCFCFCFFF8F8F8FFF1F1F1FFE9E9EAFFE2E2E2FFDBDBDBFFD3D3D4FFCCCC
                CDFFBFBFC2FF2127A1FF1B23A7FF4248AFFFEFEFEFFFB1B1B3FBDADADAF3C8C8
                C9FF303168FF1C23ADFF1B1F84FFEFEFF3FFFEFEFEFFFDFDFDFFFDFDFDFFFCFC
                FCFFFDFDFDFFF9F9F9FFF1F1F1FFEAEAEAFFE2E2E3FFDBDBDBFFD3D3D4FFCCCC
                CDFFBFBFC2FF2127A3FF1C23AAFF4147B1FFEDEDEDFFB3B4B5FBC8C8C8DFD3D3
                D4FF383965FF1B22AEFF1B1F85FFBEBECFFFC9C9D7FFC9C9D7FFC9C9D7FFC8C8
                D6FFC8C8D6FFC5C6D4FFC1C1CFFFBBBCC9FFB6B6C3FFB0B0BEFFAAAAB8FFA4A5
                B3FF9A9AAAFF1F25A5FF1B23ACFF5156B5FFEEEEEEFFA7A7A8EDA0A0A0B5EBEB
                EBFF4B4C6AFF1A209FFF1A20A3FF191D92FF191E94FF191E95FF191E97FF191E
                98FF191E99FF191E9AFF191E99FF191E99FF191E98FF191E96FF191E95FF191D
                93FF191F99FF1B22B2FF1C23AFFF7477BDFFF5F5F5FF7F7F80C366666674F7F8
                F8FF7E7F89FF191D81FF1B22B7FF1C23BAFF1C24BEFF1B23C1FF1C24C4FF1C24
                C6FF1B23C8FF1C24C8FF1C24C8FF1B24C7FF1C24C5FF1C24C2FF1B24BFFF1C23
                BBFF1C23B8FF1B23B4FF1B22B0FFB0B1CBFFEEEEEEFF4F4F50831D1D1D20E8E8
                E8F9C2C2C3FF333466FF1B22B1FF1B23BCFF1B23C0FF1B23C3FF1B23C7FF1B23
                CAFF1B23CCFF1B23CCFF1B23CCFF1B23CAFF1B23C8FF1B23C5FF1B23C1FF1B23
                BDFF1B23BAFF1B22B6FF474CB6FFE2E2E2FFC9C9CAFD1C1D1D2C000000009595
                95A5F8F8F8FF777883FF1C207DFF1B24BEFF1C24C2FF1C24C6FF1C24C9FF1C24
                CDFF1C24CFFF1C24D1FF1C24D0FF1C24CDFF1C24CAFF1C24C7FF1C24C3FF1C24
                BFFF1C23BBFF2027B7FFA6A8C2FFF5F5F5FF777879B300000000000000001D1D
                1D20E1E1E1F1DFDFE0FF56576EFF1A1F90FF1C24C3FF1B23C7FF1C24CBFF1C24
                CFFF1B23D2FF1C24D5FF1C24D3FF1C24D0FF1C24CCFF1C24C8FF1C24C4FF1C24
                C0FF1D25BCFF7C7FB7FFECECECFFC0C0C1F51C1C1D2A00000000000000000000
                00005252525AF1F1F1FDD0D1D1FF55566EFF1C218DFF1B23C6FF1C23CBFF1C23
                CFFF1B23D4FF1C23D7FF1B23D5FF1B24D1FF1B23CDFF1B23C9FF1B24C4FF2027
                C0FF7679B4FFE2E2E2FFDDDDDDFF474747680000000000000000000000000000
                0000000000006B6B6C76F1F1F2FDDEDEDEFF747581FF313479FF1A21B0FF1C24
                CFFF1C24D2FF1C24D4FF1C24D3FF1C24D0FF1C24CCFF1B23C8FF3D43BAFF9395
                B2FFE7E7E8FFDFE0E0FF5E5F5F85000000000000000000000000000000000000
                000000000000000000005656565EE1E1E2F1F7F7F7FFBEBEBFFF777885FF484A
                80FF363BA0FF2E34B5FF3036C0FF3C41BAFF5559AEFF8B8DABFFCECECEFFF5F5
                F5FFCCCDCDF54B4C4C6800000000000000000000000000000000000000000000
                0000000000000000000000000000212121249B9B9CABEBECECFBF8F8F8FFE6E6
                E6FFCDCDCEFFC3C4C4FFC5C5C6FFD1D1D2FFE8E8E9FFF5F5F5FFDFDFDFFD8C8C
                8DB32020202A0000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000222222267070707EADAD
                ADC1D5D5D6EBE3E3E4FBE1E1E2FBD1D1D2EDA6A6A7C5696969832323242C0000
                0000000000000000000000000000000000000000000000000000}
              TabOrder = 1
              OnClick = cxbtnLeftDelClick
            end
          end
        end
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      46
      0)
    inherited dxbrBarMang: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btFirst'
        end
        item
          Visible = True
          ItemName = 'btLeft'
        end
        item
          Visible = True
          ItemName = 'btRight'
        end
        item
          Visible = True
          ItemName = 'btLast'
        end
        item
          Visible = True
          ItemName = 'btAdd'
        end
        item
          Visible = True
          ItemName = 'btEdit'
        end
        item
          Visible = True
          ItemName = 'btSave'
        end
        item
          Visible = True
          ItemName = 'btDel'
        end
        item
          Visible = True
          ItemName = 'btCancel'
        end
        item
          Visible = True
          ItemName = 'btAddL'
        end
        item
          Visible = True
          ItemName = 'btDelL'
        end
        item
          Visible = True
          ItemName = 'btFind'
        end
        item
          Visible = True
          ItemName = 'btExport'
        end
        item
          Visible = True
          ItemName = 'btRefer'
        end
        item
          Visible = True
          ItemName = 'btPrint'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 77
          Visible = True
          ItemName = 'dxCmbReport'
        end
        item
          Visible = True
          ItemName = 'btnBOMMat'
        end
        item
          Visible = True
          ItemName = 'btInvoice'
        end
        item
          Visible = True
          ItemName = 'btRef'
        end
        item
          Visible = True
          ItemName = 'btCheck'
        end
        item
          Visible = True
          ItemName = 'btUnCheck'
        end
        item
          Visible = True
          ItemName = 'btTemp'
        end
        item
          Visible = True
          ItemName = 'btExit'
        end>
    end
    inherited btRefer: TdxBarLargeButton
      OnClick = btReferClick
    end
    object btnBOMMat: TdxBarLargeButton
      Caption = 'BOM'#21457#26009
      Category = 0
      Hint = #26681#25454'BOM'#21457#26009
      Visible = ivAlways
      LargeGlyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000909090E1313
        131E1B1B1B2A1E1E1E2E1F1F1F301F1F1F301F1F1F301F1F1F301E1E1E2E1B1B
        1B2A1313131E0808080C0808080C1313131E1B1B1B2A1E1E1E2E1F1F1F301F1F
        1F301F1F1F301F1F1F301E1E1E2E1C1C1C2C141414200909090E1D1F1F304F81
        9CCB5295B9EB5497BAED5598BBEF5598BBEF5598BBEF5598BBEF5497BBED5295
        B9EB4F7E98C71B1C1D2C1A1B1B2A4E7B93C15295B9EB5497BBED5598BBEF5598
        BBEF5598BBEF5598BBEF5497BAED5295B9EB50849FCF1F2122341227333E65AD
        D4FF909DA4FF737F87FF8F9BA2FF818D94FF76B4D6FF4EA4D3FF4CA3D2FF49A2
        D2FF49A1D1FF0E2029320B181F265BA9D3FF97A4ABFF738087FF8F9BA2FF828F
        96FF7CB4D2FF4EA4D3FF4CA3D2FF49A2D2FF49A1D1FF152F3D4A142C3A466DB1
        D6FF9FA3A6FF7E8386FF9EA2A4FF8E9295FF87BDDBFF5BAAD6FF58A8D5FF52A6
        D4FF4CA3D2FF1125303A0D1D262E60ACD4FFA6ABAEFF7F8487FF9EA2A4FF9094
        97FF8EBDD7FF5BAAD6FF58A9D5FF53A6D4FF4DA3D2FF18344452162D3A4656A7
        D4FF63ADD7FF69B0D8FF6DB2D9FF6FB3D9FF6AB1D9FF67B0D8FF63AED7FF5EAB
        D6FF57A8D4FF1326303A0E1E262E55A7D4FF62ADD7FF69B0D8FF6DB2D9FF6FB3
        D9FF6AB1D9FF67B0D8FF64AED8FF5EABD6FF57A8D5FF1A354452182E3A465FAC
        D6FF67AFD8FF6DB2DAFF6FB2D9FF6DAFD6FF73B4DAFF70B3D9FF6EB3DAFF68B0
        D9FF60ACD7FF1527313A101E262E5EABD6FF66AFD8FF6DB2DAFF6FB2D9FF6DB0
        D6FF73B5DBFF70B3D9FF6FB3DAFF69B0D9FF61ADD7FF1E3745521B2F3B4667AF
        D8FF6FB3DAFF76B7DCFF4589B4FF296F9EFF377CA9FF70AFD4FF77B7DCFF71B4
        DBFF68B0D9FF1728313A111F272E66AFD8FF6FB3DAFF76B7DCFF4B8EB8FF2D73
        A1FF367BA9FF6AA9CFFF78B8DCFF71B4DBFF69B1D9FF203845521C303B466DB3
        DAFF76B7DCFF7EBADEFF4285B1FF21699AFF22699AFF79B4D7FF7FBBDEFF78B7
        DCFF6FB3DAFF1828313A1320272E6DB2DAFF76B7DCFF7EBADEFF4B8DB7FF2169
        9AFF21699AFF73AFD3FF80BBDEFF79B8DCFF70B4DAFF223946521E313C4672B5
        DBFF7CB9DDFF84BDDFFF4E8FB9FF3177A7FF3277A7FF81B8DAFF85BEDFFF7DBA
        DDFF74B6DBFF1929323A1320272E71B4DBFF7BB9DDFF83BDDFFF5796BFFF3177
        A7FF3177A7FF7CB4D6FF86BEDFFF7EBADEFF75B6DBFF233A46521C2D37407AB8
        DDFF7FBBDEFF88BFE0FF5897C1FF4185B4FF4085B3FF86BBDCFF89C0E0FF80BC
        DEFF7BB9DDFF18262E36121D242A79B8DCFF7EBADEFF87BFE0FF5F9DC5FF4085
        B3FF4084B3FF81B7D9FF8AC0E0FF81BCDEFF7CB9DDFF2236414C040607085B80
        96AB7DA8C2DB83ABC3DB6493B2DB588AADDB588AADDB87B4D0ED8DC2E1FF87BF
        E0FF6393AEC90D1B232A0C1A21285D8CA7C186BEDFFF8CC1E1FF6A99B8DF588A
        ADDB588AADDB7EA7C0DB83ACC4DB7EA9C2DB60869BB105090A0C000000000000
        0000000000000000000000000000000000000F222C3651A1CBF76AABCEFF6AAB
        CEFF6CADD0FF6AACCFFF4CA3D2FF49A2D2FF49A2D2FF49A2D2FF387DA1C50103
        0304000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000001F455A6E7FB3CEFF737678FF696C
        6EFF8B8D8EFF818486FF6EB2D7FF53A6D4FF4FA4D3FF4BA2D2FF49A2D2FF050A
        0D10000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000021475C706FB0D4FF8CABBCFF8AA8
        B9FF98B4C5FF94B1C1FF6CB2D8FF5FACD7FF5BAAD6FF56A7D4FF4FA4D3FF050A
        0D10000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000025495D705BAAD5FF62ADD7FF68B0
        D8FF6CB2D9FF6EB3DAFF6DB3DAFF6BB1D9FF67AFD8FF61ACD7FF59A9D5FF050A
        0D10000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000294B5E7064AED7FF6CB2D9FF72B5
        DBFF65A7CEFF579AC3FF67A8CFFF76B6DCFF71B4DBFF6AB1D9FF62ADD7FF060B
        0D10000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000002C4C5F706BB1D9FF74B6DBFF7BB9
        DDFF2C72A1FF1A6294FF266D9CFF7FBBDEFF79B8DDFF72B5DBFF6AB1D9FF060B
        0E10000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000002F4E5F7071B4DBFF7AB9DDFF82BC
        DFFF357AA8FF286F9FFF2F75A4FF87BFE0FF81BCDEFF79B8DCFF6FB3DAFF070B
        0E10000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000314F607075B6DCFF7FBBDEFF87BF
        E0FF4285B2FF387DACFF3E81AFFF8CC1E1FF86BEDFFF7DBADDFF74B6DBFF070B
        0E10000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000283F4C5881BCDEFF81BCDEFF8AC0
        E0FF4D8EBBFF478BB9FF4B8DBAFF8FC3E2FF88BFE0FF7FBBDEFF77ADCDEB0406
        0708000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000010102023548535E4B5E6A764D5F
        6A763D5463763C5363763D5363764E606B764D5F6B764B5E6A761A252C320000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnBOMMatClick
      AutoGrayScale = False
    end
  end
  object qyTemp: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Left = 240
    Top = 288
  end
  object qyBomMat: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qyBomMatAfterInsert
    Parameters = <>
    SQL.Strings = (
      'select * from BomMatOutDTTB where 1=0')
    Left = 288
    Top = 288
    object qyBomMatAutoID: TLargeintField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object qyBomMatAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 100
    end
    object qyBomMatBillNo: TStringField
      FieldName = 'BillNo'
      Size = 50
    end
    object qyBomMatItemId: TStringField
      FieldName = 'ItemId'
      OnChange = qyBomMatItemIdChange
      Size = 30
    end
    object qyBomMatItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 30
    end
    object qyBomMatItemName: TStringField
      FieldName = 'ItemName'
      Size = 100
    end
    object qyBomMatItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 100
    end
    object qyBomMatItemPic: TStringField
      FieldName = 'ItemPic'
      Size = 100
    end
    object qyBomMatItemUnit: TStringField
      FieldName = 'ItemUnit'
      Size = 10
    end
    object qyBomMatSubUnit: TStringField
      FieldName = 'SubUnit'
      Size = 10
    end
    object qyBomMatItemPYCode: TStringField
      FieldName = 'ItemPYCode'
      Size = 50
    end
    object qyBomMatiFlag: TIntegerField
      FieldName = 'iFlag'
    end
    object qyBomMatExchRate: TFMTBCDField
      FieldName = 'ExchRate'
      Precision = 19
      Size = 6
    end
    object qyBomMatMainNum: TFMTBCDField
      FieldName = 'MainNum'
      Precision = 19
      Size = 6
    end
    object qyBomMatRemark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
    object qyBomMatColor: TStringField
      FieldName = 'Color'
      Size = 50
    end
  end
  object dsBomMat: TDataSource
    DataSet = qyBomMat
    Left = 288
    Top = 256
  end
  object PopupMenu1: TPopupMenu
    Left = 328
    Top = 288
    object MenuItem1: TMenuItem
      Caption = #22797#21046#21333#20803#26684
      OnClick = mniNCopyDClick
    end
    object MenuItem2: TMenuItem
      Caption = #31896#36148#35813#21015
      OnClick = mniNCopyLClick
    end
  end
end
