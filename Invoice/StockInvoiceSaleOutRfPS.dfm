inherited StockInvoiceSaleOutRfFM: TStockInvoiceSaleOutRfFM
  Caption = #38144#21806#20986#24211#21333#24341#29992
  ClientHeight = 497
  ClientWidth = 898
  ExplicitWidth = 914
  ExplicitHeight = 535
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 898
    ExplicitWidth = 898
  end
  inherited cxgrd: TcxGrid
    Width = 898
    Height = 400
    ExplicitWidth = 898
    ExplicitHeight = 400
    inherited cxgrdtbv: TcxGridDBTableView
      object cxgrdtbvbSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Width = 45
      end
      object cxgrdtbvReqNO: TcxGridDBColumn
        Caption = #21333#21495
        DataBinding.FieldName = 'BillNO'
        Options.Editing = False
        Width = 93
      end
      object cxgrdtbvReqDate: TcxGridDBColumn
        Caption = #26085#26399
        DataBinding.FieldName = 'BillDate'
        Options.Editing = False
        Width = 64
      end
      object cxgrdtbvDeptName: TcxGridDBColumn
        Caption = #23458#25143
        DataBinding.FieldName = 'ObjectName'
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
        Caption = #26410#35760#36134#25968#37327
        DataBinding.FieldName = 'NoRfNum'
        Options.Editing = False
        Width = 83
      end
      object cxgrdtbvReqNum: TcxGridDBColumn
        Caption = #20986#24211#25968#37327
        DataBinding.FieldName = 'MainNum'
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
      
        'select b.bSelect,a.BillNO,a.BillDate,d.ObjectName,b.ItemId,c.Ite' +
        'mCode,c.ItemPYCode,c.ItemName,c.ItemSpc,'
      
        'b.ProType,b.Color,NoRfNum=IsNull(b.MainNum,0)-IsNull(m.InvoiceNu' +
        'm,0),b.MainNum,a.Remark,b.AutoID'
      
        'from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.Bil' +
        'lNO'
      'left join ItemTB c on b.ItemId=c.ItemId'
      'left join vwObject d on a.ObjectID=d.ObjectID'
      
        'left join (select InvoiceNum=SUM(ISNULL(b.InvoiceNum,0)),b.IoNo,' +
        'b.IoId from SaleInvoiceHDTB a left join SaleInvoiceDTTB b on a.I' +
        'nvoiceNo=b.InvoiceNo '
      
        'where b.IoId is not null group by b.IoNo,b.IoId)m on b.BillNO=m.' +
        'IoNo and b.AutoID=m.IoId'
      'where a.WKindID='#39'SaleOut'#39)
    object qyFindbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyFindItemId: TStringField
      FieldName = 'ItemId'
      Size = 50
    end
    object qyFindItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 30
    end
    object qyFindItemName: TStringField
      FieldName = 'ItemName'
      Size = 200
    end
    object qyFindItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 200
    end
    object qyFindProType: TStringField
      FieldName = 'ProType'
      Size = 100
    end
    object qyFindRemark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
    object qyFindBillNO: TStringField
      FieldName = 'BillNO'
    end
    object qyFindBillDate: TDateTimeField
      FieldName = 'BillDate'
    end
    object qyFindObjectName: TStringField
      FieldName = 'ObjectName'
      Size = 50
    end
    object qyFindColor: TStringField
      FieldName = 'Color'
      Size = 100
    end
    object qyFindNoRfNum: TFMTBCDField
      FieldName = 'NoRfNum'
      ReadOnly = True
      Precision = 38
      Size = 5
    end
    object qyFindMainNum: TFMTBCDField
      FieldName = 'MainNum'
      Precision = 19
      Size = 6
    end
    object qyFindAutoID: TAutoIncField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object qyFindItemPYCode: TStringField
      FieldName = 'ItemPYCode'
      Size = 50
    end
  end
end
