inherited SaleMonthAccountFM: TSaleMonthAccountFM
  Caption = #24212#25910#26376#32467
  ClientHeight = 473
  ClientWidth = 689
  ExplicitWidth = 689
  ExplicitHeight = 473
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    Width = 689
    TabOrder = 3
    ExplicitWidth = 689
    inherited cxLabTitle: TcxLabel
      Caption = #24212#25910#26376#32467
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlcxGrd: TPanel
    Width = 689
    Height = 397
    ExplicitWidth = 689
    ExplicitHeight = 397
    inherited cxgrd: TcxGrid
      Width = 513
      Height = 397
      Align = alLeft
      ExplicitWidth = 513
      ExplicitHeight = 397
      inherited cxgrdtbv: TcxGridDBTableView
        object cxgrdtbvColumn1: TcxGridDBColumn
          Caption = #36130#21153#26376#20221
          DataBinding.FieldName = 'MonthNO'
          Width = 86
        end
        object cxgrdtbvColumn2: TcxGridDBColumn
          Caption = #24320#22987#26085#26399
          DataBinding.FieldName = 'BeginDate'
          Width = 117
        end
        object cxgrdtbvColumn3: TcxGridDBColumn
          Caption = #32467#26463#26085#26399
          DataBinding.FieldName = 'EndDate'
          Width = 128
        end
        object cxgrdtbvColumn4: TcxGridDBColumn
          Caption = #26159#21542#26376#32467
          DataBinding.FieldName = 'bSaleAccount'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 74
        end
      end
    end
    object pnl1: TPanel
      Left = 513
      Top = 0
      Width = 176
      Height = 397
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
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
          BeginGroup = True
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
    inherited btAdd: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btEdit: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btDel: TdxBarLargeButton
      Visible = ivInCustomizing
    end
    inherited btSave: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btCancel: TdxBarLargeButton
      Visible = ivInCustomizing
    end
    inherited btAddL: TdxBarLargeButton
      Visible = ivInCustomizing
    end
    inherited btDelL: TdxBarLargeButton
      Visible = ivInCustomizing
    end
    inherited btFind: TdxBarLargeButton
      Visible = ivInCustomizing
      OnClick = btFindClick
    end
    inherited btRefer: TdxBarLargeButton
      Caption = #26816' '#27979
      Hint = #26816#27979#26159#21542#31526#21512#26376#32467#26465#20214
    end
    inherited btPrint: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btCheck: TdxBarLargeButton
      Caption = #26376#32467
      Visible = ivAlways
      OnClick = btCheckClick
    end
    inherited btUnCheck: TdxBarLargeButton
      Caption = #21453#26376#32467
      Visible = ivAlways
      OnClick = btUnCheckClick
    end
    inherited btTemp: TdxBarLargeButton
      Caption = #26816' '#27979
      Hint = #26816#27979#26159#21542#31526#21512#26376#32467#26465#20214
      LargeGlyph.Data = {
        C6070000424DC607000000000000360000002800000016000000160000000100
        2000000000009007000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000060000
        000A00000010000000160000001C000000200000001D00000018000000130000
        000D000000080000000400000000000000000000000000000000000000000000
        0000000000000000000000000009000000120000001B000000240000002D0000
        00360000003F00000047000000460000003E000000350000002C000000230000
        001A000000110000000400000000000000000000000200000007000000020000
        0002000000030000000B000000130000001A00000020000000250101012C1C2B
        219E0101012D0000002F000000270000001E0000001700000010000000080000
        000000000000000000081C1B19702B2B28972B2B28952C2B28952C2B29952C2B
        29952C2B29952C2C29952C2C29952C2B29953A5342DA70C698FE415A48DC2C2C
        299D0D0D0C600000001300000000000000000000000000000000000000000505
        0523C4C5C3F6E9EBE9FFEBECEBFFECECECFFEDEDEDFFEEEFEEFFEFF0EFFFF0F0
        F0FFF1F1F1FF92A699FF5FBD8CFF32C47AFF6FC89AFF97AB9FFF8F8E8CDE0000
        0024000000000000000000000000000000000000000008070720CBCDCBF6EAEC
        EBFFEDEEEEFFEEEFEFFFF0F1F1FFF2F3F3FFF4F5F5FFF6F7F7FFB0BEB4FF63B2
        88FF29BE71FF34C57BFF42CC86FF7DC59FFF79867DE700000003000000000000
        000000000000000000000000000008080720CCCDCBF5EAECEBFFEDEEEEFFEDEE
        EEFFD9DCDBFFD9DDDCFFDADEDDFFB7BFB9FF62A27FFF23B86CFF26BD6FFF35C5
        7CFF41CC85FF54D593FF7CB796FC0B100C350000000000000000000000000000
        00000000000009090820CDCECDF5EAECEBFFEDEEEEFFEDEEEEFFD4D7D5FFD4D8
        D7FFC5CAC8FF639479FF26B46CFF18B564FF26BD6FFF34C57BFF41CC85FF4ED3
        8FFF67DCA0FF66967ADF05060518000000000000000000000000000000000909
        0920CECFCEF5E9EBEAFFECEEEDFFECEEEDFFD2D7D4FFCFD2CFFF658A75FF2CB2
        6EFF13AE5FFF17B464FF25BD6FFF33C47AFF40CC85FF4CD28EFF59D998FF76E2
        AAFF557B65CF020201080000000000000000000000000A0A0920CFD0CFF5DEE0
        DFFFECEEEDFFECEEEDFFD4D7D6FF6C8877FF35AE70FF10A95BFF13AE5FFF16B4
        63FF1CBA69FF2DC376FF3FCB84FF4BD28DFF57D896FF63DE9FFF83E3B2FF4362
        51B90000000100000000000000000A0B0A20CFD0CFF5E2E3E3FFEBEDECFFEBED
        ECFF8C978FFF618A73FF65987CFF62977AFF3EBC7CFF16B363FF19B967FF1DBE
        6CFF2BC677FF47D18BFF74DDA8FF6A9A7FE46C9981DE668B75E0141D165F0000
        0000000000000B0B0B20D0D0D0F5E7EAE9FFEAECEBFFEAECEBFFD5D9D7FFD6DA
        D9FFD7DBD9FF88988DFF42BB7DFF16B363FF19B967FF1DBE6CFF20C370FF30CB
        7CFF70D8A3FF17281C7200000000000000000000000000000000000000000C0C
        0B20D1D2D1F5E7E9E8FFE9EBEBFFE9EBEAFFD7DAD8FFD6DBD9FFD8DBDAFF8A9A
        90FF42BA7DFF16B363FF19B967FF1DBE6CFF20C370FF23C874FF61D49AFF1828
        1D7400000000000000000000000000000000000000000C0C0C20D1D2D1F5E6E8
        E7FFE8EAEAFFE9EBEAFFEAECECFFECEEEDFFEDEFEEFF96A69AFF43B97DFF16B3
        63FF19B967FF1DBE6CFF20C370FF23C874FF52D191FF18281D76000000000000
        00000000000000000000000000000D0D0C20D2D3D2F5D4D7D6FFE7E9E8FFE8EA
        E9FFD0D4D3FFD0D5D4FFD2D6D5FF899B8FFF43B97DFF16B363FF19B967FF1DBE
        6CFF20C370FF23C874FF51D290FF18281D760000000000000000000000000000
        0000000000000D0D0D20D2D3D2F5E3E6E5FFE6E8E7FFE6E9E8FFD0D5D3FFD1D4
        D2FFD1D5D3FF88998EFF58AB7FFF4AAB79FF4DAF7CFF4FB37FFF52B682FF55BA
        85FF61BC8CFE18271C7700000000000000000000000000000000000000000E0E
        0E20D2D3D3F5E2E5E3FFE4E7E6FFE5E7E6FFCDD1CFFFCED2D1FFCED3D1FFC8CB
        C9FFB2B5B3FFB3B5B3FFB3B6B3FFB3B6B3FFC1C3C2FFC9CAC9FF8B8B88DF0302
        020C00000000000000000000000000000000000000000E0E0E20D2D4D3F5E1E3
        E2FFE3E6E5FFE3E6E5FFD3D6D4FFD2D6D5FFD3D7D5FFD3D8D6FFD3D8D6FFD4D8
        D7FFD4D8D7FFD4D8D7FFE3E6E4FFEAECEBFF9F9F9DD700000000000000000000
        00000000000000000000000000000E0F0E20D3D5D4F5DFE2E1FFE2E4E3FFE2E5
        E3FFD1D5D3FFD1D6D4FFD2D6D4FFD2D6D5FFD2D7D5FFD3D7D5FFD3D7D5FFD3D7
        D5FFE1E4E2FFE9EAE9FF9F9F9DD7000000000000000000000000000000000000
        0000000000000E0F0F20D2D4D3F5DEE1DFFFE1E3E3FFE0E3E2FFE1E4E3FFE2E5
        E4FFE3E6E5FFE4E6E5FFE4E7E6FFE5E7E6FFE5E7E6FFE5E8E6FFE5E7E6FFE7E9
        E8FF9E9F9DD70000000000000000000000000000000000000000000000000808
        0811B3B5B4E6CED0CFF3D1D3D2F3D0D2D1F3CED1CFF3CECFCEF3CDCFCEF3CDCE
        CDF3CBCDCCF3CACBCAF3C9CAC9F3C7C9C7F3C6C7C6F3C6C7C5F3777775BF0000
        00000000000000000000000000000000000000000000000000000606060D0C0C
        0C180C0C0C180C0C0C180B0C0B180B0B0B180B0B0B180A0A0A180A0A0A180909
        0918090908180808081808080718070707180101010400000000000000000000
        00000000000000000000}
    end
    inherited btRef: TdxBarLargeButton
      Visible = ivInCustomizing
    end
    inherited btInvoice: TdxBarLargeButton
      Visible = ivInCustomizing
    end
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'select * from vwSaleAccount')
    Left = 104
    Top = 144
    object qyHedMonthNO: TStringField
      FieldName = 'MonthNO'
      Size = 6
    end
    object dtmfldHedBeginDate: TDateTimeField
      FieldName = 'BeginDate'
    end
    object dtmfldHedEndDate: TDateTimeField
      FieldName = 'EndDate'
    end
    object qyHedbSaleAccount: TBooleanField
      FieldName = 'bSaleAccount'
      ReadOnly = True
    end
  end
end
