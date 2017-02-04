inherited ShopMoveProDispatchRfFM: TShopMoveProDispatchRfFM
  Caption = #36710#38388#39046#26009'-'#29983#20135#27966#24037#21333#24341#29992
  ClientHeight = 472
  ClientWidth = 911
  ExplicitWidth = 927
  ExplicitHeight = 511
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 911
    Height = 36
    ExplicitWidth = 911
    ExplicitHeight = 36
    inherited Lablbl2: TLabel
      Left = 351
      ExplicitLeft = 351
    end
    inherited Label1: TLabel
      Width = 48
      Caption = #20132#36135#26085#26399
      ExplicitWidth = 48
    end
    inherited Label2: TLabel
      Left = 195
      ExplicitLeft = 195
    end
    object Label3: TLabel [3]
      Left = 545
      Top = 11
      Width = 36
      Height = 13
      Caption = #21512#21516#21495
    end
    inherited cxEdtBillNo: TcxTextEdit
      Left = 386
      TabOrder = 1
      OnKeyPress = cxEdtBillNoKeyPress
      ExplicitLeft = 386
    end
    inherited cxdtS: TcxDateEdit
      Left = 65
      TabOrder = 2
      ExplicitLeft = 65
    end
    inherited cxdtE: TcxDateEdit
      Left = 214
      TabOrder = 3
      ExplicitLeft = 214
    end
    object cxCompactNo: TcxTextEdit
      Left = 586
      Top = 7
      Properties.OnChange = btFindClick
      TabOrder = 0
      OnKeyPress = cxEdtBillNoKeyPress
      Width = 143
    end
  end
  inherited cxgrd: TcxGrid
    Top = 90
    Width = 911
    Height = 382
    ExplicitTop = 90
    ExplicitWidth = 911
    ExplicitHeight = 382
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
          Column = cxgrdtbvReqNum
        end>
      OptionsView.Footer = True
      object cxgrdtbvbSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Width = 45
      end
      object cxgrdtbvProType: TcxGridDBColumn
        Caption = #21512#21516#21495
        DataBinding.FieldName = 'CompactNo'
        Options.Editing = False
        Width = 69
      end
      object cxgrdtbvColumn1: TcxGridDBColumn
        Caption = #20132#36135#26085#26399
        DataBinding.FieldName = 'DeliverDate'
        Width = 71
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
        Width = 161
      end
      object cxgrdtbvItemSpc: TcxGridDBColumn
        Caption = #35268#26684
        DataBinding.FieldName = 'ItemSpc'
        Options.Editing = False
        Width = 168
      end
      object cxgrdtbvColumn2: TcxGridDBColumn
        Caption = #37096#38376#32534#21495
        DataBinding.FieldName = 'DeptId'
        Visible = False
      end
      object cxgrdtbvColumn3: TcxGridDBColumn
        Caption = #20179#24211#21517#31216
        DataBinding.FieldName = 'WareName'
        Width = 73
      end
      object cxgrdtbvNoOrderNum: TcxGridDBColumn
        Caption = #24211#23384#25968#37327
        DataBinding.FieldName = 'WareNum'
        Options.Editing = False
        Width = 77
      end
      object cxgrdtbvReqNum: TcxGridDBColumn
        Caption = #27966#24037#25968#37327
        DataBinding.FieldName = 'DispatchNum'
        Options.Editing = False
        Width = 82
      end
      object cxgrdtbvRemark: TcxGridDBColumn
        Caption = #22791#27880
        DataBinding.FieldName = 'Remark'
        Options.Editing = False
        Width = 126
      end
      object cxgrdtbvReqNO: TcxGridDBColumn
        Caption = #27966#24037#21333#21495
        DataBinding.FieldName = 'DispatchNo'
        Visible = False
        Options.Editing = False
        Width = 82
      end
      object cxgrdtbvReqDate: TcxGridDBColumn
        Caption = #27966#24037#26085#26399
        DataBinding.FieldName = 'DispatchDate'
        Visible = False
        Options.Editing = False
        Width = 64
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
      'exec  PrShopMoveProDispatchRf  '#39#39)
  end
end
