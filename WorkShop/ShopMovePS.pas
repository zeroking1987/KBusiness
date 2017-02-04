unit ShopMovePS;

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
  cxNavigator;

type
  TShopMoveFM = class(TBaseGrdFM)
    cxBtnOutWare: TcxDBButtonEdit;
    cxgrdbclmnItemCode: TcxGridDBColumn;
    cxgrdbclmnItemPYCode: TcxGridDBColumn;
    cxgrdbclmnItemName: TcxGridDBColumn;
    cxgrdbclmnItemSpc: TcxGridDBColumn;
    cxgrdbclmnItemUnit: TcxGridDBColumn;
    cxgrdbclmnProType: TcxGridDBColumn;
    cxgrdbclmnOrderNum: TcxGridDBColumn;
    cxgrdbclmnOrderPrice: TcxGridDBColumn;
    cxgrdbclmnRemark: TcxGridDBColumn;
    cxgrdbclmnOrderMoney: TcxGridDBColumn;
    cxgrdbclmnTaxPrice: TcxGridDBColumn;
    cxgrdbclmnTaxRate: TcxGridDBColumn;
    cxgrdbclmnAllMoney: TcxGridDBColumn;
    Label15: TLabel;
    qyWareNum: TADOQuery;
    cxgrdtbvColumn3: TcxGridDBColumn;
    cxgrdbclmnColumn4: TcxGridDBColumn;
    cxgrdbclmnColumn5: TcxGridDBColumn;
    cxgrdbclmnColumn6: TcxGridDBColumn;
    lbl1: TLabel;
    lbl4: TLabel;
    cxBtnInWare: TcxDBButtonEdit;
    cxBtnAcceptName: TcxDBButtonEdit;
    lbl5: TLabel;
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
    cxgrdbclmnColumn1: TcxGridDBColumn;
    cxgrdbclmnColumn2: TcxGridDBColumn;
    strngfldDetObjectName: TStringField;
    strngfldDetInObjectName: TStringField;
    qyDetWareNum: TFMTBCDField;
    dxbrpmn1: TdxBarPopupMenu;
    dxbrbtn1: TdxBarButton;
    dxbrbtn2: TdxBarButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    qyDetProOrderNo: TStringField;
    qyDetProOrderId: TStringField;
    qyDetDispatchNo: TStringField;
    qyDetDispatchId: TStringField;
    qyDetpItemId: TStringField;
    qyDetpItemCode: TStringField;
    qyDetpItemName: TStringField;
    cxgrdtbvColumn1: TcxGridDBColumn;
    cxgrdtbvColumn2: TcxGridDBColumn;
    qyDetRfNum: TFMTBCDField;
    qyDetpDosage: TFMTBCDField;
    qyDetSaleOrderNo: TStringField;
    qyDetSaleOrderId: TStringField;
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
    procedure qyDetCalcFields(DataSet: TDataSet);
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
    procedure qyHedPrintNumChange(Sender: TField);
    procedure btReferClick(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;
var
  ShopMoveFM: TShopMoveFM;

implementation

uses PublicPS, ControlPublicPS, DataPS, EmpQPS, ItemQPS, WareQPS, DeptQPS, PrvQPS, ItemMoveFindPS, MatProDispatchRfPS;
{$R *.dfm}

procedure TShopMoveFM.btAddClick(Sender: TObject);
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

procedure TShopMoveFM.btAddLClick(Sender: TObject);
begin
  try
    qyDet.Append;
  except
  end;
end;

procedure TShopMoveFM.btCancelClick(Sender: TObject);
begin
  qyDet.CancelBatch();
  qyHed.CancelBatch();
  TextReadOnly(Self, True);
  inherited;
end;

procedure TShopMoveFM.btCheckClick(Sender: TObject);
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

    if HasGetMaxAudit(sTableId, qyHed.FieldByName('AuditFlag').asInteger + 1) then
    begin
      try
        with DataFM.qyTemp do
        begin
          if Active then Close;
          SQL.Clear;
          SQL.Add('Exec PrCheckMoveNum ' + QuotedStr(Trim(cxEdtNo.text)) + ',1');
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
            SQL.Add('Exec PrItemMoveAudit ' + QuotedStr(Trim(cxEdtNo.text)) + ',1');
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
    ShowFMInfo(sTableId,qyHed);
    btRefClick(Self);
  except
    ShowWarn('审核失败!');
  end;
end;

procedure TShopMoveFM.btDelClick(Sender: TObject);
var sBiilNo: string;
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
      ExeSql('Delete ItemMoveDTTB where MoveNo=' + QuotedStr(sBiilNo));
      ExeSql('Delete ItemMoveHDTB where MoveNo=' + QuotedStr(sBiilNo));
      with qyHed do
      begin
        if Active then Close;
        SQL.Clear;
        SQL.Add('select * from ItemMoveHDTB where isnull(bMaxAudit,0)=0 and MKindID=' + Quotedstr(sTableId));
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

procedure TShopMoveFM.btDelLClick(Sender: TObject);
begin
  try
    qyDet.Delete;
  except
    ShowWarn('删除失败！');
  end;
end;

procedure TShopMoveFM.btEditClick(Sender: TObject);
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
  end;
  qyHed.Edit;
  qyHed.FieldByName('EditMan').AsString := LoginEmpId;
  qyHed.FieldByName('EditManName').AsString := LoginEmpName;
  qyHed.FieldByName('EditDate').AsDateTime := SysDateTime;
end;

procedure TShopMoveFM.btFindClick(Sender: TObject);
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

procedure TShopMoveFM.btRefClick(Sender: TObject);
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

procedure TShopMoveFM.btReferClick(Sender: TObject);
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
    MatProDispatchRfFM := TMatProDispatchRfFM.Create(nil);
    MatProDispatchRfFM.sKind := '车间发料';
    //MatProDispatchRfFM.sObjectId := qyHed.FieldByName('AcceptId').asString;

    MatProDispatchRfFM.btFindClick(self);
    MatProDispatchRfFM.ShowModal;
    if MatProDispatchRfFM.fFlag = 1 then
    begin
      MatProDispatchRfFM.qyFind.Filter := ' bSelect=1';
      MatProDispatchRfFM.qyFind.Filtered := true;
      MatProDispatchRfFM.qyFind.First;
      for i := 0 to MatProDispatchRfFM.qyFind.RecordCount - 1 do
      begin
        if i = 0 then
          qyDet.Edit
        else
          qyDet.Append;
        qyDet.FieldByName('ItemId').AsString := MatProDispatchRfFM.qyFind.FieldByName('ItemId').AsString;
        qyDet.FieldByName('ItemCode').AsString := MatProDispatchRfFM.qyFind.FieldByName('ItemCode').AsString;
        qyDet.FieldByName('CompactNo').AsString := MatProDispatchRfFM.qyFind.FieldByName('CompactNo').AsString;
        qyDet.FieldByName('InCompactNo').AsString := MatProDispatchRfFM.qyFind.FieldByName('CompactNo').AsString;
        qyDet.FieldByName('ProType').AsString := MatProDispatchRfFM.qyFind.FieldByName('ProType').AsString;
        qyDet.FieldByName('InProType').AsString := MatProDispatchRfFM.qyFind.FieldByName('ProType').AsString;
        qyDet.FieldByName('Color').AsString := MatProDispatchRfFM.qyFind.FieldByName('Color').AsString;
        qyDet.FieldByName('inColor').AsString := MatProDispatchRfFM.qyFind.FieldByName('Color').AsString;
        qyDet.FieldByName('pItemId').AsString := MatProDispatchRfFM.qyFind.FieldByName('pItemId').AsString;
        qyDet.FieldByName('pItemCode').AsString := MatProDispatchRfFM.qyFind.FieldByName('pItemCode').AsString;
        qyDet.FieldByName('pItemName').AsString := MatProDispatchRfFM.qyFind.FieldByName('pItemName').AsString;
        qyDet.FieldByName('MoveNum').AsFloat := MatProDispatchRfFM.qyFind.FieldByName('NoRfNum').AsFloat;
        qyDet.FieldByName('RfNum').AsFloat := MatProDispatchRfFM.qyFind.FieldByName('NoRfNum').AsFloat;

        qyDet.FieldByName('SaleOrderNo').AsString := MatProDispatchRfFM.qyFind.FieldByName('SaleOrderNo').AsString;
        qyDet.FieldByName('SaleOrderId').AsString := MatProDispatchRfFM.qyFind.FieldByName('SaleOrderId').AsString;
        qyDet.FieldByName('ProOrderNo').AsString := MatProDispatchRfFM.qyFind.FieldByName('ProOrderNo').AsString;
        qyDet.FieldByName('ProOrderId').AsString := MatProDispatchRfFM.qyFind.FieldByName('ProOrderId').AsString;
        qyDet.FieldByName('DispatchNo').AsString := MatProDispatchRfFM.qyFind.FieldByName('DispatchNo').AsString;
        qyDet.FieldByName('DispatchId').AsString := MatProDispatchRfFM.qyFind.FieldByName('AutoNO').AsString;
        UpdateData(cxgrdtbv, 'MoveNum');
        qyDet.post;
        MatProDispatchRfFM.qyFind.Next;
      end;
    end;
  finally
    MatProDispatchRfFM.free;
    MatProDispatchRfFM := nil;
  end;
end;

procedure TShopMoveFM.btSaveClick(Sender: TObject);
var
  sNewNo: string;
  i: Integer;
begin
  try
    if cxBtnSendName.Text = '' then
    begin
      ShowBox('请先选择发出单位');
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
          sNewNo := GetTableNO(sTableId, 'MoveNo');
          if qyHed.FieldByName('MoveNo').AsString = sNewNo then
          begin
            ShowBox('单号有重复!');
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

procedure TShopMoveFM.btUnCheckClick(Sender: TObject);
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
          SQL.Add('Exec PrCheckMoveNum ' + QuotedStr(Trim(cxEdtNo.text)) + ',-1');
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
            SQL.Add('Exec PrItemMoveAudit ' + QuotedStr(Trim(cxEdtNo.text)) + ',-1');
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
    ShowFMInfo(sTableId,qyHed);
    btRefClick(Self);
  except
    ShowWarn('反审核失败!');
  end;
end;

procedure TShopMoveFM.cxBt1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
        qyHed.FieldByName('SendId').AsString := DeptQFM.sId;
        qyHed.FieldByName('OutWare').AsString := DeptQFM.sWareId;
      end;
    finally
      DeptQFM.Free;
      DeptQFM := nil;
    end;
  except
  end;
end;

procedure TShopMoveFM.cxBt2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TShopMoveFM.cxBtnInWarePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  WareSelect(btSave.Enabled, qyHed, 'InWare', 2);
end;

procedure TShopMoveFM.cxBtnOutWarePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  WareSelect(btSave.Enabled, qyHed, 'OutWare', 2);
end;

procedure TShopMoveFM.cxEdtNoPropertiesChange(Sender: TObject);
begin
  inherited;
  with qyDet do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from ItemMoveDTTB where MoveNo=' + QuotedStr(trim(cxEdtNo.Text)));
    Open;
  end;
  if DataFM.qyPyCode.Active = false then DataFM.qyPyCode.Open;
  if qyWareNum.Active = False then qyWareNum.Open; //一定要 否则Requery要报错
  qyWareNum.Requery();
  ShowFMInfo(sTableId,qyHed);
end;

procedure TShopMoveFM.cxgrdbclmnColumn1PropertiesButtonClick(Sender: TObject;
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

procedure TShopMoveFM.cxgrdbclmnColumn6PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := false;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('SubNum').AsFloat := DisplayValue;
  if qyDet.FieldByName('iFlag').asInteger = 1 then
    qyDet.FieldByName('MoveNum').AsFloat := DisplayValue / qyDet.FieldByName('ExchRate').AsFloat
  else
  begin
    if qyDet.FieldByName('ExchRate').AsFloat <> 0 then
      qyDet.FieldByName('MoveNum').AsFloat := DisplayValue * qyDet.FieldByName('ExchRate').AsFloat
  end;
  qyDet.FieldByName('SubMoney').AsFloat := DisplayValue * qyDet.FieldByName('SubPrice').AsFloat;

  qyDet.FieldByName('AllMoney').AsFloat := DisplayValue * qyDet.FieldByName('SubTaxPrice').AsFloat;
  qyDet.FieldByName('MoveMoney').AsFloat := qyDet.FieldByName('SubMoney').AsFloat;
  qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('MoveMoney').AsFloat;

end;

procedure TShopMoveFM.cxgrdbclmnItemCodePropertiesButtonClick(Sender: TObject;
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

procedure TShopMoveFM.cxgrdbclmnItemPYCodePropertiesValidate(Sender: TObject;
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

procedure TShopMoveFM.cxgrdbclmnOrderNumPropertiesValidate(Sender: TObject;
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
  if qyDet.FieldByName('iFlag').AsInteger = 1 then
    qyDet.FieldByName('SubNum').AsFloat := DisplayValue * qyDet.FieldByName('ExchRate').AsFloat
  else
  begin
    if qyDet.FieldByName('ExchRate').AsFloat <> 0 then
      qyDet.FieldByName('SubNum').AsFloat := DisplayValue / qyDet.FieldByName('ExchRate').AsFloat
  end;
end;

procedure TShopMoveFM.cxgrdbclmnOrderPricePropertiesValidate(Sender: TObject;
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

procedure TShopMoveFM.cxgrdbclmnTaxPricePropertiesValidate(Sender: TObject;
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

procedure TShopMoveFM.cxgrdbclmnTaxRatePropertiesValidate(Sender: TObject;
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

procedure TShopMoveFM.dxbrbtn1Click(Sender: TObject);
begin
  inherited;
  BillView('OtherIn', 'select * from WareInOutHDTB where WKindId=''ItemMoveIn'' and SubjoinNo=' + QuotedStr(qyHed.FieldByName('MoveNo').AsString));
end;

procedure TShopMoveFM.dxbrbtn2Click(Sender: TObject);
begin
  inherited;
  BillView('OtherOut', 'select * from WareInOutHDTB where WKindId=''ItemMoveOut'' and SubjoinNo=' + QuotedStr(qyHed.FieldByName('MoveNo').AsString));
end;

procedure TShopMoveFM.FormCreate(Sender: TObject);
begin
  sFMId := 'ShopMoveFM';
  sFMName := Self.Caption;
  sTableId := 'ShopMove';
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

procedure TShopMoveFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ShopMoveFM := nil;
end;

procedure TShopMoveFM.FormShow(Sender: TObject);
var i: Integer;
begin
  inherited;
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
end;

procedure TShopMoveFM.qyDetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyDet.FieldByName('MoveNo').AsString := qyHed.FieldByName('MoveNo').AsString;
  qyDet.FieldByName('AutoNo').AsString := GetDateAutoNo(sTableId);
  qyDet.FieldByName('TaxRate').AsFloat := iTaxRate;
  qyDet.FieldByName('InObjectId').AsString := qyHed.FieldByName('AcceptId').AsString;
end;

procedure TShopMoveFM.qyDetCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyDet, DataFM.qyObject, ['InObjectId', 'InObjectName'], ['ObjectId', 'ObjectName']);
  if qyWareNum.Locate('sInfo', qyDet.FieldByName('ItemId').AsString + qyHed.FieldByName('OutWare').AsString, []) then
    qyDet.FieldByName('WareNum').AsFloat := qyWareNum.FieldByName('WareNum').AsFloat
  else
    qyDet.FieldByName('WareNum').AsFloat := 0;
end;

procedure TShopMoveFM.qyHedCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyHed, DataFM.qyObject, ['SendId', 'SendName'], ['ObjectId', 'ObjectName']);
  CalcField(qyHed, DataFM.qyObject, ['AcceptId', 'AcceptName'], ['ObjectId', 'ObjectName']);
  CalcField(qyHed, DataFM.qyWare, ['OutWare', 'OutWareName'], ['WareId', 'WareName']);
  CalcField(qyHed, DataFM.qyWare, ['InWare', 'InWareName'], ['WareId', 'WareName']);
end;

procedure TShopMoveFM.qyHedPrintNumChange(Sender: TField);
begin
  inherited;
  ShowFMInfo(sTableId,qyHed);
end;

procedure TShopMoveFM.strngfldDetItemIdChange(Sender: TField);
begin
  inherited;
  CalcField(qyDet, DataFM.qyItem, ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag'],
    ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag']);
end;

end.

