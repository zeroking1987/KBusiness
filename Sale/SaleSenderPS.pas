unit SaleSenderPS;

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
  cxPCdxBarPopupMenu, dxSkinOffice2010Blue, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu, cxNavigator;

type
  TSaleSenderFM = class(TBaseGrdFM)
    Label11: TLabel;
    cxBtReqMan: TcxDBButtonEdit;
    Label12: TLabel;
    Label13: TLabel;
    cxgrdbclmnItemCode: TcxGridDBColumn;
    cxgrdbclmnItemName: TcxGridDBColumn;
    cxgrdbclmnItemSpc: TcxGridDBColumn;
    cxgrdbclmnItemUnit: TcxGridDBColumn;
    cxgrdbclmnProType: TcxGridDBColumn;
    cxgrdbclmnOrderNum: TcxGridDBColumn;
    cxgrdbclmnOrderPrice: TcxGridDBColumn;
    cxgrdbclmnRemark: TcxGridDBColumn;
    Label10: TLabel;
    cxEdt2: TcxDBTextEdit;
    cbbPayMode: TcxDBComboBox;
    cxgrdbclmnOrderMoney: TcxGridDBColumn;
    cxgrdbclmnTaxPrice: TcxGridDBColumn;
    cxgrdbclmnTaxRate: TcxGridDBColumn;
    cxgrdbclmnAllMoney: TcxGridDBColumn;
    Label15: TLabel;
    Label16: TLabel;
    cxEdt1: TcxDBTextEdit;
    Label17: TLabel;
    cbb1: TcxDBComboBox;
    qyDetItemCode: TStringField;
    N1: TMenuItem;
    cxObject: TcxDBButtonEdit;
    qyDetAutoID: TLargeintField;
    qyDetbSelect: TBooleanField;
    qyDetSenderNo: TStringField;
    qyDetItemID: TStringField;
    qyDetItemPYCode: TStringField;
    qyDetsColor: TStringField;
    qyDetProType: TStringField;
    qyDetSenderNum: TFMTBCDField;
    qyDetSenderPrice: TFMTBCDField;
    qyDetTaxRate: TFMTBCDField;
    qyDetTaxPrice: TFMTBCDField;
    qyDetTaxMoney: TFMTBCDField;
    qyDetSenderMoney: TFMTBCDField;
    qyDetSubNum: TFMTBCDField;
    qyDetSubPrice: TFMTBCDField;
    qyDetSubTaxPrice: TFMTBCDField;
    qyDetSubMoney: TFMTBCDField;
    qyDetAllMoney: TFMTBCDField;
    qyDetbTax: TBooleanField;
    qyDetRemark: TStringField;
    qyHedAutoId: TLargeintField;
    qyHedbSelect: TBooleanField;
    qyHedSenderNo: TStringField;
    qyHedSenderDate: TDateTimeField;
    qyHedOrderStyle: TStringField;
    qyHedCompactNo: TStringField;
    qyHedCustId: TStringField;
    qyHedSendAdd: TStringField;
    qyHedEmpId: TStringField;
    qyHedSubjoinNo: TStringField;
    qyHedPayMode: TStringField;
    qyHedCurrName: TStringField;
    qyHedExchangeRate: TFMTBCDField;
    qyHedbTax: TBooleanField;
    qyHedTheme: TStringField;
    qyHedFjPath: TStringField;
    qyHedFjName: TStringField;
    qyHedRemark: TStringField;
    qyHedbPrint: TBooleanField;
    qyHedPrintNum: TSmallintField;
    qyHedMakeDate: TDateTimeField;
    qyHedMakeMan: TStringField;
    qyHedMakeManName: TStringField;
    qyHedEditMan: TStringField;
    qyHedEditManName: TStringField;
    qyHedEditDate: TDateTimeField;
    qyHedAuditFlag: TSmallintField;
    qyHedbMaxAudit: TBooleanField;
    qyHedAuditManName: TStringField;
    qyHedAuditDate: TStringField;
    qyHedMaxAuditDate: TDateTimeField;
    qyHedEmpName: TStringField;
    qyDetItemName: TStringField;
    qyDetItemSpc: TStringField;
    qyDetItemPic: TStringField;
    qyDetItemUnit: TStringField;
    qyDetSubUnit: TStringField;
    qyDetiFlag: TSmallintField;
    qyDetExchRate: TFMTBCDField;
    qyDetCompactNo: TStringField;
    cxgrdtbvColumn1: TcxGridDBColumn;
    qyDetDeliverDate: TDateTimeField;
    cxgrdtbvColumn2: TcxGridDBColumn;
    cxgrdtbvColumn3: TcxGridDBColumn;
    qyDetSaleOrderNo: TStringField;
    qyDetAutoNo: TStringField;
    strngfldHedCustTel: TStringField;
    lbl1: TLabel;
    cxdbtxtdt1: TcxDBTextEdit;
    cxgrdbclmnColumn4: TcxGridDBColumn;
    cxgrdbclmnColumn5: TcxGridDBColumn;
    fltfldDetWareNum: TFloatField;
    qyHedCustName: TStringField;
    qyDetSaleOrderId: TStringField;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    qyHedbAllOut: TBooleanField;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    Label14: TLabel;
    cxgrdtbvColumn4: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
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
    procedure qyDetItemIDChange(Sender: TField);
    procedure btCheckClick(Sender: TObject);
    procedure btUnCheckClick(Sender: TObject);
    procedure smlntfldHedPrintNumChange(Sender: TField);
    procedure btFindClick(Sender: TObject);
    procedure cxgrdbclmnOrderNumPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbclmnOrderPricePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure qyHedCustIdChange(Sender: TField);
    procedure cxgrdbclmnTaxPricePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbclmnTaxRatePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure N1Click(Sender: TObject);
    procedure cxObjectPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btReferClick(Sender: TObject);
    procedure qyDetCalcFields(DataSet: TDataSet);
    procedure cxgrdbclmnColumn5PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure qyDetAfterInsert(DataSet: TDataSet);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure cxgrdbclmnProTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public

    { Public declarations }
  end;
var
  SaleSenderFM: TSaleSenderFM;

implementation
uses PublicPS, ControlPublicPS, DataPS, EmpQPS, ItemQPS, DeptQPS, CustQPS, SaleSenderFindPS, SaleSenderSaleOrderRfPS, SGeneralPS;
{$R *.dfm}

procedure TSaleSenderFM.btAddClick(Sender: TObject);
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
    qyHed.FieldByName('SenderNo').AsString := GetTableNo(sTableId, 'SenderNo');
    qyHed.FieldByName('SenderDate').AsDateTime := StrToDateTime(FormatDateTime('yyyy-mm-dd', SysDateTime));
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

procedure TSaleSenderFM.btAddLClick(Sender: TObject);
begin
  try
    qyDet.Append;
  except
  end;
end;

procedure TSaleSenderFM.btCancelClick(Sender: TObject);
begin
  qyDet.CancelBatch();
  qyHed.CancelBatch();
  TextReadOnly(Self, True);
  inherited;
end;

procedure TSaleSenderFM.btCheckClick(Sender: TObject);
begin
  try
  //inherited;
    if AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, 1) then
    begin
      with DataFM.qyTemp do
      begin
        if Active then Close;
        SQL.Clear;
        SQL.Add('Exec PrUpdateRfResult ' + '''%' + trim(cxEdtNo.Text) + '%''' + ',' + '''销售发货''');
        ExecSQL;
      end;
    end;
    ShowFMInfo(sTableId,qyHed);
  except
    on E: Exception do
    begin
      ShowWarn(E.Message);
    end;
  end;
end;

procedure TSaleSenderFM.btDelClick(Sender: TObject);
var
  i: Integer;
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
      ExeSql('Delete SaleSenderDTTB where SenderNo=' + QuotedStr(sBiilNo));
      ExeSql('Delete SaleSenderHDTB where SenderNo=' + QuotedStr(sBiilNo));
      with qyHed do
      begin
        if Active then Close;
        SQL.Clear;
        sql.Add('select * from SaleSenderHDTB where IsNull(bMaxAudit,0)=0 ');
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
      qyHed.UpdateBatch;}
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

procedure TSaleSenderFM.btDelLClick(Sender: TObject);
begin
  try
    qyDet.Delete;
  except
    ShowBox('删除失败！');
  end;
end;

procedure TSaleSenderFM.btEditClick(Sender: TObject);
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
      if (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SenderPrice') or
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

procedure TSaleSenderFM.btFindClick(Sender: TObject);
begin
  inherited;
  try
    if not Assigned(SaleSenderFindFM) then
      SaleSenderFindFM := TSaleSenderFindFM.Create(Application);
    SaleSenderFindFM.ShowModal;
  finally
    SaleSenderFindFM.Free;
    SaleSenderFindFM := nil
  end;
end;

procedure TSaleSenderFM.btReferClick(Sender: TObject);
var
  i: integer;
begin
  try
    try
      SaleSenderSaleOrderRfFM := TSaleSenderSaleOrderRfFM.Create(nil);
      SaleSenderSaleOrderRfFM.sObjectId := qyHed.FieldByName('CustId').asString;
      SaleSenderSaleOrderRfFM.btFindClick(self);
      SaleSenderSaleOrderRfFM.ShowModal;
      if SaleSenderSaleOrderRfFM.fFlag = 1 then
      begin
        SaleSenderSaleOrderRfFM.qyFind.Filter := ' bSelect=1';
        SaleSenderSaleOrderRfFM.qyFind.Filtered := true;
        SaleSenderSaleOrderRfFM.qyFind.First;
        for i := 0 to SaleSenderSaleOrderRfFM.qyFind.RecordCount - 1 do
        begin
          if qyHed.State = dsBrowse then qyHed.Edit;
          qyHed.FieldByName('CustId').AsString := SaleSenderSaleOrderRfFM.qyFind.FieldByName('CustId').AsString;
          qyHed.FieldByName('EmpId').AsString := SaleSenderSaleOrderRfFM.qyFind.FieldByName('EmpId').AsString;
          qyHed.FieldByName('CompactNo').AsString := SaleSenderSaleOrderRfFM.qyFind.FieldByName('CompactNo').AsString;
          qyHed.FieldByName('PayMode').AsString := SaleSenderSaleOrderRfFM.qyFind.FieldByName('PayMode').AsString;
          qyHed.FieldByName('OrderStyle').AsString := SaleSenderSaleOrderRfFM.qyFind.FieldByName('OrderStyle').AsString;
          if i = 0 then
          begin
            qyDet.Edit;
            qyDetAfterInsert(qyDet);
          end
          else
            qyDet.Append;
          qyDet.FieldByName('ItemId').AsString := SaleSenderSaleOrderRfFM.qyFind.FieldByName('ItemId').AsString;
          qyDet.FieldByName('ItemCode').AsString := SaleSenderSaleOrderRfFM.qyFind.FieldByName('ItemCode').AsString;
          qyDet.FieldByName('ProType').AsString := SaleSenderSaleOrderRfFM.qyFind.FieldByName('ProType').AsString;
          qyDet.FieldByName('CompactNo').AsString := SaleSenderSaleOrderRfFM.qyFind.FieldByName('CompactNo').AsString;
          qyDet.FieldByName('DeliverDate').Value := SaleSenderSaleOrderRfFM.qyFind.FieldByName('DeliverDate').Value;
          qyDet.FieldByName('SenderNum').AsFloat := SaleSenderSaleOrderRfFM.qyFind.FieldByName('NoSenderNum').AsFloat;
          qyDet.FieldByName('SenderPrice').AsFloat := SaleSenderSaleOrderRfFM.qyFind.FieldByName('OrderPrice').AsFloat;
          qyDet.FieldByName('TaxPrice').AsFloat := SaleSenderSaleOrderRfFM.qyFind.FieldByName('TaxPrice').AsFloat;
          qyDet.FieldByName('SaleOrderNo').AsString := SaleSenderSaleOrderRfFM.qyFind.FieldByName('SaleOrderNo').AsString;
          qyDet.FieldByName('SaleOrderId').AsString := SaleSenderSaleOrderRfFM.qyFind.FieldByName('AutoNo').AsString;
          qyDet.FieldByName('Remark').AsString := SaleSenderSaleOrderRfFM.qyFind.FieldByName('Remark').AsString;
          UpdateData(cxgrdtbv, 'SenderNum');
          qyDet.post;
          SaleSenderSaleOrderRfFM.qyFind.Next;
        end;
      end;
    finally
      SaleSenderSaleOrderRfFM.free;
      SaleSenderSaleOrderRfFM := nil;
    end;
  except
  end;
end;

procedure TSaleSenderFM.btSaveClick(Sender: TObject);
var
  sNewNo: string;
  i: Integer;
begin
  try
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
          sNewNo := GetTableNO(sTableId, 'SenderNo');
          if qyHed.FieldByName('SenderNo').AsString = sNewNo then
          begin
            ShowBox('单号有重复!');
            Exit;
          end;
          if qyHed.State = dsBrowse then qyHed.Edit;
          if qyDet.State = dsBrowse then qyDet.Edit;

          qyHed.FieldByName('SenderNo').AsString := sNewNo;
          qyDet.First;
          for i := 0 to qyDet.RecordCount - 1 do
          begin
            if qyDet.State = dsBrowse then qyDet.Edit;
            qyDet.FieldByName('SenderNo').AsString := sNewNo;
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

procedure TSaleSenderFM.btUnCheckClick(Sender: TObject);
begin
  if bHaveData(DataFM.qyTemp, 'select ItemId from WareInOutDTTB where SaleSenderNo=' + QuotedStr(Trim(cxEdtNo.Text))) <> '' then
  begin
    ShowBox('该销发货单已被销售出库单引用,不能反审核');
    Exit;
  end;
  inherited;
  if AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, -1) then
  begin
    with DataFM.qyTemp do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add('Exec PrUpdateRfResult ' + '''%' + trim(cxEdtNo.Text) + '%''' + ',' + '''销售发货''');
      ExecSQL;
    end;
  end;
  ShowFMInfo(sTableId,qyHed);
end;

procedure TSaleSenderFM.cxBt1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TSaleSenderFM.cxEdtNoPropertiesChange(Sender: TObject);
begin
  inherited;
  with qyDet do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from SaleSenderDTTB where SenderNo=' + QuotedStr(trim(cxEdtNo.Text)));
    Open;
  end;
  if DataFM.qyPyCode.Active = false then DataFM.qyPyCode.Open;
  ShowFMInfo(sTableId,qyHed);
  if (qyHed.FindField('bAllOut') <> nil) and (qyHed.FieldByName('bAllOut').AsBoolean) then
    cxLabtemp5.Caption := '已出完库'
  else
    cxLabtemp5.Caption := '';
end;

procedure TSaleSenderFM.cxgrdbclmnColumn5PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := false;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('SubNum').AsFloat := DisplayValue;
  if qyDet.FieldByName('iFlag').asInteger = 1 then
    qyDet.FieldByName('SenderNum').AsFloat := DisplayValue * qyDet.FieldByName('ExchRate').AsFloat
  else
  begin
    if qyDet.FieldByName('ExchRate').AsFloat <> 0 then
      qyDet.FieldByName('SenderNum').AsFloat := DisplayValue / qyDet.FieldByName('ExchRate').AsFloat
  end;
  qyDet.FieldByName('SubMoney').AsFloat := DisplayValue * qyDet.FieldByName('SubPrice').AsFloat;

  qyDet.FieldByName('AllMoney').AsFloat := DisplayValue * qyDet.FieldByName('SubTaxPrice').AsFloat;
  qyDet.FieldByName('SenderMoney').AsFloat := qyDet.FieldByName('SubMoney').AsFloat;
  qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('SenderMoney').AsFloat;
end;

procedure TSaleSenderFM.cxgrdbclmnItemCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i: Integer;
begin
  if btSave.Enabled = False then Exit;
  try
    ItemQFM := TItemQFM.Create(nil);
    ItemQFM.sParam := '所有';
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
        qyDet.FieldByName('ItemPYCode').AsString := ItemQFM.qyFind.FieldByName('PYCode').AsString;
        qyDet.post;
        ItemQFM.qyFind.Next;
      end;
    end;
  finally
    ItemQFM.Free;
    ItemQFM := nil;
  end;
end;

procedure TSaleSenderFM.cxgrdbclmnOrderNumPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('SenderNum').AsString := DisplayValue;
  qyDet.FieldByName('SenderMoney').AsFloat := DisplayValue * qyDet.FieldByName('SenderPrice').AsFloat;
  qyDet.FieldByName('AllMoney').AsFloat := DisplayValue * qyDet.FieldByName('TaxPrice').AsFloat;
  qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('SenderMoney').AsFloat;
  if qyDet.FieldByName('iFlag').AsInteger = 0 then
    qyDet.FieldByName('SubNum').AsFloat := DisplayValue * qyDet.FieldByName('ExchRate').AsFloat
  else
  begin
    if qyDet.FieldByName('ExchRate').AsFloat <> 0 then
      qyDet.FieldByName('SubNum').AsFloat := DisplayValue / qyDet.FieldByName('ExchRate').AsFloat
  end;
end;

procedure TSaleSenderFM.cxgrdbclmnOrderPricePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('SenderPrice').AsString := DisplayValue;
  qyDet.FieldByName('TaxPrice').AsFloat := DisplayValue * (1 + qyDet.FieldByName('TaxRate').AsFloat / 100);
  qyDet.FieldByName('SenderMoney').AsFloat := qyDet.FieldByName('SenderNum').AsFloat * DisplayValue;
  qyDet.FieldByName('AllMoney').AsFloat := qyDet.FieldByName('SenderNum').AsFloat * qyDet.FieldByName('TaxPrice').AsFloat;
  qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('SenderMoney').AsFloat;
  qyDet.FieldByName('SubMoney').AsFloat := qyDet.FieldByName('SenderMoney').AsFloat;
  if qyDet.FieldByName('iFlag').asInteger = 0 then
  begin
    if qyDet.FieldByName('ExchRate').AsFloat <> 0 then
      qyDet.FieldByName('SubPrice').AsFloat := DisplayValue / qyDet.FieldByName('ExchRate').AsFloat;
  end
  else
  begin
    qyDet.FieldByName('SubPrice').AsFloat := DisplayValue * qyDet.FieldByName('ExchRate').AsFloat;
  end;
  qyDet.FieldByName('SubTaxPrice').AsFloat := qyDet.FieldByName('SubPrice').AsFloat * (1 + qyDet.FieldByName('TaxRate').AsFloat / 100);

end;

procedure TSaleSenderFM.cxgrdbclmnProTypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  ProTypeSelect(btSave.Enabled, qyDet, 'ProType', 2);
end;

procedure TSaleSenderFM.cxgrdbclmnTaxPricePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  try
    inherited;
    Error := False;
    if DisplayValue = '' then
      DisplayValue := 0;
    qyDet.FieldByName('TaxPrice').AsFloat := DisplayValue;
    qyDet.FieldByName('SenderPrice').AsFloat := DisplayValue / (1 + qyDet.FieldByName('TaxRate').AsFloat / 100);
    qyDet.FieldByName('SenderMoney').AsFloat := qyDet.FieldByName('SenderNum').AsFloat * (DisplayValue / (1 + qyDet.FieldByName('TaxRate').AsFloat / 100));
    qyDet.FieldByName('AllMoney').AsFloat := qyDet.FieldByName('SenderNum').AsFloat * DisplayValue;
    qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('SenderMoney').AsFloat;
  except
  end;
end;

procedure TSaleSenderFM.cxgrdbclmnTaxRatePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  try
    inherited;
    Error := False;
    if DisplayValue = '' then
      DisplayValue := 0;
    qyDet.FieldByName('TaxRate').AsFloat := DisplayValue;
    qyDet.FieldByName('TaxPrice').AsFloat := qyDet.FieldByName('SenderPrice').AsFloat * (1 + DisplayValue / 100);
    qyDet.FieldByName('SenderMoney').AsFloat := qyDet.FieldByName('SenderNum').AsFloat * qyDet.FieldByName('SenderPrice').AsFloat;
    qyDet.FieldByName('AllMoney').AsFloat := qyDet.FieldByName('SenderNum').AsFloat * qyDet.FieldByName('TaxPrice').AsFloat;
    qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('SenderMoney').AsFloat;
  except
  end;
end;

procedure TSaleSenderFM.cxObjectPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if btSave.Enabled = False then Exit;
  if qyHed.FieldByName('AuditFlag').AsInteger > 0 then Exit;
  if AButtonIndex = 0 then // 所用客户
  begin
    try
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
  if AButtonIndex = 1 then //销售发货未引用完销售订单的客户
  begin
    try
      SGeneralFM := TSGeneralFM.Create(nil);
      SGeneralFM.Caption := '销售订单未发货客户查询';
      if not bFindAll then
        SGeneralFM.sWhere := SGeneralFM.sWhere + 'and ( a.MakeMan=' + QuotedStr(LoginEmpId) + ' or a.CustId in (select CustId from CustTB where EmpId=' + QuotedStr(LoginEmpId) + ')) ';
      SGeneralFM.ShowModal;
      if (SGeneralFM.bHasSelect) and (SGeneralFM.qyFind.RecordCount > 0) then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('CustId').AsString := SGeneralFM.qyFind.FieldByName('客户编号').AsString;
        btReferClick(Sender);
      end;
    finally
      SGeneralFM.free;
      SGeneralFM := nil;
    end;
  end;
end;

procedure TSaleSenderFM.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  sFMId := 'SaleSenderFM';
  sFMName := Self.Caption;
  sTableId := 'SaleSenderHDTB';
  inherited;
  InitCbb('select PayModeName from PayModeTB where PayModeKind like ''%收款%''', cbbPayMode);
  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('select * from SaleSenderHDTB where IsNull(bMaxAudit,0)=0');
    if not bFindAll then
      SQL.Add('and ( MakeMan=' + QuotedStr(LoginEmpId) + ' or CustId in (select CustId from CustTB where EmpId=' + QuotedStr(LoginEmpId) + ')) ');
    Open;
  end;
  cxgrdtbv.DataController.GetItemByFieldName('Remark').Options.Editing := false;
end;

procedure TSaleSenderFM.FormDestroy(Sender: TObject);
begin
  inherited;
  SaleSenderFM := nil;
end;

procedure TSaleSenderFM.FormShow(Sender: TObject);
var i: Integer;
begin
  inherited;
  TextReadOnly(Self, True);
  if (bRight) then
  begin
    for i := 0 to cxgrdtbv.ColumnCount - 1 do
    begin
      if (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SenderPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'TaxPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'TaxRate') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SenderMoney') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubTaxPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubMoney') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'AllMoney') then
        cxgrdtbv.Columns[i].Visible := bShowPrice;
    end;
  end;
end;

procedure TSaleSenderFM.N1Click(Sender: TObject);
var i, j: Integer; sCount: string;
  Value: array of Variant;
begin
  if btSave.Enabled = False then Exit;
  if InputQuery('复制行数设置', '请输入要复制的行数', sCount) then
  begin
    if StrToInt(sCount) < 1 then
    begin
      ShowBox('请输入一个大于1的整数');
      Exit;
    end;
    SetLength(Value, qyDet.FieldCount);
    for i := 0 to qyDet.FieldCount - 1 do
    begin
      if (qyDet.Fields[i].FieldKind = fkData) and (qyDet.Fields[i].FieldName <> 'AutoID') then
        Value[i] := qyDet.Fields[i].Value;
    end;
    for j := 0 to StrToInt(sCount) - 1 do
    begin
      qyDet.Append;
      for i := 0 to qyDet.FieldCount - 1 do
      begin
        if (qyDet.Fields[i].FieldKind = fkData) and (qyDet.Fields[i].FieldName <> 'AutoID') then
          qyDet.Fields[i].Value := Value[i];
      end;
      UpdateData(cxgrdtbv, 'SenderNum');
    end;
  end;
end;

procedure TSaleSenderFM.N3Click(Sender: TObject);
begin
  inherited;
  BillView('SaleOut', 'select * from WareInOutHDTB where BillNo in (select BillNo from WareInOutDTTB where SaleSenderId=' + QuotedStr(qyDet.FieldByName('AutoNo').AsString) + ')');
end;

procedure TSaleSenderFM.N4Click(Sender: TObject);
begin
  inherited;
  BillView('SaleOrderHDTB', 'select * from SaleOrderHDTB where SaleOrderNo=' + QuotedStr(qyDet.FieldByName('SaleOrderNo').AsString));
end;

procedure TSaleSenderFM.N6Click(Sender: TObject);
begin
  try
    inherited;
    with DataFM.qyTemp do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add('Exec prUpdateSaleSenderStop ' + QuotedStr(qyDet.FieldByName('AutoNo').AsString) + ',' + '''''');
      ExecSQL;
      cxEdtNoPropertiesChange(cxEdtNo);
    end;
  except
    ShowWarn('更新失败');
  end;
end;

procedure TSaleSenderFM.N7Click(Sender: TObject);
begin
  try
    inherited;
    with DataFM.qyTemp do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add('Exec prUpdateSaleSenderStop ' + QuotedStr(qyDet.FieldByName('AutoNo').AsString) + ',' + QuotedStr(qyHed.FieldByName('SaleOrderNo').AsString));
      ExecSQL;
      cxEdtNoPropertiesChange(cxEdtNo);
    end;
  except
    ShowWarn('更新失败');
  end;
end;

procedure TSaleSenderFM.qyDetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyDet.FieldByName('SenderNo').AsString := qyHed.FieldByName('SenderNo').AsString;
  qyDet.FieldByName('AutoNo').AsString := GetDateAutoNo(sTableId);
  qyDet.FieldByName('CompactNo').AsString := qyHed.FieldByName('CompactNo').AsString;
  qyDet.FieldByName('TaxRate').AsFloat := iTaxRate;
end;

procedure TSaleSenderFM.qyDetCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyDet, DataFM.qyWareNum, ['ItemID', 'WareNum'], ['ItemID', 'WareNum']);
end;

procedure TSaleSenderFM.qyDetItemIDChange(Sender: TField);
begin
  inherited;
  CalcField(qyDet, DataFM.qyItem, ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'SenderPrice', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag'],
    ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemPrice', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag']);
end;

procedure TSaleSenderFM.qyHedCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyHed, DataFM.qyCust, ['CustId', 'CustName', 'CustTel'], ['CustId', 'CustName', 'Tel']);
  CalcField(qyHed, DataFM.qyEmp, ['EmpId', 'EmpName'], ['EmpId', 'EmpName']);
end;

procedure TSaleSenderFM.qyHedCustIdChange(Sender: TField);
begin
  inherited;
  CalcField(qyHed, DataFM.qyCust, ['CustId', 'SendAdd'], ['CustId', 'CustAddress']);
end;

procedure TSaleSenderFM.smlntfldHedPrintNumChange(Sender: TField);
begin
  inherited;
  ShowFMInfo(sTableId,qyHed);
end;

end.
