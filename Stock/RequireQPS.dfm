inherited RequireQFM: TRequireQFM
  Caption = #35831#36141#21333#26597#35810
  ExplicitWidth = 1068
  ExplicitHeight = 526
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel [0]
    Left = 0
    Top = 46
    Width = 1068
    Height = 30
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 10905136
    Font.Height = -27
    Font.Name = #26999#20307
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    ExplicitTop = 48
    object labTitle: TLabel
      Left = 0
      Top = 0
      Width = 200
      Height = 30
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Caption = #35831#36141#21333#26597#35810
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10905136
      Font.Height = -21
      Font.Name = #21326#25991#23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitTop = 6
    end
  end
  object pnl2: TPanel [1]
    Left = 0
    Top = 76
    Width = 1068
    Height = 66
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    ExplicitTop = 78
    object Lablbl2: TLabel
      Left = 332
      Top = 11
      Width = 36
      Height = 13
      Caption = #21333#21495#65306
    end
    object Label1: TLabel
      Left = 12
      Top = 11
      Width = 36
      Height = 13
      Caption = #26085#26399#65306
    end
    object Label2: TLabel
      Left = 176
      Top = 7
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
    object Label3: TLabel
      Left = 12
      Top = 43
      Width = 36
      Height = 13
      Caption = #20027#39064#65306
    end
    object Label4: TLabel
      Left = 332
      Top = 43
      Width = 36
      Height = 13
      Caption = #37096#38376#65306
    end
    object Label5: TLabel
      Left = 516
      Top = 11
      Width = 60
      Height = 13
      Caption = #20135#21697#21517#31216#65306
    end
    object cxEdtBillNo: TcxTextEdit
      Left = 366
      Top = 8
      TabOrder = 0
      Width = 143
    end
    object cxdtS: TcxDateEdit
      Left = 46
      Top = 8
      TabOrder = 1
      Width = 121
    end
    object cxdtE: TcxDateEdit
      Left = 195
      Top = 8
      TabOrder = 2
      Width = 121
    end
    object cxEdtTheme: TcxTextEdit
      Left = 46
      Top = 40
      TabOrder = 3
      Width = 270
    end
    object btnDept: TcxButtonEdit
      Left = 366
      Top = 40
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnDeptPropertiesButtonClick
      TabOrder = 4
      Width = 143
    end
    object cxrdgrpAudit: TcxRadioGroup
      Left = 779
      Top = 6
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = #26410#23457#26680
        end
        item
          Caption = #24050#23457#26680
        end
        item
          Caption = #25152'  '#26377
        end>
      Properties.OnChange = btFindClick
      ItemIndex = 2
      TabOrder = 5
      Height = 59
      Width = 78
    end
    object btnItemName: TcxButtonEdit
      Left = 575
      Top = 8
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = btnItemNamePropertiesButtonClick
      TabOrder = 6
      Width = 194
    end
  end
  object cxpgcntrl1: TcxPageControl [2]
    Left = 0
    Top = 142
    Width = 1068
    Height = 384
    Align = alClient
    TabOrder = 6
    Properties.ActivePage = cxtbsht1
    Properties.CustomButtons.Buttons = <>
    ExplicitTop = 144
    ExplicitHeight = 382
    ClientRectBottom = 378
    ClientRectLeft = 2
    ClientRectRight = 1062
    ClientRectTop = 27
    object cxtbsht1: TcxTabSheet
      Caption = #26126'  '#32454
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxgrd: TcxGrid
        Left = 0
        Top = 0
        Width = 1060
        Height = 351
        Align = alClient
        PopupMenu = pmLayout
        TabOrder = 0
        object cxgrdtbv: TcxGridDBTableView
          OnDblClick = cxgrdtbvDblClick
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxgrdtbvCellDblClick
          DataController.DataSource = dsHed
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = #27809#26377#25968#25454#21487#26174#31034
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 35
          object cxgrdtbvReqDate: TcxGridDBColumn
            Caption = #35831#36141#26085#26399
            DataBinding.FieldName = 'ReqDate'
            Width = 67
          end
          object cxgrdtbvReqNO: TcxGridDBColumn
            Caption = #21333#21495
            DataBinding.FieldName = 'ReqNO'
            Width = 91
          end
          object cxgrdtbvDeptName: TcxGridDBColumn
            Caption = #35831#36141#37096#38376
            DataBinding.FieldName = 'DeptName'
            Width = 71
          end
          object cxgrdtbvTheme: TcxGridDBColumn
            Caption = #20027#39064
            DataBinding.FieldName = 'Theme'
            Width = 85
          end
          object cxgrdtbvItemCode: TcxGridDBColumn
            Caption = #20135#21697#20195#21495
            DataBinding.FieldName = 'ItemCode'
            Width = 73
          end
          object cxgrdtbvItemName: TcxGridDBColumn
            Caption = #20135#21697#21517#31216
            DataBinding.FieldName = 'ItemName'
            Width = 102
          end
          object cxgrdtbvItemSpc: TcxGridDBColumn
            Caption = #35268#26684
            DataBinding.FieldName = 'ItemSpc'
            Width = 56
          end
          object cxgrdtbvItemUnit: TcxGridDBColumn
            Caption = #21333#20301
            DataBinding.FieldName = 'ItemUnit'
            Width = 42
          end
          object cxgrdtbvSubUnit: TcxGridDBColumn
            Caption = #21103#21333#20301
            DataBinding.FieldName = 'SubUnit'
            Width = 58
          end
          object cxgrdtbvExchRate: TcxGridDBColumn
            Caption = #36716#21270#29575
            DataBinding.FieldName = 'ExchRate'
            Width = 50
          end
          object cxgrdtbvProType: TcxGridDBColumn
            Caption = #23646#24615
            DataBinding.FieldName = 'ProType'
            Width = 62
          end
          object cxgrdbclmnColumn1: TcxGridDBColumn
            Caption = #39068#33394
            DataBinding.FieldName = 'sColor'
            Visible = False
          end
          object cxgrdtbvReqNum: TcxGridDBColumn
            Caption = #25968#37327
            DataBinding.FieldName = 'ReqNum'
            Width = 59
          end
          object cxgrdtbvSubNum: TcxGridDBColumn
            Caption = #21103#25968#37327
            DataBinding.FieldName = 'SubNum'
            Width = 70
          end
          object cxgrdbclmnColumn2: TcxGridDBColumn
            Caption = #38656#27714#26085#26399
            DataBinding.FieldName = 'NeedDate'
          end
          object cxgrdtbvRemark: TcxGridDBColumn
            Caption = #22791#27880
            DataBinding.FieldName = 'Remark'
            Width = 100
          end
        end
        object cxgrdlev: TcxGridLevel
          GridView = cxgrdtbv
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
          UserDefine = [udWidth]
          UserWidth = 68
          Visible = True
          ItemName = 'dxbrcmbPageIndex'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 16
          Visible = True
          ItemName = 'cxbrdtmPage'
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
          ItemName = 'btCheck'
        end
        item
          Visible = True
          ItemName = 'btUnCheck'
        end
        item
          Visible = True
          ItemName = 'btExit'
        end
        item
          Visible = True
          ItemName = 'btTemp'
        end>
    end
    inherited btAdd: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btEdit: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btDel: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btSave: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btCancel: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btAddL: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btDelL: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btFind: TdxBarLargeButton
      Caption = #26597' '#35810
      Hint = #26597#35810#21333#25454
      OnClick = btFindClick
    end
    inherited btRefer: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btCheck: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btUnCheck: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btLeft: TdxBarLargeButton
      Caption = #19978#19968#39029
      Hint = #19978#19968#39029#25968#25454
    end
    inherited btRight: TdxBarLargeButton
      Caption = #19979#19968#39029
      Hint = #19979#19968#39029#25968#25454
    end
    inherited btFirst: TdxBarLargeButton
      Caption = #39318#39029
      Hint = #39318#39029
    end
    inherited btLast: TdxBarLargeButton
      Caption = #26411#39029
      Hint = #26411#39029
    end
    object dxbrcmbPageIndex: TdxBarCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      OnChange = dxbrcmbPageIndexChange
      ItemIndex = -1
    end
    object cxbrdtmPage: TcxBarEditItem
      Category = 0
      Hint = #26174#31034#39029#38754#24773#20917
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
  end
  inherited dsHed: TDataSource
    Left = 192
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    LockType = ltReadOnly
    SQL.Strings = (
      
        'select a.ReqDate,a.ReqNO,d.DeptName,a.Theme,b.ItemCode,c.ItemNam' +
        'e,c.ItemSpc,b.ItemUnit,b.SubUnit,b.ExchRate,'
      'b.ProType,b.sColor,b.ReqNum,b.SubNum,b.NeedDate,a.Remark'
      'from RequireHDTB a left join RequireDTTB b on a.ReqNO=b.ReqNO'
      'left join ItemTB c on b.ItemID=c.ItemId                      '
      'left join DeptTB d on a.DeptId=d.DeptId'
      'where 1=1')
    Left = 232
  end
  object cxgrdpmn1: TcxGridPopupMenu
    Grid = cxgrd
    PopupMenus = <>
    Left = 400
    Top = 272
  end
  object pmLayout: TPopupMenu
    Left = 360
    Top = 272
    object mniNCustomGrd: TMenuItem
      Caption = #33258#23450#20041#32593#26684#24067#23616
      OnClick = mniNCustomGrdClick
    end
    object mniNSaveGrd: TMenuItem
      Caption = #20445#23384#32593#26684#24067#23616
      OnClick = mniNSaveGrdClick
    end
    object mniNDelGrd: TMenuItem
      Caption = #24674#22797#32593#26684#24067#23616
      OnClick = mniNDelGrdClick
    end
  end
  object frxHed: TfrxDBDataset
    UserName = #35831#36141#21333#26597#35810
    CloseDataSource = False
    FieldAliases.Strings = (
      'ReqDate='#35831#36141#26085#26399
      'ReqNO='#35831#36141#21333#21495
      'DeptName='#37096#38376
      'Theme='#20027#39064
      'ItemCode='#20135#21697#20195#21495
      'ItemName='#20135#21697#21517#31216
      'ItemSpc='#35268#26684
      'ReqNum='#25968#37327
      'Remark='#22791#27880)
    DataSet = qyHed
    BCDToCurrency = False
    Left = 272
    Top = 64
  end
end
