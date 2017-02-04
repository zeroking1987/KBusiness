unit StockOrderPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, ADOInt,
  Dialogs, BaseGrdPS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, cxGridCustomPopupMenu, cxGridPopupMenu,
  Menus, ADODB, dxBar, cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, StdCtrls, ExtCtrls, frxClass, frxDBSet,
  cxContainer, cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxMemo, cxButtonEdit,
  cxLabel, cxDBLabel, cxButtons, cxGroupBox, cxDBLookupComboBox, cxGridBandedTableView,
  cxGridDBBandedTableView, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  cxMRUEdit, cxPCdxBarPopupMenu, dxSkinOffice2010Blue, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu, cxNavigator;

type
  TStockOrderFM = class(TBaseGrdFM)
    Label11: TLabel;
    cxBtReqMan: TcxDBButtonEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    blnfldDetbSelect: TBooleanField;
    qyDetItemID: TStringField;
    qyDetsColor: TStringField;
    qyDetProType: TStringField;
    fmtbcdfldDetSubNum: TFMTBCDField;
    qyDetRemark: TStringField;
    qyDetItemPYCode: TStringField;
    cxgrdbclmnItemCode: TcxGridDBColumn;
    cxgrdbclmnItemPYCode: TcxGridDBColumn;
    cxgrdbclmnItemName: TcxGridDBColumn;
    cxgrdbclmnItemSpc: TcxGridDBColumn;
    cxgrdbclmnItemUnit: TcxGridDBColumn;
    cxgrdbclmnProType: TcxGridDBColumn;
    cxgrdbclmnOrderNum: TcxGridDBColumn;
    cxgrdbclmnOrderPrice: TcxGridDBColumn;
    cxgrdbclmnRemark: TcxGridDBColumn;
    Label10: TLabel;
    cbbPayMode: TcxDBComboBox;
    blnfldHedbSelect: TBooleanField;
    qyHedStockOrderNO: TStringField;
    dtmfldHedOrderDate: TDateTimeField;
    qyHedPrvId: TStringField;
    qyHedSubjoinNo: TStringField;
    qyHedPayMode: TStringField;
    qyHedTheme: TStringField;
    qyHedRemark: TStringField;
    blnfldHedbPrint: TBooleanField;
    smlntfldHedPrintNum: TSmallintField;
    dtmfldHedMakeDate: TDateTimeField;
    qyHedMakeMan: TStringField;
    qyHedMakeManName: TStringField;
    qyHedEditMan: TStringField;
    qyHedEditManName: TStringField;
    dtmfldHedEditDate: TDateTimeField;
    smlntfldHedAuditFlag: TSmallintField;
    blnfldHedbMaxAudit: TBooleanField;
    qyHedAuditManName: TStringField;
    qyHedAuditDate: TStringField;
    dtmfldHedMaxAuditDate: TDateTimeField;
    qyHedEmpId: TStringField;
    qyHedPrvName: TStringField;
    qyHedEmpName: TStringField;
    qyHedPrvAddress: TStringField;
    qyDetStockOrderNo: TStringField;
    fmtbcdfldDetOrderNum: TFMTBCDField;
    fmtbcdfldDetTaxRate: TFMTBCDField;
    fmtbcdfldDetTaxPrice: TFMTBCDField;
    fmtbcdfldDetTaxMoney: TFMTBCDField;
    fmtbcdfldDetOrderMoney: TFMTBCDField;
    fmtbcdfldDetSubPrice: TFMTBCDField;
    fmtbcdfldDetSubTaxPrice: TFMTBCDField;
    fmtbcdfldDetSubMoney: TFMTBCDField;
    fmtbcdfldDetAllMoney: TFMTBCDField;
    blnfldDetbTax: TBooleanField;
    cxgrdbclmnOrderMoney: TcxGridDBColumn;
    cxgrdbclmnTaxPrice: TcxGridDBColumn;
    cxgrdbclmnTaxRate: TcxGridDBColumn;
    cxgrdbclmnAllMoney: TcxGridDBColumn;
    Label15: TLabel;
    fmtbcdfldDetOrderPrice: TFMTBCDField;
    qyDetAutoID: TLargeintField;
    qyHedAutoID: TLargeintField;
    qyDetRfNo: TStringField;
    cxgrdbclmnRfNo: TcxGridDBColumn;
    cxMoRemark: TcxDBMemo;
    cxPupEdtRemark: TcxDBPopupEdit;
    cxPrvAdd: TcxDBTextEdit;
    cxObject: TcxDBButtonEdit;
    qyDetItemCode: TStringField;
    qyDetItemName: TStringField;
    qyDetItemSpc: TStringField;
    qyDetItemPic: TStringField;
    qyDetItemUnit: TStringField;
    qyDetSubUnit: TStringField;
    qyDetDeliverDate: TDateTimeField;
    cxgrdbclmnSubUnit: TcxGridDBColumn;
    cxgrdbclmnExchRate: TcxGridDBColumn;
    cxgrdbclmnSubNum: TcxGridDBColumn;
    cxgrdbclmnDeliveDate: TcxGridDBColumn;
    smlntfldDetiFlag: TSmallintField;
    fmtbcdfldDetExchRate: TFMTBCDField;
    strngfldDetAutoNo: TStringField;
    qyDetRfId: TStringField;
    qyHedPrvTel: TStringField;
    qyHedPrvFax: TStringField;
    Label16: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    N1: TMenuItem;
    N2: TMenuItem;
    qyHedbAllIn: TBooleanField;
    cExbbBillFind: TcxExtLookupComboBox;
    qyFind: TADOQuery;
    lbl1: TLabel;
    cxgrdbtblvwBillFind: TcxGridDBTableView;
    dsFind: TDataSource;
    cxgrdbclmnBillFindDBColumn: TcxGridDBColumn;
    cxgrdbclmnBillFindDBColumn1: TcxGridDBColumn;
    cxgrdbclmnBillFindDBColumn2: TcxGridDBColumn;
    cxgrdbclmnBillFindDBColumn3: TcxGridDBColumn;
    cxgrdbclmnBillFindColumn1: TcxGridDBColumn;
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
    procedure qyDetItemIDChange(Sender: TField);
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
    procedure cxgrdbclmnProTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxObjectPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdbclmnItemCodePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbclmnSubNumPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure N2Click(Sender: TObject);
    procedure cxExtLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxgrdtbvColumn1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public

    { Public declarations }
  end;
var
  StockOrderFM: TStockOrderFM;

implementation
uses PublicPS, ControlPublicPS, DataPS, EmpQPS, ItemQPS, DeptQPS, PrvQPS, StockOrderFindPS, StockOrderReqRfPS;
{$R *.dfm}

procedure TStockOrderFM.btAddClick(Sender: TObject);
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
    qyHed.FieldByName('StockOrderNo').AsString := GetTableNo(sTableId, 'StockOrderNo');
    qyHed.FieldByName('OrderDate').AsDateTime := StrToDateTime(FormatDateTime('yyyy-mm-dd', SysDateTime));
    qyHed.FieldByName('MakeMan').AsString := LoginEmpId;
    qyHed.FieldByName('MakeManName').AsString := LoginEmpName;
    qyHed.FieldByName('MakeDate').AsDateTime := Now;
    qyHed.FieldByName('AuditFlag').AsInteger := 0;
    qyDet.Edit;
  except
    on E: Exception do
      ShowError(e.Message);
  end;
end;

procedure TStockOrderFM.btAddLClick(Sender: TObject);
begin
  try
    qyDet.Append;
  except
  end;
end;

procedure TStockOrderFM.btCancelClick(Sender: TObject);
begin
  qyDet.CancelBatch();
  qyHed.CancelBatch();
  TextReadOnly(Self, True);
  inherited;
end;

procedure TStockOrderFM.btDelClick(Sender: TObject);
var
  i: Integer;
  sBiilNo: string;
begin
  inherited;
  if (cxEdtNo.Text = '') or (qyHed.Active = false) then exit;
  qyHed.UpdateCursorPos;
  qyHed.Recordset.Resync(AdAffectcurrent, AdResyncAllValues);
  qyHed.Resync([]);
  if qyHed.FieldByName('AuditFlag').asInteger > 0 then
  begin
    ShowWarn('本单已经审核,不能删除!');
    exit;
  end;
  if (bRight) and (bDelPart = false) and (bDelAll = false) then
  begin
    ShowWarn('你没有本单据删除权限，不能操作!');
    exit;
  end
  else if (bRight) and (bDelPart) and (bDelAll = false) and (qyHed.FieldByName('MakeMan').AsString <> LoginEmpId) then
  begin
    ShowWarn('你只能删除自己做的单据!');
    exit;
  end;
  if ShowDlg('确实要删除该单据吗?') then
  begin
    try
      sBiilNo := trim(cxEdtNo.Text);
      ExeSql('Delete StockOrderDTTB where StockOrderNO=' + QuotedStr(sBiilNo));
      ExeSql('Delete StockOrderHDTB where StockOrderNO=' + QuotedStr(sBiilNo));
      with qyHed do
      begin
        if Active then Close;
        SQL.Clear;
        sql.Add('select * from StockOrderHDTB where IsNull(bMaxAudit,0)=0 ');
        Open;
      end;
    {  qyDet.First;
      for i := 0 to qyDet.RecordCount - 1 do
      begin
        qyDet.Delete;
        qyDet.Next;
      end;
      qyDet.UpdateBatch;
      qyHed.Delete;
      qyHed.UpdateBatch; }
      SetLog(sFMName, sBiilNo, '删除');
      ShowBox('删除成功!');
    except
      on E: Exception do
      begin
        ShowError('删除失败!');
      end;
    end;
  end;
end;

procedure TStockOrderFM.btDelLClick(Sender: TObject);
begin
  try
    qyDet.Delete;
  except
    ShowBox('删除失败！');
  end;
end;

procedure TStockOrderFM.btEditClick(Sender: TObject);
var i: Integer;
begin
  if qyHed.RecordCount <= 0 then exit;
  GetServerTime;
  qyHed.UpdateCursorPos;
  qyHed.Recordset.Resync(AdAffectcurrent, AdResyncAllValues);
  qyHed.Resync([]);
  //有修改单价权限的人员可以在单据审核后修改单价
  if (bRight) and (bEditPrice) and (qyHed.FieldByName('AuditFlag').asInteger > 0) then
  begin
    TextReadOnly(Self, True);
    cxgrdtbv.OptionsData.Editing := true;
    for i := 0 to cxgrdtbv.ColumnCount - 1 do
    begin
      if (cxgrdtbv.Columns[i].DataBinding.FieldName = 'OrderPrice') or
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
    cxPrvAdd.Properties.ReadOnly := true;
    inherited;
  end;
  qyHed.Edit;
  qyHed.FieldByName('EditMan').AsString := LoginEmpId;
  qyHed.FieldByName('EditManName').AsString := LoginEmpName;
  qyHed.FieldByName('EditDate').AsDateTime := SysDateTime;
end;

procedure TStockOrderFM.btFindClick(Sender: TObject);
begin
  inherited;
  try
    if not Assigned(StockOrderFindFM) then
      StockOrderFindFM := TStockOrderFindFM.Create(Application);
    StockOrderFindFM.ShowModal;
   { if StockOrderFindFM.sBillNo <> '' then
    begin
      with qyHed do
      begin
        if Active then Close;
        SQL.Clear;
        SQL.Add('select * from StockOrderHDTB where StockOrderNo in (' + StockOrderFindFM.sBillNo + ')');
        Open;
      end;
    end; }
  finally
    StockOrderFindFM.Free;
    StockOrderFindFM := nil
  end;
end;

procedure TStockOrderFM.btReferClick(Sender: TObject);
var
  i: integer;
  sRfid: string;
begin
  try
    try
      if cxObject.Text = '' then
      begin
        ShowBox('请先选择供应商');
        exit
      end;
      StockOrderReqRfFM := TStockOrderReqRfFM.Create(nil);
      StockOrderReqRfFM.btFindClick(self);
      StockOrderReqRfFM.ShowModal;
      if StockOrderReqRfFM.fFlag = 1 then
      begin
        StockOrderReqRfFM.qyFind.Filter := ' bSelect=1';
        StockOrderReqRfFM.qyFind.Filtered := true;
        StockOrderReqRfFM.qyFind.First;
        for i := 0 to StockOrderReqRfFM.qyFind.RecordCount - 1 do
        begin
          if i = 0 then
          begin
            qyDet.Edit;
            qyDetAfterInsert(qyDet);
          end
          else
            qyDet.Append;
          qyDet.FieldByName('ItemId').AsString := StockOrderReqRfFM.qyFind.FieldByName('ItemId').AsString;
          qyDet.FieldByName('ProType').AsString := StockOrderReqRfFM.qyFind.FieldByName('ProType').AsString;
          qyDet.FieldByName('OrderNum').AsFloat := StockOrderReqRfFM.qyFind.FieldByName('NoOrderNum').AsFloat;
          qyDet.FieldByName('RfNo').AsString := StockOrderReqRfFM.qyFind.FieldByName('ReqNO').AsString;
          qyDet.FieldByName('RfId').AsString := StockOrderReqRfFM.qyFind.FieldByName('AutoNo').AsString;
          UpdateData(cxgrdtbv, 'OrderNum');
          qyDet.post;
          StockOrderReqRfFM.qyFind.Next;
        end;
      end;
    finally
      StockOrderReqRfFM.free;
      StockOrderReqRfFM := nil;
    end;
  except
  end;
end;

procedure TStockOrderFM.btSaveClick(Sender: TObject);
var
  sNewNo: string;
  i: Integer;
begin
  try
    if cxObject.Text = '' then
    begin
      ShowBox('请先选择供应商');
      Exit;
    end;

    qyHed.UpdateBatch;
    qyDet.UpdateBatch;
    TextReadOnly(Self, True);
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
          sNewNo := GetTableNO(sTableId, 'StockOrderNo');
          ;
          if qyHed.FieldByName('StockOrderNo').AsString = sNewNo then
          begin
            ShowBox('单号有重复!');
            Exit;
          end;
          if qyHed.State = dsBrowse then qyHed.Edit;
          if qyDet.State = dsBrowse then qyDet.Edit;

          qyHed.FieldByName('StockOrderNo').AsString := sNewNo;
          qyDet.First;
          for i := 0 to qyDet.RecordCount - 1 do
          begin
            if qyDet.State = dsBrowse then qyDet.Edit;
            qyDet.FieldByName('StockOrderNo').AsString := sNewNo;
            qyDet.Next;
          end;
          qyHed.UpdateBatch;
          qyDet.UpdateBatch;
          TextReadOnly(Self, true);
          if cxEdtEditManName.Text <> '' then
            SetLog(sFMName, trim(cxEdtNo.Text), '修改(异常)')
          else
            SetLog(sFMName, trim(cxEdtNo.Text), '添加(异常)');
          inherited;
          ShowBox('保存成功!');
        except
          ShowBox('不能保存重复信息!');
        end;
      end;
    end;
  end;
end;

procedure TStockOrderFM.btUnCheckClick(Sender: TObject);
begin
  if bHaveData(DataFM.qyTemp, 'select ItemId from WareInOutDTTB where StockNo=' + QuotedStr(Trim(cxEdtNo.Text))) <> '' then
  begin
    ShowBox('该采购订单已被采购入库单引用,不能反审核');
    Exit;
  end;
  inherited;
  AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, -1);
  ShowFMInfo(sTableId,qyHed);
end;

procedure TStockOrderFM.cxBt1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TStockOrderFM.cxEdtNoPropertiesChange(Sender: TObject);
begin
  inherited;
  with qyDet do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from StockOrderDTTB where StockOrderNo=' + QuotedStr(trim(cxEdtNo.Text)));
    Open;
  end;
  if DataFM.qyPyCode.Active = false then DataFM.qyPyCode.Open;
  ShowFMInfo(sTableId,qyHed);
  if (qyHed.FindField('bAllIn') <> nil) and (qyHed.FieldByName('bAllIn').AsBoolean) then
    cxLabtemp5.Caption := '已入完库'
  else
    cxLabtemp5.Caption := '';
end;

procedure TStockOrderFM.cxExtLookupComboBox1PropertiesChange(Sender: TObject);
begin
  inherited;
  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('select * from StockOrderHDTB where StockOrderNO=' + QuotedStr(qyFind.FieldByName('单号').AsString));
    Open;
  end;
end;

procedure TStockOrderFM.cxgrdbclmnItemCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i: Integer;
begin
  if btSave.Enabled = False then Exit;
  try
    ItemQFM := TItemQFM.Create(nil);
    ItemQFM.sParam := '原材料辅料';
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

procedure TStockOrderFM.cxgrdbclmnItemCodePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  DisplayValue := VarToStr(DisplayValue);
  if DisplayValue = '' then Exit;
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

procedure TStockOrderFM.cxgrdbclmnOrderNumPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  try
    inherited;
    Error := False;
    if DisplayValue = '' then DisplayValue := 0;
    qyDet.FieldByName('OrderNum').AsFloat := DisplayValue;
    qyDet.FieldByName('OrderMoney').AsFloat := DisplayValue * qyDet.FieldByName('OrderPrice').AsFloat;
    qyDet.FieldByName('AllMoney').AsFloat := DisplayValue * qyDet.FieldByName('TaxPrice').AsFloat;
    qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('OrderMoney').AsFloat;
    if qyDet.FieldByName('iFlag').AsInteger = 1 then
      qyDet.FieldByName('SubNum').AsFloat := DisplayValue * qyDet.FieldByName('ExchRate').AsFloat
    else
    begin
      if qyDet.FieldByName('ExchRate').AsFloat <> 0 then
        qyDet.FieldByName('SubNum').AsFloat := DisplayValue / qyDet.FieldByName('ExchRate').AsFloat
    end;
  except
  end;
end;

procedure TStockOrderFM.cxgrdbclmnOrderPricePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  try
    inherited;
    Error := False;
    if DisplayValue = '' then
      DisplayValue := 0;
    qyDet.FieldByName('OrderPrice').AsFloat := DisplayValue;
    qyDet.FieldByName('TaxPrice').AsFloat := DisplayValue * (1 + qyDet.FieldByName('TaxRate').AsFloat / 100);
    qyDet.FieldByName('OrderMoney').AsFloat := qyDet.FieldByName('OrderNum').AsFloat * DisplayValue;
    qyDet.FieldByName('AllMoney').AsFloat := qyDet.FieldByName('OrderNum').AsFloat * qyDet.FieldByName('TaxPrice').AsFloat;
    qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('OrderMoney').AsFloat;
  except
  end;
end;

procedure TStockOrderFM.cxgrdbclmnProTypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  ProTypeSelect(btSave.Enabled, qyDet, 'ProType', 2);
end;

procedure TStockOrderFM.cxgrdbclmnSubNumPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := false;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('SubNum').AsFloat := DisplayValue;
  if qyDet.FieldByName('iFlag').asInteger = 1 then
    qyDet.FieldByName('OrderNum').AsFloat := DisplayValue / qyDet.FieldByName('ExchRate').AsFloat
  else
  begin
    if qyDet.FieldByName('ExchRate').AsFloat <> 0 then
      qyDet.FieldByName('OrderNum').AsFloat := DisplayValue * qyDet.FieldByName('ExchRate').AsFloat
  end;
  qyDet.FieldByName('SubMoney').AsFloat := DisplayValue * qyDet.FieldByName('SubPrice').AsFloat;

  qyDet.FieldByName('AllMoney').AsFloat := DisplayValue * qyDet.FieldByName('SubTaxPrice').AsFloat;
  qyDet.FieldByName('OrderMoney').AsFloat := qyDet.FieldByName('SubMoney').AsFloat;
  qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('OrderMoney').AsFloat;

end;

procedure TStockOrderFM.cxgrdbclmnTaxPricePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  try
    inherited;
    Error := False;
    if DisplayValue = '' then
      DisplayValue := 0;
    qyDet.FieldByName('TaxPrice').AsFloat := DisplayValue;
    qyDet.FieldByName('OrderPrice').AsFloat := DisplayValue / (1 + qyDet.FieldByName('TaxRate').AsFloat / 100);
    qyDet.FieldByName('OrderMoney').AsFloat := qyDet.FieldByName('OrderNum').AsFloat * (DisplayValue / (1 + qyDet.FieldByName('TaxRate').AsFloat / 100));
    qyDet.FieldByName('AllMoney').AsFloat := qyDet.FieldByName('OrderNum').AsFloat * DisplayValue;
    qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('OrderMoney').AsFloat;
  except
  end;
end;

procedure TStockOrderFM.cxgrdbclmnTaxRatePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  try
    inherited;
    Error := False;
    if DisplayValue = '' then
      DisplayValue := 0;
    qyDet.FieldByName('TaxRate').AsFloat := DisplayValue;
    qyDet.FieldByName('TaxPrice').AsFloat := qyDet.FieldByName('OrderPrice').AsFloat * (1 + DisplayValue / 100);
    qyDet.FieldByName('OrderMoney').AsFloat := qyDet.FieldByName('OrderNum').AsFloat * qyDet.FieldByName('OrderPrice').AsFloat;
    qyDet.FieldByName('AllMoney').AsFloat := qyDet.FieldByName('OrderNum').AsFloat * qyDet.FieldByName('TaxPrice').AsFloat;
    qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('OrderMoney').AsFloat;
  except
  end;
end;

procedure TStockOrderFM.cxgrdtbvColumn1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  ColorSelect(btSave.Enabled, qyDet, 'sColor', 2);
end;

procedure TStockOrderFM.cxObjectPropertiesButtonClick(Sender: TObject;
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
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('PrvId').AsString := PrvQFM.sId;
      end;
    finally
      PrvQFM.Free;
      PrvQFM := nil;
    end;
  except
  end;
end;

procedure TStockOrderFM.FormCreate(Sender: TObject);
begin
  sFMId := 'StockOrderFM';
  sFMName := Self.Caption;
  sTableId := 'StockOrderHDTB';
  inherited;
  InitCbb('select PayModeName from PayModeTB where PayModeKind like ''%付款%''', cbbPayMode);
  qyHed.Open;
end;

procedure TStockOrderFM.FormDestroy(Sender: TObject);
begin
  inherited;
  StockOrderFM := nil;
end;

procedure TStockOrderFM.FormShow(Sender: TObject);
var i: Integer;
begin
  inherited;
  TextReadOnly(Self, True);
  with qyFind do
  begin
    if Active then Close;
    Sql.Clear;
    SQL.Add('exec prBillFind ' + QuotedStr(sTableId));
    Open;
  end;
  if (bRight) then
  begin
    for i := 0 to cxgrdtbv.ColumnCount - 1 do
    begin
      if (cxgrdtbv.Columns[i].DataBinding.FieldName = 'OrderPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'TaxPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'TaxRate') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'OrderMoney') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubTaxPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubMoney') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'AllMoney') then
        cxgrdtbv.Columns[i].Visible := bShowPrice;
    end;
  end;
end;

procedure TStockOrderFM.N2Click(Sender: TObject);
begin
  inherited;
  BillView('StockIn', 'select * from WareInOutHDTB where BillNo in (select BillNo from WareInOutDTTB where StockId=' + QuotedStr(qyDet.FieldByName('AutoNo').AsString) + ')');
end;

procedure TStockOrderFM.qyDetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyDet.FieldByName('StockOrderNo').AsString := qyHed.FieldByName('StockOrderNo').AsString;
  qyDet.FieldByName('AutoNo').AsString := GetDateAutoNo(sTableId);
  qyDet.FieldByName('TaxRate').AsFloat := iTaxRate;
end;

procedure TStockOrderFM.qyDetItemIDChange(Sender: TField);
begin
  inherited;
  CalcField(qyDet, DataFM.qyItem, ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag'],
    ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag']);

  if not DataFM.qyStockPrice.Active then DataFM.qyStockPrice.open;
  DataFM.qyStockPrice.Requery();
  if DataFM.qyStockPrice.Locate('PrvId;ItemId', vararrayof([qyHed.FieldByName('PrvId').AsString, qyDet.FieldByName('ItemId').AsString]), []) then
  begin
    qyDet.FieldByName('OrderPrice').Value := DataFM.qyStockPrice.FieldByName('MainPrice').Value;
    qyDet.FieldByName('TaxPrice').Value := DataFM.qyStockPrice.FieldByName('TaxPrice').Value;
    qyDet.FieldByName('TaxRate').Value := DataFM.qyStockPrice.FieldByName('TaxRate').Value;
    UpdateData(cxgrdtbv, 'OrderPrice');
  end;
end;

procedure TStockOrderFM.qyHedCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyHed, DataFM.qyPrv, ['PrvId', 'PrvName', 'PrvAddress', 'PrvTel', 'PrvFax'], ['PrvId', 'PrvName', 'PrvAddress', 'Tel', 'Fax']);
  CalcField(qyHed, DataFM.qyEmp, ['EmpId', 'EmpName'], ['EmpId', 'EmpName']);
end;

procedure TStockOrderFM.smlntfldHedPrintNumChange(Sender: TField);
begin
  inherited;
  ShowFMInfo(sTableId,qyHed);
end;

end.
