inherited ProductInSaleOrderRfFM: TProductInSaleOrderRfFM
  Caption = #20135#21697#20837#24211#38144#21806#35746#21333#24341#29992
  ClientHeight = 472
  ClientWidth = 911
  ExplicitLeft = -138
  ExplicitWidth = 927
  ExplicitHeight = 511
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 911
    Height = 45
    ExplicitWidth = 911
    ExplicitHeight = 45
    inherited Lablbl2: TLabel
      Left = 586
      ExplicitLeft = 586
    end
    inherited Label2: TLabel
      Left = 162
      ExplicitLeft = 162
    end
    object Label3: TLabel [3]
      Left = 313
      Top = 11
      Width = 24
      Height = 13
      Caption = #23458#25143
    end
    inherited cxEdtBillNo: TcxTextEdit
      Left = 611
      Properties.OnChange = btFindClick
      ExplicitLeft = 611
      ExplicitWidth = 125
      Width = 125
    end
    inherited cxdtS: TcxDateEdit
      Left = 38
      ExplicitLeft = 38
    end
    inherited cxdtE: TcxDateEdit
      Left = 178
      ExplicitLeft = 178
    end
    object cxEdtCompactNo: TcxTextEdit
      Left = 775
      Top = 7
      Properties.OnChange = btFindClick
      TabOrder = 3
      Width = 125
    end
    object cxLabel1: TcxLabel
      Left = 735
      Top = 9
      Caption = #21512#21516#21495
      Transparent = True
    end
    object btnCustName: TcxButtonEdit
      Left = 342
      Top = 7
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnCustNamePropertiesButtonClick
      TabOrder = 5
      TextHint = #21487#25163#21160#36755#20837#23458#25143#21517#31216#25110#28857#20987#25353#38062#36873#25321#23458#25143
      Width = 238
    end
  end
  inherited cxgrd: TcxGrid
    Top = 99
    Width = 911
    Height = 373
    ExplicitTop = 99
    ExplicitWidth = 911
    ExplicitHeight = 373
    inherited cxgrdtbv: TcxGridDBTableView
      object cxgrdtbvbSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Width = 45
      end
      object cxgrdtbvReqNO: TcxGridDBColumn
        Caption = #38144#21806#35746#21333#21495
        DataBinding.FieldName = 'SaleOrderNo'
        Options.Editing = False
        Width = 107
      end
      object cxgrdtbvColumn6: TcxGridDBColumn
        Caption = #21512#21516#21495
        DataBinding.FieldName = 'CompactNo'
        Options.Editing = False
        Width = 77
      end
      object cxgrdtbvReqDate: TcxGridDBColumn
        Caption = #26085#26399
        DataBinding.FieldName = 'OrderDate'
        Options.Editing = False
        Width = 64
      end
      object cxgrdtbvDeptName: TcxGridDBColumn
        Caption = #23458#25143
        DataBinding.FieldName = 'CustName'
        Options.Editing = False
        Width = 129
      end
      object cxgrdtbvItemCode: TcxGridDBColumn
        Caption = #20135#21697#20195#21495
        DataBinding.FieldName = 'ItemCode'
        Options.Editing = False
        Width = 70
      end
      object cxgrdtbvItemName: TcxGridDBColumn
        Caption = #20135#21697#21517#31216
        DataBinding.FieldName = 'ItemName'
        Options.Editing = False
        Width = 149
      end
      object cxgrdtbvItemSpc: TcxGridDBColumn
        Caption = #35268#26684
        DataBinding.FieldName = 'ItemSpc'
        Options.Editing = False
        Width = 63
      end
      object cxgrdtbvProType: TcxGridDBColumn
        Caption = #23646#24615
        DataBinding.FieldName = 'ProType'
        Options.Editing = False
        Width = 84
      end
      object cxgrdtbvColumn5: TcxGridDBColumn
        Caption = #39068#33394
        DataBinding.FieldName = 'sColor'
        Options.Editing = False
        Width = 66
      end
      object cxgrdtbvNoOrderNum: TcxGridDBColumn
        Caption = #26410#20837#24211#25968#37327
        DataBinding.FieldName = 'NoInNum'
        Options.Editing = False
        Width = 77
      end
      object cxgrdtbvReqNum: TcxGridDBColumn
        Caption = #35746#21333#25968#37327
        DataBinding.FieldName = 'OrderNum'
        Options.Editing = False
        Width = 85
      end
      object cxgrdtbvRemark: TcxGridDBColumn
        Caption = #22791#27880
        DataBinding.FieldName = 'Remark'
        Options.Editing = False
        Width = 71
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      54
      0)
    inherited btAllSelect: TdxBarLargeButton
      OnClick = btAllSelectClick
    end
    inherited btUnSelect: TdxBarLargeButton
      OnClick = btUnSelectClick
    end
    inherited btFind: TdxBarLargeButton
      OnClick = btFindClick
    end
  end
  inherited qyFind: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'PrProductInSaleOrderRf  '#39#39)
  end
end
