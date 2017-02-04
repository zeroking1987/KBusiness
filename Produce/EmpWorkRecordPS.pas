unit EmpWorkRecordPS;

interface

uses
  Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms, ADOInt,
  Dialogs, BaseGrdPS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, cxGridCustomPopupMenu, cxGridPopupMenu,
  Menus, ADODB, dxBar, cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, StdCtrls, ExtCtrls, frxClass, frxDBSet,
  cxContainer, cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxMemo, cxButtonEdit,
  cxLabel, cxDBLabel, cxButtons, cxGroupBox, cxDBLookupComboBox, cxGridBandedTableView,
  cxGridDBBandedTableView, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  cxMRUEdit, cxPCdxBarPopupMenu, dxSkinOffice2010Blue, dxSkinDevExpressStyle, DateUtils,
  dxSkinSpringTime, dxSkinValentine, dxSkinOffice2007Silver, dxSkinSevenClassic,
  dxSkinSilver, dxSkinWhiteprint, dxBarBuiltInMenu, cxNavigator;

type
  TEmpWorkRecordFM = class(TBaseGrdFM)
    Label15: TLabel;
    cxMoRemark: TcxDBMemo;
    cxPupEdtRemark: TcxDBPopupEdit;
    N1: TMenuItem;
    N2: TMenuItem;
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
    cxdtS: TcxDBDateEdit;
    cxdtE: TcxDBDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    Label10: TLabel;
    qyDetAutoId: TAutoIncField;
    qyDetAutoNo: TStringField;
    qyDetbSelect: TBooleanField;
    qyDetBillNo: TStringField;
    qyDetBillDate: TDateTimeField;
    qyDetSourceNo: TStringField;
    qyDetSourceAutoNo: TStringField;
    qyDetCompactNo: TStringField;
    qyDetItemID: TStringField;
    qyDetItemCode: TStringField;
    qyDetItemPYCode: TStringField;
    qyDetItemName: TStringField;
    qyDetItemSpc: TStringField;
    qyDetItemPic: TStringField;
    qyDetItemUnit: TStringField;
    qyDetSubUnit: TStringField;
    qyDetiFlag: TIntegerField;
    qyDetExchRate: TFMTBCDField;
    qyDetEmpId: TStringField;
    qyDetEmpCode: TStringField;
    qyDetEmpName: TStringField;
    qyDetRemark: TStringField;
    cxgrdtbvCompactNo: TcxGridDBColumn;
    cxgrdtbvItemCode: TcxGridDBColumn;
    cxgrdtbvItemName: TcxGridDBColumn;
    cxgrdtbvItemSpc: TcxGridDBColumn;
    cxgrdtbvItemUnit: TcxGridDBColumn;
    cxgrdtbvEmpId: TcxGridDBColumn;
    cxgrdtbvEmpCode: TcxGridDBColumn;
    cxgrdtbvEmpName: TcxGridDBColumn;
    cxgrdtbvMainNum: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    qyDetMainNum: TFMTBCDField;
    qyHedAutoId: TAutoIncField;
    qyHedAutoNo: TStringField;
    qyHedbSelect: TBooleanField;
    qyHedBillNo: TStringField;
    qyHedBillDate: TDateTimeField;
    qyHedStartDate: TDateTimeField;
    qyHedEndDate: TDateTimeField;
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
    cxgrdtbvColumn1: TcxGridDBColumn;
    procedure btAddClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btAddLClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDelLClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure cxEdtNoPropertiesChange(Sender: TObject);
    procedure qyDetAfterInsert(DataSet: TDataSet);
    procedure btDelClick(Sender: TObject);
    procedure btUnCheckClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btReferClick(Sender: TObject);
    procedure qyHedPrintNumChange(Sender: TField);
  private
    { Private declarations }
  public

    { Public declarations }
  end;
var
  EmpWorkRecordFM: TEmpWorkRecordFM;

implementation
uses PublicPS, ControlPublicPS, DataPS, EmpQPS, ItemQPS, DeptQPS, PrvQPS, EmpWorkRecordFindPS;
{$R *.dfm}

procedure TEmpWorkRecordFM.btAddClick(Sender: TObject);
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
    qyHed.FieldByName('BillNo').AsString := GetTableNo(sTableId, 'BillNo');
    qyHed.FieldByName('BillDate').AsDateTime := StrToDateTime(FormatDateTime('yyyy-mm-dd', SysDateTime));
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

procedure TEmpWorkRecordFM.btAddLClick(Sender: TObject);
begin
  try
    qyDet.Append;
  except
  end;
end;

procedure TEmpWorkRecordFM.btCancelClick(Sender: TObject);
begin
  qyDet.CancelBatch();
  qyHed.CancelBatch();
  TextReadOnly(Self, True);
  inherited;
end;

procedure TEmpWorkRecordFM.btDelClick(Sender: TObject);
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
      ExeSql('Delete EmpWorkRecordDTTB where BillNo=' + QuotedStr(sBiilNo));
      ExeSql('Delete EmpWorkRecordHDTB where BillNo=' + QuotedStr(sBiilNo));
      with qyHed do
      begin
        if Active then Close;
        SQL.Clear;
        sql.Add('select * from EmpWorkRecordHDTB where IsNull(bMaxAudit,0)=0 ');
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

procedure TEmpWorkRecordFM.btDelLClick(Sender: TObject);
begin
  try
    qyDet.Delete;
  except
    ShowBox('删除失败！');
  end;
end;

procedure TEmpWorkRecordFM.btEditClick(Sender: TObject);
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
      if (cxgrdtbv.Columns[i].DataBinding.FieldName = 'EmpId') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'MainNum') then
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
    cxdtS.Properties.ReadOnly := true;
    cxdtE.Properties.ReadOnly := true;
    inherited;
  end;
  qyHed.Edit;
  qyHed.FieldByName('EditMan').AsString := LoginEmpId;
  qyHed.FieldByName('EditManName').AsString := LoginEmpName;
  qyHed.FieldByName('EditDate').AsDateTime := SysDateTime;
end;

procedure TEmpWorkRecordFM.btFindClick(Sender: TObject);
begin
  inherited;
  try
    if not Assigned(EmpWorkRecordFindFM) then
      EmpWorkRecordFindFM := TEmpWorkRecordFindFM.Create(Application);
    EmpWorkRecordFindFM.ShowModal;
  finally
    EmpWorkRecordFindFM.Free;
    EmpWorkRecordFindFM := nil
  end;
end;

procedure TEmpWorkRecordFM.btReferClick(Sender: TObject);
begin
  try
    if cxdtS.Text = '' then
    begin
      ShowBox('请先选择开始日期');
      exit
    end;
    if cxdtE.Text = '' then
    begin
      ShowBox('请先选择结束日期');
      exit
    end;
    qyHed.UpdateBatch();
    ExeSql('exec PrGetEmpWorkRecord ' + QuotedStr(trim(cxEdtNo.Text)));
    with qyDet do
    begin
      if Active then close;
      SQL.Clear;
      SQL.Add('select * from EmpWorkRecordDTTB where BillNO=' + Quotedstr(trim(cxEdtNo.Text)) + ' Order by CompactNO,EmpId');
      Open;
    end;
    ShowBox('提取成功！');
  except
    ShowError('提取失败');
  end;
end;

procedure TEmpWorkRecordFM.btSaveClick(Sender: TObject);
var
  sNewNo: string;
  i: Integer;
begin
  try
    if cxdtS.Text = '' then
    begin
      ShowBox('请先选择开始日期');
      exit
    end;
    if cxdtE.Text = '' then
    begin
      ShowBox('请先选择结束日期');
      exit
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
          sNewNo := GetTableNO(sTableId, 'BillNo');
          ;
          if qyHed.FieldByName('BillNo').AsString = sNewNo then
          begin
            ShowBox('单号有重复!');
            Exit;
          end;
          if qyHed.State = dsBrowse then qyHed.Edit;
          if qyDet.State = dsBrowse then qyDet.Edit;

          qyHed.FieldByName('BillNo').AsString := sNewNo;
          qyDet.First;
          for i := 0 to qyDet.RecordCount - 1 do
          begin
            if qyDet.State = dsBrowse then qyDet.Edit;
            qyDet.FieldByName('BillNo').AsString := sNewNo;
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

procedure TEmpWorkRecordFM.btUnCheckClick(Sender: TObject);
begin
  inherited;
  AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, -1);
  ShowFMInfo(sTableId,qyHed);
end;



procedure TEmpWorkRecordFM.cxEdtNoPropertiesChange(Sender: TObject);
begin
  inherited;
  with qyDet do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from EmpWorkRecordDTTB where BillNo=' + QuotedStr(trim(cxEdtNo.Text)));
    Open;
  end;
  if DataFM.qyPyCode.Active = false then DataFM.qyPyCode.Open;
  ShowFMInfo(sTableId,qyHed);
end;

procedure TEmpWorkRecordFM.FormCreate(Sender: TObject);
begin
  sFMId := 'EmpWorkRecordFM';
  sFMName := Self.Caption;
  sTableId := 'EmpWorkRecord';
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(SysDateTime));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(SysDateTime));
  qyHed.Open;
end;

procedure TEmpWorkRecordFM.FormDestroy(Sender: TObject);
begin
  inherited;
  EmpWorkRecordFM := nil;
end;

procedure TEmpWorkRecordFM.FormShow(Sender: TObject);
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
end;

procedure TEmpWorkRecordFM.qyDetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyDet.FieldByName('BillNo').AsString := qyHed.FieldByName('BillNo').AsString;
  qyDet.FieldByName('AutoNo').AsString := GetDateAutoNo(sTableId);
end;

procedure TEmpWorkRecordFM.qyHedPrintNumChange(Sender: TField);
begin
  inherited;
  ShowFMInfo(sTableId,qyHed);
end;

end.
