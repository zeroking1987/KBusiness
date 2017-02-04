inherited CNAccNameFM: TCNAccNameFM
  Caption = #20986#32435#36134#25143
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    TabOrder = 3
    inherited cxLabTitle: TcxLabel
      Caption = #20986#32435#36134#25143
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlcxGrd: TPanel
    inherited cxgrd: TcxGrid
      inherited cxgrdtbv: TcxGridDBTableView
        OptionsView.Footer = False
        object cxgrdtbvAccName: TcxGridDBColumn
          Caption = #36134#25143#21517'*'
          DataBinding.FieldName = 'AccName'
          Width = 111
        end
        object cxgrdtbvAccKind: TcxGridDBColumn
          Caption = #36134#25143#31867#22411
          DataBinding.FieldName = 'AccKind'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.Items.Strings = (
            #29616#37329#36134#25143
            #38134#34892#36134#25143)
          Width = 80
        end
        object cxgrdtbvBankName: TcxGridDBColumn
          Caption = #38134#34892#21517#31216
          DataBinding.FieldName = 'BankName'
          PropertiesClassName = 'TcxComboBoxProperties'
          Width = 155
        end
        object cxgrdtbvBankNo: TcxGridDBColumn
          Caption = #38134#34892#36134#21495
          DataBinding.FieldName = 'BankId'
          Width = 198
        end
        object cxgrdtbvCurName: TcxGridDBColumn
          Caption = #24065#31181
          DataBinding.FieldName = 'CurName'
          PropertiesClassName = 'TcxComboBoxProperties'
          Width = 50
        end
        object cxgrdtbvAccSubjectId: TcxGridDBColumn
          Caption = #23545#24212#31185#30446
          DataBinding.FieldName = 'AccSubjectId'
          Width = 80
        end
        object cxgrdtbvRemark: TcxGridDBColumn
          Caption = #22791#27880
          DataBinding.FieldName = 'Remark'
          Width = 80
        end
        object cxgrdtbvMakeDate: TcxGridDBColumn
          Caption = #24405#20837#26102#38388
          DataBinding.FieldName = 'MakeDate'
          Styles.Content = DataFM.cxStyNoEdit
          Width = 68
        end
        object cxgrdtbvMakeManName: TcxGridDBColumn
          Caption = #24405#20837#20154
          DataBinding.FieldName = 'MakeManName'
          Styles.Content = DataFM.cxStyNoEdit
          Width = 58
        end
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      46
      0)
    inherited btAddL: TdxBarLargeButton
      OnClick = btAddLClick
    end
    inherited btDelL: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btFind: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btRefer: TdxBarLargeButton
      Caption = #23548' '#20837
    end
    inherited btCheck: TdxBarLargeButton
      Caption = #35760' '#36134
      Hint = #23545#21333#25454#36827#34892#35760#36134
    end
    inherited btUnCheck: TdxBarLargeButton
      Caption = #21453#35760#36134
      Hint = #23545#21333#25454#36827#34892#21453#35760#36134
    end
  end
  inherited dsHed: TDataSource
    Top = 168
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyHedAfterInsert
    SQL.Strings = (
      'select * from CNAccNameTB'
      '')
    Top = 208
    object qyHedAutoID: TAutoIncField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object qyHedbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyHedAccName: TStringField
      FieldName = 'AccName'
      Size = 50
    end
    object qyHedAccKind: TStringField
      FieldName = 'AccKind'
      Size = 50
    end
    object qyHedBankName: TStringField
      FieldName = 'BankName'
      OnChange = qyHedBankNameChange
      Size = 100
    end
    object qyHedCurName: TStringField
      FieldName = 'CurName'
    end
    object qyHedAccSubjectId: TStringField
      FieldName = 'AccSubjectId'
      Size = 50
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
    end
    object qyHedBankId: TStringField
      FieldName = 'BankId'
      Size = 50
    end
  end
end
