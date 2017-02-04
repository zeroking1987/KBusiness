inherited StockOrderReqRfFM: TStockOrderReqRfFM
  Caption = #35831#36141#21333#24341#29992
  ClientHeight = 472
  ClientWidth = 891
  ExplicitWidth = 907
  ExplicitHeight = 510
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 891
    ExplicitWidth = 891
  end
  inherited cxgrd: TcxGrid
    Width = 891
    Height = 375
    ExplicitWidth = 891
    ExplicitHeight = 375
    inherited cxgrdtbv: TcxGridDBTableView
      object cxgrdtbvbSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Width = 45
      end
      object cxgrdtbvReqNO: TcxGridDBColumn
        Caption = #35831#36141#21333#21495
        DataBinding.FieldName = 'ReqNO'
        Options.Editing = False
        Width = 93
      end
      object cxgrdtbvReqDate: TcxGridDBColumn
        Caption = #26085#26399
        DataBinding.FieldName = 'ReqDate'
        Options.Editing = False
        Width = 64
      end
      object cxgrdtbvDeptName: TcxGridDBColumn
        Caption = #35831#36141#37096#38376
        DataBinding.FieldName = 'DeptName'
        Options.Editing = False
        Width = 68
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
        Width = 94
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
        Width = 70
      end
      object cxgrdtbvNoOrderNum: TcxGridDBColumn
        Caption = #26410#19979#25968#37327
        DataBinding.FieldName = 'NoOrderNum'
        Options.Editing = False
        Width = 83
      end
      object cxgrdtbvReqNum: TcxGridDBColumn
        Caption = #35831#36141#25968#37327
        DataBinding.FieldName = 'ReqNum'
        Options.Editing = False
        Width = 85
      end
      object cxgrdtbvRemark: TcxGridDBColumn
        Caption = #22791#27880
        DataBinding.FieldName = 'Remark'
        Options.Editing = False
        Width = 98
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      56
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
      
        'select b.bSelect,a.ReqNO,a.ReqDate,d.DeptName,b.ItemId,c.ItemCod' +
        'e,c.ItemName,c.ItemSpc,'
      
        'b.ProType,NoOrderNum=IsNull(b.ReqNum,0)-IsNull(m.OrderNum,0),b.R' +
        'eqNum,a.Remark,b.AutoNo'
      'from RequireHDTB a left join RequireDTTB b on a.ReqNO=b.ReqNo'
      'left join ItemTB c on b.ItemId=c.ItemId'
      'left join DeptTB d on a.DeptId=d.DeptId'
      
        'left join (select OrderNum=SUM(ISNULL(b.OrderNum,0)),b.RfId from' +
        ' StockOrderHDTB a left join StockOrderDTTB b on a.StockOrderNO=b' +
        '.StockOrderNO'
      'where b.RfId  is not null group by b.RfId)m on b.AutoNo=m.RfId'
      'where 1=1 and IsNull(a.bMaxAudit,0)=1'
      'and IsNull(b.ReqNum,0)>IsNull(m.OrderNum,0)'
      '')
  end
end
