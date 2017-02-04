inherited ItemMRPFM: TItemMRPFM
  Caption = #29983#20135#35746#21333
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    TabOrder = 1
    inherited labTitle: TLabel
      Caption = #29983#20135#35746#21333
    end
  end
  inherited pnlInfo: TPanel
    TabOrder = 3
  end
  inherited pnlEdit: TPanel
    Height = 35
    TabOrder = 5
    ExplicitHeight = 35
    object lbl1: TLabel [0]
      Left = 15
      Top = 10
      Width = 24
      Height = 13
      Caption = #35828#26126
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 512
      ExplicitLeft = 512
      ExplicitWidth = 336
      ExplicitHeight = 33
      Height = 33
      Width = 336
      inherited Label9: TLabel
        Left = 170
        Top = 9
        ExplicitLeft = 170
        ExplicitTop = 9
      end
      inherited cxEdtNo: TcxDBTextEdit
        DataBinding.DataField = 'MrpNo'
        Style.IsFontAssigned = True
      end
      inherited cxdt: TcxDBDateEdit
        Left = 200
        Top = 5
        DataBinding.DataField = 'MrpDate'
        ExplicitLeft = 200
        ExplicitTop = 5
      end
    end
    object cxMoRemark: TcxDBMemo
      Left = 53
      Top = 6
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.ScrollBars = ssVertical
      TabOrder = 1
      Visible = False
      Height = 21
      Width = 338
    end
    object cxPupEdtRemark: TcxDBPopupEdit
      Left = 51
      Top = 6
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.PopupControl = cxMoRemark
      TabOrder = 2
      Width = 340
    end
  end
  inherited pnlBody: TPanel
    Top = 111
    Height = 402
    ExplicitTop = 111
    ExplicitHeight = 402
    inherited cxPgc: TcxPageControl
      Height = 402
      ExplicitHeight = 402
      ClientRectBottom = 396
      inherited cxtbsht1: TcxTabSheet
        Caption = '  '#20998#26512#20135#21697'  '
        ExplicitLeft = 2
        ExplicitTop = 27
        ExplicitWidth = 1036
        ExplicitHeight = 369
        inherited cxgrd: TcxGrid
          Height = 369
          ExplicitHeight = 369
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
                Column = cxgrdtbvLastNum
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
              Styles.Content = Data.cxstyl1
              Width = 144
            end
            object cxgrdtbvItemSpc: TcxGridDBColumn
              Caption = #35268#26684
              DataBinding.FieldName = 'ItemSpc'
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 80
            end
            object cxgrdtbvItemPic: TcxGridDBColumn
              Caption = #20135#21697#22270#21495
              DataBinding.FieldName = 'ItemPic'
              Visible = False
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 100
            end
            object cxgrdtbvItemUnit: TcxGridDBColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'ItemUnit'
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 32
            end
            object cxgrdtbvSubUnit: TcxGridDBColumn
              Caption = #21103#21333#20301
              DataBinding.FieldName = 'SubUnit'
              Visible = False
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 100
            end
            object cxgrdtbvExchRate: TcxGridDBColumn
              Caption = #36716#21270#29575
              DataBinding.FieldName = 'ExchRate'
              Visible = False
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 100
            end
            object cxgrdtbvProType: TcxGridDBColumn
              Caption = #23646#24615
              DataBinding.FieldName = 'ProType'
              Width = 63
            end
            object cxgrdtbvsColor: TcxGridDBColumn
              Caption = #39068#33394
              DataBinding.FieldName = 'sColor'
              Visible = False
              Width = 100
            end
            object cxgrdtbvCompactNO: TcxGridDBColumn
              Caption = #21512#21516#21495
              DataBinding.FieldName = 'CompactNO'
              Visible = False
              Width = 100
            end
            object cxgrdtbvProduceNum: TcxGridDBColumn
              Caption = #29983#20135#25968#37327
              DataBinding.FieldName = 'ProduceNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdtbvProduceNumPropertiesValidate
              Width = 85
            end
            object cxgrdtbvAdjustNum: TcxGridDBColumn
              Caption = #35843#25972#25968#37327
              DataBinding.FieldName = 'AdjustNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdtbvAdjustNumPropertiesValidate
              Width = 72
            end
            object cxgrdtbvLastNum: TcxGridDBColumn
              Caption = #26368#32456#25968#37327
              DataBinding.FieldName = 'FinalNum'
              Width = 77
            end
            object cxgrdtbvStorageNum: TcxGridDBColumn
              Caption = #24211#23384#25968#37327
              DataBinding.FieldName = 'WareNum'
              Width = 79
            end
            object cxgrdtbvRemark: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 100
            end
          end
        end
      end
      object cxTabSheet1: TcxTabSheet
        Caption = '  '#20135#21697#27719#24635'  '
        ImageIndex = 1
        object cxgrd1: TcxGrid
          Left = 0
          Top = 0
          Width = 1036
          Height = 369
          Align = alClient
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
            OnCellDblClick = cxgrdtbvCellDblClick
            OnSelectionChanged = cxgrdtbvSelectionChanged
            DataController.DataSource = dsProSum
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
            OptionsView.NoDataToDisplayInfoText = #24658#21019#36719#20214
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 35
            OnCustomDrawIndicatorCell = cxgrdbtblvw1CustomDrawIndicatorCell
            object cxGridDBColumn1: TcxGridDBColumn
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
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = #20135#21697#21517#31216
              DataBinding.FieldName = 'ItemName'
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 144
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = #35268#26684
              DataBinding.FieldName = 'ItemSpc'
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 80
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = #20135#21697#22270#21495
              DataBinding.FieldName = 'ItemPic'
              Visible = False
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 100
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'ItemUnit'
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 32
            end
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = #21103#21333#20301
              DataBinding.FieldName = 'SubUnit'
              Visible = False
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 100
            end
            object cxGridDBColumn7: TcxGridDBColumn
              Caption = #36716#21270#29575
              DataBinding.FieldName = 'ExchRate'
              Visible = False
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 100
            end
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = #23646#24615
              DataBinding.FieldName = 'ProType'
              Visible = False
              Width = 63
            end
            object cxGridDBColumn9: TcxGridDBColumn
              Caption = #39068#33394
              DataBinding.FieldName = 'sColor'
              Visible = False
              Width = 100
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
              Properties.OnValidate = cxgrdtbvProduceNumPropertiesValidate
              Width = 85
            end
            object cxGridDBColumn12: TcxGridDBColumn
              Caption = #35843#25972#25968#37327
              DataBinding.FieldName = 'AdjustNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 72
            end
            object cxGridDBColumn14: TcxGridDBColumn
              Caption = #24211#23384#25968#37327
              DataBinding.FieldName = 'WareNum'
              Width = 79
            end
            object cxgrdbtblvw1Column1: TcxGridDBColumn
              Caption = #21487#29992#24211#23384
              DataBinding.FieldName = 'CanUseNum'
              Width = 80
            end
            object cxgrdbtblvw1Column2: TcxGridDBColumn
              Caption = #20351#29992#24211#23384
              DataBinding.FieldName = 'UseNum'
              Width = 78
            end
            object cxGridDBColumn13: TcxGridDBColumn
              Caption = #26368#32456#25968#37327
              DataBinding.FieldName = 'FinalNum'
              Width = 77
            end
            object cxgrdbtblvw1Column3: TcxGridDBColumn
              Caption = #20998#26512#32467#26524
              DataBinding.FieldName = 'MRPResult'
              Width = 138
            end
            object cxGridDBColumn15: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 100
            end
          end
          object cxgrdlvl1: TcxGridLevel
            GridView = cxgrdbtblvw1
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = '  '#20135#21697#26126#32454'  '
        ImageIndex = 2
        TabVisible = False
        object cxgrd2: TcxGrid
          Left = 0
          Top = 0
          Width = 1036
          Height = 369
          Align = alClient
          PopupMenu = pmLayout
          TabOrder = 0
          object cxgrdbtblvw2: TcxGridDBTableView
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
            object cxGridDBColumn16: TcxGridDBColumn
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
            object cxGridDBColumn17: TcxGridDBColumn
              Caption = #20135#21697#21517#31216
              DataBinding.FieldName = 'ItemName'
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 144
            end
            object cxGridDBColumn18: TcxGridDBColumn
              Caption = #35268#26684
              DataBinding.FieldName = 'ItemSpc'
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 80
            end
            object cxGridDBColumn19: TcxGridDBColumn
              Caption = #20135#21697#22270#21495
              DataBinding.FieldName = 'ItemPic'
              Visible = False
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 100
            end
            object cxGridDBColumn20: TcxGridDBColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'ItemUnit'
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 32
            end
            object cxGridDBColumn21: TcxGridDBColumn
              Caption = #21103#21333#20301
              DataBinding.FieldName = 'SubUnit'
              Visible = False
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 100
            end
            object cxGridDBColumn22: TcxGridDBColumn
              Caption = #36716#21270#29575
              DataBinding.FieldName = 'ExchRate'
              Visible = False
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 100
            end
            object cxGridDBColumn23: TcxGridDBColumn
              Caption = #23646#24615
              DataBinding.FieldName = 'ProType'
              Width = 63
            end
            object cxGridDBColumn24: TcxGridDBColumn
              Caption = #39068#33394
              DataBinding.FieldName = 'sColor'
              Visible = False
              Width = 100
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
              Properties.OnValidate = cxgrdtbvProduceNumPropertiesValidate
              Width = 85
            end
            object cxGridDBColumn27: TcxGridDBColumn
              Caption = #35843#25972#25968#37327
              DataBinding.FieldName = 'AdjustNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdtbvAdjustNumPropertiesValidate
              Width = 72
            end
            object cxGridDBColumn28: TcxGridDBColumn
              Caption = #21487#29992#24211#23384
              DataBinding.FieldName = 'CanUseNum'
              Width = 80
            end
            object cxGridDBColumn29: TcxGridDBColumn
              Caption = #20351#29992#24211#23384
              DataBinding.FieldName = 'UseNum'
              Width = 78
            end
            object cxGridDBColumn30: TcxGridDBColumn
              Caption = #26368#32456#25968#37327
              DataBinding.FieldName = 'FinalNum'
              Width = 77
            end
            object cxGridDBColumn31: TcxGridDBColumn
              Caption = #24211#23384#25968#37327
              DataBinding.FieldName = 'WareNum'
              Width = 79
            end
            object cxGridDBColumn32: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 100
            end
          end
          object cxgrdlvl2: TcxGridLevel
            GridView = cxgrdbtblvw2
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = '  '#29289#26009#27719#24635'  '
        ImageIndex = 3
        object cxgrd3: TcxGrid
          Left = 0
          Top = 0
          Width = 1036
          Height = 369
          Align = alClient
          TabOrder = 0
          object cxgrdbtblvw3: TcxGridDBTableView
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
            DataController.DataSource = dsMatSum
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
            OnCustomDrawIndicatorCell = cxgrdbtblvw3CustomDrawIndicatorCell
            object cxGridDBColumn33: TcxGridDBColumn
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
            object cxGridDBColumn34: TcxGridDBColumn
              Caption = #20135#21697#21517#31216
              DataBinding.FieldName = 'ItemName'
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 144
            end
            object cxGridDBColumn35: TcxGridDBColumn
              Caption = #35268#26684
              DataBinding.FieldName = 'ItemSpc'
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 80
            end
            object cxGridDBColumn36: TcxGridDBColumn
              Caption = #20135#21697#22270#21495
              DataBinding.FieldName = 'ItemPic'
              Visible = False
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 100
            end
            object cxGridDBColumn37: TcxGridDBColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'ItemUnit'
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 32
            end
            object cxGridDBColumn38: TcxGridDBColumn
              Caption = #21103#21333#20301
              DataBinding.FieldName = 'SubUnit'
              Visible = False
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 100
            end
            object cxGridDBColumn39: TcxGridDBColumn
              Caption = #36716#21270#29575
              DataBinding.FieldName = 'ExchRate'
              Visible = False
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 100
            end
            object cxGridDBColumn40: TcxGridDBColumn
              Caption = #23646#24615
              DataBinding.FieldName = 'ProType'
              Visible = False
              Width = 63
            end
            object cxGridDBColumn41: TcxGridDBColumn
              Caption = #39068#33394
              DataBinding.FieldName = 'sColor'
              Visible = False
              Width = 100
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
              Properties.OnValidate = cxgrdtbvProduceNumPropertiesValidate
              Width = 85
            end
            object cxGridDBColumn44: TcxGridDBColumn
              Caption = #35843#25972#25968#37327
              DataBinding.FieldName = 'AdjustNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdtbvAdjustNumPropertiesValidate
              Visible = False
              Width = 72
            end
            object cxGridDBColumn48: TcxGridDBColumn
              Caption = #24211#23384#25968#37327
              DataBinding.FieldName = 'WareNum'
              Width = 79
            end
            object cxGridDBColumn45: TcxGridDBColumn
              Caption = #21487#29992#24211#23384
              DataBinding.FieldName = 'CanUseNum'
              Width = 80
            end
            object cxGridDBColumn46: TcxGridDBColumn
              Caption = #20351#29992#24211#23384
              DataBinding.FieldName = 'UseNum'
              Width = 78
            end
            object cxGridDBColumn47: TcxGridDBColumn
              Caption = #26368#32456#25968#37327
              DataBinding.FieldName = 'FinalNum'
              Width = 77
            end
            object cxgrdbtblvw3Column1: TcxGridDBColumn
              Caption = #20998#26512#32467#26524
              DataBinding.FieldName = 'MRPResult'
              Width = 122
            end
            object cxGridDBColumn49: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 100
            end
          end
          object cxgrdlvl3: TcxGridLevel
            GridView = cxgrdbtblvw3
          end
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = '  '#29289#26009#26126#32454'  '
        ImageIndex = 4
        TabVisible = False
        object cxgrd4: TcxGrid
          Left = 0
          Top = 0
          Width = 1036
          Height = 369
          Align = alClient
          PopupMenu = pmLayout
          TabOrder = 0
          object cxgrdbtblvw4: TcxGridDBTableView
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
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = #21512#35745':0'
                Kind = skCount
                Column = cxGridDBColumn50
              end
              item
                Kind = skSum
                Column = cxGridDBColumn60
              end
              item
                Kind = skSum
                Column = cxGridDBColumn61
              end
              item
                Kind = skSum
                Column = cxGridDBColumn64
              end
              item
                Kind = skSum
                Column = cxGridDBColumn65
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
            object cxGridDBColumn50: TcxGridDBColumn
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
            object cxGridDBColumn51: TcxGridDBColumn
              Caption = #20135#21697#21517#31216
              DataBinding.FieldName = 'ItemName'
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 144
            end
            object cxGridDBColumn52: TcxGridDBColumn
              Caption = #35268#26684
              DataBinding.FieldName = 'ItemSpc'
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 80
            end
            object cxGridDBColumn53: TcxGridDBColumn
              Caption = #20135#21697#22270#21495
              DataBinding.FieldName = 'ItemPic'
              Visible = False
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 100
            end
            object cxGridDBColumn54: TcxGridDBColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'ItemUnit'
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 32
            end
            object cxGridDBColumn55: TcxGridDBColumn
              Caption = #21103#21333#20301
              DataBinding.FieldName = 'SubUnit'
              Visible = False
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 100
            end
            object cxGridDBColumn56: TcxGridDBColumn
              Caption = #36716#21270#29575
              DataBinding.FieldName = 'ExchRate'
              Visible = False
              Options.Editing = False
              Styles.Content = Data.cxstyl1
              Width = 100
            end
            object cxGridDBColumn57: TcxGridDBColumn
              Caption = #23646#24615
              DataBinding.FieldName = 'ProType'
              Width = 63
            end
            object cxGridDBColumn58: TcxGridDBColumn
              Caption = #39068#33394
              DataBinding.FieldName = 'sColor'
              Visible = False
              Width = 100
            end
            object cxGridDBColumn59: TcxGridDBColumn
              Caption = #21512#21516#21495
              DataBinding.FieldName = 'CompactNO'
              Visible = False
              Width = 100
            end
            object cxGridDBColumn60: TcxGridDBColumn
              Caption = #29983#20135#25968#37327
              DataBinding.FieldName = 'ProduceNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdtbvProduceNumPropertiesValidate
              Width = 85
            end
            object cxGridDBColumn61: TcxGridDBColumn
              Caption = #35843#25972#25968#37327
              DataBinding.FieldName = 'AdjustNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdtbvAdjustNumPropertiesValidate
              Width = 72
            end
            object cxGridDBColumn62: TcxGridDBColumn
              Caption = #21487#29992#24211#23384
              DataBinding.FieldName = 'CanUseNum'
              Width = 80
            end
            object cxGridDBColumn63: TcxGridDBColumn
              Caption = #20351#29992#24211#23384
              DataBinding.FieldName = 'UseNum'
              Width = 78
            end
            object cxGridDBColumn64: TcxGridDBColumn
              Caption = #26368#32456#25968#37327
              DataBinding.FieldName = 'FinalNum'
              Width = 77
            end
            object cxGridDBColumn65: TcxGridDBColumn
              Caption = #24211#23384#25968#37327
              DataBinding.FieldName = 'WareNum'
              Width = 79
            end
            object cxgrdbtblvw4Column1: TcxGridDBColumn
              Caption = #23545#24212#19978#32423#20195#21495
              DataBinding.FieldName = 'TopCode'
              Width = 86
            end
            object cxgrdbtblvw4Column2: TcxGridDBColumn
              Caption = #23545#24212#19978#32423#21517#31216
              DataBinding.FieldName = 'Topname'
              Width = 92
            end
            object cxgrdbtblvw4Column3: TcxGridDBColumn
              Caption = #23545#24212#25104#21697#20195#21495
              DataBinding.FieldName = 'CpCode'
              Visible = False
              Width = 80
            end
            object cxgrdbtblvw4Column4: TcxGridDBColumn
              Caption = #23545#24212#25104#21697#21517#31216
              DataBinding.FieldName = 'CpName'
              Visible = False
              Width = 80
            end
            object cxGridDBColumn66: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 100
            end
          end
          object cxgrdlvl4: TcxGridLevel
            GridView = cxgrdbtblvw4
          end
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = '  '#36710#38388#25351#20196'  '
        ImageIndex = 5
        TabVisible = False
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
    inherited btUnCheck: TdxBarLargeButton
      OnClick = btUnCheckClick
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
      'select * from ItemMRPHDTB')
    object qyHedAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 30
    end
    object qyHedMrpNo: TStringField
      FieldName = 'MrpNo'
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
  end
  inherited dsDet: TDataSource
    Left = 40
    Top = 248
  end
  inherited qyDet: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyDetAfterInsert
    SQL.Strings = (
      'select Top 10 * from ItemMrpDTTB ')
    Left = 40
    Top = 280
    object qyDetAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 100
    end
    object qyDetbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyDetMrpNo: TStringField
      FieldName = 'MrpNo'
      Size = 30
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
  end
  inherited frxHed: TfrxDBDataset
    UserName = #29289#26009#20998#26512#20027#34920
    FieldAliases.Strings = (
      'AutoNo=AutoNo'
      'MrpNo=MrpNo'
      'bSelect=bSelect'
      'MrpDate=MrpDate'
      'bComp=bComp'
      'Remark=Remark'
      'bPrint=bPrint'
      'PrintNum=PrintNum'
      'MakeDate=MakeDate'
      'MakeMan=MakeMan'
      'MakeManName=MakeManName'
      'EditMan=EditMan'
      'EditManName=EditManName'
      'EditDate=EditDate'
      'AuditFlag=AuditFlag'
      'bMaxAudit=bMaxAudit'
      'AuditManName=AuditManName'
      'AuditDate=AuditDate'
      'MaxAuditDate=MaxAuditDate')
  end
  inherited frxDet: TfrxDBDataset
    UserName = #29289#26009#20998#26512#20174#34920
    FieldAliases.Strings = (
      'AutoNo=AutoNo'
      'bSelect=bSelect'
      'MrpNo=MrpNo'
      'ItemID=ItemID'
      'ItemCode=ItemCode'
      'ItemPYCode=ItemPYCode'
      'ItemName=ItemName'
      'ItemSpc=ItemSpc'
      'ItemPic=ItemPic'
      'ItemUnit=ItemUnit'
      'SubUnit=SubUnit'
      'iFlag=iFlag'
      'ExchRate=ExchRate'
      'ProType=ProType'
      'Color=Color'
      'CompactNO=CompactNO'
      'SaleOrderNo=SaleOrderNo'
      'SaleOrderId=SaleOrderId'
      'ProduceNum=ProduceNum'
      'AdjustNum=AdjustNum'
      'FinalNum=FinalNum'
      'BeforeNum=BeforeNum'
      'MRPResult=MRPResult'
      'Remark=Remark'
      'WareNum=WareNum'
      'CanUseNum=CanUseNum'
      'UseNum=UseNum')
    Left = 40
    Top = 320
  end
  object frxProSum: TfrxDBDataset
    UserName = #29289#26009#20998#26512#20135#21697#27719#24635
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoNo='#33258#21160#32534#21495
      'bSelect='#26159#21542#36873#25321
      'PId=PId'
      'CId=CId'
      'MrpNo='#21333#21495
      'ItemID='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemPYCode='#20135#21697#25340#38899#30721
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'ItemPic='#22270#21495
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
      'Remark='#22791#27880)
    DataSet = qyProSum
    BCDToCurrency = False
    Left = 80
    Top = 320
  end
  object qyProSum: TADOQuery
    Connection = Data.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select Top 10 * from ItemMrpProTB where bSum=1')
    Left = 80
    Top = 280
  end
  object dsProSum: TDataSource
    DataSet = qyProSum
    Left = 80
    Top = 248
  end
  object qyPro: TADOQuery
    Connection = Data.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select Top 10 * from ItemMrpProTB where bSum=0')
    Left = 120
    Top = 280
  end
  object dsPro: TDataSource
    DataSet = qyPro
    Left = 120
    Top = 248
  end
  object qyMatSum: TADOQuery
    Connection = Data.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select Top 10 * from ItemMrpMatTB where bSum=1')
    Left = 160
    Top = 280
  end
  object dsMatSum: TDataSource
    DataSet = qyMatSum
    Left = 160
    Top = 248
  end
  object dsMat: TDataSource
    DataSet = qyMat
    Left = 208
    Top = 248
  end
  object qyMat: TADOQuery
    Connection = Data.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select Top 10 * from ItemMrpMatTB where bSum=0')
    Left = 208
    Top = 280
  end
  object frxPro: TfrxDBDataset
    UserName = #29289#26009#20998#26512#20135#21697#26126#32454
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoNo='#33258#21160#32534#21495
      'bSelect='#26159#21542#36873#25321
      'PId=PId'
      'CId=CId'
      'MrpNo='#21333#21495
      'ItemID='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemPYCode='#20135#21697#25340#38899#30721
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'ItemPic='#22270#21495
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
      'Remark='#22791#27880)
    DataSet = qyPro
    BCDToCurrency = False
    Left = 120
    Top = 320
  end
  object frxMatSum: TfrxDBDataset
    UserName = #29289#26009#20998#26512#29289#26009#27719#24635
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoNo='#33258#21160#32534#21495
      'bSelect='#26159#21542#36873#25321
      'PId=PId'
      'CId=CId'
      'MrpNo='#21333#21495
      'ItemID='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemPYCode='#20135#21697#25340#38899#30721
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'ItemPic='#22270#21495
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
      'DrawDept='#39046#29992#21333#20301
      'bSum='#26159#21542#27719#24635
      'iLevel='#32423#21035
      'BeforeNum='#19978#27425#25968#37327
      'MRPResult='#20998#26512#32467#26524
      'bDel='#26159#21542#21024#38500
      'Remark='#22791#27880)
    DataSet = qyMatSum
    BCDToCurrency = False
    Left = 160
    Top = 320
  end
  object frxMat: TfrxDBDataset
    UserName = #29289#26009#20998#26512#29289#26009#26126#32454
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoNo='#33258#21160#32534#21495
      'bSelect='#26159#21542#36873#25321
      'PId=PId'
      'CId=CId'
      'MrpNo='#21333#21495
      'ItemID='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemPYCode='#20135#21697#25340#38899#30721
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'ItemPic='#22270#21495
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
      'DrawDept='#39046#29992#37096#38376
      'bSum='#26159#21542#27719#24635
      'iLevel='#32423#21035
      'BeforeNum='#19978#27425#25968#37327
      'MRPResult='#20998#26512#32467#26524
      'bDel='#26159#21542#21024#38500
      'Remark='#22791#27880)
    DataSet = qyMat
    BCDToCurrency = False
    Left = 208
    Top = 320
  end
end
