inherited AssistBackQFM: TAssistBackQFM
  Caption = #22806#21327#36820#24037#20986#24211#26597#35810
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
      Caption = #22806#21327#36820#24037#20986#24211#26597#35810
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlFind: TPanel
    Width = 1059
    Height = 141
    TabOrder = 4
    ExplicitWidth = 1059
    ExplicitHeight = 141
    object Lablbl2: TLabel
      Left = 696
      Top = 5
      Width = 24
      Height = 13
      Caption = #21333#21495
    end
    object Label1: TLabel
      Left = 363
      Top = 5
      Width = 24
      Height = 13
      Caption = #26085#26399
    end
    object Label2: TLabel
      Left = 523
      Top = 2
      Width = 12
      Height = 19
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 339
      Top = 87
      Width = 48
      Height = 13
      Caption = #20135#21697#21517#31216
    end
    object Label4: TLabel
      Left = 339
      Top = 61
      Width = 48
      Height = 13
      Caption = #22806#21327#21333#20301
    end
    object Label3: TLabel
      Left = 696
      Top = 61
      Width = 24
      Height = 13
      Caption = #23646#24615
    end
    object Label6: TLabel
      Left = 363
      Top = 118
      Width = 24
      Height = 13
      Caption = #39068#33394
    end
    object Label7: TLabel
      Left = 339
      Top = 34
      Width = 48
      Height = 13
      Caption = #21457#20986#21333#20301
    end
    object Label9: TLabel
      Left = 672
      Top = 34
      Width = 48
      Height = 13
      Caption = #27966#24037#21333#21495
    end
    object cxEdtBillNo: TcxTextEdit
      Left = 726
      Top = 1
      Properties.OnChange = btFindClick
      TabOrder = 0
      Width = 143
    end
    object cxdtS: TcxDateEdit
      Left = 393
      Top = 1
      Properties.OnChange = btFindClick
      TabOrder = 1
      Width = 121
    end
    object cxdtE: TcxDateEdit
      Left = 541
      Top = 1
      Properties.OnChange = btFindClick
      TabOrder = 2
      Width = 121
    end
    object cxrdgrpAudit: TcxRadioGroup
      Left = 887
      Top = 2
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = #26410#23457#26680
        end
        item
          Caption = #24050#23457#26680
        end
        item
          Caption = #25152#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 2
      TabOrder = 3
      Height = 76
      Width = 75
    end
    object cxItem: TcxButtonEdit
      Left = 393
      Top = 84
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemNamePropertiesButtonClick
      Properties.OnChange = btFindClick
      TabOrder = 4
      TextHint = #21487#25163#21160#36755#20837#20135#21697#21517#31216#25110#28857#20987#25353#38062#36873#25321#20135#21697
      Width = 269
    end
    object btnAcceptName: TcxButtonEdit
      Left = 393
      Top = 57
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnEmpNamePropertiesButtonClick
      Properties.OnChange = btFindClick
      TabOrder = 5
      Width = 269
    end
    object btnProType: TcxButtonEdit
      Left = 726
      Top = 57
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnChange = btFindClick
      TabOrder = 6
      TextHint = #21487#25163#21160#36755#20837#23646#24615#25110#28857#20987#25353#38062#36873#25321
      Width = 143
    end
    object btnItemKind: TcxButtonEdit
      Left = 557
      Top = 114
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemKindPropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 7
      Width = 106
    end
    object cxlbl6: TcxLabel
      Left = 499
      Top = 116
      Caption = #20135#21697#31867#21035
      Transparent = True
    end
    object btnColor: TcxButtonEdit
      Left = 393
      Top = 114
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnEmpNamePropertiesButtonClick
      Properties.OnChange = btFindClick
      TabOrder = 9
      Width = 100
    end
    object lstInWare: TcxDBTreeList
      Left = 161
      Top = 0
      Width = 161
      Height = 141
      Align = alLeft
      Bands = <
        item
        end>
      DataController.DataSource = dsInWare
      DataController.ParentField = 'ParentId'
      DataController.KeyField = 'WareId'
      Navigator.Buttons.CustomButtons = <>
      OptionsView.GridLines = tlglBoth
      RootValue = -1
      TabOrder = 10
      object cxdbtrlstclmnlst1bSelect: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCheckBoxProperties'
        Caption.Text = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Width = 58
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
        Width = 54
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxdbtrlstclmnlst1WareName: TcxDBTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Caption.Text = #25509#25910#20179#24211
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
    object lstOutWare: TcxDBTreeList
      Left = 0
      Top = 0
      Width = 161
      Height = 141
      Align = alLeft
      Bands = <
        item
        end>
      DataController.DataSource = dsOutWare
      DataController.ParentField = 'ParentId'
      DataController.KeyField = 'WareId'
      Navigator.Buttons.CustomButtons = <>
      OptionsView.GridLines = tlglBoth
      RootValue = -1
      TabOrder = 11
      object cxDBTreeListColumn1: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCheckBoxProperties'
        Caption.Text = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Width = 58
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeListColumn2: TcxDBTreeListColumn
        Visible = False
        Caption.Text = #32534#21495
        DataBinding.FieldName = 'WareId'
        Options.Editing = False
        Width = 54
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeListColumn3: TcxDBTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Caption.Text = #21457#20986#20179#24211
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
    object btnSendName: TcxButtonEdit
      Left = 393
      Top = 30
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnAcceptNamePropertiesButtonClick
      Properties.OnChange = btFindClick
      TabOrder = 12
      Width = 269
    end
    object cxLabel2: TcxLabel
      Left = 668
      Top = 85
      Caption = #24037#24207#21517#31216
      Transparent = True
    end
    object cxTechName: TcxButtonEdit
      Left = 726
      Top = 83
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxTechNamePropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 14
      TextHint = #21487#36755#20837#24037#24207#21517#31216#12289#25340#38899#30721#26597#35810
      Width = 143
    end
    object cxDispatchNo: TcxTextEdit
      Left = 726
      Top = 30
      Properties.OnChange = btFindClick
      TabOrder = 15
      Width = 143
    end
  end
  inherited cxpgcntrl1: TcxPageControl
    Top = 217
    Width = 1059
    Height = 287
    ExplicitTop = 217
    ExplicitWidth = 1059
    ExplicitHeight = 287
    ClientRectBottom = 281
    ClientRectRight = 1053
    inherited cxtbsht1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 27
      ExplicitWidth = 1051
      ExplicitHeight = 254
      inherited cxgrd: TcxGrid
        Width = 1051
        Height = 254
        ExplicitWidth = 1051
        ExplicitHeight = 254
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
              Column = cxgrdtbvColumn4
            end
            item
              Kind = skSum
              Column = cxgrdtbvColumn3
            end
            item
              Kind = skSum
              Column = cxgrdtbvColumn2
            end
            item
              Kind = skSum
              Column = cxgrdtbvMoveNum
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
          object cxgrdtbvMoveNo: TcxGridDBColumn
            Caption = #21333#21495
            DataBinding.FieldName = 'MoveNo'
            Width = 96
          end
          object cxgrdtbvMoveDate: TcxGridDBColumn
            Caption = #26085#26399
            DataBinding.FieldName = 'MoveDate'
            Width = 63
          end
          object cxgrdtbvSendName: TcxGridDBColumn
            Caption = #21457#20986#21333#20301
            DataBinding.FieldName = 'SendName'
            Width = 67
          end
          object cxgrdtbvSendWare: TcxGridDBColumn
            Caption = #21457#20986#20179#24211
            DataBinding.FieldName = 'SendWare'
            Visible = False
            Width = 66
          end
          object cxgrdtbvAcceptName: TcxGridDBColumn
            Caption = #25509#25910#21333#20301
            DataBinding.FieldName = 'AcceptName'
            Visible = False
            Width = 96
          end
          object cxgrdtbvAcceptWare: TcxGridDBColumn
            Caption = #25509#25910#20179#24211
            DataBinding.FieldName = 'AcceptWare'
            Visible = False
            Width = 61
          end
          object cxgrdtbvItemCode: TcxGridDBColumn
            Caption = #20135#21697#20195#21495
            DataBinding.FieldName = 'ItemCode'
            Width = 97
          end
          object cxgrdtbvItemName: TcxGridDBColumn
            Caption = #20135#21697#21517#31216
            DataBinding.FieldName = 'ItemName'
            Width = 155
          end
          object cxgrdtbvItemSpc: TcxGridDBColumn
            Caption = #35268#26684
            DataBinding.FieldName = 'ItemSpc'
            Width = 70
          end
          object cxgrdtbvItemUnit: TcxGridDBColumn
            Caption = #21333#20301
            DataBinding.FieldName = 'ItemUnit'
            Width = 44
          end
          object cxgrdtbvProType: TcxGridDBColumn
            Caption = #23646#24615
            DataBinding.FieldName = 'ProType'
            Visible = False
            Width = 60
          end
          object cxgrdtbvColor: TcxGridDBColumn
            Caption = #39068#33394
            DataBinding.FieldName = 'Color'
            Visible = False
            Width = 62
          end
          object cxgrdtbvColumn1: TcxGridDBColumn
            Caption = #24037#24207#21495
            DataBinding.FieldName = 'Ordinal'
            Width = 55
          end
          object cxgrdtbvTechName: TcxGridDBColumn
            Caption = #24037#24207
            DataBinding.FieldName = 'TechName'
            Width = 78
          end
          object cxgrdtbvObjectName: TcxGridDBColumn
            Caption = #21457#20986#22806#21327#21830
            DataBinding.FieldName = 'ObjectName'
            Visible = False
            Width = 94
          end
          object cxgrdtbvInObjectName: TcxGridDBColumn
            Caption = #25509#25910#22806#21327#21830
            DataBinding.FieldName = 'InObjectName'
            Visible = False
            Width = 111
          end
          object cxgrdtbvColumn5: TcxGridDBColumn
            Caption = #21333#20215
            DataBinding.FieldName = 'MovePrice'
            Width = 44
          end
          object cxgrdtbvMoveNum: TcxGridDBColumn
            Caption = #25968#37327
            DataBinding.FieldName = 'MoveNum'
            Width = 61
          end
          object cxgrdtbvColumn3: TcxGridDBColumn
            Caption = #25253#24223#25968
            DataBinding.FieldName = 'WasteNum'
            Visible = False
            Width = 55
          end
          object cxgrdtbvColumn4: TcxGridDBColumn
            Caption = #26009#24223#25968
            DataBinding.FieldName = 'ScrapNum'
            Visible = False
            Width = 60
          end
          object cxgrdtbvProOrderNo: TcxGridDBColumn
            Caption = #29983#20135#35746#21333#21495
            DataBinding.FieldName = 'ProOrderNo'
            Visible = False
            Width = 86
          end
          object cxgrdtbvColumn2: TcxGridDBColumn
            Caption = #35843#24223#25968
            DataBinding.FieldName = 'SpoilNum'
            Visible = False
            Width = 73
          end
          object cxgrdtbvDispatchNo: TcxGridDBColumn
            Caption = #27966#24037#21333#21495
            DataBinding.FieldName = 'DispatchNo'
            Width = 95
          end
          object cxgrdtbvRemark: TcxGridDBColumn
            Caption = #22791#27880
            DataBinding.FieldName = 'Remark'
            Width = 100
          end
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
          UserDefine = [udWidth]
          UserWidth = 67
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
    Left = 240
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'exec PrItemMoveQ '#39#39','#39#39#39'AssistMove'#39#39#39)
    Left = 240
  end
  inherited frxHed: TfrxDBDataset
    UserName = #22806#21327#21152#24037#20837#24211#26597#35810
    FieldAliases.Strings = (
      'MoveNo='#21333#21495
      'MoveDate='#26085#26399
      'SendName='#21457#20986#21333#20301
      'SendWare='#21457#20986#20179#24211
      'AcceptName='#25509#25910#21333#20301
      'AcceptWare='#25509#25910#20179#24211
      'ItemId='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'ItemPic='#22270#21495
      'ItemUnit='#21333#20301
      'ProType='#23646#24615
      'Color='#39068#33394
      'EmpName='#29983#20135#21592#24037
      'Ordinal='#24037#24207#21495
      'TechName='#24037#24207#21517#31216
      'ObjectId='#24448#26469#21333#20301#32534#21495
      'ObjectName='#24448#26469#21333#20301#21517#31216
      'InObjectId='#35843#20837#24448#26469#21333#20301#32534#21495
      'InObjectName='#35843#20837#24448#26469#21333#20301#21517#31216
      'MoveNum='#21512#26684#25968
      'MovePrice='#21333#20215
      'SpoilNum='#35843#24223#25968
      'WasteNum='#25253#24223#25968
      'ScrapNum='#26009#24223#25968
      'AutoNO='#20869#21495
      'ProOrderNo='#29983#20135#35746#21333#21495
      'ProOrderId='#29983#20135#35746#21333#20869#30721
      'DispatchNo='#27966#24037#21333#21495
      'DisPatchId='#27966#24037#21333#20869#30721
      'Remark='#22791#27880)
    Left = 240
  end
  object qyOutWare: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select bSelect,WareId,WareName,ParentId from WareTB')
    Left = 280
    Top = 328
    object qyOutWarebSelect: TBooleanField
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
  object dsOutWare: TDataSource
    DataSet = qyOutWare
    Left = 280
    Top = 288
  end
  object qyInWare: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select bSelect,WareId,WareName,ParentId from WareTB')
    Left = 320
    Top = 328
    object BooleanField1: TBooleanField
      FieldName = 'bSelect'
    end
    object StringField1: TStringField
      FieldName = 'WareId'
    end
    object StringField2: TStringField
      FieldName = 'WareName'
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'ParentId'
    end
  end
  object dsInWare: TDataSource
    DataSet = qyInWare
    Left = 320
    Top = 288
  end
end
