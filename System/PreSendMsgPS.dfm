inherited PreSendMsgFM: TPreSendMsgFM
  Caption = #28040#24687#35774#32622
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
      Caption = #28040#24687#35774#32622
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlcxGrd: TPanel
    Top = 114
    Width = 1045
    Height = 431
    ExplicitTop = 114
    ExplicitWidth = 1045
    ExplicitHeight = 431
    inherited cxgrd: TcxGrid
      Left = 752
      Width = 293
      Height = 431
      Align = alRight
      ExplicitLeft = 752
      ExplicitWidth = 293
      ExplicitHeight = 431
      inherited cxgrdtbv: TcxGridDBTableView
        DataController.DataSource = dsDet
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
    object cxspltr2: TcxSplitter
      Left = 744
      Top = 0
      Width = 8
      Height = 431
      AlignSplitter = salRight
      Control = cxgrd1
    end
    object cxgrd1: TcxGrid
      Left = 0
      Top = 0
      Width = 744
      Height = 431
      Align = alClient
      TabOrder = 2
      object cxgrdtbv1: TcxGridDBTableView
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
        OnCustomDrawIndicatorCell = cxgrdtbv1CustomDrawIndicatorCell
        object cxgrdtbv1FMName: TcxGridDBColumn
          Caption = #25805#20316#31383#20307
          DataBinding.FieldName = 'FMName'
          Options.Editing = False
          Width = 68
        end
        object cxgrdtbv1AcitonKind: TcxGridDBColumn
          Caption = #25805#20316#21160#20316
          DataBinding.FieldName = 'AcitonKind'
          Options.Editing = False
          Width = 139
        end
        object cxgrdtbv1Title1: TcxGridDBColumn
          Caption = #26631#39064
          DataBinding.FieldName = 'Title1'
          Width = 175
        end
        object cxgrdtbv1Content1: TcxGridDBColumn
          Caption = #20869#23481
          DataBinding.FieldName = 'Content1'
          Width = 196
        end
        object cxgrdtbv1bStart: TcxGridDBColumn
          Caption = #26159#21542#21551#29992
          DataBinding.FieldName = 'bStart'
          Width = 67
        end
      end
      object cxgrdlev1: TcxGridLevel
        GridView = cxgrdtbv1
      end
    end
    object dbedtId: TDBEdit
      Left = 261
      Top = 224
      Width = 121
      Height = 21
      DataField = 'SendId'
      DataSource = dsHed
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      TabOrder = 3
      Visible = False
      OnChange = dbedtIdChange
    end
  end
  object pnl1: TPanel [2]
    Left = 0
    Top = 76
    Width = 1045
    Height = 38
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object lbl1: TLabel
      Left = 24
      Top = 12
      Width = 48
      Height = 13
      Caption = #25805#20316#21160#20316
    end
    object lbl2: TLabel
      Left = 229
      Top = 12
      Width = 48
      Height = 13
      Caption = #21457#36865#20154#21592
    end
    object cxAction: TcxTextEdit
      Left = 78
      Top = 8
      Properties.OnChange = cxActionPropertiesChange
      TabOrder = 0
      Width = 143
    end
    object cxUser: TcxTextEdit
      Left = 282
      Top = 8
      Properties.OnChange = cxActionPropertiesChange
      TabOrder = 1
      TextHint = #21487#25163#21160#36755#20837#22995#21517#25110#36134#21495
      Width = 143
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      46
      0)
    inherited btDel: TdxBarLargeButton
      Visible = ivNever
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
      'select * from PreSendMsgTB')
    Left = 72
    Top = 288
    object qyHedAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qyHedSendId: TStringField
      FieldName = 'SendId'
      Size = 100
    end
    object qyHedFMId: TStringField
      FieldName = 'FMId'
      Size = 50
    end
    object qyHedFMName: TStringField
      FieldName = 'FMName'
      Size = 50
    end
    object qyHedAcitonKind: TStringField
      FieldName = 'AcitonKind'
      Size = 100
    end
    object qyHedTitle1: TStringField
      FieldName = 'Title1'
      Size = 100
    end
    object qyHedTitle2: TStringField
      FieldName = 'Title2'
      Size = 100
    end
    object qyHedContent1: TStringField
      FieldName = 'Content1'
      Size = 1000
    end
    object qyHedContent2: TStringField
      FieldName = 'Content2'
      Size = 500
    end
    object blnfldHedbStart: TBooleanField
      FieldName = 'bStart'
    end
    object qyHedRemark: TStringField
      FieldName = 'Remark'
      Size = 100
    end
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
      'select * from PreSendMsgEmpTB')
    Left = 128
    Top = 288
    object qyDetAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qyDetSendId: TStringField
      FieldName = 'SendId'
      Size = 100
    end
    object qyDetAcitonKind: TStringField
      FieldName = 'AcitonKind'
      Size = 100
    end
    object qyDetUserId: TStringField
      FieldName = 'UserId'
      Size = 50
    end
    object qyDetUserName: TStringField
      FieldName = 'UserName'
      Size = 50
    end
    object qyDetDeptName: TStringField
      FieldName = 'DeptName'
      Size = 50
    end
    object qyDetRemark: TStringField
      FieldName = 'Remark'
      Size = 100
    end
  end
  object dsDet: TDataSource
    DataSet = qyDet
    Left = 128
    Top = 248
  end
end
