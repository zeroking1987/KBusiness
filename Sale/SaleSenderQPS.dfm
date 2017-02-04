inherited SaleSenderQFM: TSaleSenderQFM
  Caption = #38144#21806#21457#36135#26597#35810
  ExplicitWidth = 1074
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    TabOrder = 2
    inherited cxLabTitle: TcxLabel
      Caption = #38144#21806#21457#36135#26597#35810
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlFind: TPanel
    Height = 92
    TabOrder = 4
    ExplicitHeight = 92
    object Lablbl2: TLabel
      Left = 372
      Top = 11
      Width = 24
      Height = 13
      Caption = #21333#21495
    end
    object Label1: TLabel
      Left = 36
      Top = 11
      Width = 24
      Height = 13
      Caption = #26085#26399
    end
    object Label2: TLabel
      Left = 200
      Top = 8
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
      Left = 12
      Top = 68
      Width = 48
      Height = 13
      Caption = #20135#21697#21517#31216
    end
    object Label4: TLabel
      Left = 360
      Top = 39
      Width = 36
      Height = 13
      Caption = #38144#21806#21592
    end
    object Label3: TLabel
      Left = 36
      Top = 39
      Width = 24
      Height = 13
      Caption = #23458#25143
    end
    object Label6: TLabel
      Left = 360
      Top = 68
      Width = 36
      Height = 13
      Caption = #21512#21516#21495
    end
    object Label7: TLabel
      Left = 550
      Top = 11
      Width = 48
      Height = 13
      Caption = #35746#21333#31867#22411
    end
    object cxEdtBillNo: TcxTextEdit
      Left = 399
      Top = 7
      TabOrder = 0
      Width = 143
    end
    object cxdtS: TcxDateEdit
      Left = 70
      Top = 7
      TabOrder = 1
      Width = 121
    end
    object cxdtE: TcxDateEdit
      Left = 219
      Top = 7
      TabOrder = 2
      Width = 121
    end
    object cxrdgrpAudit: TcxRadioGroup
      Left = 787
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
          Caption = #25152'  '#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 2
      TabOrder = 3
      Height = 77
      Width = 78
    end
    object btnItemName: TcxButtonEdit
      Left = 70
      Top = 64
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemNamePropertiesButtonClick
      Properties.OnChange = btFindClick
      TabOrder = 4
      Width = 271
    end
    object btnEmpName: TcxButtonEdit
      Left = 399
      Top = 35
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnEmpNamePropertiesButtonClick
      TabOrder = 5
      Width = 143
    end
    object btnCustName: TcxButtonEdit
      Left = 70
      Top = 35
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnPrvNamePropertiesButtonClick
      TabOrder = 6
      TextHint = #21487#25163#21160#36755#20837#23458#25143#21517#31216#25110#28857#20987#25353#38062#36873#25321#23458#25143
      Width = 270
    end
    object cxEdtCompactNo: TcxTextEdit
      Left = 399
      Top = 64
      TabOrder = 7
      Width = 143
    end
    object cbbOrderStyle: TcxComboBox
      Left = 607
      Top = 7
      Properties.Items.Strings = (
        #20869#38144
        #22806#36152)
      TabOrder = 8
      Width = 100
    end
    object cxrdgrpStop: TcxRadioGroup
      Left = 713
      Top = 6
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
      TabOrder = 9
      Height = 77
      Width = 75
    end
    object cxrdgrpOut: TcxRadioGroup
      Left = 864
      Top = 6
      Alignment = alCenterCenter
      ParentBackground = False
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
      TabOrder = 10
      Visible = False
      Height = 77
      Width = 75
    end
  end
  inherited cxpgcntrl1: TcxPageControl
    Top = 168
    Height = 372
    ExplicitTop = 168
    ExplicitHeight = 372
    ClientRectBottom = 366
    inherited cxtbsht1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 27
      ExplicitWidth = 1066
      ExplicitHeight = 339
      inherited cxgrd: TcxGrid
        Height = 339
        ExplicitHeight = 339
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
            Visible = False
            Width = 72
          end
          object cxgrdbclmnOrderDate: TcxGridDBColumn
            Caption = #26085#26399
            DataBinding.FieldName = 'SenderDate'
            Width = 72
          end
          object cxgrdbclmnSaleOrderNo: TcxGridDBColumn
            Caption = #21457#36135#21333#21495
            DataBinding.FieldName = 'SenderNo'
            Visible = False
            Width = 107
          end
          object cxgrdbclmnCompactNo: TcxGridDBColumn
            Caption = #21512#21516#21495
            DataBinding.FieldName = 'CompactNo'
            Visible = False
            Width = 81
          end
          object cxgrdbclmnCustId: TcxGridDBColumn
            Caption = #23458#25143#32534#21495
            DataBinding.FieldName = 'CustId'
            Visible = False
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
            Visible = False
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
            DataBinding.FieldName = #21333#20301
            Width = 57
          end
          object cxgrdbclmnOrderNum: TcxGridDBColumn
            Caption = #25968#37327
            DataBinding.FieldName = 'SenderNum'
            Width = 73
          end
          object cxgrdbclmnOrderPrice: TcxGridDBColumn
            Caption = #21333#20215
            DataBinding.FieldName = 'SenderPrice'
            Width = 65
          end
          object cxgrdbclmnOrderMoney: TcxGridDBColumn
            Caption = #37329#39069
            DataBinding.FieldName = 'SenderMoney'
            Width = 69
          end
          object cxgrdbclmnRemark: TcxGridDBColumn
            Caption = #22791#27880
            DataBinding.FieldName = 'Remark'
            Width = 100
          end
          object cxgrdbclmnAllMoney: TcxGridDBColumn
            Caption = #20215#31246#21512#35745
            DataBinding.FieldName = 'AllMoney'
            Visible = False
            Width = 71
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
    inherited btTemp: TdxBarLargeButton
      Visible = ivNever
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
      'exec PrSaleSenderQ '#39#39)
    Left = 240
    object qyHedSenderDate: TDateTimeField
      FieldName = 'SenderDate'
    end
    object qyHedSenderNo: TStringField
      FieldName = 'SenderNo'
      Size = 30
    end
    object qyHedCompactNo: TStringField
      FieldName = 'CompactNo'
      Size = 30
    end
    object qyHedOrderStyle: TStringField
      FieldName = 'OrderStyle'
      Size = 30
    end
    object qyHedCustId: TStringField
      FieldName = 'CustId'
      Size = 30
    end
    object qyHedCustName: TStringField
      FieldName = 'CustName'
      Size = 50
    end
    object qyHedEmpName: TStringField
      FieldName = 'EmpName'
    end
    object qyHedItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 50
    end
    object qyHedItemName: TStringField
      FieldName = 'ItemName'
      Size = 100
    end
    object qyHedItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 100
    end
    object qyHedSenderNum: TFMTBCDField
      FieldName = 'SenderNum'
      Precision = 19
      Size = 6
    end
    object qyHedSenderPrice: TFMTBCDField
      FieldName = 'SenderPrice'
      Precision = 19
      Size = 6
    end
    object qyHedSenderMoney: TFMTBCDField
      FieldName = 'SenderMoney'
      Precision = 19
      Size = 6
    end
    object qyHedAllMoney: TFMTBCDField
      FieldName = 'AllMoney'
      Precision = 19
      Size = 6
    end
    object qyHedRemark: TStringField
      FieldName = 'Remark'
      Size = 200
    end
    object qyHedItemUnit: TStringField
      FieldName = 'ItemUnit'
      Size = 10
    end
    object qyHedProType: TStringField
      FieldName = 'ProType'
      Size = 100
    end
    object qyHedOutNum: TFMTBCDField
      FieldName = 'OutNum'
      Precision = 38
      Size = 6
    end
    object qyHedNoOutNum: TFMTBCDField
      FieldName = 'NoOutNum'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
  end
  inherited frxHed: TfrxDBDataset
    UserName = #38144#21806#21457#36135#26597#35810
    FieldAliases.Strings = (
      'SenderDate='#26085#26399
      'SenderNo='#21333#21495
      'CompactNo='#21512#21516#21495
      'OrderStyle='#35746#21333#31867#22411
      'CustId='#23458#25143#32534#21495
      'CustName='#23458#25143#21517#31216
      'EmpName='#38144#21806#21592#21517#31216
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'SenderNum='#25968#37327
      'SenderPrice='#21333#20215
      'SenderMoney='#37329#39069
      'AllMoney='#20215#31246#21512#35745
      'Remark='#22791#27880
      'ItemUnit='#21333#20301
      'ProType='#23646#24615
      'OutNum='#24050#20986#24211#25968
      'NoOutNum='#26410#20986#24211#25968)
    Left = 240
  end
end
