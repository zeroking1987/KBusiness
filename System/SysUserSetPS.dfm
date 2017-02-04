inherited SysUserSetFM: TSysUserSetFM
  Caption = #29992#25143#31649#29702
  ClientHeight = 515
  ClientWidth = 1038
  ExplicitWidth = 1038
  ExplicitHeight = 515
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitle: TPanel
    Width = 1038
    ExplicitWidth = 1038
    inherited cxLabTitle: TcxLabel
      Caption = #29992#25143#31649#29702
      Style.IsFontAssigned = True
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlcxGrd: TPanel
    Width = 512
    Height = 439
    Align = alLeft
    ExplicitWidth = 512
    ExplicitHeight = 439
    inherited cxgrd: TcxGrid
      Top = 75
      Width = 512
      Height = 364
      ExplicitTop = 75
      ExplicitWidth = 512
      ExplicitHeight = 364
      inherited cxgrdtbv: TcxGridDBTableView
        OptionsView.NoDataToDisplayInfoText = #24658#21019#36719#20214
        object cxgrdtbvUserID: TcxGridDBColumn
          Caption = #29992#25143#24080#21495
          DataBinding.FieldName = 'UserID'
          Width = 100
        end
        object cxgrdtbvUserName: TcxGridDBColumn
          Caption = #29992#25143#22995#21517
          DataBinding.FieldName = 'UserName'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.OnValidate = cxgrdtbvUserNamePropertiesValidate
          Width = 118
        end
        object cxgrdtbvEmpId: TcxGridDBColumn
          Caption = #21592#24037#24037#21495
          DataBinding.FieldName = 'EmpId'
          Width = 159
        end
      end
    end
    object pnl1: TPanel
      Left = 0
      Top = 0
      Width = 512
      Height = 75
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 1
      object Lablbl1: TLabel
        Left = 8
        Top = 45
        Width = 48
        Height = 13
        Caption = #29992#25143#36134#21495
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Lablbl2: TLabel
        Left = 232
        Top = 9
        Width = 48
        Height = 13
        Caption = #29992#25143#22995#21517
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Lablbl3: TLabel
        Left = 8
        Top = 9
        Width = 48
        Height = 13
        Caption = #21592#24037#24037#21495
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Lablbl5: TLabel
        Left = 250
        Top = 45
        Width = 30
        Height = 13
        Caption = #23494'  '#30721
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cxdbEdt1: TcxDBTextEdit
        Left = 74
        Top = 42
        DataBinding.DataField = 'UserID'
        DataBinding.DataSource = dsHed
        Properties.ReadOnly = True
        TabOrder = 2
        Width = 151
      end
      object cxdbEdtName: TcxDBTextEdit
        Tag = 1
        Left = 298
        Top = 6
        DataBinding.DataField = 'UserName'
        DataBinding.DataSource = dsHed
        Properties.ReadOnly = True
        Style.Color = 14145495
        TabOrder = 1
        Width = 151
      end
      object cxdbEdt5: TcxDBTextEdit
        Left = 298
        Top = 42
        DataBinding.DataField = 'UserPass'
        DataBinding.DataSource = dsHed
        Properties.EchoMode = eemPassword
        Properties.PasswordChar = '*'
        Properties.ReadOnly = True
        TabOrder = 3
        Width = 151
      end
      object btnEmpCode: TcxDBButtonEdit
        Left = 74
        Top = 6
        DataBinding.DataField = 'EmpCode'
        DataBinding.DataSource = dsHed
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        Properties.OnButtonClick = cxEmpCodePropertiesButtonClick
        TabOrder = 0
        Width = 151
      end
    end
  end
  object pnl2: TPanel [2]
    Left = 512
    Top = 76
    Width = 526
    Height = 439
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 6
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
          ItemName = 'btTemp'
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
    inherited btDel: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btAddL: TdxBarLargeButton
      OnClick = btAddLClick
    end
    inherited btDelL: TdxBarLargeButton
      OnClick = btDelLClick
    end
    inherited btFind: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btExport: TdxBarLargeButton
      Visible = ivAlways
    end
    inherited btPrint: TdxBarLargeButton
      Visible = ivNever
    end
    inherited btTemp: TdxBarLargeButton
      Caption = #21516#27493'AM'
      Hint = #23558#31649#29702#36719#20214#20013#30340#36134#21495#25968#25454#21516#27493#21040'AM'#21363#26102#36890#35759#24179#21488
      Visible = ivAlways
      LargeGlyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000101
        01023030304E737374B9959797E798999AED969797ED959697ED959697ED9596
        97ED959697ED959697ED979899ED9B9C9DED9FA1A2EDA5A5A6EDA9AAABEDAEAF
        B0EDB2B4B4EDB2B3B3E5939393B93939394E0101010200000000010101026666
        6689C0C2C3FDCCCFD0FFCDD0D2FFCBCFD1FFCBCED0FFCBCED0FFCBCED0FFCBCF
        D0FFCBCED0FFCBCED0FFCBCED0FFCBCED0FFCBCED0FFCBCED0FFCBCED0FFCBCE
        D0FFCCCFD1FFCDD0D2FFCDD0D2FFD5D7D8FD6F6F6F89010101023A3A3A4EC2C4
        C5FDCED1D3FFCED1D3FFCED1D3FFCDD1D3FFCDD0D2FFCDD0D2FFCBD0CFFFB6C3
        BAFFCDD0D2FFCDD0D2FFCDD0D2FFCDD0D2FFCDD0D2FFCDD0D2FFCDD0D2FFCDD0
        D2FFCDD1D3FFCED1D3FFCED1D3FFCED1D3FFD9DBDCFD3E3E3E4E89898AB9CFD1
        D3FFD0D3D4FFD0D3D4FFD0D3D4FFCFD2D4FFCFD2D4FFD0D3D5FF7A9A7EFF316A
        36FFCDD2D1FFCFD2D4FFCFD2D4FFCFD2D4FFCFD2D4FFCFD2D4FFCFD2D4FFCFD2
        D4FFD0D3D4FFD0D3D4FFD0D3D4FFD0D3D4FFD1D4D5FFA2A3A3B9AEAEAFE7D1D4
        D6FFD1D4D6FFD1D4D6FFD1D4D6FFD1D4D6FFD1D4D6FFC3CDC8FF23682FFF1A67
        28FF81A188FFD2D5D7FFD1D4D6FFD1D4D6FFD1D4D6FFD1D4D6FFD1D4D6FFD1D4
        D6FFD1D4D6FFD1D4D6FFD1D4D6FFD1D4D6FFD1D4D6FFCBCCCDE7B3B3B4EDD3D6
        D8FFD3D6D8FFD3D6D8FFD3D6D8FFD3D6D8FFD5D8DAFF649370FF1C6F30FF1C70
        30FF246F36FFC9D2CEFFD3D6D8FFD3D6D8FFD3D6D8FFD3D6D8FFD3D6D8FFD3D6
        D8FFD3D6D8FFD3D6D8FFD3D6D8FFD3D6D8FFD3D6D8FFD4D5D5EDB4B4B5EDD6D9
        DAFFD6D9DAFFD6D9DAFFD6D9DAFFD6D8DAFFB7C8BEFF1D7236FF1D7738FF1D77
        38FF1D7738FF699A79FFD7DADBFFD6D9DAFFD6D9DAFFD6D9DAFFD6D9DAFFD6D9
        DAFFD6D9DAFFD6D9DAFFD6D9DAFFD6D9DAFFD6D9DAFFD5D6D6EDB5B5B5EDD8DB
        DCFFD8DBDCFFD8DBDCFFD8DBDCFFDBDDDEFF4D8E64FF1E7E3FFF1E7E3FFF1E7E
        3FFF1E7E3FFF1E793DFFBDCDC5FFD8DBDCFFD8DBDCFFD8DBDCFFD8DBDCFFD8DB
        DCFFD8DBDCFFD8DBDCFFD8DBDCFFD8DBDCFFD8DBDCFFD3D4D6EDB5B6B6EDDADD
        DEFFDADDDEFFDADDDEFFDADDDEFFA4BFB0FF1E8044FF208547FF208547FF2085
        47FF208547FF208547FF53956DFFDBDEDFFFDADDDEFFDADDDEFFDADDDEFFDADD
        DEFFDADDDEFFDADDDEFFDADDDEFFDADDDEFFDADDDEFFCCCCCFEDB6B7B7EDDCDF
        E0FFDCDFE0FFDCDFE0FFDDDFE1FF649379FF397C56FF2B7F4FFF218C4FFF218C
        4FFF21864CFF397C56FF397955FFC4D0CCFFD3C7C1FFC8AE9FFFC8AF9FFFCBB5
        A9FFDCDFE0FFDCDFE0FFDCDFE0FFDCDFE0FFDCDFE0FFC8C9CCEDB7B7B8EDDEE1
        E2FFDEE1E2FFDEE1E2FFDEE1E2FFDEE1E2FFDEE0E1FF75AD90FF229457FF2293
        57FF298D58FFDCDFDFFFDEE0E2FFDEE1E2FFAE8163FF9C4100FF9B4100FF9546
        0FFFDFE1E3FFDEE1E2FFDEE1E2FFDEE1E2FFDEE1E2FFC6C7CAEDB8B8B8EDE0E3
        E4FFE0E3E4FFE0E3E4FFE0E3E4FFE0E3E4FFE1E3E4FF77B194FF249B5FFF239B
        5FFF2A945FFFDEE1E2FFE0E3E4FFE1E3E4FFB18564FFA24700FFA14700FF9A4B
        0FFFE1E4E5FFE0E2E3FFE0E3E4FFE0E3E4FFE0E3E4FFC4C5C8EDB9B9B9EDE3E5
        E6FFE3E5E6FFE3E5E6FFE4E5E6FFE4E6E7FFE5E6E7FF83BBA2FF39AB75FF3AAB
        76FF41A576FFE3E6E6FFE6E7E8FFE6E7E8FFBC9375FFAE5C18FFAD5A15FFA45A
        20FFE5E7E8FFE2E4E5FFE3E5E6FFE3E5E6FFE3E5E6FFC2C2C5EDBABABAEDE6E8
        E8FFE7E9E9FFE8E9EAFFE8EAEAFFE8EAEAFFE8EAEAFF8DC3ABFF47B584FF46B5
        83FF4BAE82FFE6E8E9FFE8EAEBFFE8EAEBFFC19C7CFFB66A26FFB66B27FFAF6D
        34FFE9EBECFFE8EAEAFFE8E9EAFFE7E9E9FFE6E7E8FFBFC0C1EDC2C2C2EDEBED
        EDFFEBEDEEFFEBEDEEFFEBEDEEFFEBEDEEFFEBEDEEFFA1C4B6FF63A88BFF63A8
        8BFF6BA88EFFE9ECECFFE0D3C9FFDDCCBDFFC1966FFFBE7733FFBE7733FFB677
        3CFFDDCCBEFFDDCCBEFFE9E8E7FFEBEDEEFFEBECEDFFBDBEBFEDD0D0D0EDEEEF
        F0FFEEEFF0FFEEEFF0FFEEEFF0FFEEEFF0FFEEEFF0FFEFF0F0FFEFF0F0FFEFF0
        F0FFEFEFF0FFEEEFF0FFBD9E82FFC2813FFFC38240FFC58340FFC58340FFC483
        40FFC38140FFB3804FFFE8E6E3FFEEEFF0FFEEEFEFFFBCBDBEEDDBDBDBEDF1F2
        F2FFF1F2F2FFF1F2F2FFF1F2F2FFF1F2F2FFF1F2F2FFF1F2F2FFF1F2F2FFF1F2
        F2FFEFF0F1FFF1F2F2FFE6E3DFFFBC8954FFCC8F4DFFCC8F4DFFCC8F4DFFCC8F
        4DFFC88D4DFFCEBCAAFFF1F2F2FFF1F2F2FFF0F1F2FFBABABBEDDDDDDDEDF3F4
        F4FFF3F4F4FFF3F4F4FFF3F4F4FFF3F4F4FFF3F4F4FFF3F4F4FFF3F4F4FFF3F4
        F4FFF3F4F4FFF3F4F4FFF3F4F4FFCFBBA6FFCF9759FFD29959FFD2995AFFD299
        5AFFC39B71FFF1F1F1FFF3F4F4FFF3F4F4FFF3F4F4FFB8B8B9EDDADADBEDF5F6
        F6FFF5F6F6FFF5F6F6FFF5F6F6FFF5F6F6FFF5F6F6FFF5F6F6FFF5F6F6FFF5F6
        F6FFF5F6F6FFF5F6F6FFF5F6F6FFF1F0EFFFCAA378FFD8A568FFD9A568FFD2A1
        68FFDFD5CBFFF5F6F6FFF5F6F6FFF5F6F6FFF5F6F6FFB6B6B7EDCFCFCFE7F7F8
        F8FFF7F8F8FFF7F8F8FFF7F8F8FFF7F8F8FFF7F8F8FFF7F8F8FFF7F8F8FFF7F8
        F8FFF7F8F8FFF7F8F8FFF7F8F8FFF7F8F8FFE0D4C6FFD9AD76FFDEAF75FFD1B6
        96FFF7F8F8FFF7F8F8FFF7F8F8FFF7F8F8FFF7F7F7FFAFB0B0E79E9E9EB9F6F6
        F6FFF8F9F9FFF8F9F9FFF8F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF8F9
        F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF8F8F7FFD7BC9BFFDAB484FFEDE8
        E1FFF9F9F9FFF9F9F9FFF8F9F9FFF8F9F9FFF7F7F7FF818181B94545454EDCDC
        DCFDFAFAFAFFFAFAFAFFFAFAFAFFFAFBFBFFFAFBFBFFFAFBFBFFFAFBFBFFFAFB
        FBFFFAFBFBFFFAFBFBFFFAFBFBFFFAFBFBFFFAFBFBFFEDE7DEFFDECFBCFFFAFB
        FBFFFAFBFBFFFAFBFBFFFAFAFAFFFAFAFAFFDADADAFD3232324E020202027070
        7089D8D8D8FDF8F8F8FFFBFBFBFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFBFCFCFFFBFBFCFFFBFC
        FCFFFBFCFCFFFBFBFCFFF8F8F8FFD3D3D3FD6363638901010102000000000202
        02024141414E909090B9BEBDBDE7C7C6C6EDCBCBCBEDCFCFCFEDD4D4D4EDD8D8
        D8EDD9D9D9EDD9D9D9EDD6D6D6EDCACACAEDBFBFBFEDB6B6B6EDADADADEDA6A6
        A6EDA4A4A4ED9E9E9EE7737373B93131314E0101010200000000}
      OnClick = btTempClick
    end
  end
  inherited dsHed: TDataSource
    Top = 232
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    OnCalcFields = qyHedCalcFields
    SQL.Strings = (
      'select * from SysUserTB')
    Top = 280
    object qyHedAutoId: TAutoIncField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object strngfldHedUserID: TStringField
      FieldName = 'UserID'
    end
    object strngfldHedUserName: TStringField
      FieldName = 'UserName'
    end
    object strngfldHedUserPass: TStringField
      FieldName = 'UserPass'
    end
    object strngfldHedEmpId: TStringField
      FieldName = 'EmpId'
    end
    object qyHedMakeDate: TDateTimeField
      FieldName = 'MakeDate'
    end
    object qyHedLoginFlag: TBooleanField
      FieldName = 'LoginFlag'
    end
    object strngfldHedRemark: TStringField
      FieldName = 'Remark'
      Size = 50
    end
    object qyHedEmpCode: TStringField
      FieldKind = fkCalculated
      FieldName = 'EmpCode'
      Calculated = True
    end
  end
end
