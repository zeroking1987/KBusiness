inherited ItemQFM: TItemQFM
  Caption = #20135#21697#26597#35810
  ClientHeight = 516
  ClientWidth = 952
  ExplicitWidth = 958
  ExplicitHeight = 545
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 952
    Height = 43
    ExplicitWidth = 952
    ExplicitHeight = 43
    inherited cxEdtValue: TcxTextEdit
      Left = 82
      Top = 11
      Properties.OnChange = cxEdtValuePropertiesChange
      TextHint = #36755#20837#20135#21697#20195#21495#12289#21517#31216#12289#35268#26684#12289#25340#38899#30721#21363#21487#26597#35810
      OnKeyPress = cxEdtValueKeyPress
      ExplicitLeft = 82
      ExplicitTop = 11
      ExplicitWidth = 263
      Width = 263
    end
    inherited cxlbl1: TcxLabel
      Left = 24
      Top = 13
      ExplicitLeft = 24
      ExplicitTop = 13
    end
  end
  inherited tv: TdxDBTreeView
    Top = 99
    Width = 233
    Height = 417
    DataSource = dsHed
    DisplayField = 'ItemKindCode;ItemKindName'
    KeyField = 'ItemKindId'
    ListField = 'ItemKindName'
    ParentField = 'ParentId'
    OnClick = tvClick
    ParentFont = False
    ExplicitTop = 99
    ExplicitWidth = 233
    ExplicitHeight = 417
  end
  inherited cxgrd: TcxGrid
    Left = 233
    Top = 99
    Width = 719
    Height = 417
    ExplicitLeft = 233
    ExplicitTop = 99
    ExplicitWidth = 719
    ExplicitHeight = 417
    inherited cxgrdtbv: TcxGridDBTableView
      OnDblClick = cxgrdtbvDblClick
      OnKeyPress = cxgrdtbvKeyPress
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #35760#24405#25968#65306'0'
          Kind = skCount
          FieldName = 'ItemId'
          Column = cxgrdbclmnItemCode
        end>
      OptionsView.NoDataToDisplayInfoText = #24658#25463#36719#20214
      object cxgrdbclmnSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Width = 46
      end
      object cxgrdtbvColumn1: TcxGridDBColumn
        Caption = #25968#37327
        DataBinding.FieldName = 'BillNum'
        Styles.Content = DataFM.cxStyNum
        Width = 65
      end
      object cxgrdtbvcmnWareNum: TcxGridDBColumn
        Caption = #24211#23384#25968
        DataBinding.FieldName = 'WareNum'
        Options.Editing = False
        Width = 71
      end
      object cxgrdbclmnItemCode: TcxGridDBColumn
        Caption = #20135#21697#20195#21495
        DataBinding.FieldName = 'ItemCode'
        Options.Editing = False
        Width = 84
      end
      object cxgrdbclmnItemName: TcxGridDBColumn
        Caption = #20135#21697#21517#31216
        DataBinding.FieldName = 'ItemName'
        Options.Editing = False
        Width = 100
      end
      object cxgrdbclmnItemSpc: TcxGridDBColumn
        Caption = #20135#21697#35268#26684
        DataBinding.FieldName = 'ItemSpc'
        Options.Editing = False
        Width = 100
      end
      object cxgrdbclmnItemUnit: TcxGridDBColumn
        Caption = #21333#20301
        DataBinding.FieldName = 'ItemUnit'
        Options.Editing = False
        Width = 40
      end
      object cxgrdbclmnItemParam: TcxGridDBColumn
        Caption = #37319#36141#20215
        DataBinding.FieldName = 'StockPrice'
        Options.Editing = False
        Width = 58
      end
      object cxgrdbclmnSalePrice: TcxGridDBColumn
        Caption = #38144#21806#20215
        DataBinding.FieldName = 'SalePrice'
        Options.Editing = False
        Width = 72
      end
      object cxgrdbclmnItemKindName: TcxGridDBColumn
        Caption = #31867#21035
        DataBinding.FieldName = 'ItemKindName'
        Options.Editing = False
        Width = 68
      end
      object cxgrdbclmnItemId: TcxGridDBColumn
        Caption = #22791#27880
        DataBinding.FieldName = 'Remark'
        Options.Editing = False
        Width = 71
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      56
      0)
    inherited dxbrBarMang: TdxBar
      FloatLeft = 808
      FloatTop = 185
      FloatClientWidth = 52
      FloatClientHeight = 560
    end
    inherited btAllSelect: TdxBarLargeButton
      OnClick = btAllSelectClick
    end
    inherited btUnSelect: TdxBarLargeButton
      OnClick = btUnSelectClick
    end
    inherited btOk: TdxBarLargeButton
      Hint = #33719#24471#36873#21462#30340#25968#25454#65288#25353#31354#26684#21487#36873#20013#35760#24405#65289
    end
    inherited btFind: TdxBarLargeButton
      OnClick = btFindClick
    end
    inherited btTemp: TdxBarLargeButton
      Hint = #20020#26102
    end
    inherited btFilter: TdxBarLargeButton
      OnClick = btFilterClick
    end
  end
  inherited qyHed: TADOQuery
    SQL.Strings = (
      'select * from ItemKindTB')
    object intgrfldHedAutoId: TIntegerField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object blnfldHedbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyHedItemKindId: TStringField
      FieldName = 'ItemKindId'
    end
    object qyHedItemKindCode: TStringField
      FieldName = 'ItemKindCode'
    end
    object qyHedItemKindName: TStringField
      FieldName = 'ItemKindName'
      Size = 30
    end
    object qyHedParentId: TStringField
      FieldName = 'ParentId'
    end
    object qyHedParam: TStringField
      FieldName = 'Param'
      Size = 30
    end
    object qyHedKindWare: TStringField
      FieldName = 'KindWare'
    end
    object qyHedRemark: TStringField
      FieldName = 'Remark'
      Size = 50
    end
  end
  inherited qyFind: TADOQuery
    SQL.Strings = (
      'exec PrItemQ '#39#39
      '')
    object qyFindbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyFindItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 50
    end
    object qyFindItemName: TStringField
      FieldName = 'ItemName'
      Size = 100
    end
    object qyFindItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 100
    end
    object qyFindItemUnit: TStringField
      FieldName = 'ItemUnit'
      Size = 10
    end
    object qyFindItemId: TStringField
      FieldName = 'ItemId'
      Size = 30
    end
    object qyFindMaterial: TStringField
      FieldName = 'Material'
      Size = 100
    end
    object qyFindISBN: TStringField
      FieldName = 'ISBN'
      Size = 100
    end
    object qyFindStockPrice: TFMTBCDField
      FieldName = 'StockPrice'
      Precision = 18
      Size = 5
    end
    object qyFindSalePrice: TFMTBCDField
      FieldName = 'SalePrice'
      Precision = 18
      Size = 5
    end
    object qyFindItemKindName: TStringField
      FieldName = 'ItemKindName'
      Size = 50
    end
    object qyFindItemKindId: TStringField
      FieldName = 'ItemKindId'
      Size = 50
    end
    object qyFindRemark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
    object qyFindWareNum: TFMTBCDField
      FieldName = 'WareNum'
      Precision = 38
      Size = 6
    end
    object qyFindBillNum: TFMTBCDField
      FieldName = 'BillNum'
      Precision = 18
      Size = 5
    end
  end
end
