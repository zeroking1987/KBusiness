inherited QBaseFM: TQBaseFM
  Caption = #26597#35810
  ClientHeight = 540
  ExplicitHeight = 540
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel [0]
    Left = 0
    Top = 46
    Width = 1074
    Height = 30
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 10905136
    Font.Height = -27
    Font.Name = #21326#25991#20013#23435
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object cxLabTitle: TcxLabel
      Left = 0
      Top = 0
      Align = alLeft
      AutoSize = False
      Caption = #26597#35810
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 10905136
      Style.Font.Height = -20
      Style.Font.Name = #21326#25991#20013#23435
      Style.Font.Style = []
      Style.TextColor = 10905136
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      ExplicitTop = 1
      Height = 30
      Width = 193
      AnchorX = 97
      AnchorY = 15
    end
  end
  object pnlFind: TPanel [1]
    Left = 0
    Top = 76
    Width = 1074
    Height = 96
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
  end
  object cxpgcntrl1: TcxPageControl [2]
    Left = 0
    Top = 172
    Width = 1074
    Height = 368
    Align = alClient
    TabOrder = 6
    Properties.ActivePage = cxtbsht1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 362
    ClientRectLeft = 2
    ClientRectRight = 1068
    ClientRectTop = 27
    object cxtbsht1: TcxTabSheet
      Caption = #26126'  '#32454
      ImageIndex = 0
      object cxgrd: TcxGrid
        Left = 0
        Top = 0
        Width = 1066
        Height = 335
        Align = alClient
        PopupMenu = pmLayout
        TabOrder = 0
        object cxgrdtbv: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxgrdtbvCellDblClick
          DataController.DataSource = dsHed
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.PullFocusing = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = #24658#25463#36719#20214
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.IndicatorWidth = 40
          OnCustomDrawIndicatorCell = cxgrdtbvCustomDrawIndicatorCell
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
          UserWidth = 63
          Visible = True
          ItemName = 'dxbrcmbPageIndex'
        end
        item
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
          ItemName = 'btTemp'
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
    end
    inherited btExport: TdxBarLargeButton
      Visible = ivAlways
      OnClick = btExportClick
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
    inherited btTemp: TdxBarLargeButton
      Caption = #23637' '#24320
      Hint = #20840#37096#23637#24320#25110#25910#32553#20998#32452#25968#25454
      Visible = ivAlways
      LargeGlyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000020000
        0004000000060000000600000006000000060000000600000006000000060000
        0006000000060000000600000006000000060000000600000006000000060000
        00060000000600000006000000060000000600000004000000020000000E0000
        00240000002C0000002C0000002C0000002C0000002C0000002C0000002C0000
        002C0000002C0000002C0000002C0000002C0000002C0000002C0000002C0000
        002C0000002C0000002C0000002C0000002C000000220000000C1B1304387A55
        0CBD875C07CF875C05D1875C05D1875C05D1875C05D1875C05D1885D07D1895F
        0BD1895F0BD1885D07D1875C05D1875C05D1875C05D1875C05D1875C05D1875C
        05D1875C05D1875C05D1875C05D1875D07CF74520BB7171103342D1F0350DABE
        85FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFEAEAEBFFEBDC
        BFFFD7B97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDABE85FF2D1F03502D1E0250D9BC
        83FFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6D8FFEADA
        BFFFD6B67FFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFFFFFF
        FFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFD9BC83FF2D1E02502D1E0250D9BC
        83FFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFC1C2C3FFEADA
        BFFFD6B67FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9BC83FF2D1E02502D1E0250D9BC
        83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFEAEAEBFFEADA
        BFFFD6B67FFFFFFFFFFFC4E0CFFFE9F5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9BC83FF2D1E02502D1E0250D9BC
        82FFFEFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFD6D6D7FFEADA
        BFFFD6B67FFFFFFFFFFF098942FF69C69FFFEAF5EFFFFFFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFFFFFFD9BC82FF2D1E02502D1E0250D9BC
        83FFFDFDFEFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFDFDFDFFC2C2C3FFECDB
        BFFFD9B77FFFFFFFFFFF00944FFF0AC686FF65BE97FFFFFEFEFFFEFDFDFFFBFB
        FBFFFBFBFBFFFBFBFBFFFBFBFBFFFDFDFEFFD9BC83FF2D1E02502D1E0250D9BC
        83FFF9F9FBFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF9F8F8FFE9E9EAFFEFDC
        BFFF64872EFF029655FF00A667FF00D89DFF00C285FF64BD96FFE9F3EEFFFBF8
        FAFFF7F7F7FFF7F7F7FFF7F7F7FFF9F9FBFFD9BC83FF2D1E02502D1E0250D9BC
        82FFF7F7F8FFF4F4F3FFF4F4F3FFF4F4F3FFF4F4F3FFF6F5F5FFD2D3D4FFF0DC
        BFFF79AC60FF0BD7A6FF00D29CFF00D09AFF00D09BFF0ABC84FF67C19CFFE7EF
        EBFFF5F4F4FFF4F3F3FFF4F4F3FFF7F7F8FFD9BC82FF2D1E02502D1E0250D9BC
        83FFF4F4F5FFF0F0EFFFF0F0EFFFF0F0EFFFF0F1EFFFF2F2F1FFBFC0C1FFEFDB
        BFFF89AB66FF14D0A5FF00C998FF00CA99FF00CA99FF08CD9FFF15AA71FFC4DB
        CCFFF2F1F1FFF0F0EFFFF0F0EFFFF4F4F5FFD9BC83FF2D1E02502D1E0250D9BC
        83FFF0F1F2FFEDECECFFEDECECFFEDECECFFEDECECFFEFEDEEFFE0E0E1FFEEDB
        BFFF9BAD6EFF2BD3B4FF17CBA6FF12C8A0FF11C8A0FF39C6A1FF45B288FFD9E3
        DDFFEEEDEDFFEDECECFFEDECECFFF0F1F2FFD9BC83FF2D1E02502D1E0250D9BC
        83FFEEEEEFFFE9E9E8FFEAE9E8FFEAE9E8FFEAE9E8FFEBEBEAFFCCCCCDFFEEDC
        BFFF809548FF2BB488FF3EBE97FF5AD7C1FF2CC19FFF46B087FFCFDDD4FFF0EB
        ECFFEAE9E8FFEAE9E8FFE9E9E8FFEEEEEFFFD9BD83FF2D1E02502D1E0250D9BD
        83FFEBEBECFFE6E5E4FFE6E5E4FFE6E5E4FFE6E5E4FFE7E6E5FFBBBBBCFFEDDB
        BFFFBBA966FFBFD8CCFF1D985EFF45C8ADFF2FA87BFFD8DED8FFEDE7E8FFE7E5
        E5FFE6E5E4FFE6E5E4FFE6E5E4FFEBEBECFFD9BD83FF2D1E02502D1E0250D9BD
        83FFE8E8E8FFE3E2E0FFE3E2E0FFE3E2E0FFE3E2E0FFE4E3E1FFD7D7D7FFEADA
        BFFFD6B77FFFF9EEF3FF048946FF43AD87FFD5DBD5FFE7E3E3FFE4E2E0FFE3E2
        E0FFE3E2E0FFE3E2E0FFE3E2E0FFE8E8E8FFD9BC83FF2D1E02502D1E0250D9BC
        83FFE5E5E5FFDFDEDDFFDFDEDDFFDFDEDDFFDFDEDDFFE0DFDEFFC5C5C6FFEADA
        BFFFD6B77FFFEEE8EBFF7EB593FFC3D3CAFFE6E0E1FFDFDEDDFFDFDEDDFFDFDE
        DDFFDFDEDDFFDFDEDDFFDFDEDDFFE5E5E5FFD9BD83FF2D1E02502D1E0250DABD
        83FFE3E2E2FFDBDAD8FFDCDAD9FFDCDAD9FFDCDAD9FFDDDCDAFFB6B7B7FFEADA
        BFFFD6B77FFFE4E3E3FFE0DCDBFFDFDCDBFFDDDBD9FFDCDAD9FFDCDAD9FFDCDA
        D9FFDCDAD9FFDCDAD9FFDBDAD8FFE3E2E2FFDABD83FF2D1E02502D1E0250D9BD
        83FFE6E6E6FFDEDEDEFFDFDFDEFFDFDFDEFFDFDFDEFFDFDFDEFFDFE0DFFFEADB
        BFFFD6B77FFFE6E6E6FFDEDEDEFFDFDFDEFFDFDFDEFFDFDFDEFFDFDFDEFFDFDF
        DEFFDFDFDEFFDFDFDEFFDEDEDEFFE6E6E6FFDABD83FF2D1E02502D1F0350D8B6
        76FFF2DBB6FFF0D5A9FFF0D5A9FFEFD4A9FFF0D4A9FFF0D5A9FFF0D5A9FFE6C5
        8CFFDCB36DFFF0D5AAFFF0D4A9FFF0D5A9FFF0D5A9FFF0D4A9FFF0D5A9FFF0D5
        A9FFF0D4A9FFF0D5A9FFF0D5A9FFF2DAB5FFD8B676FF2D1F03502D200450D5AE
        65FFE1B05DFFDBA243FFDBA345FFDBA345FFDBA345FFDBA345FFDBA345FFDCA4
        47FFDCA447FFDCA345FFDBA345FFDBA344FFDBA345FFDBA345FFDBA344FFDBA3
        45FFDBA345FFDBA344FFDBA243FFE1B05DFFD5AE65FF2D2004502D20054CD3AA
        5DFFDDA952FFD89E3AFFD89E3BFFD89E3BFFD89E3BFFD89E3BFFD89E3BFFD89E
        3BFFD89E3BFFD89E3BFFD89E3BFFD89E3BFFD89E3BFFD89E3BFFD89E3BFFD89E
        3BFFD89E3BFFD89E3BFFD89E3AFFDDA952FFD3AA5DFF2D20054C271C053CB88C
        37EDD1A757FFD1A757FFD1A758FFD1A758FFD1A757FFD1A757FFD1A758FFD1A7
        57FFD1A757FFD1A758FFD1A757FFD1A757FFD1A758FFD1A757FFD1A757FFD1A7
        58FFD1A757FFD1A757FFD1A758FFD1A757FFB88C37ED271C053C0806010C271C
        05362E2106402E2006402E2006402E2006402E2006402E2006402E2006402E20
        06402E2006402E2006402E2005402E2006402E2005402E2005402E2006402E20
        05402E2005402E2006402E2005402E210640271C05360806010C}
      OnClick = btTempClick
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
      Caption = #23614#39029
      Hint = #23614#39029
    end
    object dxbrcmbPageIndex: TdxBarCombo
      Caption = 'New Item'
      Category = 0
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
    Left = 72
    Top = 288
  end
  inherited qyHed: TADOQuery
    LockType = ltReadOnly
    AfterScroll = qyHedAfterScroll
    Left = 72
    Top = 328
  end
  object frxHed: TfrxDBDataset
    UserName = #26597#35810
    CloseDataSource = False
    DataSet = qyHed
    BCDToCurrency = False
    Left = 72
    Top = 368
  end
  object pmLayout: TPopupMenu
    Left = 464
    Top = 392
    object mniNCopyD: TMenuItem
      Caption = #22797#21046#21333#20803#26684
      OnClick = mniNCopyDClick
    end
    object mniN1: TMenuItem
      Caption = '-'
    end
    object mniNCustomGrd: TMenuItem
      Caption = #35774#23450#21015#37197#32622
      OnClick = mniNCustomGrdClick
    end
    object mniNSaveGrd: TMenuItem
      Caption = #20445#23384#21015#37197#32622
      OnClick = mniNSaveGrdClick
    end
    object mniNDelGrd: TMenuItem
      Caption = #24674#22797#21015#37197#32622
      OnClick = mniNDelGrdClick
    end
  end
  object cxgrdpmn1: TcxGridPopupMenu
    Grid = cxgrd
    PopupMenus = <>
    Left = 432
    Top = 392
  end
end
