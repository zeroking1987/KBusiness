inherited BaseTechFM: TBaseTechFM
  Caption = #22522#30784#24037#24207
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
      KeyField = 'TechId'
      ListField = 'TechName'
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
    object cxdbEdtId: TcxDBTextEdit
      Left = 114
      Top = 40
      DataBinding.DataField = 'TechId'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      Style.Color = 15198183
      TabOrder = 0
      Width = 160
    end
    object cxdbEdtName: TcxDBTextEdit
      Left = 114
      Top = 106
      DataBinding.DataField = 'TechName'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 160
    end
    object cxdbEdtParentId: TcxDBTextEdit
      Left = 114
      Top = 300
      DataBinding.DataField = 'ParentTechName'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      Style.Color = 15198183
      TabOrder = 2
      Width = 160
    end
    object cxdbMoRemark: TcxDBMemo
      Left = 114
      Top = 334
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      TabOrder = 3
      Height = 89
      Width = 160
    end
    object cxLabel1: TcxLabel
      Left = 45
      Top = 41
      Caption = #24037#24207#32534#21495
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 45
      Top = 107
      Caption = #24037#24207#21517#31216
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 45
      Top = 301
      Caption = #19978#32423#24037#24207
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 69
      Top = 366
      Caption = #22791#27880
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 279
      Top = 110
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
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 114
      Top = 73
      DataBinding.DataField = 'TechCode'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      TabOrder = 9
      Width = 160
    end
    object cxLabel6: TcxLabel
      Left = 45
      Top = 74
      Caption = #24037#24207#20195#21495
      Transparent = True
    end
    object cxLabel7: TcxLabel
      Left = 45
      Top = 141
      Caption = #24037#24207#23646#24615
      Transparent = True
    end
    object cxDBComboBox1: TcxDBComboBox
      Left = 114
      Top = 140
      DataBinding.DataField = 'TechParam'
      DataBinding.DataSource = dsHed
      Properties.Items.Strings = (
        #26412#21378
        #22806#21327)
      Properties.ReadOnly = True
      TabOrder = 12
      Width = 160
    end
    object cxLabel8: TcxLabel
      Left = 45
      Top = 175
      Caption = #21152#24037#37096#38376
      Transparent = True
    end
    object cxDept: TcxDBButtonEdit
      Left = 114
      Top = 174
      DataBinding.DataField = 'DeptName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxDeptPropertiesButtonClick
      TabOrder = 14
      Width = 160
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 114
      Top = 205
      DataBinding.DataField = 'CurePrice'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      TabOrder = 15
      Width = 160
    end
    object cxLabel9: TcxLabel
      Left = 45
      Top = 206
      Caption = #27491#21697#21333#20215
      Transparent = True
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 114
      Top = 237
      DataBinding.DataField = 'SpoilPrice'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      TabOrder = 17
      Width = 160
    end
    object cxLabel10: TcxLabel
      Left = 33
      Top = 238
      Caption = #19981#33391#21697#21333#20215
      Transparent = True
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 114
      Top = 268
      DataBinding.DataField = 'WastePrice'
      DataBinding.DataSource = dsHed
      Properties.ReadOnly = True
      TabOrder = 19
      Width = 160
    end
    object cxLabel11: TcxLabel
      Left = 45
      Top = 269
      Caption = #24223#21697#21333#20215
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
      Caption = #22522#30784#24037#24207
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
      'select * from BaseTechTB order by TechId')
    Left = 72
    Top = 192
    object qyHedAutoID: TAutoIncField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object qyHedTechId: TStringField
      FieldName = 'TechId'
    end
    object qyHedTechCode: TStringField
      FieldName = 'TechCode'
    end
    object qyHedTechName: TStringField
      FieldName = 'TechName'
      Size = 100
    end
    object qyHedOrdinal: TSmallintField
      FieldName = 'Ordinal'
    end
    object qyHedParentID: TStringField
      FieldName = 'ParentID'
    end
    object qyHedTechParam: TStringField
      FieldName = 'TechParam'
      Size = 50
    end
    object qyHedDeptId: TStringField
      FieldName = 'DeptId'
      Size = 50
    end
    object qyHedDeptName: TStringField
      FieldName = 'DeptName'
      Size = 100
    end
    object qyHedRemark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
    object qyHedParentTechName: TStringField
      FieldKind = fkCalculated
      FieldName = 'ParentTechName'
      Size = 50
      Calculated = True
    end
    object qyHedbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyHedCurePrice: TFMTBCDField
      FieldName = 'CurePrice'
      Precision = 18
      Size = 5
    end
    object qyHedSpoilPrice: TFMTBCDField
      FieldName = 'SpoilPrice'
      Precision = 18
      Size = 5
    end
    object qyHedWastePrice: TFMTBCDField
      FieldName = 'WastePrice'
      Precision = 18
      Size = 5
    end
  end
  object frxHed: TfrxDBDataset
    UserName = #22522#30784#24037#24207
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoID=AutoId'
      'TechId='#24037#24207#32534#21495
      'TechCode='#24037#24207#20195#21495
      'TechName='#24037#24207#21517#31216
      'Ordinal='#24207#21495
      'ParentID='#19978#32423#32534#21495
      'TechParam='#24037#24207#23646#24615
      'DeptId='#21152#24037#37096#38376#32534#21495
      'DeptName='#21152#24037#37096#38376#21517#31216
      'Remark='#22791#27880)
    DataSource = dsHed
    BCDToCurrency = False
    Left = 72
    Top = 232
  end
end
