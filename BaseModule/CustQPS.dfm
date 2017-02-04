inherited CustQFM: TCustQFM
  Caption = #23458#25143#26597#35810
  ClientHeight = 508
  ClientWidth = 892
  ExplicitWidth = 898
  ExplicitHeight = 537
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 892
    Height = 41
    ExplicitWidth = 892
    ExplicitHeight = 41
    inherited cxEdtValue: TcxTextEdit
      Properties.OnChange = btFindClick
      TextHint = #36755#20195#21495#12289#21517#31216#12289#25340#38899#30721#21363#21487#26597#35810
      ExplicitWidth = 231
      Width = 231
    end
  end
  inherited tv: TdxDBTreeView
    Top = 95
    Height = 413
    DataSource = dsHed
    DisplayField = 'CustKindCode;CustKindName'
    KeyField = 'CustKindId'
    ListField = 'CustKindName'
    ParentField = 'ParentId'
    Visible = False
    ParentFont = False
    ExplicitTop = 95
    ExplicitHeight = 413
  end
  inherited cxgrd: TcxGrid
    Top = 95
    Width = 715
    Height = 413
    ExplicitTop = 95
    ExplicitWidth = 715
    ExplicitHeight = 413
    inherited cxgrdtbv: TcxGridDBTableView
      OnDblClick = cxgrdtbvDblClick
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #35760#24405#25968#65306'0'
          Kind = skCount
          FieldName = 'PrvId'
          Column = cxgrdbclmnCustCode
        end>
      object cxgrdbclmnSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Width = 43
      end
      object cxgrdbclmnCustCode: TcxGridDBColumn
        Caption = #23458#25143#20195#21495
        DataBinding.FieldName = 'CustCode'
        Options.Editing = False
        Width = 91
      end
      object cxgrdbclmnCustName: TcxGridDBColumn
        Caption = #23458#25143#21517#31216
        DataBinding.FieldName = 'CustName'
        Options.Editing = False
        Width = 170
      end
      object cxgrdtbvColumn1: TcxGridDBColumn
        Caption = #32852#31995#20154
        DataBinding.FieldName = 'LinkMan'
        Options.Editing = False
        Width = 58
      end
      object cxgrdtbvColumn2: TcxGridDBColumn
        Caption = #25163#26426
        DataBinding.FieldName = 'Mobile'
        Options.Editing = False
        Width = 86
      end
      object cxgrdbclmnTel: TcxGridDBColumn
        Caption = #30005#35805
        DataBinding.FieldName = 'Tel'
        Options.Editing = False
        Width = 57
      end
      object cxgrdbclmnFax: TcxGridDBColumn
        Caption = #20256#30495
        DataBinding.FieldName = 'Fax'
        Options.Editing = False
        Width = 52
      end
      object cxgrdbclmnPrvAddress: TcxGridDBColumn
        Caption = #22320#22336
        DataBinding.FieldName = 'CustAddress'
        Options.Editing = False
        Width = 114
      end
      object cxgrdbclmnRemark: TcxGridDBColumn
        Caption = #22791#27880
        DataBinding.FieldName = 'Remark'
        Options.Editing = False
        Width = 70
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      54
      0)
    inherited dxbrBarMang: TdxBar
      FloatLeft = 808
      FloatTop = 185
      FloatClientWidth = 52
      FloatClientHeight = 560
    end
    inherited btAllSelect: TdxBarLargeButton
      OnClick = btAllSelectClick
    end
    inherited btUnSelect: TdxBarLargeButton
      OnClick = btUnSelectClick
    end
    inherited btFind: TdxBarLargeButton
      OnClick = btFindClick
    end
  end
  inherited qyHed: TADOQuery
    SQL.Strings = (
      'select * from CustKindTB')
    object intgrfldHedAutoId: TIntegerField
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
      Size = 50
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
  inherited qyFind: TADOQuery
    SQL.Strings = (
      'select * from CustTB')
    object qyFindAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qyFindbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyFindCustId: TStringField
      FieldName = 'CustId'
      Size = 30
    end
    object qyFindCustCode: TStringField
      FieldName = 'CustCode'
      Size = 30
    end
    object qyFindCustName: TStringField
      FieldName = 'CustName'
      Size = 100
    end
    object qyFindCustShort: TStringField
      FieldName = 'CustShort'
      Size = 30
    end
    object qyFindCustAddress: TStringField
      FieldName = 'CustAddress'
      Size = 200
    end
    object qyFindSaler: TStringField
      FieldName = 'Saler'
      Size = 50
    end
    object qyFindPrincipal: TStringField
      FieldName = 'Principal'
    end
    object qyFindLinkMan: TStringField
      FieldName = 'LinkMan'
    end
    object qyFindMobile: TStringField
      FieldName = 'Mobile'
      Size = 40
    end
    object qyFindTel: TStringField
      FieldName = 'Tel'
      Size = 40
    end
    object qyFindFax: TStringField
      FieldName = 'Fax'
      Size = 40
    end
    object qyFindBank: TStringField
      FieldName = 'Bank'
      Size = 100
    end
    object qyFindCreditMoney: TFMTBCDField
      FieldName = 'CreditMoney'
      Precision = 18
      Size = 5
    end
    object qyFindTaxRate: TFMTBCDField
      FieldName = 'TaxRate'
      Precision = 18
      Size = 5
    end
    object qyFindBankAcc: TStringField
      FieldName = 'BankAcc'
      Size = 30
    end
    object qyFindPosCode: TStringField
      FieldName = 'PosCode'
    end
    object qyFindTaxCode: TStringField
      FieldName = 'TaxCode'
      Size = 50
    end
    object qyFindPayMode: TStringField
      FieldName = 'PayMode'
      Size = 50
    end
    object qyFindTrafficMode: TStringField
      FieldName = 'TrafficMode'
      Size = 100
    end
    object qyFindE_Mail: TStringField
      FieldName = 'E_Mail'
      Size = 50
    end
    object qyFindWWW: TStringField
      FieldName = 'WWW'
      Size = 50
    end
    object qyFindbStop: TBooleanField
      FieldName = 'bStop'
    end
    object qyFindRemark: TStringField
      FieldName = 'Remark'
      Size = 500
    end
    object qyFindMakeManName: TStringField
      FieldName = 'MakeManName'
    end
    object qyFindMakeDate: TDateTimeField
      FieldName = 'MakeDate'
    end
    object qyFindEditManName: TStringField
      FieldName = 'EditManName'
    end
    object qyFindEditDate: TDateTimeField
      FieldName = 'EditDate'
    end
  end
end
