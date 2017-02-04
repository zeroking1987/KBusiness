inherited FirstBookFM: TFirstBookFM
  Caption = #26399#21021#30331#35760
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    TabOrder = 3
    inherited cxLabTitle: TcxLabel
      Caption = #20179#24211#26399#21021
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlcxGrd: TPanel
    inherited cxgrd: TcxGrid
      inherited cxgrdtbv: TcxGridDBTableView
        DataController.DataModeController.GridMode = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsView.Footer = False
        object cxgrdbclmnAccountNo: TcxGridDBColumn
          Caption = #24180#26376'*'
          DataBinding.FieldName = 'AccountNo'
          Width = 60
        end
        object cxgrdbclmnWareId: TcxGridDBColumn
          Caption = #20179#24211#32534#21495
          DataBinding.FieldName = 'WareId'
          Visible = False
          Width = 120
        end
        object cxgrdbclmnWareName: TcxGridDBColumn
          Caption = #20179#24211#21517#31216'*'
          DataBinding.FieldName = 'WareName'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxgrdbclmnWareNamePropertiesButtonClick
          Width = 85
        end
        object cxgrdbclmnItemId: TcxGridDBColumn
          Caption = #20135#21697#32534#21495
          DataBinding.FieldName = 'ItemId'
          Visible = False
          Width = 120
        end
        object cxgrdbclmnItemCode: TcxGridDBColumn
          Caption = #20135#21697#20195#21495'*'
          DataBinding.FieldName = 'ItemCode'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxgrdbclmnItemCodePropertiesButtonClick
          Width = 85
        end
        object cxgrdbclmnItemName: TcxGridDBColumn
          Caption = #20135#21697#21517#31216
          DataBinding.FieldName = 'ItemName'
          Styles.Content = DataFM.cxStyNoEdit
          Width = 100
        end
        object cxgrdbclmnItemSpc: TcxGridDBColumn
          Caption = #20135#21697#35268#26684
          DataBinding.FieldName = 'ItemSpc'
          Styles.Content = DataFM.cxStyNoEdit
          Width = 71
        end
        object cxgrdbclmnItemUnit: TcxGridDBColumn
          Caption = #21333#20301
          DataBinding.FieldName = 'ItemUnit'
          Styles.Content = DataFM.cxStyNoEdit
          Width = 47
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
          Width = 69
        end
        object cxgrdbclmnColor: TcxGridDBColumn
          Caption = #39068#33394
          DataBinding.FieldName = 'Color'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxgrdbclmnColorPropertiesButtonClick
          Width = 68
        end
        object cxgrdbclmnBatchNo: TcxGridDBColumn
          Caption = #25209#27425#21495
          DataBinding.FieldName = 'BatchNo'
          Visible = False
          Width = 120
        end
        object cxgrdbclmnPlaceNo: TcxGridDBColumn
          Caption = #36135#20301
          DataBinding.FieldName = 'PlaceNo'
          Visible = False
          Width = 75
        end
        object cxgrdbclmnCompactNo: TcxGridDBColumn
          Caption = #21512#21516#21495
          DataBinding.FieldName = 'CompactNo'
          Visible = False
          Width = 120
        end
        object cxgrdbclmnObjectId: TcxGridDBColumn
          Caption = #23545#35937#32534#21495
          DataBinding.FieldName = 'ObjectId'
          Visible = False
          Width = 120
        end
        object cxgrdbclmnObjectName: TcxGridDBColumn
          Caption = #23545#35937#21517#31216
          DataBinding.FieldName = 'ObjectName'
          Visible = False
          Width = 120
        end
        object cxgrdbclmnTechName: TcxGridDBColumn
          Caption = #24037#24207
          DataBinding.FieldName = 'TechName'
          Visible = False
          Width = 120
        end
        object cxgrdbclmnPState: TcxGridDBColumn
          Caption = #29366#24577
          DataBinding.FieldName = 'PState'
          Visible = False
          Width = 120
        end
        object cxgrdbclmnFirstNum: TcxGridDBColumn
          Caption = #25968#37327
          DataBinding.FieldName = 'FirstNum'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.OnValidate = cxgrdbclmnFirstNumPropertiesValidate
          Width = 63
        end
        object cxgrdbclmnFirstPrice: TcxGridDBColumn
          Caption = #21333#20215
          DataBinding.FieldName = 'FirstPrice'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.OnValidate = cxgrdbclmnFirstPricePropertiesValidate
          Width = 60
        end
        object cxgrdbclmnFirstMoney: TcxGridDBColumn
          Caption = #37329#39069
          DataBinding.FieldName = 'FirstMoney'
          Width = 62
        end
        object cxgrdbclmnAccountFlag: TcxGridDBColumn
          Caption = #26159#21542#35760#36134
          DataBinding.FieldName = 'AccountFlag'
          Styles.Content = DataFM.cxStyNoEdit
          Width = 69
        end
        object cxgrdbclmnMakeMan: TcxGridDBColumn
          Caption = #21046#21333#20154
          DataBinding.FieldName = 'MakeMan'
          Visible = False
          Width = 68
        end
        object cxgrdbclmnMakeManName: TcxGridDBColumn
          Caption = #21046#21333#20154#22995#21517
          DataBinding.FieldName = 'MakeManName'
          Styles.Content = DataFM.cxStyNoEdit
          Width = 87
        end
        object cxgrdbclmnMakeDate: TcxGridDBColumn
          Caption = #21046#21333#26085#26399
          DataBinding.FieldName = 'MakeDate'
          Styles.Content = DataFM.cxStyNoEdit
          Width = 72
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
    inherited btAddL: TdxBarLargeButton
      OnClick = btAddLClick
    end
    inherited btDelL: TdxBarLargeButton
      OnClick = btDelLClick
    end
    inherited btFind: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btRefer: TdxBarLargeButton
      Caption = #23548' '#20837
    end
    inherited btCheck: TdxBarLargeButton
      Caption = #35760' '#36134
      Hint = #23545#21333#25454#36827#34892#35760#36134
      Visible = ivAlways
      OnClick = btCheckClick
    end
    inherited btUnCheck: TdxBarLargeButton
      Caption = #21453#35760#36134
      Hint = #23545#21333#25454#36827#34892#21453#35760#36134
      Visible = ivAlways
      OnClick = btUnCheckClick
    end
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyHedAfterInsert
    OnCalcFields = qyHedCalcFields
    SQL.Strings = (
      'select * from WareAccountTB'
      '')
    object qyHedAccountNo: TStringField
      FieldName = 'AccountNo'
      Size = 30
    end
    object qyHedWareId: TStringField
      FieldName = 'WareId'
      Size = 30
    end
    object qyHedWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'WareName'
      Calculated = True
    end
    object qyHedItemId: TStringField
      FieldName = 'ItemId'
      Size = 30
    end
    object qyHedItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 30
    end
    object qyHedItemName: TStringField
      FieldKind = fkCalculated
      FieldName = 'ItemName'
      Calculated = True
    end
    object qyHedItemSpc: TStringField
      FieldKind = fkCalculated
      FieldName = 'ItemSpc'
      Calculated = True
    end
    object qyHedItemUnit: TStringField
      FieldKind = fkCalculated
      FieldName = 'ItemUnit'
      Calculated = True
    end
    object qyHedProType: TStringField
      FieldName = 'ProType'
      Size = 100
    end
    object qyHedColor: TStringField
      FieldName = 'Color'
      Size = 100
    end
    object qyHedBatchNo: TStringField
      FieldName = 'BatchNo'
      Size = 30
    end
    object qyHedPlaceNo: TStringField
      FieldName = 'PlaceNo'
      Size = 30
    end
    object qyHedCompactNo: TStringField
      FieldName = 'CompactNo'
      Size = 100
    end
    object qyHedObjectId: TStringField
      FieldName = 'ObjectId'
      Size = 30
    end
    object qyHedObjectName: TStringField
      FieldKind = fkCalculated
      FieldName = 'ObjectName'
      Calculated = True
    end
    object qyHedSjNo: TStringField
      FieldName = 'SjNo'
      Size = 30
    end
    object qyHedTechName: TStringField
      FieldName = 'TechName'
      Size = 100
    end
    object qyHedInDate: TStringField
      FieldName = 'InDate'
      Size = 30
    end
    object qyHedPState: TStringField
      FieldName = 'PState'
      Size = 30
    end
    object qyHedTempNo: TStringField
      FieldName = 'TempNo'
      Size = 30
    end
    object fmtbcdfldHedFirstNum: TFMTBCDField
      FieldName = 'FirstNum'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldHedFirstPrice: TFMTBCDField
      FieldName = 'FirstPrice'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldHedFirstMoney: TFMTBCDField
      FieldName = 'FirstMoney'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldHedInNum: TFMTBCDField
      FieldName = 'InNum'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldHedInPrice: TFMTBCDField
      FieldName = 'InPrice'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldHedInMoney: TFMTBCDField
      FieldName = 'InMoney'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldHedOutNum: TFMTBCDField
      FieldName = 'OutNum'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldHedOutPrice: TFMTBCDField
      FieldName = 'OutPrice'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldHedOutMoney: TFMTBCDField
      FieldName = 'OutMoney'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldHedLastNum: TFMTBCDField
      FieldName = 'LastNum'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldHedLastPrice: TFMTBCDField
      FieldName = 'LastPrice'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldHedLastMoney: TFMTBCDField
      FieldName = 'LastMoney'
      Precision = 18
      Size = 5
    end
    object qyHedMakeMan: TStringField
      FieldName = 'MakeMan'
      Size = 30
    end
    object qyHedMakeManName: TStringField
      FieldName = 'MakeManName'
      Size = 30
    end
    object dtmfldHedMakeDate: TDateTimeField
      FieldName = 'MakeDate'
    end
    object qyHedAccountFlag: TStringField
      FieldName = 'AccountFlag'
      Size = 10
    end
    object qyHedAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qyHedsOrderNo: TStringField
      FieldName = 'sOrderNo'
      Size = 30
    end
  end
end
