inherited ItemBomFM: TItemBomFM
  Caption = #20135#21697#28165#21333
  ClientHeight = 513
  ClientWidth = 1044
  ExplicitWidth = 1044
  ExplicitHeight = 513
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTitle: TPanel [0]
    Left = 0
    Top = 46
    Width = 1044
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object LabTitle: TLabel
      Left = 0
      Top = 0
      Width = 200
      Height = 30
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Caption = #20135#21697#28165#21333
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10905136
      Font.Height = -21
      Font.Name = #21326#25991#23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitTop = -6
    end
    object LabPrint: TLabel
      Left = 247
      Top = 3
      Width = 7
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -23
      Font.Name = #21326#25991#34892#26999
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabAudit: TLabel
      Left = 358
      Top = 3
      Width = 7
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -23
      Font.Name = #21326#25991#34892#26999
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabTemp1: TLabel
      Left = 424
      Top = 3
      Width = 7
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -23
      Font.Name = #21326#25991#34892#26999
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabTemp2: TLabel
      Left = 528
      Top = 3
      Width = 7
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -23
      Font.Name = #21326#25991#34892#26999
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabTemp3: TLabel
      Left = 622
      Top = 3
      Width = 7
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -23
      Font.Name = #21326#25991#34892#26999
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabTemp4: TLabel
      Left = 680
      Top = 0
      Width = 7
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -23
      Font.Name = #21326#25991#34892#26999
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabTemp5: TLabel
      Left = 693
      Top = 6
      Width = 7
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -23
      Font.Name = #21326#25991#34892#26999
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnl2: TPanel [1]
    Left = 339
    Top = 76
    Width = 705
    Height = 437
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnl2'
    TabOrder = 5
    object pnl3: TPanel
      Left = 0
      Top = 0
      Width = 705
      Height = 62
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lbl1: TLabel
        Left = 26
        Top = 10
        Width = 26
        Height = 13
        Caption = #21333#21495
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl9: TLabel
        Left = 179
        Top = 10
        Width = 48
        Height = 13
        Caption = #27597#20214#20195#21495
      end
      object lbl10: TLabel
        Left = 364
        Top = 10
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
      object lbl11: TLabel
        Left = 378
        Top = 10
        Width = 48
        Height = 13
        Caption = #27597#20214#21517#31216
      end
      object lbl12: TLabel
        Left = 5
        Top = 37
        Width = 48
        Height = 13
        Caption = #27597#20214#35268#26684
      end
      object lbl13: TLabel
        Left = 203
        Top = 37
        Width = 24
        Height = 13
        Caption = #21333#20301
      end
      object lbl14: TLabel
        Left = 402
        Top = 37
        Width = 24
        Height = 13
        Caption = #22791#27880
      end
      object cxEdtNo: TcxDBTextEdit
        Left = 57
        Top = 6
        DataBinding.DataField = 'BillNo'
        DataBinding.DataSource = dsHed
        ParentFont = False
        Properties.ReadOnly = True
        Properties.OnChange = cxEdtNoPropertiesChange
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clBlue
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 116
      end
      object cxBt2: TcxDBButtonEdit
        Left = 232
        Top = 6
        DataBinding.DataField = 'ItemCode'
        DataBinding.DataSource = dsHed
        ParentShowHint = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = False
        Properties.OnButtonClick = cxBt2PropertiesButtonClick
        ShowHint = True
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        TabOrder = 1
        Width = 129
      end
      object cxEdt1: TcxDBTextEdit
        Left = 431
        Top = 6
        DataBinding.DataField = 'ItemName'
        DataBinding.DataSource = dsHed
        Style.Color = 14145495
        TabOrder = 2
        Width = 164
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 57
        Top = 33
        DataBinding.DataField = 'ItemSpc'
        DataBinding.DataSource = dsHed
        Style.Color = 14145495
        TabOrder = 3
        Width = 116
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 232
        Top = 33
        DataBinding.DataField = 'ItemUnit'
        DataBinding.DataSource = dsHed
        Style.Color = 14145495
        TabOrder = 4
        Width = 36
      end
      object cxMoRemark: TcxDBMemo
        Left = 431
        Top = 33
        DataBinding.DataField = 'Remark'
        DataBinding.DataSource = dsHed
        Properties.ScrollBars = ssVertical
        TabOrder = 5
        Visible = False
        Height = 21
        Width = 164
      end
      object cxPupEdtRemark: TcxDBPopupEdit
        Left = 431
        Top = 33
        DataBinding.DataField = 'Remark'
        DataBinding.DataSource = dsHed
        Properties.PopupControl = cxMoRemark
        Properties.ReadOnly = False
        TabOrder = 6
        Width = 164
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 276
        Top = 32
        Caption = #26159#21542#34394#25311#20214
        DataBinding.DataField = 'bVirtual'
        DataBinding.DataSource = dsHed
        Properties.Alignment = taRightJustify
        Properties.NullStyle = nssUnchecked
        TabOrder = 7
        Transparent = True
        Width = 86
      end
    end
    object cxPgc: TcxPageControl
      Left = 0
      Top = 62
      Width = 705
      Height = 349
      Align = alClient
      TabOrder = 1
      Properties.ActivePage = cxtbsht1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 343
      ClientRectLeft = 2
      ClientRectRight = 699
      ClientRectTop = 27
      object cxtbsht1: TcxTabSheet
        Caption = #23376#20214#26126#32454
        ImageIndex = 0
        object cxgrd: TcxGrid
          Left = 0
          Top = 0
          Width = 697
          Height = 316
          Align = alClient
          PopupMenu = pmLayout
          TabOrder = 0
          object cxgrdtbv: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            OnFocusedItemChanged = cxgrdtbvFocusedItemChanged
            DataController.DataSource = dsDet
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.PullFocusing = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Editing = False
            OptionsView.NoDataToDisplayInfoText = #24658#21019#36719#20214
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 35
            OnCustomDrawIndicatorCell = cxgrdtbvCustomDrawIndicatorCell
            object cxgrdtbvChildCode: TcxGridDBColumn
              Caption = #20135#21697#20195#21495
              DataBinding.FieldName = 'ChildCode'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdtbvChildCodePropertiesButtonClick
              Width = 93
            end
            object cxgrdtbvColumn2: TcxGridDBColumn
              Caption = #25340#38899#30721
              DataBinding.FieldName = 'ChildPYCode'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 270
              Properties.KeyFieldNames = 'ItemPYCode'
              Properties.ListColumns = <
                item
                  Caption = #25340#38899#30721
                  Width = 70
                  FieldName = 'ItemPYCode'
                end
                item
                  Caption = #20135#21697#21517#31216
                  Width = 100
                  FieldName = 'ItemName'
                end
                item
                  Caption = #35268#26684
                  Width = 100
                  FieldName = 'ItemSpc'
                end>
              Properties.ListSource = DataFM.dsPyCode
              Properties.MaxLength = 200
              Properties.OnValidate = cxgrdtbvColumn2PropertiesValidate
              Visible = False
              Width = 77
            end
            object cxgrdtbvChildName: TcxGridDBColumn
              Caption = #20135#21697#21517#31216
              DataBinding.FieldName = 'ChildName'
              Options.Editing = False
              Width = 130
            end
            object cxgrdtbvChildSpc: TcxGridDBColumn
              Caption = #35268#26684
              DataBinding.FieldName = 'ChildSpc'
              Options.Editing = False
              Width = 79
            end
            object cxgrdtbvColumn4: TcxGridDBColumn
              Caption = #22270#21495
              DataBinding.FieldName = 'ChildPic'
              Options.Editing = False
              Width = 100
            end
            object cxgrdtbvColumn8: TcxGridDBColumn
              Caption = #26448#36136
              DataBinding.FieldName = 'ChildMaterial'
              Options.Editing = False
              Width = 100
            end
            object cxgrdtbvColumn1: TcxGridDBColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'ChildUnit'
              Options.Editing = False
              Width = 39
            end
            object cxgrdtbvColumn5: TcxGridDBColumn
              Caption = #21103#21333#20301
              DataBinding.FieldName = 'ChildSubUnit'
              Options.Editing = False
              Width = 61
            end
            object cxgrdtbvColumn6: TcxGridDBColumn
              Caption = #36716#21270#29575
              DataBinding.FieldName = 'ChildExchrate'
              Options.Editing = False
              Width = 58
            end
            object cxgrdtbvColumn7: TcxGridDBColumn
              Caption = #36716#25442#26041#21521
              DataBinding.FieldName = 'ChildiFlag'
              Visible = False
              Width = 100
            end
            object cxgrdtbvDosage: TcxGridDBColumn
              Caption = #29992#37327
              DataBinding.FieldName = 'Dosage'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdtbvDosagePropertiesValidate
              Width = 76
            end
            object cxgrdtbvColumn9: TcxGridDBColumn
              Caption = #21103#29992#37327
              DataBinding.FieldName = 'SubDosage'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdtbvColumn9PropertiesValidate
              Width = 74
            end
            object cxgrdtbvWasteRate: TcxGridDBColumn
              Caption = #25439#32791#29575'%'
              DataBinding.FieldName = 'WasteRate'
              Width = 81
            end
            object cxgrdtbvDrawDept: TcxGridDBColumn
              Caption = #39046#29992#37096#38376#32534#21495
              DataBinding.FieldName = 'DrawDept'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdtbvDrawDeptPropertiesButtonClick
              Visible = False
              Width = 85
            end
            object cxgrdtbvColumn3: TcxGridDBColumn
              Caption = #39046#29992#37096#38376#21517#31216
              DataBinding.FieldName = 'DrawDeptName'
              Visible = False
              Width = 78
            end
            object cxgrdtbvRemark: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Visible = False
              Width = 91
            end
            object cxgrdtbvColumn10: TcxGridDBColumn
              Caption = #39046#26009#24037#24207
              DataBinding.FieldName = 'TechName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdtbvColumn10PropertiesButtonClick
              Width = 66
            end
          end
          object cxgrdlev: TcxGridLevel
            GridView = cxgrdtbv
          end
        end
      end
    end
    object pnlInfo: TPanel
      Left = 0
      Top = 411
      Width = 705
      Height = 26
      Align = alBottom
      TabOrder = 2
      object lbl2: TLabel
        Left = 4
        Top = 6
        Width = 36
        Height = 13
        Caption = #21046#21333#20154
      end
      object lbl3: TLabel
        Left = 81
        Top = 6
        Width = 48
        Height = 13
        Caption = #21046#21333#26085#26399
      end
      object lbl4: TLabel
        Left = 195
        Top = 6
        Width = 36
        Height = 13
        Caption = #20462#25913#20154
      end
      object lbl5: TLabel
        Left = 271
        Top = 6
        Width = 48
        Height = 13
        Caption = #20462#25913#26085#26399
      end
      object lbl6: TLabel
        Left = 385
        Top = 6
        Width = 36
        Height = 13
        Caption = #23457#26680#20154
      end
      object lbl7: TLabel
        Left = 462
        Top = 6
        Width = 48
        Height = 13
        Caption = #23457#26680#26085#26399
      end
      object lbl8: TLabel
        Left = 576
        Top = 6
        Width = 48
        Height = 13
        Caption = #23457#26680#32423#21035
      end
      object LabAuditInfo: TLabel
        Left = 646
        Top = 10
        Width = 3
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object cxEdtMakeManName: TcxDBTextEdit
        Left = 38
        Top = 2
        DataBinding.DataField = 'MakeManName'
        DataBinding.DataSource = dsHed
        Properties.ReadOnly = True
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        TabOrder = 0
        Width = 40
      end
      object cxEdtMakeDate: TcxDBTextEdit
        Left = 130
        Top = 2
        DataBinding.DataField = 'MakeDate'
        DataBinding.DataSource = dsHed
        Properties.ReadOnly = True
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        TabOrder = 1
        Width = 65
      end
      object cxEdtEditManName: TcxDBTextEdit
        Left = 229
        Top = 2
        DataBinding.DataField = 'EditManName'
        DataBinding.DataSource = dsHed
        Properties.ReadOnly = True
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        TabOrder = 2
        Width = 40
      end
      object cxEdtEditDate: TcxDBTextEdit
        Left = 320
        Top = 2
        DataBinding.DataField = 'EditDate'
        DataBinding.DataSource = dsHed
        Properties.ReadOnly = True
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        TabOrder = 3
        Width = 65
      end
      object cxEdtAuditManName: TcxDBTextEdit
        Left = 421
        Top = 2
        DataBinding.DataField = 'AuditManName'
        DataBinding.DataSource = dsHed
        Properties.ReadOnly = True
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        TabOrder = 4
        Width = 40
      end
      object cxEdtAuditDate: TcxDBTextEdit
        Left = 511
        Top = 2
        DataBinding.DataField = 'AuditDate'
        DataBinding.DataSource = dsHed
        Properties.ReadOnly = True
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        TabOrder = 5
        Width = 65
      end
      object cxEdtAuditFlag: TcxDBTextEdit
        Left = 624
        Top = 2
        DataBinding.DataField = 'AuditFlag'
        DataBinding.DataSource = dsHed
        Properties.ReadOnly = True
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        TabOrder = 6
        Width = 30
      end
    end
  end
  object pnl1: TPanel [2]
    Left = 0
    Top = 76
    Width = 333
    Height = 437
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 6
    object lstBand: TcxDBTreeList
      Left = 0
      Top = 89
      Width = 333
      Height = 348
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
        Width = 137
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
      Width = 333
      Height = 89
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      object Label1: TLabel
        Left = 13
        Top = 37
        Width = 48
        Height = 13
        Caption = #24635#20214#21517#31216
      end
      object Label2: TLabel
        Left = 13
        Top = 10
        Width = 48
        Height = 13
        Caption = #24635#20214#20195#21495
      end
      object Label3: TLabel
        Left = 183
        Top = 10
        Width = 48
        Height = 13
        Caption = #24635#20214#21333#21495
      end
      object Label4: TLabel
        Left = 13
        Top = 64
        Width = 48
        Height = 13
        Caption = #24635#20214#32534#21495
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 67
        Top = 6
        DataBinding.DataField = 'ItemCode'
        DataBinding.DataSource = ItemBomQFM.dsHed
        Style.Color = 14145495
        TabOrder = 0
        Width = 110
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 67
        Top = 33
        DataBinding.DataField = 'ItemName'
        DataBinding.DataSource = ItemBomQFM.dsHed
        Style.Color = 14145495
        TabOrder = 1
        Width = 260
      end
      object cxdbTopBillNo: TcxDBTextEdit
        Left = 237
        Top = 6
        DataBinding.DataField = 'BillNo'
        DataBinding.DataSource = ItemBomQFM.dsHed
        Properties.OnChange = cxdbTopBillNoPropertiesChange
        Style.Color = 14145495
        TabOrder = 2
        Width = 90
      end
      object cxdbItemId: TcxDBTextEdit
        Left = 67
        Top = 60
        DataBinding.DataField = 'ItemId'
        DataBinding.DataSource = ItemBomQFM.dsHed
        Style.Color = 14145495
        TabOrder = 3
        Width = 110
      end
    end
  end
  object cxspltr1: TcxSplitter [3]
    Left = 333
    Top = 76
    Width = 6
    Height = 437
    Control = pnl1
  end
  inherited dxbrmngrBarManage: TdxBarManager
    Left = 808
    Top = 48
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
          ItemName = 'btInvoice'
        end
        item
          Visible = True
          ItemName = 'btFind'
        end
        item
          Visible = True
          ItemName = 'btRefer'
        end
        item
          Visible = True
          ItemName = 'btExport'
        end
        item
          Visible = True
          ItemName = 'btPrint'
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
        end
        item
          Visible = True
          ItemName = 'btTemp'
        end>
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
    inherited btRefer: TdxBarLargeButton
      Caption = #31896' '#36148
      Hint = #31896#36148#25152#22797#21046#30340'BOM'#32467#26500
      ShortCut = 0
      OnClick = btReferClick
    end
    inherited btCheck: TdxBarLargeButton
      OnClick = btCheckClick
    end
    inherited btUnCheck: TdxBarLargeButton
      OnClick = btUnCheckClick
    end
    inherited btRef: TdxBarLargeButton
      Visible = ivAlways
      OnClick = btRefClick
    end
    inherited btInvoice: TdxBarLargeButton
      Caption = #22797' '#21046
      Hint = #22797#21046#35813'BOM'#30340#32467#26500
      Visible = ivAlways
      ShortCut = 0
      OnClick = btInvoiceClick
    end
    object dxBarButton1: TdxBarButton
      Caption = #22797#21046'BOM'
      Category = 0
      Hint = #22797#21046'BOM'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000C0C
        0C220F0F0F220000000200000004000000060000000800000008000000080000
        0008000000060000000400000002000000000000000000000000000000005555
        55E3585858E51627324A02030416000000160000001A0000001C0000001C0000
        001A00000016000000120000000E000000080000000200000000000000002C2C
        2C5A617D8AFD56BEF9FF3BA7EDF32B7EB4BD1F547181060B091C0000000E0000
        000C0000000A0000000800000004000000020000000000000000000000000000
        00009ABBCBCD7ED2FBFF63C8FBFF4BBAFBFF53BBDFFF65A688C9040A080E0000
        0000000000000000000000000000000000000000000000000000000000000000
        000076838A8BB8E6FCFF84D4FBFF76D1EFFF91DBC0FF8AD8B4FF4A9975C90209
        060E000000000000000000000000000000000000000000000000000000000000
        000038424748DEF3FDFFA5E1F3FF7ED2AFFF6AC89EFF7AD0A9FF6ECAA1FF318C
        63C90208050E0000000000000000000000000000000000000000000000000000
        000006090A0AA4D6CBEF94DCBDFF85D5B1FF61C498FF58BF91FF64C59AFF4BB9
        89FF1B7D54C90107050E00000000000000000000000000000000000000000000
        0000000000001C2D25365CB88EEF76CEA6FF72CCA3FF4DB989FF36AE7AFF41B3
        81FF35AA78FF1A734FC90E0E0E12000000000000000000000000000000000000
        00000000000000000000142920363BA777EF58BD91FF55BD8FFF26A56EFF219D
        68FF31A373FF77BA9EFF979797D3101010140000000000000000000000000000
        00000000000000000000000000000A2419361C8F60EF42AC7FFF3CAD7CFF1C95
        63FF41A07AFFE5EAE8FFD1D1D1FFA9A9A8D30C0C0D1200000000000000000000
        00000000000000000000000000000000000006201536158055EF329D71FF57AE
        8AFFCBD5D1FFD2D1D1FFDDDCDCFFC2C5CBFF1B3A8BC90102060A000000000000
        00000000000000000000000000000000000000000000041B12366B978AEFE6E8
        E8FFD2D2D2FFD7D7D7FFC6C6C6FF6C89C7FF1036A8FF030B2338000000000000
        000000000000000000000000000000000000000000000000000022222736B6B6
        BEEFE1E1E1FFD1D1D2FF7B96C7FF1A4DB5FF0B257BC100000102000000000000
        0000000000000000000000000000000000000000000000000000000000002828
        2A369BA6BFED5F8ACBFF296FC7FF11358ED301040D1400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000040D2536254E9CD50D276BA10103090E0000000000000000}
    end
    object dxBarButton2: TdxBarButton
      Caption = #31896#36148'BOM'
      Category = 0
      Hint = #31896#36148'BOM'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000004949
        49621515151C0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000005C5C5C78D3D3
        D3FB373737480000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000005D5D5D78D7D7D7FB4848
        485A000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000005E5E5E78D8D9D9FF494C4B620000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000005F5F5F78D9DADAFF4E8F78FF043826850000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000005F5F5F78D9DBDAFF52967DFF0A714CFF086C49FB0327
        1A5A000000000000000000000000000000000000000000000000000000000000
        0000000000005F5F5F78DADBDBFF569E82FF107D53FF0D7850FF0D774FFF0A71
        4BFD053B28870004030A00000000000000000000000000000000000000000000
        00005F5F5F78DADBDBFF5AA587FF15885AFF138357FF148559FF128156FF0D78
        50FF096F4AFF066241E702221750000000000000000000000000000000005757
        5770D9DBDAFF5DAB8BFF1B9261FF198E5EFF1B9362FF1B9160FF15875AFF0F7A
        52FF0B744EFF086E4AFF066946FB021C13420000000000000000000000003A3A
        3A4A59997ED7209C67FF1E9865FF229F6AFF229F6AFF1D9663FF158659FF1180
        55FF0E7A51FF0B744EFF086E49FF065E3EDB0001010200000000000000000000
        0000081C132A2CA26EF738AD7AFF33AD78FF24A26CFF1A9160FF178B5CFF1485
        59FF117F55FF0E7951FF0B734DFF0A6C47F30003020600000000000000000000
        000000000000143B2A544EB789F93DB17FFF209B68FF1D9563FF1A9060FF178A
        5CFF148558FF117E54FF0E7750F5042015420000000000000000000000000000
        000000000000000000000C241A34277D58B729A26EFD1F9A66FF1C9563FF198F
        5FFF16895BFF148356F505231742000000000000000000000000000000000000
        0000000000000000000000000000000000000D2A1D3E299969EB1F9966FF1C94
        62FF1A8C5DF50726194200000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000C271B3A29A26EFD2297
        66F509291B420000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001B5A3E850C2C
        1E42000000000000000000000000000000000000000000000000}
    end
  end
  inherited PupBpm: TdxBarPopupMenu
    Left = 856
    Top = 48
  end
  inherited dsHed: TDataSource
    Left = 288
    Top = 256
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    OnCalcFields = qyHedCalcFields
    SQL.Strings = (
      'select * from ItemBomHDTB')
    Left = 288
    Top = 288
    object qyHedAutoID: TLargeintField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object qyHedBillNo: TStringField
      FieldName = 'BillNo'
      Size = 50
    end
    object qyHedBillDate: TDateTimeField
      FieldName = 'BillDate'
    end
    object qyHedItemID: TStringField
      FieldName = 'ItemID'
      Size = 30
    end
    object qyHedItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 50
    end
    object qyHedProType: TStringField
      FieldName = 'ProType'
      Size = 100
    end
    object qyHedItemVer: TStringField
      FieldName = 'ItemVer'
      Size = 50
    end
    object qyHedbMRP: TBooleanField
      FieldName = 'bMRP'
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
    object qyHedItemName: TStringField
      FieldKind = fkCalculated
      FieldName = 'ItemName'
      Size = 200
      Calculated = True
    end
    object qyHedItemSpc: TStringField
      FieldKind = fkCalculated
      FieldName = 'ItemSpc'
      Size = 200
      Calculated = True
    end
    object qyHedItemUnit: TStringField
      FieldKind = fkCalculated
      FieldName = 'ItemUnit'
      Size = 10
      Calculated = True
    end
    object qyHedColor: TStringField
      FieldName = 'Color'
      Size = 100
    end
    object qyHedbVirtual: TBooleanField
      FieldName = 'bVirtual'
    end
  end
  object dsDet: TDataSource
    DataSet = qyDet
    Left = 320
    Top = 256
  end
  object qyDet: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qyDetAfterInsert
    OnCalcFields = qyDetCalcFields
    Parameters = <>
    SQL.Strings = (
      'select * from ItemBomDTTB')
    Left = 320
    Top = 288
    object qyDetAutoID: TLargeintField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object qyDetBillNo: TStringField
      FieldName = 'BillNo'
      Size = 50
    end
    object qyDetItemID: TStringField
      FieldName = 'ItemID'
      Size = 30
    end
    object qyDetItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 50
    end
    object qyDetProType: TStringField
      FieldName = 'ProType'
      Size = 100
    end
    object qyDetItemVer: TStringField
      FieldName = 'ItemVer'
      Size = 50
    end
    object qyDetChildId: TStringField
      FieldName = 'ChildId'
      OnChange = qyDetChildIdChange
      Size = 30
    end
    object qyDetChildCode: TStringField
      FieldName = 'ChildCode'
      Size = 50
    end
    object qyDetChildVer: TStringField
      FieldName = 'ChildVer'
      Size = 50
    end
    object qyDetDosage: TFMTBCDField
      FieldName = 'Dosage'
      Precision = 19
      Size = 6
    end
    object qyDetSubDosage: TFMTBCDField
      FieldName = 'SubDosage'
      Precision = 19
      Size = 6
    end
    object qyDetWasteRate: TFMTBCDField
      FieldName = 'WasteRate'
      Precision = 18
      Size = 5
    end
    object qyDetiFlag: TSmallintField
      FieldName = 'iFlag'
    end
    object qyDetDrawDept: TStringField
      FieldName = 'DrawDept'
    end
    object qyDetTechName: TStringField
      FieldName = 'TechName'
      Size = 100
    end
    object qyDetbKeyChild: TBooleanField
      FieldName = 'bKeyChild'
    end
    object qyDetbReplace: TBooleanField
      FieldName = 'bReplace'
    end
    object qyDetbDefault: TBooleanField
      FieldName = 'bDefault'
    end
    object qyDetbUse: TBooleanField
      FieldName = 'bUse'
    end
    object qyDetReplaceItem: TStringField
      FieldName = 'ReplaceItem'
      Size = 30
    end
    object qyDetRemark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
    object qyDetChildPYCode: TStringField
      FieldName = 'ChildPYCode'
      Size = 50
    end
    object strngfldDetChildProType: TStringField
      FieldName = 'ChildProType'
      Size = 100
    end
    object strngfldDetDrawDeptName: TStringField
      FieldKind = fkCalculated
      FieldName = 'DrawDeptName'
      Size = 50
      Calculated = True
    end
    object qyDetColor: TStringField
      FieldName = 'Color'
      Size = 100
    end
    object qyDetChildColor: TStringField
      FieldName = 'ChildColor'
      Size = 100
    end
    object qyDetChildName: TStringField
      FieldName = 'ChildName'
      Size = 100
    end
    object qyDetChildSpc: TStringField
      FieldName = 'ChildSpc'
      Size = 100
    end
    object qyDetChildPic: TStringField
      FieldName = 'ChildPic'
      Size = 50
    end
    object qyDetChildUnit: TStringField
      FieldName = 'ChildUnit'
      Size = 10
    end
    object qyDetChildSubUnit: TStringField
      FieldName = 'ChildSubUnit'
      Size = 10
    end
    object qyDetChildiFlag: TSmallintField
      FieldName = 'ChildiFlag'
    end
    object qyDetChildMaterial: TStringField
      FieldName = 'ChildMaterial'
      Size = 50
    end
    object qyDetChildExchrate: TFMTBCDField
      FieldName = 'ChildExchrate'
      Precision = 18
      Size = 9
    end
  end
  object cxgrdpmn1: TcxGridPopupMenu
    Grid = cxgrd
    PopupMenus = <>
    Left = 432
    Top = 296
  end
  object qyBand: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'exec prBomOpen '#39'03050001'#39','#39'BOM1301050933'#39)
    Left = 352
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
    Left = 352
    Top = 256
  end
  object pmLayout: TPopupMenu
    Left = 472
    Top = 296
    object mniNCopyD: TMenuItem
      Caption = #22797#21046#21333#20803#26684
      OnClick = mniNCopyDClick
    end
    object mniNCopyL: TMenuItem
      Caption = #31896#36148#35813#21015
      OnClick = mniNCopyLClick
    end
    object mniN1: TMenuItem
      Caption = '-'
      Visible = False
    end
    object NCustomGrd: TMenuItem
      Caption = #35774#23450#21015#37197#32622
      OnClick = NCustomGrdClick
    end
    object NSaveGrd: TMenuItem
      Caption = #20445#23384#21015#37197#32622
      OnClick = NSaveGrdClick
    end
    object NDelGrd: TMenuItem
      Caption = #28165#38500#21015#37197#32622
      OnClick = NDelGrdClick
    end
  end
end
