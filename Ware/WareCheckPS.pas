unit WareCheckPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseGrdPS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  dxSkinsdxBarPainter, frxClass, frxDBSet, cxGridCustomPopupMenu,
  cxGridPopupMenu, Menus, ADODB, dxBar, cxClasses, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxGroupBox, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxTextEdit, StdCtrls, ExtCtrls, cxButtonEdit, cxMemo, cxRadioGroup,
  cxGridBandedTableView, cxGridDBBandedTableView, ADOInt, cxDBLookupComboBox,
  dxSkinOffice2010Blue, Clipbrd, cxNavigator, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu, cxLabel;

type
  TWareCheckFM = class(TBaseGrdFM)
    qyHedAutoID: TLargeintField;
    qyHedBillNo: TStringField;
    qyHedCheckDate: TDateTimeField;
    qyHedWareId: TStringField;
    qyHedCheckMan: TStringField;
    qyHedRemark: TStringField;
    qyHedMakeDate: TDateTimeField;
    qyHedMakeMan: TStringField;
    qyHedMakeManName: TStringField;
    qyHedEditMan: TStringField;
    qyHedEditManName: TStringField;
    qyHedEditDate: TDateTimeField;
    qyHedAuditFlag: TSmallintField;
    qyHedbMaxAudit: TBooleanField;
    qyHedAuditMan: TStringField;
    qyHedAuditDate: TStringField;
    qyHedWareName: TStringField;
    qyHedCheckManName: TStringField;
    lbl7: TLabel;
    cxEmp: TcxDBButtonEdit;
    qyHedCheckKind: TSmallintField;
    Label10: TLabel;
    cxWareName: TcxDBButtonEdit;
    cxRgpCheckKind: TcxDBRadioGroup;
    Label14: TLabel;
    cxMoRemark: TcxDBMemo;
    cxPupEdtRemark: TcxDBPopupEdit;
    Label15: TLabel;
    qyDetAutoID: TLargeintField;
    qyDetBillNo: TStringField;
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
    qyDetWareNum: TFMTBCDField;
    qyDetWarePrice: TFMTBCDField;
    qyDetWareMoney: TFMTBCDField;
    qyDetFactNum: TFMTBCDField;
    qyDetFactPrice: TFMTBCDField;
    qyDetFactMoney: TFMTBCDField;
    qyDetMoreNum: TFMTBCDField;
    qyDetMoreMoney: TFMTBCDField;
    qyDetLossNum: TFMTBCDField;
    qyDetLossMoney: TFMTBCDField;
    cxgrdbndclmnDBBandtbvItemCode: TcxGridDBBandedColumn;
    cxgrdbndclmnDBBandtbvItemPYCode: TcxGridDBBandedColumn;
    cxgrdbndclmnDBBandtbvItemName: TcxGridDBBandedColumn;
    cxgrdbndclmnDBBandtbvItemSpc: TcxGridDBBandedColumn;
    cxgrdbndclmnDBBandtbvItemUnit: TcxGridDBBandedColumn;
    cxgrdbndclmnProType: TcxGridDBBandedColumn;
    cxgrdbndclmnDBBandtbvWareNum: TcxGridDBBandedColumn;
    cxgrdbndclmnDBBandtbvWarePrice: TcxGridDBBandedColumn;
    cxgrdbndclmnDBBandtbvWareMoney: TcxGridDBBandedColumn;
    cxgrdbndclmnDBBandtbvFactNum: TcxGridDBBandedColumn;
    cxgrdbndclmnDBBandtbvFactPrice: TcxGridDBBandedColumn;
    cxgrdbndclmnDBBandtbvFactMoney: TcxGridDBBandedColumn;
    cxgrdbndclmnDBBandtbvMoreNum: TcxGridDBBandedColumn;
    cxgrdbndclmnDBBandtbvMoreMoney: TcxGridDBBandedColumn;
    cxgrdbndclmnDBBandtbvLossNum: TcxGridDBBandedColumn;
    cxgrdbndclmnDBBandtbvLossMoney: TcxGridDBBandedColumn;
    qyHedbPrint: TBooleanField;
    qyHedPrintNum: TSmallintField;
    qyWareNum: TADOQuery;
    Label11: TLabel;
    cxItemKind: TcxDBButtonEdit;
    qyHedItemKindId: TStringField;
    qyHedItemKindName: TStringField;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    qyHedAuditManName: TStringField;
    qyHedMaxAuditDate: TDateTimeField;
    qyHedbSelect: TBooleanField;
    cxgrdbndclmnPlaceNo: TcxGridDBBandedColumn;
    qyDetItemName: TStringField;
    qyDetItemSpc: TStringField;
    qyDetItemPic: TStringField;
    qyDetItemUnit: TStringField;
    qyDetSubUnit: TStringField;
    qyDetiFlag: TSmallintField;
    qyDetExchRate: TFMTBCDField;
    cxgrdbndtbv: TcxGridDBBandedTableView;
    strngfldDetAutoNo: TStringField;
    cxgrdbndtbvColumn1: TcxGridDBBandedColumn;
    cxgrdbndtbvColumn2: TcxGridDBBandedColumn;
    qyDetObjectName: TStringField;
    cxgrdbndtbvColumn3: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btAddLClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btCheckClick(Sender: TObject);
    procedure btDelClick(Sender: TObject);
    procedure btDelLClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure btUnCheckClick(Sender: TObject);
    procedure cxEmpPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxEdtNoPropertiesChange(Sender: TObject);
    procedure cxgrdDBBandedTableView1ItemCodePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure qyDetAfterInsert(DataSet: TDataSet);
    procedure qyDetItemIDChange(Sender: TField);
    procedure qyHedCalcFields(DataSet: TDataSet);
    procedure qyHedPrintNumChange(Sender: TField);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdDBBandedTableView1ProTypePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure qyDetProTypeChange(Sender: TField);
    procedure qyDetWareNumChange(Sender: TField);
    procedure btReferClick(Sender: TObject);
    procedure cxItemKindPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btRefClick(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure cxgrdDBBandedTableView1ItemCodePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure mniNCopyDClick(Sender: TObject);
    procedure mniNCopyLClick(Sender: TObject);
    procedure NSaveGrdClick(Sender: TObject);
    procedure NDelGrdClick(Sender: TObject);
    procedure cxgrdbndclmnDBBandtbvProTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxRgpCheckKindPropertiesChange(Sender: TObject);
    procedure qyDetCalcFields(DataSet: TDataSet);
    procedure cxgrdbndtbvColumn1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdbndtbvColumn3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    procedure GetWareNum();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WareCheckFM: TWareCheckFM;

implementation

uses PublicPS, ControlPublicPS, DataPS, EmpQPS, ItemQPS, WareItemPS, WareItemQPS, ItemKindQPS, WareCheckFindPS, PrvQPS;

{$R *.dfm}

procedure TWareCheckFM.GetWareNum();
begin
  if qyWareNum.Active = False then qyWareNum.Open;
  qyWareNum.Requery();
  if qyDet.State = dsBrowse then qyDet.Edit;
  if qyWareNum.Locate('sInfo', qyDet.FieldByName('ItemId').AsString + qyHed.FieldByName('WareId').AsString + qyDet.FieldByName('PlaceNo').AsString + qyDet.FieldByName('ProType').AsString + qyDet.FieldByName('Color').AsString + qyDet.FieldByName('ObjectId').AsString, []) then
    qyDet.FieldByName('WareNum').AsFloat := qyWareNum.FieldByName('WareNum').AsFloat
  else
    qyDet.FieldByName('WareNum').AsFloat := 0;
end;

procedure TWareCheckFM.mniNCopyDClick(Sender: TObject);
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

procedure TWareCheckFM.mniNCopyLClick(Sender: TObject);
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

procedure TWareCheckFM.NDelGrdClick(Sender: TObject);
begin
  DelBandGrd(Self, cxgrdbndtbv);
end;

procedure TWareCheckFM.NSaveGrdClick(Sender: TObject);
begin
  SaveBandGrd(Self, cxgrdbndtbv);
end;

procedure TWareCheckFM.btAddClick(Sender: TObject);
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
    qyHed.FieldByName('BillNO').AsString := GetTableNo(sTableId, 'BillNO');
    qyHed.FieldByName('CheckDate').AsDateTime := StrToDateTime(FormatDateTime('yyyy-mm-dd', SysDateTime));
    qyHed.FieldByName('CheckKind').AsInteger := 0;
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

procedure TWareCheckFM.btAddLClick(Sender: TObject);
begin
  try
    //增行既保存，防止唯一约束之前做的数据都白做
    qyHed.UpdateBatch();
    qyHed.Edit;
    qyHed.Edit;
    qyDet.UpdateBatch();
    qyDet.Edit;
    qyDet.Edit;
    qyDet.Append;
  except
    on E: Exception do
    begin
      if pos('不能将值', E.Message) > 0 then
        ShowWarn('请将必填项填写完整!')
      else if pos('插入重复键', e.Message) > 0 then
        ShowWarn('数据重复!');
    end;
  end;
end;

procedure TWareCheckFM.btCancelClick(Sender: TObject);
begin
  qyDet.CancelBatch();
  qyHed.CancelBatch();
  TextReadOnly(Self, True);
  inherited;
end;

procedure TWareCheckFM.btCheckClick(Sender: TObject);
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

    if CheckWareHasMonth(qyHed.FieldByName('CheckDate').AsDateTime) then
    begin
      ShowWarn('单据日期所在月份已经做了仓库月结,你不能对该月数据再在进行操作');
      exit;
    end;

    if HasGetMaxAudit(sTableId, qyHed.FieldByName('AuditFlag').asInteger + 1) then
    begin
      try
        with DataFM.spTemp do
        begin
          if Active then close;
          Parameters.Clear;
          Procedurename := 'prWarePDCheckNum;1';
          Parameters.AddParameter.Name := '@BillNO';
          Parameters[0].Direction := pdInPut;
          Parameters[0].DataType := ftString;
          Parameters[0].Size := 30;
          Parameters[0].Value := trim(cxEdtNo.Text);
          Parameters.AddParameter.Name := '@iFlag';
          Parameters[1].Direction := pdInPut;
          Parameters[1].DataType := ftInteger;
          Parameters[1].Value := 1;
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
      if AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.Text), qyHed, 1) then
      begin
        try
          with DataFM.spTemp do
          begin
            if Active then close;
            Parameters.Clear;
            Procedurename := 'PrWareCheckAudit;1';
            Parameters.AddParameter.Name := '@BillNO';
            Parameters[0].Direction := pdInPut;
            Parameters[0].DataType := ftString;
            Parameters[0].Size := 30;
            Parameters[0].Value := trim(cxEdtNo.Text);
            Parameters.AddParameter.Name := '@IoFlag';
            Parameters[1].Direction := pdInPut;
            Parameters[1].DataType := ftInteger;
            Parameters[1].Value := 1;
            Open;
          end;
        finally
          DataFM.spTemp.close;
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

procedure TWareCheckFM.btDelClick(Sender: TObject);
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
      ExeSql('Delete WareCheckDTTB where BillNo=' + QuotedStr(sBiilNo));
      ExeSql('Delete WareCheckHDTB where BillNo=' + QuotedStr(sBiilNo));
      with qyHed do
      begin
        if Active then Close;
        SQL.Clear;
        sql.Add('select * from WareCheckHDTB where IsNull(bMaxAudit,0)=0 ');
        if not bFindAll then
          SQL.Add('and MakeMan=' + QuotedStr(LoginEmpId));
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

procedure TWareCheckFM.btDelLClick(Sender: TObject);
begin
  try
    qyDet.Delete;
  except
    ShowBox('删除失败！');
  end;
end;

procedure TWareCheckFM.btEditClick(Sender: TObject);
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

procedure TWareCheckFM.btFindClick(Sender: TObject);
begin
  inherited;
  try
    if not Assigned(WareCheckFindFM) then
      WareCheckFindFM := TWareCheckFindFM.Create(Application);
    WareCheckFindFM.bQFindAll := bFindAll;
    WareCheckFindFM.ShowModal;
  finally
    WareCheckFindFM.Free;
    WareCheckFindFM := nil
  end;
end;

procedure TWareCheckFM.btRefClick(Sender: TObject);
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

procedure TWareCheckFM.btReferClick(Sender: TObject);
begin
  inherited;
  try
    if cxWareName.Text = '' then
    begin
      ShowWarn('请先选择盘点仓库');
      exit;
    end;
    if cxItemKind.Text = '' then
    begin
      ShowWarn('请先选择盘点物品类别');
      exit;
    end;
    qyHed.UpdateBatch();
    ExeSql('exec prWareCheckPD ' + QuotedStr(trim(cxEdtNo.Text)) + ',' + IntToStr(cxRgpCheckKind.ItemIndex));
    with qyDet do
    begin
      if Active then close;
      SQL.Clear;
      SQL.Add('select * from WareCheckDTTB where BillNO=' + Quotedstr(trim(cxEdtNo.Text)) + ' Order by AutoId');
      Open;
    end;
    ShowBox('盘点成功！');
  except
    ShowError('盘点失败');
  end;
end;

procedure TWareCheckFM.btSaveClick(Sender: TObject);
var
  sNewNo: string;
  i: Integer;
begin
  try
    if qyHed.State = dsBrowse then qyHed.Edit;
    if qyDet.State = dsBrowse then qyDet.Edit;
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
        ShowWarn('请将必填项填写完整!')
      else if pos('插入重复键', e.Message) > 0 then
        ShowWarn('数据重复!')
      else
        ShowWarn(E.Message);
    end;
  end;
end;

procedure TWareCheckFM.btUnCheckClick(Sender: TObject);
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

    if CheckWareHasMonth(qyHed.FieldByName('CheckDate').AsDateTime) then
    begin
      ShowWarn('单据日期所在月份已经做了仓库月结,你不能对该月数据在进行操作');
      exit;
    end;
    if HasGetMaxAudit(sTableId, qyHed.FieldByName('AuditFlag').AsInteger) then
    begin
      try
        with DataFM.spTemp do
        begin
          if Active then close;
          Parameters.Clear;
          Procedurename := 'prWarePDCheckNum;1';
          Parameters.AddParameter.Name := '@BillNO';
          Parameters[0].Direction := pdInPut;
          Parameters[0].DataType := ftString;
          Parameters[0].Size := 30;
          Parameters[0].Value := trim(cxEdtNo.Text);
          Parameters.AddParameter.Name := '@iFlag';
          Parameters[1].Direction := pdInPut;
          Parameters[1].DataType := ftInteger;
          Parameters[1].Value := -1;
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
      if AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.Text), qyHed, -1) then
      begin
        try
          with DataFM.spTemp do
          begin
            if Active then close;
            Parameters.Clear;
            Procedurename := 'PrWareCheckAudit;1';
            Parameters.AddParameter.Name := '@BillNO';
            Parameters[0].Direction := pdInPut;
            Parameters[0].DataType := ftString;
            Parameters[0].Size := 30;
            Parameters[0].Value := trim(cxEdtNo.Text);
            Parameters.AddParameter.Name := '@IFlag';
            Parameters[1].Direction := pdInPut;
            Parameters[1].DataType := ftInteger;
            Parameters[1].Value := -1;
            Open;
          end;
        finally
          DataFM.spTemp.close;
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

procedure TWareCheckFM.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if btSave.Enabled = False then Exit;
  if qyDet.RecordCount > 0 then
  begin
    ShowBox('已经有明细数据不能再选仓库');
    Exit;
  end;
  WareSelect(btSave.Enabled, qyHed, 'WareID', 2);
end;

procedure TWareCheckFM.cxEdtNoPropertiesChange(Sender: TObject);
begin
  inherited;
  with qyDet do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from WareCheckDTTB where BillNo=' + QuotedStr(trim(cxEdtNo.Text)) + ' Order by AutoId');
    Open;
  end;
  if DataFM.qyPyCode.Active = false then DataFM.qyPyCode.Open;
  ShowFMInfo(sTableId,qyHed);
end;

procedure TWareCheckFM.cxEmpPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
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
        qyHed.FieldByName('CheckMan').AsString := EmpQFM.sId;
      end;
    finally
      EmpQFM.Free;
      EmpQFM := nil;
    end;
  except
  end;
end;

procedure TWareCheckFM.cxgrdbndclmnDBBandtbvProTypePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  ProTypeSelect(btSave.Enabled, qyDet, 'ProType', 2);
end;

procedure TWareCheckFM.cxgrdbndtbvColumn1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  try
    if btSave.Enabled = False then Exit;
    PrvQFM := TPrvQFM.Create(nil);
    PrvQFM.iSelectKind := 2; // 单选
    PrvQFM.ShowModal;
    if PrvQFM.sId <> '' then
    begin
      if qyDet.State = dsBrowse then qyDet.Edit;
      qyDet.FieldByName('ObjectID').AsString := PrvQFM.sId;
    end;
  finally
    PrvQFM.Free;
    PrvQFM := nil;
  end;
end;

procedure TWareCheckFM.cxgrdbndtbvColumn3PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  ColorSelect(btSave.Enabled, qyDet, 'Color', 2);
end;

procedure TWareCheckFM.cxgrdDBBandedTableView1ItemCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: Integer;
begin
  if btSave.Enabled = False then Exit;
  if qyHed.FieldByName('WareId').AsString = '' then
  begin
    ShowBox('请先选择盘点仓库');
    Exit;
  end;
  if cxRgpCheckKind.ItemIndex = 0 then
  begin
    try
      WareItemQFM := TWareItemQFM.Create(nil);
      WareItemQFM.sItemId := qyDet.FieldByName('ItemId').AsString;
      WareItemQFM.sWareId := qyHed.FieldByName('WareId').AsString;
      WareItemQFM.cxgrdtbvbSelect.Visible := true;
      WareItemQFM.iSelectKind := 1;
      WareItemQFM.btFindClick(Sender);
      WareItemQFM.ShowModal;
      if WareItemQFM.bHasSelect then
      begin
        WareItemQFM.qyFind.Filter := ' bSelect=1';
        WareItemQFM.qyFind.Filtered := true;
        WareItemQFM.qyFind.First;
        for i := 0 to WareItemQFM.qyFind.RecordCount - 1 do
        begin
          if i = 0 then
          begin
            qyDet.Edit;
            qyDetAfterInsert(qyDet);
          end
          else
            qyDet.Append;
          qyDet.FieldByName('ItemId').AsString := WareItemQFM.qyFind.FieldByName('ItemId').AsString;
          qyDet.FieldByName('ProType').AsString := WareItemQFM.qyFind.FieldByName('ProType').AsString;
          qyDet.FieldByName('Color').AsString := WareItemQFM.qyFind.FieldByName('Color').AsString;
          qyDet.FieldByName('PlaceNo').AsString := WareItemQFM.qyFind.FieldByName('PlaceNo').AsString;
          qyDet.FieldByName('ObjectId').AsString := WareItemQFM.qyFind.FieldByName('ObjectId').AsString;
          qyDet.post;
          WareItemQFM.qyFind.Next;
        end;
      end;
    finally
      WareItemQFM.Free;
      WareItemQFM := nil;
    end;
  end
  else if cxRgpCheckKind.ItemIndex = 1 then
  begin
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

procedure TWareCheckFM.cxgrdDBBandedTableView1ItemCodePropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
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

procedure TWareCheckFM.cxgrdDBBandedTableView1ProTypePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  try
    if btSave.Enabled = False then Exit;
    WareItemFM := TWareItemFM.Create(nil);
    WareItemFM.sWhere := ' and a.WareId=' + QuotedStr(qyHed.FieldByName('WareId').AsString) + ' and a.ItemId=' + QuotedStr(qyDet.FieldByName('ItemId').AsString) + ' ';
    WareItemFM.btFindClick(Sender);
    WareItemFM.ShowModal;

    if qyDet.State = dsBrowse then qyDet.Edit;
    qyDet.FieldByName('ProType').AsString := WareItemFM.sProType;
    qyDet.FieldByName('Color').AsString := WareItemFM.sColor;
    qyDet.FieldByName('BatchNo').AsString := WareItemFM.sBatchNo;
    qyDet.FieldByName('PlaceNo').AsString := WareItemFM.sPlaceNo;
    qyDet.FieldByName('CompactNo').AsString := WareItemFM.sCompactNo;
    qyDet.FieldByName('ObjectId').AsString := WareItemFM.sObjectId;
    qyDet.FieldByName('TechName').AsString := WareItemFM.sTechName;
  finally
    WareItemFM.Free;
    WareItemFM := nil;
  end;
end;

procedure TWareCheckFM.cxItemKindPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  try
    if btSave.Enabled = False then Exit;
    try
      ItemKindQFM := TItemKindQFM.Create(nil);
      ItemKindQFM.iSelectKind := 2;
      ItemKindQFM.ShowModal;
      if qyHed.State = dsBrowse then
        qyHed.Edit;
      qyHed.FieldByName('ItemKindId').AsString := ItemKindQFM.sId;
    finally
      ItemKindQFM.Free;
      ItemKindQFM := nil;
    end;
  except
  end;
end;

procedure TWareCheckFM.cxRgpCheckKindPropertiesChange(Sender: TObject);
begin
  inherited;
 { if cxRgpCheckKind.ItemIndex = 0 then
  begin
    cxgrdbndclmnProType.Options.Editing := False;
    cxgrdbndclmnPlaceNo.Options.Editing := False;
  end
  else if cxRgpCheckKind.ItemIndex = 1 then
  begin
    cxgrdbndclmnProType.Options.Editing := True;
    cxgrdbndclmnPlaceNo.Options.Editing := True;
  end; }
end;

procedure TWareCheckFM.dxBarButton3Click(Sender: TObject);
begin
  inherited;
  BillView('OtherIn', 'select * from WareInOutHDTB where WKindId=''CheckMoreIn'' and SubjoinNo=' + QuotedStr(qyHed.FieldByName('BillNo').AsString));
end;

procedure TWareCheckFM.dxBarButton4Click(Sender: TObject);
begin
  inherited;
  BillView('OtherOut', 'select * from WareInOutHDTB where WKindId=''CheckLossOut'' and SubjoinNo=' + QuotedStr(qyHed.FieldByName('BillNo').AsString));
end;

procedure TWareCheckFM.FormCreate(Sender: TObject);
begin
  sFMId := 'WareCheckFM';
  sFMName := Self.Caption;
  sTableId := 'WareCheckHDTB';
  inherited;
  GetBandGrd(Self, cxgrdbndtbv);
  qyHed.Open;
end;

procedure TWareCheckFM.FormDestroy(Sender: TObject);
begin
  inherited;
  WareCheckFM := nil;
end;

procedure TWareCheckFM.FormShow(Sender: TObject);
begin
  inherited;
  TextReadOnly(Self, True);
end;

procedure TWareCheckFM.qyDetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyDet.FieldByName('BillNo').AsString := qyHed.FieldByName('BillNo').AsString;
  qyDet.FieldByName('AutoNo').AsString := GetDateAutoNo(sTableId);
end;

procedure TWareCheckFM.qyDetCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyDet, DataFM.qyObject, ['ObjectId', 'ObjectName'], ['ObjectId', 'ObjectName']);
end;

procedure TWareCheckFM.qyDetItemIDChange(Sender: TField);
begin
  inherited;
  CalcField(qyDet, DataFM.qyItem, ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag'],
    ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag']);

  GetWareNum();
end;

procedure TWareCheckFM.qyDetProTypeChange(Sender: TField);
begin
  inherited;
  GetWareNum();
end;

procedure TWareCheckFM.qyDetWareNumChange(Sender: TField);
var
  iCheckNum: Double;
begin
  inherited;
  iCheckNum := qyDet.FieldByName('WareNum').AsFloat - qyDet.FieldByName('FactNum').AsFloat;
  if iCheckNum > 0 then
  begin
    qyDet.FieldByName('LossNum').AsFloat := iCheckNum;
    qyDet.FieldByName('MoreNum').AsFloat := 0
  end
  else
  begin
    qyDet.FieldByName('LossNum').AsFloat := 0;
    qyDet.FieldByName('MoreNum').AsFloat := -iCheckNum;
  end;
end;

procedure TWareCheckFM.qyHedCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyHed, DataFM.qyEmp, ['CheckMan', 'CheckManName'], ['EmpId', 'EmpName']);
  CalcField(qyHed, DataFM.qyWare, ['WareId', 'WareName'], ['WareId', 'WareName']);
  CalcField(qyHed, DataFM.qyItemKind, ['ItemKindId', 'ItemKindName'], ['ItemKindId', 'ItemKindName']);
end;

procedure TWareCheckFM.qyHedPrintNumChange(Sender: TField);
begin
  inherited;
  ShowFMInfo(sTableId,qyHed);
end;

end.
