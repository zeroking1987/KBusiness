inherited WareInOutQFM: TWareInOutQFM
  Caption = #20986#20837#24211#26597#35810
  ClientHeight = 527
  ClientWidth = 1110
  ExplicitWidth = 1110
  ExplicitHeight = 527
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Width = 1110
    TabOrder = 2
    ExplicitWidth = 1110
    inherited cxLabTitle: TcxLabel
      Caption = #20986#20837#24211#26597#35810
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlFind: TPanel
    Width = 1110
    Height = 133
    TabOrder = 4
    ExplicitWidth = 1110
    ExplicitHeight = 133
    object Label3: TLabel
      Left = 340
      Top = 0
      Width = 12
      Height = 19
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxdtS: TcxDateEdit
      Left = 206
      Top = -1
      TabOrder = 0
      Width = 121
    end
    object cxdtE: TcxDateEdit
      Left = 362
      Top = -1
      TabOrder = 1
      Width = 121
    end
    object btnItemKind: TcxButtonEdit
      Left = 545
      Top = 50
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemKindPropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 2
      Width = 145
    end
    object cxItem: TcxButtonEdit
      Left = 206
      Top = 50
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemNamePropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 3
      TextHint = #21487#36755#20837#20135#21697#20195#21495#12289#21517#31216#12289#35268#26684#12289#25340#38899#30721#26597#35810
      Width = 277
    end
    object lstWare: TcxDBTreeList
      Left = 0
      Top = 0
      Width = 161
      Height = 133
      Align = alLeft
      Bands = <
        item
        end>
      DataController.DataSource = dsWare
      DataController.ParentField = 'ParentId'
      DataController.KeyField = 'WareId'
      Navigator.Buttons.CustomButtons = <>
      OptionsView.GridLines = tlglBoth
      RootValue = -1
      TabOrder = 4
      ExplicitHeight = 143
      object cxdbtrlstclmnlst1bSelect: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCheckBoxProperties'
        Caption.Text = #36873#25321
        DataBinding.FieldName = 'bSelect'
        Width = 58
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxdbtrlstclmnlst1WareId: TcxDBTreeListColumn
        Visible = False
        Caption.Text = #32534#21495
        DataBinding.FieldName = 'WareId'
        Options.Editing = False
        Width = 54
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxdbtrlstclmnlst1WareName: TcxDBTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Caption.Text = #20179#24211#21517#31216
        DataBinding.FieldName = 'WareName'
        Options.Editing = False
        Width = 84
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object cxBillNo: TcxTextEdit
      Left = 541
      Top = -1
      Properties.OnChange = btFindClick
      TabOrder = 5
      Width = 149
    end
    object btnObject: TcxButtonEdit
      Left = 206
      Top = 24
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnObjectPropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 6
      TextHint = #28857#20987#36873#25321#23458#25143#25110#20379#24212#21830
      Width = 277
    end
    object cxRgpAudit: TcxRadioGroup
      Left = 776
      Top = 0
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = #26410#23457#26680
        end
        item
          Caption = #24050#23457#26680
        end
        item
          Caption = #25152' '#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 2
      TabOrder = 7
      Height = 67
      Width = 75
    end
    object cxlbl1: TcxLabel
      Left = 172
      Top = 1
      Caption = #26085#26399
      Transparent = True
    end
    object cxlbl2: TcxLabel
      Left = 511
      Top = 1
      Caption = #21333#21495
      Transparent = True
    end
    object cxlbl3: TcxLabel
      Left = 332
      Top = 78
      Caption = #23646#24615
      Transparent = True
    end
    object cxlbl4: TcxLabel
      Left = 172
      Top = 26
      Caption = #21333#20301
      Transparent = True
    end
    object cxlbl6: TcxLabel
      Left = 487
      Top = 52
      Caption = #20135#21697#31867#21035
      Transparent = True
    end
    object cxlbl7: TcxLabel
      Left = 172
      Top = 52
      Caption = #20135#21697
      Transparent = True
    end
    object cxRgpFuHe: TcxRadioGroup
      Left = 702
      Top = 0
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = #26410#22797#26680
        end
        item
          Caption = #24050#22797#26680
        end
        item
          Caption = #25152' '#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 2
      TabOrder = 14
      Height = 67
      Width = 75
    end
    object cxRgpWKindFlag: TcxRadioGroup
      Left = 702
      Top = 66
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = #20837#24211
        end
        item
          Caption = #20986#24211
        end
        item
          Caption = #25152' '#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 2
      TabOrder = 15
      Height = 67
      Width = 75
    end
    object cxButton1: TcxButton
      Left = 856
      Top = 0
      Width = 140
      Height = 25
      Caption = #20179#24211#19994#21153#31867#22411#36873#25321
      TabOrder = 16
      OnClick = cxButton1Click
    end
    object cxMoWKind: TcxMemo
      Left = 856
      Top = 23
      Properties.ScrollBars = ssVertical
      TabOrder = 17
      Height = 111
      Width = 140
    end
    object btnEmpName: TcxButtonEdit
      Left = 206
      Top = 76
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnEmpNamePropertiesButtonClick
      Properties.OnChange = btFindClick
      TabOrder = 18
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 164
      Top = 78
      Caption = #20179#24211#21592
      Transparent = True
    end
    object btnDrawEmp: TcxButtonEdit
      Left = 206
      Top = 103
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnDrawEmpPropertiesButtonClick
      Properties.OnChange = btFindClick
      TabOrder = 20
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 164
      Top = 105
      Caption = #39046#26009#21592
      Transparent = True
    end
    object cxRgpSignFlag: TcxRadioGroup
      Left = 776
      Top = 66
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = #34013#21333
        end
        item
          Caption = #32418#21333
        end
        item
          Caption = #25152' '#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 2
      TabOrder = 22
      Height = 67
      Width = 75
    end
    object cxCompactNo: TcxTextEdit
      Left = 541
      Top = 24
      Properties.OnChange = btFindClick
      TabOrder = 23
      Width = 149
    end
    object cxLabel3: TcxLabel
      Left = 499
      Top = 26
      Caption = #21512#21516#21495
      Transparent = True
    end
    object cxColor: TcxButtonEdit
      Left = 362
      Top = 103
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxColorPropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 25
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 332
      Top = 105
      Caption = #39068#33394
      Transparent = True
    end
    object cxProType: TcxButtonEdit
      Left = 362
      Top = 76
      ParentShowHint = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxPorTypePropertiesButtonClick
      Properties.OnChange = btFindClick
      ShowHint = True
      TabOrder = 27
      Width = 121
    end
  end
  inherited cxpgcntrl1: TcxPageControl
    Top = 209
    Width = 1110
    Height = 318
    ExplicitTop = 215
    ExplicitWidth = 1110
    ExplicitHeight = 312
    ClientRectBottom = 312
    ClientRectRight = 1104
    inherited cxtbsht1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 27
      ExplicitWidth = 1102
      ExplicitHeight = 279
      inherited cxgrd: TcxGrid
        Width = 1102
        Height = 285
        ExplicitWidth = 1102
        ExplicitHeight = 279
        inherited cxgrdtbv: TcxGridDBTableView
          OnDblClick = cxgrdtbvDblClick
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #21512#35745#65306'0'
              Kind = skCount
              Column = cxgrdbclmnWKindName
            end
            item
              Kind = skSum
              FieldName = 'MainNum'
              Column = cxgrdbclmnMainNum
            end
            item
              Kind = skSum
              FieldName = 'MainMoney'
              Column = cxgrdbclmnMainMoney
            end
            item
              Kind = skSum
              Column = cxgrdtbvColumn3
            end>
          object cxgrdbclmnWKindName: TcxGridDBColumn
            Caption = #19994#21153#31867#22411
            DataBinding.FieldName = 'WKindName'
            Width = 70
          end
          object cxgrdbclmnBillNO: TcxGridDBColumn
            Caption = #21333#21495
            DataBinding.FieldName = 'BillNO'
            Width = 97
          end
          object cxgrdbclmnBillDate: TcxGridDBColumn
            Caption = #26085#26399
            DataBinding.FieldName = 'BillDate'
            Width = 70
          end
          object cxgrdbclmnObjectName: TcxGridDBColumn
            Caption = #24448#26469#21333#20301
            DataBinding.FieldName = 'ObjectName'
            Width = 89
          end
          object cxgrdbclmnColumn4: TcxGridDBColumn
            Caption = #20179#31649#21592
            DataBinding.FieldName = 'WareManName'
            Width = 54
          end
          object cxgrdbclmnItemKindName: TcxGridDBColumn
            Caption = #20135#21697#31867#21035
            DataBinding.FieldName = 'ItemKindName'
            Width = 70
          end
          object cxgrdbclmnItemCode: TcxGridDBColumn
            Caption = #20135#21697#20195#21495
            DataBinding.FieldName = 'ItemCode'
            Width = 70
          end
          object cxgrdbclmnItemName: TcxGridDBColumn
            Caption = #20135#21697#21517#31216
            DataBinding.FieldName = 'ItemName'
            Width = 98
          end
          object cxgrdbclmnItemSpc: TcxGridDBColumn
            Caption = #35268#26684
            DataBinding.FieldName = 'ItemSpc'
            Width = 70
          end
          object cxgrdtbvColumn6: TcxGridDBColumn
            Caption = #20027#21333#20301
            DataBinding.FieldName = 'ItemUnit'
            Width = 56
          end
          object cxgrdtbvColumn7: TcxGridDBColumn
            Caption = #21103#21333#20301
            DataBinding.FieldName = 'SubUnit'
            Visible = False
          end
          object cxgrdbclmnProType: TcxGridDBColumn
            Caption = #23646#24615
            DataBinding.FieldName = 'ProType'
            Width = 70
          end
          object cxgrdtbvColumn12: TcxGridDBColumn
            Caption = #39068#33394
            DataBinding.FieldName = 'Color'
            Width = 65
          end
          object cxgrdtbvColumn1: TcxGridDBColumn
            Caption = #36135#20301
            DataBinding.FieldName = 'PlaceNo'
            Visible = False
            Width = 70
          end
          object cxgrdtbvColumn9: TcxGridDBColumn
            Caption = #21512#21516#21495
            DataBinding.FieldName = 'CompactNo'
            Width = 69
          end
          object cxgrdtbvColumn10: TcxGridDBColumn
            Caption = #22806#21327#21830
            DataBinding.FieldName = 'Wareobjectname'
            Width = 75
          end
          object cxgrdbclmnWareName: TcxGridDBColumn
            Caption = #20179#24211
            DataBinding.FieldName = 'WareName'
            Width = 70
          end
          object cxgrdtbvColumn2: TcxGridDBColumn
            Caption = #21333#37325
            DataBinding.FieldName = 'Weight'
            Width = 57
          end
          object cxgrdtbvColumn3: TcxGridDBColumn
            Caption = #24635#37325
            DataBinding.FieldName = 'AllWeight'
            Width = 59
          end
          object cxgrdbclmnMainNum: TcxGridDBColumn
            Caption = #25968#37327
            DataBinding.FieldName = 'MainNum'
            Width = 70
          end
          object cxgrdtbvColumn8: TcxGridDBColumn
            Caption = #21103#25968#37327
            DataBinding.FieldName = 'SubNum'
            Visible = False
          end
          object cxgrdbclmnMainPrice: TcxGridDBColumn
            Caption = #21333#20215
            DataBinding.FieldName = 'MainPrice'
            Width = 70
          end
          object cxgrdbclmnMainMoney: TcxGridDBColumn
            Caption = #20215#31246#21512#35745
            DataBinding.FieldName = 'AllMoney'
            Width = 70
          end
          object cxgrdtbvColumn11: TcxGridDBColumn
            Caption = #21103#21333#20301#21333#20215
            DataBinding.FieldName = 'SubPrice'
          end
          object cxgrdtbvColumn4: TcxGridDBColumn
            Caption = #39046#26009#21592
            DataBinding.FieldName = 'EmpName'
            Width = 52
          end
          object cxgrdtbvColumn5: TcxGridDBColumn
            Caption = #26159#21542#29616#37329#20132#26131
            DataBinding.FieldName = 'bCashDeal'
            Width = 87
          end
          object cxgrdbclmnRemark: TcxGridDBColumn
            Caption = #22791#27880
            DataBinding.FieldName = 'Remark'
            Width = 101
          end
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
    inherited btFind: TdxBarLargeButton
      OnClick = btFindClick
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
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'exec PrWareInOutQ '#39#39)
  end
  inherited frxHed: TfrxDBDataset
    UserName = #20986#20837#24211#26597#35810
    FieldAliases.Strings = (
      'SignFlag='#32418#34013#21333
      'WKindID='#19994#21153#31867#22411#32534#21495
      'WKindName='#19994#21153#31867#22411
      'BillNO='#21333#21495
      'BillDate='#26085#26399
      'ObjectID='#21333#20301#32534#21495
      'ObjectName='#21333#20301#21517#31216
      'bCashDeal='#26159#21542#29616#37329#20132#26131
      'WareMan='#20179#31649#21592#32534#21495
      'WareManName='#20179#31649#21592#22995#21517
      'ItemKindName='#20135#21697#31867#21035#21517#31216
      'ItemId='#20135#21697#32534#21495
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#20135#21697#35268#26684
      'ItemUnit='#20135#21697#20027#21333#20301
      'SubUnit='#20135#21697#21103#21333#20301
      'ProType='#23646#24615
      'PlaceNo='#36135#20301
      'HtNo='#21512#21516#21495
      'WareId='#20179#24211#32534#21495
      'WareName='#20179#24211#21517#31216
      'Weight='#21333#37325
      'AllWeight='#24635#37325
      'MainNum='#25968#37327
      'MainPrice='#21333#20215
      'TaxPrice='#21547#31246#20215
      'MainMoney='#37329#39069
      'SubNum='#21103#25968#37327
      'SubPrice='#21103#21333#20215
      'SubTaxPrice='#21103#21547#31246#20215
      'SubMoney='#21103#37329#39069
      'TaxRate='#31246#29575
      'TaxMoney='#31246#39069
      'AllMoney='#20215#31246#21512#35745
      'EmpName='#39046#26009#21592
      'Remark='#22791#27880
      'SubjoinNo='#28304#21333#21495
      'SubjoinTableId='#28304#21333#34920#32534#21495)
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
  object pmObject: TPopupMenu
    Left = 504
    Top = 392
    object NPrv: TMenuItem
      Caption = #20379#24212#21830
      OnClick = NPrvClick
    end
    object NCust: TMenuItem
      Caption = #23458'  '#25143
      OnClick = NCustClick
    end
  end
  object qyWare: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select bSelect,WareId,WareName,ParentId from WareTB')
    Left = 120
    Top = 328
    object qyWarebSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object strngfldWareWareId: TStringField
      FieldName = 'WareId'
    end
    object strngfldWareWareName: TStringField
      FieldName = 'WareName'
      Size = 30
    end
    object strngfldWareParentId: TStringField
      FieldName = 'ParentId'
    end
  end
  object dsWare: TDataSource
    DataSet = qyWare
    Left = 120
    Top = 288
  end
end
