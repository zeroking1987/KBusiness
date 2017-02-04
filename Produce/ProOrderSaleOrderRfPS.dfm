inherited ProOrderSaleOrderRfFM: TProOrderSaleOrderRfFM
  Caption = #29983#20135#35746#21333'-'#38144#21806#35746#21333#24341#29992
  ClientHeight = 492
  ClientWidth = 987
  ExplicitWidth = 1003
  ExplicitHeight = 531
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 987
    Height = 107
    ExplicitTop = 48
    ExplicitWidth = 987
    ExplicitHeight = 107
    inherited Lablbl2: TLabel
      Left = 18
      Top = 38
      ExplicitLeft = 18
      ExplicitTop = 38
    end
    inherited Label1: TLabel
      Left = 18
      ExplicitLeft = 18
    end
    inherited Label2: TLabel
      Left = 184
      ExplicitLeft = 184
    end
    inherited cxEdtBillNo: TcxTextEdit
      Left = 46
      Top = 34
      ExplicitLeft = 46
      ExplicitTop = 34
      ExplicitWidth = 121
      Width = 121
    end
    inherited cxdtE: TcxDateEdit
      Left = 211
      ExplicitLeft = 211
    end
    object cxEdtCompactNo: TcxTextEdit
      Left = 211
      Top = 34
      TabOrder = 3
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 173
      Top = 36
      Caption = #21512#21516#21495
      Transparent = True
    end
    object cxRgpBom: TcxRadioGroup
      Left = 360
      Top = 7
      Alignment = alTopCenter
      Caption = 'Bom'#29366#24577
      Properties.Items = <
        item
          Caption = #26410#24314
        end
        item
          Caption = #24050#24314
        end
        item
          Caption = #25152#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 1
      TabOrder = 5
      Height = 92
      Width = 100
    end
    object cxRgpMrp: TcxRadioGroup
      Left = 466
      Top = 7
      Alignment = alTopCenter
      Caption = #20998#26512#24773#20917
      Properties.Items = <
        item
          Caption = #26410#20998#26512#23436
        end
        item
          Caption = #24050#20998#26512#23436
        end
        item
          Caption = #25152#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 0
      TabOrder = 6
      Height = 92
      Width = 100
    end
    object cxRgpOrderStyle: TcxRadioGroup
      Left = 572
      Top = 7
      Alignment = alTopCenter
      Caption = #35746#21333#31867#22411
      Properties.Items = <
        item
          Caption = #20869#38144
        end
        item
          Caption = #22806#36152
        end
        item
          Caption = #25152#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 2
      TabOrder = 7
      Height = 92
      Width = 100
    end
    object cxItem: TcxButtonEdit
      Left = 46
      Top = 61
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxItemPropertiesButtonClick
      ShowHint = True
      TabOrder = 8
      TextHint = #21487#36755#20837#20135#21697#20195#21495#12289#21517#31216#12289#35268#26684#12289#25340#38899#30721#26597#35810
      Width = 286
    end
    object cxlbl7: TcxLabel
      Left = 14
      Top = 62
      Caption = #20135#21697
      Transparent = True
    end
  end
  inherited cxgrd: TcxGrid
    Top = 161
    Width = 987
    Height = 331
    ExplicitTop = 121
    ExplicitWidth = 987
    ExplicitHeight = 371
    inherited cxgrdtbv: TcxGridDBTableView
      object cxgrdtbvbSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Width = 45
      end
      object cxgrdtbvColumn1: TcxGridDBColumn
        Caption = #21512#21516#21495
        DataBinding.FieldName = 'CompactNo'
        Width = 81
      end
      object cxgrdtbvReqNO: TcxGridDBColumn
        Caption = #38144#21806#35746#21333#21495
        DataBinding.FieldName = 'SaleOrderNo'
        Visible = False
        Options.Editing = False
        Width = 104
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
        Width = 146
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
        Width = 87
      end
      object cxgrdtbvColumn2: TcxGridDBColumn
        Caption = #39068#33394
        DataBinding.FieldName = 'Color'
        Width = 68
      end
      object cxgrdtbvNoOrderNum: TcxGridDBColumn
        Caption = #26410#20998#26512#25968#37327
        DataBinding.FieldName = 'NoProOrderNum'
        Options.Editing = False
        Width = 77
      end
      object cxgrdtbvReqNum: TcxGridDBColumn
        Caption = #35746#21333#25968#37327
        DataBinding.FieldName = 'OrderNum'
        Options.Editing = False
        Width = 73
      end
      object cxgrdtbvColumn3: TcxGridDBColumn
        Caption = 'BOM'#24314#31435
        DataBinding.FieldName = 'bBom'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Width = 56
      end
      object cxgrdtbvColumn4: TcxGridDBColumn
        Caption = #35746#21333#31867#22411
        DataBinding.FieldName = 'OrderStyle'
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
      'exec PrProOrderSaleOrderRf '#39#39)
  end
end
