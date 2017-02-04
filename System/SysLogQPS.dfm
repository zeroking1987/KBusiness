inherited SysLogQFM: TSysLogQFM
  Caption = #26085#24535#26597#35810
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    TabOrder = 2
    inherited cxLabTitle: TcxLabel
      Caption = #26085#24535#26597#35810
      Style.IsFontAssigned = True
      ExplicitTop = 0
      AnchorX = 97
      AnchorY = 15
    end
  end
  inherited pnlFind: TPanel
    Height = 64
    TabOrder = 4
    ExplicitHeight = 64
    object Lablbl2: TLabel
      Left = 203
      Top = 40
      Width = 48
      Height = 13
      Caption = #21333#25454#21495#65306
    end
    object Label1: TLabel
      Left = 45
      Top = 11
      Width = 36
      Height = 13
      Caption = #26085#26399#65306
    end
    object Label2: TLabel
      Left = 217
      Top = 8
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
      Left = 21
      Top = 40
      Width = 60
      Height = 13
      Caption = #21333#25454#21517#31216#65306
    end
    object Label4: TLabel
      Left = 377
      Top = 11
      Width = 72
      Height = 13
      Caption = #25805#20316#20154#22995#21517#65306
    end
    object Label7: TLabel
      Left = 390
      Top = 40
      Width = 60
      Height = 13
      Caption = #25805#20316#21160#20316#65306
    end
    object cxEdtBillNo: TcxTextEdit
      Left = 248
      Top = 37
      TabOrder = 0
      Width = 121
    end
    object cxdtS: TcxDateEdit
      Left = 79
      Top = 8
      TabOrder = 1
      Width = 121
    end
    object cxdtE: TcxDateEdit
      Left = 248
      Top = 6
      TabOrder = 2
      Width = 121
    end
    object cxEdtBillName: TcxTextEdit
      Left = 81
      Top = 37
      TabOrder = 3
      Width = 119
    end
    object cxEdtActionName: TcxTextEdit
      Left = 451
      Top = 6
      TabOrder = 4
      Width = 121
    end
    object cbbActionKind: TcxComboBox
      Left = 451
      Top = 37
      Properties.Items.Strings = (
        ''
        #28155#21152
        #20462#25913
        #21024#38500
        #23457#26680
        #21453#23457#26680)
      TabOrder = 5
      Width = 121
    end
  end
  inherited cxpgcntrl1: TcxPageControl
    Top = 140
    Height = 400
    ExplicitTop = 140
    ExplicitHeight = 400
    ClientRectBottom = 394
    inherited cxtbsht1: TcxTabSheet
      ExplicitHeight = 367
      inherited cxgrd: TcxGrid
        Height = 367
        ExplicitHeight = 367
        inherited cxgrdtbv: TcxGridDBTableView
          object cxgrdbclmnBillName: TcxGridDBColumn
            Caption = #21333#25454#21517#31216
            DataBinding.FieldName = 'BillName'
            Width = 98
          end
          object cxgrdbclmnBillNo: TcxGridDBColumn
            Caption = #21333#25454#21495
            DataBinding.FieldName = 'BillNo'
            Width = 114
          end
          object cxgrdbclmnActionEmpId: TcxGridDBColumn
            Caption = #25805#20316#20154#32534#21495
            DataBinding.FieldName = 'ActionEmpId'
            Width = 86
          end
          object cxgrdbclmnActionEmpName: TcxGridDBColumn
            Caption = #25805#20316#20154#22995#21517
            DataBinding.FieldName = 'ActionEmpName'
            Width = 103
          end
          object cxgrdbclmnActionKind: TcxGridDBColumn
            Caption = #25805#20316#21160#20316
            DataBinding.FieldName = 'ActionKind'
            Width = 81
          end
          object cxgrdbclmnActionDate: TcxGridDBColumn
            Caption = #25805#20316#26085#26399
            DataBinding.FieldName = 'ActionDate'
            Width = 136
          end
          object cxgrdbclmnIPAddress: TcxGridDBColumn
            Caption = 'IP'#22320#22336
            DataBinding.FieldName = 'IPAddress'
            Width = 120
          end
          object cxgrdbclmnComputerName: TcxGridDBColumn
            Caption = #35745#31639#26426#21517#31216
            DataBinding.FieldName = 'ComputerName'
            Width = 120
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
    inherited btTemp: TdxBarLargeButton
      Visible = ivNever
    end
  end
  inherited qyHed: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'select * from SysLogTB')
    object intgrfldHedAutoId: TIntegerField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qyHedBillName: TStringField
      FieldName = 'BillName'
      Size = 30
    end
    object qyHedBillNo: TStringField
      FieldName = 'BillNo'
      Size = 30
    end
    object qyHedActionEmpId: TStringField
      FieldName = 'ActionEmpId'
      Size = 30
    end
    object qyHedActionEmpName: TStringField
      FieldName = 'ActionEmpName'
      Size = 30
    end
    object qyHedActionKind: TStringField
      FieldName = 'ActionKind'
      Size = 30
    end
    object dtmfldHedActionDate: TDateTimeField
      FieldName = 'ActionDate'
    end
    object qyHedIPAddress: TStringField
      FieldName = 'IPAddress'
      Size = 30
    end
    object qyHedComputerName: TStringField
      FieldName = 'ComputerName'
      Size = 30
    end
    object qyHedRemark: TStringField
      FieldName = 'Remark'
      Size = 100
    end
  end
  inherited frxHed: TfrxDBDataset
    UserName = #26085#24535#26597#35810
    FieldAliases.Strings = (
      'AutoId=AutoId'
      'BillName=BillName'
      'BillNo=BillNo'
      'ActionEmpId=ActionEmpId'
      'ActionEmpName=ActionEmpName'
      'ActionKind=ActionKind'
      'ActionDate=ActionDate'
      'IPAddress=IPAddress'
      'ComputerName=ComputerName'
      'Remark='#22791#27880)
  end
end
