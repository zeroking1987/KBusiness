unit StockRecePS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  ADOInt, Clipbrd,
  Dialogs, BaseGrdPS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter,
  cxGridCustomPopupMenu, cxGridPopupMenu,
  Menus, ADODB, dxBar, cxClasses, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, StdCtrls, ExtCtrls,
  frxClass, frxDBSet,
  cxContainer, cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxMemo, cxButtonEdit,
  cxLabel, cxDBLabel, cxButtons, cxGroupBox, cxDBLookupComboBox,
  cxGridBandedTableView,
  cxGridDBBandedTableView, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  cxMRUEdit, cxPCdxBarPopupMenu, dxSkinOffice2010Blue, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu, cxNavigator;

type
  TStockReceFM = class(TBaseGrdFM)
    Label11: TLabel;
    cxBtReqMan: TcxDBButtonEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    blnfldDetbSelect: TBooleanField;
    qyDetItemID: TStringField;
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
    fmtbcdfldDetTaxRate: TFMTBCDField;
    fmtbcdfldDetTaxPrice: TFMTBCDField;
    fmtbcdfldDetTaxMoney: TFMTBCDField;
    fmtbcdfldDetSubPrice: TFMTBCDField;
    fmtbcdfldDetSubTaxPrice: TFMTBCDField;
    fmtbcdfldDetSubMoney: TFMTBCDField;
    fmtbcdfldDetAllMoney: TFMTBCDField;
    dtmfldDetDeliveDate: TDateTimeField;
    blnfldDetbTax: TBooleanField;
    cxgrdbclmnOrderMoney: TcxGridDBColumn;
    cxgrdbclmnTaxPrice: TcxGridDBColumn;
    cxgrdbclmnTaxRate: TcxGridDBColumn;
    cxgrdbclmnAllMoney: TcxGridDBColumn;
    Label15: TLabel;
    qyDetAutoID: TLargeintField;
    qyHedAutoID: TLargeintField;
    qyDetRfNo: TStringField;
    cxgrdbclmnRfNo: TcxGridDBColumn;
    cxMoRemark: TcxDBMemo;
    cxPupEdtRemark: TcxDBPopupEdit;
    cxPrvAdd: TcxDBTextEdit;
    qyDetItemCode: TStringField;
    qyDetItemName: TStringField;
    qyDetItemSpc: TStringField;
    qyDetItemPic: TStringField;
    qyDetItemUnit: TStringField;
    qyDetSubUnit: TStringField;
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
    qyHedStockReceNo: TStringField;
    qyHedReceDate: TDateTimeField;
    cxObject: TcxDBButtonEdit;
    qyDetStockReceNo: TStringField;
    qyDetReceDate: TDateTimeField;
    qyDetReceNum: TFMTBCDField;
    qyDetReceWareId: TStringField;
    qyDetNoPassNum: TFMTBCDField;
    qyDetNoPassWareId: TStringField;
    qyDetBackNum: TFMTBCDField;
    qyDetRecePrice: TFMTBCDField;
    qyDetReceMoney: TFMTBCDField;
    qyDetRfNum: TFMTBCDField;
    qyDetbAllIn: TBooleanField;
    cxgrdbndtbv: TcxGridDBBandedTableView;
    cxgrdbndtbvsColor: TcxGridDBBandedColumn;
    cxgrdbndtbvProType: TcxGridDBBandedColumn;
    cxgrdbndtbvSubNum: TcxGridDBBandedColumn;
    cxgrdbndtbvRemark: TcxGridDBBandedColumn;
    cxgrdbndtbvTaxRate: TcxGridDBBandedColumn;
    cxgrdbndtbvTaxPrice: TcxGridDBBandedColumn;
    cxgrdbndtbvTaxMoney: TcxGridDBBandedColumn;
    cxgrdbndtbvSubPrice: TcxGridDBBandedColumn;
    cxgrdbndtbvSubTaxPrice: TcxGridDBBandedColumn;
    cxgrdbndtbvSubMoney: TcxGridDBBandedColumn;
    cxgrdbndtbvAllMoney: TcxGridDBBandedColumn;
    cxgrdbndtbvDeliveDate: TcxGridDBBandedColumn;
    cxgrdbndtbvItemCode: TcxGridDBBandedColumn;
    cxgrdbndtbvItemName: TcxGridDBBandedColumn;
    cxgrdbndtbvItemSpc: TcxGridDBBandedColumn;
    cxgrdbndtbvItemPic: TcxGridDBBandedColumn;
    cxgrdbndtbvItemUnit: TcxGridDBBandedColumn;
    cxgrdbndtbvSubUnit: TcxGridDBBandedColumn;
    cxgrdbndtbvExchRate: TcxGridDBBandedColumn;
    cxgrdbndtbvReceNum: TcxGridDBBandedColumn;
    cxgrdbndtbvReceWareId: TcxGridDBBandedColumn;
    cxgrdbndtbvNoPassNum: TcxGridDBBandedColumn;
    cxgrdbndtbvNoPassWareId: TcxGridDBBandedColumn;
    cxgrdbndtbvBackNum: TcxGridDBBandedColumn;
    cxgrdbndtbvRecePrice: TcxGridDBBandedColumn;
    cxgrdbndtbvReceMoney: TcxGridDBBandedColumn;
    qyDetReceWareName: TStringField;
    qyDetNoPassWareName: TStringField;
    cxgrdbndtbvColumn1: TcxGridDBBandedColumn;
    cxgrdbndtbvColumn2: TcxGridDBBandedColumn;
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
    qyDetStockOrderNo: TStringField;
    qyDetStockOrderId: TStringField;
    cxgrdbndtbvColumn3: TcxGridDBBandedColumn;
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
    procedure cxBt1PropertiesButtonClick(Sender: TObject; AButtonIndex:
      Integer);
    procedure cxEdtNoPropertiesChange(Sender: TObject);
    procedure cxgrdbclmnItemCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure qyDetAfterInsert(DataSet: TDataSet);
    procedure btDelClick(Sender: TObject);
    procedure qyDetItemIDChange(Sender: TField);
    procedure btUnCheckClick(Sender: TObject);
    procedure smlntfldHedPrintNumChange(Sender: TField);
    procedure btFindClick(Sender: TObject);
    procedure btReferClick(Sender: TObject);
    procedure cxgrdbclmnProTypePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxObjectPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxgrdbclmnItemCodePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure N2Click(Sender: TObject);
    procedure cxExtLookupComboBox1PropertiesChange(Sender: TObject);
    procedure cxgrdDBBandedTableView1ItemCodePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxgrdDBBandedTableView1ItemCodePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdDBBandedTableView1ProTypePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxgrdbndtblvwReceWareIdPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdbndtblvwNoPassWareIdPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btCheckClick(Sender: TObject);
    procedure btRefClick(Sender: TObject);
    procedure qyDetCalcFields(DataSet: TDataSet);
    procedure cxgrdbndtblvwReceNumPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbndtblvwNoPassNumPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure mniNCopyDClick(Sender: TObject);
    procedure mniNCopyLClick(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;
var
  StockReceFM: TStockReceFM;

implementation
uses PublicPS, ControlPublicPS, DataPS, EmpQPS, ItemQPS, DeptQPS, PrvQPS,
  StockReceFindPS, StockReceStockOrderRfPS, SGeneralPS;
{$R *.dfm}

procedure TStockReceFM.btAddClick(Sender: TObject);
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
    qyHed.FieldByName('StockReceNo').AsString := GetTableNo(sTableId, 'StockReceNo');
    qyHed.FieldByName('ReceDate').AsDateTime :=
      StrToDateTime(FormatDateTime('yyyy-mm-dd', SysDateTime));
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

procedure TStockReceFM.btAddLClick(Sender: TObject);
begin
  try
    qyDet.Append;
  except
  end;
end;

procedure TStockReceFM.btCancelClick(Sender: TObject);
begin
  qyDet.CancelBatch();
  qyHed.CancelBatch();
  TextReadOnly(Self, True);
  inherited;
end;

procedure TStockReceFM.btCheckClick(Sender: TObject);
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

    if CheckWareHasMonth(qyHed.FieldByName('ReceDate').AsDateTime) then
    begin
      ShowWarn('单据日期所在月份已经做了仓库月结,你不能对该月数据再在进行操作');
      exit;
    end;
    for I := 0 to qyDet.RecordCount - 1 do
    begin
      if (qyDet.FieldByName('RfNum').AsFloat > 0) and ((qyDet.FieldByName('ReceNum').AsFloat + qyDet.FieldByName('NoPassNum').AsFloat + qyDet.FieldByName('BackNum').AsFloat) <> qyDet.FieldByName('RfNum').AsFloat) then
      begin
        ShowWarn('<' + qyDet.FieldByName('ItemName').AsString + '> 合格数+不合格数+退货数<>参照数');
        exit;
      end;

      if (qyDet.FieldByName('NoPassNum').AsFloat <> 0) and (qyDet.FieldByName('NoPassWareId').AsString = '') then
      begin
        ShowWarn('<' + qyDet.FieldByName('ItemName').AsString + '> 填写了不合格数量,请选择不合格仓库');
        exit;
      end;
    end;

    if HasGetMaxAudit(sTableId, qyHed.FieldByName('AuditFlag').asInteger + 1) then
    begin
      if AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.Text), qyHed, 1) then
      begin
        ExeSql(' Exec PrStockReceAudit ' + QuotedStr(trim(cxEdtNo.Text)) + ',1');
      end;
    end
    else
      AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, 1);
    SetLog(sFMName, trim(cxEdtNo.Text), '审核');
    ShowFMInfo(sTableId,qyHed);
    btRefClick(Self);
  except
    ShowWarn('审核失败!');
  end;
end;

procedure TStockReceFM.btDelClick(Sender: TObject);
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
  else if (bRight) and (bDelPart) and (bDelAll = false) and
    (qyHed.FieldByName('MakeMan').AsString <> LoginEmpId) then
  begin
    ShowWarn('你只能删除自己做的单据!');
    exit;
  end;
  if ShowDlg('确实要删除该单据吗?') then
  begin
    try
      sBiilNo := trim(cxEdtNo.Text);
      ExeSql('Delete StockReceDTTB where StockReceNo=' + QuotedStr(sBiilNo));
      ExeSql('Delete StockReceHDTB where StockReceNo=' + QuotedStr(sBiilNo));
      with qyHed do
      begin
        if Active then
          Close;
        SQL.Clear;
        sql.Add('select * from StockReceHDTB where IsNull(bMaxAudit,0)=0 ');
        Open;
      end;
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

procedure TStockReceFM.btDelLClick(Sender: TObject);
begin
  try
    qyDet.Delete;
  except
    ShowBox('删除失败！');
  end;
end;

procedure TStockReceFM.btEditClick(Sender: TObject);
var
  i: Integer;
begin
  if qyHed.RecordCount <= 0 then
    exit;
  GetServerTime;
  qyHed.UpdateCursorPos;
  qyHed.Recordset.Resync(AdAffectcurrent, AdResyncAllValues);
  qyHed.Resync([]);
  //有修改单价权限的人员可以在单据审核后修改单价
  if (bRight) and (bEditPrice) and (qyHed.FieldByName('AuditFlag').asInteger > 0)
    then
  begin
    TextReadOnly(Self, True);
    cxgrdtbv.OptionsData.Editing := true;
    for i := 0 to cxgrdtbv.ColumnCount - 1 do
    begin
      if (cxgrdtbv.Columns[i].DataBinding.FieldName = 'RecePrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'TaxPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubTaxPrice') then
        cxgrdtbv.Columns[i].Options.Editing := true
      else
        cxgrdtbv.Columns[i].Options.Editing := False;
    end;
    SetButtonState(btAdd, btEdit, btDel, btAddL, btDelL, btSave, btCancel,
      btRefer, btFind, btExport, btPrint, btCheck, btUnCheck, btExit,
      false, false, false, false, false, true, true, false, false, false, false,
      false, false, true);
  end
  else
  begin
    if qyHed.FieldByName('AuditFlag').asInteger > 0 then
    begin
      ShowWarn('本单已经审核,不允许再进行编辑!');
      exit;
    end;
    if (bRight) and (bEditAll = false) and (qyHed.FieldByName('MakeMan').AsString
      <> LoginEmpId) then
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

procedure TStockReceFM.btFindClick(Sender: TObject);
begin
  inherited;
  try
    if not Assigned(StockReceFindFM) then
      StockReceFindFM := TStockReceFindFM.Create(Application);
    StockReceFindFM.ShowModal;
  finally
    StockReceFindFM.Free;
    StockReceFindFM := nil
  end;
end;

procedure TStockReceFM.btRefClick(Sender: TObject);
begin
  try
    inherited;
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

procedure TStockReceFM.btReferClick(Sender: TObject);
var i: Integer;
begin
  try
    try
      StockReceStockOrderRfFM := TStockReceStockOrderRfFM.Create(nil);
      StockReceStockOrderRfFM.sObjectId := qyHed.FieldByName('PrvId').asString;
      StockReceStockOrderRfFM.btFindClick(self);
      StockReceStockOrderRfFM.ShowModal;
      if StockReceStockOrderRfFM.fFlag = 1 then
      begin
        StockReceStockOrderRfFM.qyFind.Filter := ' bSelect=1';
        StockReceStockOrderRfFM.qyFind.Filtered := true;
        StockReceStockOrderRfFM.qyFind.First;
        for i := 0 to StockReceStockOrderRfFM.qyFind.RecordCount - 1 do
        begin
          if qyHed.State = dsBrowse then qyHed.Edit;
          qyHed.FieldByName('PrvId').AsString := StockReceStockOrderRfFM.qyFind.FieldByName('PrvId').AsString;

          if i = 0 then
          begin
            qyDet.Edit;
            qyDetAfterInsert(qyDet);
          end
          else
            qyDet.Append;
          qyDet.FieldByName('ItemId').AsString := StockReceStockOrderRfFM.qyFind.FieldByName('ItemId').AsString;
          qyDet.FieldByName('ItemCode').AsString := StockReceStockOrderRfFM.qyFind.FieldByName('ItemCode').AsString;
          qyDet.FieldByName('ProType').AsString := StockReceStockOrderRfFM.qyFind.FieldByName('ProType').AsString;
          qyDet.FieldByName('DeliveDate').AsDateTime := StockReceStockOrderRfFM.qyFind.FieldByName('DeliveDate').AsDateTime;
          qyDet.FieldByName('ReceNum').AsFloat := StockReceStockOrderRfFM.qyFind.FieldByName('NoReceNum').AsFloat;
          qyDet.FieldByName('RfNum').AsFloat := StockReceStockOrderRfFM.qyFind.FieldByName('NoReceNum').AsFloat;
          qyDet.FieldByName('RecePrice').AsFloat := StockReceStockOrderRfFM.qyFind.FieldByName('OrderPrice').AsFloat;
          qyDet.FieldByName('TaxPrice').AsFloat := StockReceStockOrderRfFM.qyFind.FieldByName('TaxPrice').AsFloat;
          qyDet.FieldByName('TaxRate').AsFloat := StockReceStockOrderRfFM.qyFind.FieldByName('TaxRate').AsFloat;
          qyDet.FieldByName('StockOrderNo').AsString := StockReceStockOrderRfFM.qyFind.FieldByName('StockOrderNo').AsString;
          qyDet.FieldByName('StockOrderId').AsString := StockReceStockOrderRfFM.qyFind.FieldByName('AutoNo').AsString;
          UpdateBandData(cxgrdbndtbv, 'ReceNum');
          qyDet.post;
          StockReceStockOrderRfFM.qyFind.Next;
        end;
      end;
    finally
      StockReceStockOrderRfFM.free;
      StockReceStockOrderRfFM := nil;
    end;
  except
  end;
end;

procedure TStockReceFM.btSaveClick(Sender: TObject);
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
          sNewNo := GetTableNO(sTableId, 'StockReceNo');
          ;
          if qyHed.FieldByName('StockReceNo').AsString = sNewNo then
          begin
            ShowBox('单号有重复!');
            Exit;
          end;
          if qyHed.State = dsBrowse then
            qyHed.Edit;
          if qyDet.State = dsBrowse then
            qyDet.Edit;

          qyHed.FieldByName('StockReceNo').AsString := sNewNo;
          qyDet.First;
          for i := 0 to qyDet.RecordCount - 1 do
          begin
            if qyDet.State = dsBrowse then
              qyDet.Edit;
            qyDet.FieldByName('StockReceNo').AsString := sNewNo;
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

procedure TStockReceFM.btUnCheckClick(Sender: TObject);
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

    if CheckWareHasMonth(qyHed.FieldByName('ReceDate').AsDateTime) then
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
          SQL.Add('Exec PrCheckStockReceNum ' + QuotedStr(Trim(cxEdtNo.text)));
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
        ExeSql(' Exec PrStockReceAudit ' + QuotedStr(trim(cxEdtNo.Text)) + ',-1');
      end;
    end
    else
      AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, -1);
    SetLog(sFMName, trim(cxEdtNo.Text), '反审核');
    ShowFMInfo(sTableId,qyHed);
    btRefClick(Self);
  except
    ShowWarn('反审核失败!');
  end;
end;

procedure TStockReceFM.cxBt1PropertiesButtonClick(Sender: TObject; AButtonIndex:
  Integer);
begin
  inherited;
  try
    if btSave.Enabled = False then
      Exit;
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

procedure TStockReceFM.cxEdtNoPropertiesChange(Sender: TObject);
begin
  inherited;
  with qyDet do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from StockReceDTTB where StockReceNo=' + QuotedStr(trim(cxEdtNo.Text)));
    Open;
  end;
  if DataFM.qyPyCode.Active = false then DataFM.qyPyCode.Open;
  ShowFMInfo(sTableId,qyHed);
end;

procedure TStockReceFM.cxExtLookupComboBox1PropertiesChange(Sender: TObject);
begin
  inherited;
  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('select * from StockReceHDTB where StockReceNo=' + QuotedStr(qyFind.FieldByName('单号').AsString));
    Open;
  end;
end;

procedure TStockReceFM.cxgrdbclmnItemCodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TStockReceFM.cxgrdbclmnItemCodePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  DisplayValue := VarToStr(DisplayValue);
  if DisplayValue = '' then Exit;
  if DataFM.qyItem.Active = false then DataFM.qyItem.Open;
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

procedure TStockReceFM.cxgrdbclmnProTypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  ProTypeSelect(btSave.Enabled, qyDet, 'ProType', 2);
end;

procedure TStockReceFM.cxgrdbndtblvwNoPassNumPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  try
    inherited;
    Error := False;
    if DisplayValue = '' then DisplayValue := 0;
    qyDet.FieldByName('NoPassNum').AsFloat := DisplayValue;
    if qyDet.FieldByName('RfNum').AsFloat > 0 then
    begin
      qyDet.FieldByName('ReceNum').AsFloat := qyDet.FieldByName('RfNum').AsFloat - DisplayValue;
    end;
  except
  end;
end;

procedure TStockReceFM.cxgrdbndtblvwNoPassWareIdPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  WareSelect(btSave.Enabled, qyDet, 'NoPassWareId', 2);
end;

procedure TStockReceFM.cxgrdbndtblvwReceNumPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  try
    inherited;
    Error := False;
    if DisplayValue = '' then DisplayValue := 0;
    qyDet.FieldByName('ReceNum').AsFloat := DisplayValue;
    if qyDet.FieldByName('RfNum').AsFloat > 0 then
    begin
      qyDet.FieldByName('NoPassNum').AsFloat := qyDet.FieldByName('RfNum').AsFloat - DisplayValue;
    end;
  except
  end;
end;

procedure TStockReceFM.cxgrdbndtblvwReceWareIdPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  WareSelect(btSave.Enabled, qyDet, 'ReceWareId', 2);
end;

procedure TStockReceFM.cxgrdDBBandedTableView1ItemCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
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

procedure TStockReceFM.cxgrdDBBandedTableView1ItemCodePropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  DisplayValue := VarToStr(DisplayValue);
  if DisplayValue = '' then Exit;
  if DataFM.qyItem.Active = false then DataFM.qyItem.Open;
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

procedure TStockReceFM.cxgrdDBBandedTableView1ProTypePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  ProTypeSelect(btSave.Enabled, qyDet, 'ProType', 2);
end;

procedure TStockReceFM.cxObjectPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if btSave.Enabled = false then
    exit;
  // inherited;
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
  if AButtonIndex = 1 then //采购收货未引用完采购订单的供应商
  begin
    try
      SGeneralFM := TSGeneralFM.Create(nil);
      SGeneralFM.Caption := '采购订单未收货供应商查询';
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

procedure TStockReceFM.FormCreate(Sender: TObject);
begin
  sFMId := 'StockReceFM';
  sFMName := Self.Caption;
  sTableId := 'StockReceHDTB';
  inherited;
  InitCbb('select PayModeName from PayModeTB where PayModeKind like ''%付款%''', cbbPayMode);
  qyHed.Open;
end;

procedure TStockReceFM.FormDestroy(Sender: TObject);
begin
  inherited;
  StockReceFM := nil;
end;

procedure TStockReceFM.FormShow(Sender: TObject);
var
  i: Integer;
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
      if (cxgrdtbv.Columns[i].DataBinding.FieldName = 'RecePrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'TaxPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'TaxRate') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'ReceMoney') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubTaxPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubMoney') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'AllMoney') then
        cxgrdtbv.Columns[i].Visible := bShowPrice;
    end;
  end;
end;

procedure TStockReceFM.mniNCopyDClick(Sender: TObject);
var
  j, k: Integer;
begin
  try
    k := cxgrdbndtbv.Controller.FocusedItem.Index;
    j := cxgrdbndtbv.Controller.FocusedRow.Index;
    Clipboard.AsText := trim(cxgrdbndtbv.DataController.GetRowValue(cxgrdbndtbv.DataController.GetRowInfo(j), k));
  except
    on E: Exception do
    begin
      if pos('Null', E.Message) > 0 then
      begin
        ShowError('空值无需复制');
        Exit;
      end;
    end;
  end;
end;

procedure TStockReceFM.mniNCopyLClick(Sender: TObject);
var iRec, i, j: Integer;
  CopyValue: variant;
  sField: string;
begin
  try
    if btSave.Enabled = False then Exit;
    if qyDet.RecordCount <= 0 then Exit;
    i := cxgrdbndtbv.Controller.FocusedItem.Index;
    j := cxgrdbndtbv.Controller.FocusedRow.Index;
    CopyValue := trim(cxgrdbndtbv.DataController.GetRowValue(cxgrdbndtbv.DataController.GetRowInfo(j), i));
    if CopyValue = null then Exit;

    sField := TcxGridDBBandedColumn(cxgrdbndtbv.Controller.FocusedColumn).DataBinding.FieldName;

    for iRec := qyDet.RecNo to qyDet.RecordCount do
    begin
      if qydet.State = dsBrowse then qyDet.Edit;
      qyDet.FieldByName(sField).Value := CopyValue;
      if TcxGridDBBandedColumn(cxgrdbndtbv.Controller.FocusedColumn).PropertiesClassName <> '' then
      begin
        if Assigned(TcxGridDBBandedColumn(cxgrdbndtbv.Controller.FocusedColumn).Properties.OnValidate) then
          UpdateBandData(cxgrdbndtbv, sField);
      end;
      qyDet.Next;
    end;
  except
  end;
end;

procedure TStockReceFM.N2Click(Sender: TObject);
begin
  inherited;
  BillView('StockIn', 'select * from WareInOutHDTB where BillNo in (select BillNo from WareInOutDTTB where StockRecId=' + QuotedStr(qyDet.FieldByName('AutoNo').AsString) + ')');
end;

procedure TStockReceFM.qyDetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyDet.FieldByName('StockReceNo').AsString := qyHed.FieldByName('StockReceNo').AsString;
  qyDet.FieldByName('AutoNo').AsString := GetDateAutoNo(sTableId);
  qyDet.FieldByName('TaxRate').AsFloat := iTaxRate;
end;

procedure TStockReceFM.qyDetCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyDet, DataFM.qyWare, ['ReceWareId', 'ReceWareName'], ['WareId', 'WareName']);
  CalcField(qyDet, DataFM.qyWare, ['NoPassWareId', 'NoPassWareName'], ['WareId', 'WareName']);
end;

procedure TStockReceFM.qyDetItemIDChange(Sender: TField);
begin
  inherited;
  CalcField(qyDet, DataFM.qyItem, ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'ReceWareId', 'iFlag'],
    ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'WareID', 'iFlag']);

  if not DataFM.qyStockPrice.Active then DataFM.qyStockPrice.open;
  DataFM.qyStockPrice.Requery();
  if DataFM.qyStockPrice.Locate('PrvId;ItemId', vararrayof([qyHed.FieldByName('PrvId').AsString, qyDet.FieldByName('ItemId').AsString]), []) then
  begin
    qyDet.FieldByName('RecePrice').Value := DataFM.qyStockPrice.FieldByName('MainPrice').Value;
    qyDet.FieldByName('TaxPrice').Value := DataFM.qyStockPrice.FieldByName('TaxPrice').Value;
    qyDet.FieldByName('TaxRate').Value := DataFM.qyStockPrice.FieldByName('TaxRate').Value;
    UpdateBandData(cxgrdbndtbv, 'RecePrice');
  end;
end;

procedure TStockReceFM.qyHedCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyHed, DataFM.qyPrv, ['PrvId', 'PrvName', 'PrvAddress', 'PrvTel', 'PrvFax'], ['PrvId', 'PrvName', 'PrvAddress', 'Tel', 'Fax']);
  CalcField(qyHed, DataFM.qyEmp, ['EmpId', 'EmpName'], ['EmpId', 'EmpName']);
end;

procedure TStockReceFM.smlntfldHedPrintNumChange(Sender: TField);
begin
  inherited;
  ShowFMInfo(sTableId,qyHed);
end;

end.
