inherited SysTableSetFM: TSysTableSetFM
  Caption = #31995#32479#34920#21333#35774#32622
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    TabOrder = 3
    inherited cxLabTitle: TcxLabel
      Caption = #31995#32479#34920#21333#35774#32622
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlcxGrd: TPanel
    Top = 106
    Height = 421
    ExplicitTop = 106
    ExplicitHeight = 421
    inherited cxgrd: TcxGrid
      Height = 421
      ExplicitHeight = 421
      inherited cxgrdtbv: TcxGridDBTableView
        DataController.DataSource = nil
      end
    end
    object cxListSysTable: TcxDBTreeList
      Left = 0
      Top = 0
      Width = 1027
      Height = 421
      Align = alClient
      Bands = <
        item
        end>
      DataController.DataSource = dsHed
      DataController.ParentField = 'pTag'
      DataController.KeyField = 'Tag'
      Navigator.Buttons.CustomButtons = <>
      OptionsBehavior.Sorting = False
      OptionsData.Editing = False
      RootValue = -1
      TabOrder = 1
      object cxdbtrlstclmnListRightTag: TcxDBTreeListColumn
        Caption.Text = #26631#35782
        DataBinding.FieldName = 'Tag'
        Options.Editing = False
        Width = 156
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxdbtrlstclmnListRightTableDesc: TcxDBTreeListColumn
        Caption.Text = #34920#21333#21517#31216
        DataBinding.FieldName = 'TableDesc'
        Options.Editing = False
        Width = 140
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxdbtrlstclmnListRightTablePreFix: TcxDBTreeListColumn
        Caption.Text = #34920#21333#21069#32512
        DataBinding.FieldName = 'TablePreFix'
        Width = 58
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxdbtrlstclmnListRightbRight: TcxDBTreeListColumn
        Caption.Text = #26159#21542#26435#38480#32454#20998
        DataBinding.FieldName = 'bRight'
        Width = 79
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxdbtrlstclmnListRightbAudit: TcxDBTreeListColumn
        Caption.Text = #26159#21542#38656#23457#26680
        DataBinding.FieldName = 'bAudit'
        Width = 73
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxdbtrlstclmnListRightMaxAuditLevel: TcxDBTreeListColumn
        Caption.Text = #26368#22823#23457#26680#32423#25968
        DataBinding.FieldName = 'MaxAuditLevel'
        Width = 88
        Position.ColIndex = 5
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
  end
  object pnlEdit: TPanel [2]
    Left = 0
    Top = 76
    Width = 1027
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object Label4: TLabel
      Left = 34
      Top = 6
      Width = 60
      Height = 13
      Caption = #34920#21333#21517#31216#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxEdtValue: TcxTextEdit
      Left = 95
      Top = 2
      TabOrder = 0
      OnKeyPress = cxEdtValueKeyPress
      Width = 325
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      46
      0)
    inherited btAdd: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btDel: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btAddL: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btDelL: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btFind: TdxBarLargeButton
      Visible = ivNever
    end
  end
  inherited dsHed: TDataSource
    Top = 160
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'select * from SysTableSetTB order by Tag')
    object qyHedAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object blnfldHedbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyHedTableID: TStringField
      FieldName = 'TableID'
      Size = 50
    end
    object qyHedTableName: TStringField
      FieldName = 'TableName'
      Size = 50
    end
    object qyHedTableDesc: TStringField
      FieldName = 'TableDesc'
      Size = 50
    end
    object smlntfldHedMaxAuditLevel: TSmallintField
      FieldName = 'MaxAuditLevel'
    end
    object qyHedTablePreFix: TStringField
      FieldName = 'TablePreFix'
    end
    object blnfldHedbAudit: TBooleanField
      FieldName = 'bAudit'
    end
    object blnfldHedbRight: TBooleanField
      FieldName = 'bRight'
    end
    object blnfldHedbMenu: TBooleanField
      FieldName = 'bMenu'
    end
    object smlntfldHedModuleId: TSmallintField
      FieldName = 'ModuleId'
    end
    object qyHedModuleName: TStringField
      FieldName = 'ModuleName'
      Size = 50
    end
    object qyHedTag: TStringField
      FieldName = 'Tag'
    end
    object qyHedpTag: TStringField
      FieldName = 'pTag'
    end
  end
end
