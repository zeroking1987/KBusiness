inherited CustFM: TCustFM
  Left = 675
  Top = 231
  Caption = #23458#25143#36164#26009
  ClientHeight = 520
  ClientWidth = 1023
  ExplicitWidth = 1023
  ExplicitHeight = 520
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    Width = 1023
    ExplicitWidth = 1023
    inherited cxLabTitle: TcxLabel
      Caption = #23458#25143#36164#26009
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  object pnlEdit: TPanel [1]
    Left = 0
    Top = 76
    Width = 1023
    Height = 166
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    Visible = False
    object cxPgc1: TcxPageControl
      Left = 0
      Top = 0
      Width = 1023
      Height = 166
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxtbsht1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 160
      ClientRectLeft = 2
      ClientRectRight = 1017
      ClientRectTop = 27
      object cxtbsht1: TcxTabSheet
        Caption = #23458#25143#36164#26009
        ImageIndex = 0
        object lbl1: TLabel
          Left = 31
          Top = 8
          Width = 27
          Height = 13
          Caption = #32534' '#21495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl2: TLabel
          Left = 236
          Top = 8
          Width = 24
          Height = 13
          Caption = #20195#21495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl3: TLabel
          Left = 431
          Top = 8
          Width = 24
          Height = 13
          Caption = #21517#31216
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl5: TLabel
          Left = 419
          Top = 57
          Width = 36
          Height = 13
          Caption = #36127#36131#20154
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl6: TLabel
          Left = 419
          Top = 33
          Width = 36
          Height = 13
          Caption = #32852#31995#20154
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl10: TLabel
          Left = 34
          Top = 33
          Width = 24
          Height = 13
          Caption = #22320#22336
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl11: TLabel
          Left = 614
          Top = 33
          Width = 24
          Height = 13
          Caption = #25163#26426
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl13: TLabel
          Left = 10
          Top = 83
          Width = 48
          Height = 13
          Caption = #24320#25143#38134#34892
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl14: TLabel
          Left = 617
          Top = 57
          Width = 24
          Height = 13
          Caption = #20256#30495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl15: TLabel
          Left = 236
          Top = 83
          Width = 24
          Height = 13
          Caption = #36134#21495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl16: TLabel
          Left = 226
          Top = 57
          Width = 34
          Height = 13
          Caption = 'E - Mail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl17: TLabel
          Left = 34
          Top = 108
          Width = 24
          Height = 13
          Caption = #32593#22336
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl18: TLabel
          Left = 431
          Top = 99
          Width = 24
          Height = 13
          Caption = #22791#27880
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 211
          Top = 8
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
          Left = 791
          Top = 8
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
        object Label11: TLabel
          Left = 22
          Top = 57
          Width = 36
          Height = 13
          Caption = #19994#21153#21592
        end
        object cxCustId: TcxDBTextEdit
          Left = 66
          Top = 4
          DataBinding.DataField = 'CustId'
          DataBinding.DataSource = dsHed
          Style.Color = 14145495
          TabOrder = 0
          Width = 143
        end
        object cxdbEdt1: TcxDBTextEdit
          Left = 265
          Top = 4
          DataBinding.DataField = 'CustCode'
          DataBinding.DataSource = dsHed
          TabOrder = 1
          Width = 149
        end
        object cxEdtCustName: TcxDBTextEdit
          Left = 461
          Top = 4
          DataBinding.DataField = 'CustName'
          DataBinding.DataSource = dsHed
          TabOrder = 2
          Width = 321
        end
        object cxdbEdt4: TcxDBTextEdit
          Left = 461
          Top = 53
          DataBinding.DataField = 'Principal'
          DataBinding.DataSource = dsHed
          TabOrder = 3
          Width = 135
        end
        object cxdbEdt5: TcxDBTextEdit
          Left = 461
          Top = 29
          DataBinding.DataField = 'LinkMan'
          DataBinding.DataSource = dsHed
          TabOrder = 4
          Width = 135
        end
        object cxdbEdt6: TcxDBTextEdit
          Left = 66
          Top = 29
          DataBinding.DataField = 'CustAddress'
          DataBinding.DataSource = dsHed
          TabOrder = 5
          Width = 348
        end
        object cxdbEdt7: TcxDBTextEdit
          Left = 647
          Top = 29
          DataBinding.DataField = 'Mobile'
          DataBinding.DataSource = dsHed
          TabOrder = 6
          Width = 135
        end
        object cxdbEdt9: TcxDBTextEdit
          Left = 647
          Top = 53
          DataBinding.DataField = 'Fax'
          DataBinding.DataSource = dsHed
          TabOrder = 7
          Width = 135
        end
        object cxdbEdt10: TcxDBTextEdit
          Left = 265
          Top = 79
          DataBinding.DataField = 'BankAcc'
          DataBinding.DataSource = dsHed
          TabOrder = 8
          Width = 149
        end
        object cxdbEdt11: TcxDBTextEdit
          Left = 265
          Top = 53
          DataBinding.DataField = 'E_Mail'
          DataBinding.DataSource = dsHed
          TabOrder = 9
          Width = 149
        end
        object cxdbEdt12: TcxDBTextEdit
          Left = 66
          Top = 104
          DataBinding.DataField = 'WWW'
          DataBinding.DataSource = dsHed
          TabOrder = 10
          Width = 143
        end
        object cbbBank: TcxDBComboBox
          Left = 66
          Top = 79
          DataBinding.DataField = 'Bank'
          DataBinding.DataSource = dsHed
          TabOrder = 11
          Width = 143
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 328
          Top = 105
          Caption = #26159#21542#20572#27490
          DataBinding.DataField = 'bStop'
          DataBinding.DataSource = dsHed
          Properties.Alignment = taRightJustify
          Properties.NullStyle = nssUnchecked
          TabOrder = 12
          Transparent = True
          Width = 86
        end
        object cxBtReqMan: TcxDBButtonEdit
          Left = 66
          Top = 53
          DataBinding.DataField = 'Saler'
          DataBinding.DataSource = dsHed
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = False
          Properties.OnButtonClick = cxBtReqManPropertiesButtonClick
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          TabOrder = 13
          Width = 143
        end
        object cxDBMemo1: TcxDBMemo
          Left = 461
          Top = 79
          DataBinding.DataField = 'Remark'
          DataBinding.DataSource = dsHed
          Properties.ScrollBars = ssVertical
          TabOrder = 14
          Height = 52
          Width = 321
        end
      end
    end
  end
  inherited pnlcxGrd: TPanel
    Top = 242
    Width = 1023
    Height = 278
    TabOrder = 6
    ExplicitTop = 242
    ExplicitWidth = 1023
    ExplicitHeight = 278
    inherited cxgrd: TcxGrid
      Top = 30
      Width = 1023
      Height = 248
      ExplicitTop = 30
      ExplicitWidth = 1023
      ExplicitHeight = 248
      inherited cxgrdtbv: TcxGridDBTableView
        OnDblClick = cxgrdtbvDblClick
        DataController.Summary.FooterSummaryItems = <
          item
          end
          item
            Format = #35760#24405#25968#65306'0'
            Kind = skCount
            FieldName = 'AutoId'
          end>
        OptionsView.NoDataToDisplayInfoText = #24658#21019#36719#20214
        object cxgrdtbvCustCode: TcxGridDBColumn
          Caption = #20195#21495
          DataBinding.FieldName = 'CustCode'
          Width = 53
        end
        object cxgrdtbvCustName: TcxGridDBColumn
          Caption = #23458#25143#21517#31216
          DataBinding.FieldName = 'CustName'
          Width = 150
        end
        object cxgrdtbvCustAddress: TcxGridDBColumn
          Caption = #22320#22336
          DataBinding.FieldName = 'CustAddress'
          Width = 120
        end
        object cxgrdtbvSaler: TcxGridDBColumn
          Caption = #19994#21153#21592
          DataBinding.FieldName = 'Saler'
          Width = 52
        end
        object cxgrdtbvPrincipal: TcxGridDBColumn
          Caption = #36127#36131#20154
          DataBinding.FieldName = 'Principal'
          Width = 57
        end
        object cxgrdtbvLinkMan: TcxGridDBColumn
          Caption = #32852#31995#20154
          DataBinding.FieldName = 'LinkMan'
          Width = 61
        end
        object cxgrdtbvMobile: TcxGridDBColumn
          Caption = #25163#26426
          DataBinding.FieldName = 'Mobile'
          Width = 90
        end
        object cxgrdtbvFax: TcxGridDBColumn
          Caption = #20256#30495
          DataBinding.FieldName = 'Fax'
          Width = 72
        end
        object cxgrdtbvBank: TcxGridDBColumn
          Caption = #24320#25143#38134#34892
          DataBinding.FieldName = 'Bank'
          Visible = False
          Width = 93
        end
        object cxgrdtbvBankAcc: TcxGridDBColumn
          Caption = #38134#34892#36134#21495
          DataBinding.FieldName = 'Bankacc'
          Visible = False
          Width = 89
        end
        object cxgrdtbvE_Mail: TcxGridDBColumn
          DataBinding.FieldName = 'E_Mail'
          Width = 78
        end
        object cxgrdtbvWWW: TcxGridDBColumn
          Caption = #32593#22336
          DataBinding.FieldName = 'WWW'
          Visible = False
          Width = 79
        end
        object cxgrdtbvbStop: TcxGridDBColumn
          Caption = #20572#27490
          DataBinding.FieldName = 'bStop'
          Visible = False
          Width = 67
        end
        object cxgrdtbvRemark: TcxGridDBColumn
          Caption = #22791#27880
          DataBinding.FieldName = 'Remark'
          Width = 120
        end
      end
    end
    object pnl2: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1017
      Height = 24
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object cxCust: TcxTextEdit
        Left = 76
        Top = 2
        Properties.OnChange = cxCustPropertiesChange
        TabOrder = 0
        TextHint = #36755#20195#21495#12289#21517#31216#12289#25340#38899#30721#21363#21487#26597#35810
        Width = 337
      end
      object cxlbl1: TcxLabel
        Left = 18
        Top = 4
        Caption = #26597#35810#26465#20214
        Transparent = True
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    Left = 896
    DockControlHeights = (
      0
      0
      46
      0)
    inherited btAddL: TdxBarLargeButton
      Visible = ivNever
      OnClick = btAddLClick
    end
    inherited btDelL: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btFind: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btExport: TdxBarLargeButton
      Caption = 'EXCEL'
      Visible = ivAlways
      ButtonStyle = bsCheckedDropDown
      DropDownMenu = dxBarPopupMenu1
      OnClick = nil
    end
    object dxBarButton1: TdxBarButton
      Caption = #23548' '#20986
      Category = 0
      Hint = #23548' '#20986
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000303
        0306070707140000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000008000000106161
        619B0B0B0B420000000E00000004000000000000000000000000000000000000
        00000000000000000000000000000000000000000018000000381616165A8785
        84E10000003C000000340000002A000000180000000400000000000000000000
        000000000000000000001B392F3E56837289467A67951B473878414745B12E2D
        2D8B000000300000002C0000002A000000260000001000000000000000000000
        0000000000000309070A6FE3BBF593F3D0FF68EBBDFF4DE5B3FF3AD5A3FF1A6F
        52A301090630000000220000001E000000160000000600000000000000000000
        00000000000007120E149AF3D3FFADF5DBFF6DEBC0FF41E1ADFF29D39BFF18B8
        80FF0E8C5EE101180F3C00000010000000040000000000000000000000000000
        0000000000000000000077C0A5C99EF2D5FF64E5B9FF34D19EFF20BE89FF0FA7
        70FF02955CFF0C885ADF00030206000000000000000000000000000000000000
        000000000000000000001427202A7BE8C2F965EABDFF2ACA95FF0E9564FF078D
        5BFF0C9863FF19A470FB010D0914000000000000000000000000000000000000
        00000000000000000000103227388AF0CCFF47E2AFFF18B07BFF0F9864FF0C84
        57FF159767F704432B6800000000000000000000000000000000000000000000
        0000020403042A4A3E4E56B393C161E9BBFF30D29DFF0A9A64FF0F7851C1002A
        1A48000C08140000000000000000000000000000000000000000000000000409
        070A61BC9CC99CF4D4FF7AEDC6FF42DDABFF21C08AFF079A63FF022D1D480000
        000000000000000000000000000000000000000000000000000000000000254E
        40546EEDC0FF6BEDBFFF68ECBEFF63E9BBFF3ECD9CFF0A9C65FF052C1D480000
        000000000000000000000000000000000000000000000000000000000000060F
        0C104EC69DD958E8B7FF56E7B6FF53E6B5FF50E6B4FF40D4A1FF117852B90000
        0000000000000000000000000000000000000000000000000000000000000000
        000007140F16319B77AD49E3B1FF51E4B4FF48E3B1FF3CE0ABFF26A67BCB0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000B2A20302B7D638D3DAB88C32EAD84C90E4735540000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = #23548' '#20837
      Category = 0
      Hint = #23548' '#20837
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000303
        0306070707140000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000008000000106161
        619B0B0B0B420000000E00000004000000000000000000000000000000000000
        00000000000000000000000000000000000000000018000000381616165A8785
        84E10000003C000000340000002A000000180000000400000000000000000000
        000000000000000000003D39273E88826789817A5A954D472D78484743B12E2D
        2D8B000000300000002C0000002A000000260000001000000000000000000000
        0000000000000A09050AF3E39DF5FEF2B9FFFDEB9BFFFBE68AFFEED778FF7F6F
        3BA30A080430000000220000001E000000160000000600000000000000000000
        00000000000014120B14FEF2BDFFFEF4C9FFFDEB9FFFFAE381FFF0D56DFFD7B6
        55FFA9893CE11E170A3C00000010000000040000000000000000000000000000
        00000000000000000000C8BF93C9FEF2C0FFF7E597FFEAD373FFDBBF5EFFC8A5
        47FFB99037FFAA863EDF04030206000000000000000000000000000000000000
        000000000000000000002A271B2AF7E8A6F9FCEA9AFFE5CB69FFB29341FFAB89
        38FFBB943FFFCCA255FB110D0714000000000000000000000000000000000000
        0000000000000000000037321E38FDF0B3FFF9E385FFCEAF52FFBC9543FFA180
        38FFBA9449F756421F6800000000000000000000000000000000000000000000
        0000040402044E49364EBFB37BC1FCE997FFECD370FFBA973EFF95773AC13428
        0F480F0C05140000000000000000000000000000000000000000000000000A09
        060AC7BC84C9FEF2BEFFFDEDA8FFF5DF80FFDDC15FFFBD973EFF3A2D15480000
        000000000000000000000000000000000000000000000000000000000000544E
        3554FDECA0FFFDEC9EFFFDEB9CFFFBE998FFE6CD76FFBD983FFF362B13480000
        000000000000000000000000000000000000000000000000000000000000100F
        0A10D6C67ED9FCE891FFFCE88FFFFCE78DFFFCE78BFFEDD47AFF95773CB90000
        0000000000000000000000000000000000000000000000000000000000000000
        000016140C16AA9B5BADFBE587FFFBE68BFFFBE586FFFAE37EFFBFA75CCB0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002F2B17308A7E4C8DBEAD6AC3C3AE60C9514825540000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBarButton2Click
    end
  end
  inherited PupBpm: TdxBarPopupMenu
    Left = 944
  end
  inherited dsHed: TDataSource
    Left = 224
    Top = 352
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyHedAfterInsert
    AfterScroll = qyHedAfterScroll
    SQL.Strings = (
      'select * from CustTB')
    Left = 224
    Top = 392
    object qyHedAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qyHedbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyHedCustId: TStringField
      FieldName = 'CustId'
      Size = 30
    end
    object qyHedCustCode: TStringField
      FieldName = 'CustCode'
      Size = 30
    end
    object qyHedCustName: TStringField
      FieldName = 'CustName'
      Size = 100
    end
    object qyHedCustShort: TStringField
      FieldName = 'CustShort'
      Size = 30
    end
    object qyHedCustAddress: TStringField
      FieldName = 'CustAddress'
      Size = 200
    end
    object qyHedSaler: TStringField
      FieldName = 'Saler'
      Size = 50
    end
    object qyHedPrincipal: TStringField
      FieldName = 'Principal'
    end
    object qyHedLinkMan: TStringField
      FieldName = 'LinkMan'
    end
    object qyHedMobile: TStringField
      FieldName = 'Mobile'
      Size = 40
    end
    object qyHedTel: TStringField
      FieldName = 'Tel'
      Size = 40
    end
    object qyHedFax: TStringField
      FieldName = 'Fax'
      Size = 40
    end
    object qyHedBank: TStringField
      FieldName = 'Bank'
      Size = 100
    end
    object qyHedCreditMoney: TFMTBCDField
      FieldName = 'CreditMoney'
      Precision = 18
      Size = 5
    end
    object qyHedTaxRate: TFMTBCDField
      FieldName = 'TaxRate'
      Precision = 18
      Size = 5
    end
    object qyHedBankAcc: TStringField
      FieldName = 'BankAcc'
      Size = 30
    end
    object qyHedPosCode: TStringField
      FieldName = 'PosCode'
    end
    object qyHedTaxCode: TStringField
      FieldName = 'TaxCode'
      Size = 50
    end
    object qyHedPayMode: TStringField
      FieldName = 'PayMode'
      Size = 50
    end
    object qyHedTrafficMode: TStringField
      FieldName = 'TrafficMode'
      Size = 100
    end
    object qyHedE_Mail: TStringField
      FieldName = 'E_Mail'
      Size = 50
    end
    object qyHedWWW: TStringField
      FieldName = 'WWW'
      Size = 50
    end
    object qyHedbStop: TBooleanField
      FieldName = 'bStop'
    end
    object qyHedRemark: TStringField
      FieldName = 'Remark'
      Size = 500
    end
    object qyHedMakeManName: TStringField
      FieldName = 'MakeManName'
    end
    object qyHedMakeDate: TDateTimeField
      FieldName = 'MakeDate'
    end
    object qyHedEditManName: TStringField
      FieldName = 'EditManName'
    end
    object qyHedEditDate: TDateTimeField
      FieldName = 'EditDate'
    end
  end
  inherited pmLayout: TPopupMenu
    Left = 488
    Top = 488
  end
  inherited cxgrdpmn1: TcxGridPopupMenu
    Left = 528
    Top = 488
  end
  object frxHed: TfrxDBDataset
    UserName = #23458#25143#36164#26009
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoId='#33258#21160#32534#21495
      'CustId='#23458#25143#32534#21495
      'CustCode='#20195#21495
      'CustName='#21517#31216
      'CustShort='#31616#31216
      'CustKindId='#31867#21035#32534#21495
      'Principal='#36127#36131#20154
      'LinkMan='#32852#31995#20154
      'AreaId='#22320#21306#32534#21495
      'Mobile='#25163#26426
      'Tel='#30005#35805
      'Fax='#20256#30495
      'Bank='#24320#25143#38134#34892
      'BankAcc='#38134#34892#36134#21495
      'PosCode='#37038#32534
      'TaxCode='#31246#21495
      'PayMode='#20184#27454#26041#24335
      'EmpId='#19994#21153#21592#32534#21495
      'EmpCode='#19994#21153#21592#20195#21495
      'EmpName='#19994#21153#21592#21517#31216
      'TrafficMode='#36816#36755#26041#24335
      'E_Mail=E_Mail'
      'WWW='#32593#22336
      'CustAddress='#22320#22336
      'Remark='#22791#27880
      'MakeMan='#24405#20837#20154#32534#21495
      'MakeManName='#24405#20837#20154#22995#21517
      'MakeDate='#24405#20837#26085#26399
      'EditMan='#20462#25913#20154#32534#21495
      'EditManName='#20462#25913#20154#22995#21517
      'EditDate='#20462#25913#26085#26399
      'CustKindName='#31867#21035#21517#31216
      'AreaName='#22320#22336#21517#31216
      'bSelect='#36873#25321
      'CustPYCode='#25340#38899#30721
      'TaxRate='#38144#39033#31246#29575
      'CreditMoney='#20449#29992#39069#24230
      'bStop='#26159#21542#20572#27490)
    DataSet = qyHed
    BCDToCurrency = False
    Left = 224
    Top = 432
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxbrmngrBarManage
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = False
    Left = 552
    Top = 56
  end
end
