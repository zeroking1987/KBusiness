unit ItemSwitchPS;

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
  cxPCdxBarPopupMenu, dxSkinOffice2010Blue, cxCheckBox, cxSplitter, cxRadioGroup,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu,
  cxNavigator;

type
  TItemSwitchFM = class(TBaseGrdFM)
    cxBtnOutWare: TcxDBButtonEdit;
    cxgrdbclmnItemCode: TcxGridDBColumn;
    cxgrdbclmnItemPYCode: TcxGridDBColumn;
    cxgrdbclmnItemName: TcxGridDBColumn;
    cxgrdbclmnItemSpc: TcxGridDBColumn;
    cxgrdbclmnItemUnit: TcxGridDBColumn;
    cxgrdbclmnProType: TcxGridDBColumn;
    cxgrdbclmnSwitchNum: TcxGridDBColumn;
    cxgrdbclmnMovePrice: TcxGridDBColumn;
    cxgrdbclmnRemark: TcxGridDBColumn;
    cxgrdbclmnMoveMoney: TcxGridDBColumn;
    cxgrdbclmnTaxPrice: TcxGridDBColumn;
    cxgrdbclmnTaxRate: TcxGridDBColumn;
    cxgrdbclmnAllMoney: TcxGridDBColumn;
    qyWareNum: TADOQuery;
    cxgrdbclmnColumn4: TcxGridDBColumn;
    cxgrdbclmnColumn5: TcxGridDBColumn;
    cxgrdbclmnColumn6: TcxGridDBColumn;
    lbl1: TLabel;
    cxBtnInWare: TcxDBButtonEdit;
    lbl5: TLabel;
    cxMoRemark: TcxDBMemo;
    cxPupEdtRemark: TcxDBPopupEdit;
    dxbrpmn1: TdxBarPopupMenu;
    dxbrbtn1: TdxBarButton;
    dxbrbtn2: TdxBarButton;
    qyDet2: TADOQuery;
    frxDet2: TfrxDBDataset;
    dsDet2: TDataSource;
    cxDetAutoNo: TcxDBTextEdit;
    qyTemp: TADOQuery;
    qyHedAutoNo: TStringField;
    qyHedSwitchNo: TStringField;
    qyHedbSelect: TBooleanField;
    qyHedSwitchDate: TDateTimeField;
    qyHedOutWare: TStringField;
    qyHedInWare: TStringField;
    qyHedbPrint: TBooleanField;
    qyHedPrintNum: TIntegerField;
    qyHedSubjoinNo: TStringField;
    qyHedSubjoinTableId: TStringField;
    qyHedMakeDate: TDateTimeField;
    qyHedMakeMan: TStringField;
    qyHedMakeManName: TStringField;
    qyHedAuditFlag: TSmallintField;
    qyHedAuditMan: TStringField;
    qyHedAuditManName: TStringField;
    qyHedAuditDate: TStringField;
    qyHedbMaxAudit: TBooleanField;
    qyHedMaxAuditDate: TDateTimeField;
    qyHedEditMan: TStringField;
    qyHedEditManName: TStringField;
    qyHedEditDate: TDateTimeField;
    qyHedFinaMan: TStringField;
    qyHedFinaDate: TDateTimeField;
    qyHedYearMon: TStringField;
    qyHedPzWord: TStringField;
    qyHedPzNo: TStringField;
    qyHedPzId: TStringField;
    qyHedRemark: TStringField;
    qyDetAutoNo: TStringField;
    qyDetSwitchNo: TStringField;
    qyDetItemId: TStringField;
    qyDetItemCode: TStringField;
    qyDetItemName: TStringField;
    qyDetItemSpc: TStringField;
    qyDetItemPic: TStringField;
    qyDetItemUnit: TStringField;
    qyDetSubUnit: TStringField;
    qyDetItemPYCode: TStringField;
    qyDetiFlag: TIntegerField;
    qyDetExchRate: TFMTBCDField;
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
    qyDetSwitchNum: TFMTBCDField;
    qyDetSwitchPrice: TFMTBCDField;
    qyDetTaxPrice: TFMTBCDField;
    qyDetSwitchMoney: TFMTBCDField;
    qyDetSubNum: TFMTBCDField;
    qyDetSubPrice: TFMTBCDField;
    qyDetSubTaxPrice: TFMTBCDField;
    qyDetSubMoney: TFMTBCDField;
    qyDetTaxRate: TFMTBCDField;
    qyDetTaxMoney: TFMTBCDField;
    qyDetAllMoney: TFMTBCDField;
    qyDetRemark: TStringField;
    qyDet2AutoNo: TStringField;
    qyDet2SwitchNo: TStringField;
    qyDet2DetAutoNo: TStringField;
    qyDet2ItemId: TStringField;
    qyDet2ItemCode: TStringField;
    qyDet2ItemName: TStringField;
    qyDet2ItemSpc: TStringField;
    qyDet2ItemPic: TStringField;
    qyDet2ItemUnit: TStringField;
    qyDet2SubUnit: TStringField;
    qyDet2ItemPYCode: TStringField;
    qyDet2iFlag: TIntegerField;
    qyDet2ExchRate: TFMTBCDField;
    qyDet2ProType: TStringField;
    qyDet2Color: TStringField;
    qyDet2BatchNo: TStringField;
    qyDet2PlaceNo: TStringField;
    qyDet2CompactNo: TStringField;
    qyDet2ObjectId: TStringField;
    qyDet2SjNo: TStringField;
    qyDet2sOrderNo: TStringField;
    qyDet2TechName: TStringField;
    qyDet2InDate: TStringField;
    qyDet2PState: TStringField;
    qyDet2TempNo: TStringField;
    qyDet2SwitchNum: TFMTBCDField;
    qyDet2SwitchPrice: TFMTBCDField;
    qyDet2TaxPrice: TFMTBCDField;
    qyDet2SwitchMoney: TFMTBCDField;
    qyDet2SubNum: TFMTBCDField;
    qyDet2SubPrice: TFMTBCDField;
    qyDet2SubTaxPrice: TFMTBCDField;
    qyDet2SubMoney: TFMTBCDField;
    qyDet2TaxRate: TFMTBCDField;
    qyDet2TaxMoney: TFMTBCDField;
    qyDet2AllMoney: TFMTBCDField;
    qyDet2Remark: TStringField;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    qyHedAutoId: TAutoIncField;
    qyHedSFlag: TSmallintField;
    qyDetAutoId: TAutoIncField;
    qyDet2AutoId: TAutoIncField;
    cxRgpSignFlag: TcxDBRadioGroup;
    qyHedInWareName: TStringField;
    qyHedOutWareName: TStringField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxgrd1: TcxGrid;
    cxgrdbtblvw1: TcxGridDBTableView;
    cxgrdbclmncxgrdbtblvw1ItemCode: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1ItemName: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1ItemSpc: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1ItemPic: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1ItemUnit: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1SubUnit: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1ExchRate: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1MoveNum: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1MovePrice: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1TaxPrice: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1MoveMoney: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvw1Remark: TcxGridDBColumn;
    cxgrdlvl1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    Panel1: TPanel;
    cxbtnLeftAdd: TcxButton;
    cxbtnLeftDel: TcxButton;
    Panel2: TPanel;
    cxbtnRightAdd: TcxButton;
    cxbtnRightDel: TcxButton;
    cxgrdtbvColumn1: TcxGridDBColumn;
    cxgrdbtblvw1Column1: TcxGridDBColumn;
    cxgrdbtblvw1Column2: TcxGridDBColumn;
    procedure btAddClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qyHedCalcFields(DataSet: TDataSet);
    procedure btSaveClick(Sender: TObject);
    procedure cxEdtNoPropertiesChange(Sender: TObject);
    procedure cxgrdbclmnItemCodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btDelClick(Sender: TObject);
    procedure btUnCheckClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure cxgrdbclmnOrderNumPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbclmnOrderPricePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbclmnTaxPricePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbclmnTaxRatePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure qyDetAfterInsert(DataSet: TDataSet);
    procedure cxBtnOutWarePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxBtnInWarePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btCheckClick(Sender: TObject);
    procedure btRefClick(Sender: TObject);
    procedure dxbrbtn1Click(Sender: TObject);
    procedure dxbrbtn2Click(Sender: TObject);
    procedure qyDet2AfterInsert(DataSet: TDataSet);
    procedure qyHedPrintNumChange(Sender: TField);
    procedure cxDetAutoNoPropertiesChange(Sender: TObject);
    procedure cxbtnLeftAddClick(Sender: TObject);
    procedure cxbtnLeftDelClick(Sender: TObject);
    procedure cxbtnRightAddClick(Sender: TObject);
    procedure cxbtnRightDelClick(Sender: TObject);
    procedure qyDetItemIdChange(Sender: TField);
    procedure qyDet2ItemIdChange(Sender: TField);
    procedure cxgrdbclmncxgrdbtblvw1ItemCodePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxgrdbtblvw1CustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure cxgrdbclmnProTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdtbvColumn1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdbtblvw1Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdbtblvw1Column2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    procedure SetEditState();
    { Private declarations }
  public
    { Public declarations }
  end;
var
  ItemSwitchFM: TItemSwitchFM;

implementation

uses PublicPS, ControlPublicPS, DataPS, ItemQPS, WareQPS, ItemSwitchFindPS;
{$R *.dfm}

procedure TItemSwitchFM.SetEditState();
begin
  cxbtnLeftAdd.Enabled := not btEdit.Enabled;
  cxbtnLeftDel.Enabled := not btEdit.Enabled;
  cxbtnRightAdd.Enabled := not btEdit.Enabled;
  cxbtnRightDel.Enabled := not btEdit.Enabled;
end;

procedure TItemSwitchFM.btAddClick(Sender: TObject);
begin
  try
    if (bRight) and (bAdd = false) then
    begin
      ShowWarn('你没有本单据的添加权限,不能操作');
      exit;
    end;
    TextReadOnly(Self, false);
    inherited;
    SetEditState();
    qyHed.Append;
    qyHed.FieldByName('SwitchNo').AsString := GetTableNo(sTableId, 'SwitchNo');
    qyHed.FieldByName('SwitchDate').AsDateTime := StrToDateTime(FormatDateTime('yyyy-mm-dd', SysDateTime));
    qyHed.FieldByName('AutoNo').AsString := GetDateAutoNo(sTableId);
    qyHed.FieldByName('SFlag').AsInteger := 1;
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

procedure TItemSwitchFM.btCancelClick(Sender: TObject);
begin
  qyDet2.CancelBatch();
  qyDet.CancelBatch();
  qyHed.CancelBatch();
  TextReadOnly(Self, True);
  inherited;
  SetEditState();
end;

procedure TItemSwitchFM.btCheckClick(Sender: TObject);
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

    if CheckWareHasMonth(qyHed.FieldByName('SwitchDate').AsDateTime) then
    begin
      ShowWarn('单据日期所在月份已经做了仓库月结,你不能对该月数据再在进行操作');
      exit;
    end;

    if HasGetMaxAudit(sTableId, qyHed.FieldByName('AuditFlag').asInteger + 1) then
    begin
      try
        with DataFM.qyTemp do
        begin
          if Active then Close;
          SQL.Clear;
          SQL.Add('Exec PrCheckItemSwitchNum ' + QuotedStr(Trim(cxEdtNo.text)) + ',1,' + QuotedStr(IntToStr(qyHed.FieldByName('SFlag').AsInteger)));
          Open;
        end;

        if DataFM.qyTemp.FieldByName('CheckResult').AsString <> '' then
        begin
          ShowWarn(DataFM.qyTemp.FieldByName('CheckResult').AsString + ' 库存不足,不能审核');
          Exit;
        end;
      finally
        DataFM.qyTemp.close;
      end;
      if AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.Text), qyHed, 1) then
      begin
        try
          with DataFM.qyTemp do
          begin
            if Active then Close;
            SQL.Clear;
            SQL.Add('Exec PrItemSwitchAudit ' + QuotedStr(Trim(cxEdtNo.text)) + ',1,' + QuotedStr(IntToStr(qyHed.FieldByName('SFlag').AsInteger)));
            Open;
          end;
        finally
          DataFM.qyTemp.close;
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

procedure TItemSwitchFM.btDelClick(Sender: TObject);
var
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
      ExeSql('Delete ItemSwitchDT2TB where SwitchNo=' + QuotedStr(sBiilNo));
      ExeSql('Delete ItemSwitchDTTB where SwitchNo=' + QuotedStr(sBiilNo));
      ExeSql('Delete ItemSwitchHDTB where SwitchNo=' + QuotedStr(sBiilNo));
      with qyHed do
      begin
        if Active then Close;
        SQL.Clear;
        sql.Add('select * from ItemSwitchHDTB where IsNull(bMaxAudit,0)=0 ');
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

procedure TItemSwitchFM.btEditClick(Sender: TObject);
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
      if (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SwitchPrice') or
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
    SetEditState();
  end;
  qyHed.Edit;
  qyHed.FieldByName('EditMan').AsString := LoginEmpId;
  qyHed.FieldByName('EditManName').AsString := LoginEmpName;
  qyHed.FieldByName('EditDate').AsDateTime := SysDateTime;
end;

procedure TItemSwitchFM.btFindClick(Sender: TObject);
begin
  inherited;
  try
    if not Assigned(ItemSwitchFindFM) then
      ItemSwitchFindFM := TItemSwitchFindFM.Create(Application);
    ItemSwitchFindFM.dsFind := dsHed;
    ItemSwitchFindFM.cxgrdtbv.DataController.DataSource := dsHed;
    ItemSwitchFindFM.ShowModal;
  finally
    ItemSwitchFindFM.Free;
    ItemSwitchFindFM := nil
  end;
end;

procedure TItemSwitchFM.btRefClick(Sender: TObject);
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

procedure TItemSwitchFM.btSaveClick(Sender: TObject);
var
  sNewNo: string;
  i: Integer;
begin
  try
    if cxBtnOutWare.Text = '' then
    begin
      ShowBox('请先选择发出仓库');
      Exit;
    end;
    if cxBtnInWare.Text = '' then
    begin
      ShowBox('请先选择调入仓库');
      Exit;
    end;
    qyDet2.Filter := '';
    qyDet2.Filtered := False;

    qyHed.UpdateBatch;
    qyDet.UpdateBatch;
    qyDet2.UpdateBatch;
    TextReadOnly(Self, True);
    if cxEdtEditManName.Text <> '' then
      SetLog(sFMName, trim(cxEdtNo.Text), '修改')
    else
      SetLog(sFMName, trim(cxEdtNo.Text), '添加');
    inherited;
    SetEditState();
    ShowBox('保存成功!');
  except
    on E: Exception do
    begin
      if pos('不能将值', E.Message) > 0 then
        ShowBox('请将必填项填写完整!')
      else if pos('插入重复键', e.Message) > 0 then
      begin
        try
          sNewNo := GetTableNO(sTableId, 'SwitchNo');
          if qyHed.FieldByName('MoveNo').AsString = sNewNo then
          begin
            ShowBox('有数据重复!');
            Exit;
          end;
          if qyHed.State = dsBrowse then qyHed.Edit;
          if qyDet.State = dsBrowse then qyDet.Edit;

          qyHed.FieldByName('SwitchNo').AsString := sNewNo;
          qyDet.First;
          for i := 0 to qyDet.RecordCount - 1 do
          begin
            if qyDet.State = dsBrowse then qyDet.Edit;
            qyDet.FieldByName('SwitchNo').AsString := sNewNo;
            qyDet.Next;
          end;
          qyHed.UpdateBatch;
          qyDet.UpdateBatch;
          qyDet2.UpdateBatch;
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

procedure TItemSwitchFM.btUnCheckClick(Sender: TObject);
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

    if CheckWareHasMonth(qyHed.FieldByName('SwitchDate').AsDateTime) then
    begin
      ShowWarn('单据日期所在月份已经做了仓库月结,你不能对该月数据在进行操作');
      exit;
    end;
    if HasGetMaxAudit(sTableId, qyHed.FieldByName('AuditFlag').AsInteger) then
    begin
      try
        with DataFM.qyTemp do
        begin
          if Active then Close;
          SQL.Clear;
          SQL.Add('Exec PrCheckItemSwitchNum ' + QuotedStr(Trim(cxEdtNo.text)) + ',-1,' + QuotedStr(IntToStr(qyHed.FieldByName('SFlag').AsInteger)));
          Open;
        end;

        if DataFM.qyTemp.FieldByName('CheckResult').AsString <> '' then
        begin
          ShowWarn(DataFM.qyTemp.FieldByName('CheckResult').AsString + ' 库存不足，不能反审核');
          Exit;
        end;
      finally
        DataFM.qyTemp.close;
      end;
      if AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.Text), qyHed, -1) then
      begin
        try
          with DataFM.qyTemp do
          begin
            if Active then Close;
            SQL.Clear;
            SQL.Add('Exec PrItemSwitchAudit ' + QuotedStr(Trim(cxEdtNo.text)) + ',-1,' + QuotedStr(IntToStr(qyHed.FieldByName('SFlag').AsInteger)));
            Open;
          end;
        finally
          DataFM.qyTemp.close;
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

procedure TItemSwitchFM.cxBtnInWarePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  WareSelect(btSave.Enabled, qyHed, 'InWare', 2);
end;

procedure TItemSwitchFM.cxBtnOutWarePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  WareSelect(btSave.Enabled, qyHed, 'OutWare', 2);
end;

procedure TItemSwitchFM.cxbtnLeftAddClick(Sender: TObject);
begin
  inherited;
  try
    qyDet.Append;
  except
  end;
end;

procedure TItemSwitchFM.cxbtnLeftDelClick(Sender: TObject);
var i: Integer;
begin
  try
    qyDet2.First;
    for i := 0 to qyDet2.RecordCount - 1 do
    begin
      qyDet2.Delete;
      qyDet2.Next;
    end;
    qyDet.Delete;
  except
    ShowWarn('删除失败！');
  end;
end;

procedure TItemSwitchFM.cxbtnRightAddClick(Sender: TObject);
begin
  inherited;
  try
    qyDet2.Append;
  except
  end;
end;

procedure TItemSwitchFM.cxbtnRightDelClick(Sender: TObject);
begin
  inherited;
  try
    if not qyDet2.IsEmpty then
      qyDet2.Delete;
  except
  end;
end;

procedure TItemSwitchFM.cxDetAutoNoPropertiesChange(Sender: TObject);
begin
  inherited;
  if not qyDet.fieldByName('AutoNo').IsNull then
  begin
    qyDet2.Filter := 'DetAutoNo=' + QuotedStr(qyDet.fieldByName('AutoNo').AsString);
    qyDet2.Filtered := true;
  end;
end;

procedure TItemSwitchFM.cxEdtNoPropertiesChange(Sender: TObject);
begin
  inherited;
  with qyDet do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from ItemSwitchDTTB where SwitchNo=' + QuotedStr(trim(cxEdtNo.Text)));
    Open;
  end;
  with qyDet2 do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from ItemSwitchDT2TB where SwitchNo=' + QuotedStr(trim(cxEdtNo.Text)));
    Open;
  end;
  if DataFM.qyPyCode.Active = false then DataFM.qyPyCode.Open;
  ShowFMInfo(sTableId,qyHed);
end;

procedure TItemSwitchFM.cxgrdbclmncxgrdbtblvw1ItemCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  i: Integer;
begin
  if not btSave.Enabled then Exit;
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
          qyDet2.Edit;
          qyDet2AfterInsert(qyDet2);
        end
        else
          qyDet2.Append;
        qyDet2.FieldByName('ItemId').AsString := ItemQFM.qyFind.FieldByName('ItemId').AsString;
        qyDet2.post;
        ItemQFM.qyFind.Next;
      end;
    end;
  finally
    ItemQFM.Free;
    ItemQFM := nil;
  end;
end;

procedure TItemSwitchFM.cxgrdbclmnItemCodePropertiesButtonClick(Sender: TObject;
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

procedure TItemSwitchFM.cxgrdbclmnOrderNumPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('SwitchNum').AsString := DisplayValue;
  qyDet.FieldByName('SwitchMoney').AsFloat := DisplayValue * qyDet.FieldByName('SwitchPrice').AsFloat;
  qyDet.FieldByName('AllMoney').AsFloat := DisplayValue * qyDet.FieldByName('TaxPrice').AsFloat;
  qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('SwitchMoney').AsFloat;
  if qyDet.FieldByName('iFlag').AsInteger = 1 then
    qyDet.FieldByName('SubNum').AsFloat := DisplayValue * qyDet.FieldByName('ExchRate').AsFloat
  else
  begin
    if qyDet.FieldByName('ExchRate').AsFloat <> 0 then
      qyDet.FieldByName('SubNum').AsFloat := DisplayValue / qyDet.FieldByName('ExchRate').AsFloat
  end;
end;

procedure TItemSwitchFM.cxgrdbclmnOrderPricePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := False;
  if DisplayValue = '' then
    DisplayValue := 0;
  qyDet.FieldByName('SwitchPrice').AsString := DisplayValue;
  qyDet.FieldByName('TaxPrice').AsFloat := DisplayValue * (1 + qyDet.FieldByName('TaxRate').AsFloat / 100);
  qyDet.FieldByName('SwitchMoney').AsFloat := qyDet.FieldByName('SwitchNum').AsFloat * DisplayValue;
  qyDet.FieldByName('AllMoney').AsFloat := qyDet.FieldByName('SwitchNum').AsFloat * qyDet.FieldByName('TaxPrice').AsFloat;
  qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('SwitchMoney').AsFloat;
end;

procedure TItemSwitchFM.cxgrdbclmnProTypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  ProTypeSelect(btSave.Enabled, qyDet, 'ProType', 2);
end;

procedure TItemSwitchFM.cxgrdbclmnTaxPricePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  try
    inherited;
    Error := False;
    if DisplayValue = '' then
      DisplayValue := 0;
    qyDet.FieldByName('TaxPrice').AsFloat := DisplayValue;
    qyDet.FieldByName('SwitchPrice').AsFloat := DisplayValue / (1 + qyDet.FieldByName('TaxRate').AsFloat / 100);
    qyDet.FieldByName('SwitchMoney').AsFloat := qyDet.FieldByName('SwitchNum').AsFloat * (DisplayValue / (1 + qyDet.FieldByName('TaxRate').AsFloat / 100));
    qyDet.FieldByName('AllMoney').AsFloat := qyDet.FieldByName('SwitchNum').AsFloat * DisplayValue;
    qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('SwitchMoney').AsFloat;
  except
  end;
end;

procedure TItemSwitchFM.cxgrdbclmnTaxRatePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  try
    inherited;
    Error := False;
    if DisplayValue = '' then
      DisplayValue := 0;
    qyDet.FieldByName('TaxRate').AsFloat := DisplayValue;
    qyDet.FieldByName('TaxPrice').AsFloat := qyDet.FieldByName('SwitchPrice').AsFloat * (1 + DisplayValue / 100);
    qyDet.FieldByName('SwitchMoney').AsFloat := qyDet.FieldByName('SwitchNum').AsFloat * qyDet.FieldByName('SwitchPrice').AsFloat;
    qyDet.FieldByName('AllMoney').AsFloat := qyDet.FieldByName('SwitchNum').AsFloat * qyDet.FieldByName('TaxPrice').AsFloat;
    qyDet.FieldByName('TaxMoney').AsFloat := qyDet.FieldByName('AllMoney').AsFloat - qyDet.FieldByName('SwitchMoney').AsFloat;
  except
  end;
end;

procedure TItemSwitchFM.cxgrdbtblvw1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  ProtypeSelect(btSave.Enabled, qyDet2, 'Protype', 2);
end;

procedure TItemSwitchFM.cxgrdbtblvw1Column2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  ColorSelect(btSave.Enabled, qyDet2, 'Color', 2);
end;

procedure TItemSwitchFM.cxgrdbtblvw1CustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TItemSwitchFM.cxgrdtbvColumn1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  ColorSelect(btSave.Enabled, qyDet, 'Color', 2);
end;

procedure TItemSwitchFM.dxbrbtn1Click(Sender: TObject);
begin
  inherited;
  BillView('OtherIn', 'select * from WareInOutHDTB where WKindId=''ItemSwitchIn'' and SubjoinNo=' + QuotedStr(qyHed.FieldByName('SwitchNo').AsString));
end;

procedure TItemSwitchFM.dxbrbtn2Click(Sender: TObject);
begin
  inherited;
  BillView('OtherOut', 'select * from WareInOutHDTB where WKindId=''ItemSwitchOut'' and SubjoinNo=' + QuotedStr(qyHed.FieldByName('SwitchNo').AsString));
end;

procedure TItemSwitchFM.FormCreate(Sender: TObject);
begin
  sFMId := 'ItemSwitchFM';
  sFMName := Self.Caption;
  sTableId := 'ItemSwitch';
  inherited;
  if qyWareNum.Active = False then qyWareNum.Open; //一定要 否则Requery要报错
  qyWareNum.Requery();
  with qyHed do
  begin
    if Active then close;
    SQL.Clear;
    SQL.Add('select * from ItemSwitchHDTB where isnull(bMaxAudit,0)=0 ');
    if (bRight) and (bFindPart = false) then
      SQL.Add(' and MakeMan=' + Quotedstr(LoginEmpId));
    Open;
  end;
end;

procedure TItemSwitchFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ItemSwitchFM := nil;
end;

procedure TItemSwitchFM.FormShow(Sender: TObject);
var i: Integer;
begin
  inherited;
  SetEditState();
  cxgrdbtblvw1.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
  TextReadOnly(Self, True);
  if (bRight) then
  begin
    for i := 0 to cxgrdtbv.ColumnCount - 1 do
    begin
      if (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SwitchPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'TaxPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'TaxRate') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SwitchMoney') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubTaxPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubMoney') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'AllMoney') then
        cxgrdtbv.Columns[i].Visible := bShowPrice;
    end;
  end;
end;

procedure TItemSwitchFM.qyDet2AfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyDet2.FieldByName('SwitchNo').AsString := qyHed.FieldByName('SwitchNo').AsString;
  qyDet2.FieldByName('AutoNo').AsString := GetDateAutoNo(sTableId);
  qyDet2.FieldByName('DetAutoNo').AsString := qyDet.FieldByName('AutoNo').AsString;
  qyDet2.FieldByName('TaxRate').AsFloat := iTaxRate;
end;

procedure TItemSwitchFM.qyDet2ItemIdChange(Sender: TField);
begin
  inherited;
  CalcField(qyDet2, DataFM.qyItem, ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag'],
    ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag']);
end;

procedure TItemSwitchFM.qyDetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyDet.FieldByName('SwitchNo').AsString := qyHed.FieldByName('SwitchNo').AsString;
  qyDet.FieldByName('AutoNo').AsString := GetDateAutoNo(sTableId);
  qyDet.FieldByName('TaxRate').AsFloat := iTaxRate;
end;

procedure TItemSwitchFM.qyDetItemIdChange(Sender: TField);
begin
  inherited;
  CalcField(qyDet, DataFM.qyItem, ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag'],
    ['ItemID', 'ItemCode', 'ItemName', 'ItemSpc', 'ItemPic', 'ItemPYCode', 'ItemUnit', 'SubUnit', 'ExchRate', 'iFlag']);
end;

procedure TItemSwitchFM.qyHedCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyHed, DataFM.qyWare, ['OutWare', 'OutWareName'], ['WareId', 'WareName']);
  CalcField(qyHed, DataFM.qyWare, ['InWare', 'InWareName'], ['WareId', 'WareName']);
end;

procedure TItemSwitchFM.qyHedPrintNumChange(Sender: TField);
begin
  inherited;
  ShowFMInfo(sTableId,qyHed);
end;

end.
