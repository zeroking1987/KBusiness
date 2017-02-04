inherited ItemMoveFindFM: TItemMoveFindFM
  Caption = #35843#25320#21333#26597#25214
  ClientHeight = 503
  ClientWidth = 910
  ExplicitWidth = 926
  ExplicitHeight = 542
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 910
    Height = 97
    ExplicitWidth = 910
    ExplicitHeight = 97
    inherited Lablbl2: TLabel
      Left = 354
      Top = 10
      Width = 24
      Caption = #21333#21495
      ExplicitLeft = 354
      ExplicitTop = 10
      ExplicitWidth = 24
    end
    inherited Label1: TLabel
      Top = 10
      Width = 48
      Caption = #26085#26399#33539#22260
      ExplicitTop = 10
      ExplicitWidth = 48
    end
    inherited Label2: TLabel
      Left = 186
      ExplicitLeft = 186
    end
    inherited cxEdtBillNo: TcxTextEdit
      Left = 384
      Top = 6
      ExplicitLeft = 384
      ExplicitTop = 6
    end
    inherited cxdtS: TcxDateEdit
      Left = 69
      Top = 6
      ExplicitLeft = 69
      ExplicitTop = 6
      ExplicitWidth = 111
      Width = 111
    end
    inherited cxdtE: TcxDateEdit
      Left = 203
      Top = 6
      ExplicitLeft = 203
      ExplicitTop = 6
      ExplicitWidth = 110
      Width = 110
    end
    inherited cxrdgrpAudit: TcxRadioGroup
      Left = 533
      Properties.OnChange = btFindClick
      ExplicitLeft = 533
      ExplicitHeight = 79
      Height = 79
    end
    object btnSend: TcxButtonEdit
      Left = 69
      Top = 35
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnSendPropertiesButtonClick
      TabOrder = 4
      Width = 244
    end
    object btnOutWare: TcxButtonEdit
      Left = 384
      Top = 35
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnOutWarePropertiesButtonClick
      TabOrder = 5
      Width = 143
    end
    object cxlbl1: TcxLabel
      Left = 8
      Top = 37
      Caption = #21457#20986#21333#20301
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 326
      Top = 37
      Caption = #21457#20986#20179#24211
      Transparent = True
    end
    object btnAccept: TcxButtonEdit
      Left = 69
      Top = 65
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnAcceptPropertiesButtonClick
      TabOrder = 8
      Width = 244
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 67
      Caption = #25509#25910#21333#20301
      Transparent = True
    end
    object btnInWare: TcxButtonEdit
      Left = 384
      Top = 65
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnInWarePropertiesButtonClick
      TabOrder = 10
      Width = 143
    end
    object cxLabel3: TcxLabel
      Left = 326
      Top = 67
      Caption = #35843#20837#20179#24211
      Transparent = True
    end
  end
  inherited cxgrd: TcxGrid
    Top = 151
    Width = 910
    Height = 352
    ExplicitTop = 151
    ExplicitWidth = 910
    ExplicitHeight = 352
    inherited cxgrdtbv: TcxGridDBTableView
      OnDblClick = btOkClick
      DataController.DataSource = dsFind
      object cxgrdbclmnSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Width = 47
      end
      object cxgrdBillNO: TcxGridDBColumn
        Caption = #21333#21495
        DataBinding.FieldName = 'MoveNo'
        Options.Editing = False
        Width = 106
      end
      object cxgrdBillDate: TcxGridDBColumn
        Caption = #21333#25454#26085#26399
        DataBinding.FieldName = 'MoveDate'
        Options.Editing = False
        Width = 79
      end
      object cxgrdObjectName: TcxGridDBColumn
        Caption = #21457#20986#21333#20301
        DataBinding.FieldName = 'SendName'
        Options.Editing = False
        Width = 109
      end
      object cxgrdSellerManName: TcxGridDBColumn
        Caption = #25509#25910#21333#20301
        DataBinding.FieldName = 'AcceptName'
        Options.Editing = False
        Width = 102
      end
      object cxgrdSubJoinNO: TcxGridDBColumn
        Caption = #21457#20986#20179#24211
        DataBinding.FieldName = 'OutWareName'
        Options.Editing = False
        Width = 70
      end
      object cxgrdbclmnColumn1: TcxGridDBColumn
        Caption = #35843#20837#20179#24211
        DataBinding.FieldName = 'InWareName'
        Width = 76
      end
      object cxgrdRemark: TcxGridDBColumn
        Caption = #22791#27880
        DataBinding.FieldName = 'Remark'
        Options.Editing = False
        Width = 80
      end
      object cxgrdMakeManName: TcxGridDBColumn
        Caption = #21046#21333#20154
        DataBinding.FieldName = 'MakeManName'
        Options.Editing = False
        Width = 51
      end
      object cxgrdMakeDate: TcxGridDBColumn
        Caption = #21046#21333#26085#26399
        DataBinding.FieldName = 'MakeDate'
        Options.Editing = False
        Width = 77
      end
      object cxgrdAuditFlag: TcxGridDBColumn
        Caption = #23457#26680
        DataBinding.FieldName = 'AuditFlag'
        Options.Editing = False
        Width = 44
      end
      object cxgrdAuditDate: TcxGridDBColumn
        Caption = #23457#26680#26085#26399
        DataBinding.FieldName = 'AuditDate'
        Visible = False
        Options.Editing = False
        Width = 73
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
  object dsFind: TDataSource
    Left = 104
    Top = 190
  end
end
