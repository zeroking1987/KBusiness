inherited WareInOutFindFM: TWareInOutFindFM
  Caption = #20986#20837#24211#21333#26597#25214
  ClientHeight = 503
  ClientWidth = 734
  ExplicitWidth = 750
  ExplicitHeight = 542
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 734
    Height = 75
    ExplicitWidth = 910
    ExplicitHeight = 75
    inherited Lablbl2: TLabel
      Left = 342
      Width = 24
      Caption = #21333#21495
      ExplicitLeft = 342
      ExplicitWidth = 24
    end
    inherited Label1: TLabel
      Width = 48
      Caption = #26085#26399#33539#22260
      ExplicitWidth = 48
    end
    inherited Label2: TLabel
      Left = 186
      Top = 8
      ExplicitLeft = 186
      ExplicitTop = 8
    end
    inherited cxEdtBillNo: TcxTextEdit
      Left = 367
      Top = 7
      ExplicitLeft = 367
      ExplicitTop = 7
    end
    inherited cxdtS: TcxDateEdit
      Left = 69
      Top = 7
      ExplicitLeft = 69
      ExplicitTop = 7
      ExplicitWidth = 111
      Width = 111
    end
    inherited cxdtE: TcxDateEdit
      Left = 203
      Top = 7
      ExplicitLeft = 203
      ExplicitTop = 7
      ExplicitWidth = 110
      Width = 110
    end
    inherited cxrdgrpAudit: TcxRadioGroup
      Left = 636
      Top = 5
      Properties.OnChange = btFindClick
      Visible = False
      ExplicitLeft = 636
      ExplicitTop = 5
    end
    object btnObject: TcxButtonEdit
      Left = 69
      Top = 38
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnPrvPropertiesButtonClick
      TabOrder = 4
      Width = 246
    end
    object cxMakeManName: TcxButtonEdit
      Left = 367
      Top = 38
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 5
      Width = 143
    end
    object cxlbl1: TcxLabel
      Left = 8
      Top = 40
      Caption = #23545#24212#21333#20301
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 326
      Top = 40
      Caption = #21046#21333#20154
      Transparent = True
    end
    object cxrdgrpFuHe: TcxRadioGroup
      Left = 713
      Top = 5
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = #26410#22797#26680
        end
        item
          Caption = #24050#22797#26680
        end
        item
          Caption = #25152'  '#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 2
      TabOrder = 8
      Visible = False
      Height = 59
      Width = 74
    end
    object cxrdgrpInvoice: TcxRadioGroup
      Left = 786
      Top = 5
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = #26410#35760#36134
        end
        item
          Caption = #24050#35760#36134
        end
        item
          Caption = #25152'  '#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 2
      TabOrder = 9
      Visible = False
      Height = 59
      Width = 74
    end
    object cxchbbCashDeal: TcxCheckBox
      Left = 524
      Top = 8
      Caption = #26159#21542#29616#37329#20132#26131
      Properties.Alignment = taRightJustify
      TabOrder = 10
      Transparent = True
      Visible = False
      OnClick = btFindClick
      Width = 105
    end
  end
  inherited cxgrd: TcxGrid
    Top = 129
    Width = 734
    Height = 374
    ExplicitTop = 129
    ExplicitWidth = 910
    ExplicitHeight = 374
    inherited cxgrdtbv: TcxGridDBTableView
      OnDblClick = btOkClick
      DataController.DataSource = dsFind
      object cxgrdbclmnSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Visible = False
        Width = 47
      end
      object cxgrdBillNO: TcxGridDBColumn
        Caption = #21333#21495
        DataBinding.FieldName = 'BillNO'
        Options.Editing = False
        Width = 106
      end
      object cxgrdBillDate: TcxGridDBColumn
        Caption = #21333#25454#26085#26399
        DataBinding.FieldName = 'BillDate'
        Options.Editing = False
        Width = 79
      end
      object cxgrdObjectName: TcxGridDBColumn
        Caption = #23545#24212#21333#20301
        DataBinding.FieldName = 'ObjectName'
        Options.Editing = False
        Width = 206
      end
      object cxgrdSellerManName: TcxGridDBColumn
        Caption = #19994#21153#21592
        DataBinding.FieldName = 'SellerManName'
        Visible = False
        Options.Editing = False
        Width = 102
      end
      object cxgrdSubJoinNO: TcxGridDBColumn
        Caption = #23545#24212#21333#21495
        DataBinding.FieldName = 'SubJoinNO'
        Visible = False
        Options.Editing = False
        Width = 77
      end
      object cxgrdRemark: TcxGridDBColumn
        Caption = #22791#27880
        DataBinding.FieldName = 'Remark'
        Options.Editing = False
        Width = 72
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
        Visible = False
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
