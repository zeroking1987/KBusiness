inherited SaleQFM: TSaleQFM
  Caption = #23458#25143#38144#21806#20998#26512
  ClientHeight = 499
  ClientWidth = 1060
  ExplicitWidth = 1060
  ExplicitHeight = 499
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Width = 1060
    TabOrder = 2
    ExplicitWidth = 1060
    inherited cxLabTitle: TcxLabel
      Caption = #23458#25143#38144#21806#20998#26512
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlFind: TPanel
    Width = 1060
    Height = 29
    TabOrder = 4
    ExplicitWidth = 1060
    ExplicitHeight = 29
    object lbl1: TLabel
      Left = 28
      Top = 8
      Width = 24
      Height = 13
      Caption = #26085#26399
    end
    object lbl4: TLabel
      Left = 406
      Top = 8
      Width = 48
      Height = 13
      Caption = #23458#25143#21517#31216
    end
    object cxdtS: TcxDateEdit
      Left = 58
      Top = 4
      TabOrder = 0
      TextHint = #24314#35758#36873#25321
      Width = 121
    end
    object cxdtE: TcxDateEdit
      Left = 203
      Top = 4
      TabOrder = 1
      TextHint = #24314#35758#36873#25321
      Width = 121
    end
    object btnObject: TcxButtonEdit
      Left = 456
      Top = 4
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemNamePropertiesButtonClick
      ShowHint = True
      TabOrder = 2
      TextHint = #21487#36755#20837#23458#25143#21517#31216#12289#23458#25143#25340#38899#30721#31561
      Width = 257
    end
    object cxButton1: TcxButton
      Left = 329
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
      Left = 359
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
      Left = 185
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
  end
  inherited cxpgcntrl1: TcxPageControl
    Top = 105
    Width = 1060
    Height = 394
    OnPageChanging = cxpgcntrl1PageChanging
    ExplicitTop = 105
    ExplicitWidth = 1060
    ExplicitHeight = 394
    ClientRectBottom = 388
    ClientRectRight = 1054
    inherited cxtbsht1: TcxTabSheet
      Caption = #27719' '#24635
      ExplicitLeft = 2
      ExplicitTop = 27
      ExplicitWidth = 1052
      ExplicitHeight = 361
      inherited cxgrd: TcxGrid
        Width = 345
        Height = 361
        Align = alLeft
        ExplicitWidth = 345
        ExplicitHeight = 361
        inherited cxgrdtbv: TcxGridDBTableView
          OnDblClick = cxgrdtbvDblClick
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
              Column = cxgrdbclmnCustName
            end
            item
              Kind = skSum
              Column = cxgrdbclmnOrderNum
            end
            item
              Kind = skSum
              Column = cxgrdbclmnOrderMoney
            end>
          object cxgrdbclmnCustName: TcxGridDBColumn
            DataBinding.FieldName = #23458#25143#21517#31216
            Width = 193
          end
          object cxgrdbclmnOrderNum: TcxGridDBColumn
            DataBinding.FieldName = #25968#37327
            Width = 95
          end
          object cxgrdbclmnOrderMoney: TcxGridDBColumn
            DataBinding.FieldName = #37329#39069
            Visible = False
            Width = 100
          end
        end
      end
      object cxgrd1: TcxGrid
        Left = 353
        Top = 0
        Width = 699
        Height = 361
        Align = alClient
        TabOrder = 1
        object cxgrd1DBChartView1: TcxGridDBChartView
          Categories.DataBinding.FieldName = #23458#25143#21517#31216
          DataController.DataSource = dsHed
          DataController.DetailKeyFieldNames = #25968#37327
          DataController.KeyFieldNames = #23458#25143#32534#21495
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DiagramArea.Values.VaryColorsByCategory = True
          DiagramArea.Values.CaptionPosition = ldvcpCenter
          DiagramBar.Active = True
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
          DiagramStackedBar.Values.CaptionPosition = cdvcpOutsideEnd
          DiagramStackedColumn.Values.CaptionPosition = cdvcpOutsideEnd
          ToolBox.DiagramSelector = True
          object cxgrd1DBChartView1Series1: TcxGridDBChartSeries
            DataBinding.FieldName = #25968#37327
          end
        end
        object cxgrdlev1: TcxGridLevel
          GridView = cxgrd1DBChartView1
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 345
        Top = 0
        Width = 8
        Height = 361
        Control = cxgrd
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = #26126' '#32454
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1052
        Height = 361
        Align = alClient
        PopupMenu = pmLayout
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxgrdtbvCellDblClick
          DataController.DataSource = dsDet
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
              Kind = skSum
            end
            item
              Format = #21512#35745':0'
              Kind = skCount
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.PullFocusing = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = #24658#21019#36719#20214
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 35
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
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
  end
  inherited dsHed: TDataSource
    Left = 56
    Top = 240
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      
        'select ['#23458#25143#32534#21495']=a.CustId,['#23458#25143#21517#31216']=c.CustName,['#25968#37327']=SUM(ISNULL(b.Order' +
        'Num,0)),['#37329#39069']=SUM(ISNULL(b.OrderMoney,0))'
      
        'from SaleOrderHDTB a left join SaleOrderDTTB b on a.SaleOrderNo=' +
        'b.SaleOrderNo'
      'left join CustTB c on a.CustId=c.CustId'
      'left join ItemTB d on b.ItemID=d.ItemId'
      'where 1=1 '
      'group by a.CustId,c.CustName'
      'Order by   '#25968#37327' Desc ')
    Left = 56
    Top = 280
    object strngfldHedCustId: TStringField
      FieldName = #23458#25143#32534#21495
      Size = 30
    end
    object strngfldHedCustName: TStringField
      FieldName = #23458#25143#21517#31216
      Size = 100
    end
    object qyHedOrderNum: TFMTBCDField
      FieldName = #25968#37327
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object qyHedOrderMoney: TFMTBCDField
      FieldName = #37329#39069
      ReadOnly = True
      Precision = 38
      Size = 6
    end
  end
  inherited frxHed: TfrxDBDataset
    UserName = #38144#21806#20998#26512#27719#24635
    FieldAliases.Strings = (
      'CustId='#23458#25143#32534#21495
      'CustName='#23458#25143#21517#31216
      'OrderNum='#25968#37327
      'OrderMoney='#37329#39069)
    Left = 56
    Top = 320
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = #38144#21806#20998#26512#23458#25143#27719#24635
    CloseDataSource = False
    FieldAliases.Strings = (
      #23458#25143#32534#21495'='#23458#25143#32534#21495
      #20135#21697#20195#21495'='#20135#21697#20195#21495
      #20135#21697#21517#31216'='#20135#21697#21517#31216
      #20135#21697#35268#26684'='#20135#21697#35268#26684
      #21333#20301'='#21333#20301
      '-10-20=10-20'
      '-10-21=10-21'
      '-10-22=10-22'
      '-10-23=10-23'
      '-10-24=10-24'
      '-10-25=10-25'
      '-10-26=10-26'
      '-10-27=10-27'
      '-10-29=10-29'
      '-10-30=10-30'
      '-10-31=10-31'
      '-11-01=11-01'
      '-11-02=11-02'
      '-11-03=11-03'
      '-11-05=11-05'
      #21512#35745'='#21512#35745)
    DataSet = qyDet
    BCDToCurrency = False
    Left = 104
    Top = 320
  end
  object qyDet: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterOpen = qyDetAfterOpen
    Parameters = <>
    SQL.Strings = (
      'Exec prSaleQ '#39#39)
    Left = 104
    Top = 280
  end
  object dsDet: TDataSource
    DataSet = qyDet
    Left = 104
    Top = 240
  end
end
