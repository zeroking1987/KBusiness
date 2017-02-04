inherited WareCheckFindFM: TWareCheckFindFM
  Caption = #30424#28857#21333#26597#25214
  ClientHeight = 484
  ClientWidth = 760
  ExplicitWidth = 776
  ExplicitHeight = 523
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 760
    ExplicitWidth = 760
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
    object Label4: TLabel [3]
      Left = 12
      Top = 44
      Width = 24
      Height = 13
      Caption = #20179#24211
    end
    object Label3: TLabel [4]
      Left = 333
      Top = 44
      Width = 24
      Height = 13
      Caption = #31867#21035
    end
    inherited cxdtE: TcxDateEdit
      Left = 205
      ExplicitLeft = 205
    end
    inherited cxrdgrpAudit: TcxRadioGroup
      Top = 2
      Properties.Columns = 3
      Properties.OnChange = btFindClick
      ExplicitTop = 2
      ExplicitWidth = 190
      ExplicitHeight = 34
      Height = 34
      Width = 190
    end
    object btnWare: TcxButtonEdit
      Left = 46
      Top = 41
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnPrvPropertiesButtonClick
      TabOrder = 4
      Width = 280
    end
    object btnItemKind: TcxButtonEdit
      Left = 366
      Top = 41
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemKindPropertiesButtonClick
      TabOrder = 5
      Width = 339
    end
  end
  inherited cxgrd: TcxGrid
    Width = 760
    Height = 349
    ExplicitWidth = 760
    ExplicitHeight = 349
    inherited cxgrdtbv: TcxGridDBTableView
      OnDblClick = btOkClick
      DataController.DataSource = WareCheckFM.dsHed
      object cxgrdbclmnSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Visible = False
        Width = 43
      end
      object cxgrdbclmnSaleOrderNo: TcxGridDBColumn
        Caption = #30424#28857#21333#21495
        DataBinding.FieldName = 'BillNo'
        Options.Editing = False
        Width = 106
      end
      object cxgrdbclmnOrderDate: TcxGridDBColumn
        Caption = #26085#26399
        DataBinding.FieldName = 'CheckDate'
        Options.Editing = False
        Width = 73
      end
      object cxgrdbclmnCompactNo: TcxGridDBColumn
        Caption = #20179#24211
        DataBinding.FieldName = 'WareName'
        Options.Editing = False
        Width = 87
      end
      object cxgrdbclmnCustName: TcxGridDBColumn
        Caption = #31867#21035
        DataBinding.FieldName = 'ItemKindName'
        Options.Editing = False
        Width = 114
      end
      object cxgrdbclmnSendAdd: TcxGridDBColumn
        Caption = #30424#28857#20154
        DataBinding.FieldName = 'CheckManName'
        Options.Editing = False
        Width = 72
      end
      object cxgrdbclmnPayMode: TcxGridDBColumn
        Caption = #22791#27880
        DataBinding.FieldName = 'Remark'
        Options.Editing = False
        Width = 171
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
