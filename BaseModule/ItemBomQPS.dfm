inherited ItemBomQFM: TItemBomQFM
  Caption = #20135#21697#28165#21333#26597#25214
  ClientHeight = 530
  ClientWidth = 936
  ExplicitWidth = 936
  ExplicitHeight = 530
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Width = 936
    TabOrder = 2
    ExplicitWidth = 936
    inherited cxLabTitle: TcxLabel
      Caption = #20135#21697#28165#21333#26597#25214
      Style.IsFontAssigned = True
      ExplicitTop = 0
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlFind: TPanel
    Width = 936
    Height = 29
    TabOrder = 4
    ExplicitWidth = 936
    ExplicitHeight = 29
    object cxtxtdtEdtValue: TcxTextEdit
      Left = 79
      Top = 6
      Properties.OnChange = btFindClick
      TabOrder = 0
      TextHint = #21487#36755#20837#20135#21697#20195#21495#12289#21517#31216#25110#25340#38899#30721#13#10
      Width = 370
    end
    object cxlbl1: TcxLabel
      Left = 24
      Top = 8
      Caption = #26597#35810#26465#20214
      Transparent = True
    end
    object cxrdgrpBuild: TcxRadioGroup
      Left = 479
      Top = 3
      Alignment = alCenterCenter
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = #24050#24314
        end
        item
          Caption = #26410#24314
        end
        item
          Caption = #25152#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 2
      TabOrder = 2
      Height = 26
      Width = 185
    end
  end
  inherited cxpgcntrl1: TcxPageControl
    Top = 105
    Width = 936
    Height = 425
    ExplicitTop = 105
    ExplicitWidth = 936
    ExplicitHeight = 425
    ClientRectBottom = 419
    ClientRectRight = 930
    inherited cxtbsht1: TcxTabSheet
      ExplicitWidth = 928
      ExplicitHeight = 392
      inherited cxgrd: TcxGrid
        Left = 217
        Width = 711
        Height = 392
        ExplicitLeft = 217
        ExplicitWidth = 711
        ExplicitHeight = 392
        inherited cxgrdtbv: TcxGridDBTableView
          OnDblClick = cxgrdtbvDblClick
          OnCustomDrawCell = cxgrdtbvCustomDrawCell
          OptionsView.Footer = False
          object cxgrdtbvItemId: TcxGridDBColumn
            Caption = #20135#21697#32534#21495
            DataBinding.FieldName = 'ItemId'
            Visible = False
            Width = 67
          end
          object cxgrdtbvItemCode: TcxGridDBColumn
            Caption = #20135#21697#20195#21495
            DataBinding.FieldName = 'ItemCode'
            Width = 109
          end
          object cxgrdtbvItemName: TcxGridDBColumn
            Caption = #20135#21697#21517#31216
            DataBinding.FieldName = 'ItemName'
            Width = 147
          end
          object cxgrdtbvItemSpc: TcxGridDBColumn
            Caption = #35268#26684
            DataBinding.FieldName = 'ItemSpc'
            Width = 108
          end
          object cxgrdtbvItemUnit: TcxGridDBColumn
            Caption = #21333#20301
            DataBinding.FieldName = 'ItemUnit'
            Width = 55
          end
          object cxgrdtbvBillNo: TcxGridDBColumn
            Caption = 'BOM'#21333#21495
            DataBinding.FieldName = 'BillNo'
            Width = 90
          end
          object cxgrdtbvColumn1: TcxGridDBColumn
            Caption = #26159#21542#34394#25311#20214
            DataBinding.FieldName = 'bVirtual'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.NullStyle = nssUnchecked
            Width = 76
          end
          object cxgrdtbvbBom: TcxGridDBColumn
            Caption = #26159#21542#24314#31435
            DataBinding.FieldName = 'bBom'
            Width = 70
          end
          object cxgrdtbvMakeManName: TcxGridDBColumn
            Caption = #21046#21333#20154
            DataBinding.FieldName = 'MakeManName'
            Width = 80
          end
        end
      end
      object tv: TdxDBTreeView
        Left = 0
        Top = 0
        Width = 217
        Height = 392
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ShowNodeHint = True
        OnCustomDraw = tvCustomDraw
        AutoExpand = True
        DataSource = dsKind
        DisplayField = 'ItemKindCode;ItemKindName'
        KeyField = 'ItemKindId'
        ListField = 'ItemKindName'
        ParentField = 'ParentId'
        RootValue = Null
        SeparatedSt = ' - '
        RaiseOnError = True
        ReadOnly = True
        Indent = 19
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        Options = [trDBCanDelete, trDBConfirmDelete, trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
        SelectedIndex = -1
        TabOrder = 1
        OnClick = tvClick
        ParentFont = False
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
    inherited btPrint: TdxBarLargeButton
      Visible = ivNever
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
    Left = 200
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    AfterScroll = nil
    SQL.Strings = (
      'PrItemBomFind '#39#39)
    Left = 200
    object qyHedItemId: TStringField
      FieldName = 'ItemId'
      Size = 30
    end
    object qyHedItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 50
    end
    object qyHedItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 100
    end
    object qyHedItemName: TStringField
      FieldName = 'ItemName'
      Size = 100
    end
    object qyHedItemUnit: TStringField
      FieldName = 'ItemUnit'
      Size = 10
    end
    object qyHedItemKindId: TStringField
      FieldName = 'ItemKindId'
    end
    object qyHedMakeManName: TStringField
      FieldName = 'MakeManName'
      Size = 30
    end
    object qyHedBillNo: TStringField
      FieldName = 'BillNo'
      Size = 50
    end
    object qyHedbBom: TStringField
      FieldName = 'bBom'
      ReadOnly = True
      Size = 4
    end
    object qyHedbVirtual: TBooleanField
      FieldName = 'bVirtual'
    end
  end
  inherited frxHed: TfrxDBDataset
    UserName = #20135#21697#28165#21333#26597#25214
    FieldAliases.Strings = (
      'ItemId=ItemId'
      'ItemCode=ItemCode'
      'ItemSpc=ItemSpc'
      'ItemName=ItemName'
      'ItemUnit=ItemUnit'
      'ItemKindId=ItemKindId'
      'MakeManName=MakeManName'
      'BillNo=BillNo'
      'bBom=bBom')
    Left = 200
  end
  inherited pmLayout: TPopupMenu
    object N1: TMenuItem
      Caption = '-'
    end
    object BOM1: TMenuItem
      Caption = #22797#21046'BOM'
      OnClick = BOM1Click
    end
    object BOM2: TMenuItem
      Caption = #31896#36148'BOM'
      OnClick = BOM2Click
    end
  end
  object qyKind: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'select * from ItemKindTB where ISNULL(Param,'#39#39') in ('#39#39','#39#25104#21697#39','#39#21322#25104#21697 +
        #39')')
    Left = 64
    Top = 328
    object qyKindAutoId: TIntegerField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qyKindbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object strngfldKindItemKindId: TStringField
      FieldName = 'ItemKindId'
    end
    object strngfldKindItemKindCode: TStringField
      FieldName = 'ItemKindCode'
    end
    object strngfldKindItemKindName: TStringField
      FieldName = 'ItemKindName'
      Size = 30
    end
    object strngfldKindParentId: TStringField
      FieldName = 'ParentId'
    end
    object strngfldKindParam: TStringField
      FieldName = 'Param'
      Size = 30
    end
    object strngfldKindKindWare: TStringField
      FieldName = 'KindWare'
    end
    object strngfldKindRemark: TStringField
      FieldName = 'Remark'
      Size = 50
    end
  end
  object dsKind: TDataSource
    DataSet = qyKind
    Left = 64
    Top = 288
  end
end
