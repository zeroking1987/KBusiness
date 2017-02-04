unit SaleInvoicePS;

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
  TSaleInvoiceFM = class(TBaseGrdFM)
    Label11: TLabel;
    cxBtReqMan: TcxDBButtonEdit;
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
    Label16: TLabel;
    cxEdt1: TcxDBTextEdit;
    Label14: TLabel;
    cxMoRemark: TcxDBMemo;
    cxPupEdtRemark: TcxDBPopupEdit;
    qyHedAutoID: TLargeintField;
    qyHedInvoiceNO: TStringField;
    qyHedSourceDate: TDateTimeField;
    qyHedInvoiceDate: TDateTimeField;
    qyHedSignFlag: TSmallintField;
    qyHedBillKind: TStringField;
    qyHedCustId: TStringField;
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
    qyHedCustName: TStringField;
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
    cxObject: TcxDBButtonEdit;
    qyDetItemName: TStringField;
    qyDetItemSpc: TStringField;
    qyDetItemPic: TStringField;
    qyDetItemUnit: TStringField;
    qyDetSubUnit: TStringField;
    qyDetExchRate: TFMTBCDField;
    qyDetiFlag: TSmallintField;
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
    procedure cxBt1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
    procedure cxBt2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxgrdbclmnOrderNumPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbclmnOrderPricePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure qyHedCustIdChange(Sender: TField);
    procedure cxgrdbclmnTaxPricePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbclmnTaxRatePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure btReferClick(Sender: TObject);
    procedure cxRgpFlagPropertiesChange(Sender: TObject);
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
  SaleInvoiceFM: TSaleInvoiceFM;

implementation

uses PublicPS, ControlPublicPS, DataPS, EmpQPS, ItemQPS, DeptQPS, CustQPS, SaleInvoiceFindPS, SaleInvoiceSaleOutRfPS, SGeneralPS;
{$R *.dfm}

procedure TSaleInvoiceFM.btAddClick(Sender: TObject);
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

procedure TSaleInvoiceFM.btAddLClick(Sender: TObject);
begin
  try
    qyDet.Append;
  except
  end;
end;

procedure TSaleInvoiceFM.btCancelClick(Sender: TObject);
begin
  if qyDet.Active then
    qyDet.CancelBatch();
  qyHed.CancelBatch();
  TextReadOnly(Self, True);
  inherited;
end;

procedure TSaleInvoiceFM.btCheckClick(Sender: TObject);
begin
  //inherited;
  AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, 1);
  ShowFMInfo(sTableId,qyHed);
end;

procedure TSaleInvoiceFM.btDelClick(Sender: TObject);
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

procedure TSaleInvoiceFM.btDelLClick(Sender: TObject);
begin
  try
    qyDet.Delete;
  except
    ShowBox('删除失败！');
  end;
end;

procedure TSaleInvoiceFM.btEditClick(Sender: TObject);
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

procedure TSaleInvoiceFM.btFindClick(Sender: TObject);
begin
  inherited;
  try
    if not Assigned(SaleInvoicerFindFM) then
      SaleInvoicerFindFM := TSaleInvoicerFindFM.Create(Application);
    SaleInvoicerFindFM.ShowModal;
  finally
    SaleInvoicerFindFM.Free;
    SaleInvoicerFindFM := nil
  end;
end;

procedure TSaleInvoiceFM.btReferClick(Sender: TObject);
var
  i: integer;
  sRfid: string;
begin
  try
    try
      SaleInvoiceSaleOutRfFM := TSaleInvoiceSaleOutRfFM.Create(nil);
      SaleInvoiceSaleOutRfFM.sObjectId := qyHed.FieldByName('CustId').asString;
      SaleInvoiceSaleOutRfFM.btFindClick(self);
      SaleInvoiceSaleOutRfFM.ShowModal;
      if SaleInvoiceSaleOutRfFM.fFlag = 1 then
      begin
        SaleInvoiceSaleOutRfFM.qyFind.Filter := ' bSelect=1';
        SaleInvoiceSaleOutRfFM.qyFind.Filtered := true;
        SaleInvoiceSaleOutRfFM.qyFind.First;
        for i := 0 to SaleInvoiceSaleOutRfFM.qyFind.RecordCount - 1 do
        begin
          if qyHed.State = dsBrowse then qyHed.Edit;
          qyHed.FieldByName('SubjoinNo').AsString := SaleInvoiceSaleOutRfFM.qyFind.FieldByName('BillNo').AsString;
          qyHed.FieldByName('CustId').AsString := SaleInvoiceSaleOutRfFM.qyFind.FieldByName('ObjectId').AsString;
          qyHed.FieldByName('SignFlag').AsInteger := SaleInvoiceSaleOutRfFM.qyFind.FieldByName('SignFlag').AsInteger;
          qyHed.FieldByName('SourceDate').AsDateTime := SaleInvoiceSaleOutRfFM.qyFind.FieldByName('BillDate').AsDateTime;

          if i = 0 then
          begin
            qyDet.Edit;
            qyDetAfterInsert(qyDet);
          end
          else
            qyDet.Append;
          qyDet.FieldByName('ItemId').AsString := SaleInvoiceSaleOutRfFM.qyFind.FieldByName('ItemId').AsString;
          qyDet.FieldByName('ItemCode').AsString := SaleInvoiceSaleOutRfFM.qyFind.FieldByName('ItemCode').AsString;
          qyDet.FieldByName('ItemPYCode').AsString := SaleInvoiceSaleOutRfFM.qyFind.FieldByName('ItemPYCode').AsString;
          qyDet.FieldByName('ProType').AsString := SaleInvoiceSaleOutRfFM.qyFind.FieldByName('ProType').AsString;
          qyDet.FieldByName('InvoicePrice').AsFloat := SaleInvoiceSaleOutRfFM.qyFind.FieldByName('MainPrice').AsFloat;
          qyDet.FieldByName('TaxPrice').AsFloat := SaleInvoiceSaleOutRfFM.qyFind.FieldByName('TaxPrice').AsFloat;
          qyDet.FieldByName('TaxRate').AsFloat := SaleInvoiceSaleOutRfFM.qyFind.FieldByName('TaxRate').AsFloat;
          qyDet.FieldByName('InvoiceNum').AsFloat := SaleInvoiceSaleOutRfFM.qyFind.FieldByName('NoRfNum').AsFloat;
          qyDet.FieldByName('IoNo').AsString := SaleInvoiceSaleOutRfFM.qyFind.FieldByName('BillNo').AsString;
          qyDet.FieldByName('IoId').AsString := SaleInvoiceSaleOutRfFM.qyFind.FieldByName('AutoNo').AsString;
          UpdateData(cxgrdtbv, 'InvoiceNum');
          qyDet.post;
          SaleInvoiceSaleOutRfFM.qyFind.Next;
        end;
      end;
    finally
      SaleInvoiceSaleOutRfFM.free;
      SaleInvoiceSaleOutRfFM := nil;
    end;
  except
  end;
end;

procedure TSaleInvoiceFM.btSaveClick(Sender: TObject);
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

procedure TSaleInvoiceFM.btUnCheckClick(Sender: TObject);
var
  sHaveNo: string;
begin
  inherited;
  sHaveNo := bHaveData(DataFM.qyTemp, 'select PayNo from SalePayDTTB where InvoiceNo=' + QuotedStr(Trim(cxEdtNo.Text)));
  if sHaveNo <> '' then
  begin
    ShowBox('记账单已经收款,不能反审核 单号: ' + sHaveNo);
    Exit;
  end;

  AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, -1);
  ShowFMInfo(sTableId,qyHed);
end;

procedure TSaleInvoiceFM.cxBt1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  try
    if btSave.Enabled = False then Exit;
    try
      EmpQFM := TEmpQFM.Create(nil);
      EmpQFM.iSelectKind := 2; //单选
      EmpQFM.ShowModal;
      if EmpQFM.sId <> '' then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('EmpId').AsString := EmpQFM.sId;
      end;
    finally
      EmpQFM.Free;
      EmpQFM := nil;
    end;
  except
  end;
end;

procedure TSaleInvoiceFM.cxBt2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  try
    if btSave.Enabled = False then Exit;
    try
      CustQFM := TCustQFM.Create(nil);
      CustQFM.iSelectKind := 2; //单选
      CustQFM.ShowModal;
      if CustQFM.sId <> '' then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('CustId').AsString := CustQFM.sId;
      end;
    finally
      CustQFM.Free;
      CustQFM := nil;
    end;
  except
  end;
end;

procedure TSaleInvoiceFM.cxEdtNoPropertiesChange(Sender: TObject);
begin
  inherited;
  with qyDet do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from SaleInvoiceDTTB where InvoiceNo=' + QuotedStr(trim(cxEdtNo.Text)));
    Open;
  end;
  if DataFM.qyPyCode.Active = false then DataFM.qyPyCode.Open;
  ShowFMInfo(sTableId,qyHed);
end;

procedure TSaleInvoiceFM.cxgrdbclmnItemCodePropertiesButtonClick(Sender: TObject;
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

procedure TSaleInvoiceFM.cxgrdbclmnItemPYCodePropertiesValidate(Sender: TObject;
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

procedure TSaleInvoiceFM.cxgrdbclmnOrderNumPropertiesValidate(Sender: TObject;
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

procedure TSaleInvoiceFM.cxgrdbclmnOrderPricePropertiesValidate(Sender: TObject;
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

procedure TSaleInvoiceFM.cxgrdbclmnProTypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  ProTypeSelect(btSave.Enabled, qyDet, 'ProType', 2);
end;

procedure TSaleInvoiceFM.cxgrdbclmnTaxPricePropertiesValidate(Sender: TObject;
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

procedure TSaleInvoiceFM.cxgrdbclmnTaxRatePropertiesValidate(Sender: TObject;
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

procedure TSaleInvoiceFM.cxgrdtbvColumn1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  ColorSelect(btSave.Enabled, qyDet, 'Color', 2);
end;

procedure TSaleInvoiceFM.cxObjectPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if btSave.Enabled = false then exit;
  if AButtonIndex = 0 then // 所用客户
  begin
    try
      CustQFM := TCustQFM.Create(nil);
      CustQFM.iSelectKind := 2; // 单选
      CustQFM.ShowModal;
      if CustQFM.sId <> '' then
      begin
        if qyHed.State = dsBrowse then
          qyHed.Edit;
        qyHed.FieldByName('CustId').AsString := CustQFM.sId;
      end;
    finally
      CustQFM.free;
      CustQFM := nil;
    end;
  end;
  if AButtonIndex = 1 then
  begin
    try
      SGeneralFM := TSGeneralFM.Create(nil);
      SGeneralFM.Caption := '销售出库未记账客户查询';
      SGeneralFM.ShowModal;
      if (SGeneralFM.bHasSelect) and (SGeneralFM.qyFind.RecordCount > 0) then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('CustId').AsString := SGeneralFM.qyFind.FieldByName('客户编号').AsString;
        btReferClick(Sender); end;
    finally
      SGeneralFM.free;
      SGeneralFM := nil;
    end;
  end;
end;

procedure TSaleInvoiceFM.cxRgpFlagPropertiesChange(Sender: TObject);
begin
  inherited;
  if cxRgpSignFlag.ItemIndex = 0 then
    cxEdtNo.Style.TextColor := clBlue
  else if cxRgpSignFlag.ItemIndex = 1 then
    cxEdtNo.Style.TextColor := clRed;
end;

procedure TSaleInvoiceFM.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  sFMId := 'SaleInvoiceFM';
  sFMName := Self.Caption;
  sTableId := 'SaleInvoiceHDTB';
  inherited;
  InitCbb('select PayModeName from PayModeTB where PayModeKind like ''%收款%''', cbbPayMode);
  qyHed.Open;
  cxgrdtbv.DataController.GetItemByFieldName('Remark').Options.Editing := false;
end;

procedure TSaleInvoiceFM.FormDestroy(Sender: TObject);
begin
  inherited;
  SaleInvoiceFM := nil;
end;

procedure TSaleInvoiceFM.FormShow(Sender: TObject);
begin
  inherited;
  TextReadOnly(Self, True);
end;

procedure TSaleInvoiceFM.N2Click(Sender: TObject);
begin
  inherited;
  BillView('SaleOut', 'select * from WareInOutHDTB where BillNo=' + QuotedStr(qyDet.FieldByName('IoNo').AsString));
end;

procedure TSaleInvoiceFM.qyDetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyDet.FieldByName('InvoiceNo').AsString := qyHed.FieldByName('InvoiceNo').AsString;
  qyDet.FieldByName('TaxRate').AsFloat := iTaxRate;
end;

procedure TSaleInvoiceFM.qyDetItemIDChange(Sender: TField);
begin
  inherited;
  CalcField(qyDet, DataFM.qyItem, ['ItemId', 'ItemCode', 'ItemPYCode', 'ItemName', 'ItemSpc', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag'], ['ItemId', 'ItemCode', 'ItemPYCode', 'ItemName', 'ItemSpc', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag']);
end;

procedure TSaleInvoiceFM.qyHedCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyHed, DataFM.qyCust, ['CustId', 'CustName'], ['CustId', 'CustName']);
  CalcField(qyHed, DataFM.qyEmp, ['EmpId', 'EmpName'], ['EmpId', 'EmpName']);
end;

procedure TSaleInvoiceFM.qyHedCustIdChange(Sender: TField);
begin
  inherited;
  CalcField(qyHed, DataFM.qyCust, ['CustId', 'SendAdd'], ['CustId', 'CustAddress']);
end;

procedure TSaleInvoiceFM.qyHedPrintNumChange(Sender: TField);
begin
  inherited;
  ShowFMInfo(sTableId,qyHed);
end;

procedure TSaleInvoiceFM.smlntfldHedPrintNumChange(Sender: TField);
begin
  inherited;
  ShowFMInfo(sTableId,qyHed);
end;

end.
