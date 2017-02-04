inherited CustKindFM: TCustKindFM
  Caption = #23458#25143#31867#21035
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
    ExplicitTop = 78
    ExplicitHeight = 448
    object tv: TdxDBTreeView
      Left = 1
      Top = 1
      Width = 298
      Height = 448
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ShowNodeHint = True
      OnCustomDraw = tvCustomDraw
      DataSource = dsHed
      DisplayField = 'CustKindName;CustKindCode'
      KeyField = 'CustKindId'
      ListField = 'CustKindName'
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
      ExplicitWidth = 300
      ExplicitHeight = 446
    end
  end
  object pnlEdit: TPanel [1]
    Left = 300
    Top = 76
    Width = 285
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
    ExplicitTop = 78
    ExplicitHeight = 448
    object lbl1: TLabel
      Left = 23
      Top = 43
      Width = 60
      Height = 13
      Caption = #31867#21035#32534#21495#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 23
      Top = 89
      Width = 60
      Height = 13
      Caption = #31867#21035#20195#21495#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 23
      Top = 144
      Width = 60
      Height = 13
      Caption = #31867#21035#21517#31216#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 23
      Top = 198
      Width = 60
      Height = 13
      Caption = #19978#32423#31867#21035#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 23
      Top = 281
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
    object lbl6: TLabel
      Left = 251
      Top = 91
      Width = 6
      Height = 13
      Caption = '*'
      Color = clRed
      ParentColor = False
    end
    object lbl7: TLabel
      Left = 252
      Top = 148
      Width = 6
      Height = 13
      Caption = '*'
      Color = clRed
      ParentColor = False
    end
    object cxdbEdtId: TcxDBTextEdit
      Left = 89
      Top = 40
      DataBinding.DataField = 'CustKindId'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      Style.Color = 15198183
      TabOrder = 0
      Width = 159
    end
    object cxdbEdtCode: TcxDBTextEdit
      Left = 89
      Top = 86
      DataBinding.DataField = 'CustKindCode'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 159
    end
    object cxdbEdtName: TcxDBTextEdit
      Left = 89
      Top = 141
      DataBinding.DataField = 'CustKindName'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 159
    end
    object cxdbEdtParentId: TcxDBTextEdit
      Left = 89
      Top = 195
      DataBinding.DataField = 'ParentName'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      Style.Color = 15198183
      TabOrder = 3
      Width = 159
    end
    object cxdbMoRemark: TcxDBMemo
      Left = 90
      Top = 254
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      TabOrder = 4
      Height = 89
      Width = 158
    end
  end
  object pnlGest: TPanel [2]
    Left = 585
    Top = 76
    Width = 483
    Height = 450
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 6
    ExplicitLeft = 712
    ExplicitTop = 78
    ExplicitWidth = 356
    ExplicitHeight = 448
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
    ExplicitTop = 48
    object labTitle: TLabel
      Left = 0
      Top = 0
      Width = 185
      Height = 30
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Caption = #23458#25143#31867#21035
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10905136
      Font.Height = -21
      Font.Name = #21326#25991#20013#23435
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
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
      'select * from CustKindTB')
    Left = 72
    Top = 192
    object qyHedAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object strngfldHedParentId: TStringField
      FieldName = 'ParentId'
    end
    object strngfldHedRemark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
    object strngfldHedParentName: TStringField
      FieldKind = fkCalculated
      FieldName = 'ParentName'
      Calculated = True
    end
    object qyHedCustKindId: TStringField
      FieldName = 'CustKindId'
    end
    object qyHedCustKindCode: TStringField
      FieldName = 'CustKindCode'
    end
    object qyHedCustKindName: TStringField
      FieldName = 'CustKindName'
      Size = 30
    end
    object qyHedCustParam: TStringField
      FieldName = 'CustParam'
      Size = 10
    end
  end
  object frxHed: TfrxDBDataset
    UserName = #23458#25143#31867#21035
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoId=AutoId'
      'ParentId='#19978#32423#32534#21495
      'Remark='#22791#27880
      'ParentName='#19978#32423#21517#31216
      'CustKindId='#23458#25143#31867#21035#32534#21495
      'CustKindCode='#23458#25143#31867#21035#20195#21495
      'CustKindName='#23458#25143#31867#21035#21517#31216
      'CustParam='#23458#25143#31867#21035#23646#24615)
    DataSource = dsHed
    BCDToCurrency = False
    Left = 72
    Top = 232
  end
end
