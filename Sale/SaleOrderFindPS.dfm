inherited SaleOrderFindFM: TSaleOrderFindFM
  Caption = #38144#21806#35746#21333#26597#25214
  ClientHeight = 490
  ClientWidth = 765
  ExplicitWidth = 781
  ExplicitHeight = 529
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 765
    ExplicitWidth = 765
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
      Left = 651
      Properties.OnChange = btFindClick
      ExplicitLeft = 651
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
    object cxrgpSubmit: TcxRadioGroup
      Left = 567
      Top = 7
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = #26410#25552#20132
        end
        item
          Caption = #24050#25552#20132
        end
        item
          Caption = #25152'  '#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 2
      TabOrder = 6
      Height = 54
      Width = 78
    end
  end
  inherited cxgrd: TcxGrid
    Width = 765
    Height = 355
    ExplicitWidth = 765
    ExplicitHeight = 355
    inherited cxgrdtbv: TcxGridDBTableView
      OnDblClick = btOkClick
      DataController.DataSource = SaleOrderFM.dsHed
      object cxgrdbclmnSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Visible = False
      end
      object cxgrdbclmnSaleOrderNo: TcxGridDBColumn
        Caption = #35746#21333#21495
        DataBinding.FieldName = 'SaleOrderNo'
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
        DataBinding.FieldName = 'OrderDate'
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
      object cxgrdtbvColumn1: TcxGridDBColumn
        Caption = #25552#20132
        DataBinding.FieldName = 'bSubmit'
        Width = 57
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
