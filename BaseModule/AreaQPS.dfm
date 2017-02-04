object AreaQFM: TAreaQFM
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #22320#21306#36164#26009#26597#35810
  ClientHeight = 407
  ClientWidth = 349
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
    Width = 349
    Height = 368
    Align = alClient
    Bands = <
      item
      end>
    DataController.DataSource = dsFind
    DataController.ParentField = 'ParentId'
    DataController.KeyField = 'AreaId'
    Navigator.Buttons.CustomButtons = <>
    OptionsBehavior.GoToNextCellOnEnter = True
    OptionsData.Editing = False
    RootValue = -1
    TabOrder = 0
    OnDblClick = lstTreeListDblClick
    object AreaId: TcxDBTreeListColumn
      Visible = False
      DataBinding.FieldName = 'AreaId'
      Position.ColIndex = 0
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object AreaCode: TcxDBTreeListColumn
      Caption.Text = #22320#21306#20195#21495
      DataBinding.FieldName = 'AreaCode'
      Width = 128
      Position.ColIndex = 1
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
    object AreaName: TcxDBTreeListColumn
      Caption.Text = #22320#21306#21517#31216
      DataBinding.FieldName = 'AreaName'
      Width = 175
      Position.ColIndex = 2
      Position.RowIndex = 0
      Position.BandIndex = 0
      Summary.FooterSummaryItems = <>
      Summary.GroupFooterSummaryItems = <>
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 368
    Width = 349
    Height = 39
    Align = alBottom
    TabOrder = 1
    object btnOK: TcxButton
      Left = 131
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
      TabOrder = 0
      OnClick = btnOKClick
    end
    object btnCancel: TcxButton
      Left = 231
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
      TabOrder = 1
      OnClick = btnCancelClick
    end
  end
  object dsFind: TDataSource
    DataSet = qyFind
    Left = 104
    Top = 184
  end
  object qyFind: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from AreaTB')
    Left = 144
    Top = 184
  end
end