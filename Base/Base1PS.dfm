inherited Base1FM: TBase1FM
  Caption = 'Base1FM'
  ClientHeight = 527
  ClientWidth = 1027
  ExplicitWidth = 1027
  ExplicitHeight = 527
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTitle: TPanel [0]
    Left = 0
    Top = 46
    Width = 1027
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object cxLabTitle: TcxLabel
      Left = 0
      Top = 0
      Align = alLeft
      AutoSize = False
      Caption = #26631#39064
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 10905136
      Style.Font.Height = -20
      Style.Font.Name = #21326#25991#20013#23435
      Style.Font.Style = []
      Style.TextColor = 10905136
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 30
      Width = 193
      AnchorX = 97
      AnchorY = 15
    end
  end
  object pnlcxGrd: TPanel [1]
    Left = 0
    Top = 76
    Width = 1027
    Height = 451
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 5
    object cxgrd: TcxGrid
      Left = 0
      Top = 0
      Width = 1027
      Height = 451
      Align = alClient
      PopupMenu = pmLayout
      TabOrder = 0
      object cxgrdtbv: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = cxgrdtbvCellDblClick
        OnFocusedItemChanged = cxgrdtbvFocusedItemChanged
        DataController.DataSource = dsHed
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.PullFocusing = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Editing = False
        OptionsView.FocusRect = False
        OptionsView.NoDataToDisplayInfoText = #24658#25463#36719#20214
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 40
        OnCustomDrawIndicatorCell = cxgrdtbvCustomDrawIndicatorCell
      end
      object cxgrdlev: TcxGridLevel
        GridView = cxgrdtbv
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      46
      0)
    inherited btExport: TdxBarLargeButton
      OnClick = btExportClick
    end
    inherited btRefer: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btCheck: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btUnCheck: TdxBarLargeButton
      Visible = ivNever
    end
  end
  inherited dsHed: TDataSource
    Left = 64
    Top = 144
  end
  inherited qyHed: TADOQuery
    Left = 64
    Top = 192
  end
  object pmLayout: TPopupMenu
    Left = 432
    Top = 216
    object mniNCopyD: TMenuItem
      Caption = #22797#21046#21333#20803#26684
      OnClick = mniNCopyDClick
    end
    object mniNCopyL: TMenuItem
      Caption = #31896#36148#35813#21015
      OnClick = mniNCopyLClick
    end
    object mniN1: TMenuItem
      Caption = '-'
      Visible = False
    end
    object NCustomGrd: TMenuItem
      Caption = #35774#23450#21015#37197#32622
      OnClick = NCustomGrdClick
    end
    object NSaveGrd: TMenuItem
      Caption = #20445#23384#21015#37197#32622
      OnClick = NSaveGrdClick
    end
    object NDelGrd: TMenuItem
      Caption = #28165#38500#21015#37197#32622
      OnClick = NDelGrdClick
    end
  end
  object cxgrdpmn1: TcxGridPopupMenu
    Grid = cxgrd
    PopupMenus = <>
    Left = 392
    Top = 216
  end
end
