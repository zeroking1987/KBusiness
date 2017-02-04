inherited MainFormSetFM: TMainFormSetFM
  Caption = #26700#38754#35774#32622
  ClientHeight = 545
  ClientWidth = 1045
  ExplicitWidth = 1045
  ExplicitHeight = 545
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    Width = 1045
    TabOrder = 3
    ExplicitWidth = 1045
    inherited cxLabTitle: TcxLabel
      Caption = #26700#38754#35774#32622
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlcxGrd: TPanel
    Width = 1045
    Height = 469
    ExplicitWidth = 1045
    ExplicitHeight = 469
    inherited cxgrd: TcxGrid
      Width = 1045
      Height = 469
      ExplicitWidth = 1045
      ExplicitHeight = 469
      inherited cxgrdtbv: TcxGridDBTableView
        DataController.DataSource = nil
        OptionsView.NoDataToDisplayInfoText = #24658#21019#36719#20214
        object cxgrdtbvUserId: TcxGridDBColumn
          Caption = #36134#21495
          DataBinding.FieldName = 'UserId'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxgrdtbvUserIdPropertiesButtonClick
          Visible = False
          Width = 71
        end
        object cxgrdtbvUserName: TcxGridDBColumn
          Caption = #22995#21517
          DataBinding.FieldName = 'UserName'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxgrdtbvUserIdPropertiesButtonClick
          Width = 92
        end
        object cxgrdtbvDeptName: TcxGridDBColumn
          Caption = #37096#38376
          DataBinding.FieldName = 'DeptName'
          Width = 129
        end
      end
    end
  end
  object cxpgcntrl: TcxPageControl [2]
    Left = 0
    Top = 76
    Width = 1045
    Height = 469
    Align = alClient
    ParentBackground = False
    TabOrder = 6
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 463
    ClientRectLeft = 2
    ClientRectRight = 1039
    ClientRectTop = 27
    object cxTabSheet2: TcxTabSheet
      Caption = ' '#39044#35686#35774#32622' '
      ImageIndex = 0
      object cxgrd1: TcxGrid
        Left = 0
        Top = 0
        Width = 736
        Height = 436
        Align = alClient
        TabOrder = 0
        object cxgrdbtblvwcxgrdtbv1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxgrdtbvCellDblClick
          DataController.DataSource = dsHed
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.PullFocusing = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Editing = False
          OptionsView.FocusRect = False
          OptionsView.NoDataToDisplayInfoText = #24658#21019#36719#20214
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 35
          OnCustomDrawIndicatorCell = cxgrdbtblvwcxgrdtbv1CustomDrawIndicatorCell
          object cxgrdbtblvwcxgrdtbv1FMName: TcxGridDBColumn
            Caption = #39044#35686#31867#22411
            DataBinding.FieldName = 'NoticeKind'
            Options.Editing = False
            Width = 99
          end
          object cxgrdbtblvwcxgrdtbv1AcitonKind: TcxGridDBColumn
            Caption = #39044#35686#20869#23481
            DataBinding.FieldName = 'NoticeContent'
            Options.Editing = False
            Width = 328
          end
          object cxgrdbtblvwcxgrdtbv1bStart: TcxGridDBColumn
            Caption = #26159#21542#21551#29992
            DataBinding.FieldName = 'bStart'
            Width = 104
          end
          object cxgrdbtblvwcxgrdtbv1Content1: TcxGridDBColumn
            Caption = #26159#21542#20840#37096#24320#25918
            DataBinding.FieldName = 'bAllOpen'
            Width = 104
          end
        end
        object cxgrdlvlcxgrdlev1: TcxGridLevel
          GridView = cxgrdbtblvwcxgrdtbv1
        end
      end
      object cxgrd2: TcxGrid
        Left = 744
        Top = 0
        Width = 293
        Height = 436
        Align = alRight
        PopupMenu = pmLayout
        TabOrder = 1
        object cxgrdbtblvw1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxgrdtbvCellDblClick
          DataController.DataSource = dsDet
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.PullFocusing = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Editing = False
          OptionsView.FocusRect = False
          OptionsView.NoDataToDisplayInfoText = #24658#21019#36719#20214
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 35
          OnCustomDrawIndicatorCell = cxgrdtbvCustomDrawIndicatorCell
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = #36134#21495
            DataBinding.FieldName = 'UserId'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxgrdtbvUserIdPropertiesButtonClick
            Visible = False
            Width = 71
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = #22995#21517
            DataBinding.FieldName = 'UserName'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxgrdtbvUserIdPropertiesButtonClick
            Width = 92
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = #37096#38376
            DataBinding.FieldName = 'DeptName'
            Width = 129
          end
        end
        object cxgrdlvl1: TcxGridLevel
          GridView = cxgrdbtblvw1
        end
      end
      object cxspltr2: TcxSplitter
        Left = 736
        Top = 0
        Width = 8
        Height = 436
        AlignSplitter = salRight
        Control = cxgrd2
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = ' '#36890#30693#20844#21578' '
      ImageIndex = 1
      object cxgrdInform: TcxGrid
        Left = 0
        Top = 0
        Width = 329
        Height = 436
        Align = alLeft
        TabOrder = 0
        object cxgrdbtblvwInform: TcxGridDBTableView
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
          DataController.DataSource = dsInform
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
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
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.PullFocusing = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = #36890#30693#20844#21578
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 35
          object cxgrdbtblvwInformInformTitle: TcxGridDBColumn
            Caption = #26631#39064
            DataBinding.FieldName = 'InformTitle'
            Width = 134
          end
          object cxgrdbtblvwInformInformContent: TcxGridDBColumn
            Caption = #20869#23481
            DataBinding.FieldName = 'InformContent'
            Visible = False
            Width = 125
          end
          object cxgrdbtblvwInformSendName: TcxGridDBColumn
            Caption = #21457#24067#32773
            DataBinding.FieldName = 'SendName'
            Width = 63
          end
          object cxgrdbtblvwInformSendDate: TcxGridDBColumn
            Caption = #21457#24067#26085#26399
            DataBinding.FieldName = 'SendDate'
            Width = 75
          end
        end
        object cxgrdlvlInform: TcxGridLevel
          GridView = cxgrdbtblvwInform
        end
      end
      object Panel1: TPanel
        Left = 329
        Top = 0
        Width = 708
        Height = 436
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel1'
        TabOrder = 1
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 708
          Height = 56
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object cxLabel1: TcxLabel
            Left = 6
            Top = 15
            Caption = #26631#39064
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -20
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Transparent = True
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 58
            Top = 13
            DataBinding.DataField = 'InformTitle'
            DataBinding.DataSource = dsInform
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -20
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 399
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 463
            Top = 20
            Caption = #26159#21542#32622#39030
            DataBinding.DataField = 'bTop'
            DataBinding.DataSource = dsInform
            Properties.NullStyle = nssUnchecked
            TabOrder = 2
            Transparent = True
            Width = 82
          end
        end
        object cxDBMemo1: TcxDBMemo
          Left = 0
          Top = 56
          Align = alClient
          DataBinding.DataField = 'InformContent'
          DataBinding.DataSource = dsInform
          ParentFont = False
          Properties.ScrollBars = ssVertical
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 1
          Height = 380
          Width = 708
        end
      end
    end
  end
  object dbedtId: TDBEdit [3]
    Left = 245
    Top = 301
    Width = 121
    Height = 21
    DataField = 'NoticeKind'
    DataSource = dsHed
    ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    TabOrder = 7
    Visible = False
    OnChange = dbedtIdChange
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      46
      0)
    inherited btAdd: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btDel: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btAddL: TdxBarLargeButton
      Caption = #26032' '#22686
      Hint = #26032' '#22686
      ShortCut = 0
      OnClick = btAddLClick
    end
    inherited btDelL: TdxBarLargeButton
      Caption = #21024' '#38500
      Hint = #21024' '#38500
      ShortCut = 0
      OnClick = btDelLClick
    end
    inherited btFind: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btPrint: TdxBarLargeButton
      Visible = ivNever
    end
  end
  inherited dsHed: TDataSource
    Left = 72
    Top = 248
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'select * from SysNoticeTB')
    Left = 72
    Top = 288
  end
  inherited pmLayout: TPopupMenu
    Left = 760
    Top = 328
  end
  inherited cxgrdpmn1: TcxGridPopupMenu
    Left = 640
    Top = 328
  end
  object qyDet: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qyDetAfterInsert
    Parameters = <>
    SQL.Strings = (
      'select * from SysNoticeEmpTB')
    Left = 120
    Top = 288
  end
  object dsDet: TDataSource
    DataSet = qyDet
    Left = 120
    Top = 248
  end
  object qyInform: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = qyInformAfterInsert
    Parameters = <>
    SQL.Strings = (
      'select * from SysInformTB  Order by bTop Desc,SendDate Desc')
    Left = 176
    Top = 288
  end
  object dsInform: TDataSource
    DataSet = qyInform
    Left = 176
    Top = 248
  end
end
