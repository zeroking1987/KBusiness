inherited WareStorageQFM: TWareStorageQFM
  Caption = #24211#23384#26597#35810
  ClientHeight = 504
  ClientWidth = 1052
  ExplicitWidth = 1052
  ExplicitHeight = 504
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Width = 1052
    TabOrder = 2
    ExplicitWidth = 1052
    inherited cxLabTitle: TcxLabel
      Caption = #24211#23384#26597#35810
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlFind: TPanel
    Width = 1052
    Height = 99
    TabOrder = 4
    ExplicitTop = 86
    ExplicitWidth = 1052
    ExplicitHeight = 99
    object lstWare: TcxDBTreeList
      Left = 0
      Top = 0
      Width = 161
      Height = 99
      Align = alLeft
      Bands = <
        item
        end>
      DataController.DataSource = dsWare
      DataController.ParentField = 'ParentId'
      DataController.KeyField = 'WareId'
      Navigator.Buttons.CustomButtons = <>
      OptionsView.GridLines = tlglBoth
      RootValue = -1
      TabOrder = 0
      object cxdbtrlstclmnlst1bSelect: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCheckBoxProperties'
        Caption.Text = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Width = 50
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxdbtrlstclmnlst1WareId: TcxDBTreeListColumn
        Visible = False
        Caption.Text = #32534#21495
        DataBinding.FieldName = 'WareId'
        Options.Editing = False
        Width = 54
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxdbtrlstclmnlst1WareName: TcxDBTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Caption.Text = #20179#24211#21517#31216
        DataBinding.FieldName = 'WareName'
        Options.Editing = False
        Width = 84
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object btnItemKind: TcxButtonEdit
      Left = 229
      Top = 27
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemKindPropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 1
      Width = 108
    end
    object cxlbl1: TcxLabel
      Left = 171
      Top = 29
      Caption = #20135#21697#31867#21035
      Transparent = True
    end
    object cxPlace: TcxTextEdit
      Left = 575
      Top = 53
      Properties.OnChange = btFindClick
      TabOrder = 3
      Visible = False
      Width = 121
    end
    object cxlbl3: TcxLabel
      Left = 547
      Top = 55
      Caption = #36135#20301
      Transparent = True
      Visible = False
    end
    object btnItem: TcxButtonEdit
      Left = 229
      Top = 0
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemPropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 5
      TextHint = #21487#36755#20837#20135#21697#20195#21495#12289#21517#31216#12289#35268#26684#12289#25340#38899#30721#26597#35810
      Width = 275
    end
    object cxlbl7: TcxLabel
      Left = 195
      Top = 2
      Caption = #20135#21697
      Transparent = True
    end
    object btnObject: TcxButtonEdit
      Left = 575
      Top = 115
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnObjectPropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 7
      TextHint = #21487#36755#20837#22806#21327#21830#21517#31216#26597#35810
      Visible = False
      Width = 275
    end
    object cxLabel1: TcxLabel
      Left = 529
      Top = 116
      Caption = #22806#21327#21830
      Transparent = True
      Visible = False
    end
    object cxrdgrpZero: TcxRadioGroup
      Left = 229
      Top = 54
      Alignment = alCenterCenter
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = #25968#37327'<>0'
        end
        item
          Caption = #25968#37327'=0'
        end
        item
          Caption = #25152#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 0
      TabOrder = 9
      Height = 35
      Width = 275
    end
    object cxrdgrpUnit: TcxRadioGroup
      Left = 718
      Top = 6
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = #20027#21333#20301
        end
        item
          Caption = #21103#21333#20301
        end
        item
          Caption = #25152#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 0
      TabOrder = 10
      Visible = False
      OnClick = cxrdgrpUnitClick
      Height = 65
      Width = 79
    end
    object cxchckgrpShowField: TcxCheckGroup
      Left = 840
      Top = -8
      Caption = #26174#31034#23646#24615
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = #20179#24211
        end
        item
          Caption = #23646#24615
        end
        item
          Caption = #36135#20301
        end
        item
          Caption = #22806#21327#21830
        end
        item
          Caption = #24037#24207
        end
        item
          Caption = #39068#33394
        end>
      Properties.OnChange = cxchckgrpShowFieldPropertiesChange
      TabOrder = 11
      Visible = False
      Height = 129
      Width = 133
    end
    object cxLabel2: TcxLabel
      Left = 517
      Top = 87
      Caption = #24037#24207#21517#31216
      Transparent = True
      Visible = False
    end
    object cxTechName: TcxButtonEdit
      Left = 575
      Top = 85
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxTechNamePropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 13
      TextHint = #21487#36755#20837#24037#24207#21517#31216#12289#25340#38899#30721#26597#35810
      Visible = False
      Width = 275
    end
    object cxLabel3: TcxLabel
      Left = 343
      Top = 29
      Caption = #23646#24615
      Transparent = True
    end
    object cxColor: TcxButtonEdit
      Left = 575
      Top = 26
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxColorPropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 15
      Visible = False
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 548
      Top = 27
      Caption = #39068#33394
      Transparent = True
      Visible = False
    end
    object cxProType: TcxButtonEdit
      Left = 377
      Top = 27
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
          Visible = False
        end>
      Properties.OnButtonClick = cxProTypePropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 17
      Width = 127
    end
  end
  inherited cxpgcntrl1: TcxPageControl
    Top = 185
    Width = 1052
    Height = 319
    Properties.TabsScroll = False
    ExplicitTop = 185
    ExplicitWidth = 1052
    ExplicitHeight = 319
    ClientRectBottom = 317
    ClientRectRight = 1050
    inherited cxtbsht1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1048
      ExplicitHeight = 289
      inherited cxgrd: TcxGrid
        Width = 717
        Height = 289
        ExplicitWidth = 717
        ExplicitHeight = 289
        inherited cxgrdtbv: TcxGridDBTableView
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skSum
              Column = cxgrdbclmnWareNum
            end
            item
              Kind = skSum
              Column = cxgrdbclmnSubNum
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Format = #21512#35745#65306'0'
              Kind = skCount
            end
            item
              Kind = skSum
              Column = cxgrdbclmnWareNum
            end
            item
              Kind = skSum
              Column = cxgrdbclmnSubNum
            end
            item
              Format = #21512#35745':0'
              Kind = skCount
              Column = cxgrdbclmnItemCode
            end>
          object cxgrdbclmnItemKindId: TcxGridDBColumn
            Caption = #31867#21035#32534#21495
            DataBinding.FieldName = 'ItemKindId'
            Visible = False
            Width = 66
          end
          object cxgrdbclmnItemKindName: TcxGridDBColumn
            Caption = #31867#21035#21517#31216
            DataBinding.FieldName = 'ItemKindName'
            Visible = False
            Width = 71
          end
          object cxgrdbclmnItemId: TcxGridDBColumn
            Caption = #20135#21697#32534#21495
            DataBinding.FieldName = 'ItemId'
            Visible = False
            Width = 64
          end
          object cxgrdbclmnItemCode: TcxGridDBColumn
            Caption = #20135#21697#20195#21495
            DataBinding.FieldName = 'ItemCode'
            Width = 100
          end
          object cxgrdbclmnItemName: TcxGridDBColumn
            Caption = #20135#21697#21517#31216
            DataBinding.FieldName = 'ItemName'
            Width = 100
          end
          object cxgrdbclmnItemSpc: TcxGridDBColumn
            Caption = #35268#26684
            DataBinding.FieldName = 'ItemSpc'
            Width = 100
          end
          object cxgrdbclmnItemUnit: TcxGridDBColumn
            Caption = #21333#20301
            DataBinding.FieldName = 'ItemUnit'
            Width = 52
          end
          object cxgrdbclmnSubUnit: TcxGridDBColumn
            Caption = #21103#21333#20301
            DataBinding.FieldName = 'SubUnit'
            Visible = False
            Width = 52
          end
          object cxgrdtbvColumn1: TcxGridDBColumn
            Caption = #21333#20215
            DataBinding.FieldName = 'ItemPrice'
            Visible = False
            Width = 62
          end
          object cxgrdbclmnWareName: TcxGridDBColumn
            Caption = #20179#24211
            DataBinding.FieldName = 'WareName'
            Width = 72
          end
          object cxgrdbclmnProType: TcxGridDBColumn
            Caption = #23646#24615
            DataBinding.FieldName = 'ProType'
            Visible = False
            Width = 63
          end
          object cxgrdbclmnColor: TcxGridDBColumn
            Caption = #39068#33394
            DataBinding.FieldName = 'Color'
            Visible = False
            Width = 56
          end
          object cxgrdbclmnPlaceNo: TcxGridDBColumn
            Caption = #36135#20301
            DataBinding.FieldName = 'PlaceNo'
            Visible = False
            Width = 62
          end
          object cxgrdbclmnObjectName: TcxGridDBColumn
            Caption = #22806#21327#21830
            DataBinding.FieldName = 'ObjectName'
            Visible = False
            Width = 100
          end
          object cxgrdbclmnTechName: TcxGridDBColumn
            Caption = #24037#24207
            DataBinding.FieldName = 'TechName'
            Visible = False
            Width = 68
          end
          object cxgrdbclmnWareNum: TcxGridDBColumn
            Caption = #25968#37327
            DataBinding.FieldName = 'WareNum'
            Width = 78
          end
          object cxgrdbclmnSubNum: TcxGridDBColumn
            Caption = #21103#25968#37327
            DataBinding.FieldName = 'SubNum'
            Visible = False
            Width = 82
          end
          object cxgrdtbvColumn2: TcxGridDBColumn
            Caption = #37329#39069
            DataBinding.FieldName = 'WareMoney'
            Visible = False
            Width = 69
          end
        end
      end
      object cxdbEdtItemId: TcxDBTextEdit
        Left = 536
        Top = 112
        DataBinding.DataField = 'ItemId'
        DataBinding.DataSource = dsHed
        Properties.OnChange = cxdbEdtItemIdPropertiesChange
        TabOrder = 1
        Visible = False
        Width = 121
      end
      object cxPageControl1: TcxPageControl
        Left = 724
        Top = 0
        Width = 324
        Height = 289
        Align = alRight
        TabOrder = 2
        Properties.ActivePage = cxTabSheet1
        Properties.CustomButtons.Buttons = <>
        Properties.TabPosition = tpBottom
        ClientRectBottom = 261
        ClientRectLeft = 2
        ClientRectRight = 322
        ClientRectTop = 2
        object cxTabSheet1: TcxTabSheet
          Caption = #22270#24418#20998#24067
          ImageIndex = 0
          object cxgrd1: TcxGrid
            Left = 0
            Top = 0
            Width = 320
            Height = 259
            Align = alClient
            TabOrder = 0
            object cxgrdbtblvwcxgrdtbv1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              OnCellDblClick = cxgrdtbvCellDblClick
              DataController.DataSource = dsWareNum
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                end
                item
                  Kind = skSum
                  Column = cxgrdbclmncxgrdtbv1WareNum
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.PullFocusing = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Editing = False
              OptionsView.NoDataToDisplayInfoText = #24658#21019#36719#20214
              OptionsView.Indicator = True
              OptionsView.IndicatorWidth = 35
              object cxgrdbclmncxgrdtbv1WareId: TcxGridDBColumn
                Caption = #20179#24211#32534#21495
                DataBinding.FieldName = 'WareId'
                Visible = False
                Width = 80
              end
              object cxgrdbclmncxgrdtbv1WareName: TcxGridDBColumn
                Caption = #20179#24211#21517#31216
                DataBinding.FieldName = 'WareName'
                Width = 96
              end
              object cxgrdbclmncxgrdtbv1WareNum: TcxGridDBColumn
                DataBinding.FieldName = 'WareNum'
                Width = 80
              end
            end
            object cxgrd1DBChartView1: TcxGridDBChartView
              Categories.DataBinding.FieldName = 'WareName'
              DataController.DataSource = dsWareNum
              DataController.DetailKeyFieldNames = 'WareNum'
              DataController.KeyFieldNames = 'WareName'
              DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
              DiagramArea.Values.VaryColorsByCategory = True
              DiagramArea.Values.CaptionPosition = ldvcpCenter
              DiagramBar.Styles.ValueCaptions = DataFM.cxStyle1
              DiagramColumn.Styles.ValueCaptions = DataFM.cxStyle1
              DiagramColumn.Values.VaryColorsByCategory = True
              DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
              DiagramPie.Active = True
              DiagramPie.SeriesCaptions = False
              DiagramPie.SeriesSites = True
              DiagramPie.Styles.ValueCaptions = DataFM.cxStyle1
              DiagramPie.Values.CaptionPosition = pdvcpCenter
              DiagramPie.Values.PercentageCaptionFormat = '0%'
              DiagramStackedBar.Styles.ValueCaptions = DataFM.cxStyle1
              DiagramStackedColumn.Styles.ValueCaptions = DataFM.cxStyle1
              Title.Text = #20179#24211#20998#24067
              ToolBox.CustomizeButton = True
              ToolBox.DiagramSelector = True
              object cxgrd1DBChartView1Series1: TcxGridDBChartSeries
                DataBinding.FieldName = 'WareNum'
              end
            end
            object cxgrdlev1: TcxGridLevel
              GridView = cxgrd1DBChartView1
            end
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 717
        Top = 0
        Width = 7
        Height = 289
        AlignSplitter = salRight
        Control = cxPageControl1
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    Left = 896
    Top = 48
    DockControlHeights = (
      0
      0
      56
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
  inherited PupBpm: TdxBarPopupMenu
    Left = 936
    Top = 48
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'exec prWareStorageQ '#39#20179#24211','#23646#24615','#36135#20301','#22806#21327#21830','#24037#24207','#39068#33394#39','#39#39',0')
  end
  inherited frxHed: TfrxDBDataset
    UserName = #24211#23384#26597#35810
    FieldAliases.Strings = (
      'ItemKindId='#20135#21697#31867#21035#32534#21495
      'ItemKindName='#20135#21697#31867#21035#21517#31216
      'ItemId='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#20135#21697#35268#26684
      'ItemUnit='#20027#21333#20301
      'SubUnit='#21103#21333#20301
      'ItemPrice='#21333#20215
      'WareName='#20179#24211#21517#31216
      'ProType='#23646#24615
      'Color='#39068#33394
      'PlaceNo='#36135#20301
      'ObjectName='#22806#21327#21830
      'TechName='#24037#24207
      'WareNum='#20027#25968#37327
      'SubNum='#21103#25968#37327
      'WareMoney='#37329#39069)
  end
  object qyWareNum: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'select a.ItemId,a.WareId,b.WareName,WareNum=Sum(IsNull(a.WareNum' +
        ',0)) '
      'from WareStorageTB a left join WareTB b on a.WareId=b.WareId'
      'where 1=1 '
      'group by a.ItemId,a.WareId,b.WareName')
    Left = 120
    Top = 328
    object qyWareNumItemId: TStringField
      FieldName = 'ItemId'
      Size = 30
    end
    object qyWareNumWareId: TStringField
      FieldName = 'WareId'
    end
    object qyWareNumWareName: TStringField
      FieldName = 'WareName'
      Size = 30
    end
    object qyWareNumWareNum: TFMTBCDField
      DisplayLabel = #25968#37327
      FieldName = 'WareNum'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
  end
  object dsWareNum: TDataSource
    DataSet = qyWareNum
    Left = 120
    Top = 288
  end
  object frxWare: TfrxDBDataset
    UserName = #20179#24211#20998#24067
    CloseDataSource = False
    FieldAliases.Strings = (
      'ItemId=ItemId'
      'WareId=WareId'
      'WareName=WareName'
      'WareNum=WareNum')
    DataSet = qyWareNum
    BCDToCurrency = False
    Left = 120
    Top = 368
  end
  object qyWare: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select bSelect,WareId,WareName,ParentId from WareTB')
    Left = 224
    Top = 328
    object qyWarebSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyWareWareId: TStringField
      FieldName = 'WareId'
    end
    object qyWareWareName: TStringField
      FieldName = 'WareName'
      Size = 30
    end
    object qyWareParentId: TStringField
      FieldName = 'ParentId'
    end
  end
  object dsWare: TDataSource
    DataSet = qyWare
    Left = 224
    Top = 288
  end
  object dsPlaceNum: TDataSource
    DataSet = qyPlaceNum
    Left = 168
    Top = 288
  end
  object qyPlaceNum: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select a.ItemId,a.PlaceNo,WareNum=Sum(IsNull(a.WareNum,0)) '
      'from WareStorageTB a '
      'where 1=1 '
      'group by a.ItemId,a.PlaceNo')
    Left = 168
    Top = 328
    object qyPlaceNumItemId: TStringField
      FieldName = 'ItemId'
      Size = 30
    end
    object qyPlaceNumPlaceNo: TStringField
      FieldName = 'PlaceNo'
      Size = 30
    end
    object qyPlaceNumWareNum: TFMTBCDField
      DisplayLabel = #25968#37327
      FieldName = 'WareNum'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = #35831#36141#21333#26597#35810
    CloseDataSource = False
    FieldAliases.Strings = (
      'ItemId=ItemId'
      'PlaceNo=PlaceNo'
      'WareNum=WareNum')
    DataSet = qyPlaceNum
    BCDToCurrency = False
    Left = 168
    Top = 368
  end
end
