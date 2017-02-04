inherited ProOrderFM: TProOrderFM
  Caption = #29983#20135#35746#21333
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    TabOrder = 1
    inherited cxLabTitle: TcxLabel
      Caption = #29983#20135#35746#21333
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
    TabOrder = 3
  end
  inherited pnlEdit: TPanel
    Height = 63
    TabOrder = 5
    ExplicitHeight = 63
    object lbl1: TLabel [0]
      Left = 38
      Top = 5
      Width = 24
      Height = 13
      Caption = #35828#26126
    end
    object lbl2: TLabel [1]
      Left = 14
      Top = 40
      Width = 48
      Height = 13
      Caption = #26816#32034#21333#25454
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 439
      ExplicitLeft = 439
      ExplicitWidth = 183
      ExplicitHeight = 57
      Height = 57
      Width = 183
      inherited Label1: TLabel
        Left = 10
        ExplicitLeft = 10
      end
      inherited Label9: TLabel
        Left = 10
        Top = 36
        ExplicitLeft = 10
        ExplicitTop = 36
      end
      inherited cxEdtNo: TcxDBTextEdit
        DataBinding.DataField = 'ProOrderNo'
        Style.IsFontAssigned = True
      end
      inherited cxdt: TcxDBDateEdit
        Top = 32
        DataBinding.DataField = 'MrpDate'
        ExplicitTop = 32
      end
    end
    object cxMoRemark: TcxDBMemo
      Left = 70
      Top = 1
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.ScrollBars = ssVertical
      TabOrder = 1
      Visible = False
      Height = 21
      Width = 338
    end
    object cxPupEdtRemark: TcxDBPopupEdit
      Left = 68
      Top = 1
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.PopupControl = cxMoRemark
      TabOrder = 2
      Width = 340
    end
    object cExbbBillFind: TcxExtLookupComboBox
      Left = 68
      Top = 36
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
      TabOrder = 3
      Width = 340
    end
  end
  inherited pnlBody: TPanel
    Top = 139
    Height = 374
    ExplicitTop = 139
    ExplicitHeight = 374
    inherited cxPgc: TcxPageControl
      Height = 374
      ExplicitHeight = 374
      ClientRectBottom = 368
      inherited cxtbsht1: TcxTabSheet
        Caption = '  '#20998#26512#20135#21697'  '
        ExplicitLeft = 2
        ExplicitTop = 27
        ExplicitWidth = 1036
        ExplicitHeight = 341
        inherited cxgrd: TcxGrid
          Height = 341
          ExplicitHeight = 341
          inherited cxgrdtbv: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = #21512#35745':0'
                Kind = skCount
                Column = cxgrdtbvItemCode
              end
              item
                Kind = skSum
                Column = cxgrdtbvProduceNum
              end
              item
                Kind = skSum
                Column = cxgrdtbvAdjustNum
              end
              item
                Kind = skSum
                Column = cxgrdtbvFinalNum
              end
              item
                Kind = skSum
                Column = cxgrdtbvStorageNum
              end>
            object cxgrdtbvItemCode: TcxGridDBColumn
              Caption = #20135#21697#20195#21495
              DataBinding.FieldName = 'ItemCode'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdtbvItemCodePropertiesButtonClick
              Width = 88
            end
            object cxgrdtbvItemName: TcxGridDBColumn
              Caption = #20135#21697#21517#31216
              DataBinding.FieldName = 'ItemName'
              Options.Editing = False
              Width = 144
            end
            object cxgrdtbvItemSpc: TcxGridDBColumn
              Caption = #35268#26684
              DataBinding.FieldName = 'ItemSpc'
              Options.Editing = False
              Width = 80
            end
            object cxgrdtbvItemPic: TcxGridDBColumn
              Caption = #20135#21697#22270#21495
              DataBinding.FieldName = 'ItemPic'
              Visible = False
              Options.Editing = False
              Width = 100
            end
            object cxgrdtbvColumn1: TcxGridDBColumn
              Caption = #26448#36136
              DataBinding.FieldName = 'Material'
              Visible = False
              Options.Editing = False
              Width = 87
            end
            object cxgrdtbvItemUnit: TcxGridDBColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'ItemUnit'
              Options.Editing = False
              Width = 32
            end
            object cxgrdtbvSubUnit: TcxGridDBColumn
              Caption = #21103#21333#20301
              DataBinding.FieldName = 'SubUnit'
              Visible = False
              Options.Editing = False
              Width = 100
            end
            object cxgrdtbvExchRate: TcxGridDBColumn
              Caption = #36716#21270#29575
              DataBinding.FieldName = 'ExchRate'
              Visible = False
              Options.Editing = False
              Width = 100
            end
            object cxgrdtbvProType: TcxGridDBColumn
              Caption = #23646#24615
              DataBinding.FieldName = 'ProType'
              Options.Editing = False
              Width = 70
            end
            object cxgrdtbvsColor: TcxGridDBColumn
              Caption = #39068#33394
              DataBinding.FieldName = 'Color'
              Options.Editing = False
              Width = 73
            end
            object cxgrdtbvCompactNO: TcxGridDBColumn
              Caption = #21512#21516#21495
              DataBinding.FieldName = 'CompactNO'
              Options.Editing = False
              Width = 100
            end
            object cxgrdtbvProduceNum: TcxGridDBColumn
              Caption = #29983#20135#25968#37327
              DataBinding.FieldName = 'ProduceNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 85
            end
            object cxgrdtbvAdjustNum: TcxGridDBColumn
              Caption = #35843#25972#25968#37327
              DataBinding.FieldName = 'AdjustNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdtbvAdjustNumPropertiesValidate
              Width = 72
            end
            object cxgrdtbvFinalNum: TcxGridDBColumn
              Caption = #26368#32456#25968#37327
              DataBinding.FieldName = 'FinalNum'
              Width = 77
            end
            object cxgrdtbvStorageNum: TcxGridDBColumn
              Caption = #24211#23384#25968#37327
              DataBinding.FieldName = 'WareNum'
              Options.Editing = False
              Width = 79
            end
            object cxgrdtbvColumn2: TcxGridDBColumn
              Caption = 'Bom'#24314#31435
              DataBinding.FieldName = 'bBom'
              Options.Editing = False
              Width = 68
            end
            object cxgrdtbvRemark: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Options.Editing = False
              Width = 100
            end
          end
          object cxgrdDBTableView1: TcxGridDBTableView [1]
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.PriorPage.Visible = True
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
            Navigator.Visible = True
            DataController.DataSource = dsFind
            DataController.KeyFieldNames = #21333#21495
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 35
            object cxgrdDBTableView1DBColumn: TcxGridDBColumn
              DataBinding.FieldName = #26085#26399
              Width = 62
            end
            object cxgrdDBTableView1Column1: TcxGridDBColumn
              DataBinding.FieldName = #21333#21495
              Width = 106
            end
            object cxgrdDBTableView1DBColumn3: TcxGridDBColumn
              DataBinding.FieldName = #21046#21333#20154
              Width = 69
            end
            object cxgrdDBTableView1DBColumn4: TcxGridDBColumn
              DataBinding.FieldName = #20449#24687
              Visible = False
              Width = 280
            end
          end
        end
      end
      object cxTabSheet1: TcxTabSheet
        Caption = '  '#29983#20135#25104#21697' '
        ImageIndex = 1
        object cxgrdPro: TcxGrid
          Left = 0
          Top = 0
          Width = 1036
          Height = 341
          Align = alClient
          TabOrder = 0
          object cxgrdbtblvwPro: TcxGridDBTableView
            PopupMenu = pmLayout
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
            DataController.DataSource = dsPro
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = #21512#35745':0'
                Kind = skCount
                Column = cxGridDBColumn1
              end
              item
                Kind = skSum
                Column = cxGridDBColumn11
              end
              item
                Kind = skSum
                Column = cxGridDBColumn12
              end
              item
                Kind = skSum
                Column = cxGridDBColumn13
              end
              item
                Kind = skSum
                Column = cxGridDBColumn14
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.PullFocusing = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Editing = False
            OptionsView.NoDataToDisplayInfoText = #24658#25463#36719#20214
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 35
            OnCustomDrawIndicatorCell = cxgrdbtblvwProCustomDrawIndicatorCell
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = #20135#21697#20195#21495
              DataBinding.FieldName = 'ItemCode'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBColumn1PropertiesButtonClick
              Options.Editing = False
              Width = 88
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = #20135#21697#21517#31216
              DataBinding.FieldName = 'ItemName'
              Options.Editing = False
              Width = 144
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = #35268#26684
              DataBinding.FieldName = 'ItemSpc'
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = #20135#21697#22270#21495
              DataBinding.FieldName = 'ItemPic'
              Visible = False
              Options.Editing = False
              Width = 100
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'ItemUnit'
              Options.Editing = False
              Width = 32
            end
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = #21103#21333#20301
              DataBinding.FieldName = 'SubUnit'
              Visible = False
              Options.Editing = False
              Width = 100
            end
            object cxGridDBColumn7: TcxGridDBColumn
              Caption = #36716#21270#29575
              DataBinding.FieldName = 'ExchRate'
              Visible = False
              Options.Editing = False
              Width = 100
            end
            object cxgrdbtblvwProColumn4: TcxGridDBColumn
              Caption = #38144#21806#35746#21333#21495
              DataBinding.FieldName = 'SaleOrderNo'
              Options.Editing = False
              Width = 83
            end
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = #23646#24615
              DataBinding.FieldName = 'ProType'
              Width = 89
            end
            object cxGridDBColumn9: TcxGridDBColumn
              Caption = #39068#33394
              DataBinding.FieldName = 'Color'
              Width = 62
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = #21512#21516#21495
              DataBinding.FieldName = 'CompactNO'
              Visible = False
              Width = 100
            end
            object cxGridDBColumn11: TcxGridDBColumn
              Caption = #29983#20135#25968#37327
              DataBinding.FieldName = 'ProduceNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Options.Editing = False
              Width = 85
            end
            object cxGridDBColumn12: TcxGridDBColumn
              Caption = #35843#25972#25968#37327
              DataBinding.FieldName = 'AdjustNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxGridDBColumn12PropertiesValidate
              Width = 72
            end
            object cxGridDBColumn14: TcxGridDBColumn
              Caption = #24211#23384#25968#37327
              DataBinding.FieldName = 'WareNum'
              Options.Editing = False
              Width = 79
            end
            object cxgrdbtblvwProColumn1: TcxGridDBColumn
              Caption = #21487#29992#24211#23384
              DataBinding.FieldName = 'CanUseNum'
              Options.Editing = False
              Width = 80
            end
            object cxgrdbtblvwProColumn2: TcxGridDBColumn
              Caption = #20351#29992#24211#23384
              DataBinding.FieldName = 'UseNum'
              Options.Editing = False
              Width = 78
            end
            object cxGridDBColumn13: TcxGridDBColumn
              Caption = #26368#32456#25968#37327
              DataBinding.FieldName = 'FinalNum'
              Options.Editing = False
              Width = 77
            end
            object cxgrdbtblvwProColumn3: TcxGridDBColumn
              Caption = #20998#26512#32467#26524
              DataBinding.FieldName = 'MRPResult'
              Options.Editing = False
              Width = 138
            end
            object cxGridDBColumn15: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 100
            end
          end
          object cxgrdlvl1: TcxGridLevel
            GridView = cxgrdbtblvwPro
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = '   '#29983#20135#21322#25104#21697'  '
        ImageIndex = 2
        object cxgrdBcp: TcxGrid
          Left = 0
          Top = 0
          Width = 1036
          Height = 341
          Align = alClient
          TabOrder = 0
          object cxgrdbtblvwBcp: TcxGridDBTableView
            PopupMenu = pmLayout
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
            DataController.DataSource = dsBcp
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = #21512#35745':0'
                Kind = skCount
                Column = cxGridDBColumn16
              end
              item
                Kind = skSum
                Column = cxGridDBColumn26
              end
              item
                Kind = skSum
                Column = cxGridDBColumn27
              end
              item
                Kind = skSum
                Column = cxGridDBColumn30
              end
              item
                Kind = skSum
                Column = cxGridDBColumn31
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
            OptionsView.IndicatorWidth = 35
            OnCustomDrawIndicatorCell = cxgrdbtblvwBcpCustomDrawIndicatorCell
            object cxGridDBColumn16: TcxGridDBColumn
              Caption = #20135#21697#20195#21495
              DataBinding.FieldName = 'ItemCode'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Width = 88
            end
            object cxGridDBColumn17: TcxGridDBColumn
              Caption = #20135#21697#21517#31216
              DataBinding.FieldName = 'ItemName'
              Options.Editing = False
              Width = 144
            end
            object cxGridDBColumn18: TcxGridDBColumn
              Caption = #35268#26684
              DataBinding.FieldName = 'ItemSpc'
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn19: TcxGridDBColumn
              Caption = #20135#21697#22270#21495
              DataBinding.FieldName = 'ItemPic'
              Visible = False
              Options.Editing = False
              Width = 100
            end
            object cxGridDBColumn20: TcxGridDBColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'ItemUnit'
              Options.Editing = False
              Width = 32
            end
            object cxGridDBColumn21: TcxGridDBColumn
              Caption = #21103#21333#20301
              DataBinding.FieldName = 'SubUnit'
              Visible = False
              Options.Editing = False
              Width = 100
            end
            object cxGridDBColumn22: TcxGridDBColumn
              Caption = #36716#21270#29575
              DataBinding.FieldName = 'ExchRate'
              Visible = False
              Options.Editing = False
              Width = 100
            end
            object cxGridDBColumn23: TcxGridDBColumn
              Caption = #23646#24615
              DataBinding.FieldName = 'ProType'
              Width = 76
            end
            object cxGridDBColumn24: TcxGridDBColumn
              Caption = #39068#33394
              DataBinding.FieldName = 'Color'
              Width = 74
            end
            object cxGridDBColumn25: TcxGridDBColumn
              Caption = #21512#21516#21495
              DataBinding.FieldName = 'CompactNO'
              Visible = False
              Width = 100
            end
            object cxGridDBColumn26: TcxGridDBColumn
              Caption = #29983#20135#25968#37327
              DataBinding.FieldName = 'ProduceNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Options.Editing = False
              Width = 85
            end
            object cxGridDBColumn27: TcxGridDBColumn
              Caption = #35843#25972#25968#37327
              DataBinding.FieldName = 'AdjustNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxGridDBColumn27PropertiesValidate
              Width = 72
            end
            object cxGridDBColumn28: TcxGridDBColumn
              Caption = #21487#29992#24211#23384
              DataBinding.FieldName = 'CanUseNum'
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn29: TcxGridDBColumn
              Caption = #20351#29992#24211#23384
              DataBinding.FieldName = 'UseNum'
              Options.Editing = False
              Width = 78
            end
            object cxGridDBColumn30: TcxGridDBColumn
              Caption = #26368#32456#25968#37327
              DataBinding.FieldName = 'FinalNum'
              Options.Editing = False
              Width = 77
            end
            object cxGridDBColumn31: TcxGridDBColumn
              Caption = #24211#23384#25968#37327
              DataBinding.FieldName = 'WareNum'
              Options.Editing = False
              Width = 79
            end
            object cxgrdbtblvwBcpColumn1: TcxGridDBColumn
              Caption = #20998#26512#32467#26524
              DataBinding.FieldName = 'MRPResult'
              Options.Editing = False
              Width = 83
            end
            object cxGridDBColumn32: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 100
            end
          end
          object cxgrdlvl2: TcxGridLevel
            GridView = cxgrdbtblvwBcp
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = '  '#29289#26009#27719#24635'  '
        ImageIndex = 3
        object cxgrdMatSum: TcxGrid
          Left = 0
          Top = 0
          Width = 1036
          Height = 341
          Align = alClient
          TabOrder = 0
          object cxgrdbtblvwMat: TcxGridDBTableView
            PopupMenu = pmLayout
            OnDblClick = cxgrdbtblvwMatDblClick
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
            DataController.DataSource = dsMat
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = #21512#35745':0'
                Kind = skCount
                Column = cxGridDBColumn33
              end
              item
                Kind = skSum
                Column = cxGridDBColumn43
              end
              item
                Kind = skSum
                Column = cxGridDBColumn44
              end
              item
                Kind = skSum
                Column = cxGridDBColumn47
              end
              item
                Kind = skSum
                Column = cxGridDBColumn48
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
            OptionsView.IndicatorWidth = 35
            OnCustomDrawIndicatorCell = cxgrdbtblvwMatCustomDrawIndicatorCell
            object cxGridDBColumn33: TcxGridDBColumn
              Caption = #20135#21697#20195#21495
              DataBinding.FieldName = 'ItemCode'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Width = 88
            end
            object cxGridDBColumn34: TcxGridDBColumn
              Caption = #20135#21697#21517#31216
              DataBinding.FieldName = 'ItemName'
              Options.Editing = False
              Width = 144
            end
            object cxGridDBColumn35: TcxGridDBColumn
              Caption = #35268#26684
              DataBinding.FieldName = 'ItemSpc'
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn36: TcxGridDBColumn
              Caption = #20135#21697#22270#21495
              DataBinding.FieldName = 'ItemPic'
              Visible = False
              Options.Editing = False
              Width = 100
            end
            object cxGridDBColumn37: TcxGridDBColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'ItemUnit'
              Options.Editing = False
              Width = 32
            end
            object cxGridDBColumn38: TcxGridDBColumn
              Caption = #21103#21333#20301
              DataBinding.FieldName = 'SubUnit'
              Visible = False
              Options.Editing = False
              Width = 100
            end
            object cxGridDBColumn39: TcxGridDBColumn
              Caption = #36716#21270#29575
              DataBinding.FieldName = 'ExchRate'
              Visible = False
              Options.Editing = False
              Width = 100
            end
            object cxGridDBColumn40: TcxGridDBColumn
              Caption = #23646#24615
              DataBinding.FieldName = 'ProType'
              Width = 80
            end
            object cxGridDBColumn41: TcxGridDBColumn
              Caption = #39068#33394
              DataBinding.FieldName = 'Color'
              Width = 70
            end
            object cxGridDBColumn42: TcxGridDBColumn
              Caption = #21512#21516#21495
              DataBinding.FieldName = 'CompactNO'
              Visible = False
              Width = 100
            end
            object cxGridDBColumn43: TcxGridDBColumn
              Caption = #29983#20135#25968#37327
              DataBinding.FieldName = 'ProduceNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Options.Editing = False
              Width = 85
            end
            object cxGridDBColumn44: TcxGridDBColumn
              Caption = #35843#25972#25968#37327
              DataBinding.FieldName = 'AdjustNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxGridDBColumn44PropertiesValidate
              Width = 72
            end
            object cxGridDBColumn48: TcxGridDBColumn
              Caption = #24211#23384#25968#37327
              DataBinding.FieldName = 'WareNum'
              Options.Editing = False
              Width = 79
            end
            object cxGridDBColumn45: TcxGridDBColumn
              Caption = #21487#29992#24211#23384
              DataBinding.FieldName = 'CanUseNum'
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn46: TcxGridDBColumn
              Caption = #20351#29992#24211#23384
              DataBinding.FieldName = 'UseNum'
              Options.Editing = False
              Width = 78
            end
            object cxGridDBColumn47: TcxGridDBColumn
              Caption = #26368#32456#25968#37327
              DataBinding.FieldName = 'FinalNum'
              Options.Editing = False
              Width = 77
            end
            object cxgrdbtblvwMatColumn1: TcxGridDBColumn
              Caption = #20998#26512#32467#26524
              DataBinding.FieldName = 'MRPResult'
              Options.Editing = False
              Width = 122
            end
            object cxgrdbtblvwMatColumn2: TcxGridDBColumn
              Caption = #37319#36141#26041#24335
              DataBinding.FieldName = 'StockMode'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                #25353#21333
                #27719#24635)
              Width = 65
            end
            object cxgrdbtblvwMatColumn3: TcxGridDBColumn
              Caption = #35831#36141#21333#21495
              DataBinding.FieldName = 'ReqNo'
              Options.Editing = False
              Width = 73
            end
            object cxGridDBColumn49: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 100
            end
          end
          object cxgrdlvl3: TcxGridLevel
            GridView = cxgrdbtblvwMat
          end
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = '  '#29983#20135#24037#33402'  '
        ImageIndex = 4
        object cxgrdTech: TcxGrid
          Left = 0
          Top = 0
          Width = 1036
          Height = 341
          Align = alClient
          TabOrder = 0
          object cxgrdbtblvwTech: TcxGridDBTableView
            PopupMenu = pmLayout
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
            DataController.DataSource = dsTech
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = #21512#35745':0'
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
              end
              item
                Kind = skSum
                Column = cxgrdbtblvwTechFinalNum
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.PullFocusing = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Editing = False
            OptionsView.NoDataToDisplayInfoText = #24658#25463#36719#20214
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 35
            OnCustomDrawIndicatorCell = cxgrdbtblvwTechCustomDrawIndicatorCell
            object cxgrdbtblvwTechItemCode: TcxGridDBColumn
              Caption = #20135#21697#20195#21495
              DataBinding.FieldName = 'ItemCode'
              Options.CellMerging = True
              Width = 69
            end
            object cxgrdbtblvwTechItemName: TcxGridDBColumn
              Caption = #20135#21697#21517#31216
              DataBinding.FieldName = 'ItemName'
              Options.CellMerging = True
              Width = 97
            end
            object cxgrdbtblvwTechItemSpc: TcxGridDBColumn
              Caption = #35268#26684
              DataBinding.FieldName = 'ItemSpc'
              Options.CellMerging = True
              Width = 84
            end
            object cxgrdbtblvwTechItemPic: TcxGridDBColumn
              Caption = #22270#21495
              DataBinding.FieldName = 'ItemPic'
              Visible = False
              Options.CellMerging = True
              Width = 70
            end
            object cxgrdbtblvwTechProType: TcxGridDBColumn
              Caption = #23646#24615
              DataBinding.FieldName = 'ProType'
              Visible = False
              Options.CellMerging = True
              Width = 70
            end
            object cxgrdbtblvwTechColor: TcxGridDBColumn
              Caption = #39068#33394
              DataBinding.FieldName = 'Color'
              Visible = False
              Options.CellMerging = True
              Width = 70
            end
            object cxgrdbtblvwTechOrdinal: TcxGridDBColumn
              Caption = #24037#24207#21495
              DataBinding.FieldName = 'Ordinal'
              Width = 58
            end
            object cxgrdbtblvwTechTechName: TcxGridDBColumn
              Caption = #24037#24207#21517#31216
              DataBinding.FieldName = 'TechName'
              Width = 101
            end
            object cxgrdbtblvwTechFinalNum: TcxGridDBColumn
              Caption = #25968#37327
              DataBinding.FieldName = 'FinalNum'
              Width = 65
            end
            object cxgrdbtblvwTechTechParam: TcxGridDBColumn
              Caption = #24037#24207#23646#24615
              DataBinding.FieldName = 'TechParam'
              Width = 70
            end
            object cxgrdbtblvwTechDeptName: TcxGridDBColumn
              Caption = #21152#24037#37096#38376#21517#31216
              DataBinding.FieldName = 'DeptName'
              Width = 97
            end
            object cxgrdbtblvwTechTopTech: TcxGridDBColumn
              Caption = #19978#36947#24037#24207
              DataBinding.FieldName = 'TopTech'
              Width = 70
            end
            object cxgrdbtblvwTechNextTech: TcxGridDBColumn
              Caption = #19979#36947#24037#24207
              DataBinding.FieldName = 'NextTech'
              Width = 70
            end
            object cxgrdbtblvwTechDeptId: TcxGridDBColumn
              Caption = #21152#24037#37096#38376#32534#21495
              DataBinding.FieldName = 'DeptId'
              Visible = False
              Width = 70
            end
            object cxgrdbtblvwTechbFirst: TcxGridDBColumn
              Caption = #39318#36947
              DataBinding.FieldName = 'bFirst'
              Width = 44
            end
            object cxgrdbtblvwTechbLast: TcxGridDBColumn
              Caption = #26411#36947
              DataBinding.FieldName = 'bLast'
              Width = 41
            end
            object cxgrdbtblvwTechRemark: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 106
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxgrdbtblvwTech
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
      OnClick = btReferClick
    end
    inherited btUnCheck: TdxBarLargeButton
      OnClick = btUnCheckClick
    end
    inherited btRef: TdxBarLargeButton
      Visible = ivAlways
      OnClick = btRefClick
    end
    inherited btInvoice: TdxBarLargeButton
      Caption = #20998' '#26512
      Hint = #23545#25152#26377#20135#21697#36827#34892'MRP'#20998#26512
      Visible = ivAlways
      LargeGlyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000002361C5A02281442000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFF2CAB6AFF046D37B401160B2400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFFB9F1D4FF6ECD9CFF119A53F7034E2781000503090000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFFA7EECAFFA7EECAFF9AE7C0FF43BA7DFF058644DE022F
        184E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFF95EABFFF95EABFFF95EABFFF95EABFFF75D8A6FF21A9
        63FF046D37B401160B2400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFF80E7B3FF80E7B3FF80E7B3FF80E7B3FF80E7B3FF7FE6
        B2FF4CC688FF0D9A51F7034E2781000503090000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFF6CE3A7FF6CE3A7FF6CE3A7FF6CE3A7FF6CE3A7FF6CE3
        A7FF6CE3A7FF64DDA0FF2CB570FF058644DE022F184E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFF5ADF9CFF5ADF9CFF5ADF9CFF5ADF9CFF5ADF9CFF5ADF
        9CFF5ADF9CFF5ADF9CFF5ADF9CFF47D08BFF16A75DFF046D37B401160B240000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFF46DB90FF46DB90FF46DB90FF46DB90FF46DB90FF46DB
        90FF46DB90FF46DB90FF46DB90FF46DB90FF45DA8FFF2BBF74FF0A994FF7034E
        2781000503090000000000000000000000000000000000000000000000000000
        000000000000069A4EFF32D784FF32D784FF32D784FF32D784FF32D784FF32D7
        84FF32D784FF32D784FF32D784FF32D784FF32D784FF32D784FF2FD380FF17B2
        63FF058644DE022F184E00000000000000000000000000000000000000000000
        000000000000069A4EFF1FD479FF1FD479FF1FD479FF1FD479FF1FD479FF1FD4
        79FF1FD479FF1FD479FF1FD479FF1FD479FF1FD479FF1FD479FF1FD479FF1FD4
        79FF1AC870FF09A254FF0124123C000000000000000000000000000000000000
        000000000000069A4EFF53DE98FF53DE98FF53DE98FF53DE98FF53DE98FF53DE
        98FF53DE98FF53DE98FF53DE98FF53DE98FF53DE98FF53DE98FF53DE98FF53DE
        98FF42D088FF11A559FF0124123C000000000000000000000000000000000000
        000000000000069A4EFF71E4AAFF71E4AAFF71E4AAFF71E4AAFF71E4AAFF71E4
        AAFF71E4AAFF71E4AAFF71E4AAFF71E4AAFF71E4AAFF71E4AAFF68DEA3FF30BA
        73FF058443DB022D174B00000000000000000000000000000000000000000000
        000000000000069A4EFF89E8B8FF89E8B8FF89E8B8FF89E8B8FF89E8B8FF89E8
        B8FF89E8B8FF89E8B8FF89E8B8FF89E8B8FF88E7B7FF54CB8EFF0F9B52F7034C
        277E000503090000000000000000000000000000000000000000000000000000
        000000000000069A4EFFA1EDC7FFA1EDC7FFA1EDC7FFA1EDC7FFA1EDC7FFA1ED
        C7FFA1EDC7FFA1EDC7FFA1EDC7FF82DEAFFF25AB67FF046B36B101140A210000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFFB7F1D4FFB7F1D4FFB7F1D4FFB7F1D4FFB7F1D4FFB7F1
        D4FFB7F1D4FFABECCBFF50C188FF058443DB022D174B00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFFC8F5DEFFC8F5DEFFC8F5DEFFC8F5DEFFC8F5DEFFC7F4
        DDFF82D7ACFF139C55F6034C277E000503090000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFFD8F7E7FFD8F7E7FFD8F7E7FFD8F7E7FFB5E9CFFF36B0
        72FF046D37B401160B2400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFFE5FAF0FFE5FAF0FFDAF6E8FF6FCA9BFF058644DE022F
        184E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFFEEFCF5FFA9E1C4FF179D58F6034E2781000503090000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFF45B57BFF046D37B401160B2400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000002361C5A0126133F000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btInvoiceClick
    end
  end
  inherited qyHed: TADOQuery
    SQL.Strings = (
      'select * from ProOrderHDTB')
    object qyHedAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 30
    end
    object qyHedbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyHedMrpDate: TDateTimeField
      FieldName = 'MrpDate'
    end
    object qyHedbComp: TBooleanField
      FieldName = 'bComp'
    end
    object qyHedRemark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
    object qyHedbPrint: TBooleanField
      FieldName = 'bPrint'
    end
    object qyHedPrintNum: TSmallintField
      FieldName = 'PrintNum'
      OnChange = qyHedPrintNumChange
    end
    object qyHedMakeDate: TDateTimeField
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
    object qyHedEditDate: TDateTimeField
      FieldName = 'EditDate'
    end
    object qyHedAuditFlag: TSmallintField
      FieldName = 'AuditFlag'
    end
    object qyHedbMaxAudit: TBooleanField
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
    object qyHedMaxAuditDate: TDateTimeField
      FieldName = 'MaxAuditDate'
    end
    object qyHedProOrderNo: TStringField
      FieldName = 'ProOrderNo'
      Size = 30
    end
  end
  inherited dsDet: TDataSource
    Left = 40
    Top = 248
  end
  inherited qyDet: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyDetAfterInsert
    SQL.Strings = (
      'select Top 10 * from ProOrderDTTB')
    Left = 40
    Top = 280
    object qyDetAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 100
    end
    object qyDetbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyDetItemID: TStringField
      FieldName = 'ItemID'
      OnChange = qyDetItemIDChange
      Size = 50
    end
    object qyDetItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 50
    end
    object qyDetItemPYCode: TStringField
      FieldName = 'ItemPYCode'
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
    object qyDetiFlag: TIntegerField
      FieldName = 'iFlag'
    end
    object qyDetExchRate: TFMTBCDField
      FieldName = 'ExchRate'
      Precision = 19
      Size = 6
    end
    object qyDetProType: TStringField
      FieldName = 'ProType'
      Size = 100
    end
    object qyDetColor: TStringField
      FieldName = 'Color'
      Size = 50
    end
    object qyDetCompactNO: TStringField
      FieldName = 'CompactNO'
      Size = 50
    end
    object qyDetSaleOrderNo: TStringField
      FieldName = 'SaleOrderNo'
      Size = 100
    end
    object qyDetSaleOrderId: TStringField
      FieldName = 'SaleOrderId'
      Size = 100
    end
    object qyDetProduceNum: TFMTBCDField
      FieldName = 'ProduceNum'
      Precision = 19
      Size = 6
    end
    object qyDetAdjustNum: TFMTBCDField
      FieldName = 'AdjustNum'
      Precision = 19
      Size = 6
    end
    object qyDetFinalNum: TFMTBCDField
      FieldName = 'FinalNum'
      Precision = 19
      Size = 6
    end
    object qyDetBeforeNum: TFMTBCDField
      FieldName = 'BeforeNum'
      Precision = 19
      Size = 6
    end
    object qyDetMRPResult: TStringField
      FieldName = 'MRPResult'
      Size = 100
    end
    object qyDetRemark: TStringField
      FieldName = 'Remark'
      Size = 200
    end
    object qyDetWareNum: TFMTBCDField
      FieldName = 'WareNum'
      Precision = 19
      Size = 6
    end
    object qyDetCanUseNum: TFMTBCDField
      FieldName = 'CanUseNum'
      Precision = 19
      Size = 6
    end
    object qyDetUseNum: TFMTBCDField
      FieldName = 'UseNum'
      Precision = 19
      Size = 6
    end
    object qyDetProOrderNo: TStringField
      FieldName = 'ProOrderNo'
      Size = 30
    end
    object qyDetAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qyDetMaterial: TStringField
      FieldName = 'Material'
      Size = 100
    end
    object qyDetbBom: TStringField
      FieldName = 'bBom'
    end
  end
  inherited frxHed: TfrxDBDataset
    UserName = #29983#20135#35746#21333#20027#34920
    FieldAliases.Strings = (
      'AutoNo='#33258#21160#32534#21495
      'bSelect='#36873#25321
      'MrpDate='#26085#26399
      'bComp='#26159#21542#23436#24037
      'Remark='#22791#27880
      'bPrint='#26159#21542#25171#21360
      'PrintNum='#25171#21360#27425#25968
      'MakeDate='#21046#21333#26085#26399
      'MakeMan='#21046#21333#20154#32534#21495
      'MakeManName='#21046#21333#20154
      'EditMan='#20462#25913#20154#32534#21495
      'EditManName='#20462#25913#20154
      'EditDate='#20462#25913#26085#26399
      'AuditFlag='#23457#25209#26631#24535
      'bMaxAudit='#26159#21542#23457#26680#23436#25104
      'AuditManName='#23457#26680#20154
      'AuditDate='#23457#26680#26085#26399
      'MaxAuditDate='#26368#21518#23457#26680#26085#26399
      'ProOrderNo='#29983#20135#35746#21333#21495)
  end
  inherited frxDet: TfrxDBDataset
    UserName = #29983#20135#35746#21333#20998#26512#20135#21697
    FieldAliases.Strings = (
      'AutoNo='#33258#21160#32534#21495
      'bSelect='#36873#25321
      'ItemID='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemPYCode='#25340#38899#30721
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#20135#21697#35268#26684
      'ItemPic='#22270#21495
      'ItemUnit='#20027#21333#20301
      'SubUnit='#21103#21333#20301
      'iFlag='#36716#25442#26631#24535
      'ExchRate='#36716#21270#29575
      'ProType='#30005#32518#32447
      'Color='#39068#33394
      'CompactNO='#21512#21516#21495
      'SaleOrderNo='#38144#21806#35746#21333#21495
      'SaleOrderId='#38144#21806#35746#21333#32534#30721
      'ProduceNum='#29983#20135#25968#37327
      'AdjustNum='#35843#25972#25968#37327
      'FinalNum='#26368#32456#25968#37327
      'BeforeNum='#20043#21069#25968#37327
      'MRPResult='#20998#26512#32467#26524
      'Remark='#22791#27880
      'WareNum='#24211#23384#25968#37327
      'CanUseNum='#21487#29992#24211#23384#25968#37327
      'UseNum='#20351#29992#25968#37327
      'ProOrderNo='#29983#20135#35746#21333#21495
      'AutoId='#33258#21160#32534#30721
      'Material='#26448#36136
      'bBom=Bom'#24314#31435)
    Left = 40
    Top = 320
  end
  object frxProSum: TfrxDBDataset
    UserName = #29983#20135#35746#21333#29983#20135#25104#21697
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoId='#33258#21160#32534#30721
      'AutoNo='#33258#21160#32534#21495
      'bSelect='#26159#21542#36873#25321
      'PId=PId'
      'CId=CId'
      'ProOrderNo='#29983#20135#35746#21333#21495
      'ItemID='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemPYCode='#20135#21697#25340#38899#30721
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'ItemPic='#22270#21495
      'Material='#26448#36136
      'ItemUnit='#20027#21333#20301
      'SubUnit='#21103#21333#20301
      'iFlag='#36716#25442#26631#35782
      'ExchRate='#36716#21270#29575
      'ItemParam='#20135#21697#23646#24615
      'ItemSource='#26469#28304
      'ProType='#23646#24615
      'Color='#39068#33394
      'CompactNO='#21512#21516#21495
      'CpId='#25104#21697#32534#21495
      'CpCode='#25104#21697#20195#21495
      'CpName='#25104#21697#21517#31216
      'CpProType='#25104#21697#23646#24615
      'CpNum='#25104#21697#25968#37327
      'TopId='#19978#32423#20135#21697#32534#21495
      'TopCode='#19978#32423#20135#21697#20195#21495
      'TopName='#19978#32423#20135#21697#21517#31216
      'TopProType='#19978#32423#20135#21697#23646#24615
      'TopNum='#19978#32423#20135#21697#25968#37327
      'ProduceNum='#29983#20135#25968#37327
      'AdjustNum='#35843#25972#25968#37327
      'WareNum='#24211#23384#25968#37327
      'CanUseNum='#21487#29992#24211#23384
      'UseNum='#20351#29992#24211#23384
      'FinalNum='#26368#32456#25968#37327
      'bSum='#26159#21542#27719#24635
      'iLevel='#32423#21035
      'BeforeNum='#19978#27425#25968#37327
      'MRPResult='#20998#26512#32467#26524
      'bDel='#26159#21542#21024#38500
      'Remark='#22791#27880
      'SaleOrderNo='#38144#21806#35746#21333#21495
      'SaleOrderId='#38144#21806#35746#21333#20869#30721
      'bBom=Bom'#26159#21542#24314#31435)
    DataSet = qyPro
    BCDToCurrency = False
    Left = 80
    Top = 320
  end
  object qyPro: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qyProAfterInsert
    Parameters = <>
    SQL.Strings = (
      
        'select  * from ProOrderProTB where ItemParam='#39#25104#21697#39' and IsNull(bSu' +
        'm,0)=1 ')
    Left = 80
    Top = 280
    object qyProAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qyProAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 100
    end
    object qyProbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyProPId: TStringField
      FieldName = 'PId'
      Size = 1000
    end
    object qyProCId: TStringField
      FieldName = 'CId'
      Size = 1000
    end
    object qyProProOrderNo: TStringField
      FieldName = 'ProOrderNo'
      Size = 30
    end
    object qyProItemID: TStringField
      FieldName = 'ItemID'
      OnChange = qyProItemIDChange
      Size = 50
    end
    object qyProItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 50
    end
    object qyProItemPYCode: TStringField
      FieldName = 'ItemPYCode'
      Size = 50
    end
    object qyProItemName: TStringField
      FieldName = 'ItemName'
      Size = 100
    end
    object qyProItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 100
    end
    object qyProItemPic: TStringField
      FieldName = 'ItemPic'
      Size = 100
    end
    object qyProMaterial: TStringField
      FieldName = 'Material'
      Size = 100
    end
    object qyProItemUnit: TStringField
      FieldName = 'ItemUnit'
      Size = 10
    end
    object qyProSubUnit: TStringField
      FieldName = 'SubUnit'
      Size = 10
    end
    object qyProiFlag: TIntegerField
      FieldName = 'iFlag'
    end
    object qyProExchRate: TFMTBCDField
      FieldName = 'ExchRate'
      Precision = 19
      Size = 6
    end
    object qyProItemParam: TStringField
      FieldName = 'ItemParam'
    end
    object qyProItemSource: TStringField
      FieldName = 'ItemSource'
    end
    object qyProProType: TStringField
      FieldName = 'ProType'
      Size = 100
    end
    object qyProColor: TStringField
      FieldName = 'Color'
      Size = 50
    end
    object qyProCompactNO: TStringField
      FieldName = 'CompactNO'
      Size = 50
    end
    object qyProCpId: TStringField
      FieldName = 'CpId'
      Size = 50
    end
    object qyProCpCode: TStringField
      FieldName = 'CpCode'
      Size = 50
    end
    object qyProCpName: TStringField
      FieldName = 'CpName'
      Size = 100
    end
    object qyProCpProType: TStringField
      FieldName = 'CpProType'
      Size = 100
    end
    object qyProCpNum: TFMTBCDField
      FieldName = 'CpNum'
      Precision = 19
      Size = 6
    end
    object qyProTopId: TStringField
      FieldName = 'TopId'
      Size = 50
    end
    object qyProTopCode: TStringField
      FieldName = 'TopCode'
      Size = 50
    end
    object qyProTopName: TStringField
      FieldName = 'TopName'
      Size = 100
    end
    object qyProTopProType: TStringField
      FieldName = 'TopProType'
      Size = 100
    end
    object qyProTopNum: TFMTBCDField
      FieldName = 'TopNum'
      Precision = 19
      Size = 6
    end
    object qyProProduceNum: TFMTBCDField
      FieldName = 'ProduceNum'
      Precision = 19
      Size = 6
    end
    object qyProAdjustNum: TFMTBCDField
      FieldName = 'AdjustNum'
      Precision = 19
      Size = 6
    end
    object qyProWareNum: TFMTBCDField
      FieldName = 'WareNum'
      Precision = 19
      Size = 6
    end
    object qyProCanUseNum: TFMTBCDField
      FieldName = 'CanUseNum'
      Precision = 19
      Size = 6
    end
    object qyProUseNum: TFMTBCDField
      FieldName = 'UseNum'
      Precision = 19
      Size = 6
    end
    object qyProFinalNum: TFMTBCDField
      FieldName = 'FinalNum'
      Precision = 19
      Size = 6
    end
    object qyProbSum: TBooleanField
      FieldName = 'bSum'
    end
    object qyProiLevel: TSmallintField
      FieldName = 'iLevel'
    end
    object qyProBeforeNum: TFMTBCDField
      FieldName = 'BeforeNum'
      Precision = 19
      Size = 6
    end
    object qyProMRPResult: TStringField
      FieldName = 'MRPResult'
      Size = 100
    end
    object qyProbDel: TBooleanField
      FieldName = 'bDel'
    end
    object qyProRemark: TStringField
      FieldName = 'Remark'
      Size = 200
    end
    object qyProSaleOrderNo: TStringField
      FieldName = 'SaleOrderNo'
      Size = 100
    end
    object qyProSaleOrderId: TStringField
      FieldName = 'SaleOrderId'
      Size = 100
    end
    object qyProbBom: TStringField
      FieldName = 'bBom'
    end
  end
  object dsPro: TDataSource
    DataSet = qyPro
    Left = 80
    Top = 248
  end
  object qyBcp: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      
        'select  * from ProOrderProTB where ItemParam='#39#21322#25104#21697#39' and IsNull(bS' +
        'um,0)=1 ')
    Left = 120
    Top = 280
  end
  object dsBcp: TDataSource
    DataSet = qyBcp
    Left = 120
    Top = 248
  end
  object qyMat: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select Top 10 * from ProOrderMatTB where bSum=1')
    Left = 160
    Top = 280
  end
  object dsMat: TDataSource
    DataSet = qyMat
    Left = 160
    Top = 248
  end
  object frxPro: TfrxDBDataset
    UserName = #29983#20135#35746#21333#29983#20135#21322#25104#21697
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoId='#33258#21160#32534#30721
      'AutoNo='#33258#21160#32534#21495
      'bSelect='#26159#21542#36873#25321
      'PId=PId'
      'CId=CId'
      'ProOrderNo='#29983#20135#35746#21333#21495
      'ItemID='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemPYCode='#20135#21697#25340#38899#30721
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'ItemPic='#22270#21495
      'Material='#26448#36136
      'ItemUnit='#20027#21333#20301
      'SubUnit='#21103#21333#20301
      'iFlag='#36716#25442#26631#35782
      'ExchRate='#36716#21270#29575
      'ItemParam='#20135#21697#23646#24615
      'ItemSource='#26469#28304
      'ProType='#23646#24615
      'Color='#39068#33394
      'CompactNO='#21512#21516#21495
      'CpId='#25104#21697#32534#21495
      'CpCode='#25104#21697#20195#21495
      'CpName='#25104#21697#21517#31216
      'CpProType='#25104#21697#23646#24615
      'CpNum='#25104#21697#25968#37327
      'TopId='#19978#32423#20135#21697#32534#21495
      'TopCode='#19978#32423#20135#21697#20195#21495
      'TopName='#19978#32423#20135#21697#21517#31216
      'TopProType='#19978#32423#20135#21697#23646#24615
      'TopNum='#19978#32423#20135#21697#25968#37327
      'ProduceNum='#29983#20135#25968#37327
      'AdjustNum='#35843#25972#25968#37327
      'WareNum='#24211#23384#25968#37327
      'CanUseNum='#21487#29992#24211#23384
      'UseNum='#20351#29992#24211#23384
      'FinalNum='#26368#32456#25968#37327
      'bSum='#26159#21542#27719#24635
      'iLevel='#32423#21035
      'BeforeNum='#19978#27425#25968#37327
      'MRPResult='#20998#26512#32467#26524
      'bDel='#26159#21542#21024#38500
      'Remark='#22791#27880
      'SaleOrderNo='#38144#21806#35746#21333#21495
      'SaleOrderId='#38144#21806#35746#21333#20869#30721
      'bBom=Bom'#26159#21542#24314#31435)
    DataSet = qyBcp
    BCDToCurrency = False
    Left = 120
    Top = 320
  end
  object frxMatSum: TfrxDBDataset
    UserName = #29983#20135#35746#21333#29289#26009#27719#24635
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoId=AutoId'
      'AutoNo='#33258#21160#32534#21495
      'bSelect='#26159#21542#36873#25321
      'PId=PId'
      'CId=CId'
      'ProOrderNo='#29983#20135#35746#21333
      'ItemID='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemPYCode='#20135#21697#25340#38899#30721
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'ItemPic='#22270#21495
      'Material='#26448#36136
      'ItemUnit='#20027#21333#20301
      'SubUnit='#21103#21333#20301
      'iFlag='#36716#25442#26631#35782
      'ExchRate='#36716#21270#29575
      'ItemParam='#20135#21697#23646#24615
      'ItemSource='#26469#28304
      'StockMode='#37319#36141#26041#24335
      'ReqNo='#35831#36141#21333#21495
      'ProType='#23646#24615
      'Color='#39068#33394
      'CompactNO='#21512#21516#21495
      'CpId='#25104#21697#32534#21495
      'CpCode='#25104#21697#20195#21495
      'CpName='#25104#21697#21517#31216
      'CpProType='#25104#21697#23646#24615
      'CpNum='#25104#21697#25968#37327
      'TopId='#19978#32423#20135#21697#32534#21495
      'TopCode='#19978#32423#20135#21697#20195#21495
      'TopName='#19978#32423#20135#21697#21517#31216
      'TopProType='#19978#32423#20135#21697#23646#24615
      'TopNum='#19978#32423#20135#21697#25968#37327
      'ProduceNum='#29983#20135#25968#37327
      'AdjustNum='#35843#25972#25968#37327
      'WareNum='#24211#23384#25968#37327
      'CanUseNum='#21487#29992#24211#23384
      'UseNum='#20351#29992#24211#23384
      'FinalNum='#26368#32456#25968#37327
      'DrawDept='#39046#29992#21333#20301
      'bSum='#26159#21542#27719#24635
      'iLevel='#32423#21035
      'BeforeNum='#19978#27425#25968#37327
      'MRPResult='#20998#26512#32467#26524
      'bDel='#26159#21542#21024#38500
      'Remark='#22791#27880)
    DataSet = qyMat
    BCDToCurrency = False
    Left = 160
    Top = 320
  end
  object qyFind: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'exec prBillFind '#39'ProOrderHDTB'#39)
    Left = 40
    Top = 400
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
    Left = 40
    Top = 368
  end
  object qyTemp: TADOQuery
    Connection = DataFM.Con
    Parameters = <>
    Left = 80
    Top = 400
  end
  object frxTech: TfrxDBDataset
    UserName = #29983#20135#35746#21333#29983#20135#24037#33402
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoId='#33258#21160#32534#21495
      'AutoNo='#20869#30721
      'bSelect='#26159#21542#36873#25321
      'ProOrderNo='#29983#20135#35746#21333
      'ItemID='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemPYCode='#20135#21697#25340#38899#30721
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'ItemPic='#22270#21495
      'Material='#26448#36136
      'ItemUnit='#20027#21333#20301
      'SubUnit='#21103#21333#20301
      'iFlag='#36716#25442#26631#35782
      'ExchRate='#36716#21270#29575
      'ItemParam='#20135#21697#23646#24615
      'ItemSource='#26469#28304
      'ProType='#23646#24615
      'Color='#39068#33394
      'CompactNO='#21512#21516#21495
      'SaleOrderNo='#38144#21806#35746#21333#21495
      'SaleOrderId='#38144#21806#35746#21333#20869#30721
      'Ordinal='#24037#24207#21495
      'TechName='#24037#24207#21517#31216
      'TopTech='#19978#36947#24037#24207
      'NextTech='#19979#36947#24037#24207
      'TechParam='#24037#24207#23646#24615
      'DeptId='#37096#38376#32534#21495
      'DeptName='#37096#38376#21517#31216
      'bFirst='#39318#36947#24037#24207
      'bLast='#26411#36947#24037#24207
      'CurePrice='#27491#21697#21333#20215
      'SpoilPrice='#19981#33391#21697#21333#20215
      'WastePrice='#24223#21697#21333#20215
      'FinalNum='#26368#32456#25968#37327
      'bDel='#26159#21542#21024#38500
      'Remark='#22791#27880)
    DataSet = qyTech
    BCDToCurrency = False
    Left = 200
    Top = 320
  end
  object qyTech: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select Top 10 * from ProOrderTechTB ')
    Left = 200
    Top = 280
    object qyTechAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qyTechAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 100
    end
    object qyTechbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyTechProOrderNo: TStringField
      FieldName = 'ProOrderNo'
      Size = 30
    end
    object qyTechItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
    object qyTechItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 50
    end
    object qyTechItemPYCode: TStringField
      FieldName = 'ItemPYCode'
      Size = 50
    end
    object qyTechItemName: TStringField
      FieldName = 'ItemName'
      Size = 100
    end
    object qyTechItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 100
    end
    object qyTechItemPic: TStringField
      FieldName = 'ItemPic'
      Size = 100
    end
    object qyTechMaterial: TStringField
      FieldName = 'Material'
      Size = 100
    end
    object qyTechItemUnit: TStringField
      FieldName = 'ItemUnit'
      Size = 10
    end
    object qyTechSubUnit: TStringField
      FieldName = 'SubUnit'
      Size = 10
    end
    object qyTechiFlag: TIntegerField
      FieldName = 'iFlag'
    end
    object qyTechExchRate: TFMTBCDField
      FieldName = 'ExchRate'
      Precision = 18
      Size = 5
    end
    object qyTechItemParam: TStringField
      FieldName = 'ItemParam'
    end
    object qyTechItemSource: TStringField
      FieldName = 'ItemSource'
    end
    object qyTechProType: TStringField
      FieldName = 'ProType'
      Size = 100
    end
    object qyTechColor: TStringField
      FieldName = 'Color'
      Size = 50
    end
    object qyTechCompactNO: TStringField
      FieldName = 'CompactNO'
      Size = 50
    end
    object qyTechSaleOrderNo: TStringField
      FieldName = 'SaleOrderNo'
      Size = 100
    end
    object qyTechSaleOrderId: TStringField
      FieldName = 'SaleOrderId'
      Size = 100
    end
    object qyTechOrdinal: TSmallintField
      FieldName = 'Ordinal'
    end
    object qyTechTechName: TStringField
      FieldName = 'TechName'
      Size = 100
    end
    object qyTechTopTech: TStringField
      FieldName = 'TopTech'
      Size = 100
    end
    object qyTechNextTech: TStringField
      FieldName = 'NextTech'
      Size = 100
    end
    object qyTechTechParam: TStringField
      FieldName = 'TechParam'
      Size = 50
    end
    object qyTechDeptId: TStringField
      FieldName = 'DeptId'
      Size = 50
    end
    object qyTechDeptName: TStringField
      FieldName = 'DeptName'
      Size = 100
    end
    object qyTechbFirst: TBooleanField
      FieldName = 'bFirst'
    end
    object qyTechbLast: TBooleanField
      FieldName = 'bLast'
    end
    object qyTechCurePrice: TFMTBCDField
      FieldName = 'CurePrice'
      Precision = 18
      Size = 5
    end
    object qyTechSpoilPrice: TFMTBCDField
      FieldName = 'SpoilPrice'
      Precision = 18
      Size = 5
    end
    object qyTechWastePrice: TFMTBCDField
      FieldName = 'WastePrice'
      Precision = 18
      Size = 5
    end
    object qyTechFinalNum: TFMTBCDField
      FieldName = 'FinalNum'
      Precision = 18
      Size = 5
    end
    object qyTechbDel: TBooleanField
      FieldName = 'bDel'
    end
    object qyTechRemark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
  end
  object dsTech: TDataSource
    DataSet = qyTech
    Left = 200
    Top = 248
  end
  object qyBom: TADOQuery
    Connection = DataFM.Con
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select ItemID from ItemBomHDTB')
    Left = 112
    Top = 400
  end
end
