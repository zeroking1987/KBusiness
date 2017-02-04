inherited CWOtherFM: TCWOtherFM
  Caption = #20854#20182#35774#32622
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    TabOrder = 3
    inherited cxLabTitle: TcxLabel
      Caption = #20854#20182#35774#32622
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlcxGrd: TPanel
    inherited cxgrd: TcxGrid
      inherited cxgrdtbv: TcxGridDBTableView
        DataController.DataSource = nil
      end
    end
    object cxpgc: TcxPageControl
      Left = 0
      Top = 0
      Width = 1027
      Height = 451
      Align = alClient
      TabOrder = 1
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 445
      ClientRectLeft = 2
      ClientRectRight = 1021
      ClientRectTop = 27
      object cxTabSheet1: TcxTabSheet
        Caption = #24120#29992#25688#35201
        ImageIndex = 0
        object cxgrd1: TcxGrid
          Left = 0
          Top = 0
          Width = 1019
          Height = 418
          Align = alClient
          TabOrder = 0
          object cxgrdtbv1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsHed
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.PullFocusing = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Editing = False
            OptionsView.NoDataToDisplayInfoText = #24658#25463#36719#20214
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 35
            object cxgrdtbv1CWRemark: TcxGridDBColumn
              Caption = #24120#29992#25688#35201
              DataBinding.FieldName = 'CWRemark'
              Width = 602
            end
          end
          object cxgrdlev1: TcxGridLevel
            GridView = cxgrdtbv1
          end
        end
      end
      object cxtbsht2: TcxTabSheet
        Caption = #26680#31639#39033#30446
        ImageIndex = 2
        object cxgrd2: TcxGrid
          Left = 0
          Top = 0
          Width = 1019
          Height = 418
          Align = alClient
          TabOrder = 0
          object cxgrdtbv2: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = ds1
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.PullFocusing = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Editing = False
            OptionsView.NoDataToDisplayInfoText = #24658#25463#36719#20214
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 35
            object cxgrdtbv2ItemName: TcxGridDBColumn
              Caption = #26680#31639#39033#30446
              DataBinding.FieldName = 'ItemName'
              Width = 360
            end
            object cxgrdtbv2Remark: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 235
            end
          end
          object cxgrdlev2: TcxGridLevel
            GridView = cxgrdtbv2
          end
        end
      end
      object cxtbsht1: TcxTabSheet
        Caption = #26680#31639#39033#30446
        ImageIndex = 1
        TabVisible = False
        object cxgrd3: TcxGrid
          Left = 0
          Top = 0
          Width = 1019
          Height = 418
          Align = alClient
          TabOrder = 0
          object cxgrdtbv3: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = ds1
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.PullFocusing = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Editing = False
            OptionsView.NoDataToDisplayInfoText = #27809#26377#25968#25454#21487#26174#31034
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 35
            object cxgrdbclmncxgrdtbv3CurrId: TcxGridDBColumn
              Caption = #24065#31181#32534#21495
              DataBinding.FieldName = 'CurrId'
              Width = 71
            end
            object cxgrdbclmncxgrdtbv3CurrName: TcxGridDBColumn
              Caption = #24065#31181#21517#31216
              DataBinding.FieldName = 'CurrName'
              Width = 107
            end
            object cxgrdbclmncxgrdtbv3CurrGlyph: TcxGridDBColumn
              Caption = #31526#21495
              DataBinding.FieldName = 'CurrGlyph'
              Width = 47
            end
            object cxgrdbclmncxgrdtbv3bLocal: TcxGridDBColumn
              Caption = #26159#21542#26412#24065
              DataBinding.FieldName = 'bLocal'
              Width = 54
            end
            object cxgrdbclmncxgrdtbv3ExchangeRate: TcxGridDBColumn
              Caption = #20817#20154#27665#24065#27719#29575
              DataBinding.FieldName = 'ExchangeRate'
              Width = 97
            end
            object cxgrdbclmncxgrdtbv3Remark: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 122
            end
          end
          object cxgrdlev3: TcxGridLevel
            GridView = cxgrdtbv3
          end
        end
      end
      object cxtbsht3: TcxTabSheet
        Caption = #36816#36755#26041#24335
        ImageIndex = 3
        TabVisible = False
        object cxgrd4: TcxGrid
          Left = 0
          Top = 0
          Width = 1019
          Height = 418
          Align = alClient
          TabOrder = 0
          object cxgrdtbv4: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = ds3
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.PullFocusing = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Editing = False
            OptionsView.NoDataToDisplayInfoText = #27809#26377#25968#25454#21487#26174#31034
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 35
            object cxgrdbclmncxgrdtbv4ModeName: TcxGridDBColumn
              Caption = #26041#24335#21517#31216
              DataBinding.FieldName = 'ModeName'
            end
            object cxgrdbclmncxgrdtbv4Remark: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
            end
          end
          object cxgrdlev4: TcxGridLevel
            GridView = cxgrdtbv4
          end
        end
      end
      object cxtbsht4: TcxTabSheet
        Caption = #32467#31639#26041#24335
        ImageIndex = 4
        TabVisible = False
        object cxgrd5: TcxGrid
          Left = 0
          Top = 0
          Width = 1019
          Height = 418
          Align = alClient
          TabOrder = 0
          object cxgrdtbv5: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = ds4
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.PullFocusing = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Editing = False
            OptionsView.NoDataToDisplayInfoText = #27809#26377#25968#25454#21487#26174#31034
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 35
            object cxgrdbclmncxgrdtbv5Column2: TcxGridDBColumn
              Caption = #26041#24335#32534#21495
              DataBinding.FieldName = 'PayModeId'
            end
            object cxgrdbclmn1: TcxGridDBColumn
              Caption = #26041#24335#21517#31216
              DataBinding.FieldName = 'PayModeName'
              Width = 160
            end
            object cxgrdbclmncxgrdtbv5Column1: TcxGridDBColumn
              Caption = #26041#24335#31867#21035
              DataBinding.FieldName = 'PayModeKind'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                #20184#27454
                #25910#27454
                #20184#27454#25110#25910#27454)
              Width = 147
            end
            object cxgrdbclmn2: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 181
            end
          end
          object cxgrdlev5: TcxGridLevel
            GridView = cxgrdtbv5
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
    inherited btDel: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btAddL: TdxBarLargeButton
      OnClick = btAddLClick
    end
    inherited btDelL: TdxBarLargeButton
      OnClick = btDelLClick
    end
    inherited btFind: TdxBarLargeButton
      Visible = ivNever
    end
  end
  inherited dsHed: TDataSource
    Left = 24
    Top = 208
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyHedAfterInsert
    SQL.Strings = (
      'select * from CWRemarkTB')
    Left = 24
    Top = 248
    object qyHedAutoID: TAutoIncField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object qyHedCWRemark: TStringField
      FieldName = 'CWRemark'
      Size = 500
    end
  end
  object qy1: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qy1AfterInsert
    Parameters = <>
    SQL.Strings = (
      'select * from AccItemTB')
    Left = 72
    Top = 248
    object qy1AutoID: TAutoIncField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object qy1ItemName: TStringField
      FieldName = 'ItemName'
      Size = 200
    end
    object qy1Remark: TStringField
      FieldName = 'Remark'
      Size = 500
    end
  end
  object ds1: TDataSource
    DataSet = qy1
    Left = 72
    Top = 208
  end
  object qy2: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qy2AfterInsert
    Parameters = <>
    SQL.Strings = (
      'select * from BankTB')
    Left = 128
    Top = 248
    object qy2AutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qy2BankId: TStringField
      FieldName = 'BankId'
    end
    object qy2BankName: TStringField
      FieldName = 'BankName'
      Size = 30
    end
    object qy2Remark: TStringField
      FieldName = 'Remark'
      Size = 50
    end
  end
  object ds2: TDataSource
    DataSet = qy2
    Left = 128
    Top = 208
  end
  object qy3: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qy3AfterInsert
    Parameters = <>
    SQL.Strings = (
      'select * from TraffModeTB')
    Left = 192
    Top = 248
    object qy3AutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qy3ModeId: TStringField
      FieldName = 'ModeId'
    end
    object qy3ModeName: TStringField
      FieldName = 'ModeName'
      Size = 30
    end
    object qy3Remark: TStringField
      FieldName = 'Remark'
      Size = 50
    end
  end
  object ds3: TDataSource
    DataSet = qy3
    Left = 192
    Top = 208
  end
  object qy4: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qy4AfterInsert
    Parameters = <>
    SQL.Strings = (
      'select * from PayModeTB')
    Left = 256
    Top = 248
    object AutoIncField2: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object StringField3: TStringField
      FieldName = 'Remark'
      Size = 50
    end
    object qy4PayModeId: TStringField
      FieldName = 'PayModeId'
    end
    object qy4PayModeName: TStringField
      FieldName = 'PayModeName'
      Size = 30
    end
    object qy4PayModeKind: TStringField
      FieldName = 'PayModeKind'
      Size = 30
    end
  end
  object ds4: TDataSource
    DataSet = qy4
    Left = 256
    Top = 208
  end
end
