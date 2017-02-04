inherited StockInQFM: TStockInQFM
  Caption = #36827#36135#21333#26597#35810
  ExplicitWidth = 1074
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    TabOrder = 2
    inherited cxLabTitle: TcxLabel
      Caption = #36827#36135#21333#26597#35810
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlFind: TPanel
    Height = 61
    TabOrder = 4
    ExplicitHeight = 61
    object cxEdtBillNo: TcxTextEdit
      Left = 526
      Top = 4
      Properties.OnChange = btFindClick
      TabOrder = 0
      Width = 115
    end
    object cxdtS: TcxDateEdit
      Left = 59
      Top = 4
      TabOrder = 1
      Width = 121
    end
    object cxdtE: TcxDateEdit
      Left = 208
      Top = 4
      TabOrder = 2
      Width = 121
    end
    object btnObject: TcxButtonEdit
      Left = 526
      Top = 34
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnObjectPropertiesButtonClick
      Properties.OnChange = btFindClick
      TabOrder = 3
      Width = 270
    end
    object cxLabel1: TcxLabel
      Left = 28
      Top = 6
      Caption = #26085#26399
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 496
      Top = 6
      Caption = #21333#21495
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 484
      Top = 36
      Caption = #20379#24212#21830
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 186
      Top = 6
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
    object cxItem: TcxButtonEdit
      Left = 62
      Top = 34
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxItemPropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 8
      TextHint = #21487#36755#20837#20135#21697#20195#21495#12289#21517#31216#12289#35268#26684#12289#25340#38899#30721#26597#35810
      Width = 410
    end
    object cxlbl7: TcxLabel
      Left = 28
      Top = 36
      Caption = #20135#21697
      Transparent = True
    end
    object cxbtNextM: TcxButton
      Left = 423
      Top = 2
      Width = 49
      Height = 25
      Hint = #36873#25321#19979#26376
      Caption = #19979#26376
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000230000
        0033000000330000003300000033000000330000003300000033000000330000
        0033000000330000003300000023000000000000000000000000585654C07A77
        73FF767370FF76736FFF76736FFF767370FF767370FF767370FF767370FF7673
        70FF777370FF7B7774FF595654C00000000000000000000000007D7A77FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF8B7B7DFF0000000000000000000000007C7B77FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFFDFDEDFFFFFFFFFFFFFFF
        FFFFFFFFFFFF51B588FF00873EFF000000330000000000000000807C7AFFFFFF
        FFFFFBFBFBFFFFFFFFFF232323FFB4B4B4FF6C6C6CFF625F61FF776E72FFFFFF
        FFFFFFFFFFFF007E36FF4DD8ACFF008744FF000000330000000083807EFFFFFF
        FFFFF8F7F7FFFFFFFFFF2A2A2AFFFFFFFFFFFFFFFFFFFFFFFFFF026538FF0082
        38FF007F37FF00B579FF00D79FFF65D7B3FF008744FF00000033868381FFFFFF
        FFFFF5F5F4FFFFFFFFFF2D2D2DFFEEEEECFF656364FF574A50FF00893EFF5DEA
        CDFF00CE9DFF00CC9CFF00CB9AFF00CD9CFF74DABDFF008A48FF898783FFFFFF
        FFFFF3F3F2FFE5E5E4FF303030FFFFFFFFFF595758FFFFFFFFFF00883DFF5AE4
        CBFF5DE0C7FF62DEC6FF00C49AFF00C59CFF86DEC8FF008A48FF8C8A87FFFFFF
        FFFFF0F0EFFF414141FF2D2D2DFFFEFEFDFF3A3839FF6B6165FF016336FF0082
        37FF008036FF00A979FF00BF9EFF9BE0D0FF008743FF00000000928F89FFFFFF
        FFFFECEAE7FFF3F1EEFFC1BFBDFFF3F1EDFFF4F1EEFFF7F2F0FFFCF1F2FFFFF1
        F3FFFFF3F9FF008236FF9FE4D4FF008941FF0000000000000000A39B88FFFFFF
        FDFFF4EFDFFFF7F3E4FFF9F4E5FFF7F3E2FFF7F2E0FFF7F2E1FFF8F2E4FFFAF3
        E5FFFFF5E9FF5FBE82FF009135FF0000000000000000000000000020E7FF526F
        EFFF0015E5FF000AB1FF000CB2FF0019E7FF0018E3FF0018E6FF000BB1FF000C
        B2FF0018E9FF5D72F6FF0122EEFF0000000000000000000000000138F1FF9DB3
        FBFF96AFFFFFC0BAA4FF81714CFF99B2FFFF9BB2FCFF97B0FFFFC1BBA4FF8171
        4CFF99B2FFFF9FB4FDFF0338F2FF0000000000000000000000005173D2FF0648
        FEFF0042FFFFBDB7A4FF978B6EFF0045FFFF0648FDFF0043FFFFBDB7A4FF978B
        6EFF0045FFFF0748FEFF5173D2FF000000000000000000000000000000000000
        000000000000BDB6A2FFB2A68FFF000000000000000000000000BDB6A2FFB2A6
        8FFF000000000000000000000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = cxbtNextMClick
    end
    object cxbtNowM: TcxButton
      Left = 375
      Top = 2
      Width = 49
      Height = 25
      Hint = #36873#25321#26412#26376
      Caption = #26412#26376
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000020000
        000A000000100000001100000011000000110000001200000012000000120000
        0012000000120000001300000013000000120000000C000000030000000A8159
        4CC2B47C69FFB37B69FFB37B68FFB37A68FFB37A68FFB27A68FFB37968FFB279
        68FFB27967FFB27867FFB17867FFB17866FF7F5649C30000000B0000000EB77F
        6EFFFBF7F4FFF9F0EBFFFBF5F1FFFBF7F4FFFBF7F4FFF9F3EEFFF7EDE7FFFAF4
        EFFFFBF6F3FFFBF6F3FFF9F3EFFFF6ECE5FFB47B69FF000000110000000EB984
        72FFFBF8F5FFDAD0C9FF776258FF563D32FF553D32FFA3948DFFF8F1ECFF806B
        62FF543B31FF543B30FF7E6961FFF7EDE7FFB77F6EFF000000110000000EBC89
        78FFFCF9F7FFAF9F97FF8F7B71FFF8F0EBFFD9CDC7FF573F33FFC3B5AFFFF8EF
        EAFF97867EFF816E64FFF7EEE8FFF8EEE9FFB98472FF000000100000000DC08E
        7DFFFCFAF8FFFAF3EFFFF9F2EEFFFCF9F7FFE7E0DBFF5A4034FFCEC3BBFFF9F1
        ECFF99887FFF837066FFF8EFEAFFF8F1EBFFBC8977FF000000100000000CC394
        82FFFCFBF9FFFBF5F2FFFBF4F1FF5D4336FF725A4FFFB2A39CFFFAF3EFFFFAF2
        EEFF9B8980FF847268FFF9F2EDFFF9F2EEFFC08E7CFF0000000F0000000BC798
        87FFFDFCFAFFFCF8F5FFFDFAF9FFFBF6F2FFBDB0A9FF7F685EFFFAF4F1FFFCF9
        F6FF9D8C84FF877268FFFAF3F0FFFAF4F0FFC49381FF0000000E0000000BC99D
        8CFFFDFCFBFFD3C9C4FF6D5346FFFEFBFAFFBFB3ADFF614639FFF1EAE7FF8974
        6AFF5F4538FF88746AFFFAF5F2FFFAF6F2FFC69886FF0000000D0000000ACDA1
        90FFFEFDFCFFFCF9F8FF8C786DFF65493AFF63483BFFA18E85FFFCF7F6FFFCF7
        F6FFBEB1AAFF8B756AFFFBF6F5FFFBF7F5FFC99D8BFF0000000D00000009CFA5
        94FFFEFDFDFFFDFAF9FFFDF9F9FFFDFAF8FFFDF9F8FFFDFAF8FFFCF9F7FFFCF9
        F7FFFCF9F7FFFDF8F7FFFCF9F7FFFCF9F7FFCCA290FF0000000C000000084B53
        C3FF8D9EECFF687CE3FF6678E2FF6476E1FF6172E0FF5F70DFFF5D6CDEFF5B69
        DCFF5966DBFF5664DAFF5462D9FF616DDCFF3337AAFF0000000B000000084C55
        C4FF93A4EEFF6C80E6FF6A7EE4FF687BE4FF6678E2FF6375E1FF6172E0FF5E6F
        DEFF5C6CDDFF5A69DCFF5766DAFF6472DDFF3538ABFF0000000A000000074D56
        C6FF96A7EFFF95A6EFFF93A4EDFF90A2EDFF8F9FEDFF8B9BEBFF8898EAFF8595
        EAFF8291E7FF7F8DE7FF7D89E5FF7987E5FF3539ACFF00000009000000043A40
        93C14D55C5FF4B53C3FF4A51C1FF484FBFFF464DBEFF444BBBFF4249B9FF4046
        B7FF3E44B4FF3C41B3FF3A3EB0FF393CAEFF282B80C200000006000000010000
        0004000000060000000600000006000000070000000700000007000000070000
        0007000000070000000800000008000000070000000500000001}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = cxbtNowMClick
    end
    object cxbtLastM: TcxButton
      Left = 327
      Top = 2
      Width = 49
      Height = 25
      Hint = #36873#25321#19978#26376
      Caption = #19978#26376
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000002300000033000000330000003300000033000000330000
        0033000000330000003300000033000000330000003300000023000000000000
        0000000000005D5656C07D7775FF787471FF767370FF76736FFF767370FF7673
        70FF767370FF767370FF76736FFF767370FF7A7773FF585654C0000000000000
        000000000000877B7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D7A77FF000000000000
        000000000033008841FF16995EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDD
        DDFFDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C7B77FF000000000000
        0033008745FF4FD8ADFF007F37FFFFFFFFFFFFFFFFFF2C2428FFB6B3B5FF6C6C
        6CFF606060FF6D6D6DFFFFFFFFFFFAFAFAFFFFFFFFFF807C7AFF000000330087
        44FF65D7B3FF00D89FFF00B579FF007F37FF008238FF016336FFFFFFFFFFFFFF
        FFFFFFFFFFFF292929FFFFFFFFFFF7F6F6FFFFFFFFFF83807EFF008A48FF74DA
        BDFF00CD9CFF00CB9AFF00CC9CFF00CE9DFF5CE9CCFF008439FFF6E9EDFF6462
        63FF494949FF7A7A7BFFF9FAF8FFF3F3F2FFFFFFFFFF868381FF008A48FF86DE
        C8FF00C59CFF00C49AFF62DEC6FF5DE0C7FF59E3CBFF008338FFFFFFFFFF5755
        57FFFFFFFFFFFDFDFCFFF2F2F1FFEEEEEDFFFFFFFEFF898783FF000000000087
        43FF9BE0D0FF00BF9EFF00A979FF008037FF008237FF006033FFFFFBFDFF3837
        38FF5F5E5EFF585757FFEEEEEDFFE9E9E8FFFFFEFFFF8C8A87FF000000000000
        0000008842FFA0E4D5FF008337FFFFF4FAFFFFF2F4FFC6BCBEFFF4EFEDFFF3F1
        EEFFF3F1EEFFF0EFEBFFEBE9E6FFE9E7E3FFFFFFFEFF928F89FF000000000000
        000000000000008F3BFF23A55BFFFFF5EAFFFBF3E6FFF9F4E5FFF7F2E2FFF7F2
        E0FFF7F2E1FFF6F2E3FFF5F1E2FFF4EFDFFFFFFFFDFFA39B88FF000000000000
        0000000000000225EBFF5B77ECFF0018E9FF000BB1FF000CB2FF0019E7FF0018
        E3FF0018E6FF000BB1FF000BB2FF0016E6FF526FEFFF0020E7FF000000000000
        0000000000000436F6FF9FB3FEFF97AFFFFFC1BBA4FF81714CFF99B2FFFF9BB2
        FCFF97B0FFFFC1BBA4FF81714CFF98B1FFFF9DB4FCFF0138F1FF000000000000
        0000000000005172D3FF0648FEFF0042FFFFBDB7A4FF978B6EFF0045FFFF0648
        FDFF0043FFFFBDB7A4FF978B6EFF0045FFFF0748FEFF5173D2FF000000000000
        000000000000000000000000000000000000BDB6A2FFB2A68FFF000000000000
        000000000000BDB6A2FFB2A68FFF000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnClick = cxbtLastMClick
    end
  end
  inherited cxpgcntrl1: TcxPageControl
    Top = 147
    Height = 393
    ExplicitTop = 147
    ExplicitHeight = 393
    ClientRectBottom = 391
    inherited cxtbsht1: TcxTabSheet
      ExplicitHeight = 363
      inherited cxgrd: TcxGrid
        Height = 363
        ExplicitHeight = 363
        inherited cxgrdtbv: TcxGridDBTableView
          OnDblClick = cxgrdtbvDblClick
          FindPanel.DisplayMode = fpdmAlways
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxgrdtbvMainNum
            end
            item
              Kind = skSum
              Column = cxgrdtbvMainMoney
            end
            item
              Kind = skSum
              Column = cxgrdtbvColumn4
            end
            item
              Kind = skSum
              Column = cxgrdtbvColumn5
            end>
          object cxgrdtbvBillNo: TcxGridDBColumn
            Caption = #21333#21495
            DataBinding.FieldName = 'BillNo'
            Options.CellMerging = True
            Width = 91
          end
          object cxgrdtbvBillDate: TcxGridDBColumn
            Caption = #26085#26399
            DataBinding.FieldName = 'BillDate'
            Options.CellMerging = True
            Width = 68
          end
          object cxgrdtbvSingFlag: TcxGridDBColumn
            Caption = #31867#22411
            DataBinding.FieldName = 'SingFlag'
            Visible = False
            Options.CellMerging = True
            Width = 51
          end
          object cxgrdtbvObjectId: TcxGridDBColumn
            Caption = #23458#25143#32534#21495
            DataBinding.FieldName = 'ObjectId'
            Visible = False
            Options.CellMerging = True
            Width = 69
          end
          object cxgrdtbvObjectName: TcxGridDBColumn
            Caption = #20379#24212#21830
            DataBinding.FieldName = 'ObjectName'
            Options.CellMerging = True
            Width = 135
          end
          object cxgrdtbvColumn6: TcxGridDBColumn
            Caption = #34920#22836#22791#27880
            DataBinding.FieldName = 'HRemark'
            Options.CellMerging = True
            Width = 84
          end
          object cxgrdtbvItemCode: TcxGridDBColumn
            Caption = #20135#21697#20195#21495
            DataBinding.FieldName = 'ItemCode'
            Width = 80
          end
          object cxgrdtbvItemName: TcxGridDBColumn
            Caption = #20135#21697#21517#31216
            DataBinding.FieldName = 'ItemName'
            Width = 85
          end
          object cxgrdtbvItemSpc: TcxGridDBColumn
            Caption = #35268#26684
            DataBinding.FieldName = 'ItemSpc'
            Width = 78
          end
          object cxgrdtbvItemUnit: TcxGridDBColumn
            Caption = #21333#20301
            DataBinding.FieldName = 'ItemUnit'
            Width = 47
          end
          object cxgrdtbvColumn1: TcxGridDBColumn
            Caption = #23646#24615
            DataBinding.FieldName = 'ProType'
            Width = 66
          end
          object cxgrdtbvMainNum: TcxGridDBColumn
            Caption = #25968#37327
            DataBinding.FieldName = 'MainNum'
            Width = 53
          end
          object cxgrdtbvMainPrice: TcxGridDBColumn
            Caption = #21333#20215
            DataBinding.FieldName = 'MainPrice'
            Width = 52
          end
          object cxgrdtbvMainMoney: TcxGridDBColumn
            Caption = #37329#39069
            DataBinding.FieldName = 'MainMoney'
            Width = 61
          end
          object cxgrdtbvColumn2: TcxGridDBColumn
            Caption = #21547#31246#20215
            DataBinding.FieldName = 'TaxPrice'
            Width = 66
          end
          object cxgrdtbvColumn3: TcxGridDBColumn
            Caption = #31246#29575
            DataBinding.FieldName = 'TaxRate'
            Width = 46
          end
          object cxgrdtbvColumn4: TcxGridDBColumn
            Caption = #31246#39069
            DataBinding.FieldName = 'TaxMoney'
            Width = 61
          end
          object cxgrdtbvColumn5: TcxGridDBColumn
            Caption = #20215#31246#21512#35745
            DataBinding.FieldName = 'AllMoney'
            Width = 70
          end
          object cxgrdtbvRemark: TcxGridDBColumn
            Caption = #22791#27880
            DataBinding.FieldName = 'Remark'
            Width = 77
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
      'exec PrStockInQ '#39#39)
    Left = 240
  end
  inherited frxHed: TfrxDBDataset
    UserName = #36827#36135#21333#26597#35810
    FieldAliases.Strings = (
      'BillNo='#21333#21495
      'BillDate='#26085#26399
      'SingFlag='#31867#22411
      'ObjectId='#23458#25143#32534#21495
      'ObjectName='#23458#25143#21517#31216
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'ItemUnit='#21333#20301
      'ProType='#23646#24615
      'MainNum='#25968#37327
      'MainPrice='#21333#20215
      'MainMoney='#37329#39069
      'TaxPrice='#21547#31246#20215
      'TaxRate='#31246#29575
      'TaxMoney='#31246#39069
      'AllMoney='#20215#31246#21512#35745
      'Remark='#22791#27880)
    Left = 240
  end
end
