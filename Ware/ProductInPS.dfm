inherited ProductInFM: TProductInFM
  Caption = #20135#21697#20837#24211
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    TabOrder = 0
    inherited cxLabTitle: TcxLabel
      Caption = #20135#21697#20837#24211
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
    inherited cxLabAudit: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 256
      AnchorY = 17
    end
    inherited cxLabPrint: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 880
      AnchorY = 16
    end
    inherited cxLabTemp1: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 360
      AnchorY = 17
    end
    inherited cxLabTemp2: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 445
      AnchorY = 17
    end
    inherited cxLabTemp3: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 533
      AnchorY = 17
    end
    inherited cxLabTemp4: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 643
      AnchorY = 17
    end
    inherited cxLabTemp5: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 752
      AnchorY = 17
    end
  end
  inherited pnlInfo: TPanel
    TabOrder = 1
  end
  inherited pnlEdit: TPanel
    Height = 80
    ExplicitHeight = 80
    inherited lbl1: TLabel
      Left = 25
      Top = 8
      Width = 26
      Caption = #37096#38376
      ExplicitLeft = 25
      ExplicitTop = 8
      ExplicitWidth = 26
    end
    inherited lbl7: TLabel
      Left = 12
      ExplicitLeft = 12
    end
    inherited lbl8: TLabel
      Left = 158
      ExplicitLeft = 158
    end
    inherited Label14: TLabel
      Left = 352
      ExplicitLeft = 352
    end
    inherited Label15: TLabel
      Left = 346
      Top = 8
      ExplicitLeft = 346
      ExplicitTop = 8
    end
    inherited lbl2: TLabel
      Left = 3
      ExplicitLeft = 3
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 539
      ExplicitLeft = 539
      ExplicitHeight = 53
      Height = 53
      inherited Label1: TLabel
        Top = 8
        ExplicitTop = 8
      end
      inherited Label9: TLabel
        Top = 32
        ExplicitTop = 32
      end
      inherited cxEdtNo: TcxDBTextEdit
        Top = 4
        Style.IsFontAssigned = True
        ExplicitTop = 4
      end
      inherited cxdt: TcxDBDateEdit
        Top = 28
        ExplicitTop = 28
      end
    end
    inherited cxObject: TcxDBButtonEdit
      Left = 54
      Top = 4
      ExplicitLeft = 54
      ExplicitTop = 4
    end
    inherited cxEmp: TcxDBButtonEdit
      Left = 54
      ExplicitLeft = 54
    end
    inherited cxSubjoinNO: TcxDBButtonEdit
      Left = 218
      ExplicitLeft = 218
    end
    inherited cxMoRemark: TcxDBMemo
      Left = 384
      ExplicitLeft = 384
    end
    inherited cxPupEdtRemark: TcxDBPopupEdit
      Left = 383
      ExplicitLeft = 383
    end
    inherited cxRgpSignFlag: TcxDBRadioGroup
      Left = 384
      ExplicitLeft = 384
      ExplicitWidth = 149
      Width = 149
    end
    inherited cExbbBillFind: TcxExtLookupComboBox
      Left = 54
      Top = 56
      ExplicitLeft = 54
      ExplicitTop = 56
    end
  end
  inherited pnlBody: TPanel
    Top = 156
    Height = 357
    ExplicitTop = 156
    ExplicitHeight = 357
    inherited cxPgc: TcxPageControl
      Height = 357
      ExplicitHeight = 357
      ClientRectBottom = 351
      inherited cxtbsht1: TcxTabSheet
        ExplicitHeight = 324
        inherited cxgrd: TcxGrid
          Height = 324
          ExplicitHeight = 324
          inherited cxgrdtbv: TcxGridDBTableView
            inherited cxgrdMainPrice: TcxGridDBColumn
              Visible = False
            end
            inherited cxgrdTaxPrice: TcxGridDBColumn
              Visible = False
            end
            inherited cxgrdMainMoney: TcxGridDBColumn
              Visible = False
            end
            inherited cxgrdTaxRate: TcxGridDBColumn
              Visible = False
            end
            inherited cxgrdTaxMoney: TcxGridDBColumn
              Visible = False
            end
            inherited cxgrdAllMoney: TcxGridDBColumn
              Visible = False
            end
            inherited cxgrdSubUnit: TcxGridDBColumn
              Visible = True
            end
            inherited cxgrdSubNum: TcxGridDBColumn
              Visible = True
            end
            inherited cxgrdRemark: TcxGridDBColumn
              Width = 200
            end
          end
        end
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      46
      0)
    inherited btRefer: TdxBarLargeButton
      OnClick = btReferClick
    end
    object dxBarButton3: TdxBarButton
      Caption = #38144#21806#35746#21333
      Category = 0
      Hint = #38144#21806#35746#21333
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
    object dxBarButton4: TdxBarButton
      Caption = #29983#20135#27966#24037#21333
      Category = 0
      Hint = #29983#20135#27966#24037#21333
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Caption = 'BOM'#21457#26009
      Category = 0
      Hint = 'BOM'#21457#26009
      Visible = ivAlways
    end
    object dxBarButton6: TdxBarButton
      Caption = #29983#20135#35746#21333
      Category = 0
      Hint = #29983#20135#35746#21333
      Visible = ivAlways
    end
  end
  inherited frxHed: TfrxDBDataset
    UserName = #20135#21697#20837#24211#20027#34920
  end
  inherited frxDet: TfrxDBDataset
    UserName = #20135#21697#20837#24211#20174#34920
  end
end
