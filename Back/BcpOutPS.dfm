inherited BcpOutFM: TBcpOutFM
  Caption = #21322#25104#21697#20986#24211
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    TabOrder = 0
    inherited labTitle: TLabel
      Caption = #21322#25104#21697#20986#24211
      ExplicitLeft = 361
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
      Left = 23
      Top = 11
      Width = 39
      Caption = #37096#38376#65306
      ExplicitLeft = 23
      ExplicitTop = 11
      ExplicitWidth = 39
    end
    inherited lbl7: TLabel
      Left = 10
      Top = 38
      ExplicitLeft = 10
      ExplicitTop = 38
    end
    inherited lbl8: TLabel
      Left = 163
      Top = 38
      ExplicitLeft = 163
      ExplicitTop = 38
    end
    inherited Label14: TLabel
      Left = 356
      Top = 38
      ExplicitLeft = 356
      ExplicitTop = 38
    end
    inherited Label15: TLabel
      Left = 349
      ExplicitLeft = 349
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
      Left = 59
      ExplicitLeft = 59
    end
    inherited cxEmp: TcxDBButtonEdit
      Left = 59
      Top = 35
      ExplicitLeft = 59
      ExplicitTop = 35
    end
    inherited cxSubjoinNO: TcxDBButtonEdit
      Left = 223
      Top = 35
      ExplicitLeft = 223
      ExplicitTop = 35
    end
    inherited cxMoRemark: TcxDBMemo
      Left = 386
      Top = 35
      ExplicitLeft = 386
      ExplicitTop = 35
    end
    inherited cxPupEdtRemark: TcxDBPopupEdit
      Left = 386
      Top = 35
      ExplicitLeft = 386
      ExplicitTop = 35
    end
  end
  inherited pnlBody: TPanel
    Top = 146
    Height = 329
    inherited cxPgc: TcxPageControl
      Height = 329
      ExplicitTop = 160
      ExplicitHeight = 315
      ClientRectBottom = 324
      inherited cxtbsht1: TcxTabSheet
        ExplicitHeight = 286
        inherited cxgrd: TcxGrid
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
