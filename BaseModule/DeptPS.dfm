inherited DeptFM: TDeptFM
  Caption = #37096#38376#36164#26009
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
      KeyField = 'DeptId'
      ListField = 'DeptName'
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
    ExplicitLeft = 294
    ExplicitTop = 82
    object cxdbEdtId: TcxDBTextEdit
      Left = 104
      Top = 40
      DataBinding.DataField = 'DeptId'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      Style.Color = 15198183
      TabOrder = 0
      Width = 159
    end
    object cxdbEdtCode: TcxDBTextEdit
      Left = 104
      Top = 93
      DataBinding.DataField = 'DeptCode'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 159
    end
    object cxdbEdtName: TcxDBTextEdit
      Left = 104
      Top = 149
      DataBinding.DataField = 'DeptName'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 159
    end
    object cxdbEdtParentId: TcxDBTextEdit
      Left = 104
      Top = 205
      DataBinding.DataField = 'ParentName'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      Style.Color = 15198183
      TabOrder = 3
      Width = 159
    end
    object cxdbMoRemark: TcxDBMemo
      Left = 104
      Top = 318
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      TabOrder = 4
      Height = 89
      Width = 158
    end
    object cxLabel1: TcxLabel
      Left = 45
      Top = 42
      Caption = #37096#38376#32534#21495
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 45
      Top = 95
      Caption = #37096#38376#20195#21495
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 45
      Top = 151
      Caption = #37096#38376#21517#31216
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 45
      Top = 207
      Caption = #19978#32423#37096#38376
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 69
      Top = 354
      Caption = #22791#27880
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 268
      Top = 95
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
    object cxLabel7: TcxLabel
      Left = 268
      Top = 151
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
    object cxLabel8: TcxLabel
      Left = 45
      Top = 263
      Caption = #23545#24212#20179#24211
      Transparent = True
    end
    object cxDBButtonEdit1: TcxDBButtonEdit
      Left = 104
      Top = 262
      DataBinding.DataField = 'WareName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      TabOrder = 13
      Width = 159
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
      Width = 185
      Height = 30
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Caption = #37096#38376#36164#26009
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10905136
      Font.Height = -21
      Font.Name = #21326#25991#23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitLeft = 16
      ExplicitTop = -5
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
      'select * from DeptTB')
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
    object qyHedDeptId: TStringField
      FieldName = 'DeptId'
    end
    object qyHedDeptCode: TStringField
      FieldName = 'DeptCode'
    end
    object qyHedDeptName: TStringField
      FieldName = 'DeptName'
      Size = 30
    end
    object qyHedPrincipal: TStringField
      FieldName = 'Principal'
      Size = 30
    end
    object qyHedbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyHedWareId: TStringField
      FieldName = 'WareId'
      Size = 50
    end
    object qyHedWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'WareName'
      Size = 100
      Calculated = True
    end
  end
  object frxHed: TfrxDBDataset
    UserName = #37096#38376#36164#26009
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoId='#33258#21160#32534#21495
      'ParentId='#19978#32423#32534#21495
      'Remark='#22791#27880
      'ParentName='#19978#32423#21517#31216
      'DeptId='#37096#38376#32534#21495
      'DeptCode='#37096#38376#20195#21495
      'DeptName='#37096#38376#21517#31216
      'Principal='#36127#36131#20154
      'bSelect='#36873#25321
      'WareId='#20179#24211#32534#21495
      'WareName='#20179#24211#21517#31216)
    DataSource = dsHed
    BCDToCurrency = False
    Left = 72
    Top = 232
  end
end
