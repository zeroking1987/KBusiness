inherited BOMMatOutItemQFM: TBOMMatOutItemQFM
  Caption = 'BOM'#21457#26009#20135#21697#26597#35810
  ClientHeight = 516
  ClientWidth = 1020
  ExplicitWidth = 1026
  ExplicitHeight = 545
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 1020
    Height = 43
    ExplicitWidth = 1020
    ExplicitHeight = 43
    inherited cxEdtValue: TcxTextEdit
      Left = 82
      Top = 11
      Properties.OnChange = cxEdtValuePropertiesChange
      TextHint = #36755#20837#20135#21697#20195#21495#12289#21517#31216#12289#35268#26684#12289#25340#38899#30721#21363#21487#26597#35810
      OnKeyPress = cxEdtValueKeyPress
      ExplicitLeft = 82
      ExplicitTop = 11
      ExplicitWidth = 279
      Width = 279
    end
    inherited cxlbl1: TcxLabel
      Left = 24
      Top = 13
      ExplicitLeft = 24
      ExplicitTop = 13
    end
    object cxchgParam: TcxCheckGroup
      Left = 516
      Top = 1
      Align = alRight
      Alignment = alCenterCenter
      Properties.Columns = 8
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
        end
        item
          Caption = #24037#20855
        end>
      Properties.OnChange = btFindClick
      TabOrder = 2
      Visible = False
      Height = 41
      Width = 503
    end
  end
  inherited tv: TdxDBTreeView
    Top = 97
    Width = 233
    Height = 419
    DataSource = dsHed
    DisplayField = 'ItemKindCode;ItemKindName'
    KeyField = 'ItemKindId'
    ListField = 'ItemKindName'
    ParentField = 'ParentId'
    OnClick = tvClick
    ParentFont = False
    ExplicitTop = 97
    ExplicitWidth = 233
    ExplicitHeight = 419
  end
  inherited cxgrd: TcxGrid
    Left = 233
    Top = 97
    Width = 787
    Height = 419
    ExplicitLeft = 233
    ExplicitTop = 97
    ExplicitWidth = 787
    ExplicitHeight = 419
    inherited cxgrdtbv: TcxGridDBTableView
      OnDblClick = cxgrdtbvDblClick
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #35760#24405#25968#65306'0'
          Kind = skCount
          FieldName = 'ItemId'
          Column = cxgrdbclmnItemCode
        end>
      object cxgrdbclmnSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Width = 54
      end
      object cxgrdbclmnItemCode: TcxGridDBColumn
        Caption = #20135#21697#20195#21495
        DataBinding.FieldName = 'ItemCode'
        Options.Editing = False
        Width = 93
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
        Caption = #23646#24615
        DataBinding.FieldName = 'ItemParam'
        Options.Editing = False
        Width = 58
      end
      object cxgrdbclmnItemKindName: TcxGridDBColumn
        Caption = #31867#21035
        DataBinding.FieldName = 'ItemKindName'
        Options.Editing = False
        Width = 84
      end
      object cxgrdbclmnWareNum: TcxGridDBColumn
        DataBinding.FieldName = #24211#23384#25968#37327
        Width = 72
      end
      object cxgrdbclmnItemPYCode: TcxGridDBColumn
        Caption = #25340#38899#30721
        DataBinding.FieldName = 'ItemPYCode'
        Options.Editing = False
        Width = 66
      end
      object cxgrdbclmnItemId: TcxGridDBColumn
        Caption = #20135#21697#32534#21495
        DataBinding.FieldName = 'ItemId'
        Visible = False
        Options.Editing = False
        Width = 71
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      54
      0)
    inherited dxbrBarMang: TdxBar
      FloatLeft = 808
      FloatTop = 185
      FloatClientWidth = 52
      FloatClientHeight = 560
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
          Visible = True
          ItemName = 'btRight'
        end
        item
          Visible = True
          ItemName = 'btLast'
        end
        item
          Visible = True
          ItemName = 'btFind'
        end
        item
          Visible = True
          ItemName = 'btAllSelect'
        end
        item
          Visible = True
          ItemName = 'btUnSelect'
        end
        item
          Visible = True
          ItemName = 'btTemp'
        end
        item
          Visible = True
          ItemName = 'btOk'
        end
        item
          Visible = True
          ItemName = 'btExit'
        end>
    end
    inherited btAllSelect: TdxBarLargeButton
      OnClick = btAllSelectClick
    end
    inherited btUnSelect: TdxBarLargeButton
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
      'PrBOMMatOutItemQ '#39#39)
    object qyFindbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyFindItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 50
    end
    object qyFindItemPYCode: TStringField
      FieldName = 'ItemPYCode'
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
    object qyFindItemParam: TStringField
      FieldName = 'ItemParam'
      Size = 10
    end
    object qyFindItemKindId: TStringField
      FieldName = 'ItemKindId'
    end
    object qyFindItemKindName: TStringField
      FieldName = 'ItemKindName'
      Size = 30
    end
    object qyFindWareNum: TFMTBCDField
      FieldName = 'WareNum'
      ReadOnly = True
      Precision = 38
      Size = 6
    end
    object qyFindItemId: TStringField
      FieldName = 'ItemId'
      Size = 30
    end
    object qyFindTempNum: TFMTBCDField
      FieldName = 'TempNum'
      Precision = 19
      Size = 6
    end
  end
end
