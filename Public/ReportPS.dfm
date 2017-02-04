object ReportFM: TReportFM
  Left = 0
  Top = 0
  Caption = 'ReportFM'
  ClientHeight = 288
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object frxReport1: TfrxReport
    Version = '4.15.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40350.904008148200000000
    ReportOptions.LastChange = 40350.904008148200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    OnPrintReport = frxReport1PrintReport
    OnUserFunction = frxReport1UserFunction
    Left = 40
    Top = 8
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  object frxSysParam: TfrxDBDataset
    UserName = #31995#32479#23646#24615
    CloseDataSource = False
    FieldAliases.Strings = (
      '-AutoId=AutoId'
      'CoName='#20844#21496#21517#31216
      'CoAddress='#20844#21496#22320#22336
      'CoTel='#20844#21496#30005#35805
      'CoFax='#20844#21496#20256#30495
      'CoNetAddress='#20844#21496#32593#22336
      'CoEMail='#20844#21496'EMail'
      'CoQQ='#20844#21496'QQ'
      'CoBankAccountNo='#20844#21496#36134#21495
      'CoTaxNo='#20844#21496#31246#21495
      'CoLogoPath='#20844#21496'Logo'#36335#24452
      'CoLogoName='#20844#21496'Logo'#21517#31216
      '-StartDate=StartDate'
      '-iNumPoint=iNumPoint'
      '-iPricePoint=iPricePoint'
      '-iMoneyPoint=iMoneyPoint'
      '-iQPageSize=iQPageSize'
      '-iTaxRate=iTaxRate'
      '-WareStartMon=WareStartMon'
      '-StockStartMon=StockStartMon'
      '-SaleStartMon=SaleStartMon'
      '-CWStartMon=CWStartMon'
      '-sVer=sVer'
      '-sFTPUserName=sFTPUserName'
      '-sFTPPassWord=sFTPPassWord'
      '-sFTPHost=sFTPHost'
      '-sFTPPort=sFTPPort'
      '-sFTPFolderName=sFTPFolderName'
      '-sFTPDir=sFTPDir'
      '-SaleOutRfKind=SaleOutRfKind'
      'CoShortName='#20844#21496#31616#31216)
    DataSet = qySysParam
    BCDToCurrency = False
    Left = 56
    Top = 160
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 80
    Top = 8
  end
  object dsTemp: TDataSource
    Left = 8
    Top = 96
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    OpenExcelAfterExport = True
    Wysiwyg = False
    AsText = False
    Background = True
    FastExport = False
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    GridLines = False
    Left = 176
    Top = 120
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    DeleteEmptyColumns = True
    Left = 272
    Top = 120
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 224
    Top = 120
  end
  object qySysParam: TADOQuery
    Connection = DataFM.Con
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      '  select * from SysParamTB')
    Left = 56
    Top = 128
  end
  object dsSysParam: TDataSource
    DataSet = qySysParam
    Left = 56
    Top = 96
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 256
    Top = 8
  end
  object frxADOComponents1: TfrxADOComponents
    Left = 176
    Top = 8
  end
  object frxChartObject1: TfrxChartObject
    Left = 216
    Top = 8
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 296
    Top = 8
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 336
    Top = 8
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 224
    Top = 48
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 176
    Top = 48
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 264
    Top = 48
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 320
    Top = 120
  end
  object frxBMPExport1: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 184
    Top = 160
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 224
    Top = 160
  end
  object frxTIFFExport1: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 272
    Top = 160
  end
  object frxGIFExport1: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 320
    Top = 160
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 376
    Top = 120
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 376
    Top = 160
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 184
    Top = 200
  end
  object frxOLEObject1: TfrxOLEObject
    Left = 304
    Top = 48
  end
  object frxRichObject1: TfrxRichObject
    Left = 352
    Top = 48
  end
  object frxCrypt1: TfrxCrypt
    Left = 384
    Top = 8
  end
  object frxGZipCompressor1: TfrxGZipCompressor
    Left = 400
    Top = 48
  end
end
