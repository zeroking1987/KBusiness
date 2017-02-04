inherited StockBackOutFM: TStockBackOutFM
  Caption = #37319#36141#36864#36135#20986#24211
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    TabOrder = 0
    inherited labTitle: TLabel
      Caption = #37319#36141#36864#36135#20986#24211
      ExplicitLeft = 372
    end
  end
  inherited pnlInfo: TPanel
    TabOrder = 1
  end
  inherited pnlEdit: TPanel
    Height = 70
    ExplicitTop = 86
    ExplicitHeight = 70
    inherited lbl1: TLabel
      Left = 13
      Top = 16
      Width = 52
      Caption = #20379#24212#21830#65306
      ExplicitLeft = 13
      ExplicitTop = 16
      ExplicitWidth = 52
    end
    inherited lbl7: TLabel
      Left = 13
      Caption = #37319#36141#21592#65306
      ExplicitLeft = 13
    end
    inherited lbl8: TLabel
      Left = 166
      ExplicitLeft = 166
    end
    inherited Label14: TLabel
      Left = 360
      ExplicitLeft = 360
    end
    inherited Label15: TLabel
      Left = 356
      ExplicitLeft = 356
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 633
      Top = 2
      ExplicitLeft = 633
      ExplicitTop = 2
      inherited cxEdtNo: TcxDBTextEdit
        Style.IsFontAssigned = True
      end
    end
    inherited cxObject: TcxDBButtonEdit
      Left = 62
      ExplicitLeft = 62
    end
    inherited cxEmp: TcxDBButtonEdit
      Left = 62
      ExplicitLeft = 62
    end
    inherited cxSubjoinNO: TcxDBButtonEdit
      Left = 226
      ExplicitLeft = 226
    end
    inherited cxMoRemark: TcxDBMemo
      Left = 392
      ExplicitLeft = 392
    end
    inherited cxPupEdtRemark: TcxDBPopupEdit
      Left = 392
      ExplicitLeft = 392
    end
  end
  inherited pnlBody: TPanel
    Top = 148
    Height = 327
    inherited cxPgc: TcxPageControl
      Height = 327
      ExplicitTop = 160
      ExplicitHeight = 315
      ClientRectBottom = 322
      inherited cxtbsht1: TcxTabSheet
        ExplicitHeight = 286
        inherited cxgrd: TcxGrid
          Height = 290
          ExplicitHeight = 286
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
