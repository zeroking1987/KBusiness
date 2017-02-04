inherited SaleOutSaleSenderRfFM: TSaleOutSaleSenderRfFM
  Caption = #38144#21806#21457#36135#21333#24341#29992
  ClientHeight = 514
  ClientWidth = 912
  ExplicitWidth = 928
  ExplicitHeight = 553
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 912
    Height = 72
    ExplicitWidth = 912
    ExplicitHeight = 72
    inherited Lablbl2: TLabel
      Left = 356
      ExplicitLeft = 356
    end
    inherited cxEdtBillNo: TcxTextEdit
      Left = 391
      ExplicitLeft = 391
    end
    object cxlbl1: TcxLabel
      Left = 340
      Top = 40
      Caption = #21512#21516#21495
      Transparent = True
    end
    object cxCompactNo: TcxTextEdit
      Left = 391
      Top = 38
      Properties.OnChange = btFindClick
      TabOrder = 4
      Width = 143
    end
    object btnCustName: TcxButtonEdit
      Left = 46
      Top = 38
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnCustNamePropertiesButtonClick
      Properties.OnChange = btFindClick
      TabOrder = 5
      TextHint = #21487#25163#21160#36755#20837#23458#25143#21517#31216#25110#28857#20987#25353#38062#36873#25321#23458#25143
      Width = 270
    end
    object cxlbl2: TcxLabel
      Left = 8
      Top = 40
      Caption = #23458#25143
      Transparent = True
    end
    object btnItem: TcxButtonEdit
      Left = 573
      Top = 7
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemPropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 7
      TextHint = #21487#36755#20837#20135#21697#20195#21495#12289#21517#31216#12289#35268#26684#12289#25340#38899#30721#26597#35810
      Width = 252
    end
    object cxlbl7: TcxLabel
      Left = 540
      Top = 9
      Caption = #20135#21697
      Transparent = True
    end
  end
  inherited cxgrd: TcxGrid
    Top = 126
    Width = 912
    Height = 388
    ExplicitTop = 126
    ExplicitWidth = 912
    ExplicitHeight = 388
    inherited cxgrdtbv: TcxGridDBTableView
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
          Column = cxgrdtbvNoOrderNum
        end
        item
          Kind = skSum
          Column = cxgrdtbvReqNum
        end
        item
          Kind = skSum
          Column = cxgrdtbvColumn3
        end>
      OptionsView.Footer = True
      object cxgrdtbvbSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Width = 45
      end
      object cxgrdtbvReqNO: TcxGridDBColumn
        Caption = #38144#21806#21457#36135#21333#21495
        DataBinding.FieldName = 'SenderNo'
        Options.Editing = False
        Width = 93
      end
      object cxgrdtbvReqDate: TcxGridDBColumn
        Caption = #26085#26399
        DataBinding.FieldName = 'SenderDate'
        Options.Editing = False
        Width = 64
      end
      object cxgrdtbvDeptName: TcxGridDBColumn
        Caption = #23458#25143
        DataBinding.FieldName = 'CustName'
        Options.Editing = False
        Width = 129
      end
      object cxgrdtbvColumn2: TcxGridDBColumn
        Caption = #21512#21516#21495
        DataBinding.FieldName = 'CompactNo'
        Options.Editing = False
        Width = 78
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
        Caption = #21457#36135#25968#37327
        DataBinding.FieldName = 'SenderNum'
        Options.Editing = False
        Width = 85
      end
      object cxgrdtbvColumn3: TcxGridDBColumn
        Caption = #24050#20986#24211#25968#37327
        DataBinding.FieldName = 'OutNum'
        Width = 82
      end
      object cxgrdtbvColumn1: TcxGridDBColumn
        Caption = #21333#20215
        DataBinding.FieldName = 'SenderPrice'
        Width = 58
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
      
        'select b.bSelect,a.SenderNo,b.CompactNo,a.SenderDate,d.CustName,' +
        'b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,'
      
        'b.ProType,NoOutNum=IsNull(b.SenderNum,0)-IsNull(m.OutNum,0),b.Se' +
        'nderNum,m.OutNum,b.SenderPrice,b.TaxPrice,a.Remark,'
      'b.AutoNo,b.SaleOrderNo,b.SaleOrderId,a.CustId'
      
        'from SaleSenderHDTB a left join SaleSenderDTTB b on a.SenderNo=b' +
        '.SenderNo'
      'left join ItemTB c on b.ItemId=c.ItemId'
      'left join CustTB d on a.CustId=d.CustId'
      
        'left join (select OutNum=SUM(ISNULL(b.MainNum,0)),b.SaleSenderId' +
        ' from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.Bi' +
        'llNO'
      
        'where a.WKindID='#39'SaleOut'#39' and b.SaleSenderId is not null group b' +
        'y b.SaleSenderId)m on b.AutoNo=m.SaleSenderId'
      'where 1=1'
      'and IsNull(b.SenderNum,0)>IsNull(m.OutNum,0)')
    Top = 216
  end
  inherited dsFind: TDataSource
    Top = 176
  end
end
