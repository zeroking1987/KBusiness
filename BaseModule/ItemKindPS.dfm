inherited ItemKindFM: TItemKindFM
  Align = alNone
  AutoSize = True
  BorderStyle = bsDialog
  Caption = #20135#21697#31867#21035
  ClientHeight = 429
  ClientWidth = 486
  ExplicitWidth = 492
  ExplicitHeight = 458
  PixelsPerInch = 96
  TextHeight = 13
  object pnlLeft: TPanel [0]
    Left = 0
    Top = 76
    Width = 201
    Height = 353
    Align = alLeft
    TabOrder = 4
    ExplicitHeight = 375
    object tv: TdxDBTreeView
      Left = 1
      Top = 1
      Width = 199
      Height = 351
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      ShowNodeHint = True
      OnCustomDraw = tvCustomDraw
      DataSource = dsHed
      DisplayField = 'ItemKindName;ItemKindCode'
      KeyField = 'ItemKindId'
      ListField = 'ItemKindName'
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
      ExplicitWidth = 240
      ExplicitHeight = 373
    end
  end
  object pnlEdit: TPanel [1]
    Left = 201
    Top = 76
    Width = 285
    Height = 353
    Align = alLeft
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    ExplicitLeft = 300
    ExplicitHeight = 375
    object lbl13: TLabel
      Left = 247
      Top = 21
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
    object lbl1: TLabel
      Left = 247
      Top = 138
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
    object cxdbEdtId: TcxDBTextEdit
      Left = 82
      Top = 17
      DataBinding.DataField = 'ItemKindId'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      Style.Color = 15198183
      TabOrder = 0
      Width = 159
    end
    object cxdbEdtCode: TcxDBTextEdit
      Left = 82
      Top = 77
      DataBinding.DataField = 'ItemKindCode'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 159
    end
    object cxdbEdtName: TcxDBTextEdit
      Left = 82
      Top = 134
      DataBinding.DataField = 'ItemKindName'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 159
    end
    object cxMruEdtParam: TcxDBMRUEdit
      Left = 82
      Top = 197
      DataBinding.DataField = 'Param'
      DataBinding.DataSource = dsHed
      Properties.LookupItems.Strings = (
        #21407#26448#26009
        #36741#26009
        #21322#25104#21697
        #25104#21697
        #36130#21153
        #24037#20855
        #20854#20182)
      Properties.ReadOnly = True
      Properties.ShowEllipsis = False
      TabOrder = 3
      Visible = False
      Width = 159
    end
    object cxBtbtn2: TcxDBButtonEdit
      Left = 82
      Top = 266
      DataBinding.DataField = 'KindWareName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxBtbtn2PropertiesButtonClick
      TabOrder = 4
      Visible = False
      Width = 159
    end
    object cxlbl1: TcxLabel
      Left = 24
      Top = 19
      Caption = #31867#21035#32534#21495
      Transparent = True
    end
    object cxlbl2: TcxLabel
      Left = 24
      Top = 79
      Caption = #31867#21035#20195#21495
      Transparent = True
    end
    object cxlbl4: TcxLabel
      Left = 24
      Top = 199
      Caption = #31867#21035#23646#24615
      Transparent = True
      Visible = False
    end
    object cxlbl5: TcxLabel
      Left = 24
      Top = 268
      Caption = #40664#35748#20179#24211
      Transparent = True
      Visible = False
    end
    object cxlbl6: TcxLabel
      Left = 24
      Top = 136
      Caption = #31867#21035#21517#31216
      Transparent = True
    end
  end
  object pnlTitle: TPanel [2]
    Left = 0
    Top = 46
    Width = 486
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -27
    Font.Name = #26999#20307
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    ExplicitWidth = 633
    object labTitle: TLabel
      Left = 0
      Top = 0
      Width = 185
      Height = 30
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Caption = #20135#21697#31867#21035
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
      Hint = #21592#24037#22686#34892
      Visible = ivNever
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
    inherited btPrint: TdxBarLargeButton
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
    inherited btLeft: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btRight: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btFirst: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btLast: TdxBarLargeButton
      Visible = ivNever
    end
    inherited dxCmbReport: TdxBarCombo
      Visible = ivNever
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
      'select * from ItemKindTB')
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
    object qyHedbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyHedItemKindId: TStringField
      FieldName = 'ItemKindId'
    end
    object qyHedItemKindCode: TStringField
      FieldName = 'ItemKindCode'
    end
    object qyHedItemKindName: TStringField
      FieldName = 'ItemKindName'
      Size = 30
    end
    object qyHedParam: TStringField
      FieldName = 'Param'
      Size = 30
    end
    object qyHedKindWare: TStringField
      FieldName = 'KindWare'
    end
    object qyHedKindWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'KindWareName'
      Calculated = True
    end
  end
  object frxHed: TfrxDBDataset
    UserName = #37096#38376#36164#26009
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoId=AutoId'
      'ParentId='#19978#32423#32534#21495
      'Remark='#22791#27880
      'ParentName='#19978#32423#21517#31216
      'DeptId='#37096#38376#32534#21495
      'DeptCode='#37096#38376#20195#21495
      'DeptName='#37096#38376#21517#31216
      'Principal='#36127#36131#20154)
    DataSource = dsHed
    BCDToCurrency = False
    Left = 72
    Top = 232
  end
end
