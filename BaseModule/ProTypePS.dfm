inherited ProTypeFM: TProTypeFM
  Caption = #23646#24615#36164#26009
  ExplicitWidth = 1068
  ExplicitHeight = 526
  PixelsPerInch = 96
  TextHeight = 13
  object pnlLeft: TPanel [0]
    Left = 0
    Top = 82
    Width = 300
    Height = 444
    Align = alLeft
    TabOrder = 4
    ExplicitTop = 84
    ExplicitHeight = 442
    object tv: TdxDBTreeView
      Left = 1
      Top = 1
      Width = 298
      Height = 442
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ShowNodeHint = True
      OnCustomDraw = tvCustomDraw
      DataSource = dsHed
      KeyField = 'TypeId'
      ListField = 'TypeName'
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
      ExplicitWidth = 367
      ExplicitHeight = 440
    end
  end
  object pnlEdit: TPanel [1]
    Left = 300
    Top = 82
    Width = 316
    Height = 444
    Align = alLeft
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    ExplicitLeft = 369
    ExplicitTop = 84
    ExplicitHeight = 442
    object lbl1: TLabel
      Left = 48
      Top = 43
      Width = 60
      Height = 13
      Caption = #23646#24615#32534#21495#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 48
      Top = 102
      Width = 60
      Height = 13
      Caption = #23646#24615#21517#31216#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 48
      Top = 160
      Width = 60
      Height = 13
      Caption = #19978#32423#23646#24615#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 48
      Top = 237
      Width = 45
      Height = 13
      Caption = #22791'   '#27880#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 279
      Top = 102
      Width = 6
      Height = 13
      Caption = '*'
      Color = clRed
      ParentColor = False
    end
    object cxdbEdtId: TcxDBTextEdit
      Left = 114
      Top = 40
      DataBinding.DataField = 'TypeId'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      Style.Color = 15198183
      TabOrder = 0
      Width = 159
    end
    object cxdbEdtName: TcxDBTextEdit
      Left = 114
      Top = 99
      DataBinding.DataField = 'TypeName'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 159
    end
    object cxdbEdtParentId: TcxDBTextEdit
      Left = 114
      Top = 157
      DataBinding.DataField = 'ParentName'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      Style.Color = 15198183
      TabOrder = 2
      Width = 159
    end
    object cxdbMoRemark: TcxDBMemo
      Left = 115
      Top = 210
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      TabOrder = 3
      Height = 89
      Width = 158
    end
  end
  object pnlGest: TPanel [2]
    Left = 616
    Top = 82
    Width = 452
    Height = 444
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 6
    ExplicitLeft = 685
    ExplicitTop = 84
    ExplicitWidth = 383
    ExplicitHeight = 442
  end
  object pnlTitle: TPanel [3]
    Left = 0
    Top = 46
    Width = 1068
    Height = 36
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -27
    Font.Name = #26999#20307
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    ExplicitTop = 48
    object labTitle: TLabel
      Left = 0
      Top = 0
      Width = 240
      Height = 36
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Caption = #23646#24615#36164#26009
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
      'select * from ProTypeTB')
    Left = 72
    Top = 192
    object qyHedAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object blnfldHedbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyHedTypeId: TStringField
      FieldName = 'TypeId'
    end
    object qyHedTypeName: TStringField
      FieldName = 'TypeName'
      Size = 30
    end
    object qyHedTypeKind: TStringField
      FieldName = 'TypeKind'
      Size = 30
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
