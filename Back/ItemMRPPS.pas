unit ItemMRPPS;

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
  cxButtonEdit, cxMemo;

type
  TItemMRPFM = class(TBaseGrdFM)
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
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
    cxgrdtbvLastNum: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    qyHedAutoNo: TStringField;
    qyHedMrpNo: TStringField;
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
    qyDetMrpNo: TStringField;
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
    cxgrd1: TcxGrid;
    cxgrdbtblvw1: TcxGridDBTableView;
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
    qyProSum: TADOQuery;
    dsProSum: TDataSource;
    qyPro: TADOQuery;
    dsPro: TDataSource;
    qyMatSum: TADOQuery;
    dsMatSum: TDataSource;
    dsMat: TDataSource;
    qyMat: TADOQuery;
    frxPro: TfrxDBDataset;
    frxMatSum: TfrxDBDataset;
    frxMat: TfrxDBDataset;
    cxgrdbtblvw1Column1: TcxGridDBColumn;
    cxgrdbtblvw1Column2: TcxGridDBColumn;
    cxgrd2: TcxGrid;
    cxgrdbtblvw2: TcxGridDBTableView;
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
    cxgrd3: TcxGrid;
    cxgrdbtblvw3: TcxGridDBTableView;
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
    cxgrd4: TcxGrid;
    cxgrdbtblvw4: TcxGridDBTableView;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridDBColumn59: TcxGridDBColumn;
    cxGridDBColumn60: TcxGridDBColumn;
    cxGridDBColumn61: TcxGridDBColumn;
    cxGridDBColumn62: TcxGridDBColumn;
    cxGridDBColumn63: TcxGridDBColumn;
    cxGridDBColumn64: TcxGridDBColumn;
    cxGridDBColumn65: TcxGridDBColumn;
    cxGridDBColumn66: TcxGridDBColumn;
    cxgrdlvl4: TcxGridLevel;
    cxgrdbtblvw4Column1: TcxGridDBColumn;
    cxgrdbtblvw4Column2: TcxGridDBColumn;
    cxgrdbtblvw4Column3: TcxGridDBColumn;
    cxgrdbtblvw4Column4: TcxGridDBColumn;
    cxgrdbtblvw1Column3: TcxGridDBColumn;
    cxgrdbtblvw3Column1: TcxGridDBColumn;
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
    procedure cxgrdtbvItemCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure qyDetAfterInsert(DataSet: TDataSet);
    procedure qyDetItemIDChange(Sender: TField);
    procedure qyHedPrintNumChange(Sender: TField);
    procedure cxgrdtbvProduceNumPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdtbvAdjustNumPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure btFindClick(Sender: TObject);
    procedure btInvoiceClick(Sender: TObject);
    procedure cxgrdbtblvw1CustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure cxgrdbtblvw3CustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure btUnCheckClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ItemMRPFM: TItemMRPFM;

implementation

uses PublicPS, DataPS, ItemQPS, ItemMRPFindPS;
{$R *.dfm}

procedure TItemMRPFM.btAddClick(Sender: TObject);
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
    qyHed.FieldByName('MrpNo').AsString := GetTableNo(sTableId, 'MrpNo');
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

procedure TItemMRPFM.btAddLClick(Sender: TObject);
begin
  inherited;
  qyDet.Append;
end;

procedure TItemMRPFM.btCancelClick(Sender: TObject);
begin
  qyDet.CancelBatch();
  qyHed.CancelBatch();
  TextReadOnly(Self, True);
  inherited;
end;

procedure TItemMRPFM.btDelClick(Sender: TObject);
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
      ExeSql('Delete ItemMrpMatTB where MrpNo=' + QuotedStr(sBiilNo));
      ExeSql('Delete ItemMrpProTB where MrpNo=' + QuotedStr(sBiilNo));
      ExeSql('Delete ItemMrpDTTB where MrpNo=' + QuotedStr(sBiilNo));
      ExeSql('Delete ItemMrpHDTB where MrpNo=' + QuotedStr(sBiilNo));
      with qyHed do
      begin
        if Active then Close;
        SQL.Clear;
        sql.Add('select * from ItemMrpHDTB where IsNull(bMaxAudit,0)=0 ');
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

procedure TItemMRPFM.btDelLClick(Sender: TObject);
begin
  try
    qyDet.Delete;
  except
    ShowBox('删除失败！');
  end;
end;

procedure TItemMRPFM.btEditClick(Sender: TObject);
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

procedure TItemMRPFM.btFindClick(Sender: TObject);
begin
  inherited;
  try
    if not Assigned(ItemMRPFindFM) then
      ItemMRPFindFM := TItemMRPFindFM.Create(Application);
    ItemMRPFindFM.ShowModal;
  finally
    ItemMRPFindFM.Free;
    ItemMRPFindFM := nil
  end;
end;

procedure TItemMRPFM.btInvoiceClick(Sender: TObject);
begin
  try
    inherited;
    SetButtonState(btAdd, btEdit, btDel, btAddL, btDelL, btSave, btCancel, btRefer, btFind, btExport, btPrint, btCheck, btUnCheck,
      btExit, true, true, true, false, false, false, false, false, true, true, true, true, true, true);
    qyHed.Edit;
    qyHed.UpdateBatch;
    qyDet.UpdateBatch;
    qyProSum.UpdateBatch;
    qyMatSum.UpdateBatch;
    TextReadOnly(Self, True);
  //开始分析
    with Data.qyTemp do
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

procedure TItemMRPFM.btSaveClick(Sender: TObject);
var
  sNewNo: string;
  i: Integer;
begin
  try
    qyHed.UpdateBatch;
    qyDet.UpdateBatch;
    qyProSum.UpdateBatch;
    qyMatSum.UpdateBatch;
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
          sNewNo := GetTableNO(sTableId, 'MrpNo');
          if qyHed.FieldByName('MrpNo').AsString = sNewNo then
          begin
            ShowBox('单号有重复!');
            Exit;
          end;
          if qyHed.State = dsBrowse then qyHed.Edit;
          if qyDet.State = dsBrowse then qyDet.Edit;

          qyHed.FieldByName('MrpNo').AsString := sNewNo;
          qyDet.First;
          for i := 0 to qyDet.RecordCount - 1 do
          begin
            if qyDet.State = dsBrowse then qyDet.Edit;
            qyDet.FieldByName('MrpNo').AsString := sNewNo;
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

procedure TItemMRPFM.btUnCheckClick(Sender: TObject);
begin
  inherited;
  AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, -1);
  ShowBillInfo(sTableId, qyHed, LabAuditInfo, LabPrint, LabAudit, LabTemp1, LabTemp2, LabTemp3);
end;

procedure TItemMRPFM.cxEdtNoPropertiesChange(Sender: TObject);
begin
  inherited;
  with qyDet do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from ItemMrpDTTB where MrpNo=' + QuotedStr(trim(cxEdtNo.Text)));
    Open;
  end;
  with qyProSum do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from ItemMrpProTB where IsNull(bSum,0)=1 and MrpNo=' + QuotedStr(trim(cxEdtNo.Text)));
    Open;
  end;
  with qyPro do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from ItemMrpProTB where IsNull(bSum,0)=0 and MrpNo=' + QuotedStr(trim(cxEdtNo.Text)));
    Open;
  end;
  with qyMatSum do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from ItemMrpMatTB where IsNull(bSum,0)=1 and MrpNo=' + QuotedStr(trim(cxEdtNo.Text)));
    Open;
  end;
  with qyMat do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from ItemMrpMatTB where IsNull(bSum,0)=0 and MrpNo=' + QuotedStr(trim(cxEdtNo.Text)));
    Open;
  end;
  ShowBillInfo(sTableId, qyHed, LabAuditInfo, LabPrint, LabAudit, LabTemp1, LabTemp2, LabTemp3);
end;

procedure TItemMRPFM.cxgrdbtblvw1CustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TItemMRPFM.cxgrdbtblvw3CustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TItemMRPFM.cxgrdtbvAdjustNumPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('AdjustNum').AsString := DisplayValue;
  qyDet.FieldByName('FinalNum').AsFloat := DisplayValue + qyDet.FieldByName('ProduceNum').AsFloat;
end;

procedure TItemMRPFM.cxgrdtbvItemCodePropertiesButtonClick(Sender: TObject;
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

procedure TItemMRPFM.cxgrdtbvProduceNumPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('ProduceNum').AsString := DisplayValue;
  qyDet.FieldByName('FinalNum').AsFloat := DisplayValue + qyDet.FieldByName('AdjustNum').AsFloat;
end;

procedure TItemMRPFM.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  sFMId := 'ItemMRPFM';
  sFMName := Self.Caption;
  sTableId := 'ItemMrpHDTB';
  inherited;
  qyHed.Open;
end;

procedure TItemMRPFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ItemMRPFM := nil;
end;

procedure TItemMRPFM.FormShow(Sender: TObject);
begin
  inherited;
  TextReadOnly(Self, True);
end;

procedure TItemMRPFM.qyDetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyDet.FieldByName('MrpNo').AsString := qyHed.FieldByName('MrpNo').AsString;
  qyDet.FieldByName('AutoNo').AsString := GetDateAutoNo(sTableId);
end;

procedure TItemMRPFM.qyDetItemIDChange(Sender: TField);
begin
  inherited;
  CalcField(qyDet, Data.qyItem, ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag'],
    ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag']);
end;

procedure TItemMRPFM.qyHedPrintNumChange(Sender: TField);
begin
  inherited;
  ShowBillInfo(sTableId, qyHed, LabAuditInfo, LabPrint, LabAudit, LabTemp1, LabTemp2, LabTemp3);
end;

end.
