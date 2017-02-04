inherited WareItemQFM: TWareItemQFM
  Caption = #24211#23384#20135#21697#26597#35810
  ClientHeight = 516
  ClientWidth = 967
  ExplicitWidth = 973
  ExplicitHeight = 545
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 967
    Height = 53
    ExplicitWidth = 967
    ExplicitHeight = 53
    inherited cxEdtValue: TcxTextEdit
      Top = 14
      Properties.OnChange = btFindClick
      TextHint = #21487#26681#25454#20135#21697#20195#21495#12289#25340#38899#30721#12289#21517#31216#26597#35810
      OnKeyPress = cxEdtValueKeyPress
      ExplicitTop = 14
      ExplicitWidth = 231
      Width = 231
    end
    inherited cxlbl1: TcxLabel
      Top = 16
      ExplicitTop = 16
    end
    object cxchg1: TcxCheckGroup
      Left = 622
      Top = 1
      Align = alRight
      Caption = #20135#21697#23646#24615
      EditValue = ';0,1,2,3,4'
      Properties.Columns = 5
      Properties.Items = <
        item
          Caption = #21407#26448#26009
        end
        item
          Caption = #36741#26009
        end
        item
          Caption = #21322#25104#21697
        end
        item
          Caption = #25104#21697
        end
        item
          Caption = #36130#21153#31867
        end>
      Properties.OnChange = btFindClick
      TabOrder = 1
      Visible = False
      Height = 51
      Width = 344
    end
  end
  inherited tv: TdxDBTreeView
    Top = 109
    Height = 407
    DataSource = dsHed
    DisplayField = 'ItemKindCode;ItemKindName'
    KeyField = 'ItemKindId'
    ListField = 'ItemKindName'
    ParentField = 'ParentId'
    OnClick = tvClick
    ParentFont = False
    ExplicitTop = 109
    ExplicitHeight = 407
  end
  inherited cxgrd: TcxGrid
    Top = 109
    Width = 790
    Height = 407
    ExplicitTop = 109
    ExplicitWidth = 790
    ExplicitHeight = 407
    inherited cxgrdtbv: TcxGridDBTableView
      OnDblClick = cxgrdtbvDblClick
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #35760#24405#25968#65306'0'
          Kind = skCount
          FieldName = 'ItemId'
        end>
      object cxgrdtbvbSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Visible = False
        Width = 48
      end
      object cxgrdtbvItemId: TcxGridDBColumn
        Caption = #20135#21697#32534#21495
        DataBinding.FieldName = 'ItemId'
        Visible = False
        Options.Editing = False
        Width = 65
      end
      object cxgrdtbvItemCode: TcxGridDBColumn
        Caption = #20135#21697#20195#21495
        DataBinding.FieldName = 'ItemCode'
        Options.Editing = False
        Width = 74
      end
      object cxgrdtbvItemName: TcxGridDBColumn
        Caption = #20135#21697#21517#31216
        DataBinding.FieldName = 'ItemName'
        Options.Editing = False
        Width = 151
      end
      object cxgrdtbvItemSpc: TcxGridDBColumn
        Caption = #35268#26684
        DataBinding.FieldName = 'ItemSpc'
        Visible = False
        Options.Editing = False
        Width = 64
      end
      object cxgrdtbvWareName: TcxGridDBColumn
        Caption = #20179#24211#21517#31216
        DataBinding.FieldName = 'WareName'
        Visible = False
        Options.Editing = False
        Width = 67
      end
      object cxgrdtbvProType: TcxGridDBColumn
        Caption = #23646#24615
        DataBinding.FieldName = 'ProType'
        Options.Editing = False
        Width = 78
      end
      object cxgrdtbvColor: TcxGridDBColumn
        Caption = #39068#33394
        DataBinding.FieldName = 'Color'
        Visible = False
        Options.Editing = False
        Width = 80
      end
      object cxgrdtbvColumn1: TcxGridDBColumn
        Caption = #23545#24212#21333#20301#21517#31216
        DataBinding.FieldName = 'ObjectName'
        Visible = False
        Options.Editing = False
        Width = 89
      end
      object cxgrdtbvPlaceNo: TcxGridDBColumn
        Caption = #36135#20301
        DataBinding.FieldName = 'PlaceNo'
        Visible = False
        Options.Editing = False
        Width = 55
      end
      object cxgrdtbvWareNum: TcxGridDBColumn
        Caption = #24211#23384#25968#37327
        DataBinding.FieldName = 'WareNum'
        Options.Editing = False
        Width = 72
      end
      object cxgrdtbvItemPYCode: TcxGridDBColumn
        Caption = #25340#38899#30721
        DataBinding.FieldName = 'ItemPYCode'
        Visible = False
        Options.Editing = False
        Width = 80
      end
      object cxgrdtbvWareId: TcxGridDBColumn
        Caption = #20179#24211#32534#21495
        DataBinding.FieldName = 'WareId'
        Visible = False
        Options.Editing = False
        Width = 68
      end
      object cxgrdtbvBatchNo: TcxGridDBColumn
        Caption = #25209#21495
        DataBinding.FieldName = 'BatchNo'
        Visible = False
        Options.Editing = False
        Width = 80
      end
      object cxgrdtbvCompactNo: TcxGridDBColumn
        Caption = #21512#21516#21495
        DataBinding.FieldName = 'CompactNo'
        Visible = False
        Options.Editing = False
        Width = 80
      end
      object cxgrdtbvObjectId: TcxGridDBColumn
        Caption = #24448#26469#21333#20301#32534#21495
        DataBinding.FieldName = 'ObjectId'
        Visible = False
        Options.Editing = False
        Width = 80
      end
      object cxgrdtbvTechName: TcxGridDBColumn
        Caption = #24037#24207
        DataBinding.FieldName = 'TechName'
        Visible = False
        Options.Editing = False
        Width = 80
      end
      object cxgrdtbvInDate: TcxGridDBColumn
        Caption = #20837#24211#26085#26399
        DataBinding.FieldName = 'InDate'
        Visible = False
        Options.Editing = False
        Width = 80
      end
      object cxgrdtbvPState: TcxGridDBColumn
        Caption = #29366#24577
        DataBinding.FieldName = 'PState'
        Visible = False
        Options.Editing = False
        Width = 80
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
      Visible = ivNever
      OnClick = btAllSelectClick
    end
    inherited btUnSelect: TdxBarLargeButton
      Visible = ivNever
      OnClick = btUnSelectClick
    end
    inherited btFind: TdxBarLargeButton
      OnClick = btFindClick
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
      'exec PrWareItemQ '#39#39)
  end
end
