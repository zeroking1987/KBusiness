unit StockInvoicePS;

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
  cxRadioGroup, cxPCdxBarPopupMenu, dxSkinOffice2010Blue, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu, cxNavigator;

type
  TStockInvoiceFM = class(TBaseGrdFM)
    Label12: TLabel;
    Label13: TLabel;
    cxgrdbclmnItemCode: TcxGridDBColumn;
    cxgrdbclmnItemPYCode: TcxGridDBColumn;
    cxgrdbclmnItemName: TcxGridDBColumn;
    cxgrdbclmnItemSpc: TcxGridDBColumn;
    cxgrdbclmnItemUnit: TcxGridDBColumn;
    cxgrdbclmnProType: TcxGridDBColumn;
    cxgrdbclmnInvoiceNum: TcxGridDBColumn;
    cxgrdbclmnInvoicePrice: TcxGridDBColumn;
    cxgrdbclmnRemark: TcxGridDBColumn;
    Label10: TLabel;
    cxEdt2: TcxDBTextEdit;
    cbbPayMode: TcxDBComboBox;
    cxgrdbclmnInvoiceMoney: TcxGridDBColumn;
    cxgrdbclmnTaxPrice: TcxGridDBColumn;
    cxgrdbclmnTaxRate: TcxGridDBColumn;
    cxgrdbclmnAllMoney: TcxGridDBColumn;
    Label15: TLabel;
    Label14: TLabel;
    cxMoRemark: TcxDBMemo;
    cxPupEdtRemark: TcxDBPopupEdit;
    qyHedAutoID: TLargeintField;
    qyHedInvoiceNO: TStringField;
    qyHedSourceDate: TDateTimeField;
    qyHedInvoiceDate: TDateTimeField;
    qyHedSignFlag: TSmallintField;
    qyHedBillKind: TStringField;
    qyHedEmpId: TStringField;
    qyHedCompactNo: TStringField;
    qyHedSubjoinNo: TStringField;
    qyHedbSelect: TBooleanField;
    qyHedRemark: TStringField;
    qyHedbPrint: TBooleanField;
    qyHedMakeDate: TDateTimeField;
    qyHedMakeMan: TStringField;
    qyHedMakeManName: TStringField;
    qyHedEditMan: TStringField;
    qyHedEditManName: TStringField;
    qyHedEditDate: TDateTimeField;
    qyHedAuditFlag: TSmallintField;
    qyHedbMaxAudit: TBooleanField;
    qyHedAuditDate: TStringField;
    cxDBDateEdit1: TcxDBDateEdit;
    Label17: TLabel;
    cxRgpSignFlag: TcxDBRadioGroup;
    qyHedEmpName: TStringField;
    qyHedPayMode: TStringField;
    qyDetAutoID: TLargeintField;
    qyDetInvoiceNO: TStringField;
    qyDetItemID: TStringField;
    qyDetItemCode: TStringField;
    qyDetItemPYCode: TStringField;
    qyDetProType: TStringField;
    qyDetColor: TStringField;
    qyDetBatchNo: TStringField;
    qyDetPlaceNo: TStringField;
    qyDetCompactNo: TStringField;
    qyDetObjectId: TStringField;
    qyDetSjNo: TStringField;
    qyDetsOrderNo: TStringField;
    qyDetTechName: TStringField;
    qyDetInDate: TStringField;
    qyDetPState: TStringField;
    qyDetTempNo: TStringField;
    qyDetInvoiceNum: TFMTBCDField;
    qyDetInvoicePrice: TFMTBCDField;
    qyDetTaxPrice: TFMTBCDField;
    qyDetInvoiceMoney: TFMTBCDField;
    qyDetSubNum: TFMTBCDField;
    qyDetSubPrice: TFMTBCDField;
    qyDetSubTaxPrice: TFMTBCDField;
    qyDetSubMoney: TFMTBCDField;
    qyDetTaxRate: TFMTBCDField;
    qyDetTaxMoney: TFMTBCDField;
    qyDetAllMoney: TFMTBCDField;
    qyDetOrderNo: TStringField;
    qyDetSendNo: TStringField;
    qyDetIoNo: TStringField;
    qyDetRemark: TStringField;
    qyHedPrintNum: TSmallintField;
    qyHedAuditManName: TStringField;
    qyHedMaxAuditDate: TDateTimeField;
    strngfldHedPrvId: TStringField;
    strngfldHedPrvName: TStringField;
    cxObject: TcxDBButtonEdit;
    qyDetItemSpc: TStringField;
    qyDetItemPic: TStringField;
    qyDetItemUnit: TStringField;
    qyDetSubUnit: TStringField;
    qyDetExchRate: TFMTBCDField;
    qyDetiFlag: TSmallintField;
    qyDetItemName: TStringField;
    qyDetIoId: TStringField;
    qyDetAutoNo: TStringField;
    N1: TMenuItem;
    N2: TMenuItem;
    qyDetOrderId: TStringField;
    qyDetSendId: TStringField;
    cxgrdtbvColumn1: TcxGridDBColumn;
    procedure btAddClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btAddLClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDelLClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qyHedCalcFields(DataSet: TDataSet);
    procedure btSaveClick(Sender: TObject);
    procedure cxEdtNoPropertiesChange(Sender: TObject);
    procedure cxgrdbclmnItemCodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure qyDetAfterInsert(DataSet: TDataSet);
    procedure btDelClick(Sender: TObject);
    procedure cxgrdbclmnItemPYCodePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure qyDetItemIDChange(Sender: TField);
    procedure btCheckClick(Sender: TObject);
    procedure btUnCheckClick(Sender: TObject);
    procedure smlntfldHedPrintNumChange(Sender: TField);
    procedure btFindClick(Sender: TObject);
    procedure cxgrdbclmnOrderNumPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbclmnOrderPricePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbclmnTaxPricePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbclmnTaxRatePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure btReferClick(Sender: TObject);
    procedure cxRgpSignFlagPropertiesChange(Sender: TObject);
    procedure qyHedPrintNumChange(Sender: TField);
    procedure cxObjectPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure N2Click(Sender: TObject);
    procedure cxgrdbclmnProTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdtbvColumn1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public

    { Public declarations }
  end;
var
  StockInvoiceFM: TStockInvoiceFM;

implementation
uses PublicPS, ControlPublicPS, DataPS, EmpQPS, ItemQPS, DeptQPS, PrvQPS, StockInvoiceFindPS, StockInvoiceStockInRfPS, SGeneralPS;
{$R *.dfm}

procedure TStockInvoiceFM.btAddClick(Sender: TObject);
begin
  try
    if (bRight) and (bAdd = false) then
    begin
      ShowWarn('你没有本单据的添加权限,不能操作');
      exit;
    end;
    TextReadOnly(Self, false);
    inherited;
    qyHed.Append;
    qyHed.FieldByName('InvoiceNo').AsString := GetTableNo(sTableId, 'InvoiceNo');
    qyHed.FieldByName('InvoiceDate').AsDateTime := StrToDateTime(FormatDateTime('yyyy-mm-dd', SysDateTime));
    qyHed.FieldByName('SignFlag').AsInteger := 1;
    qyHed.FieldByName('MakeMan').AsString := LoginEmpId;
    qyHed.FieldByName('MakeManName').AsString := LoginEmpName;
    qyHed.FieldByName('MakeDate').AsDateTime := SysDateTime;
    qyHed.FieldByName('AuditFlag').AsInteger := 0;
    if qyDet.Active then qyDet.Edit;
  except
    on E: Exception do
      ShowWarn(E.Message);
  end;
end;

procedure TStockInvoiceFM.btAddLClick(Sender: TObject);
begin
  try
    qyDet.Append;
  except
  end;
end;

procedure TStockInvoiceFM.btCancelClick(Sender: TObject);
begin
  if qyDet.Active then
    qyDet.CancelBatch();
  qyHed.CancelBatch();
  TextReadOnly(Self, True);
  inherited;
end;

procedure TStockInvoiceFM.btCheckClick(Sender: TObject);
begin
  //inherited;
  AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, 1);
  ShowFMInfo(sTableId,qyHed);
end;

procedure TStockInvoiceFM.btDelClick(Sender: TObject);
var
  i: Integer;
  sBiilNo, sSubjoinNo: string;
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
      sSubjoinNo := qyHed.FieldByName('SubjoinNo').AsString;
      qyDet.First;
      for i := 0 to qyDet.RecordCount - 1 do
      begin
        qyDet.Delete;
        qyDet.Next;
      end;
      qyDet.UpdateBatch;
      qyHed.Delete;
      qyHed.UpdateBatch;
      //更新仓库记账标识
      ExeSql('exec PrUpdateInvoiceFlag ' + QuotedStr(sSubjoinNo));
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

procedure TStockInvoiceFM.btDelLClick(Sender: TObject);
begin
  try
    qyDet.Delete;
  except
    ShowBox('删除失败！');
  end;
end;

procedure TStockInvoiceFM.btEditClick(Sender: TObject);
begin
  qyHed.UpdateCursorPos;
  qyHed.Recordset.Resync(AdAffectcurrent, AdResyncAllValues);
  qyHed.Resync([]);
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
  qyHed.Edit;
  qyHed.FieldByName('EditMan').AsString := LoginEmpId;
  qyHed.FieldByName('EditManName').AsString := LoginEmpName;
  qyHed.FieldByName('EditDate').AsDateTime := SysDateTime;
end;

procedure TStockInvoiceFM.btFindClick(Sender: TObject);
begin
  inherited;
  try
    if not Assigned(StockInvoicerFindFM) then
      StockInvoicerFindFM := TStockInvoicerFindFM.Create(Application);
    StockInvoicerFindFM.ShowModal;
    if StockInvoicerFindFM.sBillNo <> '' then
    begin
      with qyHed do
      begin
        if Active then Close;
        SQL.Clear;
        SQL.Add('select * from StockInvoiceHDTB where InvoiceNo in (' + StockInvoicerFindFM.sBillNo + ')');
        Open;
      end;
    end;
  finally
    StockInvoicerFindFM.Free;
    StockInvoicerFindFM := nil
  end;
end;

procedure TStockInvoiceFM.btReferClick(Sender: TObject);
var
  i: integer;
  sRfid: string;
begin
  try
    try
      StockInvoiceStockInRfFM := TStockInvoiceStockInRfFM.Create(nil);
      StockInvoiceStockInRfFM.sObjectId := qyHed.FieldByName('PrvId').asString;
      StockInvoiceStockInRfFM.btFindClick(self);
      StockInvoiceStockInRfFM.ShowModal;
      if StockInvoiceStockInRfFM.fFlag = 1 then
      begin
        StockInvoiceStockInRfFM.qyFind.Filter := ' bSelect=1';
        StockInvoiceStockInRfFM.qyFind.Filtered := true;
        StockInvoiceStockInRfFM.qyFind.First;
        for i := 0 to StockInvoiceStockInRfFM.qyFind.RecordCount - 1 do
        begin
          if qyHed.State = dsBrowse then qyHed.Edit;
          qyHed.FieldByName('SubjoinNo').AsString := StockInvoiceStockInRfFM.qyFind.FieldByName('BillNo').AsString;
          qyHed.FieldByName('PrvId').AsString := StockInvoiceStockInRfFM.qyFind.FieldByName('ObjectId').AsString;
          qyHed.FieldByName('SignFlag').AsInteger := StockInvoiceStockInRfFM.qyFind.FieldByName('SignFlag').AsInteger;
          qyHed.FieldByName('SourceDate').AsDateTime := StockInvoiceStockInRfFM.qyFind.FieldByName('BillDate').AsDateTime;

          if i = 0 then
            qyDet.Edit
          else
            qyDet.Append;
          qyDet.FieldByName('ItemId').AsString := StockInvoiceStockInRfFM.qyFind.FieldByName('ItemId').AsString;
          qyDet.FieldByName('ItemCode').AsString := StockInvoiceStockInRfFM.qyFind.FieldByName('ItemCode').AsString;
          qyDet.FieldByName('ItemPYCode').AsString := StockInvoiceStockInRfFM.qyFind.FieldByName('ItemPYCode').AsString;
          qyDet.FieldByName('ProType').AsString := StockInvoiceStockInRfFM.qyFind.FieldByName('ProType').AsString;
          qyDet.FieldByName('InvoicePrice').AsFloat := StockInvoiceStockInRfFM.qyFind.FieldByName('MainPrice').AsFloat;
          qyDet.FieldByName('TaxPrice').AsFloat := StockInvoiceStockInRfFM.qyFind.FieldByName('TaxPrice').AsFloat;
          qyDet.FieldByName('TaxRate').AsFloat := StockInvoiceStockInRfFM.qyFind.FieldByName('TaxRate').AsFloat;
          qyDet.FieldByName('InvoiceNum').AsFloat := StockInvoiceStockInRfFM.qyFind.FieldByName('NoRfNum').AsFloat;
          qyDet.FieldByName('IoNo').AsString := StockInvoiceStockInRfFM.qyFind.FieldByName('BillNo').AsString;
          qyDet.FieldByName('IoId').AsString := StockInvoiceStockInRfFM.qyFind.FieldByName('AutoNo').AsString;
          UpdateData(cxgrdtbv, 'InvoiceNum');
          qyDet.post;
          StockInvoiceStockInRfFM.qyFind.Next;
        end;
      end;
    finally
      StockInvoiceStockInRfFM.free;
      StockInvoiceStockInRfFM := nil;
    end;
  except
  end;
end;

procedure TStockInvoiceFM.btSaveClick(Sender: TObject);
var
  sNewNo: string;
  i: Integer;
begin
  try
    qyHed.UpdateBatch;
    qyDet.UpdateBatch;
    TextReadOnly(Self, True);
    //更新仓库记账标识
    ExeSql('exec PrUpdateInvoiceFlag ' + QuotedStr(qyHed.FieldByName('SubjoinNo').AsString));
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
      else if pos('插入重复键', e.Message) > 0 then
      begin
        try
          sNewNo := GetTableNO(sTableId, 'InvoiceNo');
          if qyHed.FieldByName('InvoiceNo').AsString = sNewNo then
          begin
            ShowBox('单号有重复!');
            Exit;
          end;
          if qyHed.State = dsBrowse then qyHed.Edit;
          if qyDet.State = dsBrowse then qyDet.Edit;

          qyHed.FieldByName('InvoiceNo').AsString := sNewNo;
          qyDet.First;
          for i := 0 to qyDet.RecordCount - 1 do
          begin
            if qyDet.State = dsBrowse then qyDet.Edit;
            qyDet.FieldByName('InvoiceNo').AsString := sNewNo;
            qyDet.Next;
          end;
          qyHed.UpdateBatch;
          qyDet.UpdateBatch;
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

procedure TStockInvoiceFM.btUnCheckClick(Sender: TObject);
var
  sHaveNo: string;
begin
  inherited;
  sHaveNo := bHaveData(DataFM.qyTemp, 'select PayNo from StockPayDTTB where InvoiceNo=' + QuotedStr(Trim(cxEdtNo.Text)));
  if sHaveNo <> '' then
  begin
    ShowBox('记账单已经付款,不能反审核 单号: ' + sHaveNo);
    Exit;
  end;

  AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, -1);
  ShowFMInfo(sTableId,qyHed);
end;

procedure TStockInvoiceFM.cxEdtNoPropertiesChange(Sender: TObject);
begin
  inherited;
  with qyDet do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from StockInvoiceDTTB where InvoiceNo=' + QuotedStr(trim(cxEdtNo.Text)));
    Open;
  end;
  if DataFM.qyPyCode.Active = false then DataFM.qyPyCode.Open;
  ShowFMInfo(sTableId,qyHed);
end;

procedure TStockInvoiceFM.cxgrdbclmnItemCodePropertiesButtonClick(Sender: TObject;
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
          qyDet.Edit
        else
          qyDet.Append;
        qyDet.FieldByName('ItemId').AsString := ItemQFM.qyFind.FieldByName('ItemId').AsString;
        qyDet.FieldByName('ItemCode').AsString := ItemQFM.qyFind.FieldByName('ItemCode').AsString;
        qyDet.FieldByName('ItemPYCode').AsString := ItemQFM.qyFind.FieldByName('ItemPYCode').AsString;
        qyDet.post;
        ItemQFM.qyFind.Next;
      end;
    end;
  finally
    ItemQFM.Free;
    ItemQFM := nil;
  end;
end;

procedure TStockInvoiceFM.cxgrdbclmnItemPYCodePropertiesValidate(Sender: TObject;
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

procedure TStockInvoiceFM.cxgrdbclmnOrderNumPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  qyDet.FieldByName('InvoiceNum').AsString := DisplayValue;
  qyDet.FieldByName('InvoiceMoney').AsFloat := DisplayValue * qyDet.FieldByName('InvoicePrice').AsFloat;
  qyDet.FieldByName('AllMoney').AsFloat := DisplayValue * qyDet.FieldByName('TaxPrice').AsFloat;
  qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('InvoiceMoney').AsFloat;
  if qyDet.FieldByName('iFlag').AsInteger = 1 then
    qyDet.FieldByName('SubNum').AsFloat := DisplayValue * qyDet.FieldByName('ExchRate').AsFloat
  else
  begin
    if qyDet.FieldByName('ExchRate').AsFloat <> 0 then
      qyDet.FieldByName('SubNum').AsFloat := DisplayValue / qyDet.FieldByName('ExchRate').AsFloat
  end;
end;

procedure TStockInvoiceFM.cxgrdbclmnOrderPricePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  qyDet.FieldByName('InvoicePrice').AsString := DisplayValue;
  qyDet.FieldByName('TaxPrice').AsFloat := DisplayValue * (1 + qyDet.FieldByName('TaxRate').AsFloat / 100);
  qyDet.FieldByName('InvoiceMoney').AsFloat := qyDet.FieldByName('InvoiceNum').AsFloat * DisplayValue;
  qyDet.FieldByName('AllMoney').AsFloat := qyDet.FieldByName('InvoiceNum').AsFloat * qyDet.FieldByName('TaxPrice').AsFloat;
  qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('InvoiceMoney').AsFloat;
end;

procedure TStockInvoiceFM.cxgrdbclmnProTypePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  ProTypeSelect(btSave.Enabled, qyDet, 'ProType', 2);
end;

procedure TStockInvoiceFM.cxgrdbclmnTaxPricePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  try
    inherited;
    Error := False;
    qyDet.FieldByName('TaxPrice').AsFloat := DisplayValue;
    qyDet.FieldByName('InvoicePrice').AsFloat := DisplayValue / (1 + qyDet.FieldByName('TaxRate').AsFloat / 100);
    qyDet.FieldByName('InvoiceMoney').AsFloat := qyDet.FieldByName('InvoiceNum').AsFloat * (DisplayValue / (1 + qyDet.FieldByName('TaxRate').AsFloat / 100));
    qyDet.FieldByName('AllMoney').AsFloat := qyDet.FieldByName('InvoiceNum').AsFloat * DisplayValue;
    qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('InvoiceMoney').AsFloat;
  except
  end;
end;

procedure TStockInvoiceFM.cxgrdbclmnTaxRatePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  try
    inherited;
    Error := False;
    qyDet.FieldByName('TaxRate').AsFloat := DisplayValue;
    qyDet.FieldByName('TaxPrice').AsFloat := qyDet.FieldByName('InvoicePrice').AsFloat * (1 + DisplayValue / 100);
    qyDet.FieldByName('InvoiceMoney').AsFloat := qyDet.FieldByName('InvoiceNum').AsFloat * qyDet.FieldByName('InvoicePrice').AsFloat;
    qyDet.FieldByName('AllMoney').AsFloat := qyDet.FieldByName('InvoiceNum').AsFloat * qyDet.FieldByName('TaxPrice').AsFloat;
    qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('InvoiceMoney').AsFloat;
  except
  end;
end;

procedure TStockInvoiceFM.cxgrdtbvColumn1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  ColorSelect(btSave.Enabled, qyDet, 'Color', 2);
end;

procedure TStockInvoiceFM.cxObjectPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if btSave.Enabled = false then exit;
  if AButtonIndex = 0 then // 所用供应商
  begin
    try
      PrvQFM := TPrvQFM.Create(nil);
      PrvQFM.iSelectKind := 2; // 单选
      PrvQFM.ShowModal;
      if PrvQFM.sId <> '' then
      begin
        if qyHed.State = dsBrowse then
          qyHed.Edit;
        qyHed.FieldByName('PrvId').AsString := PrvQFM.sId;
      end;
    finally
      PrvQFM.free;
      PrvQFM := nil;
    end;
  end;
  if AButtonIndex = 1 then
  begin
    try
      SGeneralFM := TSGeneralFM.Create(nil);
      SGeneralFM.Caption := '采购入库未记账供应商查询';
      SGeneralFM.ShowModal;
      if (SGeneralFM.bHasSelect) and (SGeneralFM.qyFind.RecordCount > 0) then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('PrvId').AsString := SGeneralFM.qyFind.FieldByName('供应商编号').AsString;
        btReferClick(Sender);
      end;
    finally
      SGeneralFM.free;
      SGeneralFM := nil;
    end;
  end;
end;

procedure TStockInvoiceFM.cxRgpSignFlagPropertiesChange(Sender: TObject);
begin
  inherited;
  if cxRgpSignFlag.ItemIndex = 0 then
    cxEdtNo.Style.TextColor := clBlue
  else if cxRgpSignFlag.ItemIndex = 1 then
    cxEdtNo.Style.TextColor := clRed;
end;

procedure TStockInvoiceFM.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  sFMId := 'StockInvoiceFM';
  sFMName := Self.Caption;
  sTableId := 'StockInvoiceHDTB';
  inherited;
  InitCbb('select PayModeName from PayModeTB where PayModeKind like ''%付款%''', cbbPayMode);
  qyHed.Open;
  cxgrdtbv.DataController.GetItemByFieldName('Remark').Options.Editing := false;
end;

procedure TStockInvoiceFM.FormDestroy(Sender: TObject);
begin
  inherited;
  StockInvoiceFM := nil;
end;

procedure TStockInvoiceFM.FormShow(Sender: TObject);
begin
  inherited;
  TextReadOnly(Self, True);
end;

procedure TStockInvoiceFM.N2Click(Sender: TObject);
begin
  inherited;
  BillView('StockIn', 'select * from WareInOutHDTB where BillNo=' + QuotedStr(qyDet.FieldByName('IoNo').AsString));
end;

procedure TStockInvoiceFM.qyDetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyDet.FieldByName('InvoiceNo').AsString := qyHed.FieldByName('InvoiceNo').AsString;
  qyDet.FieldByName('TaxRate').AsFloat := iTaxRate;
end;

procedure TStockInvoiceFM.qyDetItemIDChange(Sender: TField);
begin
  inherited;
  CalcField(qyDet, DataFM.qyItem, ['ItemId', 'ItemCode', 'ItemPYCode', 'ItemName', 'ItemSpc', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag'], ['ItemId', 'ItemCode', 'ItemPYCode', 'ItemName', 'ItemSpc', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag']);
end;

procedure TStockInvoiceFM.qyHedCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyHed, DataFM.qyPrv, ['PrvId', 'PrvName'], ['PrvId', 'PrvName']);
  CalcField(qyHed, DataFM.qyEmp, ['EmpId', 'EmpName'], ['EmpId', 'EmpName']);
end;

procedure TStockInvoiceFM.qyHedPrintNumChange(Sender: TField);
begin
  inherited;
  ShowFMInfo(sTableId,qyHed);
end;

procedure TStockInvoiceFM.smlntfldHedPrintNumChange(Sender: TField);
begin
  inherited;
  ShowFMInfo(sTableId,qyHed);
end;

end.
