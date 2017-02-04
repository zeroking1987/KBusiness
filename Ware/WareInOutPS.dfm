inherited WareInOutFM: TWareInOutFM
  Caption = #20986#20837#24211
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    TabOrder = 1
    inherited cxLabTitle: TcxLabel
      Caption = #20986#20837#24211
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
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
    TabOrder = 3
  end
  inherited pnlEdit: TPanel
    Height = 83
    ExplicitHeight = 83
    object lbl1: TLabel [0]
      Left = 16
      Top = 4
      Width = 52
      Height = 13
      Caption = #24448#26469#21333#20301
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object lbl7: TLabel [1]
      Left = 29
      Top = 34
      Width = 39
      Height = 13
      Caption = #20179#31649#21592
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object lbl8: TLabel [2]
      Left = 182
      Top = 34
      Width = 52
      Height = 13
      Caption = #23545#24212#21333#21495
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel [3]
      Left = 46
      Top = 61
      Width = 24
      Height = 13
      Caption = #22791#27880
    end
    object Label15: TLabel [4]
      Left = 368
      Top = 4
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
    object Label10: TLabel [5]
      Left = 373
      Top = 38
      Width = 26
      Height = 13
      Caption = #20179#24211
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 587
      ExplicitLeft = 587
      ExplicitHeight = 68
      Height = 68
      inherited Label1: TLabel
        Top = 12
        ExplicitTop = 12
      end
      inherited Label9: TLabel
        Top = 40
        ExplicitTop = 40
      end
      inherited cxEdtNo: TcxDBTextEdit
        Left = 44
        Top = 8
        DataBinding.DataField = 'BillNO'
        Style.IsFontAssigned = True
        ExplicitLeft = 44
        ExplicitTop = 8
      end
      inherited cxdt: TcxDBDateEdit
        Top = 36
        DataBinding.DataField = 'BillDate'
        ExplicitTop = 36
      end
    end
    object cxEmp: TcxDBButtonEdit
      Left = 78
      Top = 30
      DataBinding.DataField = 'WareManName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxDBButtonEdit3PropertiesButtonClick
      TabOrder = 1
      Width = 102
    end
    object cxSubjoinNO: TcxDBButtonEdit
      Left = 242
      Top = 30
      DataBinding.DataField = 'SubjoinNo'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
          Visible = False
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      TabOrder = 2
      Width = 123
    end
    object cxMoRemark: TcxDBMemo
      Left = 78
      Top = 57
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.ScrollBars = ssVertical
      TabOrder = 3
      Visible = False
      Height = 21
      Width = 150
    end
    object cxPupEdtRemark: TcxDBPopupEdit
      Left = 78
      Top = 57
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.PopupControl = cxMoRemark
      Properties.ReadOnly = False
      TabOrder = 4
      Width = 150
    end
    object cxRgpSignFlag: TcxDBRadioGroup
      Left = 408
      Top = 0
      Alignment = alCenterCenter
      DataBinding.DataField = 'SignFlag'
      DataBinding.DataSource = dsHed
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = #34013#21333
          Value = 1
        end
        item
          Caption = #32418#21333
          Value = -1
        end>
      Properties.OnChange = cxRgpFlagPropertiesChange
      TabOrder = 5
      Height = 28
      Width = 150
    end
    object cxObject: TcxDBMRUEdit
      Left = 78
      Top = 0
      DataBinding.DataField = 'ObjectName'
      DataBinding.DataSource = dsHed
      Properties.OnButtonClick = cxObjectPropertiesButtonClick
      TabOrder = 6
      Width = 287
    end
    object cxWareName: TcxDBButtonEdit
      Left = 422
      Top = 34
      DataBinding.DataField = 'HWareName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxWareNamePropertiesButtonClick
      TabOrder = 7
      Width = 102
    end
  end
  inherited pnlBody: TPanel
    Top = 169
    Height = 344
    ExplicitTop = 169
    ExplicitHeight = 344
    inherited cxPgc: TcxPageControl
      Height = 344
      ExplicitHeight = 344
      ClientRectBottom = 342
      inherited cxtbsht1: TcxTabSheet
        ExplicitLeft = 2
        ExplicitTop = 28
        ExplicitWidth = 1040
        ExplicitHeight = 314
        inherited cxgrd: TcxGrid
          Width = 1040
          Height = 314
          ExplicitWidth = 1040
          ExplicitHeight = 314
          inherited cxgrdtbv: TcxGridDBTableView
            OnCustomDrawCell = cxgrdtbvCustomDrawCell
            DataController.Summary.FooterSummaryItems = <
              item
                Format = #21512#35745#65306'0'
                Kind = skCount
                Column = cxgrdItemCode
              end
              item
                Kind = skSum
                Column = cxgrdMainNum
              end
              item
                Kind = skSum
                Column = cxgrdMainMoney
              end
              item
                Kind = skSum
              end
              item
                Kind = skSum
              end
              item
                Kind = skSum
                Column = cxgrdAllMoney
              end
              item
                Kind = skSum
                Column = cxgrdTaxMoney
              end>
            object cxgrdItemCode: TcxGridDBColumn
              Caption = #20135#21697#20195#21495'*'
              DataBinding.FieldName = 'ItemCode'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 16449
              Properties.OnButtonClick = cxgrdItemCodePropertiesButtonClick
              Properties.OnValidate = cxgrdItemCodePropertiesValidate
              Options.ShowEditButtons = isebAlways
              Width = 80
            end
            object cxgrdItemName: TcxGridDBColumn
              Caption = #20135#21697#21517#31216
              DataBinding.FieldName = 'ItemName'
              Options.Editing = False
              Width = 80
            end
            object cxgrdItemSpc: TcxGridDBColumn
              Caption = #20135#21697#35268#26684
              DataBinding.FieldName = 'ItemSpc'
              Options.Editing = False
              Width = 80
            end
            object cxgrdExchRate: TcxGridDBColumn
              Caption = #36716#25442#29575
              DataBinding.FieldName = 'ExchRate'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdExchRatePropertiesValidate
              Visible = False
              Width = 48
            end
            object cxgrdItemPic: TcxGridDBColumn
              Caption = #20135#21697#22270#21495
              DataBinding.FieldName = 'ItemPic'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxgrdItemUnit: TcxGridDBColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'ItemUnit'
              Options.Editing = False
              Width = 63
            end
            object cxgrdWareID: TcxGridDBColumn
              Caption = #20179#24211#32534#21495'*'
              DataBinding.FieldName = 'WareId'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdWareIDPropertiesButtonClick
              Visible = False
              Width = 70
            end
            object cxgrdWareName: TcxGridDBColumn
              Caption = #20179#24211#21517#31216
              DataBinding.FieldName = 'WareName'
              Visible = False
              Options.Editing = False
              Width = 71
            end
            object cxgrdProType: TcxGridDBColumn
              Caption = #23646#24615
              DataBinding.FieldName = 'ProType'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdProTypePropertiesButtonClick
              Width = 62
            end
            object cxgrdWareNum: TcxGridDBColumn
              Caption = #24211#23384#37327
              DataBinding.FieldName = 'WareNum'
              Width = 56
            end
            object cxgrdMainNum: TcxGridDBColumn
              Caption = #25968#37327'*'
              DataBinding.FieldName = 'MainNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdMainNumPropertiesValidate
              Width = 70
            end
            object cxgrdMainPrice: TcxGridDBColumn
              Caption = #21333#20215
              DataBinding.FieldName = 'MainPrice'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdMainPricePropertiesValidate
              Width = 70
            end
            object cxgrdMainMoney: TcxGridDBColumn
              Caption = #37329#39069
              DataBinding.FieldName = 'MainMoney'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdMainMoneyPropertiesValidate
              Width = 70
            end
            object cxgrdSubUnit: TcxGridDBColumn
              Caption = #21103#21333#20301
              DataBinding.FieldName = 'SubUnit'
              Visible = False
              Width = 70
            end
            object cxgrdSubNum: TcxGridDBColumn
              Caption = #21103#25968#37327
              DataBinding.FieldName = 'SubNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdSubNumPropertiesValidate
              Visible = False
              Width = 70
            end
            object cxgrdTaxPrice: TcxGridDBColumn
              Caption = #21547#31246#20215
              DataBinding.FieldName = 'TaxPrice'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdTaxPricePropertiesValidate
              Width = 68
            end
            object cxgrdTaxRate: TcxGridDBColumn
              Caption = #31246#29575'(%)'
              DataBinding.FieldName = 'TaxRate'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdTaxRatePropertiesValidate
              Width = 85
            end
            object cxgrdTaxMoney: TcxGridDBColumn
              Caption = #31246#39069
              DataBinding.FieldName = 'TaxMoney'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 69
            end
            object cxgrdAllMoney: TcxGridDBColumn
              Caption = #20215#31246#21512#35745
              DataBinding.FieldName = 'AllMoney'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdAllMoneyPropertiesValidate
              Width = 78
            end
            object cxgrdRemark: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              PropertiesClassName = 'TcxMemoProperties'
              Width = 82
            end
          end
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
    inherited dxbrBarMang: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btFirst'
        end
        item
          Visible = True
          ItemName = 'btLeft'
        end
        item
          Visible = True
          ItemName = 'btRight'
        end
        item
          Visible = True
          ItemName = 'btLast'
        end
        item
          Visible = True
          ItemName = 'btAdd'
        end
        item
          Visible = True
          ItemName = 'btEdit'
        end
        item
          Visible = True
          ItemName = 'btSave'
        end
        item
          Visible = True
          ItemName = 'btDel'
        end
        item
          Visible = True
          ItemName = 'btCancel'
        end
        item
          Visible = True
          ItemName = 'btAddL'
        end
        item
          Visible = True
          ItemName = 'btDelL'
        end
        item
          Visible = True
          ItemName = 'btFind'
        end
        item
          Visible = True
          ItemName = 'btExport'
        end
        item
          Visible = True
          ItemName = 'btRefer'
        end
        item
          Visible = True
          ItemName = 'btPrint'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 77
          Visible = True
          ItemName = 'dxCmbReport'
        end
        item
          Visible = True
          ItemName = 'btInvoice'
        end
        item
          Visible = True
          ItemName = 'btRef'
        end
        item
          Visible = True
          ItemName = 'btCheck'
        end
        item
          Visible = True
          ItemName = 'btUnCheck'
        end
        item
          Visible = True
          ItemName = 'btTemp'
        end
        item
          Visible = True
          ItemName = 'btExit'
        end>
    end
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
    inherited btTemp: TdxBarLargeButton
      Caption = #25805' '#20316
      Hint = #25805' '#20316
      ButtonStyle = bsCheckedDropDown
      DropDownMenu = dxbrpmnFuHe
    end
    inherited btRef: TdxBarLargeButton
      OnClick = btRefClick
    end
    inherited btInvoice: TdxBarLargeButton
      ButtonStyle = bsCheckedDropDown
      DropDownMenu = dxbrpmnInvoice
      LargeGlyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000040404061212
        121C1C1C1C2C2525253A2D2D2D463232324E3A3A3A5A3A3A3A5A3B3B3B5C4545
        456C484848704848487048484870484848704545456C3B3B3B5C3A3A3A5A3A3A
        3A5A3232324E2D2D2D462525253A1C1C1C2C1212121C04040406181818265252
        52816B6B6BA77B7B7BBF838383CB8A8A8AD78B8B8BD9909090E1939393E59494
        94E7949494E7949494E7949494E7959595E7949494E7929292E5909090E18B8B
        8BD98A8A8AD7838383CB7B7B7BBF6B6B6BA75353538118181826000000000303
        03040505050864646485B6B6B6F1B8B7B5F3B5B2ABF3B7B4ACF5B7B4ACF5B4B6
        B3F5A2B1B8F5B4B4B0F5B6B4AEF5ACB4B6F5B7B4ACF5B9B8B8F5B8B9B9F5B3B6
        B8F3B8B8B8F3B6B6B6F170707095050505080303030400000000000000000000
        0000000000008B8B8BB7C2C2C2FFB89A5CFFB48D3CFFB48D3CFFB48D3CFF44AD
        DDFF0F8ECAFF4699B9FF38A9DBFF0E96D4FF4C94AAFFA39D72FF42AFE4FF1A90
        C9FF72AECDFFC1C2C3FF9A9A9AC9000000000000000000000000000000000000
        0000000000008C8C8CB7C3C3C3FFCEBD9EFFD1BF9DFFD3C29FFFD5C3A1FF29A9
        E5FF07A1E0FF3EA1D0FF88BDCEFF2AAAE6FF0F97D6FF62AAC6FF2C9ED5FF15A4
        E1FF169BDDFFADBCC4FF9A9A9AC9000000000000000000000000000000000000
        0000000000008F8F8FB7C7C7C7FFD3CDC6FFD7D0C7FFD8CEC2FFDACFC1FFD3DD
        E0FFACB3A3FFD0CEC8FFCDBEABFF91B8C0FF5BA3B4FF32A8E2FF1392D0FF69AF
        D2FFB7C4C9FFC7C7C7FF9D9D9DC9000000000000000000000000000000000000
        000000000000929292B7CBCBCBFFCDBEACFFC19F76FFB6854BFFC4A077FFDACB
        BAFFD4BFA6FFC1996CFFBE9768FFC19F76FFA6A18FFF3DABD6FF38AFE0FF94B9
        CFFFCBCBCBFFCBCBCBFFA0A0A0C9000000000000000000000000000000000000
        000000000000949494B7CECECEFFD8D4CFFFD4C5B2FFDCD2C6FFDFD4C8FFE6E1
        DBFFD9C8B4FFDFD5C9FFDED5CBFFD5C7B6FFCDBAA4FFD5D4D4FFCECECEFFCECE
        CEFFCECECEFFCECECEFFA2A2A2C9000000000000000000000000000000000000
        000000000000969696B7D2D2D2FFCBBD9FFFCDBE9EFFD0C0A0FFD2C2A2FFD3C4
        A3FFD3C4A3FFD2C2A2FFCFC0A0FFCDBE9DFFCABA9AFFC9BDA3FFD2D2D2FFD2D2
        D2FFD2D2D2FFD2D2D2FFA6A6A6C9000000000000000000000000000000000000
        000000000000999999B7D5D5D5FFC5A56AFFBF9649FFBF9648FFBF9648FFBF96
        48FFBF9648FFBF9648FFBF9648FFBF9648FFC09649FFC7AC7AFFD5D5D5FFD5D5
        D5FFD5D5D5FFD5D5D5FFA8A8A8C9000000000000000000000000000000000000
        0000000000009B9B9BB7D8D8D8FFD7D6D3FFB8AE9BFFB7AC9AFFB7AC9AFFB7AC
        9AFFB7AC9AFFB7AC9AFFB7AC9AFFB7AC9AFFB7AC9AFFB8B2A7FFB9B3AAFFBDB9
        B1FFD8D8D8FFD8D8D8FFAAAAAAC9000000000000000000000000000000000000
        0000000000009D9D9DB7DBDBDBFFDBDBDBFFD3D2D0FFD2D1CFFF78ABD9FFD2D1
        CFFFD2D1CFFFD3D2D0FFD3D2D0FFD3D2D0FFD3D2D0FFD3D2D0FFD3D2D0FFD5D4
        D2FFDBDBDBFFDBDBDBFFADADADC9000000000000000000000000000000000000
        0000000000009F9F9FB7DDDDDDFFDDDDDDFFDCDDDEFF72B3E6FF1895EAFF70B3
        E6FFDCDDDEFFBEB9B1FFB0AA9EFFB0AA9EFFB0AA9EFFB0AA9EFFB0AA9EFFBCB7
        AEFFDDDDDDFFDDDDDDFFAEAEAEC9000000000000000000000000000000000000
        000000000000A1A1A1B7E0E0E0FFE0E0E0FFCED9E2FF35A6F0FF1C95F2FF0E9A
        EEFFC7D5E3FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0
        E0FFE0E0E0FFE0E0E0FFB1B1B1C9000000000000000000000000000000000000
        000000000000A2A2A2B7E2E2E2FFE2E2E2FFDEE0E3FF2EA8F2FF14A4F3FF54B0
        F2FFE1E2E3FFC0BBB3FFB1AB9FFFB1AB9FFFB1AB9FFFDFDFDEFFE2E2E2FFE2E2
        E2FFE2E2E2FFE2E2E2FFB2B2B2C9000000000000000000000000000000000000
        000000000000A4A4A4B7E5E5E5FFE5E5E5FFDFE2E5FF35B4F7FF0DA7FAFF35B3
        F6FFE0E3E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
        E5FFE5E5E5FFE5E5E5FFB5B5B5C9000000000000000000000000000000000000
        000000000000A5A5A5B7E7E7E7FFE6E6E6FFE6E6E6FFDBE1E8FF85C5F2FFDBE2
        E8FFE6E6E6FFE6E6E6FFE7E7E7FFE6E6E6FFE6E6E6FFE7E7E7FFE6E6E6FFE6E6
        E6FFE7E7E7FFE6E6E6FFB6B6B6C9000000000000000000000000000000000000
        000000000000A6A6A6B7E8E8E8FF95C1E2FF75B1DEFF75B1DEFF75B1DEFF75B1
        DEFF75B1DEFF75B1DEFF75B1DEFF75B1DEFF75B1DEFF75B1DEFF75B1DEFF75B1
        DEFF95C1E2FFE8E8E8FFB7B7B7C9000000000000000000000000000000000000
        000000000000A8A8A8B7EAEAEAFF3B99DEFF1487DAFF1487DAFF1487DAFF1487
        DAFF1487DAFF1487DAFF1487DAFF1487DAFF1487DAFF1487DAFF1487DAFF1487
        DAFF3B99DEFFEAEAEAFFB8B8B8C9000000000000000000000000000000000000
        000000000000A9A9A9B7EBEBEBFF44A3E6FF1A90E4FF1A90E4FF1A90E4FF1A90
        E4FF1A90E4FF1A90E4FF1A90E4FF1A90E4FF1A90E4FF1A90E4FF208FDEFF4788
        B7FF5B8FB5FFB9B9B9FF898989B3000000000000000000000000000000000000
        000000000000A9A9A9B7ECECECFFA9D2EDFF9DD1F0FF9DD1F0FF9DD1F0FF9DD1
        F0FF9DD1F0FF9DD1F0FF9DD1F0FF9DD1F0FF9DD1F0FF9DD1F0FF8FB0C4FF7979
        79FF707070FF535353CB08080814000000000000000000000000000000000000
        000000000000A9A9A9B7ECECECFFEDEDEDFFEDEDEDFFECECECFFEDEDEDFFEDED
        EDFFECECECFFEDEDEDFFEDEDEDFFECECECFFEDEDEDFFEDEDEDFFB9B9B9FF6666
        66FF494949CB0606061200000000000000000000000000000000000000000000
        000000000000AAAAAAB7EDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
        EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFB0B0B0FF4040
        40CB060606120000000000000000000000000000000000000000000000000000
        0000000000004E4E4E54ABABABB7ACACACB7ACACACB7ACACACB7ACACACB7ACAC
        ACB7ACACACB7ACACACB7ACACACB7ACACACB7ACACACB7ACACACB7757575A90606
        0614000000000000000000000000000000000000000000000000}
    end
    inherited btPrint2: TdxBarButton
      ShortCut = 16465
    end
    object dxBarButton1: TdxBarButton
      Caption = #22797' '#26680
      Category = 0
      Hint = #23545#21333#20215#31561#20449#24687#36827#34892#22797#26680
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = #21462#28040#22797#26680
      Category = 0
      Hint = #21462#28040#22797#26680
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxbrbtnJZ: TdxBarButton
      Caption = #35760#36134
      Category = 0
      Hint = #35760#36134
      Visible = ivAlways
      OnClick = dxbrbtnJZClick
    end
    object dxbrbtnNoJZ: TdxBarButton
      Caption = #21462#28040#35760#36134
      Category = 0
      Hint = #21462#28040#35760#36134
      Visible = ivAlways
      OnClick = dxbrbtnNoJZClick
    end
  end
  inherited qyHed: TADOQuery
    OnCalcFields = qyHedCalcFields
    SQL.Strings = (
      'select * from WareInOutHDTB where 1=0')
    object atncfldHedAutoID: TAutoIncField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object strngfldHedBillNO: TStringField
      FieldName = 'BillNO'
    end
    object strngfldHedWKindID: TStringField
      FieldName = 'WKindID'
      Size = 30
    end
    object qyHedWFlag: TSmallintField
      FieldName = 'WFlag'
    end
    object dtmfldHedBillDate: TDateTimeField
      FieldName = 'BillDate'
    end
    object strngfldHedWareMan: TStringField
      FieldName = 'WareMan'
    end
    object strngfldHedSendMan: TStringField
      FieldName = 'SendMan'
    end
    object strngfldHedDrawMan: TStringField
      FieldName = 'DrawMan'
    end
    object strngfldHedCoinName: TStringField
      FieldName = 'CoinName'
    end
    object qyHedExchangeRate: TFMTBCDField
      FieldName = 'ExchangeRate'
      Precision = 19
      Size = 6
    end
    object qyHedbTax: TBooleanField
      FieldName = 'bTax'
    end
    object qyHedbInvoice: TBooleanField
      FieldName = 'bInvoice'
    end
    object strngfldHedAccName: TStringField
      FieldName = 'AccName'
      Size = 50
    end
    object strngfldHedObjectID: TStringField
      FieldName = 'ObjectID'
      OnChange = strngfldHedObjectIDChange
    end
    object qyHedbPrint: TBooleanField
      FieldName = 'bPrint'
    end
    object intgrfldHedPrintNum: TIntegerField
      FieldName = 'PrintNum'
      OnChange = intgrfldHedPrintNumChange
    end
    object strngfldHedSubjoinNo: TStringField
      FieldName = 'SubjoinNo'
    end
    object dtmfldHedMakeDate: TDateTimeField
      FieldName = 'MakeDate'
    end
    object strngfldHedMakeMan: TStringField
      FieldName = 'MakeMan'
    end
    object strngfldHedMakeManName: TStringField
      FieldName = 'MakeManName'
      Size = 30
    end
    object qyHedAuditFlag: TSmallintField
      FieldName = 'AuditFlag'
    end
    object strngfldHedAuditMan: TStringField
      FieldName = 'AuditMan'
      Size = 50
    end
    object strngfldHedAuditDate: TStringField
      FieldName = 'AuditDate'
      Size = 80
    end
    object qyHedbMaxAudit: TBooleanField
      FieldName = 'bMaxAudit'
    end
    object strngfldHedSourceNo: TStringField
      FieldName = 'SourceNo'
      Size = 30
    end
    object strngfldHedEditMan: TStringField
      FieldName = 'EditMan'
      Size = 30
    end
    object strngfldHedEditManName: TStringField
      FieldName = 'EditManName'
      Size = 30
    end
    object dtmfldHedEditDate: TDateTimeField
      FieldName = 'EditDate'
    end
    object strngfldHedFinaMan: TStringField
      FieldName = 'FinaMan'
    end
    object dtmfldHedFinaDate: TDateTimeField
      FieldName = 'FinaDate'
    end
    object strngfldHedYearMon: TStringField
      FieldName = 'YearMon'
      Size = 6
    end
    object strngfldHedPzWord: TStringField
      FieldName = 'PzWord'
      Size = 50
    end
    object strngfldHedPzNo: TStringField
      FieldName = 'PzNo'
      Size = 50
    end
    object strngfldHedPzId: TStringField
      FieldName = 'PzId'
      Size = 50
    end
    object strngfldHedRemark: TStringField
      FieldName = 'Remark'
      Size = 100
    end
    object strngfldHedObjectCode: TStringField
      FieldName = 'ObjectCode'
      Size = 80
    end
    object strngfldHedWareManName: TStringField
      FieldKind = fkCalculated
      FieldName = 'WareManName'
      Calculated = True
    end
    object strngfldHedSendManName: TStringField
      FieldKind = fkCalculated
      FieldName = 'SendManName'
      Calculated = True
    end
    object strngfldHedDrawManName: TStringField
      FieldKind = fkCalculated
      FieldName = 'DrawManName'
      Calculated = True
    end
    object qyHedbRed: TBooleanField
      FieldName = 'bRed'
    end
    object strngfldHedObjectName: TStringField
      FieldName = 'ObjectName'
      Size = 200
    end
    object strngfldHedSeller: TStringField
      FieldName = 'Seller'
    end
    object strngfldHedSellerManName: TStringField
      FieldKind = fkCalculated
      FieldName = 'SellerManName'
      Calculated = True
    end
    object strngfldHedPayMode: TStringField
      FieldName = 'PayMode'
      Size = 30
    end
    object strngfldHedAuditManName: TStringField
      FieldName = 'AuditManName'
      Size = 50
    end
    object dtmfldHedMaxAuditDate: TDateTimeField
      FieldName = 'MaxAuditDate'
    end
    object qyHedbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyHedbAuto: TBooleanField
      FieldName = 'bAuto'
    end
    object qyHedSignFlag: TSmallintField
      FieldName = 'SignFlag'
    end
    object strngfldHedObjectTel: TStringField
      FieldName = 'ObjectTel'
      Size = 50
    end
    object strngfldHedAddress: TStringField
      FieldName = 'Address'
      Size = 200
    end
    object blnfldHedbFuHe: TBooleanField
      FieldName = 'bFuHe'
    end
    object strngfldHedSubjoinTableId: TStringField
      FieldName = 'SubjoinTableId'
      Size = 50
    end
    object strngfldHedWKindName: TStringField
      FieldKind = fkCalculated
      FieldName = 'WKindName'
      Calculated = True
    end
    object blnfldHedbCashDeal: TBooleanField
      FieldName = 'bCashDeal'
    end
    object qyHedObjectMobile: TStringField
      FieldName = 'ObjectMobile'
      Size = 100
    end
    object qyHedObjectLinkMan: TStringField
      FieldName = 'ObjectLinkMan'
      Size = 50
    end
    object qyHedObjectFax: TStringField
      FieldName = 'ObjectFax'
      Size = 100
    end
    object qyHedFactMoney: TFMTBCDField
      FieldName = 'FactMoney'
      Precision = 18
      Size = 5
    end
    object qyHedPayMoney: TFMTBCDField
      FieldName = 'PayMoney'
      Precision = 18
      Size = 5
    end
    object qyHedDisCount: TFMTBCDField
      FieldName = 'DisCount'
      Precision = 18
      Size = 5
    end
    object qyHedHWareId: TWideStringField
      FieldName = 'HWareId'
      OnChange = qyHedHWareIdChange
    end
    object qyHedHWareName: TWideStringField
      FieldName = 'HWareName'
      Size = 50
    end
  end
  inherited qyDet: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyDetAfterInsert
    AfterScroll = nil
    OnCalcFields = qyDetCalcFields
    SQL.Strings = (
      'select * from WareInOutDTTB where 1=0')
    object atncfldDetAutoID: TAutoIncField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object strngfldDetItemId: TStringField
      FieldName = 'ItemId'
      OnChange = strngfldDetItemIdChange
      Size = 30
    end
    object strngfldDetItemUnit: TStringField
      FieldName = 'ItemUnit'
      Size = 10
    end
    object strngfldDetSubUnit: TStringField
      FieldName = 'SubUnit'
      Size = 10
    end
    object strngfldDetWareId: TStringField
      FieldName = 'WareId'
    end
    object e: TStringField
      FieldName = 'ProType'
      Size = 100
    end
    object strngfldDetColor: TStringField
      FieldName = 'Color'
      Size = 100
    end
    object strngfldDetBatchNo: TStringField
      FieldName = 'BatchNo'
      Size = 30
    end
    object strngfldDetPlaceNo: TStringField
      FieldName = 'PlaceNo'
      Size = 30
    end
    object strngfldDetCompactNo: TStringField
      FieldName = 'CompactNo'
      Size = 100
    end
    object strngfldDetObjectId: TStringField
      FieldName = 'ObjectId'
      OnChange = strngfldDetObjectIdChange
      Size = 30
    end
    object strngfldDetSjNo: TStringField
      FieldName = 'SjNo'
      Size = 30
    end
    object strngfldDetsOrderNo: TStringField
      FieldName = 'sOrderNo'
      Size = 30
    end
    object strngfldDetTechName: TStringField
      FieldName = 'TechName'
      Size = 100
    end
    object strngfldDetInDate: TStringField
      FieldName = 'InDate'
      Size = 30
    end
    object strngfldDetPState: TStringField
      FieldName = 'PState'
      Size = 30
    end
    object strngfldDetTempNo: TStringField
      FieldName = 'TempNo'
      Size = 30
    end
    object qyDetMainNum: TFMTBCDField
      FieldName = 'MainNum'
      Precision = 19
      Size = 6
    end
    object qyDetMainPrice: TFMTBCDField
      FieldName = 'MainPrice'
      Precision = 19
      Size = 6
    end
    object qyDetTaxPrice: TFMTBCDField
      FieldName = 'TaxPrice'
      Precision = 19
      Size = 6
    end
    object qyDetMainMoney: TFMTBCDField
      FieldName = 'MainMoney'
      Precision = 19
      Size = 6
    end
    object qyDetSubNum: TFMTBCDField
      FieldName = 'SubNum'
      Precision = 19
      Size = 6
    end
    object qyDetSubPrice: TFMTBCDField
      FieldName = 'SubPrice'
      Precision = 19
      Size = 6
    end
    object qyDetSubTaxPrice: TFMTBCDField
      FieldName = 'SubTaxPrice'
      Precision = 19
      Size = 6
    end
    object qyDetSubMoney: TFMTBCDField
      FieldName = 'SubMoney'
      Precision = 19
      Size = 6
    end
    object qyDetTaxRate: TFMTBCDField
      FieldName = 'TaxRate'
      Precision = 19
      Size = 6
    end
    object qyDetTaxMoney: TFMTBCDField
      FieldName = 'TaxMoney'
      Precision = 19
      Size = 6
    end
    object qyDetAllMoney: TFMTBCDField
      FieldName = 'AllMoney'
      Precision = 19
      Size = 6
    end
    object qyDetOkPrice: TFMTBCDField
      FieldName = 'OkPrice'
      Precision = 19
      Size = 6
    end
    object qyDetOkMoney: TBCDField
      FieldName = 'OkMoney'
      Precision = 19
    end
    object qyDetMadePrice: TFMTBCDField
      FieldName = 'MadePrice'
      Precision = 19
      Size = 6
    end
    object qyDetMadeTaxPrice: TFMTBCDField
      FieldName = 'MadeTaxPrice'
      Precision = 19
      Size = 6
    end
    object qyDetMadeMoney: TFMTBCDField
      FieldName = 'MadeMoney'
      Precision = 19
      Size = 6
    end
    object qyDetMadeTaxRate: TFMTBCDField
      FieldName = 'MadeTaxRate'
      Precision = 19
      Size = 6
    end
    object qyDetMadeTaxMoney: TFMTBCDField
      FieldName = 'MadeTaxMoney'
      Precision = 19
      Size = 6
    end
    object qyDetMadeAllMoney: TFMTBCDField
      FieldName = 'MadeAllMoney'
      Precision = 19
      Size = 6
    end
    object strngfldDetSubjoinNo: TStringField
      FieldName = 'SubjoinNo'
    end
    object qyDetbEnd: TBooleanField
      FieldName = 'bEnd'
    end
    object qyDetEndNum: TFMTBCDField
      FieldName = 'EndNum'
      Precision = 19
      Size = 6
    end
    object intgrfldDetrfID: TIntegerField
      FieldName = 'rfID'
    end
    object qyDetrfNum: TFMTBCDField
      FieldName = 'rfNum'
      Precision = 19
      Size = 6
    end
    object strngfldDetTaskNo: TStringField
      FieldName = 'TaskNo'
    end
    object strngfldDetQcStockNo: TStringField
      FieldName = 'QcStockNo'
    end
    object strngfldDetStockRecNo: TStringField
      FieldName = 'StockRecNo'
    end
    object strngfldDetRemark: TStringField
      FieldName = 'Remark'
      Size = 100
    end
    object strngfldDetItemPic: TStringField
      FieldName = 'ItemPic'
      Size = 100
    end
    object strngfldDetWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'WareName'
      Size = 80
      Calculated = True
    end
    object strngfldDetBillNO: TStringField
      FieldName = 'BillNO'
    end
    object intgrfldDetINo: TIntegerField
      FieldName = 'INo'
    end
    object qyDetiFlag: TIntegerField
      FieldName = 'iFlag'
    end
    object qyDetItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 30
    end
    object qyDetItemName: TStringField
      FieldName = 'ItemName'
      Size = 100
    end
    object qyDetItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 100
    end
    object strngfldDetHtNo: TStringField
      FieldName = 'HtNo'
      Size = 100
    end
    object strngfldDetAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 100
    end
    object strngfldDetSaleOrderNo: TStringField
      FieldName = 'SaleOrderNo'
      Size = 100
    end
    object blnfldDetbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object strngfldDetRfNo: TStringField
      FieldName = 'RfNo'
      Size = 100
    end
    object strngfldDetStockNo: TStringField
      FieldName = 'StockNo'
      Size = 100
    end
    object strngfldDetSaleSenderNo: TStringField
      FieldName = 'SaleSenderNo'
      Size = 100
    end
    object fltfldDetWareNum: TFloatField
      FieldKind = fkCalculated
      FieldName = 'WareNum'
      Calculated = True
    end
    object qyDetStockID: TStringField
      FieldName = 'StockID'
      Size = 100
    end
    object qyDetSaleSenderId: TStringField
      FieldName = 'SaleSenderId'
      Size = 100
    end
    object qyDetSaleOrderId: TStringField
      FieldName = 'SaleOrderId'
      Size = 100
    end
    object qyDetWeight: TFMTBCDField
      FieldName = 'Weight'
      Precision = 19
      Size = 6
    end
    object qyDetAllWeight: TFMTBCDField
      FieldName = 'AllWeight'
      Precision = 19
      Size = 6
    end
    object qyDetEmpId: TStringField
      FieldName = 'EmpId'
      Size = 50
    end
    object qyDetEmpName: TStringField
      FieldName = 'EmpName'
      Size = 50
    end
    object strngfldDetObjectName: TStringField
      FieldKind = fkCalculated
      FieldName = 'ObjectName'
      Size = 200
      Calculated = True
    end
    object strngfldDetTaskId: TStringField
      FieldName = 'TaskId'
      Size = 100
    end
    object strngfldDetQcStockId: TStringField
      FieldName = 'QcStockId'
      Size = 100
    end
    object strngfldDetStockRecId: TStringField
      FieldName = 'StockRecId'
      Size = 100
    end
    object qyDetProOrderNo: TStringField
      FieldName = 'ProOrderNo'
      Size = 100
    end
    object qyDetProOrderId: TStringField
      FieldName = 'ProOrderId'
      Size = 100
    end
    object qyDetExchRate: TFMTBCDField
      FieldName = 'ExchRate'
      Precision = 19
      Size = 6
    end
    object qyDetMasterNo: TStringField
      FieldName = 'MasterNo'
      Size = 100
    end
    object qyDetDispatchNo: TStringField
      FieldName = 'DispatchNo'
      Size = 100
    end
    object qyDetDispatchId: TStringField
      FieldName = 'DispatchId'
      Size = 100
    end
    object qyDetMatOutNo: TStringField
      FieldName = 'MatOutNo'
      Size = 100
    end
    object qyDetMatOutId: TStringField
      FieldName = 'MatOutId'
      Size = 100
    end
    object qyDetExchangeRate: TFMTBCDField
      FieldName = 'ExchangeRate'
      Precision = 19
      Size = 6
    end
  end
  inherited frxHed: TfrxDBDataset
    FieldAliases.Strings = (
      'AutoID='#33258#21160#32534#21495
      'BillNO='#21333#21495
      'WKindID='#19994#21153#31867#22411#32534#21495
      'WFlag='#20986#20837#24211#26631#24535
      'BillDate='#26085#26399
      'WareMan='#20179#31649#21592#32534#21495
      'SendMan='#21457#26009#21592#32534#21495
      'DrawMan='#39046#26009#21592#32534#21495
      'CoinName='#24065#31181
      'ExchangeRate='#27719#29575
      'bTax='#26159#21542#21547#31246
      'bInvoice='#26159#21542#35760#36134
      'AccName='#35760#36134#20154#22995#21517
      'ObjectID='#24448#26469#21333#20301#32534#21495
      'bPrint='#26159#21542#25171#21360
      'PrintNum='#25171#21360#27425#25968
      'SubjoinNo='#20851#32852#21495#30721
      'MakeDate='#21046#21333#26085#26399
      'MakeMan='#21046#21333#20154#32534#21495
      'MakeManName='#21046#21333#20154
      'AuditFlag='#23457#26680#26631#24535
      'AuditMan='#23457#26680#20154#32534#21495
      'AuditDate='#23457#26680#26085#26399
      'bMaxAudit='#26159#21542#23457#26680#23436#25104
      'SourceNo='#28304#21333#21495
      'EditMan='#20462#25913#20154#32534#21495
      'EditManName='#20462#25913#20154#22995#21517
      'EditDate='#20462#25913#26085#26399
      'FinaMan='#35760#36134#20154#32534#21495
      'FinaDate='#35760#36134#26085#26399
      'YearMon='#24180#26376
      'PzWord='#20973#35777#23383
      'PzNo='#20973#35777#21495
      'PzId='#20973#35777#32534#21495
      'Remark='#22791#27880
      'ObjectCode='#24448#26469#21333#20301#20195#21495
      'WareManName='#20179#31649#21592
      'SendManName='#21457#26009#21592
      'DrawManName='#39046#26009#21592
      'bRed='#26159#21542#20914#32418
      'ObjectName='#24448#26469#21333#20301
      'Seller='#38144#21806#21592#32534#21495
      'SellerManName='#38144#21806#21592
      'PayMode='#20184#27454#26041#24335
      'AuditManName='#23457#26680#20154
      'MaxAuditDate='#26368#21518#23457#26680#26085#26399
      'bSelect='#26159#21542#36873#25321
      'bAuto='#26159#21542#33258#21160#29983#25104
      'SignFlag='#34013#32418#23383
      'ObjectTel='#24448#26469#21333#20301#30005#35805
      'Address='#24448#26469#21333#20301#22320#22336
      'bFuHe='#26159#21542#22797#26680
      'SubjoinTableId='#28304#21333#34920#32534#21495
      'WKindName='#19994#21153#31867#22411#21517#31216
      'bCashDeal='#26159#21542#29616#37329#20132#26131
      'ObjectMobile='#24448#26469#21333#20301#25163#26426#21495
      'ObjectLinkMan='#24448#26469#21333#20301#32852#31995#20154
      'ObjectFax='#24448#26469#21333#20301#20256#30495)
  end
  inherited frxDet: TfrxDBDataset
    FieldAliases.Strings = (
      'AutoID='#33258#21160#32534#21495
      'ItemId='#20135#21697#32534#21495
      'ItemUnit='#20027#21333#20301
      'SubUnit='#21103#21333#20301
      'ItemPYCode='#25340#38899#30721
      'WareId='#20179#24211#32534#21495
      'ProType='#23646#24615
      'Color='#39068#33394
      'BatchNo='#25209#21495
      'PlaceNo='#36135#20301
      'CompactNo='#21512#21516#21495
      'ObjectId='#21333#20301#32534#21495
      'SjNo='#21830#26816#21495
      'sOrderNo='#35746#21333#21495
      'TechName='#24037#24207#21517#31216
      'InDate='#20837#24211#26085#26399
      'PState='#29366#24577
      'TempNo='#20020#26102#21495
      'MainNum='#20027#25968#37327
      'MainPrice='#20027#21333#20215
      'TaxPrice='#21547#31246#20215
      'MainMoney='#20027#37329#39069
      'SubNum='#21103#25968#37327
      'SubPrice='#21103#21333#20215
      'SubTaxPrice='#21103#21547#31246#20215
      'SubMoney='#21103#37329#39069
      'TaxRate='#31246#29575
      'TaxMoney='#31246#39069
      'AllMoney='#20215#31246#21512#35745
      'OkPrice='#26680#31639#21333#20215
      'OkMoney='#26680#31639#22522#24681
      'MadePrice=MadePrice'
      'MadeTaxPrice=MadeTaxPrice'
      'MadeMoney=MadeMoney'
      'MadeTaxRate=MadeTaxRate'
      'MadeTaxMoney=MadeTaxMoney'
      'MadeAllMoney=MadeAllMoney'
      'SubjoinNo='#20851#32852#21495
      'bEnd='#26159#21542#32467#26463
      'EndNum='#32467#26463#25968#37327
      'rfID='#21442#29031#20869#30721
      'rfNum='#21442#29031#25968#37327
      'TaskNo='#20219#21153#21495
      'QcStockNo='#36136#26816#21495
      'StockRecNo='#37319#36141#25910#36135#21495
      'Remark='#22791#27880
      'ItemPic='#20135#21697#22270#21495
      'WareName='#20179#24211#21517#31216
      'BillNO='#21333#21495
      'INo='#24207#21495
      'iFlag='#36716#25442#26631#24535
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#20135#21697#35268#26684
      'HtNo=HtNo'
      'AutoNo='#33258#21160#21495
      'SaleOrderNo='#38144#21806#35746#21333#20851#32852#21495
      'bSelect='#26159#21542#36873#25321
      'RfNo='#21442#29031#21495
      'StockNo='#37319#36141#35746#21333#21495
      'SaleSenderNo='#38144#21806#21457#36135#20851#32852#21495
      'WareNum='#24211#23384#25968#37327
      'StockID='#37319#36141#35746#21333#20869#30721
      'SaleSenderId='#38144#21806#21457#36135#21333#20869#30721
      'SaleOrderId='#38144#21806#35746#21333#20869#30721
      'Weight='#21333#37325
      'AllWeight='#24635#37325
      'EmpId='#21592#24037#32534#21495
      'EmpName='#21592#24037#22995#21517
      'ObjectName='#21333#20301#21517#31216
      'TaskId='#20219#21153#20869#30721
      'QcStockId='#36136#26816#20869#30721
      'StockRecId='#37319#36141#25910#36135#20869#30721
      'ProOrderNo='#29983#20135#35746#21333#21495
      'ProOrderId='#29983#20135#35746#21333#20869#30721
      'ExchRate='#36716#21270#29575)
  end
  object qyWKind: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select WKindID,WKindName,WFlag from WareKindTB')
    Left = 120
    Top = 288
  end
  object qyWareNum: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'select sInFo=ItemId+ISNULL(WareId,'#39#39')+ISNULL(ProType,'#39#39')+ISNULL(' +
        'Color,'#39#39')+ISNULL(PlaceNo,'#39#39')+ISNULL(ObjectId,'#39#39'),WareNum from Wa' +
        'reStorageTB')
    Left = 160
    Top = 288
  end
  object dxbrpmnFuHe: TdxBarPopupMenu
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
    ItemOptions.ShowDescriptions = False
    UseOwnFont = False
    Left = 888
    Top = 64
  end
  object dxbrpmnInvoice: TdxBarPopupMenu
    BarManager = dxbrmngrBarManage
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxbrbtnJZ'
      end
      item
        Visible = True
        ItemName = 'dxbrbtnNoJZ'
      end>
    ItemOptions.ShowDescriptions = False
    UseOwnFont = False
    Left = 688
    Top = 56
  end
end
