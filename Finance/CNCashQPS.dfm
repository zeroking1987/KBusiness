inherited CNCashQFM: TCNCashQFM
  Caption = #20986#32435#29616#37329#36134
  ClientHeight = 499
  ClientWidth = 1061
  ExplicitWidth = 1061
  ExplicitHeight = 499
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Width = 1061
    TabOrder = 2
    ExplicitTop = 46
    ExplicitWidth = 1061
    inherited cxLabTitle: TcxLabel
      Caption = #20986#32435#29616#37329#36134
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlFind: TPanel
    Width = 1061
    Height = 82
    TabOrder = 4
    ExplicitTop = 86
    ExplicitWidth = 1061
    ExplicitHeight = 82
    object cxEdtRemark: TcxTextEdit
      Left = 331
      Top = 33
      TabOrder = 0
      TextHint = #21487#36755#20837#37096#20998#25688#35201#25110#25340#38899#30721
      Width = 313
    end
    object cxdtS: TcxDateEdit
      Left = 331
      Top = 4
      Properties.OnEditValueChanged = cxdtSPropertiesEditValueChanged
      TabOrder = 1
      TextHint = #24517#36873
      Width = 121
    end
    object cxdtE: TcxDateEdit
      Left = 466
      Top = 4
      Properties.OnEditValueChanged = cxdtEPropertiesEditValueChanged
      TabOrder = 2
      TextHint = #24517#36873
      Width = 121
    end
    object cxrdgrpAudit: TcxRadioGroup
      Left = 744
      Top = 0
      Alignment = alTopCenter
      Caption = #26159#21542#23457#26680
      Properties.Items = <
        item
          Caption = #26410#23457#26680
        end
        item
          Caption = #24050#23457#26680
        end
        item
          Caption = #25152#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 2
      TabOrder = 3
      Height = 82
      Width = 82
    end
    object btnHand: TcxButtonEdit
      Left = 504
      Top = 60
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnHandPropertiesButtonClick
      Properties.OnChange = btFindClick
      TabOrder = 4
      Width = 140
    end
    object btnFZObject: TcxButtonEdit
      Left = 74
      Top = 60
      ParentShowHint = False
      Properties.Buttons = <
        item
          Caption = #21592
          Hint = #36873#25321#21592#24037
          Kind = bkText
        end
        item
          Caption = #37096
          Hint = #36873#25321#37096#38376
          Kind = bkText
        end
        item
          Caption = #20379
          Hint = #36873#25321#20379#24212#21830
          Kind = bkText
        end
        item
          Caption = #23458
          Default = True
          Hint = #36873#25321#23458#25143
          Kind = bkText
        end>
      Properties.OnButtonClick = btnFZObjectPropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 5
      TextHint = #21487#36755#20837#24448#26469#21333#20301#21517#31216#25110#25340#38899#30721
      Width = 378
    end
    object cxLabel6: TcxLabel
      Left = 297
      Top = 6
      Caption = #26085#26399
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 16
      Top = 6
      Caption = #20986#32435#36134#25143
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 16
      Top = 62
      Caption = #24448#26469#21333#20301
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 16
      Top = 35
      Caption = #25910#25903#39033#30446
      Transparent = True
    end
    object cxrdgrpsFlag: TcxRadioGroup
      Left = 663
      Top = 0
      Alignment = alTopCenter
      Caption = #25910#25903#26041#21521
      Properties.Items = <
        item
          Caption = #25910
        end
        item
          Caption = #25903
        end
        item
          Caption = #25152#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 2
      TabOrder = 10
      Height = 82
      Width = 75
    end
    object cxLabel4: TcxLabel
      Left = 458
      Top = 62
      Caption = #32463#25163#20154
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 297
      Top = 35
      Caption = #25688#35201
      Transparent = True
    end
    object cxAccName: TcxMRUEdit
      Left = 74
      Top = 4
      Properties.OnButtonClick = cxAccNamePropertiesButtonClick
      Properties.OnChange = btFindClick
      TabOrder = 13
      TextHint = #21487#19979#25289#25110#36873#25321#20986#32435#36134#25143
      Width = 207
    end
    object cxCNItem: TcxMRUEdit
      Left = 74
      Top = 33
      Properties.OnButtonClick = cxCNItemPropertiesButtonClick
      TabOrder = 14
      TextHint = #21487#19979#25289#25110#36873#25321#25910#25903#39033#30446
      Width = 207
    end
    object cxLabel7: TcxLabel
      Left = 452
      Top = 6
      Caption = '~'
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clRed
      Style.TextStyle = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object btn1: TcxButton
      Left = 585
      Top = 2
      Width = 30
      Height = 25
      Hint = #36873#25321#19978#26376
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000002300000033000000330000003300000033000000330000
        0033000000330000003300000033000000330000003300000023000000000000
        0000000000005D5656C07D7775FF787471FF767370FF76736FFF767370FF7673
        70FF767370FF767370FF76736FFF767370FF7A7773FF585654C0000000000000
        000000000000877B7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D7A77FF000000000000
        000000000033008841FF16995EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDD
        DDFFDEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C7B77FF000000000000
        0033008745FF4FD8ADFF007F37FFFFFFFFFFFFFFFFFF2C2428FFB6B3B5FF6C6C
        6CFF606060FF6D6D6DFFFFFFFFFFFAFAFAFFFFFFFFFF807C7AFF000000330087
        44FF65D7B3FF00D89FFF00B579FF007F37FF008238FF016336FFFFFFFFFFFFFF
        FFFFFFFFFFFF292929FFFFFFFFFFF7F6F6FFFFFFFFFF83807EFF008A48FF74DA
        BDFF00CD9CFF00CB9AFF00CC9CFF00CE9DFF5CE9CCFF008439FFF6E9EDFF6462
        63FF494949FF7A7A7BFFF9FAF8FFF3F3F2FFFFFFFFFF868381FF008A48FF86DE
        C8FF00C59CFF00C49AFF62DEC6FF5DE0C7FF59E3CBFF008338FFFFFFFFFF5755
        57FFFFFFFFFFFDFDFCFFF2F2F1FFEEEEEDFFFFFFFEFF898783FF000000000087
        43FF9BE0D0FF00BF9EFF00A979FF008037FF008237FF006033FFFFFBFDFF3837
        38FF5F5E5EFF585757FFEEEEEDFFE9E9E8FFFFFEFFFF8C8A87FF000000000000
        0000008842FFA0E4D5FF008337FFFFF4FAFFFFF2F4FFC6BCBEFFF4EFEDFFF3F1
        EEFFF3F1EEFFF0EFEBFFEBE9E6FFE9E7E3FFFFFFFEFF928F89FF000000000000
        000000000000008F3BFF23A55BFFFFF5EAFFFBF3E6FFF9F4E5FFF7F2E2FFF7F2
        E0FFF7F2E1FFF6F2E3FFF5F1E2FFF4EFDFFFFFFFFDFFA39B88FF000000000000
        0000000000000225EBFF5B77ECFF0018E9FF000BB1FF000CB2FF0019E7FF0018
        E3FF0018E6FF000BB1FF000BB2FF0016E6FF526FEFFF0020E7FF000000000000
        0000000000000436F6FF9FB3FEFF97AFFFFFC1BBA4FF81714CFF99B2FFFF9BB2
        FCFF97B0FFFFC1BBA4FF81714CFF98B1FFFF9DB4FCFF0138F1FF000000000000
        0000000000005172D3FF0648FEFF0042FFFFBDB7A4FF978B6EFF0045FFFF0648
        FDFF0043FFFFBDB7A4FF978B6EFF0045FFFF0748FEFF5173D2FF000000000000
        000000000000000000000000000000000000BDB6A2FFB2A68FFF000000000000
        000000000000BDB6A2FFB2A68FFF000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
      OnClick = btn1Click
    end
    object btn2: TcxButton
      Left = 614
      Top = 2
      Width = 30
      Height = 25
      Hint = #36873#25321#19979#26376
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000230000
        0033000000330000003300000033000000330000003300000033000000330000
        0033000000330000003300000023000000000000000000000000585654C07A77
        73FF767370FF76736FFF76736FFF767370FF767370FF767370FF767370FF7673
        70FF777370FF7B7774FF595654C00000000000000000000000007D7A77FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF8B7B7DFF0000000000000000000000007C7B77FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFFDFDEDFFFFFFFFFFFFFFF
        FFFFFFFFFFFF51B588FF00873EFF000000330000000000000000807C7AFFFFFF
        FFFFFBFBFBFFFFFFFFFF232323FFB4B4B4FF6C6C6CFF625F61FF776E72FFFFFF
        FFFFFFFFFFFF007E36FF4DD8ACFF008744FF000000330000000083807EFFFFFF
        FFFFF8F7F7FFFFFFFFFF2A2A2AFFFFFFFFFFFFFFFFFFFFFFFFFF026538FF0082
        38FF007F37FF00B579FF00D79FFF65D7B3FF008744FF00000033868381FFFFFF
        FFFFF5F5F4FFFFFFFFFF2D2D2DFFEEEEECFF656364FF574A50FF00893EFF5DEA
        CDFF00CE9DFF00CC9CFF00CB9AFF00CD9CFF74DABDFF008A48FF898783FFFFFF
        FFFFF3F3F2FFE5E5E4FF303030FFFFFFFFFF595758FFFFFFFFFF00883DFF5AE4
        CBFF5DE0C7FF62DEC6FF00C49AFF00C59CFF86DEC8FF008A48FF8C8A87FFFFFF
        FFFFF0F0EFFF414141FF2D2D2DFFFEFEFDFF3A3839FF6B6165FF016336FF0082
        37FF008036FF00A979FF00BF9EFF9BE0D0FF008743FF00000000928F89FFFFFF
        FFFFECEAE7FFF3F1EEFFC1BFBDFFF3F1EDFFF4F1EEFFF7F2F0FFFCF1F2FFFFF1
        F3FFFFF3F9FF008236FF9FE4D4FF008941FF0000000000000000A39B88FFFFFF
        FDFFF4EFDFFFF7F3E4FFF9F4E5FFF7F3E2FFF7F2E0FFF7F2E1FFF8F2E4FFFAF3
        E5FFFFF5E9FF5FBE82FF009135FF0000000000000000000000000020E7FF526F
        EFFF0015E5FF000AB1FF000CB2FF0019E7FF0018E3FF0018E6FF000BB1FF000C
        B2FF0018E9FF5D72F6FF0122EEFF0000000000000000000000000138F1FF9DB3
        FBFF96AFFFFFC0BAA4FF81714CFF99B2FFFF9BB2FCFF97B0FFFFC1BBA4FF8171
        4CFF99B2FFFF9FB4FDFF0338F2FF0000000000000000000000005173D2FF0648
        FEFF0042FFFFBDB7A4FF978B6EFF0045FFFF0648FDFF0043FFFFBDB7A4FF978B
        6EFF0045FFFF0748FEFF5173D2FF000000000000000000000000000000000000
        000000000000BDB6A2FFB2A68FFF000000000000000000000000BDB6A2FFB2A6
        8FFF000000000000000000000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 17
      OnClick = btn2Click
    end
  end
  inherited cxpgcntrl1: TcxPageControl
    Top = 168
    Width = 1061
    Height = 331
    ExplicitTop = 158
    ExplicitWidth = 1061
    ExplicitHeight = 341
    ClientRectBottom = 329
    ClientRectRight = 1059
    inherited cxtbsht1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 27
      ExplicitWidth = 1053
      ExplicitHeight = 308
      inherited cxgrd: TcxGrid
        Width = 1053
        Height = 308
        ExplicitWidth = 1053
        ExplicitHeight = 308
        inherited cxgrdtbv: TcxGridDBTableView
          OnCustomDrawCell = cxgrdtbvCustomDrawCell
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Format = #21512#35745':0'
              Kind = skCount
            end
            item
              Format = #35760#24405#25968':0'
              Kind = skCount
              Column = cxgrdtbvAccName
            end
            item
              Kind = skSum
              Column = cxgrdtbvDebitM
            end
            item
              Kind = skSum
              Column = cxgrdtbvCreditM
            end>
          DataController.Summary.SummaryGroups = <
            item
              Links = <>
              SummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'AllMoney'
                end
                item
                  Kind = skSum
                  FieldName = 'OrderNum'
                end>
            end>
          object cxgrdtbvAccName: TcxGridDBColumn
            Caption = #20986#32435#36134#25143
            DataBinding.FieldName = 'AccName'
            Width = 108
          end
          object cxgrdtbvBillDate: TcxGridDBColumn
            Caption = #26085#26399
            DataBinding.FieldName = 'BillDate'
            Width = 64
          end
          object cxgrdtbvCNKind: TcxGridDBColumn
            Caption = #26041#21521
            DataBinding.FieldName = 'sFlag'
            Width = 48
          end
          object cxgrdtbvCNItemName: TcxGridDBColumn
            Caption = #20986#32435#39033#30446
            DataBinding.FieldName = 'CNItemName'
            Width = 117
          end
          object cxgrdtbvFZObjectName: TcxGridDBColumn
            Caption = #36741#21161#23545#35937
            DataBinding.FieldName = 'FZObjectName'
            Width = 150
          end
          object cxgrdtbvAccSubjectId: TcxGridDBColumn
            Caption = #23545#26041#31185#30446
            DataBinding.FieldName = 'AccSubjectId'
            Visible = False
            Width = 80
          end
          object cxgrdtbvRemark: TcxGridDBColumn
            Caption = #25688#35201
            DataBinding.FieldName = 'Remark'
            Width = 118
          end
          object cxgrdtbvDebitM: TcxGridDBColumn
            Caption = #25910#20837#37329#39069
            DataBinding.FieldName = 'DebitM'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00;-,0.00'
            Width = 70
          end
          object cxgrdtbvCreditM: TcxGridDBColumn
            Caption = #25903#20986#37329#39069
            DataBinding.FieldName = 'CreditM'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00;-,0.00'
            Width = 71
          end
          object cxgrdtbvLastM: TcxGridDBColumn
            Caption = #32467#23384#37329#39069
            DataBinding.FieldName = 'LastM'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00;-,0.00'
            Width = 73
          end
          object cxgrdtbvHandManName: TcxGridDBColumn
            Caption = #32463#25163#20154
            DataBinding.FieldName = 'HandManName'
            Width = 56
          end
          object cxgrdtbvColumn2: TcxGridDBColumn
            Caption = #20973#35777#21495
            DataBinding.FieldName = 'PZNo'
            Width = 62
          end
          object cxgrdtbvbMaxAudit: TcxGridDBColumn
            Caption = #26159#21542#23457#26680
            DataBinding.FieldName = 'bMaxAudit'
            Width = 70
          end
          object cxgrdtbvAuditManName: TcxGridDBColumn
            Caption = #23457#26680#20154
            DataBinding.FieldName = 'AuditManName'
            Width = 53
          end
          object cxgrdtbvMaxAuditDate: TcxGridDBColumn
            Caption = #23457#26680#26085#26399
            DataBinding.FieldName = 'MaxAuditDate'
            Width = 71
          end
          object cxgrdtbvBillNo: TcxGridDBColumn
            Caption = #21333#21495
            DataBinding.FieldName = 'BillNo'
            Width = 108
          end
          object cxgrdtbvColumn3: TcxGridDBColumn
            Caption = #28304#21333#21495
            DataBinding.FieldName = 'SubJoinNo'
            Width = 72
          end
          object cxgrdtbvbOtherToCN: TcxGridDBColumn
            Caption = #20854#20182#21333#25454#29983#25104
            DataBinding.FieldName = 'bOtherToCN'
            Width = 93
          end
          object cxgrdtbvColumn1: TcxGridDBColumn
            Caption = #21046#21333#20154
            DataBinding.FieldName = 'MakeManName'
            Width = 63
          end
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = #27719' '#24635
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxgrdSum: TcxGrid
        Left = 0
        Top = 0
        Width = 1053
        Height = 308
        Align = alClient
        PopupMenu = pmLayout
        TabOrder = 0
        object cxgrdtbvSum: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxgrdtbvCellDblClick
          DataController.DataSource = dsSum
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Format = #21512#35745':0'
              Kind = skCount
            end
            item
              Kind = skSum
              Column = cxgrdtbvSumFirstM
            end
            item
              Kind = skSum
              Column = cxgrdtbvSumDebitM
            end
            item
              Kind = skSum
              Column = cxgrdtbvSumCreditM
            end
            item
              Kind = skSum
              Column = cxgrdtbvSumLastM
            end>
          DataController.Summary.SummaryGroups = <
            item
              Links = <>
              SummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'AllMoney'
                end
                item
                  Kind = skSum
                  FieldName = 'OrderNum'
                end>
            end>
          OptionsBehavior.CellHints = True
          OptionsBehavior.PullFocusing = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = #24658#25463#36719#20214
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 40
          OnCustomDrawIndicatorCell = cxgrdtbvCustomDrawIndicatorCell
          object cxgrdtbvSumAccName: TcxGridDBColumn
            Caption = #20986#32435#36134#25143
            DataBinding.FieldName = 'AccName'
            Width = 189
          end
          object cxgrdtbvSumFirstM: TcxGridDBColumn
            Caption = #26399#21021#37329#39069
            DataBinding.FieldName = 'FirstM'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00;-,0.00'
            Width = 115
          end
          object cxgrdtbvSumDebitM: TcxGridDBColumn
            Caption = #25910#20837#37329#39069
            DataBinding.FieldName = 'DebitM'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00;-,0.00'
            Width = 99
          end
          object cxgrdtbvSumCreditM: TcxGridDBColumn
            Caption = #25903#20986#37329#39069
            DataBinding.FieldName = 'CreditM'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00;-,0.00'
            Width = 99
          end
          object cxgrdtbvSumLastM: TcxGridDBColumn
            Caption = #32467#23384#37329#39069
            DataBinding.FieldName = 'LastM'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00;-,0.00'
            Width = 97
          end
        end
        object cxgrdlevSum: TcxGridLevel
          GridView = cxgrdtbvSum
        end
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    DockControlHeights = (
      0
      0
      56
      0)
    inherited btAdd: TdxBarLargeButton
      Visible = ivAlways
    end
    inherited btEdit: TdxBarLargeButton
      Visible = ivAlways
    end
    inherited btDel: TdxBarLargeButton
      Visible = ivAlways
    end
    inherited btFind: TdxBarLargeButton
      OnClick = btFindClick
    end
    inherited btCheck: TdxBarLargeButton
      Visible = ivAlways
      OnClick = btCheckClick
    end
    inherited btUnCheck: TdxBarLargeButton
      Visible = ivAlways
      OnClick = btUnCheckClick
    end
    inherited btTemp: TdxBarLargeButton
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
    inherited dxbrcmbPageIndex: TdxBarCombo
      Visible = ivNever
    end
    inherited cxbrdtmPage: TcxBarEditItem
      Visible = ivNever
    end
  end
  inherited dsHed: TDataSource
    Left = 56
    Top = 248
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      
        'exec prCNBillQ '#39'2014-01-01'#39','#39'2014-07-30'#39','#39' and a.AccName in(sele' +
        'ct AccName from CNAccNameTB where AccKind='#39#39#29616#37329#36134#25143#39#39')'#39','#39' and IsNul' +
        'l(a.CNKind,'#39#39#39#39')='#39#39#29616#37329#39#39' '#39',0')
    Left = 56
    Top = 288
    object qyHedAccName: TStringField
      FieldName = 'AccName'
      Size = 100
    end
    object qyHedBillDate: TDateTimeField
      FieldName = 'BillDate'
    end
    object qyHedCNKind: TStringField
      FieldName = 'CNKind'
    end
    object qyHedBillNo: TStringField
      FieldName = 'BillNo'
      Size = 50
    end
    object qyHediFlag: TSmallintField
      FieldName = 'iFlag'
    end
    object qyHedCNItemName: TStringField
      FieldName = 'CNItemName'
      Size = 200
    end
    object qyHedsFlag: TStringField
      FieldName = 'sFlag'
      Size = 10
    end
    object qyHedFZObjectName: TStringField
      FieldName = 'FZObjectName'
      Size = 100
    end
    object qyHedHandManName: TStringField
      FieldName = 'HandManName'
      Size = 100
    end
    object qyHedAccSubjectId: TStringField
      FieldName = 'AccSubjectId'
      Size = 50
    end
    object qyHedRemark: TStringField
      FieldName = 'Remark'
      Size = 500
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
    object qyHedMakeMan: TStringField
      FieldName = 'MakeMan'
      Size = 50
    end
    object qyHedMakeManName: TStringField
      FieldName = 'MakeManName'
      Size = 50
    end
    object qyHedAuditFlag: TSmallintField
      FieldName = 'AuditFlag'
    end
    object qyHedPZNo: TStringField
      FieldName = 'PZNo'
      Size = 50
    end
    object qyHedSubJoinNo: TStringField
      FieldName = 'SubJoinNo'
      Size = 50
    end
    object qyHedbOtherToCN: TBooleanField
      FieldName = 'bOtherToCN'
    end
  end
  inherited frxHed: TfrxDBDataset
    UserName = #20986#32435#29616#37329#36134#26597#35810'-'#26126#32454
    FieldAliases.Strings = (
      'AccName=AccName'
      'BillDate=BillDate'
      'CNKind=CNKind'
      'BillNo=BillNo'
      'iFlag=iFlag'
      'CNItemName=CNItemName'
      'sFlag=sFlag'
      'FZObjectName=FZObjectName'
      'HandManName=HandManName'
      'AccSubjectId=AccSubjectId'
      'Remark='#22791#27880
      'DebitM=DebitM'
      'CreditM=CreditM'
      'LastM=LastM'
      'bMaxAudit=bMaxAudit'
      'AuditManName=AuditManName'
      'AuditDate=AuditDate'
      'MaxAuditDate=MaxAuditDate'
      'MakeMan=MakeMan'
      'MakeManName=MakeManName'
      'AuditFlag=AuditFlag'
      'PZNo=PZNo'
      'SubJoinNo=SubJoinNo'
      'bOtherToCN=bOtherToCN')
    Left = 56
    Top = 328
  end
  inherited pmLayout: TPopupMenu
    object N1: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = #26597#30475#28304#21333
      OnClick = N2Click
    end
  end
  object frxSum: TfrxDBDataset
    UserName = #20986#32435#29616#37329#36134#26597#35810'-'#27719#24635
    CloseDataSource = False
    FieldAliases.Strings = (
      'AccName=AccName'
      'FirstM=FirstM'
      'DebitM=DebitM'
      'CreditM=CreditM'
      'LastM=LastM')
    DataSet = qySum
    BCDToCurrency = False
    Left = 112
    Top = 328
  end
  object qySum: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    AfterScroll = qyHedAfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'exec prCNBillQ '#39'2014-01-01'#39','#39'2014-07-30'#39','#39' and a.AccName in(sele' +
        'ct AccName from CNAccNameTB where AccKind='#39#39#29616#37329#36134#25143#39#39')'#39','#39' and IsNul' +
        'l(a.CNKind,'#39#39#39#39')='#39#39#29616#37329#39#39' '#39',1')
    Left = 112
    Top = 288
    object qySumAccName: TStringField
      FieldName = 'AccName'
      Size = 100
    end
    object qySumFirstM: TFMTBCDField
      FieldName = 'FirstM'
      ReadOnly = True
      Precision = 38
      Size = 5
    end
    object qySumDebitM: TFMTBCDField
      FieldName = 'DebitM'
      ReadOnly = True
      Precision = 38
      Size = 5
    end
    object qySumCreditM: TFMTBCDField
      FieldName = 'CreditM'
      ReadOnly = True
      Precision = 38
      Size = 5
    end
    object qySumLastM: TFMTBCDField
      FieldName = 'LastM'
      ReadOnly = True
      Precision = 38
      Size = 5
    end
  end
  object dsSum: TDataSource
    DataSet = qySum
    Left = 112
    Top = 248
  end
end
