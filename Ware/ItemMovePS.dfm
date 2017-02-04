inherited ItemMoveFM: TItemMoveFM
  Caption = #23384#36135#35843#25320
  ClientHeight = 508
  ClientWidth = 1054
  Position = poDesigned
  ExplicitTop = -161
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
      Caption = #23384#36135#35843#25320
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
    inherited cxLabAuditInfo: TcxLabel
      Left = 873
      Top = 0
      ExplicitLeft = 873
      ExplicitTop = 0
    end
  end
  inherited pnlEdit: TPanel
    Top = 78
    Width = 1054
    Height = 60
    ExplicitTop = 78
    ExplicitWidth = 1054
    ExplicitHeight = 60
    object lbl1: TLabel [0]
      Left = 237
      Top = 10
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
    object lbl5: TLabel [1]
      Left = 474
      Top = 10
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
    object cxBtnOutWare: TcxDBButtonEdit [2]
      Left = 80
      Top = 6
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
      Top = 6
      TabOrder = 1
      ExplicitLeft = 508
      ExplicitTop = 6
      ExplicitHeight = 52
      Height = 52
      inherited Label1: TLabel
        Left = 13
        ExplicitLeft = 13
      end
      inherited Label9: TLabel
        Left = 13
        Top = 31
        ExplicitLeft = 13
        ExplicitTop = 31
      end
      inherited cxEdtNo: TcxDBTextEdit
        Left = 43
        DataBinding.DataField = 'MoveNo'
        Style.IsFontAssigned = True
        ExplicitLeft = 43
      end
      inherited cxdt: TcxDBDateEdit
        Left = 43
        Top = 27
        DataBinding.DataField = 'MoveDate'
        ExplicitLeft = 43
        ExplicitTop = 27
      end
    end
    object cxBtnInWare: TcxDBButtonEdit
      Left = 320
      Top = 6
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
    object cxMoRemark: TcxDBMemo
      Left = 78
      Top = 37
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.ScrollBars = ssVertical
      TabOrder = 3
      Visible = False
      Height = 21
      Width = 392
    end
    object cxPupEdtRemark: TcxDBPopupEdit
      Left = 78
      Top = 37
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.PopupControl = cxMoRemark
      Properties.ReadOnly = False
      TabOrder = 4
      Width = 392
    end
    object cxLabel3: TcxLabel
      Left = 23
      Top = 8
      Caption = #21457#20986#20179#24211
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 260
      Top = 8
      Caption = #35843#20837#20179#24211
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 44
      Top = 39
      Caption = #22791#27880
      Transparent = True
    end
  end
  inherited pnlBody: TPanel
    Top = 138
    Width = 1054
    Height = 346
    ExplicitTop = 138
    ExplicitWidth = 1054
    ExplicitHeight = 346
    inherited cxPgc: TcxPageControl
      Width = 1054
      Height = 346
      ExplicitWidth = 1054
      ExplicitHeight = 346
      ClientRectBottom = 340
      ClientRectRight = 1048
      inherited cxtbsht1: TcxTabSheet
        ExplicitWidth = 1046
        ExplicitHeight = 313
        inherited cxgrd: TcxGrid
          Width = 1046
          Height = 313
          ExplicitWidth = 1046
          ExplicitHeight = 313
          inherited cxgrdtbv: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = cxgrdbclmnOrderNum
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
              Caption = #21457#20986#23646#24615
              DataBinding.FieldName = 'ProType'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdbclmnColumn2PropertiesButtonClick
              Width = 77
            end
            object cxgrdtbvColumn1: TcxGridDBColumn
              Caption = #35843#20837#23646#24615
              DataBinding.FieldName = 'InProType'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdtbvColumn1PropertiesButtonClick
              Width = 70
            end
            object cxgrdtbvColumn2: TcxGridDBColumn
              Caption = #21457#20986#39068#33394
              DataBinding.FieldName = 'Color'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdbclmnColumn2PropertiesButtonClick
              Width = 73
            end
            object cxgrdtbvColumn4: TcxGridDBColumn
              Caption = #35843#20837#39068#33394
              DataBinding.FieldName = 'InColor'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdtbvColumn4PropertiesButtonClick
              Width = 77
            end
            object cxgrdbclmnColumn2: TcxGridDBColumn
              Caption = #21457#20986#36135#20301
              DataBinding.FieldName = 'PlaceNo'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdbclmnColumn2PropertiesButtonClick
              Width = 89
            end
            object cxgrdbclmnColumn1: TcxGridDBColumn
              Caption = #35843#20837#36135#20301
              DataBinding.FieldName = 'InPlaceNo'
              Width = 93
            end
            object cxgrdbclmnOrderNum: TcxGridDBColumn
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
            object cxgrdtbvColumn3: TcxGridDBColumn
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
      Visible = ivNever
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
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000101010101010101000000000000000001010101010101020303
        0304030303050303030503030305030303040202020301010102010101010000
        0000000000000101010100000000000000000000000000000000000000000101
        010202020206010101090808082C2828286C29292973272727782929297E2B2B
        2B822C2C2C852E2E2E872F2F2F872F2F2F862F2F2F842F2F2F812F2F2F7C3333
        33783030306E0606062101010106010101030000000000000000000000000000
        000001010101000000004242425AE0E0E0FDE7E7E7FFE7E7E7FFE7E7E7FFE7E7
        E7FFE7E7E7FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
        E8FFD4D4D4F32E2E2E3E00000000000000000000000000000000000000000000
        0000000000000000000055555560EAEAEAFEEBEBEBFFEAEAEAFFEAEAEAFFEAEA
        EAFFEAEAEAFFEAEAEAFFEAEAEAFFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
        E9FFD9D9D9F63E3E3E4400000000000000000000000000000000000000000000
        000000000000000000005E5E5E6AE4E4E4FFE6E6E6FFE2E2E2FFE2E2E2FFE2E2
        E2FFE2E2E2FFE2E2E2FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
        E1FFD8D8D8FA4747474E00000000000000000000000000000000000000000000
        0000000000000000000067676773EBEBEBFFF0F0F0FFECECECFFE6E6E6FFE4E4
        E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE3E3E3FFE3E3E3FFE3E3
        E3FFDCDCDCFD4D4D4D5700000000000000000000000000000000000000000000
        000000000000000000006F6F6F7CEDEDEDFFF1F1F1FFF0F0F0FFEDEDEDFFE9E9
        E9FFE6E6E6FFE4E4E4FFE3E3E3FFE2E2E2FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
        E1FFDCDCDCFE5555556100000000000000000000000000000000000000000000
        0000000000000000000072727284EEEEEEFFF1F1F1FFF1F1F1FFF0F0F0FFF0F0
        F0FFEFEFEFFFEEEEEEFFECECECFFEBEBEBFFE9E9E9FFE6E6E6FFE2E2E2FFDFDF
        DFFFDDDDDDFF5F5F5F6C00000000000000000000000000000000000000000000
        000012121213242424288585859FE6E6E6FFE8E8E8FFE7E7E7FFE7E7E7FFE6E6
        E6FFE6E6E6FFE5E5E5FFE5E5E5FFE5E5E5FFE4E4E4FFE4E4E4FFE2E2E2FFDBDB
        DBFFD6D6D6FF7575758C232323260F0F0F100000000000000000000000000000
        000033333339AFAFAFD8D6D6D6F7E0E0E0FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
        E1FFE2E2E2FFE2E2E2FFE2E2E2FFE3E3E3FFE3E3E3FFE3E3E3FFE4E4E4FFE3E3
        E3FFE3E3E3FFD9D9D9F5ACACACD12929292D00000000000000000F0F0F101C1C
        1C1E0A0A0A0A7777778ED7D7D7FFDBDBDBFFDBDBDBFFDBDBDBFFDCDCDCFFDDDC
        DCFFDDDDDDFFDEDDDDFFDEDEDEFFDFDEDEFFDFDFDFFFE0DFE0FFE0E0E0FFE0E0
        E0FFE1E1E1FFDCDCDCFE6D6D6D80060606061A1A1A1C14141415131313147171
        718F949494B57D7D7DA0B1B1B1F2C0C0C0FFC4C4C4FEC6C6C6FFC2C5C4FFC4C8
        C6FFC4C9C7FFC4C9C7FFC4C9C7FFC4C9C7FFC3C9C6FFC3C6C4FFC7C7C7FFC5C5
        C5FEC4C4C4FFAFAFAFEC747474948F8F8FB07C7C7C9D1D1D1D1F000000001F1F
        1F219B9B9BBFCBCBCBFFBABABAFFA2A2A2FCC3C3C3FDD3D2D2FFAAC2B7FFB0D9
        C5FFB6DFCAFFB1DDC6FFADDCC4FFA7DAC0FF9DD3B8FF9DB9ADFFC2C1C1FFB5B5
        B5FB9F9F9FF9B4B4B4FEC6C6C6FFA4A4A4CF2A2A2A2E00000000000000000000
        000021212123707070869B9B9BCAA2A2A2EEC9C8C9FCDAD7D8FEA6C2B6FEAADB
        C3FFB1E3C9FFACE0C5FFA5DEC1FF97D9B7FF8FD2B0FF99BAACFFC9C7C8FFBBBA
        BAFBA0A0A0EF9E9E9ED4777777912929292D0000000000000000000000000000
        00000000000000000000111111123F41404A666E6B8469706D84708B80B5ABDB
        C3FFB2E2C9FFA7DEC2FF94D8B5FF8BD4AFFF8DD2B0FF6C8E7FC26E7572916E76
        73944A4C4B5B1818181901010101000000000000000000000000000000000000
        0000000000000000000000000000121313154D7262A285AE9CDA91BDA8E7B2E1
        CAFFA5DFC2FF85D4AEFF78D0A6FF79D0A6FF83D2ACFF75B597E975AA91DB4A76
        63AD171A191D0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000002529272E729B88C6B3E2CBFFA9E1
        C6FF86D6B1FF65CB9CFF61CA9AFF62CA9BFF67CC9DFF77CFA6FF639C82D22930
        2D39000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000001F22212764907CBE9ADA
        BCFF69CEA1FF4FC591FF4AC48FFF4BC48FFF5BC797FF609A81CD282C2A330000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001B1E1D225887
        73B75FC79AFF42C28BFF36BF85FF44C18CFF549479C9262A282F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000191A
        1A1D558470B051C291FE47C28DFF4E8F73C52327252C00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000016171719517D6BAA508A72C0212423290000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001011101215171619000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    inherited btRef: TdxBarLargeButton
      Visible = ivAlways
      OnClick = btRefClick
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
      'select * from ItemMoveHDTB where MKindId='#39'ItemMove'#39)
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
    object strngfldDetOutWare: TStringField
      FieldName = 'OutWare'
    end
    object strngfldDetInWare: TStringField
      FieldName = 'InWare'
    end
    object strngfldDetInSjNo: TStringField
      FieldName = 'InSjNo'
      Size = 30
    end
    object strngfldDetInsOrderNo: TStringField
      FieldName = 'InsOrderNo'
      Size = 30
    end
    object strngfldDetInTechName: TStringField
      FieldName = 'InTechName'
      Size = 100
    end
    object strngfldDetInInDate: TStringField
      FieldName = 'InInDate'
      Size = 30
    end
    object strngfldDetInPState: TStringField
      FieldName = 'InPState'
      Size = 30
    end
    object strngfldDetInTempNo: TStringField
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
    UserName = #23384#36135#35843#25320#20027#34920
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
    UserName = #23384#36135#35843#25320#20174#34920
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
      'WareNum='#24403#21069#24211#23384)
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
end
