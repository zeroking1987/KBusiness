inherited SaleInvoiceSaleOutRfFM: TSaleInvoiceSaleOutRfFM
  Caption = #38144#21806#20986#24211#21333#24341#29992
  ClientHeight = 465
  ClientWidth = 893
  ExplicitWidth = 909
  ExplicitHeight = 504
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 893
    ExplicitWidth = 893
  end
  inherited cxgrd: TcxGrid
    Width = 893
    Height = 370
    ExplicitWidth = 893
    ExplicitHeight = 370
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
          Column = cxgrdtbvReqNum
        end
        item
          Kind = skSum
          Column = cxgrdtbvColumn1
        end>
      OptionsView.Footer = True
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
        Width = 168
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
        Width = 123
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
        Width = 54
      end
      object cxgrdtbvNoOrderNum: TcxGridDBColumn
        Caption = #26410#35760#36134#25968#37327
        DataBinding.FieldName = 'NoRfNum'
        Options.Editing = False
        Width = 83
      end
      object cxgrdtbvColumn2: TcxGridDBColumn
        Caption = #26410#35760#36134#37329#39069
        DataBinding.FieldName = 'NoAllMoney'
        Width = 75
      end
      object cxgrdtbvColumn3: TcxGridDBColumn
        Caption = #20986#24211#37329#39069
        DataBinding.FieldName = 'AllMoney'
        Width = 67
      end
      object cxgrdtbvReqNum: TcxGridDBColumn
        Caption = #20986#24211#25968#37327
        DataBinding.FieldName = 'MainNum'
        Options.Editing = False
        Width = 85
      end
      object cxgrdtbvColumn1: TcxGridDBColumn
        Caption = #21333#20215
        DataBinding.FieldName = 'Mainprice'
        Width = 50
      end
      object cxgrdtbvRemark: TcxGridDBColumn
        Caption = #22791#27880
        DataBinding.FieldName = 'Remark'
        Options.Editing = False
        Width = 73
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
      'exec PrSaleInvoiceSaleOutRf '#39#39)
  end
end
