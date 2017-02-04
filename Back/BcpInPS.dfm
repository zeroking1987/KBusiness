inherited BcpInFM: TBcpInFM
  Caption = #21322#25104#21697#20837#24211
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    TabOrder = 0
    inherited labTitle: TLabel
      Caption = #21322#25104#21697#20837#24211
      ExplicitLeft = 361
    end
  end
  inherited pnlInfo: TPanel
    TabOrder = 1
  end
  inherited pnlEdit: TPanel
    ExplicitTop = 86
    inherited lbl1: TLabel
      Left = 15
      Top = 10
      Width = 39
      Caption = #37096#38376#65306
      ExplicitLeft = 15
      ExplicitTop = 10
      ExplicitWidth = 39
    end
    inherited lbl7: TLabel
      Left = 2
      Top = 40
      ExplicitLeft = 2
      ExplicitTop = 40
    end
    inherited lbl8: TLabel
      Left = 155
      Top = 40
      ExplicitLeft = 155
      ExplicitTop = 40
    end
    inherited Label14: TLabel
      Left = 344
      Top = 40
      ExplicitLeft = 344
      ExplicitTop = 40
    end
    inherited Label15: TLabel
      Left = 342
      Top = 12
      ExplicitLeft = 342
      ExplicitTop = 12
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 590
      Top = 4
      ExplicitLeft = 590
      ExplicitTop = 4
      inherited cxEdtNo: TcxDBTextEdit
        Style.IsFontAssigned = True
      end
    end
    inherited cxObject: TcxDBButtonEdit
      Left = 51
      Top = 7
      ExplicitLeft = 51
      ExplicitTop = 7
    end
    inherited cxEmp: TcxDBButtonEdit
      Left = 51
      Top = 37
      ExplicitLeft = 51
      ExplicitTop = 37
    end
    inherited cxSubjoinNO: TcxDBButtonEdit
      Left = 215
      Top = 37
      ExplicitLeft = 215
      ExplicitTop = 37
    end
    inherited cxMoRemark: TcxDBMemo
      Left = 373
      Top = 37
      ExplicitLeft = 373
      ExplicitTop = 37
    end
    inherited cxPupEdtRemark: TcxDBPopupEdit
      Left = 373
      Top = 37
      ExplicitLeft = 373
      ExplicitTop = 37
    end
  end
  inherited pnlBody: TPanel
    inherited cxPgc: TcxPageControl
      ExplicitTop = 167
      ExplicitHeight = 308
      inherited cxtbsht1: TcxTabSheet
        ExplicitHeight = 279
        inherited cxgrd: TcxGrid
          ExplicitHeight = 279
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
  inherited frxHed: TfrxDBDataset
    UserName = #37319#36141#20837#24211#20027#34920
  end
  inherited frxDet: TfrxDBDataset
    UserName = #37319#36141#20837#24211#20174#34920
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
      'rfNO=rfNO'
      'rfID=rfID'
      'rfNum=rfNum'
      'SaleNo=SaleNo'
      'SaleID=SaleID'
      'TaskNo=TaskNo'
      'TaskID=TaskID'
      'QcStockNo=QcStockNo'
      'QcStockId=QcStockId'
      'StockRecNo=StockRecNo'
      'StockRecID=StockRecID'
      'StockNo=StockNo'
      'StockID=StockID'
      'Remark=Remark'
      'ItemPic=ItemPic'
      'WareName=WareName'
      'WareNum=WareNum'
      'BillNO=BillNO'
      'INo=INo'
      'iFlag=iFlag'
      'ItemCode=ItemCode'
      'ItemName=ItemName'
      'ItemSpc=ItemSpc')
  end
end
