inherited SaleBackInFM: TSaleBackInFM
  Caption = #38144#21806#36864#36135#20837#24211
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    TabOrder = 0
    inherited labTitle: TLabel
      Caption = #38144#21806#36864#36135#20837#24211
      ExplicitLeft = 350
      ExplicitTop = 29
    end
  end
  inherited pnlInfo: TPanel
    TabOrder = 1
  end
  inherited pnlEdit: TPanel
    Height = 68
    ExplicitTop = 86
    ExplicitHeight = 68
    inherited lbl1: TLabel
      Width = 39
      Caption = #23458#25143#65306
      ExplicitWidth = 39
    end
    inherited lbl7: TLabel
      Left = 3
      Top = 43
      Caption = #38144#21806#21592#65306
      ExplicitLeft = 3
      ExplicitTop = 43
    end
    inherited lbl8: TLabel
      Left = 158
      Top = 43
      ExplicitLeft = 158
      ExplicitTop = 43
    end
    inherited Label14: TLabel
      Left = 358
      Top = 43
      ExplicitLeft = 358
      ExplicitTop = 43
    end
    inherited Label15: TLabel
      Left = 347
      Top = 10
      ExplicitLeft = 347
      ExplicitTop = 10
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 622
      Top = 0
      ExplicitLeft = 622
      ExplicitTop = 0
      inherited cxEdtNo: TcxDBTextEdit
        Style.IsFontAssigned = True
      end
    end
    inherited cxObject: TcxDBButtonEdit
      Left = 54
      ExplicitLeft = 54
    end
    inherited cxEmp: TcxDBButtonEdit
      Left = 54
      Top = 40
      ExplicitLeft = 54
      ExplicitTop = 40
    end
    inherited cxSubjoinNO: TcxDBButtonEdit
      Left = 218
      Top = 40
      ExplicitLeft = 218
      ExplicitTop = 40
    end
    inherited cxMoRemark: TcxDBMemo
      Left = 394
      Top = 40
      ExplicitLeft = 394
      ExplicitTop = 40
    end
    inherited cxPupEdtRemark: TcxDBPopupEdit
      Left = 395
      Top = 40
      ExplicitLeft = 395
      ExplicitTop = 40
    end
  end
  inherited pnlBody: TPanel
    Top = 146
    Height = 329
    inherited cxPgc: TcxPageControl
      Height = 329
      ExplicitTop = 165
      ExplicitHeight = 310
      ClientRectBottom = 324
      inherited cxtbsht1: TcxTabSheet
        ExplicitHeight = 281
        inherited cxgrd: TcxGrid
          ExplicitHeight = 281
        end
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      48
      0)
  end
end
