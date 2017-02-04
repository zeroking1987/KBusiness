inherited MatProDispatchRfFM: TMatProDispatchRfFM
  Caption = #21457#26009'-'#29983#20135#27966#24037#21333#24341#29992
  ClientHeight = 506
  ClientWidth = 963
  ExplicitWidth = 979
  ExplicitHeight = 545
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 963
    Height = 63
    ExplicitWidth = 963
    ExplicitHeight = 63
    inherited Lablbl2: TLabel
      Left = 351
      Width = 48
      Caption = #27966#24037#21333#21495
      ExplicitLeft = 351
      ExplicitWidth = 48
    end
    inherited Label1: TLabel
      Left = 36
      ExplicitLeft = 36
    end
    inherited Label2: TLabel
      Left = 195
      ExplicitLeft = 195
    end
    inherited cxEdtBillNo: TcxTextEdit
      Left = 406
      OnKeyPress = cxEdtBillNoKeyPress
      ExplicitLeft = 406
    end
    inherited cxdtS: TcxDateEdit
      Left = 65
      ExplicitLeft = 65
    end
    inherited cxdtE: TcxDateEdit
      Left = 214
      ExplicitLeft = 214
    end
    object btnItem: TcxButtonEdit
      Left = 65
      Top = 36
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 3
      TextHint = #21487#36755#20837#20135#21697#20195#21495#12289#21517#31216#12289#35268#26684#12289#25340#38899#30721#26597#35810
      Width = 270
    end
    object cxlbl7: TcxLabel
      Left = 32
      Top = 38
      Caption = #20135#21697
      Transparent = True
    end
  end
  inherited cxgrd: TcxGrid
    Top = 117
    Width = 963
    ExplicitTop = 117
    ExplicitWidth = 963
    inherited cxgrdtbv: TcxGridDBTableView
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #35760#24405#25968#65306'0'
          Kind = skCount
          FieldName = #32534#21495
        end
        item
          Kind = skSum
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
      object cxgrdtbvColumn1: TcxGridDBColumn
        Caption = #26085#26399
        DataBinding.FieldName = 'DispatchDate'
        Options.Editing = False
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
        Width = 147
      end
      object cxgrdtbvItemSpc: TcxGridDBColumn
        Caption = #35268#26684
        DataBinding.FieldName = 'ItemSpc'
        Options.Editing = False
        Width = 77
      end
      object cxgrdtbvProType: TcxGridDBColumn
        Caption = #23646#24615
        DataBinding.FieldName = 'Protype'
        Visible = False
        Options.Editing = False
        Width = 69
      end
      object cxgrdtbvColumn5: TcxGridDBColumn
        Caption = #26410#24341#29992#25968
        DataBinding.FieldName = 'NoRfNum'
        Options.Editing = False
        Width = 80
      end
      object cxgrdtbvReqNum: TcxGridDBColumn
        Caption = #39046#26009#25968#37327
        DataBinding.FieldName = 'TakeNum'
        Options.Editing = False
        Width = 82
      end
      object cxgrdtbvColumn2: TcxGridDBColumn
        Caption = #39046#26009#21333#20301
        DataBinding.FieldName = 'TakeObjectName'
        Options.Editing = False
        Width = 92
      end
      object cxgrdtbvColumn3: TcxGridDBColumn
        Caption = #29983#20135#20135#21697#20195#21495
        DataBinding.FieldName = 'pItemcode'
        Options.Editing = False
        Width = 98
      end
      object cxgrdtbvColumn4: TcxGridDBColumn
        Caption = #29983#20135#20135#21697#21517#31216
        DataBinding.FieldName = 'pitemname'
        Options.Editing = False
        Width = 107
      end
      object cxgrdtbvRemark: TcxGridDBColumn
        Caption = #22791#27880
        DataBinding.FieldName = 'Remark'
        Options.Editing = False
        Width = 110
      end
      object cxgrdtbvReqNO: TcxGridDBColumn
        Caption = #27966#24037#21333#21495
        DataBinding.FieldName = 'DispatchNo'
        Visible = False
        Options.Editing = False
        Width = 82
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
      'exec PrMatProDispatchRf '#39#39','#39#36710#38388#21457#26009#39)
  end
end
