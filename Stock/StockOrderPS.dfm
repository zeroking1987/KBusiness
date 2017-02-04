inherited StockOrderFM: TStockOrderFM
  Caption = #37319#36141#35746#21333
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    Height = 32
    TabOrder = 1
    ExplicitHeight = 32
    inherited cxLabTitle: TcxLabel
      Caption = #37319#36141#35746#21333
      Style.IsFontAssigned = True
      ExplicitHeight = 32
      Height = 32
      AnchorX = 97
      AnchorY = 16
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
    Top = 512
    Height = 24
    TabOrder = 3
    ExplicitTop = 512
    ExplicitHeight = 24
    inherited Label3: TLabel
      Left = 103
      ExplicitLeft = 103
    end
    inherited Label4: TLabel
      Left = 243
      ExplicitLeft = 243
    end
    inherited Label5: TLabel
      Left = 335
      ExplicitLeft = 335
    end
    inherited Label6: TLabel
      Left = 474
      ExplicitLeft = 474
    end
    inherited Label7: TLabel
      Left = 592
      ExplicitLeft = 592
    end
    inherited Label8: TLabel
      Left = 762
      ExplicitLeft = 762
    end
    inherited cxEdtMakeDate: TcxDBTextEdit
      Left = 157
      ExplicitLeft = 157
    end
    inherited cxEdtEditManName: TcxDBTextEdit
      Left = 279
      ExplicitLeft = 279
    end
    inherited cxEdtEditDate: TcxDBTextEdit
      Left = 389
      ExplicitLeft = 389
    end
    inherited cxEdtAuditManName: TcxDBTextEdit
      Left = 516
      ExplicitLeft = 516
    end
    inherited cxEdtAuditDate: TcxDBTextEdit
      Left = 638
      ExplicitLeft = 638
    end
    inherited cxEdtAuditFlag: TcxDBTextEdit
      Left = 816
      ExplicitLeft = 816
      ExplicitWidth = 42
      Width = 42
    end
  end
  inherited pnlEdit: TPanel
    Top = 78
    Height = 76
    ExplicitTop = 78
    ExplicitHeight = 76
    object Label11: TLabel [0]
      Left = 303
      Top = 4
      Width = 36
      Height = 13
      Caption = #37319#36141#21592
    end
    object Label12: TLabel [1]
      Left = 24
      Top = 4
      Width = 36
      Height = 13
      Caption = #20379#24212#21830
    end
    object Label13: TLabel [2]
      Left = 466
      Top = 4
      Width = 48
      Height = 13
      Caption = #20184#27454#26041#24335
    end
    object Label14: TLabel [3]
      Left = 490
      Top = 29
      Width = 24
      Height = 13
      Caption = #22791#27880
    end
    object Label10: TLabel [4]
      Left = 12
      Top = 29
      Width = 48
      Height = 13
      Caption = #25910#36135#22320#22336
    end
    object Label15: TLabel [5]
      Left = 290
      Top = 4
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
    object Label16: TLabel [6]
      Left = 315
      Top = 29
      Width = 24
      Height = 13
      Caption = #30005#35805
    end
    object lbl1: TLabel [7]
      Left = 12
      Top = 53
      Width = 48
      Height = 13
      Caption = #26816#32034#21333#25454
    end
    object cxBtReqMan: TcxDBButtonEdit [8]
      Left = 342
      Top = 0
      DataBinding.DataField = 'EmpName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxBt1PropertiesButtonClick
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      TabOrder = 0
      Width = 121
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 677
      TabOrder = 1
      ExplicitLeft = 677
      ExplicitHeight = 71
      Height = 71
      inherited Label1: TLabel
        Top = 15
        ExplicitTop = 15
      end
      inherited Label9: TLabel
        Top = 43
        ExplicitTop = 43
      end
      inherited cxEdtNo: TcxDBTextEdit
        Top = 11
        DataBinding.DataField = 'StockOrderNO'
        Style.IsFontAssigned = True
        ExplicitTop = 11
      end
      inherited cxdt: TcxDBDateEdit
        Top = 39
        DataBinding.DataField = 'OrderDate'
        ExplicitTop = 39
      end
    end
    object cbbPayMode: TcxDBComboBox
      Left = 521
      Top = 0
      DataBinding.DataField = 'PayMode'
      DataBinding.DataSource = dsHed
      TabOrder = 2
      Width = 150
    end
    object cxMoRemark: TcxDBMemo
      Left = 521
      Top = 25
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.ScrollBars = ssVertical
      TabOrder = 3
      Visible = False
      Height = 21
      Width = 150
    end
    object cxPupEdtRemark: TcxDBPopupEdit
      Left = 521
      Top = 25
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.PopupControl = cxMoRemark
      TabOrder = 4
      Width = 150
    end
    object cxPrvAdd: TcxDBTextEdit
      Left = 66
      Top = 25
      DataBinding.DataField = 'PrvAddress'
      DataBinding.DataSource = dsHed
      TabOrder = 5
      Width = 220
    end
    object cxObject: TcxDBButtonEdit
      Left = 66
      Top = 0
      DataBinding.DataField = 'PrvName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000BAC6C178BF9E
            72BF9C72BF9C73C09D74C19D75C19E75C19E75C19E75C19E74C19D73C09D72BF
            9C72BF9C77BF9EBAC6C165C09635BD7E2EBC7A34C07F3BC48440C78944CA8B46
            CB8D45CB8D43C98B3FC78839C38333BF7E2CBB7934BC7D64C0965FC19514B36A
            19B86F23BE762CC47D33C98338CD873BCE893ACE8937CC8631C8812AC37B21BD
            7417B76D12B2685FC19460C2951BB87023BE772FC68039CD886EDFB069E0AD4B
            D8964BD89547D69340D18D37CC862CC47D21BD7419B76E5FC19562C29523BD76
            2DC57E3ACE887FE4BBF7FDFCF0FCF87CE9B85BE2A257DF9E4EDA9844D49037CC
            862AC37B20BB7361C29562C3972AC27B35CB857BE3B9F9FEFCFFFFFFFFFFFFF2
            FDF98AEFC165E8A95BE2A24EDA9840D18D31C88126BF7862C29663C3972FC57F
            7BE2BAF9FEFCFFFFFFF4FAF7FAFDFCFFFFFFF4FDF98FF2C465E8A957DF9E47D6
            9337CC862BC27C62C39764C49733C683DBF2E8FFFFFFEAF7F174DFAC86E0B6F9
            FCFBFFFFFFF4FDFA8AEFC15BE2A24BD8953ACE892EC47E63C39764C49732C781
            4BCC90C4E8D868DAA56EEEB17AF6BA88E2B7F8FCFAFFFFFFF2FDF97DE9B94BD8
            963BCE892EC47E63C39763C4972FC67F3CCF8A45D2905CE3A26AEBAD75F2B67B
            F6BB85E0B5F9FCFAFFFFFFF0FCF869E0AD38CD872CC37C62C39762C3972BC27C
            37CC8646D59154DE9C60E6A66AEBAD6EEEB16EEEB07EDBB0F9FCFBFFFFFFEDFC
            F755D6A027C07962C39662C29625BE772FC6803DCF8A49D79454DE9C5CE3A260
            E5A65FE5A55AE1A174D6A9F8FCFAFFFFFFBDEAD921BC7561C29561C2951DBA71
            26C07932C8823DCF8A46D5914DD99750DB994FDB994BD89644D4906CD0A2CCEC
            DD2FBD7C1BB86F60C29560C29516B56B1CBA7126C0792FC68037CC863CCF8A3F
            D18C3FD08C3BCE8935CA842DC57E1FB97219B86F13B3695FC19564C09636BD7F
            30BD7C37C2813EC68743CA8B47CC8E49CE8F49CE8F46CC8D42C98A3CC58535C1
            802EBC7A34BC7E63C095B5C6BE76BF9D73BF9C72C09C74C09D75C19E75C29E76
            C29F76C29F75C29E75C19E74C09D72C09C72BF9C75BF9DB5C6BE}
          Hint = #36873#25321#25152#26377#20379#24212#21830
          Kind = bkGlyph
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxObjectPropertiesButtonClick
      TabOrder = 6
      Width = 220
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 342
      Top = 25
      DataBinding.DataField = 'PrvTel'
      DataBinding.DataSource = dsHed
      TabOrder = 7
      Width = 121
    end
    object cExbbBillFind: TcxExtLookupComboBox
      Left = 66
      Top = 50
      Properties.ButtonGlyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000100000009000000140000001F00000028000000290000
        0022000000180000000B00000002000000000000000000000000000000000000
        00000000000300000013010E045D012209AC02320CDE023C0FF7023C0FF70231
        0CE1012008B4000D03680000001A000000050000000000000000000000000000
        000300000014011D078D074917EC197630FF299746FF3BAF59FF41B35EFF39A3
        55FF26833EFF0B4A1AF1011A069E0000001F0000000400000000000000010000
        000E022009880B5A1EF91F883AFF29A44BFF28A44AFF26A148FF259E46FF2A9F
        49FF30A44EFF2F9A4AFF115F23FC011A069D0000001900000002000000050112
        054D0B501BE52A8E45FF36B25BFF2FB155FF238F42FF125E23FF125D22FF1F88
        3CFF249E46FF259A43FF238F3DFF074515EF000D03650000000A000000090430
        0E9622803BFF4FC274FF4FC474FF308C4CFF247334FFF5F8F5FFF5F8F5FF2277
        33FF1D7F37FF25A147FF239942FF126B26FF012108B1000000160000000B064E
        17CC43AB66FF57CE81FF34884EFF50975FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF4F9E62FF1A7933FF24A046FF177C30FF03330DDE0000001F0000000A0869
        20F06DD297FF5BD58BFF2D7E3FFFFFFFFFFFD1E3D6FFF6F9F7FFF6F9F7FFD1E4
        D6FFFFFFFFFF298D40FF28A94DFF1E8F3BFF034211F600000024000000090B77
        26F08EE4B8FF62DD9CFF277641FF388B4DFF195527FFF3F7F4FFF3F7F4FF145C
        22FF36974DFF177D2EFF2CB053FF209441FF034411F600000022000000060B6A
        24C693DFB8FF7EE9B7FF5EDD9CFF5ADA93FF328B53FFF6F9F7FFF7F9F8FF2B88
        45FF3CC166FF30B95BFF2EB658FF1C893BFF033A10D80000001A00000003094D
        1B8879D09DFFA7F3D5FF67E6AFFF61E1A3FF37915CFFEFF4EFFFEFF5F0FF2D8C
        49FF46C972FF3AC365FF34BB5EFF14782FFF03290BA200000010000000010422
        0C3A369D56E1B8EDD4FF97F1CFFF69E7B2FF4EB882FF2D8847FF2C8E45FF3EAD
        64FF4ACE77FF4ECD78FF34A556FF0A581DE50112055100000006000000000000
        00020A451A6D5EC382F8C1F1DBFFBAF6E0FF92EFC8FF70E6ADFF67E1A1FF72E0
        9FFF7BDD9FFF5DBE7DFF1C7B35F703290C810000000D00000001000000000000
        0000000000020A471B6C3EA75FE199E0B8FFC6F0DDFFD8F8E9FFCAF4DEFF9EE1
        BAFF5EB87BFF1B7432E3042E0E7B0000000C0000000200000000000000000000
        0000000000000000000105240E380C562085107C2DC4119134EF0E8A2FEF0A69
        22C70642158B021A084100000007000000010000000000000000000000000000
        0000000000000000000000000001000000020000000300000005000000050000
        0005000000040000000200000000000000000000000000000000}
      Properties.DropDownRows = 10
      Properties.View = cxgrdbtblvwBillFind
      Properties.KeyFieldNames = #21333#21495
      Properties.ListFieldItem = cxgrdbclmnBillFindColumn1
      Properties.OnChange = cxExtLookupComboBox1PropertiesChange
      TabOrder = 8
      Width = 605
    end
  end
  inherited pnlBody: TPanel
    Top = 154
    Height = 358
    ExplicitTop = 154
    ExplicitHeight = 358
    inherited cxPgc: TcxPageControl
      Height = 358
      ExplicitHeight = 358
      ClientRectBottom = 352
      inherited cxtbsht1: TcxTabSheet
        ExplicitLeft = 2
        ExplicitTop = 27
        ExplicitWidth = 1036
        ExplicitHeight = 325
        inherited cxgrd: TcxGrid
          Height = 325
          ExplicitHeight = 325
          inherited cxgrdtbv: TcxGridDBTableView
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
                Format = #21512#35745':0'
                Kind = skCount
                Column = cxgrdbclmnItemCode
              end>
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.IncSearch = True
            OptionsBehavior.IncSearchItem = cxgrdbclmnItemName
            object cxgrdbclmnItemCode: TcxGridDBColumn
              Caption = #20135#21697#20195#21495
              DataBinding.FieldName = 'ItemCode'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdbclmnItemCodePropertiesButtonClick
              Properties.OnValidate = cxgrdbclmnItemCodePropertiesValidate
              Width = 70
            end
            object cxgrdbclmnItemPYCode: TcxGridDBColumn
              Caption = #25340#38899#30721
              DataBinding.FieldName = 'ItemPYCode'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.AutoSelect = False
              Properties.DropDownWidth = 500
              Properties.KeyFieldNames = 'ItemPYCode'
              Properties.ListColumns = <
                item
                  Caption = #25340#38899#30721
                  Width = 80
                  FieldName = 'ItemPYCode'
                end
                item
                  Caption = #20135#21697#21517#31216
                  Width = 150
                  FieldName = 'ItemName'
                end
                item
                  Caption = #20135#21697#20195#21495
                  Width = 150
                  FieldName = 'ItemCode'
                end
                item
                  Caption = #35268#26684
                  Width = 120
                  FieldName = 'ItemSpc'
                end>
              Properties.MaxLength = 200
              Visible = False
              Width = 64
            end
            object cxgrdbclmnItemName: TcxGridDBColumn
              Caption = #20135#21697#21517#31216
              DataBinding.FieldName = 'ItemName'
              Options.Editing = False
              Width = 126
            end
            object cxgrdbclmnItemSpc: TcxGridDBColumn
              Caption = #35268#26684
              DataBinding.FieldName = 'ItemSpc'
              Options.Editing = False
              Width = 59
            end
            object cxgrdbclmnItemUnit: TcxGridDBColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'ItemUnit'
              Options.Editing = False
              Width = 46
            end
            object cxgrdbclmnSubUnit: TcxGridDBColumn
              Caption = #21103#21333#20301
              DataBinding.FieldName = 'SubUnit'
              Options.Editing = False
            end
            object cxgrdbclmnExchRate: TcxGridDBColumn
              Caption = #36716#21270#29575
              DataBinding.FieldName = 'ExchRate'
              Options.Editing = False
              Width = 57
            end
            object cxgrdbclmnProType: TcxGridDBColumn
              Caption = #23646#24615
              DataBinding.FieldName = 'ProType'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdbclmnProTypePropertiesButtonClick
              Width = 61
            end
            object cxgrdtbvColumn1: TcxGridDBColumn
              Caption = #39068#33394
              DataBinding.FieldName = 'sColor'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdtbvColumn1PropertiesButtonClick
              Width = 56
            end
            object cxgrdbclmnOrderNum: TcxGridDBColumn
              Caption = #25968#37327'*'
              DataBinding.FieldName = 'OrderNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnOrderNumPropertiesValidate
              Width = 63
            end
            object cxgrdbclmnSubNum: TcxGridDBColumn
              Caption = #21103#25968#37327
              DataBinding.FieldName = 'SubNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnSubNumPropertiesValidate
              Width = 80
            end
            object cxgrdbclmnOrderPrice: TcxGridDBColumn
              Caption = #21333#20215
              DataBinding.FieldName = 'OrderPrice'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnOrderPricePropertiesValidate
              Width = 62
            end
            object cxgrdbclmnTaxPrice: TcxGridDBColumn
              Caption = #21547#31246#20215
              DataBinding.FieldName = 'TaxPrice'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnTaxPricePropertiesValidate
              Width = 63
            end
            object cxgrdbclmnTaxRate: TcxGridDBColumn
              Caption = #31246#29575'%'
              DataBinding.FieldName = 'TaxRate'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnTaxRatePropertiesValidate
              Width = 59
            end
            object cxgrdbclmnOrderMoney: TcxGridDBColumn
              Caption = #37329#39069
              DataBinding.FieldName = 'OrderMoney'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 75
            end
            object cxgrdbclmnAllMoney: TcxGridDBColumn
              Caption = #20215#31246#21512#35745
              DataBinding.FieldName = 'AllMoney'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 90
            end
            object cxgrdbclmnDeliveDate: TcxGridDBColumn
              Caption = #20132#36135#26085#26399
              DataBinding.FieldName = 'DeliverDate'
              Width = 94
            end
            object cxgrdbclmnRemark: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 94
            end
            object cxgrdbclmnRfNo: TcxGridDBColumn
              Caption = #35831#36141#21333#21495
              DataBinding.FieldName = 'RfNo'
              Width = 80
            end
          end
          object cxgrdbtblvwBillFind: TcxGridDBTableView [1]
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            DataController.DataSource = dsFind
            DataController.KeyFieldNames = #21333#21495
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.PullFocusing = True
            OptionsData.Editing = False
            OptionsView.NoDataToDisplayInfoText = #24658#21019#36719#20214
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 35
            object cxgrdbclmnBillFindDBColumn: TcxGridDBColumn
              DataBinding.FieldName = #26085#26399
              Width = 86
            end
            object cxgrdbclmnBillFindDBColumn1: TcxGridDBColumn
              DataBinding.FieldName = #21333#20301
              Width = 211
            end
            object cxgrdbclmnBillFindDBColumn2: TcxGridDBColumn
              DataBinding.FieldName = #21333#21495
              Width = 114
            end
            object cxgrdbclmnBillFindDBColumn3: TcxGridDBColumn
              DataBinding.FieldName = #21046#21333#20154
              Width = 73
            end
            object cxgrdbclmnBillFindColumn1: TcxGridDBColumn
              DataBinding.FieldName = #20449#24687
              Visible = False
              Width = 265
            end
          end
        end
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    Left = 920
    Top = 54
    DockControlHeights = (
      0
      0
      46
      0)
    inherited btAddL: TdxBarLargeButton
      OnClick = btAddLClick
    end
    inherited btDelL: TdxBarLargeButton
      OnClick = btDelLClick
    end
    inherited btFind: TdxBarLargeButton
      OnClick = btFindClick
    end
    inherited btRefer: TdxBarLargeButton
      OnClick = btReferClick
    end
    inherited btUnCheck: TdxBarLargeButton
      OnClick = btUnCheckClick
    end
  end
  inherited PupBpm: TdxBarPopupMenu
    Left = 880
    Top = 54
  end
  inherited dsHed: TDataSource
    Left = 152
  end
  inherited qyHed: TADOQuery
    OnCalcFields = qyHedCalcFields
    SQL.Strings = (
      'select * from StockOrderHDTB where IsNull(bMaxAudit,0)=0')
    Left = 192
    object blnfldHedbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyHedStockOrderNO: TStringField
      FieldName = 'StockOrderNO'
    end
    object dtmfldHedOrderDate: TDateTimeField
      FieldName = 'OrderDate'
    end
    object qyHedPrvId: TStringField
      FieldName = 'PrvId'
      Size = 30
    end
    object qyHedSubjoinNo: TStringField
      FieldName = 'SubjoinNo'
    end
    object qyHedPayMode: TStringField
      FieldName = 'PayMode'
      Size = 30
    end
    object qyHedTheme: TStringField
      FieldName = 'Theme'
      Size = 200
    end
    object qyHedRemark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
    object blnfldHedbPrint: TBooleanField
      FieldName = 'bPrint'
    end
    object smlntfldHedPrintNum: TSmallintField
      FieldName = 'PrintNum'
      OnChange = smlntfldHedPrintNumChange
    end
    object dtmfldHedMakeDate: TDateTimeField
      FieldName = 'MakeDate'
    end
    object qyHedMakeMan: TStringField
      FieldName = 'MakeMan'
    end
    object qyHedMakeManName: TStringField
      FieldName = 'MakeManName'
      Size = 30
    end
    object qyHedEditMan: TStringField
      FieldName = 'EditMan'
      Size = 30
    end
    object qyHedEditManName: TStringField
      FieldName = 'EditManName'
      Size = 30
    end
    object dtmfldHedEditDate: TDateTimeField
      FieldName = 'EditDate'
    end
    object smlntfldHedAuditFlag: TSmallintField
      FieldName = 'AuditFlag'
    end
    object blnfldHedbMaxAudit: TBooleanField
      FieldName = 'bMaxAudit'
    end
    object qyHedAuditManName: TStringField
      FieldName = 'AuditManName'
      Size = 50
    end
    object qyHedAuditDate: TStringField
      FieldName = 'AuditDate'
      Size = 100
    end
    object dtmfldHedMaxAuditDate: TDateTimeField
      FieldName = 'MaxAuditDate'
    end
    object qyHedEmpId: TStringField
      FieldName = 'EmpId'
      Size = 30
    end
    object qyHedPrvName: TStringField
      FieldKind = fkCalculated
      FieldName = 'PrvName'
      Size = 100
      Calculated = True
    end
    object qyHedEmpName: TStringField
      FieldKind = fkCalculated
      FieldName = 'EmpName'
      Calculated = True
    end
    object qyHedPrvAddress: TStringField
      FieldKind = fkCalculated
      FieldName = 'PrvAddress'
      ReadOnly = True
      Size = 120
      Calculated = True
    end
    object qyHedAutoID: TLargeintField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object qyHedPrvTel: TStringField
      FieldKind = fkCalculated
      FieldName = 'PrvTel'
      Size = 100
      Calculated = True
    end
    object qyHedPrvFax: TStringField
      FieldKind = fkCalculated
      FieldName = 'PrvFax'
      Size = 100
      Calculated = True
    end
    object qyHedbAllIn: TBooleanField
      FieldName = 'bAllIn'
    end
  end
  inherited qyDet: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyDetAfterInsert
    SQL.Strings = (
      'select * from StockOrderDTTB')
    object qyDetItemPYCode: TStringField
      FieldName = 'ItemPYCode'
      Size = 50
    end
    object blnfldDetbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyDetItemID: TStringField
      FieldName = 'ItemID'
      OnChange = qyDetItemIDChange
      Size = 30
    end
    object qyDetsColor: TStringField
      FieldName = 'sColor'
      Size = 50
    end
    object qyDetProType: TStringField
      FieldName = 'ProType'
      Size = 100
    end
    object fmtbcdfldDetSubNum: TFMTBCDField
      FieldName = 'SubNum'
      Precision = 18
      Size = 5
    end
    object qyDetRemark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
    object qyDetStockOrderNo: TStringField
      FieldName = 'StockOrderNo'
    end
    object fmtbcdfldDetOrderNum: TFMTBCDField
      FieldName = 'OrderNum'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldDetTaxRate: TFMTBCDField
      FieldName = 'TaxRate'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldDetTaxPrice: TFMTBCDField
      FieldName = 'TaxPrice'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldDetTaxMoney: TFMTBCDField
      FieldName = 'TaxMoney'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldDetOrderMoney: TFMTBCDField
      FieldName = 'OrderMoney'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldDetSubPrice: TFMTBCDField
      FieldName = 'SubPrice'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldDetSubTaxPrice: TFMTBCDField
      FieldName = 'SubTaxPrice'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldDetSubMoney: TFMTBCDField
      FieldName = 'SubMoney'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldDetAllMoney: TFMTBCDField
      FieldName = 'AllMoney'
      Precision = 18
      Size = 5
    end
    object blnfldDetbTax: TBooleanField
      FieldName = 'bTax'
    end
    object fmtbcdfldDetOrderPrice: TFMTBCDField
      FieldName = 'OrderPrice'
      Precision = 18
      Size = 5
    end
    object qyDetAutoID: TLargeintField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object qyDetRfNo: TStringField
      FieldName = 'RfNo'
      Size = 30
    end
    object qyDetItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 50
    end
    object qyDetItemName: TStringField
      FieldName = 'ItemName'
      Size = 100
    end
    object qyDetItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 100
    end
    object qyDetItemPic: TStringField
      FieldName = 'ItemPic'
      Size = 100
    end
    object qyDetItemUnit: TStringField
      FieldName = 'ItemUnit'
      Size = 10
    end
    object qyDetSubUnit: TStringField
      FieldName = 'SubUnit'
      Size = 10
    end
    object qyDetDeliverDate: TDateTimeField
      FieldName = 'DeliverDate'
    end
    object smlntfldDetiFlag: TSmallintField
      FieldName = 'iFlag'
    end
    object fmtbcdfldDetExchRate: TFMTBCDField
      FieldName = 'ExchRate'
      Precision = 18
      Size = 9
    end
    object strngfldDetAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 100
    end
    object qyDetRfId: TStringField
      FieldName = 'RfId'
      Size = 100
    end
  end
  inherited pmLayout: TPopupMenu
    object N1: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = #37319#36141#20837#24211#21333
      OnClick = N2Click
    end
  end
  inherited frxHed: TfrxDBDataset
    UserName = #37319#36141#35746#21333#20027#34920
    FieldAliases.Strings = (
      'bSelect='#26159#21542#36873#25321
      'StockOrderNO='#37319#36141#35746#21333#21495
      'OrderDate='#26085#26399
      'PrvId='#20379#24212#21830#32534#21495
      'SubjoinNo='#20851#32852#21495
      'PayMode='#20184#27454#26041#24335
      'Theme='#20027#39064
      'Remark='#22791#27880
      'bPrint='#26159#21542#25171#21360
      'PrintNum='#25171#21360#27425#25968
      'MakeDate='#21046#21333#26085#26399
      'MakeMan='#21046#21333#20154#32534#21495
      'MakeManName='#21046#21333#20154#22995#21517
      'EditMan='#20462#25913#20154#32534#21495
      'EditManName='#20462#25913#20154
      'EditDate='#20462#25913#26085#26399
      'AuditFlag='#23457#26680#26631#24535
      'bMaxAudit='#26159#21542#26368#22823#23457#26680
      'AuditManName='#23457#26680#20154
      'AuditDate='#23457#26680#26085#26399
      'MaxAuditDate='#26368#21518#23457#26680#26085#26399
      'EmpId='#37319#36141#21592#32534#21495
      'PrvName='#20379#24212#21830
      'EmpName='#37319#36141#21592
      'PrvAddress='#25910#36135#22320#22336
      'AutoID='#33258#21160#32534#21495
      'PrvTel='#20379#24212#21830#30005#35805
      'PrvFax='#20379#24212#21830#20256#30495
      'bAllIn='#26159#21542#24050#20837#23436#24211)
    Left = 232
  end
  inherited frxDet: TfrxDBDataset
    UserName = #37319#36141#35746#21333#20174#34920
    FieldAliases.Strings = (
      'ItemPYCode='#25340#38899#30721
      'bSelect='#26159#21542#36873#25321
      'ItemID='#20135#21697#32534#21495
      'sColor='#39068#33394
      'ProType='#23646#24615
      'SubNum='#21103#25968#37327
      'Remark='#22791#27880
      'StockOrderNo='#37319#36141#35746#21333#21495
      'OrderNum='#20027#25968#37327
      'TaxRate='#31246#29575
      'TaxPrice='#21547#31246#20215
      'TaxMoney='#31246#39069
      'OrderMoney='#35746#21333#37329#39069
      'SubPrice='#21103#21333#20215
      'SubTaxPrice='#21103#21547#31246#20215
      'SubMoney='#21103#37329#39069
      'AllMoney='#20215#31246#21512#35745
      'bTax='#26159#21542#21547#31246
      'OrderPrice='#20027#21333#20215
      'AutoID='#33258#21160#32534#21495
      'RfNo=RfNo'
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#20135#21697#35268#26684
      'ItemPic=ItemPic'
      'ItemUnit='#20027#21333#20301
      'SubUnit='#21103#21333#20301
      'DeliverDate='#20132#36135#26085#26399
      'iFlag='#36716#25442#26041#21521
      'ExchRate='#36716#21270#29575
      'AutoNo=AutoNo'
      'RfId=RfId')
    Top = 320
  end
  object qyFind: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'exec prBillFind  '#39'StockOrderHDTB'#39)
    Left = 120
    Top = 288
  end
  object dsFind: TDataSource
    DataSet = qyFind
    Left = 120
    Top = 256
  end
end
