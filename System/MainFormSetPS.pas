unit MainFormSetPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Base1PS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter,
  cxGridCustomPopupMenu, cxGridPopupMenu, Menus, ADODB, dxBar, cxClasses,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, ExtCtrls, cxSplitter, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxTLData, cxDBTL, cxMaskEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, cxContainer, cxTextEdit,
  cxDBEdit, cxButtonEdit, Mask, DBCtrls, dxSkinOffice2010Blue,
  cxPCdxBarPopupMenu, cxPC, cxLabel, cxCurrencyEdit, cxCheckBox, cxMemo,
  cxRichEdit, cxDBRichEdit, cxButtons, dxSkinDevExpressStyle, dxSkinSpringTime,
  dxSkinValentine, cxNavigator, dxBarBuiltInMenu;

type
  TMainFormSetFM = class(TBase1FM)
    qyDet: TADOQuery;
    dsDet: TDataSource;
    cxgrdtbvUserId: TcxGridDBColumn;
    cxgrdtbvUserName: TcxGridDBColumn;
    cxgrdtbvDeptName: TcxGridDBColumn;
    cxTabSheet2: TcxTabSheet;
    cxgrd1: TcxGrid;
    cxgrdbtblvwcxgrdtbv1: TcxGridDBTableView;
    cxgrdbtblvwcxgrdtbv1FMName: TcxGridDBColumn;
    cxgrdbtblvwcxgrdtbv1AcitonKind: TcxGridDBColumn;
    cxgrdbtblvwcxgrdtbv1Content1: TcxGridDBColumn;
    cxgrdbtblvwcxgrdtbv1bStart: TcxGridDBColumn;
    cxgrdlvlcxgrdlev1: TcxGridLevel;
    dbedtId: TDBEdit;
    cxgrd2: TcxGrid;
    cxgrdbtblvw1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxgrdlvl1: TcxGridLevel;
    cxspltr2: TcxSplitter;
    cxTabSheet1: TcxTabSheet;
    cxpgcntrl: TcxPageControl;
    cxgrdInform: TcxGrid;
    cxgrdbtblvwInform: TcxGridDBTableView;
    cxgrdbtblvwInformInformTitle: TcxGridDBColumn;
    cxgrdbtblvwInformInformContent: TcxGridDBColumn;
    cxgrdbtblvwInformSendName: TcxGridDBColumn;
    cxgrdbtblvwInformSendDate: TcxGridDBColumn;
    cxgrdlvlInform: TcxGridLevel;
    qyInform: TADOQuery;
    dsInform: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBMemo1: TcxDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure btDelClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btAddLClick(Sender: TObject);
    procedure btDelLClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbedtIdChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxgrdtbvUserIdPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure qyDetAfterInsert(DataSet: TDataSet);
    procedure cxgrdbtblvwcxgrdtbv1CustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure qyInformAfterInsert(DataSet: TDataSet);
  private
    sWhere: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainFormSetFM: TMainFormSetFM;

implementation

uses PublicPS, DataPS, SysUserQPS;
{$R *.dfm}

procedure TMainFormSetFM.btAddLClick(Sender: TObject);
begin
  inherited;
  if cxpgcntrl.ActivePageIndex = 0 then
    qyDet.Append;
  if cxpgcntrl.ActivePageIndex = 1 then
    qyInform.Append();
end;

procedure TMainFormSetFM.btCancelClick(Sender: TObject);
begin
  inherited;
  if cxpgcntrl.ActivePageIndex = 0 then
    qyDet.CancelBatch();
  if cxpgcntrl.ActivePageIndex = 1 then
    qyInform.CancelBatch();
end;

procedure TMainFormSetFM.btDelClick(Sender: TObject);
begin
  try
    inherited;
    if cxpgcntrl.ActivePageIndex = 0 then
    begin
      if ShowDlg('确定要删除整个人员列表吗？如果删除单条请单击删行') then
      begin
        ExeSql('Delete SysNoticeEmpTB ');
        qyDet.Requery();
        ShowBox('删除成功!');
      end;
    end;
  except
    ShowBox('删除失败!');
  end;
end;

procedure TMainFormSetFM.btDelLClick(Sender: TObject);
begin
  inherited;
  if cxpgcntrl.ActivePageIndex = 0 then
    qyDet.Delete;
  if cxpgcntrl.ActivePageIndex = 1 then
    qyInform.Delete;
end;

procedure TMainFormSetFM.btEditClick(Sender: TObject);
begin
  inherited;
  if cxpgcntrl.ActivePageIndex = 0 then
  begin
    qyHed.Edit;
    qyDet.Edit;
  end
  else if cxpgcntrl.ActivePageIndex = 1 then
  begin
    qyInform.Edit;
  end;
end;

procedure TMainFormSetFM.btSaveClick(Sender: TObject);
begin
  try
    if cxpgcntrl.ActivePageIndex = 0 then
    begin
      qyHed.UpdateBatch();
      qyDet.UpdateBatch();
    end;
    if cxpgcntrl.ActivePageIndex = 1 then
    begin
      qyInform.UpdateBatch();
    end;
    inherited;
    ShowBox('保存成功!');
    TextReadOnly(Self, True);
  except
    on E: Exception do
    begin
      ShowWarn(e.Message);
    end;
  end;
end;


procedure TMainFormSetFM.cxgrdbtblvwcxgrdtbv1CustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TMainFormSetFM.cxgrdtbvUserIdPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i: Integer;
begin
  if btSave.Enabled = False then
    Exit;
  if qyHed.IsEmpty then
  begin
    ShowBox('未选择预警类型');
    Exit;
  end;
  try
    SysUserQFM := TSysUserQFM.Create(nil);
    SysUserQFM.iSelectKind := 1;
    SysUserQFM.ShowModal;
    if SysUserQFM.iFlag <> 3 then
    begin
      SysUserQFM.qyFind.Filter := ' bSelect=1';
      SysUserQFM.qyFind.Filtered := True;
      SysUserQFM.qyFind.First;
      for i := 0 to SysUserQFM.qyFind.RecordCount - 1 do
      begin
        if i = 0 then
          qyDet.Edit
        else
          qyDet.Append;
        qyDet.FieldByName('UserId').AsString := SysUserQFM.qyFind.FieldByName('UserId').AsString;
        qyDet.FieldByName('UserName').AsString := SysUserQFM.qyFind.FieldByName('UserName').AsString;
        qyDet.FieldByName('DeptName').AsString := SysUserQFM.qyFind.FieldByName('DeptName').AsString;
        qyDet.post;
        SysUserQFM.qyFind.Next;
      end;
    end;
  finally
    SysUserQFM.Free;
    SysUserQFM := nil;
  end;
end;

procedure TMainFormSetFM.dbedtIdChange(Sender: TObject);
begin
  inherited;
  qyDet.Filter := ' NoticeKind=' + QuotedStr(trim(dbedtId.Text));
  qyDet.Filtered := True;
end;

procedure TMainFormSetFM.FormCreate(Sender: TObject);
begin
  sFMId := 'MainFormSetFM';
  sFMName := Self.Caption;
  sTableId := 'PreSendMsgTB';
  inherited;
end;

procedure TMainFormSetFM.FormDestroy(Sender: TObject);
begin
  inherited;
  MainFormSetFM := nil;
end;

procedure TMainFormSetFM.FormShow(Sender: TObject);
begin
  inherited;
  qyHed.Open;
  with qyDet do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('select * from SysNoticeEmpTB');
    sql.Add('where NoticeKind=' + QuotedStr(Trim(dbedtId.Text)));
    Open;
  end;
  qyInform.Open;
end;

procedure TMainFormSetFM.qyDetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if qyDet.State = dsBrowse then qyDet.Edit;
  if qyDet.State = dsBrowse then qyDet.Edit;
  qyDet.FieldByName('NoticeKind').AsString := qyHed.FieldByName('NoticeKind').AsString;
end;

procedure TMainFormSetFM.qyInformAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if qyInform.State = dsBrowse then qyInform.Edit;
  if qyInform.State = dsBrowse then qyInform.Edit;
  qyInform.FieldByName('SendName').AsString := LoginEmpName;
  qyInform.FieldByName('SendDate').AsDateTime := SysDateTime; // StrToDateTime(FormatDateTime('yyyy-mm-dd', SysDateTime));
end;

end.
