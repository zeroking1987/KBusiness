unit CNBankQPS;

interface

uses
  Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QBasePS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, cxLabel, cxGridCustomPopupMenu,
  cxGridPopupMenu, Menus, frxClass, frxDBSet, ADODB, dxBar, cxBarEditItem, cxClasses, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  ExtCtrls, cxContainer, cxButtonEdit, cxGroupBox, cxRadioGroup, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxTextEdit, StdCtrls, dxSkinOffice2010Blue, cxPCdxBarPopupMenu,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinDevExpressStyle, dxSkinSpringTime, DateUtils,
  dxSkinValentine, cxMRUEdit, cxButtons, cxCurrencyEdit, dxBarBuiltInMenu,
  cxNavigator, dxSkinOffice2013LightGray, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark;

type
  TCNBankQFM = class(TQBaseFM)
    cxEdtRemark: TcxTextEdit;
    cxdtS: TcxDateEdit;
    cxdtE: TcxDateEdit;
    cxrdgrpAudit: TcxRadioGroup;
    btnHand: TcxButtonEdit;
    btnFZObject: TcxButtonEdit;
    cxLabel6: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxrdgrpsFlag: TcxRadioGroup;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxAccName: TcxMRUEdit;
    cxCNItem: TcxMRUEdit;
    cxLabel7: TcxLabel;
    cxTabSheet1: TcxTabSheet;
    qyHedAccName: TStringField;
    qyHedBillDate: TDateTimeField;
    qyHedCNKind: TStringField;
    qyHedBillNo: TStringField;
    qyHediFlag: TSmallintField;
    qyHedCNItemName: TStringField;
    qyHedsFlag: TStringField;
    qyHedFZObjectName: TStringField;
    qyHedHandManName: TStringField;
    qyHedAccSubjectId: TStringField;
    qyHedRemark: TStringField;
    qyHedDebitM: TFMTBCDField;
    qyHedCreditM: TFMTBCDField;
    qyHedLastM: TFMTBCDField;
    qyHedbMaxAudit: TBooleanField;
    qyHedAuditManName: TStringField;
    qyHedAuditDate: TStringField;
    qyHedMaxAuditDate: TDateTimeField;
    cxgrdtbvAccName: TcxGridDBColumn;
    cxgrdtbvBillDate: TcxGridDBColumn;
    cxgrdtbvCNKind: TcxGridDBColumn;
    cxgrdtbvBillNo: TcxGridDBColumn;
    cxgrdtbvCNItemName: TcxGridDBColumn;
    cxgrdtbvFZObjectName: TcxGridDBColumn;
    cxgrdtbvHandManName: TcxGridDBColumn;
    cxgrdtbvAccSubjectId: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    cxgrdtbvDebitM: TcxGridDBColumn;
    cxgrdtbvCreditM: TcxGridDBColumn;
    cxgrdtbvLastM: TcxGridDBColumn;
    cxgrdtbvbMaxAudit: TcxGridDBColumn;
    cxgrdtbvAuditManName: TcxGridDBColumn;
    cxgrdtbvMaxAuditDate: TcxGridDBColumn;
    btn1: TcxButton;
    btn2: TcxButton;
    frxSum: TfrxDBDataset;
    qySum: TADOQuery;
    dsSum: TDataSource;
    qySumAccName: TStringField;
    qySumFirstM: TFMTBCDField;
    qySumDebitM: TFMTBCDField;
    qySumCreditM: TFMTBCDField;
    qySumLastM: TFMTBCDField;
    cxgrdSum: TcxGrid;
    cxgrdtbvSum: TcxGridDBTableView;
    cxgrdlevSum: TcxGridLevel;
    cxgrdtbvSumAccName: TcxGridDBColumn;
    cxgrdtbvSumFirstM: TcxGridDBColumn;
    cxgrdtbvSumDebitM: TcxGridDBColumn;
    cxgrdtbvSumCreditM: TcxGridDBColumn;
    cxgrdtbvSumLastM: TcxGridDBColumn;
    qyHedMakeMan: TStringField;
    qyHedMakeManName: TStringField;
    cxgrdtbvColumn1: TcxGridDBColumn;
    qyHedAuditFlag: TSmallintField;
    qyHedPZNo: TStringField;
    cxgrdtbvColumn2: TcxGridDBColumn;
    qyHedSubJoinNo: TStringField;
    qyHedbOtherToCN: TBooleanField;
    cxgrdtbvColumn3: TcxGridDBColumn;
    cxgrdtbvbOtherToCN: TcxGridDBColumn;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure cxAccNamePropertiesButtonClick(Sender: TObject);
    procedure cxCNItemPropertiesButtonClick(Sender: TObject);
    procedure btnFZObjectPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnHandPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure cxgrdtbvCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btDelClick(Sender: TObject);
    procedure btCheckClick(Sender: TObject);
    procedure btUnCheckClick(Sender: TObject);
    procedure btExportClick(Sender: TObject);
    procedure cxdtSPropertiesEditValueChanged(Sender: TObject);
    procedure cxdtEPropertiesEditValueChanged(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    sWhere, sWhereAccName: string;
    function  AuditBill(TableId, UserId, FMName, BillNo: string; qyHed: TAdoquery; iFlag: Integer): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CNBankQFM: TCNBankQFM;

implementation

uses PublicPS, ControlPublicPS, CNBankPS, CNItemQPS, CNAccNameQPS, DeptQPS, EmpQPS, PrvQPS, CustQPS,DataPS;
{$R *.dfm}

function TCNBankQFM.AuditBill(TableId, UserId, FMName, BillNo: string; qyHed: TAdoquery; iFlag: Integer): Boolean;
var
  NowFlag, MaxFlag, AddFlag, DelFlag: Integer;
  sHasRightLevel: string;
  bNeedAudit, bHasCheckRight, bHasUnCheckRight: Boolean;
begin
  try
    NowFlag := qyHed.FieldByName('AuditFlag').AsInteger;
    AddFlag := qyHed.FieldByName('AuditFlag').AsInteger + 1;
    DelFlag := qyHed.FieldByName('AuditFlag').AsInteger - 1;
    bNeedAudit := False;
    bHasCheckRight := False;
    bHasUnCheckRight := False;
    sHasRightLevel := '';
    try
      with DataFM.qyTemp do
      begin
        if Active then
          Close;
        sql.Clear;
        sql.Add('select bCheck=IsNull(bCheck,0),bUnCheck=IsNull(bUnCheck,0),HasRightLevel=IsNull(HasRightLevel,'''') from UserRightTB where TableID='
          + QuotedStr(TableId) + ' and UserId=' + QuotedStr(UserId));
        open;
        if not eof then
        begin
          bHasCheckRight := Fields[0].AsBoolean;
          bHasUnCheckRight := Fields[1].AsBoolean;
          sHasRightLevel := Fields[2].AsString;
        end;
      end;
    finally
      DataFM.qyTemp.Close;
    end;

    try
      with DataFM.qyTemp do
      begin
        if Active then Close;
        sql.Clear;
        sql.Add('select MaxAuditLevel,TableID,bAudit from SysBillSetTB where BillId=' + QuotedStr(TableId));
        open;
        if not eof then
        begin
          MaxFlag := Fields[0].AsInteger;
          bNeedAudit := Fields[2].AsBoolean;
        end;
      end;
    finally
      DataFM.qyTemp.Close;
    end;

    if iFlag = 1 then // 审核
    begin
      if not bNeedAudit then
      begin
        ShowBox('该单不需要审核');
        Result := False;
        Exit;
      end;
      if (NowFlag = MaxFlag) or (qyHed.FieldByName('bMaxAudit').AsBoolean) then
      begin
        ShowBox('该单已经审核完毕！');
        Result := False;
        Exit;
      end;
      if (not bHasCheckRight) or (pos(intToStr(AddFlag), sHasRightLevel) <= 0) then
      begin
        ShowBox('你没有该单的第 <' + intToStr(AddFlag) + '> 级审核权限');
        Result := False;
        Exit;
      end;
      GetServerTime;
      ExeSql('Update CNBillTB Set AuditFlag='+QuotedStr(IntToStr(AddFlag))+',AuditManName='+QuotedStr(qyHed.FieldByName('AuditManName').AsString + LoginEmpName)+',AuditDate='+QuotedStr(qyHed.FieldByName('AuditDate').AsString + FormatDatetime('yyyy-mm-dd hh:mm:ss', SysDateTime))+'where BillNo='+QuotedStr(BillNo));

      if HasGetMaxAudit(TableId, AddFlag) then
      begin
        ExeSql('Update CNBillTB Set bMaxAudit=1,AuditDate='+Quotedstr(FormatDatetime('yyyy-mm-dd hh:mm:ss', SysDateTime))+'where BillNo='+QuotedStr(BillNo));
      end;
      SetLog(FMName, BillNo, '审核');
      Result := true;
      ShowBox('审核成功!');
    end
    else if iFlag = -1 then // 反审核
    begin
      if NowFlag = 0 then
      begin
        ShowBox('该单还没有审核！');
        Result := False;
        Exit;
      end;
      if (not bHasUnCheckRight) or (pos(intToStr(NowFlag), sHasRightLevel) <= 0) then
      begin
        ShowBox('你没有该单的第 <' + intToStr(NowFlag) + '> 级反审核权限');
        Result := False;
        Exit;
      end;

      ExeSql('Update CNBillTB Set AuditFlag='+QuotedStr(IntToStr(DelFlag))+',AuditManName='''',AuditDate='''',MaxAuditDate=null,bMaxAudit=0 where BillNo='+QuotedStr(BillNo));

      SetLog(FMName, BillNo, '反审核');
      Result := true;
      ShowBox('反审核成功!');
    end;
  except
      on E: Exception do
    begin
      ShowWarn(E.Message);
    end
  end;
end;

procedure TCNBankQFM.btAddClick(Sender: TObject);
var sAccName: string;
begin
  try
    try
      CNBankFM := TCNBankFM.Create(nil);
      CNBankFM.sOperate:='添加';
      CNBankFM.btAddClick(Sender);
      CNBankFM.qyHed.FieldByName('AccName').AsString:=cxAccName.Text;
      CNBankFM.ShowModal;
      btFindClick(Sender);
    finally
      CNBankFM.Free;
      CNBankFM := nil;
    end;
  except
    on E: Exception do
    begin
      ShowWarn(E.Message);
    end
  end;
end;

procedure TCNBankQFM.btCheckClick(Sender: TObject);
var
  sBiilNo: string;
begin
  if (qyHed.FieldByName('sFlag').AsString = '期初') or (qyHed.Active = false) then Exit;
  sBiilNo := qyHed.FieldByName('BillNo').AsString;
  if AuditBill(sTableId, LoginId, sFMName, qyHed.FieldByName('BillNo').AsString, qyHed, 1) then
  begin
    btFindClick(Sender);
    qyHed.Locate('BillNo',sBiilNo,[]);
  end;
end;

procedure TCNBankQFM.btDelClick(Sender: TObject);
var
  sBiilNo: string;
begin
  if (qyHed.FieldByName('sFlag').AsString = '期初') or (qyHed.Active = false) then Exit;
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
    ExeSql('Delete CNBillTB where BillNo=' + QuotedStr(sBiilNo));
    SetLog(sFMName, sBiilNo, '删除');
    btFindClick(Sender);
    ShowBox('删除成功!');
  end;
end;

procedure TCNBankQFM.btEditClick(Sender: TObject);
begin
  try
    if qyHed.FieldByName('sFlag').AsString = '期初' then Exit;
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
    CNBankFM := TCNBankFM.Create(nil);
    CNBankFM.sOperate:='编辑';
    CNBankFM.sPubBillNo := qyHed.FieldByName('BillNo').AsString;
    CNBankFM.btEditClick(Sender);
    CNBankFM.ShowModal;
    btFindClick(Sender);
  finally
    CNBankFM.Free;
    CNBankFM := nil;
  end;
end;

procedure TCNBankQFM.btExportClick(Sender: TObject);
begin
  if cxpgcntrl1.ActivePageIndex = 0 then
  begin
    if not cxgrdtbv.ViewData.IsEmpty then
      CxExport(cxgrd, cxlabTitle.Caption+'-明细');
  end;
  if cxpgcntrl1.ActivePageIndex = 1 then
  begin
    if not cxgrdtbvSum.ViewData.IsEmpty then
      CxExport(cxgrdSum, cxlabTitle.Caption+'-汇总');
  end;
end;

procedure TCNBankQFM.btFindClick(Sender: TObject);
begin
  sWhere := ' and IsNull(a.CNKind,'''')=''银行'' ';
  sWhereAccName := '  and a.AccName in(select AccName from CNAccNameTB where AccKind=''银行账户'') ';
  if (cxdtS.Text = '') or (cxdtE.Text = '') then
  begin
    ShowBox('请先选择日期');
    Exit;
  end;
  if cxrdgrpsFlag.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(a.iFlag,0)=1 '
  else if cxrdgrpsFlag.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(a.iFlag,0)=-1 ';

  if cxrdgrpAudit.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(a.bMaxAudit,0)=0'
  else if cxrdgrpAudit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(a.bMaxAudit,0)=1';


{  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.BillDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.BillDate<=' + QuotedStr(trim(cxdtE.Text)); }

  if cxEdtRemark.Text <> '' then
    sWhere := sWhere + ' and (a.Remark like ''%' + trim(cxEdtRemark.text) + '%'' or  dbo.fnGetPY(a.Remark) like ''%' + trim(cxEdtRemark.text) + '%'')';

  if btnFZObject.Text <> '' then
    sWhere := sWhere + ' and (a.FZObjectName like ''%' + trim(btnFZObject.text) + '%'' or dbo.fnGetPY(a.FZObjectName) like ''%' + trim(btnFZObject.text) + '%'')';

  if cxAccName.Text <> '' then
  begin
    sWhereAccName := sWhereAccName + ' and a.AccName=' + QuotedStr(trim(cxAccName.Text));
    sWhere := sWhere + ' and a.AccName=' + QuotedStr(trim(cxAccName.Text));
  end;
  if cxCNItem.Text <> '' then
    sWhere := sWhere + ' and a.CNItemName=' + QuotedStr(trim(cxCNItem.Text));
  if btnHand.Text <> '' then
    sWhere := sWhere + ' and (a.HandManName like ''%' + trim(btnHand.text) + '%'' or dbo.fnGetPY(a.HandManName) like ''%' + trim(btnHand.text) + '%'')';

  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add(' exec prCNBillQ  ' + Quotedstr(trim(cxdtS.Text)) + ',' + Quotedstr(trim(cxdtE.Text)) + ',' + Quotedstr(sWhereAccName) + ',' + Quotedstr(sWhere) + ',0');
    Open;
  end;
  with qySum do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add(' exec prCNBillQ  ' + Quotedstr(trim(cxdtS.Text)) + ',' + Quotedstr(trim(cxdtE.Text)) + ',' + Quotedstr(sWhereAccName) + ',' + Quotedstr(sWhere) + ',1');
    Open;
  end;
  //SplitPage(SaleOrderQFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TCNBankQFM.btn1Click(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(System.SysUtils.IncMonth(cxdtS.Date, -1)));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(System.SysUtils.IncMonth(cxdtE.Date, -1)));
  btFindClick(Sender);
end;

procedure TCNBankQFM.btn2Click(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(System.SysUtils.IncMonth(cxdtS.Date, 1)));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(System.SysUtils.IncMonth(cxdtE.Date, 1)));
  btFindClick(Sender);
end;

procedure TCNBankQFM.btnFZObjectPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  try
    if AButtonIndex = 0 then
    begin
      try
        EmpQFM := TEmpQFM.Create(nil);
        EmpQFM.iSelectKind := 2;
        EmpQFM.ShowModal;
        if EmpQFM.sName <> '' then
        begin
          btnFZObject.Properties.LookupItems.Text := EmpQFM.sId;
          btnFZObject.Text := EmpQFM.sName;
          btnFZObject.Hint := EmpQFM.sId + '  ' + EmpQFM.sName;
        end;
      finally
        EmpQFM.Free;
        EmpQFM := nil;
      end;
    end;
    if AButtonIndex = 1 then
    begin
      try
        DeptQFM := TDeptQFM.Create(nil);
        DeptQFM.iSelectKind := 2;
        DeptQFM.ShowModal;
        if DeptQFM.sId <> '' then
        begin
          btnFZObject.Properties.LookupItems.Text := DeptQFM.sId;
          btnFZObject.Text := EmpQFM.sName;
          btnFZObject.Hint := EmpQFM.sId + '  ' + DeptQFM.sName;
        end;
      finally
        DeptQFM.Free;
        DeptQFM := nil;
      end;
    end;
    if AButtonIndex = 2 then
    begin
      try
        PrvQFM := TPrvQFM.Create(nil);
        PrvQFM.iSelectKind := 2;
        PrvQFM.ShowModal;
        if PrvQFM.sId <> '' then
        begin
          btnFZObject.Properties.LookupItems.Text := PrvQFM.sId;
          btnFZObject.Text := PrvQFM.sName;
          btnFZObject.Hint := PrvQFM.sId + '  ' + PrvQFM.sName;
        end;
      finally
        PrvQFM.Free;
        PrvQFM := nil;
      end;
    end;
    if AButtonIndex = 3 then
    begin
      try
        CustQFM := TCustQFM.Create(nil);
        CustQFM.iSelectKind := 2;
        CustQFM.ShowModal;
        if CustQFM.sId <> '' then
        begin
          btnFZObject.Properties.LookupItems.Text := CustQFM.sId;
          btnFZObject.Text := CustQFM.sName;
          btnFZObject.Hint := CustQFM.sId + '  ' + CustQFM.sName;
        end;
      finally
        CustQFM.Free;
        CustQFM := nil;
      end;
    end;
  except
  end;
end;

procedure TCNBankQFM.btnHandPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  try
    EmpQFM := TEmpQFM.Create(nil);
    EmpQFM.iSelectKind := 2;
    EmpQFM.ShowModal;
    if EmpQFM.sName <> '' then
    begin
      btnHand.Properties.LookupItems.Text := EmpQFM.sId;
      btnHand.Text := EmpQFM.sName;
      btnHand.Hint := EmpQFM.sId + '  ' + EmpQFM.sName;
    end;
  finally
    EmpQFM.Free;
    EmpQFM := nil;
  end;
end;

procedure TCNBankQFM.btUnCheckClick(Sender: TObject);
var
  sBiilNo: string;
begin
  if (qyHed.FieldByName('sFlag').AsString = '期初') or (qyHed.Active = false) then Exit;
  sBiilNo := qyHed.FieldByName('BillNo').AsString;
  if qyHed.FieldByName('bOtherToCN').AsBoolean then
  begin
    ShowBox('该记录由其他单据生成,不能反审核!');
    Exit;
  end;
  if AuditBill(sTableId, LoginId, sFMName, qyHed.FieldByName('BillNo').AsString, qyHed, -1) then
  begin
    btFindClick(Sender);
    qyHed.Locate('BillNo',sBiilNo,[]);
  end;
end;

procedure TCNBankQFM.cxAccNamePropertiesButtonClick(Sender: TObject);
begin
  inherited;
  try
    try
      CNAccNameQFM := TCNAccNameQFM.Create(nil);
      CNAccNameQFM.iSelectKind := 2;
      CNAccNameQFM.sPubWhere := ' and AccKind=''银行账户'' ';
      CNAccNameQFM.ShowModal;
      if CNAccNameQFM.iFlag <> 3 then
        cxAccName.Text := CNAccNameQFM.sName;
    finally
      CNAccNameQFM.Free;
      CNAccNameQFM := nil;
    end;
  except
  end;
end;

procedure TCNBankQFM.cxCNItemPropertiesButtonClick(Sender: TObject);
begin
  inherited;
  try
    try
      CNItemQFM := TCNItemQFM.Create(nil);
      CNItemQFM.iSelectKind := 2;
      CNItemQFM.ShowModal;
      if CNItemQFM.iFlag <> 3 then
        cxCNItem.Text := CNItemQFM.sName;
    finally
      CNItemQFM.Free;
      CNItemQFM := nil;
    end;
  except
  end;
end;

procedure TCNBankQFM.cxdtEPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if cxdtS.Text<>'' then
    btFindClick(Sender);
end;

procedure TCNBankQFM.cxdtSPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if cxdtE.Text<>'' then
  btFindClick(Sender);
end;

procedure TCNBankQFM.cxgrdtbvCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
  if trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrdtbvCNKind.Index], varString)) = '期初' then
  begin
    ACanvas.canvas.Font.Color := clBlue;
    ACanvas.FillRect(AViewInfo.Bounds);
  end;

  if (AViewInfo.GridRecord.DisplayTexts[cxgrdtbvbOtherToCN.Index] <> '') then
  begin
    if AViewInfo.GridRecord.DisplayTexts[cxgrdtbvbOtherToCN.Index] = '正确' then
    begin
      ACanvas.canvas.Font.color := clGreen;
      ACanvas.FillRect(AViewInfo.Bounds);
    end;
  end;
end;

procedure TCNBankQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'CNBankQFM';
  sFMName := Self.Caption;
  sTableId := 'CNBankQ';
  inherited;
end;

procedure TCNBankQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  CNBankQFM := nil;
end;

procedure TCNBankQFM.FormShow(Sender: TObject);
begin
  inherited;
  if sCNStartMon='' then
  begin
    ShowBox('请先到系统设置中设置出纳启用月份');
    Exit;
  end;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(Now));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(Now));
  InItCbb('select AccName from CNAccNameTB where AccKind=''银行账户'' ', cxAccName);
  InItCbb('select CNItemName from CNItemTB where Not Exists(select AutoID from CNItemTB m where CNItemTB.ID=m.ParentId) order by ID ', cxCNItem);
end;

procedure TCNBankQFM.N2Click(Sender: TObject);
begin
  inherited;
  if qyHed.FieldByName('bOtherToCN').AsBoolean then
  begin
    if Pos('付款', qyHed.FieldByName('Remark').AsString) > 0 then
      BillView('StockPayHDTB', 'select * from StockPayHDTB where PayNo=' + QuotedStr(qyHed.FieldByName('SubjoinNo').AsString));
    if Pos('收款', qyHed.FieldByName('Remark').AsString) > 0 then
      BillView('SalePayHDTB', 'select * from SalePayHDTB where PayNo=' + QuotedStr(qyHed.FieldByName('SubjoinNo').AsString));
    if Pos('转账', qyHed.FieldByName('Remark').AsString) > 0 then
      BillView('CNMove', 'select * from CNMoveTB where BillNo=' + QuotedStr(qyHed.FieldByName('SubjoinNo').AsString));
  end;
end;

end.

