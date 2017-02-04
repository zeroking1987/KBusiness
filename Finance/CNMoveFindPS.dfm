inherited CNMoveFindFM: TCNMoveFindFM
  Caption = #20986#32435#36716#36134#26597#25214
  ClientHeight = 490
  ClientWidth = 769
  ExplicitWidth = 785
  ExplicitHeight = 529
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 769
    Height = 107
    ExplicitWidth = 765
    ExplicitHeight = 107
    inherited Lablbl2: TLabel
      Left = 384
      Top = 20
      Width = 24
      Caption = #21333#21495
      ExplicitLeft = 384
      ExplicitTop = 20
      ExplicitWidth = 24
    end
    inherited Label1: TLabel
      Left = 31
      Top = 20
      Width = 24
      Caption = #26085#26399
      ExplicitLeft = 31
      ExplicitTop = 20
      ExplicitWidth = 24
    end
    inherited Label2: TLabel
      Left = 195
      Top = 17
      ExplicitLeft = 195
      ExplicitTop = 17
    end
    inherited cxEdtBillNo: TcxTextEdit
      Left = 418
      Top = 16
      ExplicitLeft = 418
      ExplicitTop = 16
    end
    inherited cxdtS: TcxDateEdit
      Left = 65
      Top = 16
      ExplicitLeft = 65
      ExplicitTop = 16
    end
    inherited cxdtE: TcxDateEdit
      Left = 214
      Top = 16
      ExplicitLeft = 214
      ExplicitTop = 16
    end
    inherited cxrdgrpAudit: TcxRadioGroup
      Left = 567
      Top = 17
      Properties.OnChange = btFindClick
      ExplicitLeft = 567
      ExplicitTop = 17
      ExplicitHeight = 76
      Height = 76
    end
    object cxLabel1: TcxLabel
      Left = 7
      Top = 45
      Caption = #25903#20986#36134#25143
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 7
      Top = 74
      Caption = #25903#20986#39033#30446
      Transparent = True
    end
    object cxOutAccName: TcxMRUEdit
      Left = 65
      Top = 43
      Properties.OnButtonClick = cxOutAccNamePropertiesButtonClick
      Properties.OnEditValueChanged = btFindClick
      TabOrder = 6
      TextHint = #21487#19979#25289#25110#36873#25321#20986#32435#36134#25143
      Width = 207
    end
    object cxOutCNItemName: TcxMRUEdit
      Left = 65
      Top = 72
      Properties.OnButtonClick = cxOutCNItemNamePropertiesButtonClick
      TabOrder = 7
      TextHint = #21487#19979#25289#25110#36873#25321#25910#25903#39033#30446
      Width = 207
    end
    object cxLabel2: TcxLabel
      Left = 296
      Top = 45
      Caption = #25910#20837#36134#25143
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 296
      Top = 74
      Caption = #25910#20837#39033#30446
      Transparent = True
    end
    object cxInAccName: TcxMRUEdit
      Left = 354
      Top = 43
      Properties.OnButtonClick = cxInAccNamePropertiesButtonClick
      Properties.OnEditValueChanged = btFindClick
      TabOrder = 10
      TextHint = #21487#19979#25289#25110#36873#25321#20986#32435#36134#25143
      Width = 207
    end
    object cxInCNItemName: TcxMRUEdit
      Left = 354
      Top = 72
      Properties.OnButtonClick = cxInCNItemNamePropertiesButtonClick
      TabOrder = 11
      TextHint = #21487#19979#25289#25110#36873#25321#25910#25903#39033#30446
      Width = 207
    end
  end
  inherited cxgrd: TcxGrid
    Top = 161
    Width = 769
    Height = 329
    ExplicitWidth = 765
    ExplicitHeight = 355
    inherited cxgrdtbv: TcxGridDBTableView
      OnDblClick = btOkClick
      DataController.DataSource = CNMoveFM.dsHed
      object cxgrdbclmnSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Visible = False
      end
      object cxgrdbclmnSaleOrderNo: TcxGridDBColumn
        Caption = #21333#21495
        DataBinding.FieldName = 'BillNo'
        Visible = False
        Options.Editing = False
        Width = 106
      end
      object cxgrdbclmnOrderDate: TcxGridDBColumn
        Caption = #26085#26399
        DataBinding.FieldName = 'BillDate'
        Options.Editing = False
        Width = 73
      end
      object cxgrdbclmnCompactNo: TcxGridDBColumn
        Caption = #36716#36134#37329#39069
        DataBinding.FieldName = 'CNMoveMoney'
        Options.Editing = False
        Width = 87
      end
      object cxgrdbclmnCustName: TcxGridDBColumn
        Caption = #36716#20986#36134#25143
        DataBinding.FieldName = 'OutAccName'
        Options.Editing = False
        Width = 95
      end
      object cxgrdbclmnSendAdd: TcxGridDBColumn
        Caption = #25903#20986#39033#30446
        DataBinding.FieldName = 'OutCNItemName'
        Options.Editing = False
        Width = 90
      end
      object cxgrdtbvColumn3: TcxGridDBColumn
        Caption = #36716#20986#25688#35201
        DataBinding.FieldName = 'OutRemark'
        Width = 86
      end
      object cxgrdbclmnPayMode: TcxGridDBColumn
        Caption = #25910#20837#36134#25143
        DataBinding.FieldName = 'InAccName'
        Options.Editing = False
        Width = 80
      end
      object cxgrdtbvColumn1: TcxGridDBColumn
        Caption = #25910#20837#39033#30446
        DataBinding.FieldName = 'InCNItemName'
        Width = 83
      end
      object cxgrdtbvColumn2: TcxGridDBColumn
        Caption = #25910#20837#25688#35201
        DataBinding.FieldName = 'InRemark'
        Width = 106
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
