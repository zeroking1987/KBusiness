inherited AssistOutInQFM: TAssistOutInQFM
  Caption = #22806#21327#24448#26469#26597#35810
  ClientHeight = 529
  ClientWidth = 1062
  ExplicitWidth = 1062
  ExplicitHeight = 529
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Width = 1062
    TabOrder = 2
    ExplicitWidth = 1062
    inherited cxLabTitle: TcxLabel
      Caption = #22806#21327#24448#26469#26597#35810
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlFind: TPanel
    Width = 1062
    Height = 29
    TabOrder = 4
    ExplicitWidth = 1062
    ExplicitHeight = 29
    object lbl1: TLabel
      Left = 10
      Top = 8
      Width = 48
      Height = 13
      Caption = #20837#24211#26085#26399
    end
    object lbl4: TLabel
      Left = 402
      Top = 8
      Width = 36
      Height = 13
      Caption = #22806#21327#21830
    end
    object cxdtS: TcxDateEdit
      Left = 65
      Top = 4
      Properties.OnChange = btFindClick
      TabOrder = 0
      TextHint = #24314#35758#36873#25321
      Width = 121
    end
    object cxdtE: TcxDateEdit
      Left = 210
      Top = 4
      Properties.OnChange = btFindClick
      TabOrder = 1
      TextHint = #24314#35758#36873#25321
      Width = 121
    end
    object btnObject: TcxButtonEdit
      Left = 446
      Top = 4
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemNamePropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 2
      Width = 185
    end
    object cxButton1: TcxButton
      Left = 336
      Top = 2
      Width = 30
      Height = 25
      Hint = #36873#25321#19978#26376
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
      TabOrder = 3
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 366
      Top = 2
      Width = 30
      Height = 25
      Hint = #36873#25321#19979#26376
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
      TabOrder = 4
      OnClick = cxButton2Click
    end
    object cxLabel1: TcxLabel
      Left = 192
      Top = 4
      Caption = '~'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clRed
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object btnItem: TcxButtonEdit
      Left = 670
      Top = 4
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemPropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 6
      TextHint = #21487#36755#20837#20135#21697#20195#21495#12289#21517#31216#12289#35268#26684#12289#25340#38899#30721#26597#35810
      Width = 188
    end
    object cxlbl7: TcxLabel
      Left = 636
      Top = 6
      Caption = #20135#21697
      Transparent = True
    end
  end
  inherited cxpgcntrl1: TcxPageControl
    Top = 105
    Width = 1062
    Height = 424
    ExplicitTop = 105
    ExplicitWidth = 1062
    ExplicitHeight = 424
    ClientRectBottom = 418
    ClientRectRight = 1056
    inherited cxtbsht1: TcxTabSheet
      Caption = ' '#26126'  '#32454' '
      ExplicitWidth = 1054
      ExplicitHeight = 391
      inherited cxgrd: TcxGrid
        Width = 1054
        Height = 391
        ExplicitWidth = 1054
        ExplicitHeight = 391
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
            end
            item
              Format = #21512#35745':0'
              Kind = skCount
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Column = cxgrdtbvOutNum
            end
            item
              Kind = skSum
              Column = cxgrdtbvColumn2
            end
            item
              Kind = skSum
              Column = cxgrdtbvInNum
            end
            item
              Kind = skSum
              Column = cxgrdtbvSpoilNum
            end
            item
              Kind = skSum
              Column = cxgrdtbvWasteNum
            end
            item
              Kind = skSum
              Column = cxgrdtbvScrapNum
            end
            item
              Kind = skSum
              Column = cxgrdtbvMoveMoney
            end>
          object cxgrdtbvDispatchNo: TcxGridDBColumn
            Caption = #27966#24037#21333#21495
            DataBinding.FieldName = 'DispatchNo'
            Width = 98
          end
          object cxgrdtbvObjectName: TcxGridDBColumn
            Caption = #22806#21327#21830
            DataBinding.FieldName = 'ObjectName'
            Width = 105
          end
          object cxgrdtbvMoveOutNo: TcxGridDBColumn
            Caption = #21457#20986#21333#21495
            DataBinding.FieldName = 'MoveOutNo'
            Visible = False
            Width = 101
          end
          object cxgrdtbvMoveOutDate: TcxGridDBColumn
            Caption = #21457#20986#26085#26399
            DataBinding.FieldName = 'MoveOutDate'
            Width = 74
          end
          object cxgrdtbvMoveInNo: TcxGridDBColumn
            Caption = #20837#24211#21333#21495
            DataBinding.FieldName = 'MoveInNo'
            Visible = False
            Width = 95
          end
          object cxgrdtbvMoveInDate: TcxGridDBColumn
            Caption = #20837#24211#26085#26399
            DataBinding.FieldName = 'MoveInDate'
            Width = 70
          end
          object cxgrdtbvItemCode: TcxGridDBColumn
            Caption = #20135#21697#20195#21495
            DataBinding.FieldName = 'ItemCode'
            Width = 93
          end
          object cxgrdtbvItemName: TcxGridDBColumn
            Caption = #20135#21697#21517#31216
            DataBinding.FieldName = 'ItemName'
            Width = 128
          end
          object cxgrdtbvTopOrdinal: TcxGridDBColumn
            Caption = #21457#20986#24037#24207#21495
            DataBinding.FieldName = 'TopOrdinal'
            Visible = False
            Width = 80
          end
          object cxgrdtbvTopTech: TcxGridDBColumn
            Caption = #21457#20986#24037#24207
            DataBinding.FieldName = 'TopTech'
            Visible = False
            Width = 86
          end
          object cxgrdtbvOrdinal: TcxGridDBColumn
            Caption = #24037#24207#21495
            DataBinding.FieldName = 'Ordinal'
            Width = 58
          end
          object cxgrdtbvTechName: TcxGridDBColumn
            Caption = #24037#24207#21517#31216
            DataBinding.FieldName = 'TechName'
            Width = 94
          end
          object cxgrdtbvOutNum: TcxGridDBColumn
            Caption = #21457#20986#25968
            DataBinding.FieldName = 'OutNum'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.AssignedValues.DisplayFormat = True
            Width = 68
          end
          object cxgrdtbvColumn2: TcxGridDBColumn
            Caption = #24635#20837#24211#25968
            DataBinding.FieldName = 'AllInNum'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.AssignedValues.DisplayFormat = True
            Width = 73
          end
          object cxgrdtbvInNum: TcxGridDBColumn
            Caption = #27491#21697#25968
            DataBinding.FieldName = 'InNum'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.AssignedValues.DisplayFormat = True
            Width = 72
          end
          object cxgrdtbvSpoilNum: TcxGridDBColumn
            Caption = #35843#24223#25968
            DataBinding.FieldName = 'SpoilNum'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.AssignedValues.DisplayFormat = True
            Width = 65
          end
          object cxgrdtbvWasteNum: TcxGridDBColumn
            Caption = #25253#24223#25968
            DataBinding.FieldName = 'WasteNum'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.AssignedValues.DisplayFormat = True
            Width = 64
          end
          object cxgrdtbvScrapNum: TcxGridDBColumn
            Caption = #26009#24223#25968
            DataBinding.FieldName = 'ScrapNum'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.AssignedValues.DisplayFormat = True
            Width = 56
          end
          object cxgrdtbvMovePrice: TcxGridDBColumn
            Caption = #21333#20215
            DataBinding.FieldName = 'MovePrice'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.AssignedValues.DisplayFormat = True
            Width = 52
          end
          object cxgrdtbvMoveMoney: TcxGridDBColumn
            Caption = #37329#39069
            DataBinding.FieldName = 'MoveMoney'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.AssignedValues.DisplayFormat = True
            Width = 55
          end
          object cxgrdtbvWeight: TcxGridDBColumn
            Caption = #37325#37327
            DataBinding.FieldName = 'Weight'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.AssignedValues.DisplayFormat = True
            Width = 56
          end
          object cxgrdtbvRemark: TcxGridDBColumn
            Caption = #22791#27880
            DataBinding.FieldName = 'Remark'
            Width = 78
          end
          object cxgrdtbvColumn1: TcxGridDBColumn
          end
        end
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    Top = 48
    DockControlHeights = (
      0
      0
      46
      0)
    inherited dxbrBarMang: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btFirst'
        end
        item
          Visible = True
          ItemName = 'btLeft'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 63
          Visible = True
          ItemName = 'dxbrcmbPageIndex'
        end
        item
          Visible = True
          ItemName = 'cxbrdtmPage'
        end
        item
          Visible = True
          ItemName = 'btRight'
        end
        item
          Visible = True
          ItemName = 'btLast'
        end
        item
          Visible = True
          ItemName = 'btAdd'
        end
        item
          Visible = True
          ItemName = 'btEdit'
        end
        item
          Visible = True
          ItemName = 'btSave'
        end
        item
          Visible = True
          ItemName = 'btDel'
        end
        item
          Visible = True
          ItemName = 'btCancel'
        end
        item
          Visible = True
          ItemName = 'btAddL'
        end
        item
          Visible = True
          ItemName = 'btDelL'
        end
        item
          Visible = True
          ItemName = 'btFind'
        end
        item
          Visible = True
          ItemName = 'btExport'
        end
        item
          Visible = True
          ItemName = 'btTemp'
        end
        item
          Visible = True
          ItemName = 'btRefer'
        end
        item
          Visible = True
          ItemName = 'btPrint'
        end
        item
          Visible = True
          ItemName = 'dxCmbReport'
        end
        item
          Visible = True
          ItemName = 'btInvoice'
        end
        item
          Visible = True
          ItemName = 'btRef'
        end
        item
          Visible = True
          ItemName = 'btCheck'
        end
        item
          Visible = True
          ItemName = 'btUnCheck'
        end
        item
          Visible = True
          ItemName = 'btExit'
        end>
    end
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
  inherited PupBpm: TdxBarPopupMenu
    Top = 48
  end
  inherited dsHed: TDataSource
    Left = 56
    Top = 240
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'exec prAssistOutInQ '#39#39',1')
    Left = 56
    Top = 280
    object qyHedDispatchNo: TStringField
      FieldName = 'DispatchNo'
      Size = 100
    end
    object qyHedObjectId: TStringField
      FieldName = 'ObjectId'
      Size = 100
    end
    object qyHedObjectName: TStringField
      FieldName = 'ObjectName'
      Size = 100
    end
    object qyHedMoveOutNo: TStringField
      FieldName = 'MoveOutNo'
      Size = 100
    end
    object qyHedMoveOutDate: TDateTimeField
      FieldName = 'MoveOutDate'
    end
    object qyHedMoveInNo: TStringField
      FieldName = 'MoveInNo'
      Size = 100
    end
    object qyHedMoveInDate: TDateTimeField
      FieldName = 'MoveInDate'
    end
    object qyHedItemId: TStringField
      FieldName = 'ItemId'
      Size = 100
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
    object qyHedTopOrdinal: TSmallintField
      FieldName = 'TopOrdinal'
    end
    object qyHedTopTech: TStringField
      FieldName = 'TopTech'
      Size = 100
    end
    object qyHedOrdinal: TSmallintField
      FieldName = 'Ordinal'
    end
    object qyHedTechName: TStringField
      FieldName = 'TechName'
      Size = 100
    end
    object qyHedOutNum: TFMTBCDField
      FieldName = 'OutNum'
      Precision = 18
      Size = 5
    end
    object qyHedInNum: TFMTBCDField
      FieldName = 'InNum'
      Precision = 18
      Size = 5
    end
    object qyHedSpoilNum: TFMTBCDField
      FieldName = 'SpoilNum'
      Precision = 18
      Size = 5
    end
    object qyHedWasteNum: TFMTBCDField
      FieldName = 'WasteNum'
      Precision = 18
      Size = 5
    end
    object qyHedScrapNum: TFMTBCDField
      FieldName = 'ScrapNum'
      Precision = 18
      Size = 5
    end
    object qyHedMovePrice: TFMTBCDField
      FieldName = 'MovePrice'
      Precision = 18
      Size = 5
    end
    object qyHedMoveMoney: TFMTBCDField
      FieldName = 'MoveMoney'
      Precision = 18
      Size = 5
    end
    object qyHedWeight: TFMTBCDField
      FieldName = 'Weight'
      Precision = 18
      Size = 5
    end
    object qyHedRemark: TStringField
      FieldName = 'Remark'
      Size = 100
    end
    object qyHedAllInNum: TFMTBCDField
      FieldName = 'AllInNum'
      ReadOnly = True
      Precision = 21
      Size = 5
    end
  end
  inherited frxHed: TfrxDBDataset
    UserName = #22806#21327#24448#26469#26597#35810
    FieldAliases.Strings = (
      'DispatchNo='#27966#24037#21333#21495
      'ObjectId='#21333#20301#32534#21495
      'ObjectName='#21333#20301#21517#31216
      'MoveOutNo='#22806#21327#35843#25320#20986#24211#21333#21495
      'MoveOutDate='#22806#21327#35843#25320#20986#24211#26085#26399
      'MoveInNo='#22806#21327#35843#25320#20837#24211#21333#21495
      'MoveInDate='#22806#21327#35843#25320#20837#24211#26085#26399
      'ItemId='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'TopOrdinal='#21457#20986#24037#24207#21495
      'TopTech='#21457#20986#24037#24207
      'Ordinal='#24037#24207#21495
      'TechName='#24037#24207#21517#31216
      'OutNum='#20986#24211#25968
      'InNum='#20837#24211#25968
      'SpoilNum='#35843#24223#25968
      'WasteNum='#25253#24223#25968
      'ScrapNum='#26009#24223#25968
      'MovePrice='#21333#20215
      'MoveMoney='#37329#39069
      'Weight='#37325#37327
      'Remark='#22791#27880
      'AllInNum='#24635#20837#24211#25968)
    Left = 56
    Top = 320
  end
end
