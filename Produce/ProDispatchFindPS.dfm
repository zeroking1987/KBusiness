inherited ProDispatchFindFM: TProDispatchFindFM
  Caption = #29983#20135#27966#24037#21333#26597#25214
  ClientHeight = 490
  ClientWidth = 765
  ExplicitWidth = 781
  ExplicitHeight = 529
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 765
    Height = 51
    ExplicitWidth = 765
    ExplicitHeight = 51
    inherited Lablbl2: TLabel
      Top = 20
      Width = 24
      Caption = #21333#21495
      ExplicitTop = 20
      ExplicitWidth = 24
    end
    inherited Label1: TLabel
      Top = 20
      Width = 24
      Caption = #26085#26399
      ExplicitTop = 20
      ExplicitWidth = 24
    end
    inherited Label2: TLabel
      Top = 17
      ExplicitTop = 17
    end
    inherited cxEdtBillNo: TcxTextEdit
      Top = 16
      ExplicitTop = 16
    end
    inherited cxdtS: TcxDateEdit
      Top = 16
      ExplicitTop = 16
    end
    inherited cxdtE: TcxDateEdit
      Top = 16
      ExplicitTop = 16
    end
    inherited cxrdgrpAudit: TcxRadioGroup
      Top = 9
      Properties.Columns = 3
      Properties.OnChange = btFindClick
      ExplicitTop = 9
      ExplicitWidth = 230
      ExplicitHeight = 34
      Height = 34
      Width = 230
    end
  end
  inherited cxgrd: TcxGrid
    Top = 105
    Width = 765
    Height = 385
    ExplicitTop = 105
    ExplicitWidth = 765
    ExplicitHeight = 385
    inherited cxgrdtbv: TcxGridDBTableView
      OnDblClick = btOkClick
      DataController.DataSource = ProDispatchFM.dsHed
      object cxgrdbclmnSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Visible = False
      end
      object cxgrdbclmnSaleOrderNo: TcxGridDBColumn
        Caption = #21333#21495
        DataBinding.FieldName = 'DispatchNo'
        Options.Editing = False
        Width = 106
      end
      object cxgrdbclmnOrderDate: TcxGridDBColumn
        Caption = #26085#26399
        DataBinding.FieldName = 'DispatchDate'
        Options.Editing = False
        Width = 126
      end
      object cxgrdbclmnCustName: TcxGridDBColumn
        Caption = #35828#26126
        DataBinding.FieldName = 'Remark'
        Options.Editing = False
        Width = 421
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      54
      0)
    inherited btOk: TdxBarLargeButton
      OnClick = btOkClick
    end
    inherited btFind: TdxBarLargeButton
      OnClick = btFindClick
    end
    inherited dxbrcmbPageIndex: TdxBarCombo
      OnChange = dxbrcmbPageIndexChange
    end
  end
end
