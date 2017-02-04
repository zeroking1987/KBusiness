inherited ProDispatchProOrderRfFM: TProDispatchProOrderRfFM
  Caption = #29983#20135#27966#24037#21333'-'#29983#20135#35746#21333#24341#29992
  ClientHeight = 478
  ClientWidth = 967
  ExplicitWidth = 983
  ExplicitHeight = 517
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 967
    Height = 75
    ExplicitWidth = 967
    ExplicitHeight = 75
    inherited Lablbl2: TLabel
      Left = 364
      Top = 42
      ExplicitLeft = 364
      ExplicitTop = 42
    end
    inherited Label1: TLabel
      Left = 32
      Top = 12
      ExplicitLeft = 32
      ExplicitTop = 12
    end
    inherited Label2: TLabel
      Left = 192
      Top = 9
      ExplicitLeft = 192
      ExplicitTop = 9
    end
    inherited cxEdtBillNo: TcxTextEdit
      Left = 399
      Top = 38
      Properties.OnChange = btFindClick
      TabOrder = 1
      ExplicitLeft = 399
      ExplicitTop = 38
    end
    inherited cxdtS: TcxDateEdit
      Left = 62
      Top = 8
      TabOrder = 2
      ExplicitLeft = 62
      ExplicitTop = 8
    end
    inherited cxdtE: TcxDateEdit
      Left = 211
      Top = 8
      TabOrder = 3
      ExplicitLeft = 211
      ExplicitTop = 8
    end
    object cxlbl1: TcxLabel
      Left = 353
      Top = 10
      Caption = #21512#21516#21495
      Transparent = True
    end
    object cxCompactNo: TcxTextEdit
      Left = 399
      Top = 8
      Properties.OnChange = btFindClick
      TabOrder = 0
      Width = 143
    end
    object btnItem: TcxButtonEdit
      Left = 62
      Top = 37
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemPropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 5
      TextHint = #21487#36755#20837#20135#21697#20195#21495#12289#21517#31216#12289#35268#26684#12289#25340#38899#30721#26597#35810
      Width = 270
    end
    object cxlbl7: TcxLabel
      Left = 29
      Top = 39
      Caption = #20135#21697
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 548
      Top = 10
      Caption = #24037#24207#21517#31216
      Transparent = True
    end
    object cxTechName: TcxButtonEdit
      Left = 606
      Top = 8
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxTechNamePropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 8
      TextHint = #21487#36755#20837#24037#24207#21517#31216#12289#25340#38899#30721#26597#35810
      Width = 187
    end
  end
  inherited cxgrd: TcxGrid
    Top = 129
    Width = 967
    Height = 349
    ExplicitTop = 129
    ExplicitWidth = 967
    ExplicitHeight = 349
    inherited cxgrdtbv: TcxGridDBTableView
      OnDblClick = cxgrdtbvDblClick
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #35760#24405#25968#65306'0'
          Kind = skCount
          FieldName = #32534#21495
        end
        item
          Format = #21512#35745':0'
          Kind = skCount
          Column = cxgrdtbvReqNO
        end
        item
          Kind = skSum
          Column = cxgrdtbvReqNum
        end
        item
          Kind = skSum
          Column = cxgrdtbvColumn4
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
          Column = cxgrdtbvNoOrderNum
        end>
      OptionsView.Footer = True
      object cxgrdtbvbSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Width = 37
      end
      object cxgrdtbvColumn3: TcxGridDBColumn
        Caption = #21512#21516#21495
        DataBinding.FieldName = 'CompactNo'
        Visible = False
        Width = 61
      end
      object cxgrdtbvItemCode: TcxGridDBColumn
        Caption = #20135#21697#20195#21495
        DataBinding.FieldName = 'ItemCode'
        Options.Editing = False
        Options.CellMerging = True
        Width = 80
      end
      object cxgrdtbvItemName: TcxGridDBColumn
        Caption = #20135#21697#21517#31216
        DataBinding.FieldName = 'ItemName'
        Options.Editing = False
        Options.CellMerging = True
        Width = 104
      end
      object cxgrdtbvItemSpc: TcxGridDBColumn
        Caption = #35268#26684
        DataBinding.FieldName = 'ItemSpc'
        Visible = False
        Options.Editing = False
        Options.CellMerging = True
        Width = 80
      end
      object cxgrdtbvColumn1: TcxGridDBColumn
        Caption = #24037#24207#21495
        DataBinding.FieldName = 'Ordinal'
        Options.Editing = False
        Width = 60
      end
      object cxgrdtbvColumn2: TcxGridDBColumn
        Caption = #24037#24207#21517#31216
        DataBinding.FieldName = 'TechName'
        Options.Editing = False
        Width = 82
      end
      object cxgrdtbvColumn7: TcxGridDBColumn
        Caption = #21152#24037#37096#38376
        DataBinding.FieldName = 'Deptname'
        Options.Editing = False
        Width = 75
      end
      object cxgrdtbvColumn5: TcxGridDBColumn
        Caption = #23646#24615
        DataBinding.FieldName = 'ProType'
        Visible = False
        Options.Editing = False
        Width = 60
      end
      object cxgrdtbvColumn6: TcxGridDBColumn
        Caption = #39068#33394
        DataBinding.FieldName = 'Color'
        Visible = False
        Options.Editing = False
        Width = 60
      end
      object cxgrdtbvNoOrderNum: TcxGridDBColumn
        Caption = #26410#27966#24037#25968#37327
        DataBinding.FieldName = 'NoDispatchNum'
        Options.Editing = False
        Width = 83
      end
      object cxgrdtbvReqNum: TcxGridDBColumn
        Caption = #29983#20135#35746#21333#25968
        DataBinding.FieldName = 'FinalNum'
        Options.Editing = False
        Width = 80
      end
      object cxgrdtbvColumn4: TcxGridDBColumn
        Caption = #24050#27966#24037#25968#37327
        DataBinding.FieldName = 'DispatchNum'
        Width = 78
      end
      object cxgrdtbvReqNO: TcxGridDBColumn
        Caption = #26085#26399
        DataBinding.FieldName = 'MrpDate'
        Visible = False
        Options.Editing = False
        Width = 105
      end
      object cxgrdtbvProOrderNo: TcxGridDBColumn
        Caption = #29983#20135#35746#21333#21495
        DataBinding.FieldName = 'ProOrderNo'
        Options.Editing = False
        Options.CellMerging = True
        Width = 107
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
      'exec PrProDispatchProOrderRf '#39#39)
    Top = 216
  end
  inherited dsFind: TDataSource
    Top = 176
  end
end
