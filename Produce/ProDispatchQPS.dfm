inherited ProDispatchQFM: TProDispatchQFM
  Caption = #29983#20135#27966#24037#21333#25253#34920
  ClientHeight = 504
  ClientWidth = 1059
  ExplicitWidth = 1059
  ExplicitHeight = 504
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Width = 1059
    TabOrder = 2
    ExplicitWidth = 1059
    inherited cxLabTitle: TcxLabel
      Caption = #29983#20135#27966#24037#21333#25253#34920
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlFind: TPanel
    Width = 1059
    Height = 77
    TabOrder = 4
    ExplicitWidth = 1059
    ExplicitHeight = 77
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
      Properties.OnChange = btFindClick
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
      Height = 73
      Width = 75
    end
    object btnItemName: TcxButtonEdit
      Left = 63
      Top = 53
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
      Top = 27
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
      Height = 73
      Width = 87
    end
    object btnItemKind: TcxButtonEdit
      Left = 400
      Top = 53
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
      Left = 400
      Top = 80
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
      ItemIndex = 2
      TabOrder = 10
      Height = 73
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
      Top = 29
      Caption = #23646#24615
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 5
      Top = 55
      Caption = #20135#21697#21517#31216
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 348
      Top = 55
      Caption = #20135#21697#31867#21035
      Transparent = True
    end
    object cxLabel7: TcxLabel
      Left = 372
      Top = 80
      Caption = #39068#33394
      Transparent = True
    end
    object cxTextEdit1: TcxTextEdit
      Left = 400
      Top = 27
      TabOrder = 18
      Width = 143
    end
    object cxLabel8: TcxLabel
      Left = 336
      Top = 29
      Caption = #38144#21806#35746#21333#21495
      Transparent = True
    end
    object cxTextEdit2: TcxTextEdit
      Left = 595
      Top = 27
      TabOrder = 20
      Width = 143
    end
    object cxLabel9: TcxLabel
      Left = 555
      Top = 29
      Caption = #21512#21516#21495
      Transparent = True
    end
    object cxLabel10: TcxLabel
      Left = 561
      Top = 55
      Caption = #24037#24207
      Transparent = True
    end
    object cxTechName: TcxButtonEdit
      Left = 595
      Top = 53
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxTechNamePropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 23
      TextHint = #21487#36755#20837#24037#24207#21517#31216#12289#25340#38899#30721#26597#35810
      Width = 143
    end
  end
  inherited cxpgcntrl1: TcxPageControl
    Top = 153
    Width = 1059
    Height = 351
    ExplicitTop = 153
    ExplicitWidth = 1059
    ExplicitHeight = 351
    ClientRectBottom = 345
    ClientRectRight = 1053
    inherited cxtbsht1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 27
      ExplicitWidth = 1051
      ExplicitHeight = 318
      inherited cxgrd: TcxGrid
        Width = 1051
        Height = 318
        ExplicitWidth = 1051
        ExplicitHeight = 318
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
            end
            item
              Kind = skSum
              Column = cxgrdtbvColumn2
            end
            item
              Kind = skSum
              Column = cxgrdtbvColumn3
            end
            item
              Kind = skSum
              Column = cxgrdtbvColumn4
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
            Visible = False
            Width = 70
          end
          object cxgrdtbvColor: TcxGridDBColumn
            Caption = #39068#33394
            DataBinding.FieldName = 'Color'
            Visible = False
            Width = 59
          end
          object cxgrdtbvEmpName: TcxGridDBColumn
            Caption = #29983#20135#23545#35937
            DataBinding.FieldName = 'ObjectName'
            Width = 70
          end
          object cxgrdtbvColumn1: TcxGridDBColumn
            Caption = #24037#24207#21495
            DataBinding.FieldName = 'Ordinal'
            Width = 59
          end
          object cxgrdtbvTechName: TcxGridDBColumn
            Caption = #24037#24207
            DataBinding.FieldName = 'TechName'
            Width = 59
          end
          object cxgrdtbvDispatchNum: TcxGridDBColumn
            Caption = #27966#24037#25968#37327
            DataBinding.FieldName = 'DispatchNum'
            Width = 70
          end
          object cxgrdtbvProductIn: TcxGridDBColumn
            Caption = #21512#26684#20837#24211#25968
            DataBinding.FieldName = 'InNum'
            Width = 82
          end
          object cxgrdtbvColumn2: TcxGridDBColumn
            Caption = #24223#21697#20837#24211#25968
            DataBinding.FieldName = 'WasteNum'
            Width = 81
          end
          object cxgrdtbvColumn3: TcxGridDBColumn
            Caption = #19981#33391#21697#25968
            DataBinding.FieldName = 'SpoilNum'
            Width = 70
          end
          object cxgrdtbvColumn4: TcxGridDBColumn
            Caption = #26009#24223#25968
            DataBinding.FieldName = 'ScrapNum'
            Width = 70
          end
          object cxgrdtbvNoInNum: TcxGridDBColumn
            Caption = #26410#20837#24211#25968
            DataBinding.FieldName = 'NoInNum'
            Width = 70
          end
          object cxgrdtbvColumn5: TcxGridDBColumn
            Caption = #20837#24211#26085#26399
            DataBinding.FieldName = 'MoveDate'
            Width = 68
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
    Left = 240
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'exec PrProDispatchQ  '#39#39)
    Left = 240
  end
  inherited frxHed: TfrxDBDataset
    UserName = #29983#20135#27966#24037#21333#25253#34920
    FieldAliases.Strings = (
      'DispatchNo='#27966#24037#21333#21495
      'DispatchDate='#27966#24037#26102#38388
      'ItemId='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'ProType='#23646#24615
      'Color='#39068#33394
      'ObjectName='#29983#20135#23545#35937
      'Ordinal='#24037#24207#21495
      'TechName='#24037#24207#21517#31216
      'DispatchNum='#27966#24037#25968#37327
      'NoInNum='#26410#20837#24211#25968#37327
      'InNum='#21512#26684#20837#24211#25968
      'SpoilNum='#19981#33391#21697#25968
      'WasteNum='#24223#21697#25968
      'ScrapNum='#26009#24223#25968
      'Remark='#22791#27880
      'MoveDate='#20837#24211#26085#26399
      'AutoID='#20869#30721
      'AutoNO='#20869#21495
      'ProOrderNo='#29983#20135#35746#21333#21495
      'ProOrderId='#29983#20135#35746#21333#20869#30721
      'CustCode='#23458#25143#20195#21495
      'CustName='#23458#25143#21517#31216
      'bComplete='#26159#21542#23436#24037)
    Left = 240
  end
end
