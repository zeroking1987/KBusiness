inherited StockPayInvoiceRfFM: TStockPayInvoiceRfFM
  Caption = #24212#20184#35760#36134#21333#24341#29992
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
        Width = 40
      end
      object cxgrdtbvInvoiceNo: TcxGridDBColumn
        Caption = #35760#36134#21333#21495
        DataBinding.FieldName = 'InvoiceNo'
        Options.Editing = False
        Width = 80
      end
      object cxgrdtbvInvoiceDate: TcxGridDBColumn
        Caption = #35760#36134#26085#26399
        DataBinding.FieldName = 'InvoiceDate'
        Options.Editing = False
        Width = 79
      end
      object cxgrdtbvCustId: TcxGridDBColumn
        Caption = #20379#24212#21830#32534#21495
        DataBinding.FieldName = 'PrvId'
        Options.Editing = False
        Width = 71
      end
      object cxgrdtbvCustName: TcxGridDBColumn
        Caption = #20379#24212#21830#21517#31216
        DataBinding.FieldName = 'PrvName'
        Options.Editing = False
        Width = 178
      end
      object cxgrdtbvNoPayMoney: TcxGridDBColumn
        Caption = #26410#32467#31639#37329#39069
        DataBinding.FieldName = 'NoPayMoney'
        Options.Editing = False
        Width = 83
      end
      object cxgrdtbvInvoiceMoney: TcxGridDBColumn
        Caption = #35760#36134#37329#39069
        DataBinding.FieldName = 'InvoiceMoney'
        Options.Editing = False
        Width = 72
      end
      object cxgrdtbvColumn1: TcxGridDBColumn
        Caption = #32467#31639#29575
        DataBinding.FieldName = 'PayPre'
        PropertiesClassName = 'TcxProgressBarProperties'
        Properties.PeakValue = 100.000000000000000000
        Width = 74
      end
      object cxgrdtbvSourceDate: TcxGridDBColumn
        Caption = #28304#21333#26085#26399
        DataBinding.FieldName = 'SourceDate'
        Options.Editing = False
        Width = 80
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
      'select a.bSelect,a.InvoiceNo,a.InvoiceDate,a.PrvId,c.PrvName,'
      
        'NoPayMoney=Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0))-ISNULL(m.Pay' +
        'Money,0),'
      
        'InvoiceMoney=Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0)),HasPayMone' +
        'y=ISNULL(m.PayMoney,0),'
      
        'PayPre=ISNULL(m.PayMoney,0)/dbo.IsZero(Sum(a.SignFlag*ISNULL(b.I' +
        'nvoiceMoney,0)),null)*100,'
      'd.EmpName,a.SourceDate'
      
        'from StockInvoiceHDTB a left join StockInvoiceDTTB b on a.Invoic' +
        'eNo=b.InvoiceNO'
      'left join ProviderTB c on a.PrvId=c.PrvId'
      'left join EmployeeTB d on a.EmpId=d.EmpId'
      
        'left join (select InvoiceNo,PayMoney=SUM(ISNULL(NowPayMoney,0)) ' +
        'from SalePayDTTB group by InvoiceNo)m on a.InvoiceNo=m.InvoiceNo'
      'where ISNULL(a.bMaxAudit,0)=1 '
      
        'group by a.bSelect,a.InvoiceNo,a.InvoiceDate,a.PrvId,c.PrvName,d' +
        '.EmpName,a.SourceDate,ISNULL(m.PayMoney,0)'
      
        'Having Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0))>ISNULL(m.PayMone' +
        'y,0)')
    object qyFindbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyFindInvoiceNo: TStringField
      FieldName = 'InvoiceNo'
    end
    object qyFindInvoiceDate: TDateTimeField
      FieldName = 'InvoiceDate'
    end
    object qyFindNoPayMoney: TFMTBCDField
      FieldName = 'NoPayMoney'
      ReadOnly = True
      Precision = 38
      Size = 5
    end
    object qyFindInvoiceMoney: TFMTBCDField
      FieldName = 'InvoiceMoney'
      ReadOnly = True
      Precision = 38
      Size = 5
    end
    object qyFindEmpName: TStringField
      FieldName = 'EmpName'
    end
    object qyFindSourceDate: TDateTimeField
      FieldName = 'SourceDate'
    end
    object qyFindHasPayMoney: TFMTBCDField
      FieldName = 'HasPayMoney'
      ReadOnly = True
      Precision = 38
      Size = 5
    end
    object qyFindPayPre: TFloatField
      FieldName = 'PayPre'
      ReadOnly = True
    end
    object strngfldFindPrvId: TStringField
      FieldName = 'PrvId'
    end
    object strngfldFindPrvName: TStringField
      FieldName = 'PrvName'
      Size = 50
    end
  end
end
