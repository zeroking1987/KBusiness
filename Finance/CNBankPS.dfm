inherited CNBankFM: TCNBankFM
  Align = alNone
  BorderStyle = bsDialog
  Caption = #20986#32435#38134#34892#36134'-'#25805#20316
  ClientHeight = 512
  ClientWidth = 381
  Position = poMainFormCenter
  ExplicitWidth = 387
  ExplicitHeight = 541
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTitle: TPanel [0]
    Left = 0
    Top = 46
    Width = 381
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -27
    Font.Name = #26999#20307
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    ExplicitWidth = 371
    object cxlabTitle: TcxLabel
      Left = 0
      Top = 0
      Align = alClient
      AutoSize = False
      Caption = #20986#32435#38134#34892#36134
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clHotLight
      Style.Font.Height = -21
      Style.Font.Name = #21326#25991#23435#20307
      Style.Font.Style = [fsBold]
      Style.TextColor = 10905136
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      ExplicitWidth = 371
      Height = 30
      Width = 381
      AnchorX = 191
      AnchorY = 15
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 76
    Width = 381
    Height = 436
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 5
    ExplicitWidth = 371
    object Label2: TLabel
      Left = 324
      Top = 15
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
    object Label1: TLabel
      Left = 324
      Top = 49
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
    object Label3: TLabel
      Left = 324
      Top = 83
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
    object Label4: TLabel
      Left = 324
      Top = 176
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
    object cxLabel3: TcxLabel
      Left = 60
      Top = 14
      Caption = #20986#32435#36134#25143
      Transparent = True
    end
    object cxAccName: TcxDBMRUEdit
      Left = 118
      Top = 12
      DataBinding.DataField = 'AccName'
      DataBinding.DataSource = dsHed
      Properties.OnButtonClick = cxAccNamePropertiesButtonClick
      TabOrder = 1
      Width = 200
    end
    object cxLabel2: TcxLabel
      Left = 60
      Top = 79
      Caption = #25910#25903#39033#30446
      Transparent = True
    end
    object cxCNItemName: TcxDBMRUEdit
      Left = 118
      Top = 77
      DataBinding.DataField = 'CNItemName'
      DataBinding.DataSource = dsHed
      Properties.OnButtonClick = cxCNItemNamePropertiesButtonClick
      Properties.OnChange = cxCNItemNamePropertiesChange
      TabOrder = 3
      Width = 200
    end
    object cxDt: TcxDBDateEdit
      Left = 118
      Top = 45
      DataBinding.DataField = 'BillDate'
      DataBinding.DataSource = dsHed
      TabOrder = 4
      Width = 200
    end
    object cxLabCNMoney: TcxLabel
      Left = 60
      Top = 175
      Caption = #20986#32435#37329#39069
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 112
      AnchorY = 184
    end
    object cxRgpsFlag: TcxDBRadioGroup
      Left = 118
      Top = 111
      Alignment = alTopCenter
      Caption = #25910#25903#26041#21521
      DataBinding.DataField = 'sFlag'
      DataBinding.DataSource = dsHed
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = #25910#20837
          Value = #25910
        end
        item
          Caption = #25903#20986
          Value = #25903
        end>
      Properties.OnChange = cxRgpsFlagPropertiesChange
      TabOrder = 6
      Height = 48
      Width = 200
    end
    object cxCNMoney: TcxDBCurrencyEdit
      Left = 118
      Top = 173
      DataBinding.DataField = 'CNMoney'
      DataBinding.DataSource = dsHed
      Properties.DisplayFormat = ',0.00;-,0.00'
      TabOrder = 7
      Width = 200
    end
    object cxLabFZObject: TcxLabel
      Left = 60
      Top = 208
      Caption = #24448#26469#21333#20301
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 112
      AnchorY = 217
    end
    object cxFZObject: TcxDBButtonEdit
      Left = 118
      Top = 206
      DataBinding.DataField = 'FZObjectName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxFZObjectPropertiesButtonClick
      TabOrder = 9
      Width = 200
    end
    object cxLabel9: TcxLabel
      Left = 84
      Top = 294
      Caption = #25688#35201
      Transparent = True
    end
    object cxRemark: TcxDBMemo
      Left = 118
      Top = 276
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.ScrollBars = ssVertical
      TabOrder = 11
      Height = 52
      Width = 200
    end
    object cxLabel8: TcxLabel
      Left = 72
      Top = 242
      Caption = #32463#25163#20154
      Transparent = True
    end
    object cxHandMan: TcxDBButtonEdit
      Left = 118
      Top = 240
      DataBinding.DataField = 'HandManName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxHandManPropertiesButtonClick
      TabOrder = 13
      Width = 200
    end
    object cxLabel10: TcxLabel
      Left = 60
      Top = 376
      Caption = #23545#26041#31185#30446
      Transparent = True
    end
    object cxAccSubject: TcxDBButtonEdit
      Left = 118
      Top = 374
      DataBinding.DataField = 'AccSubjectId'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 15
      Width = 200
    end
    object cxLabel4: TcxLabel
      Left = 60
      Top = 47
      Caption = #35760#36134#26085#26399
      Transparent = True
    end
    object cxButton1: TcxButton
      Left = 316
      Top = 277
      Width = 31
      Height = 50
      Caption = #28155#21152#24120#29992#25688#35201
      TabOrder = 17
      WordWrap = True
      OnClick = cxButton1Click
    end
    object cxLabel1: TcxLabel
      Left = 72
      Top = 342
      Caption = #20973#35777#21495
      Transparent = True
    end
    object cxPZNo: TcxDBTextEdit
      Left = 118
      Top = 340
      DataBinding.DataField = 'PZNo'
      DataBinding.DataSource = dsHed
      TabOrder = 19
      Width = 200
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      46
      0)
    inherited dxbrBarMang: TdxBar
      ShowMark = False
    end
    inherited btDel: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btAddL: TdxBarLargeButton
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
    Left = 8
    Top = 48
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyHedAfterInsert
    SQL.Strings = (
      'select * from CNBillTB where CNKind='#39#38134#34892#39)
    Left = 48
    Top = 48
    object qyHedAutoID: TAutoIncField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object qyHedbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyHedAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 100
    end
    object qyHedCWZTNo: TStringField
      FieldName = 'CWZTNo'
    end
    object qyHedCNKind: TStringField
      FieldName = 'CNKind'
    end
    object qyHedAccName: TStringField
      FieldName = 'AccName'
      Size = 50
    end
    object qyHedBillDate: TDateTimeField
      FieldName = 'BillDate'
    end
    object qyHedBillNo: TStringField
      FieldName = 'BillNo'
      Size = 50
    end
    object qyHedCNItemName: TStringField
      FieldName = 'CNItemName'
      Size = 200
    end
    object qyHediFlag: TSmallintField
      FieldName = 'iFlag'
    end
    object qyHedsFlag: TStringField
      FieldName = 'sFlag'
      Size = 10
    end
    object qyHedCNMoney: TFMTBCDField
      FieldName = 'CNMoney'
      Precision = 18
      Size = 5
    end
    object qyHedFZObjectId: TStringField
      FieldName = 'FZObjectId'
      Size = 50
    end
    object qyHedFZObjectName: TStringField
      FieldName = 'FZObjectName'
      Size = 100
    end
    object qyHedHandMan: TStringField
      FieldName = 'HandMan'
      Size = 50
    end
    object qyHedHandManName: TStringField
      FieldName = 'HandManName'
      Size = 100
    end
    object qyHedAccSubjectId: TStringField
      FieldName = 'AccSubjectId'
      Size = 50
    end
    object qyHedPayMode: TStringField
      FieldName = 'PayMode'
      Size = 50
    end
    object qyHedPayDate: TDateTimeField
      FieldName = 'PayDate'
    end
    object qyHedVoucherWord: TStringField
      FieldName = 'VoucherWord'
      Size = 30
    end
    object qyHedVoucherNo: TStringField
      FieldName = 'VoucherNo'
      Size = 30
    end
    object qyHedVoucherId: TStringField
      FieldName = 'VoucherId'
      Size = 50
    end
    object qyHedYearMon: TStringField
      FieldName = 'YearMon'
      Size = 6
    end
    object qyHedRemark: TStringField
      FieldName = 'Remark'
      Size = 500
    end
    object qyHedCNMoveNo: TStringField
      FieldName = 'CNMoveNo'
      Size = 100
    end
    object qyHedCNMoveId: TStringField
      FieldName = 'CNMoveId'
      Size = 100
    end
    object qyHedbPrint: TBooleanField
      FieldName = 'bPrint'
    end
    object qyHedPrintNum: TSmallintField
      FieldName = 'PrintNum'
    end
    object qyHedMakeDate: TDateTimeField
      FieldName = 'MakeDate'
    end
    object qyHedMakeMan: TStringField
      FieldName = 'MakeMan'
    end
    object qyHedMakeManName: TStringField
      FieldName = 'MakeManName'
      Size = 30
    end
    object qyHedEditMan: TStringField
      FieldName = 'EditMan'
      Size = 30
    end
    object qyHedEditManName: TStringField
      FieldName = 'EditManName'
      Size = 30
    end
    object qyHedEditDate: TDateTimeField
      FieldName = 'EditDate'
    end
    object qyHedAuditFlag: TSmallintField
      FieldName = 'AuditFlag'
    end
    object qyHedbMaxAudit: TBooleanField
      FieldName = 'bMaxAudit'
    end
    object qyHedAuditManName: TStringField
      FieldName = 'AuditManName'
      Size = 50
    end
    object qyHedAuditDate: TStringField
      FieldName = 'AuditDate'
      Size = 100
    end
    object qyHedMaxAuditDate: TDateTimeField
      FieldName = 'MaxAuditDate'
    end
    object qyHedbCheck: TBooleanField
      FieldName = 'bCheck'
    end
    object qyHedCheckMan: TStringField
      FieldName = 'CheckMan'
      Size = 30
    end
    object qyHedCheckManName: TStringField
      FieldName = 'CheckManName'
      Size = 30
    end
    object qyHedCheckDate: TDateTimeField
      FieldName = 'CheckDate'
    end
    object qyHedPZNo: TStringField
      FieldName = 'PZNo'
      Size = 50
    end
  end
end
