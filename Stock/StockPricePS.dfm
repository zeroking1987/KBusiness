inherited StockPriceFM: TStockPriceFM
  Caption = #37319#36141#20215#26684#34920
  ClientHeight = 545
  ClientWidth = 1045
  ExplicitWidth = 1045
  ExplicitHeight = 545
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    Width = 1045
    TabOrder = 3
    ExplicitWidth = 1045
    inherited cxLabTitle: TcxLabel
      Caption = #37319#36141#20215#26684#34920
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlcxGrd: TPanel
    Top = 114
    Width = 1045
    Height = 431
    ExplicitTop = 114
    ExplicitWidth = 1045
    ExplicitHeight = 431
    inherited cxgrd: TcxGrid
      Left = 336
      Width = 709
      Height = 431
      ExplicitLeft = 336
      ExplicitWidth = 709
      ExplicitHeight = 431
      inherited cxgrdtbv: TcxGridDBTableView
        object cxgrdbclmnItemCode: TcxGridDBColumn
          Caption = #20135#21697#20195#21495
          DataBinding.FieldName = 'ItemCode'
          Width = 70
        end
        object cxgrdbclmnItemName: TcxGridDBColumn
          Caption = #20135#21697#21517#31216
          DataBinding.FieldName = 'ItemName'
          Width = 70
        end
        object cxgrdbclmnItemSpc: TcxGridDBColumn
          Caption = #35268#26684
          DataBinding.FieldName = 'ItemSpc'
          Width = 70
        end
        object cxgrdbclmnMainPrice: TcxGridDBColumn
          Caption = #19981#21547#31246#20215
          DataBinding.FieldName = 'MainPrice'
          Width = 70
        end
        object cxgrdbclmnTaxPrice: TcxGridDBColumn
          Caption = #21547#31246#20215
          DataBinding.FieldName = 'TaxPrice'
          Width = 70
        end
        object cxgrdbclmnTaxRate: TcxGridDBColumn
          Caption = #31246#29575
          DataBinding.FieldName = 'TaxRate'
          Width = 70
        end
        object cxgrdbclmnPriceKind: TcxGridDBColumn
          Caption = #35745#20215#31867#21035
          DataBinding.FieldName = 'PriceKind'
          Width = 70
        end
        object cxgrdbclmnRemark: TcxGridDBColumn
          Caption = #22791#27880
          DataBinding.FieldName = 'Remark'
          Width = 70
        end
      end
      object cxgrdbndtblvw: TcxGridDBBandedTableView [1]
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsHed
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Column = cxgrdbndclmnItemCode
            DisplayText = #21512#35745#65306
          end
          item
            Kind = skCount
            Column = cxgrdbndclmnItemName
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.PullFocusing = True
        OptionsView.NoDataToDisplayInfoText = #24658#21019#36719#20214
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 35
        OnCustomDrawIndicatorCell = cxgrdbndtblvwCustomDrawIndicatorCell
        Bands = <
          item
            Caption = #20379#24212#21830#20449#24687
            Width = 149
          end
          item
            Caption = #20135#21697#20449#24687
          end
          item
            Caption = #20215#26684#20449#24687
          end
          item
            Caption = #20854#20182#20449#24687
            Width = 144
          end>
        object cxgrdbndclmnItemCode: TcxGridDBBandedColumn
          Caption = #20195#21495
          DataBinding.FieldName = 'ItemCode'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxgrdbndclmnItemCodePropertiesButtonClick
          Width = 70
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxgrdbndclmnItemName: TcxGridDBBandedColumn
          Caption = #21517#31216
          DataBinding.FieldName = 'ItemName'
          Width = 116
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxgrdbndclmnItemSpc: TcxGridDBBandedColumn
          Caption = #35268#26684
          DataBinding.FieldName = 'ItemSpc'
          Width = 70
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxgrdbndtblvwColumn1: TcxGridDBBandedColumn
          Caption = #21333#20301
          DataBinding.FieldName = 'ItemUnit'
          Width = 42
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxgrdbndclmnMainPrice: TcxGridDBBandedColumn
          Caption = #19981#21547#31246#20215
          DataBinding.FieldName = 'MainPrice'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.OnValidate = cxgrdbndclmnMainPricePropertiesValidate
          Width = 70
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxgrdbndclmnTaxPrice: TcxGridDBBandedColumn
          Caption = #21547#31246#20215
          DataBinding.FieldName = 'TaxPrice'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.OnValidate = cxgrdbndclmnTaxPricePropertiesValidate
          Width = 70
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxgrdbndclmnTaxRate: TcxGridDBBandedColumn
          Caption = #31246#29575'%'
          DataBinding.FieldName = 'TaxRate'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.OnValidate = cxgrdbndclmnTaxRatePropertiesValidate
          Width = 48
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxgrdbndclmnRemark: TcxGridDBBandedColumn
          Caption = #22791#27880
          DataBinding.FieldName = 'Remark'
          Width = 95
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxgrdbndtblvwColumn2: TcxGridDBBandedColumn
          Caption = #20379#24212#21830#21517#31216
          DataBinding.FieldName = 'PrvName'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxgrdbndtblvwColumn3: TcxGridDBBandedColumn
          Caption = #21333#37325
          DataBinding.FieldName = 'Weight'
          Width = 48
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      inherited cxgrdlev: TcxGridLevel
        GridView = cxgrdbndtblvw
      end
    end
    object cxspltr2: TcxSplitter
      Left = 328
      Top = 0
      Width = 8
      Height = 431
      Control = cxgrd1
    end
    object cxgrd1: TcxGrid
      Left = 0
      Top = 0
      Width = 328
      Height = 431
      Align = alLeft
      TabOrder = 2
      object cxgrdtbv1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = cxgrdtbvCellDblClick
        DataController.DataSource = dsPrv
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.PullFocusing = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Editing = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.FocusRect = False
        OptionsView.NoDataToDisplayInfoText = #24658#21019#36719#20214
        OptionsView.Footer = True
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 35
        OnCustomDrawIndicatorCell = cxgrdtbv1CustomDrawIndicatorCell
        object cxgrdbclmncxgrdtbv1PrvKindName: TcxGridDBColumn
          Caption = #20379#24212#21830#31867#21035
          DataBinding.FieldName = 'PrvKindName'
          Visible = False
          GroupIndex = 0
          Width = 101
        end
        object cxgrdbclmncxgrdtbv1PrvId: TcxGridDBColumn
          Caption = #20379#24212#21830#32534#21495
          DataBinding.FieldName = 'PrvId'
          Width = 59
        end
        object cxgrdbclmncxgrdtbv1PrvName: TcxGridDBColumn
          Caption = #20379#24212#21830#21517#31216
          DataBinding.FieldName = 'PrvName'
          Width = 177
        end
      end
      object cxgrdlev1: TcxGridLevel
        GridView = cxgrdtbv1
      end
    end
    object dbedtPrvId: TDBEdit
      Left = 256
      Top = 176
      Width = 121
      Height = 21
      DataField = 'PrvId'
      DataSource = dsPrv
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 3
      Visible = False
      OnChange = dbedtPrvIdChange
    end
  end
  object pnl1: TPanel [2]
    Left = 0
    Top = 76
    Width = 1045
    Height = 38
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object lbl1: TLabel
      Left = 16
      Top = 12
      Width = 36
      Height = 13
      Caption = #20379#24212#21830
    end
    object lbl2: TLabel
      Left = 334
      Top = 12
      Width = 48
      Height = 13
      Caption = #20135#21697#21517#31216
    end
    object btnPrvName: TcxButtonEdit
      Left = 58
      Top = 8
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnPrvNamePropertiesButtonClick
      Properties.OnChange = btnPrvNamePropertiesChange
      TabOrder = 0
      TextHint = #21487#25163#21160#36755#20837#20379#24212#21830#21517#31216#25110#28857#20987#25353#38062#36873#25321#20379#24212#21830
      Width = 270
    end
    object btnItemName: TcxButtonEdit
      Left = 384
      Top = 8
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemNamePropertiesButtonClick
      Properties.OnChange = btnPrvNamePropertiesChange
      TabOrder = 1
      TextHint = #21487#25163#21160#36755#20837#20135#21697#21517#31216#25110#28857#20987#25353#38062#36873#25321#20135#21697
      Width = 271
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      46
      0)
    inherited btDel: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btAddL: TdxBarLargeButton
      OnClick = btAddLClick
    end
    inherited btDelL: TdxBarLargeButton
      OnClick = btDelLClick
    end
    inherited btFind: TdxBarLargeButton
      Visible = ivNever
    end
  end
  inherited dsHed: TDataSource
    Left = 464
    Top = 256
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyHedAfterInsert
    SQL.Strings = (
      'select * from StockPriceTB')
    Left = 464
    Top = 296
    object qyHedAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qyHedPrvId: TStringField
      FieldName = 'PrvId'
      OnChange = qyHedPrvIdChange
    end
    object qyHedItemId: TStringField
      FieldName = 'ItemId'
      OnChange = qyHedItemIdChange
      Size = 30
    end
    object qyHedItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 50
    end
    object qyHedItemName: TStringField
      FieldName = 'ItemName'
    end
    object qyHedItemSpc: TStringField
      FieldName = 'ItemSpc'
    end
    object fmtbcdfldHedMainPrice: TFMTBCDField
      FieldName = 'MainPrice'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldHedTaxPrice: TFMTBCDField
      FieldName = 'TaxPrice'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldHedSubPrice: TFMTBCDField
      FieldName = 'SubPrice'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldHedSubTaxPrice: TFMTBCDField
      FieldName = 'SubTaxPrice'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldHedTaxRate: TFMTBCDField
      FieldName = 'TaxRate'
      Precision = 18
      Size = 5
    end
    object qyHedPriceKind: TIntegerField
      FieldName = 'PriceKind'
    end
    object qyHedbKey: TBooleanField
      FieldName = 'bKey'
    end
    object qyHedRemark: TStringField
      FieldName = 'Remark'
      Size = 100
    end
    object qyHedItemUnit: TStringField
      FieldKind = fkCalculated
      FieldName = 'ItemUnit'
      Calculated = True
    end
    object qyHedPrvName: TStringField
      FieldName = 'PrvName'
      Size = 100
    end
    object qyHedWeight: TFMTBCDField
      FieldName = 'Weight'
      Precision = 19
      Size = 6
    end
  end
  inherited pmLayout: TPopupMenu
    Left = 680
    Top = 328
  end
  inherited cxgrdpmn1: TcxGridPopupMenu
    Left = 640
    Top = 328
  end
  object qyPrv: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'select b.PrvKindName,a.PrvId,a.PrvName from ProviderTB a left jo' +
        'in PrvKindTB b on a.PrvKindId=b.PrvKindId '
      'order by b.PrvKindId,a.PrvId')
    Left = 80
    Top = 240
    object qyPrvPrvKindName: TStringField
      FieldName = 'PrvKindName'
      Size = 30
    end
    object qyPrvPrvId: TStringField
      FieldName = 'PrvId'
    end
    object qyPrvPrvName: TStringField
      FieldName = 'PrvName'
      Size = 50
    end
  end
  object dsPrv: TDataSource
    DataSet = qyPrv
    Left = 80
    Top = 208
  end
end
