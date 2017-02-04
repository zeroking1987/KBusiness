inherited FinanceDateFM: TFinanceDateFM
  Caption = #36130#21153#26376#20221
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    TabOrder = 3
    inherited cxLabTitle: TcxLabel
      Caption = #36130#21153#26376#20221
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlcxGrd: TPanel
    Top = 117
    Height = 410
    ExplicitTop = 117
    ExplicitHeight = 410
    inherited cxgrd: TcxGrid
      Width = 505
      Height = 410
      Align = alLeft
      ExplicitWidth = 505
      ExplicitHeight = 410
      inherited cxgrdtbv: TcxGridDBTableView
        object cxgrdbclmnMonthNo: TcxGridDBColumn
          Caption = #24180#26376
          DataBinding.FieldName = 'MonthNo'
          Options.Editing = False
          Width = 75
        end
        object cxgrdbclmnBeginDate: TcxGridDBColumn
          Caption = #24320#22987#26085#26399
          DataBinding.FieldName = 'BeginDate'
          Options.Editing = False
        end
        object cxgrdbclmnEndDate: TcxGridDBColumn
          Caption = #32467#26463#26085#26399
          DataBinding.FieldName = 'EndDate'
          Options.Editing = False
        end
        object cxgrdbclmnNow: TcxGridDBColumn
          Caption = #26159#21542#36130#21153#26376#20221
          DataBinding.FieldName = 'bNow'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.OnChange = cxgrdbclmnNowPropertiesChange
          Width = 92
        end
      end
    end
    object pnl1: TPanel
      Left = 505
      Top = 0
      Width = 522
      Height = 410
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
    end
  end
  object pnl2: TPanel [2]
    Left = 0
    Top = 76
    Width = 1027
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 6
    object lbl1: TLabel
      Left = 17
      Top = 13
      Width = 60
      Height = 13
      Caption = #24320#22987#26085#26399#65306
    end
    object lbl2: TLabel
      Left = 217
      Top = 13
      Width = 48
      Height = 13
      Caption = #26376#20221#25968#65306
    end
    object cxdtS: TcxDateEdit
      Left = 82
      Top = 10
      TabOrder = 0
      Width = 121
    end
    object cxMonCount: TcxTextEdit
      Left = 260
      Top = 10
      TabOrder = 1
      Width = 69
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      46
      0)
    inherited btAdd: TdxBarLargeButton
      Hint = 
        '|'#36873#25321#24320#22987#26085#26399#21644#35201#29983#25104#30340#26376#20221#25968#28857#28155#21152#13#10#21363#21487#29983#25104#30456#24212#36130#21153#26376#20221#24320#22987#26085#26399#21644#32467#26463#13#10#26085#26399#65292#28982#21518#21246#36873#19968#20010#36130#21153#26376#20221#65292#22914#26524#24050#13#10#26377#35831#19981#35201#20877#21246 +
        #36873
    end
    inherited btAddL: TdxBarLargeButton
      Visible = ivNever
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
    Top = 192
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'select * from FinanceDateTB')
    Top = 232
    object qyHedAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qyHedMonthNo: TStringField
      FieldName = 'MonthNo'
      Size = 10
    end
    object dtmfldHedBeginDate: TDateTimeField
      FieldName = 'BeginDate'
    end
    object dtmfldHedEndDate: TDateTimeField
      FieldName = 'EndDate'
    end
    object qyHedbNow: TBooleanField
      FieldName = 'bNow'
    end
  end
end
