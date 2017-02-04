inherited BOMMatOutQFM: TBOMMatOutQFM
  Caption = 'BOM'#21457#26009#26597#35810
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    TabOrder = 2
    inherited cxLabTitle: TcxLabel
      Caption = 'BOM'#21457#26009#26597#35810
      Style.IsFontAssigned = True
      ExplicitTop = 0
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlFind: TPanel
    Height = 93
    TabOrder = 4
    ExplicitHeight = 93
    object cxEdtBillNo: TcxTextEdit
      Left = 383
      Top = 8
      TabOrder = 0
      Width = 123
    end
    object cxdtS: TcxDateEdit
      Left = 71
      Top = 8
      TabOrder = 1
      Width = 121
    end
    object cxdtE: TcxDateEdit
      Left = 219
      Top = 8
      TabOrder = 2
      Width = 121
    end
    object cxrdgrpAudit: TcxRadioGroup
      Left = 540
      Top = 6
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = #26410#23457#26680
        end
        item
          Caption = #24050#23457#26680
        end
        item
          Caption = #25152'  '#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 2
      TabOrder = 3
      Height = 73
      Width = 78
    end
    object cxItemL: TcxButtonEdit
      Left = 71
      Top = 37
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxItemLPropertiesButtonClick
      ShowHint = True
      TabOrder = 4
      TextHint = #21487#36755#20837#20135#21697#20195#21495#12289#21517#31216#12289#35268#26684#12289#25340#38899#30721#26597#35810
      Width = 270
    end
    object cxlbl7: TcxLabel
      Left = 13
      Top = 39
      Caption = #27597#20214#20135#21697
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 37
      Top = 10
      Caption = #26085#26399
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 349
      Top = 10
      Caption = #21333#21495
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 200
      Top = 10
      Caption = '~'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clRed
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxItemR: TcxButtonEdit
      Left = 70
      Top = 64
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxItemRPropertiesButtonClick
      ShowHint = True
      TabOrder = 9
      TextHint = #21487#36755#20837#20135#21697#20195#21495#12289#21517#31216#12289#35268#26684#12289#25340#38899#30721#26597#35810
      Width = 270
    end
    object cxLabel4: TcxLabel
      Left = 12
      Top = 66
      Caption = #23376#20214#20135#21697
      Transparent = True
    end
  end
  inherited cxpgcntrl1: TcxPageControl
    Top = 169
    Height = 371
    ExplicitTop = 169
    ExplicitHeight = 371
    ClientRectBottom = 365
    inherited cxtbsht1: TcxTabSheet
      ExplicitHeight = 338
      inherited cxgrd: TcxGrid
        Height = 338
        ExplicitHeight = 338
        inherited cxgrdtbv: TcxGridDBTableView
          OnDblClick = cxgrdtbvDblClick
          OnCustomDrawCell = cxgrdtbvCustomDrawCell
          DataController.KeyFieldNames = 'AutoNo'
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
              Column = cxgrdtbvSwitchNum
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
          object cxgrdtbvSwitchNo: TcxGridDBColumn
            Caption = #21333#21495
            DataBinding.FieldName = 'Billno'
            Width = 93
          end
          object cxgrdtbvSwitchDate: TcxGridDBColumn
            Caption = #26085#26399
            DataBinding.FieldName = 'BillDate'
            Width = 100
          end
          object cxgrdtbvItemCode: TcxGridDBColumn
            Caption = #20135#21697#20195#21495
            DataBinding.FieldName = 'ItemCode'
            Width = 100
          end
          object cxgrdtbvItemName: TcxGridDBColumn
            Caption = #20135#21697#21517#31216
            DataBinding.FieldName = 'ItemName'
            Width = 100
          end
          object cxgrdtbvItemSpc: TcxGridDBColumn
            Caption = #35268#26684
            DataBinding.FieldName = 'ItemSpc'
            Width = 100
          end
          object cxgrdtbvSwitchNum: TcxGridDBColumn
            Caption = #25968#37327
            DataBinding.FieldName = 'MainNum'
            Width = 100
          end
          object cxgrdtbvSwitchKind: TcxGridDBColumn
            Caption = #39068#33394
            DataBinding.FieldName = 'Color'
            Width = 100
          end
        end
        object cxgrdDBTableView1: TcxGridDBTableView [1]
          OnDblClick = cxgrdDBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = dsDet
          DataController.DetailKeyFieldNames = 'MasterNo'
          DataController.KeyFieldNames = 'AutoNo'
          DataController.MasterKeyFieldNames = 'AutoNo'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxgrdDBTableView1SwitchNum
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.PullFocusing = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 35
          OnCustomDrawIndicatorCell = cxgrdDBTableView1CustomDrawIndicatorCell
          object cxgrdDBTableView1ItemCode: TcxGridDBColumn
            Caption = #20135#21697#20195#21495
            DataBinding.FieldName = 'ItemCode'
            Width = 100
          end
          object cxgrdDBTableView1ItemName: TcxGridDBColumn
            Caption = #20135#21697#21517#31216
            DataBinding.FieldName = 'ItemName'
            Width = 100
          end
          object cxgrdDBTableView1ItemSpc: TcxGridDBColumn
            Caption = #35268#26684
            DataBinding.FieldName = 'ItemSpc'
            Width = 100
          end
          object cxgrdDBTableView1SwitchNum: TcxGridDBColumn
            Caption = #25968#37327
            DataBinding.FieldName = 'MainNum'
            Width = 100
          end
          object cxgrdDBTableView1SwitchKind: TcxGridDBColumn
            Caption = #39068#33394
            DataBinding.FieldName = 'Color'
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
      'exec PrBomMatOutLQ  '#39#39)
    Left = 104
    Top = 320
    object qyHedBillDate: TDateTimeField
      FieldName = 'BillDate'
    end
    object qyHedBillNo: TStringField
      FieldName = 'BillNo'
    end
    object qyHedItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 50
    end
    object qyHedItemName: TStringField
      FieldName = 'ItemName'
      Size = 100
    end
    object qyHedItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 100
    end
    object qyHedMainNum: TFMTBCDField
      FieldName = 'MainNum'
      Precision = 19
      Size = 6
    end
    object qyHedAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 100
    end
    object qyHedColor: TStringField
      FieldName = 'Color'
      Size = 100
    end
  end
  inherited frxHed: TfrxDBDataset
    UserName = 'Bom'#21457#26009#26597#35810#20027#34920
    FieldAliases.Strings = (
      'BillDate='#26085#26399
      'BillNo='#21333#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'MainNum='#25968#37327
      'AutoNo='#20869#37096#32534#21495
      'Color='#39068#33394)
    Left = 104
    Top = 360
  end
  object frxDet: TfrxDBDataset
    UserName = #24418#24577#36716#25442#26597#35810#20174#34920
    CloseDataSource = False
    FieldAliases.Strings = (
      'DetAutoNo=DetAutoNo'
      'SwitchDate=SwitchDate'
      'SwitchNo=SwitchNo'
      'SwitchKind=SwitchKind'
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'SwitchNum=SwitchNum'
      'AutoNo=AutoNo')
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
      'exec PrBomMatOutRQ  '#39#39)
    Left = 152
    Top = 320
    object qyDetBillDate: TDateTimeField
      FieldName = 'BillDate'
    end
    object qyDetBillNo: TStringField
      FieldName = 'BillNo'
    end
    object qyDetItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 50
    end
    object qyDetItemName: TStringField
      FieldName = 'ItemName'
      Size = 100
    end
    object qyDetItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 100
    end
    object qyDetMainNum: TFMTBCDField
      FieldName = 'MainNum'
      Precision = 19
      Size = 6
    end
    object qyDetColor: TStringField
      FieldName = 'Color'
      Size = 100
    end
    object qyDetAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 100
    end
    object qyDetMasterNo: TStringField
      FieldName = 'MasterNo'
      Size = 100
    end
  end
  object dsDet: TDataSource
    DataSet = qyDet
    Left = 152
    Top = 280
  end
end
