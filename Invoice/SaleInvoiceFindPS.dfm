inherited SaleInvoicerFindFM: TSaleInvoicerFindFM
  Caption = #24212#25910#35760#36134#26597#25214
  ClientHeight = 497
  ClientWidth = 695
  ExplicitWidth = 711
  ExplicitHeight = 536
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 695
    ExplicitWidth = 695
    object Label4: TLabel [3]
      Left = 12
      Top = 44
      Width = 36
      Height = 13
      Caption = #23458#25143#65306
    end
    object Label3: TLabel [4]
      Left = 320
      Top = 44
      Width = 48
      Height = 13
      Caption = #21512#21516#21495#65306
    end
    object btnCust: TcxButtonEdit
      Left = 46
      Top = 41
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnPrvPropertiesButtonClick
      TabOrder = 4
      Width = 270
    end
    object cxEdtCompactNo: TcxTextEdit
      Left = 366
      Top = 40
      TabOrder = 5
      Width = 143
    end
  end
  inherited cxgrd: TcxGrid
    Width = 695
    Height = 362
    ExplicitWidth = 695
    ExplicitHeight = 362
    inherited cxgrdtbv: TcxGridDBTableView
      OnDblClick = btOkClick
      DataController.DataSource = SaleInvoiceFM.dsHed
      object cxgrdbclmnSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Visible = False
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
        Caption = #23458#25143
        DataBinding.FieldName = 'CustName'
        Options.Editing = False
        Width = 155
      end
      object cxgrdbclmnPayMode: TcxGridDBColumn
        Caption = #25910#27454#26041#24335
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
