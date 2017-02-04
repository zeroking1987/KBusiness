unit CNCashPS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BasePS, dxSkinsCore,
  dxSkinDevExpressStyle, dxSkinOffice2010Blue, dxSkinSpringTime,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinsdxBarPainter, Data.DB,
  Data.Win.ADODB, dxBar, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, Vcl.ExtCtrls,
  cxCurrencyEdit, cxDBEdit, cxGroupBox, cxRadioGroup, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxMaskEdit, cxMRUEdit, cxMemo, cxButtonEdit,
  Vcl.StdCtrls, Vcl.Menus, cxButtons;

type
  TCNCashFM = class(TBaseFM)
    pnlTitle: TPanel;
    cxlabTitle: TcxLabel;
    qyHedAutoID: TAutoIncField;
    qyHedbSelect: TBooleanField;
    qyHedAutoNo: TStringField;
    qyHedCWZTNo: TStringField;
    qyHedCNKind: TStringField;
    qyHedAccName: TStringField;
    qyHedBillDate: TDateTimeField;
    qyHedBillNo: TStringField;
    qyHedCNItemName: TStringField;
    qyHediFlag: TSmallintField;
    qyHedsFlag: TStringField;
    qyHedCNMoney: TFMTBCDField;
    qyHedFZObjectId: TStringField;
    qyHedFZObjectName: TStringField;
    qyHedHandMan: TStringField;
    qyHedHandManName: TStringField;
    qyHedAccSubjectId: TStringField;
    qyHedPayMode: TStringField;
    qyHedPayDate: TDateTimeField;
    qyHedVoucherWord: TStringField;
    qyHedVoucherNo: TStringField;
    qyHedVoucherId: TStringField;
    qyHedYearMon: TStringField;
    qyHedRemark: TStringField;
    qyHedCNMoveNo: TStringField;
    qyHedCNMoveId: TStringField;
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
    Panel1: TPanel;
    cxLabel3: TcxLabel;
    cxAccName: TcxDBMRUEdit;
    cxLabel2: TcxLabel;
    cxCNItemName: TcxDBMRUEdit;
    cxDt: TcxDBDateEdit;
    cxLabCNMoney: TcxLabel;
    cxRgpsFlag: TcxDBRadioGroup;
    cxCNMoney: TcxDBCurrencyEdit;
    cxLabFZObject: TcxLabel;
    cxFZObject: TcxDBButtonEdit;
    cxLabel9: TcxLabel;
    cxRemark: TcxDBMemo;
    cxLabel8: TcxLabel;
    cxHandMan: TcxDBButtonEdit;
    cxLabel10: TcxLabel;
    cxAccSubject: TcxDBButtonEdit;
    cxLabel4: TcxLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxButton1: TcxButton;
    cxLabel1: TcxLabel;
    cxPZNo: TcxDBTextEdit;
    qyHedPZNo: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qyHedAfterInsert(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure cxRgpsFlagPropertiesChange(Sender: TObject);
    procedure cxFZObjectPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxHandManPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxCNItemNamePropertiesChange(Sender: TObject);
    procedure cxAccNamePropertiesButtonClick(Sender: TObject);
    procedure cxCNItemNamePropertiesButtonClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sPubBillNo, sOperate: string;
  end;

var
  CNCashFM: TCNCashFM;

implementation

uses PublicPS, DataPS, CustQPS, PrvQPS, EmpQPS, DeptQPS, CNAccNameQPS, CNItemQPS;
{$R *.dfm}

procedure TCNCashFM.btAddClick(Sender: TObject);
begin
  try
    inherited;
    TextReadOnly(Self, False);
    qyHed.Append;
    TextReadOnly(Self, False);
  except
    on E: Exception do
    begin
      ShowWarn(E.Message);
    end
  end;
end;

procedure TCNCashFM.btCancelClick(Sender: TObject);
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

procedure TCNCashFM.btEditClick(Sender: TObject);
begin
  try
    if qyHed.RecordCount <= 0 then exit;
    GetServerTime;
    inherited;
    TextReadOnly(Self, False);
    qyHed.Edit;
    qyHed.FieldByName('EditMan').AsString := LoginEmpId;
    qyHed.FieldByName('EditManName').AsString := LoginEmpName;
    qyHed.FieldByName('EditDate').AsDateTime := SysDateTime;
  except
  end;
end;

procedure TCNCashFM.btSaveClick(Sender: TObject);
begin
  try
    if cxAccName.text = '' then
    begin
      ShowBox('请选择出纳账户！');
      Exit;
    end;
    if cxDt.text = '' then
    begin
      ShowBox('请选择记账日期！');
      Exit;
    end;
    if cxCNItemName.text = '' then
    begin
      ShowBox('请选择收支项目！');
      Exit;
    end;
    if (cxCNMoney.text = '') and (cxRgpsFlag.ItemIndex = 0) then
    begin
      ShowBox('请填写收入金额！');
      Exit;
    end;
    if (cxCNMoney.text = '') and (cxRgpsFlag.ItemIndex = 1) then
    begin
      ShowBox('请填写支出金额！');
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

procedure TCNCashFM.cxAccNamePropertiesButtonClick(Sender: TObject);
begin
  inherited;
  try
    try
      if not btSave.Enabled then Exit;
      CNAccNameQFM := TCNAccNameQFM.Create(nil);
      CNAccNameQFM.iSelectKind := 2;
      CNAccNameQFM.sPubWhere := ' and AccKind=''现金账户'' ';
      CNAccNameQFM.ShowModal;
      if CNAccNameQFM.iFlag <> 3 then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('AccName').AsString := CNAccNameQFM.sName;
      end;
    finally
      CNAccNameQFM.Free;
      CNAccNameQFM := nil;
    end;
  except
  end;
end;

procedure TCNCashFM.cxButton1Click(Sender: TObject);
begin
  inherited;
  ExeSql('InSert into CWRemarkTB (CWRemark) select '+QuotedStr(trim(cxRemark.Text))+' where '+QuotedStr(trim(cxRemark.Text))+' not in (select CWRemark from CWRemarkTB )');
end;

procedure TCNCashFM.cxCNItemNamePropertiesButtonClick(Sender: TObject);
begin
  inherited;
  try
    try
      if not btSave.Enabled then Exit;
      CNItemQFM := TCNItemQFM.Create(nil);
      CNItemQFM.iSelectKind := 2;
      CNItemQFM.ShowModal;
      if CNItemQFM.iFlag <> 3 then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('CNItemName').AsString := CNItemQFM.sName;
      end;
    finally
      CNItemQFM.Free;
      CNItemQFM := nil;
    end;
  except
  end;
end;

procedure TCNCashFM.cxCNItemNamePropertiesChange(Sender: TObject);
begin
  inherited;
  if not DataFM.qyCNItem.Active then DataFM.qyCNItem.Open;
  if DataFM.qyCNItem.Locate('CNItemName', cxCNItemName.Text, []) then
  begin
    if btSave.Enabled then
    begin
      if qyHed.State = dsBrowse then qyHed.Edit;
      qyHed.FieldByName('sFlag').AsString := DataFM.qyCNItem.FieldByName('sFlag').AsString;
      qyHed.FieldByName('iFlag').AsInteger := DataFM.qyCNItem.FieldByName('iFlag').AsInteger;
    end;
    if DataFM.qyCNItem.FieldByName('FZObject').AsString <> '' then
      cxLabFZObject.Caption := DataFM.qyCNItem.FieldByName('FZObject').AsString;
  end;
end;

procedure TCNCashFM.cxFZObjectPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if not btSave.Enabled then Exit;
  if cxLabFZObject.Caption = '客户' then
  begin
    try
      CustQFM := TCustQFM.Create(nil);
      CustQFM.iSelectKind := 2;
      CustQFM.ShowModal;
      if CustQFM.sName <> '' then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('FZObjectId').AsString := CustQFM.sId;
        qyHed.FieldByName('FZObjectName').AsString := CustQFM.sName;
      end;
    finally
      CustQFM.Free;
      CustQFM := nil;
    end;
  end;
  if cxLabFZObject.Caption = '供应商' then
  begin
    try
      PrvQFM := TPrvQFM.Create(nil);
      PrvQFM.iSelectKind := 2;
      PrvQFM.ShowModal;
      if PrvQFM.sName <> '' then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('FZObjectId').AsString := PrvQFM.sId;
        qyHed.FieldByName('FZObjectName').AsString := PrvQFM.sName;
      end;
    finally
      PrvQFM.Free;
      PrvQFM := nil;
    end;
  end;
  if cxLabFZObject.Caption = '部门' then
  begin
    try
      DeptQFM := TDeptQFM.Create(nil);
      DeptQFM.iSelectKind := 2;
      DeptQFM.ShowModal;
      if DeptQFM.sName <> '' then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('FZObjectId').AsString := DeptQFM.sId;
        qyHed.FieldByName('FZObjectName').AsString := DeptQFM.sName;
      end;
    finally
      DeptQFM.Free;
      DeptQFM := nil;
    end;
  end;
  if cxLabFZObject.Caption = '员工' then
  begin
    try
      EmpQFM := TEmpQFM.Create(nil);
      EmpQFM.iSelectKind := 2;
      EmpQFM.ShowModal;
      if EmpQFM.sName <> '' then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('FZObjectId').AsString := EmpQFM.sId;
        qyHed.FieldByName('FZObjectName').AsString := EmpQFM.sName;
      end;
    finally
      EmpQFM.Free;
      EmpQFM := nil;
    end;
  end;
end;

procedure TCNCashFM.cxHandManPropertiesButtonClick(Sender: TObject;
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
      qyHed.FieldByName('HandMan').AsString := EmpQFM.sId;
      qyHed.FieldByName('HandManName').AsString := EmpQFM.sName;
    end;
  finally
    EmpQFM.Free;
    EmpQFM := nil;
  end;
end;

procedure TCNCashFM.cxRgpsFlagPropertiesChange(Sender: TObject);
begin
  inherited;
  if cxRgpsFlag.ItemIndex = 0 then
  begin
    if btSave.Enabled then
    begin
      if qyHed.State = dsBrowse then qyHed.Edit;
      qyHed.FieldByName('iFlag').AsInteger := 1;
    end;
    cxLabCNMoney.Caption := '收入金额';
  end;
  if cxRgpsFlag.ItemIndex = 1 then
  begin
    if btSave.Enabled then
    begin
      if qyHed.State = dsBrowse then qyHed.Edit;
      qyHed.FieldByName('iFlag').AsInteger := -1;
    end;
    cxLabCNMoney.Caption := '支出金额';
  end;
end;

procedure TCNCashFM.FormCreate(Sender: TObject);
begin
  sTableId := 'CNCashQ';
  ShowReport(sFMId);
  btSave.Enabled := false;
  btCancel.Enabled := false;
  GetTableRight(LoginId, sTableId); //获得权限
  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('select * from CNBillTB where CNKind=''现金'' ');
    Open;
  end;
end;

procedure TCNCashFM.FormDestroy(Sender: TObject);
begin
  inherited;
  CNCashFM := nil;
end;

procedure TCNCashFM.FormShow(Sender: TObject);
begin
  //inherited;
  cxlabTitle.Caption := '出纳现金账-' + sOperate;
  if sOperate = '编辑' then
  begin
    with qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      sql.Add('select * from CNBillTB where CNKind=''现金'' ');
      if sPubBillNo <> '' then
        SQL.Add(' and BillNo=' + QuotedStr(sPubBillNo));
      Open;
    end;
  end;
  cxCNItemName.SetFocus;
  InItCbb('select AccName from CNAccNameTB where AccKind=''现金账户'' ', cxAccName);
  InItCbb('select CNItemName from CNItemTB where Not Exists(select AutoID from CNItemTB m where CNItemTB.ID=m.ParentId) order by ID ', cxCNItemName);
end;

procedure TCNCashFM.qyHedAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyHed.FieldByName('BillNo').AsString := GetTableNo(sTableId, 'BillNo');
  qyHed.FieldByName('BillDate').AsDateTime := StrToDateTime(FormatDateTime('yyyy-mm-dd', SysDateTime));
  qyHed.FieldByName('CNKind').AsString := '现金';
  qyHed.FieldByName('AutoNo').AsString := GetDateAutoNo('CNXJ');
  qyHed.FieldByName('MakeMan').AsString := LoginEmpId;
  qyHed.FieldByName('MakeManName').AsString := LoginEmpName;
  qyHed.FieldByName('MakeDate').AsDateTime := SysDateTime;
end;

end.

