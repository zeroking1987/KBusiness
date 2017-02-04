inherited ItemFM: TItemFM
  Left = 675
  Top = 231
  Caption = #20135#21697#36164#26009
  ClientHeight = 520
  ClientWidth = 1029
  ExplicitWidth = 1029
  ExplicitHeight = 520
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    Width = 1029
    ExplicitWidth = 1029
    inherited cxLabTitle: TcxLabel
      Caption = #20135#21697#36164#26009
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  object pnlEdit: TPanel [1]
    Left = 0
    Top = 76
    Width = 1029
    Height = 147
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    Visible = False
    object cxPgc1: TcxPageControl
      Left = 0
      Top = 0
      Width = 1029
      Height = 147
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxtbsht1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 141
      ClientRectLeft = 2
      ClientRectRight = 1023
      ClientRectTop = 27
      object cxtbsht1: TcxTabSheet
        Caption = #22522#26412#20449#24687
        ImageIndex = 0
        object lbl1: TLabel
          Left = 19
          Top = 11
          Width = 24
          Height = 13
          Caption = #32534#21495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl2: TLabel
          Left = 202
          Top = 11
          Width = 48
          Height = 13
          Caption = #20135#21697#20195#21495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl3: TLabel
          Left = 392
          Top = 11
          Width = 48
          Height = 13
          Caption = #20135#21697#21517#31216
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl7: TLabel
          Left = 202
          Top = 38
          Width = 48
          Height = 13
          Caption = #20135#21697#31867#21035
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl12: TLabel
          Left = 7
          Top = 38
          Width = 36
          Height = 13
          Caption = #20027#21333#20301
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 190
          Top = 11
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
          Left = 746
          Top = 11
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
          Left = 416
          Top = 38
          Width = 24
          Height = 13
          Caption = #35268#26684
        end
        object Label8: TLabel
          Left = 7
          Top = 64
          Width = 36
          Height = 13
          Caption = #21103#21333#20301
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 7
          Top = 90
          Width = 36
          Height = 13
          Caption = #36716#21270#29575
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl28: TLabel
          Left = 404
          Top = 64
          Width = 36
          Height = 13
          Caption = #26465#24418#30721
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 214
          Top = 90
          Width = 36
          Height = 13
          Caption = #38144#21806#20215
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 214
          Top = 64
          Width = 36
          Height = 13
          Caption = #37319#36141#20215
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 416
          Top = 90
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
        object cxEdtItemId: TcxDBTextEdit
          Left = 50
          Top = 7
          DataBinding.DataField = 'ItemID'
          DataBinding.DataSource = dsHed
          Style.Color = 14145495
          TabOrder = 0
          Width = 135
        end
        object cxEdtItemCode: TcxDBTextEdit
          Left = 256
          Top = 7
          DataBinding.DataField = 'ItemCode'
          DataBinding.DataSource = dsHed
          Properties.ReadOnly = True
          TabOrder = 1
          Width = 119
        end
        object cxEdtItemName: TcxDBTextEdit
          Left = 446
          Top = 7
          DataBinding.DataField = 'ItemName'
          DataBinding.DataSource = dsHed
          ParentShowHint = False
          Properties.ReadOnly = True
          ShowHint = True
          TabOrder = 2
          Width = 294
        end
        object cxEdtItemSpc: TcxDBTextEdit
          Left = 446
          Top = 34
          DataBinding.DataField = 'ItemSpc'
          DataBinding.DataSource = dsHed
          Properties.ReadOnly = True
          TabOrder = 3
          Width = 294
        end
        object cxBtItemKind: TcxDBButtonEdit
          Left = 256
          Top = 34
          DataBinding.DataField = 'ItemKindName'
          DataBinding.DataSource = dsHed
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
          TabOrder = 4
          Width = 119
        end
        object cxdbEdt6: TcxDBTextEdit
          Left = 50
          Top = 86
          DataBinding.DataField = 'ExchRate'
          DataBinding.DataSource = dsHed
          Properties.ReadOnly = True
          TabOrder = 5
          Width = 60
        end
        object cbbItemUnit: TcxDBComboBox
          Left = 50
          Top = 34
          DataBinding.DataField = 'ItemUnit'
          DataBinding.DataSource = dsHed
          Properties.Items.Strings = (
            ''
            #22312#32844
            #31163#32844)
          Properties.ReadOnly = True
          TabOrder = 6
          Width = 60
        end
        object cbbSubUnit: TcxDBComboBox
          Left = 50
          Top = 60
          DataBinding.DataField = 'SubUnit'
          DataBinding.DataSource = dsHed
          Properties.Items.Strings = (
            ''
            #22312#32844
            #31163#32844)
          Properties.ReadOnly = True
          TabOrder = 7
          Width = 60
        end
        object cxRgp2: TcxDBRadioGroup
          Left = 112
          Top = 34
          Caption = #35745#31639#26041#21521
          DataBinding.DataField = 'iFlag'
          DataBinding.DataSource = dsHed
          Properties.Items = <
            item
              Caption = #20056
              Value = 0
            end
            item
              Caption = #38500
              Value = 1
            end>
          Properties.ReadOnly = True
          TabOrder = 8
          Height = 73
          Width = 73
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 446
          Top = 60
          DataBinding.DataField = 'ISBN'
          DataBinding.DataSource = dsHed
          Properties.ReadOnly = True
          TabOrder = 9
          Width = 294
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 256
          Top = 86
          DataBinding.DataField = 'SalePrice'
          DataBinding.DataSource = dsHed
          Properties.ReadOnly = True
          TabOrder = 10
          Width = 119
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 256
          Top = 60
          DataBinding.DataField = 'StockPrice'
          DataBinding.DataSource = dsHed
          Properties.ReadOnly = True
          TabOrder = 11
          Width = 119
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 446
          Top = 86
          DataBinding.DataField = 'Remark'
          DataBinding.DataSource = dsHed
          Properties.ReadOnly = True
          TabOrder = 12
          Width = 294
        end
      end
    end
  end
  inherited pnlcxGrd: TPanel
    Top = 223
    Width = 1029
    Height = 297
    TabOrder = 6
    ExplicitTop = 223
    ExplicitWidth = 1029
    ExplicitHeight = 297
    inherited cxgrd: TcxGrid
      Left = 145
      Top = 36
      Width = 884
      Height = 261
      ExplicitLeft = 145
      ExplicitTop = 36
      ExplicitWidth = 884
      ExplicitHeight = 261
      inherited cxgrdtbv: TcxGridDBTableView
        OnDblClick = cxgrdtbvDblClick
        DataController.Summary.FooterSummaryItems = <
          item
            Format = #35760#24405#25968#65306'0'
            Kind = skCount
            FieldName = 'AutoId'
            Column = cxgrdtbvItemCode
          end>
        OptionsView.NoDataToDisplayInfoText = #24658#21019#36719#20214
        object cxgrdtbvItemCode: TcxGridDBColumn
          Caption = #20135#21697#20195#21495
          DataBinding.FieldName = 'ItemCode'
          Width = 87
        end
        object cxgrdtbvItemName: TcxGridDBColumn
          Caption = #20135#21697#21517#31216
          DataBinding.FieldName = 'ItemName'
          Width = 133
        end
        object cxgrdtbvItemSpc: TcxGridDBColumn
          Caption = #35268#26684
          DataBinding.FieldName = 'ItemSpc'
          Width = 89
        end
        object cxgrdtbvItemKindName: TcxGridDBColumn
          Caption = #20135#21697#31867#21035
          DataBinding.FieldName = 'ItemKindName'
          Width = 78
        end
        object cxgrdtbvStockPrice: TcxGridDBColumn
          Caption = #37319#36141#20215
          DataBinding.FieldName = 'StockPrice'
          Width = 54
        end
        object cxgrdtbvSalePrice: TcxGridDBColumn
          Caption = #38144#21806#20215
          DataBinding.FieldName = 'SalePrice'
          Width = 57
        end
        object cxgrdtbvItemUnit: TcxGridDBColumn
          Caption = #20027#21333#20301
          DataBinding.FieldName = 'ItemUnit'
          Width = 57
        end
        object cxgrdtbvSubUnit: TcxGridDBColumn
          Caption = #21103#21333#20301
          DataBinding.FieldName = 'SubUnit'
          Width = 59
        end
        object cxgrdtbvExchRate: TcxGridDBColumn
          Caption = #36716#21270#29575
          DataBinding.FieldName = 'ExchRate'
          Width = 53
        end
        object cxgrdtbvISBN: TcxGridDBColumn
          Caption = #26465#24418#30721
          DataBinding.FieldName = 'ISBN'
          Width = 70
        end
        object cxgrdtbvRemark: TcxGridDBColumn
          Caption = #22791#27880
          DataBinding.FieldName = 'Remark'
          Width = 70
        end
      end
    end
    object pnl2: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1023
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object lbl19: TLabel
        Left = 42
        Top = 7
        Width = 48
        Height = 13
        Caption = #26597#35810#26465#20214
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cxEdtValue: TcxTextEdit
        Left = 96
        Top = 3
        Properties.OnChange = cxEdtValuePropertiesChange
        TabOrder = 0
        TextHint = #21487#36755#20837#20135#21697#20195#21495#12289#21517#31216#12289#35268#26684#12289#25340#38899#30721#26597#35810
        Width = 278
      end
    end
    object cxspltr1: TcxSplitter
      Left = 0
      Top = 36
      Width = 8
      Height = 261
    end
    object Panel1: TPanel
      Left = 8
      Top = 36
      Width = 137
      Height = 261
      Align = alLeft
      Caption = 'Panel1'
      TabOrder = 3
      object tv: TdxDBTreeView
        Left = 1
        Top = 1
        Width = 135
        Height = 228
        ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ShowNodeHint = True
        OnCustomDraw = tvCustomDraw
        DataSource = dsItemKind
        DisplayField = 'ItemKindName;ItemKindCode'
        KeyField = 'ItemKindId'
        ListField = 'ItemKindName'
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
        OnClick = cxEdtValuePropertiesChange
      end
      object cxButton1: TcxButton
        Left = 1
        Top = 229
        Width = 135
        Height = 31
        Align = alBottom
        Caption = #28155#21152#31867#21035
        OptionsImage.Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00040000000C0000000C000000090000000B0000000E0000000F000000110000
          0010000000180A1A0C430B1C0C46010300210000000F00000011000000160000
          001A0000001700000014000000110000000C0000000400000000000000000000
          000C0000001A0205073412222B6413242D6913242D6C12232C6D13242D6E1223
          2E651C4632A02D8A3CFF2D8A3DFF225E36C212212C640E1C246C010508430000
          002F00000035000001310000002A000000200000000B00000000000000000000
          0000070D10155598B4DC5DAED2FF56A9CEFF58ABD0FF58ABD2FF58ADD3FF5BAF
          DFFF46A69DFF299745FF2A9746FF3DA281FF5BB3E7FF5DA5C7FF518BA6DD0108
          0C13000000000000000100000000000000000000000000000000000000000000
          00001E3B495D69BBDCFF62B6DAFF56AED6FF59B0D9FF5CB2E1FF5CB3E2FF61B5
          EFFF49B0ADFF29A757FF2AA759FF3EAE92FF5FBCF9FF71BDE8FFBBCADAFF539D
          C5E4336178890000000000000000000000000000000000000000000000000000
          00001F3F4F6169BFE3FF63BBE2FF59B5E0FF5CB7E6FF41B4A4FF35B387FF38B4
          8EFF32B37FFF2AB26BFF2BB26BFF30B378FF38B590FF35B389FF62C19BFFDCD6
          B2FF9FC1C2F60001070800000000000000000000000000000000000000000000
          0000204151606AC4EAFF64C0EAFF5BBBE9FF5CBCE8FF2CBA7EFF24B96EFF25B9
          71FF27BA74FF29BA79FF29BA79FF28BA76FF25B970FF24B971FF19B671FFDBE3
          C8FFA8C6D4E90000050900000000000000000000000000000000000000000000
          0000204353606CC8EDFF66C5EDFF5DBFECFF5FC1EDFF2DC08DFF23C178FF25C1
          7BFF26C17FFF26C082FF26C082FF26C080FF26C07BFF22C07BFF1EBE7CFFD9E8
          E1FFA2C8DFE90000040900000000000000000000000000000000000000000000
          0000214454606ECBF0FF68C9EFFF5FC3EEFF62C5F1FF58C6DDFF55C7CFFF58C8
          D7FF49C8B6FF20C383FF1DC282FF40C8A6FF58CBD9FF5BC9CEFFC2E8DBFFF2EC
          EAFF99BFD1E80000050800000000000000000000000000000000000000000000
          00002246556070CEF2FF6BCDF2FF62C8F1FF63C9F1FF66CAF6FF67CBF9FF6BCC
          FFFF51CBCEFF1AC586FF17C486FF44CBB7FF6BD1FFFF72CCF6FFEDE7ECFFF0EE
          EDFFC7D0D4EA0001030500000000000000000000000000000000000000000000
          00002347576071D2F4FF6CD0F5FF64CDF4FF65CEF5FF66CFF5FF66D0F6FF6BD1
          FEFF4ECECCFF10C887FF0BC688FF3FCDB6FF6CD5FFFF73D0F2FFF1F0F1FFEFEF
          EFFFEAE9E9FD3434343800000000000000000000000000000000000000000000
          00002449586073D5F7FF6ED4F7FF66D1F7FF68D2F8FF68D3F8FF69D4F9FF6CD4
          FDFF5FD3E5FF34CEADFF2FCEAAFF58D3D6FF71D7FEFF6ED2F4FFD3DFE4FFF7F3
          F2FFEDEFEFFF989999A600000000000000000000000000000000000000000000
          0000254B596076D9F9FF72D7FAFF6AD4F9FF6DD5F9FF6ED6F9FF6FD6F9FF70D7
          F9FF72D7FCFF76D8FEFF77D8FDFF76D9FDFF75D9F9FF73D9FAFF77D4F4FFD5E4
          EBFFF0EFEDFFE6E6E6F815151517000000000000000000000000000000000000
          0000264B5A607ADBF9FF76DAFAFF70D7F9FF72D8F9FF74D8F9FF75D9F9FF76D9
          F9FF77DAF9FF78DAFAFF79DAFAFF7ADBFAFF7BDBFAFF7DDCFAFF6FD9FAFFBCE1
          F0FFF8F3F1FFEAEBEBFF70707079000000000000000000000000000000000000
          0000284C5A607FDDF9FF7CDCFAFF77DAF9FF79DAFAFF7ADBFAFF7BDBFAFF7CDC
          FAFF7DDCFAFF7EDDFAFF7FDDFAFF80DEFAFF81DEFAFF82DEFAFF79DCFAFFBBDE
          EBFFF7F2F1FFEFF0F0FFCECECEE0030303030000000000000000000000000000
          00002A4E5A6084DFFAFF81DEFAFF7DDCFAFF7EDDFAFF80DDFAFF80DEFAFF82DE
          FAFF83DFFAFF84DFFAFF85E0FAFF86E0FAFF87E0FAFF88E1FAFF80DEFAFFC2E4
          F0FFF5F0EEFFECECECFFECEDEDFF4C4D4D530000000000000000000000000000
          00002C4F5B6088E1FAFF87E1FAFF83DFFAFF84E0FAFF85E0FAFF86E0FAFF88E1
          FAFF89E1FAFF8AE2FBFF8BE2FBFF8DE3FBFF8EE4FBFF90E4FBFF88E3FBFFC1E3
          EEFFF8F4F3FFF3F3F3FFECEDEDFF8B8C8C970000000000000000000000000000
          00002D4F5B608DE3FAFF8CE3FAFF89E1FAFF8BE2FBFF8DE3FBFF8EE3FBFF8FE4
          FBFF91E5FBFF93E5FBFF94E6FBFF95E7FBFF97E8FCFF99E9FCFF92E7FCFFC6E7
          F1FFF4EFEEFFEAEBEBFFC9CACADA2D2E2E310000000000000000000000000000
          00003254606493E6FBFF93E6FBFF91E5FBFF94E6FBFF95E7FBFF96E8FCFF98E8
          FCFF9AE9FCFF9BEAFCFF9DEBFCFF9EEBFCFFA0ECFCFFA2EDFCFF9CECFDFFC4E4
          EEFFB3AEADBB4C4D4D5303030303000000000000000000000000000000000000
          000021363D4098E8FBFF9DEBFCFF9CEBFCFF9EEBFCFFA0ECFDFFA1EDFDFFA3EE
          FDFFA4EEFDFFA6EFFDFFA7F0FDFFA9F1FDFFABF1FEFFADF2FEFFA8EFFCFF3447
          4D51000000000000000000000000000000000000000000000000000000000000
          0000000000003E626C6F70AAB9BD72ADBCC073ADBCBF74AEBCBF75AEBCBF76AE
          BBBF76AFBBBF77AFBBBF79AFBBBF79B0BBBF7AB1BCC079AEBABD43636C6F0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 1
        OnClick = cxButton1Click
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    Left = 936
    Top = 56
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
      ButtonStyle = bsDropDown
      DropDownMenu = dxBarPopupMenu1
      OnClick = nil
    end
    inherited btRef: TdxBarLargeButton
      Caption = #21516' '#27493
      OnClick = btRefClick
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
    Left = 976
    Top = 56
  end
  inherited dsHed: TDataSource
    Left = 256
    Top = 320
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyHedAfterInsert
    SQL.Strings = (
      'select * from ItemTB')
    Left = 256
    Top = 360
    object qyHedAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qyHedbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyHedItemId: TStringField
      FieldName = 'ItemId'
      Size = 30
    end
    object qyHedItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 100
    end
    object qyHedItemName: TStringField
      FieldName = 'ItemName'
      Size = 100
    end
    object qyHedItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 100
    end
    object qyHedItemKindName: TStringField
      FieldName = 'ItemKindName'
      Size = 50
    end
    object qyHedMaterial: TStringField
      FieldName = 'Material'
      Size = 100
    end
    object qyHedISBN: TStringField
      FieldName = 'ISBN'
      Size = 100
    end
    object qyHedStockPrice: TFMTBCDField
      FieldName = 'StockPrice'
      Precision = 18
      Size = 5
    end
    object qyHedSalePrice: TFMTBCDField
      FieldName = 'SalePrice'
      Precision = 18
      Size = 5
    end
    object qyHedPicPath: TStringField
      FieldName = 'PicPath'
      Size = 500
    end
    object qyHedPicName: TStringField
      FieldName = 'PicName'
      Size = 80
    end
    object qyHedItemUnit: TStringField
      FieldName = 'ItemUnit'
      Size = 10
    end
    object qyHedExchRate: TFMTBCDField
      FieldName = 'ExchRate'
      Precision = 18
      Size = 5
    end
    object qyHedSubUnit: TStringField
      FieldName = 'SubUnit'
      Size = 10
    end
    object qyHediFlag: TSmallintField
      FieldName = 'iFlag'
    end
    object qyHedMakeManName: TStringField
      FieldName = 'MakeManName'
    end
    object qyHedMakeDate: TDateTimeField
      FieldName = 'MakeDate'
    end
    object qyHedEditManName: TStringField
      FieldName = 'EditManName'
      Size = 50
    end
    object qyHedEditDate: TDateTimeField
      FieldName = 'EditDate'
    end
    object qyHedRemark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
    object qyHedItemKindId: TStringField
      FieldName = 'ItemKindId'
      Size = 50
    end
  end
  inherited pmLayout: TPopupMenu
    Left = 560
    Top = 416
  end
  inherited cxgrdpmn1: TcxGridPopupMenu
    Left = 528
    Top = 416
  end
  object dsItemKind: TDataSource
    DataSet = qyItemKind
    Left = 80
    Top = 328
  end
  object qyItemKind: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select * from ItemKindTB')
    Left = 80
    Top = 360
    object qyItemKindAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object strngfldPrvKindParentId: TStringField
      FieldName = 'ParentId'
    end
    object strngfldPrvKindRemark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
    object qyItemKindbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyItemKindItemKindId: TStringField
      FieldName = 'ItemKindId'
    end
    object qyItemKindItemKindCode: TStringField
      FieldName = 'ItemKindCode'
    end
    object qyItemKindItemKindName: TStringField
      FieldName = 'ItemKindName'
      Size = 30
    end
    object qyItemKindParam: TStringField
      FieldName = 'Param'
      Size = 30
    end
    object qyItemKindKindWare: TStringField
      FieldName = 'KindWare'
    end
  end
  object frxdtHed: TfrxDBDataset
    UserName = #20135#21697#36164#26009
    CloseDataSource = False
    FieldAliases.Strings = (
      'AutoId='#33258#21160#32534#21495
      'bSelect='#36873#25321
      'ItemId='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'ItemKindName='#20135#21697#31867#21035
      'Material='#26448#36136
      'ISBN='#26465#24418#30721
      'StockPrice='#37319#36141#20215
      'SalePrice='#38144#21806#20215
      'PicPath='#22270#29255#36335#24452
      'PicName='#22270#29255#21517#31216
      'ItemUnit='#20027#21333#20301
      'ExchRate='#36716#25442#29575
      'SubUnit='#21103#21333#20301
      'iFlag='#35745#31639#26041#21521
      'MakeManName='#21046#21333#20154
      'MakeDate='#21046#21333#26085#26399
      'EditManName='#20462#25913#20154
      'EditDate='#20462#25913#26085#26399
      'Remark='#22791#27880
      'ItemKindId='#20135#21697#31867#21035#32534#21495)
    DataSet = qyHed
    BCDToCurrency = False
    Left = 256
    Top = 400
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
