inherited SaleAccountAgeQFM: TSaleAccountAgeQFM
  Caption = #24212#25910#36134#40836#34920
  ClientHeight = 507
  ClientWidth = 1066
  ExplicitWidth = 1066
  ExplicitHeight = 507
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Width = 1066
    TabOrder = 2
    ExplicitWidth = 1066
    inherited cxLabTitle: TcxLabel
      Caption = #24212#25910#36134#40836#34920
      Style.IsFontAssigned = True
      ExplicitTop = 0
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlFind: TPanel
    Width = 1066
    Height = 35
    TabOrder = 4
    ExplicitWidth = 1066
    ExplicitHeight = 35
    object lbl4: TLabel
      Left = 26
      Top = 10
      Width = 24
      Height = 13
      Caption = #23458#25143
    end
    object btnObject: TcxButtonEdit
      Left = 56
      Top = 6
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemNamePropertiesButtonClick
      ShowHint = True
      TabOrder = 0
      TextHint = #21487#36755#20837#23458#25143#20195#21495#12289#21517#31216#12289#25340#38899#30721#26597#35810
      Width = 353
    end
  end
  inherited cxpgcntrl1: TcxPageControl
    Top = 111
    Width = 1066
    Height = 396
    ExplicitTop = 111
    ExplicitWidth = 1066
    ExplicitHeight = 396
    ClientRectBottom = 390
    ClientRectRight = 1060
    inherited cxtbsht1: TcxTabSheet
      Caption = #36134#40836#26126' '#32454
      ExplicitWidth = 1058
      ExplicitHeight = 363
      inherited cxgrd: TcxGrid
        Width = 1058
        Height = 363
        ExplicitWidth = 1058
        ExplicitHeight = 363
        inherited cxgrdtbv: TcxGridDBTableView
          OnDblClick = cxgrdtbvDblClick
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skSum
              Position = spFooter
              Column = cxgrdtbvInvoiceMoney
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxgrdtbvPayMoney
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxgrdtbvNoPayMoney
            end
            item
              Format = #21512#35745':0'
              Kind = skCount
              Position = spFooter
              Column = cxgrdtbvCustId
            end>
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
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Column = cxgrdtbvInvoiceMoney
            end
            item
              Kind = skSum
              Column = cxgrdtbvPayMoney
            end
            item
              Kind = skSum
              Column = cxgrdtbvNoPayMoney
            end
            item
              Format = #21512#35745':0'
              Kind = skCount
              Column = cxgrdtbvCustId
            end>
          OptionsView.GroupByBox = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object cxgrdtbvCustId: TcxGridDBColumn
            Caption = #23458#25143#32534#21495
            DataBinding.FieldName = 'CustId'
            Width = 87
          end
          object cxgrdtbvCustName: TcxGridDBColumn
            Caption = #23458#25143#21517#31216
            DataBinding.FieldName = 'CustName'
            Width = 270
          end
          object cxgrdtbvInvoiceNo: TcxGridDBColumn
            Caption = #35760#36134#21333#21495
            DataBinding.FieldName = 'InvoiceNo'
            Width = 112
          end
          object cxgrdtbvInvoiceDate: TcxGridDBColumn
            Caption = #35760#36134#26085#26399
            DataBinding.FieldName = 'InvoiceDate'
            Width = 100
          end
          object cxgrdtbvInvoiceMoney: TcxGridDBColumn
            Caption = #35760#36134#37329#39069
            DataBinding.FieldName = 'InvoiceMoney'
            Width = 100
          end
          object cxgrdtbvPayMoney: TcxGridDBColumn
            Caption = #25910#27454#37329#39069
            DataBinding.FieldName = 'PayMoney'
            Width = 100
          end
          object cxgrdtbvNoPayMoney: TcxGridDBColumn
            Caption = #27424#27454#37329#39069
            DataBinding.FieldName = 'NoPayMoney'
            Width = 100
          end
          object cxgrdtbvDayNum: TcxGridDBColumn
            Caption = #36134#40836#22825#25968
            DataBinding.FieldName = 'DayNum'
            Visible = False
            Width = 100
          end
          object cxgrdtbvAgeKind: TcxGridDBColumn
            Caption = #36134#40836#32423#21035
            DataBinding.FieldName = 'AgeKind'
            Visible = False
            GroupIndex = 0
            Width = 100
          end
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = #36134#40836#27719#24635
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 457
        Top = 0
        Width = 601
        Height = 363
        Align = alClient
        PopupMenu = pmLayout
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxgrdtbvCellDblClick
          DataController.DataSource = dsSum
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
          OptionsView.NoDataToDisplayInfoText = #24658#21019#36719#20214
          OptionsView.Footer = True
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 35
          object cxGridDBTableView1CustId: TcxGridDBColumn
            DataBinding.FieldName = 'CustId'
            Width = 77
          end
          object cxGridDBTableView1CustName: TcxGridDBColumn
            DataBinding.FieldName = 'CustName'
            Width = 268
          end
          object cxGridDBTableView1AgeKind: TcxGridDBColumn
            DataBinding.FieldName = 'AgeKind'
            Width = 100
          end
          object cxGridDBTableView1NoPayMoney: TcxGridDBColumn
            DataBinding.FieldName = 'NoPayMoney'
            Width = 87
          end
        end
        object cxGrid1DBChartView1: TcxGridDBChartView
          Categories.DataBinding.FieldName = 'AgeKind'
          DataController.DataSource = dsChart
          DataController.DetailKeyFieldNames = 'NoPayMoney'
          DataController.KeyFieldNames = 'AgeKind'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DiagramPie.Active = True
          DiagramPie.SeriesCaptions = False
          DiagramPie.SeriesSites = True
          DiagramPie.Styles.ValueCaptions = DataFM.cxStyle1
          DiagramPie.Values.CaptionPosition = pdvcpCenter
          DiagramPie.Values.PercentageCaptionFormat = '0%'
          object cxGrid1DBChartView1Series2: TcxGridDBChartSeries
            DataBinding.FieldName = 'NoPayMoney'
          end
        end
        object cxgrdlvlGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBChartView1
        end
      end
      object cxgrd1: TcxGrid
        Left = 0
        Top = 0
        Width = 449
        Height = 363
        Align = alLeft
        PopupMenu = pmLayout
        TabOrder = 1
        object cxgrdbtblvw1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxgrdtbvCellDblClick
          DataController.DataSource = dsSum
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
              Column = cxgrdbtblvw1NoPayMoney
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.PullFocusing = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = #24658#21019#36719#20214
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 35
          OnCustomDrawIndicatorCell = cxgrdtbvCustomDrawIndicatorCell
          object cxgrdbtblvw1CustId: TcxGridDBColumn
            Caption = #23458#25143#32534#21495
            DataBinding.FieldName = 'CustId'
            Width = 65
          end
          object cxgrdbtblvw1CustName: TcxGridDBColumn
            Caption = #23458#25143#21517#31216
            DataBinding.FieldName = 'CustName'
            Width = 237
          end
          object cxgrdbtblvw1NoPayMoney: TcxGridDBColumn
            Caption = #27424#27454#37329#39069
            DataBinding.FieldName = 'NoPayMoney'
            Width = 76
          end
        end
        object cxgrdlvl1: TcxGridLevel
          GridView = cxgrdbtblvw1
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 449
        Top = 0
        Width = 8
        Height = 363
        Control = cxgrd1
      end
      object cxdbtxtdtCustId: TcxDBTextEdit
        Left = 222
        Top = 144
        DataBinding.DataField = 'CustId'
        DataBinding.DataSource = dsSum
        Properties.OnChange = cxdbtxtdtCustIdPropertiesChange
        TabOrder = 3
        Visible = False
        Width = 121
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
  end
  inherited dsHed: TDataSource
    Left = 24
    Top = 280
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'exec PrSaleAccountAgeQ '#39#39',1')
    Left = 24
    Top = 320
    object qyHedCustId: TStringField
      FieldName = 'CustId'
      Size = 100
    end
    object qyHedCustName: TStringField
      FieldName = 'CustName'
      Size = 200
    end
    object qyHedInvoiceNo: TStringField
      FieldName = 'InvoiceNo'
      Size = 50
    end
    object qyHedInvoiceDate: TDateTimeField
      FieldName = 'InvoiceDate'
    end
    object qyHedInvoiceMoney: TFMTBCDField
      FieldName = 'InvoiceMoney'
      Precision = 19
      Size = 6
    end
    object qyHedPayMoney: TFMTBCDField
      FieldName = 'PayMoney'
      Precision = 19
      Size = 6
    end
    object qyHedNoPayMoney: TFMTBCDField
      FieldName = 'NoPayMoney'
      Precision = 19
      Size = 6
    end
    object qyHedDayNum: TIntegerField
      FieldName = 'DayNum'
    end
    object qyHedAgeKind: TStringField
      FieldName = 'AgeKind'
      Size = 100
    end
  end
  inherited frxHed: TfrxDBDataset
    UserName = #24212#25910#36134#40836#34920#26126#32454
    FieldAliases.Strings = (
      'CustId='#23458#25143#32534#21495
      'CustName='#23458#25143#21517#31216
      'InvoiceNo='#35760#36134#21333#21495
      'InvoiceDate='#35760#36134#26085#26399
      'InvoiceMoney='#35760#36134#37329#39069
      'PayMoney='#25910#27454#37329#39069
      'NoPayMoney='#27424#27454#37329#39069
      'DayNum='#36134#40836#22825#25968
      'AgeKind='#36134#40836#32423#21035)
    Left = 24
    Top = 360
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = #24212#25910#20998#26512#27719#24635
    CloseDataSource = False
    FieldAliases.Strings = (
      'CustId='#23458#25143#32534#21495
      'CustName='#23458#25143#21517#31216
      'NoPayMoney='#27424#27454#37329#39069)
    DataSet = qySum
    BCDToCurrency = False
    Left = 120
    Top = 360
  end
  object qySum: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'exec PrSaleAccountAgeQ '#39#39',3')
    Left = 120
    Top = 320
    object qySumCustId: TStringField
      FieldName = 'CustId'
      Size = 100
    end
    object qySumCustName: TStringField
      FieldName = 'CustName'
      Size = 200
    end
    object qySumNoPayMoney: TFMTBCDField
      FieldName = 'NoPayMoney'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
  end
  object dsSum: TDataSource
    DataSet = qySum
    Left = 120
    Top = 280
  end
  object qyChart: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'exec PrSaleAccountAgeQ '#39#39',2')
    Left = 72
    Top = 320
  end
  object dsChart: TDataSource
    DataSet = qyChart
    Left = 72
    Top = 280
  end
end
