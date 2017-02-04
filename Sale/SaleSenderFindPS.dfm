inherited SaleSenderFindFM: TSaleSenderFindFM
  Caption = #38144#21806#21457#36135#21333#26597#25214
  ClientHeight = 484
  ExplicitWidth = 725
  ExplicitHeight = 523
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    inherited Lablbl2: TLabel
      Width = 24
      Caption = #21333#21495
      ExplicitWidth = 24
    end
    inherited Label1: TLabel
      Width = 24
      Caption = #26085#26399
      ExplicitWidth = 24
    end
    inherited Label2: TLabel
      Top = 8
      ExplicitTop = 8
    end
    object Label4: TLabel [3]
      Left = 12
      Top = 44
      Width = 24
      Height = 13
      Caption = #23458#25143
    end
    object Label3: TLabel [4]
      Left = 320
      Top = 44
      Width = 36
      Height = 13
      Caption = #21512#21516#21495
    end
    inherited cxEdtBillNo: TcxTextEdit
      Top = 7
      ExplicitTop = 7
    end
    inherited cxdtS: TcxDateEdit
      Top = 7
      ExplicitTop = 7
    end
    inherited cxdtE: TcxDateEdit
      Top = 7
      ExplicitTop = 7
    end
    inherited cxrdgrpAudit: TcxRadioGroup
      Properties.OnChange = btFindClick
      ExplicitHeight = 54
      Height = 54
    end
    object btnCust: TcxButtonEdit
      Left = 46
      Top = 40
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
    Height = 349
    ExplicitHeight = 349
    inherited cxgrdtbv: TcxGridDBTableView
      OnDblClick = btOkClick
      DataController.DataSource = SaleSenderFM.dsHed
      object cxgrdbclmnSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
      end
      object cxgrdbclmnSaleOrderNo: TcxGridDBColumn
        Caption = #21457#36135#21333#21495
        DataBinding.FieldName = 'SenderNo'
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
        DataBinding.FieldName = 'SenderDate'
        Options.Editing = False
        Width = 73
      end
      object cxgrdbclmnCustName: TcxGridDBColumn
        Caption = #23458#25143
        DataBinding.FieldName = 'CustName'
        Options.Editing = False
        Width = 155
      end
      object cxgrdbclmnSendAdd: TcxGridDBColumn
        Caption = #25910#36135#22320#22336
        DataBinding.FieldName = 'SendAdd'
        Options.Editing = False
        Width = 102
      end
      object cxgrdbclmnPayMode: TcxGridDBColumn
        Caption = #25910#27454#26041#24335
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
