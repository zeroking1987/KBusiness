inherited StockOrderQFM: TStockOrderQFM
  Caption = #37319#36141#35746#21333#26597#35810
  ExplicitWidth = 1074
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    TabOrder = 2
    inherited cxLabTitle: TcxLabel
      Caption = #37319#36141#35746#21333#26597#35810
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlFind: TPanel
    Height = 82
    TabOrder = 4
    ExplicitHeight = 82
    object cxEdtBillNo: TcxTextEdit
      Left = 383
      Top = 5
      TabOrder = 0
      Width = 143
    end
    object cxdtS: TcxDateEdit
      Left = 59
      Top = 5
      TabOrder = 1
      Width = 121
    end
    object cxdtE: TcxDateEdit
      Left = 208
      Top = 5
      TabOrder = 2
      Width = 121
    end
    object cxrdgrpAudit: TcxRadioGroup
      Left = 720
      Top = 6
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = #26410#23457#26680
        end
        item
          Caption = #24050#23457#26680
        end
        item
          Caption = #25152#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 2
      TabOrder = 3
      Height = 75
      Width = 78
    end
    object btnItemName: TcxButtonEdit
      Left = 383
      Top = 30
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemNamePropertiesButtonClick
      TabOrder = 4
      Width = 143
    end
    object btnEmpName: TcxButtonEdit
      Left = 571
      Top = 5
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnEmpNamePropertiesButtonClick
      TabOrder = 5
      Width = 143
    end
    object btnPrvName: TcxButtonEdit
      Left = 59
      Top = 56
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnPrvNamePropertiesButtonClick
      TabOrder = 6
      Width = 270
    end
    object cxrdgrpIn: TcxRadioGroup
      Left = 797
      Top = 6
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = #26410#20837#24211
        end
        item
          Caption = #24050#20837#24211
        end
        item
          Caption = #25152#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 2
      TabOrder = 7
      Height = 75
      Width = 78
    end
    object cxLabel1: TcxLabel
      Left = 28
      Top = 7
      Caption = #26085#26399
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 354
      Top = 7
      Caption = #21333#21495
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 330
      Top = 32
      Caption = #20135#21697#21517#31216
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 13
      Top = 58
      Caption = #20379#24212#21830
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 528
      Top = 7
      Caption = #37319#36141#21592
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 186
      Top = 7
      Caption = '~'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clRed
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxdtS2: TcxDateEdit
      Left = 59
      Top = 30
      TabOrder = 14
      Width = 121
    end
    object cxdtE2: TcxDateEdit
      Left = 208
      Top = 30
      TabOrder = 15
      Width = 121
    end
    object cxLabel7: TcxLabel
      Left = 4
      Top = 32
      Caption = #20132#36135#26085#26399
      Transparent = True
    end
    object cxLabel8: TcxLabel
      Left = 186
      Top = 32
      Caption = '~'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clRed
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxlbl3: TcxLabel
      Left = 537
      Top = 32
      Caption = #23646#24615
      Transparent = True
    end
    object cxColor: TcxButtonEdit
      Left = 383
      Top = 56
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxColorPropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 19
      Width = 143
    end
    object cxLabel9: TcxLabel
      Left = 354
      Top = 58
      Caption = #39068#33394
      Transparent = True
    end
    object cxProType: TcxButtonEdit
      Left = 571
      Top = 30
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxProTypePropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 21
      Width = 143
    end
  end
  inherited cxpgcntrl1: TcxPageControl
    Top = 158
    Height = 382
    ExplicitTop = 148
    ExplicitHeight = 392
    ClientRectBottom = 376
    inherited cxtbsht1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 27
      ExplicitWidth = 1066
      ExplicitHeight = 359
      inherited cxgrd: TcxGrid
        Height = 349
        ExplicitHeight = 359
        inherited cxgrdtbv: TcxGridDBTableView
          OnDblClick = cxgrdtbvDblClick
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxgrdbclmnOrderNum
            end
            item
              Kind = skSum
              Column = cxgrdbclmnOrderMoney
            end
            item
              Kind = skSum
              Column = cxgrdbclmnAllMoney
            end
            item
              Kind = skSum
              Column = cxgrdbclmnColumn1
            end
            item
              Kind = skSum
              Column = cxgrdbclmnColumn2
            end>
          object cxgrdbclmnOrderDate: TcxGridDBColumn
            Caption = #35746#21333#26085#26399
            DataBinding.FieldName = 'OrderDate'
            Width = 71
          end
          object cxgrdbclmnStockOrderNo: TcxGridDBColumn
            Caption = #35746#21333#21495
            DataBinding.FieldName = 'StockOrderNo'
            Width = 107
          end
          object cxgrdbclmnPrvId: TcxGridDBColumn
            Caption = #20379#24212#21830#32534#21495
            DataBinding.FieldName = 'PrvId'
            Visible = False
            Width = 81
          end
          object cxgrdbclmnPrvName: TcxGridDBColumn
            Caption = #20379#24212#21830#21517#31216
            DataBinding.FieldName = 'PrvName'
            Width = 179
          end
          object cxgrdbclmnEmpName: TcxGridDBColumn
            Caption = #37319#36141#21592
            DataBinding.FieldName = 'EmpName'
            Width = 62
          end
          object cxgrdbclmnItemCode: TcxGridDBColumn
            Caption = #20135#21697#20195#21495
            DataBinding.FieldName = 'ItemCode'
            Width = 77
          end
          object cxgrdbclmnItemName: TcxGridDBColumn
            Caption = #20135#21697#21517#31216
            DataBinding.FieldName = 'ItemName'
            Width = 110
          end
          object cxgrdbclmnItemSpc: TcxGridDBColumn
            Caption = #20135#21697#35268#26684
            DataBinding.FieldName = 'ItemSpc'
            Width = 74
          end
          object cxgrdtbvColumn1: TcxGridDBColumn
            Caption = #20132#36135#26085#26399
            DataBinding.FieldName = 'DeliveDate'
            Width = 80
          end
          object cxgrdtbvColumn2: TcxGridDBColumn
            Caption = #23646#24615
            DataBinding.FieldName = 'ProType'
            Width = 60
          end
          object cxgrdtbvColumn3: TcxGridDBColumn
            Caption = #39068#33394
            DataBinding.FieldName = 'sColor'
            Width = 60
          end
          object cxgrdbclmnOrderNum: TcxGridDBColumn
            Caption = #35746#21333#25968#37327
            DataBinding.FieldName = 'OrderNum'
            Width = 73
          end
          object cxgrdbclmnColumn1: TcxGridDBColumn
            Caption = #26410#20837#24211#25968#37327
            DataBinding.FieldName = 'NoInNum'
            Width = 75
          end
          object cxgrdbclmnColumn2: TcxGridDBColumn
            Caption = #24050#20837#24211#25968#37327
            DataBinding.FieldName = 'InNum'
            Width = 75
          end
          object cxgrdbclmnOrderPrice: TcxGridDBColumn
            Caption = #21333#20215
            DataBinding.FieldName = 'OrderPrice'
            Width = 65
          end
          object cxgrdbclmnOrderMoney: TcxGridDBColumn
            Caption = #37329#39069
            DataBinding.FieldName = 'OrderMoney'
            Width = 69
          end
          object cxgrdbclmnAllMoney: TcxGridDBColumn
            Caption = #20215#31246#21512#35745
            DataBinding.FieldName = 'AllMoney'
            Width = 71
          end
          object cxgrdbclmnRemark: TcxGridDBColumn
            Caption = #22791#27880
            DataBinding.FieldName = 'Remark'
            Width = 100
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
    inherited btFind: TdxBarLargeButton
      OnClick = btFindClick
    end
  end
  inherited dsHed: TDataSource
    Left = 240
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'exec PrStockOrderQ '#39#39)
    Left = 240
  end
  inherited frxHed: TfrxDBDataset
    UserName = #37319#36141#35746#21333#26597#35810
    FieldAliases.Strings = (
      'OrderDate='#35746#21333#26085#26399
      'StockOrderNo='#35746#21333#21495
      'PrvId='#20379#24212#21830#32534#21495
      'PrvName='#20379#24212#21830#21517#31216
      'EmpName='#37319#36141#21592
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'OrderNum='#35746#21333#25968#37327
      'OrderPrice='#21333#20215
      'OrderMoney='#37329#39069
      'AllMoney='#20215#31246#21512#35745
      'DeliverDate='#20132#36135#26085#26399
      'ProType='#23646#24615
      'sColor='#39068#33394
      'NoInNum='#26410#20837#24211#25968
      'InNum='#24050#20837#24211#25968
      'Remark='#22791#27880)
    Left = 240
  end
end
