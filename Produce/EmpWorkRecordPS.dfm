inherited EmpWorkRecordFM: TEmpWorkRecordFM
  Caption = #21592#24037#29983#20135#35760#24405
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    Height = 32
    TabOrder = 1
    ExplicitHeight = 32
    inherited cxLabTitle: TcxLabel
      Caption = #21592#24037#29983#20135#35760#24405
      Style.IsFontAssigned = True
      ExplicitTop = 0
      ExplicitHeight = 32
      Height = 32
      AnchorX = 97
      AnchorY = 16
    end
    inherited cxLabAudit: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 256
      AnchorY = 17
    end
    inherited cxLabPrint: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 880
      AnchorY = 16
    end
    inherited cxLabTemp1: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 360
      AnchorY = 17
    end
    inherited cxLabTemp2: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 445
      AnchorY = 17
    end
    inherited cxLabTemp3: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 533
      AnchorY = 17
    end
    inherited cxLabTemp4: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 643
      AnchorY = 17
    end
    inherited cxLabTemp5: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 752
      AnchorY = 17
    end
  end
  inherited pnlInfo: TPanel
    Top = 512
    Height = 24
    TabOrder = 3
    ExplicitTop = 512
    ExplicitHeight = 24
    inherited Label3: TLabel
      Left = 103
      ExplicitLeft = 103
    end
    inherited Label4: TLabel
      Left = 243
      ExplicitLeft = 243
    end
    inherited Label5: TLabel
      Left = 335
      ExplicitLeft = 335
    end
    inherited Label6: TLabel
      Left = 474
      ExplicitLeft = 474
    end
    inherited Label7: TLabel
      Left = 592
      ExplicitLeft = 592
    end
    inherited Label8: TLabel
      Left = 762
      ExplicitLeft = 762
    end
    inherited cxEdtMakeDate: TcxDBTextEdit
      Left = 157
      ExplicitLeft = 157
    end
    inherited cxEdtEditManName: TcxDBTextEdit
      Left = 279
      ExplicitLeft = 279
    end
    inherited cxEdtEditDate: TcxDBTextEdit
      Left = 389
      ExplicitLeft = 389
    end
    inherited cxEdtAuditManName: TcxDBTextEdit
      Left = 516
      ExplicitLeft = 516
    end
    inherited cxEdtAuditDate: TcxDBTextEdit
      Left = 638
      ExplicitLeft = 638
    end
    inherited cxEdtAuditFlag: TcxDBTextEdit
      Left = 816
      ExplicitLeft = 816
      ExplicitWidth = 42
      Width = 42
    end
  end
  inherited pnlEdit: TPanel
    Top = 78
    Height = 60
    ExplicitTop = 78
    ExplicitHeight = 60
    object Label15: TLabel [0]
      Left = 205
      Top = 6
      Width = 6
      Height = 13
      Caption = '*'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl1: TLabel [1]
      Left = 24
      Top = 41
      Width = 48
      Height = 13
      Caption = #26816#32034#21333#25454
    end
    object Label10: TLabel [2]
      Left = 406
      Top = 6
      Width = 6
      Height = 13
      Caption = '*'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 676
      ExplicitLeft = 676
      ExplicitHeight = 60
      Height = 60
      inherited Label1: TLabel
        Top = 11
        ExplicitTop = 11
      end
      inherited Label9: TLabel
        Top = 35
        ExplicitTop = 35
      end
      inherited cxEdtNo: TcxDBTextEdit
        Top = 7
        DataBinding.DataField = 'BillNo'
        Style.IsFontAssigned = True
        ExplicitTop = 7
      end
      inherited cxdt: TcxDBDateEdit
        Top = 31
        DataBinding.DataField = 'BillDate'
        ExplicitTop = 31
      end
    end
    object cxMoRemark: TcxDBMemo
      Left = 464
      Top = 2
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.ScrollBars = ssVertical
      TabOrder = 1
      Visible = False
      Height = 21
      Width = 193
    end
    object cxPupEdtRemark: TcxDBPopupEdit
      Left = 464
      Top = 2
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.PopupControl = cxMoRemark
      TabOrder = 2
      Width = 193
    end
    object cExbbBillFind: TcxExtLookupComboBox
      Left = 78
      Top = 37
      Properties.ButtonGlyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000100000009000000140000001F00000028000000290000
        0022000000180000000B00000002000000000000000000000000000000000000
        00000000000300000013010E045D012209AC02320CDE023C0FF7023C0FF70231
        0CE1012008B4000D03680000001A000000050000000000000000000000000000
        000300000014011D078D074917EC197630FF299746FF3BAF59FF41B35EFF39A3
        55FF26833EFF0B4A1AF1011A069E0000001F0000000400000000000000010000
        000E022009880B5A1EF91F883AFF29A44BFF28A44AFF26A148FF259E46FF2A9F
        49FF30A44EFF2F9A4AFF115F23FC011A069D0000001900000002000000050112
        054D0B501BE52A8E45FF36B25BFF2FB155FF238F42FF125E23FF125D22FF1F88
        3CFF249E46FF259A43FF238F3DFF074515EF000D03650000000A000000090430
        0E9622803BFF4FC274FF4FC474FF308C4CFF247334FFF5F8F5FFF5F8F5FF2277
        33FF1D7F37FF25A147FF239942FF126B26FF012108B1000000160000000B064E
        17CC43AB66FF57CE81FF34884EFF50975FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF4F9E62FF1A7933FF24A046FF177C30FF03330DDE0000001F0000000A0869
        20F06DD297FF5BD58BFF2D7E3FFFFFFFFFFFD1E3D6FFF6F9F7FFF6F9F7FFD1E4
        D6FFFFFFFFFF298D40FF28A94DFF1E8F3BFF034211F600000024000000090B77
        26F08EE4B8FF62DD9CFF277641FF388B4DFF195527FFF3F7F4FFF3F7F4FF145C
        22FF36974DFF177D2EFF2CB053FF209441FF034411F600000022000000060B6A
        24C693DFB8FF7EE9B7FF5EDD9CFF5ADA93FF328B53FFF6F9F7FFF7F9F8FF2B88
        45FF3CC166FF30B95BFF2EB658FF1C893BFF033A10D80000001A00000003094D
        1B8879D09DFFA7F3D5FF67E6AFFF61E1A3FF37915CFFEFF4EFFFEFF5F0FF2D8C
        49FF46C972FF3AC365FF34BB5EFF14782FFF03290BA200000010000000010422
        0C3A369D56E1B8EDD4FF97F1CFFF69E7B2FF4EB882FF2D8847FF2C8E45FF3EAD
        64FF4ACE77FF4ECD78FF34A556FF0A581DE50112055100000006000000000000
        00020A451A6D5EC382F8C1F1DBFFBAF6E0FF92EFC8FF70E6ADFF67E1A1FF72E0
        9FFF7BDD9FFF5DBE7DFF1C7B35F703290C810000000D00000001000000000000
        0000000000020A471B6C3EA75FE199E0B8FFC6F0DDFFD8F8E9FFCAF4DEFF9EE1
        BAFF5EB87BFF1B7432E3042E0E7B0000000C0000000200000000000000000000
        0000000000000000000105240E380C562085107C2DC4119134EF0E8A2FEF0A69
        22C70642158B021A084100000007000000010000000000000000000000000000
        0000000000000000000000000001000000020000000300000005000000050000
        0005000000040000000200000000000000000000000000000000}
      Properties.DropDownRows = 10
      Properties.View = cxgrdbtblvwBillFind
      Properties.KeyFieldNames = #21333#21495
      Properties.ListFieldItem = cxgrdbclmnBillFindColumn1
      TabOrder = 3
      Width = 579
    end
    object cxdtS: TcxDBDateEdit
      Left = 78
      Top = 2
      DataBinding.DataField = 'StartDate'
      DataBinding.DataSource = dsHed
      TabOrder = 4
      Width = 121
    end
    object cxdtE: TcxDBDateEdit
      Left = 279
      Top = 2
      DataBinding.DataField = 'EndDate'
      DataBinding.DataSource = dsHed
      TabOrder = 5
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 20
      Top = 4
      Caption = #24320#22987#26085#26399
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 221
      Top = 4
      Caption = #32467#26463#26085#26399
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 430
      Top = 4
      Caption = #22791#27880
      Transparent = True
    end
  end
  inherited pnlBody: TPanel
    Top = 138
    Height = 374
    ExplicitTop = 138
    ExplicitHeight = 374
    inherited cxPgc: TcxPageControl
      Height = 374
      ExplicitHeight = 374
      ClientRectBottom = 368
      inherited cxtbsht1: TcxTabSheet
        ExplicitHeight = 341
        inherited cxgrd: TcxGrid
          Height = 341
          ExplicitHeight = 341
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
                Format = #21512#35745':0'
                Kind = skCount
              end
              item
                Kind = skSum
                Column = cxgrdtbvMainNum
              end>
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.IncSearch = True
            OptionsView.NoDataToDisplayInfoText = #24658#25463#36719#20214
            object cxgrdtbvColumn1: TcxGridDBColumn
              Caption = #26085#26399
              DataBinding.FieldName = 'BillDate'
              Width = 74
            end
            object cxgrdtbvCompactNo: TcxGridDBColumn
              Caption = #21512#21516#21495
              DataBinding.FieldName = 'CompactNo'
              Width = 83
            end
            object cxgrdtbvItemCode: TcxGridDBColumn
              Caption = #20135#21697#20195#21495
              DataBinding.FieldName = 'ItemCode'
              Width = 84
            end
            object cxgrdtbvItemName: TcxGridDBColumn
              Caption = #20135#21697#21517#31216
              DataBinding.FieldName = 'ItemName'
              Width = 128
            end
            object cxgrdtbvItemSpc: TcxGridDBColumn
              Caption = #20135#21697#35268#26684
              DataBinding.FieldName = 'ItemSpc'
              Width = 233
            end
            object cxgrdtbvItemUnit: TcxGridDBColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'ItemUnit'
              Width = 49
            end
            object cxgrdtbvEmpId: TcxGridDBColumn
              Caption = #21592#24037#32534#21495
              DataBinding.FieldName = 'EmpId'
              Width = 66
            end
            object cxgrdtbvEmpCode: TcxGridDBColumn
              Caption = #21592#24037#24037#21495
              DataBinding.FieldName = 'EmpCode'
              Visible = False
              Width = 67
            end
            object cxgrdtbvEmpName: TcxGridDBColumn
              Caption = #21592#24037#22995#21517
              DataBinding.FieldName = 'EmpName'
              Width = 74
            end
            object cxgrdtbvMainNum: TcxGridDBColumn
              Caption = #25968#37327
              DataBinding.FieldName = 'MainNum'
              Width = 71
            end
            object cxgrdtbvRemark: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 176
            end
          end
          object cxgrdbtblvwBillFind: TcxGridDBTableView [1]
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.InfoPanel.Visible = True
            Navigator.Visible = True
            DataController.DataSource = dsFind
            DataController.KeyFieldNames = #21333#21495
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.PullFocusing = True
            OptionsData.Editing = False
            OptionsView.NoDataToDisplayInfoText = #24658#21019#36719#20214
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 35
            object cxgrdbclmnBillFindDBColumn: TcxGridDBColumn
              DataBinding.FieldName = #26085#26399
              Width = 86
            end
            object cxgrdbclmnBillFindDBColumn1: TcxGridDBColumn
              DataBinding.FieldName = #21333#20301
              Width = 211
            end
            object cxgrdbclmnBillFindDBColumn2: TcxGridDBColumn
              DataBinding.FieldName = #21333#21495
              Width = 114
            end
            object cxgrdbclmnBillFindDBColumn3: TcxGridDBColumn
              DataBinding.FieldName = #21046#21333#20154
              Width = 73
            end
            object cxgrdbclmnBillFindColumn1: TcxGridDBColumn
              DataBinding.FieldName = #20449#24687
              Visible = False
              Width = 265
            end
          end
        end
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    Left = 920
    Top = 54
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
      OnClick = btFindClick
    end
    inherited btRefer: TdxBarLargeButton
      Caption = #25552' '#21462
      Hint = #25552#21462#25152#36873#26102#38388#27573#30340#21592#24037#29983#20135#35760#24405
      OnClick = btReferClick
    end
    inherited btUnCheck: TdxBarLargeButton
      OnClick = btUnCheckClick
    end
  end
  inherited PupBpm: TdxBarPopupMenu
    Left = 880
    Top = 54
  end
  inherited dsHed: TDataSource
    Left = 152
  end
  inherited qyHed: TADOQuery
    SQL.Strings = (
      'select * from  EmpWorkRecordHDTB  where IsNull(bMaxAudit,0)=0')
    Left = 192
    object qyHedAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qyHedAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 100
    end
    object qyHedbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyHedBillNo: TStringField
      FieldName = 'BillNo'
      Size = 100
    end
    object qyHedBillDate: TDateTimeField
      FieldName = 'BillDate'
    end
    object qyHedStartDate: TDateTimeField
      FieldName = 'StartDate'
    end
    object qyHedEndDate: TDateTimeField
      FieldName = 'EndDate'
    end
    object qyHedRemark: TStringField
      FieldName = 'Remark'
      Size = 500
    end
    object qyHedbPrint: TBooleanField
      FieldName = 'bPrint'
    end
    object qyHedPrintNum: TSmallintField
      FieldName = 'PrintNum'
    end
    object qyHedMakeDate: TDateTimeField
      FieldName = 'MakeDate'
    end
    object qyHedMakeMan: TStringField
      FieldName = 'MakeMan'
    end
    object qyHedMakeManName: TStringField
      FieldName = 'MakeManName'
      Size = 30
    end
    object qyHedEditMan: TStringField
      FieldName = 'EditMan'
      Size = 30
    end
    object qyHedEditManName: TStringField
      FieldName = 'EditManName'
      Size = 30
    end
    object qyHedEditDate: TDateTimeField
      FieldName = 'EditDate'
    end
    object qyHedAuditFlag: TSmallintField
      FieldName = 'AuditFlag'
    end
    object qyHedbMaxAudit: TBooleanField
      FieldName = 'bMaxAudit'
    end
    object qyHedAuditManName: TStringField
      FieldName = 'AuditManName'
      Size = 50
    end
    object qyHedAuditDate: TStringField
      FieldName = 'AuditDate'
      Size = 100
    end
    object qyHedMaxAuditDate: TDateTimeField
      FieldName = 'MaxAuditDate'
    end
  end
  inherited qyDet: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyDetAfterInsert
    SQL.Strings = (
      'select * from EmpWorkRecordDTTB')
    object qyDetAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qyDetAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 100
    end
    object qyDetbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyDetBillNo: TStringField
      FieldName = 'BillNo'
      Size = 100
    end
    object qyDetBillDate: TDateTimeField
      FieldName = 'BillDate'
    end
    object qyDetSourceNo: TStringField
      FieldName = 'SourceNo'
      Size = 100
    end
    object qyDetSourceAutoNo: TStringField
      FieldName = 'SourceAutoNo'
      Size = 100
    end
    object qyDetCompactNo: TStringField
      FieldName = 'CompactNo'
      Size = 100
    end
    object qyDetItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
    object qyDetItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 50
    end
    object qyDetItemPYCode: TStringField
      FieldName = 'ItemPYCode'
      Size = 50
    end
    object qyDetItemName: TStringField
      FieldName = 'ItemName'
      Size = 100
    end
    object qyDetItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 100
    end
    object qyDetItemPic: TStringField
      FieldName = 'ItemPic'
      Size = 100
    end
    object qyDetItemUnit: TStringField
      FieldName = 'ItemUnit'
      Size = 10
    end
    object qyDetSubUnit: TStringField
      FieldName = 'SubUnit'
      Size = 10
    end
    object qyDetiFlag: TIntegerField
      FieldName = 'iFlag'
    end
    object qyDetExchRate: TFMTBCDField
      FieldName = 'ExchRate'
      Precision = 19
      Size = 6
    end
    object qyDetEmpId: TStringField
      FieldName = 'EmpId'
      Size = 100
    end
    object qyDetEmpCode: TStringField
      FieldName = 'EmpCode'
      Size = 100
    end
    object qyDetEmpName: TStringField
      FieldName = 'EmpName'
      Size = 100
    end
    object qyDetRemark: TStringField
      FieldName = 'Remark'
      Size = 500
    end
    object qyDetMainNum: TFMTBCDField
      FieldName = 'MainNum'
      Precision = 18
      Size = 5
    end
  end
  inherited pmLayout: TPopupMenu
    object N1: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = #37319#36141#20837#24211#21333
    end
  end
  inherited frxHed: TfrxDBDataset
    UserName = #21592#24037#29983#20135#35760#24405#34920#20027#34920
    FieldAliases.Strings = (
      'AutoId='#33258#21160#32534#30721
      'AutoNo='#33258#21160#32534#21495
      'bSelect='#26159#21542#36873#25321
      'BillNo='#21333#21495
      'BillDate='#26085#26399
      'StartDate='#24320#22987#26085#26399
      'EndDate='#32467#26463#26085#26399
      'Remark='#22791#27880
      'bPrint='#26159#21542#25171#21360
      'PrintNum='#25171#21360#27425#25968
      'MakeDate='#21046#21333#26085#26399
      'MakeMan='#21046#21333#20154#32534#21495
      'MakeManName='#21046#21333#20154#22995#21517
      'EditMan='#20462#25913#20154#32534#21495
      'EditManName='#20462#25913#20154
      'EditDate='#20462#25913#26085#26399
      'AuditFlag='#23457#26680#26631#24535
      'bMaxAudit='#26159#21542#26368#22823#23457#26680
      'AuditManName='#23457#26680#20154
      'AuditDate='#23457#26680#26085#26399
      'MaxAuditDate='#26368#21518#23457#26680#26085#26399)
    Left = 232
  end
  inherited frxDet: TfrxDBDataset
    UserName = #21592#24037#29983#20135#35760#24405#20174#34920
    FieldAliases.Strings = (
      'AutoId='#33258#21160#32534#30721
      'AutoNo='#33258#21160#32534#21495
      'bSelect='#26159#21542#36873#25321
      'BillNo='#21333#21495
      'BillDate='#28304#21333#26085#26399
      'SourceNo='#28304#21333#21495
      'SourceAutoNo='#28304#21333#20869#30721
      'CompactNo='#21512#21516#21495
      'ItemID='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemPYCode='#25340#38899#30721
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#20135#21697#35268#26684
      'ItemPic=ItemPic'
      'ItemUnit='#20027#21333#20301
      'SubUnit='#21103#21333#20301
      'iFlag='#36716#25442#26041#21521
      'ExchRate='#36716#21270#29575
      'EmpId='#21592#24037#32534#21495
      'EmpCode='#21592#24037#24037#21495
      'EmpName='#21592#24037#22995#21517
      'MainNum='#25968#37327
      'Remark='#22791#27880)
    Top = 320
  end
  object qyFind: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'exec prBillFind  '#39'EmpWorkRecordHDTB'#39)
    Left = 120
    Top = 288
  end
  object dsFind: TDataSource
    DataSet = qyFind
    Left = 120
    Top = 256
  end
end
