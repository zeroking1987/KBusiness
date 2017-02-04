inherited AreaFM: TAreaFM
  Caption = #22320#21306#36164#26009
  PixelsPerInch = 96
  TextHeight = 13
  object pnlGest: TPanel [0]
    Left = 505
    Top = 76
    Width = 563
    Height = 450
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    ExplicitTop = 78
    ExplicitHeight = 448
  end
  object pnlTitle: TPanel [1]
    Left = 0
    Top = 46
    Width = 1068
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
    ExplicitTop = 48
    object labTitle: TLabel
      Left = 0
      Top = 0
      Width = 240
      Height = 30
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Caption = #22320#21306#36164#26009
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10905136
      Font.Height = -21
      Font.Name = #21326#25991#23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 41
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 76
    Width = 505
    Height = 450
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 6
    ExplicitTop = 78
    ExplicitHeight = 448
    object cxTrl: TcxDBTreeList
      Left = 0
      Top = 0
      Width = 505
      Height = 448
      Align = alClient
      Bands = <
        item
        end>
      DataController.DataSource = dsHed
      DataController.ParentField = 'ParentId'
      DataController.KeyField = 'AreaId'
      Navigator.Buttons.CustomButtons = <>
      OptionsView.GridLines = tlglBoth
      RootValue = -1
      TabOrder = 0
      object cxDBTreeList1AreaCode: TcxDBTreeListColumn
        Caption.Text = #22320#21306#20195#21495
        DataBinding.FieldName = 'AreaCode'
        Width = 116
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1AreaName: TcxDBTreeListColumn
        Caption.Text = #22320#21306#21517#31216'*'
        DataBinding.FieldName = 'AreaName'
        Width = 156
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeList1Remark: TcxDBTreeListColumn
        Caption.Text = #22791#27880
        DataBinding.FieldName = 'Remark'
        Width = 175
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
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
    SQL.Strings = (
      'select * from AreaTB')
    Left = 64
    Top = 200
    object qyHedAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object strngfldHedAreaId: TStringField
      FieldName = 'AreaId'
    end
    object strngfldHedAreaCode: TStringField
      FieldName = 'AreaCode'
    end
    object strngfldHedAreaName: TStringField
      FieldName = 'AreaName'
      Size = 30
    end
    object strngfldHedParentId: TStringField
      FieldName = 'ParentId'
    end
    object strngfldHedRemark: TStringField
      FieldName = 'Remark'
      Size = 50
    end
    object strngfldHedParentName: TStringField
      FieldKind = fkCalculated
      FieldName = 'ParentName'
      Calculated = True
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
