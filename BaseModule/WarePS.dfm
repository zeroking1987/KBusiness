inherited WareFM: TWareFM
  Caption = #20179#24211#36164#26009
  ClientHeight = 513
  ClientWidth = 1022
  ExplicitWidth = 1022
  ExplicitHeight = 513
  PixelsPerInch = 96
  TextHeight = 13
  object pnlLeft: TPanel [0]
    Left = 0
    Top = 76
    Width = 300
    Height = 437
    Align = alLeft
    TabOrder = 4
    object tv: TdxDBTreeView
      Left = 1
      Top = 1
      Width = 298
      Height = 435
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ShowNodeHint = True
      OnCustomDraw = tvCustomDraw
      DataSource = dsHed
      KeyField = 'WareId'
      ListField = 'WareName'
      ParentField = 'ParentId'
      RootValue = Null
      SeparatedSt = ' - '
      RaiseOnError = True
      ReadOnly = True
      Indent = 19
      Align = alClient
      ParentColor = False
      Options = [trDBCanDelete, trDBConfirmDelete, trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
      SelectedIndex = -1
      TabOrder = 0
    end
  end
  object pnlEdit: TPanel [1]
    Left = 300
    Top = 76
    Width = 316
    Height = 437
    Align = alLeft
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object pnl1: TPanel
      Left = 0
      Top = 0
      Width = 316
      Height = 185
      Align = alTop
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object lbl5: TLabel
        Left = 271
        Top = 13
        Width = 6
        Height = 13
        Caption = '*'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object lbl6: TLabel
        Left = 271
        Top = 84
        Width = 6
        Height = 13
        Caption = '*'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object cxdbEdtId: TcxDBTextEdit
        Left = 98
        Top = 9
        DataBinding.DataField = 'WareId'
        DataBinding.DataSource = dsHed
        Properties.ReadOnly = True
        Properties.OnChange = cxdbEdtIdPropertiesChange
        Style.Color = 15198183
        TabOrder = 0
        Width = 167
      end
      object cxdbEdtCode: TcxDBTextEdit
        Left = 98
        Top = 45
        DataBinding.DataField = 'WareCode'
        DataBinding.DataSource = dsHed
        Properties.ReadOnly = True
        TabOrder = 1
        Width = 167
      end
      object cxdbEdtName: TcxDBTextEdit
        Left = 98
        Top = 80
        DataBinding.DataField = 'WareName'
        DataBinding.DataSource = dsHed
        Properties.ReadOnly = True
        TabOrder = 2
        Width = 167
      end
      object cxdbEdtParentId: TcxDBTextEdit
        Left = 98
        Top = 116
        DataBinding.DataField = 'ParentName'
        DataBinding.DataSource = dsHed
        Properties.ReadOnly = True
        Style.Color = 15198183
        TabOrder = 3
        Width = 167
      end
      object cbbWareKind: TcxDBComboBox
        Left = 98
        Top = 150
        DataBinding.DataField = 'WareKind'
        DataBinding.DataSource = dsHed
        Properties.Items.Strings = (
          ''
          #26412#21378#20179#24211
          #36710#38388#20179#24211
          #22806#21327#20179#24211
          #24223#21697#20179#24211)
        Properties.ReadOnly = True
        TabOrder = 4
        Width = 167
      end
      object cxlbl4: TcxLabel
        Left = 40
        Top = 11
        Caption = #20179#24211#32534#21495
        Transparent = True
      end
      object cxLabel1: TcxLabel
        Left = 40
        Top = 47
        Caption = #20179#24211#20195#21495
        Transparent = True
      end
      object cxLabel2: TcxLabel
        Left = 40
        Top = 82
        Caption = #20179#24211#21517#31216
        Transparent = True
      end
      object cxLabel3: TcxLabel
        Left = 40
        Top = 118
        Caption = #19978#32423#20179#24211
        Transparent = True
      end
      object cxLabel4: TcxLabel
        Left = 40
        Top = 152
        Caption = #20179#24211#31867#22411
        Transparent = True
      end
    end
    object cxpgcntrlWareEmp: TcxPageControl
      Left = 0
      Top = 185
      Width = 316
      Height = 252
      Align = alClient
      TabOrder = 1
      Properties.ActivePage = cxtbsht1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 246
      ClientRectLeft = 2
      ClientRectRight = 310
      ClientRectTop = 27
      object cxtbsht1: TcxTabSheet
        Caption = #20179#31649#21592
        ImageIndex = 0
        object cxgrd: TcxGrid
          Left = 0
          Top = 0
          Width = 308
          Height = 219
          Align = alClient
          TabOrder = 0
          object cxgrdtbv: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsWareEmp
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Editing = False
            OptionsView.NoDataToDisplayInfoText = #27809#26377#25968#25454#21487#26174#31034
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 35
            object cxgrdtbvEmpCode: TcxGridDBColumn
              Caption = #21592#24037#24037#21495
              DataBinding.FieldName = 'EmpCode'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdtbvEmpCodePropertiesButtonClick
              Width = 83
            end
            object cxgrdtbvEmpName: TcxGridDBColumn
              Caption = #21592#24037#22995#21517
              DataBinding.FieldName = 'EmpName'
              Width = 65
            end
            object cxgrdtbvRemark: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 99
            end
          end
          object cxgrdlev: TcxGridLevel
            GridView = cxgrdtbv
          end
        end
      end
    end
  end
  object pnlGest: TPanel [2]
    Left = 616
    Top = 76
    Width = 406
    Height = 437
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 6
  end
  object pnlTitle: TPanel [3]
    Left = 0
    Top = 46
    Width = 1022
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -27
    Font.Name = #26999#20307
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    object labTitle: TLabel
      Left = 0
      Top = 0
      Width = 177
      Height = 30
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Caption = #20179#24211#36164#26009
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10905136
      Font.Height = -21
      Font.Name = #21326#25991#23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      46
      0)
    inherited btAdd: TdxBarLargeButton
      Caption = #28155#21152
    end
    inherited btAddL: TdxBarLargeButton
      Caption = #22686#34892
      Hint = #20179#31649#21592#22686#34892
      OnClick = btAddLClick
    end
    inherited btDelL: TdxBarLargeButton
      Hint = #20179#31649#21592#21024' '#34892
      OnClick = btDelLClick
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
    Left = 72
    Top = 152
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyHedAfterInsert
    OnCalcFields = qyHedCalcFields
    SQL.Strings = (
      'select * from WareTB')
    Left = 72
    Top = 192
    object qyHedAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object strngfldHedWareId: TStringField
      FieldName = 'WareId'
    end
    object strngfldHedWareCode: TStringField
      FieldName = 'WareCode'
    end
    object strngfldHedWareName: TStringField
      FieldName = 'WareName'
      Size = 30
    end
    object strngfldHedParentId: TStringField
      FieldName = 'ParentId'
    end
    object strngfldHedPriceStyle: TStringField
      FieldName = 'PriceStyle'
    end
    object qyHedIsCalcNum: TBooleanField
      FieldName = 'IsCalcNum'
    end
    object strngfldHedRemark: TStringField
      FieldName = 'Remark'
      Size = 100
    end
    object strngfldHedParentName: TStringField
      FieldKind = fkCalculated
      FieldName = 'ParentName'
      Calculated = True
    end
    object strngfldHedWareKind: TStringField
      FieldName = 'WareKind'
      Size = 30
    end
  end
  object frxHed: TfrxDBDataset
    UserName = #20179#24211#36164#26009
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoId=AutoId'
      'WareId=WareId'
      'WareCode=WareCode'
      'WareName=WareName'
      'WareKind=WareKind'
      'ParentId='#19978#32423#32534#21495
      'PriceStyle=PriceStyle'
      'IsCalcNum=IsCalcNum'
      'Remark='#22791#27880
      'ParentName='#19978#32423#21517#31216)
    DataSource = dsHed
    BCDToCurrency = False
    Left = 72
    Top = 232
  end
  object dsWareEmp: TDataSource
    DataSet = qyWareEmp
    Left = 120
    Top = 152
  end
  object frxWareEmp: TfrxDBDataset
    UserName = #20179#24211#36164#26009
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoId=AutoId'
      'WareId=WareId'
      'WareCode=WareCode'
      'WareName=WareName'
      'WareKind=WareKind'
      'ParentId='#19978#32423#32534#21495
      'PriceStyle=PriceStyle'
      'IsCalcNum=IsCalcNum'
      'Remark='#22791#27880
      'ParentName='#19978#32423#21517#31216)
    DataSource = dsWareEmp
    BCDToCurrency = False
    Left = 120
    Top = 232
  end
  object qyWareEmp: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = qyWareEmpCalcFields
    OnNewRecord = qyWareEmpNewRecord
    Parameters = <>
    SQL.Strings = (
      'select * from WareEmpTB')
    Left = 120
    Top = 192
    object qyWareEmpAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qyWareEmpWareId: TStringField
      FieldName = 'WareId'
      Size = 30
    end
    object qyWareEmpEmpId: TStringField
      FieldName = 'EmpId'
      Size = 30
    end
    object qyWareEmpEmpCode: TStringField
      FieldName = 'EmpCode'
      Size = 30
    end
    object qyWareEmpEmpName: TStringField
      FieldKind = fkCalculated
      FieldName = 'EmpName'
      Calculated = True
    end
    object qyWareEmpRemark: TStringField
      FieldName = 'Remark'
      Size = 50
    end
  end
end
