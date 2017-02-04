inherited StockPayFM: TStockPayFM
  Caption = #20184#27454#21333
  ClientHeight = 539
  ClientWidth = 997
  ExplicitWidth = 997
  ExplicitHeight = 539
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    Width = 997
    Height = 28
    TabOrder = 1
    ExplicitWidth = 997
    ExplicitHeight = 28
    inherited cxLabTitle: TcxLabel
      Caption = #20184#27454#21333
      Style.IsFontAssigned = True
      ExplicitHeight = 28
      Height = 28
      AnchorX = 97
      AnchorY = 14
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
    Top = 516
    Width = 997
    TabOrder = 3
    ExplicitTop = 516
    ExplicitWidth = 997
    inherited Label3: TLabel
      Top = 3
      ExplicitTop = 3
    end
    inherited Label4: TLabel
      Left = 251
      ExplicitLeft = 251
    end
    inherited Label5: TLabel
      Left = 343
      ExplicitLeft = 343
    end
    inherited Label6: TLabel
      Left = 485
      ExplicitLeft = 485
    end
    inherited Label7: TLabel
      Left = 598
      ExplicitLeft = 598
    end
    inherited Label8: TLabel
      Left = 773
      ExplicitLeft = 773
    end
    inherited Label2: TLabel
      Top = 3
      ExplicitTop = 3
    end
    inherited cxEdtMakeManName: TcxDBTextEdit
      Left = 57
      Top = -1
      ExplicitLeft = 57
      ExplicitTop = -1
    end
    inherited cxEdtMakeDate: TcxDBTextEdit
      Top = -1
      ExplicitTop = -1
    end
    inherited cxEdtEditManName: TcxDBTextEdit
      Left = 287
      ExplicitLeft = 287
    end
    inherited cxEdtEditDate: TcxDBTextEdit
      Left = 393
      ExplicitLeft = 393
    end
    inherited cxEdtAuditManName: TcxDBTextEdit
      Left = 522
      ExplicitLeft = 522
    end
    inherited cxEdtAuditDate: TcxDBTextEdit
      Left = 652
      ExplicitLeft = 652
    end
    inherited cxEdtAuditFlag: TcxDBTextEdit
      Left = 827
      ExplicitLeft = 827
    end
  end
  inherited pnlEdit: TPanel
    Top = 74
    Width = 997
    Height = 125
    ExplicitTop = 74
    ExplicitWidth = 997
    ExplicitHeight = 125
    object Label11: TLabel [0]
      Left = 844
      Top = 10
      Width = 24
      Height = 13
      Caption = #21592#24037
      Visible = False
    end
    object Label13: TLabel [1]
      Left = 515
      Top = 7
      Width = 48
      Height = 13
      Caption = #20184#27454#26041#24335
    end
    object Label15: TLabel [2]
      Left = 343
      Top = 47
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
    object Label14: TLabel [3]
      Left = 357
      Top = 34
      Width = 24
      Height = 13
      Caption = #22791#27880
    end
    object Label12: TLabel [4]
      Left = 69
      Top = 7
      Width = 39
      Height = 13
      Caption = #20379#24212#21830
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel [5]
      Left = 343
      Top = 92
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
    object cxBtReqMan: TcxDBButtonEdit [6]
      Left = 874
      Top = 6
      DataBinding.DataField = 'EmpName'
      DataBinding.DataSource = dsHed
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxBt1PropertiesButtonClick
      Style.Edges = [bLeft, bTop, bRight, bBottom]
      TabOrder = 0
      Visible = False
      Width = 96
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 671
      TabOrder = 1
      ExplicitLeft = 671
      ExplicitHeight = 52
      Height = 52
      inherited Label1: TLabel
        Left = 14
        Top = 7
        Width = 33
        ExplicitLeft = 14
        ExplicitTop = 7
        ExplicitWidth = 33
      end
      inherited Label9: TLabel
        Left = 14
        Top = 29
        ExplicitLeft = 14
        ExplicitTop = 29
      end
      inherited cxEdtNo: TcxDBTextEdit
        Top = 3
        DataBinding.DataField = 'PayNO'
        Style.IsFontAssigned = True
        ExplicitTop = 3
      end
      inherited cxdt: TcxDBDateEdit
        Top = 25
        DataBinding.DataField = 'PayDate'
        ExplicitTop = 25
      end
    end
    object cbbPayMode: TcxDBComboBox
      Left = 569
      Top = 3
      DataBinding.DataField = 'PayMode'
      DataBinding.DataSource = dsHed
      TabOrder = 2
      Width = 96
    end
    object cxMoRemark: TcxDBMemo
      Left = 387
      Top = 30
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.ScrollBars = ssVertical
      TabOrder = 3
      Visible = False
      Height = 21
      Width = 278
    end
    object cxPupEdtRemark: TcxDBPopupEdit
      Left = 387
      Top = 30
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.PopupControl = cxMoRemark
      Properties.ReadOnly = False
      TabOrder = 4
      Width = 278
    end
    object cxRgpFlag: TcxDBRadioGroup
      Left = 487
      Top = 51
      Alignment = alCenterCenter
      DataBinding.DataField = 'SignFlag'
      DataBinding.DataSource = dsHed
      Properties.Items = <
        item
          Caption = #34013#23383
          Value = 1
        end
        item
          Caption = #32418#23383
          Value = -1
        end>
      TabOrder = 5
      Height = 74
      Width = 81
    end
    object cxObject: TcxDBButtonEdit
      Left = 114
      Top = 3
      DataBinding.DataField = 'PrvName'
      DataBinding.DataSource = dsHed
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000BAC6C178BF9E
            72BF9C72BF9C73C09D74C19D75C19E75C19E75C19E75C19E74C19D73C09D72BF
            9C72BF9C77BF9EBAC6C165C09635BD7E2EBC7A34C07F3BC48440C78944CA8B46
            CB8D45CB8D43C98B3FC78839C38333BF7E2CBB7934BC7D64C0965FC19514B36A
            19B86F23BE762CC47D33C98338CD873BCE893ACE8937CC8631C8812AC37B21BD
            7417B76D12B2685FC19460C2951BB87023BE772FC68039CD886EDFB069E0AD4B
            D8964BD89547D69340D18D37CC862CC47D21BD7419B76E5FC19562C29523BD76
            2DC57E3ACE887FE4BBF7FDFCF0FCF87CE9B85BE2A257DF9E4EDA9844D49037CC
            862AC37B20BB7361C29562C3972AC27B35CB857BE3B9F9FEFCFFFFFFFFFFFFF2
            FDF98AEFC165E8A95BE2A24EDA9840D18D31C88126BF7862C29663C3972FC57F
            7BE2BAF9FEFCFFFFFFF4FAF7FAFDFCFFFFFFF4FDF98FF2C465E8A957DF9E47D6
            9337CC862BC27C62C39764C49733C683DBF2E8FFFFFFEAF7F174DFAC86E0B6F9
            FCFBFFFFFFF4FDFA8AEFC15BE2A24BD8953ACE892EC47E63C39764C49732C781
            4BCC90C4E8D868DAA56EEEB17AF6BA88E2B7F8FCFAFFFFFFF2FDF97DE9B94BD8
            963BCE892EC47E63C39763C4972FC67F3CCF8A45D2905CE3A26AEBAD75F2B67B
            F6BB85E0B5F9FCFAFFFFFFF0FCF869E0AD38CD872CC37C62C39762C3972BC27C
            37CC8646D59154DE9C60E6A66AEBAD6EEEB16EEEB07EDBB0F9FCFBFFFFFFEDFC
            F755D6A027C07962C39662C29625BE772FC6803DCF8A49D79454DE9C5CE3A260
            E5A65FE5A55AE1A174D6A9F8FCFAFFFFFFBDEAD921BC7561C29561C2951DBA71
            26C07932C8823DCF8A46D5914DD99750DB994FDB994BD89644D4906CD0A2CCEC
            DD2FBD7C1BB86F60C29560C29516B56B1CBA7126C0792FC68037CC863CCF8A3F
            D18C3FD08C3BCE8935CA842DC57E1FB97219B86F13B3695FC19564C09636BD7F
            30BD7C37C2813EC68743CA8B47CC8E49CE8F49CE8F46CC8D42C98A3CC58535C1
            802EBC7A34BC7E63C095B5C6BE76BF9D73BF9C72C09C74C09D75C19E75C29E76
            C29F76C29F75C29E75C19E74C09D72C09C72BF9C75BF9DB5C6BE}
          Hint = #36873#25321#25152#26377#20379#24212#21830
          Kind = bkGlyph
        end
        item
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000C8C8C8C3C3C3
            B6B5B4A3A1A09493929A9A9A9696969A9897ACABAABDBDBCC7C7C6C8C8C8C8C8
            C8C8C8C8C8C8C8C8C8C8ADABA8877E70978A759D8E79B1A595EAEAEAD7D3CE9F
            907B9C8D789285738A857DC5C5C5C8C8C8C8C8C8C8C8C8C8C8C89B92859B8C78
            A39580AA9C87B8AB9AEDEEEED8D3CCAD9F8AA89A85A1927D98897574877A7F91
            8896A49DB6BAB8C6C7C6ACA397A59782AFA08CB7A894C4B7A6F1F1F2DFDAD4BA
            AC98B5A692AC9D89A3948042AC7830AE742AA96D299F646B9580B8B2A8AEA08C
            B9AA96C1B39FD2C7B7F4F4F5EAE6E1C6B7A3BFB09CB5A792A7A08B4ABF9043BD
            8A3BB68030AD7437A871C1BDB8B5A793BFB09CCABBA6E0D8CCF7F7F8F4F3F1CF
            C0ACC7B8A4BBAD99A1AF975CCFA656CB9F4BC3943EB88553B487C7C6C5BFB2A0
            C5B6A2CEBFAADDD9D3BCCFD7CED9DDD5C9B8CCBCA8C4B6A39BC5AB6EDBB866D5
            B059CEA34BC29275BF9FC8C8C8C7C4BFD0C8BCBFBEB44DA8D235A3D737A3D682
            B0C1D2CAB9CACEC0A5D8C893D2C088D5BB63D4AD56C99D97C5B3C8C8C8C8C8C8
            C7C7C777B4D15AB2DE66B7E165B6E055AFDC93C9C6AAC7D261ABCC75B1CBC1D4
            CF74D6B57FD4B4BBC8C3C8C8C8C8C8C8B2B7BA64B2DA82C5E891CEEC8FCDEB7B
            C2E6639BB844A7D750ADDB4EACDB64B2D8AED0CBC2C8C7C8C8C8C8C8C8C8C8C8
            6C6E6F6DA6C290C1D972909E84A8B996D0EB3D545F69ABCC7FC4E77DC3E669B9
            E2A7C0CBC8C8C8C8C8C8C8C8C8C8C8C86B6B6B3F4A4F383C3E32323231313147
            525827292A82B1C798C6DB85B0C47AB2CE93B9CCC8C8C8C8C8C8C8C8C8C8C8C8
            7576763030302D2D2D2D2D2D2D2D2D2F2F2F2727274E5C633C3D3E3A3A3A393A
            3B717B80C8C8C8C8C8C8C8C8C8C8C8C8B6B6B64242423C3C3C3C3C3C3C3C3C39
            39392E2E2E3939392E2E2E2E2E2E2E2E2E595959C8C8C8C8C8C8C8C8C8C8C8C8
            C8C8C8C2C2C29595957676768282829F9F9F4141413B3B3B3B3B3B3B3B3B3A3A
            3A9C9C9CC8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
            C8C8C1C1C18E8E8E7B7B7B858585B6B6B6C8C8C8C8C8C8C8C8C8}
          Hint = #36873#25321#24050#19979#35746#21333#26410#37319#36141#20837#24211#20379#24212#21830
          Kind = bkGlyph
        end>
      Properties.ReadOnly = False
      Properties.OnButtonClick = cxObjectPropertiesButtonClick
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 390
    end
    object cxPayM: TcxDBCurrencyEdit
      Left = 114
      Top = 36
      AutoSize = False
      DataBinding.DataField = 'PayMoney'
      DataBinding.DataSource = dsHed
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -23
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 7
      Height = 35
      Width = 223
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 37
      Caption = #26412#27425#26680#38144
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -23
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxFactM: TcxDBCurrencyEdit
      Left = 114
      Top = 81
      AutoSize = False
      DataBinding.DataField = 'FactMoney'
      DataBinding.DataSource = dsHed
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -23
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 9
      Height = 35
      Width = 223
    end
    object cxLabel3: TcxLabel
      Left = 8
      Top = 82
      Caption = #23454#38469#20184#27454
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -23
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxRgpBillKind: TcxDBRadioGroup
      Left = 393
      Top = 51
      Caption = #20184#27454#31867#22411
      DataBinding.DataField = 'BillKind'
      DataBinding.DataSource = dsHed
      ParentFont = False
      Properties.Items = <
        item
          Caption = #25910#36135#20184#27454
        end
        item
          Caption = #39044#20184#27454
        end
        item
          Caption = #20854#20182#20184#27454
        end>
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 11
      Height = 74
      Width = 95
    end
    object cxGroupBox1: TcxGroupBox
      Left = 566
      Top = 51
      Caption = #20986#32435#20449#24687
      TabOrder = 12
      Height = 74
      Width = 277
      object cxLabel2: TcxLabel
        Left = 12
        Top = 19
        Caption = #20986#32435#36134#25143
        Transparent = True
      end
      object cxAccName: TcxDBMRUEdit
        Left = 70
        Top = 17
        DataBinding.DataField = 'AccName'
        DataBinding.DataSource = dsHed
        Properties.OnButtonClick = cxAccNamePropertiesButtonClick
        TabOrder = 1
        Width = 200
      end
      object cxLabel4: TcxLabel
        Left = 12
        Top = 44
        Caption = #25910#25903#39033#30446
        Transparent = True
      end
      object cxCNItemName: TcxDBMRUEdit
        Left = 70
        Top = 42
        DataBinding.DataField = 'CNItemName'
        DataBinding.DataSource = dsHed
        Properties.OnButtonClick = cxCNItemNamePropertiesButtonClick
        TabOrder = 3
        Width = 200
      end
    end
  end
  inherited pnlBody: TPanel
    Top = 199
    Width = 997
    Height = 317
    ExplicitTop = 193
    ExplicitWidth = 997
    ExplicitHeight = 323
    inherited cxPgc: TcxPageControl
      Width = 997
      Height = 317
      ExplicitWidth = 997
      ExplicitHeight = 323
      ClientRectBottom = 311
      ClientRectRight = 991
      inherited cxtbsht1: TcxTabSheet
        ExplicitLeft = 2
        ExplicitTop = 27
        ExplicitWidth = 989
        ExplicitHeight = 290
        inherited cxgrd: TcxGrid
          Width = 989
          Height = 284
          ExplicitWidth = 989
          ExplicitHeight = 290
          inherited cxgrdtbv: TcxGridDBTableView
            DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = cxgrdtbvInvoiceMoney
              end
              item
                Kind = skSum
                Column = cxgrdtbvHasPayMoney
              end
              item
                Kind = skSum
                Column = cxgrdtbvNoPayMoney
              end
              item
                Kind = skSum
                Column = cxgrdtbvNowPayMoney
              end>
            object cxgrdtbvInvoiceNo: TcxGridDBColumn
              Caption = #35760#36134#21333#21495
              DataBinding.FieldName = 'InvoiceNo'
              Width = 103
            end
            object cxgrdtbvInvoiceMoney: TcxGridDBColumn
              Caption = #35760#36134#37329#39069
              DataBinding.FieldName = 'InvoiceMoney'
              Width = 77
            end
            object cxgrdtbvHasPayMoney: TcxGridDBColumn
              Caption = #24050#20184#27454#37329#39069
              DataBinding.FieldName = 'HasPayMoney'
              Width = 97
            end
            object cxgrdtbvNoPayMoney: TcxGridDBColumn
              Caption = #26410#20184#27454#37329#39069
              DataBinding.FieldName = 'NoPayMoney'
              Width = 92
            end
            object cxgrdtbvNowPayMoney: TcxGridDBColumn
              Caption = #26412#27425#20184#27454#37329#39069
              DataBinding.FieldName = 'NowPayMoney'
              Width = 103
            end
            object cxgrdtbvRemark: TcxGridDBColumn
              Caption = #22791#27880
              DataBinding.FieldName = 'Remark'
              Width = 216
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
          ItemName = 'btTemp'
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
      OnClick = btReferClick
    end
    inherited btUnCheck: TdxBarLargeButton
      OnClick = btUnCheckClick
    end
    inherited btTemp: TdxBarLargeButton
      Caption = #26680' '#38144
      Hint = #26680' '#38144
      Visible = ivAlways
      LargeGlyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000040404061111
        111A1C1C1C2C242424382D2D2D463232324E3A3A3A5A3A3A3A5A3B3B3B5C4545
        456C484848704848487048484870484848704545456C3B3B3B5C3A3A3A5A3A3A
        3A5A3232324E2D2D2D46242424381C1C1C2C1111111A040404061A1A1A285454
        54836D6D6DA97C7C7CC1838383CD8B8B8BD98C8C8CDB929292E3959595E79595
        95E9969696E9959595E9959595E9969696E9959595E9959595E7929292E38D8D
        8DDB8C8C8CD9838383CD7C7C7CC16D6D6DA9545454831A1A1A28000000000303
        0304050505080909090E0A0A0A100F0F0F180F0F0F181616162217171724171A
        1C2A17486781174A6B85174A6B85173F59701717172417171724161616220F0F
        0F180F0F0F180A0A0A100909090E050505080303030400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000015
        23280087DDFF0086DCFF0086DCFF007CCCEB0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000015
        23280087DDFF0087DDFF0087DDFF007CCCEB0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000015
        23280087DCFF0086DCFF0086DCFF007BCBEB0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000121D22003B6170003B6170003B6170003B61700047
        75870087DDFF0086DCFF0086DCFF0081D3F3003B6170003B6170003B6170003B
        6170003B617000111C2000000000000000000000000000000000000000000000
        0000000000000000000000375A680087DDFF0087DDFF0087DDFF0087DDFF0087
        DDFF0087DDFF0087DDFF0087DDFF0087DDFF0087DDFF0087DDFF0087DDFF0087
        DDFF0087DDFF0034556200000000000000000000000000000000000000000000
        0000000000000000000000385B680089DEFF0089DEFF0089DEFF0089DEFF0089
        DEFF0089DEFF0089DEFF0089DEFF0089DEFF0089DEFF0089DEFF0089DEFF0089
        DEFF0089DEFF0035556200000000000000000000000000000000000000000000
        00000000000000000000082E454E1985C5DD1885C5DD1885C5DD1885C5DD1687
        CAE3008CE0FF008CE0FF008CE0FF038DDFFD1885C5DD1885C5DD1885C5DD1885
        C5DD1985C5DD082C424A00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000017
        23280090E2FF0090E2FF0090E2FF0085D0EB0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000001B292E0053808F0053808F0053808F0053808F005D
        91A10094E5FF0094E5FF0094E5FF008FDEF70053808F0053808F0053808F0053
        808F0053808F001A282C00000000000000000000000000000000000000000000
        00000000000000000000003E5E680097E7FF0097E7FF0097E7FF0097E7FF0097
        E7FF0097E7FF0097E7FF0097E7FF0097E7FF0097E7FF0097E7FF0097E7FF0097
        E7FF0097E7FF003A596200000000000000000000000000000000000000000000
        00000000000000000000003F5F68009BE9FF009BE9FF009BE9FF009BE9FF009B
        E9FF009BE9FF009BE9FF009BE9FF009BE9FF009BE9FF009BE9FF009BE9FF009B
        E9FF009BE9FF003C5A6200000000000000000000000000000000000000000000
        00000000000000000000072A3B40187FB0BD187FB0BD187FB0BD0E91D0E1009E
        EBFF009EEBFF009EEBFF009EEBFF009EEBFF009EEBFF148AC2D1187FB0BD187F
        B0BD187FB0BD0728383C00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000030404008BCCDB00A2
        EDFF00A2EDFF0AA6EEFF07A4EEFF00A2EDFF00A2EDFF006696A1000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000405C6200A5EFFF00A5
        EFFF00A5EFFF0E6B949D0F7FB2BD00A5EFFF00A5EFFF00A4EDFD001E2B2E0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000406060094D4DF00A9F2FF00A9
        F2FF0AABF0FD041B2426082F414406ABF2FF00A9F2FF00A9F2FF0079AEB70000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000046646800ACF4FF00ACF4FF00AC
        F4FF0E78A4AB00000000000000000E8EC2CB00ACF4FF00ACF4FF00ACF4FF002E
        4144000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000060808009DDBE300AFF6FF00AFF6FF08B2
        F6FF062632340000000000000000093C515406B1F6FF00AFF6FF00AFF6FF008D
        C6CD000102020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000004D6B6E00B3F8FF00B3F8FF00B3F8FF0F88
        B6BB000000000000000000000000000304040E9DD3D900B3F8FF00B3F8FF00B3
        F8FF003F585A0000000000000000000000000000000000000000000000000000
        0000000000000000000000070A0A00A5E2E700B6FAFF00B6FAFF07B8FAFF0731
        414200000000000000000000000000000000094A626405B8FAFF00B6FAFF00B6
        FAFF009FDBDF0006080800000000000000000000000000000000000000000000
        000000000000000000000055737400BAFCFF00BAFCFF00BAFCFF0E97C7C90000
        000000000000000000000000000000000000000406060EABE2E500BAFCFF00BA
        FCFF00BAFCFF0053717200000000000000000000000000000000000000000000
        00000000000000000000158BB4B518A0CECF18A0CECF19A0CECF083444440000
        0000000000000000000000000000000000000000000009485E5E19A0CECF18A0
        CECF18A0CECF158EB8B900000000000000000000000000000000}
      OnClick = btTempClick
    end
  end
  inherited PupBpm: TdxBarPopupMenu
    Left = 880
    Top = 54
  end
  inherited dsHed: TDataSource
    Left = 176
  end
  inherited qyHed: TADOQuery
    OnCalcFields = qyHedCalcFields
    OnNewRecord = qyHedNewRecord
    SQL.Strings = (
      'select * from StockPayHDTB where IsNull(bMaxAudit,0)=0')
    Left = 216
    object qyHedAutoID: TLargeintField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object qyHedPayNO: TStringField
      FieldName = 'PayNO'
    end
    object qyHedPayDate: TDateTimeField
      FieldName = 'PayDate'
    end
    object qyHedBillKind: TStringField
      FieldName = 'BillKind'
      Size = 30
    end
    object qyHedSignFlag: TSmallintField
      FieldName = 'SignFlag'
    end
    object qyHedEmpId: TStringField
      FieldName = 'EmpId'
    end
    object qyHedPayMode: TStringField
      FieldName = 'PayMode'
      Size = 30
    end
    object qyHedPayMoney: TFMTBCDField
      FieldName = 'PayMoney'
      OnChange = qyHedPayMoneyChange
      Precision = 18
      Size = 5
    end
    object qyHedFactMoney: TFMTBCDField
      FieldName = 'FactMoney'
      Precision = 18
      Size = 5
    end
    object qyHedCompactNo: TStringField
      FieldName = 'CompactNo'
      Size = 50
    end
    object qyHedSubjoinNo: TStringField
      FieldName = 'SubjoinNo'
    end
    object qyHedbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyHedRemark: TStringField
      FieldName = 'Remark'
      Size = 400
    end
    object qyHedbPrint: TBooleanField
      FieldName = 'bPrint'
    end
    object qyHedPrintNum: TSmallintField
      FieldName = 'PrintNum'
    end
    object qyHedMakeDate: TDateTimeField
      FieldName = 'MakeDate'
    end
    object qyHedMakeMan: TStringField
      FieldName = 'MakeMan'
    end
    object qyHedMakeManName: TStringField
      FieldName = 'MakeManName'
      Size = 30
    end
    object qyHedEditMan: TStringField
      FieldName = 'EditMan'
      Size = 30
    end
    object qyHedEditManName: TStringField
      FieldName = 'EditManName'
      Size = 30
    end
    object qyHedEditDate: TDateTimeField
      FieldName = 'EditDate'
    end
    object qyHedAuditFlag: TSmallintField
      FieldName = 'AuditFlag'
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
    object qyHedEmpName: TStringField
      FieldKind = fkCalculated
      FieldName = 'EmpName'
      Calculated = True
    end
    object strngfldHedPrvId: TStringField
      FieldName = 'PrvId'
    end
    object strngfldHedPrvName: TStringField
      FieldKind = fkCalculated
      FieldName = 'PrvName'
      Calculated = True
    end
  end
  inherited qyDet: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyDetAfterInsert
    SQL.Strings = (
      'select * from SalePayDTTB')
    object qyDetAutoID: TLargeintField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object qyDetPayNO: TStringField
      FieldName = 'PayNO'
    end
    object qyDetInvoiceNo: TStringField
      FieldName = 'InvoiceNo'
    end
    object qyDetCompactNo: TStringField
      FieldName = 'CompactNo'
      Size = 50
    end
    object qyDetbPrint: TBooleanField
      FieldName = 'bPrint'
    end
    object qyDetbPay: TBooleanField
      FieldName = 'bPay'
    end
    object qyDetInvoiceMoney: TFMTBCDField
      FieldName = 'InvoiceMoney'
      Precision = 18
      Size = 5
    end
    object qyDetHasPayMoney: TFMTBCDField
      FieldName = 'HasPayMoney'
      Precision = 18
      Size = 5
    end
    object qyDetNoPayMoney: TFMTBCDField
      FieldName = 'NoPayMoney'
      Precision = 18
      Size = 5
    end
    object qyDetNowPayMoney: TFMTBCDField
      FieldName = 'NowPayMoney'
      OnChange = qyDetNowPayMoneyChange
      Precision = 18
      Size = 5
    end
    object qyDetRemark: TStringField
      FieldName = 'Remark'
      Size = 300
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
    UserName = #25910#27454#21333#20027#34920
    FieldAliases.Strings = (
      'AutoID=AutoID'
      'InvoiceNO=InvoiceNO'
      'SourceDate=SourceDate'
      'InvoiceDate=InvoiceDate'
      'SignFlag=SignFlag'
      'BillKind=BillKind'
      'CustId=CustId'
      'EmpId=EmpId'
      'CompactNo=CompactNo'
      'SubjoinNo=SubjoinNo'
      'bSelect=bSelect'
      'Remark=Remark'
      'bPrint=bPrint'
      'MakeDate=MakeDate'
      'MakeMan=MakeMan'
      'MakeManName=MakeManName'
      'EditMan=EditMan'
      'EditManName=EditManName'
      'EditDate=EditDate'
      'AuditFlag=AuditFlag'
      'bMaxAudit=bMaxAudit'
      'AuditMan=AuditMan'
      'AuditDate=AuditDate'
      'CustName=CustName'
      'EmpName=EmpName'
      'PayMode=PayMode')
    Left = 256
  end
  inherited frxDet: TfrxDBDataset
    UserName = #25910#27454#21333#20174#34920
    FieldAliases.Strings = (
      'ItemCode=ItemCode'
      'ItemPYCode=ItemPYCode'
      'ItemName=ItemName'
      'ItemSpc=ItemSpc'
      'AutoID=AutoID'
      'bSelect=bSelect'
      'ItemUnit=ItemUnit'
      'ItemID=ItemID'
      'sColor=sColor'
      'ProType=ProType'
      'SubNum=SubNum'
      'Remark=Remark'
      'SubUnit=SubUnit'
      'iFlag=iFlag'
      'ExchRate=ExchRate'
      'StockOrderNo=StockOrderNo'
      'OrderNum=OrderNum'
      'OrederPrice=OrederPrice'
      'TaxRate=TaxRate'
      'TaxPrice=TaxPrice'
      'TaxMoney=TaxMoney'
      'OrderMoney=OrderMoney'
      'SubPrice=SubPrice'
      'SubTaxPrice=SubTaxPrice'
      'SubMoney=SubMoney'
      'AllMoney=AllMoney'
      'DeliveDate=DeliveDate'
      'bTax=bTax')
    Top = 320
  end
end
