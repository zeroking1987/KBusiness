unit SaleOrderPS;

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
  cxPCdxBarPopupMenu, dxSkinOffice2010Blue, cxCheckBox, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu, cxNavigator;

type
  TSaleOrderFM = class(TBaseGrdFM)
    Label11: TLabel;
    cxBtReqMan: TcxDBButtonEdit;
    Label12: TLabel;
    cxBt2: TcxDBButtonEdit;
    Label13: TLabel;
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
    cxEdt2: TcxDBTextEdit;
    cbbPayMode: TcxDBComboBox;
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
    blnfldHedbSelect: TBooleanField;
    qyHedSaleOrderNo: TStringField;
    dtmfldHedOrderDate: TDateTimeField;
    qyHedOrderStyle: TStringField;
    qyHedCompactNo: TStringField;
    qyHedCustId: TStringField;
    qyHedSendAdd: TStringField;
    qyHedEmpId: TStringField;
    qyHedSubjoinNo: TStringField;
    qyHedPayMode: TStringField;
    qyHedCurrName: TStringField;
    fmtbcdfldHedExchangeRate: TFMTBCDField;
    blnfldHedbTax: TBooleanField;
    qyHedTheme: TStringField;
    qyHedFjPath: TStringField;
    qyHedFjName: TStringField;
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
    qyHedCustName: TStringField;
    qyHedEmpName: TStringField;
    Label16: TLabel;
    cxEdt1: TcxDBTextEdit;
    Label17: TLabel;
    cbb1: TcxDBComboBox;
    qyDetSaleOrderNo: TStringField;
    qyDetAutoID: TLargeintField;
    qyHedAutoId: TLargeintField;
    N1: TMenuItem;
    qySalePrice: TADOQuery;
    qyDetItemCode: TStringField;
    qyDetItemName: TStringField;
    qyDetItemSpc: TStringField;
    qyDetItemPic: TStringField;
    qyDetItemUnit: TStringField;
    qyDetSubUnit: TStringField;
    qyDetCompactNo: TStringField;
    cxgrdtbvColumn1: TcxGridDBColumn;
    qyDetDeliverDate: TDateTimeField;
    cxgrdtbvColumn2: TcxGridDBColumn;
    cxgrdtbvColumn3: TcxGridDBColumn;
    qyDetAutoNo: TStringField;
    smlntfldDetiFlag: TSmallintField;
    fmtbcdfldDetExchRate: TFMTBCDField;
    cxgrdbclmnColumn4: TcxGridDBColumn;
    cxgrdbclmnColumn5: TcxGridDBColumn;
    cxgrdbclmnColumn6: TcxGridDBColumn;
    lbl1: TLabel;
    cxdbtxtdt1: TcxDBTextEdit;
    strngfldHedCustTel: TStringField;
    fltfldDetWareNum: TFloatField;
    N2: TMenuItem;
    NSaleSender: TMenuItem;
    NSaleOut: TMenuItem;
    qyDetbStop: TBooleanField;
    qyHedbStop: TBooleanField;
    N5: TMenuItem;
    NOneStop: TMenuItem;
    NAllStop: TMenuItem;
    cxgrdtbvColumn4: TcxGridDBColumn;
    qyHedbAllSend: TBooleanField;
    qyHedbAllOut: TBooleanField;
    lbl2: TLabel;
    cExbbBillFind: TcxExtLookupComboBox;
    qyFind: TADOQuery;
    dsFind: TDataSource;
    cxgrdDBTableView1: TcxGridDBTableView;
    qyFind日期: TDateTimeField;
    qyFind单位: TStringField;
    qyFind单号: TStringField;
    qyFind制单人: TStringField;
    qyFind信息: TStringField;
    cxgrdDBTableView1DBColumn: TcxGridDBColumn;
    cxgrdDBTableView1DBColumn1: TcxGridDBColumn;
    cxgrdDBTableView1DBColumn2: TcxGridDBColumn;
    cxgrdDBTableView1DBColumn3: TcxGridDBColumn;
    cxgrdDBTableView1DBColumn4: TcxGridDBColumn;
    cxgrdbclmnColor: TcxGridDBColumn;
    qyDetbAllSend: TBooleanField;
    qyDetbAllOut: TBooleanField;
    qyDetColor: TStringField;
    Label14: TLabel;
    cxMoRemark: TcxDBMemo;
    cxPupEdtRemark: TcxDBPopupEdit;
    Label18: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    qyHedItemNo: TStringField;
    Label19: TLabel;
    cbbCurrName: TcxDBComboBox;
    cxExchangeRate: TcxDBTextEdit;
    dxbrpmnPera: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    LabSubmint: TLabel;
    qyHedbSubmit: TBooleanField;
    qyDetFTaxMoney: TFMTBCDField;
    qyDetFOrderMoney: TFMTBCDField;
    qyDetFAllMoney: TFMTBCDField;
    qyDetFOrderPrice: TFMTBCDField;
    qyDetFTaxPrice: TFMTBCDField;
    qyDetExchangeRate: TFMTBCDField;
    qyHedCustCode: TStringField;
    Label20: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    qyHedTraffPay: TWideStringField;
    Label21: TLabel;
    cxcbbTraffMode: TcxDBComboBox;
    Label22: TLabel;
    Label23: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    qyHedPrincipal: TStringField;
    qyHedTraffMode: TWideStringField;
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
    procedure qyDetItemIDChange(Sender: TField);
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
    procedure N1Click(Sender: TObject);
    procedure qyDetCalcFields(DataSet: TDataSet);
    procedure cxgrdbclmnColumn6PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure qyDetAfterInsert(DataSet: TDataSet);
    procedure qyHedAfterInsert(DataSet: TDataSet);
    procedure NSaleSenderClick(Sender: TObject);
    procedure NSaleOutClick(Sender: TObject);
    procedure NOneStopClick(Sender: TObject);
    procedure NAllStopClick(Sender: TObject);
    procedure pmLayoutPopup(Sender: TObject);
    procedure cExbbBillFindPropertiesChange(Sender: TObject);
    procedure cxgrdbclmnProTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdbclmnColorPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure cxgrdtbvColumn5PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdtbvColumn6PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure qyHedCurrNameChange(Sender: TField);
    procedure cxgrdtbvColumn9PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdEnter(Sender: TObject);
    procedure qyHedTraffModeChange(Sender: TField);
  private
    { Private declarations }
  public

    { Public declarations }
  end;
var
  SaleOrderFM: TSaleOrderFM;

implementation

uses PublicPS, ControlPublicPS, DataPS, AMMsgPS, EmpQPS, ItemQPS, DeptQPS, CustQPS, SaleOrderFindPS;
{$R *.dfm}

procedure TSaleOrderFM.btAddClick(Sender: TObject);
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
    qyHed.FieldByName('SaleOrderNo').AsString := GetTableNo(sTableId, 'SaleOrderNo');
    qyHed.FieldByName('OrderDate').AsDateTime := StrToDateTime(FormatDateTime('yyyy-mm-dd', SysDateTime));
    qyHed.FieldByName('MakeMan').AsString := LoginEmpId;
    qyHed.FieldByName('MakeManName').AsString := LoginEmpName;
    qyHed.FieldByName('MakeDate').AsDateTime := SysDateTime;
    qyHed.FieldByName('AuditFlag').AsInteger := 0;
    qyHed.FieldByName('CurrName').AsString := '人民币';
    qyHed.FieldByName('ExchangeRate').AsFloat := 1;
    qyDet.Edit;
  except
    on E: Exception do
      ShowWarn(e.Message);
  end;
end;

procedure TSaleOrderFM.btAddLClick(Sender: TObject);
begin
  try
    qyDet.Append;
    cxgrdbclmnItemCode.Focused := True;
  except
  end;
end;

procedure TSaleOrderFM.btCancelClick(Sender: TObject);
begin
  qyDet.CancelBatch();
  qyHed.CancelBatch();
  TextReadOnly(Self, True);
  inherited;
end;

procedure TSaleOrderFM.btDelClick(Sender: TObject);
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
      ExeSql('Delete SaleOrderDTTB where SaleOrderNo=' + QuotedStr(sBiilNo));
      ExeSql('Delete SaleOrderHDTB where SaleOrderNo=' + QuotedStr(sBiilNo));
      with qyHed do
      begin
        if Active then Close;
        SQL.Clear;
        sql.Add('select * from SaleOrderHDTB where IsNull(bMaxAudit,0)=0 ');
        if not bFindAll then
          SQL.Add('and ( MakeMan=' + QuotedStr(LoginEmpId) + ' or CustId in (select CustId from CustTB where EmpId=' + QuotedStr(LoginEmpId) + ')) ');
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
      qyHed.UpdateBatch;  }
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

procedure TSaleOrderFM.btDelLClick(Sender: TObject);
begin
  try
    qyDet.Delete;
  except
    ShowBox('删除失败！');
  end;
end;

procedure TSaleOrderFM.btEditClick(Sender: TObject);
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
    inherited;
  end;
  qyHed.Edit;
  qyHed.FieldByName('EditMan').AsString := LoginEmpId;
  qyHed.FieldByName('EditManName').AsString := LoginEmpName;
  qyHed.FieldByName('EditDate').AsDateTime := SysDateTime;
end;

procedure TSaleOrderFM.btFindClick(Sender: TObject);
begin
  inherited;
  try
    if not Assigned(SaleOrderFindFM) then
      SaleOrderFindFM := TSaleOrderFindFM.Create(Application);
    SaleOrderFindFM.ShowModal;
  finally
    SaleOrderFindFM.Free;
    SaleOrderFindFM := nil
  end;
end;

procedure TSaleOrderFM.btSaveClick(Sender: TObject);
var
  sNewNo: string;
  i: Integer;
begin
  try
    if cxBt2.Text = '' then
    begin
      ShowBox('请先选择客户');
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
    //SendPreMsg('销售订单保存', trim(cxEdtNo.Text));
  except
    on E: Exception do
    begin
      if pos('不能将值', E.Message) > 0 then
        ShowBox('请将必填项填写完整!')
      else if pos('插入重复键', e.Message) > 0 then
      begin
        try
          sNewNo := GetTableNO(sTableId, 'SaleOrderNo');
          if qyHed.FieldByName('SaleOrderNo').AsString = sNewNo then
          begin
            ShowBox('单号有重复!');
            Exit;
          end;
          if qyHed.State = dsBrowse then qyHed.Edit;
          if qyDet.State = dsBrowse then qyDet.Edit;

          qyHed.FieldByName('SaleOrderNo').AsString := sNewNo;
          qyDet.First;
          for i := 0 to qyDet.RecordCount - 1 do
          begin
            if qyDet.State = dsBrowse then qyDet.Edit;
            qyDet.FieldByName('SaleOrderNo').AsString := sNewNo;
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

procedure TSaleOrderFM.btUnCheckClick(Sender: TObject);
var sRfNo: string;
begin
  sRfNo := bHaveData(DataFM.qyTemp, 'select SenderNo from SaleSenderDTTB where SaleOrderNo=' + QuotedStr(Trim(cxEdtNo.Text)));
  if sRfNo <> '' then
  begin
    ShowBox('该销售订单已被销售发货单<' + sRfNo + '>引用,不能反审核');
    Exit;
  end;
  sRfNo := bHaveData(DataFM.qyTemp, 'select ProOrderNo from ProOrderDTTB where SaleOrderNo=' + QuotedStr(Trim(cxEdtNo.Text)));
  if sRfNo <> '' then
  begin
    ShowBox('该销售订单已被生产订单<' + sRfNo + '>引用,不能反审核');
    Exit;
  end;
  inherited;
  AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, -1);
  ShowFMInfo(sTableId,qyHed);
end;

procedure TSaleOrderFM.cExbbBillFindPropertiesChange(Sender: TObject);
begin
  inherited;
  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('select * from SaleOrderHDTB where SaleOrderNo=' + QuotedStr(qyFind.FieldByName('单号').AsString));
    Open;
  end;
end;

procedure TSaleOrderFM.cxBt1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TSaleOrderFM.cxBt2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  try
    if btSave.Enabled = False then Exit;
    if qyHed.FieldByName('AuditFlag').AsInteger > 0 then Exit;
    try
      CustQFM := TCustQFM.Create(nil);
      CustQFM.iSelectKind := 2; //单选
      CustQFM.ShowModal;
      if CustQFM.sId <> '' then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('CustId').AsString := CustQFM.sId;
        qyHed.FieldByName('EmpId').AsString := CustQFM.qyFind.FieldByName('EmpId').AsString;
      end;
    finally
      CustQFM.Free;
      CustQFM := nil;
    end;
  except
  end;
end;

procedure TSaleOrderFM.cxEdtNoPropertiesChange(Sender: TObject);
begin
  inherited;
  with qyDet do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from SaleOrderDTTB where SaleOrderNo=' + QuotedStr(trim(cxEdtNo.Text)));
    Open;
  end;
  if DataFM.qyPyCode.Active = false then DataFM.qyPyCode.Open;
  ShowFMInfo(sTableId,qyHed);
  if (qyHed.FindField('bAllSend') <> nil) and (qyHed.FieldByName('bAllSend').AsBoolean) then
    cxLabtemp5.Caption := '已发完货'
  else
    cxLabtemp5.Caption := '';
  if (qyHed.FindField('bSubmit') <> nil) and (qyHed.FieldByName('bSubmit').AsBoolean) then
    LabSubmint.Caption := '已提交'
  else
    LabSubmint.Caption := '';
end;

procedure TSaleOrderFM.cxgrdbclmnColorPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  ColorSelect(btSave.Enabled, qyDet, 'Color', 2);
end;

procedure TSaleOrderFM.cxgrdbclmnColumn6PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := false;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('SubNum').AsFloat := DisplayValue;
  if qyDet.FieldByName('iFlag').asInteger = 1 then
    qyDet.FieldByName('OrderNum').AsFloat := DisplayValue * qyDet.FieldByName('ExchRate').AsFloat

  else
  begin
    if qyDet.FieldByName('ExchRate').AsFloat <> 0 then
      qyDet.FieldByName('OrderNum').AsFloat := DisplayValue / qyDet.FieldByName('ExchRate').AsFloat
  end;
  qyDet.FieldByName('SubMoney').AsFloat := DisplayValue * qyDet.FieldByName('SubPrice').AsFloat;

  qyDet.FieldByName('AllMoney').AsFloat := DisplayValue * qyDet.FieldByName('SubTaxPrice').AsFloat;
  qyDet.FieldByName('OrderMoney').AsFloat := qyDet.FieldByName('SubMoney').AsFloat;
  qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('OrderMoney').AsFloat;


end;

procedure TSaleOrderFM.cxgrdbclmnItemCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i: Integer; sEditValue: string;
begin
  if btSave.Enabled = False then Exit;
  sEditValue := VarToStr(cxgrdbclmnItemCode.EditValue);
  if AButtonIndex = 0 then
  begin

  end;
  if AButtonIndex = 1 then
  begin
    try
      ItemQFM := TItemQFM.Create(nil);
      ItemQFM.sParam := '成品';
      ItemQFM.iSelectKind := 1;
      ItemQFM.cxEdtValue.Text := sEditValue;
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
end;

procedure TSaleOrderFM.cxgrdbclmnItemPYCodePropertiesValidate(Sender: TObject;
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

procedure TSaleOrderFM.cxgrdbclmnOrderNumPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('OrderNum').AsString := DisplayValue;
  qyDet.FieldByName('OrderMoney').AsFloat := DisplayValue * qyDet.FieldByName('OrderPrice').AsFloat;
  qyDet.FieldByName('AllMoney').AsFloat := DisplayValue * qyDet.FieldByName('TaxPrice').AsFloat;
  qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('OrderMoney').AsFloat;
  if qyDet.FieldByName('iFlag').AsInteger = 0 then
    qyDet.FieldByName('SubNum').AsFloat := DisplayValue * qyDet.FieldByName('ExchRate').AsFloat
  else
  begin
    if qyDet.FieldByName('ExchRate').AsFloat <> 0 then
      qyDet.FieldByName('SubNum').AsFloat := DisplayValue / qyDet.FieldByName('ExchRate').AsFloat
  end;

  qyDet.FieldByName('FOrderMoney').AsFloat := DisplayValue * qyDet.FieldByName('FOrderPrice').AsFloat;
  qyDet.FieldByName('FAllMoney').AsFloat := DisplayValue * qyDet.FieldByName('TaxPrice').AsFloat;
  qyDet.FieldByName('FTaxMoney').AsFloat := qyDet.FieldByName('FAllMoney').AsFloat - qyDet.FieldByName('FOrderMoney').AsFloat;

end;

procedure TSaleOrderFM.cxgrdbclmnOrderPricePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('OrderPrice').AsString := DisplayValue;
  qyDet.FieldByName('TaxPrice').AsFloat := DisplayValue * (1 + qyDet.FieldByName('TaxRate').AsFloat / 100);
  qyDet.FieldByName('OrderMoney').AsFloat := qyDet.FieldByName('OrderNum').AsFloat * DisplayValue;
  qyDet.FieldByName('AllMoney').AsFloat := qyDet.FieldByName('OrderNum').AsFloat * qyDet.FieldByName('TaxPrice').AsFloat;
  qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('OrderMoney').AsFloat;

  qyDet.FieldByName('SubMoney').AsFloat := qyDet.FieldByName('OrderMoney').AsFloat;
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

  if qyDet.FieldByName('ExchangeRate').AsFloat > 0 then
  begin
    qyDet.FieldByName('FOrderPrice').AsString := DisplayValue / qyDet.FieldByName('ExchangeRate').AsFloat;
    qyDet.FieldByName('FTaxPrice').AsFloat := DisplayValue / qyDet.FieldByName('ExchangeRate').AsFloat * (1 + qyDet.FieldByName('TaxRate').AsFloat / 100);
    qyDet.FieldByName('FOrderMoney').AsFloat := qyDet.FieldByName('OrderNum').AsFloat * DisplayValue / qyDet.FieldByName('ExchangeRate').AsFloat;
    qyDet.FieldByName('FAllMoney').AsFloat := qyDet.FieldByName('OrderNum').AsFloat * qyDet.FieldByName('FTaxPrice').AsFloat;
    qyDet.FieldByName('FTaxMoney').AsFloat := qyDet.FieldByName('FAllMoney').AsFloat - qyDet.FieldByName('FOrderMoney').AsFloat;

  end;
end;

procedure TSaleOrderFM.cxgrdbclmnProTypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  ProTypeSelect(btSave.Enabled, qyDet, 'ProType', 2);
end;

procedure TSaleOrderFM.cxgrdbclmnTaxPricePropertiesValidate(Sender: TObject;
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

    if qyDet.FieldByName('ExchangeRate').AsFloat > 0 then
    begin
      qyDet.FieldByName('FTaxPrice').AsString := DisplayValue / qyHed.FieldByName('ExchangeRate').AsFloat;
      qyDet.FieldByName('FOrderPrice').AsFloat := DisplayValue / qyHed.FieldByName('ExchangeRate').AsFloat / (1 + qyDet.FieldByName('TaxRate').AsFloat / 100);
      qyDet.FieldByName('FOrderMoney').AsFloat := qyDet.FieldByName('OrderNum').AsFloat * (DisplayValue / qyHed.FieldByName('ExchangeRate').AsFloat / (1 + qyDet.FieldByName('TaxRate').AsFloat / 100));
      qyDet.FieldByName('FAllMoney').AsFloat := qyDet.FieldByName('OrderNum').AsFloat * DisplayValue / qyHed.FieldByName('ExchangeRate').AsFloat;
      qyDet.FieldByName('FTaxMoney').AsFloat := qyDet.FieldByName('FAllMoney').AsFloat - qyDet.FieldByName('FOrderMoney').AsFloat;
    end;
  except
  end;
end;

procedure TSaleOrderFM.cxgrdbclmnTaxRatePropertiesValidate(Sender: TObject;
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

    qyDet.FieldByName('FTaxPrice').AsFloat := qyDet.FieldByName('FOrderPrice').AsFloat * (1 + DisplayValue / 100);
    qyDet.FieldByName('FOrderMoney').AsFloat := qyDet.FieldByName('OrderNum').AsFloat * qyDet.FieldByName('FOrderPrice').AsFloat;
    qyDet.FieldByName('FAllMoney').AsFloat := qyDet.FieldByName('OrderNum').AsFloat * qyDet.FieldByName('FTaxPrice').AsFloat;
    qyDet.FieldByName('FTaxMoney').AsFloat := qyDet.FieldByName('FAllMoney').AsFloat - qyDet.FieldByName('FOrderMoney').AsFloat;
  except
  end;
end;

procedure TSaleOrderFM.cxgrdEnter(Sender: TObject);
begin
  inherited;
  Self.cxgrdtbv.GetColumnByFieldName('ItemCode').Focused := True;
end;

procedure TSaleOrderFM.cxgrdtbvColumn5PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('FOrderPrice').AsString := DisplayValue;
  qyDet.FieldByName('FTaxPrice').AsFloat := DisplayValue * (1 + qyDet.FieldByName('TaxRate').AsFloat / 100);
  qyDet.FieldByName('FOrderMoney').AsFloat := qyDet.FieldByName('OrderNum').AsFloat * DisplayValue;
  qyDet.FieldByName('FAllMoney').AsFloat := qyDet.FieldByName('OrderNum').AsFloat * qyDet.FieldByName('FTaxPrice').AsFloat;
  qyDet.FieldByName('FTaxMoney').AsFloat := qyDet.FieldByName('FAllMoney').AsFloat - qyDet.FieldByName('FOrderMoney').AsFloat;

  qyDet.FieldByName('OrderPrice').AsString := DisplayValue * qyDet.FieldByName('ExchangeRate').AsFloat;
  UpdateData(cxgrdtbv, 'OrderPrice');
end;

procedure TSaleOrderFM.cxgrdtbvColumn6PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('FTaxPrice').AsFloat := DisplayValue;
  qyDet.FieldByName('FOrderPrice').AsFloat := DisplayValue / (1 + qyDet.FieldByName('TaxRate').AsFloat / 100);
  qyDet.FieldByName('FOrderMoney').AsFloat := qyDet.FieldByName('OrderNum').AsFloat * (DisplayValue / (1 + qyDet.FieldByName('TaxRate').AsFloat / 100));
  qyDet.FieldByName('FAllMoney').AsFloat := qyDet.FieldByName('OrderNum').AsFloat * DisplayValue;
  qyDet.FieldByName('FTaxMoney').AsFloat := qyDet.FieldByName('FAllMoney').AsFloat - qyDet.FieldByName('FOrderMoney').AsFloat;

  qyDet.FieldByName('TaxPrice').AsString := DisplayValue * qyDet.FieldByName('ExchangeRate').AsFloat;
end;

procedure TSaleOrderFM.cxgrdtbvColumn9PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('ExchangeRate').AsString := DisplayValue;
  if DisplayValue <> 0 then
  begin
    qyDet.FieldByName('FOrderPrice').AsFloat := qyDet.FieldByName('OrderPrice').AsString / DisplayValue;
    qyDet.FieldByName('FTaxPrice').AsFloat := qyDet.FieldByName('OrderPrice').AsString / DisplayValue * (1 + qyDet.FieldByName('TaxRate').AsFloat / 100);
    qyDet.FieldByName('FOrderMoney').AsFloat := qyDet.FieldByName('OrderNum').AsFloat * qyDet.FieldByName('OrderPrice').AsFloat / DisplayValue;
    qyDet.FieldByName('FAllMoney').AsFloat := qyDet.FieldByName('OrderNum').AsFloat * qyDet.FieldByName('FTaxPrice').AsFloat;
    qyDet.FieldByName('FTaxMoney').AsFloat := qyDet.FieldByName('FAllMoney').AsFloat - qyDet.FieldByName('FOrderMoney').AsFloat;
  end;
end;

procedure TSaleOrderFM.dxBarButton1Click(Sender: TObject);
var sBillNO: string;
begin
  inherited;
  qyHed.Edit;
  qyHed.FieldByName('bSubmit').AsBoolean := True;
  qyHed.UpdateBatch();
  cxEdtNoPropertiesChange(Sender);
end;

procedure TSaleOrderFM.dxBarButton2Click(Sender: TObject);
begin
  inherited;
  qyHed.Edit;
  qyHed.FieldByName('bSubmit').AsBoolean := False;
  qyHed.UpdateBatch();
  cxEdtNoPropertiesChange(Sender);
end;

procedure TSaleOrderFM.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  sFMId := 'SaleOrderFM';
  sFMName := Self.Caption;
  sTableId := 'SaleOrderHDTB';
  inherited;
  InitCbb('select PayModeName from PayModeTB where PayModeKind like ''%收款%''', cbbPayMode);
  InitCbb('select CurrName from CurrencyTB', cbbCurrName);
  InitCbb('select ModeName from TraffModeTB', cxcbbTraffMode);
  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('select * from SaleOrderHDTB where IsNull(bMaxAudit,0)=0');
    if not bFindAll then
      SQL.Add('and ( MakeMan=' + QuotedStr(LoginEmpId) + ' or CustId in (select CustId from CustTB where EmpId=' + QuotedStr(LoginEmpId) + ')) ');
    Open;
  end;
  cxgrdtbv.DataController.GetItemByFieldName('Remark').Options.Editing := false;
end;

procedure TSaleOrderFM.FormDestroy(Sender: TObject);
begin
  inherited;
  SaleOrderFM := nil;
end;

procedure TSaleOrderFM.FormShow(Sender: TObject);
var i: Integer;
begin
  TextReadOnly(Self, True);
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
  GetGrd(Self, cxgrdtbv);

  inherited;
  with qyFind do
  begin
    if Active then Close;
    Sql.Clear;
    SQL.Add('exec prBillFind ' + QuotedStr(sTableId));
    Open;
  end;
end;

procedure TSaleOrderFM.N1Click(Sender: TObject);
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
      UpdateData(cxgrdtbv, 'OrderNum');
    end;
  end;
end;

procedure TSaleOrderFM.NSaleSenderClick(Sender: TObject);
begin
  inherited;
  BillView('SaleSenderHDTB', 'select * from SaleSenderHDTB where SenderNo in (select SenderNo from SaleSenderDTTB where SaleOrderId=' + QuotedStr(qyDet.FieldByName('AutoNo').AsString) + ')');
end;

procedure TSaleOrderFM.pmLayoutPopup(Sender: TObject);
begin
  inherited;
  NOneStop.Visible := bOther1;
  NAllStop.Visible := bOther1;
  NOneStop.Enabled := not btSave.Enabled;
  NAllStop.Enabled := not btSave.Enabled;
  NSaleSender.Enabled := not btSave.Enabled;
  NSaleOut.Enabled := not btSave.Enabled;

end;

procedure TSaleOrderFM.NSaleOutClick(Sender: TObject);
begin
  inherited;
  BillView('SaleOut', 'select * from WareInOutHDTB where BillNo in (select BillNo from WareInOutDTTB where SaleOrderId=' + QuotedStr(qyDet.FieldByName('AutoNo').AsString) + ')');
end;

procedure TSaleOrderFM.NOneStopClick(Sender: TObject);
begin
  try
    inherited;
    with DataFM.qyTemp do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add('Exec prUpdateSaleOrderStop ' + QuotedStr(qyDet.FieldByName('AutoNo').AsString) + ',' + '''''');
      ExecSQL;
      cxEdtNoPropertiesChange(cxEdtNo);
    end;
  except
    ShowWarn('更新失败');
  end;
end;

procedure TSaleOrderFM.NAllStopClick(Sender: TObject);
begin
  try
    inherited;
    with DataFM.qyTemp do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add('Exec prUpdateSaleOrderStop ' + QuotedStr(qyDet.FieldByName('AutoNo').AsString) + ',' + QuotedStr(qyHed.FieldByName('SaleOrderNo').AsString));
      ExecSQL;
      cxEdtNoPropertiesChange(cxEdtNo);
    end;
  except
    ShowWarn('更新失败');
  end;
end;

procedure TSaleOrderFM.qyDetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyDet.FieldByName('SaleOrderNo').AsString := qyHed.FieldByName('SaleOrderNo').AsString;
  qyDet.FieldByName('AutoNo').AsString := GetDateAutoNo(sTableId);
  qyDet.FieldByName('CompactNo').AsString := qyHed.FieldByName('CompactNo').AsString;
  qyDet.FieldByName('TaxRate').AsFloat := iTaxRate;
  qyDet.FieldByName('ExchangeRate').AsFloat := qyHed.FieldByName('ExchangeRate').AsFloat;
end;

procedure TSaleOrderFM.qyDetCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyDet, DataFM.qyWareNum, ['ItemID', 'WareNum'], ['ItemID', 'WareNum']);
end;

procedure TSaleOrderFM.qyDetItemIDChange(Sender: TField);
begin
  inherited;
  CalcField(qyDet, DataFM.qyItem, ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag'],
    ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag']);

  if not qySalePrice.Active then qySalePrice.open;
  qySalePrice.Requery();
  if qySalePrice.Locate('CustId;ItemId', vararrayof([qyHed.FieldByName('CustId').AsString, qyDet.FieldByName('ItemId').AsString]), []) then
  begin
    qyDet.FieldByName('OrderPrice').Value := qySalePrice.FieldByName('MainPrice').Value;
    qyDet.FieldByName('TaxPrice').Value := qySalePrice.FieldByName('TaxPrice').Value;
    qyDet.FieldByName('TaxRate').Value := qySalePrice.FieldByName('TaxRate').Value;
    UpdateData(cxgrdtbv, 'OrderPrice');
  end;
end;

procedure TSaleOrderFM.qyHedAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyHed.FieldByName('OrderStyle').AsString := '内销';
  qyHed.FieldByName('CompactNo').AsString := '';
end;

procedure TSaleOrderFM.qyHedCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyHed, DataFM.qyCust, ['CustId',  'CustCode','CustName', 'CustTel','Principal'], ['CustId', 'CustCode','CustName', 'Tel','Principal']);
  CalcField(qyHed, DataFM.qyEmp, ['EmpId', 'EmpName'], ['EmpId', 'EmpName']);
end;

procedure TSaleOrderFM.qyHedCurrNameChange(Sender: TField);
begin
  inherited;
  CalcField(qyHed, DataFM.qyCurr, ['CurrName', 'ExchangeRate'], ['CurrName', 'ExchangeRate']);
end;

procedure TSaleOrderFM.qyHedCustIdChange(Sender: TField);
begin
  inherited;
  CalcField(qyHed, DataFM.qyCust, ['CustId', 'SendAdd'], ['CustId', 'CustAddress']);
end;

procedure TSaleOrderFM.qyHedTraffModeChange(Sender: TField);
begin
  inherited;
  CalcField(qyHed, DataFM.qyTraff, ['TraffMode', 'TraffPay'], ['ModeName', 'TraffPay']);
end;

procedure TSaleOrderFM.smlntfldHedPrintNumChange(Sender: TField);
begin
  inherited;
  ShowFMInfo(sTableId,qyHed);
end;

end.
