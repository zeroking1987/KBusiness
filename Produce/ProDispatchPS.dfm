inherited ProDispatchFM: TProDispatchFM
  Caption = #29983#20135#27966#24037#21333
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    TabOrder = 1
    inherited cxLabTitle: TcxLabel
      Caption = #29983#20135#27966#24037#21333
      Style.IsFontAssigned = True
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
    inherited Label2: TLabel
      Left = 26
      Top = 6
      ExplicitLeft = 26
      ExplicitTop = 6
    end
  end
  inherited pnlEdit: TPanel
    Height = 61
    TabOrder = 5
    ExplicitHeight = 61
    object lbl1: TLabel [0]
      Left = 38
      Top = 40
      Width = 24
      Height = 13
      Caption = #22791#27880
    end
    object Label11: TLabel [1]
      Left = 26
      Top = 9
      Width = 36
      Height = 13
      Caption = #27966#24037#20154
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 439
      ExplicitLeft = 439
      ExplicitWidth = 183
      ExplicitHeight = 57
      Height = 57
      Width = 183
      inherited Label1: TLabel
        Left = 10
        ExplicitLeft = 10
      end
      inherited Label9: TLabel
        Left = 10
        Top = 36
        ExplicitLeft = 10
        ExplicitTop = 36
      end
      inherited cxEdtNo: TcxDBTextEdit
        DataBinding.DataField = 'DispatchNo'
        Style.IsFontAssigned = True
      end
      inherited cxdt: TcxDBDateEdit
        Top = 32
        DataBinding.DataField = 'DispatchDate'
        ExplicitTop = 32
      end
    end
    object cxMoRemark: TcxDBMemo
      Left = 70
      Top = 36
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.ScrollBars = ssVertical
      TabOrder = 1
      Visible = False
      Height = 21
      Width = 338
    end
    object cxPupEdtRemark: TcxDBPopupEdit
      Left = 70
      Top = 36
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.PopupControl = cxMoRemark
      TabOrder = 2
      Width = 340
    end
    object cxBtReqMan: TcxDBButtonEdit
      Left = 70
      Top = 6
      DataBinding.DataField = 'DispatchManName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxBtReqManPropertiesButtonClick
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      TabOrder = 3
      Width = 130
    end
  end
  inherited pnlBody: TPanel
    Top = 137
    Height = 376
    ExplicitTop = 137
    ExplicitHeight = 376
    inherited cxPgc: TcxPageControl
      Height = 376
      ExplicitHeight = 376
      ClientRectBottom = 370
      inherited cxtbsht1: TcxTabSheet
        Caption = ' '#29983#20135#20135#21697' '
        ExplicitLeft = 2
        ExplicitTop = 27
        ExplicitWidth = 1036
        ExplicitHeight = 343
        inherited cxgrd: TcxGrid
          Height = 343
          ExplicitHeight = 343
          inherited cxgrdtbv: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
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
              end>
            OptionsView.NoDataToDisplayInfoText = #24658#25463#36719#20214
            object cxgrdtbvItemCode: TcxGridDBColumn
              Caption = #20135#21697#20195#21495
              DataBinding.FieldName = 'ItemCode'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdtbvItemCodePropertiesButtonClick
              Properties.OnValidate = cxgrdtbvItemCodePropertiesValidate
              Width = 70
            end
            object cxgrdtbvItemName: TcxGridDBColumn
              Caption = #20135#21697#21517#31216
              DataBinding.FieldName = 'ItemName'
              Styles.Content = DataFM.cxStyNoEdit
              Width = 114
            end
            object cxgrdtbvItemSpc: TcxGridDBColumn
              Caption = #20135#21697#35268#26684
              DataBinding.FieldName = 'ItemSpc'
              Styles.Content = DataFM.cxStyNoEdit
              Width = 96
            end
            object cxgrdtbvItemUnit: TcxGridDBColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'ItemUnit'
              Styles.Content = DataFM.cxStyNoEdit
              Width = 43
            end
            object cxgrdtbvProType: TcxGridDBColumn
              Caption = #23646#24615
              DataBinding.FieldName = 'ProType'
              Visible = False
              Width = 70
            end
            object cxgrdtbvColor: TcxGridDBColumn
              Caption = #39068#33394
              DataBinding.FieldName = 'Color'
              Visible = False
              Width = 70
            end
            object cxgrdtbvOrdinal: TcxGridDBColumn
              Caption = #24037#24207#21495
              DataBinding.FieldName = 'Ordinal'
              Width = 58
            end
            object cxgrdtbvTechName: TcxGridDBColumn
              Caption = #24037#24207#21517#31216
              DataBinding.FieldName = 'TechName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdtbvTechNamePropertiesButtonClick
              Width = 87
            end
            object cxgrdtbvTopTech: TcxGridDBColumn
              Caption = #19978#36947#24037#24207
              DataBinding.FieldName = 'TopTech'
              Visible = False
              Width = 70
            end
            object cxgrdtbvColumn1: TcxGridDBColumn
              Caption = #19979#36947#24037#24207
              DataBinding.FieldName = 'NextTech'
              Visible = False
              Width = 70
            end
            object cxgrdtbvTechParam: TcxGridDBColumn
              Caption = #24037#24207#23646#24615
              DataBinding.FieldName = 'TechParam'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                #26412#21378
                #22806#21327)
              Width = 70
            end
            object cxgrdtbvbFirst: TcxGridDBColumn
              Caption = #39318#36947
              DataBinding.FieldName = 'bFirst'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Visible = False
              Width = 70
            end
            object cxgrdtbvColumn5: TcxGridDBColumn
              Caption = #26411#36947
              DataBinding.FieldName = 'bLast'
              Visible = False
              Width = 46
            end
            object cxgrdtbvEmpCode: TcxGridDBColumn
              Caption = #29983#20135#23545#35937#32534#21495
              DataBinding.FieldName = 'ObjectId'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Caption = #37096
                  Default = True
                  Kind = bkText
                end
                item
                  Caption = #22806
                  Kind = bkText
                end
                item
                  Caption = #21592
                  Kind = bkText
                end>
              Properties.OnButtonClick = cxgrdtbvEmpCodePropertiesButtonClick
              Width = 97
            end
            object cxgrdtbvEmpName: TcxGridDBColumn
              Caption = #29983#20135#23545#35937#21517#31216
              DataBinding.FieldName = 'ObjectName'
              Width = 109
            end
            object cxgrdtbvColumn2: TcxGridDBColumn
              Caption = #24403#21069#24211#23384
              DataBinding.FieldName = 'WareNum'
              Styles.Content = DataFM.cxStyNoEdit
            end
            object cxgrdtbvDispatchNum: TcxGridDBColumn
              Caption = #27966#24037#25968#37327
              DataBinding.FieldName = 'DispatchNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdtbvDispatchNumPropertiesValidate
              Styles.Content = DataFM.cxStyNum
              Width = 77
            end
            object cxgrdtbvRemark: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 99
            end
            object cxgrdtbvColumn3: TcxGridDBColumn
              Caption = #20572#27490
              DataBinding.FieldName = 'bStop'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Width = 44
            end
            object cxgrdtbvColumn4: TcxGridDBColumn
              Caption = #23436#24037
              DataBinding.FieldName = 'bComplete'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Width = 46
            end
          end
          object cxgrdDBTableView1: TcxGridDBTableView [1]
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.PriorPage.Visible = True
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
            DataController.KeyFieldNames = #21333#21495
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 35
            object cxgrdDBTableView1DBColumn: TcxGridDBColumn
              DataBinding.FieldName = #26085#26399
              Width = 62
            end
            object cxgrdDBTableView1Column1: TcxGridDBColumn
              DataBinding.FieldName = #21333#21495
              Width = 106
            end
            object cxgrdDBTableView1DBColumn3: TcxGridDBColumn
              DataBinding.FieldName = #21046#21333#20154
              Width = 69
            end
            object cxgrdDBTableView1DBColumn4: TcxGridDBColumn
              DataBinding.FieldName = #20449#24687
              Visible = False
              Width = 280
            end
          end
        end
        object cxAutoNo: TcxDBTextEdit
          Left = 343
          Top = 176
          DataBinding.DataField = 'AutoNo'
          DataBinding.DataSource = dsDet
          Properties.OnChange = cxAutoNoPropertiesChange
          TabOrder = 1
          Visible = False
          Width = 121
        end
      end
      object cxTabSheet1: TcxTabSheet
        Caption = ' '#25152#38656#29289#26009' '
        ImageIndex = 1
        object cxgrdMat: TcxGrid
          Left = 0
          Top = 0
          Width = 1036
          Height = 343
          Align = alClient
          TabOrder = 0
          object cxgrdbtblvwMat: TcxGridDBTableView
            PopupMenu = pmLayout
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
            OnCellDblClick = cxgrdtbvCellDblClick
            OnCustomDrawCell = cxgrdbtblvwMatCustomDrawCell
            OnSelectionChanged = cxgrdtbvSelectionChanged
            DataController.DataSource = dsMat
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
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
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.PullFocusing = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Editing = False
            OptionsView.NoDataToDisplayInfoText = #24658#25463#36719#20214
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.IndicatorWidth = 35
            OnCustomDrawIndicatorCell = cxgrdbtblvwProCustomDrawIndicatorCell
            object cxgrdbtblvwMatItemCode: TcxGridDBColumn
              Caption = #20135#21697#20195#21495
              DataBinding.FieldName = 'ItemCode'
              Width = 84
            end
            object cxgrdbtblvwMatItemName: TcxGridDBColumn
              Caption = #20135#21697#21517#31216
              DataBinding.FieldName = 'ItemName'
              Styles.Content = DataFM.cxStyNoEdit
              Width = 125
            end
            object cxgrdbtblvwMatItemSpc: TcxGridDBColumn
              Caption = #20135#21697#35268#26684
              DataBinding.FieldName = 'ItemSpc'
              Styles.Content = DataFM.cxStyNoEdit
              Width = 111
            end
            object cxgrdbtblvwMatItemUnit: TcxGridDBColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'ItemUnit'
              Styles.Content = DataFM.cxStyNoEdit
              Width = 58
            end
            object cxgrdbtblvwMatProType: TcxGridDBColumn
              Caption = #23646#24615
              DataBinding.FieldName = 'ProType'
              Width = 81
            end
            object cxgrdbtblvwMatColor: TcxGridDBColumn
              Caption = #39068#33394
              DataBinding.FieldName = 'Color'
              Visible = False
              Width = 70
            end
            object cxgrdbtblvwMatColumn1: TcxGridDBColumn
              Caption = #29992#37327
              DataBinding.FieldName = 'Dosage'
              Width = 60
            end
            object cxgrdbtblvwMatColumn2: TcxGridDBColumn
              Caption = #25439#32791#29575'(%)'
              DataBinding.FieldName = 'WasteRate'
              Width = 70
            end
            object cxgrdbtblvwMatTakeNum: TcxGridDBColumn
              Caption = #25152#38656#25968#37327
              DataBinding.FieldName = 'TakeNum'
              Styles.Content = DataFM.cxStyNum
              Width = 74
            end
            object cxgrdbclmnMatSendMode: TcxGridDBColumn
              Caption = #21457#26009#26041#24335
              DataBinding.FieldName = 'SendMode'
              Width = 70
            end
            object cxgrdbtblvwMatColumn5: TcxGridDBColumn
              Caption = #39046#26009#21333#20301#32534#21495
              DataBinding.FieldName = 'Takeobjectid'
              Width = 100
            end
            object cxgrdbtblvwMatColumn6: TcxGridDBColumn
              Caption = #39046#26009#21333#20301#21517#31216
              DataBinding.FieldName = 'TakeObjectName'
              Width = 100
            end
            object cxgrdbtblvwMatColumn3: TcxGridDBColumn
              Caption = #29983#20135#20135#21697#20195#21495
              DataBinding.FieldName = 'pItemCode'
              Styles.Content = DataFM.cxStyNoEdit
              Width = 93
            end
            object cxgrdbtblvwMatColumn4: TcxGridDBColumn
              Caption = #29983#20135#20135#21697#21517#31216
              DataBinding.FieldName = 'pItemName'
              Styles.Content = DataFM.cxStyNoEdit
              Width = 91
            end
            object cxgrdbtblvwMatRemark: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 173
            end
          end
          object cxgrdlvl1: TcxGridLevel
            GridView = cxgrdbtblvwMat
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
          ItemName = 'btCancel'
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
          ItemName = 'btRefer'
        end
        item
          Visible = True
          ItemName = 'btInvoice'
        end
        item
          Visible = True
          ItemName = 'btPrint'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 80
          Visible = True
          ItemName = 'dxCmbReport'
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
      OnClick = btFindClick
    end
    inherited btRefer: TdxBarLargeButton
      OnClick = btReferClick
    end
    inherited btUnCheck: TdxBarLargeButton
      OnClick = btUnCheckClick
    end
    inherited btRef: TdxBarLargeButton
      Visible = ivAlways
      OnClick = btRefClick
    end
    inherited btInvoice: TdxBarLargeButton
      Caption = #20998' '#26512
      Hint = #23545#25152#26377#20135#21697#36827#34892'MRP'#20998#26512
      LargeGlyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000002361C5A02281442000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFF2CAB6AFF046D37B401160B2400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFFB9F1D4FF6ECD9CFF119A53F7034E2781000503090000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFFA7EECAFFA7EECAFF9AE7C0FF43BA7DFF058644DE022F
        184E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFF95EABFFF95EABFFF95EABFFF95EABFFF75D8A6FF21A9
        63FF046D37B401160B2400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFF80E7B3FF80E7B3FF80E7B3FF80E7B3FF80E7B3FF7FE6
        B2FF4CC688FF0D9A51F7034E2781000503090000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFF6CE3A7FF6CE3A7FF6CE3A7FF6CE3A7FF6CE3A7FF6CE3
        A7FF6CE3A7FF64DDA0FF2CB570FF058644DE022F184E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFF5ADF9CFF5ADF9CFF5ADF9CFF5ADF9CFF5ADF9CFF5ADF
        9CFF5ADF9CFF5ADF9CFF5ADF9CFF47D08BFF16A75DFF046D37B401160B240000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFF46DB90FF46DB90FF46DB90FF46DB90FF46DB90FF46DB
        90FF46DB90FF46DB90FF46DB90FF46DB90FF45DA8FFF2BBF74FF0A994FF7034E
        2781000503090000000000000000000000000000000000000000000000000000
        000000000000069A4EFF32D784FF32D784FF32D784FF32D784FF32D784FF32D7
        84FF32D784FF32D784FF32D784FF32D784FF32D784FF32D784FF2FD380FF17B2
        63FF058644DE022F184E00000000000000000000000000000000000000000000
        000000000000069A4EFF1FD479FF1FD479FF1FD479FF1FD479FF1FD479FF1FD4
        79FF1FD479FF1FD479FF1FD479FF1FD479FF1FD479FF1FD479FF1FD479FF1FD4
        79FF1AC870FF09A254FF0124123C000000000000000000000000000000000000
        000000000000069A4EFF53DE98FF53DE98FF53DE98FF53DE98FF53DE98FF53DE
        98FF53DE98FF53DE98FF53DE98FF53DE98FF53DE98FF53DE98FF53DE98FF53DE
        98FF42D088FF11A559FF0124123C000000000000000000000000000000000000
        000000000000069A4EFF71E4AAFF71E4AAFF71E4AAFF71E4AAFF71E4AAFF71E4
        AAFF71E4AAFF71E4AAFF71E4AAFF71E4AAFF71E4AAFF71E4AAFF68DEA3FF30BA
        73FF058443DB022D174B00000000000000000000000000000000000000000000
        000000000000069A4EFF89E8B8FF89E8B8FF89E8B8FF89E8B8FF89E8B8FF89E8
        B8FF89E8B8FF89E8B8FF89E8B8FF89E8B8FF88E7B7FF54CB8EFF0F9B52F7034C
        277E000503090000000000000000000000000000000000000000000000000000
        000000000000069A4EFFA1EDC7FFA1EDC7FFA1EDC7FFA1EDC7FFA1EDC7FFA1ED
        C7FFA1EDC7FFA1EDC7FFA1EDC7FF82DEAFFF25AB67FF046B36B101140A210000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFFB7F1D4FFB7F1D4FFB7F1D4FFB7F1D4FFB7F1D4FFB7F1
        D4FFB7F1D4FFABECCBFF50C188FF058443DB022D174B00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFFC8F5DEFFC8F5DEFFC8F5DEFFC8F5DEFFC8F5DEFFC7F4
        DDFF82D7ACFF139C55F6034C277E000503090000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFFD8F7E7FFD8F7E7FFD8F7E7FFD8F7E7FFB5E9CFFF36B0
        72FF046D37B401160B2400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFFE5FAF0FFE5FAF0FFDAF6E8FF6FCA9BFF058644DE022F
        184E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFFEEFCF5FFA9E1C4FF179D58F6034E2781000503090000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000069A4EFF45B57BFF046D37B401160B2400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000002361C5A0126133F000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
  end
  inherited qyHed: TADOQuery
    SQL.Strings = (
      'select * from  ProDispatchHDTB')
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
    object qyHedDispatchNo: TStringField
      FieldName = 'DispatchNo'
      Size = 30
    end
    object qyHedDispatchDate: TDateTimeField
      FieldName = 'DispatchDate'
    end
    object qyHedDispatchMan: TStringField
      FieldName = 'DispatchMan'
    end
    object qyHedDispatchManName: TStringField
      FieldName = 'DispatchManName'
    end
    object qyHedbEnd: TBooleanField
      FieldName = 'bEnd'
    end
    object qyHedItemID: TStringField
      FieldName = 'ItemID'
      Size = 50
    end
    object qyHedItemCode: TStringField
      FieldName = 'ItemCode'
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
    object qyHedMaterial: TStringField
      FieldName = 'Material'
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
    object qyHedProType: TStringField
      FieldName = 'ProType'
      Size = 100
    end
    object qyHedColor: TStringField
      FieldName = 'Color'
      Size = 50
    end
    object qyHedCompactNO: TStringField
      FieldName = 'CompactNO'
      Size = 50
    end
    object qyHedSaleOrderNo: TStringField
      FieldName = 'SaleOrderNo'
      Size = 100
    end
    object qyHedSaleOrderId: TStringField
      FieldName = 'SaleOrderId'
      Size = 100
    end
    object qyHedProOrderNo: TStringField
      FieldName = 'ProOrderNo'
      Size = 100
    end
    object qyHedProOrderId: TStringField
      FieldName = 'ProOrderId'
      Size = 100
    end
    object qyHedDispatchNum: TFMTBCDField
      FieldName = 'DispatchNum'
      Precision = 19
      Size = 6
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
    object qyHedRemark: TStringField
      FieldName = 'Remark'
      Size = 200
    end
  end
  inherited dsDet: TDataSource
    Left = 40
    Top = 248
  end
  inherited qyDet: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyDetAfterInsert
    OnCalcFields = qyDetCalcFields
    SQL.Strings = (
      'select Top 10 * from  ProDispatchDTTB')
    Left = 40
    Top = 280
    object qyDetAutoId: TLargeintField
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
    object qyDetDispatchNo: TStringField
      FieldName = 'DispatchNo'
      Size = 30
    end
    object qyDetItemID: TStringField
      FieldName = 'ItemID'
      OnChange = qyDetItemIDChange
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
    object qyDetMaterial: TStringField
      FieldName = 'Material'
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
    object qyDetItemParam: TStringField
      FieldName = 'ItemParam'
    end
    object qyDetItemSource: TStringField
      FieldName = 'ItemSource'
    end
    object qyDetProType: TStringField
      FieldName = 'ProType'
      Size = 100
    end
    object qyDetColor: TStringField
      FieldName = 'Color'
      Size = 50
    end
    object qyDetCompactNO: TStringField
      FieldName = 'CompactNO'
      Size = 50
    end
    object qyDetSaleOrderNo: TStringField
      FieldName = 'SaleOrderNo'
      Size = 100
    end
    object qyDetSaleOrderId: TStringField
      FieldName = 'SaleOrderId'
      Size = 100
    end
    object qyDetProOrderNo: TStringField
      FieldName = 'ProOrderNo'
      Size = 100
    end
    object qyDetProOrderId: TStringField
      FieldName = 'ProOrderId'
      Size = 100
    end
    object qyDetOrdinal: TSmallintField
      FieldName = 'Ordinal'
    end
    object qyDetTechName: TStringField
      FieldName = 'TechName'
      OnChange = qyDetTechNameChange
      Size = 100
    end
    object qyDetTopTech: TStringField
      FieldName = 'TopTech'
      Size = 100
    end
    object qyDetTechParam: TStringField
      FieldName = 'TechParam'
      Size = 50
    end
    object qyDetbFirst: TBooleanField
      FieldName = 'bFirst'
    end
    object qyDetbTakeMat: TBooleanField
      FieldName = 'bTakeMat'
    end
    object qyDetiNo: TIntegerField
      FieldName = 'iNo'
    end
    object qyDetEmpId: TStringField
      FieldName = 'EmpId'
      OnChange = qyDetEmpIdChange
    end
    object qyDetEmpCode: TStringField
      FieldName = 'EmpCode'
    end
    object qyDetEmpName: TStringField
      FieldName = 'EmpName'
    end
    object qyDetDispatchNum: TFMTBCDField
      FieldName = 'DispatchNum'
      Precision = 19
      Size = 6
    end
    object qyDetProOrderNum: TFMTBCDField
      FieldName = 'ProOrderNum'
      Precision = 19
      Size = 6
    end
    object qyDetRfNum: TFMTBCDField
      FieldName = 'RfNum'
      Precision = 19
      Size = 6
    end
    object qyDetPassNum: TFMTBCDField
      FieldName = 'PassNum'
      Precision = 19
      Size = 6
    end
    object qyDetPassPrice: TFMTBCDField
      FieldName = 'PassPrice'
      Precision = 19
      Size = 6
    end
    object qyDetPassMoney: TFMTBCDField
      FieldName = 'PassMoney'
      Precision = 19
      Size = 6
    end
    object qyDetSpoilNum: TFMTBCDField
      FieldName = 'SpoilNum'
      Precision = 19
      Size = 6
    end
    object qyDetSpoilPrice: TFMTBCDField
      FieldName = 'SpoilPrice'
      Precision = 19
      Size = 6
    end
    object qyDetSpoilMoney: TFMTBCDField
      FieldName = 'SpoilMoney'
      Precision = 19
      Size = 6
    end
    object qyDetWasteNum: TFMTBCDField
      FieldName = 'WasteNum'
      Precision = 19
      Size = 6
    end
    object qyDetWastePrice: TFMTBCDField
      FieldName = 'WastePrice'
      Precision = 19
      Size = 6
    end
    object qyDetWasteMoney: TFMTBCDField
      FieldName = 'WasteMoney'
      Precision = 19
      Size = 6
    end
    object qyDetRemark: TStringField
      FieldName = 'Remark'
      Size = 200
    end
    object qyDetNextTech: TStringField
      FieldName = 'NextTech'
      Size = 100
    end
    object qyDetWareNum: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'WareNum'
      Calculated = True
    end
    object qyDetbStop: TBooleanField
      FieldName = 'bStop'
    end
    object qyDetbComplete: TBooleanField
      FieldName = 'bComplete'
    end
    object qyDetObjectId: TStringField
      FieldName = 'ObjectId'
      OnChange = qyDetObjectIdChange
      Size = 50
    end
    object qyDetObjectName: TStringField
      FieldName = 'ObjectName'
      Size = 100
    end
    object qyDetbLast: TBooleanField
      FieldName = 'bLast'
    end
  end
  inherited pmLayout: TPopupMenu
    object N1: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = #21333#26465#20572#27490
      OnClick = N2Click
    end
    object N4: TMenuItem
      Caption = #25972#21333#20572#27490
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object N3: TMenuItem
      Caption = #21333#26465#23436#24037
      OnClick = N3Click
    end
    object N6: TMenuItem
      Caption = #25972#21333#23436#24037
      OnClick = N6Click
    end
  end
  inherited frxHed: TfrxDBDataset
    UserName = #29983#20135#27966#24037#21333#20027#34920
    FieldAliases.Strings = (
      'AutoID='#20869#30721
      'AutoNo='#33258#21160#32534#21495
      'bSelect='#36873#25321
      'DispatchNo='#27966#24037#21333#21495
      'DispatchDate='#27966#24037#26085#26399
      'DispatchMan='#27966#24037#20154#32534#21495
      'DispatchManName='#27966#24037#20154#22995#21517
      'bEnd='#26159#21542#32467#26463
      'ItemID='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#20135#21697#35268#26684
      'ItemPic='#20135#21697#22270#21495
      'Material='#26448#36136
      'ItemUnit='#20027#21333#20301
      'SubUnit='#21103#21333#20301
      'iFlag='#36716#25442#26631#24535
      'ExchRate='#36716#21270#29575
      'ProType='#23646#24615
      'Color='#39068#33394
      'CompactNO='#21512#21516#21495
      'SaleOrderNo='#38144#21806#35746#21333#21495
      'SaleOrderId='#38144#21806#35746#21333#20869#30721
      'ProOrderNo='#29983#20135#35746#21333#21495
      'ProOrderId='#29983#20135#35746#21333#20869#30721
      'DispatchNum='#27966#24037#25968#37327
      'bPrint='#26159#21542#25171#21360
      'PrintNum='#25171#21360#27425#25968
      'MakeDate='#21046#21333#26085#26399
      'MakeMan='#21046#21333#20154#32534#21495
      'MakeManName='#21046#21333#20154
      'EditMan='#20462#25913#20154#32534#21495
      'EditManName='#20462#25913#20154
      'EditDate='#20462#25913#26085#26399
      'AuditFlag='#23457#25209#26631#24535
      'bMaxAudit='#26159#21542#23457#26680#23436#25104
      'AuditManName='#23457#26680#20154
      'AuditDate='#23457#26680#26085#26399
      'MaxAuditDate='#26368#21518#23457#26680#26085#26399)
  end
  inherited frxDet: TfrxDBDataset
    UserName = #29983#20135#27966#24037#21333'-'#29983#20135#24037#24207
    FieldAliases.Strings = (
      'AutoId='#33258#21160#32534#30721
      'AutoNo='#33258#21160#32534#21495
      'bSelect='#36873#25321
      'DispatchNo='#27966#24037#21333#21495
      'ItemID='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemPYCode='#25340#38899#30721
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#20135#21697#35268#26684
      'ItemPic='#22270#21495
      'Material='#26448#36136
      'ItemUnit='#20027#21333#20301
      'SubUnit='#21103#21333#20301
      'iFlag='#36716#25442#26631#24535
      'ExchRate='#36716#21270#29575
      'ItemParam='#20135#21697#23646#24615
      'ItemSource='#20135#21697#26469#28304
      'ProType='#30005#32518#32447
      'Color='#39068#33394
      'CompactNO='#21512#21516#21495
      'SaleOrderNo='#38144#21806#35746#21333#21495
      'SaleOrderId='#38144#21806#35746#21333#32534#30721
      'ProOrderNo='#29983#20135#35746#21333#21495
      'ProOrderId='#29983#20135#35746#21333#20869#30721
      'Ordinal='#24037#24207#21495
      'TechName='#24037#24207#21517#31216
      'TopTech='#19978#36947#24037#24207
      'TechParam='#24037#24207#23646#24615
      'bFirst='#26159#21542#39318#36947
      'bTakeMat='#26159#21542#39046#26009
      'iNo=iNo'
      'EmpId='#21592#24037#32534#21495
      'EmpCode='#21592#24037#24037#21495
      'EmpName='#21592#24037#22995#21517
      'DispatchNum='#27966#24037#25968#37327
      'ProOrderNum='#29983#20135#35746#21333#25968#37327
      'RfNum='#24341#29992#25968#37327
      'PassNum='#27491#21697#25968#37327
      'PassPrice='#27491#21697#21333#20215
      'PassMoney='#27491#21697#37329#39069
      'SpoilNum='#27425#21697#25968#37327
      'SpoilPrice='#27425#21697#21333#20215
      'SpoilMoney='#27425#21697#37329#39069
      'WasteNum='#24223#21697#25968#37327
      'WastePrice='#24223#21697#21333#20215
      'WasteMoney='#24223#21697#37329#39069
      'Remark='#22791#27880
      'NextTech='#19979#36947#24037#24207
      'WareNum='#24403#21069#24211#23384
      'bStop='#26159#21542#20572#27490
      'bComplete='#26159#21542#23436#24037
      'ObjectId='#29983#20135#23545#35937#32534#21495
      'ObjectName='#29983#20135#23545#35937#21517#31216
      'bLast='#26159#21542#26411#36947)
    Left = 40
    Top = 320
  end
  object frxMat: TfrxDBDataset
    UserName = #29983#20135#27966#24037#21333'-'#25152#38656#29289#26009
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoID='#33258#21160#32534#30721
      'AutoNo='#33258#21160#32534#21495
      'bSelect='#26159#21542#36873#25321
      'DispatchNo='#27966#24037#21333#21495
      'TakeDept='#39046#26009#37096#38376
      'WareId='#20179#24211#32534#21495
      'bTake='#26159#21542#39046#26009
      'ItemID='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'ItemPic='#22270#21495
      'Material='#26448#36136
      'ItemUnit='#20027#21333#20301
      'SubUnit='#21103#21333#20301
      'iFlag='#36716#25442#26631#35782
      'ExchRate='#36716#21270#29575
      'ProType='#23646#24615
      'Color='#39068#33394
      'CompactNO='#21512#21516#21495
      'SaleOrderNo='#38144#21806#35746#21333#21495
      'SaleOrderId='#38144#21806#35746#21333#20869#30721
      'ProOrderNo='#29983#20135#35746#21333#21495
      'ProOrderId='#29983#20135#35746#21333#20869#30721
      'TakeNum='#39046#26009#25968#37327
      'SendNum='#21457#36135#25968#37327
      'Remark='#22791#27880
      'DetAutoNo='#23545#24212#20869#30721
      'Dosage='#29992#37327
      'WasteRate='#25439#32791#29575
      'SendMode='#21457#26009#26041#24335
      'WareNum='#24403#21069#24211#23384
      'bStop='#26159#21542#20572#27490
      'bComplete='#26159#21542#23436#24037
      'pItemId='#19978#32423#20135#21697#32534#21495
      'pItemCode='#19978#32423#20135#21697#20195#21495
      'pItemName='#19978#32423#20135#21697#21517#31216)
    DataSet = qyMat
    BCDToCurrency = False
    Left = 80
    Top = 320
  end
  object qyMat: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qyMatAfterInsert
    OnCalcFields = qyMatCalcFields
    Parameters = <>
    SQL.Strings = (
      'select  * from ProDispatchMatTB')
    Left = 80
    Top = 280
    object qyMatAutoID: TLargeintField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object qyMatAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 100
    end
    object qyMatbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyMatDispatchNo: TStringField
      FieldName = 'DispatchNo'
      Size = 30
    end
    object qyMatWareId: TStringField
      FieldName = 'WareId'
    end
    object qyMatbTake: TBooleanField
      FieldName = 'bTake'
    end
    object qyMatItemID: TStringField
      FieldName = 'ItemID'
      OnChange = qyMatItemIDChange
      Size = 50
    end
    object qyMatItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 50
    end
    object qyMatItemName: TStringField
      FieldName = 'ItemName'
      Size = 100
    end
    object qyMatItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 100
    end
    object qyMatItemPic: TStringField
      FieldName = 'ItemPic'
      Size = 100
    end
    object qyMatMaterial: TStringField
      FieldName = 'Material'
      Size = 100
    end
    object qyMatItemUnit: TStringField
      FieldName = 'ItemUnit'
      Size = 10
    end
    object qyMatSubUnit: TStringField
      FieldName = 'SubUnit'
      Size = 10
    end
    object qyMatiFlag: TIntegerField
      FieldName = 'iFlag'
    end
    object qyMatExchRate: TFMTBCDField
      FieldName = 'ExchRate'
      Precision = 19
      Size = 6
    end
    object qyMatProType: TStringField
      FieldName = 'ProType'
      Size = 100
    end
    object qyMatColor: TStringField
      FieldName = 'Color'
      Size = 50
    end
    object qyMatCompactNO: TStringField
      FieldName = 'CompactNO'
      Size = 50
    end
    object qyMatSaleOrderNo: TStringField
      FieldName = 'SaleOrderNo'
      Size = 100
    end
    object qyMatSaleOrderId: TStringField
      FieldName = 'SaleOrderId'
      Size = 100
    end
    object qyMatProOrderNo: TStringField
      FieldName = 'ProOrderNo'
      Size = 100
    end
    object qyMatProOrderId: TStringField
      FieldName = 'ProOrderId'
      Size = 100
    end
    object qyMatTakeNum: TFMTBCDField
      FieldName = 'TakeNum'
      Precision = 19
      Size = 6
    end
    object qyMatSendNum: TFMTBCDField
      FieldName = 'SendNum'
      Precision = 19
      Size = 6
    end
    object qyMatRemark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
    object qyMatDetAutoNo: TStringField
      FieldName = 'DetAutoNo'
      Size = 100
    end
    object qyMatDosage: TFMTBCDField
      FieldName = 'Dosage'
      Precision = 19
      Size = 6
    end
    object qyMatWasteRate: TFMTBCDField
      FieldName = 'WasteRate'
      Precision = 19
      Size = 6
    end
    object qyMatSendMode: TStringField
      FieldName = 'SendMode'
      Size = 50
    end
    object qyMatWareNum: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'WareNum'
      Calculated = True
    end
    object qyMatbStop: TBooleanField
      FieldName = 'bStop'
    end
    object qyMatbComplete: TBooleanField
      FieldName = 'bComplete'
    end
    object qyMatpItemId: TStringField
      FieldName = 'pItemId'
      Size = 100
    end
    object qyMatpItemCode: TStringField
      FieldName = 'pItemCode'
      Size = 100
    end
    object qyMatpItemName: TStringField
      FieldName = 'pItemName'
      Size = 100
    end
    object qyMatTakeObjectId: TStringField
      FieldName = 'TakeObjectId'
    end
    object qyMatTakeObjectName: TStringField
      FieldName = 'TakeObjectName'
      Size = 100
    end
  end
  object dsMat: TDataSource
    DataSet = qyMat
    Left = 80
    Top = 248
  end
  object qyTemp: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Left = 120
    Top = 280
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = #29983#20135#27966#24037#21333'-'#29983#20135#24037#24207#34920
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoId='#33258#21160#32534#30721
      'AutoNo='#33258#21160#32534#21495
      'bSelect='#36873#25321
      'DispatchNo='#27966#24037#21333#21495
      'ItemID='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemPYCode='#25340#38899#30721
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#20135#21697#35268#26684
      'ItemPic='#22270#21495
      'Material='#26448#36136
      'ItemUnit='#20027#21333#20301
      'SubUnit='#21103#21333#20301
      'iFlag='#36716#25442#26631#24535
      'ExchRate='#36716#21270#29575
      'ItemParam='#20135#21697#23646#24615
      'ItemSource='#20135#21697#26469#28304
      'ProType='#30005#32518#32447
      'Color='#39068#33394
      'CompactNO='#21512#21516#21495
      'SaleOrderNo='#38144#21806#35746#21333#21495
      'SaleOrderId='#38144#21806#35746#21333#32534#30721
      'ProOrderNo='#29983#20135#35746#21333#21495
      'ProOrderId='#29983#20135#35746#21333#20869#30721
      'Ordinal='#24037#24207#21495
      'TechName='#24037#24207#21517#31216
      'TopTech='#19978#36947#24037#24207
      'NextTech='#19979#36947#24037#24207
      'TechParam='#24037#24207#23646#24615
      'bFirst='#26159#21542#39318#36947
      'bTakeMat='#26159#21542#39046#26009
      'iNo=iNo'
      'EmpId='#21592#24037#32534#21495
      'EmpCode='#21592#24037#24037#21495
      'EmpName='#21592#24037#22995#21517
      'DispatchNum='#27966#24037#25968#37327
      'ProOrderNum='#29983#20135#35746#21333#25968#37327
      'RfNum='#24341#29992#25968#37327
      'PassNum='#27491#21697#25968#37327
      'PassPrice='#27491#21697#21333#20215
      'PassMoney='#27491#21697#37329#39069
      'SpoilNum='#27425#21697#25968#37327
      'SpoilPrice='#27425#21697#21333#20215
      'SpoilMoney='#27425#21697#37329#39069
      'WasteNum='#24223#21697#25968#37327
      'WastePrice='#24223#21697#21333#20215
      'WasteMoney='#24223#21697#37329#39069
      'Remark='#22791#27880)
    DataSet = tbProDispatchDTTB
    BCDToCurrency = False
    Left = 40
    Top = 432
  end
  object tbProDispatchDTTB: TADOTable
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    TableName = 'ProDispatchDTTB'
    Left = 40
    Top = 400
  end
  object dsDTTB: TDataSource
    DataSet = tbProDispatchDTTB
    Left = 40
    Top = 360
  end
  object dsMatTB: TDataSource
    DataSet = tbProDispatchyMat
    Left = 80
    Top = 360
  end
  object tbProDispatchyMat: TADOTable
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    IndexFieldNames = 'DetAutoNo'
    MasterFields = 'AutoNo'
    MasterSource = dsDTTB
    TableName = 'ProDispatchMatTB'
    Left = 80
    Top = 400
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = #29983#20135#27966#24037#21333'-'#25152#38656#29289#26009#34920
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoID='#33258#21160#32534#30721
      'AutoNo='#33258#21160#32534#21495
      'DetAutoNo='#20174#34920#32534#21495
      'bSelect='#26159#21542#36873#25321
      'DispatchNo='#27966#24037#21333#21495
      'TakeDept='#39046#26009#37096#38376
      'WareId='#20179#24211#32534#21495
      'bTake='#26159#21542#39046#26009
      'Dosage='#29992#37327
      'WasteRate='#25439#22351#29575
      'ItemID='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'ItemPic='#22270#21495
      'Material='#26448#36136
      'ItemUnit='#20027#21333#20301
      'SubUnit='#21103#21333#20301
      'iFlag='#36716#25442#26631#35782
      'ExchRate='#36716#21270#29575
      'ProType='#23646#24615
      'Color='#39068#33394
      'CompactNO='#21512#21516#21495
      'SaleOrderNo='#38144#21806#35746#21333#21495
      'SaleOrderId='#38144#21806#35746#21333#20869#30721
      'ProOrderNo='#29983#20135#35746#21333#21495
      'ProOrderId='#29983#20135#35746#21333#20869#30721
      'TakeNum='#39046#26009#25968#37327
      'SendNum='#21457#36135#25968#37327
      'Remark='#22791#27880
      'SendMode='#21457#26009#26041#24335)
    DataSet = tbProDispatchyMat
    BCDToCurrency = False
    Left = 80
    Top = 432
  end
  object qyWareNum: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'select sInFo=ItemId+ISNULL(ProType,'#39#39')+ISNULL(Color,'#39#39'),WareNum ' +
        'from WareStorageTB')
    Left = 160
    Top = 280
  end
end
