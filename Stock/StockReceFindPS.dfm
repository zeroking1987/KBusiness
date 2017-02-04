inherited StockReceFindFM: TStockReceFindFM
  Caption = #37319#36141#25910#36135#21333#26597#25214
  ClientHeight = 490
  ClientWidth = 720
  ExplicitWidth = 736
  ExplicitHeight = 529
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 720
    ExplicitWidth = 720
    inherited Lablbl2: TLabel
      Left = 346
      ExplicitLeft = 346
    end
    inherited Label1: TLabel
      Left = 26
      ExplicitLeft = 26
    end
    inherited Label2: TLabel
      Left = 190
      ExplicitLeft = 190
    end
    object Label4: TLabel [3]
      Left = 14
      Top = 44
      Width = 48
      Height = 13
      Caption = #20379#24212#21830#65306
    end
    inherited cxEdtBillNo: TcxTextEdit
      Left = 380
      ExplicitLeft = 380
    end
    inherited cxdtS: TcxDateEdit
      Left = 60
      ExplicitLeft = 60
    end
    inherited cxdtE: TcxDateEdit
      Left = 209
      ExplicitLeft = 209
    end
    inherited cxrdgrpAudit: TcxRadioGroup
      Left = 529
      Properties.OnChange = btFindClick
      ExplicitLeft = 529
    end
    object btnPrv: TcxButtonEdit
      Left = 60
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
  end
  inherited cxgrd: TcxGrid
    Width = 720
    Height = 355
    ExplicitWidth = 720
    ExplicitHeight = 355
    inherited cxgrdtbv: TcxGridDBTableView
      OnDblClick = cxgrdtbvDblClick
      DataController.DataSource = StockReceFM.dsHed
      object cxgrdbclmnSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Visible = False
      end
      object cxgrdbclmnStockOrderNO: TcxGridDBColumn
        Caption = #21333#21495
        DataBinding.FieldName = 'StockReceNo'
        Options.Editing = False
        Width = 106
      end
      object cxgrdbclmnOrderDate: TcxGridDBColumn
        Caption = #26085#26399
        DataBinding.FieldName = 'ReceDate'
        Options.Editing = False
        Width = 73
      end
      object cxgrdbclmnPrvName: TcxGridDBColumn
        Caption = #20379#24212#21830
        DataBinding.FieldName = 'PrvName'
        Options.Editing = False
        Width = 180
      end
      object cxgrdbclmnPrvAddress: TcxGridDBColumn
        Caption = #25910#36135#22320#22336
        DataBinding.FieldName = 'PrvAddress'
        Options.Editing = False
        Width = 150
      end
      object cxgrdbclmnPayMode: TcxGridDBColumn
        Caption = #20184#27454#26041#24335
        DataBinding.FieldName = 'PayMode'
        Options.Editing = False
        Width = 77
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
