inherited AssistMoveFM: TAssistMoveFM
  Caption = #22806#21327#21457#26009
  ClientHeight = 508
  ClientWidth = 1054
  Position = poDesigned
  ExplicitWidth = 1054
  ExplicitHeight = 508
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    Width = 1054
    Height = 32
    TabOrder = 1
    ExplicitWidth = 1054
    ExplicitHeight = 32
    inherited cxLabTitle: TcxLabel
      Caption = #22806#21327#21457#26009
      Style.IsFontAssigned = True
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
    Top = 484
    Width = 1054
    Height = 24
    TabOrder = 3
    ExplicitTop = 484
    ExplicitWidth = 1054
    ExplicitHeight = 24
    inherited Label3: TLabel
      Top = 3
      ExplicitTop = 3
    end
    inherited Label4: TLabel
      Top = 3
      ExplicitTop = 3
    end
    inherited Label5: TLabel
      Top = 3
      ExplicitTop = 3
    end
    inherited Label6: TLabel
      Left = 495
      Top = 3
      ExplicitLeft = 495
      ExplicitTop = 3
    end
    inherited Label7: TLabel
      Left = 613
      Top = 3
      ExplicitLeft = 613
      ExplicitTop = 3
    end
    inherited Label8: TLabel
      Left = 784
      Top = 3
      ExplicitLeft = 784
      ExplicitTop = 3
    end
    inherited Label2: TLabel
      Top = 3
      ExplicitTop = 3
    end
    inherited cxEdtMakeManName: TcxDBTextEdit
      Top = -1
      ExplicitTop = -1
    end
    inherited cxEdtMakeDate: TcxDBTextEdit
      Top = -1
      ExplicitTop = -1
    end
    inherited cxEdtEditManName: TcxDBTextEdit
      Top = -1
      ExplicitTop = -1
    end
    inherited cxEdtEditDate: TcxDBTextEdit
      Left = 405
      Top = -1
      ExplicitLeft = 405
      ExplicitTop = -1
    end
    inherited cxEdtAuditManName: TcxDBTextEdit
      Left = 537
      Top = -1
      ExplicitLeft = 537
      ExplicitTop = -1
    end
    inherited cxEdtAuditDate: TcxDBTextEdit
      Left = 667
      Top = -1
      ExplicitLeft = 667
      ExplicitTop = -1
    end
    inherited cxEdtAuditFlag: TcxDBTextEdit
      Left = 838
      Top = -1
      ExplicitLeft = 838
      ExplicitTop = -1
    end
  end
  inherited pnlEdit: TPanel
    Top = 78
    Width = 1054
    Height = 78
    ExplicitTop = 78
    ExplicitWidth = 1054
    ExplicitHeight = 78
    object Label15: TLabel [0]
      Left = 250
      Top = 6
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
    object lbl1: TLabel [1]
      Left = 492
      Top = 6
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
    object lbl4: TLabel [2]
      Left = 250
      Top = 33
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
    object lbl5: TLabel [3]
      Left = 492
      Top = 33
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
    object cxBtnOutWare: TcxDBButtonEdit [4]
      Left = 335
      Top = 2
      DataBinding.DataField = 'OutWareName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxBtnOutWarePropertiesButtonClick
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      TabOrder = 0
      Width = 150
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 508
      Top = 3
      TabOrder = 1
      ExplicitLeft = 508
      ExplicitTop = 3
      ExplicitHeight = 74
      Height = 74
      inherited Label1: TLabel
        Left = 13
        Top = 13
        ExplicitLeft = 13
        ExplicitTop = 13
      end
      inherited Label9: TLabel
        Left = 13
        Top = 44
        ExplicitLeft = 13
        ExplicitTop = 44
      end
      inherited cxEdtNo: TcxDBTextEdit
        Left = 43
        Top = 9
        DataBinding.DataField = 'MoveNo'
        Style.IsFontAssigned = True
        ExplicitLeft = 43
        ExplicitTop = 9
      end
      inherited cxdt: TcxDBDateEdit
        Left = 43
        Top = 40
        DataBinding.DataField = 'MoveDate'
        ExplicitLeft = 43
        ExplicitTop = 40
      end
    end
    object cxBtnInWare: TcxDBButtonEdit
      Left = 336
      Top = 29
      DataBinding.DataField = 'InWareName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxBtnInWarePropertiesButtonClick
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      TabOrder = 2
      Width = 150
    end
    object cxBtnAcceptName: TcxDBButtonEdit
      Left = 94
      Top = 29
      DataBinding.DataField = 'AcceptName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxBt2PropertiesButtonClick
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      TabOrder = 3
      Width = 152
    end
    object cxMoRemark: TcxDBMemo
      Left = 94
      Top = 56
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.ScrollBars = ssVertical
      TabOrder = 4
      Visible = False
      Height = 21
      Width = 392
    end
    object cxPupEdtRemark: TcxDBPopupEdit
      Left = 94
      Top = 56
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.PopupControl = cxMoRemark
      Properties.ReadOnly = False
      TabOrder = 5
      Width = 392
    end
    object cxBtnSendName: TcxDBButtonEdit
      Left = 94
      Top = 2
      DataBinding.DataField = 'SendName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxBt1PropertiesButtonClick
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      TabOrder = 6
      Width = 152
    end
    object cxLabel1: TcxLabel
      Left = 36
      Top = 4
      Caption = #21457#20986#21333#20301
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 36
      Top = 31
      Caption = #22806#21327#21333#20301
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 278
      Top = 4
      Caption = #21457#20986#20179#24211
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 278
      Top = 31
      Caption = #35843#20837#20179#24211
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 60
      Top = 58
      Caption = #22791#27880
      Transparent = True
    end
  end
  inherited pnlBody: TPanel
    Top = 156
    Width = 1054
    Height = 328
    ExplicitTop = 156
    ExplicitWidth = 1054
    ExplicitHeight = 328
    inherited cxPgc: TcxPageControl
      Width = 1054
      Height = 328
      ExplicitWidth = 1054
      ExplicitHeight = 328
      ClientRectBottom = 322
      ClientRectRight = 1048
      inherited cxtbsht1: TcxTabSheet
        ExplicitLeft = 2
        ExplicitTop = 27
        ExplicitWidth = 1046
        ExplicitHeight = 295
        inherited cxgrd: TcxGrid
          Width = 1046
          Height = 295
          ExplicitWidth = 1046
          ExplicitHeight = 295
          inherited cxgrdtbv: TcxGridDBTableView
            OnCustomDrawCell = cxgrdtbvCustomDrawCell
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = cxgrdbclmnMoveNum
              end
              item
                Kind = skSum
                Column = cxgrdbclmnOrderMoney
              end
              item
                Kind = skSum
                Column = cxgrdbclmnAllMoney
              end
              item
                Format = #21512#35745':0'
                Kind = skCount
                Column = cxgrdbclmnItemCode
              end>
            object cxgrdbclmnItemCode: TcxGridDBColumn
              Caption = #20135#21697#20195#21495
              DataBinding.FieldName = 'ItemCode'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Hint = 'Ctrl+F2'#33719#21462#20135#21697#36164#26009
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 16449
              Properties.OnButtonClick = cxgrdbclmnItemCodePropertiesButtonClick
              Width = 80
            end
            object cxgrdbclmnItemPYCode: TcxGridDBColumn
              Caption = #25340#38899#30721
              DataBinding.FieldName = 'ItemPYCode'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.AutoSelect = False
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
              Properties.MaxLength = 200
              Properties.OnValidate = cxgrdbclmnItemPYCodePropertiesValidate
              Visible = False
              Width = 64
            end
            object cxgrdbclmnItemName: TcxGridDBColumn
              Caption = #20135#21697#21517#31216
              DataBinding.FieldName = 'ItemName'
              Options.Editing = False
              Width = 99
            end
            object cxgrdbclmnItemSpc: TcxGridDBColumn
              Caption = #35268#26684
              DataBinding.FieldName = 'ItemSpc'
              Options.Editing = False
              Width = 80
            end
            object cxgrdbclmnItemUnit: TcxGridDBColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'ItemUnit'
              Options.Editing = False
              Width = 51
            end
            object cxgrdbclmnColumn4: TcxGridDBColumn
              Caption = #36716#21270#29575
              DataBinding.FieldName = 'ExchRate'
              Options.Editing = False
              Width = 55
            end
            object cxgrdbclmnColumn5: TcxGridDBColumn
              Caption = #21103#21333#20301
              DataBinding.FieldName = 'SubUnit'
              Visible = False
              Options.Editing = False
              Width = 51
            end
            object cxgrdbclmnProType: TcxGridDBColumn
              Caption = #23646#24615
              DataBinding.FieldName = 'ProType'
              Visible = False
              Width = 61
            end
            object cxgrdtbvColumn2: TcxGridDBColumn
              Caption = #24037#24207#21495
              DataBinding.FieldName = 'Ordinal'
              Width = 58
            end
            object cxgrdtbvColumn1: TcxGridDBColumn
              Caption = #24037#24207
              DataBinding.FieldName = 'InTechName'
              Width = 75
            end
            object cxgrdbclmnColumn1: TcxGridDBColumn
              Caption = #25509#25910#22806#21327#21830#32534#21495
              DataBinding.FieldName = 'InObjectId'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdbclmnColumn1PropertiesButtonClick
              Width = 107
            end
            object cxgrdbclmnColumn2: TcxGridDBColumn
              Caption = #25509#25910#22806#21327#21830#21517#31216
              DataBinding.FieldName = 'InObjectName'
              Width = 152
            end
            object cxgrdbclmnMoveNum: TcxGridDBColumn
              Caption = #25968#37327'*'
              DataBinding.FieldName = 'MoveNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnOrderNumPropertiesValidate
              Width = 63
            end
            object cxgrdbclmnColumn6: TcxGridDBColumn
              Caption = #21103#25968#37327
              DataBinding.FieldName = 'SubNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnColumn6PropertiesValidate
              Visible = False
              Width = 68
            end
            object cxgrdbclmnOrderPrice: TcxGridDBColumn
              Caption = #21333#20215
              DataBinding.FieldName = 'MovePrice'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnOrderPricePropertiesValidate
              Visible = False
              Width = 62
            end
            object cxgrdbclmnTaxPrice: TcxGridDBColumn
              Caption = #21547#31246#20215
              DataBinding.FieldName = 'TaxPrice'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnTaxPricePropertiesValidate
              Visible = False
              Width = 63
            end
            object cxgrdbclmnTaxRate: TcxGridDBColumn
              Caption = #31246#29575'%'
              DataBinding.FieldName = 'TaxRate'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnTaxRatePropertiesValidate
              Visible = False
              Width = 59
            end
            object cxgrdbclmnOrderMoney: TcxGridDBColumn
              Caption = #37329#39069
              DataBinding.FieldName = 'MoveMoney'
              PropertiesClassName = 'TcxTextEditProperties'
              Visible = False
              Width = 75
            end
            object cxgrdbclmnAllMoney: TcxGridDBColumn
              Caption = #20215#31246#21512#35745
              DataBinding.FieldName = 'AllMoney'
              PropertiesClassName = 'TcxTextEditProperties'
              Visible = False
              Width = 90
            end
            object cxgrdWareNum: TcxGridDBColumn
              Caption = #24403#21069#24211#23384
              DataBinding.FieldName = 'WareNum'
              Options.Editing = False
            end
            object cxgrdbclmnRemark: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 94
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
          UserWidth = 78
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
          ItemName = 'btTemp'
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
      ButtonStyle = bsDropDown
      DropDownMenu = dxBarPopupMenu1
    end
    inherited btUnCheck: TdxBarLargeButton
      OnClick = btUnCheckClick
    end
    inherited btTemp: TdxBarLargeButton
      Caption = #26597' '#30475
      Hint = #26597#30475#29983#25104#30340#20986#20837#24211#21333#25454
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = dxbrpmn1
      LargeGlyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000303
        030E1F1F1FA7212121E707070756000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002121
        219F505050FF545454FF1B1B1BF33838389D7E7E7E977E7E7E977E7E7E977E7E
        7E977E7E7E977E7E7E977E7E7E977E7E7E977E7E7E9782828297696969761818
        181C000000000000000000000000000000000000000000000000000000002828
        28C95C5C5CFF7F7F7FFF4E4E4EFF191919FFA9A9A9FFF6F6F6FFF6F6F6FFF6F6
        F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF5F5F5FFE3E3E3FFC4C4
        C4E12525252E0000000000000000000000000000000000000000000000000606
        062A2C2C2CE1555555FF757575FF444444FF151515FFA1A1A1FFF1F3F2FFC8D9
        D4FFABC7BEFFADCAC0FFCCDDD7FFF2F4F3FFF6F6F6FFF6F6F6FFF3F3F3FFE5E5
        E5FFC9C9C9E72222222A00000000000000000000000000000000000000000000
        0000797979B33A3A3AFF484848FF6A6A6AFF353635FF123127FF2A795EFF0F71
        4EFF0A724CFF0D774FFF177E57FF3F9474FFB3D2C6FFF5F6F6FFF6F6F6FFE8E8
        E8FFF1F1F1FFB2B2B2CB0F0F0F12000000000000000000000000000000000000
        0000A9A9A9BFCCCCCCFF323232FF393939FF2F604FFF066946FF278562FF479A
        7AFF5CA488FF56A285FF31946DFF1F8F62FF1A8C5EFF90C4B0FFF6F7F6FFE9E9
        E9FFF6F6F6FFF0F0F0FF7C7C7C8B000000000000000000000000000000000000
        0000AAAAAABFF8F8F8FFCFCFCFFF25453BFF066A46FF449677FF8DB9A8FFD8E0
        DDFFEFEFEFFFF0F0F0FFD8E1DEFF73AF99FF219565FF209766FFB1D6C7FFF7F7
        F7FFEDEDEDFFEAEAEAFFEBEBEBFB1818181A0000000000000000000000000000
        0000ABABABBFF8F8F8FFE9EDECFF26775BFF2D8866FF91BBACFFE9EBEAFFF3F3
        F3FFF0F0F0FFEEEEEEFFEFEFEFFFECEDEDFF6DAC94FF1F9966FF52B088FFF2F5
        F4FFF8F8F8FFF4F4F4FFE7E7E7FF6363636A0000000000000000000000000000
        0000ACACACBFF8F8F8FFBFD4CDFF076B48FF59A286FFD6DEDBFFF3F3F3FFF0F0
        F0FFEEEEEEFFEFEFEFFFF1F1F1FFF7F7F7FFE6EDEBFF1D8F61FF3AAA7AFFCFE5
        DCFFF7F7F7FFF8F8F8FFF5F5F5FFA3A3A3BF0303030400000000000000000000
        0000ACACACBFF9F9F9FF98BCB0FF09704AFF73AE98FFEDEDEDFFF3F3F3FFEDED
        EDFFEEEEEEFFF0F0F0FFFAFAFAFFFFFFFFFFFCFCFCFF429A78FF35AA77FFBADE
        CFFFF8F8F8FFF8F8F8FFF7F7F7FFB8B8B8CF0606060800000000000000000000
        0000ACACACBFF9F9F9FF96BCAFFF0A734CFF6DAC94FFEEEEEEFFF0F0F0FFEEEE
        EEFFF0F0F0FFF7F7F7FFFFFFFFFFFFFFFFFFFBFBFBFF469C7BFF3AAE7CFFBDE0
        D1FFF9F9F9FFF8F8F8FFF8F8F8FFBABABACF0606060800000000000000000000
        0000ADADADBFF9F9F9FFBAD2CAFF0B744DFF4D9F7FFFDFE5E3FFF0F0F0FFEFEF
        EFFFF1F1F1FFFDFDFDFFFEFEFEFFFEFEFEFFEEF2F1FF239064FF52BA8CFFCCE5
        DBFFF9F9F9FFF9F9F9FFF9F9F9FFBBBBBBCF0606060800000000000000000000
        0000AEAEAEBFF9F9F9FFE8EEECFF298462FF258E65FF8EBAAAFFF0F0F0FFEFEF
        EFFFF4F4F4FFFFFFFFFFFEFEFEFFF9FAFAFF7FB3A0FF29A26FFF7DCBA9FFEFF4
        F2FFF9F9F9FFF9F9F9FFF9F9F9FFBCBCBCCF0606060800000000000000000000
        0000AFAFAFBFF9F9F9FFF8F8F8FF90BBACFF148458FF2B946AFF8AB9A8FFE3E8
        E6FFF4F4F4FFFCFCFCFFE7EEECFF84B7A4FF269869FF58BE91FFBBDFCFFFF9F9
        F9FFF9F9F9FFF9F9F9FFF9F9F9FFBCBCBCCF0707070800000000000000000000
        0000AFAFAFBFFAFAFAFFF7F7F7FFEAEBEBFF60A089FF198E5EFF1C9362FF3497
        70FF57A385FF56A285FF30956DFF229D69FF54BC8EFF98D1B8FFF4F7F6FFF8F8
        F8FFF8F8F8FFF8F8F8FFF8F8F8FFBCBCBCCF0707070800000000000000000000
        0000AFAFAFBFFAFAFAFFF7F7F7FFEEEEEEFFEBEDECFF94C1B0FF389E75FF299E
        6DFF30A673FF37AC79FF43B281FF70C39FFFB2DAC9FFF9F9F9FFF9F9F9FFF9F9
        F9FFF9F9F9FFF9F9F9FFF9F9F9FFBDBDBDCF0707070800000000000000000000
        0000B0B0B0BFFAFAFAFFF9F9F9FFF9F9F9FFF9F9F9FFF8F8F8FFE9EFEDFFBAD8
        CCFFA0CCBBFFA4CFBEFFC6E0D6FFE9F1EEFFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
        F9FFF9F9F9FFF9F9F9FFF9F9F9FFBDBDBDCF0707070800000000000000000000
        0000B0B0B0BFFAFAFAFFF5F5F5FFE7E7E7FFE7E7E7FFE8E8E8FFE8E8E8FFE8E8
        E8FFE9E9E9FFE9E9E9FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE7E7E7FFEDED
        EDFFF8F8F8FFF8F8F8FFF8F8F8FFBEBEBECF0707070800000000000000000000
        0000B1B1B1BFFAFAFAFFF9F9F9FFF8F8F8FFF8F8F8FFF9F9F9FFF9F9F9FFF8F8
        F8FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF8F8F8FFF9F9F9FFF9F9F9FFF8F8
        F8FFF9F9F9FFF9F9F9FFF8F8F8FFBEBEBECF0707070800000000000000000000
        0000B2B2B2BFFAFAFAFFF8F8F8FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
        F5FFF5F5F5FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
        F5FFF4F4F4FFF8F8F8FFF9F9F9FFBDBDBDCD0707070800000000000000000000
        0000A3A3A3B1FAFAFAFFF6F6F6FFEDEDEDFFEEEEEEFFEFEFEFFFEFEFEFFFEFEF
        EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEEEE
        EEFFEBEBEBFFF6F6F6FFF8F8F8FFA8A8A8B90000000000000000000000000000
        00004E4E4E58F8F8F8FFF9F9F9FFF9F9F9FFF8F8F8FFF9F9F9FFF8F8F8FFF8F8
        F8FFF9F9F9FFF8F8F8FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
        F9FFF9F9F9FFF9F9F9FFF4F4F4FF545454600000000000000000000000000000
        0000030303048A8A8A97F0F0F0F9F9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
        F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
        F9FFF8F8F8FFEEEEEEFB8F8F8FA1030303040000000000000000000000000000
        00000000000004040404393939407E7E7E899494949F9494949F9494949F9494
        949F9494949F9393939F9393939F9393939F9393939F9393939F9393939F9393
        939F7D7D7D893F3F3F4803030304000000000000000000000000}
    end
    inherited btRef: TdxBarLargeButton
      Visible = ivAlways
      OnClick = btRefClick
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
    object dxbrbtn1: TdxBarButton
      Caption = #20837#24211
      Category = 0
      Hint = #20837#24211
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
      OnClick = dxbrbtn1Click
    end
    object dxbrbtn2: TdxBarButton
      Caption = #20986#24211
      Category = 0
      Hint = #20986#24211
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
      OnClick = dxbrbtn2Click
    end
    object dxBarButton1: TdxBarButton
      Caption = #21457#26009
      Category = 0
      Hint = #21457#26009
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = #21457#24037#24207
      Category = 0
      Hint = #21457#24037#24207
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
  end
  inherited PupBpm: TdxBarPopupMenu
    Left = 880
    Top = 54
  end
  inherited dsHed: TDataSource
    Left = 216
    Top = 54
  end
  inherited qyHed: TADOQuery
    OnCalcFields = qyHedCalcFields
    SQL.Strings = (
      'select * from ItemMoveHDTB where MKindId='#39'AssistMove'#39)
    Left = 251
    Top = 54
    object strngfldHedAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 100
    end
    object strngfldHedMoveNo: TStringField
      FieldName = 'MoveNo'
      Size = 50
    end
    object qyHedbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object strngfldHedMKindId: TStringField
      FieldName = 'MKindId'
      Size = 50
    end
    object qyHedMoveDate: TDateTimeField
      FieldName = 'MoveDate'
    end
    object strngfldHedMoveOutWare: TStringField
      FieldName = 'OutWare'
    end
    object strngfldHedMoveInWare: TStringField
      FieldName = 'InWare'
    end
    object strngfldHedAcceptId: TStringField
      FieldName = 'AcceptId'
      Size = 30
    end
    object strngfldHedSendId: TStringField
      FieldName = 'SendId'
      Size = 30
    end
    object strngfldHedSourceNo: TStringField
      FieldName = 'SourceNo'
      Size = 30
    end
    object qyHedbPrint: TBooleanField
      FieldName = 'bPrint'
    end
    object qyHedPrintNum: TIntegerField
      FieldName = 'PrintNum'
      OnChange = qyHedPrintNumChange
    end
    object strngfldHedSubjoinNo: TStringField
      FieldName = 'SubjoinNo'
      Size = 50
    end
    object strngfldHedSubjoinTableId: TStringField
      FieldName = 'SubjoinTableId'
      Size = 50
    end
    object qyHedMakeDate: TDateTimeField
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
    object strngfldHedAuditManName: TStringField
      FieldName = 'AuditManName'
      Size = 50
    end
    object strngfldHedAuditDate: TStringField
      FieldName = 'AuditDate'
      Size = 80
    end
    object qyHedbMaxAudit: TBooleanField
      FieldName = 'bMaxAudit'
    end
    object qyHedMaxAuditDate: TDateTimeField
      FieldName = 'MaxAuditDate'
    end
    object strngfldHedEditMan: TStringField
      FieldName = 'EditMan'
      Size = 30
    end
    object strngfldHedEditManName: TStringField
      FieldName = 'EditManName'
      Size = 30
    end
    object qyHedEditDate: TDateTimeField
      FieldName = 'EditDate'
    end
    object strngfldHedFinaMan: TStringField
      FieldName = 'FinaMan'
    end
    object qyHedFinaDate: TDateTimeField
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
      Size = 500
    end
    object strngfldHedSendName: TStringField
      FieldKind = fkCalculated
      FieldName = 'SendName'
      Size = 100
      Calculated = True
    end
    object strngfldHedAcceptName: TStringField
      FieldKind = fkCalculated
      FieldName = 'AcceptName'
      Size = 100
      Calculated = True
    end
    object strngfldHedInWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'InWareName'
      Size = 50
      Calculated = True
    end
    object strngfldHedOutWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'OutWareName'
      Size = 50
      Calculated = True
    end
  end
  inherited qyDet: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyDetAfterInsert
    OnCalcFields = qyDetCalcFields
    SQL.Strings = (
      'select * from ItemMoveDTTB')
    object strngfldDetAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 100
    end
    object strngfldDetMoveNo: TStringField
      FieldName = 'MoveNo'
      Size = 50
    end
    object strngfldDetItemId: TStringField
      FieldName = 'ItemId'
      OnChange = strngfldDetItemIdChange
      Size = 30
    end
    object strngfldDetItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 30
    end
    object strngfldDetItemName: TStringField
      FieldName = 'ItemName'
      Size = 100
    end
    object strngfldDetItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 100
    end
    object strngfldDetItemPic: TStringField
      FieldName = 'ItemPic'
      Size = 100
    end
    object strngfldDetItemUnit: TStringField
      FieldName = 'ItemUnit'
      Size = 10
    end
    object strngfldDetSubUnit: TStringField
      FieldName = 'SubUnit'
      Size = 10
    end
    object strngfldDetItemPYCode: TStringField
      FieldName = 'ItemPYCode'
      Size = 50
    end
    object qyDetiFlag: TIntegerField
      FieldName = 'iFlag'
    end
    object qyDetExchRate: TFMTBCDField
      FieldName = 'ExchRate'
      Precision = 19
      Size = 6
    end
    object strngfldDetProType: TStringField
      FieldName = 'ProType'
      Size = 100
    end
    object strngfldDetInProType: TStringField
      FieldName = 'InProType'
      Size = 100
    end
    object strngfldDetColor: TStringField
      FieldName = 'Color'
      Size = 100
    end
    object strngfldDetInColor: TStringField
      FieldName = 'InColor'
      Size = 100
    end
    object strngfldDetBatchNo: TStringField
      FieldName = 'BatchNo'
      Size = 30
    end
    object strngfldDetInBatchNo: TStringField
      FieldName = 'InBatchNo'
      Size = 30
    end
    object strngfldDetPlaceNo: TStringField
      FieldName = 'PlaceNo'
      Size = 30
    end
    object strngfldDetInPlaceNo: TStringField
      FieldName = 'InPlaceNo'
      Size = 30
    end
    object strngfldDetCompactNo: TStringField
      FieldName = 'CompactNo'
      Size = 100
    end
    object strngfldDetInCompactNo: TStringField
      FieldName = 'InCompactNo'
      Size = 100
    end
    object strngfldDetObjectId: TStringField
      FieldName = 'ObjectId'
      Size = 30
    end
    object strngfldDetInObjectId: TStringField
      FieldName = 'InObjectId'
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
    object strngfldDetEmpId: TStringField
      FieldName = 'EmpId'
      Size = 50
    end
    object strngfldDetEmpName: TStringField
      FieldName = 'EmpName'
      Size = 50
    end
    object strngfldDetTopTech: TStringField
      FieldName = 'TopTech'
      Size = 100
    end
    object qyDetMoveNum: TFMTBCDField
      FieldName = 'MoveNum'
      Precision = 19
      Size = 6
    end
    object qyDetMovePrice: TFMTBCDField
      FieldName = 'MovePrice'
      Precision = 19
      Size = 6
    end
    object qyDetTaxPrice: TFMTBCDField
      FieldName = 'TaxPrice'
      Precision = 19
      Size = 6
    end
    object qyDetMoveMoney: TFMTBCDField
      FieldName = 'MoveMoney'
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
    object qyDetSpoilNum: TFMTBCDField
      FieldName = 'SpoilNum'
      Precision = 19
      Size = 6
    end
    object qyDetSpoilPrice: TFMTBCDField
      FieldName = 'SpoilPrice'
      Precision = 19
      Size = 6
    end
    object qyDetSpoilMoney: TFMTBCDField
      FieldName = 'SpoilMoney'
      Precision = 19
      Size = 6
    end
    object qyDetWasteNum: TFMTBCDField
      FieldName = 'WasteNum'
      Precision = 19
      Size = 6
    end
    object qyDetWastePrice: TFMTBCDField
      FieldName = 'WastePrice'
      Precision = 19
      Size = 6
    end
    object qyDetWasteMoney: TFMTBCDField
      FieldName = 'WasteMoney'
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
    object strngfldDetTopId: TStringField
      FieldName = 'TopId'
      Size = 30
    end
    object strngfldDetTopCode: TStringField
      FieldName = 'TopCode'
      Size = 50
    end
    object strngfldDetTopName: TStringField
      FieldName = 'TopName'
      Size = 100
    end
    object qyDetTopDosage: TFMTBCDField
      FieldName = 'TopDosage'
      Precision = 19
      Size = 6
    end
    object strngfldDetCpId: TStringField
      FieldName = 'CpId'
      Size = 30
    end
    object strngfldDetCpCode: TStringField
      FieldName = 'CpCode'
      Size = 50
    end
    object strngfldDetCpName: TStringField
      FieldName = 'CpName'
      Size = 100
    end
    object strngfldDetMrpNo: TStringField
      FieldName = 'MrpNo'
    end
    object strngfldDetMrpID: TStringField
      FieldName = 'MrpID'
      Size = 100
    end
    object strngfldDetTicketNo: TStringField
      FieldName = 'TicketNo'
    end
    object strngfldDetTicketID: TStringField
      FieldName = 'TicketID'
      Size = 100
    end
    object strngfldDetRemark: TStringField
      FieldName = 'Remark'
      Size = 500
    end
    object strngfldDetObjectName: TStringField
      FieldKind = fkCalculated
      FieldName = 'ObjectName'
      Size = 200
      Calculated = True
    end
    object strngfldDetInObjectName: TStringField
      FieldKind = fkCalculated
      FieldName = 'InObjectName'
      Size = 200
      Calculated = True
    end
    object qyDetWareNum: TFMTBCDField
      FieldKind = fkCalculated
      FieldName = 'WareNum'
      Calculated = True
    end
    object qyDetRfNum: TFMTBCDField
      FieldName = 'RfNum'
      Precision = 18
      Size = 5
    end
    object qyDetSaleOrderNo: TStringField
      FieldName = 'SaleOrderNo'
      Size = 100
    end
    object qyDetSaleOrderId: TStringField
      FieldName = 'SaleOrderId'
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
    object qyDetDispatchNo: TStringField
      FieldName = 'DispatchNo'
      Size = 100
    end
    object qyDetDispatchId: TStringField
      FieldName = 'DispatchId'
      Size = 100
    end
    object qyDetbDelTech: TBooleanField
      FieldName = 'bDelTech'
    end
    object qyDetbFirst: TBooleanField
      FieldName = 'bFirst'
    end
    object qyDetbLast: TBooleanField
      FieldName = 'bLast'
    end
    object qyDetOrdinal: TSmallintField
      FieldName = 'Ordinal'
    end
    object qyDetInWare: TStringField
      FieldName = 'InWare'
    end
    object qyDetInSjNo: TStringField
      FieldName = 'InSjNo'
      Size = 30
    end
    object qyDetInsOrderNo: TStringField
      FieldName = 'InsOrderNo'
      Size = 30
    end
    object qyDetInTechName: TStringField
      FieldName = 'InTechName'
      Size = 100
    end
    object qyDetInInDate: TStringField
      FieldName = 'InInDate'
      Size = 30
    end
    object qyDetInPState: TStringField
      FieldName = 'InPState'
      Size = 30
    end
    object qyDetInTempNo: TStringField
      FieldName = 'InTempNo'
      Size = 30
    end
  end
  inherited pmLayout: TPopupMenu
    Left = 472
    Top = 288
  end
  inherited cxgrdpmn1: TcxGridPopupMenu
    Left = 432
    Top = 288
  end
  inherited frxHed: TfrxDBDataset
    UserName = #22806#21327#21457#26009#20027#34920
    FieldAliases.Strings = (
      'AutoNo='#33258#21160#20195#21495
      'MoveNo='#21333#21495
      'bSelect='#26159#21542#36873#25321
      'MKindId='#35843#25320#26631#35782
      'MoveDate='#26085#26399
      'OutWare='#21457#20986#20179#24211#32534#21495
      'InWare='#35843#20837#20179#24211#32534#21495
      'AcceptId='#22806#21327#21333#20301#32534#21495
      'SendId='#21457#20986#21333#20301#32534#21495
      'SourceNo='#28304#21495#30721
      'bPrint='#26159#21542#25171#21360
      'PrintNum='#25171#21360#27425#25968
      'SubjoinNo='#28304#21333#21495
      'SubjoinTableId='#28304#34920#32534#21495
      'MakeDate='#21046#21333#26085#26399
      'MakeMan='#21046#21333#20154#32534#21495
      'MakeManName='#21046#21333#20154
      'AuditFlag='#23457#26680#26631#24535
      'AuditMan='#23457#26680#20154#32534#21495
      'AuditManName='#23457#26680#20154
      'AuditDate='#23457#26680#26085#26399
      'bMaxAudit='#26159#21542#23436#25104#23457#26680
      'MaxAuditDate='#26368#21518#23457#26680#26085#26399
      'EditMan='#20462#25913#20154#32534#21495
      'EditManName='#20462#25913#20154
      'EditDate='#20462#25913#26085#26399
      'FinaMan=FinaMan'
      'FinaDate=FinaDate'
      'YearMon=YearMon'
      'PzWord=PzWord'
      'PzNo=PzNo'
      'PzId=PzId'
      'Remark='#22791#27880
      'SendName='#21457#20986#21333#20301
      'AcceptName='#22806#21327#21333#20301
      'InWareName='#35843#20837#20179#24211
      'OutWareName='#21457#20986#20179#24211)
    Left = 288
    Top = 54
  end
  inherited frxDet: TfrxDBDataset
    UserName = #22806#21327#21457#26009#20174#34920
    FieldAliases.Strings = (
      'AutoNo='#33258#21160#20195#21495
      'MoveNo='#21333#21495
      'ItemId='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#20135#21697#35268#26684
      'ItemPic='#22270#21495
      'ItemUnit='#20027#21333#20301
      'SubUnit='#21103#21333#20301
      'ItemPYCode='#25340#38899#30721
      'iFlag='#36716#25442#26631#24535
      'ExchRate='#36716#21270#29575
      'ProType='#23646#24615
      'InProType='#35843#20837#23646#24615
      'Color='#39068#33394
      'InColor='#35843#20837#39068#33394
      'BatchNo='#25209#21495
      'InBatchNo='#35843#20837#25209#21495
      'PlaceNo='#36135#20301
      'InPlaceNo='#35843#20837#36135#20301
      'CompactNo='#21512#21516#21495
      'InCompactNo='#35843#20837#21512#21516#21495
      'ObjectId='#24448#26469#21333#20301#32534#21495
      'InObjectId='#35843#20837#24448#26469#21333#20301#32534#21495
      'SjNo='#21830#26816#21495
      'sOrderNo='#35746#21333#21495
      'TechName='#24037#24207
      'InDate='#20837#24211#26085#26399
      'PState='#29366#24577
      'TempNo='#20020#26102#21495
      'EmpId='#21592#24037#32534#21495
      'EmpName='#21592#24037#22995#21517
      'TopTech='#19978#36947#24037#24207
      'MoveNum='#25968#37327
      'MovePrice='#21333#20215
      'TaxPrice='#21547#31246#20215
      'MoveMoney='#37329#39069
      'SubNum='#21103#25968#37327
      'SubPrice='#21103#21333#20215
      'SubTaxPrice='#21103#21547#31246#20215
      'SubMoney='#21103#37329#39069
      'SpoilNum='#19981#33391#21697#25968#37327
      'SpoilPrice='#19981#33391#21697#21333#20215
      'SpoilMoney='#19981#33391#21697#37329#39069
      'WasteNum='#24223#21697#25968#37327
      'WastePrice='#24223#21697#21333#20215
      'WasteMoney='#24223#21697#37329#39069
      'TaxRate='#31246#29575
      'TaxMoney='#31246#39069
      'AllMoney='#20215#31246#21512#35745
      'TopId='#19978#32423#20135#21697#32534#21495
      'TopCode='#19978#32423#20135#21697#20195#21495
      'TopName='#19978#32423#20135#21697#21517#31216
      'TopDosage='#19978#32423#20135#21697#29992#37327
      'CpId='#25104#21697#32534#21495
      'CpCode='#25104#21697#20195#21495
      'CpName='#20135#21697#21517#31216
      'MrpNo=MRP'#21333#21495
      'MrpID=MRP'#20869#30721
      'TicketNo='#27966#24037#21333#21495
      'TicketID='#27966#24037#21333#20869#30721
      'Remark='#22791#27880
      'ObjectName='#24448#26469#21333#20301#21517#31216
      'InObjectName='#35843#20837#24448#26469#21333#20301#21517#31216
      'WareNum='#24403#21069#24211#23384
      'RfNum='#24341#29992#25968
      'SaleOrderNo='#38144#21806#35746#21333#21495
      'SaleOrderId='#38144#21806#35746#21333#20869#30721
      'ProOrderNo='#29983#20135#35746#21333#21495
      'ProOrderId='#29983#20135#35746#21333#20869#30721
      'DispatchNo='#27966#24037#21333#21495
      'DispatchId='#27966#24037#21333#20869#30721
      'bDelTech='#26159#21542#28165#38500#24037#24207
      'bFirst='#39318#36947#24037#24207
      'bLast='#26411#36947#24037#24207
      'Ordinal='#24037#24207#21495
      'InWare='#35843#20837#20179#24211
      'InSjNo='#35843#20837#21830#26816#21495
      'InsOrderNo='#35843#20837#35746#21333#21495
      'InTechName='#35843#20837#24037#24207
      'InInDate='#35843#20837#20837#24211#26085#26399
      'InPState='#35843#20837#29366#24577
      'InTempNo='#35843#20837#20020#26102#21495)
    Top = 320
  end
  object qyWareNum: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'select sInFo=ItemId+ISNULL(WareId,'#39#39'),WareNum=SUM(ISNULL(WareNum' +
        ',0)) from WareStorageTB group by ItemId,WareId')
    Left = 120
    Top = 288
  end
  object dxbrpmn1: TdxBarPopupMenu
    BarManager = dxbrmngrBarManage
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxbrbtn1'
      end
      item
        Visible = True
        ItemName = 'dxbrbtn2'
      end>
    UseOwnFont = False
    Left = 696
    Top = 56
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
    Left = 400
    Top = 48
  end
end
