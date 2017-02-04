inherited SaleOutFM: TSaleOutFM
  Caption = #38144#21806#21333
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    TabOrder = 0
    inherited cxLabTitle: TcxLabel
      Caption = #38144#21806#21333
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
    inherited Label6: TLabel
      Visible = False
    end
    inherited Label7: TLabel
      Visible = False
    end
    inherited Label8: TLabel
      Visible = False
    end
    inherited cxEdtAuditManName: TcxDBTextEdit
      Visible = False
    end
    inherited cxEdtAuditDate: TcxDBTextEdit
      Visible = False
    end
    inherited cxEdtAuditFlag: TcxDBTextEdit
      Visible = False
    end
  end
  inherited pnlEdit: TPanel
    Height = 81
    ExplicitHeight = 81
    inherited lbl1: TLabel
      Left = 35
      Top = 11
      Width = 26
      Caption = #23458#25143
      ExplicitLeft = 35
      ExplicitTop = 11
      ExplicitWidth = 26
    end
    inherited lbl7: TLabel
      Left = 408
      Top = 171
      Caption = #38144#21806#21592
      ExplicitLeft = 408
      ExplicitTop = 171
    end
    inherited lbl8: TLabel
      Left = 595
      Top = 168
      ExplicitLeft = 595
      ExplicitTop = 168
    end
    inherited Label14: TLabel
      Left = 34
      Top = 169
      ExplicitLeft = 34
      ExplicitTop = 169
    end
    inherited Label15: TLabel
      Left = 377
      Top = 11
      ExplicitLeft = 377
      ExplicitTop = 11
    end
    object lbl3: TLabel [5]
      Left = 13
      Top = 35
      Width = 48
      Height = 13
      Caption = #21457#36135#22320#22336
    end
    object lbl5: TLabel [6]
      Left = 400
      Top = 35
      Width = 26
      Height = 13
      Caption = #25163#26426
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    inherited Label10: TLabel
      Left = 400
      Top = 63
      ExplicitLeft = 400
      ExplicitTop = 63
    end
    object Label17: TLabel [8]
      Left = 37
      Top = 63
      Width = 24
      Height = 13
      Caption = #22791#27880
    end
    object Label11: TLabel [9]
      Left = 557
      Top = 64
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
    object Label12: TLabel [10]
      Left = 387
      Top = 11
      Width = 39
      Height = 13
      Caption = #32852#31995#20154
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 643
      Top = 8
      ExplicitLeft = 643
      ExplicitTop = 8
      ExplicitHeight = 67
      Height = 67
      inherited Label9: TLabel
        Top = 41
        ExplicitTop = 41
      end
      inherited cxEdtNo: TcxDBTextEdit
        Style.IsFontAssigned = True
      end
      inherited cxdt: TcxDBDateEdit
        Left = 44
        Top = 37
        ExplicitLeft = 44
        ExplicitTop = 37
      end
    end
    inherited cxEmp: TcxDBButtonEdit
      Left = 454
      Top = 167
      ExplicitLeft = 454
      ExplicitTop = 167
      ExplicitWidth = 123
      Width = 123
    end
    inherited cxSubjoinNO: TcxDBButtonEdit
      Left = 654
      Top = 164
      ExplicitLeft = 654
      ExplicitTop = 164
    end
    inherited cxMoRemark: TcxDBMemo
      Left = 64
      Top = 165
      ExplicitLeft = 64
      ExplicitTop = 165
      ExplicitWidth = 304
      Width = 304
    end
    inherited cxPupEdtRemark: TcxDBPopupEdit
      Left = 64
      Top = 165
      ExplicitLeft = 64
      ExplicitTop = 165
      ExplicitWidth = 304
      Width = 304
    end
    inherited cxRgpSignFlag: TcxDBRadioGroup
      Left = 574
      Top = 8
      Properties.Columns = 1
      Properties.Items = <
        item
          Caption = #20986#36135
          Value = 1
        end
        item
          Caption = #36864#36135
          Value = -1
        end>
      ExplicitLeft = 574
      ExplicitTop = 8
      ExplicitWidth = 70
      ExplicitHeight = 67
      Height = 67
      Width = 70
    end
    inherited cxObject: TcxDBMRUEdit
      Left = 67
      Top = 7
      ExplicitLeft = 67
      ExplicitTop = 7
      ExplicitWidth = 304
      Width = 304
    end
    inherited cxWareName: TcxDBButtonEdit
      Left = 432
      Top = 59
      TabOrder = 13
      ExplicitLeft = 432
      ExplicitTop = 59
      ExplicitWidth = 122
      Width = 122
    end
    object cxdbtxtdtEdt2: TcxDBTextEdit
      Left = 67
      Top = 34
      DataBinding.DataField = 'Address'
      DataBinding.DataSource = dsHed
      TabOrder = 7
      Width = 304
    end
    object cxdbtxtdt2: TcxDBTextEdit
      Left = 432
      Top = 31
      DataBinding.DataField = 'ObjectMobile'
      DataBinding.DataSource = dsHed
      TabOrder = 8
      Width = 123
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 432
      Top = 7
      DataBinding.DataField = 'ObjectLinkMan'
      DataBinding.DataSource = dsHed
      TabOrder = 9
      Width = 123
    end
    object cxGroupBox1: TcxGroupBox
      Left = 2
      Top = 81
      Alignment = alLeftCenter
      TabOrder = 10
      Height = 30
      Width = 804
      object cbbPayMode: TcxDBComboBox
        Left = 202
        Top = 4
        DataBinding.DataField = 'PayMode'
        DataBinding.DataSource = dsHed
        TabOrder = 0
        Width = 91
      end
      object cxbtNowPay: TcxButton
        Left = 625
        Top = 1
        Width = 54
        Height = 26
        Caption = #26412#27425#25910#27454
        TabOrder = 1
        OnClick = cxbtNowPayClick
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 677
        Top = 1
        DataBinding.DataField = 'PayMoney'
        DataBinding.DataSource = dsHed
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextStyle = []
        Style.IsFontAssigned = True
        TabOrder = 2
        Width = 98
      end
      object cxFactMoney: TcxDBTextEdit
        Left = 393
        Top = 4
        DataBinding.DataField = 'FactMoney'
        DataBinding.DataSource = dsHed
        Properties.OnChange = cxFactMoneyPropertiesChange
        TabOrder = 3
        Width = 65
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 500
        Top = 4
        DataBinding.DataField = 'DisCount'
        DataBinding.DataSource = dsHed
        TabOrder = 4
        Width = 41
      end
      object cxLabel1: TcxLabel
        Left = 7
        Top = 6
        Caption = #24212#25910#20313#27454
        Transparent = True
      end
      object cxLabel2: TcxLabel
        Left = 150
        Top = 6
        Caption = #32467#31639#26041#24335
        Transparent = True
      end
      object cxLabel3: TcxLabel
        Left = 299
        Top = 6
        Caption = #25240#25187#21518#24212#25910#37329#39069
        Transparent = True
      end
      object cxLabel4: TcxLabel
        Left = 463
        Top = 6
        Caption = #25240#25187#29575
        Transparent = True
      end
      object cxLabel5: TcxLabel
        Left = 544
        Top = 6
        Caption = '(%)'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.TextColor = clBlue
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxNoPayM: TcxDBCurrencyEdit
        Left = 65
        Top = 1
        DataBinding.DataField = 'NoPayM'
        DataBinding.DataSource = dsHed
        ParentFont = False
        Properties.DisplayFormat = '#.#;-#.#'
        Properties.EditFormat = '#.#;-#.#'
        Properties.UseDisplayFormatWhenEditing = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clRed
        Style.IsFontAssigned = True
        TabOrder = 10
        Width = 81
      end
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 67
      Top = 59
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      TabOrder = 11
      Width = 304
    end
    object cxEdtMoney: TcxTextEdit
      Left = 807
      Top = 84
      TabOrder = 12
      Visible = False
      Width = 98
    end
  end
  inherited pnlBody: TPanel
    Top = 167
    Height = 346
    ExplicitTop = 167
    ExplicitHeight = 346
    inherited cxPgc: TcxPageControl
      Height = 346
      ExplicitHeight = 346
      ClientRectBottom = 344
      inherited cxtbsht1: TcxTabSheet
        ExplicitHeight = 316
        inherited cxgrd: TcxGrid
          Height = 316
          ExplicitHeight = 316
          inherited cxgrdtbv: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = #21512#35745#65306'0'
                Kind = skCount
                Column = cxgrdItemCode
              end
              item
                Kind = skSum
                Column = cxgrdMainNum
              end
              item
                Kind = skSum
                OnGetText = cxgrdtbvTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText
                Column = cxgrdMainMoney
              end
              item
                Kind = skSum
              end
              item
                Kind = skSum
              end>
            inherited cxgrdItemCode: TcxGridDBColumn
              Width = 95
            end
            inherited cxgrdItemName: TcxGridDBColumn
              Styles.Content = DataFM.cxStyNoEdit
              Width = 129
            end
            inherited cxgrdItemSpc: TcxGridDBColumn
              Visible = False
              Styles.Content = DataFM.cxStyNoEdit
            end
            inherited cxgrdItemPic: TcxGridDBColumn [3]
            end
            inherited cxgrdItemUnit: TcxGridDBColumn [4]
              Styles.Content = DataFM.cxStyNoEdit
              Width = 50
            end
            inherited cxgrdExchRate: TcxGridDBColumn [5]
              Visible = False
            end
            inherited cxgrdWareID: TcxGridDBColumn
              Visible = False
            end
            inherited cxgrdWareName: TcxGridDBColumn
              Visible = False
            end
            inherited cxgrdProType: TcxGridDBColumn
              Width = 90
            end
            inherited cxgrdWareNum: TcxGridDBColumn
              Styles.Content = DataFM.cxStyNoEdit
            end
            inherited cxgrdMainNum: TcxGridDBColumn
              Styles.Content = DataFM.cxStyNum
            end
            inherited cxgrdMainPrice: TcxGridDBColumn
              Styles.Content = DataFM.cxStyNum
            end
            inherited cxgrdRemark: TcxGridDBColumn
              Width = 150
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
    object dxbrbtn1: TdxBarButton [22]
      Caption = #22797' '#26680
      Category = 0
      Hint = #22797' '#26680
      Visible = ivAlways
    end
    object dxbrbtn2: TdxBarButton [23]
      Caption = #21462#28040#22797#26680
      Category = 0
      Hint = #21462#28040#22797#26680
      Visible = ivAlways
    end
  end
  inherited qyHed: TADOQuery
    object qyHedNoPayM: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'NoPayM'
      Calculated = True
    end
  end
  inherited frxHed: TfrxDBDataset
    UserName = #38144#21806#21333#20027#34920
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
      'ObjectID='#23458#25143#32534#21495
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
      'ObjectName='#23458#25143#21517#31216
      'Seller='#38144#21806#21592#32534#21495
      'SellerManName='#38144#21806#21592
      'PayMode='#20184#27454#26041#24335
      'AuditManName='#23457#26680#20154
      'MaxAuditDate='#26368#21518#23457#26680#26085#26399
      'bSelect='#26159#21542#36873#25321
      'bAuto='#26159#21542#33258#21160#29983#25104
      'SignFlag='#34013#32418#23383
      'ObjectTel='#32852#31995#20154#30005#35805
      'Address='#21457#36135#22320#22336
      'bFuHe='#26159#21542#22797#26680
      'SubjoinTableId='#28304#21333#34920#32534#21495
      'WKindName='#19994#21153#31867#22411#21517#31216
      'bCashDeal='#26159#21542#29616#37329#20132#26131
      'ObjectMobile='#32852#31995#20154#25163#26426#21495
      'ObjectLinkMan='#24448#26469#21333#20301#32852#31995#20154
      'ObjectFax='#24448#26469#21333#20301#20256#30495
      'FactMoney='#25240#25187#21518#24212#25910#37329#39069
      'PayMoney='#25910#27454#37329#39069
      'DisCount='#25240#25187#29575
      'NoPayM='#24212#25910#20313#27454)
  end
  inherited frxDet: TfrxDBDataset
    UserName = #38144#21806#21333#20174#34920
    FieldAliases.Strings = (
      'AutoID='#33258#21160#32534#21495
      'ItemId='#20135#21697#32534#21495
      'ItemUnit='#20027#21333#20301
      'SubUnit='#21103#21333#20301
      'WareId='#20179#24211#32534#21495
      'ProType='#23646#24615
      'Color='#39068#33394
      'BatchNo='#25209#21495
      'PlaceNo='#36135#20301#21495
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
      'SubMoney='#21103#22522#24681
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
      'SubjoinNo='#20851#32852#21495
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
  object qyPlaceNo: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'select Distinct sInFo=ItemId+ISNULL(WareId,'#39#39'),PlaceNo from Ware' +
        'StorageTB')
    Left = 200
    Top = 288
  end
end
