inherited EmpWorkRecordFindFM: TEmpWorkRecordFindFM
  Caption = #21592#24037#29983#20135#35760#24405#26597#25214
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
    object Label3: TLabel [3]
      Left = 18
      Top = 39
      Width = 36
      Height = 13
      Caption = #21512#21516#21495
    end
    object Label4: TLabel [4]
      Left = 186
      Top = 39
      Width = 48
      Height = 13
      Caption = #29983#20135#21592#24037
    end
    object Label5: TLabel [5]
      Left = 351
      Top = 39
      Width = 24
      Height = 13
      Caption = #37096#38376
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
    object cxCompactNo: TcxTextEdit
      Left = 60
      Top = 35
      TabOrder = 4
      Width = 121
    end
    object btnEmpName: TcxButtonEdit
      Left = 240
      Top = 35
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnEmpNamePropertiesButtonClick
      TabOrder = 5
      Width = 90
    end
    object btnDept: TcxButtonEdit
      Left = 380
      Top = 35
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnDeptPropertiesButtonClick
      TabOrder = 6
      Width = 121
    end
  end
  inherited cxgrd: TcxGrid
    Width = 720
    Height = 355
    ExplicitWidth = 720
    ExplicitHeight = 355
    inherited cxgrdtbv: TcxGridDBTableView
      OnDblClick = cxgrdtbvDblClick
      DataController.DataSource = EmpWorkRecordFM.dsHed
      object cxgrdbclmnSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Visible = False
      end
      object cxgrdbclmnStockOrderNO: TcxGridDBColumn
        Caption = #21333#21495
        DataBinding.FieldName = 'BillNo'
        Options.Editing = False
        Width = 91
      end
      object cxgrdbclmnOrderDate: TcxGridDBColumn
        Caption = #26085#26399
        DataBinding.FieldName = 'BillDate'
        Options.Editing = False
        Width = 100
      end
      object cxgrdbclmnPrvName: TcxGridDBColumn
        Caption = #24320#22987#26085#26399
        DataBinding.FieldName = 'StartDate'
        Options.Editing = False
        Width = 107
      end
      object cxgrdbclmnPrvAddress: TcxGridDBColumn
        Caption = #32467#26463#26085#26399
        DataBinding.FieldName = 'EndDate'
        Options.Editing = False
        Width = 121
      end
      object cxgrdbclmnPayMode: TcxGridDBColumn
        Caption = #22791#27880
        DataBinding.FieldName = 'Remark'
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
