inherited PrvQFM: TPrvQFM
  Caption = #20379#24212#21830#26597#35810
  ClientHeight = 512
  ClientWidth = 973
  ExplicitWidth = 979
  ExplicitHeight = 541
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFind: TPanel
    Width = 973
    Height = 41
    ExplicitWidth = 973
    ExplicitHeight = 41
    inherited cxEdtValue: TcxTextEdit
      ParentShowHint = False
      ShowHint = True
      TextHint = #21487#36755#20837#20379#24212#21830#20195#21495#12289#21517#31216#12289#25340#38899#30721#26597#35810
      OnKeyPress = cxEdtValueKeyPress
      ExplicitWidth = 239
      Width = 239
    end
    object cxchgParam: TcxCheckGroup
      Left = 680
      Top = 1
      Align = alRight
      Alignment = alCenterCenter
      Properties.Columns = 8
      Properties.Items = <
        item
          Caption = #20379#24212#21830
        end
        item
          Caption = #22806#21327#21830
        end
        item
          Caption = #25215#36816#21830
        end>
      Properties.OnChange = btFindClick
      TabOrder = 2
      Height = 39
      Width = 292
    end
  end
  inherited tv: TdxDBTreeView
    Top = 97
    Height = 415
    DataSource = dsHed
    DisplayField = 'PrvKindCode;PrvKindName'
    KeyField = 'PrvKindId'
    ListField = 'PrvKindName'
    ParentField = 'ParentId'
    Visible = False
    OnClick = tvClick
    ParentFont = False
    ExplicitHeight = 415
  end
  inherited cxgrd: TcxGrid
    Top = 97
    Width = 796
    Height = 415
    ExplicitWidth = 796
    ExplicitHeight = 415
    inherited cxgrdtbv: TcxGridDBTableView
      OnDblClick = cxgrdtbvDblClick
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #35760#24405#25968#65306'0'
          Kind = skCount
          FieldName = 'PrvId'
          Column = cxgrdbclmnPrvCode
        end>
      object cxgrdbclmnSelect: TcxGridDBColumn
        Caption = #36873#25321
        DataBinding.FieldName = 'bSelect'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Width = 41
      end
      object cxgrdbclmnPrvCode: TcxGridDBColumn
        Caption = #20379#24212#21830#20195#21495
        DataBinding.FieldName = 'PrvCode'
        Options.Editing = False
        Width = 91
      end
      object cxgrdbclmnPrvPYCode: TcxGridDBColumn
        Caption = #25340#38899#30721
        DataBinding.FieldName = 'PrvPYCode'
        Options.Editing = False
        Width = 84
      end
      object cxgrdbclmnPrvName: TcxGridDBColumn
        Caption = #20379#24212#21830#21517#31216
        DataBinding.FieldName = 'PrvName'
        Options.Editing = False
        Width = 170
      end
      object cxgrdbclmnPrincipal: TcxGridDBColumn
        Caption = #36127#36131#20154
        DataBinding.FieldName = 'Principal'
        Options.Editing = False
        Width = 56
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
        DataBinding.FieldName = 'PrvAddress'
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
      56
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
      'select * from PrvKindTB')
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
    object qyHedPrvKindId: TStringField
      FieldName = 'PrvKindId'
    end
    object qyHedPrvKindCode: TStringField
      FieldName = 'PrvKindCode'
    end
    object qyHedPrvKindName: TStringField
      FieldName = 'PrvKindName'
      Size = 30
    end
    object qyHedPrvParam: TStringField
      FieldName = 'PrvParam'
      Size = 10
    end
  end
  inherited qyFind: TADOQuery
    SQL.Strings = (
      'select * from ProviderTB')
    object blnfldFindbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyFindPrvId: TStringField
      FieldName = 'PrvId'
    end
    object qyFindPrvCode: TStringField
      FieldName = 'PrvCode'
      Size = 30
    end
    object qyFindPrvName: TStringField
      FieldName = 'PrvName'
      Size = 50
    end
    object qyFindPrvShort: TStringField
      FieldName = 'PrvShort'
      Size = 30
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
    object qyFindBankAcc: TStringField
      FieldName = 'BankAcc'
      Size = 30
    end
    object qyFindPosCode: TStringField
      FieldName = 'PosCode'
    end
    object qyFindTaxCode: TStringField
      FieldName = 'TaxCode'
      Size = 100
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
    object qyFindPrvAddress: TStringField
      FieldName = 'PrvAddress'
      Size = 120
    end
    object qyFindRemark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
  end
  object dsDet: TDataSource
    Left = 112
    Top = 200
  end
end
