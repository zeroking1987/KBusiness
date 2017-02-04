inherited PrvKindFM: TPrvKindFM
  Caption = #20379#24212#21830#31867#21035
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
      KeyField = 'PrvKindId'
      ListField = 'PrvKindName'
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
    Width = 309
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
    ExplicitLeft = 305
    object lbl6: TLabel
      Left = 273
      Top = 90
      Width = 6
      Height = 13
      Caption = '*'
      Color = clRed
      ParentColor = False
    end
    object lbl7: TLabel
      Left = 274
      Top = 140
      Width = 6
      Height = 13
      Caption = '*'
      Color = clRed
      ParentColor = False
    end
    object cxdbEdtId: TcxDBTextEdit
      Left = 103
      Top = 40
      DataBinding.DataField = 'PrvKindId'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      Style.Color = 15198183
      TabOrder = 0
      Width = 159
    end
    object cxdbEdtCode: TcxDBTextEdit
      Left = 103
      Top = 86
      DataBinding.DataField = 'PrvKindCode'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 159
    end
    object cxdbEdtName: TcxDBTextEdit
      Left = 103
      Top = 136
      DataBinding.DataField = 'PrvKindName'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 159
    end
    object cxdbEdtParentId: TcxDBTextEdit
      Left = 103
      Top = 182
      DataBinding.DataField = 'ParentName'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      Style.Color = 15198183
      TabOrder = 3
      Width = 159
    end
    object cxdbMoRemark: TcxDBMemo
      Left = 104
      Top = 280
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      TabOrder = 4
      Height = 89
      Width = 158
    end
    object cbbPrvParam: TcxDBComboBox
      Left = 103
      Top = 233
      DataBinding.DataField = 'PrvParam'
      DataBinding.DataSource = dsHed
      Properties.Items.Strings = (
        #20379#24212#21830
        #22806#21327#21830
        #25215#36816#21830)
      Properties.ReadOnly = True
      TabOrder = 5
      Width = 159
    end
    object cxlbl1: TcxLabel
      Left = 37
      Top = 42
      Caption = #31867#21035#32534#21495
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 37
      Top = 88
      Caption = #31867#21035#20195#21495
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 37
      Top = 138
      Caption = #31867#21035#21517#31216
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 37
      Top = 184
      Caption = #19978#32423#31867#21035
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 37
      Top = 235
      Caption = #31867#21035#23646#24615
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 61
      Top = 316
      Caption = #22791#27880
      Transparent = True
    end
  end
  object pnlGest: TPanel [2]
    Left = 609
    Top = 76
    Width = 459
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
    Font.Name = #21326#25991#20013#23435
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    object labTitle: TLabel
      Left = 0
      Top = 0
      Width = 185
      Height = 30
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Caption = #20379#24212#21830#31867#21035
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
    AfterInsert = qyHedAfterInsert
    OnCalcFields = qyHedCalcFields
    SQL.Strings = (
      'select * from PrvKindTB')
    Left = 72
    Top = 192
    object qyHedAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object strngfldHedPrvKindId: TStringField
      FieldName = 'PrvKindId'
    end
    object strngfldHedPrvKindCode: TStringField
      FieldName = 'PrvKindCode'
    end
    object strngfldHedPrvKindName: TStringField
      FieldName = 'PrvKindName'
      Size = 30
    end
    object strngfldHedParentId: TStringField
      FieldName = 'ParentId'
    end
    object strngfldHedPrvParam: TStringField
      FieldName = 'PrvParam'
      Size = 10
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
  end
  object frxHed: TfrxDBDataset
    UserName = #20379#24212#21830#31867#21035
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoId=AutoId'
      'PrvKindId='#31867#21035#32534#21495
      'PrvKindCode='#31867#21035#20195#21495
      'PrvKindName='#31867#21035#21517#31216
      'ParentId='#19978#32423#32534#21495
      'PrvParam='#31867#21035#23646#24615
      'Remark='#22791#27880
      'ParentName='#19978#32423#21517#31216)
    DataSource = dsHed
    BCDToCurrency = False
    Left = 72
    Top = 232
  end
end
