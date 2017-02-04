inherited StockReceStockOrderRfFM: TStockReceStockOrderRfFM
  Caption = #37319#36141#25910#36135#21333'-'#37319#36141#35746#21333#24341#29992
  ClientHeight = 472
  ClientWidth = 911
  ExplicitWidth = 927
  ExplicitHeight = 511
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 911
    ExplicitWidth = 911
    inherited Lablbl2: TLabel
      Top = 13
      ExplicitTop = 13
    end
    inherited Label1: TLabel
      Top = 13
      ExplicitTop = 13
    end
    inherited Label2: TLabel
      Top = 10
      ExplicitTop = 10
    end
    inherited cxEdtBillNo: TcxTextEdit
      Left = 367
      Top = 9
      ExplicitLeft = 367
      ExplicitTop = 9
    end
    inherited cxdtS: TcxDateEdit
      Top = 9
      ExplicitTop = 9
    end
    inherited cxdtE: TcxDateEdit
      Top = 9
      ExplicitTop = 9
    end
    object btnItem: TcxButtonEdit
      Left = 549
      Top = 9
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemPropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 3
      TextHint = #21487#36755#20837#20135#21697#20195#21495#12289#21517#31216#12289#35268#26684#12289#25340#38899#30721#26597#35810
      Width = 263
    end
    object cxlbl7: TcxLabel
      Left = 516
      Top = 11
      Caption = #20135#21697
      Transparent = True
    end
  end
  inherited cxgrd: TcxGrid
    Width = 911
    Height = 377
    ExplicitWidth = 911
    ExplicitHeight = 377
    inherited cxgrdtbv: TcxGridDBTableView
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #35760#24405#25968#65306'0'
          Kind = skCount
          FieldName = #32534#21495
        end
        item
          Kind = skSum
          Column = cxgrdtbvNoOrderNum
        end>
      OptionsView.Footer = True
      object cxgrdtbvbSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Width = 45
      end
      object cxgrdtbvReqNO: TcxGridDBColumn
        Caption = #37319#36141#35746#21333#21495
        DataBinding.FieldName = 'StockOrderNo'
        Options.Editing = False
        Width = 93
      end
      object cxgrdtbvReqDate: TcxGridDBColumn
        Caption = #26085#26399
        DataBinding.FieldName = 'OrderDate'
        Options.Editing = False
        Width = 64
      end
      object cxgrdtbvDeptName: TcxGridDBColumn
        Caption = #20379#24212#21830
        DataBinding.FieldName = 'PrvName'
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
      object cxgrdtbvColumn1: TcxGridDBColumn
        Caption = #20132#36135#26085#26399
        DataBinding.FieldName = 'DeliveDate'
        Width = 74
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
        Visible = False
        Options.Editing = False
        Width = 52
      end
      object cxgrdtbvNoOrderNum: TcxGridDBColumn
        Caption = #26410#25910#36135#25968#37327
        DataBinding.FieldName = 'NoReceNum'
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
      
        'select b.bSelect,a.StockOrderNo,a.OrderDate,d.PrvName,b.ItemId,c' +
        '.ItemCode,c.ItemName,c.ItemSpc,b.DeliveDate,'
      
        'b.ProType,NoReceNum=IsNull(b.OrderNum,0)-IsNull(m.ReceNum,0),b.O' +
        'rderNum,b.OrderPrice,b.TaxPrice,b.TaxRate,a.Remark,b.AutoNO,a.Pr' +
        'vId'
      
        'from StockOrderHDTB a left join StockOrderDTTB b on a.StockOrder' +
        'No=b.StockOrderNo'
      'left join ItemTB c on b.ItemId=c.ItemId'
      'left join ProviderTB d on a.PrvId=d.PrvId'
      
        'left join (select ReceNum=SUM(ISNULL(b.ReceNum,0))+Sum(IsNull(b.' +
        'NoPassNum,0)),b.StockOrderId from StockReceHDTB a left join Stoc' +
        'kReceDTTB b on a.StockReceNo=b.StockReceNo'
      
        'where  b.StockOrderId is not null group by b.StockOrderId)m on b' +
        '.AutoNO=m.StockOrderId'
      'where 1=1'
      'and IsNull(b.OrderNum,0)>IsNull(m.ReceNum,0)      ')
  end
end
