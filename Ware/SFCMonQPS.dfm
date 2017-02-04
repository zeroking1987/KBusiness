inherited SFCMonQFM: TSFCMonQFM
  Caption = #25910#21457#23384#26376#25253
  ExplicitWidth = 1074
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    TabOrder = 2
    inherited cxLabTitle: TcxLabel
      Caption = #25910#21457#23384#26376#25253
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlFind: TPanel
    Height = 86
    TabOrder = 4
    ExplicitHeight = 86
    object lstWare: TcxDBTreeList
      Left = 0
      Top = 0
      Width = 177
      Height = 86
      Align = alLeft
      Bands = <
        item
        end>
      DataController.DataSource = dsWare
      DataController.ParentField = 'ParentId'
      DataController.KeyField = 'WareId'
      Navigator.Buttons.CustomButtons = <>
      RootValue = -1
      TabOrder = 0
      object cxdbtrlstclmnlst1bSelect: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCheckBoxProperties'
        Caption.Text = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Width = 71
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxdbtrlstclmnlst1WareId: TcxDBTreeListColumn
        Visible = False
        Caption.Text = #32534#21495
        DataBinding.FieldName = 'WareId'
        Options.Editing = False
        Width = 38
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxdbtrlstclmnlst1WareName: TcxDBTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Caption.Text = #20179#24211#21517#31216
        DataBinding.FieldName = 'WareName'
        Options.Editing = False
        Width = 84
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object cxdtS: TcxDateEdit
      Left = 241
      Top = 2
      TabOrder = 1
      TextHint = #24517#36873
      Width = 121
    end
    object cxdtE: TcxDateEdit
      Left = 386
      Top = 2
      TabOrder = 2
      TextHint = #24517#36873
      Width = 121
    end
    object btnItemKind: TcxButtonEdit
      Left = 241
      Top = 60
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemKindPropertiesButtonClick
      ShowHint = True
      TabOrder = 3
      Width = 121
    end
    object btnItem: TcxButtonEdit
      Left = 241
      Top = 30
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemPropertiesButtonClick
      ShowHint = True
      TabOrder = 4
      TextHint = #21487#36755#20837#20135#21697#20195#21495#12289#21517#31216#12289#35268#26684#12289#25340#38899#30721#26597#35810
      Width = 266
    end
    object cxlbl7: TcxLabel
      Left = 209
      Top = 32
      Caption = #20135#21697
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 368
      Top = 4
      Caption = '~'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clRed
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 209
      Top = 4
      Caption = #26085#26399
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 185
      Top = 62
      Caption = #20135#21697#31867#21035
      Transparent = True
    end
    object btn1: TcxButton
      Left = 508
      Top = 0
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
      TabOrder = 9
      OnClick = btn1Click
    end
    object btn2: TcxButton
      Left = 537
      Top = 0
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
      TabOrder = 10
      OnClick = btn2Click
    end
  end
  inherited cxpgcntrl1: TcxPageControl
    Top = 162
    Height = 378
    ExplicitTop = 162
    ExplicitHeight = 378
    ClientRectBottom = 372
    inherited cxtbsht1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 27
      ExplicitWidth = 1066
      ExplicitHeight = 345
      inherited cxgrd: TcxGrid
        Height = 345
        ExplicitHeight = 345
        inherited cxgrdtbv: TcxGridDBTableView
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxgrdbclmnFirstNum
            end
            item
              Kind = skSum
              Column = cxgrdbclmnInNum
            end
            item
              Kind = skSum
              Column = cxgrdbclmnOutNum
            end
            item
              Kind = skSum
              Column = cxgrdbclmnLastNum
            end>
          object cxgrdbclmnItemCode: TcxGridDBColumn
            Caption = #20135#21697#20195#21495
            DataBinding.FieldName = 'ItemCode'
            Width = 70
          end
          object cxgrdbclmnItemName: TcxGridDBColumn
            Caption = #20135#21697#21517#31216
            DataBinding.FieldName = 'ItemName'
            Width = 128
          end
          object cxgrdbclmnItemSpc: TcxGridDBColumn
            Caption = #35268#26684
            DataBinding.FieldName = 'ItemSpc'
            Width = 70
          end
          object cxgrdbclmnWareName: TcxGridDBColumn
            Caption = #20179#24211
            DataBinding.FieldName = 'WareName'
            Width = 70
          end
          object cxgrdbclmnProType: TcxGridDBColumn
            Caption = #23646#24615
            DataBinding.FieldName = 'ProType'
            Width = 70
          end
          object cxgrdbclmnColor: TcxGridDBColumn
            Caption = #36135#20301
            DataBinding.FieldName = 'PlaceNO'
            Width = 70
          end
          object cxgrdbclmnFirstNum: TcxGridDBColumn
            Caption = #26399#21021#25968#37327
            DataBinding.FieldName = 'FirstNum'
            Width = 85
          end
          object cxgrdbclmnFirstPrice: TcxGridDBColumn
            Caption = #26399#21021#21333#20215
            DataBinding.FieldName = 'FirstPrice'
            Visible = False
            Width = 70
          end
          object cxgrdbclmnFirstMoney: TcxGridDBColumn
            Caption = #26399#21021#37329#39069
            DataBinding.FieldName = 'FirstMoney'
            Visible = False
            Width = 70
          end
          object cxgrdbclmnInNum: TcxGridDBColumn
            Caption = #20837#24211#25968#37327
            DataBinding.FieldName = 'InNum'
            Width = 83
          end
          object cxgrdbclmnInPrice: TcxGridDBColumn
            Caption = #20837#24211#21333#20215
            DataBinding.FieldName = 'InPrice'
            Visible = False
            Width = 70
          end
          object cxgrdbclmnInMoney: TcxGridDBColumn
            Caption = #20837#24211#37329#39069
            DataBinding.FieldName = 'InMoney'
            Visible = False
            Width = 70
          end
          object cxgrdbclmnOutNum: TcxGridDBColumn
            Caption = #20986#24211#25968#37327
            DataBinding.FieldName = 'OutNum'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '0.0'
            Width = 106
          end
          object cxgrdbclmnOutPrice: TcxGridDBColumn
            Caption = #20986#24211#21333#20215
            DataBinding.FieldName = 'OutPrice'
            Visible = False
            Width = 70
          end
          object cxgrdbclmnOutMoney: TcxGridDBColumn
            Caption = #20986#24211#37329#39069
            DataBinding.FieldName = 'OutMoney'
            Visible = False
            Width = 70
          end
          object cxgrdbclmnLastNum: TcxGridDBColumn
            Caption = #32467#23384#25968#37327
            DataBinding.FieldName = 'LastNum'
            Width = 87
          end
          object cxgrdbclmnLastPrice: TcxGridDBColumn
            Caption = #32467#23384#21333#20215
            DataBinding.FieldName = 'LastPrice'
            Visible = False
            Width = 70
          end
          object cxgrdbclmnLastMoney: TcxGridDBColumn
            Caption = #32467#23384#37329#39069
            DataBinding.FieldName = 'LastMoney'
            Visible = False
            Width = 70
          end
        end
        object cxgrdDBBandedTableView1: TcxGridDBBandedTableView [1]
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsHed
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxgrdDBBandedTableView1FirstNum
            end
            item
              Kind = skSum
              Column = cxgrdDBBandedTableView1FirstMoney
            end
            item
              Kind = skSum
              Column = cxgrdDBBandedTableView1InNum
            end
            item
              Kind = skSum
              Column = cxgrdDBBandedTableView1InMoney
            end
            item
              Kind = skSum
              Column = cxgrdDBBandedTableView1OutNum
            end
            item
              Kind = skSum
              Column = cxgrdDBBandedTableView1OutMoney
            end
            item
              Kind = skSum
              Column = cxgrdDBBandedTableView1LastNum
            end
            item
              Kind = skSum
              Column = cxgrdDBBandedTableView1LastMoney
            end
            item
              Format = #21512#35745':0'
              Kind = skCount
              Column = cxgrdDBBandedTableView1ItemCode
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.PullFocusing = True
          OptionsView.NoDataToDisplayInfoText = #24658#21019#36719#20214
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 20
          Bands = <
            item
              Caption = #20135#21697#20449#24687
              Width = 344
            end
            item
              Caption = #26399#21021#20449#24687
              Width = 153
            end
            item
              Caption = #20837#24211#20449#24687
              Width = 155
            end
            item
              Caption = #20986#24211#20449#24687
              Width = 142
            end
            item
              Caption = #32467#23384#20449#24687
              Width = 158
            end>
          object cxgrdDBBandedTableView1ItemCode: TcxGridDBBandedColumn
            Caption = #20135#21697#20195#21495
            DataBinding.FieldName = 'ItemCode'
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrdDBBandedTableView1ItemName: TcxGridDBBandedColumn
            Caption = #20135#21697#21517#31216
            DataBinding.FieldName = 'ItemName'
            Width = 101
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrdDBBandedTableView1ItemSpc: TcxGridDBBandedColumn
            Caption = #35268#26684#22411#21495
            DataBinding.FieldName = 'ItemSpc'
            Width = 65
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxgrdDBBandedTableView1WareName: TcxGridDBBandedColumn
            Caption = #20179#24211#21517#31216
            DataBinding.FieldName = 'WareName'
            Width = 69
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxgrdDBBandedTableView1ProType: TcxGridDBBandedColumn
            Caption = #23646#24615
            DataBinding.FieldName = 'ProType'
            Visible = False
            Width = 62
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxgrdDBBandedTableView1PlaceNo: TcxGridDBBandedColumn
            Caption = #36135#20301
            DataBinding.FieldName = 'PlaceNo'
            Visible = False
            Width = 58
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxgrdDBBandedTableView1FirstNum: TcxGridDBBandedColumn
            Caption = #26399#21021#25968#37327
            DataBinding.FieldName = 'FirstNum'
            Width = 75
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrdDBBandedTableView1FirstPrice: TcxGridDBBandedColumn
            Caption = #26399#21021#21333#20215
            DataBinding.FieldName = 'FirstPrice'
            Visible = False
            Width = 75
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrdDBBandedTableView1FirstMoney: TcxGridDBBandedColumn
            Caption = #26399#21021#37329#39069
            DataBinding.FieldName = 'FirstMoney'
            Width = 75
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxgrdDBBandedTableView1InNum: TcxGridDBBandedColumn
            Caption = #20837#24211#25968#37327
            DataBinding.FieldName = 'InNum'
            Width = 75
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrdDBBandedTableView1InPrice: TcxGridDBBandedColumn
            Caption = #20837#24211#21333#20215
            DataBinding.FieldName = 'InPrice'
            Visible = False
            Width = 75
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrdDBBandedTableView1InMoney: TcxGridDBBandedColumn
            Caption = #20837#24211#37329#39069
            DataBinding.FieldName = 'InMoney'
            Width = 75
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxgrdDBBandedTableView1OutNum: TcxGridDBBandedColumn
            Caption = #20986#24211#25968#37327
            DataBinding.FieldName = 'OutNum'
            Width = 75
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrdDBBandedTableView1OutPrice: TcxGridDBBandedColumn
            Caption = #20986#24211#21333#20215
            DataBinding.FieldName = 'OutPrice'
            Visible = False
            Width = 75
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrdDBBandedTableView1OutMoney: TcxGridDBBandedColumn
            Caption = #20986#24211#37329#39069
            DataBinding.FieldName = 'OutMoney'
            Width = 75
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxgrdDBBandedTableView1LastNum: TcxGridDBBandedColumn
            Caption = #32467#23384#25968#37327
            DataBinding.FieldName = 'LastNum'
            Width = 75
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxgrdDBBandedTableView1LastPrice: TcxGridDBBandedColumn
            Caption = #32467#23384#21333#20215
            DataBinding.FieldName = 'LastPrice'
            Visible = False
            Width = 75
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxgrdDBBandedTableView1LastMoney: TcxGridDBBandedColumn
            Caption = #32467#23384#37329#39069
            DataBinding.FieldName = 'LastMoney'
            Width = 100
            Position.BandIndex = 4
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        inherited cxgrdlev: TcxGridLevel
          GridView = cxgrdDBBandedTableView1
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
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'exec prSFCMonQ '#39'2011-08-05'#39','#39'2015-09-15'#39','#39#39)
  end
  inherited frxHed: TfrxDBDataset
    UserName = #25910#21457#23384#26376#25253
    FieldAliases.Strings = (
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'WareName='#20179#24211#21517#31216
      'ProType='#23646#24615
      'FirstNum='#26399#21021#25968#37327
      'FirstPrice='#26399#21021#21333#20215
      'FirstMoney='#26399#21021#37329#39069
      'InNum='#20837#24211#25968#37327
      'InPrice='#20837#24211#21333#20215
      'InMoney='#20837#24211#37329#39069
      'OutNum='#20986#24211#25968#37327
      'OutPrice='#20986#24211#21333#20215
      'OutMoney='#20986#24211#37329#39069
      'LastNum='#32467#23384#25968#37327
      'LastPrice='#32467#23384#21333#20215
      'LastMoney='#32467#23384#37329#39069
      'PlaceNo='#36135#20301)
  end
  object qyWare: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select bSelect,WareId,WareName,ParentId from WareTB')
    Left = 120
    Top = 328
    object qyWarebSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object strngfldWareWareId: TStringField
      FieldName = 'WareId'
    end
    object strngfldWareWareName: TStringField
      FieldName = 'WareName'
      Size = 30
    end
    object strngfldWareParentId: TStringField
      FieldName = 'ParentId'
    end
  end
  object dsWare: TDataSource
    DataSet = qyWare
    Left = 120
    Top = 288
  end
end
