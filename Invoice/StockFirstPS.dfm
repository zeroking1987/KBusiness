inherited StockFirstFM: TStockFirstFM
  Caption = #24212#20184#26399#21021#30331#35760
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    TabOrder = 3
    inherited cxLabTitle: TcxLabel
      Caption = #24212#20184#26399#21021#30331#35760
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlcxGrd: TPanel
    inherited cxgrd: TcxGrid
      inherited cxgrdtbv: TcxGridDBTableView
        object cxgrdtbvAccountNo: TcxGridDBColumn
          Caption = #24180#26376'*'
          DataBinding.FieldName = 'AccountNo'
          Width = 59
        end
        object cxgrdtbvCustId: TcxGridDBColumn
          Caption = #20379#24212#21830#32534#21495
          DataBinding.FieldName = 'PrvId'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxgrdtbvCustIdPropertiesButtonClick
          Width = 84
        end
        object cxgrdtbvCustName: TcxGridDBColumn
          Caption = #20379#24212#21830#21517#31216
          DataBinding.FieldName = 'PrvName'
          Width = 233
        end
        object cxgrdtbvFirstM: TcxGridDBColumn
          Caption = #26399#21021#37329#39069
          DataBinding.FieldName = 'FirstM'
          Width = 89
        end
        object cxgrdtbvAccountFlag: TcxGridDBColumn
          Caption = #26159#21542#35760#36134
          DataBinding.FieldName = 'AccountFlag'
          Width = 76
        end
        object cxgrdtbvMakeManName: TcxGridDBColumn
          Caption = #21046#21333#20154
          DataBinding.FieldName = 'MakeManName'
          Width = 81
        end
        object cxgrdbclmnMakeDate: TcxGridDBColumn
          Caption = #21046#21333#26085#26399
          DataBinding.FieldName = 'MakeDate'
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
      OnClick = btDelLClick
    end
    inherited btFind: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btRefer: TdxBarLargeButton
      Caption = #23548' '#20837
      Visible = ivAlways
    end
    inherited btCheck: TdxBarLargeButton
      Caption = #35760' '#36134
      Hint = #23545#21333#25454#36827#34892#35760#36134
      Visible = ivAlways
      OnClick = btCheckClick
    end
    inherited btUnCheck: TdxBarLargeButton
      Caption = #21453#35760#36134
      Hint = #23545#21333#25454#36827#34892#21453#35760#36134
      Visible = ivAlways
      OnClick = btUnCheckClick
    end
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyHedAfterInsert
    OnCalcFields = qyHedCalcFields
    SQL.Strings = (
      'select * from StockAccountTB')
    Top = 184
    object qyHedAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qyHedAccountNo: TStringField
      FieldName = 'AccountNo'
    end
    object qyHedAccountFlag: TStringField
      FieldName = 'AccountFlag'
      Size = 30
    end
    object qyHedFirstM: TFMTBCDField
      FieldName = 'FirstM'
      Precision = 18
      Size = 5
    end
    object qyHedBackM: TFMTBCDField
      FieldName = 'BackM'
      Precision = 18
      Size = 5
    end
    object qyHedDebitM: TFMTBCDField
      FieldName = 'DebitM'
      Precision = 18
      Size = 5
    end
    object qyHedCreditM: TFMTBCDField
      FieldName = 'CreditM'
      Precision = 18
      Size = 5
    end
    object qyHedLastM: TFMTBCDField
      FieldName = 'LastM'
      Precision = 18
      Size = 5
    end
    object qyHedMakeMan: TStringField
      FieldName = 'MakeMan'
    end
    object qyHedMakeManName: TStringField
      FieldName = 'MakeManName'
    end
    object qyHedMakeDate: TDateTimeField
      FieldName = 'MakeDate'
    end
    object strngfldHedPrvId: TStringField
      FieldName = 'PrvId'
    end
    object qyHedStockM: TFMTBCDField
      FieldName = 'StockM'
      Precision = 18
      Size = 5
    end
    object strngfldHedPrvName: TStringField
      FieldKind = fkCalculated
      FieldName = 'PrvName'
      Calculated = True
    end
  end
end
