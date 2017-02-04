unit WareInOutPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, BaseGrdPS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, dxSkinsdxBarPainter, frxClass, frxDBSet, cxGridCustomPopupMenu, cxGridPopupMenu, Menus, ADODB, dxBar, cxClasses, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxGroupBox, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,Math, cxGridDBTableView, cxGrid, cxPC, cxTextEdit, StdCtrls, ExtCtrls, cxButtonEdit, cxMemo, cxCheckBox, Adoint, cxDBLookupComboBox, cxPCdxBarPopupMenu, cxRadioGroup, dxSkinOffice2010Blue, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxNavigator, dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu, cxLabel, cxMRUEdit, dxSkinOffice2013LightGray, dxSkinOffice2016Colorful, dxSkinOffice2016Dark;

type
  TWareInOutFM = class(TBaseGrdFM)
    atncfldHedAutoID: TAutoIncField;
    strngfldHedBillNO: TStringField;
    strngfldHedWKindID: TStringField;
    qyHedWFlag: TSmallintField;
    dtmfldHedBillDate: TDateTimeField;
    strngfldHedWareMan: TStringField;
    strngfldHedSendMan: TStringField;
    strngfldHedDrawMan: TStringField;
    strngfldHedCoinName: TStringField;
    qyHedExchangeRate: TFMTBCDField;
    qyHedbTax: TBooleanField;
    qyHedbInvoice: TBooleanField;
    strngfldHedAccName: TStringField;
    strngfldHedObjectID: TStringField;
    qyHedbPrint: TBooleanField;
    intgrfldHedPrintNum: TIntegerField;
    strngfldHedSubjoinNo: TStringField;
    dtmfldHedMakeDate: TDateTimeField;
    strngfldHedMakeMan: TStringField;
    strngfldHedMakeManName: TStringField;
    qyHedAuditFlag: TSmallintField;
    strngfldHedAuditMan: TStringField;
    strngfldHedAuditDate: TStringField;
    qyHedbMaxAudit: TBooleanField;
    strngfldHedSourceNo: TStringField;
    strngfldHedEditMan: TStringField;
    strngfldHedEditManName: TStringField;
    dtmfldHedEditDate: TDateTimeField;
    strngfldHedFinaMan: TStringField;
    dtmfldHedFinaDate: TDateTimeField;
    strngfldHedYearMon: TStringField;
    strngfldHedPzWord: TStringField;
    strngfldHedPzNo: TStringField;
    strngfldHedPzId: TStringField;
    strngfldHedRemark: TStringField;
    atncfldDetAutoID: TAutoIncField;
    lbl1: TLabel;
    strngfldHedObjectCode: TStringField;
    strngfldHedWareManName: TStringField;
    strngfldHedSendManName: TStringField;
    strngfldHedDrawManName: TStringField;
    qyHedbRed: TBooleanField;
    strngfldHedObjectName: TStringField;
    strngfldHedSeller: TStringField;
    strngfldHedSellerManName: TStringField;
    strngfldHedPayMode: TStringField;
    cxEmp: TcxDBButtonEdit;
    lbl7: TLabel;
    lbl8: TLabel;
    cxSubjoinNO: TcxDBButtonEdit;
    cxgrdItemCode: TcxGridDBColumn;
    cxgrdItemName: TcxGridDBColumn;
    cxgrdItemSpc: TcxGridDBColumn;
    cxgrdItemPic: TcxGridDBColumn;
    cxgrdWareID: TcxGridDBColumn;
    cxgrdProType: TcxGridDBColumn;
    cxgrdItemUnit: TcxGridDBColumn;
    cxgrdWareNum: TcxGridDBColumn;
    cxgrdMainNum: TcxGridDBColumn;
    strngfldDetItemId: TStringField;
    strngfldDetItemUnit: TStringField;
    strngfldDetSubUnit: TStringField;
    strngfldDetWareId: TStringField;
    e: TStringField;
    strngfldDetColor: TStringField;
    strngfldDetBatchNo: TStringField;
    strngfldDetPlaceNo: TStringField;
    strngfldDetCompactNo: TStringField;
    strngfldDetObjectId: TStringField;
    strngfldDetSjNo: TStringField;
    strngfldDetsOrderNo: TStringField;
    strngfldDetTechName: TStringField;
    strngfldDetInDate: TStringField;
    strngfldDetPState: TStringField;
    strngfldDetTempNo: TStringField;
    qyDetMainNum: TFMTBCDField;
    qyDetMainPrice: TFMTBCDField;
    qyDetTaxPrice: TFMTBCDField;
    qyDetMainMoney: TFMTBCDField;
    qyDetSubNum: TFMTBCDField;
    qyDetSubPrice: TFMTBCDField;
    qyDetSubTaxPrice: TFMTBCDField;
    qyDetSubMoney: TFMTBCDField;
    qyDetTaxRate: TFMTBCDField;
    qyDetTaxMoney: TFMTBCDField;
    qyDetAllMoney: TFMTBCDField;
    qyDetOkPrice: TFMTBCDField;
    qyDetOkMoney: TBCDField;
    qyDetMadePrice: TFMTBCDField;
    qyDetMadeTaxPrice: TFMTBCDField;
    qyDetMadeMoney: TFMTBCDField;
    qyDetMadeTaxRate: TFMTBCDField;
    qyDetMadeTaxMoney: TFMTBCDField;
    qyDetMadeAllMoney: TFMTBCDField;
    strngfldDetSubjoinNo: TStringField;
    qyDetbEnd: TBooleanField;
    qyDetEndNum: TFMTBCDField;
    intgrfldDetrfID: TIntegerField;
    qyDetrfNum: TFMTBCDField;
    strngfldDetTaskNo: TStringField;
    strngfldDetQcStockNo: TStringField;
    strngfldDetStockRecNo: TStringField;
    strngfldDetRemark: TStringField;
    strngfldDetItemPic: TStringField;
    strngfldDetWareName: TStringField;
    cxgrdExchRate: TcxGridDBColumn;
    cxgrdMainPrice: TcxGridDBColumn;
    cxgrdMainMoney: TcxGridDBColumn;
    cxgrdSubUnit: TcxGridDBColumn;
    cxgrdSubNum: TcxGridDBColumn;
    cxgrdRemark: TcxGridDBColumn;
    qyWKind: TADOQuery;
    strngfldHedAuditManName: TStringField;
    strngfldDetBillNO: TStringField;
    intgrfldDetINo: TIntegerField;
    qyDetiFlag: TIntegerField;
    qyDetItemCode: TStringField;
    qyDetItemName: TStringField;
    qyDetItemSpc: TStringField;
    dtmfldHedMaxAuditDate: TDateTimeField;
    qyHedbSelect: TBooleanField;
    qyWareNum: TADOQuery;
    qyHedbAuto: TBooleanField;
    Label14: TLabel;
    cxMoRemark: TcxDBMemo;
    cxPupEdtRemark: TcxDBPopupEdit;
    Label15: TLabel;
    cxRgpSignFlag: TcxDBRadioGroup;
    qyHedSignFlag: TSmallintField;
    strngfldDetHtNo: TStringField;
    strngfldDetAutoNo: TStringField;
    strngfldDetSaleOrderNo: TStringField;
    blnfldDetbSelect: TBooleanField;
    strngfldDetRfNo: TStringField;
    strngfldDetStockNo: TStringField;
    strngfldDetSaleSenderNo: TStringField;
    strngfldHedObjectTel: TStringField;
    strngfldHedAddress: TStringField;
    blnfldHedbFuHe: TBooleanField;
    fltfldDetWareNum: TFloatField;
    qyDetStockID: TStringField;
    qyDetSaleSenderId: TStringField;
    qyDetSaleOrderId: TStringField;
    qyDetWeight: TFMTBCDField;
    qyDetAllWeight: TFMTBCDField;
    dxbrpmnFuHe: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    qyDetEmpId: TStringField;
    qyDetEmpName: TStringField;
    strngfldDetObjectName: TStringField;
    strngfldHedSubjoinTableId: TStringField;
    strngfldHedWKindName: TStringField;
    strngfldDetTaskId: TStringField;
    strngfldDetQcStockId: TStringField;
    strngfldDetStockRecId: TStringField;
    blnfldHedbCashDeal: TBooleanField;
    qyHedObjectMobile: TStringField;
    dxbrpmnInvoice: TdxBarPopupMenu;
    dxbrbtnJZ: TdxBarButton;
    dxbrbtnNoJZ: TdxBarButton;
    qyDetProOrderNo: TStringField;
    qyDetProOrderId: TStringField;
    cxgrdWareName: TcxGridDBColumn;
    qyDetExchRate: TFMTBCDField;
    qyDetMasterNo: TStringField;
    qyDetDispatchNo: TStringField;
    qyDetDispatchId: TStringField;
    qyDetMatOutNo: TStringField;
    qyDetMatOutId: TStringField;
    qyHedObjectLinkMan: TStringField;
    qyHedObjectFax: TStringField;
    qyHedFactMoney: TFMTBCDField;
    qyHedPayMoney: TFMTBCDField;
    qyHedDisCount: TFMTBCDField;
    qyDetExchangeRate: TFMTBCDField;
    cxObject: TcxDBMRUEdit;
    Label10: TLabel;
    cxWareName: TcxDBButtonEdit;
    qyHedHWareId: TWideStringField;
    qyHedHWareName: TWideStringField;
    cxgrdTaxPrice: TcxGridDBColumn;
    cxgrdTaxRate: TcxGridDBColumn;
    cxgrdTaxMoney: TcxGridDBColumn;
    cxgrdAllMoney: TcxGridDBColumn;
    procedure FormDestroy(Sender: TObject);
    procedure cxEdtNoPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDelClick(Sender: TObject);
    procedure btAddLClick(Sender: TObject);
    procedure btDelLClick(Sender: TObject);
    procedure qyHedCalcFields(DataSet: TDataSet);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxDBButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxgrdItemCodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxgrdItemCodePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure strngfldDetItemIdChange(Sender: TField);
    procedure qyDetCalcFields(DataSet: TDataSet);
    procedure cxgrdMainNumPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdMainPricePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdSubNumPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdProTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxgrdWareIDPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btFindClick(Sender: TObject);
    procedure btExitClick(Sender: TObject);
    procedure btUnCheckClick(Sender: TObject);
    procedure btCheckClick(Sender: TObject);
    procedure intgrfldHedPrintNumChange(Sender: TField);
    procedure btRefClick(Sender: TObject);
    procedure cxRgpFlagPropertiesChange(Sender: TObject);
    procedure qyDetAfterInsert(DataSet: TDataSet);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxgrdObjectIdPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxgrdtbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxbrbtnJZClick(Sender: TObject);
    procedure dxbrbtnNoJZClick(Sender: TObject);
    procedure cxgrdExchRatePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdColorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure strngfldDetObjectIdChange(Sender: TField);
    procedure strngfldHedObjectIDChange(Sender: TField);
    procedure cxObjectPropertiesButtonClick(Sender: TObject);
    procedure cxWareNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure qyHedHWareIdChange(Sender: TField);
    procedure cxgrdTaxRatePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdTaxPricePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdMainMoneyPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdAllMoneyPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
    WKindID, WKindName: string;
    INo: Integer;
  public
    { Public declarations }
    function WareCheck(WKindID: string; IoFlag: Integer): Boolean;
    // 出入库审核  WKindID：业务类型   IoFlag：1 表示入库审核 -1 表示出口审核 其它不操作
    function WareUnCheck(WKindID: string; IoFlag: Integer): Boolean;
    // 出入库 反审核  WKindID：业务类型   IoFlag：1 表示入库反审核 -1 表示出库反审核 其它不操作
    procedure GrdShowPrice;
  end;

var
  WareInOutFM: TWareInOutFM;

implementation

uses
  PublicPS, ControlPublicPS, DataPS, PrvQPS, CustQPS, DeptQPS, EmpQPS, ItemQPS, WareInOutFIndPS, WareItemQPS;

{$R *.dfm}

function TWareInOutFM.WareCheck(WKindID: string; IoFlag: Integer): Boolean;
var
  Str: string;
begin
  try
    if (trim(cxEdtNo.Text) = '') or (qyHed.Active = false) then
      exit;
    qyHed.UpdateCursorPos;
    qyHed.Recordset.Resync(AdAffectcurrent, AdResyncAllValues);
    qyHed.Resync([]);
    if qyHed.FieldByName('bAuto').AsBoolean then
    begin
      ShowBox('自动生成单据,不能审核');
      Exit;
    end;
    if qyHed.FieldByName('bMaxAudit').asBoolean then
    begin
      ShowWarn('本单已经审核完毕,不需要在进行审核!');
      exit;
    end;
    if bHaveData(DataFM.qyTemp, 'select BillNo from WareCheckHDTB where ISNULL(bMaxAudit,0)=0') <> '' then
    begin
      Str := bHaveData(DataFM.qyTemp, 'select BillNo from WareCheckHDTB where ISNULL(bMaxAudit,0)=0');
      ShowBox('有盘点单 <' + Str + '> 还没有审核,不能审核');
      Exit;
    end;
    if CheckWareHasMonth(qyHed.FieldByName('BillDate').AsDateTime) then
    begin
      ShowWarn('单据日期所在月份已经做了仓库月结,你不能对该月数据在进行操作');
      exit;
    end;
    if HasGetMaxAudit(sTableId, qyHed.FieldByName('AuditFlag').asInteger + 1) then
    begin
      if IoFlag = -1 then // 表示出库的就要判断库存
      begin
        try
          with DataFM.spTemp do
          begin
            if Active then
              close;
            Parameters.Clear;
            Procedurename := 'prCheckWareNum;1';
            Parameters.AddParameter.Name := '@BillNO';
            Parameters[0].Direction := pdInPut;
            Parameters[0].DataType := ftString;
            Parameters[0].Size := 30;
            Parameters[0].Value := trim(cxEdtNo.Text);
            Open;
          end;
          if DataFM.spTemp.FieldByName('CheckResult').AsString <> '' then
          begin
            ShowWarn(DataFM.spTemp.FieldByName('CheckResult').AsString + ' 库存不足，不能审核');
            Exit;
          end;
        finally
          DataFM.spTemp.close;
        end;
      end;
      if AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.Text), qyHed, 1) then // 审核成功就加库存
      begin
        try
          with DataFM.spTemp do
          begin
            if Active then
              close;
            Parameters.Clear;
            Procedurename := 'prUpDateInOutWareNum;1';
            Parameters.AddParameter.Name := '@BillNO';
            Parameters[0].Direction := pdInPut;
            Parameters[0].DataType := ftString;
            Parameters[0].Size := 30;
            Parameters[0].Value := trim(cxEdtNo.Text);
            Parameters.AddParameter.Name := '@IoFlag';
            Parameters[1].Direction := pdInPut;
            Parameters[1].DataType := ftInteger;
            Parameters[1].Value := IoFlag;
            Open;
          end;
        finally
          DataFM.spTemp.close;
        end;
      end;
    end
    else
      AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.Text), qyHed, 1);
    btRefClick(Self);
    SetLog(sFMName, trim(cxEdtNo.Text), '审核');
    ShowFMInfo(sTableId, qyHed);
    Result := True;
  except
    Result := false;
  end;
end;

function TWareInOutFM.WareUnCheck(WKindID: string; IoFlag: Integer): Boolean;
var
  Str: string;
begin
  try
    if (trim(cxEdtNo.Text) = '') or (qyHed.Active = false) then
      exit;
    qyHed.UpdateCursorPos;
    qyHed.Recordset.Resync(AdAffectcurrent, AdResyncAllValues);
    qyHed.Resync([]);
    if qyHed.FieldByName('bAuto').AsBoolean then
    begin
      ShowBox('自动生成单据,不能反审核');
      Exit;
    end;
    if qyHed.FieldByName('AuditFlag').asInteger = 0 then
    begin
      ShowBox('本单未进行审核,不需要反审核!');
      exit;
    end;
    if qyHed.FieldByName('bFuHe').AsBoolean then
    begin
      ShowBox('该单已经复核!');
      Exit;
    end;
    if qyHed.FieldByName('bInvoice').AsBoolean then
    begin
      ShowBox('该单已经记账!');
      Exit;
    end;
    if CheckWareHasMonth(qyHed.FieldByName('BillDate').AsDateTime) then
    begin
      ShowWarn('单据日期所在月份已经做了仓库月结,你不能对该月数据再进行操作');
      exit;
    end;
    if bHaveData(DataFM.qyTemp, 'select BillNo from WareCheckHDTB where ISNULL(bMaxAudit,0)=0') <> '' then
    begin
      Str := bHaveData(DataFM.qyTemp, 'select BillNo from WareCheckHDTB where ISNULL(bMaxAudit,0)=0');
      ShowBox('有盘点单 <' + Str + '> 还没有审核,不能反审核');
      Exit;
    end;

    if HasGetMaxAudit(sTableId, qyHed.FieldByName('AuditFlag').asInteger) then
    begin
      if IoFlag = 1 then // 表示出库的就要判断库存
      begin
        try
          with DataFM.spTemp do
          begin
            if Active then
              close;
            Parameters.Clear;
            Procedurename := 'prCheckWareNum;1';
            Parameters.AddParameter.Name := '@BillNO';
            Parameters[0].Direction := pdInPut;
            Parameters[0].DataType := ftString;
            Parameters[0].Size := 30;
            Parameters[0].Value := trim(cxEdtNo.Text);
            Open;
          end;
          if DataFM.spTemp.FieldByName('CheckResult').AsString <> '' then
          begin
            ShowWarn(DataFM.spTemp.FieldByName('CheckResult').AsString + ' 库存不足，不能反审核');
            Exit;
          end;

        finally
          DataFM.spTemp.close;
        end;
      end;
      if AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.Text), qyHed, -1) then // 审核成功就加库存
      begin
        try
          with DataFM.spTemp do
          begin
            if Active then
              close;
            Parameters.Clear;
            Procedurename := 'prUpDateInOutWareNum;1';
            Parameters.AddParameter.Name := '@BillNO';
            Parameters[0].Direction := pdInPut;
            Parameters[0].DataType := ftString;
            Parameters[0].Size := 30;
            Parameters[0].Value := trim(cxEdtNo.Text);
            Parameters.AddParameter.Name := '@IoFlag';
            Parameters[1].Direction := pdInPut;
            Parameters[1].DataType := ftInteger;
            Parameters[1].Value := -IoFlag;
            Open;
          end;
        finally
          DataFM.spTemp.close;
        end;
      end;
    end
    else
      AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.Text), qyHed, -1);
    btRefClick(Self);
    SetLog(sFMName, trim(cxEdtNo.Text), '反审核');
    ShowFMInfo(sTableId, qyHed);
    Result := True;
  except
    Result := false;
  end;
end;

procedure TWareInOutFM.btAddClick(Sender: TObject);
begin
  try
    if qyHed.Active = false then
      exit;
    if (bRight) and (bAdd = false) then
    begin
      ShowWarn('你没有本单据的添加权限,不能操作');
      exit;
    end;

    TextReadOnly(Self, false);
    qyHed.Append;
    inherited;
    qyHed.FieldByName('BillNO').AsString := GetTableNo(sTableId, 'BillNO');
    qyHed.FieldByName('WKindID').AsString := sTableId;

    if qyWKind.Active = false then
      qyWKind.Open;
    if qyWKind.Locate('WKindID', sTableId, []) then
      qyHed.FieldByName('WFlag').AsInteger := qyWKind.FieldByName('WFlag').AsInteger;
    qyHed.FieldByName('HWareId').AsString := '00';
    qyHed.FieldByName('HWareName').AsString := '仓库资料';
    qyHed.FieldByName('SignFlag').AsInteger := 1;
    qyHed.FieldByName('BillDate').AsDateTime := StrToDateTime(FormatDateTime('yyyy-mm-dd', SysDateTime));
    qyHed.FieldByName('MakeMan').AsString := LoginId;
    qyHed.FieldByName('MakeManName').AsString := LoginName;
    qyHed.FieldByName('MakeDate').AsDateTime := SysDateTime;
    qyHed.FieldByName('AuditFlag').asInteger := 0;
    qyDet.Edit;
  except
    on E: Exception do
      ShowWarn(E.Message);
  end;
end;

procedure TWareInOutFM.btAddLClick(Sender: TObject);
begin
  try
    qyDet.Append;
  except
  end;
end;

procedure TWareInOutFM.btCancelClick(Sender: TObject);
begin
  qyDet.CancelBatch();
  qyHed.CancelBatch();
  TextReadOnly(Self, True);
  inherited;
end;

procedure TWareInOutFM.btCheckClick(Sender: TObject);
begin
  try
  //inherited;
    if WareCheck(sTableId, qyHed.FieldByName('WFlag').AsInteger * qyHed.FieldByName('SignFlag').AsInteger) then
    begin
      if (sTableId = 'StockIn') then
      begin
        //更新价格表信息
        ExeSql(' Exec prUpdateItemPrice' + QuotedStr(sTableId) + ',' + QuotedStr(Trim(cxEdtNo.Text)));
        //反写采购订单是否入完库
        ExeSql('Exec PrUpdateRfResult ' + '''%' + trim(cxEdtNo.Text) + '%''' + ',' + '''采购入库''');
      end;
      if (sTableId = 'SaleOut') then
      begin
        ExeSql('Exec PrUpdateRfResult ' + '''%' + trim(cxEdtNo.Text) + '%''' + ',' + '''销售出库''');
      end;
    end;
  except
    on E: Exception do
    begin
      ShowWarn(E.Message);
    end;
  end;
end;

procedure TWareInOutFM.btDelClick(Sender: TObject);
var
  i: Integer;
  sBiilNo: string;
begin
  inherited;
  if (cxEdtNo.Text = '') or (qyHed.Active = false) then
    exit;
  qyHed.UpdateCursorPos;
  qyHed.Recordset.Resync(AdAffectcurrent, AdResyncAllValues);
  qyHed.Resync([]);
  if qyHed.FieldByName('bAuto').AsBoolean then
  begin
    ShowBox('自动生成单据,不能删除');
    Exit;
  end;
  if qyHed.FieldByName('AuditFlag').asInteger > 0 then
  begin
    ShowWarn('本单已经审核,不能删除!');
    exit;
  end;
  if (bRight) and (bDelPart) and (bDelAll = false) and (qyHed.FieldByName('MakeMan').AsString <> LoginEmpId) then
  begin
    ShowWarn('你只能删除自己做的单据!');
    exit;
  end;
  if ShowDlg('确实要删除该单据吗?') then
  begin
    try
      sBiilNo := trim(cxEdtNo.Text);
      //更新收款单信息
      if (sTableId = 'SaleOut') then
      begin
        ExecSql(DataFM.qyTemp, 'exec PrInvoiceToPay' + Quotedstr(sBiilNo) + ',-1');
      end;

      ExeSql('Delete BomMatOutDTTB where BillNo=' + QuotedStr(sBiilNo));
      ExeSql('Delete WareInOutDTTB where BillNo=' + QuotedStr(sBiilNo));
      ExeSql('Delete WareInOutHDTB where BillNo=' + QuotedStr(sBiilNo));
      with qyHed do
      begin
        if Active then
          close;
        SQL.Clear;
        SQL.Add('select * from WareInOutHDTB where isnull(bMaxAudit,0)=0 and WKindID=' + Quotedstr(sTableId));
        if (bRight) and (bFindPart = false) then
          SQL.Add(' and MakeMan=' + Quotedstr(LoginEmpId));
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

procedure TWareInOutFM.btDelLClick(Sender: TObject);
begin
  try
    qyDet.Delete;
  except
  end;
end;

procedure TWareInOutFM.btEditClick(Sender: TObject);
var
  i: Integer;
begin
  if qyHed.RecordCount <= 0 then
    exit;
  GetServerTime;
  qyHed.UpdateCursorPos;
  qyHed.Recordset.Resync(AdAffectcurrent, AdResyncAllValues);
  qyHed.Resync([]);
  if qyHed.FieldByName('bAuto').AsBoolean then
  begin
    ShowBox('自动生成单据,不能编辑');
    Exit;
  end;
  if qyHed.FieldByName('bFuHe').AsBoolean then
  begin
    ShowBox('该单已经复核,不能修改');
    Exit;
  end;
  if (bRight) and (bEditPrice) and (qyHed.FieldByName('AuditFlag').asInteger > 0) then
  begin
    TextReadOnly(Self, True);
    cxgrdtbv.OptionsData.Editing := true;
    for i := 0 to cxgrdtbv.ColumnCount - 1 do
    begin
      if (cxgrdtbv.Columns[i].DataBinding.FieldName = 'MainPrice') or (cxgrdtbv.Columns[i].DataBinding.FieldName = 'TaxPrice') or (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubPrice') or (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubTaxPrice') then
        cxgrdtbv.Columns[i].Options.Editing := true
      else
        cxgrdtbv.Columns[i].Options.Editing := False;
    end;
    SetButtonState(btAdd, btEdit, btDel, btAddL, btDelL, btSave, btCancel, btRefer, btFind, btExport, btPrint, btCheck, btUnCheck, btExit, false, false, false, false, false, true, true, false, false, false, false, false, false, true);
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
    inherited;
    TextReadOnly(Self, false);
    PanelReadOnly(pnlInfo, True);
  end;
  qyHed.Edit;
  qyHed.FieldByName('EditMan').AsString := LoginEmpId;
  qyHed.FieldByName('EditManName').AsString := LoginEmpName;
  qyHed.FieldByName('EditDate').AsDateTime := SysDateTime;
end;

procedure TWareInOutFM.btExitClick(Sender: TObject);
begin
  inherited;
  if bCanClose then
    Self.Close;
end;

procedure TWareInOutFM.btFindClick(Sender: TObject);
begin
  inherited;
  try
    if not Assigned(WareInOutFIndFM) then
      WareInOutFIndFM := TWareInOutFIndFM.Create(Application);
    WareInOutFIndFM.dsFind := dsHed;
    WareInOutFIndFM.cxgrdtbv.DataController.DataSource := dsHed;
    WareInOutFIndFM.sWKindID := sTableId;
    WareInOutFIndFM.bRight := bRight;
    WareInOutFIndFM.bFindAll := bFindAll;
    WareInOutFIndFM.ShowModal;
   { if WareInOutFindFM.sBillNo <> '' then
    begin
      with qyHed do
      begin
        if Active then Close;
        SQL.Clear;
        SQL.Add('select * from WareInOutHDTB where BillNo in (' + WareInOutFindFM.sBillNo + ')');
        Open;
      end;
    end;  }
  finally
    WareInOutFIndFM.Free;
    WareInOutFIndFM := nil
  end;
end;

procedure TWareInOutFM.btRefClick(Sender: TObject);
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
    end;
  except
  end;
end;

procedure TWareInOutFM.btSaveClick(Sender: TObject);
var
  sNewNo: string;
  i: Integer;
begin
  try
    if trim(cxEdtNo.Text) = '' then
      exit;
    if qyHed.FieldByName('ObjectName').AsString = '' then
    begin
      ShowWarn('请选择单位');
      exit;
    end;
    if qyHed.FieldByName('HWareName').AsString = '' then
    begin
      ShowWarn('请选择仓库');
      exit;
    end;
   { if CheckBillNoAudit('WareInOutHDTB', 'BillNO', trim(cxEdtNo.Text)) then
    begin
      ShowWarn('本单已被其他人审核,你不能保存');
      exit;
    end;  }

    // 判断该月是否月结
    if CheckWareHasMonth(qyHed.FieldByName('BillDate').AsDateTime) then
    begin
      ShowWarn('单据日期所在月份已经做了仓库月结');
      exit;
    end;

    qyHed.UpdateBatch;
    qyDet.UpdateBatch;

    //将收款金额直接更新到收款单里
    if (sTableId = 'SaleOut') then
    begin
      ExecSql(DataFM.qyTemp, 'exec PrInvoiceToPay' + Quotedstr(qyHed.FieldByName('BillNo').AsString) + ',1');
    end;
    qyHed.UpdateCursorPos;
    qyHed.Recordset.Resync(AdAffectCurrent, AdResyncAllValues);
    qyHed.Resync([]);
    if cxEdtEditManName.Text <> '' then
      SetLog(sFMName, trim(cxEdtNo.Text), '修改')
    else
      SetLog(sFMName, trim(cxEdtNo.Text), '添加');
    inherited;
    ShowBox('保存成功!');
  except
    on E: Exception do
    begin
      if pos('不能将值', E.Message) > 0 then
        ShowBox('请将必填项填写完整!')
      else if pos('插入重复键', E.Message) > 0 then
      begin
        try
          sNewNo := GetTableNo(sTableId, 'BillNO');
          ;
          if qyHed.FieldByName('BillNO').AsString = sNewNo then
          begin
            ShowBox('单号有重复!');
            exit;
          end;
          if qyHed.State = dsBrowse then
            qyHed.Edit;
          if qyDet.State = dsBrowse then
            qyDet.Edit;

          qyHed.FieldByName('BillNO').AsString := sNewNo;
          qyDet.First;
          for i := 0 to qyDet.RecordCount - 1 do
          begin
            if qyDet.State = dsBrowse then
              qyDet.Edit;
            qyDet.FieldByName('BillNO').AsString := sNewNo;
            qyDet.Next;
          end;
          qyHed.UpdateBatch;
          qyDet.UpdateBatch;
          TextReadOnly(Self, True);

          inherited;
          ShowBox('保存成功!');
        except
          ShowBox('不能保存重复信息!');
        end;
      end
      else
      begin
        ShowWarn(E.Message);
      end;
    end;
  end;
end;

procedure TWareInOutFM.btUnCheckClick(Sender: TObject);
begin
  try
  //inherited;
    if WareUnCheck(sTableId, qyHed.FieldByName('WFlag').AsInteger * qyHed.FieldByName('SignFlag').AsInteger) then
    begin
      if (sTableId = 'StockIn') then
      begin
        //反写采购订单是否入完库
        ExeSql('Exec PrUpdateRfResult ' + '''%' + trim(cxEdtNo.Text) + '%''' + ',' + '''采购入库''');
      end;
      if (sTableId = 'SaleOut') then
      begin
        ExeSql('Exec PrUpdateRfResult ' + '''%' + trim(cxEdtNo.Text) + '%''' + ',' + '''销售出库''');
      end;
    end;
  except
    on E: Exception do
    begin
      ShowWarn(E.Message);
    end;
  end;
end;

procedure TWareInOutFM.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  try
    if btSave.Enabled = false then
      exit;
    try
      EmpQFM := TEmpQFM.Create(nil);
      EmpQFM.iSelectKind := 2; // 单选
      EmpQFM.ShowModal;
      if EmpQFM.sId <> '' then
      begin
        if qyHed.State = dsBrowse then
          qyHed.Edit;
        qyHed.FieldByName('Seller').AsString := EmpQFM.sId;
      end;
    finally
      EmpQFM.Free;
      EmpQFM := nil;
    end;
  except
  end;
end;

procedure TWareInOutFM.cxDBButtonEdit3PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  try
    if btSave.Enabled = false then
      exit;
    try
      EmpQFM := TEmpQFM.Create(nil);
      EmpQFM.iSelectKind := 2; // 单选
      EmpQFM.ShowModal;
      if EmpQFM.sId <> '' then
      begin
        if qyHed.State = dsBrowse then
          qyHed.Edit;
        qyHed.FieldByName('WareMan').AsString := EmpQFM.sId;
      end;
    finally
      EmpQFM.Free;
      EmpQFM := nil;
    end;
  except
  end;
end;

procedure TWareInOutFM.cxEdtNoPropertiesChange(Sender: TObject);
begin
  inherited;
  if (qyDet.Active) and (qyDet.State in [dsEdit, dsInsert]) and (qyDet.FieldByName('BillNO').AsString = '') then
    exit;
  with qyDet do
  begin
    if Active then
      close;
    SQL.Clear;
    SQL.Add('select * from WareInOutDTTB where BillNO=' + Quotedstr(trim(cxEdtNo.Text)) + ' Order by AutoId');
    Open;
  end;
  ShowFMInfo(sTableId, qyHed);
end;

procedure TWareInOutFM.cxgrdAllMoneyPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := false;
  if DisplayValue = '' then
    DisplayValue := 0;
  if qyDet.State = dsBrowse then
    qyDet.Edit;
  qyDet.FieldByName('AllMoney').AsFloat := RoundTo(DisplayValue,-iMoneyPoint);
  if qyDet.FieldByName('MainNum').AsFloat <> 0 then
    qyDet.FieldByName('TaxPrice').AsFloat := RoundTo(DisplayValue / qyDet.FieldByName('MainNum').AsFloat,-iPricePoint);
  qyDet.FieldByName('MainPrice').AsFloat := RoundTo(qyDet.FieldByName('TaxPrice').AsFloat / (1 + qyDet.FieldByName('TaxRate').AsFloat / 100),-iPricePoint);
  UpdateData(cxgrdtbv, 'MainNum');
end;

procedure TWareInOutFM.cxgrdColorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if qyHed.FieldByName('WFlag').AsInteger * qyHed.FieldByName('SignFlag').AsInteger = 1 then //入库
  begin
    ColorSelect(btSave.Enabled, qyDet, 'Color', 2);
  end
  else //出库取库存字段
  begin
    if btSave.Enabled = false then
      exit;
    try
      WareItemQFM := TWareItemQFM.Create(nil);
      WareItemQFM.iSelectKind := 2;
      if qyDet.FieldByName('ItemId').AsString <> '' then
        WareItemQFM.sItemId := qyDet.FieldByName('ItemId').AsString;
      if qyDet.FieldByName('WareId').AsString <> '' then
        WareItemQFM.sWareId := qyDet.FieldByName('WareId').AsString;
      WareItemQFM.btFindClick(Sender);
      WareItemQFM.ShowModal;
      if WareItemQFM.bHasSelect then
      begin
        qyDet.Edit;
        qyDet.FieldByName('ItemId').AsString := WareItemQFM.qyFind.FieldByName('ItemId').AsString;
        qyDet.FieldByName('ItemCode').AsString := WareItemQFM.qyFind.FieldByName('ItemCode').AsString;
        qyDet.FieldByName('ItemName').AsString := WareItemQFM.qyFind.FieldByName('ItemName').AsString;
        qyDet.FieldByName('ItemSpc').AsString := WareItemQFM.qyFind.FieldByName('ItemSpc').AsString;
        qyDet.FieldByName('WareId').AsString := WareItemQFM.qyFind.FieldByName('WareId').AsString;
        qyDet.FieldByName('ProType').AsString := WareItemQFM.qyFind.FieldByName('ProType').AsString;
        qyDet.FieldByName('Color').AsString := WareItemQFM.qyFind.FieldByName('Color').AsString;
        qyDet.FieldByName('PlaceNo').AsString := WareItemQFM.qyFind.FieldByName('PlaceNo').AsString;
      end;
    finally
      WareItemQFM.Free;
      WareItemQFM := nil;
    end;
  end;
end;

procedure TWareInOutFM.cxgrdExchRatePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := false;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('ExchRate').AsFloat := DisplayValue;
  begin
    if qyDet.FieldByName('iFlag').asInteger = 0 then
      qyDet.FieldByName('SubNum').AsFloat := qyDet.FieldByName('MainNum').AsFloat * DisplayValue
    else
    begin
      if DisplayValue <> 0 then
        qyDet.FieldByName('SubNum').AsFloat := qyDet.FieldByName('MainNum').AsFloat / DisplayValue;
    end;
  end;
end;

procedure TWareInOutFM.cxgrdItemCodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  i: Integer;
begin
  if btSave.Enabled = false then
    exit;
  try
    ItemQFM := TItemQFM.Create(nil);
    ItemQFM.iSelectKind := 1;
    ItemQFM.btFindClick(Sender);
    ItemQFM.ShowModal;
    if ItemQFM.bHasSelect then
    begin
      ItemQFM.qyFind.Filter := ' bSelect=1';
      ItemQFM.qyFind.Filtered := True;
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
        qyDet.FieldByName('MainNum').AsFloat := ItemQFM.qyFind.FieldByName('BillNum').AsFloat;
        ItemQFM.qyFind.Next;
      end;
    end;
  finally
    ItemQFM.Free;
    ItemQFM := nil;
  end;
end;

procedure TWareInOutFM.cxgrdItemCodePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  DisplayValue := VarToStr(DisplayValue);
  if DisplayValue = '' then
    Exit;
  if DataFM.qyItem.Active = false then
    DataFM.qyItem.Open;
  if not DataFM.qyItem.Locate('ItemCode', DisplayValue, []) then
  begin
    //ShowWarn('没有该产品代号！');
    Exit;
  end;
  if DataFM.qyItem.Locate('ItemCode', DisplayValue, []) then
  begin
    qyDet.Edit;
    qyDet.FieldByName('ItemID').AsString := DataFM.qyItem.FieldByName('ItemID').AsString;
  end;
end;

procedure TWareInOutFM.cxgrdMainMoneyPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := false;
  if DisplayValue = '' then
    DisplayValue := 0;
  if qyDet.State = dsBrowse then
    qyDet.Edit;
  qyDet.FieldByName('MainMoney').AsFloat := RoundTo(DisplayValue,-iMoneyPoint);
  if qyDet.FieldByName('MainNum').AsFloat <> 0 then
    qyDet.FieldByName('MainPrice').AsFloat := RoundTo(DisplayValue / qyDet.FieldByName('MainNum').AsFloat,-iPricePoint);
  UpdateData(cxgrdtbv, 'MainPrice');
end;

procedure TWareInOutFM.cxgrdMainNumPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := false;
  if DisplayValue = '' then
    DisplayValue := 0;
  if qyDet.State = dsBrowse then
    qyDet.Edit;
 { if (qyDet.FieldByName('RfNum').AsFloat > 0) and (DisplayValue > qyDet.FieldByName('RfNum').AsFloat) then
  begin
    ErrorText := '数量不能大于引用数量,请按ESC键取消修改';
    Error := true;
  end
  else}
  begin
    qyDet.FieldByName('MainNum').AsFloat := DisplayValue;
    qyDet.FieldByName('MainMoney').AsFloat := RoundTo(DisplayValue * qyDet.FieldByName('MainPrice').AsFloat,-iMoneyPoint);
    qyDet.FieldByName('AllMoney').AsFloat := RoundTo(DisplayValue * qyDet.FieldByName('TaxPrice').AsFloat,-iMoneyPoint);
    qyDet.FieldByName('TaxMoney').AsFloat := RoundTo(qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('MainMoney').AsFloat,-iMoneyPoint);
    qyDet.FieldByName('SubMoney').AsFloat := RoundTo(qyDet.FieldByName('MainMoney').AsFloat,-iMoneyPoint);
    if qyDet.FieldByName('iFlag').asInteger = 0 then
      qyDet.FieldByName('SubNum').AsFloat := RoundTo(DisplayValue * qyDet.FieldByName('ExchRate').AsFloat,-iNumPoint)
    else
    begin
      if qyDet.FieldByName('ExchRate').AsFloat <> 0 then
        qyDet.FieldByName('SubNum').AsFloat := RoundTo(DisplayValue / qyDet.FieldByName('ExchRate').AsFloat,-iNumPoint);
    end;
  end;
  qyDet.Post;
  if qyDet.State = dsBrowse then
    qyDet.Edit;
end;

procedure TWareInOutFM.cxgrdMainPricePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := false;
  if DisplayValue = '' then
    DisplayValue := 0;
  if qyDet.State = dsBrowse then
    qyDet.Edit;
  qyDet.FieldByName('MainPrice').AsFloat := RoundTo(DisplayValue,-iPricePoint);
  qyDet.FieldByName('TaxPrice').AsFloat := RoundTo(DisplayValue * (1 + qyDet.FieldByName('TaxRate').AsFloat / 100),-iPricePoint);
  qyDet.FieldByName('MainMoney').AsFloat := RoundTo(qyDet.FieldByName('MainNum').AsFloat * DisplayValue,-iMoneyPoint);
  qyDet.FieldByName('AllMoney').AsFloat := RoundTo(qyDet.FieldByName('MainNum').AsFloat * qyDet.FieldByName('TaxPrice').AsFloat,-iMoneyPoint);
  qyDet.FieldByName('TaxMoney').AsFloat := RoundTo(qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('MainMoney').AsFloat,-iMoneyPoint);
  qyDet.FieldByName('SubMoney').AsFloat := RoundTo(qyDet.FieldByName('MainMoney').AsFloat,-iMoneyPoint);
  if qyDet.FieldByName('iFlag').asInteger = 0 then
  begin
    if qyDet.FieldByName('ExchRate').AsFloat <> 0 then
      qyDet.FieldByName('SubPrice').AsFloat := RoundTo(DisplayValue / qyDet.FieldByName('ExchRate').AsFloat,-iPricePoint);
  end
  else
  begin
    qyDet.FieldByName('SubPrice').AsFloat := RoundTo(DisplayValue * qyDet.FieldByName('ExchRate').AsFloat,-iPricePoint);
  end;
  qyDet.FieldByName('SubTaxPrice').AsFloat := RoundTo(qyDet.FieldByName('SubPrice').AsFloat * (1 + qyDet.FieldByName('TaxRate').AsFloat / 100),-iPricePoint);
  qyDet.Post;
  if qyDet.State = dsBrowse then
    qyDet.Edit;
end;

procedure TWareInOutFM.cxgrdObjectIdPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  try
    if btSave.Enabled = False then
      Exit;
    try
      PrvQFM := TPrvQFM.Create(nil);
      PrvQFM.iSelectKind := 2; //单选
      PrvQFM.ShowModal;
      if PrvQFM.sId <> '' then
      begin
        if qyDet.State = dsBrowse then
          qyDet.Edit;
        qyDet.FieldByName('ObjectId').AsString := PrvQFM.sId;
      end;
    finally
      PrvQFM.Free;
      PrvQFM := nil;
    end;
  except
  end;
end;

procedure TWareInOutFM.cxgrdProTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if qyHed.FieldByName('WFlag').AsInteger * qyHed.FieldByName('SignFlag').AsInteger = 1 then //入库
  begin
    //ProTypeSelect(btSave.Enabled, qyDet, 'ProType', 2);
  end
  else //出库取库存字段
  begin
    if btSave.Enabled = false then
      exit;
    try
      WareItemQFM := TWareItemQFM.Create(nil);
      WareItemQFM.iSelectKind := 2;
      if qyDet.FieldByName('ItemId').AsString <> '' then
        WareItemQFM.sItemId := qyDet.FieldByName('ItemId').AsString;
      if qyDet.FieldByName('WareId').AsString <> '' then
        WareItemQFM.sWareId := qyDet.FieldByName('WareId').AsString;
      WareItemQFM.btFindClick(Sender);
      WareItemQFM.ShowModal;
      if WareItemQFM.bHasSelect then
      begin
        qyDet.Edit;
        qyDet.FieldByName('ItemId').AsString := WareItemQFM.qyFind.FieldByName('ItemId').AsString;
        qyDet.FieldByName('ItemCode').AsString := WareItemQFM.qyFind.FieldByName('ItemCode').AsString;
        qyDet.FieldByName('ItemName').AsString := WareItemQFM.qyFind.FieldByName('ItemName').AsString;
        qyDet.FieldByName('ItemSpc').AsString := WareItemQFM.qyFind.FieldByName('ItemSpc').AsString;
        qyDet.FieldByName('WareId').AsString := WareItemQFM.qyFind.FieldByName('WareId').AsString;
        qyDet.FieldByName('ProType').AsString := WareItemQFM.qyFind.FieldByName('ProType').AsString;
        qyDet.FieldByName('Color').AsString := WareItemQFM.qyFind.FieldByName('Color').AsString;
        qyDet.FieldByName('PlaceNo').AsString := WareItemQFM.qyFind.FieldByName('PlaceNo').AsString;
      end;
    finally
      WareItemQFM.Free;
      WareItemQFM := nil;
    end;
  end;
end;

procedure TWareInOutFM.cxgrdSubNumPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := false;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('SubNum').AsFloat := DisplayValue;
  if qyDet.FieldByName('iFlag').asInteger = 0 then
  begin
    if qyDet.FieldByName('ExchRate').AsFloat <> 0 then
      qyDet.FieldByName('MainNum').AsFloat := DisplayValue / qyDet.FieldByName('ExchRate').AsFloat;
  end
  else
  begin
    qyDet.FieldByName('MainNum').AsFloat := DisplayValue * qyDet.FieldByName('ExchRate').AsFloat
  end;
  qyDet.FieldByName('SubMoney').AsFloat := DisplayValue * qyDet.FieldByName('SubPrice').AsFloat;

  qyDet.FieldByName('AllMoney').AsFloat := DisplayValue * qyDet.FieldByName('SubTaxPrice').AsFloat;
  qyDet.FieldByName('MainMoney').AsFloat := qyDet.FieldByName('SubMoney').AsFloat;
  qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('MainMoney').AsFloat;

end;

procedure TWareInOutFM.cxgrdTaxPricePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := false;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('TaxPrice').AsFloat := RoundTo(DisplayValue,-iPricePoint);
  qyDet.FieldByName('MainPrice').AsFloat := RoundTo(DisplayValue / (1 + qyDet.FieldByName('TaxRate').AsFloat / 100),-iPricePoint);
  qyDet.FieldByName('MainMoney').AsFloat := RoundTo(qyDet.FieldByName('MainNum').AsFloat * qyDet.FieldByName('MainPrice').AsFloat,-iMoneyPoint);
  qyDet.FieldByName('AllMoney').AsFloat := RoundTo(qyDet.FieldByName('MainNum').AsFloat * qyDet.FieldByName('TaxPrice').AsFloat,-iMoneyPoint);
  qyDet.FieldByName('TaxMoney').AsFloat := RoundTo(qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('MainMoney').AsFloat,-iMoneyPoint);
  qyDet.FieldByName('SubMoney').AsFloat := RoundTo(qyDet.FieldByName('MainMoney').AsFloat,-iMoneyPoint);

  if qyDet.FieldByName('iFlag').asInteger = 0 then
  begin
    if qyDet.FieldByName('ExchRate').AsFloat <> 0 then
      qyDet.FieldByName('SubPrice').AsFloat := RoundTo(qyDet.FieldByName('MainPrice').AsFloat / qyDet.FieldByName('ExchRate').AsFloat,-iPricePoint)
  end
  else
  begin
    qyDet.FieldByName('SubPrice').AsFloat := RoundTo(qyDet.FieldByName('MainPrice').AsFloat * qyDet.FieldByName('ExchRate').AsFloat,-iPricePoint)
  end;
  qyDet.FieldByName('SubTaxPrice').AsFloat := RoundTo(qyDet.FieldByName('SubPrice').AsFloat * (1 + qyDet.FieldByName('TaxRate').AsFloat / 100),-iPricePoint);
end;

procedure TWareInOutFM.cxgrdTaxRatePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := false;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('TaxRate').AsFloat := DisplayValue;
  qyDet.FieldByName('MainPrice').AsFloat := RoundTo(qyDet.FieldByName('TaxPrice').AsFloat / (1 + DisplayValue / 100),-iPricePoint);
  qyDet.FieldByName('MainMoney').AsFloat := RoundTo(qyDet.FieldByName('MainNum').AsFloat * qyDet.FieldByName('MainPrice').AsFloat,-iMoneyPoint);
  qyDet.FieldByName('AllMoney').AsFloat := RoundTo(qyDet.FieldByName('MainNum').AsFloat * qyDet.FieldByName('TaxPrice').AsFloat,-iMoneyPoint);
  qyDet.FieldByName('TaxMoney').AsFloat := RoundTo(qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('MainMoney').AsFloat,-iMoneyPoint);
  qyDet.FieldByName('SubMoney').AsFloat := RoundTo(qyDet.FieldByName('MainMoney').AsFloat,-iMoneyPoint);
  if qyDet.FieldByName('iFlag').asInteger = 1 then
  begin
    if qyDet.FieldByName('ExchRate').AsFloat <> 0 then
      qyDet.FieldByName('SubPrice').AsFloat := RoundTo(qyDet.FieldByName('MainPrice').AsFloat / qyDet.FieldByName('ExchRate').AsFloat,-iPricePoint)
  end
  else
  begin
    qyDet.FieldByName('SubPrice').AsFloat := RoundTo(qyDet.FieldByName('MainPrice').AsFloat * qyDet.FieldByName('ExchRate').AsFloat,-iPricePoint)
  end;
  qyDet.FieldByName('SubTaxPrice').AsFloat := RoundTo(qyDet.FieldByName('SubPrice').AsFloat * (1 + qyDet.FieldByName('TaxRate').AsFloat / 100),-iPricePoint);
end;

procedure TWareInOutFM.cxgrdtbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARec: TRect;
begin
  inherited;
  if (AViewInfo.GridRecord.DisplayTexts[cxgrdMainNum.Index] <> '') and (AViewInfo.GridRecord.DisplayTexts[cxgrdWareNum.Index] <> '') then
  begin
    if (qyHed.FieldByName('WFlag').AsInteger * qyHed.FieldByName('SignFlag').AsInteger = -1) and (not qyHed.FieldByName('bMaxAudit').AsBoolean) and (StrToFloat(AViewInfo.GridRecord.DisplayTexts[cxgrdMainNum.Index]) > StrToFloat(AViewInfo.GridRecord.DisplayTexts[cxgrdWareNum.Index])) then
    begin
      ARec := AViewInfo.Bounds;
      ACanvas.canvas.Font.color := clRed;
      ACanvas.FillRect(ARec)
    end;
  end;
end;

procedure TWareInOutFM.cxgrdWareIDPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  WareSelect(btSave.Enabled, qyDet, 'WareID', 2);
end;

procedure TWareInOutFM.cxObjectPropertiesButtonClick(Sender: TObject);
begin
  inherited;
  if btSave.Enabled = false then
    exit;
  if (qyHed.FieldByName('WKindID').AsString = 'StockIn') or (qyHed.FieldByName('WKindID').AsString = 'AssistIn') or (qyHed.FieldByName('WKindID').AsString = 'AssistOut') then
  begin
    try
      PrvQFM := TPrvQFM.Create(nil);
      PrvQFM.iSelectKind := 2; // 单选
      PrvQFM.ShowModal;
      if PrvQFM.sId <> '' then
      begin
        if qyHed.State = dsBrowse then
          qyHed.Edit;
        qyHed.FieldByName('ObjectID').AsString := PrvQFM.sId;
        qyHed.FieldByName('ObjectName').AsString := PrvQFM.sName;
      end;
    finally
      PrvQFM.Free;
      PrvQFM := nil;
    end;
  end
  else if (qyHed.FieldByName('WKindID').AsString = 'ProductOut') or (qyHed.FieldByName('WKindID').AsString = 'SaleOut') then
  begin
    try
      CustQFM := TCustQFM.Create(nil);
      CustQFM.iSelectKind := 2; // 单选
      CustQFM.ShowModal;
      if CustQFM.sId <> '' then
      begin
        if qyHed.State = dsBrowse then
          qyHed.Edit;
        qyHed.FieldByName('ObjectID').AsString := CustQFM.sId;
        qyHed.FieldByName('ObjectName').AsString := CustQFM.sName;
      end;
    finally
      CustQFM.Free;
      CustQFM := nil;
    end;
  end
  else
  begin
    try
      DeptQFM := TDeptQFM.Create(nil);
      DeptQFM.iSelectKind := 2; // 单选
      DeptQFM.ShowModal;
      if DeptQfm.sId <> '' then
      begin
        if qyHed.State = dsBrowse then
          qyHed.Edit;
        qyHed.FieldByName('ObjectID').AsString := DeptQFM.sId;
        qyHed.FieldByName('ObjectName').AsString := DeptQFM.sName;
      end;
    finally
      DeptQFM.Free;
      DeptQFM := nil;
    end;
  end;
end;

procedure TWareInOutFM.cxRgpFlagPropertiesChange(Sender: TObject);
begin
  inherited;
  if cxRgpSignFlag.ItemIndex = 0 then
    cxEdtNo.Style.TextColor := clBlue
  else if cxRgpSignFlag.ItemIndex = 1 then
    cxEdtNo.Style.TextColor := clRed;
end;

procedure TWareInOutFM.cxWareNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  WareSelect(btSave.Enabled, qyHed, 'HWareId', 2);
end;

procedure TWareInOutFM.dxBarButton1Click(Sender: TObject);
begin
  try
    inherited;
    if not qyHed.FieldByName('bMaxAudit').AsBoolean then
    begin
      ShowBox('该单还未审核完成！');
      Exit;
    end;
    if qyHed.FieldByName('bFuHe').AsBoolean then
    begin
      ShowBox('已经复核！');
      Exit;
    end;
    qyHed.Edit;
    qyHed.FieldByName('bFuHe').AsBoolean := true;
    qyHed.UpdateBatch();
    //复核自动记账
    if ((sTableId = 'StockIn') and bStockInAutoInvoice) or ((sTableId = 'SaleOut') and bSaleOutAutoInvoice) then
    begin
      dxbrbtnJZClick(Sender);
    end;
    btRefClick(Sender);
    ShowFMInfo(sTableId, qyHed);
  except
    ShowWarn('复核失败！');
  end;
end;

procedure TWareInOutFM.dxBarButton2Click(Sender: TObject);
begin
  try
    inherited;
    if not qyHed.FieldByName('bFuHe').AsBoolean then
    begin
      ShowBox('该单还未复核！');
      Exit;
    end;
    qyHed.Edit;
    qyHed.FieldByName('bFuHe').AsBoolean := False;
    qyHed.UpdateBatch();
    //复核自动记账
    if ((sTableId = 'StockIn') and bStockInAutoInvoice) or ((sTableId = 'SaleOut') and bSaleOutAutoInvoice) then
    begin
      dxbrbtnNoJZClick(Sender);
    end;
    btRefClick(Sender);
    ShowFMInfo(sTableId, qyHed);
  except
    ShowWarn('取消复核失败！');
  end;
end;

procedure TWareInOutFM.dxbrbtnNoJZClick(Sender: TObject);
begin
  try
    inherited;
    if not qyHed.FieldByName('bInvoice').asBoolean then
    begin
      ShowBox('该单还未记账!');
      exit;
    end;
    with DataFM.qyTemp do
    begin
      if Active then
        close;
      SQL.Clear;
      SQL.Add('exec PrWareToInvoice' + Quotedstr(Trim(cxEdtNo.Text)) + ',-1');
      Open;
    end;
    btRefClick(Self);
    SetLog(sFMName, trim(cxEdtNo.Text), '取消记账');
    ShowFMInfo(sTableId, qyHed);
  except
    on E: Exception do
    begin
      ShowWarn(e.Message);
    end;
  end;
end;

procedure TWareInOutFM.dxbrbtnJZClick(Sender: TObject);
begin
  try
    inherited;
    if not qyHed.FieldByName('bMaxAudit').asBoolean then
    begin
      ShowBox('该单还未审核完成!');
      exit;
    end;
    if qyHed.FieldByName('bInvoice').asBoolean then
    begin
      ShowBox('该单已经记账!');
      if sTableId = 'StockIn' then
      begin
        BillView('StockInvoiceHDTB', 'select * from StockInvoiceHDTB where SubjoinNo=' + QuotedStr(qyHed.FieldByName('BillNo').AsString));
      end;
      if sTableId = 'SaleOut' then
      begin
        BillView('SaleInvoiceHDTB', 'select * from SaleInvoiceHDTB where SubjoinNo=' + QuotedStr(qyHed.FieldByName('BillNo').AsString));
      end;
      exit;
    end;
    if qyHed.FieldByName('bCashDeal').asBoolean then
    begin
      ShowBox('现金交易无需记账!');
      exit;
    end;
    with DataFM.qyTemp do
    begin
      if Active then
        close;
      SQL.Clear;
      SQL.Add('exec PrWareToInvoice' + Quotedstr(Trim(cxEdtNo.Text)) + ',1');
      Open;
    end;
    btRefClick(Self);
    SetLog(sFMName, trim(cxEdtNo.Text), '记账');
    ShowFMInfo(sTableId, qyHed);
  except
    on E: Exception do
    begin
      ShowWarn(e.Message);
    end;
  end;
end;

procedure TWareInOutFM.FormCreate(Sender: TObject);
begin
  inherited;

  if qyWareNum.Active = False then
    qyWareNum.Open; //一定要 否则Requery要报错
  qyWareNum.Requery();
  with qyHed do
  begin
    if Active then
      close;
    SQL.Clear;
    SQL.Add('select * from WareInOutHDTB where isnull(bMaxAudit,0)=0 and WKindID=' + Quotedstr(sTableId));
    if (bRight) and (bFindAll = false) then
      SQL.Add(' and MakeMan=' + Quotedstr(LoginEmpId));
    SQL.Add('Order by BillDate Desc');
    Open;
  end;
end;

procedure TWareInOutFM.FormDestroy(Sender: TObject);
begin
  inherited;
  WareInOutFM := nil
end;

procedure TWareInOutFM.FormShow(Sender: TObject);
begin
  inherited;
  GrdShowPrice;
  if sTableId = 'SaleOut' then
    InitCbb('select CustName from CustTB', cxObject);
  if sTableId = 'StockIn' then
    InitCbb('select PrvName from ProviderTB', cxObject);
  {with qyFind do
  begin
    if Active then Close;
    Sql.Clear;
    SQL.Add('exec prBillFind ' + QuotedStr(sTableId));
    Open;
  end;}
end;

procedure TWareInOutFM.qyDetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyDet.FieldByName('BillNO').AsString := qyHed.FieldByName('BillNO').AsString;
  qyDet.FieldByName('AutoNo').AsString := GetDateAutoNo(sTableId);
  qyDet.FieldByName('INo').asInteger := INo;
  if (qyHed.FieldByName('WKindID').AsString = 'AssistIn') or (qyHed.FieldByName('WKindID').AsString = 'AssistOut') then
    qyDet.FieldByName('ObjectId').AsString := qyHed.FieldByName('ObjectId').AsString;
  qyDet.FieldByName('WareId').AsString := qyHed.FieldByName('HWareId').AsString;
  qyDet.FieldByName('ExchangeRate').AsFloat := 1;
  qyDet.FieldByName('TaxRate').AsFloat := iTaxRate;
end;

procedure TWareInOutFM.qyDetCalcFields(DataSet: TDataSet);
begin
  CalcField(qyDet, DataFM.qyWare, ['WareID', 'WareName'], ['WareID', 'WareName']);
  CalcField(qyDet, DataFM.qyObject, ['ObjectId', 'ObjectName'], ['ObjectId', 'ObjectName']);
  if qyWareNum.Locate('sInfo', qyDet.FieldByName('ItemId').AsString + qyDet.FieldByName('WareId').AsString + qyDet.FieldByName('ProType').AsString + qyDet.FieldByName('Color').AsString + qyDet.FieldByName('PlaceNo').AsString + qyDet.FieldByName('ObjectId').AsString, []) then
    qyDet.FieldByName('WareNum').AsFloat := qyWareNum.FieldByName('WareNum').AsFloat
  else
    qyDet.FieldByName('WareNum').AsFloat := 0;
end;

procedure TWareInOutFM.qyHedCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyHed, DataFM.qyEmp, ['Seller', 'SellerManName'], ['EmpID', 'EmpName']);
  CalcField(qyHed, DataFM.qyEmp, ['WareMan', 'WareManName'], ['EmpID', 'EmpName']);
  CalcField(qyHed, DataFM.qyWKind, ['WKindId', 'WKindName'], ['WKindId', 'WKindName']);
end;

procedure TWareInOutFM.qyHedHWareIdChange(Sender: TField);
var
  i: Integer;
begin
  inherited;
  CalcField(qyHed, DataFM.qyWare, ['HWareId', 'HWareName'], ['WareId', 'WareName']);
  qyDet.First;
  for I := 0 to qyDet.RecordCount - 1 do
  begin
    if qyDet.State = dsBrowse then
      qyDet.Edit;
    qyDet.FieldByName('WareId').AsString := qyHed.FieldByName('HWareId').AsString;
    qyDet.Next;
  end;
end;

procedure TWareInOutFM.strngfldDetItemIdChange(Sender: TField);
begin
  inherited;
  CalcField(qyDet, DataFM.qyItem, ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag'], ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag']);
end;

procedure TWareInOutFM.strngfldDetObjectIdChange(Sender: TField);
begin
  inherited;
  CalcField(qyDet, DataFM.qyObject, ['ObjectId', 'ObjectName'], ['ObjectId', 'ObjectName']);
end;

procedure TWareInOutFM.strngfldHedObjectIDChange(Sender: TField);
begin
  inherited;
  CalcField(qyHed, DataFM.qyObject, ['ObjectID', 'ObjectCode', 'ObjectName', 'ObjectLinkMan', 'ObjectMobile', 'ObjectTel', 'ObjectFax'], ['ObjectID', 'ObjectCode', 'ObjectName', 'ObjectLinkMan', 'ObjectMobile', 'ObjectTel', 'ObjectFax']);
end;

procedure TWareInOutFM.GrdShowPrice;
var
  i: Integer;
begin
  if (bRight) then
  begin
    for i := 0 to cxgrdtbv.ColumnCount - 1 do
    begin
      if (cxgrdtbv.Columns[i].DataBinding.FieldName = 'MainPrice') or (cxgrdtbv.Columns[i].DataBinding.FieldName = 'TaxPrice') or (cxgrdtbv.Columns[i].DataBinding.FieldName = 'TaxRate') or (cxgrdtbv.Columns[i].DataBinding.FieldName = 'MainMoney') or (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubPrice') or (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubTaxPrice') or (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubMoney') or (cxgrdtbv.Columns[i].DataBinding.FieldName = 'AllMoney') then
        cxgrdtbv.Columns[i].Visible := bShowPrice;
    end;
  end;
  GetGrd(Self, cxgrdtbv);
end;

procedure TWareInOutFM.intgrfldHedPrintNumChange(Sender: TField);
begin
  inherited;
  ShowFMInfo(sTableId, qyHed);
end;

end.


