object MainBaseFM: TMainBaseFM
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = #25105#30340#26700#38754
  ClientHeight = 525
  ClientWidth = 1060
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object cxSchedulerStorage1: TcxSchedulerStorage
    CustomFields = <>
    Resources.Items = <>
    Left = 504
    Top = 208
  end
  object qyInform: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select * from SysInformTB  Order by bTop Desc,SendDate Desc')
    Left = 136
    Top = 268
    object qyInformAutoId: TIntegerField
      FieldName = 'AutoId'
      ReadOnly = True
    end
    object qyInformInformTitle: TStringField
      FieldName = 'InformTitle'
      Size = 200
    end
    object qyInformInformContent: TStringField
      FieldName = 'InformContent'
      Size = 1000
    end
    object qyInformSendName: TStringField
      FieldName = 'SendName'
    end
    object qyInformSendDate: TDateTimeField
      FieldName = 'SendDate'
    end
    object blnfldInformbTop: TBooleanField
      FieldName = 'bTop'
    end
  end
  object dsInform: TDataSource
    DataSet = qyInform
    Left = 136
    Top = 232
  end
  object qyNotice: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    Filtered = True
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'Exec prGetMyNotice '#39'admin'#39','#39#38144#21806#20986#24211#39044#35686#39' ')
    Left = 96
    Top = 268
  end
  object dsNotice: TDataSource
    DataSet = qyNotice
    Left = 96
    Top = 232
  end
  object qyNoticeKind: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    Filtered = True
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'Exec prGetMyNoticeKind '#39'admin'#39)
    Left = 56
    Top = 268
    object qyNoticeKindNoticeKind: TStringField
      FieldName = 'NoticeKind'
      Size = 100
    end
  end
  object dsNoticeKind: TDataSource
    DataSet = qyNoticeKind
    Left = 56
    Top = 232
  end
end
