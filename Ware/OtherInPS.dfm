inherited OtherInFM: TOtherInFM
  Caption = #20854#20182#20837#24211
  ExplicitWidth = 1044
  ExplicitHeight = 536
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    TabOrder = 0
    inherited cxLabTitle: TcxLabel
      Caption = #20854#20182#20837#24211
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
    inherited lbl1: TLabel
      Left = 32
      Top = 11
      Width = 26
      Caption = #37096#38376
      ExplicitLeft = 32
      ExplicitTop = 11
      ExplicitWidth = 26
    end
    inherited lbl7: TLabel
      Left = 19
      Top = 37
      ExplicitLeft = 19
      ExplicitTop = 37
    end
    inherited lbl8: TLabel
      Left = 164
      Top = 37
      ExplicitLeft = 164
      ExplicitTop = 37
    end
    inherited Label14: TLabel
      Left = 358
      Top = 37
      ExplicitLeft = 358
      ExplicitTop = 37
    end
    inherited Label15: TLabel
      Left = 349
      Top = 11
      ExplicitLeft = 349
      ExplicitTop = 11
    end
    inherited lbl2: TLabel
      Left = 10
      Top = 61
      ExplicitLeft = 10
      ExplicitTop = 61
    end
    object lbl3: TLabel [6]
      Left = 556
      Top = 61
      Width = 52
      Height = 13
      Caption = #19994#21153#31867#22411
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 566
      ExplicitLeft = 566
      ExplicitHeight = 54
      Height = 54
      inherited Label1: TLabel
        Top = 9
        ExplicitTop = 9
      end
      inherited Label9: TLabel
        Top = 32
        ExplicitTop = 32
      end
      inherited cxEdtNo: TcxDBTextEdit
        Top = 5
        Style.IsFontAssigned = True
        ExplicitTop = 5
      end
      inherited cxdt: TcxDBDateEdit
        Left = 44
        Top = 28
        ExplicitLeft = 44
        ExplicitTop = 28
      end
    end
    inherited cxObject: TcxDBButtonEdit
      Left = 59
      Top = 7
      ExplicitLeft = 59
      ExplicitTop = 7
    end
    inherited cxEmp: TcxDBButtonEdit
      Left = 59
      Top = 33
      ExplicitLeft = 59
      ExplicitTop = 33
    end
    inherited cxSubjoinNO: TcxDBButtonEdit
      Left = 223
      Top = 33
      ExplicitLeft = 223
      ExplicitTop = 33
    end
    inherited cxMoRemark: TcxDBMemo
      Left = 392
      Top = 33
      ExplicitLeft = 392
      ExplicitTop = 33
      ExplicitWidth = 148
      Width = 148
    end
    inherited cxPupEdtRemark: TcxDBPopupEdit
      Left = 392
      Top = 33
      ExplicitLeft = 392
      ExplicitTop = 33
      ExplicitWidth = 148
      Width = 148
    end
    inherited cxRgpSignFlag: TcxDBRadioGroup
      Left = 390
      ExplicitLeft = 390
    end
    inherited cExbbBillFind: TcxExtLookupComboBox
      Left = 60
      TabOrder = 8
      ExplicitLeft = 60
    end
    object cxDBButtonEdit1: TcxDBButtonEdit
      Left = 615
      Top = 57
      DataBinding.DataField = 'WKindName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
          Visible = False
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      Style.Color = 14145495
      TabOrder = 7
      Width = 123
    end
  end
  inherited pnlBody: TPanel
    inherited cxPgc: TcxPageControl
      inherited cxtbsht1: TcxTabSheet
        ExplicitLeft = 2
        ExplicitTop = 27
        ExplicitWidth = 1036
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      46
      0)
  end
end
