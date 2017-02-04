unit BasePS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,
  Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsdxBarPainter,
  dxSkinsDefaultPainters, cxPC, cxControls, StdCtrls,
  cxStyles, dxBar, cxClasses, Menus, DB, ADODB, dxSkinOffice2010Blue,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine,cxLabel,
  dxSkinOffice2013LightGray, dxSkinOffice2016Colorful, dxSkinOffice2016Dark;

type
  TBaseFM = class(TForm)
    dxbrmngrBarManage: TdxBarManager;
    dxbrBarMang: TdxBar;
    btAdd: TdxBarLargeButton;
    btEdit: TdxBarLargeButton;
    btDel: TdxBarLargeButton;
    btSave: TdxBarLargeButton;
    btCancel: TdxBarLargeButton;
    btAddL: TdxBarLargeButton;
    btDelL: TdxBarLargeButton;
    btFind: TdxBarLargeButton;
    btExport: TdxBarLargeButton;
    btRefer: TdxBarLargeButton;
    btPrint: TdxBarLargeButton;
    btCheck: TdxBarLargeButton;
    btUnCheck: TdxBarLargeButton;
    btExit: TdxBarLargeButton;
    btTemp: TdxBarLargeButton;
    PupBpm: TdxBarPopupMenu;
    btRef: TdxBarLargeButton;
    btLeft: TdxBarLargeButton;
    btRight: TdxBarLargeButton;
    btFirst: TdxBarLargeButton;
    btLast: TdxBarLargeButton;
    btInvoice: TdxBarLargeButton;
    dsHed: TDataSource;
    qyHed: TADOQuery;
    dxCmbReport: TdxBarCombo;
    btPreview: TdxBarButton;
    btPrint2: TdxBarButton;
    btDesign: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btDelClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure OnBarButtonClick(Sender: TObject);
    procedure btExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btFirstClick(Sender: TObject);
    procedure btLeftClick(Sender: TObject);
    procedure btRightClick(Sender: TObject);
    procedure btLastClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btPreviewClick(Sender: TObject);
    procedure btPrint2Click(Sender: TObject);
    procedure btDesignClick(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    sFMId: string; // 窗体编号
    sFMName: string; // 窗体名称
    sTableId: string; // 表编号
    sTableName: string; // 表名称
    fFormName: TForm;
    fFormClass: TFormClass;

    bRight, bAdd, bEditPart, bEditAll, bDelPart, bDelAll, bFindPart, bFindAll, bShowPrice, bEditPrice, bPrint, bExpand, bInvoice,
      bOther1, bOther2, bOther3: Boolean;

    procedure SetButtonState(btAdd, btEdit, btDel, btAddL, btDelL, btSave, btCancel, btRefer, btFind, btExport, btPrint, btCheck,
      btUnCheck, btExit: TdxBarLargeButton; bAdd, bEdit, bDel, bAddL, bDelL, bSave, bCancel, bRefer, bFind, bExport, bPrint,
      bCheck, bUnCheck, bExit: Boolean); // 设置ToolBar按钮状态
    procedure ShowReport(sFMId: string); // 打印报表
    procedure GetTableRight(LoginId, sTableId: string); // 用户单据权限细分
    // 显示审核信息
    procedure ShowBillInfo(TableId: string; qyHed: TAdoquery; LabAuditInfo, LabPrint, LabAudit, LabTemp1, LabTemp2, LabTemp3, LabTemp4, LabTemp5:TLabel);
    { Public declarations }
  end;

var
  BaseFM: TBaseFM;

implementation

uses DataPS, PublicPS, MainPS, ReportPS;
{$R *.dfm}

procedure TBaseFM.FormClose(Sender: TObject; var Action: TCloseAction);
var
  iPNo: Integer;
begin
  if not bCanClose then Exit;
  for iPNo := MainFM.cxPgcMain.PageCount - 1 downto 0 do
  begin
    if MainFM.cxPgcMain.Pages[iPNo].Hint = sFMId then
    begin
      MainFM.cxPgcMain.Pages[iPNo].Free;
      break;
    end;
  end;
end;

procedure TBaseFM.FormCreate(Sender: TObject);
var
  iPNo, iPCount, i: Integer;
  FormExist: Boolean;
  TabSt: TcxTabSheet;
begin
  ShowReport(sFMId);
  btSave.Enabled := false;
  btCancel.Enabled := false;
  btAddL.Enabled := false;
  btDelL.Enabled := false;
  btRefer.Enabled := false;

  // 创建主窗体多页标签
  for iPNo := MainFM.cxPgcMain.PageCount - 1 downto 0 do
  begin
    if MainFM.cxPgcMain.Pages[iPNo].Hint = sFMId then
    begin
      MainFM.cxPgcMain.Pages[iPNo].Show;
      FormExist := true;
      break;
    end
    else
      FormExist := false;
  end;
  if not FormExist then
  begin
    TabSt := TcxTabSheet.Create(Application);
    iPCount := MainFM.cxPgcMain.PageCount;
    TabSt.PageControl := MainFM.cxPgcMain;
    TabSt.Caption := sFMName;
    TabSt.Hint := sFMId;
    MainFM.cxPgcMain.Pages[iPCount].Show;
    Self.Parent := MainFM.cxPgcMain.Pages[iPCount];
  end;
  GetTableRight(LoginId, sTableId); //获得权限
end;

procedure TBaseFM.FormDestroy(Sender: TObject);
begin
  BaseFM := nil;
end;

procedure TBaseFM.FormShow(Sender: TObject);
begin
  TextReadOnly(Self, true);
end;

procedure TBaseFM.btAddClick(Sender: TObject);
begin
  SetButtonState(btAdd, btEdit, btDel, btAddL, btDelL, btSave, btCancel, btRefer, btFind, btExport, btPrint, btCheck, btUnCheck,
    btExit, false, false, false, true, true, true, true, true, false, false, false, false, false, true);
  TextReadOnly(Self, false);
end;

procedure TBaseFM.btEditClick(Sender: TObject);
begin
  SetButtonState(btAdd, btEdit, btDel, btAddL, btDelL, btSave, btCancel, btRefer, btFind, btExport, btPrint, btCheck, btUnCheck,
    btExit, false, false, false, true, true, true, true, true, false, false, false, false, false, true);
  TextReadOnly(Self, false);
end;

procedure TBaseFM.btExitClick(Sender: TObject);
begin
  if btSave.Enabled then
  begin
    if not ShowDlg('还没保存数据，直接关闭吗？') then
    begin
      bCanClose := false;
      Exit;
    end
    else
    begin
      bCanClose := true;
    end;
  end
  else
    bCanClose := true;
  if bCanClose then Self.Close;
end;

procedure TBaseFM.btFirstClick(Sender: TObject);
begin
  if qyHed.Active then
  begin
    qyHed.First;
    btLeft.Enabled := false;
    btRight.Enabled := true;
    btLast.Enabled := true;
  end;
end;

procedure TBaseFM.btLastClick(Sender: TObject);
begin
  if qyHed.Active then
  begin
    qyHed.Last;
    btRight.Enabled := false;
    btLeft.Enabled := true;
    btFirst.Enabled := true;
  end;
end;

procedure TBaseFM.btLeftClick(Sender: TObject);
begin
  if qyHed.Active then
  begin
    qyHed.Prior;
    if qyHed.Bof then
    begin
      btLeft.Enabled := false;
      btRight.Enabled := true;
      btLast.Enabled := true;
    end
    else
    begin
      btRight.Enabled := true;
    end;
  end;
end;

procedure TBaseFM.btPreviewClick(Sender: TObject);
begin
  PrintReport(dxCmbReport.Text+ '.fr3',1,1, dsHed);
end;

procedure TBaseFM.btPrint2Click(Sender: TObject);
begin
   PrintReport(dxCmbReport.Text+ '.fr3',2,1, dsHed);
end;

procedure TBaseFM.btPrintClick(Sender: TObject);
begin
   PrintReport(dxCmbReport.Text+ '.fr3',2,1, dsHed);
end;

procedure TBaseFM.btRightClick(Sender: TObject);
begin
  if qyHed.Active then
  begin
    qyHed.Next;
    if qyHed.Eof then
    begin
      btRight.Enabled := false;
      btLeft.Enabled := true;
      btFirst.Enabled := true;
    end
    else
    begin
      btLeft.Enabled := true;
    end;
  end;
end;

procedure TBaseFM.btDelClick(Sender: TObject);
begin
  SetButtonState(btAdd, btEdit, btDel, btAddL, btDelL, btSave, btCancel, btRefer, btFind, btExport, btPrint, btCheck, btUnCheck,
    btExit, true, true, true, false, false, false, false, false, true, true, true, true, true, true);
end;

procedure TBaseFM.btDesignClick(Sender: TObject);
begin
   PrintReport(dxCmbReport.Text+ '.fr3',3,1, dsHed);
end;

procedure TBaseFM.btSaveClick(Sender: TObject);
begin
  SetButtonState(btAdd, btEdit, btDel, btAddL, btDelL, btSave, btCancel, btRefer, btFind, btExport, btPrint, btCheck, btUnCheck,
    btExit, true, true, true, false, false, false, false, false, true, true, true, true, true, true);
  TextReadOnly(Self, True);
end;

procedure TBaseFM.btCancelClick(Sender: TObject);
begin
  SetButtonState(btAdd, btEdit, btDel, btAddL, btDelL, btSave, btCancel, btRefer, btFind, btExport, btPrint, btCheck, btUnCheck,
    btExit, true, true, true, false, false, false, false, false, true, true, true, true, true, true);
  TextReadOnly(Self, True);
end;

procedure TBaseFM.SetButtonState(btAdd, btEdit, btDel, btAddL, btDelL, btSave, btCancel, btRefer, btFind, btExport, btPrint,
  btCheck, btUnCheck, btExit: TdxBarLargeButton; bAdd, bEdit, bDel, bAddL, bDelL, bSave, bCancel, bRefer, bFind, bExport, bPrint,
  bCheck, bUnCheck, bExit: Boolean);
begin
  btAdd.Enabled := bAdd;
  btEdit.Enabled := bEdit;
  btDel.Enabled := bDel;
  btSave.Enabled := bSave;
  btCancel.Enabled := bCancel;
  btAddL.Enabled := bAddL;
  btDelL.Enabled := bDelL;
  btRefer.Enabled := bRefer;
  btFind.Enabled := bFind;
  btExport.Enabled := bExport;
  btPrint.Enabled := bPrint;
  btCheck.Enabled := bCheck;
  btUnCheck.Enabled := bUnCheck;
  btExit.Enabled := bExit;
end;

procedure TBaseFM.ShowReport(sFMId: string);
var
  BarBut: TdxBarButton;
  APupLinks: TdxBarItemLinks;
  APupLink: TdxBarItemLink;
begin
  try
    try
      if sFMId = '' then Exit;
      dxCmbReport.Items.Clear;
      with DataFM.qyTemp do
      begin
        if Active then Close;
        sql.Clear;
        sql.Add('select ReportFile from ReportSetTB where FMId=' + QuotedStr(sFMId));
        Open;
        First;
        while not Eof do
        begin
          dxCmbReport.Items.Add(Fields[0].AsString);
          Next;
        end;
      end;
      dxCmbReport.ItemIndex:=0;
    finally
      DataFM.qyTemp.Close;
    end;
  except
  end;
end;

procedure TBaseFM.OnBarButtonClick(Sender: TObject);
begin
  if TdxBarButton(Sender).Tag = 1 then
  begin
    if PrintReport(TdxBarButton(Sender).Hint + '.fr3', TdxBarButton(Sender).HelpContext, TdxBarButton(Sender).Tag, dsHed) then
    begin
      { if (TdxBarButton(Sender).HelpContext = 2) and (qyHed.FindField('PrintNum') <> nil) then
       begin
         qyHed.Edit;
         qyHed.FieldByName('PrintNum').AsInteger := qyHed.FieldByName('PrintNum').AsInteger + 1;
         qyHed.UpdateBatch();
       end; }
    end;
  end
  else
  begin
    PrintReport(TdxBarButton(Sender).Hint + '.rmf', TdxBarButton(Sender).HelpContext, TdxBarButton(Sender).Tag, dsHed);
  end;
end;

procedure TBaseFM.GetTableRight(LoginId, sTableId: string);
var
  qyRight: TADOQuery;
begin
  try
    qyRight := TADOQuery.Create(nil);
    qyRight.Connection := DataFM.Con;
    with qyRight do
    begin
      if Active then Close;
      sql.Add('select a.UserId,a.TableId,b.bRight,a.bAdd,a.bEditPart,a.bEditAll,a.bDelPart,a.bDelAll,a.bFindPart,a.bFindAll,a.bShowPrice,a.bEditPrice,a.bPrint,a.bExpand,a.bInvoice,a.bOther1,a.bOther2,a.bOther3');
      sql.Add('from UserRightTB a with (NOlock) Right join SysBillSetTB b with (NoLock) on a.TableId=b.BillId');
      sql.Add(' where a.UserID=' + QuotedStr(LoginId) + ' and a.TableID=' + QuotedStr(sTableId));
      Open;
      if not Eof then
      begin
        bRight := FieldByName('bRight').AsBoolean;
        bAdd := FieldByName('bAdd').AsBoolean;
        bEditPart := FieldByName('bEditPart').AsBoolean;
        bEditAll := FieldByName('bEditAll').AsBoolean;
        bDelPart := FieldByName('bDelPart').AsBoolean;
        bDelAll := FieldByName('bDelAll').AsBoolean;
        bFindPart := FieldByName('bFindPart').AsBoolean;
        bFindAll := FieldByName('bFindAll').AsBoolean;
        bShowPrice := FieldByName('bShowPrice').AsBoolean;
        bEditPrice := FieldByName('bEditPrice').AsBoolean;
        bPrint := FieldByName('bPrint').AsBoolean;
        bExpand := FieldByName('bExpand').AsBoolean;
        bInvoice := FieldByName('bInvoice').AsBoolean;
        bOther1 := FieldByName('bOther1').AsBoolean;
        bOther2 := FieldByName('bOther2').AsBoolean;
        bOther3 := FieldByName('bOther3').AsBoolean;
      end
      else
      begin
        bRight := false;
        bAdd := false;
        bEditPart := false;
        bEditAll := false;
        bDelPart := false;
        bDelAll := false;
        bFindPart := false;
        bFindAll := false;
        bShowPrice := false;
        bEditPrice := false;
        bPrint := false;
        bExpand := false;
        bInvoice := false;
        bOther1 := false;
        bOther2 := false;
        bOther3 := false;
      end;
    end;
  finally
    qyRight.Close;
    qyRight.Free;
  end;
end;

procedure TBaseFM.ShowBillInfo(TableId: string; qyHed: TAdoquery; LabAuditInfo, LabPrint, LabAudit, LabTemp1, LabTemp2, LabTemp3, LabTemp4, LabTemp5: TLabel);
begin
  if HasGetMaxAudit(TableId, qyHed.FieldByName('AuditFlag').AsInteger) then
  begin
    LabAudit.Caption := '已审核';
    LabAuditInfo.Caption := '此单已经审核完毕';
    LabAuditInfo.Font.Color := clBlue;
    btCheck.Enabled := False;
    btUnCheck.Enabled := true;

  end
  else
  begin
    LabAudit.Caption := '';
    LabAuditInfo.Caption := '此单等待第 ' + intToStr(qyHed.FieldByName('AuditFlag').AsInteger + 1) + ' 级审核';
    LabAuditInfo.Font.Color := clRed;
    btCheck.Enabled := true;
    btUnCheck.Enabled := False;
  end;
  if (qyHed.FindField('PrintNum') <> nil) and (qyHed.FieldByName('PrintNum').AsInteger > 0) then
    LabPrint.Caption := '打印' + intToStr(qyHed.FieldByName('PrintNum').AsInteger) + '次'
  else
    LabPrint.Caption := '';

  if (qyHed.FindField('bFuHe') <> nil) and (qyHed.FieldByName('bFuHe').AsBoolean) then
    LabTemp1.Caption := '已复核'
  else
    LabTemp1.Caption := '';

  if (qyHed.FindField('bInvoice') <> nil) and (qyHed.FieldByName('bInvoice').AsBoolean) then
    LabTemp2.Caption := '已记账'
  else
    LabTemp2.Caption := '';
end;

end.

