unit MatOutPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WareInOutPS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxButtonEdit, cxDBLookupComboBox,
  cxTextEdit, cxMemo, dxSkinsdxBarPainter, frxClass, frxDBSet,
  cxGridCustomPopupMenu, cxGridPopupMenu, Menus, ADODB, dxBar, cxClasses,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGroupBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxPC, StdCtrls, ExtCtrls, dxSkinOffice2010Blue, cxPCdxBarPopupMenu,
  cxRadioGroup, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxSplitter,
  cxButtons, dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine,
  dxBarBuiltInMenu, cxNavigator, cxLabel;

type
  TMatOutFM = class(TWareInOutFM)
    btnBOMMat: TdxBarLargeButton;
    qyTemp: TADOQuery;
    qyBomMat: TADOQuery;
    dsBomMat: TDataSource;
    cxSplitter1: TcxSplitter;
    qyBomMatAutoID: TLargeintField;
    qyBomMatAutoNo: TStringField;
    qyBomMatBillNo: TStringField;
    qyBomMatItemId: TStringField;
    qyBomMatItemCode: TStringField;
    qyBomMatItemName: TStringField;
    qyBomMatItemSpc: TStringField;
    qyBomMatItemPic: TStringField;
    qyBomMatItemUnit: TStringField;
    qyBomMatSubUnit: TStringField;
    qyBomMatItemPYCode: TStringField;
    qyBomMatiFlag: TIntegerField;
    qyBomMatExchRate: TFMTBCDField;
    qyBomMatMainNum: TFMTBCDField;
    qyBomMatRemark: TStringField;
    Panel1: TPanel;
    cxgrd1: TcxGrid;
    cxgrdbtblvw1: TcxGridDBTableView;
    cxgrdbtblvw1ItemCode: TcxGridDBColumn;
    cxgrdbtblvw1ItemName: TcxGridDBColumn;
    cxgrdbtblvw1ItemSpc: TcxGridDBColumn;
    cxgrdbtblvw1ItemPic: TcxGridDBColumn;
    cxgrdbtblvw1ItemUnit: TcxGridDBColumn;
    cxgrdbtblvw1MainNum: TcxGridDBColumn;
    cxgrdbtblvw1Remark: TcxGridDBColumn;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxgrdlvl1: TcxGridLevel;
    Panel2: TPanel;
    cxbtnLeftAdd: TcxButton;
    cxbtnLeftDel: TcxButton;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    qyBomMatColor: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btReferClick(Sender: TObject);
    procedure btnBOMMatClick(Sender: TObject);
    procedure cxgrdbtblvw1ItemCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxEdtNoPropertiesChange(Sender: TObject);
    procedure qyBomMatAfterInsert(DataSet: TDataSet);
    procedure qyBomMatItemIdChange(Sender: TField);
    procedure cxbtnLeftAddClick(Sender: TObject);
    procedure cxbtnLeftDelClick(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mniNCopyDClick(Sender: TObject);
    procedure mniNCopyLClick(Sender: TObject);
  private
    procedure SetEditState();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatOutFM: TMatOutFM;

implementation

uses MatOutProOrderRfPS, BOMMatOutItemQPS, PublicPS, DataPS, MatOutProDispatchRfPS;

{$R *.dfm}

procedure TMatOutFM.SetEditState();
begin
  cxbtnLeftAdd.Enabled := not btEdit.Enabled;
  cxbtnLeftDel.Enabled := not btEdit.Enabled;
end;

procedure TMatOutFM.btAddClick(Sender: TObject);
begin
  inherited;
  SetEditState();
end;

procedure TMatOutFM.btCancelClick(Sender: TObject);
begin
  qyBomMat.CancelBatch();
  qyDet.CancelBatch();
  qyHed.CancelBatch();
  SetButtonState(btAdd, btEdit, btDel, btAddL, btDelL, btSave, btCancel, btRefer, btFind, btExport, btPrint, btCheck, btUnCheck,
    btExit, true, true, true, false, false, false, false, false, true, true, true, true, true, true);
  TextReadOnly(Self, True);
  SetEditState();
end;

procedure TMatOutFM.btEditClick(Sender: TObject);
begin
  inherited;
  SetEditState();
end;

procedure TMatOutFM.btReferClick(Sender: TObject);
var
  i: integer;
begin
  if sProMode = '生产派工单' then
  begin
    try
      MatOutProDispatchRfFM := TMatOutProDispatchRfFM.Create(nil);
      MatOutProDispatchRfFM.btFindClick(self);
      MatOutProDispatchRfFM.ShowModal;
      if MatOutProDispatchRfFM.fFlag = 1 then
      begin
        MatOutProDispatchRfFM.qyFind.Filter := ' bSelect=1';
        MatOutProDispatchRfFM.qyFind.Filtered := true;
        MatOutProDispatchRfFM.qyFind.First;
        for i := 0 to MatOutProDispatchRfFM.qyFind.RecordCount - 1 do
        begin
          if i = 0 then
            qyDet.Edit
          else
            qyDet.Append;
          qyDet.FieldByName('ItemId').AsString := MatOutProDispatchRfFM.qyFind.FieldByName('ItemId').AsString;
          qyDet.FieldByName('ItemCode').AsString := MatOutProDispatchRfFM.qyFind.FieldByName('ItemCode').AsString;
          qyDet.FieldByName('ProType').AsString := MatOutProDispatchRfFM.qyFind.FieldByName('ProType').AsString;
          qyDet.FieldByName('Color').AsString := MatOutProDispatchRfFM.qyFind.FieldByName('Color').AsString;
          qyDet.FieldByName('MainNum').AsFloat := MatOutProDispatchRfFM.qyFind.FieldByName('NoOutNum').AsFloat;
          qyDet.FieldByName('ProOrderNo').AsString := MatOutProDispatchRfFM.qyFind.FieldByName('ProOrderNo').AsString;
          qyDet.FieldByName('ProOrderId').AsString := MatOutProDispatchRfFM.qyFind.FieldByName('ProOrderId').AsString;
          qyDet.FieldByName('DispatchNo').AsString := MatOutProDispatchRfFM.qyFind.FieldByName('DispatchNo').AsString;
          qyDet.FieldByName('DispatchId').AsString := MatOutProDispatchRfFM.qyFind.FieldByName('AutoNO').AsString;
          UpdateData(cxgrdtbv, 'MainNum');
          qyDet.post;
          MatOutProDispatchRfFM.qyFind.Next;
        end;
      end;
    finally
      MatOutProDispatchRfFM.free;
      MatOutProDispatchRfFM := nil;
    end;
  end
  else
  begin
    try
      MatOutProOrderRfFM := TMatOutProOrderRfFM.Create(nil);
      MatOutProOrderRfFM.btFindClick(self);
      MatOutProOrderRfFM.ShowModal;
      if MatOutProOrderRfFM.fFlag = 1 then
      begin
        MatOutProOrderRfFM.qyFind.Filter := ' bSelect=1';
        MatOutProOrderRfFM.qyFind.Filtered := true;
        MatOutProOrderRfFM.qyFind.First;
        for i := 0 to MatOutProOrderRfFM.qyFind.RecordCount - 1 do
        begin
          if i = 0 then
            qyDet.Edit
          else
            qyDet.Append;
          qyDet.FieldByName('ItemId').AsString := MatOutProOrderRfFM.qyFind.FieldByName('ItemId').AsString;
          qyDet.FieldByName('ItemCode').AsString := MatOutProOrderRfFM.qyFind.FieldByName('ItemCode').AsString;
          qyDet.FieldByName('ProType').AsString := MatOutProOrderRfFM.qyFind.FieldByName('ProType').AsString;
          qyDet.FieldByName('MainNum').AsFloat := MatOutProOrderRfFM.qyFind.FieldByName('NoOutNum').AsFloat;
          qyDet.FieldByName('ProOrderNo').AsString := MatOutProOrderRfFM.qyFind.FieldByName('ProOrderNo').AsString;
          qyDet.FieldByName('ProOrderId').AsString := MatOutProOrderRfFM.qyFind.FieldByName('AutoNO').AsString;
          qyDet.post;
          MatOutProOrderRfFM.qyFind.Next;
        end;
      end;
    finally
      MatOutProOrderRfFM.free;
      MatOutProOrderRfFM := nil;
    end;
  end;
end;

procedure TMatOutFM.btSaveClick(Sender: TObject);
begin
  try
    if trim(cxEdtNo.Text) = '' then exit;
    if qyHed.FieldByName('ObjectName').AsString = '' then
    begin
      ShowWarn('请选择发料部门');
      exit;
    end;
    if CheckWareHasMonth(qyHed.FieldByName('BillDate').AsDateTime) then
    begin
      ShowWarn('单据日期所在月份已经做了仓库月结');
      exit;
    end;
    qyHed.UpdateBatch;
    qyDet.UpdateBatch;
    qyBomMat.UpdateBatch;
    TextReadOnly(Self, True);
    if cxEdtEditManName.Text <> '' then
      SetLog(sFMName, trim(cxEdtNo.Text), '修改')
    else
      SetLog(sFMName, trim(cxEdtNo.Text), '添加');
    SetButtonState(btAdd, btEdit, btDel, btAddL, btDelL, btSave, btCancel, btRefer, btFind, btExport, btPrint, btCheck, btUnCheck,
      btExit, true, true, true, false, false, false, false, false, true, true, true, true, true, true);
    TextReadOnly(Self, True);
    SetEditState();
    ShowBox('保存成功!');
  except
    on E: Exception do
    begin
      if pos('不能将值', E.Message) > 0 then
        ShowWarn('请将必填项填写完整!')
      else
        ShowWarn(E.Message);
    end;
  end;
end;

procedure TMatOutFM.cxbtnLeftAddClick(Sender: TObject);
begin
  inherited;
  try
    qyBomMat.Append;
  except
  end;
end;

procedure TMatOutFM.cxbtnLeftDelClick(Sender: TObject);
begin
  inherited;
  qyBomMat.Delete;
end;

procedure TMatOutFM.cxEdtNoPropertiesChange(Sender: TObject);
begin
  inherited;
  with qyBomMat do
  begin
    if Active then close;
    SQL.Clear;
    SQL.Add('select * from BomMatOutDTTB where BillNO=' + Quotedstr(trim(cxEdtNo.Text)) + ' Order by AutoId');
    Open;
  end;
end;

procedure TMatOutFM.cxgrdbtblvw1ItemCodePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i: Integer;
begin
  if btSave.Enabled = False then Exit;
  try
    BOMMatOutItemQFM := TBOMMatOutItemQFM.Create(nil);
    BOMMatOutItemQFM.sParam := '成品';
    BOMMatOutItemQFM.iSelectKind := 1;
    BOMMatOutItemQFM.btFindClick(Sender);
    BOMMatOutItemQFM.ShowModal;
    if BOMMatOutItemQFM.bHasSelect then
    begin
      BOMMatOutItemQFM.qyFind.Filter := ' bSelect=1';
      BOMMatOutItemQFM.qyFind.Filtered := true;
      BOMMatOutItemQFM.qyFind.First;

      for i := 0 to BOMMatOutItemQFM.qyFind.RecordCount - 1 do
      begin
        if (i = 0) then
        begin
          qyBomMat.Edit;
          qyBomMatAfterInsert(qyBomMat);
        end
        else
          qyBomMat.Append;
        qyBomMat.FieldByName('ItemId').AsString := BOMMatOutItemQFM.qyFind.FieldByName('ItemId').AsString;
        qyBomMat.Post;
        BOMMatOutItemQFM.qyFind.Next;
      end;
    end;
  finally
    BOMMatOutItemQFM.Free;
    BOMMatOutItemQFM := nil;
  end;
end;

procedure TMatOutFM.btnBOMMatClick(Sender: TObject);
var
  i, j: Integer;
begin
  if btSave.Enabled = False then Exit;
  qyBomMat.First;
  for i := 0 to qyBomMat.RecordCount - 1 do
  begin
    try
      with qyTemp do
      begin
        if Active then Close;
        SQL.Clear;
        SQL.Add('select ItemID=ChildId,Dosage,WasteRate from ItemBomDTTB where ItemID=' + QuotedStr(qyBomMat.FieldByName('ItemId').AsString));
        Open;
      end;
      qyTemp.First;
      for j := 0 to qyTemp.RecordCount - 1 do
      begin
        if (i = 0) and (j = 0) then
        begin
          qyDet.Edit;
          qyDetAfterInsert(qyDet);
        end
        else
          qyDet.Append;
        qyDet.FieldByName('ItemId').AsString := qyTemp.FieldByName('ItemId').AsString;
        qyDet.FieldByName('MainNum').AsFloat := qyBomMat.fieldByName('MainNum').AsFloat * qyTemp.fieldByName('Dosage').AsFloat * (1 + qyTemp.fieldByName('WasteRate').AsFloat / 100);
        qyDet.FieldByName('Color').AsString := qyBomMat.FieldByName('Color').AsString;
        qyDet.FieldByName('MasterNo').AsString := qyBomMat.FieldByName('AutoNo').AsString;
        UpdateData(cxgrdtbv, 'MainNum');
        qyDet.Post;
        qyTemp.Next;
      end;
    finally
    end;
    qyBomMat.Next;
  end;
end;

procedure TMatOutFM.FormCreate(Sender: TObject);
begin
  sFMId := 'MatOutFM';
  sFMName := Self.Caption;
  sTableId := 'MatOut';
  inherited;
end;

procedure TMatOutFM.FormDestroy(Sender: TObject);
begin
  inherited;
  MatOutFM := nil;
end;

procedure TMatOutFM.FormShow(Sender: TObject);
begin
  inherited;
  SetEditState();
  cxgrdbtblvw1.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
  if sMatOutMode = '按BOM发料' then
  begin
    Panel1.Visible := True;
    cxSplitter1.Visible := True;
    btnBOMMat.Visible := ivAlways;
  end
  else
  begin
    Panel1.Visible := False;
    cxSplitter1.Visible := False;
    //cxSplitter1.CloseSplitter;
    btnBOMMat.Visible := ivNever;
  end;
end;

procedure TMatOutFM.mniNCopyDClick(Sender: TObject);
begin
  inherited;
  CopyCellValue(cxgrdbtblvw1);
end;

procedure TMatOutFM.mniNCopyLClick(Sender: TObject);
begin
  inherited;
  CopyColumnValue(cxgrdbtblvw1);
end;

procedure TMatOutFM.qyBomMatAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyBomMat.FieldByName('BillNO').AsString := qyHed.FieldByName('BillNO').AsString;
  qyBomMat.FieldByName('AutoNo').AsString := GetDateAutoNo(sTableId);
end;

procedure TMatOutFM.qyBomMatItemIdChange(Sender: TField);
begin
  inherited;
  CalcField(qyBomMat, DataFM.qyItem, ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag'],
    ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag']);
end;

end.
