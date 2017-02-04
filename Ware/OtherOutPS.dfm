inherited OtherOutFM: TOtherOutFM
  Caption = #20854#20182#20986#24211
  ExplicitWidth = 1044
  ExplicitHeight = 536
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    TabOrder = 0
    inherited cxLabTitle: TcxLabel
      Caption = #20854#20182#20986#24211
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
    Height = 86
    ExplicitHeight = 86
    inherited lbl1: TLabel
      Left = 27
      Top = 11
      Width = 26
      Caption = #37096#38376
      ExplicitLeft = 27
      ExplicitTop = 11
      ExplicitWidth = 26
    end
    inherited lbl7: TLabel
      Left = 14
      Top = 37
      ExplicitLeft = 14
      ExplicitTop = 37
    end
    inherited lbl8: TLabel
      Left = 167
      Top = 37
      ExplicitLeft = 167
      ExplicitTop = 37
    end
    inherited Label14: TLabel
      Left = 363
      Top = 37
      ExplicitLeft = 363
      ExplicitTop = 37
    end
    inherited Label15: TLabel
      Left = 352
      Top = 11
      ExplicitLeft = 352
      ExplicitTop = 11
    end
    inherited lbl2: TLabel
      Left = 5
      Top = 62
      ExplicitLeft = 5
      ExplicitTop = 62
    end
    object lbl3: TLabel [6]
      Left = 544
      Top = 62
      Width = 48
      Height = 13
      Caption = #19994#21153#31867#22411
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 548
      ExplicitLeft = 548
      ExplicitHeight = 54
      Height = 54
      inherited Label9: TLabel
        Top = 33
        ExplicitTop = 33
      end
      inherited cxEdtNo: TcxDBTextEdit
        Style.IsFontAssigned = True
      end
      inherited cxdt: TcxDBDateEdit
        Top = 29
        ExplicitTop = 29
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
      Left = 397
      Top = 33
      ExplicitLeft = 397
      ExplicitTop = 33
      ExplicitWidth = 142
      Width = 142
    end
    inherited cxPupEdtRemark: TcxDBPopupEdit
      Left = 398
      Top = 33
      ExplicitLeft = 398
      ExplicitTop = 33
      ExplicitWidth = 142
      Width = 142
    end
    inherited cxRgpSignFlag: TcxDBRadioGroup
      Left = 389
      Top = 2
      ExplicitLeft = 389
      ExplicitTop = 2
    end
    inherited cExbbBillFind: TcxExtLookupComboBox
      Left = 59
      Top = 58
      TabOrder = 8
      ExplicitLeft = 59
      ExplicitTop = 58
    end
    object cxDBButtonEdit1: TcxDBButtonEdit
      Left = 597
      Top = 58
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
    Top = 162
    Height = 351
    ExplicitTop = 162
    ExplicitHeight = 351
    inherited cxPgc: TcxPageControl
      Height = 351
      ExplicitHeight = 351
      ClientRectBottom = 345
      inherited cxtbsht1: TcxTabSheet
        ExplicitLeft = 2
        ExplicitTop = 27
        ExplicitWidth = 1036
        ExplicitHeight = 318
        inherited cxgrd: TcxGrid
          Height = 318
          ExplicitHeight = 318
          inherited cxgrdtbv: TcxGridDBTableView
            object cxgrdbclmnEmpName: TcxGridDBColumn [14]
              Caption = #39046#26009#21592
              DataBinding.FieldName = 'EmpName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdbclmnEmpNamePropertiesButtonClick
              Width = 52
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
    inherited dxbrBarMang: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btFirst'
        end
        item
          Visible = True
          ItemName = 'btLeft'
        end
        item
          Visible = True
          ItemName = 'btRight'
        end
        item
          Visible = True
          ItemName = 'btLast'
        end
        item
          Visible = True
          ItemName = 'btAdd'
        end
        item
          Visible = True
          ItemName = 'btEdit'
        end
        item
          Visible = True
          ItemName = 'btSave'
        end
        item
          Visible = True
          ItemName = 'btDel'
        end
        item
          Visible = True
          ItemName = 'btCancel'
        end
        item
          Visible = True
          ItemName = 'btAddL'
        end
        item
          Visible = True
          ItemName = 'btDelL'
        end
        item
          Visible = True
          ItemName = 'btFind'
        end
        item
          Visible = True
          ItemName = 'btExport'
        end
        item
          Visible = True
          ItemName = 'btRefer'
        end
        item
          Visible = True
          ItemName = 'btPrint'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 75
          Visible = True
          ItemName = 'dxCmbReport'
        end
        item
          Visible = True
          ItemName = 'btInvoice'
        end
        item
          Visible = True
          ItemName = 'btRef'
        end
        item
          Visible = True
          ItemName = 'btTemp'
        end
        item
          Visible = True
          ItemName = 'btCheck'
        end
        item
          Visible = True
          ItemName = 'btUnCheck'
        end
        item
          Visible = True
          ItemName = 'btExit'
        end>
    end
  end
  inherited frxHed: TfrxDBDataset
    FieldAliases.Strings = (
      'AutoID='#33258#21160#32534#21495
      'BillNO='#21333#21495
      'WKindID='#19994#21153#31867#22411#32534#21495
      'WFlag='#20986#20837#24211#26631#24535
      'BillDate='#26085#26399
      'WareMan='#20179#31649#21592#32534#21495
      'SendMan='#21457#26009#21592#32534#21495
      'DrawMan='#39046#26009#21592#32534#21495
      'CoinName='#24065#31181
      'ExchangeRate='#27719#29575
      'bTax='#26159#21542#21547#31246
      'bInvoice='#26159#21542#35760#36134
      'AccName=AccName'
      'ObjectID='#24448#26469#21333#20301#32534#21495
      'bPrint='#26159#21542#25171#21360
      'PrintNum='#25171#21360#27425#25968
      'SubjoinNo='#20851#32852#21495#30721
      'MakeDate='#21046#21333#26085#26399
      'MakeMan='#21046#21333#20154#32534#21495
      'MakeManName='#21046#21333#20154
      'AuditFlag='#23457#26680#26631#24535
      'AuditMan='#23457#26680#20154#32534#21495
      'AuditDate='#23457#26680#26085#26399
      'bMaxAudit='#26159#21542#23457#26680#23436#25104
      'SourceNo='#28304#21333#21495
      'EditMan='#20462#25913#20154#32534#21495
      'EditManName='#20462#25913#20154#22995#21517
      'EditDate='#20462#25913#26085#26399
      'FinaMan='#35760#36134#20154#32534#21495
      'FinaDate='#35760#36134#26085#26399
      'YearMon='#24180#26376
      'PzWord='#20973#35777#23383
      'PzNo='#20973#35777#21495
      'PzId='#20973#35777#32534#21495
      'Remark='#22791#27880
      'ObjectCode='#24448#26469#21333#20301#20195#21495
      'WareManName='#20179#31649#21592
      'SendManName='#21457#26009#21592
      'DrawManName='#39046#26009#21592
      'bRed='#26159#21542#20914#32418
      'ObjectName='#24448#26469#21333#20301
      'Seller='#38144#21806#21592#32534#21495
      'SellerManName='#38144#21806#21592
      'PayMode='#20184#27454#26041#24335
      'AuditManName='#23457#26680#20154
      'MaxAuditDate='#26368#21518#23457#26680#26085#26399
      'bSelect='#26159#21542#36873#25321
      'bAuto='#26159#21542#33258#21160#29983#25104
      'SignFlag='#34013#32418#23383
      'ObjectTel=ObjectTel'
      'Address=Address'
      'bFuHe=bFuHe')
  end
end
