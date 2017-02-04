inherited WareItemFM: TWareItemFM
  Caption = #24211#23384#23646#24615#36873#25321
  ClientWidth = 736
  ExplicitWidth = 742
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 736
    ExplicitWidth = 736
    inherited cxEdtValue: TcxTextEdit
      TextHint = #21487#26681#25454#20135#21697#20195#21495#12289#25340#38899#30721#12289#21517#31216#26597#35810
      OnKeyPress = cxEdtValueKeyPress
    end
  end
  inherited tv: TdxDBTreeView
    DataSource = dsHed
    KeyField = 'ItemKindId'
    ListField = 'ItemKindName'
    ParentField = 'ParentId'
    OnClick = tvClick
  end
  inherited cxgrd: TcxGrid
    Width = 559
    ExplicitWidth = 559
    inherited cxgrdtbv: TcxGridDBTableView
      OnDblClick = cxgrdtbvDblClick
      object cxgrdtbvWareName: TcxGridDBColumn
        Caption = #20179#24211#21517#31216
        DataBinding.FieldName = 'WareName'
        Visible = False
        Width = 70
      end
      object cxgrdtbvItemCode: TcxGridDBColumn
        Caption = #20135#21697#20195#21495
        DataBinding.FieldName = 'ItemCode'
        Visible = False
        Width = 70
      end
      object cxgrdtbvItemName: TcxGridDBColumn
        Caption = #20135#21697#21517#31216
        DataBinding.FieldName = 'ItemName'
        Width = 97
      end
      object cxgrdtbvItemSpc: TcxGridDBColumn
        Caption = #35268#26684
        DataBinding.FieldName = 'ItemSpc'
        Width = 70
      end
      object cxgrdtbvItemUnit: TcxGridDBColumn
        Caption = #21333#20301
        DataBinding.FieldName = 'ItemUnit'
        Width = 42
      end
      object cxgrdtbvProType: TcxGridDBColumn
        Caption = #23646#24615
        DataBinding.FieldName = 'ProType'
        Width = 70
      end
      object cxgrdtbvColumn1: TcxGridDBColumn
        Caption = #39068#33394
        DataBinding.FieldName = 'Color'
        Width = 70
      end
      object cxgrdtbvWareNum: TcxGridDBColumn
        Caption = #24211#23384#25968
        DataBinding.FieldName = 'WareNum'
        Width = 97
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      56
      0)
    inherited btAllSelect: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btUnSelect: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btFind: TdxBarLargeButton
      OnClick = btFindClick
    end
  end
  inherited qyHed: TADOQuery
    SQL.Strings = (
      'select * from ItemKindTB')
    object qyHedAutoId: TIntegerField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qyHedbSelect: TBooleanField
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
      
        'select a.WareId,c.WareName,b.ItemKindId,a.ItemId,b.ItemCode,b.It' +
        'emName,b.ItemSpc,b.ItemUnit,a.ProType,a.Color,a.BatchNo,a.PlaceN' +
        'o,a.CompactNo,a.ObjectId,a.TechName,a.WareNum '
      'from WareStorageTB a left join ItemTB b on a.ItemId=b.ItemId'
      'left join WareTB c on a.WareId=c.WareId'
      'where ISNULL(a.WareNum,0)>0')
    object qyFindWareId: TStringField
      FieldName = 'WareId'
    end
    object qyFindWareName: TStringField
      FieldName = 'WareName'
      Size = 30
    end
    object qyFindItemId: TStringField
      FieldName = 'ItemId'
      Size = 30
    end
    object qyFindItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 30
    end
    object qyFindItemName: TStringField
      FieldName = 'ItemName'
      Size = 200
    end
    object qyFindItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 200
    end
    object qyFindItemUnit: TStringField
      FieldName = 'ItemUnit'
      Size = 10
    end
    object qyFindProType: TStringField
      FieldName = 'ProType'
      Size = 100
    end
    object qyFindColor: TStringField
      FieldName = 'Color'
      Size = 100
    end
    object qyFindBatchNo: TStringField
      FieldName = 'BatchNo'
      Size = 30
    end
    object qyFindPlaceNo: TStringField
      FieldName = 'PlaceNo'
      Size = 30
    end
    object qyFindCompactNo: TStringField
      FieldName = 'CompactNo'
      Size = 100
    end
    object qyFindTechName: TStringField
      FieldName = 'TechName'
      Size = 100
    end
    object qyFindWareNum: TFMTBCDField
      FieldName = 'WareNum'
      Precision = 19
      Size = 6
    end
    object qyFindObjectId: TStringField
      FieldName = 'ObjectId'
      Size = 30
    end
    object qyFindItemKindId: TStringField
      FieldName = 'ItemKindId'
    end
  end
end
