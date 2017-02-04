inherited SaleOrderQFM: TSaleOrderQFM
  Caption = #38144#21806#35746#21333#26597#35810
  ClientHeight = 499
  ClientWidth = 1061
  ExplicitWidth = 1061
  ExplicitHeight = 499
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Width = 1061
    TabOrder = 2
    ExplicitWidth = 1061
    inherited cxLabTitle: TcxLabel
      Caption = #38144#21806#35746#21333#26597#35810
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlFind: TPanel
    Width = 1061
    Height = 125
    TabOrder = 4
    ExplicitWidth = 1061
    ExplicitHeight = 125
    object Lablbl2: TLabel
      Left = 370
      Top = 4
      Width = 24
      Height = 13
      Caption = #21333#21495
    end
    object Label1: TLabel
      Left = 9
      Top = 4
      Width = 48
      Height = 13
      Caption = #21333#25454#26085#26399
    end
    object Label2: TLabel
      Left = 193
      Top = 1
      Width = 12
      Height = 19
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 9
      Top = 74
      Width = 48
      Height = 13
      Caption = #20135#21697#21517#31216
    end
    object Label4: TLabel
      Left = 355
      Top = 50
      Width = 36
      Height = 13
      Caption = #38144#21806#21592
    end
    object Label3: TLabel
      Left = 33
      Top = 50
      Width = 24
      Height = 13
      Caption = #23458#25143
    end
    object Label6: TLabel
      Left = 358
      Top = 27
      Width = 36
      Height = 13
      Caption = #21512#21516#21495
    end
    object Label7: TLabel
      Left = 9
      Top = 27
      Width = 48
      Height = 13
      Caption = #20132#36135#26085#26399
    end
    object Label8: TLabel
      Left = 193
      Top = 24
      Width = 12
      Height = 19
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxEdtBillNo: TcxTextEdit
      Left = 397
      Top = 0
      Properties.OnChange = btFindClick
      TabOrder = 0
      Width = 143
    end
    object cxdtS: TcxDateEdit
      Left = 62
      Top = 1
      TabOrder = 1
      Width = 121
    end
    object cxdtE: TcxDateEdit
      Left = 211
      Top = 0
      TabOrder = 2
      Width = 121
    end
    object cxrdgrpAudit: TcxRadioGroup
      Left = 694
      Top = 0
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
      Height = 91
      Width = 75
    end
    object btnItemName: TcxButtonEdit
      Left = 62
      Top = 70
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemNamePropertiesButtonClick
      Properties.OnChange = btFindClick
      TabOrder = 4
      TextHint = #21487#25163#21160#36755#20837#20135#21697#21517#31216#25110#28857#20987#25353#38062#36873#25321#20135#21697
      Width = 270
    end
    object btnEmpName: TcxButtonEdit
      Left = 397
      Top = 46
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnEmpNamePropertiesButtonClick
      Properties.OnChange = btFindClick
      TabOrder = 5
      Width = 143
    end
    object btnCustName: TcxButtonEdit
      Left = 62
      Top = 46
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnPrvNamePropertiesButtonClick
      Properties.OnChange = btFindClick
      TabOrder = 6
      TextHint = #21487#25163#21160#36755#20837#23458#25143#21517#31216#25110#28857#20987#25353#38062#36873#25321#23458#25143
      Width = 270
    end
    object cxEdtCompactNo: TcxTextEdit
      Left = 397
      Top = 23
      Properties.OnChange = btFindClick
      TabOrder = 7
      Width = 143
    end
    object cxrdgrpSender: TcxRadioGroup
      Left = 768
      Top = 0
      Alignment = alCenterCenter
      Ctl3D = True
      ParentCtl3D = False
      Properties.Items = <
        item
          Caption = #26410#21457#36135
        end
        item
          Caption = #24050#21457#36135
        end
        item
          Caption = #25152#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 2
      TabOrder = 8
      Height = 91
      Width = 75
    end
    object cxrdgrpOut: TcxRadioGroup
      Left = 916
      Top = 0
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = #26410#20986#24211
        end
        item
          Caption = #24050#20986#24211
        end
        item
          Caption = #25152#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 2
      TabOrder = 9
      Height = 91
      Width = 75
    end
    object cxrdgrpStop: TcxRadioGroup
      Left = 546
      Top = 0
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = #26410#20572#27490
        end
        item
          Caption = #24050#20572#27490
        end
        item
          Caption = #25152#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 0
      TabOrder = 10
      Height = 91
      Width = 75
    end
    object btnItemKind: TcxButtonEdit
      Left = 397
      Top = 70
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemKindPropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 11
      Width = 143
    end
    object cxlbl6: TcxLabel
      Left = 342
      Top = 72
      Caption = #20135#21697#31867#21035
      Transparent = True
    end
    object cxdtJHS: TcxDateEdit
      Left = 62
      Top = 23
      TabOrder = 13
      Width = 121
    end
    object cxdtJHE: TcxDateEdit
      Left = 211
      Top = 23
      TabOrder = 14
      Width = 121
    end
    object cxrdgrpIn: TcxRadioGroup
      Left = 842
      Top = 0
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
      TabOrder = 15
      Height = 91
      Width = 75
    end
    object cxrgpSubmit: TcxRadioGroup
      Left = 620
      Top = 0
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = #26410#25552#20132
        end
        item
          Caption = #24050#25552#20132
        end
        item
          Caption = #25152#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 0
      TabOrder = 16
      Height = 91
      Width = 75
    end
    object cxlbl3: TcxLabel
      Left = 29
      Top = 97
      Caption = #23646#24615
      Transparent = True
    end
    object cxColor: TcxButtonEdit
      Left = 211
      Top = 95
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxColorPropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 18
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 185
      Top = 97
      Caption = #39068#33394
      Transparent = True
    end
    object cxProType: TcxButtonEdit
      Left = 62
      Top = 95
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxProTypePropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 20
      Width = 121
    end
  end
  inherited cxpgcntrl1: TcxPageControl
    Top = 201
    Width = 1061
    Height = 298
    ExplicitTop = 180
    ExplicitWidth = 1061
    ExplicitHeight = 319
    ClientRectBottom = 292
    ClientRectRight = 1055
    inherited cxtbsht1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 27
      ExplicitWidth = 1053
      ExplicitHeight = 286
      inherited cxgrd: TcxGrid
        Width = 1053
        Height = 265
        ExplicitWidth = 1053
        ExplicitHeight = 286
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
              Column = cxgrdtbvColumn1
            end
            item
              Kind = skSum
              Column = cxgrdtbvColumn2
            end
            item
              Kind = skSum
              Column = cxgrdtbvColumn3
            end
            item
              Kind = skSum
              Column = cxgrdtbvColumn4
            end
            item
              Format = #21512#35745':0'
              Kind = skCount
              Column = cxgrdbclmnOrderDate
            end>
          DataController.Summary.SummaryGroups = <
            item
              Links = <>
              SummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'AllMoney'
                  Column = cxgrdbclmnAllMoney
                end
                item
                  Kind = skSum
                  FieldName = 'OrderNum'
                  Column = cxgrdbclmnOrderNum
                end>
            end>
          object cxgrdbclmnOrderStyle: TcxGridDBColumn
            Caption = #35746#21333#31867#22411
            DataBinding.FieldName = 'OrderStyle'
            Width = 72
          end
          object cxgrdbclmnOrderDate: TcxGridDBColumn
            Caption = #35746#21333#26085#26399
            DataBinding.FieldName = 'OrderDate'
            Width = 70
          end
          object cxgrdbclmnSaleOrderNo: TcxGridDBColumn
            Caption = #35746#21333#21495
            DataBinding.FieldName = 'SaleOrderNo'
            Width = 107
          end
          object cxgrdbclmnCompactNo: TcxGridDBColumn
            Caption = #21512#21516#21495
            DataBinding.FieldName = 'CompactNo'
            Width = 81
          end
          object cxgrdbclmnCustId: TcxGridDBColumn
            Caption = #23458#25143#32534#21495
            DataBinding.FieldName = 'CustId'
            Width = 72
          end
          object cxgrdbclmnCustName: TcxGridDBColumn
            Caption = #23458#25143#21517#31216
            DataBinding.FieldName = 'CustName'
            Width = 156
          end
          object cxgrdbclmnEmpName: TcxGridDBColumn
            Caption = #38144#21806#21592
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
          object cxgrdtbvColumn5: TcxGridDBColumn
            Caption = #20132#36135#26085#26399
            DataBinding.FieldName = 'DeliverDate'
            Width = 70
          end
          object cxgrdtbvColumn8: TcxGridDBColumn
            Caption = #23646#24615
            DataBinding.FieldName = 'ProType'
            Width = 60
          end
          object cxgrdtbvColumn9: TcxGridDBColumn
            Caption = #39068#33394
            DataBinding.FieldName = 'Color'
            Width = 60
          end
          object cxgrdbclmnOrderNum: TcxGridDBColumn
            Caption = #35746#21333#25968#37327
            DataBinding.FieldName = 'OrderNum'
            Width = 73
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
          object cxgrdtbvColumn1: TcxGridDBColumn
            Caption = #24050#21457#36135#25968#37327
            DataBinding.FieldName = 'SenderNum'
            Width = 73
          end
          object cxgrdtbvColumn2: TcxGridDBColumn
            Caption = #26410#21457#36135#25968#37327
            DataBinding.FieldName = 'NoSenderNum'
            Width = 73
          end
          object cxgrdtbvColumn3: TcxGridDBColumn
            Caption = #24050#20986#24211#25968#37327
            DataBinding.FieldName = 'OutNum'
            Width = 73
          end
          object cxgrdtbvColumn4: TcxGridDBColumn
            Caption = #26410#20986#24211#25968#37327
            DataBinding.FieldName = 'NoOutNum'
            Width = 73
          end
          object cxgrdtbvColumn6: TcxGridDBColumn
            Caption = #24050#20837#24211#25968#37327
            DataBinding.FieldName = 'InNum'
            Width = 76
          end
          object cxgrdtbvColumn7: TcxGridDBColumn
            Caption = #26410#20837#24211#25968#37327
            DataBinding.FieldName = 'NoInNum'
            Width = 74
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
    inherited btLeft: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btRight: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btFirst: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btLast: TdxBarLargeButton
      Visible = ivNever
    end
    inherited dxbrcmbPageIndex: TdxBarCombo
      Visible = ivNever
    end
    inherited cxbrdtmPage: TcxBarEditItem
      Visible = ivNever
    end
  end
  inherited dsHed: TDataSource
    Left = 240
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'exec PrSaleOrderQ '#39#39)
    Left = 240
  end
  inherited frxHed: TfrxDBDataset
    UserName = #38144#21806#35746#21333#26597#35810
    FieldAliases.Strings = (
      'OrderDate='#35746#21333#26085#26399
      'SaleOrderNo='#35746#21333#21495
      'CompactNo='#21512#21516#21495
      'OrderStyle='#35746#21333#31867#22411
      'CustId='#23458#25143#32534#21495
      'CustName='#23458#25143#21517#31216
      'EmpName='#38144#21806#21592
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'DeliverDate='#20132#36135#26085#26399
      'ProType='#23646#24615
      'Color='#35201#20320#35828
      'OrderNum='#35746#21333#25968#37327
      'OrderPrice='#21333#20215
      'OrderMoney='#20027#37329#39069
      'AllMoney='#20215#31246#21512#35745
      'SenderNum='#24050#21457#36135#25968#37327
      'NoSenderNum='#26410#21457#36135#25968#37327
      'OutNum='#24050#20986#24211#25968#37327
      'NoOutNum='#26410#20986#24211#25968#37327
      'InNum='#24050#20837#24211#25968#37327
      'NoInNum='#26410#20837#24211#25968#37327
      'bSubmit='#26159#21542#25552#20132
      'Remark='#22791#27880)
    Left = 240
  end
end
