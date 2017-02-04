inherited ColorFM: TColorFM
  Caption = #39068#33394#36164#26009
  ExplicitWidth = 1068
  ExplicitHeight = 526
  PixelsPerInch = 96
  TextHeight = 13
  object pnlLeft: TPanel [0]
    Left = 0
    Top = 76
    Width = 300
    Height = 450
    Align = alLeft
    TabOrder = 4
    object tv: TdxDBTreeView
      Left = 1
      Top = 1
      Width = 298
      Height = 448
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ShowNodeHint = True
      OnCustomDraw = tvCustomDraw
      DataSource = dsHed
      KeyField = 'ColorId'
      ListField = 'ColorName'
      ParentField = 'ParentId'
      RootValue = Null
      SeparatedSt = ' - '
      RaiseOnError = True
      ReadOnly = True
      Indent = 19
      Align = alClient
      ParentColor = False
      Options = [trDBCanDelete, trDBConfirmDelete, trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
      SelectedIndex = -1
      TabOrder = 0
    end
  end
  object pnlEdit: TPanel [1]
    Left = 300
    Top = 76
    Width = 310
    Height = 450
    Align = alLeft
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    ExplicitLeft = 268
    ExplicitTop = 82
    object cxdbEdtId: TcxDBTextEdit
      Left = 114
      Top = 40
      DataBinding.DataField = 'ColorId'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      Style.Color = 15198183
      TabOrder = 0
      Width = 159
    end
    object cxdbEdtName: TcxDBTextEdit
      Left = 114
      Top = 95
      DataBinding.DataField = 'ColorName'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 159
    end
    object cxdbEdtParentId: TcxDBTextEdit
      Left = 114
      Top = 159
      DataBinding.DataField = 'ParentName'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      Style.Color = 15198183
      TabOrder = 2
      Width = 159
    end
    object cxdbMoRemark: TcxDBMemo
      Left = 115
      Top = 225
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      TabOrder = 3
      Height = 89
      Width = 158
    end
    object cxLabel1: TcxLabel
      Left = 45
      Top = 41
      Caption = #39068#33394#32534#21495
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 45
      Top = 96
      Caption = #39068#33394#21517#31216
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 45
      Top = 160
      Caption = #19978#32423#39068#33394
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 69
      Top = 257
      Caption = #22791#27880
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 279
      Top = 99
      Caption = '*'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clRed
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  object pnlGest: TPanel [2]
    Left = 610
    Top = 76
    Width = 458
    Height = 450
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 6
  end
  object pnlTitle: TPanel [3]
    Left = 0
    Top = 46
    Width = 1068
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -27
    Font.Name = #26999#20307
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    object labTitle: TLabel
      Left = 0
      Top = 0
      Width = 240
      Height = 30
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Caption = #39068#33394#36164#26009
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10905136
      Font.Height = -21
      Font.Name = #21326#25991#23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 41
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      46
      0)
    inherited btAdd: TdxBarLargeButton
      Caption = #28155#21152
    end
    inherited btAddL: TdxBarLargeButton
      Caption = #28155#21152#21516#32423
      Hint = #28155#21152#21516#32423
      Visible = ivNever
      OnClick = btAddLClick
    end
    inherited btDelL: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btFind: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btRefer: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btCheck: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btUnCheck: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btTemp: TdxBarLargeButton
      Caption = #31227#21040#19978#32423
      Hint = #31227#21040#19978#32423
    end
  end
  inherited dsHed: TDataSource
    Left = 72
    Top = 152
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    OnCalcFields = qyHedCalcFields
    SQL.Strings = (
      'select * from ColorTB')
    Left = 72
    Top = 192
    object qyHedAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object blnfldHedbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyHedParentId: TStringField
      FieldName = 'ParentId'
    end
    object qyHedRemark: TStringField
      FieldName = 'Remark'
      Size = 100
    end
    object qyHedParentName: TStringField
      FieldKind = fkCalculated
      FieldName = 'ParentName'
      Calculated = True
    end
    object qyHedColorId: TStringField
      FieldName = 'ColorId'
    end
    object qyHedColorName: TStringField
      FieldName = 'ColorName'
      Size = 30
    end
  end
  object frxHed: TfrxDBDataset
    UserName = #23646#24615#36164#26009
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoId=AutoId'
      'bSelect='#36873#25321
      'TypeId='#23646#24615#32534#21495
      'TypeName='#23646#24615#21517#31216
      'TypeKind='#23646#24615#31867#21035
      'ParentId='#19978#32423#32534#21495
      'Remark='#22791#27880
      'ParentName='#19978#32423#21517#31216)
    DataSource = dsHed
    BCDToCurrency = False
    Left = 72
    Top = 232
  end
end
