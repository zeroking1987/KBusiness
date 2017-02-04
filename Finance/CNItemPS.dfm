inherited CNItemFM: TCNItemFM
  Caption = #25910#25903#39033#30446
  ExplicitWidth = 1074
  ExplicitHeight = 526
  PixelsPerInch = 96
  TextHeight = 13
  object pnlGest: TPanel [0]
    Left = 929
    Top = 76
    Width = 145
    Height = 450
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
  end
  object pnlTitle: TPanel [1]
    Left = 0
    Top = 46
    Width = 1074
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -27
    Font.Name = #26999#20307
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object cxLabel1: TcxLabel
      Left = 0
      Top = 0
      Hint = #25910#25903#39033#30446#20026#20986#32435#35760#36134#25152#38656#36153#29992#39033#30446
      Align = alLeft
      AutoSize = False
      Caption = #25910#25903#39033#30446
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHotLight
      Style.Font.Height = -21
      Style.Font.Name = #21326#25991#23435#20307
      Style.Font.Style = [fsBold]
      Style.TextColor = 10905136
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 30
      Width = 153
      AnchorX = 77
      AnchorY = 15
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 76
    Width = 929
    Height = 450
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 6
    object cxTrl: TcxDBTreeList
      Left = 0
      Top = 0
      Width = 929
      Height = 408
      Align = alClient
      Bands = <
        item
        end>
      DataController.DataSource = dsHed
      DataController.ParentField = 'ParentId'
      DataController.KeyField = 'id'
      Navigator.Buttons.CustomButtons = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.GoToNextCellOnTab = True
      OptionsBehavior.IncSearch = True
      OptionsCustomizing.ColumnsQuickCustomization = True
      OptionsSelection.MultiSelect = True
      OptionsView.Footer = True
      OptionsView.GridLines = tlglBoth
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 35
      RootValue = -1
      TabOrder = 0
      object cxTrlCNItemName: TcxDBTreeListColumn
        Caption.Text = #25910#25903#39033#30446#21517#31216
        DataBinding.FieldName = 'CNItemName'
        Width = 460
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxTrliFlag: TcxDBTreeListColumn
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          #25910
          #25903)
        Caption.Text = #26041#21521
        DataBinding.FieldName = 'sFlag'
        Width = 53
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxTrlFZObject: TcxDBTreeListColumn
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          ''
          #23458#25143
          #20379#24212#21830
          #37096#38376
          #21592#24037
          #20854#20182)
        Caption.Text = #36741#21161#23545#35937
        DataBinding.FieldName = 'FZObject'
        Width = 78
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxTrlAccSubjectId: TcxDBTreeListColumn
        Caption.Text = #23545#24212#31185#30446
        DataBinding.FieldName = 'AccSubjectId'
        Width = 72
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxTrlRemark: TcxDBTreeListColumn
        Caption.Text = #22791#27880
        DataBinding.FieldName = 'Remark'
        Width = 100
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 408
      Width = 929
      Height = 42
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      46
      0)
    inherited dxbrBarMang: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
    end
    inherited btAdd: TdxBarLargeButton
      Caption = #28155#21152
    end
    inherited btAddL: TdxBarLargeButton
      Caption = #28155#21152#21516#32423
      Hint = #28155#21152#21516#32423
      Visible = ivNever
      OnClick = btAddLClick
    end
    inherited btDelL: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btFind: TdxBarLargeButton
      Visible = ivNever
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
    inherited btTemp: TdxBarLargeButton
      Caption = #31227#21040#19978#32423
      Hint = #31227#21040#19978#32423
    end
  end
  inherited dsHed: TDataSource
    Left = 64
    Top = 144
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyHedAfterInsert
    SQL.Strings = (
      'select * from  CNItemTB')
    Left = 64
    Top = 192
    object qyHedAutoID: TAutoIncField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object qyHedID: TStringField
      FieldName = 'ID'
      Size = 50
    end
    object qyHedParentId: TStringField
      FieldName = 'ParentId'
      Size = 50
    end
    object qyHedbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyHedCNItemName: TStringField
      FieldName = 'CNItemName'
      Size = 200
    end
    object qyHediFlag: TSmallintField
      FieldName = 'iFlag'
    end
    object qyHedFZObject: TStringField
      FieldName = 'FZObject'
      Size = 50
    end
    object qyHedAccSubjectId: TStringField
      FieldName = 'AccSubjectId'
      Size = 50
    end
    object qyHedRemark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
    object qyHedMakeDate: TDateTimeField
      FieldName = 'MakeDate'
    end
    object qyHedMakeMan: TStringField
      FieldName = 'MakeMan'
    end
    object qyHedMakeManName: TStringField
      FieldName = 'MakeManName'
    end
    object qyHedsFlag: TStringField
      FieldName = 'sFlag'
      OnChange = qyHedsFlagChange
      Size = 10
    end
  end
  object frxdt1: TfrxDBDataset
    UserName = #22320#21306#36164#26009
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoId=AutoId'
      'AreaId='#32534#21495
      'AreaCode='#20195#21495
      'AreaName='#21517#31216
      'ParentId='#19978#32423#32534#21495
      'Remark='#22791#27880
      'ParentName='#19978#32423#21517#31216)
    DataSet = qyHed
    BCDToCurrency = False
    Left = 64
    Top = 240
  end
end
