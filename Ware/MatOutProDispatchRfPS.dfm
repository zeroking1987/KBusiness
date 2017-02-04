inherited MatOutProDispatchRfFM: TMatOutProDispatchRfFM
  Caption = #21457#26009#20986#24211#29983#20135#27966#24037#21333#24341#29992
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
      OnKeyPress = cxEdtBillNoKeyPress
      ExplicitLeft = 367
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
        Caption = #29983#20135#27966#24037#21333#21495
        DataBinding.FieldName = 'DispatchNo'
        Options.Editing = False
        Width = 108
      end
      object cxgrdtbvReqDate: TcxGridDBColumn
        Caption = #26085#26399
        DataBinding.FieldName = 'DispatchDate'
        Options.Editing = False
        Width = 64
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
        Width = 92
      end
      object cxgrdtbvProType: TcxGridDBColumn
        Caption = #23646#24615
        DataBinding.FieldName = 'ProType'
        Options.Editing = False
        Width = 78
      end
      object cxgrdtbvColumn1: TcxGridDBColumn
        Caption = #39068#33394
        DataBinding.FieldName = 'Color'
        Width = 71
      end
      object cxgrdtbvNoOrderNum: TcxGridDBColumn
        Caption = #26410#20986#24211#25968#37327
        DataBinding.FieldName = 'NoOutNum'
        Options.Editing = False
        Width = 77
      end
      object cxgrdtbvReqNum: TcxGridDBColumn
        Caption = #39046#26009#25968#37327
        DataBinding.FieldName = 'TakeNum'
        Options.Editing = False
        Width = 94
      end
      object cxgrdtbvColumn2: TcxGridDBColumn
        Caption = #25104#21697#20195#21495
        DataBinding.FieldName = 'CPCode'
        Width = 65
      end
      object cxgrdtbvColumn3: TcxGridDBColumn
        Caption = #25104#21697#21517#31216
        DataBinding.FieldName = 'CPItemName'
        Width = 139
      end
      object cxgrdtbvColumn4: TcxGridDBColumn
        Caption = #25104#21697#35268#26684
        DataBinding.FieldName = 'CPItemSpc'
        Width = 93
      end
      object cxgrdtbvRemark: TcxGridDBColumn
        Caption = #22791#27880
        DataBinding.FieldName = 'Remark'
        Options.Editing = False
        Width = 126
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
    Filtered = True
    SQL.Strings = (
      'exec PrMatOutProDispatchRf  '#39#39)
    Top = 176
  end
end
