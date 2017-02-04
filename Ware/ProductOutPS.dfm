inherited ProductOutFM: TProductOutFM
  Caption = #20135#21697#20986#24211
  ExplicitWidth = 1044
  ExplicitHeight = 536
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    TabOrder = 0
    inherited labTitle: TLabel
      Caption = #20135#21697#20986#24211
    end
  end
  inherited pnlInfo: TPanel
    TabOrder = 1
  end
  inherited pnlEdit: TPanel
    Height = 68
    ExplicitHeight = 68
    inherited lbl1: TLabel
      Top = 17
      Width = 39
      Caption = #23458#25143#65306
      ExplicitTop = 17
      ExplicitWidth = 39
    end
    inherited lbl7: TLabel
      Left = 3
      Top = 46
      Width = 52
      Caption = #38144#21806#21592#65306
      ExplicitLeft = 3
      ExplicitTop = 46
      ExplicitWidth = 52
    end
    inherited lbl8: TLabel
      Left = 158
      Top = 46
      ExplicitLeft = 158
      ExplicitTop = 46
    end
    inherited Label14: TLabel
      Left = 353
      ExplicitLeft = 353
    end
    inherited Label15: TLabel
      Left = 347
      Top = 17
      ExplicitLeft = 347
      ExplicitTop = 17
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 660
      ExplicitLeft = 660
      inherited cxEdtNo: TcxDBTextEdit
        Style.IsFontAssigned = True
      end
    end
    inherited cxObject: TcxDBButtonEdit
      Left = 54
      Top = 13
      ExplicitLeft = 54
      ExplicitTop = 13
    end
    inherited cxEmp: TcxDBButtonEdit
      Left = 54
      Top = 40
      ExplicitLeft = 54
      ExplicitTop = 40
      ExplicitWidth = 97
      Width = 97
    end
    inherited cxSubjoinNO: TcxDBButtonEdit
      Left = 218
      Top = 40
      ExplicitLeft = 218
      ExplicitTop = 40
    end
    inherited cxMoRemark: TcxDBMemo
      Left = 385
      ExplicitLeft = 385
    end
    inherited cxPupEdtRemark: TcxDBPopupEdit
      Left = 385
      ExplicitLeft = 385
    end
  end
  inherited pnlBody: TPanel
    Top = 144
    Height = 369
    ExplicitTop = 144
    ExplicitHeight = 369
    inherited cxPgc: TcxPageControl
      Height = 369
      ExplicitHeight = 369
      ClientRectBottom = 363
      inherited cxtbsht1: TcxTabSheet
        ExplicitHeight = 336
        inherited cxgrd: TcxGrid
          Height = 336
          ExplicitHeight = 336
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
  end
  inherited frxHed: TfrxDBDataset
    UserName = #38144#21806#20986#24211#21333#20027#34920
  end
  inherited frxDet: TfrxDBDataset
    UserName = #38144#21806#20986#24211#21333#20174#34920
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
