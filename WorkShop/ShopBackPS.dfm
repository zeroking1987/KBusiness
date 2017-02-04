inherited ShopBackFM: TShopBackFM
  Caption = #36710#38388#36820#24037#20986#24211
  ClientHeight = 508
  ClientWidth = 1054
  Position = poDesigned
  ExplicitWidth = 1054
  ExplicitHeight = 508
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    Width = 1054
    Height = 32
    TabOrder = 1
    ExplicitWidth = 1054
    ExplicitHeight = 32
    inherited cxLabTitle: TcxLabel
      Caption = #36710#38388#36820#24037#20986#24211
      Style.IsFontAssigned = True
      ExplicitHeight = 32
      Height = 32
      AnchorX = 97
      AnchorY = 16
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
    Top = 484
    Width = 1054
    Height = 24
    TabOrder = 3
    ExplicitTop = 484
    ExplicitWidth = 1054
    ExplicitHeight = 24
    inherited Label3: TLabel
      Top = 3
      ExplicitTop = 3
    end
    inherited Label4: TLabel
      Top = 3
      ExplicitTop = 3
    end
    inherited Label5: TLabel
      Top = 3
      ExplicitTop = 3
    end
    inherited Label6: TLabel
      Left = 495
      Top = 3
      ExplicitLeft = 495
      ExplicitTop = 3
    end
    inherited Label7: TLabel
      Left = 613
      Top = 3
      ExplicitLeft = 613
      ExplicitTop = 3
    end
    inherited Label8: TLabel
      Left = 784
      Top = 3
      ExplicitLeft = 784
      ExplicitTop = 3
    end
    inherited Label2: TLabel
      Top = 3
      ExplicitTop = 3
    end
    inherited cxEdtMakeManName: TcxDBTextEdit
      Top = -1
      ExplicitTop = -1
    end
    inherited cxEdtMakeDate: TcxDBTextEdit
      Top = -1
      ExplicitTop = -1
    end
    inherited cxEdtEditManName: TcxDBTextEdit
      Top = -1
      ExplicitTop = -1
    end
    inherited cxEdtEditDate: TcxDBTextEdit
      Left = 405
      Top = -1
      ExplicitLeft = 405
      ExplicitTop = -1
    end
    inherited cxEdtAuditManName: TcxDBTextEdit
      Left = 537
      Top = -1
      ExplicitLeft = 537
      ExplicitTop = -1
    end
    inherited cxEdtAuditDate: TcxDBTextEdit
      Left = 667
      Top = -1
      ExplicitLeft = 667
      ExplicitTop = -1
    end
    inherited cxEdtAuditFlag: TcxDBTextEdit
      Left = 838
      Top = -1
      ExplicitLeft = 838
      ExplicitTop = -1
    end
    inherited cxLabAuditInfo: TcxLabel
      Left = 873
      Top = 0
      ExplicitLeft = 873
      ExplicitTop = 0
    end
  end
  inherited pnlEdit: TPanel
    Top = 78
    Width = 1054
    Height = 78
    ExplicitTop = 78
    ExplicitWidth = 1054
    ExplicitHeight = 78
    object Label11: TLabel [0]
      Left = 281
      Top = 6
      Width = 48
      Height = 13
      Caption = #21457#20986#20179#24211
    end
    object Label12: TLabel [1]
      Left = 38
      Top = 6
      Width = 48
      Height = 13
      Caption = #21457#20986#21333#20301
    end
    object Label15: TLabel [2]
      Left = 250
      Top = 6
      Width = 6
      Height = 13
      Caption = '*'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl1: TLabel [3]
      Left = 492
      Top = 7
      Width = 6
      Height = 13
      Caption = '*'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl2: TLabel [4]
      Left = 281
      Top = 33
      Width = 48
      Height = 13
      Caption = #35843#20837#20179#24211
    end
    object lbl3: TLabel [5]
      Left = 38
      Top = 33
      Width = 48
      Height = 13
      Caption = #25509#25910#21333#20301
    end
    object lbl4: TLabel [6]
      Left = 250
      Top = 33
      Width = 6
      Height = 13
      Caption = '*'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl5: TLabel [7]
      Left = 492
      Top = 33
      Width = 6
      Height = 13
      Caption = '*'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl6: TLabel [8]
      Left = 62
      Top = 60
      Width = 24
      Height = 13
      Caption = #22791#27880
    end
    object cxBtnOutWare: TcxDBButtonEdit [9]
      Left = 334
      Top = 2
      DataBinding.DataField = 'OutWareName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxBtnOutWarePropertiesButtonClick
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      TabOrder = 0
      Width = 150
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 508
      Top = 3
      TabOrder = 1
      ExplicitLeft = 508
      ExplicitTop = 3
      ExplicitHeight = 74
      Height = 74
      inherited Label1: TLabel
        Left = 13
        Top = 13
        ExplicitLeft = 13
        ExplicitTop = 13
      end
      inherited Label9: TLabel
        Left = 13
        Top = 44
        ExplicitLeft = 13
        ExplicitTop = 44
      end
      inherited cxEdtNo: TcxDBTextEdit
        Left = 45
        Top = 9
        DataBinding.DataField = 'MoveNo'
        Style.IsFontAssigned = True
        ExplicitLeft = 45
        ExplicitTop = 9
      end
      inherited cxdt: TcxDBDateEdit
        Left = 43
        Top = 40
        DataBinding.DataField = 'MoveDate'
        ExplicitLeft = 43
        ExplicitTop = 40
      end
    end
    object cxBtnInWare: TcxDBButtonEdit
      Left = 335
      Top = 29
      DataBinding.DataField = 'InWareName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxBtnInWarePropertiesButtonClick
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      TabOrder = 2
      Width = 150
    end
    object cxBtnAcceptName: TcxDBButtonEdit
      Left = 92
      Top = 29
      DataBinding.DataField = 'AcceptName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxBt2PropertiesButtonClick
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      TabOrder = 3
      Width = 152
    end
    object cxMoRemark: TcxDBMemo
      Left = 92
      Top = 56
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.ScrollBars = ssVertical
      TabOrder = 4
      Visible = False
      Height = 21
      Width = 392
    end
    object cxPupEdtRemark: TcxDBPopupEdit
      Left = 92
      Top = 56
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.PopupControl = cxMoRemark
      Properties.ReadOnly = False
      TabOrder = 5
      Width = 392
    end
    object cxBtnSendName: TcxDBButtonEdit
      Left = 92
      Top = 2
      DataBinding.DataField = 'SendName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxBt1PropertiesButtonClick
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      TabOrder = 6
      Width = 152
    end
  end
  inherited pnlBody: TPanel
    Top = 156
    Width = 1054
    Height = 328
    Caption = ''
    ExplicitTop = 156
    ExplicitWidth = 1054
    ExplicitHeight = 328
    inherited cxPgc: TcxPageControl
      Width = 1054
      Height = 152
      ExplicitWidth = 1054
      ExplicitHeight = 152
      ClientRectBottom = 146
      ClientRectRight = 1048
      inherited cxtbsht1: TcxTabSheet
        Caption = #20986#24211#26126#32454' '
        ExplicitLeft = 2
        ExplicitTop = 27
        ExplicitWidth = 1046
        ExplicitHeight = 119
        inherited cxgrd: TcxGrid
          Left = 34
          Width = 1012
          Height = 119
          ExplicitLeft = 34
          ExplicitWidth = 1012
          ExplicitHeight = 119
          inherited cxgrdtbv: TcxGridDBTableView
            OnCustomDrawCell = cxgrdtbvCustomDrawCell
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = cxgrdbclmnMoveNum
              end
              item
                Kind = skSum
                Column = cxgrdbclmnMoveMoney
              end
              item
                Kind = skSum
                Column = cxgrdbclmnAllMoney
              end
              item
                Format = #21512#35745':0'
                Kind = skCount
                Column = cxgrdbclmnItemCode
              end>
            OptionsView.Footer = False
            object cxgrdbclmnItemCode: TcxGridDBColumn
              Caption = #20135#21697#20195#21495
              DataBinding.FieldName = 'ItemCode'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Hint = 'Ctrl+F2'#33719#21462#20135#21697#36164#26009
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 16449
              Properties.OnButtonClick = cxgrdbclmnItemCodePropertiesButtonClick
              Width = 110
            end
            object cxgrdbclmnItemPYCode: TcxGridDBColumn
              Caption = #25340#38899#30721
              DataBinding.FieldName = 'ItemPYCode'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.AutoSelect = False
              Properties.DropDownWidth = 500
              Properties.KeyFieldNames = 'ItemPYCode'
              Properties.ListColumns = <
                item
                  Caption = #25340#38899#30721
                  Width = 80
                  FieldName = 'ItemPYCode'
                end
                item
                  Caption = #20135#21697#20195#21495
                  Width = 150
                  FieldName = 'ItemCode'
                end
                item
                  Caption = #20135#21697#21517#31216
                  Width = 150
                  FieldName = 'ItemName'
                end
                item
                  Caption = #35268#26684
                  Width = 120
                  FieldName = 'ItemSpc'
                end>
              Properties.MaxLength = 200
              Properties.OnValidate = cxgrdbclmnItemPYCodePropertiesValidate
              Visible = False
              Width = 64
            end
            object cxgrdbclmnItemName: TcxGridDBColumn
              Caption = #20135#21697#21517#31216
              DataBinding.FieldName = 'ItemName'
              Options.Editing = False
              Width = 130
            end
            object cxgrdbclmnItemSpc: TcxGridDBColumn
              Caption = #35268#26684
              DataBinding.FieldName = 'ItemSpc'
              Options.Editing = False
              Width = 80
            end
            object cxgrdbclmnItemUnit: TcxGridDBColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'ItemUnit'
              Options.Editing = False
              Width = 44
            end
            object cxgrdbclmnColumn4: TcxGridDBColumn
              Caption = #36716#21270#29575
              DataBinding.FieldName = 'ExchRate'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnColumn4PropertiesValidate
              Width = 55
            end
            object cxgrdbclmnColumn5: TcxGridDBColumn
              Caption = #21103#21333#20301
              DataBinding.FieldName = 'SubUnit'
              Visible = False
              Options.Editing = False
              Width = 51
            end
            object cxgrdbclmnProType: TcxGridDBColumn
              Caption = #23646#24615
              DataBinding.FieldName = 'DeliveDate'
              Visible = False
              Width = 61
            end
            object cxgrdtbvColumn11: TcxGridDBColumn
              Caption = #21592#24037#32534#21495
              DataBinding.FieldName = 'EmpId'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdtbvColumn11PropertiesButtonClick
              Visible = False
              Options.ShowEditButtons = isebAlways
              Width = 71
            end
            object cxgrdtbvColumn12: TcxGridDBColumn
              Caption = #21592#24037#22995#21517
              DataBinding.FieldName = 'EmpName'
              Visible = False
              Width = 68
            end
            object cxgrdbclmnMoveNum: TcxGridDBColumn
              Caption = #25968#37327'*'
              DataBinding.FieldName = 'MoveNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnOrderNumPropertiesValidate
              Width = 73
            end
            object cxgrdbclmnColumn6: TcxGridDBColumn
              Caption = #21103#25968#37327
              DataBinding.FieldName = 'SubNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnColumn6PropertiesValidate
              Visible = False
              Width = 68
            end
            object cxgrdbclmnMovePrice: TcxGridDBColumn
              Caption = #21333#20215
              DataBinding.FieldName = 'MovePrice'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnOrderPricePropertiesValidate
              Width = 62
            end
            object cxgrdbclmnTaxPrice: TcxGridDBColumn
              Caption = #21547#31246#20215
              DataBinding.FieldName = 'TaxPrice'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnTaxPricePropertiesValidate
              Visible = False
              Width = 63
            end
            object cxgrdbclmnTaxRate: TcxGridDBColumn
              Caption = #31246#29575'%'
              DataBinding.FieldName = 'TaxRate'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnTaxRatePropertiesValidate
              Visible = False
              Width = 59
            end
            object cxgrdbclmnMoveMoney: TcxGridDBColumn
              Caption = #37329#39069
              DataBinding.FieldName = 'MoveMoney'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 75
            end
            object cxgrdbclmnAllMoney: TcxGridDBColumn
              Caption = #20215#31246#21512#35745
              DataBinding.FieldName = 'AllMoney'
              PropertiesClassName = 'TcxTextEditProperties'
              Visible = False
              Width = 90
            end
            object cxgrdtbvColumn8: TcxGridDBColumn
              Caption = #24037#24207#21495
              DataBinding.FieldName = 'Ordinal'
            end
            object cxgrdtbvColumn9: TcxGridDBColumn
              Caption = #24037#24207#21517#31216
              DataBinding.FieldName = 'TechName'
              Width = 101
            end
            object cxgrdtbvColumn10: TcxGridDBColumn
              Caption = #19978#36947#24037#24207
              DataBinding.FieldName = 'TopTech'
              Width = 71
            end
            object cxgrdbclmnWareNum: TcxGridDBColumn
              Caption = #24403#21069#24211#23384
              DataBinding.FieldName = 'WareNum'
              Options.Editing = False
              Width = 83
            end
            object cxgrdtbvColumn2: TcxGridDBColumn
              Caption = #35843#24223#25968#37327
              DataBinding.FieldName = 'SpoilNum'
              Visible = False
              Width = 80
            end
            object cxgrdtbvColumn3: TcxGridDBColumn
              Caption = #35843#24223#20179#24211
              DataBinding.FieldName = 'SpoilWareName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdtbvColumn3PropertiesButtonClick
              Visible = False
              Width = 77
            end
            object cxgrdtbvColumn4: TcxGridDBColumn
              Caption = #25253#24223#25968#37327
              DataBinding.FieldName = 'WasteNum'
              Visible = False
              Width = 69
            end
            object cxgrdtbvColumn5: TcxGridDBColumn
              Caption = #25253#24223#20179#24211
              DataBinding.FieldName = 'WasteWareName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdtbvColumn5PropertiesButtonClick
              Visible = False
              Width = 69
            end
            object cxgrdtbvColumn6: TcxGridDBColumn
              Caption = #26009#24223#25968#37327
              DataBinding.FieldName = 'ScrapNum'
              Visible = False
              Width = 69
            end
            object cxgrdtbvColumn7: TcxGridDBColumn
              Caption = #26009#24223#20179#24211
              DataBinding.FieldName = 'ScrapWareName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdtbvColumn7PropertiesButtonClick
              Visible = False
              Width = 67
            end
            object cxgrdbclmnRemark: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 105
            end
          end
        end
        object cxDetAutoNo: TcxDBTextEdit
          Left = 363
          Top = 176
          DataBinding.DataField = 'AutoNo'
          DataBinding.DataSource = dsDet
          Properties.OnChange = cxDetAutoNoPropertiesChange
          TabOrder = 1
          Visible = False
          Width = 121
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 34
          Height = 119
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object cxbtnDetAdd: TcxButton
            Left = 0
            Top = 0
            Width = 34
            Height = 28
            Hint = #26032#22686#19968#26465#35760#24405
            Align = alTop
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
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = cxbtnDetAddClick
          end
          object cxbtnDetDel: TcxButton
            Left = 0
            Top = 28
            Width = 34
            Height = 28
            Hint = #21024#38500#19968#26465#35760#24405
            Align = alTop
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
            OnClick = cxbtnDetDelClick
          end
        end
      end
    end
    object cxPageControl1: TcxPageControl
      Left = 0
      Top = 152
      Width = 1054
      Height = 176
      Align = alBottom
      TabOrder = 1
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 170
      ClientRectLeft = 2
      ClientRectRight = 1048
      ClientRectTop = 27
      object cxTabSheet1: TcxTabSheet
        Caption = #20837#24211#26126#32454' '
        ImageIndex = 0
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 34
          Height = 143
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object cxbtnDet2Add: TcxButton
            Left = 0
            Top = 0
            Width = 34
            Height = 28
            Hint = #26032#22686#19968#26465#35760#24405
            Align = alTop
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
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = cxbtnDet2AddClick
          end
          object cxbtnDet2Del: TcxButton
            Left = 0
            Top = 28
            Width = 34
            Height = 28
            Hint = #21024#38500#19968#26465#35760#24405
            Align = alTop
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
            OnClick = cxbtnDet2DelClick
          end
        end
        object cxgrd1: TcxGrid
          Left = 34
          Top = 0
          Width = 1012
          Height = 143
          Align = alClient
          PopupMenu = PopupMenu1
          TabOrder = 1
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
            OnCellDblClick = cxgrdtbvCellDblClick
            OnSelectionChanged = cxgrdtbvSelectionChanged
            DataController.DataSource = dsDet2
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
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
                Format = #21512#35745':0'
                Kind = skCount
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.PullFocusing = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Editing = False
            OptionsView.NoDataToDisplayInfoText = #24658#21019#36719#20214
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 35
            OnCustomDrawIndicatorCell = cxgrdbtblvw1CustomDrawIndicatorCell
            object cxgrdbclmncxgrdbtblvw1ItemCode: TcxGridDBColumn
              Caption = #20135#21697#20195#21495
              DataBinding.FieldName = 'ItemCode'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdbclmncxgrdbtblvw1ItemCodePropertiesButtonClick
              Width = 108
            end
            object cxgrdbclmncxgrdbtblvw1ItemName: TcxGridDBColumn
              Caption = #20135#21697#21517#31216
              DataBinding.FieldName = 'ItemName'
              Width = 133
            end
            object cxgrdbclmncxgrdbtblvw1ItemSpc: TcxGridDBColumn
              Caption = #35268#26684
              DataBinding.FieldName = 'ItemSpc'
              Width = 83
            end
            object cxgrdbclmncxgrdbtblvw1ItemPic: TcxGridDBColumn
              Caption = #22270#21495
              DataBinding.FieldName = 'ItemPic'
              Visible = False
              Width = 50
            end
            object cxgrdbclmncxgrdbtblvw1ItemUnit: TcxGridDBColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'ItemUnit'
              Width = 43
            end
            object cxgrdbclmncxgrdbtblvw1SubUnit: TcxGridDBColumn
              Caption = #21103#21333#20301
              DataBinding.FieldName = 'SubUnit'
              Visible = False
              Width = 50
            end
            object cxgrdbclmncxgrdbtblvw1ExchRate: TcxGridDBColumn
              Caption = #36716#21270#29575
              DataBinding.FieldName = 'ExchRate'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmncxgrdbtblvw1ExchRatePropertiesValidate
              Width = 56
            end
            object cxgrdbclmn1MoveNum: TcxGridDBColumn
              Caption = #25968#37327
              DataBinding.FieldName = 'MoveNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmncxgrdbtblvw1MoveNumPropertiesValidate
              Width = 72
            end
            object cxgrdbclmncxgrdbtblvw1Dosage: TcxGridDBColumn
              Caption = #29992#37327
              DataBinding.FieldName = 'Dosage'
              Width = 58
            end
            object cxgrdbclmncxgrdbtblvw1WasteRate: TcxGridDBColumn
              Caption = #25439#32791#29575
              DataBinding.FieldName = 'WasteRate'
              Width = 63
            end
            object cxgrdbclmncxgrdbtblvw1TechName: TcxGridDBColumn
              Caption = #24037#24207
              DataBinding.FieldName = 'TechName'
              Width = 53
            end
            object cxgrdbclmncxgrdbtblvw1TopTech: TcxGridDBColumn
              Caption = #19979#36947#24037#24207
              DataBinding.FieldName = 'NextTech'
              Width = 72
            end
            object cxgrdbclmncxgrdbtblvw1MovePrice: TcxGridDBColumn
              Caption = #21333#20215
              DataBinding.FieldName = 'MovePrice'
              Visible = False
              Width = 50
            end
            object cxgrdbclmncxgrdbtblvw1TaxPrice: TcxGridDBColumn
              Caption = #21547#31246#20215
              DataBinding.FieldName = 'TaxPrice'
              Visible = False
              Width = 50
            end
            object cxgrdbclmncxgrdbtblvw1MoveMoney: TcxGridDBColumn
              Caption = #37329#39069
              DataBinding.FieldName = 'MoveMoney'
              Visible = False
              Width = 50
            end
            object cxgrdbclmncxgrdbtblvw1SubNum: TcxGridDBColumn
              Caption = #21103#25968#37327
              DataBinding.FieldName = 'SubNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmncxgrdbtblvw1SubNumPropertiesValidate
              Width = 58
            end
            object cxgrdbclmncxgrdbtblvw1SubPrice: TcxGridDBColumn
              Caption = #21103#21333#20215
              DataBinding.FieldName = 'SubPrice'
              Visible = False
              Width = 50
            end
            object cxgrdbclmncxgrdbtblvw1SubTaxPrice: TcxGridDBColumn
              Caption = #21103#21547#31246#20215
              DataBinding.FieldName = 'SubTaxPrice'
              Visible = False
              Width = 50
            end
            object cxgrdbclmncxgrdbtblvw1SubMoney: TcxGridDBColumn
              Caption = #21103#37329#39069
              DataBinding.FieldName = 'SubMoney'
              Visible = False
              Width = 50
            end
            object cxgrdbclmncxgrdbtblvw1ObjectId: TcxGridDBColumn
              Caption = #22806#21327#21830#32534#21495
              DataBinding.FieldName = 'ObjectId'
              Visible = False
              Width = 79
            end
            object cxgrdbclmncxgrdbtblvw1Column1: TcxGridDBColumn
              Caption = #22806#21327#21830#21517#31216
              DataBinding.FieldName = 'ObjectName'
              Visible = False
              Width = 133
            end
            object cxgrd1bclmnWareNum: TcxGridDBColumn
              Caption = #24403#21069#24211#23384
              DataBinding.FieldName = 'WareNum'
              Options.Editing = False
            end
            object cxgrdbclmncxgrdbtblvw1Remark: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 68
            end
          end
          object cxgrdlvl1: TcxGridLevel
            GridView = cxgrdbtblvw1
          end
        end
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    Left = 920
    Top = 54
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
          UserWidth = 76
          Visible = True
          ItemName = 'dxCmbReport'
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
          ItemName = 'btTemp'
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
          ItemName = 'btExit'
        end>
    end
    inherited btAddL: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btDelL: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btFind: TdxBarLargeButton
      OnClick = btFindClick
    end
    inherited btRefer: TdxBarLargeButton
      OnClick = btReferClick
    end
    inherited btUnCheck: TdxBarLargeButton
      OnClick = btUnCheckClick
    end
    inherited btTemp: TdxBarLargeButton
      Caption = #26597' '#30475
      Hint = #26597#30475
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = dxbrpmn1
      LargeGlyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000303
        030E1F1F1FA7212121E707070756000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002121
        219F505050FF545454FF1B1B1BF33838389D7E7E7E977E7E7E977E7E7E977E7E
        7E977E7E7E977E7E7E977E7E7E977E7E7E977E7E7E9782828297696969761818
        181C000000000000000000000000000000000000000000000000000000002828
        28C95C5C5CFF7F7F7FFF4E4E4EFF191919FFA9A9A9FFF6F6F6FFF6F6F6FFF6F6
        F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF5F5F5FFE3E3E3FFC4C4
        C4E12525252E0000000000000000000000000000000000000000000000000606
        062A2C2C2CE1555555FF757575FF444444FF151515FFA1A1A1FFF1F3F2FFC8D9
        D4FFABC7BEFFADCAC0FFCCDDD7FFF2F4F3FFF6F6F6FFF6F6F6FFF3F3F3FFE5E5
        E5FFC9C9C9E72222222A00000000000000000000000000000000000000000000
        0000797979B33A3A3AFF484848FF6A6A6AFF353635FF123127FF2A795EFF0F71
        4EFF0A724CFF0D774FFF177E57FF3F9474FFB3D2C6FFF5F6F6FFF6F6F6FFE8E8
        E8FFF1F1F1FFB2B2B2CB0F0F0F12000000000000000000000000000000000000
        0000A9A9A9BFCCCCCCFF323232FF393939FF2F604FFF066946FF278562FF479A
        7AFF5CA488FF56A285FF31946DFF1F8F62FF1A8C5EFF90C4B0FFF6F7F6FFE9E9
        E9FFF6F6F6FFF0F0F0FF7C7C7C8B000000000000000000000000000000000000
        0000AAAAAABFF8F8F8FFCFCFCFFF25453BFF066A46FF449677FF8DB9A8FFD8E0
        DDFFEFEFEFFFF0F0F0FFD8E1DEFF73AF99FF219565FF209766FFB1D6C7FFF7F7
        F7FFEDEDEDFFEAEAEAFFEBEBEBFB1818181A0000000000000000000000000000
        0000ABABABBFF8F8F8FFE9EDECFF26775BFF2D8866FF91BBACFFE9EBEAFFF3F3
        F3FFF0F0F0FFEEEEEEFFEFEFEFFFECEDEDFF6DAC94FF1F9966FF52B088FFF2F5
        F4FFF8F8F8FFF4F4F4FFE7E7E7FF6363636A0000000000000000000000000000
        0000ACACACBFF8F8F8FFBFD4CDFF076B48FF59A286FFD6DEDBFFF3F3F3FFF0F0
        F0FFEEEEEEFFEFEFEFFFF1F1F1FFF7F7F7FFE6EDEBFF1D8F61FF3AAA7AFFCFE5
        DCFFF7F7F7FFF8F8F8FFF5F5F5FFA3A3A3BF0303030400000000000000000000
        0000ACACACBFF9F9F9FF98BCB0FF09704AFF73AE98FFEDEDEDFFF3F3F3FFEDED
        EDFFEEEEEEFFF0F0F0FFFAFAFAFFFFFFFFFFFCFCFCFF429A78FF35AA77FFBADE
        CFFFF8F8F8FFF8F8F8FFF7F7F7FFB8B8B8CF0606060800000000000000000000
        0000ACACACBFF9F9F9FF96BCAFFF0A734CFF6DAC94FFEEEEEEFFF0F0F0FFEEEE
        EEFFF0F0F0FFF7F7F7FFFFFFFFFFFFFFFFFFFBFBFBFF469C7BFF3AAE7CFFBDE0
        D1FFF9F9F9FFF8F8F8FFF8F8F8FFBABABACF0606060800000000000000000000
        0000ADADADBFF9F9F9FFBAD2CAFF0B744DFF4D9F7FFFDFE5E3FFF0F0F0FFEFEF
        EFFFF1F1F1FFFDFDFDFFFEFEFEFFFEFEFEFFEEF2F1FF239064FF52BA8CFFCCE5
        DBFFF9F9F9FFF9F9F9FFF9F9F9FFBBBBBBCF0606060800000000000000000000
        0000AEAEAEBFF9F9F9FFE8EEECFF298462FF258E65FF8EBAAAFFF0F0F0FFEFEF
        EFFFF4F4F4FFFFFFFFFFFEFEFEFFF9FAFAFF7FB3A0FF29A26FFF7DCBA9FFEFF4
        F2FFF9F9F9FFF9F9F9FFF9F9F9FFBCBCBCCF0606060800000000000000000000
        0000AFAFAFBFF9F9F9FFF8F8F8FF90BBACFF148458FF2B946AFF8AB9A8FFE3E8
        E6FFF4F4F4FFFCFCFCFFE7EEECFF84B7A4FF269869FF58BE91FFBBDFCFFFF9F9
        F9FFF9F9F9FFF9F9F9FFF9F9F9FFBCBCBCCF0707070800000000000000000000
        0000AFAFAFBFFAFAFAFFF7F7F7FFEAEBEBFF60A089FF198E5EFF1C9362FF3497
        70FF57A385FF56A285FF30956DFF229D69FF54BC8EFF98D1B8FFF4F7F6FFF8F8
        F8FFF8F8F8FFF8F8F8FFF8F8F8FFBCBCBCCF0707070800000000000000000000
        0000AFAFAFBFFAFAFAFFF7F7F7FFEEEEEEFFEBEDECFF94C1B0FF389E75FF299E
        6DFF30A673FF37AC79FF43B281FF70C39FFFB2DAC9FFF9F9F9FFF9F9F9FFF9F9
        F9FFF9F9F9FFF9F9F9FFF9F9F9FFBDBDBDCF0707070800000000000000000000
        0000B0B0B0BFFAFAFAFFF9F9F9FFF9F9F9FFF9F9F9FFF8F8F8FFE9EFEDFFBAD8
        CCFFA0CCBBFFA4CFBEFFC6E0D6FFE9F1EEFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
        F9FFF9F9F9FFF9F9F9FFF9F9F9FFBDBDBDCF0707070800000000000000000000
        0000B0B0B0BFFAFAFAFFF5F5F5FFE7E7E7FFE7E7E7FFE8E8E8FFE8E8E8FFE8E8
        E8FFE9E9E9FFE9E9E9FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE7E7E7FFEDED
        EDFFF8F8F8FFF8F8F8FFF8F8F8FFBEBEBECF0707070800000000000000000000
        0000B1B1B1BFFAFAFAFFF9F9F9FFF8F8F8FFF8F8F8FFF9F9F9FFF9F9F9FFF8F8
        F8FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF8F8F8FFF9F9F9FFF9F9F9FFF8F8
        F8FFF9F9F9FFF9F9F9FFF8F8F8FFBEBEBECF0707070800000000000000000000
        0000B2B2B2BFFAFAFAFFF8F8F8FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
        F5FFF5F5F5FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
        F5FFF4F4F4FFF8F8F8FFF9F9F9FFBDBDBDCD0707070800000000000000000000
        0000A3A3A3B1FAFAFAFFF6F6F6FFEDEDEDFFEEEEEEFFEFEFEFFFEFEFEFFFEFEF
        EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEEEE
        EEFFEBEBEBFFF6F6F6FFF8F8F8FFA8A8A8B90000000000000000000000000000
        00004E4E4E58F8F8F8FFF9F9F9FFF9F9F9FFF8F8F8FFF9F9F9FFF8F8F8FFF8F8
        F8FFF9F9F9FFF8F8F8FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
        F9FFF9F9F9FFF9F9F9FFF4F4F4FF545454600000000000000000000000000000
        0000030303048A8A8A97F0F0F0F9F9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
        F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
        F9FFF8F8F8FFEEEEEEFB8F8F8FA1030303040000000000000000000000000000
        00000000000004040404393939407E7E7E899494949F9494949F9494949F9494
        949F9494949F9393939F9393939F9393939F9393939F9393939F9393939F9393
        939F7D7D7D893F3F3F4803030304000000000000000000000000}
    end
    inherited btRef: TdxBarLargeButton
      Visible = ivAlways
      OnClick = btRefClick
    end
    object dxbrbtn1: TdxBarButton
      Caption = #20837#24211
      Category = 0
      Hint = #20837#24211
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000303
        0306070707140000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000008000000106161
        619B0B0B0B420000000E00000004000000000000000000000000000000000000
        00000000000000000000000000000000000000000018000000381616165A8785
        84E10000003C000000340000002A000000180000000400000000000000000000
        000000000000000000001B392F3E56837289467A67951B473878414745B12E2D
        2D8B000000300000002C0000002A000000260000001000000000000000000000
        0000000000000309070A6FE3BBF593F3D0FF68EBBDFF4DE5B3FF3AD5A3FF1A6F
        52A301090630000000220000001E000000160000000600000000000000000000
        00000000000007120E149AF3D3FFADF5DBFF6DEBC0FF41E1ADFF29D39BFF18B8
        80FF0E8C5EE101180F3C00000010000000040000000000000000000000000000
        0000000000000000000077C0A5C99EF2D5FF64E5B9FF34D19EFF20BE89FF0FA7
        70FF02955CFF0C885ADF00030206000000000000000000000000000000000000
        000000000000000000001427202A7BE8C2F965EABDFF2ACA95FF0E9564FF078D
        5BFF0C9863FF19A470FB010D0914000000000000000000000000000000000000
        00000000000000000000103227388AF0CCFF47E2AFFF18B07BFF0F9864FF0C84
        57FF159767F704432B6800000000000000000000000000000000000000000000
        0000020403042A4A3E4E56B393C161E9BBFF30D29DFF0A9A64FF0F7851C1002A
        1A48000C08140000000000000000000000000000000000000000000000000409
        070A61BC9CC99CF4D4FF7AEDC6FF42DDABFF21C08AFF079A63FF022D1D480000
        000000000000000000000000000000000000000000000000000000000000254E
        40546EEDC0FF6BEDBFFF68ECBEFF63E9BBFF3ECD9CFF0A9C65FF052C1D480000
        000000000000000000000000000000000000000000000000000000000000060F
        0C104EC69DD958E8B7FF56E7B6FF53E6B5FF50E6B4FF40D4A1FF117852B90000
        0000000000000000000000000000000000000000000000000000000000000000
        000007140F16319B77AD49E3B1FF51E4B4FF48E3B1FF3CE0ABFF26A67BCB0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000B2A20302B7D638D3DAB88C32EAD84C90E4735540000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxbrbtn1Click
    end
    object dxbrbtn2: TdxBarButton
      Caption = #20986#24211
      Category = 0
      Hint = #20986#24211
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000303
        0306070707140000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000008000000106161
        619B0B0B0B420000000E00000004000000000000000000000000000000000000
        00000000000000000000000000000000000000000018000000381616165A8785
        84E10000003C000000340000002A000000180000000400000000000000000000
        000000000000000000003D39273E88826789817A5A954D472D78484743B12E2D
        2D8B000000300000002C0000002A000000260000001000000000000000000000
        0000000000000A09050AF3E39DF5FEF2B9FFFDEB9BFFFBE68AFFEED778FF7F6F
        3BA30A080430000000220000001E000000160000000600000000000000000000
        00000000000014120B14FEF2BDFFFEF4C9FFFDEB9FFFFAE381FFF0D56DFFD7B6
        55FFA9893CE11E170A3C00000010000000040000000000000000000000000000
        00000000000000000000C8BF93C9FEF2C0FFF7E597FFEAD373FFDBBF5EFFC8A5
        47FFB99037FFAA863EDF04030206000000000000000000000000000000000000
        000000000000000000002A271B2AF7E8A6F9FCEA9AFFE5CB69FFB29341FFAB89
        38FFBB943FFFCCA255FB110D0714000000000000000000000000000000000000
        0000000000000000000037321E38FDF0B3FFF9E385FFCEAF52FFBC9543FFA180
        38FFBA9449F756421F6800000000000000000000000000000000000000000000
        0000040402044E49364EBFB37BC1FCE997FFECD370FFBA973EFF95773AC13428
        0F480F0C05140000000000000000000000000000000000000000000000000A09
        060AC7BC84C9FEF2BEFFFDEDA8FFF5DF80FFDDC15FFFBD973EFF3A2D15480000
        000000000000000000000000000000000000000000000000000000000000544E
        3554FDECA0FFFDEC9EFFFDEB9CFFFBE998FFE6CD76FFBD983FFF362B13480000
        000000000000000000000000000000000000000000000000000000000000100F
        0A10D6C67ED9FCE891FFFCE88FFFFCE78DFFFCE78BFFEDD47AFF95773CB90000
        0000000000000000000000000000000000000000000000000000000000000000
        000016140C16AA9B5BADFBE587FFFBE68BFFFBE586FFFAE37EFFBFA75CCB0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002F2B17308A7E4C8DBEAD6AC3C3AE60C9514825540000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxbrbtn2Click
    end
  end
  inherited PupBpm: TdxBarPopupMenu
    Left = 880
    Top = 54
  end
  inherited dsHed: TDataSource
    Left = 216
    Top = 54
  end
  inherited qyHed: TADOQuery
    OnCalcFields = qyHedCalcFields
    SQL.Strings = (
      'select * from ItemMoveHDTB where MKindId='#39'AssistMove'#39)
    Left = 251
    Top = 54
    object strngfldHedAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 100
    end
    object strngfldHedMoveNo: TStringField
      FieldName = 'MoveNo'
      Size = 50
    end
    object qyHedbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object strngfldHedMKindId: TStringField
      FieldName = 'MKindId'
      Size = 50
    end
    object qyHedMoveDate: TDateTimeField
      FieldName = 'MoveDate'
    end
    object strngfldHedMoveOutWare: TStringField
      FieldName = 'OutWare'
    end
    object strngfldHedMoveInWare: TStringField
      FieldName = 'InWare'
    end
    object strngfldHedAcceptId: TStringField
      FieldName = 'AcceptId'
      Size = 30
    end
    object strngfldHedSendId: TStringField
      FieldName = 'SendId'
      Size = 30
    end
    object strngfldHedSourceNo: TStringField
      FieldName = 'SourceNo'
      Size = 30
    end
    object qyHedbPrint: TBooleanField
      FieldName = 'bPrint'
    end
    object qyHedPrintNum: TIntegerField
      FieldName = 'PrintNum'
      OnChange = qyHedPrintNumChange
    end
    object strngfldHedSubjoinNo: TStringField
      FieldName = 'SubjoinNo'
      Size = 50
    end
    object strngfldHedSubjoinTableId: TStringField
      FieldName = 'SubjoinTableId'
      Size = 50
    end
    object qyHedMakeDate: TDateTimeField
      FieldName = 'MakeDate'
    end
    object strngfldHedMakeMan: TStringField
      FieldName = 'MakeMan'
    end
    object strngfldHedMakeManName: TStringField
      FieldName = 'MakeManName'
      Size = 30
    end
    object qyHedAuditFlag: TSmallintField
      FieldName = 'AuditFlag'
    end
    object strngfldHedAuditMan: TStringField
      FieldName = 'AuditMan'
      Size = 50
    end
    object strngfldHedAuditManName: TStringField
      FieldName = 'AuditManName'
      Size = 50
    end
    object strngfldHedAuditDate: TStringField
      FieldName = 'AuditDate'
      Size = 80
    end
    object qyHedbMaxAudit: TBooleanField
      FieldName = 'bMaxAudit'
    end
    object qyHedMaxAuditDate: TDateTimeField
      FieldName = 'MaxAuditDate'
    end
    object strngfldHedEditMan: TStringField
      FieldName = 'EditMan'
      Size = 30
    end
    object strngfldHedEditManName: TStringField
      FieldName = 'EditManName'
      Size = 30
    end
    object qyHedEditDate: TDateTimeField
      FieldName = 'EditDate'
    end
    object strngfldHedFinaMan: TStringField
      FieldName = 'FinaMan'
    end
    object qyHedFinaDate: TDateTimeField
      FieldName = 'FinaDate'
    end
    object strngfldHedYearMon: TStringField
      FieldName = 'YearMon'
      Size = 6
    end
    object strngfldHedPzWord: TStringField
      FieldName = 'PzWord'
      Size = 50
    end
    object strngfldHedPzNo: TStringField
      FieldName = 'PzNo'
      Size = 50
    end
    object strngfldHedPzId: TStringField
      FieldName = 'PzId'
      Size = 50
    end
    object strngfldHedRemark: TStringField
      FieldName = 'Remark'
      Size = 500
    end
    object strngfldHedSendName: TStringField
      FieldKind = fkCalculated
      FieldName = 'SendName'
      Size = 100
      Calculated = True
    end
    object strngfldHedAcceptName: TStringField
      FieldKind = fkCalculated
      FieldName = 'AcceptName'
      Size = 100
      Calculated = True
    end
    object strngfldHedInWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'InWareName'
      Size = 50
      Calculated = True
    end
    object strngfldHedOutWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'OutWareName'
      Size = 50
      Calculated = True
    end
  end
  inherited qyDet: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyDetAfterInsert
    OnCalcFields = qyDetCalcFields
    SQL.Strings = (
      'select * from ItemMoveDTTB')
    object strngfldDetAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 100
    end
    object strngfldDetMoveNo: TStringField
      FieldName = 'MoveNo'
      Size = 50
    end
    object strngfldDetItemId: TStringField
      FieldName = 'ItemId'
      OnChange = strngfldDetItemIdChange
      Size = 30
    end
    object strngfldDetItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 30
    end
    object strngfldDetItemName: TStringField
      FieldName = 'ItemName'
      Size = 100
    end
    object strngfldDetItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 100
    end
    object strngfldDetItemPic: TStringField
      FieldName = 'ItemPic'
      Size = 100
    end
    object strngfldDetItemUnit: TStringField
      FieldName = 'ItemUnit'
      Size = 10
    end
    object strngfldDetSubUnit: TStringField
      FieldName = 'SubUnit'
      Size = 10
    end
    object strngfldDetItemPYCode: TStringField
      FieldName = 'ItemPYCode'
      Size = 50
    end
    object qyDetiFlag: TIntegerField
      FieldName = 'iFlag'
    end
    object qyDetExchRate: TFMTBCDField
      FieldName = 'ExchRate'
      Precision = 19
      Size = 6
    end
    object strngfldDetProType: TStringField
      FieldName = 'ProType'
      Size = 100
    end
    object strngfldDetInProType: TStringField
      FieldName = 'InProType'
      Size = 100
    end
    object strngfldDetColor: TStringField
      FieldName = 'Color'
      Size = 100
    end
    object strngfldDetInColor: TStringField
      FieldName = 'InColor'
      Size = 100
    end
    object strngfldDetBatchNo: TStringField
      FieldName = 'BatchNo'
      Size = 30
    end
    object strngfldDetInBatchNo: TStringField
      FieldName = 'InBatchNo'
      Size = 30
    end
    object strngfldDetPlaceNo: TStringField
      FieldName = 'PlaceNo'
      Size = 30
    end
    object strngfldDetInPlaceNo: TStringField
      FieldName = 'InPlaceNo'
      Size = 30
    end
    object strngfldDetCompactNo: TStringField
      FieldName = 'CompactNo'
      Size = 100
    end
    object strngfldDetInCompactNo: TStringField
      FieldName = 'InCompactNo'
      Size = 100
    end
    object strngfldDetObjectId: TStringField
      FieldName = 'ObjectId'
      Size = 30
    end
    object strngfldDetInObjectId: TStringField
      FieldName = 'InObjectId'
      Size = 30
    end
    object strngfldDetSjNo: TStringField
      FieldName = 'SjNo'
      Size = 30
    end
    object strngfldDetsOrderNo: TStringField
      FieldName = 'sOrderNo'
      Size = 30
    end
    object strngfldDetTechName: TStringField
      FieldName = 'TechName'
      OnChange = strngfldDetTechNameChange
      Size = 100
    end
    object strngfldDetInDate: TStringField
      FieldName = 'InDate'
      Size = 30
    end
    object strngfldDetPState: TStringField
      FieldName = 'PState'
      Size = 30
    end
    object strngfldDetTempNo: TStringField
      FieldName = 'TempNo'
      Size = 30
    end
    object strngfldDetEmpId: TStringField
      FieldName = 'EmpId'
      Size = 50
    end
    object strngfldDetEmpName: TStringField
      FieldName = 'EmpName'
      Size = 50
    end
    object strngfldDetTopTech: TStringField
      FieldName = 'TopTech'
      Size = 100
    end
    object qyDetMoveNum: TFMTBCDField
      FieldName = 'MoveNum'
      OnChange = qyDetMoveNumChange
      Precision = 19
      Size = 6
    end
    object qyDetMovePrice: TFMTBCDField
      FieldName = 'MovePrice'
      Precision = 19
      Size = 6
    end
    object qyDetTaxPrice: TFMTBCDField
      FieldName = 'TaxPrice'
      Precision = 19
      Size = 6
    end
    object qyDetMoveMoney: TFMTBCDField
      FieldName = 'MoveMoney'
      Precision = 19
      Size = 6
    end
    object qyDetSubNum: TFMTBCDField
      FieldName = 'SubNum'
      Precision = 19
      Size = 6
    end
    object qyDetSubPrice: TFMTBCDField
      FieldName = 'SubPrice'
      Precision = 19
      Size = 6
    end
    object qyDetSubTaxPrice: TFMTBCDField
      FieldName = 'SubTaxPrice'
      Precision = 19
      Size = 6
    end
    object qyDetSubMoney: TFMTBCDField
      FieldName = 'SubMoney'
      Precision = 19
      Size = 6
    end
    object qyDetSpoilNum: TFMTBCDField
      FieldName = 'SpoilNum'
      OnChange = qyDetSpoilNumChange
      Precision = 19
      Size = 6
    end
    object qyDetSpoilPrice: TFMTBCDField
      FieldName = 'SpoilPrice'
      Precision = 19
      Size = 6
    end
    object qyDetSpoilMoney: TFMTBCDField
      FieldName = 'SpoilMoney'
      Precision = 19
      Size = 6
    end
    object qyDetWasteNum: TFMTBCDField
      FieldName = 'WasteNum'
      OnChange = qyDetWasteNumChange
      Precision = 19
      Size = 6
    end
    object qyDetWastePrice: TFMTBCDField
      FieldName = 'WastePrice'
      Precision = 19
      Size = 6
    end
    object qyDetWasteMoney: TFMTBCDField
      FieldName = 'WasteMoney'
      Precision = 19
      Size = 6
    end
    object qyDetTaxRate: TFMTBCDField
      FieldName = 'TaxRate'
      Precision = 19
      Size = 6
    end
    object qyDetTaxMoney: TFMTBCDField
      FieldName = 'TaxMoney'
      Precision = 19
      Size = 6
    end
    object qyDetAllMoney: TFMTBCDField
      FieldName = 'AllMoney'
      Precision = 19
      Size = 6
    end
    object strngfldDetTopId: TStringField
      FieldName = 'TopId'
      Size = 30
    end
    object strngfldDetTopCode: TStringField
      FieldName = 'TopCode'
      Size = 50
    end
    object strngfldDetTopName: TStringField
      FieldName = 'TopName'
      Size = 100
    end
    object qyDetTopDosage: TFMTBCDField
      FieldName = 'TopDosage'
      Precision = 19
      Size = 6
    end
    object strngfldDetCpId: TStringField
      FieldName = 'CpId'
      Size = 30
    end
    object strngfldDetCpCode: TStringField
      FieldName = 'CpCode'
      Size = 50
    end
    object strngfldDetCpName: TStringField
      FieldName = 'CpName'
      Size = 100
    end
    object strngfldDetMrpNo: TStringField
      FieldName = 'MrpNo'
    end
    object strngfldDetMrpID: TStringField
      FieldName = 'MrpID'
      Size = 100
    end
    object strngfldDetTicketNo: TStringField
      FieldName = 'TicketNo'
    end
    object strngfldDetTicketID: TStringField
      FieldName = 'TicketID'
      Size = 100
    end
    object strngfldDetRemark: TStringField
      FieldName = 'Remark'
      Size = 500
    end
    object strngfldDetObjectName: TStringField
      FieldKind = fkCalculated
      FieldName = 'ObjectName'
      Size = 200
      Calculated = True
    end
    object strngfldDetInObjectName: TStringField
      FieldKind = fkCalculated
      FieldName = 'InObjectName'
      Size = 200
      Calculated = True
    end
    object qyDetWareNum: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'WareNum'
      Size = 0
      Calculated = True
    end
    object qyDetProOrderNo: TStringField
      FieldName = 'ProOrderNo'
      Size = 100
    end
    object qyDetProOrderId: TStringField
      FieldName = 'ProOrderId'
      Size = 100
    end
    object qyDetScrapNum: TFMTBCDField
      FieldName = 'ScrapNum'
      OnChange = qyDetScrapNumChange
      Precision = 18
      Size = 5
    end
    object qyDetScrapPrice: TFMTBCDField
      FieldName = 'ScrapPrice'
      OnChange = qyDetScrapPriceChange
      Precision = 18
      Size = 5
    end
    object qyDetScrapMoney: TFMTBCDField
      FieldName = 'ScrapMoney'
      Precision = 18
      Size = 5
    end
    object qyDetSpoilWareId: TStringField
      FieldName = 'SpoilWareId'
      Size = 50
    end
    object qyDetWasteWareId: TStringField
      FieldName = 'WasteWareId'
      Size = 50
    end
    object qyDetScrapWareId: TStringField
      FieldName = 'ScrapWareId'
      Size = 50
    end
    object qyDetSpoilWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'SpoilWareName'
      Size = 50
      Calculated = True
    end
    object qyDetWasteWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'WasteWareName'
      Size = 50
      Calculated = True
    end
    object qyDetScrapWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'ScrapWareName'
      Size = 50
      Calculated = True
    end
    object qyDetDispatchNo: TStringField
      FieldName = 'DispatchNo'
      Size = 100
    end
    object qyDetDispatchId: TStringField
      FieldName = 'DispatchId'
      Size = 100
    end
    object qyDetOrdinal: TSmallintField
      FieldName = 'Ordinal'
    end
    object qyDetRfNum: TFMTBCDField
      FieldName = 'RfNum'
      Precision = 18
      Size = 5
    end
    object qyDetSaleOrderNo: TStringField
      FieldName = 'SaleOrderNo'
      Size = 100
    end
    object qyDetSaleOrderId: TStringField
      FieldName = 'SaleOrderId'
      Size = 100
    end
    object qyDetbDelTech: TBooleanField
      FieldName = 'bDelTech'
    end
    object qyDetbFirst: TBooleanField
      FieldName = 'bFirst'
    end
    object qyDetbLast: TBooleanField
      FieldName = 'bLast'
    end
  end
  inherited pmLayout: TPopupMenu
    Left = 472
    Top = 288
  end
  inherited cxgrdpmn1: TcxGridPopupMenu
    Left = 432
    Top = 288
  end
  inherited frxHed: TfrxDBDataset
    UserName = #36710#38388#20837#24211#20027#34920
    FieldAliases.Strings = (
      'AutoNo='#33258#21160#20195#21495
      'MoveNo='#21333#21495
      'bSelect='#26159#21542#36873#25321
      'MKindId='#35843#25320#26631#35782
      'MoveDate='#26085#26399
      'OutWare='#21457#20986#20179#24211#32534#21495
      'InWare='#35843#20837#20179#24211#32534#21495
      'AcceptId='#25509#25910#21333#20301#32534#21495
      'SendId='#21457#20986#21333#20301#32534#21495
      'SourceNo='#28304#21495#30721
      'bPrint='#26159#21542#25171#21360
      'PrintNum='#25171#21360#27425#25968
      'SubjoinNo='#28304#21333#21495
      'SubjoinTableId='#28304#34920#32534#21495
      'MakeDate='#21046#21333#26085#26399
      'MakeMan='#21046#21333#20154#32534#21495
      'MakeManName='#21046#21333#20154
      'AuditFlag='#23457#26680#26631#24535
      'AuditMan='#23457#26680#20154#32534#21495
      'AuditManName='#23457#26680#20154
      'AuditDate='#23457#26680#26085#26399
      'bMaxAudit='#26159#21542#23436#25104#23457#26680
      'MaxAuditDate='#26368#21518#23457#26680#26085#26399
      'EditMan='#20462#25913#20154#32534#21495
      'EditManName='#20462#25913#20154
      'EditDate='#20462#25913#26085#26399
      'FinaMan=FinaMan'
      'FinaDate=FinaDate'
      'YearMon=YearMon'
      'PzWord=PzWord'
      'PzNo=PzNo'
      'PzId=PzId'
      'Remark='#22791#27880
      'SendName='#21457#20986#21333#20301
      'AcceptName='#25509#25910#21333#20301
      'InWareName='#35843#20837#20179#24211
      'OutWareName='#21457#20986#20179#24211)
    Left = 288
    Top = 54
  end
  inherited frxDet: TfrxDBDataset
    UserName = #36710#38388#21152#24037#20837#24211#20174#34920
    FieldAliases.Strings = (
      'AutoNo='#33258#21160#20195#21495
      'MoveNo='#21333#21495
      'ItemId='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#20135#21697#35268#26684
      'ItemPic='#22270#21495
      'ItemUnit='#20027#21333#20301
      'SubUnit='#21103#21333#20301
      'ItemPYCode='#25340#38899#30721
      'iFlag='#36716#25442#26631#24535
      'ExchRate='#36716#21270#29575
      'ProType='#23646#24615
      'InProType='#35843#20837#23646#24615
      'Color='#39068#33394
      'InColor='#35843#20837#39068#33394
      'BatchNo='#25209#21495
      'InBatchNo='#35843#20837#25209#21495
      'PlaceNo='#36135#20301
      'InPlaceNo='#35843#20837#36135#20301
      'CompactNo='#21512#21516#21495
      'InCompactNo='#35843#20837#21512#21516#21495
      'ObjectId='#24448#26469#21333#20301#32534#21495
      'InObjectId='#35843#20837#24448#26469#21333#20301#32534#21495
      'SjNo='#21830#26816#21495
      'sOrderNo='#35746#21333#21495
      'TechName='#24037#24207
      'InDate='#20837#24211#26085#26399
      'PState='#29366#24577
      'TempNo='#20020#26102#21495
      'EmpId='#21592#24037#32534#21495
      'EmpName='#21592#24037#22995#21517
      'TopTech='#19978#36947#24037#24207
      'MoveNum='#25968#37327
      'MovePrice='#21333#20215
      'TaxPrice='#21547#31246#20215
      'MoveMoney='#37329#39069
      'SubNum='#21103#25968#37327
      'SubPrice='#21103#21333#20215
      'SubTaxPrice='#21103#21547#31246#20215
      'SubMoney='#21103#37329#39069
      'SpoilNum='#19981#33391#21697#25968#37327
      'SpoilPrice='#19981#33391#21697#21333#20215
      'SpoilMoney='#19981#33391#21697#37329#39069
      'WasteNum='#24223#21697#25968#37327
      'WastePrice='#24223#21697#21333#20215
      'WasteMoney='#24223#21697#37329#39069
      'TaxRate='#31246#29575
      'TaxMoney='#31246#39069
      'AllMoney='#20215#31246#21512#35745
      'TopId='#19978#32423#20135#21697#32534#21495
      'TopCode='#19978#32423#20135#21697#20195#21495
      'TopName='#19978#32423#20135#21697#21517#31216
      'TopDosage='#19978#32423#20135#21697#29992#37327
      'CpId='#25104#21697#32534#21495
      'CpCode='#25104#21697#20195#21495
      'CpName='#20135#21697#21517#31216
      'MrpNo=MRP'#21333#21495
      'MrpID=MRP'#20869#30721
      'TicketNo='#27966#24037#21333#21495
      'TicketID='#27966#24037#21333#20869#30721
      'Remark='#22791#27880
      'ObjectName='#24448#26469#21333#20301#21517#31216
      'InObjectName='#35843#20837#24448#26469#21333#20301#21517#31216
      'WareNum='#24211#23384#25968#37327
      'ProOrderNo='#29983#20135#35746#21333#21495
      'ProOrderId='#29983#20135#35746#21333#20869#30721
      'ScrapNum='#26009#24223#25968#37327
      'ScrapPrice='#26009#24223#21333#20215
      'ScrapMoney='#26009#24223#37329#39069
      'SpoilWareId='#19981#33391#21697#20179#24211#32534#21495
      'WasteWareId='#24223#21697#20179#24211#32534#21495
      'ScrapWareId='#26009#24223#20179#24211#32534#21495
      'SpoilWareName='#19981#33391#21697#20179#24211
      'WasteWareName='#24223#21697#20179#24211
      'ScrapWareName='#26009#24223#20179#24211
      'DispatchNo='#27966#24037#21333#21495
      'DispatchId='#27966#24037#21333#20869#30721
      'Ordinal='#24037#24207#21495
      'RfNum='#24341#29992#25968
      'SaleOrderNo='#38144#21806#35746#21333#21495
      'SaleOrderId='#38144#21806#35746#21333#20869#30721
      'bDelTech='#26159#21542#28165#38500#24037#24207
      'bFirst='#39318#36947#24037#24207
      'bLast='#26411#36947#24037#24207)
    Top = 352
  end
  object qyWareNum: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'select sInFo=ItemId+ISNULL(WareId,'#39#39')+ISNULL(ProType,'#39#39')+ISNULL(' +
        'Color,'#39#39')+ISNULL(PlaceNo,'#39#39')+ISNULL(ObjectId,'#39#39')+ISNULL(TechName' +
        ','#39#39'),WareNum from WareStorageTB')
    Left = 160
    Top = 288
  end
  object dxbrpmn1: TdxBarPopupMenu
    BarManager = dxbrmngrBarManage
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxbrbtn1'
      end
      item
        Visible = True
        ItemName = 'dxbrbtn2'
      end>
    UseOwnFont = False
    Left = 840
    Top = 56
  end
  object qyDet2: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qyDet2AfterInsert
    OnCalcFields = qyDet2CalcFields
    Parameters = <>
    SQL.Strings = (
      'select * from ItemMoveDT2TB')
    Left = 120
    Top = 288
    object strngfldDet2AutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 100
    end
    object strngfldDet2MoveNo: TStringField
      FieldName = 'MoveNo'
      Size = 50
    end
    object strngfldDet2ItemId: TStringField
      FieldName = 'ItemId'
      OnChange = strngfldDet2ItemIdChange
      Size = 30
    end
    object strngfldDet2ItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 30
    end
    object strngfldDet2ItemName: TStringField
      FieldName = 'ItemName'
      Size = 100
    end
    object strngfldDet2ItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 100
    end
    object strngfldDet2ItemPic: TStringField
      FieldName = 'ItemPic'
      Size = 100
    end
    object strngfldDet2ItemUnit: TStringField
      FieldName = 'ItemUnit'
      Size = 10
    end
    object strngfldDet2SubUnit: TStringField
      FieldName = 'SubUnit'
      Size = 10
    end
    object strngfldDet2ItemPYCode: TStringField
      FieldName = 'ItemPYCode'
      Size = 50
    end
    object qyDet2iFlag: TIntegerField
      FieldName = 'iFlag'
    end
    object qyDet2ExchRate: TFMTBCDField
      FieldName = 'ExchRate'
      Precision = 19
      Size = 6
    end
    object strngfldDet2ProType: TStringField
      FieldName = 'ProType'
      Size = 100
    end
    object strngfldDet2Color: TStringField
      FieldName = 'Color'
      Size = 100
    end
    object strngfldDet2BatchNo: TStringField
      FieldName = 'BatchNo'
      Size = 30
    end
    object strngfldDet2PlaceNo: TStringField
      FieldName = 'PlaceNo'
      Size = 30
    end
    object strngfldDet2CompactNo: TStringField
      FieldName = 'CompactNo'
      Size = 100
    end
    object strngfldDet2ObjectId: TStringField
      FieldName = 'ObjectId'
      Size = 30
    end
    object strngfldDet2SjNo: TStringField
      FieldName = 'SjNo'
      Size = 30
    end
    object strngfldDet2sOrderNo: TStringField
      FieldName = 'sOrderNo'
      Size = 30
    end
    object strngfldDet2TechName: TStringField
      FieldName = 'TechName'
      Size = 100
    end
    object strngfldDet2InDate: TStringField
      FieldName = 'InDate'
      Size = 30
    end
    object strngfldDet2PState: TStringField
      FieldName = 'PState'
      Size = 30
    end
    object strngfldDet2TempNo: TStringField
      FieldName = 'TempNo'
      Size = 30
    end
    object qyDet2Dosage: TFMTBCDField
      FieldName = 'Dosage'
      Precision = 19
      Size = 6
    end
    object strngfldDet2TopTech: TStringField
      FieldName = 'TopTech'
      Size = 100
    end
    object qyDet2MoveNum: TFMTBCDField
      FieldName = 'MoveNum'
      Precision = 19
      Size = 6
    end
    object qyDet2MovePrice: TFMTBCDField
      FieldName = 'MovePrice'
      Precision = 19
      Size = 6
    end
    object qyDet2TaxPrice: TFMTBCDField
      FieldName = 'TaxPrice'
      Precision = 19
      Size = 6
    end
    object qyDet2MoveMoney: TFMTBCDField
      FieldName = 'MoveMoney'
      Precision = 19
      Size = 6
    end
    object qyDet2SubNum: TFMTBCDField
      FieldName = 'SubNum'
      Precision = 19
      Size = 6
    end
    object qyDet2SubPrice: TFMTBCDField
      FieldName = 'SubPrice'
      Precision = 19
      Size = 6
    end
    object qyDet2SubTaxPrice: TFMTBCDField
      FieldName = 'SubTaxPrice'
      Precision = 19
      Size = 6
    end
    object qyDet2SubMoney: TFMTBCDField
      FieldName = 'SubMoney'
      Precision = 19
      Size = 6
    end
    object strngfldDet2Remark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
    object qyDet2WasteRate: TFMTBCDField
      FieldName = 'WasteRate'
      Precision = 19
      Size = 6
    end
    object strngfldDet2ObjectName: TStringField
      FieldKind = fkCalculated
      FieldName = 'ObjectName'
      Size = 100
      Calculated = True
    end
    object qyDet2WareNum: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'WareNum'
      Calculated = True
    end
    object strngfldDet2DetAutoNo: TStringField
      FieldName = 'DetAutoNo'
      Size = 100
    end
    object qyDet2TaxRate: TFMTBCDField
      FieldName = 'TaxRate'
      Precision = 19
      Size = 6
    end
    object qyDet2TaxMoney: TFMTBCDField
      FieldName = 'TaxMoney'
      Precision = 19
      Size = 6
    end
    object qyDet2AllMoney: TFMTBCDField
      FieldName = 'AllMoney'
      Precision = 19
      Size = 6
    end
    object qyDet2NextTech: TStringField
      FieldName = 'NextTech'
      Size = 100
    end
  end
  object frxDet2: TfrxDBDataset
    UserName = #36710#38388#20837#24211#20174#20174#34920
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoNo='#33258#21160#20195#21495
      'MoveNo='#21333#21495
      'ItemId='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#20135#21697#35268#26684
      'ItemPic='#22270#21495
      'ItemUnit='#20027#21333#20301
      'SubUnit='#21103#21333#20301
      'ItemPYCode='#25340#38899#30721
      'iFlag='#36716#25442#26631#24535
      'ExchRate='#36716#21270#29575
      'ProType='#23646#24615
      'Color='#39068#33394
      'BatchNo='#25209#21495
      'PlaceNo='#36135#20301
      'CompactNo='#21512#21516#21495
      'ObjectId='#24448#26469#21333#20301#32534#21495
      'SjNo='#21830#26816#21495
      'sOrderNo='#35746#21333#21495
      'TechName='#24037#24207
      'InDate='#20837#24211#26085#26399
      'PState='#29366#24577
      'TempNo='#20020#26102#21495
      'Dosage='#29992#37327
      'TopTech='#19978#36947#24037#24207
      'MoveNum='#25968#37327
      'MovePrice='#21333#20215
      'TaxPrice='#21547#31246#20215
      'MoveMoney='#37329#39069
      'SubNum='#21103#25968#37327
      'SubPrice='#21103#21333#20215
      'SubTaxPrice='#21103#21547#31246#20215
      'SubMoney='#21103#37329#39069
      'Remark='#22791#27880
      'WasteRate='#25439#32791#29575
      'ObjectName='#22806#21327#21830#21517#31216
      'WareNum='#24403#21069#24211#23384
      'DetAutoNo='#20174#34920#20869#37096#32534#21495
      'TaxRate='#31246#29575
      'TaxMoney='#31246#39069
      'AllMoney='#24635#37329#39069
      'NextTech='#19979#36947#24037#24207)
    DataSet = qyDet2
    BCDToCurrency = False
    Left = 120
    Top = 352
  end
  object dsDet2: TDataSource
    DataSet = qyDet2
    Left = 120
    Top = 256
  end
  object qyTemp: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Left = 200
    Top = 288
  end
  object PopupMenu1: TPopupMenu
    Left = 472
    Top = 368
    object MenuItem1: TMenuItem
      Caption = #22797#21046#21333#20803#26684
      OnClick = mniNCopyDClick
    end
    object MenuItem2: TMenuItem
      Caption = #31896#36148#35813#21015
      OnClick = mniNCopyLClick
    end
    object MenuItem3: TMenuItem
      Caption = '-'
      Visible = False
    end
    object MenuItem4: TMenuItem
      Caption = #35774#23450#21015#37197#32622
      OnClick = MenuItem4Click
    end
    object MenuItem5: TMenuItem
      Caption = #20445#23384#21015#37197#32622
      OnClick = MenuItem5Click
    end
    object MenuItem6: TMenuItem
      Caption = #28165#38500#21015#37197#32622
      OnClick = MenuItem6Click
    end
  end
  object qyTech: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'select sInfo=ItemId+ISNULL(TechName,'#39#39'),CurePrice,SpoilPrice,Was' +
        'tePrice from ItemTechDTTB')
    Left = 240
    Top = 288
  end
end
