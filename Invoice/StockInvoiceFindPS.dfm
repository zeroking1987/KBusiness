inherited StockInvoicerFindFM: TStockInvoicerFindFM
  Caption = #24212#20184#35760#36134#26597#25214
  ClientHeight = 470
  ClientWidth = 703
  ExplicitWidth = 719
  ExplicitHeight = 509
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 703
    ExplicitWidth = 703
    inherited Lablbl2: TLabel
      Left = 340
      Top = 15
      ExplicitLeft = 340
      ExplicitTop = 15
    end
    inherited Label1: TLabel
      Left = 20
      Top = 15
      ExplicitLeft = 20
      ExplicitTop = 15
    end
    inherited Label2: TLabel
      Left = 184
      Top = 11
      ExplicitLeft = 184
      ExplicitTop = 11
    end
    object Label4: TLabel [3]
      Left = 8
      Top = 48
      Width = 48
      Height = 13
      Caption = #20379#24212#21830#65306
    end
    inherited cxEdtBillNo: TcxTextEdit
      Left = 374
      Top = 12
      ExplicitLeft = 374
      ExplicitTop = 12
    end
    inherited cxdtS: TcxDateEdit
      Left = 54
      Top = 12
      ExplicitLeft = 54
      ExplicitTop = 12
    end
    inherited cxdtE: TcxDateEdit
      Left = 203
      Top = 12
      ExplicitLeft = 203
      ExplicitTop = 12
    end
    inherited cxrdgrpAudit: TcxRadioGroup
      Left = 523
      Top = 11
      ExplicitLeft = 523
      ExplicitTop = 11
    end
    object btnPrv: TcxButtonEdit
      Left = 54
      Top = 45
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnPrvPropertiesButtonClick
      TabOrder = 4
      Width = 270
    end
  end
  inherited cxgrd: TcxGrid
    Width = 703
    Height = 335
    ExplicitWidth = 703
    ExplicitHeight = 335
    inherited cxgrdtbv: TcxGridDBTableView
      OnDblClick = btOkClick
      DataController.DataSource = StockInvoiceFM.dsHed
      object cxgrdbclmnSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
      end
      object cxgrdbclmnSaleOrderNo: TcxGridDBColumn
        Caption = #35760#36134#21333#21495
        DataBinding.FieldName = 'invoiceNo'
        Options.Editing = False
        Width = 106
      end
      object cxgrdbclmnCompactNo: TcxGridDBColumn
        Caption = #21512#21516#21495
        DataBinding.FieldName = 'CompactNo'
        Visible = False
        Options.Editing = False
        Width = 87
      end
      object cxgrdbclmnOrderDate: TcxGridDBColumn
        Caption = #26085#26399
        DataBinding.FieldName = 'InvoiceDate'
        Options.Editing = False
        Width = 73
      end
      object cxgrdbclmnCustName: TcxGridDBColumn
        Caption = #20379#24212#21830
        DataBinding.FieldName = 'PrvName'
        Options.Editing = False
        Width = 167
      end
      object cxgrdbclmnPayMode: TcxGridDBColumn
        Caption = #20184#27454#26041#24335
        DataBinding.FieldName = 'PayMode'
        Options.Editing = False
        Width = 77
      end
      object cxgrdbclmnSendAdd: TcxGridDBColumn
        Caption = #22791#27880
        DataBinding.FieldName = 'Remark'
        Options.Editing = False
        Width = 102
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
