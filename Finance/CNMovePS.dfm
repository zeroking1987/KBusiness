inherited CNMoveFM: TCNMoveFM
  Caption = #20986#32435#36716#36134
  ClientHeight = 520
  ClientWidth = 752
  Position = poDesigned
  ExplicitWidth = 752
  ExplicitHeight = 520
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTitle: TPanel [0]
    Left = 0
    Top = 46
    Width = 752
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -27
    Font.Name = #26999#20307
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object LabPrint: TLabel
      Left = 217
      Top = 1
      Width = 7
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -23
      Font.Name = #21326#25991#34892#26999
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxlabTitle: TcxLabel
      Left = 0
      Top = 0
      Align = alLeft
      AutoSize = False
      Caption = #20986#32435#36716#36134
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
      Height = 37
      Width = 180
      AnchorX = 90
      AnchorY = 19
    end
    object cxLabAudit: TcxLabel
      Left = 585
      Top = 3
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -24
      Style.Font.Name = #21326#25991#34892#26999
      Style.Font.Style = []
      Style.TextColor = clRed
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.Angle = 10
      Transparent = True
      AnchorX = 593
      AnchorY = 20
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 83
    Width = 752
    Height = 437
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 5
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 729
      Height = 437
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel2'
      TabOrder = 0
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = #36716#36134#20449#24687
        TabOrder = 0
        Height = 65
        Width = 729
        object Label1: TLabel
          Left = 371
          Top = 28
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
          Left = 185
          Top = 28
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
        object cxDt: TcxDBDateEdit
          Left = 70
          Top = 24
          DataBinding.DataField = 'BillDate'
          DataBinding.DataSource = dsHed
          TabOrder = 0
          Width = 110
        end
        object cxLabCNMoney: TcxLabel
          Left = 197
          Top = 26
          Caption = #36716#36134#37329#39069
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 249
          AnchorY = 35
        end
        object cxCNMoney: TcxDBCurrencyEdit
          Left = 255
          Top = 24
          DataBinding.DataField = 'CNMoveMoney'
          DataBinding.DataSource = dsHed
          Properties.DecimalPlaces = 5
          Properties.DisplayFormat = ',#.#####;-,#.#####'
          TabOrder = 2
          Width = 110
        end
        object cxLabel4: TcxLabel
          Left = 12
          Top = 26
          Caption = #35760#36134#26085#26399
          Transparent = True
        end
        object cxEdtNo: TcxDBTextEdit
          Left = 583
          Top = 25
          DataBinding.DataField = 'BillNo'
          DataBinding.DataSource = dsHed
          ParentFont = False
          Properties.ReadOnly = True
          Properties.OnChange = cxEdtNoPropertiesChange
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = clBlue
          Style.IsFontAssigned = True
          TabOrder = 4
          Width = 121
        end
        object cxLabel11: TcxLabel
          Left = 551
          Top = 26
          Caption = #21333#21495
          Transparent = True
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 65
        Align = alLeft
        Caption = #36716#20986#20449#24687
        TabOrder = 1
        Height = 372
        Width = 357
        object Label2: TLabel
          Left = 300
          Top = 29
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
          Left = 300
          Top = 68
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
          Left = 36
          Top = 28
          Caption = #25903#20986#36134#25143
          Transparent = True
        end
        object cxOutAccName: TcxDBMRUEdit
          Left = 94
          Top = 26
          DataBinding.DataField = 'OutAccName'
          DataBinding.DataSource = dsHed
          Properties.OnButtonClick = cxOutAccNamePropertiesButtonClick
          Properties.OnChange = cxOutAccNamePropertiesChange
          TabOrder = 1
          Width = 200
        end
        object cxLabel2: TcxLabel
          Left = 36
          Top = 64
          Caption = #25903#20986#39033#30446
          Transparent = True
        end
        object cxOutCNItemName: TcxDBMRUEdit
          Left = 94
          Top = 62
          DataBinding.DataField = 'OutCNItemName'
          DataBinding.DataSource = dsHed
          Properties.OnButtonClick = cxOutCNItemNamePropertiesButtonClick
          Properties.OnChange = cxCNItemNamePropertiesChange
          TabOrder = 3
          Width = 200
        end
        object cxOutLabFZObject: TcxLabel
          Left = 36
          Top = 105
          Caption = #24448#26469#21333#20301
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 88
          AnchorY = 114
        end
        object cxOutFZObject: TcxDBButtonEdit
          Left = 94
          Top = 103
          DataBinding.DataField = 'OutFZObjectName'
          DataBinding.DataSource = dsHed
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxOutFZObjectPropertiesButtonClick
          TabOrder = 5
          Width = 200
        end
        object cxLabel9: TcxLabel
          Left = 60
          Top = 190
          Caption = #25688#35201
          Transparent = True
        end
        object cxOutRemark: TcxDBMemo
          Left = 94
          Top = 172
          DataBinding.DataField = 'OutRemark'
          DataBinding.DataSource = dsHed
          Properties.ScrollBars = ssVertical
          TabOrder = 7
          Height = 52
          Width = 200
        end
        object cxLabel8: TcxLabel
          Left = 48
          Top = 143
          Caption = #32463#25163#20154
          Transparent = True
        end
        object cxOutHandMan: TcxDBButtonEdit
          Left = 94
          Top = 141
          DataBinding.DataField = 'OutHandManName'
          DataBinding.DataSource = dsHed
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxHandManPropertiesButtonClick
          TabOrder = 9
          Width = 200
        end
        object cxButton1: TcxButton
          Left = 292
          Top = 173
          Width = 31
          Height = 50
          Caption = #28155#21152#24120#29992#25688#35201
          TabOrder = 10
          WordWrap = True
          OnClick = cxButton1Click
        end
        object cxLabel10: TcxLabel
          Left = 36
          Top = 240
          Caption = #23545#26041#31185#30446
          Transparent = True
        end
        object cxOutAccSubject: TcxDBButtonEdit
          Left = 94
          Top = 236
          DataBinding.DataField = 'OutAccSubjectId'
          DataBinding.DataSource = dsHed
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          TabOrder = 12
          Width = 200
        end
        object cxLabel1: TcxLabel
          Left = 48
          Top = 275
          Caption = #20973#35777#21495
          Transparent = True
        end
        object cxOutPZNo: TcxDBTextEdit
          Left = 94
          Top = 271
          DataBinding.DataField = 'OutPZNo'
          DataBinding.DataSource = dsHed
          TabOrder = 14
          Width = 200
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 357
        Top = 65
        Align = alLeft
        Caption = #36716#20837#20449#24687
        TabOrder = 2
        Height = 372
        Width = 371
        object Label5: TLabel
          Left = 300
          Top = 29
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
        object Label6: TLabel
          Left = 300
          Top = 68
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
        object cxLabel6: TcxLabel
          Left = 36
          Top = 28
          Caption = #25910#20837#36134#25143
          Transparent = True
        end
        object cxInAccName: TcxDBMRUEdit
          Left = 94
          Top = 26
          DataBinding.DataField = 'InAccName'
          DataBinding.DataSource = dsHed
          Properties.OnButtonClick = cxInAccNamePropertiesButtonClick
          TabOrder = 1
          Width = 200
        end
        object cxLabel7: TcxLabel
          Left = 36
          Top = 64
          Caption = #25910#20837#39033#30446
          Transparent = True
        end
        object cxInCNItemName: TcxDBMRUEdit
          Left = 94
          Top = 62
          DataBinding.DataField = 'InCNItemName'
          DataBinding.DataSource = dsHed
          Properties.OnButtonClick = cxInCNItemNamePropertiesButtonClick
          Properties.OnChange = cxInCNItemNamePropertiesChange
          TabOrder = 3
          Width = 200
        end
        object cxInLabFZObject: TcxLabel
          Left = 36
          Top = 105
          Caption = #24448#26469#21333#20301
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Transparent = True
          AnchorX = 88
          AnchorY = 114
        end
        object cxInFZObject: TcxDBButtonEdit
          Left = 94
          Top = 103
          DataBinding.DataField = 'InFZObjectName'
          DataBinding.DataSource = dsHed
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxInFZObjectPropertiesButtonClick
          TabOrder = 5
          Width = 200
        end
        object cxLabel12: TcxLabel
          Left = 60
          Top = 190
          Caption = #25688#35201
          Transparent = True
        end
        object cxInRemark: TcxDBMemo
          Left = 94
          Top = 172
          DataBinding.DataField = 'InRemark'
          DataBinding.DataSource = dsHed
          Properties.ScrollBars = ssVertical
          TabOrder = 7
          Height = 52
          Width = 200
        end
        object cxLabel13: TcxLabel
          Left = 48
          Top = 141
          Caption = #32463#25163#20154
          Transparent = True
        end
        object cxInHandMan: TcxDBButtonEdit
          Left = 94
          Top = 139
          DataBinding.DataField = 'InHandManName'
          DataBinding.DataSource = dsHed
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxInHandManPropertiesButtonClick
          TabOrder = 9
          Width = 200
        end
        object cxButton2: TcxButton
          Left = 292
          Top = 173
          Width = 31
          Height = 50
          Caption = #28155#21152#24120#29992#25688#35201
          TabOrder = 10
          WordWrap = True
          OnClick = cxButton2Click
        end
        object cxLabel14: TcxLabel
          Left = 36
          Top = 237
          Caption = #23545#26041#31185#30446
          Transparent = True
        end
        object cxInAccSubject: TcxDBButtonEdit
          Left = 94
          Top = 233
          DataBinding.DataField = 'InAccSubjectId'
          DataBinding.DataSource = dsHed
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          TabOrder = 12
          Width = 200
        end
        object cxLabel15: TcxLabel
          Left = 48
          Top = 272
          Caption = #20973#35777#21495
          Transparent = True
        end
        object cxInPZNo: TcxDBTextEdit
          Left = 94
          Top = 268
          DataBinding.DataField = 'InPzNo'
          DataBinding.DataSource = dsHed
          TabOrder = 14
          Width = 200
        end
      end
    end
    object Panel3: TPanel
      Left = 729
      Top = 0
      Width = 23
      Height = 437
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
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
    inherited btAddL: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btDelL: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btFind: TdxBarLargeButton
      OnClick = btFindClick
    end
    inherited btRefer: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btCheck: TdxBarLargeButton
      OnClick = btCheckClick
    end
    inherited btUnCheck: TdxBarLargeButton
      OnClick = btUnCheckClick
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
      'select * from CNMoveTB ')
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
    object qyHedBillNo: TStringField
      FieldName = 'BillNo'
      Size = 50
    end
    object qyHedBillDate: TDateTimeField
      FieldName = 'BillDate'
    end
    object qyHedCNMoveMoney: TFMTBCDField
      FieldName = 'CNMoveMoney'
      Precision = 18
      Size = 5
    end
    object qyHedInCNKind: TStringField
      FieldName = 'InCNKind'
    end
    object qyHedInAccName: TStringField
      FieldName = 'InAccName'
      Size = 50
    end
    object qyHedInCNItemName: TStringField
      FieldName = 'InCNItemName'
      Size = 200
    end
    object qyHedInFZObjectId: TStringField
      FieldName = 'InFZObjectId'
      Size = 50
    end
    object qyHedInFZObjectName: TStringField
      FieldName = 'InFZObjectName'
      Size = 100
    end
    object qyHedInHandMan: TStringField
      FieldName = 'InHandMan'
      Size = 50
    end
    object qyHedInHandManName: TStringField
      FieldName = 'InHandManName'
      Size = 100
    end
    object qyHedInAccSubjectId: TStringField
      FieldName = 'InAccSubjectId'
      Size = 50
    end
    object qyHedInRemark: TStringField
      FieldName = 'InRemark'
      Size = 500
    end
    object qyHedOutCNKind: TStringField
      FieldName = 'OutCNKind'
    end
    object qyHedOutAccName: TStringField
      FieldName = 'OutAccName'
      Size = 50
    end
    object qyHedOutCNItemName: TStringField
      FieldName = 'OutCNItemName'
      Size = 200
    end
    object qyHedOutFZObjectId: TStringField
      FieldName = 'OutFZObjectId'
      Size = 50
    end
    object qyHedOutFZObjectName: TStringField
      FieldName = 'OutFZObjectName'
      Size = 100
    end
    object qyHedOutHandMan: TStringField
      FieldName = 'OutHandMan'
      Size = 50
    end
    object qyHedOutHandManName: TStringField
      FieldName = 'OutHandManName'
      Size = 100
    end
    object qyHedOutAccSubjectId: TStringField
      FieldName = 'OutAccSubjectId'
      Size = 50
    end
    object qyHedOutRemark: TStringField
      FieldName = 'OutRemark'
      Size = 500
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
    object qyHedbBorrow: TBooleanField
      FieldName = 'bBorrow'
    end
    object qyHedOutPzNo: TStringField
      FieldName = 'OutPzNo'
      Size = 50
    end
    object qyHedInPzNo: TStringField
      FieldName = 'InPzNo'
      Size = 50
    end
    object qyHedCarNo: TStringField
      FieldName = 'CarNo'
      Size = 50
    end
    object qyHedDriverName: TStringField
      FieldKind = fkCalculated
      FieldName = 'DriverName'
      Size = 50
      Calculated = True
    end
  end
  object frxHed: TfrxDBDataset
    UserName = #20986#32435#36716#36134
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoID='#33258#21160#32534#21495
      'bSelect='#36873#25321
      'AutoNo='#20869#30721
      'CWZTNo='#36130#21153#24080#22871#32534#21495
      'BillNo='#21333#21495
      'BillDate='#26085#26399
      'CNMoveMoney='#36716#36134#37329#39069
      'InCNKind='#36716#20837#20986#32435#31867#22411
      'InAccName='#36716#20837#20986#32435#36134#25143
      'InCNItemName='#36716#20837#25910#25903#39033#30446
      'InFZObjectId='#36716#20837#36741#21161#23545#35937#32534#21495
      'InFZObjectName='#36716#20837#36741#21161#23545#35937
      'InHandMan='#36716#20837#32463#25163#20154#32534#21495
      'InHandManName='#36716#20837#32463#25163#20154
      'InAccSubjectId='#36716#20837#23545#24212#31185#30446
      'InRemark='#36716#20837#25688#35201
      'OutCNKind='#36716#20986#20986#32435#31867#22411
      'OutAccName='#36716#20986#20986#32435#36134#25143
      'OutCNItemName='#36716#20986#25910#25903#39033#30446
      'OutFZObjectId='#36716#20986#36741#21161#23545#35937#32534#21495
      'OutFZObjectName='#36716#20986#36741#21161#23545#35937
      'OutHandMan='#36716#20986#32463#25163#20154#32534#21495
      'OutHandManName='#36716#20986#32463#25163#20154
      'OutAccSubjectId='#36716#20986#23545#24212#31185#30446
      'OutRemark='#36716#20986#25688#35201
      'PayMode='#20184#27454#26041#24335
      'PayDate='#35760#36134#26085#26399
      'VoucherWord='#20973#35777#23383
      'VoucherNo='#20973#35777#21495
      'VoucherId='#20973#35777#32534#21495
      'YearMon='#24180#26376
      'bPrint='#26159#21542#25171#21360
      'PrintNum='#25171#21360#27425#25968
      'MakeDate='#21046#21333#26085#26399
      'MakeMan='#21046#21333#20154#32534#21495
      'MakeManName='#21046#21333#20154
      'EditMan='#20462#20010#20154#32534#21495
      'EditManName='#20462#20010#20154
      'EditDate='#20462#25913#26085#26399
      'AuditFlag='#23457#26680#26631#24535
      'bMaxAudit='#26159#21542#26368#22823#23457#26680
      'AuditManName='#23457#26680#20154
      'AuditDate='#23457#26680#26085#26399
      'MaxAuditDate='#26368#21518#23457#26680#26085#26399
      'bCheck='#26159#21542#22797#26680
      'CheckMan='#22797#26680#20154#32534#21495
      'CheckManName='#22797#26680#20154
      'CheckDate='#22797#26680#26085#26399
      'bBorrow='#26159#21542#20511#27454
      'OutPzNo='#36716#20986#20973#35777#21495
      'InPzNo='#36716#20837#20973#35777#21495
      'CarNo='#36710#29260#21495
      'DriverName='#39550#39542#21592)
    DataSet = qyHed
    BCDToCurrency = False
    Left = 120
    Top = 48
  end
end
