unit ProDispatchPS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseGrdPS, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2010Blue, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, dxSkinsdxBarPainter, frxClass, frxDBSet,
  cxGridCustomPopupMenu, cxGridPopupMenu, Menus, ADODB, dxBar,
  cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxGroupBox, cxTextEdit, Vcl.StdCtrls, Vcl.ExtCtrls, ADOInt,
  cxButtonEdit, cxMemo, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, cxCheckBox,
  dxBarBuiltInMenu, cxNavigator, cxLabel;

type
  TProDispatchFM = class(TBaseGrdFM)
    cxTabSheet1: TcxTabSheet;
    lbl1: TLabel;
    cxMoRemark: TcxDBMemo;
    cxPupEdtRemark: TcxDBPopupEdit;
    cxgrdMat: TcxGrid;
    cxgrdbtblvwMat: TcxGridDBTableView;
    cxgrdlvl1: TcxGridLevel;
    frxMat: TfrxDBDataset;
    qyMat: TADOQuery;
    dsMat: TDataSource;
    cxgrdDBTableView1: TcxGridDBTableView;
    cxgrdDBTableView1DBColumn: TcxGridDBColumn;
    cxgrdDBTableView1DBColumn3: TcxGridDBColumn;
    cxgrdDBTableView1DBColumn4: TcxGridDBColumn;
    cxgrdDBTableView1Column1: TcxGridDBColumn;
    qyHedAutoID: TLargeintField;
    qyHedAutoNo: TStringField;
    qyHedbSelect: TBooleanField;
    qyHedDispatchNo: TStringField;
    qyHedDispatchDate: TDateTimeField;
    qyHedDispatchMan: TStringField;
    qyHedDispatchManName: TStringField;
    qyHedbEnd: TBooleanField;
    qyHedItemID: TStringField;
    qyHedItemCode: TStringField;
    qyHedItemName: TStringField;
    qyHedItemSpc: TStringField;
    qyHedItemPic: TStringField;
    qyHedMaterial: TStringField;
    qyHedItemUnit: TStringField;
    qyHedSubUnit: TStringField;
    qyHediFlag: TIntegerField;
    qyHedExchRate: TFMTBCDField;
    qyHedProType: TStringField;
    qyHedColor: TStringField;
    qyHedCompactNO: TStringField;
    qyHedSaleOrderNo: TStringField;
    qyHedSaleOrderId: TStringField;
    qyHedProOrderNo: TStringField;
    qyHedProOrderId: TStringField;
    qyHedDispatchNum: TFMTBCDField;
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
    Label11: TLabel;
    cxBtReqMan: TcxDBButtonEdit;
    qyDetAutoId: TLargeintField;
    qyDetAutoNo: TStringField;
    qyDetbSelect: TBooleanField;
    qyDetDispatchNo: TStringField;
    qyDetItemID: TStringField;
    qyDetItemCode: TStringField;
    qyDetItemPYCode: TStringField;
    qyDetItemName: TStringField;
    qyDetItemSpc: TStringField;
    qyDetItemPic: TStringField;
    qyDetMaterial: TStringField;
    qyDetItemUnit: TStringField;
    qyDetSubUnit: TStringField;
    qyDetiFlag: TIntegerField;
    qyDetExchRate: TFMTBCDField;
    qyDetItemParam: TStringField;
    qyDetItemSource: TStringField;
    qyDetProType: TStringField;
    qyDetColor: TStringField;
    qyDetCompactNO: TStringField;
    qyDetSaleOrderNo: TStringField;
    qyDetSaleOrderId: TStringField;
    qyDetProOrderNo: TStringField;
    qyDetProOrderId: TStringField;
    qyDetOrdinal: TSmallintField;
    qyDetTechName: TStringField;
    qyDetTopTech: TStringField;
    qyDetTechParam: TStringField;
    qyDetbFirst: TBooleanField;
    qyDetbTakeMat: TBooleanField;
    qyDetiNo: TIntegerField;
    qyDetEmpId: TStringField;
    qyDetEmpCode: TStringField;
    qyDetEmpName: TStringField;
    qyDetDispatchNum: TFMTBCDField;
    qyDetProOrderNum: TFMTBCDField;
    qyDetRfNum: TFMTBCDField;
    qyDetPassNum: TFMTBCDField;
    qyDetPassPrice: TFMTBCDField;
    qyDetPassMoney: TFMTBCDField;
    qyDetSpoilNum: TFMTBCDField;
    qyDetSpoilPrice: TFMTBCDField;
    qyDetSpoilMoney: TFMTBCDField;
    qyDetWasteNum: TFMTBCDField;
    qyDetWastePrice: TFMTBCDField;
    qyDetWasteMoney: TFMTBCDField;
    qyDetRemark: TStringField;
    cxgrdtbvItemCode: TcxGridDBColumn;
    cxgrdtbvItemName: TcxGridDBColumn;
    cxgrdtbvItemSpc: TcxGridDBColumn;
    cxgrdtbvItemUnit: TcxGridDBColumn;
    cxgrdtbvProType: TcxGridDBColumn;
    cxgrdtbvColor: TcxGridDBColumn;
    cxgrdtbvOrdinal: TcxGridDBColumn;
    cxgrdtbvTechName: TcxGridDBColumn;
    cxgrdtbvTopTech: TcxGridDBColumn;
    cxgrdtbvTechParam: TcxGridDBColumn;
    cxgrdtbvbFirst: TcxGridDBColumn;
    cxgrdtbvEmpCode: TcxGridDBColumn;
    cxgrdtbvEmpName: TcxGridDBColumn;
    cxgrdtbvDispatchNum: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    qyDetNextTech: TStringField;
    cxgrdtbvColumn1: TcxGridDBColumn;
    qyMatAutoID: TLargeintField;
    qyMatAutoNo: TStringField;
    qyMatbSelect: TBooleanField;
    qyMatDispatchNo: TStringField;
    qyMatWareId: TStringField;
    qyMatbTake: TBooleanField;
    qyMatItemID: TStringField;
    qyMatItemCode: TStringField;
    qyMatItemName: TStringField;
    qyMatItemSpc: TStringField;
    qyMatItemPic: TStringField;
    qyMatMaterial: TStringField;
    qyMatItemUnit: TStringField;
    qyMatSubUnit: TStringField;
    qyMatiFlag: TIntegerField;
    qyMatExchRate: TFMTBCDField;
    qyMatProType: TStringField;
    qyMatColor: TStringField;
    qyMatCompactNO: TStringField;
    qyMatSaleOrderNo: TStringField;
    qyMatSaleOrderId: TStringField;
    qyMatProOrderNo: TStringField;
    qyMatProOrderId: TStringField;
    qyMatTakeNum: TFMTBCDField;
    qyMatSendNum: TFMTBCDField;
    qyMatRemark: TStringField;
    cxgrdbtblvwMatItemCode: TcxGridDBColumn;
    cxgrdbtblvwMatItemName: TcxGridDBColumn;
    cxgrdbtblvwMatItemSpc: TcxGridDBColumn;
    cxgrdbtblvwMatItemUnit: TcxGridDBColumn;
    cxgrdbtblvwMatProType: TcxGridDBColumn;
    cxgrdbtblvwMatColor: TcxGridDBColumn;
    cxgrdbtblvwMatTakeNum: TcxGridDBColumn;
    cxgrdbtblvwMatRemark: TcxGridDBColumn;
    qyMatDetAutoNo: TStringField;
    qyTemp: TADOQuery;
    qyMatDosage: TFMTBCDField;
    qyMatWasteRate: TFMTBCDField;
    cxAutoNo: TcxDBTextEdit;
    qyMatSendMode: TStringField;
    cxgrdbclmnMatSendMode: TcxGridDBColumn;
    frxDBDataset2: TfrxDBDataset;
    tbProDispatchDTTB: TADOTable;
    dsDTTB: TDataSource;
    dsMatTB: TDataSource;
    tbProDispatchyMat: TADOTable;
    frxDBDataset1: TfrxDBDataset;
    qyWareNum: TADOQuery;
    qyMatWareNum: TFMTBCDField;
    cxgrdbtblvwMatColumn1: TcxGridDBColumn;
    cxgrdbtblvwMatColumn2: TcxGridDBColumn;
    qyDetWareNum: TFMTBCDField;
    cxgrdtbvColumn2: TcxGridDBColumn;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    qyDetbStop: TBooleanField;
    qyDetbComplete: TBooleanField;
    cxgrdtbvColumn3: TcxGridDBColumn;
    cxgrdtbvColumn4: TcxGridDBColumn;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    qyDetObjectId: TStringField;
    qyDetObjectName: TStringField;
    qyHedRemark: TStringField;
    qyDetbLast: TBooleanField;
    cxgrdtbvColumn5: TcxGridDBColumn;
    qyMatbStop: TBooleanField;
    qyMatbComplete: TBooleanField;
    qyMatpItemId: TStringField;
    qyMatpItemCode: TStringField;
    qyMatpItemName: TStringField;
    cxgrdbtblvwMatColumn3: TcxGridDBColumn;
    cxgrdbtblvwMatColumn4: TcxGridDBColumn;
    qyMatTakeObjectId: TStringField;
    qyMatTakeObjectName: TStringField;
    cxgrdbtblvwMatColumn5: TcxGridDBColumn;
    cxgrdbtblvwMatColumn6: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btAddLClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDelClick(Sender: TObject);
    procedure btDelLClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure cxEdtNoPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qyHedPrintNumChange(Sender: TField);
    procedure cxgrdbtblvwProCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure cxgrdbtblvwMatCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure btUnCheckClick(Sender: TObject);
    procedure btRefClick(Sender: TObject);
    procedure mniNCopyDClick(Sender: TObject);
    procedure mniNCopyLClick(Sender: TObject);
    procedure NCustomGrdClick(Sender: TObject);
    procedure NSaveGrdClick(Sender: TObject);
    procedure NDelGrdClick(Sender: TObject);
    procedure btCheckClick(Sender: TObject);
    procedure qyMatAfterInsert(DataSet: TDataSet);
    procedure qyDetAfterInsert(DataSet: TDataSet);
    procedure qyDetItemIDChange(Sender: TField);
    procedure btExportClick(Sender: TObject);
    procedure cxgrdtbvCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure cxgrdtbvItemCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure qyMatItemIDChange(Sender: TField);
    procedure cxAutoNoPropertiesChange(Sender: TObject);
    procedure cxgrdtbvTechNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdtbvDispatchNumPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxBtReqManPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdtbvEmpCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure qyDetEmpIdChange(Sender: TField);
    procedure cxgrdtbvItemCodePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure btFindClick(Sender: TObject);
    procedure cxgrdbtblvwMatCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure qyMatCalcFields(DataSet: TDataSet);
    procedure qyDetCalcFields(DataSet: TDataSet);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure qyDetObjectIdChange(Sender: TField);
    procedure btReferClick(Sender: TObject);
    procedure qyDetTechNameChange(Sender: TField);
  private
    { Private declarations }
    iNo: Integer;
    procedure GetMat;
    procedure GetMatNum;
  public
    { Public declarations }
  end;

var
  ProDispatchFM: TProDispatchFM;

implementation

uses PublicPS, ControlPublicPS, DataPS, ItemQPS, SGeneralPS, EmpQPS, DeptQPS, ProDispatchProOrderRfPS,
  ProDispatchFindPS, PrvQPS;
{$R *.dfm}

procedure TProDispatchFM.GetMat;
var i: integer;
begin
  try
    qyMat.Filter := 'DetAutoNo=' + QuotedStr(qyDet.fieldByName('AutoNo').AsString);
    qyMat.Filtered := true;

    qyMat.First;
    if qyMat.RecordCount > 0 then
    begin
      if ShowDlg('已有所需物料,是否要重新取物料？') = false then exit;
      for i := 0 to qyMat.RecordCount - 1 do
      begin
        qyMat.Delete;
        qyMat.Next;
      end;
    end;
    try
      with qyTemp do
      begin
        if Active then Close;
        SQL.Clear;
        SQL.Add('Exec prDispatchGetMat ' + QuotedStr(qyDet.FieldByName('ItemId').AsString) + ',' + QuotedStr(qyDet.FieldByName('TechName').AsString));
        Open;
      end;
      if not qyTemp.eof then
      begin
        while not qyTemp.Eof do
        begin
          qyMat.append;
          qyMat.FieldByName('ItemId').AsString := qyTemp.FieldByName('ItemId').AsString;
          qyMat.FieldByName('Dosage').AsFloat := qyTemp.FieldByName('Dosage').AsFloat;
          qyMat.FieldByName('WasteRate').AsFloat := qyTemp.FieldByName('WasteRate').AsFloat;
          qyMat.FieldByName('ProType').AsString := qyTemp.FieldByName('ProType').AsString;
          qyMat.FieldByName('Color').AsString := qyTemp.FieldByName('Color').AsString;
          qyMat.FieldByName('TakeNum').AsFloat := qyDet.fieldByName('DispatchNum').AsFloat * qyMat.fieldByName('Dosage').AsFloat * (1 + qyMat.fieldByName('WasteRate').AsFloat / 100);
          qyMat.Post;
          qyTemp.Next;
        end;
      end;
    finally
      qyTemp.Close;
    end;
  except
  end;
end;

procedure TProDispatchFM.GetMatNum;
var i: integer;
begin
  try
    qyMat.First;
    for i := 0 to qyMat.RecordCount - 1 do
    begin
      if qyMat.FieldByName('DetAutoNo').AsString = qyDet.FieldByName('AutoNo').AsString then
      begin
        if qyMat.State = dsBrowse then qyMat.Edit;
        qyMat.FieldByName('TakeNum').AsFloat := qyDet.fieldByName('DispatchNum').AsFloat * qyMat.fieldByName('Dosage').AsFloat * (1 + qyMat.fieldByName('WasteRate').AsFloat / 100);
        //UpdateData(cxgrdbtblvw1, 'MoveNum');
      end;
      qyMat.Next;
    end;
  except
  end;
end;

procedure TProDispatchFM.btAddClick(Sender: TObject);
begin
  try
    if (bRight) and (bAdd = false) then
    begin
      ShowWarn('你没有本单据的添加权限,不能操作');
      exit;
    end;
    TextReadOnly(Self, false);
    CxGridStyleReadOnly(cxgrdtbv);
    CxGridStyleReadOnly(cxgrdbtblvwMat);
    inherited;
    qyHed.Append;
    qyHed.FieldByName('DispatchNo').AsString := GetTableNo(sTableId, 'DispatchNo');
    qyHed.FieldByName('AutoNo').AsString := GetDateAutoNo(sTableId);
    qyHed.FieldByName('DispatchDate').AsDateTime := StrToDateTime(FormatDateTime('yyyy-mm-dd', SysDateTime));
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

procedure TProDispatchFM.btAddLClick(Sender: TObject);
begin
  inherited;
  if cxPgc.ActivePageIndex = 0 then
    qyDet.Append
  else if cxPgc.ActivePageIndex = 1 then
    qyMat.Append;
end;

procedure TProDispatchFM.btCancelClick(Sender: TObject);
begin
  qyMat.Filter := '';
  qyMat.Filtered := False;
  qyMat.CancelBatch();
  qyDet.CancelBatch();
  qyHed.CancelBatch();
  TextReadOnly(Self, True);
  CxGridStyleReadOnly(cxgrdtbv);
  CxGridStyleReadOnly(cxgrdbtblvwMat);
  inherited;
end;

procedure TProDispatchFM.btCheckClick(Sender: TObject);
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

    if AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, 1) then
      SetLog(sFMName, trim(cxEdtNo.Text), '审核');
    ShowFMInfo(sTableId,qyHed);
    btRefClick(Self);
  except
    on E: Exception do
      ShowWarn(E.Message);
  end;
end;

procedure TProDispatchFM.btDelClick(Sender: TObject);
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
      ExeSql('Delete ProDispatchMatTB where DispatchNo=' + QuotedStr(sBiilNo));
      ExeSql('Delete ProDispatchDTTB where DispatchNo=' + QuotedStr(sBiilNo));
      ExeSql('Delete ProDispatchHDTB where DispatchNo=' + QuotedStr(sBiilNo));
      with qyHed do
      begin
        if Active then Close;
        SQL.Clear;
        sql.Add('select * from ProDispatchHDTB where IsNull(bMaxAudit,0)=0 ');
        Open;
      end;
      SetLog(sFMName, sBiilNo, '删除');
      ShowBox('删除成功!');
      btRefClick(Sender);
    except
      on E: Exception do
      begin
        ShowBox('删除失败!');
      end;
    end;
  end;
end;

procedure TProDispatchFM.btDelLClick(Sender: TObject);
var i: integer;
begin
  try
    if cxPgc.ActivePageIndex = 0 then
    begin
      qyMat.First;
      if qyMat.RecordCount > 0 then
      begin
        for i := 0 to qyMat.RecordCount - 1 do
        begin
          qyMat.Delete;
          qyMat.Next;
        end;
      end;
      qyDet.Delete;
    end
    else if cxPgc.ActivePageIndex = 1 then
      qyMat.Delete;
  except
    ShowBox('删除失败！');
  end;
end;


procedure TProDispatchFM.btEditClick(Sender: TObject);
var i: integer;
begin
  if qyHed.RecordCount <= 0 then exit;
  GetServerTime;
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
  CxGridStyleReadOnly(cxgrdtbv);
  CxGridStyleReadOnly(cxgrdbtblvwMat);
  inherited;
  qyHed.Edit;
  qyHed.FieldByName('EditMan').AsString := LoginEmpId;
  qyHed.FieldByName('EditManName').AsString := LoginEmpName;
  qyHed.FieldByName('EditDate').AsDateTime := SysDateTime;
end;

procedure TProDispatchFM.btExportClick(Sender: TObject);
begin
  if cxPgc.ActivePageIndex = 0 then
    CxExport(cxgrd, '生产派工单-生产工序')
  else if cxPgc.ActivePageIndex = 1 then
    CxExport(cxgrdMat, '生产派工单-所需物料')
end;

procedure TProDispatchFM.btFindClick(Sender: TObject);
begin
  inherited;
  try
    if not Assigned(ProDispatchFindFM) then
      ProDispatchFindFM := TProDispatchFindFM.Create(Application);
    ProDispatchFindFM.ShowModal;
  finally
    ProDispatchFindFM.Free;
    ProDispatchFindFM := nil
  end;
end;

procedure TProDispatchFM.btRefClick(Sender: TObject);
begin
  inherited;
  cxEdtNoPropertiesChange(Sender);
  if qyWareNum.Active then
  begin
    qyWareNum.Close;
    qyWareNum.Open;
  end;
  ShowFMInfo(sTableId,qyHed);
end;

procedure TProDispatchFM.btReferClick(Sender: TObject);
var
  i: integer;
begin
  try
    try
      ProDispatchProOrderRfFM := TProDispatchProOrderRfFM.Create(nil);
      ProDispatchProOrderRfFM.btFindClick(self);
      ProDispatchProOrderRfFM.ShowModal;
      if ProDispatchProOrderRfFM.fFlag = 1 then
      begin
        ProDispatchProOrderRfFM.qyFind.Filter := ' bSelect=1';
        ProDispatchProOrderRfFM.qyFind.Filtered := true;
        ProDispatchProOrderRfFM.qyFind.First;
        for i := 0 to ProDispatchProOrderRfFM.qyFind.RecordCount - 1 do
        begin
          if i = 0 then
          begin
            qyDet.Edit;
            qyDetAfterInsert(qyDet);
          end
          else
            qyDet.Append;
          qyDet.FieldByName('ItemId').AsString := ProDispatchProOrderRfFM.qyFind.FieldByName('ItemId').AsString;
          qyDet.FieldByName('ItemCode').AsString := ProDispatchProOrderRfFM.qyFind.FieldByName('ItemCode').AsString;
          qyDet.FieldByName('CompactNo').AsString := ProDispatchProOrderRfFM.qyFind.FieldByName('CompactNo').AsString;
          qyDet.FieldByName('ProType').AsString := ProDispatchProOrderRfFM.qyFind.FieldByName('ProType').AsString;
          qyDet.FieldByName('Color').AsString := ProDispatchProOrderRfFM.qyFind.FieldByName('Color').AsString;
          qyDet.FieldByName('Ordinal').AsInteger := ProDispatchProOrderRfFM.qyFind.FieldByName('Ordinal').AsInteger;
          qyDet.FieldByName('TechParam').AsString := ProDispatchProOrderRfFM.qyFind.FieldByName('TechParam').AsString;
          qyDet.FieldByName('TopTech').AsString := ProDispatchProOrderRfFM.qyFind.FieldByName('TopTech').AsString;
          qyDet.FieldByName('NextTech').AsString := ProDispatchProOrderRfFM.qyFind.FieldByName('NextTech').AsString;
          qyDet.FieldByName('bFirst').AsBoolean := ProDispatchProOrderRfFM.qyFind.FieldByName('bFirst').AsBoolean;
          qyDet.FieldByName('bLast').AsBoolean := ProDispatchProOrderRfFM.qyFind.FieldByName('bLast').AsBoolean;
          qyDet.FieldByName('ObjectId').AsString := ProDispatchProOrderRfFM.qyFind.FieldByName('DeptId').AsString;
          qyDet.FieldByName('ObjectName').AsString := ProDispatchProOrderRfFM.qyFind.FieldByName('DeptName').AsString;
          qyDet.FieldByName('DispatchNum').AsFloat := ProDispatchProOrderRfFM.qyFind.FieldByName('NoDispatchNum').AsFloat;
          qyDet.FieldByName('ProOrderNo').AsString := ProDispatchProOrderRfFM.qyFind.FieldByName('ProOrderNo').AsString;
          qyDet.FieldByName('ProOrderID').AsString := ProDispatchProOrderRfFM.qyFind.FieldByName('AutoNo').AsString;
           qyDet.FieldByName('TechName').AsString := ProDispatchProOrderRfFM.qyFind.FieldByName('TechName').AsString;
          UpdateData(cxgrdtbv, 'DispatchNum');
          qyDet.post;
          ProDispatchProOrderRfFM.qyFind.Next;
        end;
      end;
    finally
      ProDispatchProOrderRfFM.free;
      ProDispatchProOrderRfFM := nil;
    end;
  except
  end;
end;

procedure TProDispatchFM.btSaveClick(Sender: TObject);
var
  sNewNo: string;
  i: Integer;
begin
  try
    qyMat.Filter := '';
    qyMat.Filtered := False;
    qyHed.UpdateBatch;
    qyDet.UpdateBatch;
    qyMat.UpdateBatch;
    TextReadOnly(Self, True);
    CxGridStyleReadOnly(cxgrdtbv);
    CxGridStyleReadOnly(cxgrdbtblvwMat);
    if cxEdtEditManName.Text <> '' then
      SetLog(sFMName, trim(cxEdtNo.Text), '修改')
    else
      SetLog(sFMName, trim(cxEdtNo.Text), '添加');
    inherited;
    btRefClick(Sender);
    ShowBox('保存成功!');
  except
    on E: Exception do
    begin
      if pos('不能将值', E.Message) > 0 then
        ShowBox('请将必填项填写完整!')
      else if pos('插入重复键', e.Message) > 0 then
      begin
        try
          sNewNo := GetTableNO(sTableId, 'DispatchNo');
          if qyHed.FieldByName('DispatchNo').AsString = sNewNo then
          begin
            ShowBox('单号有重复!');
            Exit;
          end;
          if qyHed.State = dsBrowse then qyHed.Edit;
          if qyDet.State = dsBrowse then qyDet.Edit;

          qyHed.FieldByName('DispatchNo').AsString := sNewNo;
          qyDet.First;
          for i := 0 to qyDet.RecordCount - 1 do
          begin
            if qyDet.State = dsBrowse then qyDet.Edit;
            qyDet.FieldByName('DispatchNo').AsString := sNewNo;
            qyDet.Next;
          end;
          qyHed.UpdateBatch;
          qyDet.UpdateBatch;
          TextReadOnly(Self, true);
          CxGridStyleReadOnly(cxgrdtbv);
          CxGridStyleReadOnly(cxgrdbtblvwMat);
          inherited;
          ShowBox('保存成功!');
        except
          ShowWarn('保存失败!');
        end;
      end;
    end;
  end;
end;

procedure TProDispatchFM.btUnCheckClick(Sender: TObject);
var sRfNo: string;
begin
  try
    sRfNo := bHaveData(DataFM.qyTemp, 'select a.BillNO from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO where a.WKindId=''ProductIn'' and  b.DispatchNo=' + QuotedStr(Trim(cxEdtNo.Text)));
    if sRfNo <> '' then
    begin
      ShowBox('该生产派工单已被产品入库单<' + sRfNo + '>引用,不能反审核');
      Exit;
    end;
    sRfNo := bHaveData(DataFM.qyTemp, 'select a.BillNO from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO where a.WKindId=''MatOut'' and  b.DispatchNo=' + QuotedStr(Trim(cxEdtNo.Text)));
    if sRfNo <> '' then
    begin
      ShowBox('该生产派工单已被发料出库单<' + sRfNo + '>引用,不能反审核');
      Exit;
    end;
    if (trim(cxEdtNo.Text) = '') or (qyHed.Active = false) then exit;
    qyHed.UpdateCursorPos;
    qyHed.Recordset.Resync(AdAffectcurrent, AdResyncAllValues);

    if qyHed.FieldByName('AuditFlag').asInteger = 0 then
    begin
      ShowWarn('本单未进行审核,不需要反审核!');
      exit;
    end;
    if AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, -1) then
      SetLog(sFMName, trim(cxEdtNo.Text), '反审核');
    ShowFMInfo(sTableId,qyHed);
    btRefClick(Self);
  except
    on E: Exception do
      ShowWarn(E.Message);
  end;
end;

procedure TProDispatchFM.cxAutoNoPropertiesChange(Sender: TObject);
begin
  inherited;
  try
    if btSave.Enabled then
    begin
      qyMat.Filter := 'DetAutoNo=' + QuotedStr(qyDet.fieldByName('AutoNo').AsString);
      qyMat.Filtered := true;
    end
    else
    begin
      qyMat.Filter := '';
      qyMat.Filtered := False;
    end;
  except
  end;
end;

procedure TProDispatchFM.cxBtReqManPropertiesButtonClick(Sender: TObject;
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
        qyHed.FieldByName('DispatchMan').AsString := EmpQFM.sId;
        qyHed.FieldByName('DispatchManName').AsString := EmpQFM.sName;
      end;
    finally
      EmpQFM.Free;
      EmpQFM := nil;
    end;
  except
  end;
end;

procedure TProDispatchFM.cxEdtNoPropertiesChange(Sender: TObject);
begin
  inherited;
  with qyDet do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from ProDispatchDTTB where DispatchNo=' + QuotedStr(trim(cxEdtNo.Text)) + ' order by ItemId,Ordinal');
    Open;
  end;
  with qyMat do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from ProDispatchMatTB where  DispatchNo=' + QuotedStr(trim(cxEdtNo.Text)) + ' order by ItemId');
    Open;
  end;
  //打印报表用
  tbProDispatchDTTB.Open;
  tbProDispatchyMat.Open;
  tbProDispatchDTTB.Requery;
  tbProDispatchyMat.Requery;
  tbProDispatchDTTB.Filter := 'DispatchNo=' + QuotedStr(trim(cxEdtNo.Text));
  tbProDispatchDTTB.Filtered := true;
  ShowFMInfo(sTableId,qyHed);
end;

procedure TProDispatchFM.cxgrdbtblvwProCustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TProDispatchFM.cxgrdbtblvwMatCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARec: TRect;
begin
  inherited;
  if AViewInfo.GridRecord.DisplayTexts[cxgrdbclmnMatSendMode.Index] = '汇总' then
  begin
    ARec := AViewInfo.Bounds;
    ACanvas.canvas.Font.color := clBlue;
    ACanvas.FillRect(ARec)
  end;
end;

procedure TProDispatchFM.cxgrdbtblvwMatCustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TProDispatchFM.cxgrdtbvCustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TProDispatchFM.cxgrdtbvDispatchNumPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('DispatchNum').AsString := DisplayValue;
  GetMatNum;
end;

procedure TProDispatchFM.cxgrdtbvEmpCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  try
    if btSave.Enabled = False then Exit;
    if AButtonIndex = 0 then
    begin
      try
        DeptQFM := TDeptQFM.Create(nil);
        DeptQFM.iSelectKind := 2;
        DeptQFM.ShowModal;
        if DeptQFM.sId <> '' then
        begin
          if qyDet.State = dsBrowse then qyDet.Edit;
          qyDet.FieldByName('ObjectId').AsString := DeptQFM.sId;
          qyDet.FieldByName('ObjectName').AsString := DeptQFM.sName;
        end;
      finally
        DeptQFM.Free;
        DeptQFM := nil;
      end;
    end;
    if AButtonIndex = 1 then
    begin
      try
        PrvQFM := TPrvQFM.Create(nil);
        PrvQFM.iSelectKind := 2; //单选
        PrvQFM.sParam := '外协商';
        PrvQFM.ShowModal;
        if PrvQFM.sId <> '' then
        begin
          if qyDet.State = dsBrowse then qyDet.Edit;
          qyDet.FieldByName('ObjectId').AsString := PrvQFM.sId;
          qyDet.FieldByName('ObjectName').AsString := PrvQFM.sName;
        end;
      finally
        PrvQFM.Free;
        PrvQFM := nil;
      end;
    end;
    if AButtonIndex = 2 then
    begin
      try
        EmpQFM := TEmpQFM.Create(nil);
        EmpQFM.iSelectKind := 2;
        EmpQFM.ShowModal;
        if EmpQFM.sId <> '' then
        begin
          if qyDet.State = dsBrowse then qyDet.Edit;
          qyDet.FieldByName('ObjectId').AsString := EmpQFM.sId;
          qyDet.FieldByName('ObjectName').AsString := EmpQFM.sName;
        end;
      finally
        EmpQFM.Free;
        EmpQFM := nil;
      end;
    end;
  except
  end;
end;

procedure TProDispatchFM.cxgrdtbvItemCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i: Integer;
begin
  if btSave.Enabled = False then Exit;
  try
    ItemQFM := TItemQFM.Create(nil);
    ItemQFM.sParam := '成品半成品';
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
        qyDet.post;
        ItemQFM.qyFind.Next;
      end;
    end;
  finally
    ItemQFM.Free;
    ItemQFM := nil;
  end;
end;

procedure TProDispatchFM.cxgrdtbvItemCodePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
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

procedure TProDispatchFM.cxgrdtbvTechNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  try
    if btSave.Enabled = False then Exit;
    SGeneralFM := TSGeneralFM.Create(nil);
    SGeneralFM.sWhere := ' and a.ItemId=' + QuotedStr(qyDet.FieldByName('ItemId').AsString);
    SGeneralFM.Caption := '产品工序查询';
    SGeneralFM.ShowModal;
    if (SGeneralFM.bHasSelect) and (SGeneralFM.qyFind.RecordCount > 0) then
    begin
      if qyDet.State = dsBrowse then qyDet.Edit;
      qyDet.FieldByName('Ordinal').AsInteger := SGeneralFM.qyFind.FieldByName('工序号').AsInteger;
      qyDet.FieldByName('TopTech').AsString := SGeneralFM.qyFind.FieldByName('上道工序').AsString;
      qyDet.FieldByName('NextTech').AsString := SGeneralFM.qyFind.FieldByName('下道工序').AsString;
      qyDet.FieldByName('TechParam').AsString := SGeneralFM.qyFind.FieldByName('工序属性').AsString;
      qyDet.FieldByName('bFirst').AsBoolean := SGeneralFM.qyFind.FieldByName('是否首道').AsBoolean;
      qyDet.FieldByName('TechName').AsString := SGeneralFM.qyFind.FieldByName('工序名称').AsString;
    end;
  finally
    SGeneralFM.free;
    SGeneralFM := nil;
  end;
end;

procedure TProDispatchFM.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  sFMId := 'ProDispatchFM';
  sFMName := Self.Caption;
  sTableId := 'ProDispatchHDTB';
  inherited;
  if qyWareNum.Active = False then qyWareNum.Open; //一定要 否则Requery要报错
  qyWareNum.Requery();
  GetGrd(Self, cxgrdtbv);
  GetGrd(Self, cxgrdbtblvwMat);
  qyHed.Open;
end;

procedure TProDispatchFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ProDispatchFM := nil;
end;

procedure TProDispatchFM.FormShow(Sender: TObject);
begin
  inherited;
  TextReadOnly(Self, True);
  CxGridStyleReadOnly(cxgrdtbv);
  CxGridStyleReadOnly(cxgrdbtblvwMat);
  cxgrdbtblvwMat.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
end;

procedure TProDispatchFM.mniNCopyDClick(Sender: TObject);
begin
  if cxPgc.ActivePageIndex = 0 then
    CopyCellValue(cxgrdtbv)
  else if cxPgc.ActivePageIndex = 1 then
    CopyCellValue(cxgrdbtblvwMat)
end;

procedure TProDispatchFM.mniNCopyLClick(Sender: TObject);
begin
  if btSave.Enabled = False then Exit;
  if cxPgc.ActivePageIndex = 0 then
    CopyColumnValue(cxgrdtbv)
  else if cxPgc.ActivePageIndex = 1 then
    CopyColumnValue(cxgrdbtblvwMat)
end;

procedure TProDispatchFM.N2Click(Sender: TObject);
begin
  try
    inherited;
    ExeSql('Exec prUpdateProDispatchStop ' + QuotedStr(qyDet.FieldByName('AutoNo').AsString) + ',' + ''''',' + BoolToStr(not qyDet.FieldByName('bStop').AsBoolean));
    btRefClick(Sender);
  except
    ShowWarn('更新失败');
  end;
end;

procedure TProDispatchFM.N3Click(Sender: TObject);
begin
  try
    inherited;
    ExeSql('Exec prUpdateProDispatchComplete ' + QuotedStr(qyDet.FieldByName('AutoNo').AsString) + ',' + ''''',' + BoolToStr(not qyDet.FieldByName('bComplete').AsBoolean));
    btRefClick(Sender);
  except
    ShowWarn('更新失败');
  end;
end;

procedure TProDispatchFM.N4Click(Sender: TObject);
begin
  try
    inherited;
    ExeSql('Exec prUpdateProDispatchStop  '''',' + QuotedStr(qyDet.FieldByName('DispatchNo').AsString) + ',' + BoolToStr(not qyDet.FieldByName('bStop').AsBoolean));
    btRefClick(Sender);
  except
    ShowWarn('更新失败');
  end;
end;

procedure TProDispatchFM.N6Click(Sender: TObject);
begin
  try
    inherited;
    ExeSql('Exec prUpdateProDispatchComplete  '''',' + QuotedStr(qyDet.FieldByName('DispatchNo').AsString) + ',' + BoolToStr(not qyDet.FieldByName('bComplete').AsBoolean));
    btRefClick(Sender);
  except
    ShowWarn('更新失败');
  end;
end;

procedure TProDispatchFM.NCustomGrdClick(Sender: TObject);
begin
  if cxPgc.ActivePageIndex = 0 then
    CustomGrd(cxgrd)
  else if cxPgc.ActivePageIndex = 1 then
    CustomGrd(cxgrdMat)
end;

procedure TProDispatchFM.NDelGrdClick(Sender: TObject);
begin
  if cxPgc.ActivePageIndex = 0 then
    DelGrd(Self, cxgrdtbv)
  else if cxPgc.ActivePageIndex = 1 then
    DelGrd(Self, cxgrdbtblvwMat)
end;

procedure TProDispatchFM.NSaveGrdClick(Sender: TObject);
begin
  if cxPgc.ActivePageIndex = 0 then
    SaveGrd(Self, cxgrdtbv)
  else if cxPgc.ActivePageIndex = 1 then
    SaveGrd(Self, cxgrdbtblvwMat)
end;

procedure TProDispatchFM.qyDetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyDet.FieldByName('DispatchNo').AsString := qyHed.FieldByName('DispatchNo').AsString;
  qyDet.FieldByName('AutoNo').AsString := GetDateAutoNo(sTableId);
  qyDet.FieldByName('iNo').asInteger := qyDet.RecordCount;
end;

procedure TProDispatchFM.qyDetCalcFields(DataSet: TDataSet);
begin
  inherited;
  if qyWareNum.Locate('sInfo', qyDet.FieldByName('ItemId').AsString + qyDet.FieldByName('ProType').AsString + qyDet.FieldByName('Color').AsString, []) then
    qyDet.FieldByName('WareNum').AsFloat := qyWareNum.FieldByName('WareNum').AsFloat
  else
    qyDet.FieldByName('WareNum').AsFloat := 0;
end;

procedure TProDispatchFM.qyDetEmpIdChange(Sender: TField);
begin
  inherited;
  CalcField(qyDet, DataFM.qyEmp, ['EmpId', 'EmpCode', 'EmpName'], ['EmpId', 'EmpCode', 'EmpName']);
end;

procedure TProDispatchFM.qyDetItemIDChange(Sender: TField);
begin
  inherited;
  CalcField(qyDet, DataFM.qyItem, ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'Material', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag'],
    ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'Material', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag']);
end;

procedure TProDispatchFM.qyDetObjectIdChange(Sender: TField);
begin
  inherited;
  CalcField(qyDet, DataFM.qyObject, ['ObjectId', 'ObjectName'], ['ObjectId', 'ObjectName']);
end;

procedure TProDispatchFM.qyDetTechNameChange(Sender: TField);
begin
  inherited;
  GetMat;
end;

procedure TProDispatchFM.qyHedPrintNumChange(Sender: TField);
begin
  inherited;
  ShowFMInfo(sTableId,qyHed);
end;

procedure TProDispatchFM.qyMatAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyMat.FieldByName('DispatchNo').AsString := qyHed.FieldByName('DispatchNo').AsString;
  qyMat.FieldByName('AutoNo').AsString := GetDateAutoNo(sTableId);
  qyMat.FieldByName('DetAutoNo').AsString := qyDet.FieldByName('AutoNo').AsString;
  qyMat.FieldByName('SaleOrderNo').AsString := qyDet.FieldByName('SaleOrderNo').AsString;
  qyMat.FieldByName('SaleOrderId').AsString := qyDet.FieldByName('SaleOrderId').AsString;
  qyMat.FieldByName('ProOrderNo').AsString := qyDet.FieldByName('ProOrderNo').AsString;
  qyMat.FieldByName('ProOrderId').AsString := qyDet.FieldByName('ProOrderId').AsString;
  qyMat.FieldByName('pItemId').AsString := qyDet.FieldByName('ItemId').AsString;
  qyMat.FieldByName('pItemCode').AsString := qyDet.FieldByName('ItemCode').AsString;
  qyMat.FieldByName('pItemName').AsString := qyDet.FieldByName('ItemName').AsString;
  qyMat.FieldByName('TakeObjectId').AsString := qyDet.FieldByName('ObjectId').AsString;
  qyMat.FieldByName('TakeObjectName').AsString := qyDet.FieldByName('ObjectName').AsString;
end;

procedure TProDispatchFM.qyMatCalcFields(DataSet: TDataSet);
begin
  inherited;
  if qyWareNum.Locate('sInfo', qyMat.FieldByName('ItemId').AsString + qyMat.FieldByName('ProType').AsString + qyMat.FieldByName('Color').AsString, []) then
    qyMat.FieldByName('WareNum').AsFloat := qyWareNum.FieldByName('WareNum').AsFloat
  else
    qyMat.FieldByName('WareNum').AsFloat := 0;

end;

procedure TProDispatchFM.qyMatItemIDChange(Sender: TField);
begin
  inherited;
  CalcField(qyMat, DataFM.qyItem, ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'Material', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag', 'SendMode'],
    ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'Material', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag', 'SendMode']);
end;

end.

