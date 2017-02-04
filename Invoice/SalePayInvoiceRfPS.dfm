inherited SalePayInvoiceRfFM: TSalePayInvoiceRfFM
  Caption = #26410#25910#27454#38144#21806#21333#24341#29992
  ClientHeight = 497
  ClientWidth = 898
  ExplicitWidth = 914
  ExplicitHeight = 536
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 898
    ExplicitWidth = 898
  end
  inherited cxgrd: TcxGrid
    Width = 898
    Height = 402
    ExplicitWidth = 898
    ExplicitHeight = 402
    inherited cxgrdtbv: TcxGridDBTableView
      object cxgrdtbvbSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Width = 51
      end
      object cxgrdtbvInvoiceNo: TcxGridDBColumn
        Caption = #38144#21806#21333#21495
        DataBinding.FieldName = 'BillNo'
        Options.Editing = False
        Width = 101
      end
      object cxgrdtbvInvoiceDate: TcxGridDBColumn
        Caption = #26085#26399
        DataBinding.FieldName = 'BillDate'
        Options.Editing = False
        Width = 100
      end
      object cxgrdtbvCustName: TcxGridDBColumn
        Caption = #23458#25143#21517#31216
        DataBinding.FieldName = 'ObjectName'
        Options.Editing = False
        Width = 298
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
    inherited btFind: TdxBarLargeButton
      OnClick = btFindClick
    end
    inherited dxbrcmbPageIndex: TdxBarCombo
      Visible = ivNever
    end
  end
  inherited qyFind: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'exec PrSalePaySaleInvoiceRf '#39#39)
    object qyFindbSelect: TBooleanField
      FieldName = 'bSelect'
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
    object qyFindBillNo: TStringField
      FieldName = 'BillNo'
    end
    object qyFindBillDate: TDateTimeField
      FieldName = 'BillDate'
    end
    object qyFindObjectId: TStringField
      FieldName = 'ObjectId'
    end
    object qyFindObjectName: TStringField
      FieldName = 'ObjectName'
      Size = 100
    end
  end
end
