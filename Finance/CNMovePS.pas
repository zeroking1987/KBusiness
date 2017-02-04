unit CNMovePS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BasePS, dxSkinsCore, ADOInt,
  dxSkinDevExpressStyle, dxSkinOffice2010Blue, dxSkinSpringTime,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinsdxBarPainter, Data.DB,
  Data.Win.ADODB, dxBar, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, Vcl.ExtCtrls,
  cxCurrencyEdit, cxDBEdit, cxGroupBox, cxRadioGroup, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxMaskEdit, cxMRUEdit, cxMemo, cxButtonEdit,
  Vcl.StdCtrls, Vcl.Menus, cxButtons, cxCheckBox, frxClass, frxDBSet;

type
  TCNMoveFM = class(TBaseFM)
    pnlTitle: TPanel;
    cxlabTitle: TcxLabel;
    Panel1: TPanel;
    qyHedAutoID: TAutoIncField;
    qyHedbSelect: TBooleanField;
    qyHedAutoNo: TStringField;
    qyHedCWZTNo: TStringField;
    qyHedBillNo: TStringField;
    qyHedBillDate: TDateTimeField;
    qyHedCNMoveMoney: TFMTBCDField;
    qyHedInCNKind: TStringField;
    qyHedInAccName: TStringField;
    qyHedInCNItemName: TStringField;
    qyHedInFZObjectId: TStringField;
    qyHedInFZObjectName: TStringField;
    qyHedInHandMan: TStringField;
    qyHedInHandManName: TStringField;
    qyHedInAccSubjectId: TStringField;
    qyHedInRemark: TStringField;
    qyHedOutCNKind: TStringField;
    qyHedOutAccName: TStringField;
    qyHedOutCNItemName: TStringField;
    qyHedOutFZObjectId: TStringField;
    qyHedOutFZObjectName: TStringField;
    qyHedOutHandMan: TStringField;
    qyHedOutHandManName: TStringField;
    qyHedOutAccSubjectId: TStringField;
    qyHedOutRemark: TStringField;
    qyHedPayMode: TStringField;
    qyHedPayDate: TDateTimeField;
    qyHedVoucherWord: TStringField;
    qyHedVoucherNo: TStringField;
    qyHedVoucherId: TStringField;
    qyHedYearMon: TStringField;
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
    qyHedbCheck: TBooleanField;
    qyHedCheckMan: TStringField;
    qyHedCheckManName: TStringField;
    qyHedCheckDate: TDateTimeField;
    qyHedbBorrow: TBooleanField;
    qyHedOutPzNo: TStringField;
    qyHedInPzNo: TStringField;
    Panel2: TPanel;
    cxGroupBox3: TcxGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    cxDt: TcxDBDateEdit;
    cxLabCNMoney: TcxLabel;
    cxCNMoney: TcxDBCurrencyEdit;
    cxLabel4: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    cxLabel3: TcxLabel;
    cxOutAccName: TcxDBMRUEdit;
    cxLabel2: TcxLabel;
    cxOutCNItemName: TcxDBMRUEdit;
    cxOutLabFZObject: TcxLabel;
    cxOutFZObject: TcxDBButtonEdit;
    cxLabel9: TcxLabel;
    cxOutRemark: TcxDBMemo;
    cxLabel8: TcxLabel;
    cxOutHandMan: TcxDBButtonEdit;
    cxButton1: TcxButton;
    cxLabel10: TcxLabel;
    cxOutAccSubject: TcxDBButtonEdit;
    cxLabel1: TcxLabel;
    cxOutPZNo: TcxDBTextEdit;
    cxGroupBox2: TcxGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    cxLabel6: TcxLabel;
    cxInAccName: TcxDBMRUEdit;
    cxLabel7: TcxLabel;
    cxInCNItemName: TcxDBMRUEdit;
    cxInLabFZObject: TcxLabel;
    cxInFZObject: TcxDBButtonEdit;
    cxLabel12: TcxLabel;
    cxInRemark: TcxDBMemo;
    cxLabel13: TcxLabel;
    cxInHandMan: TcxDBButtonEdit;
    cxButton2: TcxButton;
    cxLabel14: TcxLabel;
    cxInAccSubject: TcxDBButtonEdit;
    cxLabel15: TcxLabel;
    cxInPZNo: TcxDBTextEdit;
    Panel3: TPanel;
    cxEdtNo: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    qyHedCarNo: TStringField;
    cxLabAudit: TcxLabel;
    frxHed: TfrxDBDataset;
    qyHedDriverName: TStringField;
    LabPrint: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qyHedAfterInsert(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure cxHandManPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxCNItemNamePropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxOutAccNamePropertiesButtonClick(Sender: TObject);
    procedure cxInAccNamePropertiesButtonClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxOutCNItemNamePropertiesButtonClick(Sender: TObject);
    procedure cxInCNItemNamePropertiesButtonClick(Sender: TObject);
    procedure cxInCNItemNamePropertiesChange(Sender: TObject);
    procedure cxOutFZObjectPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxInFZObjectPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxInHandManPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxOutAccNamePropertiesChange(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btCheckClick(Sender: TObject);
    procedure cxEdtNoPropertiesChange(Sender: TObject);
    procedure btUnCheckClick(Sender: TObject);
    procedure btDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sPubBillNo, sOperate: string;
  end;

var
  CNMoveFM: TCNMoveFM;

implementation

uses PublicPS, DataPS, CustQPS, PrvQPS, EmpQPS, DeptQPS, CNAccNameQPS, CNItemQPS, CNMoveFindPS;
{$R *.dfm}

procedure TCNMoveFM.btAddClick(Sender: TObject);
begin
  try
    inherited;
    qyHed.Append;
    TextReadOnly(Self, False);
    cxEdtNo.Properties.ReadOnly := True;
  except
    on E: Exception do
    begin
      ShowWarn(E.Message);
    end
  end;
end;

procedure TCNMoveFM.btCancelClick(Sender: TObject);
begin
  try
    inherited;
    qyHed.CancelBatch();
  except
    on E: Exception do
    begin
      ShowWarn(E.Message);
    end
  end;
end;

procedure TCNMoveFM.btCheckClick(Sender: TObject);
begin
  inherited;
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

    if AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, 1) then
    begin
      OpenSQL(DataFM.qyTemp, 'exec  PrCNMoveAudit ' + QuotedStr(Trim(cxEdtNo.Text)) + ',1');
      cxEdtNoPropertiesChange(Sender);
      SetLog(sFMName, trim(cxEdtNo.Text), '审核');
    end;
  except
    ShowWarn('审核失败!');
  end;
end;

procedure TCNMoveFM.btDelClick(Sender: TObject);
var
  sBiilNo: string;
begin
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
    sBiilNo := qyHed.FieldByName('BillNo').AsString;
    ExeSql('Delete CNMoveTB where BillNo=' + QuotedStr(sBiilNo));
    with qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      sql.Add('select * from CNMoveTB  ');
      Open;
    end;
    SetLog(sFMName, sBiilNo, '删除');
    ShowBox('删除成功!');
  end;
end;

procedure TCNMoveFM.btEditClick(Sender: TObject);
begin
  try
    if qyHed.RecordCount <= 0 then exit;
    GetServerTime;
    inherited;
    TextReadOnly(Self, False);
    cxEdtNo.Properties.ReadOnly := True;
    qyHed.Edit;
    qyHed.FieldByName('EditMan').AsString := LoginEmpId;
    qyHed.FieldByName('EditManName').AsString := LoginEmpName;
    qyHed.FieldByName('EditDate').AsDateTime := SysDateTime;
  except
  end;
end;

procedure TCNMoveFM.btFindClick(Sender: TObject);
begin
  inherited;
  try
    if not Assigned(CNMoveFindFM) then
      CNMoveFindFM := TCNMoveFindFM.Create(Application);
    CNMoveFindFM.ShowModal;
  finally
    CNMoveFindFM.Free;
    CNMoveFindFM := nil
  end;
end;

procedure TCNMoveFM.btSaveClick(Sender: TObject);
begin
  try
    if cxDt.text = '' then
    begin
      ShowBox('请选择记账日期！');
      Exit;
    end;
    if (cxCNMoney.text = '') then
    begin
      ShowBox('请填写转账金额！');
      Exit;
    end;
    if cxOutAccName.text = '' then
    begin
      ShowBox('请选择支出账户！');
      Exit;
    end;
    if cxInAccName.text = '' then
    begin
      ShowBox('请选择收入账户！');
      Exit;
    end;
    if cxOutCNItemName.text = '' then
    begin
      ShowBox('请选择支出项目！');
      Exit;
    end;
    if cxInCNItemName.text = '' then
    begin
      ShowBox('请选择收入项目！');
      Exit;
    end;

    qyHed.UpdateBatch();
    ShowBox('保存成功！');
    TextReadOnly(Self, true);
    inherited;
  except
    on E: Exception do
    begin
      ShowWarn(E.Message);
    end
  end;
end;

procedure TCNMoveFM.btUnCheckClick(Sender: TObject);
begin
  inherited;
  try
    if (trim(cxEdtNo.Text) = '') or (qyHed.Active = false) then exit;
    qyHed.UpdateCursorPos;
    qyHed.Recordset.Resync(AdAffectcurrent, AdResyncAllValues);
    qyHed.Resync([]);
    if qyHed.FieldByName('AuditFlag').asInteger = 0 then
    begin
      ShowWarn('本单未进行审核,不需要反审核!');
      exit;
    end;


    if AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, -1) then
    begin
      OpenSQL(DataFM.qyTemp, 'exec  PrCNMoveAudit ' + QuotedStr(Trim(cxEdtNo.Text)) + ',-1');
      cxEdtNoPropertiesChange(Sender);
      SetLog(sFMName, trim(cxEdtNo.Text), '反审核');
    end;
  except
    ShowWarn('反审核失败!');
  end;
end;

procedure TCNMoveFM.cxButton1Click(Sender: TObject);
begin
  inherited;
  ExeSql('InSert into CWRemarkTB (CWRemark) select ' + QuotedStr(trim(cxOutRemark.Text)) + ' where ' + QuotedStr(trim(cxOutRemark.Text)) + ' not in (select CWRemark from CWRemarkTB )');
end;

procedure TCNMoveFM.cxButton2Click(Sender: TObject);
begin
  inherited;
  ExeSql('InSert into CWRemarkTB (CWRemark) select ' + QuotedStr(trim(cxInRemark.Text)) + ' where ' + QuotedStr(trim(cxInRemark.Text)) + ' not in (select CWRemark from CWRemarkTB )');
end;

procedure TCNMoveFM.cxCNItemNamePropertiesChange(Sender: TObject);
begin
  inherited;
  if not DataFM.qyCNItem.Active then DataFM.qyCNItem.Open;
  if DataFM.qyCNItem.Locate('CNItemName', cxOutCNItemName.Text, []) then
  begin
    if DataFM.qyCNItem.FieldByName('FZObject').AsString <> '' then
      cxOutLabFZObject.Caption := DataFM.qyCNItem.FieldByName('FZObject').AsString;
  end;
end;

procedure TCNMoveFM.cxEdtNoPropertiesChange(Sender: TObject);
begin
  inherited;
  if qyHed.FieldByName('bMaxAudit').AsBoolean then
    cxLabAudit.Caption := '已审核'
  else
    cxLabAudit.Caption := '';
  if qyHed.FieldByName('PrintNum').AsInteger>0 then
    LabPrint.Caption := '打印'+IntToStr(qyHed.FieldByName('PrintNum').AsInteger)+'次'
  else
    LabPrint.Caption := '';
end;

procedure TCNMoveFM.cxHandManPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  try
    if not btSave.Enabled then Exit;
    EmpQFM := TEmpQFM.Create(nil);
    EmpQFM.iSelectKind := 2;
    EmpQFM.ShowModal;
    if EmpQFM.sName <> '' then
    begin
      if qyHed.State = dsBrowse then qyHed.Edit;
      qyHed.FieldByName('OutHandMan').AsString := EmpQFM.sId;
      qyHed.FieldByName('OutHandManName').AsString := EmpQFM.sName;
    end;
  finally
    EmpQFM.Free;
    EmpQFM := nil;
  end;
end;

procedure TCNMoveFM.cxInAccNamePropertiesButtonClick(Sender: TObject);
begin
  inherited;
  try
    try
      if not btSave.Enabled then Exit;
      CNAccNameQFM := TCNAccNameQFM.Create(nil);
      CNAccNameQFM.iSelectKind := 2;
      CNAccNameQFM.sPubWhere := '';
      CNAccNameQFM.ShowModal;
      if CNAccNameQFM.iFlag <> 3 then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('InAccName').AsString := CNAccNameQFM.sName;
      end;
    finally
      CNAccNameQFM.Free;
      CNAccNameQFM := nil;
    end;
  except
  end;
end;

procedure TCNMoveFM.cxInCNItemNamePropertiesButtonClick(Sender: TObject);
begin
  inherited;
  try
    try
      if not btSave.Enabled then Exit;
      CNItemQFM := TCNItemQFM.Create(nil);
      CNItemQFM.sPubWhere := ' and (iFlag=1 or iFlag=0)';
      CNItemQFM.iSelectKind := 2;
      CNItemQFM.ShowModal;
      if CNItemQFM.iFlag <> 3 then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('InCNItemName').AsString := CNItemQFM.sName;
      end;
    finally
      CNItemQFM.Free;
      CNItemQFM := nil;
    end;
  except
  end;
end;

procedure TCNMoveFM.cxInCNItemNamePropertiesChange(Sender: TObject);
begin
  inherited;
  if not DataFM.qyCNItem.Active then DataFM.qyCNItem.Open;
  if DataFM.qyCNItem.Locate('CNItemName', cxInCNItemName.Text, []) then
  begin
    if DataFM.qyCNItem.FieldByName('FZObject').AsString <> '' then
      cxInLabFZObject.Caption := DataFM.qyCNItem.FieldByName('FZObject').AsString;
  end;
end;

procedure TCNMoveFM.cxInFZObjectPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if not btSave.Enabled then Exit;
  if cxInLabFZObject.Caption = '客户' then
  begin
    try
      CustQFM := TCustQFM.Create(nil);
      CustQFM.iSelectKind := 2;
      CustQFM.ShowModal;
      if CustQFM.sName <> '' then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('InFZObjectId').AsString := CustQFM.sId;
        qyHed.FieldByName('InFZObjectName').AsString := CustQFM.sName;
      end;
    finally
      CustQFM.Free;
      CustQFM := nil;
    end;
  end;
  if cxInLabFZObject.Caption = '供应商' then
  begin
    try
      PrvQFM := TPrvQFM.Create(nil);
      PrvQFM.iSelectKind := 2;
      PrvQFM.ShowModal;
      if PrvQFM.sName <> '' then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('InFZObjectId').AsString := PrvQFM.sId;
        qyHed.FieldByName('InFZObjectName').AsString := PrvQFM.sName;
      end;
    finally
      PrvQFM.Free;
      PrvQFM := nil;
    end;
  end;
  if cxInLabFZObject.Caption = '部门' then
  begin
    try
      DeptQFM := TDeptQFM.Create(nil);
      DeptQFM.iSelectKind := 2;
      DeptQFM.ShowModal;
      if DeptQFM.sName <> '' then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('InFZObjectId').AsString := DeptQFM.sId;
        qyHed.FieldByName('InFZObjectName').AsString := DeptQFM.sName;
      end;
    finally
      DeptQFM.Free;
      DeptQFM := nil;
    end;
  end;
  if cxInLabFZObject.Caption = '员工' then
  begin
    try
      EmpQFM := TEmpQFM.Create(nil);
      EmpQFM.iSelectKind := 2;
      EmpQFM.ShowModal;
      if EmpQFM.sName <> '' then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('InFZObjectId').AsString := EmpQFM.sId;
        qyHed.FieldByName('InFZObjectName').AsString := EmpQFM.sName;
      end;
    finally
      EmpQFM.Free;
      EmpQFM := nil;
    end;
  end;
end;

procedure TCNMoveFM.cxInHandManPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  try
    if not btSave.Enabled then Exit;
    EmpQFM := TEmpQFM.Create(nil);
    EmpQFM.iSelectKind := 2;
    EmpQFM.ShowModal;
    if EmpQFM.sName <> '' then
    begin
      if qyHed.State = dsBrowse then qyHed.Edit;
      qyHed.FieldByName('InHandMan').AsString := EmpQFM.sId;
      qyHed.FieldByName('InHandManName').AsString := EmpQFM.sName;
    end;
  finally
    EmpQFM.Free;
    EmpQFM := nil;
  end;
end;

procedure TCNMoveFM.cxOutAccNamePropertiesButtonClick(Sender: TObject);
begin
  inherited;
  try
    try
      if not btSave.Enabled then Exit;
      CNAccNameQFM := TCNAccNameQFM.Create(nil);
      CNAccNameQFM.iSelectKind := 2;
      CNAccNameQFM.sPubWhere := '';
      CNAccNameQFM.ShowModal;
      if CNAccNameQFM.iFlag <> 3 then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('OutAccName').AsString := CNAccNameQFM.sName;
      end;
    finally
      CNAccNameQFM.Free;
      CNAccNameQFM := nil;
    end;
  except
  end;
end;

procedure TCNMoveFM.cxOutAccNamePropertiesChange(Sender: TObject);
begin
  inherited;
  if not DataFM.qyCNItem.Active then DataFM.qyCNItem.Open;
  if DataFM.qyCNItem.Locate('CNItemName', cxOutCNItemName.Text, []) then
  begin
    if DataFM.qyCNItem.FieldByName('FZObject').AsString <> '' then
      cxOutLabFZObject.Caption := DataFM.qyCNItem.FieldByName('FZObject').AsString;
  end;
end;

procedure TCNMoveFM.cxOutCNItemNamePropertiesButtonClick(Sender: TObject);
begin
  inherited;
  try
    try
      if not btSave.Enabled then Exit;
      CNItemQFM := TCNItemQFM.Create(nil);
      CNItemQFM.sPubWhere := ' and (iFlag=-1 or iFlag=0)';
      CNItemQFM.iSelectKind := 2;
      CNItemQFM.ShowModal;
      if CNItemQFM.iFlag <> 3 then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('OutCNItemName').AsString := CNItemQFM.sName;
      end;
    finally
      CNItemQFM.Free;
      CNItemQFM := nil;
    end;
  except
  end;
end;

procedure TCNMoveFM.cxOutFZObjectPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if not btSave.Enabled then Exit;
  if cxOutLabFZObject.Caption = '客户' then
  begin
    try
      CustQFM := TCustQFM.Create(nil);
      CustQFM.iSelectKind := 2;
      CustQFM.ShowModal;
      if CustQFM.sName <> '' then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('OutFZObjectId').AsString := CustQFM.sId;
        qyHed.FieldByName('OutFZObjectName').AsString := CustQFM.sName;
      end;
    finally
      CustQFM.Free;
      CustQFM := nil;
    end;
  end;
  if cxOutLabFZObject.Caption = '供应商' then
  begin
    try
      PrvQFM := TPrvQFM.Create(nil);
      PrvQFM.iSelectKind := 2;
      PrvQFM.ShowModal;
      if PrvQFM.sName <> '' then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('OutFZObjectId').AsString := PrvQFM.sId;
        qyHed.FieldByName('OutFZObjectName').AsString := PrvQFM.sName;
      end;
    finally
      PrvQFM.Free;
      PrvQFM := nil;
    end;
  end;
  if cxOutLabFZObject.Caption = '部门' then
  begin
    try
      DeptQFM := TDeptQFM.Create(nil);
      DeptQFM.iSelectKind := 2;
      DeptQFM.ShowModal;
      if DeptQFM.sName <> '' then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('OutFZObjectId').AsString := DeptQFM.sId;
        qyHed.FieldByName('OutFZObjectName').AsString := DeptQFM.sName;
      end;
    finally
      DeptQFM.Free;
      DeptQFM := nil;
    end;
  end;
  if cxOutLabFZObject.Caption = '员工' then
  begin
    try
      EmpQFM := TEmpQFM.Create(nil);
      EmpQFM.iSelectKind := 2;
      EmpQFM.ShowModal;
      if EmpQFM.sName <> '' then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('OutFZObjectId').AsString := EmpQFM.sId;
        qyHed.FieldByName('OutFZObjectName').AsString := EmpQFM.sName;
      end;
    finally
      EmpQFM.Free;
      EmpQFM := nil;
    end;
  end;
end;

procedure TCNMoveFM.FormCreate(Sender: TObject);
begin
  sFMId := 'CNMoveFM';
  sFMName := Self.Caption;
  sTableId := 'CNMove';
  inherited;
end;

procedure TCNMoveFM.FormDestroy(Sender: TObject);
begin
  inherited;
  CNMoveFM := nil;
end;

procedure TCNMoveFM.FormShow(Sender: TObject);
begin
  inherited;
  InItCbb('select AccName from CNAccNameTB  ', cxOutAccName);
  InItCbb('select AccName from CNAccNameTB  ', cxInAccName);
  InItCbb('select CNItemName from CNItemTB where iFlag=-1 and  Not Exists(select AutoID from CNItemTB m where CNItemTB.ID=m.ParentId) order by ID ', cxOutCNItemName);
  InItCbb('select CNItemName from CNItemTB where iFlag=1 and  Not Exists(select AutoID from CNItemTB m where CNItemTB.ID=m.ParentId) order by ID ', cxInCNItemName);

  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('select * from CNMoveTB  ');
    Open;
  end;
end;

procedure TCNMoveFM.qyHedAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyHed.FieldByName('BillNo').AsString := GetTableNo(sTableId, 'BillNo');
  qyHed.FieldByName('BillDate').AsDateTime := StrToDateTime(FormatDateTime('yyyy-mm-dd', SysDateTime));
  qyHed.FieldByName('AutoNo').AsString := GetDateAutoNo('CNZZ');
  qyHed.FieldByName('MakeMan').AsString := LoginEmpId;
  qyHed.FieldByName('MakeManName').AsString := LoginEmpName;
  qyHed.FieldByName('MakeDate').AsDateTime := SysDateTime;
end;

end.

