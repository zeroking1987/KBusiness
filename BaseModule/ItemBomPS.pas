unit ItemBomPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BasePS, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinsdxBarPainter, DB, ADODB, dxBar, cxClasses, frxClass, frxDBSet,
  StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxSplitter,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, cxContainer, cxTextEdit, cxDBEdit,
  cxMaskEdit, cxButtonEdit, cxDropDownEdit, cxMemo, ADOInt, cxDBLookupComboBox,
  Menus, cxGridCustomPopupMenu, cxGridPopupMenu, Clipbrd, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxTLData, cxDBTL,
  dxSkinOffice2010Blue, cxCheckBox, cxNavigator, cxLabel, cxDBLabel,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu;

type
  TItemBomFM = class(TBaseFM)
    pnlTitle: TPanel;
    LabTitle: TLabel;
    LabPrint: TLabel;
    LabAudit: TLabel;
    LabTemp1: TLabel;
    LabTemp2: TLabel;
    LabTemp3: TLabel;
    pnl2: TPanel;
    pnl3: TPanel;
    dsDet: TDataSource;
    qyDet: TADOQuery;
    cxPgc: TcxPageControl;
    cxtbsht1: TcxTabSheet;
    cxgrd: TcxGrid;
    cxgrdtbv: TcxGridDBTableView;
    cxgrdlev: TcxGridLevel;
    qyHedAutoID: TLargeintField;
    qyHedBillNo: TStringField;
    qyHedBillDate: TDateTimeField;
    qyHedItemID: TStringField;
    qyHedItemCode: TStringField;
    qyHedProType: TStringField;
    qyHedItemVer: TStringField;
    qyHedbMRP: TBooleanField;
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
    qyDetAutoID: TLargeintField;
    qyDetBillNo: TStringField;
    qyDetItemID: TStringField;
    qyDetItemCode: TStringField;
    qyDetProType: TStringField;
    qyDetItemVer: TStringField;
    qyDetChildId: TStringField;
    qyDetChildCode: TStringField;
    qyDetChildVer: TStringField;
    qyDetDosage: TFMTBCDField;
    qyDetSubDosage: TFMTBCDField;
    qyDetWasteRate: TFMTBCDField;
    qyDetiFlag: TSmallintField;
    qyDetDrawDept: TStringField;
    qyDetTechName: TStringField;
    qyDetbKeyChild: TBooleanField;
    qyDetbReplace: TBooleanField;
    qyDetbDefault: TBooleanField;
    qyDetbUse: TBooleanField;
    qyDetReplaceItem: TStringField;
    qyDetRemark: TStringField;
    lbl1: TLabel;
    cxEdtNo: TcxDBTextEdit;
    pnlInfo: TPanel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    LabAuditInfo: TLabel;
    cxEdtMakeManName: TcxDBTextEdit;
    cxEdtMakeDate: TcxDBTextEdit;
    cxEdtEditManName: TcxDBTextEdit;
    cxEdtEditDate: TcxDBTextEdit;
    cxEdtAuditManName: TcxDBTextEdit;
    cxEdtAuditDate: TcxDBTextEdit;
    cxEdtAuditFlag: TcxDBTextEdit;
    lbl9: TLabel;
    lbl10: TLabel;
    cxBt2: TcxDBButtonEdit;
    lbl11: TLabel;
    cxEdt1: TcxDBTextEdit;
    qyHedItemName: TStringField;
    qyHedItemSpc: TStringField;
    lbl12: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxgrdtbvChildCode: TcxGridDBColumn;
    cxgrdtbvChildName: TcxGridDBColumn;
    cxgrdtbvChildSpc: TcxGridDBColumn;
    cxgrdtbvDosage: TcxGridDBColumn;
    cxgrdtbvWasteRate: TcxGridDBColumn;
    cxgrdtbvDrawDept: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    qyHedItemUnit: TStringField;
    lbl13: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    lbl14: TLabel;
    cxMoRemark: TcxDBMemo;
    cxPupEdtRemark: TcxDBPopupEdit;
    cxgrdtbvColumn1: TcxGridDBColumn;
    qyDetChildPYCode: TStringField;
    cxgrdtbvColumn2: TcxGridDBColumn;
    strngfldDetChildProType: TStringField;
    strngfldDetDrawDeptName: TStringField;
    cxgrdtbvColumn3: TcxGridDBColumn;
    cxgrdpmn1: TcxGridPopupMenu;
    qyBand: TADOQuery;
    dsBand: TDataSource;
    strngfldBandPId: TStringField;
    strngfldBandCid: TStringField;
    strngfldBandItemId: TStringField;
    strngfldBandItemCode: TStringField;
    strngfldBandChildId: TStringField;
    strngfldBandChildCode: TStringField;
    strngfldBandItemName: TStringField;
    strngfldBandItemSpc: TStringField;
    strngfldBandItemUnit: TStringField;
    strngfldBandItemSource: TStringField;
    strngfldBandProType: TStringField;
    qyBandDosage: TFMTBCDField;
    qyBandSubDosage: TFMTBCDField;
    qyBandWasteRate: TFMTBCDField;
    strngfldBandTechName: TStringField;
    strngfldBandDrawDept: TStringField;
    strngfldBandDeptName: TStringField;
    strngfldBandRemark: TStringField;
    qyBandiLevel: TIntegerField;
    pnl1: TPanel;
    lstBand: TcxDBTreeList;
    cxdbtrlstclmnDBTreeList1ChildCode: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1ItemName: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1ItemSpc: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1ItemUnit: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1ItemSource: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1ProType: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1Dosage: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1SubDosage: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1WasteRate: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1TechName: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1DrawDept: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1DeptName: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1iLevel: TcxDBTreeListColumn;
    cxspltr1: TcxSplitter;
    Panel1: TPanel;
    Label1: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    qyBandBillNo: TStringField;
    Label3: TLabel;
    cxdbTopBillNo: TcxDBTextEdit;
    pmLayout: TPopupMenu;
    mniNCopyD: TMenuItem;
    mniNCopyL: TMenuItem;
    mniN1: TMenuItem;
    NCustomGrd: TMenuItem;
    NSaveGrd: TMenuItem;
    NDelGrd: TMenuItem;
    qyDetColor: TStringField;
    qyDetChildColor: TStringField;
    qyDetChildName: TStringField;
    qyDetChildSpc: TStringField;
    qyDetChildPic: TStringField;
    qyDetChildUnit: TStringField;
    qyDetChildSubUnit: TStringField;
    qyDetChildiFlag: TSmallintField;
    qyDetChildMaterial: TStringField;
    qyDetChildExchrate: TFMTBCDField;
    cxgrdtbvColumn4: TcxGridDBColumn;
    cxgrdtbvColumn5: TcxGridDBColumn;
    cxgrdtbvColumn6: TcxGridDBColumn;
    cxgrdtbvColumn7: TcxGridDBColumn;
    cxgrdtbvColumn8: TcxGridDBColumn;
    cxgrdtbvColumn9: TcxGridDBColumn;
    Label4: TLabel;
    cxdbItemId: TcxDBTextEdit;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    cxgrdtbvColumn10: TcxGridDBColumn;
    cxDBCheckBox1: TcxDBCheckBox;
    qyHedColor: TStringField;
    qyHedbVirtual: TBooleanField;
    LabTemp4: TLabel;
    LabTemp5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btAddLClick(Sender: TObject);
    procedure btDelClick(Sender: TObject);
    procedure btDelLClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure btUnCheckClick(Sender: TObject);
    procedure cxEdtNoPropertiesChange(Sender: TObject);
    procedure cxBt2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdtbvColumn2PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qyDetAfterInsert(DataSet: TDataSet);
    procedure qyHedCalcFields(DataSet: TDataSet);
    procedure qyDetCalcFields(DataSet: TDataSet);
    procedure btCancelClick(Sender: TObject);
    procedure cxgrdtbvChildCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure qyDetChildIdChange(Sender: TField);
    procedure btCheckClick(Sender: TObject);
    procedure cxgrdtbvDrawDeptPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdtbvCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure lstBandClick(Sender: TObject);
    procedure mniNCopyDClick(Sender: TObject);
    procedure mniNCopyLClick(Sender: TObject);
    procedure NCustomGrdClick(Sender: TObject);
    procedure NDelGrdClick(Sender: TObject);
    procedure NSaveGrdClick(Sender: TObject);
    procedure cxgrdtbvFocusedItemChanged(Sender: TcxCustomGridTableView;
      APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure cxgrdtbvDosagePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdtbvColumn9PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxdbTopBillNoPropertiesChange(Sender: TObject);
    procedure btInvoiceClick(Sender: TObject);
    procedure btReferClick(Sender: TObject);
    procedure btRefClick(Sender: TObject);
    procedure cxgrdtbvColumn10PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    sFoucseFieldName: string;
    { Private declarations }
  public
    { Public declarations }
    sNewBillNo: string;
  end;

var
  ItemBomFM: TItemBomFM;

implementation
uses PublicPS, DataPS, ItemQPS, DeptQPS, ItemBomQPS, SGeneralPS;

{$R *.dfm}

procedure TItemBomFM.btAddClick(Sender: TObject);
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
    qyHed.FieldByName('MakeDate').AsDateTime := SysDateTime;
    qyHed.FieldByName('AuditFlag').AsInteger := 0;
    //qyDet.Append;
  except
    on E: Exception do
      ShowWarn(e.Message);
  end;
end;

procedure TItemBomFM.btAddLClick(Sender: TObject);
begin
  try
    if qyHed.FieldByName('ItemId').AsString = '' then
    begin
      ShowBox('请先选择母件！');
      Exit;
    end;
    qyDet.Append;
  except
  end;
end;

procedure TItemBomFM.btCancelClick(Sender: TObject);
begin
  qyDet.CancelBatch();
  qyHed.CancelBatch();
  TextReadOnly(Self, True);
  cxEdtNoPropertiesChange(Sender);
  inherited;
end;

procedure TItemBomFM.btCheckClick(Sender: TObject);
begin
  //inherited;
  AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, 1);
  ShowBillInfo(sTableId, qyHed, LabAuditInfo, LabPrint, LabAudit, LabTemp1, LabTemp2, LabTemp3, LabTemp4, LabTemp5);
end;

procedure TItemBomFM.btDelClick(Sender: TObject);
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
      qyDet.First;
      for i := 0 to qyDet.RecordCount - 1 do
      begin
        qyDet.Delete;
        qyDet.Next;
      end;
      qyDet.UpdateBatch;
      qyHed.Delete;
      qyHed.UpdateBatch;
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

procedure TItemBomFM.btDelLClick(Sender: TObject);
begin
  try
    qyDet.Delete;
  except
    ShowWarn('删除失败！');
  end;
end;

procedure TItemBomFM.btEditClick(Sender: TObject);
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
  lstBand.OptionsData.Editing := False;
  qyHed.Edit;
  qyHed.FieldByName('EditMan').AsString := LoginEmpId;
  qyHed.FieldByName('EditManName').AsString := LoginEmpName;
  qyHed.FieldByName('EditDate').AsDateTime := SysDateTime;
end;

procedure TItemBomFM.btInvoiceClick(Sender: TObject);
begin
  inherited;
  if qyDet.IsEmpty then
  begin
    ShowWarn('该产品还未建立BOM');
    Exit;
  end;
  ItemBomQFM.CopyFromItemId := qyHed.FieldByName('ItemId').AsString;
  ItemBomQFM.CopyFromItemName := qyHed.FieldByName('ItemName').AsString;
  ShowBox('复制成功!');
end;

procedure TItemBomFM.btRefClick(Sender: TObject);
begin
  inherited;
  sNewBillNo := qyHed.FieldByName('BillNo').AsString;
  ItemBomQFM.btFindClick(Sender);
  cxdbTopBillNoPropertiesChange(Sender);
end;

procedure TItemBomFM.btReferClick(Sender: TObject);
var sToItemId: string;
begin
  inherited;
  if ItemBomQFM.CopyFromItemId = '' then
  begin
    ShowBox('还未复制');
    Exit;
  end;
  btSaveClick(Sender);
  if ShowDlg('确实要将<' + ItemBomQFM.CopyFromItemName + '>的BOM结构复制给<' + qyHed.FieldByName('ItemName').AsString + '> 的吗.这会删除其原有BOM结构?') then
  begin
    try
      sToItemId := qyHed.FieldByName('ItemId').AsString;
      with DataFM.qyTemp do
      begin
        if Active then Close;
        SQL.Clear;
        SQL.Add('Exec prBomCopy ' + QuotedStr(ItemBomQFM.CopyFromItemId) + ',' + QuotedStr(qyHed.FieldByName('ItemId').AsString));
        Open;
        ShowBox(Fields[0].AsString);
      end;
    finally
      DataFM.qyTemp.close;
    end;
    //为了能够通过ItemId获取新的BillNo
    with qyHed do
    begin
      if Active then Close;
      sql.Clear;
      sql.Add('select * from ItemBomHDTB where ItemId=' + QuotedStr(sToItemId));
      Open;
    end;
    btRefClick(Sender);
  end;
end;

procedure TItemBomFM.btSaveClick(Sender: TObject);
var
  sNewNo: string;
  i: Integer;
begin
  try
   { qyDet.First;
    for I := 0 to qyDet.RecordCount-1 do
    begin
      if bHaveData(DataFM.qyTemp, 'select BillNo from ItemBomDTTB where ItemId=' + QuotedStr(qyDet.FieldByName('ChildId').AsString)) <> '' then
      begin
        ShowWarn('子件  <' + qyDet.FieldByName('ChildName').AsString + '> 会造成BOM死循环');
        Exit;
      end;
      qyDet.Next;
    end;   }

    qyHed.UpdateBatch;
    qyDet.UpdateBatch;
    TextReadOnly(Self, True);
    cxEdtNoPropertiesChange(Sender);
    if cxEdtEditManName.Text <> '' then
      SetLog(sFMName, trim(cxEdtNo.Text), '修改')
    else
      SetLog(sFMName, trim(cxEdtNo.Text), '添加');
    btRefClick(Sender);
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
          if qyHed.FieldByName('BillNo').AsString = sNewNo then
          begin
            ShowBox('插入重复数据!');
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

          inherited;
          ShowBox('保存成功!');
        except
          ShowError('保存失败!');
        end;
      end;
    end;
  end;
end;

procedure TItemBomFM.btUnCheckClick(Sender: TObject);
begin
  inherited;
  AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, -1);
  ShowBillInfo(sTableId, qyHed, LabAuditInfo, LabPrint, LabAudit, LabTemp1, LabTemp2, LabTemp3, LabTemp4, LabTemp5);
end;

procedure TItemBomFM.cxBt2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if btSave.Enabled = False then Exit;
  try
    ItemQFM := TItemQFM.Create(nil);
    ItemQFM.sParam := '成品半成品';
    ItemQFM.iSelectKind := 2;
    ItemQFM.ShowModal;
    if ItemQFM.bHasSelect then
    begin
      qyHed.FieldByName('ItemId').AsString := ItemQFM.qyFind.FieldByName('ItemId').AsString;
      qyHed.FieldByName('ItemCode').AsString := ItemQFM.qyFind.FieldByName('ItemCode').AsString;
    end;
  finally
    ItemQFM.Free;
    ItemQFM := nil;
  end;
end;

procedure TItemBomFM.cxdbTopBillNoPropertiesChange(Sender: TObject);
begin
  inherited;
  with qyBand do
  begin
    if active then close;
    sql.Clear;
    if sNewBillNo <> '' then
      sql.Add('Exec prBomOpen ' + QuotedStr(sNewBillNo))
    else
      sql.Add('Exec prBomOpen ' + QuotedStr(Trim(cxdbTopBillNo.Text)));
    Open;
    lstBand.FullExpand;
  end;
  with qyHed do
  begin
    if Active then Close;
    sql.Clear;
    if sNewBillNo <> '' then
      sql.Add('select * from ItemBomHDTB where BillNo=' + QuotedStr(sNewBillNo))
    else
      sql.Add('select * from ItemBomHDTB where BillNo=' + QuotedStr(Trim(cxdbTopBillNo.Text)));
    Open;
  end;
end;

procedure TItemBomFM.cxEdtNoPropertiesChange(Sender: TObject);
begin
  inherited;
  cxBt2.Hint := qyHed.FieldByName('ItemId').AsString + '  ' + qyHed.FieldByName('ItemName').AsString;
  with qyDet do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from ItemBomDTTB where BillNo=' + QuotedStr(trim(cxEdtNo.Text)));
    Open;
  end;
  if DataFM.qyPyCode.Active = false then DataFM.qyPyCode.Open;
  ShowBillInfo(sTableId, qyHed, LabAuditInfo, LabPrint, LabAudit, LabTemp1, LabTemp2, LabTemp3,LabTemp4,LabTemp5);
end;

procedure TItemBomFM.cxgrdtbvChildCodePropertiesButtonClick(Sender: TObject;
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
        qyDet.FieldByName('ChildId').AsString := ItemQFM.qyFind.FieldByName('ItemId').AsString;
        qyDet.FieldByName('ChildCode').AsString := ItemQFM.qyFind.FieldByName('ItemCode').AsString;
        qyDet.FieldByName('ChildPYCode').AsString := ItemQFM.qyFind.FieldByName('ItemPYCode').AsString;
        UpdateData(cxgrdtbv, 'Dosage');
        qyDet.post;
        ItemQFM.qyFind.Next;
      end;
    end;
  finally
    ItemQFM.Free;
    ItemQFM := nil;
  end;
end;

procedure TItemBomFM.cxgrdtbvColumn10PropertiesButtonClick(Sender: TObject;
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
      qyDet.FieldByName('TechName').AsString := SGeneralFM.qyFind.FieldByName('工序名称').AsString;
    end;
  finally
    SGeneralFM.free;
    SGeneralFM := nil;
  end;
end;

procedure TItemBomFM.cxgrdtbvColumn2PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if DisplayValue = '' then Exit;
  if DataFM.qyItem.Locate('ItemPYCode', DisplayValue, []) then
    qyDet.FieldByName('ChildId').AsString := DataFM.qyItem.FieldByName('ItemId').AsString
  else
  begin
    ErrorText := '无效的拼音码,请按ESC键取消修改';
    qyDet.FieldByName('ChildId').AsString := '';
    Error := true;
  end;
end;

procedure TItemBomFM.cxgrdtbvColumn9PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := false;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('SubDosage').AsFloat := DisplayValue;
  if qyDet.FieldByName('ChildiFlag').asInteger = 1 then
    qyDet.FieldByName('Dosage').AsFloat := DisplayValue / qyDet.FieldByName('ChildExchRate').AsFloat
  else
  begin
    if qyDet.FieldByName('ChildExchRate').AsFloat <> 0 then
      qyDet.FieldByName('Dosage').AsFloat := DisplayValue * qyDet.FieldByName('ChildExchRate').AsFloat
  end;
end;

procedure TItemBomFM.cxgrdtbvCustomDrawIndicatorCell(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
  var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TItemBomFM.cxgrdtbvDosagePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('Dosage').AsString := DisplayValue;
  if qyDet.FieldByName('ChildiFlag').AsInteger = 1 then
    qyDet.FieldByName('SubDosage').AsFloat := DisplayValue * qyDet.FieldByName('ChildExchRate').AsFloat
  else
  begin
    if qyDet.FieldByName('ChildExchRate').AsFloat <> 0 then
      qyDet.FieldByName('SubDosage').AsFloat := DisplayValue / qyDet.FieldByName('ChildExchRate').AsFloat
  end;
end;

procedure TItemBomFM.cxgrdtbvDrawDeptPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  try
    if btSave.Enabled = False then Exit;
    try
      DeptQFM := TDeptQFM.Create(nil);
      DeptQFM.iSelectKind := 2;
      DeptQFM.ShowModal;
      if qyDet.State = dsBrowse then qyDet.Edit;
      qyDet.FieldByName('DrawDept').AsString := DeptQFM.sId;
    finally
      DeptQFM.Free;
      DeptQFM := nil;
    end;
  except
  end;
end;

procedure TItemBomFM.cxgrdtbvFocusedItemChanged(Sender: TcxCustomGridTableView;
  APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  inherited;
  sFoucseFieldName := cxgrdtbv.Columns[(AFocusedItem as TcxGridDBColumn).Index].DataBinding.FieldName;
end;

procedure TItemBomFM.FormCreate(Sender: TObject);
begin
  sFMId := 'ItemBomFM';
  sFMName := Self.Caption;
  sTableId := 'ItemBomHDTB';
  inherited;
  qyHed.Open;
end;

procedure TItemBomFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ItemBomFM := nil;
end;

procedure TItemBomFM.FormShow(Sender: TObject);
begin
  inherited;
  TextReadOnly(Self, True);
  //cxspltr1.CloseSplitter;
  cxdbTopBillNoPropertiesChange(Sender);
  GetGrd(Self, cxgrdtbv);
  cxgrdtbv.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
end;

procedure TItemBomFM.lstBandClick(Sender: TObject);
begin
  inherited;
  with qyHed do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from ItemBomHDTB where BillNo=' + QuotedStr(qyBand.FieldByName('BillNo').AsString));
    Open;
  end;
end;

procedure TItemBomFM.mniNCopyDClick(Sender: TObject);
var
  j, k: Integer;
begin
  try
    k := cxgrdtbv.Controller.FocusedItem.Index;
    j := cxgrdtbv.Controller.FocusedRow.Index;
    Clipboard.AsText := trim(cxgrdtbv.DataController.GetRowValue(cxgrdtbv.DataController.GetRowInfo(j), k));
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

procedure TItemBomFM.mniNCopyLClick(Sender: TObject);
begin
  try
    if btSave.Enabled = False then exit;
    CopyColumnValue(cxgrdtbv);
  except
  end;
end;

procedure TItemBomFM.NCustomGrdClick(Sender: TObject);
begin
  inherited;
  CustomGrd(cxgrd);
end;

procedure TItemBomFM.NDelGrdClick(Sender: TObject);
begin
  inherited;
  DelGrd(Self, cxgrdtbv);
end;

procedure TItemBomFM.NSaveGrdClick(Sender: TObject);
begin
  inherited;
  SaveGrd(Self, cxgrdtbv);
end;

procedure TItemBomFM.qyDetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyDet.FieldByName('BillNo').AsString := qyHed.FieldByName('BillNo').AsString;
  qyDet.FieldByName('ItemId').AsString := qyHed.FieldByName('ItemId').AsString;
  qyDet.FieldByName('ItemCode').AsString := qyHed.FieldByName('ItemCode').AsString;
  qyDet.FieldByName('ProType').AsString := qyHed.FieldByName('ProType').AsString;
  qyDet.FieldByName('ItemVer').AsString := qyHed.FieldByName('ItemVer').AsString;
  qyDet.FieldByName('Dosage').AsFloat := 1;
  qyDet.FieldByName('WasteRate').AsFloat := 0;
end;

procedure TItemBomFM.qyDetCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyDet, DataFM.qyDept, ['DrawDept', 'DrawDeptName'], ['DeptId', 'DeptName']);
end;

procedure TItemBomFM.qyDetChildIdChange(Sender: TField);
begin
  inherited;
  CalcField(qyDet, DataFM.qyItem, ['ChildId', 'ChildCode', 'ChildPYCode', 'ChildName', 'ChildSpc', 'ChildPic', 'ChildUnit', 'ChildSubUnit', 'ChildExchrate', 'ChildiFlag', 'ChildMaterial'], ['ItemId', 'ItemCode', 'ItemPYCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemUnit', 'SubUnit', 'Exchrate', 'iFlag', 'Material']);
end;

procedure TItemBomFM.qyHedCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyHed, DataFM.qyItem, ['ItemId', 'ItemName', 'ItemSpc', 'ItemUnit'], ['ItemId', 'ItemName', 'ItemSpc', 'ItemUnit']);
end;

end.
