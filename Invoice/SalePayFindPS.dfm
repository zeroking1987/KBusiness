inherited SalePayFindFM: TSalePayFindFM
  Caption = #25910#27454#21333#26597#25214
  ClientHeight = 499
  ClientWidth = 738
  ExplicitWidth = 754
  ExplicitHeight = 538
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 738
    Height = 70
    ExplicitWidth = 738
    ExplicitHeight = 70
    inherited Lablbl2: TLabel
      Left = 346
      ExplicitLeft = 346
    end
    object Label4: TLabel [3]
      Left = 12
      Top = 44
      Width = 36
      Height = 13
      Caption = #23458#25143#65306
    end
    object Label3: TLabel [4]
      Left = 322
      Top = 44
      Width = 60
      Height = 13
      Caption = #25910#27454#31867#22411#65306
    end
    inherited cxEdtBillNo: TcxTextEdit
      Left = 380
      ExplicitLeft = 380
    end
    inherited cxrdgrpAudit: TcxRadioGroup
      Left = 547
      ExplicitLeft = 547
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
    object cxcbbBillKind: TcxComboBox
      Left = 380
      Top = 41
      Properties.Items.Strings = (
        #21457#36135#25910#27454
        #39044#25910#27454
        #20854#20182#25910#27454)
      TabOrder = 5
      Width = 143
    end
  end
  inherited cxgrd: TcxGrid
    Top = 124
    Width = 738
    Height = 375
    ExplicitTop = 124
    ExplicitWidth = 738
    ExplicitHeight = 375
    inherited cxgrdtbv: TcxGridDBTableView
      OnDblClick = btOkClick
      DataController.DataSource = SalePayFM.dsHed
      object cxgrdbclmnSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Visible = False
      end
      object cxgrdbclmnSaleOrderNo: TcxGridDBColumn
        Caption = #25910#27454#21333#21495
        DataBinding.FieldName = 'PayNO'
        Options.Editing = False
        Width = 106
      end
      object cxgrdbclmnCompactNo: TcxGridDBColumn
        Caption = #25910#27454#31867#22411
        DataBinding.FieldName = 'BillKind'
        Options.Editing = False
        Width = 87
      end
      object cxgrdbclmnOrderDate: TcxGridDBColumn
        Caption = #26085#26399
        DataBinding.FieldName = 'PayDate'
        Options.Editing = False
        Width = 73
      end
      object cxgrdbclmnCustName: TcxGridDBColumn
        Caption = #23458#25143
        DataBinding.FieldName = 'CustName'
        Options.Editing = False
        Width = 155
      end
      object cxgrdbclmnPayMoney: TcxGridDBColumn
        Caption = #25910#27454#37329#39069
        DataBinding.FieldName = 'PayMoney'
        Options.Editing = False
        Width = 71
      end
      object cxgrdbclmnPayMode: TcxGridDBColumn
        Caption = #25910#27454#26041#24335
        DataBinding.FieldName = 'PayMode'
        Options.Editing = False
        Width = 70
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
