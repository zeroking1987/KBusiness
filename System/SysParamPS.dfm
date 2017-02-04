inherited SysParamFM: TSysParamFM
  Caption = #31995#32479#35774#32622
  ClientHeight = 498
  ClientWidth = 1027
  Position = poDesigned
  ExplicitWidth = 1027
  ExplicitHeight = 498
  PixelsPerInch = 96
  TextHeight = 13
  object pnl2: TPanel [0]
    Left = 753
    Top = 0
    Width = 274
    Height = 498
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
  end
  object pnl1: TPanel [1]
    Left = 0
    Top = 0
    Width = 753
    Height = 498
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 5
    object dxnvbrParam: TdxNavBar
      Left = 0
      Top = 0
      Width = 144
      Height = 456
      Align = alLeft
      ActiveGroupIndex = 0
      TabOrder = 0
      View = 15
      OptionsImage.SmallImages = DataFM.cxImageList32
      OptionsView.Common.ShowGroupCaptions = False
      OptionsView.NavigationPane.ShowHeader = False
      OptionsView.NavigationPane.ShowOverflowPanel = False
      OnLinkClick = dxnvbrParamLinkClick
      object dxnvbrgrpParamGroup1: TdxNavBarGroup
        Caption = #31995#32479#35774#32622
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <
          item
            Item = dxnvbrtmParamItem1
          end
          item
            Item = dxnvbrtmParamItem2
          end>
      end
      object dxnvbrtmParamItem1: TdxNavBarItem
        Caption = #22522#26412#35774#32622
        SmallImageIndex = 0
      end
      object dxnvbrtmParamItem2: TdxNavBarItem
        Caption = #21151#33021#35774#32622
        SmallImageIndex = 1
        Visible = False
      end
    end
    object cxPgcParam: TcxPageControl
      Left = 144
      Top = 0
      Width = 609
      Height = 456
      Align = alClient
      TabOrder = 1
      Properties.ActivePage = cxtbsht1
      Properties.CustomButtons.Buttons = <>
      Properties.Images = DataFM.cxImageList24
      ClientRectBottom = 450
      ClientRectLeft = 2
      ClientRectRight = 603
      ClientRectTop = 36
      object cxtbsht1: TcxTabSheet
        Caption = #22522#26412#35774#32622
        ImageIndex = 0
        object cxgrpbx1: TcxGroupBox
          Left = 0
          Top = 314
          Align = alBottom
          Caption = #21551#29992#26376#20221#35774#32622'  '#65288#19968#26086#21551#29992#23558#19981#33021#20877#26356#25913#65289
          TabOrder = 0
          Visible = False
          Height = 100
          Width = 601
          object Label10: TLabel
            Left = 23
            Top = 23
            Width = 84
            Height = 13
            Caption = #20179#24211#21551#29992#26376#20221#65306
          end
          object Label11: TLabel
            Left = 307
            Top = 23
            Width = 84
            Height = 13
            Caption = #24212#20184#21551#29992#26376#20221#65306
          end
          object Label12: TLabel
            Left = 307
            Top = 47
            Width = 84
            Height = 13
            Caption = #24212#25910#21551#29992#26376#20221#65306
          end
          object Label14: TLabel
            Left = 23
            Top = 47
            Width = 84
            Height = 13
            Caption = #36130#21153#21551#29992#26376#20221#65306
          end
          object Label1: TLabel
            Left = 23
            Top = 71
            Width = 84
            Height = 13
            Caption = #20986#32435#21551#29992#26376#20221#65306
          end
          object cxEdtWareStartMon: TcxDBTextEdit
            Left = 110
            Top = 19
            DataBinding.DataField = 'WareStartMon'
            DataBinding.DataSource = dsHed
            TabOrder = 0
            Width = 78
          end
          object cxdtWareStartMon: TcxDateEdit
            Left = 187
            Top = 19
            Properties.OnChange = cxdtWareStartMonPropertiesChange
            Style.Edges = [bTop, bRight, bBottom]
            TabOrder = 1
            Width = 114
          end
          object cxEdtStockStartMon: TcxDBTextEdit
            Left = 389
            Top = 19
            DataBinding.DataField = 'StockStartMon'
            DataBinding.DataSource = dsHed
            TabOrder = 2
            Width = 78
          end
          object cxdtStockStartMon: TcxDateEdit
            Left = 466
            Top = 19
            Properties.OnChange = cxdtStockStartMonPropertiesChange
            Style.Edges = [bTop, bRight, bBottom]
            TabOrder = 3
            Width = 114
          end
          object cxEdtSaleStartMon: TcxDBTextEdit
            Left = 389
            Top = 43
            DataBinding.DataField = 'SaleStartMon'
            DataBinding.DataSource = dsHed
            TabOrder = 4
            Width = 78
          end
          object cxdtSaleStartMon: TcxDateEdit
            Left = 466
            Top = 43
            Properties.OnChange = cxdtSaleStartMonPropertiesChange
            Style.Edges = [bTop, bRight, bBottom]
            TabOrder = 5
            Width = 114
          end
          object cxEdtCWStartMon: TcxDBTextEdit
            Left = 110
            Top = 43
            DataBinding.DataField = 'CWStartMon'
            DataBinding.DataSource = dsHed
            TabOrder = 6
            Width = 78
          end
          object cxdtCWStartMon: TcxDateEdit
            Left = 187
            Top = 43
            Properties.OnChange = cxdtCWSatartMonPropertiesChange
            Style.Edges = [bTop, bRight, bBottom]
            TabOrder = 7
            Width = 114
          end
          object cxEdtCNStartMon: TcxDBTextEdit
            Left = 110
            Top = 67
            DataBinding.DataField = 'CNStartMon'
            DataBinding.DataSource = dsHed
            TabOrder = 8
            Width = 78
          end
          object cxdtCNStartMon: TcxDateEdit
            Left = 187
            Top = 67
            Properties.OnChange = cxDateEdit1PropertiesChange
            Style.Edges = [bTop, bRight, bBottom]
            TabOrder = 9
            Width = 114
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 601
          Height = 314
          Align = alClient
          TabOrder = 1
          object cxDBVerticalGrid3: TcxDBVerticalGrid
            Left = 1
            Top = 1
            Width = 320
            Height = 312
            Align = alLeft
            OptionsView.RowHeaderWidth = 137
            Navigator.Buttons.CustomButtons = <>
            TabOrder = 0
            DataController.DataSource = dsHed
            Version = 1
            object cxDBVerticalGrid3CategoryRow2: TcxCategoryRow
              Properties.Caption = #22522#26412#35774#32622
              ID = 0
              ParentID = -1
              Index = 0
              Version = 1
            end
            object cxDBEditorRow6: TcxDBEditorRow
              Properties.Caption = #25968#37327#23567#25968#20301
              Properties.DataBinding.FieldName = 'iNumPoint'
              ID = 1
              ParentID = 0
              Index = 0
              Version = 1
            end
            object cxDBEditorRow8: TcxDBEditorRow
              Properties.Caption = #37329#39069#23567#25968#20301
              Properties.DataBinding.FieldName = 'iMoneyPoint'
              ID = 2
              ParentID = 0
              Index = 1
              Version = 1
            end
            object cxDBEditorRow7: TcxDBEditorRow
              Properties.Caption = #21333#20215#23567#25968#20301
              Properties.DataBinding.FieldName = 'iPricePoint'
              ID = 3
              ParentID = 0
              Index = 2
              Version = 1
            end
            object cxDBEditorRow9: TcxDBEditorRow
              Properties.Caption = #31246'     '#29575'(%)'
              Properties.DataBinding.FieldName = 'iTaxRate'
              ID = 4
              ParentID = 0
              Index = 3
              Version = 1
            end
            object cxDBEditorRow5: TcxDBEditorRow
              Properties.Caption = #27599#39029#35760#24405#25968
              Properties.DataBinding.FieldName = 'iQPageSize'
              ID = 5
              ParentID = 0
              Index = 4
              Version = 1
            end
            object cxDBVerticalGrid3CategoryRow1: TcxCategoryRow
              Properties.Caption = #26381#21153#22120#35774#32622
              ID = 6
              ParentID = -1
              Index = 1
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow2: TcxDBEditorRow
              Properties.Caption = #26381#21153#22120'IP'#22320#22336
              Properties.DataBinding.FieldName = 'sFTPHost'
              ID = 7
              ParentID = 6
              Index = 0
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow1: TcxDBEditorRow
              Properties.Caption = #31471#21475#21495
              Properties.Hint = 'FTP'#26381#21153#22120#31471#21475':'#40664#35748'21'
              Properties.DataBinding.FieldName = 'sFTPPort'
              ID = 8
              ParentID = 6
              Index = 1
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow3: TcxDBEditorRow
              Properties.Caption = #30331#24405#29992#25143#21517
              Properties.DataBinding.FieldName = 'sFTPUserName'
              ID = 9
              ParentID = 6
              Index = 2
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow4: TcxDBEditorRow
              Properties.Caption = #30331#24405#23494#30721
              Properties.EditPropertiesClassName = 'TcxTextEditProperties'
              Properties.EditProperties.EchoMode = eemPassword
              Properties.EditProperties.PasswordChar = '*'
              Properties.DataBinding.FieldName = 'sFTPPassWord'
              ID = 10
              ParentID = 6
              Index = 3
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow5: TcxDBEditorRow
              Properties.Caption = #25991#20214#22841#21517#31216
              Properties.Hint = 'FTP'#26381#21153#22120#31449#28857#20849#20139#30340#30446#24405
              Properties.DataBinding.FieldName = 'sFTPDir'
              ID = 11
              ParentID = 6
              Index = 4
              Version = 1
            end
            object cxDBVerticalGrid3CategoryRow3: TcxCategoryRow
              Properties.Caption = #20844#21496#35774#32622
              ID = 12
              ParentID = -1
              Index = 2
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow6: TcxDBEditorRow
              Properties.Caption = #20844#21496#21517#31216
              Properties.DataBinding.FieldName = 'CoName'
              ID = 13
              ParentID = 12
              Index = 0
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow15: TcxDBEditorRow
              Properties.Caption = #20844#21496#31616#31216
              Properties.DataBinding.FieldName = 'CoShortName'
              ID = 14
              ParentID = 12
              Index = 1
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow7: TcxDBEditorRow
              Properties.Caption = #20844#21496#22320#22336
              Properties.DataBinding.FieldName = 'CoAddress'
              ID = 15
              ParentID = 12
              Index = 2
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow8: TcxDBEditorRow
              Properties.Caption = #30005'    '#35805
              Properties.DataBinding.FieldName = 'CoTel'
              ID = 16
              ParentID = 12
              Index = 3
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow9: TcxDBEditorRow
              Properties.Caption = #20256'    '#30495
              Properties.DataBinding.FieldName = 'CoFax'
              ID = 17
              ParentID = 12
              Index = 4
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow12: TcxDBEditorRow
              Properties.Caption = 'QQ'
              Properties.DataBinding.FieldName = 'CoQQ'
              ID = 18
              ParentID = 12
              Index = 5
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow10: TcxDBEditorRow
              Properties.Caption = #32593'    '#22336
              Properties.DataBinding.FieldName = 'CoNetAddress'
              ID = 19
              ParentID = 12
              Index = 6
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow11: TcxDBEditorRow
              Properties.Caption = 'EMail'
              Properties.DataBinding.FieldName = 'CoEMail'
              ID = 20
              ParentID = 12
              Index = 7
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow14: TcxDBEditorRow
              Properties.Caption = #38134#34892#36134#21495
              Properties.DataBinding.FieldName = 'CoBankAccountNo'
              ID = 21
              ParentID = 12
              Index = 8
              Version = 1
            end
            object cxDBVerticalGrid3DBEditorRow13: TcxDBEditorRow
              Properties.Caption = #20225#19994#31246#21495
              Properties.DataBinding.FieldName = 'CoTaxNo'
              ID = 22
              ParentID = 12
              Index = 9
              Version = 1
            end
          end
        end
      end
      object cxTabSheet1: TcxTabSheet
        Caption = #21151#33021#35774#32622
        ImageIndex = 1
        object cxDBVerticalGrid1: TcxDBVerticalGrid
          Left = 0
          Top = 0
          Width = 361
          Height = 414
          Align = alLeft
          OptionsView.RowHeaderWidth = 231
          Navigator.Buttons.CustomButtons = <>
          TabOrder = 0
          DataController.DataSource = dsHed
          Version = 1
          object cxCategoryRow1: TcxCategoryRow
            Properties.Caption = #36164#26009#31649#29702
            ID = 0
            ParentID = -1
            Index = 0
            Version = 1
          end
          object cxCategoryRow3: TcxCategoryRow
            Properties.Caption = #38144#21806#31649#29702
            ID = 1
            ParentID = -1
            Index = 1
            Version = 1
          end
          object cxDBEditorRow16: TcxDBEditorRow
            Properties.Caption = #38144#21806#20986#24211#24341#29992#31867#22411
            Properties.Hint = #40664#35748#24341#29992#38144#21806#35746#21333
            Properties.EditPropertiesClassName = 'TcxComboBoxProperties'
            Properties.EditProperties.Items.Strings = (
              #38144#21806#35746#21333
              #38144#21806#21457#36135#21333)
            Properties.EditProperties.Nullstring = #40664#35748#24341#29992#38144#21806#35746#21333
            Properties.EditProperties.UseNullString = True
            Properties.DataBinding.FieldName = 'SaleOutRfKind'
            ID = 2
            ParentID = 1
            Index = 0
            Version = 1
          end
          object cxCategoryRow2: TcxCategoryRow
            Properties.Caption = #20179#24211#31649#29702
            ID = 3
            ParentID = -1
            Index = 2
            Version = 1
          end
          object cxDBEditorRowDBVerticalGrid1DBEditorRow1: TcxDBEditorRow
            Properties.Caption = #37319#36141#20837#24211#22797#26680#33258#21160#35760#36134
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.NullStyle = nssUnchecked
            Properties.DataBinding.FieldName = 'StockInAutoInvoice'
            ID = 4
            ParentID = 3
            Index = 0
            Version = 1
          end
          object cxDBVerticalGrid1DBEditorRow2: TcxDBEditorRow
            Properties.Caption = #20135#21697#20837#24211#24341#29992#31867#22411
            Properties.EditPropertiesClassName = 'TcxComboBoxProperties'
            Properties.EditProperties.Items.Strings = (
              #38144#21806#35746#21333
              'BOM'#21457#26009
              #29983#20135#35746#21333
              #29983#20135#27966#24037#21333)
            Properties.EditProperties.Nullstring = #40664#35748#24341#29992#38144#21806#35746#21333
            Properties.EditProperties.UseNullString = True
            Properties.DataBinding.FieldName = 'ProductInRfKind'
            ID = 5
            ParentID = 3
            Index = 1
            Version = 1
          end
          object cxDBVerticalGrid1DBEditorRow4: TcxDBEditorRow
            Properties.Caption = #20179#24211#21457#26009#27169#24335
            Properties.EditPropertiesClassName = 'TcxComboBoxProperties'
            Properties.EditProperties.Items.Strings = (
              #25353'BOM'#21457#26009
              #25353#29983#20135#35746#21333
              #25353#29983#20135#27966#24037#21333)
            Properties.DataBinding.FieldName = 'MatOutMode'
            ID = 6
            ParentID = 3
            Index = 2
            Version = 1
          end
          object cxDBEditorRowDBVerticalGrid1DBEditorRow2: TcxDBEditorRow
            Properties.Caption = #38144#21806#20986#24211#22797#26680#33258#21160#35760#36134
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.NullStyle = nssUnchecked
            Properties.DataBinding.FieldName = 'SaleOutAutoInvoice'
            ID = 7
            ParentID = 3
            Index = 3
            Version = 1
          end
          object cxDBVerticalGrid1CategoryRow1: TcxCategoryRow
            Properties.Caption = #29983#20135#31649#29702
            ID = 8
            ParentID = -1
            Index = 3
            Version = 1
          end
          object cxDBVerticalGrid1DBEditorRow1: TcxDBEditorRow
            Properties.Caption = 'MRP'#20998#26512#26159#21542#35745#31639#21487#29992#24211#23384
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.NullStyle = nssUnchecked
            Properties.DataBinding.FieldName = 'bMRPCalCanUseNum'
            ID = 9
            ParentID = 8
            Index = 0
            Version = 1
          end
          object cxDBVerticalGrid1DBEditorRow3: TcxDBEditorRow
            Properties.Caption = #29983#20135#35746#21333#23457#26680#33258#21160#29983#25104#35831#36141#21333
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.NullStyle = nssUnchecked
            Properties.DataBinding.FieldName = 'bMRPMakeRequire'
            ID = 10
            ParentID = 8
            Index = 1
            Version = 1
          end
          object cxDBVerticalGrid1DBEditorRow5: TcxDBEditorRow
            Properties.Caption = #29983#20135#27169#24335
            Properties.EditPropertiesClassName = 'TcxComboBoxProperties'
            Properties.EditProperties.Items.Strings = (
              #29983#20135#35746#21333
              #29983#20135#27966#24037#21333)
            Properties.DataBinding.FieldName = 'ProMode'
            ID = 11
            ParentID = 8
            Index = 2
            Version = 1
          end
          object cxDBVerticalGrid1CategoryRow2: TcxCategoryRow
            Properties.Caption = #36134#27454#31649#29702
            ID = 12
            ParentID = -1
            Index = 4
            Version = 1
          end
          object cxDBVerticalGrid1DBEditorRow6: TcxDBEditorRow
            Properties.Caption = #36134#27454#23457#26680#33258#21160#29983#25104#20986#32435#21333
            Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
            Properties.EditProperties.NullStyle = nssUnchecked
            Properties.DataBinding.FieldName = 'bPayToCN'
            ID = 13
            ParentID = 12
            Index = 0
            Version = 1
          end
        end
      end
    end
    object pnl3: TPanel
      Left = 0
      Top = 456
      Width = 753
      Height = 42
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object btn1: TButton
        Left = 439
        Top = 6
        Width = 75
        Height = 25
        Caption = #30830#23450
        ImageIndex = 0
        TabOrder = 0
        OnClick = btn1Click
      end
      object btn2: TButton
        Left = 558
        Top = 6
        Width = 75
        Height = 25
        Caption = #21462#28040
        ImageIndex = 2
        TabOrder = 1
        OnClick = btn2Click
      end
      object btnApp: TButton
        Left = 672
        Top = 6
        Width = 75
        Height = 25
        Caption = #24212#29992
        ImageIndex = 3
        TabOrder = 2
        OnClick = btnAppClick
      end
    end
  end
  inherited dxbrmngrBarManage: TdxBarManager
    Left = 792
    Top = 32
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxbrBarMang: TdxBar
      Visible = False
    end
    inherited btAdd: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btDel: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btAddL: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btDelL: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btFind: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btRefer: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btPrint: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btCheck: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btUnCheck: TdxBarLargeButton
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
  end
  inherited PupBpm: TdxBarPopupMenu
    Left = 840
    Top = 32
  end
  inherited dsHed: TDataSource
    OnDataChange = dsHedDataChange
    Left = 56
    Top = 160
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      '  select * from SysParamTB')
    Left = 56
    Top = 192
  end
end
