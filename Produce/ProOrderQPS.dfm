inherited ProOrderQFM: TProOrderQFM
  Caption = #29983#20135#35746#21333#25253#34920
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
      Caption = #29983#20135#35746#21333#25253#34920
      Style.IsFontAssigned = True
      ExplicitTop = 0
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlFind: TPanel
    Width = 1059
    Height = 78
    TabOrder = 4
    ExplicitWidth = 1059
    ExplicitHeight = 78
    object Label2: TLabel
      Left = 193
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
      Left = 211
      Top = 1
      TabOrder = 2
      Width = 121
    end
    object cxrdgrpAudit: TcxRadioGroup
      Left = 565
      Top = 2
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
      Left = 62
      Top = 54
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
    object btnProType: TcxButtonEdit
      Left = 62
      Top = 28
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 5
      TextHint = #21487#25163#21160#36755#20837#23646#24615#25110#28857#20987#25353#38062#36873#25321
      Width = 270
    end
    object cxrdgrpProductIn: TcxRadioGroup
      Left = 639
      Top = 2
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
      TabOrder = 6
      Height = 73
      Width = 87
    end
    object btnItemKind: TcxButtonEdit
      Left = 400
      Top = 54
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemKindPropertiesButtonClick
      ShowHint = True
      TabOrder = 7
      Width = 143
    end
    object btnColor: TcxButtonEdit
      Left = 400
      Top = 28
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 8
      Width = 143
    end
    object cxrdgrpComplete: TcxRadioGroup
      Left = 725
      Top = 2
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
      TabOrder = 9
      Visible = False
      Height = 73
      Width = 87
    end
    object cxLabel2: TcxLabel
      Left = 29
      Top = 3
      Caption = #26085#26399
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 362
      Top = 3
      Caption = #21333#21495
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 29
      Top = 31
      Caption = #23646#24615
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 362
      Top = 29
      Caption = #39068#33394
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 5
      Top = 55
      Caption = #20135#21697#21517#31216
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 338
      Top = 55
      Caption = #20135#21697#31867#21035
      Transparent = True
    end
  end
  inherited cxpgcntrl1: TcxPageControl
    Top = 154
    Width = 1059
    Height = 350
    ExplicitTop = 154
    ExplicitWidth = 1059
    ExplicitHeight = 350
    ClientRectBottom = 344
    ClientRectRight = 1053
    inherited cxtbsht1: TcxTabSheet
      ExplicitWidth = 1051
      ExplicitHeight = 317
      inherited cxgrd: TcxGrid
        Width = 1051
        Height = 317
        ExplicitWidth = 1051
        ExplicitHeight = 317
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
              Column = cxgrdtbvFinalNum
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
              Column = cxgrdtbvProOrderNo
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
          object cxgrdtbvProOrderNo: TcxGridDBColumn
            Caption = #21333#21495
            DataBinding.FieldName = 'ProOrderNo'
            Width = 107
          end
          object cxgrdtbvMrpDate: TcxGridDBColumn
            Caption = #26085#26399
            DataBinding.FieldName = 'MrpDate'
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
          object cxgrdtbvSaleOrderNo: TcxGridDBColumn
            Caption = #38144#21806#35746#21333#21495
            DataBinding.FieldName = 'SaleOrderNo'
            Width = 70
          end
          object cxgrdtbvCompactNO: TcxGridDBColumn
            Caption = #21512#21516#21495
            DataBinding.FieldName = 'CompactNO'
            Width = 64
          end
          object cxgrdtbvFinalNum: TcxGridDBColumn
            Caption = #29983#20135#25968#37327
            DataBinding.FieldName = 'FinalNum'
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
      'exec PrProOrderQ '#39#39)
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
    Left = 240
  end
end
