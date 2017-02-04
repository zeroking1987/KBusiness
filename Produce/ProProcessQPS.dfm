inherited ProProcessQFM: TProProcessQFM
  Caption = #29983#20135#36827#24230#36319#36394
  ClientHeight = 530
  ClientWidth = 1057
  ExplicitWidth = 1057
  ExplicitHeight = 530
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Width = 1057
    TabOrder = 2
    ExplicitWidth = 1057
    inherited cxLabTitle: TcxLabel
      Caption = #29983#20135#36827#24230#36319#36394
      Style.IsFontAssigned = True
      ExplicitTop = 0
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlFind: TPanel
    Width = 1057
    Height = 69
    TabOrder = 4
    ExplicitWidth = 1057
    ExplicitHeight = 69
    object Label2: TLabel
      Left = 190
      Top = 2
      Width = 12
      Height = 19
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxEdtBillNo: TcxTextEdit
      Left = 400
      Top = 1
      TabOrder = 0
      Width = 143
    end
    object cxdtS: TcxDateEdit
      Left = 63
      Top = 1
      TabOrder = 1
      Width = 121
    end
    object cxdtE: TcxDateEdit
      Left = 215
      Top = 1
      TabOrder = 2
      Width = 121
    end
    object cxrdgrpAudit: TcxRadioGroup
      Left = 757
      Top = 0
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = #26410#23457#26680
        end
        item
          Caption = #24050#23457#26680
        end
        item
          Caption = #25152#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 2
      TabOrder = 3
      Height = 69
      Width = 75
    end
    object btnItemName: TcxButtonEdit
      Left = 63
      Top = 48
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemNamePropertiesButtonClick
      TabOrder = 4
      TextHint = #21487#25163#21160#36755#20837#20135#21697#21517#31216#25110#28857#20987#25353#38062#36873#25321#20135#21697
      Width = 270
    end
    object btnEmpName: TcxButtonEdit
      Left = 595
      Top = 1
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnEmpNamePropertiesButtonClick
      TabOrder = 5
      Width = 143
    end
    object btnProType: TcxButtonEdit
      Left = 63
      Top = 24
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 6
      TextHint = #21487#25163#21160#36755#20837#23646#24615#25110#28857#20987#25353#38062#36873#25321
      Width = 270
    end
    object cxrdgrpProductIn: TcxRadioGroup
      Left = 831
      Top = 0
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = #26410#20837#23436#24211
        end
        item
          Caption = #24050#20837#23436#24211
        end
        item
          Caption = #25152#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 0
      TabOrder = 7
      Height = 69
      Width = 87
    end
    object btnItemKind: TcxButtonEdit
      Left = 400
      Top = 48
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemKindPropertiesButtonClick
      ShowHint = True
      TabOrder = 8
      Width = 143
    end
    object btnColor: TcxButtonEdit
      Left = 595
      Top = 48
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnEmpNamePropertiesButtonClick
      TabOrder = 9
      Width = 143
    end
    object cxrdgrpComplete: TcxRadioGroup
      Left = 917
      Top = 0
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = #26410#23436#24037
        end
        item
          Caption = #24050#23436#24037
        end
        item
          Caption = #25152#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 0
      TabOrder = 10
      Height = 69
      Width = 87
    end
    object cxLabel2: TcxLabel
      Left = 5
      Top = 3
      Caption = #27966#24037#26085#26399
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 348
      Top = 3
      Caption = #27966#24037#21333#21495
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 543
      Top = 3
      Caption = #29983#20135#23545#35937
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 29
      Top = 26
      Caption = #23646#24615
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 5
      Top = 50
      Caption = #20135#21697#21517#31216
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 348
      Top = 50
      Caption = #20135#21697#31867#21035
      Transparent = True
    end
    object cxLabel7: TcxLabel
      Left = 567
      Top = 50
      Caption = #39068#33394
      Transparent = True
    end
    object cxSaleOrderNo: TcxTextEdit
      Left = 400
      Top = 24
      TabOrder = 18
      Width = 143
    end
    object cxLabel8: TcxLabel
      Left = 336
      Top = 26
      Caption = #38144#21806#35746#21333#21495
      Transparent = True
    end
    object cxCompactNo: TcxTextEdit
      Left = 595
      Top = 24
      TabOrder = 20
      Width = 143
    end
    object cxLabel9: TcxLabel
      Left = 555
      Top = 26
      Caption = #21512#21516#21495
      Transparent = True
    end
  end
  inherited cxpgcntrl1: TcxPageControl
    Top = 145
    Width = 1057
    Height = 207
    ExplicitTop = 145
    ExplicitWidth = 1057
    ExplicitHeight = 207
    ClientRectBottom = 201
    ClientRectRight = 1051
    inherited cxtbsht1: TcxTabSheet
      Caption = #24037#21333#24773#20917
      ExplicitWidth = 1049
      ExplicitHeight = 174
      inherited cxgrd: TcxGrid
        Width = 1049
        Height = 174
        ExplicitWidth = 1049
        ExplicitHeight = 174
        inherited cxgrdtbv: TcxGridDBTableView
          OnDblClick = cxgrdtbvDblClick
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
            end
            item
              Format = #21512#35745':0'
              Kind = skCount
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
              Column = cxgrdtbvDispatchNum
            end
            item
              Kind = skSum
              Column = cxgrdtbvProductIn
            end
            item
              Kind = skSum
              Column = cxgrdtbvNoInNum
            end
            item
              Kind = skCount
              Column = cxgrdtbvDispatchNo
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
          object cxgrdtbvDispatchNo: TcxGridDBColumn
            Caption = #27966#24037#21333#21495
            DataBinding.FieldName = 'DispatchNo'
            Width = 107
          end
          object cxgrdtbvDispatchDate: TcxGridDBColumn
            Caption = #27966#24037#26085#26399
            DataBinding.FieldName = 'DispatchDate'
            Width = 66
          end
          object cxgrdtbvItemCode: TcxGridDBColumn
            Caption = #20135#21697#20195#21495
            DataBinding.FieldName = 'ItemCode'
            Width = 70
          end
          object cxgrdtbvItemName: TcxGridDBColumn
            Caption = #20135#21697#21517#31216
            DataBinding.FieldName = 'ItemName'
            Width = 167
          end
          object cxgrdtbvItemSpc: TcxGridDBColumn
            Caption = #35268#26684
            DataBinding.FieldName = 'ItemSpc'
            Width = 70
          end
          object cxgrdtbvProType: TcxGridDBColumn
            Caption = #23646#24615
            DataBinding.FieldName = 'ProType'
            Width = 70
          end
          object cxgrdtbvColor: TcxGridDBColumn
            Caption = #39068#33394
            DataBinding.FieldName = 'Color'
            Width = 59
          end
          object cxgrdtbvTechName: TcxGridDBColumn
            Caption = #24037#24207
            DataBinding.FieldName = 'TechName'
            Visible = False
            Width = 63
          end
          object cxgrdtbvEmpCode: TcxGridDBColumn
            Caption = #21512#21516#21495
            DataBinding.FieldName = 'CompactNo'
            Width = 66
          end
          object cxgrdtbvEmpName: TcxGridDBColumn
            Caption = #29983#20135#23545#35937
            DataBinding.FieldName = 'objectname'
            Width = 70
          end
          object cxgrdtbvDispatchNum: TcxGridDBColumn
            Caption = #27966#24037#25968#37327
            DataBinding.FieldName = 'DispatchNum'
            Width = 70
          end
          object cxgrdtbvProductIn: TcxGridDBColumn
            Caption = #20135#21697#20837#24211#25968
            DataBinding.FieldName = 'ProductIn'
            Width = 75
          end
          object cxgrdtbvNoInNum: TcxGridDBColumn
            Caption = #26410#20837#24211#25968
            DataBinding.FieldName = 'NoInNum'
            Width = 70
          end
          object cxgrdtbvRemark: TcxGridDBColumn
            Caption = #22791#27880
            DataBinding.FieldName = 'Remark'
            Width = 70
          end
          object cxgrdtbvProOrderNo: TcxGridDBColumn
            Caption = #29983#20135#35746#21333#21495
            DataBinding.FieldName = 'ProOrderNo'
            Visible = False
            Width = 79
          end
        end
      end
      object cxAutoNo: TcxDBTextEdit
        Left = 334
        Top = 89
        DataBinding.DataField = 'AutoNO'
        DataBinding.DataSource = dsHed
        Properties.OnChange = cxAutoNoPropertiesChange
        TabOrder = 1
        Visible = False
        Width = 121
      end
    end
  end
  object cxPageControl1: TcxPageControl [3]
    Left = 0
    Top = 352
    Width = 1057
    Height = 178
    Align = alBottom
    TabOrder = 7
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 172
    ClientRectLeft = 2
    ClientRectRight = 1051
    ClientRectTop = 27
    object cxTabSheet1: TcxTabSheet
      Caption = ' '#21457#26009#24773#20917' '
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1049
        Height = 145
        Align = alClient
        PopupMenu = pmLayout
        TabOrder = 0
        object cxgrdtbvMat: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsMat
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
            end
            item
              Format = #21512#35745':0'
              Kind = skCount
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
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skCount
            end
            item
              Kind = skSum
              Column = cxgrdtbvMatMainNum
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
          OptionsBehavior.CellHints = True
          OptionsBehavior.PullFocusing = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = #24658#25463#36719#20214
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 40
          object cxgrdtbvMatBillNo: TcxGridDBColumn
            Caption = #21333#21495
            DataBinding.FieldName = 'BillNo'
            Width = 124
          end
          object cxgrdtbvMatBillDate: TcxGridDBColumn
            Caption = #26085#26399
            DataBinding.FieldName = 'BillDate'
            Width = 100
          end
          object cxgrdtbvMatItemCode: TcxGridDBColumn
            Caption = #20135#21697#20195#21495
            DataBinding.FieldName = 'ItemCode'
            Width = 100
          end
          object cxgrdtbvMatItemName: TcxGridDBColumn
            Caption = #20135#21697#21517#31216
            DataBinding.FieldName = 'ItemName'
            Width = 187
          end
          object cxgrdtbvMatItemSpc: TcxGridDBColumn
            Caption = #20135#21697#35268#26684
            DataBinding.FieldName = 'ItemSpc'
            Width = 100
          end
          object cxgrdtbvMatMainNum: TcxGridDBColumn
            Caption = #21457#26009#25968#37327
            DataBinding.FieldName = 'MainNum'
            Width = 120
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxgrdtbvMat
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = ' '#20837#24211#24773#20917' '
      ImageIndex = 1
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 1049
        Height = 145
        Align = alClient
        PopupMenu = pmLayout
        TabOrder = 0
        object cxgrdtbvIn: TcxGridDBTableView
          OnDblClick = cxgrdtbvDblClick
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxgrdtbvCellDblClick
          DataController.DataSource = dsIn
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
            end
            item
              Format = #21512#35745':0'
              Kind = skCount
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
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skCount
            end
            item
              Kind = skSum
              Column = cxgrdtbvInMainNum
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
          object cxgrdtbvInBillNo: TcxGridDBColumn
            Caption = #20837#24211#21333#21495
            DataBinding.FieldName = 'BillNo'
            Width = 100
          end
          object cxgrdtbvInBillDate: TcxGridDBColumn
            Caption = #26085#26399
            DataBinding.FieldName = 'BillDate'
            Width = 100
          end
          object cxgrdtbvInItemCode: TcxGridDBColumn
            Caption = #20135#21697#20195#21495
            DataBinding.FieldName = 'ItemCode'
            Width = 100
          end
          object cxgrdtbvInItemName: TcxGridDBColumn
            Caption = #20135#21697#21517#31216
            DataBinding.FieldName = 'ItemName'
            Width = 100
          end
          object cxgrdtbvInItemSpc: TcxGridDBColumn
            Caption = #35268#26684
            DataBinding.FieldName = 'ItemSpc'
            Width = 100
          end
          object cxgrdtbvInMainNum: TcxGridDBColumn
            Caption = #25968#37327
            DataBinding.FieldName = 'MainNum'
            Width = 100
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxgrdtbvIn
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = ' '#24037#24207#24773#20917' '
      ImageIndex = 2
      TabVisible = False
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 1049
        Height = 145
        Align = alClient
        PopupMenu = pmLayout
        TabOrder = 0
        object cxgrdtbvTech: TcxGridDBTableView
          OnDblClick = cxgrdtbvDblClick
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxgrdtbvCellDblClick
          DataController.DataSource = dsTech
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
            end
            item
              Format = #21512#35745':0'
              Kind = skCount
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
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skCount
            end
            item
              Kind = skSum
              Column = cxgrdtbvTechMoveNum
            end
            item
              Kind = skSum
              Column = cxgrdtbvTechSpoilNum
            end
            item
              Kind = skSum
              Column = cxgrdtbvTechWasteNum
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
          object cxgrdtbvTechMoveNo: TcxGridDBColumn
            Caption = #21333#21495
            DataBinding.FieldName = 'MoveNo'
            Width = 100
          end
          object cxgrdtbvTechMoveDate: TcxGridDBColumn
            Caption = #26085#26399
            DataBinding.FieldName = 'MoveDate'
            Width = 100
          end
          object cxgrdtbvTechItemCode: TcxGridDBColumn
            Caption = #20135#21697#20195#21495
            DataBinding.FieldName = 'ItemCode'
            Width = 100
          end
          object cxgrdtbvTechItemName: TcxGridDBColumn
            Caption = #20135#21697#21517#31216
            DataBinding.FieldName = 'ItemName'
            Width = 100
          end
          object cxgrdtbvTechItemSpc: TcxGridDBColumn
            Caption = #35268#26684
            DataBinding.FieldName = 'ItemSpc'
            Width = 100
          end
          object cxgrdtbvTechColumn1: TcxGridDBColumn
            Caption = #24037#24207#21495
            DataBinding.FieldName = 'Ordinal'
          end
          object cxgrdtbvTechTechName: TcxGridDBColumn
            Caption = #24037#24207
            DataBinding.FieldName = 'TechName'
            Width = 100
          end
          object cxgrdtbvTechMoveNum: TcxGridDBColumn
            Caption = #27491#21697#25968#37327
            DataBinding.FieldName = 'MoveNum'
            Width = 100
          end
          object cxgrdtbvTechSpoilNum: TcxGridDBColumn
            Caption = #19981#33391#21697#25968#37327
            DataBinding.FieldName = 'SpoilNum'
            Width = 100
          end
          object cxgrdtbvTechWasteNum: TcxGridDBColumn
            Caption = #24223#21697#25968#37327
            DataBinding.FieldName = 'WasteNum'
            Width = 100
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxgrdtbvTech
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
    Left = 88
    Top = 200
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'exec PrProProcessQ '#39#39
      '')
    Left = 88
    Top = 232
  end
  inherited frxHed: TfrxDBDataset
    UserName = #29983#20135#36827#24230#36319#36394'-'#24037#21333
    FieldAliases.Strings = (
      'DispatchNo='#27966#24037#21333#21495
      'DispatchDate='#27966#24037#26102#38388
      'ItemId='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'ProType='#30005#32518#32447
      'Color='#39068#33394
      'EmpCode='#21592#24037#24037#21495
      'EmpName='#21592#24037#22995#21517
      'DeptName='#37096#38376
      'TechName='#24037#24207#21517#31216
      'DispatchNum='#27966#24037#25968#37327
      'NoInNum='#26410#20837#24211#25968#37327
      'ProductIn='#20135#21697#20837#24211#26641#26519#37324
      'Remark='#22791#27880
      'AutoID='#20869#30721
      'AutoNO='#20869#21495
      'ProOrderNo='#29983#20135#35746#21333#21495
      'ProOrderId='#29983#20135#35746#21333#20869#30721
      'CustCode=CustCode'
      'CustName=CustName'
      'bComplete=bComplete')
    Left = 88
    Top = 264
  end
  object frxMat: TfrxDBDataset
    UserName = #29983#20135#36827#24230#36319#36394'-'#21457#26009
    CloseDataSource = False
    FieldAliases.Strings = (
      'BillNo=BillNo'
      'BillDate=BillDate'
      'ItemId='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'MainNum=MainNum'
      'DispatchNo='#27966#24037#21333#21495
      'DispatchId=DispatchId'
      'DetAutoNo=DetAutoNo')
    DataSet = qyMat
    BCDToCurrency = False
    Left = 136
    Top = 264
  end
  object qyMat: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'exec PrProProcessMatQ '#39#39)
    Left = 136
    Top = 232
  end
  object dsMat: TDataSource
    DataSet = qyMat
    Left = 136
    Top = 200
  end
  object dsIn: TDataSource
    DataSet = qyIn
    Left = 184
    Top = 200
  end
  object qyIn: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'exec PrProProcessInQ '#39#39)
    Left = 184
    Top = 232
  end
  object frxIn: TfrxDBDataset
    UserName = #29983#20135#36827#24230#36319#36394'-'#20837#24211
    CloseDataSource = False
    FieldAliases.Strings = (
      'BillNo=BillNo'
      'BillDate=BillDate'
      'ItemId='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'MainNum=MainNum'
      'DispatchNo='#27966#24037#21333#21495
      'DispatchId=DispatchId')
    DataSet = qyIn
    BCDToCurrency = False
    Left = 184
    Top = 264
  end
  object frxTech: TfrxDBDataset
    UserName = #29983#20135#27966#24037#21333#25253#34920
    CloseDataSource = False
    FieldAliases.Strings = (
      'DispatchNo='#27966#24037#21333#21495
      'DispatchDate='#27966#24037#26102#38388
      'ItemId='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'ProType='#30005#32518#32447
      'Color='#39068#33394
      'EmpCode='#21592#24037#24037#21495
      'EmpName='#21592#24037#22995#21517
      'DeptName='#37096#38376
      'TechName='#24037#24207#21517#31216
      'DispatchNum='#27966#24037#25968#37327
      'NoInNum='#26410#20837#24211#25968#37327
      'ProductIn='#20135#21697#20837#24211#26641#26519#37324
      'Remark='#22791#27880
      'AutoID='#20869#30721
      'AutoNO='#20869#21495
      'ProOrderNo='#29983#20135#35746#21333#21495
      'ProOrderId='#29983#20135#35746#21333#20869#30721)
    DataSet = qyTech
    BCDToCurrency = False
    Left = 232
    Top = 264
  end
  object qyTech: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'exec PrProProcessTechQ '#39#39)
    Left = 232
    Top = 232
  end
  object dsTech: TDataSource
    DataSet = qyTech
    Left = 232
    Top = 200
  end
end
