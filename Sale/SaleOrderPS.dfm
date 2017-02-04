inherited SaleOrderFM: TSaleOrderFM
  Caption = #38144#21806#35746#21333
  ClientHeight = 508
  ClientWidth = 1207
  Position = poDesigned
  ExplicitWidth = 1207
  ExplicitHeight = 508
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    Width = 1207
    Height = 32
    TabOrder = 1
    ExplicitWidth = 1207
    ExplicitHeight = 32
    object LabSubmint: TLabel [0]
      Left = 880
      Top = 2
      Width = 7
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -23
      Font.Name = #21326#25991#34892#26999
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited cxLabTitle: TcxLabel
      Caption = #38144#21806#35746#21333
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
    Width = 1207
    Height = 24
    TabOrder = 3
    ExplicitTop = 484
    ExplicitWidth = 1207
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
      Left = 500
      Top = 3
      ExplicitLeft = 500
      ExplicitTop = 3
    end
    inherited Label7: TLabel
      Left = 617
      Top = 3
      ExplicitLeft = 617
      ExplicitTop = 3
    end
    inherited Label8: TLabel
      Left = 791
      Top = 3
      ExplicitLeft = 791
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
      Left = 542
      Top = -1
      ExplicitLeft = 542
      ExplicitTop = -1
    end
    inherited cxEdtAuditDate: TcxDBTextEdit
      Left = 671
      Top = -1
      ExplicitLeft = 671
      ExplicitTop = -1
    end
    inherited cxEdtAuditFlag: TcxDBTextEdit
      Left = 843
      Top = -1
      ExplicitLeft = 843
      ExplicitTop = -1
    end
    inherited cxLabAuditInfo: TcxLabel
      Left = 878
      Top = 0
      ExplicitLeft = 878
      ExplicitTop = 0
    end
  end
  inherited pnlEdit: TPanel
    Top = 78
    Width = 1207
    Height = 99
    ExplicitTop = 78
    ExplicitWidth = 1207
    ExplicitHeight = 99
    object Label11: TLabel [0]
      Left = 26
      Top = 29
      Width = 36
      Height = 13
      Caption = #38144#21806#21592
    end
    object Label12: TLabel [1]
      Left = 38
      Top = 6
      Width = 24
      Height = 13
      Caption = #23458#25143
    end
    object Label13: TLabel [2]
      Left = 423
      Top = 54
      Width = 48
      Height = 13
      Caption = #25910#27454#26041#24335
    end
    object Label10: TLabel [3]
      Left = 14
      Top = 54
      Width = 48
      Height = 13
      Caption = #21457#36135#22320#22336
    end
    object Label15: TLabel [4]
      Left = 400
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
    object Label16: TLabel [5]
      Left = 435
      Top = 6
      Width = 36
      Height = 13
      Caption = #21512#21516#21495
    end
    object Label17: TLabel [6]
      Left = 172
      Top = 29
      Width = 48
      Height = 13
      Caption = #35746#21333#31867#22411
    end
    object lbl1: TLabel [7]
      Left = 411
      Top = 29
      Width = 60
      Height = 13
      Caption = #32852#31995#20154#30005#35805
    end
    object lbl2: TLabel [8]
      Left = 12
      Top = 105
      Width = 48
      Height = 13
      Caption = #26816#32034#21333#25454
    end
    object Label14: TLabel [9]
      Left = 447
      Top = 78
      Width = 24
      Height = 13
      Caption = #22791#27880
    end
    object Label18: TLabel [10]
      Left = 846
      Top = 15
      Width = 24
      Height = 13
      Caption = #36135#21495
      Visible = False
    end
    object Label19: TLabel [11]
      Left = 817
      Top = 42
      Width = 52
      Height = 13
      Caption = #24065#31181'/'#27719#29575
      Visible = False
    end
    object Label20: TLabel [12]
      Left = 295
      Top = 29
      Width = 36
      Height = 13
      Caption = #36127#36131#20154
    end
    object Label21: TLabel [13]
      Left = 14
      Top = 78
      Width = 48
      Height = 13
      Caption = #36816#36755#26041#24335
    end
    object Label23: TLabel [14]
      Left = 175
      Top = 78
      Width = 72
      Height = 13
      Caption = #36816#36153#32467#31639#26041#24335
    end
    object cxBtReqMan: TcxDBButtonEdit [15]
      Left = 66
      Top = 25
      DataBinding.DataField = 'EmpName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxBt1PropertiesButtonClick
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      TabOrder = 0
      Width = 103
    end
    object cxBt2: TcxDBButtonEdit [16]
      Left = 66
      Top = 2
      DataBinding.DataField = 'CustName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxBt2PropertiesButtonClick
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      TabOrder = 1
      Width = 333
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 637
      Top = 2
      TabOrder = 2
      ExplicitLeft = 637
      ExplicitTop = 2
      ExplicitHeight = 70
      Height = 70
      inherited Label1: TLabel
        Left = 13
        Top = 13
        ExplicitLeft = 13
        ExplicitTop = 13
      end
      inherited Label9: TLabel
        Left = 13
        Top = 40
        ExplicitLeft = 13
        ExplicitTop = 40
      end
      inherited cxEdtNo: TcxDBTextEdit
        Left = 43
        Top = 9
        DataBinding.DataField = 'SaleOrderNo'
        Style.IsFontAssigned = True
        ExplicitLeft = 43
        ExplicitTop = 9
      end
      inherited cxdt: TcxDBDateEdit
        Left = 43
        Top = 36
        DataBinding.DataField = 'OrderDate'
        ExplicitLeft = 43
        ExplicitTop = 36
      end
    end
    object cxEdt2: TcxDBTextEdit
      Left = 66
      Top = 50
      DataBinding.DataField = 'SendAdd'
      DataBinding.DataSource = dsHed
      TabOrder = 3
      Width = 333
    end
    object cbbPayMode: TcxDBComboBox
      Left = 475
      Top = 50
      DataBinding.DataField = 'PayMode'
      DataBinding.DataSource = dsHed
      TabOrder = 4
      Width = 150
    end
    object cxEdt1: TcxDBTextEdit
      Left = 475
      Top = 2
      DataBinding.DataField = 'CompactNo'
      DataBinding.DataSource = dsHed
      TabOrder = 5
      Width = 150
    end
    object cbb1: TcxDBComboBox
      Left = 224
      Top = 25
      DataBinding.DataField = 'OrderStyle'
      DataBinding.DataSource = dsHed
      Properties.Items.Strings = (
        #20869#38144
        #22806#36152)
      TabOrder = 6
      Width = 69
    end
    object cxdbtxtdt1: TcxDBTextEdit
      Left = 475
      Top = 25
      DataBinding.DataField = 'CustTel'
      DataBinding.DataSource = dsHed
      TabOrder = 7
      Width = 150
    end
    object cExbbBillFind: TcxExtLookupComboBox
      Left = 66
      Top = 102
      Properties.ButtonGlyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000100000009000000140000001F00000028000000290000
        0022000000180000000B00000002000000000000000000000000000000000000
        00000000000300000013010E045D012209AC02320CDE023C0FF7023C0FF70231
        0CE1012008B4000D03680000001A000000050000000000000000000000000000
        000300000014011D078D074917EC197630FF299746FF3BAF59FF41B35EFF39A3
        55FF26833EFF0B4A1AF1011A069E0000001F0000000400000000000000010000
        000E022009880B5A1EF91F883AFF29A44BFF28A44AFF26A148FF259E46FF2A9F
        49FF30A44EFF2F9A4AFF115F23FC011A069D0000001900000002000000050112
        054D0B501BE52A8E45FF36B25BFF2FB155FF238F42FF125E23FF125D22FF1F88
        3CFF249E46FF259A43FF238F3DFF074515EF000D03650000000A000000090430
        0E9622803BFF4FC274FF4FC474FF308C4CFF247334FFF5F8F5FFF5F8F5FF2277
        33FF1D7F37FF25A147FF239942FF126B26FF012108B1000000160000000B064E
        17CC43AB66FF57CE81FF34884EFF50975FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF4F9E62FF1A7933FF24A046FF177C30FF03330DDE0000001F0000000A0869
        20F06DD297FF5BD58BFF2D7E3FFFFFFFFFFFD1E3D6FFF6F9F7FFF6F9F7FFD1E4
        D6FFFFFFFFFF298D40FF28A94DFF1E8F3BFF034211F600000024000000090B77
        26F08EE4B8FF62DD9CFF277641FF388B4DFF195527FFF3F7F4FFF3F7F4FF145C
        22FF36974DFF177D2EFF2CB053FF209441FF034411F600000022000000060B6A
        24C693DFB8FF7EE9B7FF5EDD9CFF5ADA93FF328B53FFF6F9F7FFF7F9F8FF2B88
        45FF3CC166FF30B95BFF2EB658FF1C893BFF033A10D80000001A00000003094D
        1B8879D09DFFA7F3D5FF67E6AFFF61E1A3FF37915CFFEFF4EFFFEFF5F0FF2D8C
        49FF46C972FF3AC365FF34BB5EFF14782FFF03290BA200000010000000010422
        0C3A369D56E1B8EDD4FF97F1CFFF69E7B2FF4EB882FF2D8847FF2C8E45FF3EAD
        64FF4ACE77FF4ECD78FF34A556FF0A581DE50112055100000006000000000000
        00020A451A6D5EC382F8C1F1DBFFBAF6E0FF92EFC8FF70E6ADFF67E1A1FF72E0
        9FFF7BDD9FFF5DBE7DFF1C7B35F703290C810000000D00000001000000000000
        0000000000020A471B6C3EA75FE199E0B8FFC6F0DDFFD8F8E9FFCAF4DEFF9EE1
        BAFF5EB87BFF1B7432E3042E0E7B0000000C0000000200000000000000000000
        0000000000000000000105240E380C562085107C2DC4119134EF0E8A2FEF0A69
        22C70642158B021A084100000007000000010000000000000000000000000000
        0000000000000000000000000001000000020000000300000005000000050000
        0005000000040000000200000000000000000000000000000000}
      Properties.DropDownRows = 10
      Properties.View = cxgrdDBTableView1
      Properties.KeyFieldNames = #21333#21495
      Properties.ListFieldItem = cxgrdDBTableView1DBColumn4
      Properties.OnChange = cExbbBillFindPropertiesChange
      TabOrder = 8
      Width = 557
    end
    object cxMoRemark: TcxDBMemo
      Left = 475
      Top = 74
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.ScrollBars = ssVertical
      TabOrder = 9
      Visible = False
      Height = 21
      Width = 336
    end
    object cxPupEdtRemark: TcxDBPopupEdit
      Left = 475
      Top = 74
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.PopupControl = cxMoRemark
      TabOrder = 10
      Width = 336
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 875
      Top = 11
      DataBinding.DataField = 'ItemNo'
      DataBinding.DataSource = dsHed
      TabOrder = 11
      Visible = False
      Width = 121
    end
    object cbbCurrName: TcxDBComboBox
      Left = 875
      Top = 38
      DataBinding.DataField = 'CurrName'
      DataBinding.DataSource = dsHed
      TabOrder = 12
      Visible = False
      Width = 80
    end
    object cxExchangeRate: TcxDBTextEdit
      Left = 953
      Top = 38
      DataBinding.DataField = 'ExchangeRate'
      DataBinding.DataSource = dsHed
      TabOrder = 13
      Visible = False
      Width = 48
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 328
      Top = 25
      DataBinding.DataField = 'Principal'
      DataBinding.DataSource = dsHed
      TabOrder = 14
      Width = 70
    end
    object cxcbbTraffMode: TcxDBComboBox
      Left = 66
      Top = 74
      DataBinding.DataField = 'TraffMode'
      DataBinding.DataSource = dsHed
      TabOrder = 15
      Width = 103
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 258
      Top = 74
      DataBinding.DataField = 'TraffPay'
      DataBinding.DataSource = dsHed
      TabOrder = 16
      Width = 141
    end
  end
  inherited pnlBody: TPanel
    Top = 177
    Width = 1207
    Height = 307
    ExplicitTop = 177
    ExplicitWidth = 1207
    ExplicitHeight = 307
    object Label22: TLabel [0]
      Left = 192
      Top = -17
      Width = 60
      Height = 13
      Caption = #32852#31995#20154#30005#35805
    end
    inherited cxPgc: TcxPageControl
      Width = 1207
      Height = 307
      ExplicitWidth = 1207
      ExplicitHeight = 307
      ClientRectBottom = 301
      ClientRectRight = 1201
      inherited cxtbsht1: TcxTabSheet
        ExplicitLeft = 2
        ExplicitTop = 27
        ExplicitWidth = 1199
        ExplicitHeight = 274
        inherited cxgrd: TcxGrid
          Width = 1199
          Height = 274
          OnEnter = cxgrdEnter
          ExplicitWidth = 1199
          ExplicitHeight = 274
          inherited cxgrdtbv: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = cxgrdbclmnOrderNum
              end
              item
                Kind = skSum
                Column = cxgrdbclmnOrderMoney
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
            OptionsBehavior.GoToNextCellOnEnter = False
            OptionsView.CellEndEllipsis = True
            object cxgrdbclmnItemCode: TcxGridDBColumn
              Caption = #20135#21697#20195#21495
              DataBinding.FieldName = 'ItemCode'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Visible = False
                end
                item
                  Default = True
                  Hint = 'Ctrl+F2'#33719#21462#20135#21697#36164#26009
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 16449
              Properties.OnButtonClick = cxgrdbclmnItemCodePropertiesButtonClick
              Width = 89
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
              Width = 99
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
              Width = 42
            end
            object cxgrdbclmnColumn4: TcxGridDBColumn
              Caption = #36716#21270#29575
              DataBinding.FieldName = 'ExchRate'
              Options.Editing = False
              Width = 55
            end
            object cxgrdbclmnColumn5: TcxGridDBColumn
              Caption = #21103#21333#20301
              DataBinding.FieldName = 'SubUnit'
              Options.Editing = False
              Width = 57
            end
            object cxgrdbclmnProType: TcxGridDBColumn
              Caption = #23646#24615
              DataBinding.FieldName = 'ProType'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdbclmnProTypePropertiesButtonClick
              Width = 61
            end
            object cxgrdbclmnColor: TcxGridDBColumn
              Caption = #39068#33394
              DataBinding.FieldName = 'Color'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdbclmnColorPropertiesButtonClick
              Width = 66
            end
            object cxgrdtbvColumn1: TcxGridDBColumn
              Caption = #21512#21516#21495
              DataBinding.FieldName = 'CompactNo'
              Visible = False
              Width = 69
            end
            object cxgrdbclmnOrderNum: TcxGridDBColumn
              Caption = #25968#37327'*'
              DataBinding.FieldName = 'OrderNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnOrderNumPropertiesValidate
              Width = 63
            end
            object cxgrdbclmnColumn6: TcxGridDBColumn
              Caption = #21103#25968#37327
              DataBinding.FieldName = 'SubNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnColumn6PropertiesValidate
              Width = 68
            end
            object cxgrdbclmnOrderPrice: TcxGridDBColumn
              Caption = #21333#20215
              DataBinding.FieldName = 'OrderPrice'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnOrderPricePropertiesValidate
              Width = 62
            end
            object cxgrdbclmnTaxPrice: TcxGridDBColumn
              Caption = #21547#31246#20215
              DataBinding.FieldName = 'TaxPrice'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnTaxPricePropertiesValidate
              Width = 63
            end
            object cxgrdbclmnTaxRate: TcxGridDBColumn
              Caption = #31246#29575'%'
              DataBinding.FieldName = 'TaxRate'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnTaxRatePropertiesValidate
              Width = 59
            end
            object cxgrdbclmnOrderMoney: TcxGridDBColumn
              Caption = #37329#39069
              DataBinding.FieldName = 'OrderMoney'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 75
            end
            object cxgrdbclmnAllMoney: TcxGridDBColumn
              Caption = #20215#31246#21512#35745
              DataBinding.FieldName = 'AllMoney'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 90
            end
            object cxgrdtbvColumn2: TcxGridDBColumn
              Caption = #20132#36135#26085#26399
              DataBinding.FieldName = 'DeliverDate'
              Width = 65
            end
            object cxgrdtbvColumn3: TcxGridDBColumn
              Caption = #24403#21069#24211#23384
              DataBinding.FieldName = 'WareNum'
              Options.Editing = False
            end
            object cxgrdtbvColumn4: TcxGridDBColumn
              Caption = #26159#21542#20572#27490
              DataBinding.FieldName = 'bStop'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Options.Editing = False
              Width = 53
            end
            object cxgrdbclmnRemark: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 94
            end
          end
          object cxgrdDBTableView1: TcxGridDBTableView [1]
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
            OptionsBehavior.IncSearch = True
            OptionsBehavior.PullFocusing = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 35
            object cxgrdDBTableView1DBColumn: TcxGridDBColumn
              DataBinding.FieldName = #26085#26399
              Width = 71
            end
            object cxgrdDBTableView1DBColumn1: TcxGridDBColumn
              DataBinding.FieldName = #21333#20301
              Width = 230
            end
            object cxgrdDBTableView1DBColumn2: TcxGridDBColumn
              DataBinding.FieldName = #21333#21495
              Width = 102
            end
            object cxgrdDBTableView1DBColumn3: TcxGridDBColumn
              DataBinding.FieldName = #21046#21333#20154
              Width = 57
            end
            object cxgrdDBTableView1DBColumn4: TcxGridDBColumn
              DataBinding.FieldName = #20449#24687
              Visible = False
              Width = 132
            end
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
          ItemName = 'btCancel'
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
          ItemName = 'btTemp'
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
      OnClick = btAddLClick
    end
    inherited btDelL: TdxBarLargeButton
      OnClick = btDelLClick
    end
    inherited btFind: TdxBarLargeButton
      OnClick = btFindClick
    end
    inherited btRefer: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btUnCheck: TdxBarLargeButton
      OnClick = btUnCheckClick
    end
    inherited btTemp: TdxBarLargeButton
      Caption = #25805' '#20316
      Hint = #25805' '#20316
      Visible = ivAlways
      ButtonStyle = bsCheckedDropDown
      DropDownMenu = dxbrpmnPera
    end
    object dxBarButton1: TdxBarButton
      Caption = #25552#20132
      Category = 0
      Hint = #25552#20132
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = #21462#28040#25552#20132
      Category = 0
      Hint = #21462#28040#25552#20132
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
  end
  inherited PupBpm: TdxBarPopupMenu
    Left = 880
    Top = 54
  end
  inherited dsHed: TDataSource
    Left = 208
    Top = 54
  end
  inherited qyHed: TADOQuery
    AfterInsert = qyHedAfterInsert
    OnCalcFields = qyHedCalcFields
    SQL.Strings = (
      'select * from SaleOrderHDTB where IsNull(bMaxAudit,0)=0')
    Left = 248
    Top = 54
    object blnfldHedbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyHedSaleOrderNo: TStringField
      FieldName = 'SaleOrderNo'
      Size = 30
    end
    object dtmfldHedOrderDate: TDateTimeField
      FieldName = 'OrderDate'
    end
    object qyHedOrderStyle: TStringField
      FieldName = 'OrderStyle'
      Size = 30
    end
    object qyHedCompactNo: TStringField
      FieldName = 'CompactNo'
      Size = 30
    end
    object qyHedCustId: TStringField
      FieldName = 'CustId'
      OnChange = qyHedCustIdChange
      Size = 30
    end
    object qyHedSendAdd: TStringField
      FieldName = 'SendAdd'
      Size = 200
    end
    object qyHedEmpId: TStringField
      FieldName = 'EmpId'
      Size = 30
    end
    object qyHedSubjoinNo: TStringField
      FieldName = 'SubjoinNo'
    end
    object qyHedPayMode: TStringField
      FieldName = 'PayMode'
      Size = 30
    end
    object qyHedCurrName: TStringField
      FieldName = 'CurrName'
      OnChange = qyHedCurrNameChange
      Size = 30
    end
    object fmtbcdfldHedExchangeRate: TFMTBCDField
      FieldName = 'ExchangeRate'
      Precision = 18
      Size = 5
    end
    object blnfldHedbTax: TBooleanField
      FieldName = 'bTax'
    end
    object qyHedTheme: TStringField
      FieldName = 'Theme'
      Size = 200
    end
    object qyHedFjPath: TStringField
      FieldName = 'FjPath'
      Size = 500
    end
    object qyHedFjName: TStringField
      FieldName = 'FjName'
      Size = 30
    end
    object qyHedRemark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
    object blnfldHedbPrint: TBooleanField
      FieldName = 'bPrint'
    end
    object smlntfldHedPrintNum: TSmallintField
      FieldName = 'PrintNum'
      OnChange = smlntfldHedPrintNumChange
    end
    object dtmfldHedMakeDate: TDateTimeField
      FieldName = 'MakeDate'
    end
    object qyHedMakeMan: TStringField
      FieldName = 'MakeMan'
    end
    object qyHedMakeManName: TStringField
      FieldName = 'MakeManName'
      Size = 30
    end
    object qyHedEditMan: TStringField
      FieldName = 'EditMan'
      Size = 30
    end
    object qyHedEditManName: TStringField
      FieldName = 'EditManName'
      Size = 30
    end
    object dtmfldHedEditDate: TDateTimeField
      FieldName = 'EditDate'
    end
    object smlntfldHedAuditFlag: TSmallintField
      FieldName = 'AuditFlag'
    end
    object blnfldHedbMaxAudit: TBooleanField
      FieldName = 'bMaxAudit'
    end
    object qyHedAuditManName: TStringField
      FieldName = 'AuditManName'
      Size = 50
    end
    object qyHedAuditDate: TStringField
      FieldName = 'AuditDate'
      Size = 100
    end
    object dtmfldHedMaxAuditDate: TDateTimeField
      FieldName = 'MaxAuditDate'
    end
    object qyHedCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CustName'
      Size = 50
      Calculated = True
    end
    object qyHedEmpName: TStringField
      FieldKind = fkCalculated
      FieldName = 'EmpName'
      Size = 50
      Calculated = True
    end
    object qyHedAutoId: TLargeintField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object strngfldHedCustTel: TStringField
      FieldKind = fkCalculated
      FieldName = 'CustTel'
      Size = 50
      Calculated = True
    end
    object qyHedbStop: TBooleanField
      FieldName = 'bStop'
    end
    object qyHedbAllSend: TBooleanField
      FieldName = 'bAllSend'
    end
    object qyHedbAllOut: TBooleanField
      FieldName = 'bAllOut'
    end
    object qyHedItemNo: TStringField
      FieldName = 'ItemNo'
      Size = 100
    end
    object qyHedbSubmit: TBooleanField
      FieldName = 'bSubmit'
    end
    object qyHedCustCode: TStringField
      FieldKind = fkCalculated
      FieldName = 'CustCode'
      Size = 100
      Calculated = True
    end
    object qyHedTraffPay: TWideStringField
      FieldName = 'TraffPay'
      Size = 50
    end
    object qyHedPrincipal: TStringField
      FieldKind = fkCalculated
      FieldName = 'Principal'
      Size = 50
      Calculated = True
    end
    object qyHedTraffMode: TWideStringField
      FieldName = 'TraffMode'
      OnChange = qyHedTraffModeChange
      Size = 50
    end
  end
  inherited qyDet: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyDetAfterInsert
    OnCalcFields = qyDetCalcFields
    SQL.Strings = (
      'select * from SaleOrderDTTB')
    object qyDetItemPYCode: TStringField
      FieldName = 'ItemPYCode'
      Size = 50
    end
    object blnfldDetbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyDetItemID: TStringField
      FieldName = 'ItemID'
      OnChange = qyDetItemIDChange
      Size = 30
    end
    object qyDetsColor: TStringField
      FieldName = 'sColor'
      Size = 50
    end
    object qyDetProType: TStringField
      FieldName = 'ProType'
      Size = 100
    end
    object fmtbcdfldDetSubNum: TFMTBCDField
      FieldName = 'SubNum'
      Precision = 18
      Size = 5
    end
    object qyDetRemark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
    object fmtbcdfldDetOrderNum: TFMTBCDField
      FieldName = 'OrderNum'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldDetTaxRate: TFMTBCDField
      FieldName = 'TaxRate'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldDetTaxPrice: TFMTBCDField
      FieldName = 'TaxPrice'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldDetTaxMoney: TFMTBCDField
      FieldName = 'TaxMoney'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldDetOrderMoney: TFMTBCDField
      FieldName = 'OrderMoney'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldDetSubPrice: TFMTBCDField
      FieldName = 'SubPrice'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldDetSubTaxPrice: TFMTBCDField
      FieldName = 'SubTaxPrice'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldDetSubMoney: TFMTBCDField
      FieldName = 'SubMoney'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldDetAllMoney: TFMTBCDField
      FieldName = 'AllMoney'
      Precision = 18
      Size = 5
    end
    object blnfldDetbTax: TBooleanField
      FieldName = 'bTax'
    end
    object fmtbcdfldDetOrderPrice: TFMTBCDField
      FieldName = 'OrderPrice'
      Precision = 18
      Size = 5
    end
    object qyDetSaleOrderNo: TStringField
      FieldName = 'SaleOrderNo'
      Size = 30
    end
    object qyDetAutoID: TLargeintField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object qyDetItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 50
    end
    object qyDetItemName: TStringField
      FieldName = 'ItemName'
      Size = 100
    end
    object qyDetItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 100
    end
    object qyDetItemPic: TStringField
      FieldName = 'ItemPic'
      Size = 100
    end
    object qyDetItemUnit: TStringField
      FieldName = 'ItemUnit'
      Size = 10
    end
    object qyDetSubUnit: TStringField
      FieldName = 'SubUnit'
      Size = 10
    end
    object qyDetCompactNo: TStringField
      FieldName = 'CompactNo'
      Size = 100
    end
    object qyDetDeliverDate: TDateTimeField
      FieldName = 'DeliverDate'
    end
    object qyDetAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 50
    end
    object smlntfldDetiFlag: TSmallintField
      FieldName = 'iFlag'
    end
    object fmtbcdfldDetExchRate: TFMTBCDField
      FieldName = 'ExchRate'
      Precision = 18
      Size = 9
    end
    object fltfldDetWareNum: TFloatField
      FieldKind = fkCalculated
      FieldName = 'WareNum'
      Calculated = True
    end
    object qyDetbStop: TBooleanField
      FieldName = 'bStop'
    end
    object qyDetbAllSend: TBooleanField
      FieldName = 'bAllSend'
    end
    object qyDetbAllOut: TBooleanField
      FieldName = 'bAllOut'
    end
    object qyDetColor: TStringField
      FieldName = 'Color'
      Size = 50
    end
    object qyDetFTaxMoney: TFMTBCDField
      FieldName = 'FTaxMoney'
      Precision = 18
      Size = 5
    end
    object qyDetFOrderMoney: TFMTBCDField
      FieldName = 'FOrderMoney'
      Precision = 18
      Size = 5
    end
    object qyDetFAllMoney: TFMTBCDField
      FieldName = 'FAllMoney'
      Precision = 18
      Size = 5
    end
    object qyDetFOrderPrice: TFMTBCDField
      FieldName = 'FOrderPrice'
      Precision = 18
      Size = 5
    end
    object qyDetFTaxPrice: TFMTBCDField
      FieldName = 'FTaxPrice'
      Precision = 18
      Size = 5
    end
    object qyDetExchangeRate: TFMTBCDField
      FieldName = 'ExchangeRate'
      Precision = 19
      Size = 6
    end
  end
  inherited pmLayout: TPopupMenu
    OnPopup = pmLayoutPopup
    Left = 472
    Top = 288
    object N1: TMenuItem [1]
      Caption = #22797#21046#35813#34892
      Visible = False
      OnClick = N1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object NOneStop: TMenuItem
      Caption = #21333#26465#20572#27490
      OnClick = NOneStopClick
    end
    object NAllStop: TMenuItem
      Caption = #25972#21333#20572#27490
      OnClick = NAllStopClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object NSaleSender: TMenuItem
      Caption = #38144#21806#21457#36135#21333
      OnClick = NSaleSenderClick
    end
    object NSaleOut: TMenuItem
      Caption = #38144#21806#20986#24211#21333
      OnClick = NSaleOutClick
    end
  end
  inherited cxgrdpmn1: TcxGridPopupMenu
    Left = 432
    Top = 288
  end
  inherited frxHed: TfrxDBDataset
    UserName = #38144#21806#35746#21333#20027#34920
    FieldAliases.Strings = (
      'bSelect='#26159#21542#36873#25321
      'SaleOrderNo='#38144#21806#35746#21333#21495
      'OrderDate='#26085#26399
      'OrderStyle='#38144#21806#31867#22411
      'CompactNo='#21512#21516#21495
      'CustId='#23458#25143#32534#21495
      'SendAdd='#21457#36135#22320#22336
      'EmpId='#38144#21806#21592#32534#21495
      'SubjoinNo='#28304#21333#21495
      'PayMode='#25910#27454#26041#24335
      'CurrName='#24065#31181
      'ExchangeRate='#27719#29575
      'bTax='#26159#21542#21547#31246
      'Theme='#20027#39064
      'FjPath='#38468#20214#36335#24452
      'FjName='#38468#20214#21517
      'Remark='#22791#27880
      'bPrint='#26159#21542#25171#21360
      'PrintNum='#25171#21360#27425#25968
      'MakeDate='#21046#21333#26085#26399
      'MakeMan='#21046#21333#20154#32534#21495
      'MakeManName='#21046#21333#20154
      'EditMan='#20462#25913#20154#32534#21495
      'EditManName='#20462#25913#20154
      'EditDate='#20462#25913#26085#26399
      'AuditFlag='#23457#26680#26631#24535
      'bMaxAudit='#26159#21542#23436#25104#23457#26680
      'AuditManName='#23457#26680#20154
      'AuditDate='#23457#26680#26085#26399
      'MaxAuditDate='#26368#21518#23457#26680#26085#26399
      'CustName='#23458#25143#21517#31216
      'EmpName='#38144#21806#21592
      'AutoId='#33258#21160#32534#21495
      'CustTel='#32852#31995#20154#30005#35805
      'bStop='#26159#21542#25972#21333#20572#27490
      'bAllSend='#26159#21542#21457#23436#36135
      'bAllOut='#26159#21542#20986#23436#24211
      'ItemNo='#36135#21495
      'bSubmit='#26159#21542#25552#20132
      'CustCode='#23458#25143#20195#21495
      'TraffMode='#36816#36755#26041#24335
      'TraffPay='#36816#36153#32467#31639#26041#24335
      'Principal='#36127#36131#20154)
    Left = 288
    Top = 54
  end
  inherited frxDet: TfrxDBDataset
    UserName = #38144#21806#35746#21333#20174#34920
    FieldAliases.Strings = (
      'ItemPYCode='#25340#38899#30721
      'bSelect='#26159#21542#36873#25321
      'ItemID='#20135#21697#32534#21495
      'sColor=sColor'
      'ProType='#23646#24615
      'SubNum='#21103#25968#37327
      'Remark='#22791#27880
      'OrderNum='#20027#25968#37327
      'TaxRate='#31246#29575
      'TaxPrice='#21547#31246#20215
      'TaxMoney='#31246#39069
      'OrderMoney='#20027#37329#39069
      'SubPrice='#21103#21333#20215
      'SubTaxPrice='#21103#21547#31246#20215
      'SubMoney='#21103#37329#39069
      'AllMoney='#20215#31246#21512#35745
      'bTax='#26159#21542#21547#31246
      'OrderPrice='#20027#21333#20215
      'SaleOrderNo='#38144#21806#35746#21333#21495
      'AutoID='#33258#21160#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#20135#21697#35268#26684
      'ItemPic='#22270#21495
      'ItemUnit='#20027#21333#20301
      'SubUnit='#21103#21333#20301
      'CompactNo='#21512#21516#21495
      'DeliverDate='#20132#36135#26085#26399
      'AutoNo='#33258#21160#20195#21495
      'iFlag='#36716#25442#26631#24535
      'ExchRate='#36716#21270#29575
      'WareNum='#24211#23384#25968#37327
      'bStop='#26159#21542#20572#27490
      'bAllSend='#26159#21542#24050#21457#36135
      'bAllOut='#26159#21542#24050#20986#24211
      'Color='#39068#33394
      'FTaxMoney=FTaxMoney'
      'FOrderMoney=FOrderMoney'
      'FAllMoney=FAllMoney'
      'FOrderPrice=FOrderPrice'
      'FTaxPrice=FTaxPrice'
      'ExchangeRate='#27719#29575)
    Top = 320
  end
  object qySalePrice: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select * from SalePriceTB')
    Left = 120
    Top = 288
  end
  object qyFind: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'exec prBillFind '#39'SaleOut'#39)
    Left = 160
    Top = 288
    object qyFind日期: TDateTimeField
      FieldName = #26085#26399
    end
    object qyFind单位: TStringField
      FieldName = #21333#20301
      Size = 100
    end
    object qyFind单号: TStringField
      FieldName = #21333#21495
    end
    object qyFind制单人: TStringField
      FieldName = #21046#21333#20154
      Size = 30
    end
    object qyFind信息: TStringField
      FieldName = #20449#24687
      ReadOnly = True
      Size = 158
    end
  end
  object dsFind: TDataSource
    DataSet = qyFind
    Left = 160
    Top = 256
  end
  object dxbrpmnPera: TdxBarPopupMenu
    BarManager = dxbrmngrBarManage
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end>
    ItemOptions.ShowDescriptions = False
    UseOwnFont = False
    Left = 552
    Top = 48
  end
end
