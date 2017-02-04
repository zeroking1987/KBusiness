unit BaseGrdPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BasePS, dxSkinsCore, dxSkinsdxBarPainter,
  dxSkinsDefaultPainters, DB, ADODB, dxBar, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  ExtCtrls, cxGridLevel, cxGridCustomView, Clipbrd,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC, StdCtrls,
  cxGridCustomPopupMenu, cxGridPopupMenu, Menus, frxClass, frxDBSet, cxContainer, cxTextEdit,
  cxDBEdit, cxLabel, cxDBLabel, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGroupBox,
  cxPCdxBarPopupMenu, dxSkinOffice2010Blue, cxSplitter, cxNavigator,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu,
  dxSkinOffice2013LightGray, dxSkinOffice2016Colorful, dxSkinOffice2016Dark;

type
  TBaseGrdFM = class(TBaseFM)
    pnlTitle: TPanel;
    pnlInfo: TPanel;
    pnlEdit: TPanel;
    dsDet: TDataSource;
    qyDet: TADOQuery;
    pmLayout: TPopupMenu;
    NCustomGrd: TMenuItem;
    NSaveGrd: TMenuItem;
    NDelGrd: TMenuItem;
    mniNCopyL: TMenuItem;
    cxgrdpmn1: TcxGridPopupMenu;
    frxHed: TfrxDBDataset;
    frxDet: TfrxDBDataset;
    cxEdtMakeManName: TcxDBTextEdit;
    Label3: TLabel;
    cxEdtMakeDate: TcxDBTextEdit;
    Label4: TLabel;
    cxEdtEditManName: TcxDBTextEdit;
    Label5: TLabel;
    cxEdtEditDate: TcxDBTextEdit;
    Label6: TLabel;
    cxEdtAuditManName: TcxDBTextEdit;
    Label7: TLabel;
    cxEdtAuditDate: TcxDBTextEdit;
    Label8: TLabel;
    cxEdtAuditFlag: TcxDBTextEdit;
    cxgrpbx1: TcxGroupBox;
    cxEdtNo: TcxDBTextEdit;
    Label1: TLabel;
    Label9: TLabel;
    cxdt: TcxDBDateEdit;
    mniN1: TMenuItem;
    mniNCopyD: TMenuItem;
    pnlBody: TPanel;
    cxPgc: TcxPageControl;
    cxtbsht1: TcxTabSheet;
    cxgrd: TcxGrid;
    cxgrdtbv: TcxGridDBTableView;
    cxgrdlev: TcxGridLevel;
    cxLabTitle: TcxLabel;
    cxLabAudit: TcxLabel;
    cxLabPrint: TcxLabel;
    cxLabTemp1: TcxLabel;
    cxLabTemp2: TcxLabel;
    cxLabTemp3: TcxLabel;
    cxLabTemp4: TcxLabel;
    cxLabTemp5: TcxLabel;
    Label2: TLabel;
    cxLabAuditInfo: TcxLabel;
    procedure NCustomGrdClick(Sender: TObject);
    procedure NSaveGrdClick(Sender: TObject);
    procedure NDelGrdClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure cxgrdtbvCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
      var AHandled: Boolean);
    procedure cxEdtNoPropertiesChange(Sender: TObject);
    procedure btExportClick(Sender: TObject);
    procedure mniNCopyDClick(Sender: TObject);
    procedure btExitClick(Sender: TObject);
    procedure btCheckClick(Sender: TObject);
    procedure mniNCopyLClick(Sender: TObject);
    procedure qyDetAfterScroll(DataSet: TDataSet);
    procedure cxgrdtbvSelectionChanged(Sender: TcxCustomGridTableView);
    procedure FormShow(Sender: TObject);
    procedure cxgrdtbvCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure ShowFMInfo(TableId: string; qyHed: TAdoquery);
  end;

var
  BaseGrdFM: TBaseGrdFM;

implementation

uses DataPS, PublicPS;
{$R *.dfm}

procedure TBaseGrdFM.ShowFMInfo(TableId: string; qyHed: TAdoquery);
begin
  if HasGetMaxAudit(TableId, qyHed.FieldByName('AuditFlag').AsInteger) then
  begin
    cxLabAudit.Caption := '已审核';
    cxLabAuditInfo.Caption := '此单已经审核完毕';
    cxLabAuditInfo.Style.TextColor := clBlue;
    btCheck.Enabled := False;
    btUnCheck.Enabled := true;

  end
  else
  begin
    cxLabAudit.Caption := '';
    cxLabAuditInfo.Caption := '此单等待第 ' + intToStr(qyHed.FieldByName('AuditFlag').AsInteger + 1) + ' 级审核';
    cxLabAuditInfo.Style.TextColor := clRed;
    btCheck.Enabled := true;
    btUnCheck.Enabled := False;
  end;
  if (qyHed.FindField('PrintNum') <> nil) and (qyHed.FieldByName('PrintNum').AsInteger > 0) then
    cxLabPrint.Caption := '打印' + intToStr(qyHed.FieldByName('PrintNum').AsInteger) + '次'
  else
    cxLabPrint.Caption := '';

  if (qyHed.FindField('bFuHe') <> nil) and (qyHed.FieldByName('bFuHe').AsBoolean) then
    cxLabTemp1.Caption := '已复核'
  else
    cxLabTemp1.Caption := '';

  if (qyHed.FindField('bInvoice') <> nil) and (qyHed.FieldByName('bInvoice').AsBoolean) then
    cxLabTemp2.Caption := '已记账'
  else
    cxLabTemp2.Caption := '';
end;

procedure TBaseGrdFM.btAddClick(Sender: TObject);
begin
  inherited;
  GetServerTime;
  PanelReadOnly(pnlInfo, True);
  cxEdtNo.Properties.ReadOnly := True;
end;

procedure TBaseGrdFM.btCheckClick(Sender: TObject);
begin
  AuditBill(sTableId, LoginId, sFMName, trim(cxEdtNo.text), qyHed, 1);
  ShowFMInfo(sTableId, qyHed);
end;

procedure TBaseGrdFM.btEditClick(Sender: TObject);
begin
  if qyHed.FindField('AuditFlag') <> nil then
  begin
    if qyHed.FieldByName('AuditFlag').AsInteger > 0 then
    begin
      ShowBox('该单已经审核,不能再编辑');
      Exit;
    end;
  end;
  inherited;
  GetServerTime;
  PanelReadOnly(pnlInfo, True);
  cxEdtNo.Properties.ReadOnly := True;
end;

procedure TBaseGrdFM.btExitClick(Sender: TObject);
begin
  inherited;
  if bCanClose then Self.Close;
end;

procedure TBaseGrdFM.btExportClick(Sender: TObject);
begin
  inherited;
  CxExport(cxgrd, cxlabTitle.Caption);
end;

procedure TBaseGrdFM.cxEdtNoPropertiesChange(Sender: TObject);
begin
  inherited;
  if trim(cxEdtNo.Text) = '' then Exit;
  ShowFMInfo(sTableId,qyHed);
end;

procedure TBaseGrdFM.cxgrdtbvCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
begin
  inherited;
  Clipboard.SetTextBuf(PChar(ACellViewInfo.Text));
end;

procedure TBaseGrdFM.cxgrdtbvCustomDrawIndicatorCell(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
  var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TBaseGrdFM.cxgrdtbvSelectionChanged(Sender: TcxCustomGridTableView);
begin
  inherited;
  //ShowStatistics(cxgrdtbv);
end;

procedure TBaseGrdFM.FormCreate(Sender: TObject);
begin
  inherited;
  sTableName := cxlabTitle.Caption;
  GetGrd(Self, cxgrdtbv);
  GetServerTime;
end;

procedure TBaseGrdFM.FormShow(Sender: TObject);
begin
  inherited;
  //没有显示单价权限的人不允许自定义显示列
  if (bRight) then
  begin
    NCustomGrd.Visible := bShowPrice;
    cxgrdtbv.OptionsCustomize.ColumnsQuickCustomization := bShowPrice;
    if not bShowPrice then
      cxgrdpmn1.Grid := nil;
  end;
  //网格空值显示水印
  cxgrdtbv.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
end;

procedure TBaseGrdFM.NCustomGrdClick(Sender: TObject);
begin
  inherited;
  CustomGrd(cxgrd);
end;

procedure TBaseGrdFM.NDelGrdClick(Sender: TObject);
begin
  inherited;
  DelGrd(Self, cxgrdtbv);
end;

procedure TBaseGrdFM.mniNCopyDClick(Sender: TObject);
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

procedure TBaseGrdFM.mniNCopyLClick(Sender: TObject);
var iRec, i, j: Integer;
  CopyValue: variant;
  sField: string;
begin
  try
    if btSave.Enabled = False then Exit;
    if qyDet.RecordCount <= 0 then Exit;
    i := cxgrdtbv.Controller.FocusedItem.Index;
    j := cxgrdtbv.Controller.FocusedRow.Index;
    CopyValue := trim(cxgrdtbv.DataController.GetRowValue(cxgrdtbv.DataController.GetRowInfo(j), i));
    if CopyValue = null then Exit;

    //如果不允许修改列不能粘贴该列
    if not TcxGridDBColumn(cxgrdtbv.Controller.FocusedColumn).Options.Editing then  Exit;

    sField := TcxGridDBColumn(cxgrdtbv.Controller.FocusedColumn).DataBinding.FieldName;

    for iRec := qyDet.RecNo to qyDet.RecordCount do
    begin
      if qydet.State = dsBrowse then qyDet.Edit;
      qyDet.FieldByName(sField).Value := CopyValue;
      if TcxGridDBColumn(cxgrdtbv.Controller.FocusedColumn).PropertiesClassName <> '' then
      begin
        if Assigned(TcxGridDBColumn(cxgrdtbv.Controller.FocusedColumn).Properties.OnValidate) then
          UpdateData(cxgrdtbv, sField);
      end;
      qyDet.Next;
    end;
  except
  end;
end;

procedure TBaseGrdFM.NSaveGrdClick(Sender: TObject);
begin
  inherited;
  SaveGrd(Self, cxgrdtbv);
end;

procedure TBaseGrdFM.qyDetAfterScroll(DataSet: TDataSet);
begin
  inherited;
  ShowRecordCount(DataSet);
end;

end.

