inherited ItemBomAnalyseFM: TItemBomAnalyseFM
  Caption = #20135#21697#28165#21333#20998#26512
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    TabOrder = 2
    inherited cxLabTitle: TcxLabel
      Caption = #20135#21697#28165#21333#20998#26512
      Style.IsFontAssigned = True
      ExplicitTop = 0
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlFind: TPanel
    Height = 62
    TabOrder = 4
    ExplicitHeight = 62
    object cxGroupBox1: TcxGroupBox
      Left = 0
      Top = 0
      Align = alLeft
      Caption = #27597#20214#26465#20214
      TabOrder = 0
      Height = 62
      Width = 369
      object cxItemM: TcxButtonEdit
        Left = 71
        Top = 21
        ParentShowHint = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxItemLPropertiesButtonClick
        Properties.OnChange = btFindClick
        ShowHint = True
        TabOrder = 0
        TextHint = #21487#36755#20837#20135#21697#20195#21495#12289#21517#31216#12289#35268#26684#12289#25340#38899#30721#26597#35810
        Width = 270
      end
      object cxlbl7: TcxLabel
        Left = 13
        Top = 23
        Caption = #27597#20214#20135#21697
        Transparent = True
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 369
      Top = 0
      Align = alLeft
      Caption = #23376#20214#26465#20214
      TabOrder = 1
      Height = 62
      Width = 338
      object cxItemD: TcxButtonEdit
        Left = 72
        Top = 23
        ParentShowHint = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxItemRPropertiesButtonClick
        Properties.OnChange = btFindClick
        ShowHint = True
        TabOrder = 0
        TextHint = #21487#36755#20837#20135#21697#20195#21495#12289#21517#31216#12289#35268#26684#12289#25340#38899#30721#26597#35810
        Width = 257
      end
      object cxLabel4: TcxLabel
        Left = 14
        Top = 25
        Caption = #23376#20214#20135#21697
        Transparent = True
      end
    end
  end
  inherited cxpgcntrl1: TcxPageControl
    Top = 138
    Height = 402
    Properties.ActivePage = cxTabSheet1
    ExplicitTop = 138
    ExplicitHeight = 402
    ClientRectBottom = 396
    inherited cxtbsht1: TcxTabSheet
      Caption = #26641#24418#26174#31034
      ExplicitHeight = 369
      inherited cxgrd: TcxGrid
        Height = 369
        ExplicitHeight = 369
        inherited cxgrdtbv: TcxGridDBTableView
          OnDblClick = cxgrdtbvDblClick
          DataController.KeyFieldNames = 'BillNo'
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
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <
            item
              Links = <>
              SummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'AllMoney'
                end
                item
                  Kind = skSum
                  FieldName = 'OrderNum'
                end>
            end>
          object cxgrdtbvCompactNo: TcxGridDBColumn
            Caption = 'BOM'#21333#21495
            DataBinding.FieldName = 'BillNo'
            Width = 68
          end
          object cxgrdtbvItemCode: TcxGridDBColumn
            Caption = #20135#21697#20195#21495
            DataBinding.FieldName = 'ItemCode'
            Width = 101
          end
          object cxgrdtbvItemName: TcxGridDBColumn
            Caption = #20135#21697#21517#31216
            DataBinding.FieldName = 'ItemName'
            Width = 228
          end
          object cxgrdtbvItemSpc: TcxGridDBColumn
            Caption = #20135#21697#35268#26684
            DataBinding.FieldName = 'ItemSpc'
            Width = 568
          end
          object cxgrdtbvItemID: TcxGridDBColumn
            Caption = #20135#21697#32534#21495
            DataBinding.FieldName = 'ItemID'
            Visible = False
            Width = 89
          end
        end
        object cxgrdDBTableView1: TcxGridDBTableView [1]
          OnDblClick = cxgrdDBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = dsDet
          DataController.DetailKeyFieldNames = 'ItemID'
          DataController.KeyFieldNames = 'AutoID'
          DataController.MasterKeyFieldNames = 'ItemID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Column = cxgrdDBTableView1SwitchNum
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.PullFocusing = True
          OptionsView.NoDataToDisplayInfoText = #24658#25463#36719#20214
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 35
          OnCustomDrawIndicatorCell = cxgrdDBTableView1CustomDrawIndicatorCell
          object cxgrdDBTableView1ItemCode: TcxGridDBColumn
            Caption = #20135#21697#20195#21495
            DataBinding.FieldName = 'ChildCode'
            Width = 89
          end
          object cxgrdDBTableView1ItemName: TcxGridDBColumn
            Caption = #20135#21697#21517#31216
            DataBinding.FieldName = 'ChildName'
            Width = 306
          end
          object cxgrdDBTableView1ItemSpc: TcxGridDBColumn
            Caption = #35268#26684
            DataBinding.FieldName = 'ChildSpc'
            Width = 158
          end
          object cxgrdDBTableView1SwitchNum: TcxGridDBColumn
            Caption = #29992#37327
            DataBinding.FieldName = 'Dosage'
            Width = 86
          end
          object cxgrdDBTableView1SwitchKind: TcxGridDBColumn
            Caption = #23376#20214#32534#21495
            DataBinding.FieldName = 'ChildId'
            Visible = False
            Width = 100
          end
        end
        inherited cxgrdlev: TcxGridLevel
          object cxgrdLevel2: TcxGridLevel
            GridView = cxgrdDBTableView1
          end
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = #32593#26684#26174#31034
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1066
        Height = 369
        Align = alClient
        PopupMenu = pmLayout
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxgrdtbvCellDblClick
          DataController.DataSource = dsDet
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.PullFocusing = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = #24658#25463#36719#20214
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 40
          OnCustomDrawIndicatorCell = cxgrdtbvCustomDrawIndicatorCell
          object cxGridDBTableView1BillNo: TcxGridDBColumn
            Caption = #21333#21495
            DataBinding.FieldName = 'BillNo'
            Options.CellMerging = True
            Width = 105
          end
          object cxGridDBTableView1ItemCode: TcxGridDBColumn
            Caption = #20135#21697#20195#21495
            DataBinding.FieldName = 'ItemCode'
            Options.CellMerging = True
            Width = 76
          end
          object cxGridDBTableView1ItemName: TcxGridDBColumn
            Caption = #20135#21697#21517#31216
            DataBinding.FieldName = 'ItemName'
            Options.CellMerging = True
            Width = 107
          end
          object cxGridDBTableView1ItemSpc: TcxGridDBColumn
            Caption = #20135#21697#35268#26684
            DataBinding.FieldName = 'ItemSpc'
            Options.CellMerging = True
            Width = 77
          end
          object cxGridDBTableView1ChildId: TcxGridDBColumn
            Caption = #23376#20214#32534#21495
            DataBinding.FieldName = 'ChildId'
            Width = 70
          end
          object cxGridDBTableView1ChildCode: TcxGridDBColumn
            Caption = #23376#20214#20195#21495
            DataBinding.FieldName = 'ChildCode'
            Width = 71
          end
          object cxGridDBTableView1ChildName: TcxGridDBColumn
            Caption = #23376#20214#21517#31216
            DataBinding.FieldName = 'ChildName'
            Width = 184
          end
          object cxGridDBTableView1ChildSpc: TcxGridDBColumn
            Caption = #23376#20214#35268#26684
            DataBinding.FieldName = 'ChildSpc'
            Width = 128
          end
          object cxGridDBTableView1Dosage: TcxGridDBColumn
            Caption = #29992#37327
            DataBinding.FieldName = 'Dosage'
            Width = 68
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
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
    inherited btFind: TdxBarLargeButton
      OnClick = btFindClick
    end
    inherited btLeft: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btRight: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btFirst: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btLast: TdxBarLargeButton
      Visible = ivNever
    end
    inherited dxbrcmbPageIndex: TdxBarCombo
      Visible = ivNever
    end
    inherited cxbrdtmPage: TcxBarEditItem
      Visible = ivNever
    end
  end
  inherited dsHed: TDataSource
    Left = 104
    Top = 280
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'exec  PrBomItemQ  '#39#39)
    Left = 104
    Top = 320
  end
  inherited frxHed: TfrxDBDataset
    UserName = #20135#21697#28165#21333#20998#26512#27597#20214
    FieldAliases.Strings = (
      'BillNo='#21333#21495
      'ItemID='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'ItemPic='#20135#21697#22270#21495)
    Left = 104
    Top = 360
  end
  object frxDet: TfrxDBDataset
    UserName = #20135#21697#28165#21333#20998#26512#23376#20214
    CloseDataSource = False
    FieldAliases.Strings = (
      'ChildId=ChildId'
      'ChildCode=ChildCode'
      'ChildName=ChildName'
      'ChildSpc=ChildSpc'
      'Dosage=Dosage'
      'ItemID=ItemID'
      'BillNo=BillNo'
      'AutoID=AutoID')
    DataSet = qyDet
    BCDToCurrency = False
    Left = 152
    Top = 360
  end
  object qyDet: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'exec PrBomChildQ  '#39#39)
    Left = 152
    Top = 320
  end
  object dsDet: TDataSource
    DataSet = qyDet
    Left = 152
    Top = 280
  end
end
