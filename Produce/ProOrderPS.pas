unit ProOrderPS;

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
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu,
  cxNavigator, cxLabel;

type
  TProOrderFM = class(TBaseGrdFM)
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxgrdtbvItemCode: TcxGridDBColumn;
    cxgrdtbvItemName: TcxGridDBColumn;
    cxgrdtbvItemSpc: TcxGridDBColumn;
    cxgrdtbvItemPic: TcxGridDBColumn;
    cxgrdtbvItemUnit: TcxGridDBColumn;
    cxgrdtbvSubUnit: TcxGridDBColumn;
    cxgrdtbvExchRate: TcxGridDBColumn;
    cxgrdtbvProType: TcxGridDBColumn;
    cxgrdtbvsColor: TcxGridDBColumn;
    cxgrdtbvCompactNO: TcxGridDBColumn;
    cxgrdtbvProduceNum: TcxGridDBColumn;
    cxgrdtbvAdjustNum: TcxGridDBColumn;
    cxgrdtbvStorageNum: TcxGridDBColumn;
    cxgrdtbvFinalNum: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    qyHedAutoNo: TStringField;
    qyHedbSelect: TBooleanField;
    qyHedMrpDate: TDateTimeField;
    qyHedbComp: TBooleanField;
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
    lbl1: TLabel;
    cxMoRemark: TcxDBMemo;
    cxPupEdtRemark: TcxDBPopupEdit;
    qyDetAutoNo: TStringField;
    qyDetbSelect: TBooleanField;
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
    qyDetProType: TStringField;
    qyDetColor: TStringField;
    qyDetCompactNO: TStringField;
    qyDetSaleOrderNo: TStringField;
    qyDetSaleOrderId: TStringField;
    qyDetProduceNum: TFMTBCDField;
    qyDetAdjustNum: TFMTBCDField;
    qyDetFinalNum: TFMTBCDField;
    qyDetBeforeNum: TFMTBCDField;
    qyDetMRPResult: TStringField;
    qyDetRemark: TStringField;
    qyDetWareNum: TFMTBCDField;
    qyDetCanUseNum: TFMTBCDField;
    qyDetUseNum: TFMTBCDField;
    cxgrdPro: TcxGrid;
    cxgrdbtblvwPro: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxgrdlvl1: TcxGridLevel;
    frxProSum: TfrxDBDataset;
    qyPro: TADOQuery;
    dsPro: TDataSource;
    qyBcp: TADOQuery;
    dsBcp: TDataSource;
    qyMat: TADOQuery;
    dsMat: TDataSource;
    frxPro: TfrxDBDataset;
    frxMatSum: TfrxDBDataset;
    cxgrdbtblvwProColumn1: TcxGridDBColumn;
    cxgrdbtblvwProColumn2: TcxGridDBColumn;
    cxgrdBcp: TcxGrid;
    cxgrdbtblvwBcp: TcxGridDBTableView;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxgrdlvl2: TcxGridLevel;
    cxgrdMatSum: TcxGrid;
    cxgrdbtblvwMat: TcxGridDBTableView;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxgrdlvl3: TcxGridLevel;
    cxgrdbtblvwProColumn3: TcxGridDBColumn;
    cxgrdbtblvwMatColumn1: TcxGridDBColumn;
    qyHedProOrderNo: TStringField;
    qyDetProOrderNo: TStringField;
    cxgrdtbvColumn1: TcxGridDBColumn;
    qyDetAutoId: TAutoIncField;
    qyDetMaterial: TStringField;
    qyFind: TADOQuery;
    qyFind日期: TDateTimeField;
    qyFind单位: TStringField;
    qyFind单号: TStringField;
    qyFind制单人: TStringField;
    qyFind信息: TStringField;
    dsFind: TDataSource;
    lbl2: TLabel;
    cExbbBillFind: TcxExtLookupComboBox;
    cxgrdDBTableView1: TcxGridDBTableView;
    cxgrdDBTableView1DBColumn: TcxGridDBColumn;
    cxgrdDBTableView1DBColumn3: TcxGridDBColumn;
    cxgrdDBTableView1DBColumn4: TcxGridDBColumn;
    cxgrdDBTableView1Column1: TcxGridDBColumn;
    cxgrdbtblvwBcpColumn1: TcxGridDBColumn;
    qyDetbBom: TStringField;
    cxgrdtbvColumn2: TcxGridDBColumn;
    cxgrdbtblvwMatColumn2: TcxGridDBColumn;
    qyTemp: TADOQuery;
    cxgrdbtblvwMatColumn3: TcxGridDBColumn;
    qyProAutoId: TAutoIncField;
    qyProAutoNo: TStringField;
    qyProbSelect: TBooleanField;
    qyProPId: TStringField;
    qyProCId: TStringField;
    qyProProOrderNo: TStringField;
    qyProItemID: TStringField;
    qyProItemCode: TStringField;
    qyProItemPYCode: TStringField;
    qyProItemName: TStringField;
    qyProItemSpc: TStringField;
    qyProItemPic: TStringField;
    qyProMaterial: TStringField;
    qyProItemUnit: TStringField;
    qyProSubUnit: TStringField;
    qyProiFlag: TIntegerField;
    qyProExchRate: TFMTBCDField;
    qyProItemParam: TStringField;
    qyProItemSource: TStringField;
    qyProProType: TStringField;
    qyProColor: TStringField;
    qyProCompactNO: TStringField;
    qyProCpId: TStringField;
    qyProCpCode: TStringField;
    qyProCpName: TStringField;
    qyProCpProType: TStringField;
    qyProCpNum: TFMTBCDField;
    qyProTopId: TStringField;
    qyProTopCode: TStringField;
    qyProTopName: TStringField;
    qyProTopProType: TStringField;
    qyProTopNum: TFMTBCDField;
    qyProProduceNum: TFMTBCDField;
    qyProAdjustNum: TFMTBCDField;
    qyProWareNum: TFMTBCDField;
    qyProCanUseNum: TFMTBCDField;
    qyProUseNum: TFMTBCDField;
    qyProFinalNum: TFMTBCDField;
    qyProbSum: TBooleanField;
    qyProiLevel: TSmallintField;
    qyProBeforeNum: TFMTBCDField;
    qyProMRPResult: TStringField;
    qyProbDel: TBooleanField;
    qyProRemark: TStringField;
    qyProSaleOrderNo: TStringField;
    qyProSaleOrderId: TStringField;
    qyProbBom: TStringField;
    cxgrdbtblvwProColumn4: TcxGridDBColumn;
    cxTabSheet4: TcxTabSheet;
    cxgrdTech: TcxGrid;
    cxgrdbtblvwTech: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    frxTech: TfrxDBDataset;
    qyTech: TADOQuery;
    dsTech: TDataSource;
    qyTechAutoId: TAutoIncField;
    qyTechAutoNo: TStringField;
    qyTechbSelect: TBooleanField;
    qyTechProOrderNo: TStringField;
    qyTechItemID: TStringField;
    qyTechItemCode: TStringField;
    qyTechItemPYCode: TStringField;
    qyTechItemName: TStringField;
    qyTechItemSpc: TStringField;
    qyTechItemPic: TStringField;
    qyTechMaterial: TStringField;
    qyTechItemUnit: TStringField;
    qyTechSubUnit: TStringField;
    qyTechiFlag: TIntegerField;
    qyTechExchRate: TFMTBCDField;
    qyTechItemParam: TStringField;
    qyTechItemSource: TStringField;
    qyTechProType: TStringField;
    qyTechColor: TStringField;
    qyTechCompactNO: TStringField;
    qyTechSaleOrderNo: TStringField;
    qyTechSaleOrderId: TStringField;
    qyTechOrdinal: TSmallintField;
    qyTechTechName: TStringField;
    qyTechTopTech: TStringField;
    qyTechNextTech: TStringField;
    qyTechTechParam: TStringField;
    qyTechDeptId: TStringField;
    qyTechDeptName: TStringField;
    qyTechbFirst: TBooleanField;
    qyTechbLast: TBooleanField;
    qyTechCurePrice: TFMTBCDField;
    qyTechSpoilPrice: TFMTBCDField;
    qyTechWastePrice: TFMTBCDField;
    qyTechFinalNum: TFMTBCDField;
    qyTechbDel: TBooleanField;
    qyTechRemark: TStringField;
    cxgrdbtblvwTechItemCode: TcxGridDBColumn;
    cxgrdbtblvwTechItemName: TcxGridDBColumn;
    cxgrdbtblvwTechItemSpc: TcxGridDBColumn;
    cxgrdbtblvwTechItemPic: TcxGridDBColumn;
    cxgrdbtblvwTechProType: TcxGridDBColumn;
    cxgrdbtblvwTechColor: TcxGridDBColumn;
    cxgrdbtblvwTechOrdinal: TcxGridDBColumn;
    cxgrdbtblvwTechTechName: TcxGridDBColumn;
    cxgrdbtblvwTechTopTech: TcxGridDBColumn;
    cxgrdbtblvwTechNextTech: TcxGridDBColumn;
    cxgrdbtblvwTechTechParam: TcxGridDBColumn;
    cxgrdbtblvwTechDeptId: TcxGridDBColumn;
    cxgrdbtblvwTechDeptName: TcxGridDBColumn;
    cxgrdbtblvwTechbFirst: TcxGridDBColumn;
    cxgrdbtblvwTechbLast: TcxGridDBColumn;
    cxgrdbtblvwTechFinalNum: TcxGridDBColumn;
    cxgrdbtblvwTechRemark: TcxGridDBColumn;
    qyBom: TADOQuery;
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
    procedure cxgrdtbvAdjustNumPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure btFindClick(Sender: TObject);
    procedure btInvoiceClick(Sender: TObject);
    procedure cxgrdbtblvwProCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure cxgrdbtblvwMatCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure btUnCheckClick(Sender: TObject);
    procedure btReferClick(Sender: TObject);
    procedure cxgrdbtblvwBcpCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure cExbbBillFindPropertiesChange(Sender: TObject);
    procedure btRefClick(Sender: TObject);
    procedure cxGridDBColumn12PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxGridDBColumn27PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure mniNCopyDClick(Sender: TObject);
    procedure mniNCopyLClick(Sender: TObject);
    procedure NCustomGrdClick(Sender: TObject);
    procedure NSaveGrdClick(Sender: TObject);
    procedure NDelGrdClick(Sender: TObject);
    procedure btCheckClick(Sender: TObject);
    procedure cxgrdbtblvwMatDblClick(Sender: TObject);
    procedure qyProAfterInsert(DataSet: TDataSet);
    procedure qyProItemIDChange(Sender: TField);
    procedure qyDetAfterInsert(DataSet: TDataSet);
    procedure cxGridDBColumn1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure qyDetItemIDChange(Sender: TField);
    procedure btExportClick(Sender: TObject);
    procedure cxGridDBColumn44PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbtblvwTechCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure cxgrdtbvItemCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProOrderFM: TProOrderFM;

implementation

uses PublicPS, ControlPublicPS, DataPS, ItemQPS, ProOrderFindPS, ProOrderSaleOrderRfPS;
{$R *.dfm}

procedure TProOrderFM.btAddClick(Sender: TObject);
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
    qyHed.FieldByName('ProOrderNo').AsString := GetTableNo(sTableId, 'ProOrderNo');
    qyHed.FieldByName('AutoNo').AsString := GetDateAutoNo(sTableId);
    qyHed.FieldByName('MrpDate').AsDateTime := StrToDateTime(FormatDateTime('yyyy-mm-dd', SysDateTime));
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

procedure TProOrderFM.btAddLClick(Sender: TObject);
begin
  inherited;
  qyDet.Append;
end;

procedure TProOrderFM.btCancelClick(Sender: TObject);
begin
  qyDet.CancelBatch();
  qyHed.CancelBatch();
  TextReadOnly(Self, True);
  inherited;
end;

procedure TProOrderFM.btCheckClick(Sender: TObject);
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
   { qyDet.First;
    for I := 0 to qyDet.RecordCount - 1 do
    begin
      if (qyDet.FieldByName('bBom').AsString <> '是') then
      begin
        ShowWarn('有记录未建立BOM');
        exit;
      end;
    end; }
    if HasGetMaxAudit(sTableId, qyHed.FieldByName('AuditFlag').asInteger + 1) then
    begin
      if AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.Text), qyHed, 1) then
      begin
        if bMRPMakeRequire then
        begin
          try
            with qyTemp do
            begin
              if Active then Close;
              SQL.Clear;
              SQL.Add('Exec PrProOrderToRequire ' + QuotedStr(Trim(cxEdtNo.text)) + ',1');
              Open;
            end;
          finally
            qyTemp.close;
          end;
        end;
      end;
    end
    else
      AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, 1);
    SetLog(sFMName, trim(cxEdtNo.Text), '审核');
    ShowFMInfo(sTableId,qyHed);
    btRefClick(Self);
  except
    on E: Exception do
      ShowWarn(E.Message);
  end;
end;

procedure TProOrderFM.btDelClick(Sender: TObject);
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
      ExeSql('Delete ProOrderMatTB where ProOrderNo=' + QuotedStr(sBiilNo));
      ExeSql('Delete ProOrderProTB where ProOrderNo=' + QuotedStr(sBiilNo));
      ExeSql('Delete ProOrderTechTB where ProOrderNo=' + QuotedStr(sBiilNo));
      ExeSql('Delete ProOrderDTTB where ProOrderNo=' + QuotedStr(sBiilNo));
      ExeSql('Delete ProOrderHDTB where ProOrderNo=' + QuotedStr(sBiilNo));
      with qyHed do
      begin
        if Active then Close;
        SQL.Clear;
        sql.Add('select * from ProOrderHDTB where IsNull(bMaxAudit,0)=0 ');
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

procedure TProOrderFM.btDelLClick(Sender: TObject);
begin
  try
    qyDet.Delete;
  except
    ShowBox('删除失败！');
  end;
end;

procedure TProOrderFM.btEditClick(Sender: TObject);
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
  inherited;
  qyHed.Edit;
  qyHed.FieldByName('EditMan').AsString := LoginEmpId;
  qyHed.FieldByName('EditManName').AsString := LoginEmpName;
  qyHed.FieldByName('EditDate').AsDateTime := SysDateTime;
end;

procedure TProOrderFM.btExportClick(Sender: TObject);
begin
  if cxPgc.ActivePageIndex = 0 then
    CxExport(cxgrd, '生产订单-分析产品')
  else if cxPgc.ActivePageIndex = 1 then
    CxExport(cxgrdPro, '生产订单-生产成品')
  else if cxPgc.ActivePageIndex = 2 then
    CxExport(cxgrdBcp, '生产订单-生产半成品')
  else if cxPgc.ActivePageIndex = 3 then
    CxExport(cxgrdMatSum, '生产订单-物料汇总')
  else if cxPgc.ActivePageIndex = 4 then
    CxExport(cxgrdMatSum, '生产订单-生产工艺')
end;

procedure TProOrderFM.btFindClick(Sender: TObject);
begin
  inherited;
  try
    if not Assigned(ProOrderFindFM) then
      ProOrderFindFM := TProOrderFindFM.Create(Application);
    ProOrderFindFM.ShowModal;
  finally
    ProOrderFindFM.Free;
    ProOrderFindFM := nil
  end;
end;

procedure TProOrderFM.btInvoiceClick(Sender: TObject);
begin
  try
    inherited;
    SetButtonState(btAdd, btEdit, btDel, btAddL, btDelL, btSave, btCancel, btRefer, btFind, btExport, btPrint, btCheck, btUnCheck,
      btExit, true, true, true, false, false, false, false, false, true, true, true, true, true, true);
    qyHed.Edit;
    qyHed.UpdateBatch;
    qyDet.UpdateBatch;
    qyPro.UpdateBatch;
    qyTech.UpdateBatch;
    qyBcp.UpdateBatch;
    qyMat.UpdateBatch;
    TextReadOnly(Self, True);

    //开始分析
    with DataFM.qyTemp do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add('Exec prItemMrp ' + QuotedStr(Trim(cxEdtNo.text)));
      Open;
    end;
    cxEdtNoPropertiesChange(Sender);
    ShowBox('分析完成');
  except
    on E: Exception do
    begin
      ShowWarn(E.Message);
    end;
  end;
end;

procedure TProOrderFM.btRefClick(Sender: TObject);
begin
  inherited;
  with qyFind do
  begin
    if Active then Close;
    Sql.Clear;
    SQL.Add('exec prBillFind ' + QuotedStr(sTableId));
    Open;
  end;
  cxEdtNoPropertiesChange(Sender);
  ShowFMInfo(sTableId,qyHed);
end;

procedure TProOrderFM.btReferClick(Sender: TObject);
var
  i: integer;
begin
  try
    try
      ProOrderSaleOrderRfFM := TProOrderSaleOrderRfFM.Create(nil);
      ProOrderSaleOrderRfFM.btFindClick(self);
      ProOrderSaleOrderRfFM.ShowModal;
      if ProOrderSaleOrderRfFM.fFlag = 1 then
      begin
        ProOrderSaleOrderRfFM.qyFind.Filter := ' bSelect=1';
        ProOrderSaleOrderRfFM.qyFind.Filtered := true;
        ProOrderSaleOrderRfFM.qyFind.First;
        for i := 0 to ProOrderSaleOrderRfFM.qyFind.RecordCount - 1 do
        begin
          //分析产品
          if i = 0 then
          begin
            qyDet.Edit;
            qyDetAfterInsert(qyDet);
          end
          else
            qyDet.Append;
          qyDet.FieldByName('ItemId').AsString := ProOrderSaleOrderRfFM.qyFind.FieldByName('ItemId').AsString;
          qyDet.FieldByName('ItemCode').AsString := ProOrderSaleOrderRfFM.qyFind.FieldByName('ItemCode').AsString;
          qyDet.FieldByName('ProType').AsString := ProOrderSaleOrderRfFM.qyFind.FieldByName('ProType').AsString;
          qyDet.FieldByName('Color').AsString := ProOrderSaleOrderRfFM.qyFind.FieldByName('Color').AsString;
          qyDet.FieldByName('CompactNo').AsString := ProOrderSaleOrderRfFM.qyFind.FieldByName('CompactNo').AsString;
          qyDet.FieldByName('ProduceNum').AsFloat := ProOrderSaleOrderRfFM.qyFind.FieldByName('NoProOrderNum').AsFloat;
          qyDet.FieldByName('FinalNum').AsFloat := ProOrderSaleOrderRfFM.qyFind.FieldByName('NoProOrderNum').AsFloat;
          qyDet.FieldByName('SaleOrderNo').AsString := ProOrderSaleOrderRfFM.qyFind.FieldByName('SaleOrderNo').AsString;
          qyDet.FieldByName('SaleOrderId').AsString := ProOrderSaleOrderRfFM.qyFind.FieldByName('AutoNo').AsString;
          qyDet.FieldByName('bBom').AsString := ProOrderSaleOrderRfFM.qyFind.FieldByName('bBom').AsString;
          UpdateData(cxgrdtbv, 'ProduceNum');
          qyDet.post;

         { //生成生产成品
          if i = 0 then
          begin
            qyPro.Edit;
            qyProAfterInsert(qyPro);
          end
          else
            qyPro.Append;
          qyPro.FieldByName('ItemId').AsString := ProOrderSaleOrderRfFM.qyFind.FieldByName('ItemId').AsString;
          qyPro.FieldByName('ItemCode').AsString := ProOrderSaleOrderRfFM.qyFind.FieldByName('ItemCode').AsString;
          qyPro.FieldByName('ProType').AsString := ProOrderSaleOrderRfFM.qyFind.FieldByName('ProType').AsString;
          qyPro.FieldByName('Color').AsString := ProOrderSaleOrderRfFM.qyFind.FieldByName('Color').AsString;
          //qyPro.FieldByName('CompactNo').AsString := ProOrderSaleOrderRfFM.qyFind.FieldByName('CompactNo').AsString;
          qyPro.FieldByName('ProduceNum').AsFloat := ProOrderSaleOrderRfFM.qyFind.FieldByName('NoProOrderNum').AsFloat;
          qyPro.FieldByName('FinalNum').AsFloat := ProOrderSaleOrderRfFM.qyFind.FieldByName('NoProOrderNum').AsFloat;
          qyPro.FieldByName('SaleOrderNo').AsString := ProOrderSaleOrderRfFM.qyFind.FieldByName('SaleOrderNo').AsString;
          qyPro.FieldByName('SaleOrderId').AsString := ProOrderSaleOrderRfFM.qyFind.FieldByName('AutoNo').AsString;
          qyPro.FieldByName('bBom').AsString := ProOrderSaleOrderRfFM.qyFind.FieldByName('bBom').AsString;
          UpdateData(cxgrdtbv, 'ProduceNum');
          qyPro.post;  }
          ProOrderSaleOrderRfFM.qyFind.Next;
        end;
        btInvoiceClick(Sender);
      end;
    finally
      ProOrderSaleOrderRfFM.free;
      ProOrderSaleOrderRfFM := nil;
    end;
  except
  end;
end;

procedure TProOrderFM.btSaveClick(Sender: TObject);
var
  sNewNo: string;
  i: Integer;
begin
  try
    qyHed.UpdateBatch;
    qyDet.UpdateBatch;
    qyPro.UpdateBatch;
    qyTech.UpdateBatch;
    qyBcp.UpdateBatch;
    qyMat.UpdateBatch;
    TextReadOnly(Self, True);
    if cxEdtEditManName.Text <> '' then
      SetLog(sFMName, trim(cxEdtNo.Text), '修改')
    else
      SetLog(sFMName, trim(cxEdtNo.Text), '添加');
    inherited;
    btInvoiceClick(Sender);
    btRefClick(Sender);
    //ShowBox('保存成功!');
  except
    on E: Exception do
    begin
      if pos('不能将值', E.Message) > 0 then
        ShowBox('请将必填项填写完整!')
      else if pos('插入重复键', e.Message) > 0 then
      begin
        try
          sNewNo := GetTableNO(sTableId, 'ProOrderNo');
          if qyHed.FieldByName('ProOrderNo').AsString = sNewNo then
          begin
            ShowBox('单号有重复!');
            Exit;
          end;
          if qyHed.State = dsBrowse then qyHed.Edit;
          if qyDet.State = dsBrowse then qyDet.Edit;

          qyHed.FieldByName('ProOrderNo').AsString := sNewNo;
          qyDet.First;
          for i := 0 to qyDet.RecordCount - 1 do
          begin
            if qyDet.State = dsBrowse then qyDet.Edit;
            qyDet.FieldByName('ProOrderNo').AsString := sNewNo;
            qyDet.Next;
          end;
          qyHed.UpdateBatch;
          qyDet.UpdateBatch;
          TextReadOnly(Self, true);
          inherited;
          ShowBox('保存成功!');
        except
          ShowWarn('保存失败!');
        end;
      end;
    end;
  end;
end;

procedure TProOrderFM.btUnCheckClick(Sender: TObject);
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
    if bHaveData(DataFM.qyTemp, 'select StockOrderNo from StockOrderDTTB where RfNo in(select ReqNo from RequireDTTB where ProOrderNo=' + QuotedStr(trim(cxEdtNo.Text)) + ')') <> '' then
    begin
      ShowWarn('生成的请购单已经被采购订单引用!');
      exit;
    end;

    if HasGetMaxAudit(sTableId, qyHed.FieldByName('AuditFlag').AsInteger) then
    begin
      if AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.Text), qyHed, -1) then
      begin
        try
          with qyTemp do
          begin
            if Active then Close;
            SQL.Clear;
            SQL.Add('Exec PrProOrderToRequire ' + QuotedStr(Trim(cxEdtNo.text)) + ',-1');
            Open;
          end;
        finally
          qyTemp.close;
        end;
      end;
    end
    else
      AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, -1);
    SetLog(sFMName, trim(cxEdtNo.Text), '反审核');
    ShowFMInfo(sTableId,qyHed);
    btRefClick(Self);
  except
    on E: Exception do
      ShowWarn(E.Message);
  end;
end;

procedure TProOrderFM.cExbbBillFindPropertiesChange(Sender: TObject);
begin
  inherited;
  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('select * from ProOrderHDTB where ProOrderNo=' + QuotedStr(qyFind.FieldByName('单号').AsString));
    Open;
  end;
end;

procedure TProOrderFM.cxEdtNoPropertiesChange(Sender: TObject);
begin
  inherited;
  with qyDet do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from ProOrderDTTB where ProOrderNo=' + QuotedStr(trim(cxEdtNo.Text)));
    Open;
  end;
  with qyPro do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from ProOrderProTB where IsNull(bDel,0)=0 and  ItemParam=''成品''  and ProOrderNo=' + QuotedStr(trim(cxEdtNo.Text)) + ' order by ItemId');
    Open;
  end;
  with qyBcp do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from ProOrderProTB where IsNull(bDel,0)=0 and ItemParam=''半成品''  and ProOrderNo=' + QuotedStr(trim(cxEdtNo.Text)) + ' order by ItemId');
    Open;
  end;
  with qyMat do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from ProOrderMatTB where IsNull(bDel,0)=0 and  IsNull(bSum,0)=1 and ProOrderNo=' + QuotedStr(trim(cxEdtNo.Text)) + ' order by ItemId');
    Open;
  end;
  with qyTech do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from ProOrderTechTB where IsNull(bDel,0)=0 and  ProOrderNo=' + QuotedStr(trim(cxEdtNo.Text)) + ' order by ItemId,ProType,Color,Ordinal');
    Open;
  end;
  ShowFMInfo(sTableId,qyHed);
end;

procedure TProOrderFM.cxgrdbtblvwProCustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TProOrderFM.cxgrdbtblvwTechCustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TProOrderFM.cxgrdbtblvwBcpCustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TProOrderFM.cxgrdbtblvwMatCustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TProOrderFM.cxgrdbtblvwMatDblClick(Sender: TObject);
begin
  inherited;
  BillView('RequireHDTB', 'select * from RequireHDTB where ReqNo in(select ReqNo from RequireDTTB where ProOrderId=' + QuotedStr(qyMat.FieldByName('AutoNo').AsString) + ')');
end;

procedure TProOrderFM.cxgrdtbvAdjustNumPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  if DisplayValue = '' then
    DisplayValue := 0;
  if qyDet.State = dsBrowse then qyDet.Edit;
  qyDet.FieldByName('AdjustNum').AsString := DisplayValue;
  qyDet.FieldByName('FinalNum').AsFloat := DisplayValue + qyDet.FieldByName('ProduceNum').AsFloat;
end;

procedure TProOrderFM.cxgrdtbvItemCodePropertiesButtonClick(Sender: TObject;
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

procedure TProOrderFM.cxGridDBColumn12PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  if DisplayValue = '' then
    DisplayValue := 0;
  if qyPro.State = dsBrowse then qyPro.Edit;
  qyPro.FieldByName('AdjustNum').AsString := DisplayValue;
  qyPro.FieldByName('FinalNum').AsFloat := DisplayValue + qyPro.FieldByName('ProduceNum').AsFloat;
end;

procedure TProOrderFM.cxGridDBColumn1PropertiesButtonClick(Sender: TObject;
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
          qyPro.Edit;
          qyProAfterInsert(qyPro);
        end
        else
          qyPro.Append;
        qyPro.FieldByName('ItemId').AsString := ItemQFM.qyFind.FieldByName('ItemId').AsString;
        qyPro.FieldByName('ItemCode').AsString := ItemQFM.qyFind.FieldByName('ItemCode').AsString;
        qyPro.FieldByName('ItemPYCode').AsString := ItemQFM.qyFind.FieldByName('ItemPYCode').AsString;
        qyPro.post;
        ItemQFM.qyFind.Next;
      end;
    end;
  finally
    ItemQFM.Free;
    ItemQFM := nil;
  end;
end;

procedure TProOrderFM.cxGridDBColumn27PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  if DisplayValue = '' then
    DisplayValue := 0;
  if qyBcp.State = dsBrowse then qyBcp.Edit;
  qyBcp.FieldByName('AdjustNum').AsString := DisplayValue;
  qyBcp.FieldByName('FinalNum').AsFloat := DisplayValue + qyBcp.FieldByName('ProduceNum').AsFloat;
end;

procedure TProOrderFM.cxGridDBColumn44PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  if DisplayValue = '' then
    DisplayValue := 0;
  if qyMat.State = dsBrowse then qyMat.Edit;
  qyMat.FieldByName('AdjustNum').AsString := DisplayValue;
  qyMat.FieldByName('FinalNum').AsFloat := DisplayValue + qyMat.FieldByName('ProduceNum').AsFloat;
end;

procedure TProOrderFM.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  sFMId := 'ProOrderFM';
  sFMName := Self.Caption;
  sTableId := 'ProOrderHDTB';
  inherited;
  GetGrd(Self, cxgrdtbv);
  GetGrd(Self, cxgrdbtblvwPro);
  GetGrd(Self, cxgrdbtblvwBcp);
  GetGrd(Self, cxgrdbtblvwMat);
  GetGrd(Self, cxgrdbtblvwTech);
  qyHed.Open;
end;

procedure TProOrderFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ProOrderFM := nil;
end;

procedure TProOrderFM.FormShow(Sender: TObject);
begin
  inherited;
  TextReadOnly(Self, True);
  cxgrdbtblvwPro.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
  cxgrdbtblvwBcp.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
  cxgrdbtblvwMat.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
  cxgrdbtblvwTech.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
  with qyFind do
  begin
    if Active then Close;
    Sql.Clear;
    SQL.Add('exec prBillFind ' + QuotedStr(sTableId));
    Open;
  end;
end;

procedure TProOrderFM.mniNCopyDClick(Sender: TObject);
begin
  if cxPgc.ActivePageIndex = 0 then
    CopyCellValue(cxgrdtbv)
  else if cxPgc.ActivePageIndex = 1 then
    CopyCellValue(cxgrdbtblvwPro)
  else if cxPgc.ActivePageIndex = 2 then
    CopyCellValue(cxgrdbtblvwBcp)
  else if cxPgc.ActivePageIndex = 3 then
    CopyCellValue(cxgrdbtblvwMat)
  else if cxPgc.ActivePageIndex = 4 then
    CopyCellValue(cxgrdbtblvwTech)
end;

procedure TProOrderFM.mniNCopyLClick(Sender: TObject);
begin
  if cxPgc.ActivePageIndex = 0 then
    CopyColumnValue(cxgrdtbv)
  else if cxPgc.ActivePageIndex = 1 then
    CopyColumnValue(cxgrdbtblvwPro)
  else if cxPgc.ActivePageIndex = 2 then
    CopyColumnValue(cxgrdbtblvwBcp)
  else if cxPgc.ActivePageIndex = 3 then
    CopyColumnValue(cxgrdbtblvwMat)
  else if cxPgc.ActivePageIndex = 4 then
    CopyColumnValue(cxgrdbtblvwTech)
end;

procedure TProOrderFM.NCustomGrdClick(Sender: TObject);
begin
  if cxPgc.ActivePageIndex = 0 then
    CustomGrd(cxgrd)
  else if cxPgc.ActivePageIndex = 1 then
    CustomGrd(cxgrdPro)
  else if cxPgc.ActivePageIndex = 2 then
    CustomGrd(cxgrdBcp)
  else if cxPgc.ActivePageIndex = 3 then
    CustomGrd(cxgrdMatSum)
  else if cxPgc.ActivePageIndex = 4 then
    CustomGrd(cxgrdTech)
end;

procedure TProOrderFM.NDelGrdClick(Sender: TObject);
begin
  if cxPgc.ActivePageIndex = 0 then
    DelGrd(Self, cxgrdtbv)
  else if cxPgc.ActivePageIndex = 1 then
    DelGrd(Self, cxgrdbtblvwPro)
  else if cxPgc.ActivePageIndex = 2 then
    DelGrd(Self, cxgrdbtblvwBcp)
  else if cxPgc.ActivePageIndex = 3 then
    DelGrd(Self, cxgrdbtblvwMat)
  else if cxPgc.ActivePageIndex = 4 then
    DelGrd(Self, cxgrdbtblvwTech)
end;

procedure TProOrderFM.NSaveGrdClick(Sender: TObject);
begin
  if cxPgc.ActivePageIndex = 0 then
    SaveGrd(Self, cxgrdtbv)
  else if cxPgc.ActivePageIndex = 1 then
    SaveGrd(Self, cxgrdbtblvwPro)
  else if cxPgc.ActivePageIndex = 2 then
    SaveGrd(Self, cxgrdbtblvwBcp)
  else if cxPgc.ActivePageIndex = 3 then
    SaveGrd(Self, cxgrdbtblvwMat)
  else if cxPgc.ActivePageIndex = 4 then
    SaveGrd(Self, cxgrdbtblvwTech)
end;

procedure TProOrderFM.qyDetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyDet.FieldByName('ProOrderNo').AsString := qyHed.FieldByName('ProOrderNo').AsString;
  qyDet.FieldByName('AutoNo').AsString := GetDateAutoNo(sTableId);
end;

procedure TProOrderFM.qyDetItemIDChange(Sender: TField);
begin
  inherited;
  CalcField(qyDet, DataFM.qyItem, ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'Material', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag'],
    ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'Material', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag']);
  if not qyBom.Active then qyBom.Open;
  if qyDet.Locate('ItemId', qyBom.FieldByName('ItemId').AsString, []) then
  begin
    if qyDet.State=dsBrowse then  qyDet.Edit;
    qyDet.FieldByName('bBom').AsString := '是'
  end
  else
  begin
    if qyDet.State=dsBrowse then  qyDet.Edit;
    qyDet.FieldByName('bBom').AsString := ''
  end;
end;

procedure TProOrderFM.qyHedPrintNumChange(Sender: TField);
begin
  inherited;
  ShowFMInfo(sTableId,qyHed);
end;

procedure TProOrderFM.qyProAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyPro.FieldByName('ProOrderNo').AsString := qyHed.FieldByName('ProOrderNo').AsString;
  qyPro.FieldByName('AutoNo').AsString := GetDateAutoNo(sTableId);
end;

procedure TProOrderFM.qyProItemIDChange(Sender: TField);
begin
  inherited;
  CalcField(qyPro, DataFM.qyItem, ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'Material', 'ItemParam', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag', 'ItemSource'],
    ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'Material', 'ItemParam', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag', 'ItemSource']);
end;

end.

