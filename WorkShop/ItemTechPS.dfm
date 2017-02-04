inherited ItemTechFM: TItemTechFM
  Caption = #20135#21697#24037#33402
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    TabOrder = 1
    inherited cxLabTitle: TcxLabel
      Caption = #20135#21697#24037#33402
      Style.IsFontAssigned = True
      ExplicitTop = 0
      AnchorX = 97
      AnchorY = 15
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
    TabOrder = 3
  end
  inherited pnlEdit: TPanel
    Height = 69
    TabOrder = 5
    ExplicitHeight = 69
    object lbl14: TLabel [0]
      Left = 498
      Top = 40
      Width = 24
      Height = 13
      Caption = #22791#27880
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 710
      ExplicitLeft = 710
      ExplicitHeight = 59
      Height = 59
      inherited cxEdtNo: TcxDBTextEdit
        DataBinding.DataField = 'TechNo'
        Style.IsFontAssigned = True
      end
      inherited cxdt: TcxDBDateEdit
        DataBinding.DataField = 'BuildDate'
      end
    end
    object cxLabel2: TcxLabel
      Left = 27
      Top = 6
      Caption = #20135#21697#20195#21495
      Transparent = True
    end
    object cxBtnItemCode: TcxDBButtonEdit
      Left = 80
      Top = 4
      DataBinding.DataField = 'ItemCode'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxBtnItemCodePropertiesButtonClick
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      TabOrder = 2
      Width = 144
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 528
      Top = 4
      DataBinding.DataField = 'ItemUnit'
      DataBinding.DataSource = dsHed
      Style.Color = 14145495
      TabOrder = 3
      Width = 49
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 80
      Top = 36
      DataBinding.DataField = 'ItemSpc'
      DataBinding.DataSource = dsHed
      Style.Color = 14145495
      TabOrder = 4
      Width = 144
    end
    object cxEdt1: TcxDBTextEdit
      Left = 302
      Top = 4
      DataBinding.DataField = 'ItemName'
      DataBinding.DataSource = dsHed
      Style.Color = 14145495
      TabOrder = 5
      Width = 182
    end
    object cxLabel1: TcxLabel
      Left = 244
      Top = 6
      Caption = #20135#21697#21517#31216
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 27
      Top = 38
      Caption = #20135#21697#35268#26684
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 494
      Top = 6
      Caption = #21333#20301
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 244
      Top = 38
      Caption = #24037#33402#21517#31216
      Transparent = True
    end
    object cxEdt2: TcxDBTextEdit
      Left = 302
      Top = 36
      DataBinding.DataField = 'TechVerName'
      DataBinding.DataSource = dsHed
      TabOrder = 10
      Width = 182
    end
    object cxMoRemark: TcxDBMemo
      Left = 528
      Top = 36
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.ScrollBars = ssVertical
      TabOrder = 11
      Visible = False
      Height = 21
      Width = 164
    end
    object cxPupEdtRemark: TcxDBPopupEdit
      Left = 528
      Top = 36
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.PopupControl = cxMoRemark
      Properties.ReadOnly = False
      TabOrder = 12
      Width = 164
    end
  end
  inherited pnlBody: TPanel
    Left = 341
    Top = 145
    Width = 703
    Height = 368
    ExplicitLeft = 341
    ExplicitTop = 145
    ExplicitWidth = 703
    ExplicitHeight = 368
    inherited cxPgc: TcxPageControl
      Width = 703
      Height = 368
      ExplicitWidth = 703
      ExplicitHeight = 368
      ClientRectBottom = 362
      ClientRectRight = 697
      inherited cxtbsht1: TcxTabSheet
        Caption = #20135#21697#24037#33402
        ExplicitWidth = 695
        ExplicitHeight = 335
        inherited cxgrd: TcxGrid
          Width = 695
          Height = 335
          ExplicitWidth = 695
          ExplicitHeight = 335
          inherited cxgrdtbv: TcxGridDBTableView
            object cxgrdtbvOrdinal: TcxGridDBColumn
              Caption = #24037#24207#21495'*'
              DataBinding.FieldName = 'Ordinal'
              Width = 70
            end
            object cxgrdtbvTechName: TcxGridDBColumn
              Caption = #24037#24207#21517#31216'*'
              DataBinding.FieldName = 'TechName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdtbvTechNamePropertiesButtonClick
              Width = 128
            end
            object cxgrdtbvTopTech: TcxGridDBColumn
              Caption = #19978#36947#24037#24207
              DataBinding.FieldName = 'TopTech'
              Width = 90
            end
            object cxgrdtbvNextTech: TcxGridDBColumn
              Caption = #19979#36947#24037#24207
              DataBinding.FieldName = 'NextTech'
              Width = 90
            end
            object cxgrdtbvTechParam: TcxGridDBColumn
              Caption = #24037#24207#23646#24615
              DataBinding.FieldName = 'TechParam'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                #26412#21378
                #22806#21327)
              Width = 74
            end
            object cxgrdtbvDeptId: TcxGridDBColumn
              Caption = #21152#24037#37096#38376#32534#21495
              DataBinding.FieldName = 'DeptId'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdtbvDeptIdPropertiesButtonClick
              Width = 90
            end
            object cxgrdtbvDeptName: TcxGridDBColumn
              Caption = #21152#24037#37096#38376
              DataBinding.FieldName = 'DeptName'
              Width = 90
            end
            object cxgrdtbvbFirst: TcxGridDBColumn
              Caption = #26159#21542#39318#36947
              DataBinding.FieldName = 'bFirst'
              Width = 68
            end
            object cxgrdtbvbLast: TcxGridDBColumn
              Caption = #26159#21542#26411#36947
              DataBinding.FieldName = 'bLast'
              Width = 69
            end
            object cxgrdtbvCurePrice: TcxGridDBColumn
              Caption = #21152#24037#21333#20215
              DataBinding.FieldName = 'CurePrice'
              Width = 66
            end
            object cxgrdtbvSpoilPrice: TcxGridDBColumn
              Caption = #19981#33391#21697#21333#20215
              DataBinding.FieldName = 'SpoilPrice'
              Visible = False
              Width = 84
            end
            object cxgrdtbvWastePrice: TcxGridDBColumn
              Caption = #24223#21697#21333#20215
              DataBinding.FieldName = 'WastePrice'
              Visible = False
              Width = 69
            end
            object cxgrdtbvRemark: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 90
            end
          end
        end
      end
    end
  end
  object pnl1: TPanel [4]
    Left = 0
    Top = 145
    Width = 333
    Height = 368
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 8
    object cxPageControl1: TcxPageControl
      Left = 0
      Top = 0
      Width = 333
      Height = 368
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = 产品BOM
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 362
      ClientRectLeft = 2
      ClientRectRight = 327
      ClientRectTop = 27
      object 产品BOM: TcxTabSheet
        Caption = #20135#21697'BOM'
        ImageIndex = 0
        object lstBand: TcxDBTreeList
          Left = 0
          Top = 33
          Width = 325
          Height = 302
          Align = alClient
          Bands = <
            item
            end>
          DataController.DataSource = dsBand
          DataController.ParentField = 'PId'
          DataController.KeyField = 'Cid'
          Navigator.Buttons.CustomButtons = <>
          OptionsData.Editing = False
          OptionsView.GridLines = tlglBoth
          RootValue = -1
          TabOrder = 0
          OnClick = lstBandClick
          object cxdbtrlstclmnDBTreeList1ChildCode: TcxDBTreeListColumn
            Caption.Text = #20135#21697#20195#21495
            DataBinding.FieldName = 'ChildCode'
            Width = 79
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1ItemName: TcxDBTreeListColumn
            Caption.Text = #20135#21697#21517#31216
            DataBinding.FieldName = 'ItemName'
            Width = 133
            Position.ColIndex = 2
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1ItemSpc: TcxDBTreeListColumn
            Visible = False
            Caption.Text = #35268#26684
            DataBinding.FieldName = 'ItemSpc'
            Width = 121
            Position.ColIndex = 3
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1ItemUnit: TcxDBTreeListColumn
            Visible = False
            Caption.Text = #21333#20301
            DataBinding.FieldName = 'ItemUnit'
            Width = 50
            Position.ColIndex = 4
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1ItemSource: TcxDBTreeListColumn
            Visible = False
            Caption.Text = #26469#28304
            DataBinding.FieldName = 'ItemSource'
            Width = 70
            Position.ColIndex = 5
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1ProType: TcxDBTreeListColumn
            Visible = False
            Caption.Text = #23646#24615
            DataBinding.FieldName = 'ProType'
            Width = 70
            Position.ColIndex = 6
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1Dosage: TcxDBTreeListColumn
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Caption.Text = #29992#37327
            DataBinding.FieldName = 'Dosage'
            Width = 35
            Position.ColIndex = 7
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1SubDosage: TcxDBTreeListColumn
            Visible = False
            Caption.Text = #21103#29992#37327
            DataBinding.FieldName = 'SubDosage'
            Width = 70
            Position.ColIndex = 8
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1WasteRate: TcxDBTreeListColumn
            Visible = False
            Caption.Text = #25439#32791#29575'%'
            DataBinding.FieldName = 'WasteRate'
            Width = 70
            Position.ColIndex = 9
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1TechName: TcxDBTreeListColumn
            Visible = False
            Caption.Text = #24037#24207
            DataBinding.FieldName = 'TechName'
            Width = 70
            Position.ColIndex = 11
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1DrawDept: TcxDBTreeListColumn
            Visible = False
            Caption.Text = #39046#29992#21333#20301#32534#21495
            DataBinding.FieldName = 'DrawDept'
            Width = 70
            Position.ColIndex = 12
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1DeptName: TcxDBTreeListColumn
            Visible = False
            Caption.Text = #39046#29992#21333#20301#21517#31216
            DataBinding.FieldName = 'DeptName'
            Width = 101
            Position.ColIndex = 10
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1iLevel: TcxDBTreeListColumn
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Caption.AlignHorz = taCenter
            Caption.Text = #32423#21035
            DataBinding.FieldName = 'iLevel'
            Width = 55
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 325
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          Visible = False
          object Label10: TLabel
            Left = 25
            Top = 10
            Width = 48
            Height = 13
            Caption = #24635#20214#21333#21495
          end
          object cxdbTopBillNo: TcxDBTextEdit
            Left = 78
            Top = 6
            DataBinding.DataField = 'BillNo'
            DataBinding.DataSource = ItemTechQFM.dsHed
            Style.Color = 14145495
            TabOrder = 0
            Width = 144
          end
        end
      end
    end
  end
  object cxSplitter1: TcxSplitter [5]
    Left = 333
    Top = 145
    Width = 8
    Height = 368
    Control = pnl1
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
    inherited btUnCheck: TdxBarLargeButton
      OnClick = btUnCheckClick
    end
    inherited btRef: TdxBarLargeButton
      Visible = ivAlways
      OnClick = btRefClick
    end
  end
  inherited qyHed: TADOQuery
    SQL.Strings = (
      'select * from ItemTechHDTB')
    object qyHedAutoID: TLargeintField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object qyHedAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 100
    end
    object qyHedbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyHedTechNo: TStringField
      FieldName = 'TechNo'
    end
    object qyHedBuildDate: TDateTimeField
      FieldName = 'BuildDate'
    end
    object qyHedTechVerName: TStringField
      FieldName = 'TechVerName'
      Size = 100
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
    object qyHedItemPYCode: TStringField
      FieldName = 'ItemPYCode'
      Size = 50
    end
    object qyHedItemName: TStringField
      FieldName = 'ItemName'
      Size = 100
    end
    object qyHedItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 100
    end
    object qyHedItemPic: TStringField
      FieldName = 'ItemPic'
      Size = 100
    end
    object qyHedItemUnit: TStringField
      FieldName = 'ItemUnit'
      Size = 10
    end
    object qyHedSubUnit: TStringField
      FieldName = 'SubUnit'
      Size = 10
    end
    object qyHediFlag: TIntegerField
      FieldName = 'iFlag'
    end
    object qyHedExchRate: TFMTBCDField
      FieldName = 'ExchRate'
      Precision = 19
      Size = 6
    end
    object qyHedRemark: TStringField
      FieldName = 'Remark'
      Size = 300
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
  inherited dsDet: TDataSource
    Left = 360
    Top = 240
  end
  inherited qyDet: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyDetAfterInsert
    SQL.Strings = (
      'select * from ItemTechDTTB')
    Left = 360
    Top = 272
    object qyDetAutoID: TLargeintField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object qyDetAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 100
    end
    object qyDetbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyDetTechNo: TStringField
      FieldName = 'TechNo'
    end
    object qyDetItemId: TStringField
      FieldName = 'ItemId'
      OnChange = qyDetItemIdChange
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
    object qyDetOrdinal: TSmallintField
      FieldName = 'Ordinal'
    end
    object qyDetTechName: TStringField
      FieldName = 'TechName'
      Size = 100
    end
    object qyDetTopTech: TStringField
      FieldName = 'TopTech'
      Size = 100
    end
    object qyDetNextTech: TStringField
      FieldName = 'NextTech'
      Size = 100
    end
    object qyDetTechParam: TStringField
      FieldName = 'TechParam'
      Size = 50
    end
    object qyDetDeptId: TStringField
      FieldName = 'DeptId'
      Size = 50
    end
    object qyDetDeptName: TStringField
      FieldName = 'DeptName'
      Size = 100
    end
    object qyDetbFirst: TBooleanField
      FieldName = 'bFirst'
    end
    object qyDetbLast: TBooleanField
      FieldName = 'bLast'
    end
    object qyDetCurePrice: TFMTBCDField
      FieldName = 'CurePrice'
      Precision = 19
      Size = 6
    end
    object qyDetSpoilPrice: TFMTBCDField
      FieldName = 'SpoilPrice'
      Precision = 19
      Size = 6
    end
    object qyDetWastePrice: TFMTBCDField
      FieldName = 'WastePrice'
      Precision = 19
      Size = 6
    end
    object qyDetRemark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
  end
  inherited frxHed: TfrxDBDataset
    UserName = #20135#21697#24037#33402#20027#34920
    FieldAliases.Strings = (
      'AutoID=AutoID'
      'AutoNo=AutoNo'
      'bSelect=bSelect'
      'TechNo=TechNo'
      'BuildDate=BuildDate'
      'TechVerName=TechVerName'
      'ItemId=ItemId'
      'ItemCode=ItemCode'
      'ItemPYCode=ItemPYCode'
      'ItemName=ItemName'
      'ItemSpc=ItemSpc'
      'ItemPic=ItemPic'
      'ItemUnit=ItemUnit'
      'SubUnit=SubUnit'
      'iFlag=iFlag'
      'ExchRate=ExchRate'
      'Remark=Remark'
      'bPrint=bPrint'
      'PrintNum=PrintNum'
      'MakeDate=MakeDate'
      'MakeMan=MakeMan'
      'MakeManName=MakeManName'
      'EditMan=EditMan'
      'EditManName=EditManName'
      'EditDate=EditDate'
      'AuditFlag=AuditFlag'
      'bMaxAudit=bMaxAudit'
      'AuditManName=AuditManName'
      'AuditDate=AuditDate'
      'MaxAuditDate=MaxAuditDate')
  end
  inherited frxDet: TfrxDBDataset
    UserName = #20135#21697#24037#33402#20174#34920
    FieldAliases.Strings = (
      'AutoID=AutoID'
      'AutoNo=AutoNo'
      'bSelect=bSelect'
      'TechNo=TechNo'
      'ItemId=ItemId'
      'ItemCode=ItemCode'
      'ItemPYCode=ItemPYCode'
      'ItemName=ItemName'
      'ItemSpc=ItemSpc'
      'ItemPic=ItemPic'
      'ItemUnit=ItemUnit'
      'SubUnit=SubUnit'
      'iFlag=iFlag'
      'ExchRate=ExchRate'
      'Ordinal=Ordinal'
      'TechName=TechName'
      'TopTech=TopTech'
      'NextTech=NextTech'
      'TechParam=TechParam'
      'DeptId=DeptId'
      'DeptName=DeptName'
      'bFirst=bFirst'
      'bLast=bLast'
      'CurePrice=CurePrice'
      'SpoilPrice=SpoilPrice'
      'WastePrice=WastePrice'
      'Remark=Remark')
    Left = 360
    Top = 312
  end
  object qyBand: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'exec prBomOpen '#39'03050001'#39','#39'BOM1301050933'#39)
    Left = 120
    Top = 288
    object strngfldBandPId: TStringField
      FieldName = 'PId'
      Size = 3000
    end
    object strngfldBandCid: TStringField
      FieldName = 'Cid'
      Size = 3000
    end
    object strngfldBandItemId: TStringField
      FieldName = 'ItemId'
      Size = 30
    end
    object strngfldBandItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 50
    end
    object strngfldBandChildId: TStringField
      FieldName = 'ChildId'
      Size = 30
    end
    object strngfldBandChildCode: TStringField
      FieldName = 'ChildCode'
      Size = 50
    end
    object strngfldBandItemName: TStringField
      FieldName = 'ItemName'
      Size = 200
    end
    object strngfldBandItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 200
    end
    object strngfldBandItemUnit: TStringField
      FieldName = 'ItemUnit'
      Size = 10
    end
    object strngfldBandItemSource: TStringField
      FieldName = 'ItemSource'
      Size = 10
    end
    object strngfldBandProType: TStringField
      FieldName = 'ProType'
      Size = 100
    end
    object qyBandDosage: TFMTBCDField
      FieldName = 'Dosage'
      Precision = 19
      Size = 6
    end
    object qyBandSubDosage: TFMTBCDField
      FieldName = 'SubDosage'
      Precision = 19
      Size = 6
    end
    object qyBandWasteRate: TFMTBCDField
      FieldName = 'WasteRate'
      Precision = 18
      Size = 5
    end
    object strngfldBandTechName: TStringField
      FieldName = 'TechName'
      Size = 100
    end
    object strngfldBandDrawDept: TStringField
      FieldName = 'DrawDept'
    end
    object strngfldBandDeptName: TStringField
      FieldName = 'DeptName'
      Size = 30
    end
    object strngfldBandRemark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
    object qyBandiLevel: TIntegerField
      FieldName = 'iLevel'
      ReadOnly = True
    end
    object qyBandBillNo: TStringField
      FieldName = 'BillNo'
      Size = 50
    end
  end
  object dsBand: TDataSource
    DataSet = qyBand
    Left = 120
    Top = 256
  end
end
