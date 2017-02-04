unit AssistMoveInPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseGrdPS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, cxGridCustomPopupMenu, cxGridPopupMenu,
  Menus, ADODB, dxBar, cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, StdCtrls, ExtCtrls, frxClass, frxDBSet,
  cxContainer, cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxMemo, cxButtonEdit,
  cxLabel, cxDBLabel, cxButtons, cxGroupBox, cxDBLookupComboBox, cxGridBandedTableView,
  cxGridDBBandedTableView, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, ADOInt,
  cxPCdxBarPopupMenu, dxSkinOffice2010Blue, cxCheckBox, cxSplitter,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu,
  cxNavigator, dxSkinOffice2013LightGray, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark;

type
  TAssistMoveInFM = class(TBaseGrdFM)
    Label11: TLabel;
    cxBtnOutWare: TcxDBButtonEdit;
    Label12: TLabel;
    cxgrdbclmnItemCode: TcxGridDBColumn;
    cxgrdbclmnItemPYCode: TcxGridDBColumn;
    cxgrdbclmnItemName: TcxGridDBColumn;
    cxgrdbclmnItemSpc: TcxGridDBColumn;
    cxgrdbclmnItemUnit: TcxGridDBColumn;
    cxgrdbclmnProType: TcxGridDBColumn;
    cxgrdbclmnMoveNum: TcxGridDBColumn;
    cxgrdbclmnMovePrice: TcxGridDBColumn;
    cxgrdbclmnRemark: TcxGridDBColumn;
    cxgrdbclmnMoveMoney: TcxGridDBColumn;
    cxgrdbclmnTaxPrice: TcxGridDBColumn;
    cxgrdbclmnTaxRate: TcxGridDBColumn;
    cxgrdbclmnAllMoney: TcxGridDBColumn;
    Label15: TLabel;
    qyWareNum: TADOQuery;
    cxgrdbclmnColumn4: TcxGridDBColumn;
    cxgrdbclmnColumn5: TcxGridDBColumn;
    cxgrdbclmnColumn6: TcxGridDBColumn;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    cxBtnInWare: TcxDBButtonEdit;
    cxBtnAcceptName: TcxDBButtonEdit;
    lbl5: TLabel;
    lbl6: TLabel;
    cxMoRemark: TcxDBMemo;
    cxPupEdtRemark: TcxDBPopupEdit;
    strngfldHedAutoNo: TStringField;
    strngfldHedMoveNo: TStringField;
    qyHedbSelect: TBooleanField;
    strngfldHedMKindId: TStringField;
    qyHedMoveDate: TDateTimeField;
    strngfldHedMoveOutWare: TStringField;
    strngfldHedMoveInWare: TStringField;
    strngfldHedAcceptId: TStringField;
    strngfldHedSendId: TStringField;
    strngfldHedSourceNo: TStringField;
    qyHedbPrint: TBooleanField;
    qyHedPrintNum: TIntegerField;
    strngfldHedSubjoinNo: TStringField;
    strngfldHedSubjoinTableId: TStringField;
    qyHedMakeDate: TDateTimeField;
    strngfldHedMakeMan: TStringField;
    strngfldHedMakeManName: TStringField;
    qyHedAuditFlag: TSmallintField;
    strngfldHedAuditMan: TStringField;
    strngfldHedAuditManName: TStringField;
    strngfldHedAuditDate: TStringField;
    qyHedbMaxAudit: TBooleanField;
    qyHedMaxAuditDate: TDateTimeField;
    strngfldHedEditMan: TStringField;
    strngfldHedEditManName: TStringField;
    qyHedEditDate: TDateTimeField;
    strngfldHedFinaMan: TStringField;
    qyHedFinaDate: TDateTimeField;
    strngfldHedYearMon: TStringField;
    strngfldHedPzWord: TStringField;
    strngfldHedPzNo: TStringField;
    strngfldHedPzId: TStringField;
    strngfldHedRemark: TStringField;
    strngfldHedSendName: TStringField;
    strngfldHedAcceptName: TStringField;
    strngfldHedInWareName: TStringField;
    strngfldHedOutWareName: TStringField;
    cxBtnSendName: TcxDBButtonEdit;
    strngfldDetAutoNo: TStringField;
    strngfldDetMoveNo: TStringField;
    strngfldDetItemId: TStringField;
    strngfldDetItemCode: TStringField;
    strngfldDetItemName: TStringField;
    strngfldDetItemSpc: TStringField;
    strngfldDetItemPic: TStringField;
    strngfldDetItemUnit: TStringField;
    strngfldDetSubUnit: TStringField;
    strngfldDetItemPYCode: TStringField;
    qyDetiFlag: TIntegerField;
    qyDetExchRate: TFMTBCDField;
    strngfldDetProType: TStringField;
    strngfldDetInProType: TStringField;
    strngfldDetColor: TStringField;
    strngfldDetInColor: TStringField;
    strngfldDetBatchNo: TStringField;
    strngfldDetInBatchNo: TStringField;
    strngfldDetPlaceNo: TStringField;
    strngfldDetInPlaceNo: TStringField;
    strngfldDetCompactNo: TStringField;
    strngfldDetInCompactNo: TStringField;
    strngfldDetObjectId: TStringField;
    strngfldDetInObjectId: TStringField;
    strngfldDetSjNo: TStringField;
    strngfldDetsOrderNo: TStringField;
    strngfldDetTechName: TStringField;
    strngfldDetInDate: TStringField;
    strngfldDetPState: TStringField;
    strngfldDetTempNo: TStringField;
    strngfldDetEmpId: TStringField;
    strngfldDetEmpName: TStringField;
    strngfldDetTopTech: TStringField;
    qyDetMoveNum: TFMTBCDField;
    qyDetMovePrice: TFMTBCDField;
    qyDetTaxPrice: TFMTBCDField;
    qyDetMoveMoney: TFMTBCDField;
    qyDetSubNum: TFMTBCDField;
    qyDetSubPrice: TFMTBCDField;
    qyDetSubTaxPrice: TFMTBCDField;
    qyDetSubMoney: TFMTBCDField;
    qyDetSpoilNum: TFMTBCDField;
    qyDetSpoilPrice: TFMTBCDField;
    qyDetSpoilMoney: TFMTBCDField;
    qyDetWasteNum: TFMTBCDField;
    qyDetWastePrice: TFMTBCDField;
    qyDetWasteMoney: TFMTBCDField;
    qyDetTaxRate: TFMTBCDField;
    qyDetTaxMoney: TFMTBCDField;
    qyDetAllMoney: TFMTBCDField;
    strngfldDetTopId: TStringField;
    strngfldDetTopCode: TStringField;
    strngfldDetTopName: TStringField;
    qyDetTopDosage: TFMTBCDField;
    strngfldDetCpId: TStringField;
    strngfldDetCpCode: TStringField;
    strngfldDetCpName: TStringField;
    strngfldDetMrpNo: TStringField;
    strngfldDetMrpID: TStringField;
    strngfldDetTicketNo: TStringField;
    strngfldDetTicketID: TStringField;
    strngfldDetRemark: TStringField;
    strngfldDetObjectName: TStringField;
    strngfldDetInObjectName: TStringField;
    dxbrpmn1: TdxBarPopupMenu;
    dxbrbtn1: TdxBarButton;
    dxbrbtn2: TdxBarButton;
    qyDet2: TADOQuery;
    frxDet2: TfrxDBDataset;
    dsDet2: TDataSource;
    strngfldDet2AutoNo: TStringField;
    strngfldDet2MoveNo: TStringField;
    strngfldDet2ItemId: TStringField;
    strngfldDet2ItemCode: TStringField;
    strngfldDet2ItemName: TStringField;
    strngfldDet2ItemSpc: TStringField;
    strngfldDet2ItemPic: TStringField;
    strngfldDet2ItemUnit: TStringField;
    strngfldDet2SubUnit: TStringField;
    strngfldDet2ItemPYCode: TStringField;
    qyDet2iFlag: TIntegerField;
    qyDet2ExchRate: TFMTBCDField;
    strngfldDet2ProType: TStringField;
    strngfldDet2Color: TStringField;
    strngfldDet2BatchNo: TStringField;
    strngfldDet2PlaceNo: TStringField;
    strngfldDet2CompactNo: TStringField;
    strngfldDet2ObjectId: TStringField;
    strngfldDet2SjNo: TStringField;
    strngfldDet2sOrderNo: TStringField;
    strngfldDet2TechName: TStringField;
    strngfldDet2InDate: TStringField;
    strngfldDet2PState: TStringField;
    strngfldDet2TempNo: TStringField;
    qyDet2Dosage: TFMTBCDField;
    strngfldDet2TopTech: TStringField;
    qyDet2MoveNum: TFMTBCDField;
    qyDet2MovePrice: TFMTBCDField;
    qyDet2TaxPrice: TFMTBCDField;
    qyDet2MoveMoney: TFMTBCDField;
    qyDet2SubNum: TFMTBCDField;
    qyDet2SubPrice: TFMTBCDField;
    qyDet2SubTaxPrice: TFMTBCDField;
    qyDet2SubMoney: TFMTBCDField;
    strngfldDet2Remark: TStringField;
    qyDet2WasteRate: TFMTBCDField;
    strngfldDet2ObjectName: TStringField;
    qyDet2WareNum: TFMTBCDField;
    strngfldDet2DetAutoNo: TStringField;
    cxDetAutoNo: TcxDBTextEdit;
    qyDet2TaxRate: TFMTBCDField;
    qyDet2TaxMoney: TFMTBCDField;
    qyDet2AllMoney: TFMTBCDField;
    qyTemp: TADOQuery;
    cxgrdtbvColumn1: TcxGridDBColumn;
    qyDetWareNum: TFMTBCDField;
    Panel1: TPanel;
    cxbtnInAdd: TcxButton;
    cxbtnInDel: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel2: TPanel;
    cxbtnOutAdd: TcxButton;
    cxbtnOutDel: TcxButton;
    cxgrd1: TcxGrid;
    cxgrdbtblvw1: TcxGridDBTableView;
    cxgrdbclmncxgrdbtblvw1ItemCode: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1ItemName: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1ItemSpc: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1ItemPic: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1ItemUnit: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1SubUnit: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1ExchRate: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1TechName: TcxGridDBColumn;
    cxgrdbclmn1MoveNum: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1Dosage: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1WasteRate: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1TopTech: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1MovePrice: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1TaxPrice: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1MoveMoney: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1SubNum: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1SubPrice: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1SubTaxPrice: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1SubMoney: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1ObjectId: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1Column1: TcxGridDBColumn;
    cxgrdbclmnWareNum: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1Remark: TcxGridDBColumn;
    cxgrdlvl1: TcxGridLevel;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    qyDetProOrderNo: TStringField;
    qyDetProOrderId: TStringField;
    qyDetScrapNum: TFMTBCDField;
    qyDetScrapPrice: TFMTBCDField;
    qyDetScrapMoney: TFMTBCDField;
    qyDetSpoilWareId: TStringField;
    qyDetWasteWareId: TStringField;
    qyDetScrapWareId: TStringField;
    cxgrdtbvColumn2: TcxGridDBColumn;
    cxgrdtbvColumn3: TcxGridDBColumn;
    cxgrdtbvColumn4: TcxGridDBColumn;
    cxgrdtbvColumn5: TcxGridDBColumn;
    cxgrdtbvColumn6: TcxGridDBColumn;
    cxgrdtbvColumn7: TcxGridDBColumn;
    qyDetSpoilWareName: TStringField;
    qyDetWasteWareName: TStringField;
    qyDetScrapWareName: TStringField;
    qyDetbDelTech: TBooleanField;
    qyDetbFirst: TBooleanField;
    qyDetbLast: TBooleanField;
    qyDetSaleOrderNo: TStringField;
    qyDetSaleOrderId: TStringField;
    qyDetDispatchNo: TStringField;
    qyDetDispatchId: TStringField;
    qyTech: TADOQuery;
    qyDetOrdinal: TSmallintField;
    qyDetRfNum: TFMTBCDField;
    cxgrdtbvColumn9: TcxGridDBColumn;
    cxgrdtbvColumn10: TcxGridDBColumn;
    cxgrdbtblvw1Column1: TcxGridDBColumn;
    qyDet2NextTech: TStringField;
    procedure btAddClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qyHedCalcFields(DataSet: TDataSet);
    procedure btSaveClick(Sender: TObject);
    procedure cxBt1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxEdtNoPropertiesChange(Sender: TObject);
    procedure cxgrdbclmnItemCodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btDelClick(Sender: TObject);
    procedure cxgrdbclmnItemPYCodePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure btUnCheckClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure cxBt2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxgrdbclmnOrderNumPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbclmnOrderPricePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbclmnTaxPricePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbclmnTaxRatePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbclmnColumn6PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure qyDetAfterInsert(DataSet: TDataSet);
    procedure cxgrdbclmnColumn1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxBtnOutWarePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxBtnInWarePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure strngfldDetItemIdChange(Sender: TField);
    procedure btCheckClick(Sender: TObject);
    procedure btRefClick(Sender: TObject);
    procedure dxbrbtn1Click(Sender: TObject);
    procedure dxbrbtn2Click(Sender: TObject);
    procedure qyDet2CalcFields(DataSet: TDataSet);
    procedure qyDet2AfterInsert(DataSet: TDataSet);
    procedure qyHedPrintNumChange(Sender: TField);
    procedure strngfldDet2ItemIdChange(Sender: TField);
    procedure cxDetAutoNoPropertiesChange(Sender: TObject);
    procedure strngfldDetTechNameChange(Sender: TField);
    procedure qyDetMoveNumChange(Sender: TField);
    procedure cxgrdbtblvw1CustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure qyDetCalcFields(DataSet: TDataSet);
    procedure cxbtnInAddClick(Sender: TObject);
    procedure cxbtnInDelClick(Sender: TObject);
    procedure cxbtnOutAddClick(Sender: TObject);
    procedure cxbtnOutDelClick(Sender: TObject);
    procedure cxgrdbclmncxgrdbtblvw1ItemCodePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure mniNCopyDClick(Sender: TObject);
    procedure mniNCopyLClick(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure qyDetScrapPriceChange(Sender: TField);
    procedure qyDetScrapNumChange(Sender: TField);
    procedure qyDetSpoilNumChange(Sender: TField);
    procedure qyDetWasteNumChange(Sender: TField);
    procedure cxgrdtbvColumn3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdtbvColumn5PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdtbvColumn7PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdbclmncxgrdbtblvw1MoveNumPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbclmncxgrdbtblvw1SubNumPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbtblvw1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxgrdbclmnColumn4PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbclmncxgrdbtblvw1ExchRatePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure btReferClick(Sender: TObject);
  private
    { Private declarations }
    procedure GetDet2Num;
    procedure SetEditState();
  public
    { Public declarations }
  end;
var
  AssistMoveInFM: TAssistMoveInFM;

implementation

uses PublicPS, ControlPublicPS, DataPS, EmpQPS, ItemQPS, WareQPS, DeptQPS, PrvQPS, ItemMoveFindPS, InProDispatchRfPS;
{$R *.dfm}

procedure TAssistMoveInFM.SetEditState();
begin
  cxbtnInAdd.Enabled := not btEdit.Enabled;
  cxbtnInDel.Enabled := not btEdit.Enabled;
  cxbtnOutAdd.Enabled := not btEdit.Enabled;
  cxbtnOutDel.Enabled := not btEdit.Enabled;
end;

procedure TAssistMoveInFM.GetDet2Num;
var i: integer;
begin
  try
    qyDet2.First;
    for i := 0 to qyDet2.RecordCount - 1 do
    begin
      if qyDet2.FieldByName('DetAutoNo').AsString = qyDet.FieldByName('AutoNo').AsString then
      begin
        if qyDet2.State = dsBrowse then qyDet2.Edit;
        qyDet2.FieldByName('MoveNum').AsFloat := (qyDet.fieldByName('MoveNum').AsFloat + qyDet.fieldByName('SpoilNum').AsFloat + qyDet.fieldByName('WasteNum').AsFloat + qyDet.fieldByName('ScrapNum').AsFloat) * qyDet2.fieldByName('Dosage').AsFloat * (1 + qyDet2.fieldByName('WasteRate').AsFloat / 100);
        UpdateData(cxgrdbtblvw1, 'MoveNum');
      end;
      qyDet2.Next;
    end;
  except
  end;
end;

procedure TAssistMoveInFM.MenuItem4Click(Sender: TObject);
begin
  inherited;
  CustomGrd(cxgrd1);
end;

procedure TAssistMoveInFM.MenuItem5Click(Sender: TObject);
begin
  inherited;
  SaveGrd(Self, cxgrdbtblvw1);
end;

procedure TAssistMoveInFM.MenuItem6Click(Sender: TObject);
begin
  inherited;
  DelGrd(Self, cxgrdbtblvw1);
end;

procedure TAssistMoveInFM.mniNCopyDClick(Sender: TObject);
begin
  inherited;
  CopyCellValue(cxgrdbtblvw1);
end;

procedure TAssistMoveInFM.mniNCopyLClick(Sender: TObject);
begin
  try
    if btSave.Enabled = False then exit;
    CopyColumnValue(cxgrdbtblvw1);
  except
  end;
end;

procedure TAssistMoveInFM.btAddClick(Sender: TObject);
begin
  try
    if (bRight) and (bAdd = false) then
    begin
      ShowWarn('你没有本单据的添加权限,不能操作');
      exit;
    end;
    TextReadOnly(Self, false);
    inherited;
    SetEditState();
    qyHed.Append;
    qyHed.FieldByName('MoveNo').AsString := GetTableNo(sTableId, 'MoveNo');
    qyHed.FieldByName('MoveDate').AsDateTime := StrToDateTime(FormatDateTime('yyyy-mm-dd', SysDateTime));
    qyHed.FieldByName('AutoNo').AsString := GetDateAutoNo(sTableId);
    qyHed.FieldByName('MKindId').AsString := sTableId;
    qyHed.FieldByName('MakeMan').AsString := LoginEmpId;
    qyHed.FieldByName('MakeManName').AsString := LoginEmpName;
    qyHed.FieldByName('MakeDate').AsDateTime := SysDateTime;
    qyHed.FieldByName('AuditFlag').AsInteger := 0;
    qyDet.Edit;
  except
    on E: Exception do
      ShowWarn(e.Message);
  end;
end;

procedure TAssistMoveInFM.btCancelClick(Sender: TObject);
begin
  qyDet2.Filter := '';
  qyDet2.Filtered := False;
  qyDet2.CancelBatch();
  qyDet.CancelBatch();
  qyHed.CancelBatch();
  TextReadOnly(Self, True);
  inherited;
  SetEditState();
end;

procedure TAssistMoveInFM.btCheckClick(Sender: TObject);
var i: Integer;
begin
  try
    if (trim(cxEdtNo.Text) = '') or (qyHed.Active = false) then exit;
    qyHed.UpdateCursorPos;
    qyHed.Recordset.Resync(AdAffectcurrent, AdResyncAllValues);
    qyHed.Resync([]);
    if qyHed.FieldByName('bMaxAudit').asBoolean then
    begin
      ShowWarn('本单已经审核完毕!');
      exit;
    end;

    if CheckWareHasMonth(qyHed.FieldByName('MoveDate').AsDateTime) then
    begin
      ShowWarn('单据日期所在月份已经做了仓库月结,你不能对该月数据再在进行操作');
      exit;
    end;
    qyDet.First;
    for I := 0 to qyDet.RecordCount - 1 do
    begin
      if (qyDet.FieldByName('SpoilNum').AsFloat <> 0) and (qyDet.FieldByName('SpoilWareId').AsString = '') then
      begin
        ShowWarn('有记录填写了不良品数量,请选择不良品仓库');
        exit;
      end;
      if (qyDet.FieldByName('WasteNum').AsFloat <> 0) and (qyDet.FieldByName('WasteWareId').AsString = '') then
      begin
        ShowWarn('有记录填写了废品数量,请选择废品仓库');
        exit;
      end;
      if (qyDet.FieldByName('ScrapNum').AsFloat <> 0) and (qyDet.FieldByName('ScrapWareId').AsString = '') then
      begin
        ShowWarn('有记录填写了料废数量,请选择料废仓库');
        exit;
      end;
    end;
    if HasGetMaxAudit(sTableId, qyHed.FieldByName('AuditFlag').asInteger + 1) then
    begin
      try
        with DataFM.qyTemp do
        begin
          if Active then Close;
          SQL.Clear;
          SQL.Add('Exec PrCheckMoveInNum ' + QuotedStr(Trim(cxEdtNo.text)) + ',1');
          Open;
        end;

        if DataFM.qyTemp.FieldByName('CheckResult').AsString <> '' then
        begin
          ShowWarn(DataFM.qyTemp.FieldByName('CheckResult').AsString + ' 库存不足，不能审核');
          Exit;
        end;
      finally
        DataFM.qyTemp.close;
      end;
      if AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.Text), qyHed, 1) then
      begin
        try
          with DataFM.qyTemp do
          begin
            if Active then Close;
            SQL.Clear;
            SQL.Add('Exec PrItemMoveInAudit ' + QuotedStr(Trim(cxEdtNo.text)) + ',1');
            Open;
          end;
        finally
          DataFM.qyTemp.close;
        end;
      end;
    end
    else
      AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, 1);
    SetLog(sFMName, trim(cxEdtNo.Text), '审核');
    ShowFMInfo(sTableId, qyHed);
    btRefClick(Self);
  except
    ShowWarn('审核失败!');
  end;
end;

procedure TAssistMoveInFM.btDelClick(Sender: TObject);
var
  sBiilNo: string;
begin
  if (cxEdtNo.Text = '') or (qyHed.Active = false) then exit;
  qyHed.UpdateCursorPos;
  qyHed.Recordset.Resync(AdAffectcurrent, AdResyncAllValues);
  qyHed.Resync([]);
  if qyHed.FieldByName('AuditFlag').asInteger > 0 then
  begin
    ShowWarn('本单已经审核,不能删除!');
    exit;
  end;
  if (bRight) and (bDelAll = false) and (qyHed.FieldByName('MakeMan').AsString <> LoginEmpId) then
  begin
    ShowWarn('你只能删除自己做的单据!');
    exit;
  end;
  inherited;
  if ShowDlg('确实要删除该单据吗?') then
  begin
    try
      sBiilNo := trim(cxEdtNo.Text);
      ExeSql('Delete ItemMoveDT2TB where MoveNo=' + QuotedStr(sBiilNo));
      ExeSql('Delete ItemMoveDTTB where MoveNo=' + QuotedStr(sBiilNo));
      ExeSql('Delete ItemMoveHDTB where MoveNo=' + QuotedStr(sBiilNo));
      with qyHed do
      begin
        if Active then Close;
        SQL.Clear;
        sql.Add('select * from ItemMoveHDTB where IsNull(bMaxAudit,0)=0  and MKindID=' + Quotedstr(sTableId));
        Open;
      end;
      SetLog(sFMName, sBiilNo, '删除');
      ShowBox('删除成功!');
    except
      on E: Exception do
      begin
        ShowBox('删除失败!');
      end;
    end;
  end;
end;

procedure TAssistMoveInFM.btEditClick(Sender: TObject);
var i: integer;
begin
  if qyHed.RecordCount <= 0 then exit;
  GetServerTime;
  qyHed.UpdateCursorPos;
  qyHed.Recordset.Resync(AdAffectcurrent, AdResyncAllValues);
  qyHed.Resync([]);
  if (bRight) and (bEditPrice) and (qyHed.FieldByName('AuditFlag').asInteger > 0) then
  begin
    TextReadOnly(Self, True);
    cxgrdtbv.OptionsData.Editing := true;
    for i := 0 to cxgrdtbv.ColumnCount - 1 do
    begin
      if (cxgrdtbv.Columns[i].DataBinding.FieldName = 'MovePrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'TaxPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubTaxPrice') then
        cxgrdtbv.Columns[i].Options.Editing := true
      else
        cxgrdtbv.Columns[i].Options.Editing := False;
    end;
    SetButtonState(btAdd, btEdit, btDel, btAddL, btDelL, btSave, btCancel, btRefer, btFind, btExport, btPrint, btCheck, btUnCheck, btExit,
      false, false, false, false, false, true, true, false, false, false, false, false, false, true);
  end
  else
  begin
    if qyHed.FieldByName('AuditFlag').asInteger > 0 then
    begin
      ShowWarn('本单已经审核,不允许再进行编辑!');
      exit;
    end;
    if (bRight) and (bEditAll = false) and (qyHed.FieldByName('MakeMan').AsString <> LoginEmpId) then
    begin
      ShowWarn('你只能修改自己做的单据，不能修改别人的!');
      exit;
    end;
    TextReadOnly(Self, false);
    inherited;
    SetEditState();
  end;
  qyHed.Edit;
  qyHed.FieldByName('EditMan').AsString := LoginEmpId;
  qyHed.FieldByName('EditManName').AsString := LoginEmpName;
  qyHed.FieldByName('EditDate').AsDateTime := SysDateTime;
end;

procedure TAssistMoveInFM.btFindClick(Sender: TObject);
begin
  inherited;
  try
    if not Assigned(ItemMoveFindFM) then
      ItemMoveFindFM := TItemMoveFindFM.Create(Application);
    ItemMoveFindFM.dsFind := dsHed;
    ItemMoveFindFM.cxgrdtbv.DataController.DataSource := dsHed;
    ItemMoveFindFM.sMKindID := sTableId;
    ItemMoveFindFM.ShowModal;
  finally
    ItemMoveFindFM.Free;
    ItemMoveFindFM := nil
  end;
end;

procedure TAssistMoveInFM.btRefClick(Sender: TObject);
begin
  try
    inherited;
    if qyWareNum.Active then
    begin
      qyWareNum.Close;
      qyWareNum.Open;
    end;
    if (qyHed.Active) and (qyDet.Active) then
    begin
      qyHed.UpdateCursorPos;
      qyHed.Recordset.Resync(AdAffectCurrent, AdResyncAllValues);
      qyHed.Resync([]);
      qyDet.Requery;
      qyDet2.Requery;
    end;
  except
  end;
end;

procedure TAssistMoveInFM.btReferClick(Sender: TObject);
var
  i: integer;
begin

 { if cxBtnSendName.Text = '' then
  begin
    ShowBox('请先选择发出单位');
    Exit;
  end;
  if cxBtnOutWare.Text = '' then
  begin
    ShowBox('请先选择发出仓库');
    Exit;
  end; }
  try
    InProDispatchRfFM := TInProDispatchRfFM.Create(nil);
    InProDispatchRfFM.sKind := '外协加工入库';
    InProDispatchRfFM.sObjectId := qyHed.FieldByName('SendId').asString;

    InProDispatchRfFM.btFindClick(self);
    InProDispatchRfFM.ShowModal;
    if InProDispatchRfFM.fFlag = 1 then
    begin
      InProDispatchRfFM.qyFind.Filter := ' bSelect=1';
      InProDispatchRfFM.qyFind.Filtered := true;
      InProDispatchRfFM.qyFind.First;
      for i := 0 to InProDispatchRfFM.qyFind.RecordCount - 1 do
      begin
        if i = 0 then
          qyDet.Edit
        else
          qyDet.Append;
        qyDet.FieldByName('ItemId').AsString := InProDispatchRfFM.qyFind.FieldByName('ItemId').AsString;
        qyDet.FieldByName('ItemCode').AsString := InProDispatchRfFM.qyFind.FieldByName('ItemCode').AsString;
        qyDet.FieldByName('CompactNo').AsString := InProDispatchRfFM.qyFind.FieldByName('CompactNo').AsString;
        qyDet.FieldByName('ProType').AsString := InProDispatchRfFM.qyFind.FieldByName('ProType').AsString;
        qyDet.FieldByName('Color').AsString := InProDispatchRfFM.qyFind.FieldByName('Color').AsString;
        qyDet.FieldByName('Ordinal').AsInteger := InProDispatchRfFM.qyFind.FieldByName('Ordinal').AsInteger;
        qyDet.FieldByName('TopTech').AsString := InProDispatchRfFM.qyFind.FieldByName('TopTech').AsString;
        qyDet.FieldByName('bFirst').AsBoolean := InProDispatchRfFM.qyFind.FieldByName('bFirst').AsBoolean;
        qyDet.FieldByName('bLast').AsBoolean := InProDispatchRfFM.qyFind.FieldByName('bLast').AsBoolean;

        qyDet.FieldByName('MoveNum').AsFloat := InProDispatchRfFM.qyFind.FieldByName('NoRfNum').AsFloat;
        qyDet.FieldByName('RfNum').AsFloat := InProDispatchRfFM.qyFind.FieldByName('NoRfNum').AsFloat;

        qyDet.FieldByName('SaleOrderNo').AsString := InProDispatchRfFM.qyFind.FieldByName('SaleOrderNo').AsString;
        qyDet.FieldByName('SaleOrderId').AsString := InProDispatchRfFM.qyFind.FieldByName('SaleOrderId').AsString;
        qyDet.FieldByName('ProOrderNo').AsString := InProDispatchRfFM.qyFind.FieldByName('ProOrderNo').AsString;
        qyDet.FieldByName('ProOrderId').AsString := InProDispatchRfFM.qyFind.FieldByName('ProOrderId').AsString;
        qyDet.FieldByName('DispatchNo').AsString := InProDispatchRfFM.qyFind.FieldByName('DispatchNo').AsString;
        qyDet.FieldByName('DispatchId').AsString := InProDispatchRfFM.qyFind.FieldByName('AutoNO').AsString;
        qyDet.FieldByName('TechName').AsString := InProDispatchRfFM.qyFind.FieldByName('TechName').AsString;
        if qyDet.FieldByName('bLast').AsBoolean then
          qyDet.FieldByName('bDelTech').AsBoolean := True;

        UpdateData(cxgrdtbv, 'MoveNum');
        qyDet.post;
        InProDispatchRfFM.qyFind.Next;
      end;
    end;
  finally
    InProDispatchRfFM.free;
    InProDispatchRfFM := nil;
  end;
end;

procedure TAssistMoveInFM.btSaveClick(Sender: TObject);
var
  sNewNo: string;
  i: Integer;
begin
  try
    if cxBtnSendName.Text = '' then
    begin
      ShowBox('请先选择外协单位');
      Exit;
    end;
    if cxBtnAcceptName.Text = '' then
    begin
      ShowBox('请先选择接收单位');
      Exit;
    end;
    if cxBtnOutWare.Text = '' then
    begin
      ShowBox('请先选择发出仓库');
      Exit;
    end;
    if cxBtnInWare.Text = '' then
    begin
      ShowBox('请先选择接收仓库');
      Exit;
    end;
    qyDet2.Filter := '';
    qyDet2.Filtered := False;
    qyHed.UpdateBatch;
    qyDet.UpdateBatch;
    qyDet2.UpdateBatch;
    TextReadOnly(Self, True);
    if cxEdtEditManName.Text <> '' then
      SetLog(sFMName, trim(cxEdtNo.Text), '修改')
    else
      SetLog(sFMName, trim(cxEdtNo.Text), '添加');
    inherited;
    SetEditState();
    ShowBox('保存成功!');
  except
    on E: Exception do
    begin
      if pos('不能将值', E.Message) > 0 then
        ShowBox('请将必填项填写完整!')
      else if pos('插入重复键', e.Message) > 0 then
      begin
        try
          sNewNo := GetTableNO(sTableId, 'MoveNo');
          if qyHed.FieldByName('MoveNo').AsString = sNewNo then
          begin
            ShowBox('有数据重复!');
            Exit;
          end;
          if qyHed.State = dsBrowse then qyHed.Edit;
          if qyDet.State = dsBrowse then qyDet.Edit;

          qyHed.FieldByName('MoveNo').AsString := sNewNo;
          qyDet.First;
          for i := 0 to qyDet.RecordCount - 1 do
          begin
            if qyDet.State = dsBrowse then qyDet.Edit;
            qyDet.FieldByName('MoveNo').AsString := sNewNo;
            qyDet.Next;
          end;
          qyHed.UpdateBatch;
          qyDet.UpdateBatch;
          qyDet2.UpdateBatch;
          TextReadOnly(Self, true);

          inherited;
          ShowBox('保存成功!');
        except
          ShowError('保存失败!');
        end;
      end;
    end;
  end;
end;

procedure TAssistMoveInFM.btUnCheckClick(Sender: TObject);
begin
  try
    if (trim(cxEdtNo.Text) = '') or (qyHed.Active = false) then exit;
    qyHed.UpdateCursorPos;
    qyHed.Recordset.Resync(AdAffectcurrent, AdResyncAllValues);

    if qyHed.FieldByName('AuditFlag').asInteger = 0 then
    begin
      ShowWarn('本单未进行审核,不需要反审核!');
      exit;
    end;

    if CheckWareHasMonth(qyHed.FieldByName('MoveDate').AsDateTime) then
    begin
      ShowWarn('单据日期所在月份已经做了仓库月结,你不能对该月数据在进行操作');
      exit;
    end;
    if HasGetMaxAudit(sTableId, qyHed.FieldByName('AuditFlag').AsInteger) then
    begin
      try
        with DataFM.qyTemp do
        begin
          if Active then Close;
          SQL.Clear;
          SQL.Add('Exec PrCheckMoveInNum ' + QuotedStr(Trim(cxEdtNo.text)) + ',-1');
          Open;
        end;

        if DataFM.qyTemp.FieldByName('CheckResult').AsString <> '' then
        begin
          ShowWarn(DataFM.qyTemp.FieldByName('CheckResult').AsString + ' 库存不足，不能反审核');
          Exit;
        end;
      finally
        DataFM.qyTemp.close;
      end;
      if AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.Text), qyHed, -1) then
      begin
        try
          with DataFM.qyTemp do
          begin
            if Active then Close;
            SQL.Clear;
            SQL.Add('Exec PrItemMoveInAudit ' + QuotedStr(Trim(cxEdtNo.text)) + ',-1');
            Open;
          end;
        finally
          DataFM.qyTemp.close;
        end;
      end;
    end
    else
      AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, -1);
    SetLog(sFMName, trim(cxEdtNo.Text), '反审核');
    ShowFMInfo(sTableId, qyHed);
    btRefClick(Self);
  except
    ShowWarn('反审核失败!');
  end;
end;

procedure TAssistMoveInFM.cxBt1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  try
    if btSave.Enabled = False then Exit;
    try
      PrvQFM := TPrvQFM.Create(nil);
      PrvQFM.iSelectKind := 2; //单选
      PrvQFM.sParam := '所有';
      PrvQFM.ShowModal;
      if PrvQFM.sId <> '' then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('SendId').AsString := PrvQFM.sId;
      end;
    finally
      PrvQFM.Free;
      PrvQFM := nil;
    end;
  except
  end;
end;

procedure TAssistMoveInFM.cxBt2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  try
    if btSave.Enabled = False then Exit;
    try
      DeptQFM := TDeptQFM.Create(nil);
      DeptQFM.iSelectKind := 2; // 单选
      DeptQFM.ShowModal;
      if DeptQfm.sId <> '' then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('AcceptId').AsString := DeptQFM.sId;
        qyHed.FieldByName('InWare').AsString := DeptQFM.sWareId;
      end;
    finally
      DeptQFM.Free;
      DeptQFM := nil;
    end;
  except
  end;
end;

procedure TAssistMoveInFM.cxBtnInWarePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  WareSelect(btSave.Enabled, qyHed, 'InWare', 2);
end;

procedure TAssistMoveInFM.cxbtnOutAddClick(Sender: TObject);
begin
  inherited;
  try
    qyDet2.Append;
  except
  end;
end;

procedure TAssistMoveInFM.cxbtnOutDelClick(Sender: TObject);
begin
  inherited;
  try
    if not qyDet2.IsEmpty then
      qyDet2.Delete;
  except
  end;
end;

procedure TAssistMoveInFM.cxbtnInAddClick(Sender: TObject);
begin
  try
    inherited;
    qyDet.Append;
  except
  end;
end;

procedure TAssistMoveInFM.cxbtnInDelClick(Sender: TObject);
var i: Integer;
begin
  try
    qyDet2.First;
    for i := 0 to qyDet2.RecordCount - 1 do
    begin
      qyDet2.Delete;
      qyDet2.Next;
    end;
    qyDet.Delete;
  except
    ShowWarn('删除失败！');
  end;
end;

procedure TAssistMoveInFM.cxBtnOutWarePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  WareSelect(btSave.Enabled, qyHed, 'OutWare', 2);
end;

procedure TAssistMoveInFM.cxDetAutoNoPropertiesChange(Sender: TObject);
begin
  inherited;
  if not qyDet.fieldByName('AutoNo').IsNull then
  begin
    qyDet2.Filter := 'DetAutoNo=' + QuotedStr(qyDet.fieldByName('AutoNo').AsString);
    qyDet2.Filtered := true;
  end;
end;

procedure TAssistMoveInFM.cxEdtNoPropertiesChange(Sender: TObject);
begin
  inherited;
  with qyDet do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from ItemMoveDTTB where MoveNo=' + QuotedStr(trim(cxEdtNo.Text)));
    Open;
  end;
  with qyDet2 do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from ItemMoveDT2TB where MoveNo=' + QuotedStr(trim(cxEdtNo.Text)));
    Open;
  end;
  if DataFM.qyPyCode.Active = false then DataFM.qyPyCode.Open;
  ShowFMInfo(sTableId, qyHed);
end;

procedure TAssistMoveInFM.cxgrdbclmnColumn1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  try
    if btSave.Enabled = False then Exit;
    try
      PrvQFM := TPrvQFM.Create(nil);
      PrvQFM.iSelectKind := 2; //单选
      PrvQFM.ShowModal;
      if PrvQFM.sId <> '' then
      begin
        if qyDet.State = dsBrowse then qyDet.Edit;
        qyDet.FieldByName('InObjectId').AsString := PrvQFM.sId;
      end;
    finally
      PrvQFM.Free;
      PrvQFM := nil;
    end;
  except
  end;
end;

procedure TAssistMoveInFM.cxgrdbclmnColumn4PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := false;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('ExchRate').AsFloat := DisplayValue;
  begin
    if qyDet.FieldByName('iFlag').asInteger = 0 then
      qyDet.FieldByName('SubNum').AsFloat := qyDet.FieldByName('MoveNum').AsFloat * DisplayValue
    else
    begin
      if DisplayValue <> 0 then
        qyDet.FieldByName('SubNum').AsFloat := qyDet.FieldByName('MoveNum').AsFloat / DisplayValue;
    end;
  end;
end;

procedure TAssistMoveInFM.cxgrdbclmnColumn6PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := false;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('SubNum').AsFloat := DisplayValue;
  if qyDet.FieldByName('iFlag').asInteger = 0 then
  begin
    if qyDet.FieldByName('ExchRate').AsFloat <> 0 then
      qyDet.FieldByName('MoveNum').AsFloat := DisplayValue / qyDet.FieldByName('ExchRate').AsFloat;
  end
  else
  begin
    qyDet.FieldByName('MoveNum').AsFloat := DisplayValue * qyDet.FieldByName('ExchRate').AsFloat
  end;
  qyDet.FieldByName('SubMoney').AsFloat := DisplayValue * qyDet.FieldByName('SubPrice').AsFloat;

  qyDet.FieldByName('AllMoney').AsFloat := DisplayValue * qyDet.FieldByName('SubTaxPrice').AsFloat;
  qyDet.FieldByName('MoveMoney').AsFloat := qyDet.FieldByName('SubMoney').AsFloat;
  qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('MoveMoney').AsFloat;

end;

procedure TAssistMoveInFM.cxgrdbclmncxgrdbtblvw1ExchRatePropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  Error := false;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('ExchRate').AsFloat := DisplayValue;
  begin
    if qyDet.FieldByName('iFlag').asInteger = 0 then
      qyDet.FieldByName('SubNum').AsFloat := qyDet.FieldByName('MoveNum').AsFloat * DisplayValue
    else
    begin
      if DisplayValue <> 0 then
        qyDet.FieldByName('SubNum').AsFloat := qyDet.FieldByName('MoveNum').AsFloat / DisplayValue;
    end;
  end;
end;

procedure TAssistMoveInFM.cxgrdbclmncxgrdbtblvw1ItemCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: Integer;
begin
  if btSave.Enabled = False then Exit;
  try
    ItemQFM := TItemQFM.Create(nil);
    ItemQFM.iSelectKind := 1;
    ItemQFM.btFindClick(Sender);
    ItemQFM.ShowModal;
    if ItemQFM.bHasSelect then
    begin
      ItemQFM.qyFind.Filter := ' bSelect=1';
      ItemQFM.qyFind.Filtered := true;
      ItemQFM.qyFind.First;
      for i := 0 to ItemQFM.qyFind.RecordCount - 1 do
      begin
        if i = 0 then
        begin
          qyDet2.Edit;
          qyDet2AfterInsert(qyDet2);
        end
        else
          qyDet2.Append;
        qyDet2.FieldByName('ItemId').AsString := ItemQFM.qyFind.FieldByName('ItemId').AsString;
        qyDet2.post;
        ItemQFM.qyFind.Next;
      end;
    end;
  finally
    ItemQFM.Free;
    ItemQFM := nil;
  end;
end;

procedure TAssistMoveInFM.cxgrdbclmncxgrdbtblvw1MoveNumPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  Error := False;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet2.FieldByName('MoveNum').AsString := DisplayValue;
  qyDet2.FieldByName('MoveMoney').AsFloat := DisplayValue * qyDet2.FieldByName('MovePrice').AsFloat;
  qyDet2.FieldByName('AllMoney').AsFloat := DisplayValue * qyDet2.FieldByName('TaxPrice').AsFloat;
  qyDet2.FieldByName('TaxMoney').AsFloat := qyDet2.FieldByName('AllMoney').AsFloat - qyDet2.FieldByName('MoveMoney').AsFloat;
  if qyDet2.FieldByName('iFlag').AsInteger = 0 then
  begin
    qyDet2.FieldByName('SubNum').AsFloat := DisplayValue * qyDet2.FieldByName('ExchRate').AsFloat;
  end
  else
  begin
    if qyDet2.FieldByName('ExchRate').AsFloat <> 0 then
      qyDet2.FieldByName('SubNum').AsFloat := DisplayValue / qyDet2.FieldByName('ExchRate').AsFloat
  end;
end;

procedure TAssistMoveInFM.cxgrdbclmncxgrdbtblvw1SubNumPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  Error := false;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet2.FieldByName('SubNum').AsFloat := DisplayValue;
  if qyDet2.FieldByName('iFlag').asInteger = 0 then
  begin
    if qyDet2.FieldByName('ExchRate').AsFloat <> 0 then
      qyDet2.FieldByName('MoveNum').AsFloat := DisplayValue / qyDet2.FieldByName('ExchRate').AsFloat;
  end
  else
  begin
    qyDet2.FieldByName('MoveNum').AsFloat := DisplayValue * qyDet2.FieldByName('ExchRate').AsFloat
  end;
  qyDet2.FieldByName('SubMoney').AsFloat := DisplayValue * qyDet2.FieldByName('SubPrice').AsFloat;
  qyDet2.FieldByName('AllMoney').AsFloat := DisplayValue * qyDet2.FieldByName('SubTaxPrice').AsFloat;
  qyDet2.FieldByName('MoveMoney').AsFloat := qyDet2.FieldByName('SubMoney').AsFloat;
  qyDet2.FieldByName('TaxMoney').AsFloat := qyDet2.FieldByName('AllMoney').AsFloat - qyDet2.FieldByName('MoveMoney').AsFloat;
end;

procedure TAssistMoveInFM.cxgrdbclmnItemCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i: Integer;
begin
  if btSave.Enabled = False then Exit;
  try
    ItemQFM := TItemQFM.Create(nil);
    ItemQFM.iSelectKind := 1;
    ItemQFM.btFindClick(Sender);
    ItemQFM.ShowModal;
    if ItemQFM.bHasSelect then
    begin
      ItemQFM.qyFind.Filter := ' bSelect=1';
      ItemQFM.qyFind.Filtered := true;
      ItemQFM.qyFind.First;
      for i := 0 to ItemQFM.qyFind.RecordCount - 1 do
      begin
        if i = 0 then
        begin
          qyDet.Edit;
          qyDetAfterInsert(qyDet);
        end
        else
          qyDet.Append;
        qyDet.FieldByName('ItemId').AsString := ItemQFM.qyFind.FieldByName('ItemId').AsString;
        qyDet.FieldByName('TechName').AsString := '';
        qyDet.post;
        ItemQFM.qyFind.Next;
      end;
    end;
  finally
    ItemQFM.Free;
    ItemQFM := nil;
  end;
end;

procedure TAssistMoveInFM.cxgrdbclmnItemPYCodePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if DisplayValue = '' then Exit;
  if DataFM.qyItem.Locate('ItemPYCode', DisplayValue, []) then
    qyDet.FieldByName('ItemId').AsString := DataFM.qyItem.FieldByName('ItemId').AsString
  else
  begin
    ErrorText := '无效的拼音码,请按ESC键取消修改';
    qyDet.FieldByName('ItemId').AsString := '';
    Error := true;
  end;
end;

procedure TAssistMoveInFM.cxgrdbclmnOrderNumPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('MoveNum').AsString := DisplayValue;
  qyDet.FieldByName('MoveMoney').AsFloat := DisplayValue * qyDet.FieldByName('MovePrice').AsFloat;
  qyDet.FieldByName('AllMoney').AsFloat := DisplayValue * qyDet.FieldByName('TaxPrice').AsFloat;
  qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('MoveMoney').AsFloat;
  if qyDet.FieldByName('iFlag').AsInteger = 0 then
  begin
    qyDet.FieldByName('SubNum').AsFloat := DisplayValue * qyDet.FieldByName('ExchRate').AsFloat;
  end
  else
  begin
    if qyDet.FieldByName('ExchRate').AsFloat <> 0 then
      qyDet.FieldByName('SubNum').AsFloat := DisplayValue / qyDet.FieldByName('ExchRate').AsFloat
  end;
end;

procedure TAssistMoveInFM.cxgrdbclmnOrderPricePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('MovePrice').AsString := DisplayValue;
  qyDet.FieldByName('TaxPrice').AsFloat := DisplayValue * (1 + qyDet.FieldByName('TaxRate').AsFloat / 100);
  qyDet.FieldByName('MoveMoney').AsFloat := qyDet.FieldByName('MoveNum').AsFloat * DisplayValue;
  qyDet.FieldByName('AllMoney').AsFloat := qyDet.FieldByName('MoveNum').AsFloat * qyDet.FieldByName('TaxPrice').AsFloat;
  qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('MoveMoney').AsFloat;
end;

procedure TAssistMoveInFM.cxgrdbclmnTaxPricePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  try
    inherited;
    Error := False;
    if DisplayValue = '' then
      DisplayValue := 0;
    qyDet.FieldByName('TaxPrice').AsFloat := DisplayValue;
    qyDet.FieldByName('MovePrice').AsFloat := DisplayValue / (1 + qyDet.FieldByName('TaxRate').AsFloat / 100);
    qyDet.FieldByName('MoveMoney').AsFloat := qyDet.FieldByName('MoveNum').AsFloat * (DisplayValue / (1 + qyDet.FieldByName('TaxRate').AsFloat / 100));
    qyDet.FieldByName('AllMoney').AsFloat := qyDet.FieldByName('MoveNum').AsFloat * DisplayValue;
    qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('MoveMoney').AsFloat;
  except
  end;
end;

procedure TAssistMoveInFM.cxgrdbclmnTaxRatePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  try
    inherited;
    Error := False;
    if DisplayValue = '' then
      DisplayValue := 0;
    qyDet.FieldByName('TaxRate').AsFloat := DisplayValue;
    qyDet.FieldByName('TaxPrice').AsFloat := qyDet.FieldByName('MovePrice').AsFloat * (1 + DisplayValue / 100);
    qyDet.FieldByName('MoveMoney').AsFloat := qyDet.FieldByName('MoveNum').AsFloat * qyDet.FieldByName('MovePrice').AsFloat;
    qyDet.FieldByName('AllMoney').AsFloat := qyDet.FieldByName('MoveNum').AsFloat * qyDet.FieldByName('TaxPrice').AsFloat;
    qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('MoveMoney').AsFloat;
  except
  end;
end;

procedure TAssistMoveInFM.cxgrdbtblvw1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARec: TRect;
begin
  inherited;
  if (AViewInfo.GridRecord.DisplayTexts[cxgrdbclmn1MoveNum.Index] <> '') and (AViewInfo.GridRecord.DisplayTexts[cxgrdbclmnWareNum.Index] <> '') then
  begin
    if (not qyHed.FieldByName('bMaxAudit').AsBoolean)
      and (StrToFloat(AViewInfo.GridRecord.DisplayTexts[cxgrdbclmn1MoveNum.Index]) > StrToFloat(AViewInfo.GridRecord.DisplayTexts[cxgrdbclmnWareNum.Index])) then
    begin
      ARec := AViewInfo.Bounds;
      ACanvas.canvas.Font.color := clRed;
      ACanvas.FillRect(ARec)
    end;
  end;
end;

procedure TAssistMoveInFM.cxgrdbtblvw1CustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TAssistMoveInFM.cxgrdtbvColumn3PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  WareSelect(btSave.Enabled, qyDet, 'SpoilWareId', 2);
end;

procedure TAssistMoveInFM.cxgrdtbvColumn5PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  WareSelect(btSave.Enabled, qyDet, 'WasteWareId', 2);
end;

procedure TAssistMoveInFM.cxgrdtbvColumn7PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  WareSelect(btSave.Enabled, qyDet, 'ScrapWareId', 2);
end;

procedure TAssistMoveInFM.dxbrbtn1Click(Sender: TObject);
begin
  inherited;
  BillView('OtherIn', 'select * from WareInOutHDTB where WKindId=''ItemMoveIn'' and SubjoinNo=' + QuotedStr(qyHed.FieldByName('MoveNo').AsString));
end;

procedure TAssistMoveInFM.dxbrbtn2Click(Sender: TObject);
begin
  inherited;
  BillView('OtherOut', 'select * from WareInOutHDTB where WKindId=''ItemMoveOut'' and SubjoinNo=' + QuotedStr(qyHed.FieldByName('MoveNo').AsString));
end;

procedure TAssistMoveInFM.FormCreate(Sender: TObject);
begin
  sFMId := 'AssistMoveInFM';
  sFMName := Self.Caption;
  sTableId := 'AssistMoveIn';
  inherited;
  if qyWareNum.Active = False then qyWareNum.Open; //一定要 否则Requery要报错
  qyWareNum.Requery();
  with qyHed do
  begin
    if Active then close;
    SQL.Clear;
    SQL.Add('select * from ItemMoveHDTB where isnull(bMaxAudit,0)=0 and MKindID=' + Quotedstr(sTableId));
    if (bRight) and (bFindPart = false) then
      SQL.Add(' and MakeMan=' + Quotedstr(LoginEmpId));
    Open;
  end;
end;

procedure TAssistMoveInFM.FormDestroy(Sender: TObject);
begin
  inherited;
  AssistMoveInFM := nil;
end;

procedure TAssistMoveInFM.FormShow(Sender: TObject);
var i: Integer;
begin
  inherited;
  SetEditState();
  TextReadOnly(Self, True);
  if (bRight) then
  begin
    for i := 0 to cxgrdtbv.ColumnCount - 1 do
    begin
      if (cxgrdtbv.Columns[i].DataBinding.FieldName = 'MovePrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'TaxPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'TaxRate') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'MoveMoney') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubTaxPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubMoney') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'AllMoney') then
        cxgrdtbv.Columns[i].Visible := bShowPrice;
    end;
  end;
  cxgrdbtblvw1.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
  GetGrd(Self, cxgrdbtblvw1);
end;

procedure TAssistMoveInFM.qyDet2AfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyDet2.FieldByName('MoveNo').AsString := qyHed.FieldByName('MoveNo').AsString;
  qyDet2.FieldByName('AutoNo').AsString := GetDateAutoNo(sTableId);
  qyDet2.FieldByName('DetAutoNo').AsString := qyDet.FieldByName('AutoNo').AsString;
  qyDet2.FieldByName('TaxRate').AsFloat := iTaxRate;
  qyDet2.FieldByName('ObjectId').AsString := qyHed.FieldByName('SendId').AsString;
end;

procedure TAssistMoveInFM.qyDet2CalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyDet2, DataFM.qyObject, ['ObjectId', 'ObjectName'], ['ObjectId', 'ObjectName']);
  if qyWareNum.Locate('sInfo', qyDet2.FieldByName('ItemId').AsString + qyHed.FieldByName('OutWare').AsString + qyDet2.FieldByName('ProType').AsString + qyDet2.FieldByName('Color').AsString + qyDet2.FieldByName('PlaceNo').AsString + qyDet2.FieldByName('ObjectId').AsString + qyDet2.FieldByName('TechName').AsString, []) then
    qyDet2.FieldByName('WareNum').AsFloat := qyWareNum.FieldByName('WareNum').AsFloat
  else
    qyDet2.FieldByName('WareNum').AsFloat := 0;
end;

procedure TAssistMoveInFM.qyDetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyDet.FieldByName('MoveNo').AsString := qyHed.FieldByName('MoveNo').AsString;
  qyDet.FieldByName('AutoNo').AsString := GetDateAutoNo(sTableId);
  qyDet.FieldByName('TaxRate').AsFloat := iTaxRate;
end;

procedure TAssistMoveInFM.qyDetCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyDet, DataFM.qyWare, ['SpoilWareId', 'SpoilWareName'], ['WareID', 'WareName']);
  CalcField(qyDet, DataFM.qyWare, ['WasteWareId', 'WasteWareName'], ['WareID', 'WareName']);
  CalcField(qyDet, DataFM.qyWare, ['ScrapWareId', 'ScrapWareName'], ['WareID', 'WareName']);
  if qyWareNum.Locate('sInfo', qyDet.FieldByName('ItemId').AsString + qyHed.FieldByName('InWare').AsString + qyDet.FieldByName('ProType').AsString + qyDet.FieldByName('Color').AsString + qyDet.FieldByName('PlaceNo').AsString + qyDet.FieldByName('ObjectId').AsString, []) then
    qyDet.FieldByName('WareNum').AsFloat := qyWareNum.FieldByName('WareNum').AsFloat
  else
    qyDet.FieldByName('WareNum').AsFloat := 0;
end;

procedure TAssistMoveInFM.qyDetMoveNumChange(Sender: TField);
begin
  inherited;
  GetDet2Num;
end;

procedure TAssistMoveInFM.qyDetScrapNumChange(Sender: TField);
begin
  inherited;
  GetDet2Num;
end;

procedure TAssistMoveInFM.qyDetScrapPriceChange(Sender: TField);
begin
  inherited;
  GetDet2Num;
end;

procedure TAssistMoveInFM.qyDetSpoilNumChange(Sender: TField);
begin
  inherited;
  GetDet2Num;
end;

procedure TAssistMoveInFM.qyDetWasteNumChange(Sender: TField);
begin
  inherited;
  GetDet2Num;
end;

procedure TAssistMoveInFM.qyHedCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyHed, DataFM.qyObject, ['SendId', 'SendName'], ['ObjectId', 'ObjectName']);
  CalcField(qyHed, DataFM.qyObject, ['AcceptId', 'AcceptName'], ['ObjectId', 'ObjectName']);
  CalcField(qyHed, DataFM.qyWare, ['OutWare', 'OutWareName'], ['WareId', 'WareName']);
  CalcField(qyHed, DataFM.qyWare, ['InWare', 'InWareName'], ['WareId', 'WareName']);
end;

procedure TAssistMoveInFM.qyHedPrintNumChange(Sender: TField);
begin
  inherited;
  ShowFMInfo(sTableId, qyHed);
end;

procedure TAssistMoveInFM.strngfldDet2ItemIdChange(Sender: TField);
begin
  inherited;
  CalcField(qyDet2, DataFM.qyItem, ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag'],
    ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag']);
end;

procedure TAssistMoveInFM.strngfldDetItemIdChange(Sender: TField);
begin
  inherited;
  CalcField(qyDet, DataFM.qyItem, ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag'],
    ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag']);
end;

procedure TAssistMoveInFM.strngfldDetTechNameChange(Sender: TField);
var i: integer;
begin
  try
    if qyTech.Active = False then qyTech.Open;
    if qyTech.Locate('sInfo', qyDet.FieldByName('ItemId').AsString + qyDet.FieldByName('TechName').AsString, []) then
    begin
      qyDet.FieldByName('MovePrice').AsFloat := qyTech.FieldByName('CurePrice').AsFloat;
    end;

    qyDet2.First;
    for i := 0 to qyDet2.RecordCount - 1 do
    begin
      qyDet2.Delete;
      qyDet2.Next;
    end;
    try
      with qyTemp do
      begin
        if Active then Close;
        SQL.Clear;
        SQL.Add('Exec prGetMoveOut ' + QuotedStr(qyDet.FieldByName('ItemId').AsString) + ',' + QuotedStr(qyDet.FieldByName('TechName').AsString) + ',' + QuotedStr(qyDet.FieldByName('DispatchID').AsString) + ',' + QuotedStr(qyDet.FieldByName('ProOrderID').AsString) + ' ');
        Open;
      end;
      if not qyTemp.eof then
      begin
        while not qyTemp.Eof do
        begin
          qyDet2.append;
          qyDet2.FieldByName('ItemId').AsString := qyTemp.FieldByName('ItemId').AsString;
          qyDet2.FieldByName('Dosage').AsFloat := qyTemp.FieldByName('Dosage').AsFloat;
          qyDet2.FieldByName('WasteRate').AsFloat := qyTemp.FieldByName('WasteRate').AsFloat;
          qyDet2.FieldByName('ProType').AsString := qyTemp.FieldByName('ProType').AsString;
          qyDet2.FieldByName('TechName').AsString := qyTemp.FieldByName('TechName').AsString;
          qyDet2.FieldByName('NextTech').AsString := qyTemp.FieldByName('NextTech').AsString;
          qyDet2.FieldByName('MoveNum').AsFloat := qyDet.fieldByName('MoveNum').AsFloat * qyDet2.fieldByName('Dosage').AsFloat * (1 + qyDet2.fieldByName('WasteRate').AsFloat / 100);
          qyDet2.Post;
          qyTemp.Next;
        end;
      end
      else
      begin
        //ShowBox('该产品未建立BOM!');
      end;
    finally
      qyTemp.Close;
    end;
  except
  end;
end;

end.


