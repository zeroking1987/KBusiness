inherited SaleInvoiceFM: TSaleInvoiceFM
  Caption = #24212#25910#35760#36134
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    Height = 32
    TabOrder = 1
    ExplicitHeight = 32
    inherited cxLabTitle: TcxLabel
      Caption = #24212#25910#35760#36134
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
    Top = 512
    Height = 24
    TabOrder = 3
    ExplicitTop = 512
    ExplicitHeight = 24
    inherited Label4: TLabel
      Left = 251
      ExplicitLeft = 251
    end
    inherited Label5: TLabel
      Left = 339
      ExplicitLeft = 339
    end
    inherited Label6: TLabel
      Left = 472
      ExplicitLeft = 472
    end
    inherited Label7: TLabel
      Left = 590
      ExplicitLeft = 590
    end
    inherited Label8: TLabel
      Left = 765
      ExplicitLeft = 765
    end
    inherited cxEdtEditManName: TcxDBTextEdit
      Left = 287
      ExplicitLeft = 287
    end
    inherited cxEdtEditDate: TcxDBTextEdit
      Left = 390
      ExplicitLeft = 390
    end
    inherited cxEdtAuditManName: TcxDBTextEdit
      Left = 514
      ExplicitLeft = 514
    end
    inherited cxEdtAuditDate: TcxDBTextEdit
      Left = 644
      ExplicitLeft = 644
    end
    inherited cxEdtAuditFlag: TcxDBTextEdit
      Left = 819
      ExplicitLeft = 819
    end
  end
  inherited pnlEdit: TPanel
    Top = 78
    Height = 81
    ExplicitTop = 78
    ExplicitHeight = 81
    object Label11: TLabel [0]
      Left = 398
      Top = 4
      Width = 36
      Height = 13
      Caption = #38144#21806#21592
    end
    object Label12: TLabel [1]
      Left = 39
      Top = 4
      Width = 24
      Height = 13
      Caption = #23458#25143
    end
    object Label13: TLabel [2]
      Left = 15
      Top = 56
      Width = 48
      Height = 13
      Caption = #25910#27454#26041#24335
    end
    object Label10: TLabel [3]
      Left = 198
      Top = 30
      Width = 36
      Height = 13
      Caption = #28304#21333#21495
    end
    object Label15: TLabel [4]
      Left = 382
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
    object Label16: TLabel [5]
      Left = 398
      Top = 30
      Width = 36
      Height = 13
      Caption = #21512#21516#21495
    end
    object Label14: TLabel [6]
      Left = 210
      Top = 56
      Width = 24
      Height = 13
      Caption = #22791#27880
    end
    object Label17: TLabel [7]
      Left = 15
      Top = 30
      Width = 48
      Height = 13
      Caption = #28304#21333#26085#26399
    end
    object cxBtReqMan: TcxDBButtonEdit [8]
      Left = 446
      Top = 0
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
      Width = 121
    end
    inherited cxgrpbx1: TcxGroupBox
      Left = 646
      TabOrder = 1
      ExplicitLeft = 646
      ExplicitHeight = 73
      Height = 73
      inherited Label1: TLabel
        Top = 15
        ExplicitTop = 15
      end
      inherited Label9: TLabel
        Top = 43
        ExplicitTop = 43
      end
      inherited cxEdtNo: TcxDBTextEdit
        Top = 13
        DataBinding.DataField = 'InvoiceNO'
        Style.IsFontAssigned = True
        ExplicitTop = 13
      end
      inherited cxdt: TcxDBDateEdit
        Top = 40
        DataBinding.DataField = 'InvoiceDate'
        ExplicitTop = 40
      end
    end
    object cxEdt2: TcxDBTextEdit
      Left = 238
      Top = 26
      DataBinding.DataField = 'SubjoinNo'
      DataBinding.DataSource = dsHed
      TabOrder = 2
      Width = 143
    end
    object cbbPayMode: TcxDBComboBox
      Left = 69
      Top = 52
      DataBinding.DataField = 'PayMode'
      DataBinding.DataSource = dsHed
      TabOrder = 3
      Width = 121
    end
    object cxEdt1: TcxDBTextEdit
      Left = 446
      Top = 26
      DataBinding.DataField = 'CompactNo'
      DataBinding.DataSource = dsHed
      TabOrder = 4
      Width = 121
    end
    object cxMoRemark: TcxDBMemo
      Left = 238
      Top = 52
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.ScrollBars = ssVertical
      TabOrder = 5
      Visible = False
      Height = 21
      Width = 329
    end
    object cxPupEdtRemark: TcxDBPopupEdit
      Left = 238
      Top = 52
      DataBinding.DataField = 'Remark'
      DataBinding.DataSource = dsHed
      Properties.PopupControl = cxMoRemark
      Properties.ReadOnly = False
      TabOrder = 6
      Width = 329
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 69
      Top = 26
      DataBinding.DataField = 'SourceDate'
      DataBinding.DataSource = dsHed
      TabOrder = 7
      Width = 121
    end
    object cxRgpSignFlag: TcxDBRadioGroup
      Left = 573
      Top = 0
      Alignment = alCenterCenter
      DataBinding.DataField = 'SignFlag'
      DataBinding.DataSource = dsHed
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
      TabOrder = 8
      Height = 73
      Width = 67
    end
    object cxObject: TcxDBButtonEdit
      Left = 69
      Top = 0
      DataBinding.DataField = 'CustName'
      DataBinding.DataSource = dsHed
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
      TabOrder = 9
      Width = 312
    end
  end
  inherited pnlBody: TPanel
    Top = 159
    Height = 353
    ExplicitTop = 159
    ExplicitHeight = 353
    inherited cxPgc: TcxPageControl
      Height = 353
      ExplicitHeight = 353
      ClientRectBottom = 347
      inherited cxtbsht1: TcxTabSheet
        ExplicitLeft = 2
        ExplicitTop = 27
        ExplicitWidth = 1036
        ExplicitHeight = 320
        inherited cxgrd: TcxGrid
          Height = 320
          ExplicitHeight = 320
          inherited cxgrdtbv: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                Column = cxgrdbclmnInvoiceNum
              end
              item
                Kind = skSum
                Column = cxgrdbclmnInvoiceMoney
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
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdbclmnItemCodePropertiesButtonClick
              Width = 69
            end
            object cxgrdbclmnItemPYCode: TcxGridDBColumn
              Caption = #25340#38899#30721
              DataBinding.FieldName = 'ItemPYCode'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.AutoSelect = False
              Properties.DropDownWidth = 170
              Properties.KeyFieldNames = 'ItemPYCode'
              Properties.ListColumns = <
                item
                  Caption = #25340#38899#30721
                  Width = 70
                  FieldName = 'ItemPYCode'
                end
                item
                  Caption = #20135#21697#21517#31216
                  Width = 130
                  FieldName = 'ItemName'
                end>
              Properties.MaxLength = 200
              Properties.OnValidate = cxgrdbclmnItemPYCodePropertiesValidate
              Visible = False
              Width = 64
            end
            object cxgrdbclmnItemName: TcxGridDBColumn
              Caption = #20135#21697#21517#31216
              DataBinding.FieldName = 'ItemName'
              Width = 139
            end
            object cxgrdbclmnItemSpc: TcxGridDBColumn
              Caption = #35268#26684
              DataBinding.FieldName = 'ItemSpc'
              Width = 82
            end
            object cxgrdbclmnItemUnit: TcxGridDBColumn
              Caption = #21333#20301
              DataBinding.FieldName = 'ItemUnit'
              Width = 44
            end
            object cxgrdbclmnProType: TcxGridDBColumn
              Caption = #23646#24615
              DataBinding.FieldName = 'ProType'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdbclmnProTypePropertiesButtonClick
              Width = 61
            end
            object cxgrdtbvColumn1: TcxGridDBColumn
              Caption = #39068#33394
              DataBinding.FieldName = 'Color'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxgrdtbvColumn1PropertiesButtonClick
              Width = 60
            end
            object cxgrdbclmnInvoiceNum: TcxGridDBColumn
              Caption = #25968#37327'*'
              DataBinding.FieldName = 'InvoiceNum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnOrderNumPropertiesValidate
              Width = 63
            end
            object cxgrdbclmnInvoicePrice: TcxGridDBColumn
              Caption = #21333#20215'*'
              DataBinding.FieldName = 'InvoicePrice'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnOrderPricePropertiesValidate
              Width = 62
            end
            object cxgrdbclmnTaxPrice: TcxGridDBColumn
              Caption = #21547#31246#20215
              DataBinding.FieldName = 'TaxPrice'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnTaxPricePropertiesValidate
              Width = 63
            end
            object cxgrdbclmnTaxRate: TcxGridDBColumn
              Caption = #31246#29575'%'
              DataBinding.FieldName = 'TaxRate'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxgrdbclmnTaxRatePropertiesValidate
              Width = 59
            end
            object cxgrdbclmnInvoiceMoney: TcxGridDBColumn
              Caption = #37329#39069
              DataBinding.FieldName = 'InvoiceMoney'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 69
            end
            object cxgrdbclmnAllMoney: TcxGridDBColumn
              Caption = #20215#31246#21512#35745
              DataBinding.FieldName = 'AllMoney'
              PropertiesClassName = 'TcxTextEditProperties'
              Width = 69
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
  end
  inherited PupBpm: TdxBarPopupMenu
    Left = 880
    Top = 54
  end
  inherited dsHed: TDataSource
    Left = 208
    Top = 54
  end
  inherited qyHed: TADOQuery
    OnCalcFields = qyHedCalcFields
    SQL.Strings = (
      'select * from SaleInvoiceHDTB where IsNull(bMaxAudit,0)=0')
    Left = 248
    Top = 54
    object qyHedAutoID: TLargeintField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object qyHedInvoiceNO: TStringField
      FieldName = 'InvoiceNO'
    end
    object qyHedSourceDate: TDateTimeField
      FieldName = 'SourceDate'
    end
    object qyHedInvoiceDate: TDateTimeField
      FieldName = 'InvoiceDate'
    end
    object qyHedSignFlag: TSmallintField
      FieldName = 'SignFlag'
    end
    object qyHedBillKind: TStringField
      FieldName = 'BillKind'
      Size = 30
    end
    object qyHedCustId: TStringField
      FieldName = 'CustId'
    end
    object qyHedEmpId: TStringField
      FieldName = 'EmpId'
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
      Size = 300
    end
    object qyHedbPrint: TBooleanField
      FieldName = 'bPrint'
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
    object qyHedAuditDate: TStringField
      FieldName = 'AuditDate'
      Size = 100
    end
    object qyHedCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CustName'
      Size = 50
      Calculated = True
    end
    object qyHedEmpName: TStringField
      FieldKind = fkCalculated
      FieldName = 'EmpName'
      Calculated = True
    end
    object qyHedPayMode: TStringField
      FieldName = 'PayMode'
      Size = 30
    end
    object qyHedPrintNum: TSmallintField
      FieldName = 'PrintNum'
      OnChange = qyHedPrintNumChange
    end
    object qyHedAuditManName: TStringField
      FieldName = 'AuditManName'
      Size = 50
    end
    object qyHedMaxAuditDate: TDateTimeField
      FieldName = 'MaxAuditDate'
    end
  end
  inherited qyDet: TADOQuery
    CursorType = ctStatic
    AfterInsert = qyDetAfterInsert
    SQL.Strings = (
      'select * from SaleInvoiceDTTB')
    object qyDetAutoID: TLargeintField
      FieldName = 'AutoID'
      ReadOnly = True
    end
    object qyDetInvoiceNO: TStringField
      FieldName = 'InvoiceNO'
    end
    object qyDetItemID: TStringField
      FieldName = 'ItemID'
      OnChange = qyDetItemIDChange
      Size = 30
    end
    object qyDetItemCode: TStringField
      FieldName = 'ItemCode'
      Size = 30
    end
    object qyDetItemPYCode: TStringField
      FieldName = 'ItemPYCode'
      Size = 50
    end
    object qyDetProType: TStringField
      FieldName = 'ProType'
      Size = 100
    end
    object qyDetColor: TStringField
      FieldName = 'Color'
      Size = 100
    end
    object qyDetBatchNo: TStringField
      FieldName = 'BatchNo'
      Size = 30
    end
    object qyDetPlaceNo: TStringField
      FieldName = 'PlaceNo'
      Size = 30
    end
    object qyDetCompactNo: TStringField
      FieldName = 'CompactNo'
      Size = 100
    end
    object qyDetObjectId: TStringField
      FieldName = 'ObjectId'
      Size = 30
    end
    object qyDetSjNo: TStringField
      FieldName = 'SjNo'
      Size = 30
    end
    object qyDetsOrderNo: TStringField
      FieldName = 'sOrderNo'
      Size = 30
    end
    object qyDetTechName: TStringField
      FieldName = 'TechName'
      Size = 100
    end
    object qyDetInDate: TStringField
      FieldName = 'InDate'
      Size = 30
    end
    object qyDetPState: TStringField
      FieldName = 'PState'
      Size = 30
    end
    object qyDetTempNo: TStringField
      FieldName = 'TempNo'
      Size = 30
    end
    object qyDetInvoiceNum: TFMTBCDField
      FieldName = 'InvoiceNum'
      Precision = 18
      Size = 5
    end
    object qyDetInvoicePrice: TFMTBCDField
      FieldName = 'InvoicePrice'
      Precision = 18
      Size = 5
    end
    object qyDetTaxPrice: TFMTBCDField
      FieldName = 'TaxPrice'
      Precision = 18
      Size = 5
    end
    object qyDetInvoiceMoney: TFMTBCDField
      FieldName = 'InvoiceMoney'
      Precision = 18
      Size = 5
    end
    object qyDetSubNum: TFMTBCDField
      FieldName = 'SubNum'
      Precision = 18
      Size = 5
    end
    object qyDetSubPrice: TFMTBCDField
      FieldName = 'SubPrice'
      Precision = 18
      Size = 5
    end
    object qyDetSubTaxPrice: TFMTBCDField
      FieldName = 'SubTaxPrice'
      Precision = 18
      Size = 5
    end
    object qyDetSubMoney: TFMTBCDField
      FieldName = 'SubMoney'
      Precision = 18
      Size = 5
    end
    object qyDetTaxRate: TFMTBCDField
      FieldName = 'TaxRate'
      Precision = 18
      Size = 5
    end
    object qyDetTaxMoney: TFMTBCDField
      FieldName = 'TaxMoney'
      Precision = 18
      Size = 5
    end
    object qyDetAllMoney: TFMTBCDField
      FieldName = 'AllMoney'
      Precision = 18
      Size = 5
    end
    object qyDetOrderNo: TStringField
      FieldName = 'OrderNo'
      Size = 30
    end
    object qyDetSendNo: TStringField
      FieldName = 'SendNo'
      Size = 30
    end
    object qyDetIoNo: TStringField
      FieldName = 'IoNo'
      Size = 30
    end
    object qyDetRemark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
    object qyDetItemName: TStringField
      FieldName = 'ItemName'
      Size = 100
    end
    object qyDetItemSpc: TStringField
      FieldName = 'ItemSpc'
      Size = 100
    end
    object qyDetItemPic: TStringField
      FieldName = 'ItemPic'
      Size = 50
    end
    object qyDetItemUnit: TStringField
      FieldName = 'ItemUnit'
      Size = 10
    end
    object qyDetSubUnit: TStringField
      FieldName = 'SubUnit'
      Size = 10
    end
    object qyDetExchRate: TFMTBCDField
      FieldName = 'ExchRate'
      Precision = 18
      Size = 9
    end
    object qyDetiFlag: TSmallintField
      FieldName = 'iFlag'
    end
    object qyDetIoId: TStringField
      FieldName = 'IoId'
      Size = 100
    end
    object qyDetAutoNo: TStringField
      FieldName = 'AutoNo'
      Size = 100
    end
    object qyDetOrderId: TStringField
      FieldName = 'OrderId'
      Size = 100
    end
    object qyDetSendId: TStringField
      FieldName = 'SendId'
      Size = 100
    end
  end
  inherited pmLayout: TPopupMenu
    Left = 472
    Top = 288
    object N1: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = #38144#21806#20986#24211#21333
      OnClick = N2Click
    end
  end
  inherited cxgrdpmn1: TcxGridPopupMenu
    Left = 432
    Top = 288
  end
  inherited frxHed: TfrxDBDataset
    UserName = #24212#25910#35760#36134#20027#34920
    FieldAliases.Strings = (
      'AutoID='#33258#21160#32534#30721
      'InvoiceNO='#35760#36134#21333#21495
      'SourceDate='#28304#21333#26085#26399
      'InvoiceDate='#35760#36134#26085#26399
      'SignFlag='#34013#32418#23383
      'BillKind='#21333#25454#31867#22411
      'CustId='#23458#25143#32534#21495
      'EmpId='#38144#21806#21592#32534#21495
      'CompactNo='#21512#21516#21495
      'SubjoinNo='#28304#21333#21495
      'bSelect='#26159#21542#36873#25321
      'Remark='#22791#27880
      'bPrint='#26159#21542#25171#21360
      'MakeDate='#21046#21333#26085#26399
      'MakeMan='#21046#21333#20154#32534#21495
      'MakeManName='#21046#21333#20154
      'EditMan='#20462#25913#20154#32534#21495
      'EditManName='#20462#25913#20154
      'EditDate='#20462#25913#26085#26399
      'AuditFlag='#23457#26680#26631#24535
      'bMaxAudit='#26159#21542#23457#26680#23436#25104
      'AuditDate='#23457#26680#26085#26399
      'CustName='#23458#25143#21517#31216
      'EmpName='#38144#21806#21592
      'PayMode='#25910#27454#26041#24335
      'PrintNum='#25171#21360#27425#25968
      'AuditManName='#23457#26680#20154
      'MaxAuditDate='#26368#21518#23457#26680#26085#26399)
    Left = 288
    Top = 54
  end
  inherited frxDet: TfrxDBDataset
    UserName = #24212#25910#35760#36134#20174#34920
    FieldAliases.Strings = (
      'AutoID='#33258#21160#32534#21495
      'InvoiceNO='#35760#36134#21333#21495
      'ItemID='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemPYCode='#20135#21697#25340#38899#30721
      'ProType='#23646#24615
      'Color='#39068#33394
      'BatchNo='#25209#21495
      'PlaceNo='#36135#20301
      'CompactNo='#21512#21516#21495
      'ObjectId='#24448#26469#23545#35937
      'SjNo='#21830#26816#21495
      'sOrderNo='#24211#23384#35746#21333#21495
      'TechName='#24037#24207
      'InDate='#20837#24211#26102#38388
      'PState='#29366#24577
      'TempNo='#20020#26102#21495
      'InvoiceNum='#35760#36134#25968#37327
      'InvoicePrice='#21333#20215
      'TaxPrice='#21547#31246#20215
      'InvoiceMoney='#37329#39069
      'SubNum='#21103#25968#37327
      'SubPrice='#21103#21333#20215
      'SubTaxPrice='#21103#21547#31246#20215
      'SubMoney='#21103#37329#39069
      'TaxRate='#31246#29575
      'TaxMoney='#31246#39069
      'AllMoney='#20215#31246#21512#35745
      'OrderNo='#38144#21806#35746#21333#21495
      'SendNo='#38144#21806#21457#36135#21333#21495
      'IoNo='#38144#21806#20986#24211#21333#21495
      'Remark='#22791#27880
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#20135#21697#35268#26684
      'ItemPic='#22270#21495
      'ItemUnit='#21333#20301
      'SubUnit='#21103#21333#20301
      'ExchRate='#36716#21270#29575
      'iFlag='#36716#25442#26631#35782
      'IoId='#38144#21806#20986#24211#20869#30721
      'AutoNo='#33258#21160#32534#21495
      'OrderId='#38144#21806#35746#21333#20869#30721
      'SendId='#38144#21806#21457#36135#21333#20869#30721)
    Top = 320
  end
end
