inherited EmpWorkRecordQFM: TEmpWorkRecordQFM
  Caption = #21592#24037#29983#20135#35760#24405
  ClientHeight = 504
  ClientWidth = 1059
  ExplicitWidth = 1059
  ExplicitHeight = 504
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Width = 1059
    TabOrder = 2
    ExplicitWidth = 1059
    inherited cxLabTitle: TcxLabel
      Caption = #21592#24037#29983#20135#35760#24405
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlFind: TPanel
    Width = 1059
    Height = 29
    TabOrder = 4
    ExplicitWidth = 1059
    ExplicitHeight = 29
    object lbl1: TLabel
      Left = 13
      Top = 8
      Width = 48
      Height = 13
      Caption = #20837#24211#26085#26399
    end
    object lbl4: TLabel
      Left = 405
      Top = 8
      Width = 24
      Height = 13
      Caption = #21592#24037
    end
    object cxdtS: TcxDateEdit
      Left = 68
      Top = 4
      Properties.OnChange = btFindClick
      TabOrder = 0
      TextHint = #24314#35758#36873#25321
      Width = 121
    end
    object cxdtE: TcxDateEdit
      Left = 213
      Top = 4
      Properties.OnChange = btFindClick
      TabOrder = 1
      TextHint = #24314#35758#36873#25321
      Width = 121
    end
    object btnObject: TcxButtonEdit
      Left = 435
      Top = 4
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnObjectPropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 2
      Width = 94
    end
    object cxButton1: TcxButton
      Left = 339
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
      Left = 369
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
      Left = 195
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
      Left = 585
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
      Left = 551
      Top = 6
      Caption = #20135#21697
      Transparent = True
    end
  end
  inherited cxpgcntrl1: TcxPageControl
    Top = 105
    Width = 1059
    Height = 399
    ExplicitTop = 105
    ExplicitWidth = 1059
    ExplicitHeight = 399
    ClientRectBottom = 393
    ClientRectRight = 1053
    inherited cxtbsht1: TcxTabSheet
      ExplicitWidth = 1051
      ExplicitHeight = 366
      inherited cxgrd: TcxGrid
        Width = 1051
        Height = 366
        ExplicitWidth = 1051
        ExplicitHeight = 366
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
              Kind = skCount
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
              Column = cxgrdtbvAllInNum
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
          DataController.Summary.SummaryGroups = <
            item
              Links = <>
              SummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'AllMoney'
                end
                item
                  Kind = skSum
                  FieldName = 'OrderNum'
                end>
            end>
          object cxgrdtbvDispatchNo: TcxGridDBColumn
            Caption = #27966#24037#21333#21495
            DataBinding.FieldName = 'DispatchNo'
            Width = 100
          end
          object cxgrdtbvObjectName: TcxGridDBColumn
            Caption = #21592#24037
            DataBinding.FieldName = 'ObjectName'
            Width = 60
          end
          object cxgrdtbvMoveOutDate: TcxGridDBColumn
            Caption = #39046#26009#26085#26399
            DataBinding.FieldName = 'MoveOutDate'
            Width = 71
          end
          object cxgrdtbvMoveInDate: TcxGridDBColumn
            Caption = #20837#24211#26085#26399
            DataBinding.FieldName = 'MoveInDate'
            Width = 71
          end
          object cxgrdtbvItemCode: TcxGridDBColumn
            Caption = #20135#21697#20195#21495
            DataBinding.FieldName = 'ItemCode'
            Width = 83
          end
          object cxgrdtbvItemName: TcxGridDBColumn
            Caption = #20135#21697#21517#31216
            DataBinding.FieldName = 'ItemName'
            Width = 132
          end
          object cxgrdtbvTopOrdinal: TcxGridDBColumn
            Caption = #39046#26009#24037#24207#21495
            DataBinding.FieldName = 'TopOrdinal'
            Visible = False
            Width = 76
          end
          object cxgrdtbvTopTech: TcxGridDBColumn
            Caption = #39046#26009#24037#24207
            DataBinding.FieldName = 'TopTech'
            Visible = False
            Width = 68
          end
          object cxgrdtbvOrdinal: TcxGridDBColumn
            Caption = #24037#24207#21495
            DataBinding.FieldName = 'Ordinal'
            Width = 60
          end
          object cxgrdtbvTechName: TcxGridDBColumn
            Caption = #24037#24207#21517#31216
            DataBinding.FieldName = 'TechName'
            Width = 79
          end
          object cxgrdtbvOutNum: TcxGridDBColumn
            Caption = #39046#26009#25968
            DataBinding.FieldName = 'OutNum'
            Width = 70
          end
          object cxgrdtbvAllInNum: TcxGridDBColumn
            Caption = #24635#20837#24211#25968
            DataBinding.FieldName = 'AllInNum'
            Width = 71
          end
          object cxgrdtbvInNum: TcxGridDBColumn
            Caption = #27491#21697#25968
            DataBinding.FieldName = 'InNum'
            Width = 70
          end
          object cxgrdtbvSpoilNum: TcxGridDBColumn
            Caption = #35843#24223#25968
            DataBinding.FieldName = 'SpoilNum'
            Width = 67
          end
          object cxgrdtbvWasteNum: TcxGridDBColumn
            Caption = #25253#24223#25968
            DataBinding.FieldName = 'WasteNum'
            Width = 65
          end
          object cxgrdtbvScrapNum: TcxGridDBColumn
            Caption = #26009#24223#25968
            DataBinding.FieldName = 'ScrapNum'
            Width = 66
          end
          object cxgrdtbvMovePrice: TcxGridDBColumn
            Caption = #24037#20215
            DataBinding.FieldName = 'MovePrice'
            Width = 60
          end
          object cxgrdtbvMoveMoney: TcxGridDBColumn
            Caption = #37329#39069
            DataBinding.FieldName = 'MoveMoney'
            Width = 60
          end
          object cxgrdtbvRemark: TcxGridDBColumn
            Caption = #22791#27880
            DataBinding.FieldName = 'Remark'
            Width = 60
          end
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = ' '#27719' '#24635' '
      ImageIndex = 1
      object cxgrdSum: TcxGrid
        Left = 0
        Top = 0
        Width = 657
        Height = 366
        Align = alLeft
        PopupMenu = pmLayout
        TabOrder = 0
        object cxgrdtbvSum: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxgrdtbvCellDblClick
          DataController.DataSource = dsSum
          DataController.Summary.DefaultGroupSummaryItems = <>
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
              Column = cxgrdtbvSumOutNum
            end
            item
              Kind = skSum
              Column = cxgrdtbvSumAllInNum
            end
            item
              Kind = skSum
              Column = cxgrdtbvSumInNum
            end
            item
              Kind = skSum
              Column = cxgrdtbvSumSpoilNum
            end
            item
              Kind = skSum
              Column = cxgrdtbvSumWasteNum
            end
            item
              Kind = skSum
              Column = cxgrdtbvSumScrapNum
            end
            item
              Kind = skSum
              Column = cxgrdtbvSumNoInNum
            end
            item
              Kind = skSum
              Column = cxgrdtbvSumMoveMoney
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.PullFocusing = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = #24658#25463#36719#20214
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 40
          OnCustomDrawIndicatorCell = cxgrdtbvCustomDrawIndicatorCell
          object cxgrdtbvSumObjectName: TcxGridDBColumn
            Caption = #21592#24037
            DataBinding.FieldName = 'ObjectName'
            Width = 49
          end
          object cxgrdtbvSumOutNum: TcxGridDBColumn
            Caption = #39046#26009#25968
            DataBinding.FieldName = 'OutNum'
            Width = 67
          end
          object cxgrdtbvSumAllInNum: TcxGridDBColumn
            Caption = #24635#20837#24211#25968
            DataBinding.FieldName = 'AllInNum'
            Width = 78
          end
          object cxgrdtbvSumInNum: TcxGridDBColumn
            Caption = #27491#21697#25968
            DataBinding.FieldName = 'InNum'
            Width = 72
          end
          object cxgrdtbvSumSpoilNum: TcxGridDBColumn
            Caption = #35843#24223#25968
            DataBinding.FieldName = 'SpoilNum'
            Width = 60
          end
          object cxgrdtbvSumWasteNum: TcxGridDBColumn
            Caption = #25253#24223#25968
            DataBinding.FieldName = 'WasteNum'
            Width = 60
          end
          object cxgrdtbvSumScrapNum: TcxGridDBColumn
            Caption = #26009#24223#25968
            DataBinding.FieldName = 'ScrapNum'
            Width = 60
          end
          object cxgrdtbvSumNoInNum: TcxGridDBColumn
            Caption = #26410#20837#24211#25968
            DataBinding.FieldName = 'NoInNum'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.AssignedValues.DisplayFormat = True
            Width = 77
          end
          object cxgrdtbvSumMoveMoney: TcxGridDBColumn
            Caption = #37329#39069
            DataBinding.FieldName = 'MoveMoney'
            Width = 71
          end
        end
        object cxgrdlevSum: TcxGridLevel
          GridView = cxgrdtbvSum
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 657
        Top = 0
        Width = 8
        Height = 366
        Control = cxgrd
      end
      object cxgrd1: TcxGrid
        Left = 665
        Top = 0
        Width = 386
        Height = 366
        Align = alClient
        TabOrder = 2
        object cxgrd1DBChartView1: TcxGridDBChartView
          Categories.DataBinding.FieldName = 'ObjectName'
          DataController.DataSource = dsSum
          DataController.KeyFieldNames = 'ObjectId'
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DiagramArea.Values.VaryColorsByCategory = True
          DiagramArea.Values.CaptionPosition = ldvcpCenter
          DiagramBar.Values.VaryColorsByCategory = True
          DiagramBar.Values.CaptionPosition = cdvcpOutsideEnd
          DiagramColumn.Values.VaryColorsByCategory = True
          DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
          DiagramLine.Values.VaryColorsByCategory = True
          DiagramPie.SeriesCaptions = False
          DiagramPie.SeriesSites = True
          DiagramPie.Values.CaptionPosition = pdvcpCenter
          DiagramPie.Values.CaptionItems = [pdvciValue, pdvciPercentage]
          DiagramPie.Values.PercentageCaptionFormat = '0%'
          DiagramStackedBar.Active = True
          DiagramStackedBar.Values.CaptionPosition = cdvcpOutsideEnd
          DiagramStackedColumn.Values.CaptionPosition = cdvcpOutsideEnd
          ToolBox.DiagramSelector = True
          object cxgrd1DBChartView1Series2: TcxGridDBChartSeries
            DataBinding.FieldName = 'AllInNum'
            DisplayText = #24635#20837#24211#25968
          end
          object cxgrd1DBChartView1Series1: TcxGridDBChartSeries
            DataBinding.FieldName = 'MoveMoney'
            DisplayText = #37329#39069
          end
        end
        object cxgrdlev1: TcxGridLevel
          GridView = cxgrd1DBChartView1
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
  inherited dsHed: TDataSource
    Left = 48
    Top = 176
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'exec PrEmpWorkRecordQ  '#39#39',1')
    Left = 48
    Top = 216
  end
  inherited frxHed: TfrxDBDataset
    UserName = #21592#24037#29983#20135#35760#24405#26126#32454
    FieldAliases.Strings = (
      'DispatchNo='#27966#24037#21333#21495
      'ObjectId='#21592#24037#32534#21495
      'ObjectName='#21592#24037#22995#21517
      'MoveOutNo='#36710#38388#35843#25320#20986#24211#21333#21495
      'MoveOutDate='#36710#38388#35843#25320#20986#24211#26085#26399
      'MoveInNo='#36710#38388#35843#25320#20837#24211#21333#21495
      'MoveInDate='#36710#38388#35843#25320#20837#24211#26085#26399
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
      'AllInNum='#24635#20837#24211#25968
      'MovePrice='#21333#20215
      'MoveMoney='#37329#39069
      'Weight='#37325#37327
      'Remark='#22791#27880)
    Left = 48
    Top = 256
  end
  inherited pmLayout: TPopupMenu
    Left = 416
    Top = 296
  end
  inherited cxgrdpmn1: TcxGridPopupMenu
    Left = 384
    Top = 296
  end
  object frxSum: TfrxDBDataset
    UserName = #21592#24037#29983#20135#35760#24405#27719#24635
    CloseDataSource = False
    FieldAliases.Strings = (
      'ObjectId='#21592#24037#32534#21495
      'ObjectName='#21592#24037#22995#21517
      'OutNum='#20986#24211#25968
      'InNum='#20837#24211#25968
      'SpoilNum='#35843#24223#25968
      'WasteNum='#25253#24223#25968
      'ScrapNum='#26009#24223#25968
      'AllInNum='#24635#20837#24211#25968
      'NoInNum='#26410#20837#24211#25968
      'MoveMoney='#37329#39069
      'Weight='#37325#37327)
    DataSet = qySum
    BCDToCurrency = False
    Left = 104
    Top = 256
  end
  object qySum: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qyHedAfterScroll
    Parameters = <>
    SQL.Strings = (
      'exec PrEmpWorkRecordQ  '#39#39',2')
    Left = 104
    Top = 216
    object qySumObjectId: TStringField
      FieldName = 'ObjectId'
      Size = 100
    end
    object qySumObjectName: TStringField
      FieldName = 'ObjectName'
      Size = 100
    end
    object qySumOutNum: TFMTBCDField
      FieldName = 'OutNum'
      ReadOnly = True
      Precision = 38
      Size = 5
    end
    object qySumInNum: TFMTBCDField
      FieldName = 'InNum'
      ReadOnly = True
      Precision = 38
      Size = 5
    end
    object qySumSpoilNum: TFMTBCDField
      FieldName = 'SpoilNum'
      ReadOnly = True
      Precision = 38
      Size = 5
    end
    object qySumWasteNum: TFMTBCDField
      FieldName = 'WasteNum'
      ReadOnly = True
      Precision = 38
      Size = 5
    end
    object qySumScrapNum: TFMTBCDField
      FieldName = 'ScrapNum'
      ReadOnly = True
      Precision = 38
      Size = 5
    end
    object qySumAllInNum: TFMTBCDField
      FieldName = 'AllInNum'
      ReadOnly = True
      Precision = 38
      Size = 5
    end
    object qySumNoInNum: TFMTBCDField
      FieldName = 'NoInNum'
      ReadOnly = True
      Precision = 38
      Size = 5
    end
    object qySumMoveMoney: TFMTBCDField
      FieldName = 'MoveMoney'
      ReadOnly = True
      Precision = 38
      Size = 5
    end
    object qySumWeight: TFMTBCDField
      FieldName = 'Weight'
      ReadOnly = True
      Precision = 38
      Size = 5
    end
  end
  object dsSum: TDataSource
    DataSet = qySum
    Left = 104
    Top = 176
  end
end
