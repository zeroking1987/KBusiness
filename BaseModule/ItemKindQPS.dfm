object ItemKindQFM: TItemKindQFM
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #20135#21697#31867#21035#26597#35810
  ClientHeight = 401
  ClientWidth = 338
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lstTreeList: TcxDBTreeList
    Left = 0
    Top = 0
    Width = 338
    Height = 360
    Align = alClient
    Bands = <
      item
      end>
    DataController.DataSource = dsFind
    DataController.ParentField = 'ParentId'
    DataController.KeyField = 'ItemKindId'
    Navigator.Buttons.CustomButtons = <>
    OptionsBehavior.GoToNextCellOnEnter = True
    OptionsView.GridLines = tlglBoth
    RootValue = -1
    TabOrder = 0
    OnDblClick = lstTreeListDblClick
    OnEditValueChanged = lstTreeListEditValueChanged
    object cxDBTreeList1bSelect: TcxDBTreeListColumn
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.OnChange = cxDBTreeList1bSelectPropertiesChange
      Visible = False
      Caption.Text = #36873#25321
      DataBinding.FieldName = 'bSelect'
      Width = 41
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1ItemKindId: TcxDBTreeListColumn
      Visible = False
      Caption.Text = #31867#21035#32534#21495
      DataBinding.FieldName = 'ItemKindId'
      Options.Editing = False
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1ItemKindCode: TcxDBTreeListColumn
      Caption.Text = #31867#21035#20195#21495
      DataBinding.FieldName = 'ItemKindCode'
      Options.Editing = False
      Width = 156
      Position.ColIndex = 2
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object cxDBTreeList1ItemKindName: TcxDBTreeListColumn
      Caption.Text = #31867#21035#21517#31216
      DataBinding.FieldName = 'ItemKindName'
      Options.Editing = False
      Width = 155
      Position.ColIndex = 3
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 360
    Width = 338
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnCancel: TcxButton
      Left = 119
      Top = 6
      Width = 75
      Height = 25
      Caption = #21462' '#28040
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000003060505182C00000000000000000000000000000000000000000000
        0000000000000000000008081C2E000000040000000000000000000000000000
        03060F0F79AB0E0EB2F709093154000000020000000000000000000000000000
        00000000000015154E643C3CEBFD222278970000000600000000000002040F0F
        77AB0606B6FF0707B8FF0F0FB5F70A0A33560000000000000000000000000000
        000013134C643333E3FD3939EFFF4141F6FF22227897000000040C0C25321F1F
        BAFD0505B5FF0707B8FF0A0ABBFF1212B8F70A0A325400000000000000001111
        4B642A2AD9FD2E2EE3FF3434EAFF3838EEFF3A3AE3F704041220000000001B1B
        495E1F1FBBFD0707B8FF0A0ABBFF0D0DBEFF1515BBF70A0A34560F0F48642222
        D0FD2424D8FF2929DEFF2E2EE3FF3131DBF70F0F384A00000000000000000000
        00001B1B495E2020BDFD0909BAFF0C0CBDFF0F0FC1FF1717BEF91B1BC7FD1C1C
        CFFF2020D4FF2424D8FF2A2AD2F70E0E374A0000000000000000000000000000
        0000000000001B1B495E2121BEFD0A0ABBFF0D0DBFFF1111C3FF1414C7FF1818
        CBFF1C1CCFFF2222C9F70D0D364A000000000000000000000000000000000000
        000000000000000000001B1B495E1E1EBEFD0B0BBDFF0E0EC0FF1111C3FF1414
        C7FF1B1BC2F70B0B344A00000000000000000000000000000000000000000000
        000000000000000000000F0F45640B0BB7FD0909BAFF0B0BBDFF0E0EC0FF1010
        C2FF1717BDF70A0A335400000000000000000000000000000000000000000000
        000000000000151547643636C1FD2A2AC2FF1A1ABEFF0F0FBCFF0B0BBCFF0D0D
        BFFF0F0FC1FF1414BAF70A0A3254000000000000000000000000000000000000
        0000161647643A3AC2FD3636C4FF3434C4FF3232C4FF3131BEF73C3CC6FD2626
        C4FF2323C4FF2222C4FF2626BEF70E0E33540000000000000000000000001717
        48643F3FC3FD3B3BC4FF3939C4FF3636C4FF3434BDF70F0F334A1F1F4A5E4040
        C7FD2F2FC5FF2E2EC6FF2E2EC6FF2E2EBEF70E0E3354000000000E0E27344B4B
        C7FD4141C6FF3F3FC5FF3B3BC4FF3838BDF70F0F334A00000000000000001F1F
        4A5E4141C6FD3030C4FF3030C5FF3030C5FF3232BEF704041122000003044040
        88A74B4BC9FF4141C6FF3E3EBEF70F0F344A0000000000000000000000000000
        00001F1F4A5E4242C6FD3232C4FF3333C4FF1D1D688F00000002000000000000
        0304404088A74A4AC2F71010344A000000000000000000000000000000000000
        00000000000020204A5E4646C6FD1E1E688F0000000200000000000000000000
        00000000030409091A2400000000000000000000000000000000000000000000
        0000000000000000000008081C26000000020000000000000000}
      TabOrder = 0
      OnClick = btnCancelClick
    end
    object btnOK: TcxButton
      Left = 19
      Top = 6
      Width = 75
      Height = 25
      Caption = #30830' '#23450
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000040000
        00140000001E00000022000000260000002802060332091A0C500000002A0000
        002A0000002800000026000000220000001E0000001400000004000000020000
        00080000000E0000001000000014040E072E267637DF2D8B40FF11351A720000
        00160000001400000014000000100000000E0000000800000002000000000000
        00000000000000000000040F0818267F43D72D974EFF2D974EFF2A8C49ED040C
        0714000000000000000000000000000000000000000000000000000000000000
        00000000000004100918268A4ED72DA35CFF2DA35CFF2DA35CFF2DA35CFF1D68
        3BA1000000000000000000000000000000000000000000000000000000000000
        000004110A18259359D72CAD68FF2CAD68FF2CAD68FF2CAD68FF2CAD68FF2CAD
        68FF0C2F1D44000000000000000000000000000000000000000000000000030E
        0914239960D72AB471FF2AB471FF2AB471FF3CB278F333B676FD2AB471FF2AB4
        71FF249D63DD0207050A0000000000000000000000000000000000000000143E
        2B522FBD7EFF28BB7AFF28BB7AFF38AF79E70B1E1528266D4D8F29BB7BFF28BB
        7AFF28BB7AFF186C479300000000000000000000000000000000000000000000
        00002873529334C388FF38B27FE70B1F1628000000000208050A31AA78DD25C0
        81FF25C081FF25C081FF0C3B284E000000000000000000000000000000000000
        0000000000001747345A071C1424000000000000000000000000102E223A2BC1
        89FB21C287FF21C287FF1FB780F10620172A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002066
        4C8121C58DFF1CC48CFF1CC48CFF1AAF7DE30419122000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000002
        010229936FB91AC791FF18C791FF1CC792FF1774569300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000020B080E2DA680CF32CD9CFF298567A5020E0B1200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000108060A04251C2E000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 1
      OnClick = btnOKClick
    end
    object btnClose: TcxButton
      Left = 247
      Top = 6
      Width = 75
      Height = 25
      Caption = #20851' '#38381
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000040404060D0D
        0D14151515201B1B1B2A20202032212121342929294029292940292929402929
        294021212134202020321B1B1B2A151515200D0D0D14040404061E1E1E2E4C4C
        4C765F5F5F936A6A6AA5717171AF787878BB7A7A7ABD7A7A7ABD7A7E83CB7C83
        8CD978797BBF717171AF6A6A6AA55F5F5F934C4C4C761E1E1E2E000000000000
        0000000000000000000000000000000E357C2E427DF35A668DF33C6AA4FB346C
        AAFF336AA8FD2C5E99EF255391EF1F498AEF0D2A65C900010308000000000000
        0000000000000000000000000000001653BFAAB0BEFFBFBFBFFF5E88B8FF366E
        ACFF356CAAFF336BA9FF3269A7FF3269A7FF2A5D9EFF00041024000000000000
        0000000000000000000000000000011957BFAFB4C1FFBFBFBFFF5F8AB9FF3770
        AEFF366EACFF356DABFF336BA9FF3269A7FF2B60A0FF00051024000000000000
        00000000000000000000574419870C245DCDAFB5C2FFBFBFBFFF608BBBFF3971
        AFFF3870AEFF366EACFF356DABFF346BA9FF2C61A2FF000511240F0C0516896B
        2BC7896B2BC7896B2BC7AA8536F99A7D3FFFB8B2A4FFBFBFBFFF618CBCFF3A73
        B1FF3972B0FF3870AEFF366FADFF356DABFF2E63A4FF0106122417120820B992
        41FFB99241FFB99241FFB99241FFB99241FFB99242FFBDA87EFF628DBDFF3C75
        B3FF3B73B1FF3972B0FF3870AEFF376FADFF2F65A6FF0107132419140A20C69C
        4CFFC69C4CFFC69C4CFFC69C4CFFC69C4CFFCCA75EFFC5B89BFF638EBEFF1D4A
        93FF346AABFF3B74B2FF3972B0FF3870AEFF3168A9FF010713240C0A060E7B67
        3F8F7B673F8F7B673F8FCAA258F3AF9B72FFBEBDBBFFBFBFBFFF6490C0FF3A74
        B4FF3D77B5FF3C75B3FF3B74B2FF3A72B0FF326AABFF01081424000000000000
        000000000000000000005F50326A0B3172C5B0B8C6FFBFBFBFFF6591C1FF407A
        B8FF3F79B7FF3E77B5FF3C76B4FF3B74B2FF346CADFF01091524000000000000
        0000000000000000000000000000073174BFB0B9C7FFBFBFBFFF6692C2FF427C
        BAFF407BB9FF3F79B7FF3E77B5FF3C76B4FF356EAFFF01091624000000000000
        0000000000000000000000000000083578BFB0BAC8FFBFBFBFFF6793C3FF437E
        BCFF427CBAFF417BB9FF3F79B7FF3E78B6FF3670B2FF020A1724000000000000
        00000000000000000000000000000A397CBF9FADC2FFBFBFBFFF6895C5FF4580
        BEFF437EBCFF427DBBFF417BB9FF3F79B7FF3771B4FF020B1724000000000000
        0000000000000000000000000000143C72A32E65B1FF4974B0FF6090C8FF568C
        C6FF568CC5FF5D90C8FF578AC5FF4E82C2FF3068B1F501060D14000000000000
        0000000000000000000000000000000204060310223203112334071425340916
        2634031123340312263803122638031226380209131C00000000}
      TabOrder = 2
      OnClick = btnCloseClick
    end
  end
  object dsFind: TDataSource
    DataSet = qyFind
    Left = 88
    Top = 176
  end
  object qyFind: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from ItemKindTB')
    Left = 136
    Top = 176
    object qyFindAutoId: TIntegerField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object strngfldFindParentId: TStringField
      FieldName = 'ParentId'
    end
    object strngfldFindRemark: TStringField
      FieldName = 'Remark'
      Size = 300
    end
    object qyFindbSelect: TBooleanField
      FieldName = 'bSelect'
    end
    object qyFindItemKindId: TStringField
      FieldName = 'ItemKindId'
    end
    object qyFindItemKindCode: TStringField
      FieldName = 'ItemKindCode'
    end
    object qyFindItemKindName: TStringField
      FieldName = 'ItemKindName'
      Size = 30
    end
    object qyFindParam: TStringField
      FieldName = 'Param'
      Size = 30
    end
    object qyFindKindWare: TStringField
      FieldName = 'KindWare'
    end
  end
end
