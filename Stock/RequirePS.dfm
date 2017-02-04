inherited RequireFM: TRequireFM
  Caption = #35831#36141#21333
  ClientHeight = 539
  ExplicitHeight = 539
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    Height = 32
    TabOrder = 1
    ExplicitHeight = 32
    inherited cxLabTitle: TcxLabel
      Caption = #35831#36141#21333
      Style.IsFontAssigned = True
      ExplicitTop = 0
      ExplicitHeight = 32
      Height = 32
      AnchorX = 97
      AnchorY = 16
    end
    inherited cxLabAudit: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 256
      AnchorY = 17
    end
    inherited cxLabPrint: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 880
      AnchorY = 16
    end
    inherited cxLabTemp1: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 360
      AnchorY = 17
    end
    inherited cxLabTemp2: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 445
      AnchorY = 17
    end
    inherited cxLabTemp3: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 533
      AnchorY = 17
    end
    inherited cxLabTemp4: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 643
      AnchorY = 17
    end
    inherited cxLabTemp5: TcxLabel
      Style.IsFontAssigned = True
      AnchorX = 752
      AnchorY = 17
    end
  end
  inherited pnlInfo: TPanel
    Top = 512
    Height = 27
    TabOrder = 3
    ExplicitTop = 512
    ExplicitHeight = 27
    inherited Label3: TLabel
      Top = 7
      ExplicitTop = 7
    end
    inherited Label4: TLabel
      Left = 246
      Top = 7
      ExplicitLeft = 246
      ExplicitTop = 7
    end
    inherited Label5: TLabel
      Left = 345
      Top = 7
      ExplicitLeft = 345
      ExplicitTop = 7
    end
    inherited Label6: TLabel
      Left = 487
      Top = 7
      ExplicitLeft = 487
      ExplicitTop = 7
    end
    inherited Label7: TLabel
      Left = 605
      Top = 7
      ExplicitLeft = 605
      ExplicitTop = 7
    end
    inherited Label8: TLabel
      Left = 780
      Top = 7
      ExplicitLeft = 780
      ExplicitTop = 7
    end
    inherited Label2: TLabel
      Top = 7
      ExplicitTop = 7
    end
    inherited cxEdtMakeManName: TcxDBTextEdit
      Top = 3
      ExplicitTop = 3
    end
    inherited cxEdtMakeDate: TcxDBTextEdit
      Top = 3
      ExplicitTop = 3
    end
    inherited cxEdtEditManName: TcxDBTextEdit
      Left = 288
      Top = 3
      ExplicitLeft = 288
      ExplicitTop = 3
    end
    inherited cxEdtEditDate: TcxDBTextEdit
      Left = 399
      Top = 3
      ExplicitLeft = 399
      ExplicitTop = 3
    end
    inherited cxEdtAuditManName: TcxDBTextEdit
      Left = 529
      Top = 3
      ExplicitLeft = 529
      ExplicitTop = 3
    end
    inherited cxEdtAuditDate: TcxDBTextEdit
      Left = 659
      Top = 3
      ExplicitLeft = 659
      ExplicitTop = 3
    end
    inherited cxEdtAuditFlag: TcxDBTextEdit
      Left = 834
      Top = 3
      ExplicitLeft = 834
      ExplicitTop = 3
      ExplicitWidth = 42
      Width = 42
    end
    inherited cxLabAuditInfo: TcxLabel
      Left = 882
      Top = 6
      ExplicitLeft = 882
      ExplicitTop = 6
    end
  end
  inherited pnlEdit: TPanel
    Top = 78
    Height = 60
    ExplicitTop = 78
    ExplicitHeight = 60
    object Label11: TLabel [0]
      Left = 39
      Top = 8
      Width = 36
      Height = 13
      Caption = #35831#36141#20154
    end
    object Label12: TLabel [1]
      Left = 210
      Top = 8
      Width = 48
      Height = 13
      Caption = #35831#36141#37096#38376
    end
    object lbl1: TLabel [2]
      Left = 51
      Top = 39
      Width = 24
      Height = 13
      Caption = #22791#27880
    end
    object cxBtReqMan: TcxDBButtonEdit [3]
      Left = 81
      Top = 4
      DataBinding.DataField = 'ReqManName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxBt1PropertiesButtonClick
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      TabOrder = 0
      Width = 121
    end
    object cxBt2: TcxDBButtonEdit [4]
      Left = 270
      Top = 4
      DataBinding.DataField = 'DeptName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxBt2PropertiesButtonClick
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      TabOrder = 1
      Width = 121
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 402
      Top = 3
      TabOrder = 2
      ExplicitLeft = 402
      ExplicitTop = 3
      ExplicitHeight = 53
      Height = 53
      inherited Label9: TLabel
        Top = 31
        ExplicitTop = 31
      end
      inherited cxEdtNo: TcxDBTextEdit
        DataBinding.DataField = 'ReqNO'
        Style.IsFontAssigned = True
      end
      inherited cxdt: TcxDBDateEdit
        Top = 28
        DataBinding.DataField = 'ReqDate'
        ExplicitTop = 28
      end
    end
    object cxMoRemark: TcxDBMemo
      Left = 81
      Top = 35
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.ScrollBars = ssVertical
      TabOrder = 3
      Visible = False
      Height = 21
      Width = 310
    end
    object cxPupEdtRemark: TcxDBPopupEdit
      Left = 81
      Top = 35
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.PopupControl = cxMoRemark
      TabOrder = 4
      Width = 310
    end
  end
  inherited pnlBody: TPanel
    Top = 138
    Height = 374
    ExplicitTop = 138
    ExplicitHeight = 374
    inherited cxPgc: TcxPageControl
      Height = 374
      ExplicitHeight = 374
      ClientRectBottom = 368
      inherited cxtbsht1: TcxTabSheet
        ExplicitHeight = 341
        inherited cxgrd: TcxGrid
          Height = 341
          ExplicitHeight = 341
          inherited cxgrdtbv: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = cxgrdbclmnReqNum
              end>
            OptionsData.Editing = True
            object cxgrdbclmnItemCode: TcxGridDBColumn
              Caption = #20135#21697#20195#21495
              DataBinding.FieldName = 'ItemCode'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdbclmnItemCodePropertiesButtonClick
              Width = 80
            end
            object cxgrdbclmnItemPYCode: TcxGridDBColumn
              Caption = #25340#38899#30721
              DataBinding.FieldName = 'ItemPYCode'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 500
              Properties.KeyFieldNames = 'ItemPYCode'
              Properties.ListColumns = <
                item
                  Caption = #25340#38899#30721
                  Width = 80
                  FieldName = 'ItemPYCode'
                end
                item
                  Caption = #20135#21697#20195#21495
                  Width = 150
                  FieldName = 'ItemCode'
                end
                item
                  Caption = #20135#21697#21517#31216
                  Width = 150
                  FieldName = 'ItemName'
                end
                item
                  Caption = #35268#26684
                  Width = 120
                  FieldName = 'ItemSpc'
                end>
              Properties.ListSource = dsPyCode
              Properties.MaxLength = 200
              Properties.OnValidate = cxgrdbclmnItemPYCodePropertiesValidate
              Visible = False
              Width = 64
            end
            object cxgrdbclmnItemName: TcxGridDBColumn
              Caption = #20135#21697#21517#31216
              DataBinding.FieldName = 'ItemName'
              Options.Editing = False
              Width = 189
            end
            object cxgrdbclmnItemSpc: TcxGridDBColumn
              Caption = #35268#26684
              DataBinding.FieldName = 'ItemSpc'
              Options.Editing = False
              Width = 59
            end
            object cxgrdbclmnItemUnit: TcxGridDBColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'ItemUnit'
              Options.Editing = False
              Width = 51
            end
            object cxgrdbclmnSubUnit: TcxGridDBColumn
              Caption = #21103#21333#20301
              DataBinding.FieldName = 'SubUnit'
              Options.Editing = False
              Width = 59
            end
            object cxgrdbclmnExchRate: TcxGridDBColumn
              Caption = #36716#21270#29575
              DataBinding.FieldName = 'ExchRate'
              Options.Editing = False
              Width = 62
            end
            object cxgrdbclmnProType: TcxGridDBColumn
              Caption = #23646#24615
              DataBinding.FieldName = 'ProType'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdbclmnProTypePropertiesButtonClick
              Width = 98
            end
            object cxgrdbclmnReqNum: TcxGridDBColumn
              Caption = #25968#37327'*'
              DataBinding.FieldName = 'ReqNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnReqNumPropertiesValidate
              Width = 84
            end
            object cxgrdbclmnSubNum: TcxGridDBColumn
              Caption = #21103#25968#37327
              DataBinding.FieldName = 'SubNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnSubNumPropertiesValidate
              Width = 62
            end
            object cxgrdtbvColumn1: TcxGridDBColumn
              Caption = #38656#27714#26085#26399
              DataBinding.FieldName = 'NeedDate'
              Width = 83
            end
            object cxgrdbclmnRemark: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 106
            end
          end
        end
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    Left = 920
    Top = 54
    DockControlHeights = (
      0
      0
      46
      0)
    inherited btAddL: TdxBarLargeButton
      OnClick = btAddLClick
    end
    inherited btDelL: TdxBarLargeButton
      OnClick = btDelLClick
    end
    inherited btFind: TdxBarLargeButton
      OnClick = btFindClick
    end
    inherited btRefer: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btUnCheck: TdxBarLargeButton
      OnClick = btUnCheckClick
    end
  end
  inherited PupBpm: TdxBarPopupMenu
    Left = 880
    Top = 54
  end
  inherited dsHed: TDataSource
    Left = 200
    Top = 54
  end
  inherited qyHed: TADOQuery
    AfterInsert = qyHedAfterInsert
    OnCalcFields = qyHedCalcFields
    SQL.Strings = (
      'select * from RequireHDTB')
    Left = 240
    Top = 54
    object qyHedReqNO: TStringField
      FieldName = 'ReqNO'
    end
    object qyHedReqDate: TDateTimeField
      FieldName = 'ReqDate'
    end
    object qyHedDeptId: TStringField
      FieldName = 'DeptId'
    end
    object qyHedReqKind: TSmallintField
      FieldName = 'ReqKind'
    end
    object qyHedReqMan: TStringField
      FieldName = 'ReqMan'
    end
    object qyHedSubjoinNo: TStringField
      FieldName = 'SubjoinNo'
    end
    object blnfldHedbPrint: TBooleanField
      FieldName = 'bPrint'
    end
    object qyHedRemark: TStringField
      FieldName = 'Remark'
      Size = 300
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
    object blnfldHedbMaxAudit: TBooleanField
      FieldName = 'bMaxAudit'
    end
    object qyHedAuditDate: TStringField
      FieldName = 'AuditDate'
      Size = 100
    end
    object qyHedMaxAuditDate: TDateTimeField
      FieldName = 'MaxAuditDate'
    end
    object qyHedDeptName: TStringField
      FieldKind = fkCalculated
      FieldName = 'DeptName'
      Calculated = True
    end
    object qyHedTheme: TStringField
      FieldName = 'Theme'
      Size = 200
    end
    object qyHedReqManName: TStringField
      FieldKind = fkCalculated
      FieldName = 'ReqManName'
      Calculated = True
    end
    object qyHedAuditManName: TStringField
      FieldName = 'AuditManName'
      Size = 50
    end
    object smlntfldHedPrintNum: TSmallintField
      FieldName = 'PrintNum'
      OnChange = smlntfldHedPrintNumChange
    end
    object blnfldHedbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyHedAutoID: TLargeintField
      FieldName = 'AutoID'
      ReadOnly = True
    end
  end
  inherited qyDet: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyDetAfterInsert
    SQL.Strings = (
      'select * from RequireDTTB')
    object qyDetAutoID: TLargeintField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object qyDetbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyDetReqNo: TStringField
      FieldName = 'ReqNo'
    end
    object qyDetItemId: TStringField
      FieldName = 'ItemId'
      OnChange = qyDetItemIDChange
      Size = 50
    end
    object qyDetItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 50
    end
    object qyDetItemPYCode: TStringField
      FieldName = 'ItemPYCode'
      Size = 50
    end
    object qyDetProType: TStringField
      FieldName = 'ProType'
      Size = 100
    end
    object qyDetReqNum: TFMTBCDField
      FieldName = 'ReqNum'
      Precision = 19
      Size = 6
    end
    object qyDetSubNum: TFMTBCDField
      FieldName = 'SubNum'
      Precision = 19
      Size = 6
    end
    object qyDetLastNum: TFMTBCDField
      FieldName = 'LastNum'
      Precision = 19
      Size = 6
    end
    object qyDetRemark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
    object qyDetItemName: TStringField
      FieldName = 'ItemName'
      Size = 100
    end
    object qyDetItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 100
    end
    object qyDetItemPic: TStringField
      FieldName = 'ItemPic'
      Size = 100
    end
    object qyDetItemUnit: TStringField
      FieldName = 'ItemUnit'
      Size = 10
    end
    object qyDetSubUnit: TStringField
      FieldName = 'SubUnit'
      Size = 10
    end
    object qyDetiFlag: TSmallintField
      FieldName = 'iFlag'
    end
    object qyDetExchRate: TFMTBCDField
      FieldName = 'ExchRate'
      Precision = 18
      Size = 9
    end
    object qyDetNeedDate: TDateTimeField
      FieldName = 'NeedDate'
    end
    object strngfldDetAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 100
    end
    object qyDetColor: TStringField
      FieldName = 'Color'
      Size = 50
    end
    object qyDetProOrderNo: TStringField
      FieldName = 'ProOrderNo'
      Size = 100
    end
    object qyDetProOrderId: TStringField
      FieldName = 'ProOrderId'
      Size = 100
    end
  end
  inherited frxHed: TfrxDBDataset
    UserName = #35831#36141#21333#20027#34920
    FieldAliases.Strings = (
      'ReqNO=ReqNO'
      'ReqDate=ReqDate'
      'DeptId=DeptId'
      'ReqKind=ReqKind'
      'ReqMan=ReqMan'
      'SubjoinNo=SubjoinNo'
      'bPrint=bPrint'
      'Remark=Remark'
      'MakeDate=MakeDate'
      'MakeMan=MakeMan'
      'MakeManName=MakeManName'
      'EditMan=EditMan'
      'EditManName=EditManName'
      'EditDate=EditDate'
      'AuditFlag=AuditFlag'
      'bMaxAudit=bMaxAudit'
      'AuditDate=AuditDate'
      'MaxAuditDate=MaxAuditDate'
      'DeptName=DeptName'
      'Theme=Theme'
      'ReqManName=ReqManName'
      'AuditManName=AuditManName'
      'PrintNum=PrintNum'
      'bSelect=bSelect'
      'AutoID=AutoID')
    Left = 280
    Top = 54
  end
  inherited frxDet: TfrxDBDataset
    UserName = #35831#36141#21333#20174#34920
    FieldAliases.Strings = (
      'AutoID=AutoID'
      'bSelect=bSelect'
      'ReqNo=ReqNO'
      'ItemId=ItemID'
      'ItemCode=ItemCode'
      'ItemPYCode=ItemPYCode'
      'ProType=ProType'
      'ReqNum=ReqNum'
      'SubNum=SubNum'
      'LastNum=LastNum'
      'Remark=Remark'
      'ItemName=ItemName'
      'ItemSpc=ItemSpc'
      'ItemPic=ItemPic'
      'ItemUnit=ItemUnit'
      'SubUnit=SubUnit'
      'iFlag=iFlag'
      'ExchRate=ExchRate'
      'NeedDate=NeedDate'
      'AutoNo=AutoNo'
      'Color=Color'
      'ProOrderNo=ProOrderNo'
      'ProOrderId=ProOrderId')
    Top = 320
  end
  object dsPyCode: TDataSource
    DataSet = qyPyCode
    Left = 120
    Top = 256
  end
  object qyPyCode: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select ItemId,ItemCode,ItemPYCode,ItemName,ItemSpc from ItemTB')
    Left = 120
    Top = 288
    object qyPyCodeItemId: TStringField
      FieldName = 'ItemId'
      Size = 30
    end
    object qyPyCodeItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 30
    end
    object qyPyCodeItemPYCode: TStringField
      FieldName = 'ItemPYCode'
      Size = 50
    end
    object qyPyCodeItemName: TStringField
      FieldName = 'ItemName'
      Size = 200
    end
    object qyPyCodeItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 100
    end
  end
end
