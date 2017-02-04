inherited AssistInFM: TAssistInFM
  Caption = #22806#21327#20837#24211
  ClientHeight = 510
  ExplicitWidth = 1044
  ExplicitHeight = 510
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    TabOrder = 0
    inherited cxLabTitle: TcxLabel
      Caption = #22806#21327#20837#24211
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
    Top = 487
    TabOrder = 1
    ExplicitTop = 487
  end
  inherited pnlEdit: TPanel
    Height = 78
    ExplicitHeight = 78
    inherited lbl1: TLabel
      Top = 10
      Width = 39
      Caption = #22806#21327#21830
      ExplicitTop = 10
      ExplicitWidth = 39
    end
    inherited lbl7: TLabel
      Left = 16
      Top = 35
      ExplicitLeft = 16
      ExplicitTop = 35
    end
    inherited lbl8: TLabel
      Left = 167
      Top = 35
      ExplicitLeft = 167
      ExplicitTop = 35
    end
    inherited Label14: TLabel
      Left = 364
      Top = 35
      ExplicitLeft = 364
      ExplicitTop = 35
    end
    inherited Label15: TLabel
      Left = 354
      Top = 10
      ExplicitLeft = 354
      ExplicitTop = 10
    end
    inherited lbl2: TLabel
      Left = 7
      Top = 58
      ExplicitLeft = 7
      ExplicitTop = 58
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 560
      ExplicitLeft = 560
      ExplicitHeight = 52
      Height = 52
      inherited Label1: TLabel
        Left = 13
        Top = 9
        ExplicitLeft = 13
        ExplicitTop = 9
      end
      inherited Label9: TLabel
        Left = 13
        Top = 32
        ExplicitLeft = 13
        ExplicitTop = 32
      end
      inherited cxEdtNo: TcxDBTextEdit
        Left = 45
        Top = 5
        Style.IsFontAssigned = True
        ExplicitLeft = 45
        ExplicitTop = 5
      end
      inherited cxdt: TcxDBDateEdit
        Left = 45
        Top = 28
        ExplicitLeft = 45
        ExplicitTop = 28
      end
    end
    inherited cxObject: TcxDBButtonEdit
      Left = 63
      Top = 6
      ExplicitLeft = 63
      ExplicitTop = 6
    end
    inherited cxEmp: TcxDBButtonEdit
      Left = 63
      Top = 31
      ExplicitLeft = 63
      ExplicitTop = 31
    end
    inherited cxSubjoinNO: TcxDBButtonEdit
      Left = 227
      Top = 31
      ExplicitLeft = 227
      ExplicitTop = 31
    end
    inherited cxMoRemark: TcxDBMemo
      Left = 393
      Top = 31
      ExplicitLeft = 393
      ExplicitTop = 31
    end
    inherited cxPupEdtRemark: TcxDBPopupEdit
      Left = 393
      Top = 31
      ExplicitLeft = 393
      ExplicitTop = 31
    end
    inherited cxRgpSignFlag: TcxDBRadioGroup
      Left = 393
      ExplicitLeft = 393
    end
    inherited cExbbBillFind: TcxExtLookupComboBox
      Left = 63
      Top = 55
      ExplicitLeft = 63
      ExplicitTop = 55
    end
  end
  inherited pnlBody: TPanel
    Top = 154
    Height = 333
    ExplicitTop = 154
    ExplicitHeight = 333
    inherited cxPgc: TcxPageControl
      Height = 333
      ExplicitHeight = 333
      ClientRectBottom = 327
      inherited cxtbsht1: TcxTabSheet
        ExplicitLeft = 2
        ExplicitTop = 27
        ExplicitWidth = 1036
        ExplicitHeight = 300
        inherited cxgrd: TcxGrid
          Height = 300
          ExplicitHeight = 300
          inherited cxgrdtbv: TcxGridDBTableView
            inherited cxgrdExchRate: TcxGridDBColumn
              Width = 41
            end
            inherited cxgrdItemUnit: TcxGridDBColumn
              Width = 41
            end
            object cxgrdtbvColumn1: TcxGridDBColumn [11]
              Caption = #23545#24212#21333#20301#32534#21495
              DataBinding.FieldName = 'ObjectId'
              Width = 90
            end
            inherited cxgrdObjectId: TcxGridDBColumn
              Caption = #23545#24212#21333#20301#21517#31216
              Visible = True
              Width = 104
            end
            inherited cxgrdPlaceNo: TcxGridDBColumn
              Visible = False
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
  end
  inherited frxHed: TfrxDBDataset
    UserName = #22806#21327#20837#24211#20027#34920
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
      'ObjectTel='#24448#26469#21333#20301#30005#35805
      'Address='#22320#22336
      'bFuHe='#26159#21542#22797#21512)
  end
  inherited frxDet: TfrxDBDataset
    UserName = #22806#21327#20837#24211#20174#34920
    FieldAliases.Strings = (
      'AutoID=AutoID'
      'ItemId=ItemId'
      'ItemUnit=ItemUnit'
      'SubUnit=SubUnit'
      'ItemPYCode=ItemPYCode'
      'WareId=WareId'
      'ExchRate=ExchRate'
      'ProType=ProType'
      'Color=Color'
      'BatchNo=BatchNo'
      'PlaceNo=PlaceNo'
      'CompactNo=CompactNo'
      'ObjectId=ObjectId'
      'SjNo=SjNo'
      'sOrderNo=sOrderNo'
      'TechName=TechName'
      'InDate=InDate'
      'PState=PState'
      'TempNo=TempNo'
      'MainNum=MainNum'
      'MainPrice=MainPrice'
      'TaxPrice=TaxPrice'
      'MainMoney=MainMoney'
      'SubNum=SubNum'
      'SubPrice=SubPrice'
      'SubTaxPrice=SubTaxPrice'
      'SubMoney=SubMoney'
      'TaxRate=TaxRate'
      'TaxMoney=TaxMoney'
      'AllMoney=AllMoney'
      'OkPrice=OkPrice'
      'OkMoney=OkMoney'
      'MadePrice=MadePrice'
      'MadeTaxPrice=MadeTaxPrice'
      'MadeMoney=MadeMoney'
      'MadeTaxRate=MadeTaxRate'
      'MadeTaxMoney=MadeTaxMoney'
      'MadeAllMoney=MadeAllMoney'
      'SubjoinNo=SubjoinNo'
      'bEnd=bEnd'
      'EndNum=EndNum'
      'rfID=rfID'
      'rfNum=rfNum'
      'SaleID=SaleID'
      'TaskNo=TaskNo'
      'TaskID=TaskID'
      'QcStockNo=QcStockNo'
      'QcStockId=QcStockId'
      'StockRecNo=StockRecNo'
      'StockRecID=StockRecID'
      'Remark=Remark'
      'ItemPic=ItemPic'
      'WareName=WareName'
      'BillNO=BillNO'
      'INo=INo'
      'iFlag=iFlag'
      'ItemCode=ItemCode'
      'ItemName=ItemName'
      'ItemSpc=ItemSpc'
      'HtNo=HtNo'
      'AutoNo=AutoNo'
      'SaleOrderNo=SaleOrderNo'
      'bSelect=bSelect'
      'RfNo=rfNO'
      'SaleNo=SaleNo'
      'StockNo=StockNo'
      'SaleSenderNo=SaleSenderNo'
      'WareNum=WareNum'
      'StockID=StockID'
      'SaleSenderId=SaleSenderId'
      'SaleOrderId=SaleOrderId'
      'Weight=Weight'
      'AllWeight=AllWeight'
      'EmpId=EmpId'
      'EmpName=EmpName'
      'ObjectName=ObjectName')
  end
end
