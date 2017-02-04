inherited SaleOutSaleOrderRfFM: TSaleOutSaleOrderRfFM
  Caption = #38144#21806#20986#24211#38144#21806#35746#21333#24341#29992
  ClientHeight = 472
  ClientWidth = 911
  ExplicitWidth = 927
  ExplicitHeight = 511
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 911
    ExplicitWidth = 911
    inherited cxEdtBillNo: TcxTextEdit
      Left = 367
      ExplicitLeft = 367
    end
    object cxEdtCompactNo: TcxTextEdit
      Left = 574
      Top = 6
      TabOrder = 3
      Width = 143
    end
    object cxLabel1: TcxLabel
      Left = 528
      Top = 8
      Caption = #21512#21516#21495
      Transparent = True
    end
  end
  inherited cxgrd: TcxGrid
    Width = 911
    Height = 377
    ExplicitWidth = 911
    ExplicitHeight = 377
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
        Width = 93
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
        Visible = False
        Options.Editing = False
        Width = 52
      end
      object cxgrdtbvNoOrderNum: TcxGridDBColumn
        Caption = #26410#20986#24211#25968#37327
        DataBinding.FieldName = 'NoOutNum'
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
      
        'select b.bSelect,a.SaleOrderNo,a.CompactNo,a.OrderDate,d.CustNam' +
        'e,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,'
      
        'b.ProType,NoOutNum=IsNull(b.OrderNum,0)-IsNull(m.OutNum,0),b.Ord' +
        'erNum,a.Remark,b.AutoID,a.CustId'
      
        'from SaleOrderHDTB a left join SaleOrderDTTB b on a.SaleOrderNo=' +
        'b.SaleOrderNo'
      'left join ItemTB c on b.ItemId=c.ItemId'
      'left join CustTB d on a.CustId=d.CustId'
      
        'left join (select OutNum=SUM(ISNULL(b.MainNum,0)),b.SaleNo,b.Sal' +
        'eId from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b' +
        '.BillNO '
      
        'where a.WKindID='#39'SaleOut'#39' and b.SaleId is not null group by b.Sa' +
        'leNo,b.SaleId)m on b.SaleOrderNo=m.SaleNo and b.AutoID=m.SaleId'
      'where 1=1')
  end
end
