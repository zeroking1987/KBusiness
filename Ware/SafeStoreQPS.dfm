inherited SafeStoreQFM: TSafeStoreQFM
  Caption = #24211#23384#39044#35686#20998#26512
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    TabOrder = 2
    inherited cxLabTitle: TcxLabel
      Caption = #24211#23384#39044#35686#20998#26512
      Style.IsFontAssigned = True
      ExplicitTop = 0
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlFind: TPanel
    Height = 45
    TabOrder = 4
    ExplicitHeight = 45
    object btnItemKind: TcxButtonEdit
      Left = 389
      Top = 11
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemKindPropertiesButtonClick
      ShowHint = True
      TabOrder = 0
      Width = 149
    end
    object cxItem: TcxButtonEdit
      Left = 54
      Top = 11
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxItemPropertiesButtonClick
      ShowHint = True
      TabOrder = 1
      TextHint = #21487#36755#20837#20135#21697#20195#21495#12289#21517#31216#12289#35268#26684#12289#25340#38899#30721#26597#35810
      Width = 277
    end
    object cxlbl6: TcxLabel
      Left = 336
      Top = 13
      Caption = #20135#21697#31867#21035
      Transparent = True
    end
    object cxlbl7: TcxLabel
      Left = 20
      Top = 13
      Caption = #20135#21697
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 544
      Top = 13
      Caption = #21028#26029#26465#20214
      Transparent = True
    end
    object cbbTJ: TcxComboBox
      Left = 603
      Top = 11
      Properties.Items.Strings = (
        '<'
        '>'
        '='
        #25152#26377)
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      TabOrder = 5
      Text = '<'
      Width = 70
    end
    object cbbValue: TcxComboBox
      Left = 670
      Top = 11
      Properties.Items.Strings = (
        #23433#20840#24211#23384)
      TabOrder = 6
      Text = #23433#20840#24211#23384
      Width = 86
    end
  end
  inherited cxpgcntrl1: TcxPageControl
    Top = 121
    Height = 419
    ExplicitTop = 121
    ExplicitHeight = 419
    ClientRectBottom = 413
    inherited cxtbsht1: TcxTabSheet
      ExplicitHeight = 386
      inherited cxgrd: TcxGrid
        Height = 386
        ExplicitHeight = 386
        inherited cxgrdtbv: TcxGridDBTableView
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Column = cxgrdtbvWareNum
            end
            item
              Kind = skSum
              Column = cxgrdtbvSafeStore
            end
            item
              Kind = skSum
              Column = cxgrdtbvOverNum
            end>
          object cxgrdtbvItemKindName: TcxGridDBColumn
            Caption = #20135#21697#31867#21035
            DataBinding.FieldName = 'ItemKindName'
            Width = 100
          end
          object cxgrdtbvItemCode: TcxGridDBColumn
            Caption = #20135#21697#20195#21495
            DataBinding.FieldName = 'ItemCode'
            Width = 86
          end
          object cxgrdtbvItemName: TcxGridDBColumn
            Caption = #20135#21697#21517#31216
            DataBinding.FieldName = 'ItemName'
            Width = 187
          end
          object cxgrdtbvItemSpc: TcxGridDBColumn
            Caption = #35268#26684
            DataBinding.FieldName = 'ItemSpc'
            Width = 100
          end
          object cxgrdtbvItemPic: TcxGridDBColumn
            Caption = #20135#21697#22270#21495
            DataBinding.FieldName = 'ItemPic'
            Visible = False
            Width = 100
          end
          object cxgrdtbvItemUnit: TcxGridDBColumn
            Caption = #21333#20301
            DataBinding.FieldName = 'ItemUnit'
            Width = 60
          end
          object cxgrdtbvWareNum: TcxGridDBColumn
            Caption = #24403#21069#24211#23384
            DataBinding.FieldName = 'WareNum'
            Width = 100
          end
          object cxgrdtbvSafeStore: TcxGridDBColumn
            Caption = #23433#20840#24211#23384
            DataBinding.FieldName = 'SafeStore'
            Width = 100
          end
          object cxgrdtbvOverNum: TcxGridDBColumn
            Caption = #24046#25968
            DataBinding.FieldName = 'OverNum'
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
    inherited btRefer: TdxBarLargeButton
      Hint = #24341#29992#20854#20182#21333#25454
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
    inherited btInvoice: TdxBarLargeButton
      Caption = #35831' '#36141
      Hint = #33258#21160#29983#25104#20302#20110#23433#20840#24211#23384#30340#20135#21697#35831#36141#21333
      Visible = ivAlways
      LargeGlyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000B392142279F6DA93DCA96D136BF
        8AC718764B810411091400000000000000000000000000000000000000001818
        181C292929302A2A2A302A2A2A302A2A2A302A2A2A302A2A2A302A2A2A302A2A
        2A302A2A2A302A2A2A3029292930187244894AEEB2FD66F8D2FF62EFC9FF65F4
        CFFF5FF7CAFF30CC87E31D3929462727272E02020202000000000A0A0A0CE0E0
        E0F3F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
        F0FFF0F0F0FFF0F0F0FFADDFC1FF3BE099FF53EEB9FF53EEBAFF8CD1AFFF69DC
        AFFF55F1BDFF4EEBB2FF46D48BFFEAEDEBFF5D5D5D6A000000000D0D0D10F4F4
        F4FFF1F1F1FFE8E8E8FFE9E9E9FFE9E9E9FFE8E8E8FFEDEDEDFFEDEDEDFFEDED
        EDFFEDEDEDFFEDEDEDFF4EBC79FF39D68FFF3AD894FF38D491FFCDEBDCFF76D7
        AAFF3AD895FF3ADA95FF2DC779FFB0DABDFF7272727E000000000D0D0D10F9F9
        F9FFEFEFEFFFE9E9E9FFEAEAEAFFECECECFFEAEAEAFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFF1F913FFF22AF5EFF75BD91FF91C1A0FFE5EEE7FFB6D4
        BEFF92C3A2FF44B876FF1FA553FF84BE91FF77777781000000000D0D0D10FAFA
        FAFFEEEEEEFFE2E2E2FFE4E3E3FFE5E5E5FFE4E3E3FFF4F4F4FFF4F4F4FFF4F4
        F4FFF4F4F4FFF4F4F4FF197020FF12812CFF6FB985FF8FCDA5FFE4F0E8FFB4DB
        C2FF90CCA4FF3A9D56FF117723FF85B288FF78787881000000000D0D0D10F9F9
        F9FFF0F0F0FFE9E9E9FFEAEAEAFFECECECFFEAEAEAFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFF4D8046FF206C23FF29833BFF2D8F49FFCEE1D4FF74B2
        86FF2E8E47FF287D36FF195F15FFB9CEB6FF7676767E000000000D0D0D10FAFA
        FAFFF0F0F0FFE9E9E9FFEAEAEAFFECECECFFEAEAEAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFB9CDB6FF296623FF3E7F45FF448850FF8DB696FF659F
        71FF43874EFF3C7C41FF407437FFFBFCFAFF78787881000000000D0D0D10FAFA
        FAFFEEEEEEFFE2E2E2FFE3E3E3FFE5E5E5FFE4E3E3FFF4F4F4FFF4F4F4FFF4F4
        F4FFF4F4F4FFF4F4F4FFF4F4F4FF8BA885FF3F7C43FF559666FF599A6BFF599A
        6BFF51925FFF477C44FFCFD8CDFFFFFFFFFF78787881000000000D0D0D10F9F9
        F9FFF0F0F0FFE9E9E9FFEAEAEAFFECECECFFEAEAEAFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFF4F4F4FFCBD8C8FF7EA37DFF6A9A6FFF719D
        74FF9AB597FFF0F4EFFFF4F4F4FFFEFEFEFF7676767E000000000D0D0D10FAFA
        FAFFEEEEEEFFE2E2E2FFE3E3E3FFE5E5E5FFE4E3E3FFF4F4F4FFF4F4F4FFF4F4
        F4FFF4F4F4FFF4F4F4FFF4F4F4FFEBEBEBFFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
        F4FFF4F4F4FFF4F4F4FFEDEDEDFFFFFFFFFF78787881000000000D0D0D10FAFA
        FAFFF0F0F0FFE9E9E9FFEAEAEAFFECECECFFEAEAEAFFFEFEFEFFFFFFFFFFFFFF
        FFFFFEFEFEFFFFFFFFFFFFFFFFFFF4F4F4FFFFFFFFFFFFFFFFFFFEFEFEFFFFFF
        FFFFFFFFFFFFFEFEFEFFF4F4F4FFFFFFFFFF78787881000000000D0D0D10F9F9
        F9FFEEEEEEFFE2E2E2FFE3E3E3FFE5E5E5FFE4E3E3FFF4F4F4FFF4F4F4FFF4F4
        F4FFF4F4F4FFF4F4F4FFF4F4F4FFEBEBEBFFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
        F4FFF4F4F4FFF4F4F4FFEDEDEDFFFEFEFEFF78787881000000000D0D0D10FAFA
        FAFFF0F0F0FFE9E9E9FFEAEAEAFFECECECFFEAEAEAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF4F4F4FFFFFFFFFF7676767E000000000D0D0D10FAFA
        FAFFEEE1DCFFE0BDAFFFE3C0B2FFE7C3B5FFE2BFB1FFECC9BBFFEDCABCFFEECB
        BDFFF0CDBEFFF1CDBFFFF1CEBFFFE7C5B6FFECC9BAFFEDCABBFFEECBBCFFEFCC
        BEFFF0CDBFFFF1CEBFFFEBCFC4FFFFFFFFFF78787881000000000D0D0D10F9F9
        F9FFEBCDC1FFE08C68FFEA9571FFF39D7AFFE28F6DFFE08C68FFE48F6BFFE994
        70FFEE9875FFF29C79FFF49D7AFFE18E6CFFDF8B67FFE28E6AFFE8936FFFED98
        74FFF19C78FFF39D7AFFEAA68BFFFEFEFEFF78787881000000000D0D0D10E7E7
        E7FFE2DCDAFFD5C3C1FFD8C7C0FFD7C8C2FFD6C7BDFFD5C7BDFFD9C6BEFFD9C7
        BEFFDAC7BFFFDAC7BFFFDAC7BFFFD9C6BEFFD9C6BEFFD9C6BEFFD9C6BEFFDAC7
        BFFFDAC7BFFFDAC7BFFFDCCDC6FFEAEAEAFF6F6F6F7E000000000D0D0D10ECEC
        ECFFABAEE0FF7279DAFF9AC3EAFF81BAEBFF7FCC9DFF80CFA1FFF1F1F1FFF1F1
        F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
        F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FF7171717E00000000030303049999
        99A5C7C7C9D3BDBDC4D3C3C6C9D3BEC2C7D3C2C5C2D3C2C6C2D3CCCCCCD3CCCC
        CCD3CCCCCCD3CCCCCCD3CCCCCCD3CCCCCCD3CCCCCCD3CCCCCCD3CCCCCCD3CCCC
        CCD3CCCCCCD3CCCCCCD3CCCCCCD3C1C1C1CB2D2D2D3400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btInvoiceClick
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
      'exec PrSafeStoreQ '#39#39)
    Left = 240
    object qyHedItemKindId: TStringField
      FieldName = 'ItemKindId'
    end
    object qyHedItemKindName: TStringField
      FieldName = 'ItemKindName'
      Size = 30
    end
    object qyHedItemId: TStringField
      FieldName = 'ItemId'
      Size = 30
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
    object qyHedWareNum: TFMTBCDField
      FieldName = 'WareNum'
      Precision = 38
      Size = 6
    end
    object qyHedSafeStore: TBCDField
      FieldName = 'SafeStore'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qyHedOverNum: TBCDField
      FieldName = 'OverNum'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qyHedItemPic: TStringField
      FieldName = 'ItemPic'
      Size = 50
    end
    object qyHedItemUnit: TStringField
      FieldName = 'ItemUnit'
      Size = 10
    end
  end
  inherited frxHed: TfrxDBDataset
    UserName = #37319#36141#35746#21333#21333#26597#35810
    FieldAliases.Strings = (
      'ItemKindId='#20135#21697#31867#21035#32534#21495
      'ItemKindName='#20135#21697#31867#21035#21517#31216
      'ItemId='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#20135#21697#35268#26684
      'WareNum='#24403#21069#24211#23384
      'SafeStore='#23433#20840#24211#23384
      'OverNum='#24046#25968
      'ItemPic='#20135#21697#22270#21495
      'ItemUnit='#21333#20301)
    Left = 240
  end
end
