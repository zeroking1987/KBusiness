inherited StockInFM: TStockInFM
  Caption = #36827#36135#21333
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    TabOrder = 0
    inherited cxLabTitle: TcxLabel
      Caption = #36827#36135#21333
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
    Height = 77
    ExplicitHeight = 77
    inherited lbl1: TLabel
      Left = 17
      Top = 8
      Width = 39
      Caption = #20379#24212#21830
      ExplicitLeft = 17
      ExplicitTop = 8
      ExplicitWidth = 39
    end
    inherited lbl7: TLabel
      Left = 479
      Top = 122
      Caption = #37319#36141#21592
      ExplicitLeft = 479
      ExplicitTop = 122
    end
    inherited lbl8: TLabel
      Left = 627
      Top = 122
      ExplicitLeft = 627
      ExplicitTop = 122
    end
    inherited Label14: TLabel
      Left = 32
      Top = 58
      ExplicitLeft = 32
      ExplicitTop = 58
    end
    inherited Label15: TLabel
      Left = 343
      Top = 8
      ExplicitLeft = 343
      ExplicitTop = 8
    end
    inherited Label10: TLabel
      Left = 30
      Top = 33
      ExplicitLeft = 30
      ExplicitTop = 33
    end
    object Label11: TLabel [6]
      Left = 170
      Top = 34
      Width = 6
      Height = 13
      Caption = '*'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 455
      ExplicitLeft = 455
      ExplicitHeight = 71
      Height = 71
      inherited Label1: TLabel
        Top = 15
        ExplicitTop = 15
      end
      inherited Label9: TLabel
        Top = 41
        ExplicitTop = 41
      end
      inherited cxEdtNo: TcxDBTextEdit
        Top = 9
        Style.IsFontAssigned = True
        ExplicitTop = 9
      end
      inherited cxdt: TcxDBDateEdit
        Left = 44
        Top = 38
        ExplicitLeft = 44
        ExplicitTop = 38
      end
    end
    inherited cxEmp: TcxDBButtonEdit
      Left = 522
      Top = 118
      ExplicitLeft = 522
      ExplicitTop = 118
    end
    inherited cxSubjoinNO: TcxDBButtonEdit
      Left = 687
      Top = 118
      ExplicitLeft = 687
      ExplicitTop = 118
      ExplicitWidth = 128
      Width = 128
    end
    inherited cxMoRemark: TcxDBMemo
      Left = 71
      Top = 118
      ExplicitLeft = 71
      ExplicitTop = 118
      ExplicitWidth = 402
      Width = 402
    end
    inherited cxPupEdtRemark: TcxDBPopupEdit
      Left = 72
      Top = 118
      ExplicitLeft = 72
      ExplicitTop = 118
      ExplicitWidth = 401
      Width = 401
    end
    inherited cxRgpSignFlag: TcxDBRadioGroup
      Left = 380
      Properties.Columns = 1
      Properties.Items = <
        item
          Caption = #36827#36135
          Value = 1
        end
        item
          Caption = #36864#36135
          Value = -1
        end>
      ExplicitLeft = 380
      ExplicitWidth = 76
      ExplicitHeight = 71
      Height = 71
      Width = 76
    end
    inherited cxObject: TcxDBMRUEdit
      Left = 60
      Top = 4
      ExplicitLeft = 60
      ExplicitTop = 4
      ExplicitWidth = 277
      Width = 277
    end
    object cxDBCheckBox1: TcxDBCheckBox [14]
      Left = 821
      Top = 119
      Caption = #26159#21542#29616#37329#37319#36141
      DataBinding.DataField = 'bCashDeal'
      DataBinding.DataSource = dsHed
      Properties.Alignment = taRightJustify
      Properties.NullStyle = nssUnchecked
      TabOrder = 9
      Transparent = True
    end
    object cxDBButtonEdit1: TcxDBButtonEdit [15]
      Left = 60
      Top = 55
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
          Visible = False
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      TabOrder = 8
      Width = 275
    end
    inherited cxWareName: TcxDBButtonEdit
      Left = 60
      Top = 29
      ExplicitLeft = 60
      ExplicitTop = 29
    end
  end
  inherited pnlBody: TPanel
    Top = 163
    Height = 350
    ExplicitTop = 163
    ExplicitHeight = 350
    inherited cxPgc: TcxPageControl
      Height = 350
      ExplicitHeight = 350
      ClientRectBottom = 348
      inherited cxtbsht1: TcxTabSheet
        ExplicitHeight = 320
        inherited cxgrd: TcxGrid
          Height = 320
          ExplicitHeight = 320
          inherited cxgrdtbv: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = #21512#35745#65306'0'
                Kind = skCount
                Column = cxgrdItemCode
              end
              item
                Kind = skSum
              end
              item
                Kind = skSum
                Column = cxgrdSubNum
              end
              item
                Kind = skSum
              end
              item
                Kind = skSum
              end
              item
                Kind = skSum
                Column = cxgrdMainNum
              end
              item
                Kind = skSum
                Column = cxgrdMainMoney
              end
              item
                Kind = skSum
                Column = cxgrdTaxMoney
              end
              item
                Kind = skSum
                Column = cxgrdAllMoney
              end>
            inherited cxgrdItemName: TcxGridDBColumn
              Width = 138
            end
            inherited cxgrdItemSpc: TcxGridDBColumn
              Visible = False
            end
            inherited cxgrdItemPic: TcxGridDBColumn [3]
            end
            inherited cxgrdItemUnit: TcxGridDBColumn [4]
            end
            inherited cxgrdExchRate: TcxGridDBColumn [5]
            end
            inherited cxgrdProType: TcxGridDBColumn
              Width = 101
            end
            inherited cxgrdWareNum: TcxGridDBColumn
              Styles.Content = DataFM.cxStyNoEdit
            end
            inherited cxgrdMainNum: TcxGridDBColumn
              Styles.Content = DataFM.cxStyNum
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
      56
      0)
  end
  inherited qyDet: TADOQuery
    AfterScroll = qyDetAfterScroll
  end
  inherited pmLayout: TPopupMenu
    object N1: TMenuItem
      Caption = '-'
      Visible = False
    end
    object NStockOrder: TMenuItem
      Caption = #37319#36141#35746#21333
      Visible = False
    end
    object NStockInvoice: TMenuItem
      Caption = #24212#20184#35760#36134#21333
      Visible = False
    end
  end
  inherited frxHed: TfrxDBDataset
    UserName = #36827#36135#21333#20027#34920
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
      'AccName='#35760#36134#20154#22995#21517
      'ObjectID='#20379#24212#21830#32534#21495
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
      'EditManName='#20462#25913#20154
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
      'ObjectTel='#20379#24212#21830#30005#35805
      'Address='#20379#24212#21830#22320#22336
      'bFuHe='#26159#21542#22797#26680
      'SubjoinTableId='#28304#21333#34920#32534#21495
      'WKindName='#19994#21153#31867#22411#21517#31216
      'bCashDeal='#26159#21542#29616#37329#20132#26131
      'ObjectMobile=ObjectMobile'
      'ObjectLinkMan=ObjectLinkMan'
      'ObjectFax=ObjectFax'
      'FactMoney=FactMoney'
      'PayMoney=PayMoney'
      'DisCount=DisCount')
  end
  inherited frxDet: TfrxDBDataset
    UserName = #37319#36141#20837#24211#20174#34920
    FieldAliases.Strings = (
      'AutoID='#33258#21160#32534#21495
      'ItemId='#20135#21697#32534#21495
      'ItemUnit='#20027#21333#20301
      'SubUnit='#21103#21333#20301
      'WareId='#20179#24211#32534#21495
      'ProType='#23646#24615
      'Color='#39068#33394
      'BatchNo='#25209#21495
      'PlaceNo='#36135#20301
      'CompactNo='#21512#21516#21495
      'ObjectId='#24448#26469#21333#20301#32534#21495
      'SjNo='#21830#26816#21495
      'sOrderNo='#35746#21333#21495
      'TechName='#24037#24207#21517#31216
      'InDate='#20837#24211#26085#26399
      'PState='#29366#24577
      'TempNo='#20020#26102#21495
      'MainNum='#20027#25968#37327
      'MainPrice='#20027#21333#20215
      'TaxPrice='#21547#31246#20215
      'MainMoney='#20027#37329#39069
      'SubNum='#21103#25968#37327
      'SubPrice='#21103#21333#20215
      'SubTaxPrice='#21103#21547#31246#20215
      'SubMoney='#21103#37329#39069
      'TaxRate='#31246#29575
      'TaxMoney='#31246#39069
      'AllMoney='#20215#31246#21512#35745
      'OkPrice='#26680#31639#21333#20215
      'OkMoney='#26680#31639#37329#39069
      'MadePrice=MadePrice'
      'MadeTaxPrice=MadeTaxPrice'
      'MadeMoney=MadeMoney'
      'MadeTaxRate=MadeTaxRate'
      'MadeTaxMoney=MadeTaxMoney'
      'MadeAllMoney=MadeAllMoney'
      'SubjoinNo='#28304#21333#21495
      'bEnd='#26159#21542#32467#26463
      'EndNum='#32467#26463#25968#37327
      'rfID='#21442#29031#20869#30721
      'rfNum='#21442#29031#25968#37327
      'TaskNo='#20219#21153#21495
      'QcStockNo='#36136#26816#21495
      'StockRecNo='#37319#36141#25910#36135#21495
      'Remark='#22791#27880
      'ItemPic='#20135#21697#22270#21495
      'WareName='#20179#24211#21517#31216
      'BillNO='#21333#21495
      'INo='#24207#21495
      'iFlag='#36716#25442#26631#24535
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#20135#21697#35268#26684
      'HtNo=HtNo'
      'AutoNo='#33258#21160#21495
      'SaleOrderNo='#38144#21806#35746#21333#21442#29031#21495
      'bSelect='#26159#21542#36873#25321
      'RfNo='#21442#29031#21495
      'StockNo='#37319#36141#35746#21333#21495
      'SaleSenderNo='#38144#21806#21457#36135#21442#29031#21495
      'WareNum='#24211#23384#25968#37327
      'StockID='#37319#36141#35746#21333#20869#30721
      'SaleSenderId='#38144#21806#21457#36135#21333#20869#30721
      'SaleOrderId='#38144#21806#35746#21333#20869#30721
      'Weight='#21333#37325
      'AllWeight='#24635#37325
      'EmpId=EmpId'
      'EmpName=EmpName'
      'ObjectName=ObjectName'
      'TaskId='#20219#21153#20869#30721
      'QcStockId='#36136#26816#20869#30721
      'StockRecId='#37319#36141#25910#36135#20869#30721
      'ProOrderNo=ProOrderNo'
      'ProOrderId=ProOrderId'
      'ExchRate='#36716#21270#29575
      'MasterNo=MasterNo'
      'DispatchNo=DispatchNo'
      'DispatchId=DispatchId'
      'MatOutNo=MatOutNo'
      'MatOutId=MatOutId'
      'ExchangeRate=ExchangeRate')
  end
end
