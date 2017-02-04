inherited UserRightFM: TUserRightFM
  Caption = #26435#38480#35774#32622
  ClientHeight = 535
  ClientWidth = 1061
  ExplicitWidth = 1061
  ExplicitHeight = 535
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    Width = 1061
    TabOrder = 3
    ExplicitWidth = 1061
    inherited cxLabTitle: TcxLabel
      Caption = #26435#38480#35774#32622
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlcxGrd: TPanel
    Width = 1061
    Height = 459
    ExplicitWidth = 1061
    ExplicitHeight = 459
    inherited cxgrd: TcxGrid
      Left = 247
      Width = 814
      Height = 459
      ExplicitLeft = 247
      ExplicitWidth = 814
      ExplicitHeight = 459
      inherited cxgrdtbv: TcxGridDBTableView
        DataController.DataSource = nil
        DataController.Summary.FooterSummaryItems = <
          item
            Format = #35760#24405#25968#65306'0'
            Kind = skCount
            FieldName = 'AutoId'
            Column = cxgrdtbvTableDesc
          end>
        OptionsCustomize.ColumnSorting = False
        OptionsCustomize.ColumnsQuickCustomization = False
        OptionsView.GroupByBox = True
        object cxgrdtbvTableDesc: TcxGridDBColumn
          Caption = #34920#21333#21517#31216
          DataBinding.FieldName = 'TableDesc'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 105
        end
        object cxgrdtbvpTag: TcxGridDBColumn
          Caption = #19978#32423#33756#21333
          DataBinding.FieldName = 'pTag'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Visible = False
          GroupIndex = 0
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 83
        end
        object cxgrdtbvbShow: TcxGridDBColumn
          Caption = #26174#31034
          DataBinding.FieldName = 'bShow'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 60
        end
        object cxgrdtbvbAdd: TcxGridDBColumn
          Caption = #28155#21152
          DataBinding.FieldName = 'bAdd'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 60
        end
        object cxgrdtbvbRight: TcxGridDBColumn
          Caption = #26435#38480#32454#20998
          DataBinding.FieldName = 'bRight'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 60
        end
        object cxgrdtbvbEditPart: TcxGridDBColumn
          Caption = #37096#20998#20462#25913
          DataBinding.FieldName = 'bEditPart'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 60
        end
        object cxgrdtbvbEditAll: TcxGridDBColumn
          Caption = #20840#37096#20462#25913
          DataBinding.FieldName = 'bEditAll'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 60
        end
        object cxgrdtbvbDelPart: TcxGridDBColumn
          Caption = #37096#20998#21024#38500
          DataBinding.FieldName = 'bDelPart'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 60
        end
        object cxgrdtbvbDelAll: TcxGridDBColumn
          Caption = #20840#37096#21024#38500
          DataBinding.FieldName = 'bDelAll'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 60
        end
        object cxgrdtbvbFindPart: TcxGridDBColumn
          Caption = #37096#20998#26597#30475
          DataBinding.FieldName = 'bFindPart'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 60
        end
        object cxgrdtbvbFindAll: TcxGridDBColumn
          Caption = #20840#37096#26597#30475
          DataBinding.FieldName = 'bFindAll'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 60
        end
        object cxgrdtbvbShowPrice: TcxGridDBColumn
          Caption = #26174#31034#21333#20215
          DataBinding.FieldName = 'bShowPrice'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 60
        end
        object cxgrdtbvbEditPrice: TcxGridDBColumn
          Caption = #20462#25913#21333#20215
          DataBinding.FieldName = 'bEditPrice'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 60
        end
        object cxgrdtbvbPrint: TcxGridDBColumn
          Caption = #25171#21360
          DataBinding.FieldName = 'bPrint'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 60
        end
        object cxgrdtbvbExpand: TcxGridDBColumn
          Caption = #23548#20986
          DataBinding.FieldName = 'bExpand'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 60
        end
        object cxgrdtbvbInvoice: TcxGridDBColumn
          Caption = #35760#36134
          DataBinding.FieldName = 'bInvoice'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 60
        end
        object cxgrdtbvbOther1: TcxGridDBColumn
          Caption = #20854#20182'1'
          DataBinding.FieldName = 'bOther1'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 60
        end
        object cxgrdtbvbOther2: TcxGridDBColumn
          Caption = #20854#20182'2'
          DataBinding.FieldName = 'bOther2'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 60
        end
        object cxgrdtbvbOther3: TcxGridDBColumn
          Caption = #20854#20182'3'
          DataBinding.FieldName = 'bOther3'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 60
        end
      end
    end
    object cxgrd1: TcxGrid
      Left = 0
      Top = 0
      Width = 241
      Height = 459
      Align = alLeft
      PopupMenu = pmCopy
      TabOrder = 1
      object cxgrdtbv1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsUser
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsView.NoDataToDisplayInfoText = #24658#21019#36719#20214
        OptionsView.Footer = True
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 35
        object cxgrdtbv1UserID: TcxGridDBColumn
          Caption = #29992#25143#36134#21495
          DataBinding.FieldName = 'UserID'
          Width = 64
        end
        object cxgrdtbv1UserName: TcxGridDBColumn
          Caption = #29992#25143#22995#21517
          DataBinding.FieldName = 'UserName'
          Width = 93
        end
        object cxgrdtbv1DeptName: TcxGridDBColumn
          Caption = #37096#38376
          DataBinding.FieldName = 'DeptName'
          Visible = False
          GroupIndex = 0
          Width = 70
        end
      end
      object cxgrdlev1: TcxGridLevel
        GridView = cxgrdtbv1
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 241
      Top = 0
      Width = 6
      Height = 459
      HotZoneClassName = 'TcxXPTaskBarStyle'
      HotZone.SizePercent = 47
      Control = cxgrd1
    end
    object cxEdtUserId: TcxDBTextEdit
      Left = 64
      Top = 288
      DataBinding.DataField = 'UserID'
      DataBinding.DataSource = dsUser
      Properties.OnChange = cxEdtUserIdPropertiesChange
      TabOrder = 3
      Visible = False
      Width = 121
    end
    object cxPgc: TcxPageControl
      Left = 247
      Top = 0
      Width = 814
      Height = 459
      Align = alClient
      TabOrder = 4
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 453
      ClientRectLeft = 2
      ClientRectRight = 808
      ClientRectTop = 27
      object cxTabSheet1: TcxTabSheet
        Caption = #21333#25454#26435#38480
        ImageIndex = 0
        object cxListRight: TcxDBTreeList
          Left = 0
          Top = 0
          Width = 806
          Height = 426
          Align = alClient
          Bands = <
            item
              Caption.AlignHorz = taCenter
              Caption.Text = #34920#21333#20449#24687
              FixedKind = tlbfLeft
            end
            item
              Caption.AlignHorz = taCenter
              Caption.Text = #26435#38480#20449#24687
            end>
          DataController.DataSource = dsHed
          DataController.ParentField = 'pTag'
          DataController.KeyField = 'Tag'
          Navigator.Buttons.CustomButtons = <>
          OptionsBehavior.Sorting = False
          OptionsData.Editing = False
          OptionsView.Bands = True
          OptionsView.GridLines = tlglHorz
          OptionsView.IndicatorWidth = 20
          RootValue = -1
          TabOrder = 0
          OnEditValueChanged = cxListRightEditValueChanged
          object cxdbtrlstclmnDBTreeList1Tag: TcxDBTreeListColumn
            Caption.AlignHorz = taCenter
            Caption.Text = #26631#35782
            DataBinding.FieldName = 'Tag'
            Options.Editing = False
            Options.Sorting = False
            Width = 126
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1TableDesc: TcxDBTreeListColumn
            Caption.Text = #34920#21333#21517#31216
            DataBinding.FieldName = 'TableDesc'
            Options.Editing = False
            Options.Sorting = False
            Width = 100
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1bShow: TcxDBTreeListColumn
            Caption.AlignHorz = taCenter
            Caption.Text = #26174#31034
            DataBinding.FieldName = 'bShow'
            Width = 59
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 1
            StatusHint = 'bShow'
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnCheck: TcxDBTreeListColumn
            Caption.AlignHorz = taCenter
            Caption.Text = #23457#26680
            DataBinding.FieldName = 'bCheck'
            Options.Sorting = False
            Width = 59
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 1
            StatusHint = 'bCheck'
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnUnCheck: TcxDBTreeListColumn
            Caption.AlignHorz = taCenter
            Caption.Text = #21453#23457#26680
            DataBinding.FieldName = 'bUnCheck'
            Options.Sorting = False
            Width = 59
            Position.ColIndex = 2
            Position.RowIndex = 0
            Position.BandIndex = 1
            StatusHint = 'bUnCheck'
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnSumRightLevel: TcxDBTreeListColumn
            PropertiesClassName = 'TcxCheckComboBoxProperties'
            Properties.Items = <
              item
                Description = '1'
              end
              item
                Description = '2'
              end
              item
                Description = '3'
              end>
            Caption.AlignHorz = taCenter
            Caption.Text = #26435#38480#32423#25968
            DataBinding.FieldName = 'SumRightLevel'
            Options.Sorting = False
            Width = 72
            Position.ColIndex = 3
            Position.RowIndex = 0
            Position.BandIndex = 1
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1bRight: TcxDBTreeListColumn
            Caption.AlignHorz = taCenter
            Caption.Text = #26435#38480#32454#20998
            DataBinding.FieldName = 'bRight'
            Options.Editing = False
            Options.Sorting = False
            Width = 60
            Position.ColIndex = 4
            Position.RowIndex = 0
            Position.BandIndex = 1
            StatusHint = 'bRight'
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1bAdd: TcxDBTreeListColumn
            Caption.AlignHorz = taCenter
            Caption.Text = #28155#21152
            DataBinding.FieldName = 'bAdd'
            Width = 60
            Position.ColIndex = 5
            Position.RowIndex = 0
            Position.BandIndex = 1
            StatusHint = 'bAdd'
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1bEditPart: TcxDBTreeListColumn
            Visible = False
            Caption.AlignHorz = taCenter
            Caption.Text = #37096#20998#20462#25913
            DataBinding.FieldName = 'bEditPart'
            Width = 59
            Position.ColIndex = 6
            Position.RowIndex = 0
            Position.BandIndex = 1
            StatusHint = 'bEditPart'
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1bEditAll: TcxDBTreeListColumn
            Caption.AlignHorz = taCenter
            Caption.Text = #20840#37096#20462#25913
            DataBinding.FieldName = 'bEditAll'
            Width = 60
            Position.ColIndex = 7
            Position.RowIndex = 0
            Position.BandIndex = 1
            StatusHint = 'bEditAll'
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1bDelPart: TcxDBTreeListColumn
            Visible = False
            Caption.AlignHorz = taCenter
            Caption.Text = #37096#20998#21024#38500
            DataBinding.FieldName = 'bDelPart'
            Width = 60
            Position.ColIndex = 8
            Position.RowIndex = 0
            Position.BandIndex = 1
            StatusHint = 'bDelPart'
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1bDelAll: TcxDBTreeListColumn
            Caption.AlignHorz = taCenter
            Caption.Text = #20840#37096#21024#38500
            DataBinding.FieldName = 'bDelAll'
            Width = 60
            Position.ColIndex = 9
            Position.RowIndex = 0
            Position.BandIndex = 1
            StatusHint = 'bDellAll'
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1bFindPart: TcxDBTreeListColumn
            Visible = False
            Caption.AlignHorz = taCenter
            Caption.Text = #37096#20998#26597#35810
            DataBinding.FieldName = 'bFindPart'
            Width = 59
            Position.ColIndex = 10
            Position.RowIndex = 0
            Position.BandIndex = 1
            StatusHint = 'bFindPart'
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1bFindAll: TcxDBTreeListColumn
            Caption.AlignHorz = taCenter
            Caption.Text = #20840#37096#26597#35810
            DataBinding.FieldName = 'bFindAll'
            Width = 60
            Position.ColIndex = 11
            Position.RowIndex = 0
            Position.BandIndex = 1
            StatusHint = 'bFindAll'
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1bShowPrice: TcxDBTreeListColumn
            Caption.AlignHorz = taCenter
            Caption.Text = #26174#31034#21333#20215
            DataBinding.FieldName = 'bShowPrice'
            Width = 60
            Position.ColIndex = 12
            Position.RowIndex = 0
            Position.BandIndex = 1
            StatusHint = 'bShowPrice'
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1bEditPrice: TcxDBTreeListColumn
            Caption.AlignHorz = taCenter
            Caption.Text = #20462#25913#21333#20215
            DataBinding.FieldName = 'bEditPrice'
            Width = 60
            Position.ColIndex = 13
            Position.RowIndex = 0
            Position.BandIndex = 1
            StatusHint = 'bEditPrice'
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1bPrint: TcxDBTreeListColumn
            Caption.AlignHorz = taCenter
            Caption.Text = #25171#21360
            DataBinding.FieldName = 'bPrint'
            Width = 59
            Position.ColIndex = 14
            Position.RowIndex = 0
            Position.BandIndex = 1
            StatusHint = 'bPrint'
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1bExpand: TcxDBTreeListColumn
            Caption.AlignHorz = taCenter
            Caption.Text = #23548#20986
            DataBinding.FieldName = 'bExpand'
            Width = 60
            Position.ColIndex = 15
            Position.RowIndex = 0
            Position.BandIndex = 1
            StatusHint = 'bExpand'
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1bInvoice: TcxDBTreeListColumn
            Caption.AlignHorz = taCenter
            Caption.Text = #35760#36134
            DataBinding.FieldName = 'bInvoice'
            Width = 60
            Position.ColIndex = 16
            Position.RowIndex = 0
            Position.BandIndex = 1
            StatusHint = 'bInvoice'
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1bOther1: TcxDBTreeListColumn
            Caption.AlignHorz = taCenter
            Caption.Text = #20854#20182'1'
            DataBinding.FieldName = 'bOther1'
            Width = 60
            Position.ColIndex = 17
            Position.RowIndex = 0
            Position.BandIndex = 1
            StatusHint = 'bOther1'
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1bOther2: TcxDBTreeListColumn
            Caption.AlignHorz = taCenter
            Caption.Text = #20854#20182'2'
            DataBinding.FieldName = 'bOther2'
            Width = 59
            Position.ColIndex = 18
            Position.RowIndex = 0
            Position.BandIndex = 1
            StatusHint = 'bOther2'
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbtrlstclmnDBTreeList1bOther3: TcxDBTreeListColumn
            Caption.AlignHorz = taCenter
            Caption.Text = #20854#20182'3'
            DataBinding.FieldName = 'bOther3'
            Width = 60
            Position.ColIndex = 19
            Position.RowIndex = 0
            Position.BandIndex = 1
            StatusHint = 'bOther3'
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = #20135#21697#26435#38480
        ImageIndex = 1
        object cxtrbItemKind: TcxDBTreeList
          Left = 0
          Top = 0
          Width = 806
          Height = 426
          Align = alClient
          Bands = <
            item
            end>
          DataController.DataSource = dsItemKindRight
          DataController.ParentField = 'ParentId'
          DataController.KeyField = 'ItemKindId'
          Navigator.Buttons.CustomButtons = <>
          OptionsView.GridLines = tlglHorz
          RootValue = -1
          TabOrder = 0
          object cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn
            Caption.AlignHorz = taCenter
            Caption.Text = #20135#21697#31867#21035#32534#21495
            DataBinding.FieldName = 'ItemKindId'
            Options.Editing = False
            Width = 155
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList1ItemKindName: TcxDBTreeListColumn
            Caption.AlignHorz = taCenter
            Caption.Text = #20135#21697#31867#21035#21517#31216
            DataBinding.FieldName = 'ItemKindName'
            Options.Editing = False
            Width = 179
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList1bAdd: TcxDBTreeListColumn
            Caption.AlignHorz = taCenter
            Caption.Text = #28155#21152
            DataBinding.FieldName = 'bAdd'
            Width = 95
            Position.ColIndex = 2
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList1bEdit: TcxDBTreeListColumn
            Caption.AlignHorz = taCenter
            Caption.Text = #20462#25913
            DataBinding.FieldName = 'bEdit'
            Width = 100
            Position.ColIndex = 3
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList1bDel: TcxDBTreeListColumn
            Caption.AlignHorz = taCenter
            Caption.Text = #21024#38500
            DataBinding.FieldName = 'bDel'
            Width = 100
            Position.ColIndex = 4
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
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
          ItemName = 'btExport'
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
          ItemName = 'btTemp'
        end
        item
          Visible = True
          ItemName = 'btExit'
        end>
    end
    inherited btAdd: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btDel: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btAddL: TdxBarLargeButton
      Caption = #33719#21462#26435#38480
      Hint = #33719#21462#25152#36873#21333#25454#30340#25972#34892#26435#38480
      LargeGlyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000005C5C
        5C6CCFCFD0F5CFCFD0F5CFCFD0F5CFCFD0F5CFCFD0F5CFCFD0F5CFCFD0F5CFCF
        D0F5CFCFD0F5CFCFD0F5C7C7C8F5BEBFC0F5C6C7C7F5C9C9CBF7C7C8C9F7BDBE
        BFF5B9BABBF55F5F5F6C00000000000000000000000000000000000000005F5F
        6070D6D6D7FFD4D4D5FFD3D3D5FFD4D4D5FFD3D3D4FFD3D3D4FFD4D4D5FFD7D7
        D7FFD6D6D7FFCACACBFFD9D9DAFFB0BDACFF6F9B73FF579564FF649F73FF96BC
        9FFFDEE4E0FF999A9BD112121222000000000000000000000000000000005F5F
        6070D7D7D8FFCBCCCDFFC2C2C4FFCBCBCCFFC8C8C9FFC9C9CAFFCBCBCDFFD7D7
        D8FFCECECFFFD7D8D7FF5A8257FF298340FF2F8847FF418E54FF3B8B4FFF2988
        46FF398E51FFBBD4C2FFABABABDF0B0B0B140000000000000000000000005F5F
        6070D6D6D7FFC9C9CAFFC2C2C3FFC2C2C4FFC1C2C3FFC6C6C8FFC4C4C5FFC7C7
        C8FFDADADBFF547B50FF298E4BFF2A9351FF528957FFDEDDDEFFB0C3B3FF2993
        51FF2A904EFF308E4EFFCADED1FF717172A50000000000000000000000005F5F
        6070D6D6D7FFC8C9CAFFC4C4C5FFC9C9CAFFC5C5C7FFC7C7C8FFCACACBFFCDCD
        CEFF9DA797FF298745FF299958FF299D5CFF55905EFFE7E7E7FFB7CCBCFF299D
        5CFF299A58FF299553FF57A472FFD3D3D4F91111111E00000000000000005F5F
        6070D7D7D8FFCDCDCEFFBFBFC1FFCACACBFFCACBCCFFC8C8C9FFC1C1C3FFE0E1
        E1FF567B54FF309858FF57AC79FF58B07DFF7CA983FFF2F2F2FFC9D9CDFF55AD
        7AFF53A876FF439D65FF299755FFD9E4DEFF3838395E00000000000000005F5F
        6070D6D6D7FFC7C7C8FFC5C5C7FFC3C3C4FFC6C6C7FFC6C6C8FFC8C8CAFFE1E1
        E2FF3E7746FF458C52FFF9F9F9FFFCFCFCFFFCFCFCFFFBFBFBFFF6F6F6FFEEEE
        EEFFE5E5E5FF9DBEA7FF299F5DFFBFD9CAFF4F50507800000000000000005F5F
        6070D6D6D7FFCECECFFFC0C0C2FFC6C7C8FFC3C3C4FFC5C5C7FFC7C7C8FFE3E4
        E4FF42784AFF3F8B4FFFC9D3C1FFC9D3C1FFD5DCD0FFFDFDFDFFEFF2EDFFC3CD
        BCFFBBC5B4FF83AF8DFF29A564FFC3DACEFF4B4B4C7000000000000000005F5F
        6070D7D7D8FFCACBCCFFC5C5C7FFCBCBCCFFC8C8C9FFC3C3C4FFCECED0FFE4E4
        E5FF658163FF29AC6BFF28AD6CFF27B06FFF579A69FFFDFDFDFFC7E1D0FF26AF
        6FFF28AE6DFF29AF6EFF32AD6FFFDCDFDEFF2A2A2B4400000000000000005F5F
        6070D6D6D7FFCECECFFFCCCCCDFFC7C7C8FFD0D1D2FFCDCDCEFFD4D4D5FFD4D4
        D5FFBABDB9FF2C8C50FF28B676FF27B879FF589E6DFFFDFDFDFFC7E2D1FF27B8
        79FF28B676FF29B372FF78BD9CFFBCBCBDE10606060800000000000000005F5F
        6070D6D6D7FFCFCFD0FFC9CACBFFCCCCCDFFD0D0D1FFD3D3D4FFC6C6C8FFD4D4
        D5FFE7E7E8FF7E8F7DFF29A061FF27BA7BFF47955FFFB5C8B1FF92C09EFF26BA
        7AFF28B777FF4DB485FFD9DDDCFF4141425A0000000000000000000000005F5F
        6070D7D7D8FFD1D1D3FFC9C9CBFFCDCDCEFFD1D1D2FFD6D6D7FFD8D8D9FFDCDC
        DDFFDBDBDCFFEBEBECFF929F91FF378E5BFF26B575FF25BD7EFF26BC7DFF2CB8
        7CFF69B493FFD6DBDAFF6E6E6F8B000000000000000000000000000000005F5F
        6070D8D8D9FFCDCECFFFCDCDCFFFC9C9CBFFD4D4D5FFD1D1D2FFD8D8D9FFD6D6
        D7FFD8D8D9FFDADADBFFEBEBECFFDDDDDEFFB1B8B1FF97B7A7FFA4C3B7FFCDD0
        D0FFE3E3E4FF7878798D00000000000000000000000000000000000000006060
        6170DADADBFFD1D1D2FFCACACBFFCBCBCCFFD1D1D2FFD3D3D4FFD1D1D2FFD3D3
        D4FFD8D8D9FFDBDBDCFFD8D8D9FFE1E1E2FFE5E5E5FFE9E9EAFFE9E9EAFFEBEB
        EBFFF6F6F6FF6B6B6B6E00000000000000000000000000000000000000006161
        6170DCDCDCFFCDCECFFFCBCBCCFFCBCBCCFFD5D5D6FFD3D3D4FFCFCFD0FFDBDC
        DCFFCFCFD0FFD9D9DAFFD5D5D6FFDDDDDEFFDEDEDFFFF4F4F4FFF5F5F5FFF7F7
        F7FFF9F9F9FF6D6D6D7000000000000000000000000000000000000000006262
        6270DDDDDEFFCFCFD0FFCECECFFFCCCCCDFFD3D3D4FFD4D4D5FFD4D4D5FFD7D7
        D8FFD7D8D8FFD6D6D7FFD8D8D9FFD6D6D7FFE5E5E6FFD9D9DAFFDEDEDFFFE9E9
        E9FFFBFBFBFF6B6B6B7000000000000000000000000000000000000000006262
        6270DFDFDFFFD6D6D7FFD1D1D2FFD3D3D4FFD3D3D4FFD4D4D5FFDCDCDCFFD7D8
        D9FFD9D9DAFFE0E0E1FFDADBDCFFD9D9DAFFDEDEDFFFE0E0E0FFE7E7E7FFEEEE
        EEFFFCFCFCFF6060617000000000000000000000000000000000000000006363
        6370E0E0E1FFDADADBFFD0D0D1FFD9D9DAFFCFCFD0FFD5D5D6FFD7D7D8FFD6D6
        D7FFD8D9D9FFD8D8D9FFE0E0E1FFDEDEDEFFE9E9EAFFDDDDDEFFECECECFFFCFC
        FCFFF3F3F3FF5656577000000000000000000000000000000000000000006363
        6470E2E2E3FFD7D8D9FFCCCCCDFFD3D4D5FFD5D5D6FFDBDBDCFFD9D9DAFFD4D5
        D5FFDADADBFFDBDBDCFFDBDBDCFFE9E9EAFFF8F8F8FFFAFAFAFFFAFAFAFFEDED
        EDFFCDCDCEFF5F5F5F7000000000000000000000000000000000000000006464
        6470E4E4E4FFDDDDDEFFD4D4D5FFD8D8D9FFD7D7D8FFDCDCDDFFD7D7D8FFE0E0
        E1FFE3E3E3FFDEDEDFFFF4F4F5FFF7F7F7FFF1F1F2FFE5E5E5FFD3D3D4FFC5C5
        C6FFD8D8D9FF6767677000000000000000000000000000000000000000006565
        6570E5E5E6FFE6E6E6FFE8E8E9FFEBEBEBFFECECECFFEEEEEEFFE9E9EAFFEFEF
        EFFFF3F3F3FFF3F3F3FFF7F7F8FFF6F6F6FFE6E6E7FFD8D8D9FFC8C8C9FFD4D4
        D5FFEBEBEBFF6C6C6C7000000000000000000000000000000000000000006565
        6670E7E7E7FFCACACBFFC4C4C5FFC4C4C5FFDCDCDDFFBFBFC1FFCECECFFFF0F0
        F0FFF5F5F6FFF7F7F7FFF9F9F9FFF8F8F8FFDFDFDFFFCDCDCEFFD0D0D1FFE8E8
        E9FFF7F7F7FF6E6E6E7000000000000000000000000000000000000000006666
        6670E8E8E9FFE4E4E5FFE9E9EAFFEEEEEEFFF0F0F0FFF2F2F2FFF3F3F4FFF5F5
        F5FFF7F7F7FFF9F9F9FFFBFBFBFFFCFCFCFFD6D6D6FFCDCDCEFFE4E4E5FFF5F5
        F5FFFBFBFBFF6F6F6F7000000000000000000000000000000000000000006565
        656EE6E6E6FBE8E8E8FBEAEAEAFBEBEBECFBEDEDEEFBEFEFEFFBF1F1F1FBF3F3
        F3FBF5F5F5FBF6F6F6FBF8F8F8FBF5F5F5FBCACACBFBDDDDDEFBEFEFEFFBF7F7
        F7FBF8F8F8FB6F6F6F7000000000000000000000000000000000}
      OnClick = btAddLClick
    end
    inherited btDelL: TdxBarLargeButton
      Caption = #21462#28040#26435#38480
      Hint = #21462#28040#25152#36873#21333#25454#30340#25972#34892#26435#38480
      LargeGlyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000005C5C
        5C6CCFCFD0F5CFCFD0F5CFCFD0F5CFCFD0F5CFCFD0F5CFCFD0F5CFCFD0F5CFCF
        D0F5CFCFD0F5CFCFD0F5C7C7C8F5BEBFC0F5C6C7C7F5C9CACAF7C7C8C9F7BDBE
        BFF5B9BABBF55F5F5F6C00000000000000000000000000000000000000005F5F
        6070D6D6D7FFD4D4D5FFD3D3D5FFD4D4D5FFD3D3D4FFD3D3D4FFD4D4D5FFD7D7
        D7FFD6D6D7FFCACACBFFD9D9DAFFADAEC0FF676AA3FF4C509FFF5A5EA9FF8F92
        C3FFDDDEE5FF999A9BD112121222000000000000000000000000000000005F5F
        6070D7D7D8FFCBCCCDFFC2C2C4FFCBCBCCFFC8C8C9FFC9C9CAFFCBCBCDFFD7D7
        D8FFCECECFFFD7D7D9FF51538BFF1B2191FF1B2299FF1B229AFF1B2299FF1B22
        97FF2C329BFFB7B9D8FFABABABDF0B0B0B140000000000000000000000005F5F
        6070D6D6D7FFC9C9CAFFC2C2C3FFC2C2C4FFC1C2C3FFC6C6C8FFC4C4C5FFC7C7
        C8FFDADADBFF4B4D84FF1B229CFF1C23A0FF1C23A1FF1C23A2FF1C23A1FF1C23
        A0FF1B229EFF21289CFFC7C9E1FF717172A50000000000000000000000005F5F
        6070D6D6D7FFC8C9CAFFC4C4C5FFC9C9CAFFC5C5C7FFC7C7C8FFCACACBFFCDCD
        CEFF999AABFF1B2193FF1B22A4FF1B22A7FF1B22A8FF1B22A9FF1B22A9FF1B22
        A7FF1B22A4FF1B22A1FF4C52AFFFD3D4D4F91111111E00000000000000005F5F
        6070D7D7D8FFCDCDCEFFBFBFC1FFCACACBFFCACBCCFFC8C8C9FFC1C1C3FFE0E1
        E1FF4E5083FF2329A3FF4E53B5FF4E53B7FF4E53B9FF4D52B8FF4A4FB4FF474C
        B0FF4449ABFF343AA3FF1B22A2FFD8D9E5FF3838395E00000000000000005F5F
        6070D6D6D7FFC7C7C8FFC5C5C7FFC3C3C4FFC6C6C7FFC6C6C8FFC8C8CAFFE1E1
        E1FF343780FF3C409CFFFEFEFEFFFEFEFEFFFDFDFDFFF7F7F7FFEAEAEAFFDDDD
        DDFFCFCFCFFF898BB2FF1B22A8FFBCBEDCFF4F50507800000000000000005F5F
        6070D6D6D7FFCECECFFFC0C0C2FFC6C7C8FFC3C3C4FFC5C5C7FFC7C7C8FFE3E4
        E4FF383B7FFF333899FFC6C6D5FFC6C6D5FFC5C6D4FFC2C2D1FFB9B9C7FFAFAF
        BDFFA4A4B3FF6F71A4FF1B22ACFFC1C2DCFF4B4B4C7000000000000000005F5F
        6070D7D7D8FFCACBCCFFC5C5C7FFCBCBCCFFC8C8C9FFC3C3C4FFCECED0FFE4E4
        E5FF5F6187FF1B22B0FF1A21B3FF1A22B7FF1A22BBFF1A22BDFF1A22BBFF1A22
        B8FF1A22B3FF1B22B2FF242BB1FFDCDCDFFF2A2A2B4400000000000000005F5F
        6070D6D6D7FFCECECFFFCCCCCDFFC7C7C8FFD0D1D2FFCDCDCEFFD4D4D5FFD4D4
        D5FFB9B9BFFF202594FF1C24C0FF1C24C6FF1C24CBFF1C24CEFF1C24CCFF1C24
        C7FF1C24C0FF1B23BAFF7174BFFFBCBCBDE10606060800000000000000005F5F
        6070D6D6D7FFCFCFD0FFC9CACBFFCCCCCDFFD0D0D1FFD3D3D4FFC6C6C8FFD4D4
        D5FFE7E7E8FF7B7C94FF1D23ABFF1B24C9FF1B24D0FF1B24D5FF1B24D0FF1B24
        CAFF1B23C2FF4349BAFFD8D9DEFF4141425A0000000000000000000000005F5F
        6070D7D7D8FFD1D1D3FFC9C9CBFFCDCDCEFFD1D1D2FFD6D6D7FFD8D8D9FFDCDC
        DDFFDBDBDCFFEBEBEBFF8F90A3FF2D329AFF1B22C8FF1C24D4FF1B23D0FF2229
        C7FF6367BAFFD6D7DCFF6E6E6F8B000000000000000000000000000000005F5F
        6070D8D8D9FFCDCECFFFCDCDCFFFC9C9CBFFD4D4D5FFD1D1D2FFD8D8D9FFD6D6
        D7FFD8D8D9FFDADADBFFEBEBECFFDDDEDEFFAFB0BBFF9496BCFFA2A4C7FFCDCD
        D2FFE3E3E4FF7878798D00000000000000000000000000000000000000006060
        6170DADADBFFD1D1D2FFCACACBFFCBCBCCFFD1D1D2FFD3D3D4FFD1D1D2FFD3D3
        D4FFD8D8D9FFDBDBDCFFD8D8D9FFE1E1E2FFE5E5E5FFE9E9EAFFE9E9EAFFEBEB
        EBFFF6F6F6FF6B6B6B6E00000000000000000000000000000000000000006161
        6170DCDCDCFFCDCECFFFCBCBCCFFCBCBCCFFD5D5D6FFD3D3D4FFCFCFD0FFDBDC
        DCFFCFCFD0FFD9D9DAFFD5D5D6FFDDDDDEFFDEDEDFFFF4F4F4FFF5F5F5FFF7F7
        F7FFF9F9F9FF6D6D6D7000000000000000000000000000000000000000006262
        6270DDDDDEFFCFCFD0FFCECECFFFCCCCCDFFD3D3D4FFD4D4D5FFD4D4D5FFD7D7
        D8FFD7D8D8FFD6D6D7FFD8D8D9FFD6D6D7FFE5E5E6FFD9D9DAFFDEDEDFFFE9E9
        E9FFFBFBFBFF6B6B6B7000000000000000000000000000000000000000006262
        6270DFDFDFFFD6D6D7FFD1D1D2FFD3D3D4FFD3D3D4FFD4D4D5FFDCDCDCFFD7D8
        D9FFD9D9DAFFE0E0E1FFDADBDCFFD9D9DAFFDEDEDFFFE0E0E0FFE7E7E7FFEEEE
        EEFFFCFCFCFF6060617000000000000000000000000000000000000000006363
        6370E0E0E1FFDADADBFFD0D0D1FFD9D9DAFFCFCFD0FFD5D5D6FFD7D7D8FFD6D6
        D7FFD8D9D9FFD8D8D9FFE0E0E1FFDEDEDEFFE9E9EAFFDDDDDEFFECECECFFFCFC
        FCFFF3F3F3FF5656577000000000000000000000000000000000000000006363
        6470E2E2E3FFD7D8D9FFCCCCCDFFD3D4D5FFD5D5D6FFDBDBDCFFD9D9DAFFD4D5
        D5FFDADADBFFDBDBDCFFDBDBDCFFE9E9EAFFF8F8F8FFFAFAFAFFFAFAFAFFEDED
        EDFFCDCDCEFF5F5F5F7000000000000000000000000000000000000000006464
        6470E4E4E4FFDDDDDEFFD4D4D5FFD8D8D9FFD7D7D8FFDCDCDDFFD7D7D8FFE0E0
        E1FFE3E3E3FFDEDEDFFFF4F4F5FFF7F7F7FFF1F1F2FFE5E5E5FFD3D3D4FFC5C5
        C6FFD8D8D9FF6767677000000000000000000000000000000000000000006565
        6570E5E5E6FFE6E6E6FFE8E8E9FFEBEBEBFFECECECFFEEEEEEFFE9E9EAFFEFEF
        EFFFF3F3F3FFF3F3F3FFF7F7F8FFF6F6F6FFE6E6E7FFD8D8D9FFC8C8C9FFD4D4
        D5FFEBEBEBFF6C6C6C7000000000000000000000000000000000000000006565
        6670E7E7E7FFCACACBFFC4C4C5FFC4C4C5FFDCDCDDFFBFBFC1FFCECECFFFF0F0
        F0FFF5F5F6FFF7F7F7FFF9F9F9FFF8F8F8FFDFDFDFFFCDCDCEFFD0D0D1FFE8E8
        E9FFF7F7F7FF6E6E6E7000000000000000000000000000000000000000006666
        6670E8E8E9FFE4E4E5FFE9E9EAFFEEEEEEFFF0F0F0FFF2F2F2FFF3F3F4FFF5F5
        F5FFF7F7F7FFF9F9F9FFFBFBFBFFFCFCFCFFD6D6D6FFCDCDCEFFE4E4E5FFF5F5
        F5FFFBFBFBFF6F6F6F7000000000000000000000000000000000000000006565
        656EE6E6E6FBE8E8E8FBEAEAEAFBEBEBECFBEDEDEEFBEFEFEFFBF1F1F1FBF3F3
        F3FBF5F5F5FBF6F6F6FBF8F8F8FBF5F5F5FBCACACBFBDDDDDEFBEFEFEFFBF7F7
        F7FBF8F8F8FB6F6F6F7000000000000000000000000000000000}
      OnClick = btDelLClick
    end
    inherited btFind: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btRefer: TdxBarLargeButton
      Caption = #26356#26032#21015#34920
      Hint = #26356#26032#31995#32479#34920#21333#21644#20135#21697#31867#21035
      Visible = ivAlways
      OnClick = btReferClick
    end
    inherited btTemp: TdxBarLargeButton
      Caption = #25910' '#32553
      Hint = #23558#32593#26684#20013#30340#26641#36827#34892#23637#24320#25110#25910#32553
      Visible = ivAlways
      LargeGlyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000020000
        0004000000060000000600000006000000060000000600000006000000060000
        0006000000060000000600000006000000060000000600000006000000060000
        00060000000600000006000000060000000600000004000000020000000E0000
        00240000002C0000002C0000002C0000002C0000002C0000002C0000002C0000
        002C0000002C0000002C0000002C0000002C0000002C0000002C0000002C0000
        002C0000002C0000002C0000002C0000002C000000220000000C1B1304387A55
        0CBD875C07CF875C05D1875C05D1875C05D1875C05D1875C05D1885D07D1895F
        0BD1895F0BD1885D07D1875C05D1875C05D1875C05D1875C05D1875C05D1875C
        05D1875C05D1875C05D1875C05D1875D07CF74520BB7171103342D1F0350DABE
        85FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFEAEAEBFFEBDC
        BFFFD7B97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDABE85FF2D1F03502D1E0250D9BC
        83FFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6D8FFEADA
        BFFFD6B67FFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFFFFFF
        FFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFD9BC83FF2D1E02502D1E0250D9BC
        83FFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFC1C2C3FFEADA
        BFFFD6B67FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9BC83FF2D1E02502D1E0250D9BC
        83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFEAEAEBFFEADA
        BFFFD6B67FFFFFFFFFFFC4E0CFFFE9F5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9BC83FF2D1E02502D1E0250D9BC
        82FFFEFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFD6D6D7FFEADA
        BFFFD6B67FFFFFFFFFFF098942FF69C69FFFEAF5EFFFFFFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFFFFFFD9BC82FF2D1E02502D1E0250D9BC
        83FFFDFDFEFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFDFDFDFFC2C2C3FFECDB
        BFFFD9B77FFFFFFFFFFF00944FFF0AC686FF65BE97FFFFFEFEFFFEFDFDFFFBFB
        FBFFFBFBFBFFFBFBFBFFFBFBFBFFFDFDFEFFD9BC83FF2D1E02502D1E0250D9BC
        83FFF9F9FBFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF9F8F8FFE9E9EAFFEFDC
        BFFF64872EFF029655FF00A667FF00D89DFF00C285FF64BD96FFE9F3EEFFFBF8
        FAFFF7F7F7FFF7F7F7FFF7F7F7FFF9F9FBFFD9BC83FF2D1E02502D1E0250D9BC
        82FFF7F7F8FFF4F4F3FFF4F4F3FFF4F4F3FFF4F4F3FFF6F5F5FFD2D3D4FFF0DC
        BFFF79AC60FF0BD7A6FF00D29CFF00D09AFF00D09BFF0ABC84FF67C19CFFE7EF
        EBFFF5F4F4FFF4F3F3FFF4F4F3FFF7F7F8FFD9BC82FF2D1E02502D1E0250D9BC
        83FFF4F4F5FFF0F0EFFFF0F0EFFFF0F0EFFFF0F1EFFFF2F2F1FFBFC0C1FFEFDB
        BFFF89AB66FF14D0A5FF00C998FF00CA99FF00CA99FF08CD9FFF15AA71FFC4DB
        CCFFF2F1F1FFF0F0EFFFF0F0EFFFF4F4F5FFD9BC83FF2D1E02502D1E0250D9BC
        83FFF0F1F2FFEDECECFFEDECECFFEDECECFFEDECECFFEFEDEEFFE0E0E1FFEEDB
        BFFF9BAD6EFF2BD3B4FF17CBA6FF12C8A0FF11C8A0FF39C6A1FF45B288FFD9E3
        DDFFEEEDEDFFEDECECFFEDECECFFF0F1F2FFD9BC83FF2D1E02502D1E0250D9BC
        83FFEEEEEFFFE9E9E8FFEAE9E8FFEAE9E8FFEAE9E8FFEBEBEAFFCCCCCDFFEEDC
        BFFF809548FF2BB488FF3EBE97FF5AD7C1FF2CC19FFF46B087FFCFDDD4FFF0EB
        ECFFEAE9E8FFEAE9E8FFE9E9E8FFEEEEEFFFD9BD83FF2D1E02502D1E0250D9BD
        83FFEBEBECFFE6E5E4FFE6E5E4FFE6E5E4FFE6E5E4FFE7E6E5FFBBBBBCFFEDDB
        BFFFBBA966FFBFD8CCFF1D985EFF45C8ADFF2FA87BFFD8DED8FFEDE7E8FFE7E5
        E5FFE6E5E4FFE6E5E4FFE6E5E4FFEBEBECFFD9BD83FF2D1E02502D1E0250D9BD
        83FFE8E8E8FFE3E2E0FFE3E2E0FFE3E2E0FFE3E2E0FFE4E3E1FFD7D7D7FFEADA
        BFFFD6B77FFFF9EEF3FF048946FF43AD87FFD5DBD5FFE7E3E3FFE4E2E0FFE3E2
        E0FFE3E2E0FFE3E2E0FFE3E2E0FFE8E8E8FFD9BC83FF2D1E02502D1E0250D9BC
        83FFE5E5E5FFDFDEDDFFDFDEDDFFDFDEDDFFDFDEDDFFE0DFDEFFC5C5C6FFEADA
        BFFFD6B77FFFEEE8EBFF7EB593FFC3D3CAFFE6E0E1FFDFDEDDFFDFDEDDFFDFDE
        DDFFDFDEDDFFDFDEDDFFDFDEDDFFE5E5E5FFD9BD83FF2D1E02502D1E0250DABD
        83FFE3E2E2FFDBDAD8FFDCDAD9FFDCDAD9FFDCDAD9FFDDDCDAFFB6B7B7FFEADA
        BFFFD6B77FFFE4E3E3FFE0DCDBFFDFDCDBFFDDDBD9FFDCDAD9FFDCDAD9FFDCDA
        D9FFDCDAD9FFDCDAD9FFDBDAD8FFE3E2E2FFDABD83FF2D1E02502D1E0250D9BD
        83FFE6E6E6FFDEDEDEFFDFDFDEFFDFDFDEFFDFDFDEFFDFDFDEFFDFE0DFFFEADB
        BFFFD6B77FFFE6E6E6FFDEDEDEFFDFDFDEFFDFDFDEFFDFDFDEFFDFDFDEFFDFDF
        DEFFDFDFDEFFDFDFDEFFDEDEDEFFE6E6E6FFDABD83FF2D1E02502D1F0350D8B6
        76FFF2DBB6FFF0D5A9FFF0D5A9FFEFD4A9FFF0D4A9FFF0D5A9FFF0D5A9FFE6C5
        8CFFDCB36DFFF0D5AAFFF0D4A9FFF0D5A9FFF0D5A9FFF0D4A9FFF0D5A9FFF0D5
        A9FFF0D4A9FFF0D5A9FFF0D5A9FFF2DAB5FFD8B676FF2D1F03502D200450D5AE
        65FFE1B05DFFDBA243FFDBA345FFDBA345FFDBA345FFDBA345FFDBA345FFDCA4
        47FFDCA447FFDCA345FFDBA345FFDBA344FFDBA345FFDBA345FFDBA344FFDBA3
        45FFDBA345FFDBA344FFDBA243FFE1B05DFFD5AE65FF2D2004502D20054CD3AA
        5DFFDDA952FFD89E3AFFD89E3BFFD89E3BFFD89E3BFFD89E3BFFD89E3BFFD89E
        3BFFD89E3BFFD89E3BFFD89E3BFFD89E3BFFD89E3BFFD89E3BFFD89E3BFFD89E
        3BFFD89E3BFFD89E3BFFD89E3AFFDDA952FFD3AA5DFF2D20054C271C053CB88C
        37EDD1A757FFD1A757FFD1A758FFD1A758FFD1A757FFD1A757FFD1A758FFD1A7
        57FFD1A757FFD1A758FFD1A757FFD1A757FFD1A758FFD1A757FFD1A757FFD1A7
        58FFD1A757FFD1A757FFD1A758FFD1A757FFB88C37ED271C053C0806010C271C
        05362E2106402E2006402E2006402E2006402E2006402E2006402E2006402E20
        06402E2006402E2006402E2005402E2006402E2005402E2005402E2006402E20
        05402E2005402E2006402E2005402E210640271C05360806010C}
      OnClick = btTempClick
    end
    inherited btInvoice: TdxBarLargeButton
      Caption = #36229#32423#26435#38480
      Visible = ivAlways
      OnClick = btInvoiceClick
    end
  end
  inherited dsHed: TDataSource
    Left = 264
    Top = 184
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    OnCalcFields = qyHedCalcFields
    SQL.Strings = (
      'select Top 10 * from UserRightTB order by Tag')
    Left = 264
    Top = 216
    object qyHedAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qyHedUserId: TStringField
      FieldName = 'UserId'
    end
    object qyHedTableId: TStringField
      FieldName = 'TableId'
      Size = 50
    end
    object qyHedModuleId: TStringField
      FieldName = 'ModuleId'
      Size = 50
    end
    object qyHedTag: TStringField
      FieldName = 'Tag'
      Size = 30
    end
    object qyHedpTag: TStringField
      FieldName = 'pTag'
    end
    object qyHedbShow: TBooleanField
      FieldName = 'bShow'
    end
    object qyHedbAdd: TBooleanField
      FieldName = 'bAdd'
    end
    object qyHedbEditPart: TBooleanField
      FieldName = 'bEditPart'
    end
    object qyHedbEditAll: TBooleanField
      FieldName = 'bEditAll'
    end
    object qyHedbDelPart: TBooleanField
      FieldName = 'bDelPart'
    end
    object qyHedbDelAll: TBooleanField
      FieldName = 'bDelAll'
    end
    object qyHedbFindPart: TBooleanField
      FieldName = 'bFindPart'
    end
    object qyHedbFindAll: TBooleanField
      FieldName = 'bFindAll'
    end
    object qyHedbShowPrice: TBooleanField
      FieldName = 'bShowPrice'
    end
    object qyHedbEditPrice: TBooleanField
      FieldName = 'bEditPrice'
    end
    object qyHedbPrint: TBooleanField
      FieldName = 'bPrint'
    end
    object qyHedbExpand: TBooleanField
      FieldName = 'bExpand'
    end
    object qyHedbInvoice: TBooleanField
      FieldName = 'bInvoice'
    end
    object qyHedbOther1: TBooleanField
      FieldName = 'bOther1'
    end
    object qyHedbOther2: TBooleanField
      FieldName = 'bOther2'
    end
    object qyHedbOther3: TBooleanField
      FieldName = 'bOther3'
    end
    object qyHedTableDesc: TStringField
      FieldKind = fkCalculated
      FieldName = 'TableDesc'
      Size = 50
      Calculated = True
    end
    object qyHedbRight: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'bRight'
      Calculated = True
    end
    object blnfldHedbCheck: TBooleanField
      FieldName = 'bCheck'
    end
    object blnfldHedbUnCheck: TBooleanField
      FieldName = 'bUnCheck'
    end
    object qyHedHasRightLevel: TStringField
      FieldName = 'HasRightLevel'
    end
    object qyHedSumRightLevel: TStringField
      FieldName = 'SumRightLevel'
      OnChange = qyHedSumRightLevelChange
    end
  end
  object dsUser: TDataSource
    DataSet = qyUser
    Left = 40
    Top = 168
  end
  object qyUser: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'select a.UserID,a.UserName,DeptId=IsNull(c.DeptId,'#39#39'),DeptName=I' +
        'sNull(c.DeptName,'#39#39')'
      'from SysUserTB a left join EmployeeTB b on a.EmpId=b.EmpId'
      'left join DeptTB c on b.DeptID=c.DeptId'
      'where ISNULL(iState,0)=0')
    Left = 40
    Top = 208
    object qyUserUserID: TStringField
      FieldName = 'UserID'
    end
    object qyUserUserName: TStringField
      FieldName = 'UserName'
    end
    object qyUserDeptId: TStringField
      FieldName = 'DeptId'
      ReadOnly = True
    end
    object qyUserDeptName: TStringField
      FieldName = 'DeptName'
      ReadOnly = True
      Size = 30
    end
  end
  object pmCopy: TPopupMenu
    Left = 112
    Top = 280
    object NCopy: TMenuItem
      Caption = #22797#21046#26435#38480
      OnClick = NCopyClick
    end
    object NAffix: TMenuItem
      Caption = #31896#36148#26435#38480
      OnClick = NAffixClick
    end
  end
  object qyItemKindRight: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = qyItemKindRightCalcFields
    Parameters = <>
    SQL.Strings = (
      'select Top 10 * from ItemKindRightTB order by  ItemKindId')
    Left = 312
    Top = 216
    object qyItemKindRightItemKindName: TStringField
      FieldKind = fkCalculated
      FieldName = 'ItemKindName'
      Size = 50
      Calculated = True
    end
    object qyItemKindRightAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qyItemKindRightParentId: TStringField
      FieldName = 'ParentId'
      Size = 30
    end
    object qyItemKindRightItemKindId: TStringField
      FieldName = 'ItemKindId'
      Size = 30
    end
    object qyItemKindRightUserId: TStringField
      FieldName = 'UserId'
      Size = 30
    end
    object qyItemKindRightbAdd: TBooleanField
      FieldName = 'bAdd'
    end
    object qyItemKindRightbEdit: TBooleanField
      FieldName = 'bEdit'
    end
    object qyItemKindRightbDel: TBooleanField
      FieldName = 'bDel'
    end
    object qyItemKindRightRemark: TStringField
      FieldName = 'Remark'
      Size = 50
    end
  end
  object dsItemKindRight: TDataSource
    DataSet = qyItemKindRight
    Left = 312
    Top = 184
  end
end
