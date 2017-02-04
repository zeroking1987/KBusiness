unit PreSendMsgPS;

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
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, cxNavigator, cxLabel;

type
  TPreSendMsgFM = class(TBase1FM)
    pnl1: TPanel;
    qyDet: TADOQuery;
    dsDet: TDataSource;
    cxspltr2: TcxSplitter;
    cxgrd1: TcxGrid;
    cxgrdtbv1: TcxGridDBTableView;
    cxgrdlev1: TcxGridLevel;
    dbedtId: TDBEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    qyHedAutoId: TAutoIncField;
    qyHedSendId: TStringField;
    qyHedFMId: TStringField;
    qyHedFMName: TStringField;
    qyHedAcitonKind: TStringField;
    qyHedTitle1: TStringField;
    qyHedTitle2: TStringField;
    qyHedContent1: TStringField;
    qyHedContent2: TStringField;
    blnfldHedbStart: TBooleanField;
    qyHedRemark: TStringField;
    cxgrdtbv1FMName: TcxGridDBColumn;
    cxgrdtbv1AcitonKind: TcxGridDBColumn;
    cxgrdtbv1Title1: TcxGridDBColumn;
    cxgrdtbv1Content1: TcxGridDBColumn;
    cxgrdtbv1bStart: TcxGridDBColumn;
    qyDetAutoId: TAutoIncField;
    qyDetSendId: TStringField;
    qyDetAcitonKind: TStringField;
    qyDetUserId: TStringField;
    qyDetUserName: TStringField;
    qyDetDeptName: TStringField;
    qyDetRemark: TStringField;
    cxgrdtbvUserId: TcxGridDBColumn;
    cxgrdtbvUserName: TcxGridDBColumn;
    cxgrdtbvDeptName: TcxGridDBColumn;
    cxAction: TcxTextEdit;
    cxUser: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure btAddClick(Sender: TObject);
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
    procedure cxActionPropertiesChange(Sender: TObject);
    procedure cxgrdtbv1CustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
  private
    sWhere: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PreSendMsgFM: TPreSendMsgFM;

implementation

uses PublicPS, DataPS, SysUserQPS;
{$R *.dfm}

procedure TPreSendMsgFM.btAddClick(Sender: TObject);
begin
  inherited;
  qyDet.Append;
end;

procedure TPreSendMsgFM.btAddLClick(Sender: TObject);
begin
  inherited;
  qyDet.Append;
end;

procedure TPreSendMsgFM.btCancelClick(Sender: TObject);
begin
  inherited;
  qyDet.CancelBatch();
end;

procedure TPreSendMsgFM.btDelClick(Sender: TObject);
begin
  try
    inherited;
    if ShowDlg('确定要删除整个人员列表吗？如果删除单条请单击删行') then
    begin
      ExeSql('Delete PreSendMsgEmpTB ');
      qyDet.Requery();
      ShowBox('删除成功!');
    end;
  except
    ShowBox('删除失败!');
  end;
end;

procedure TPreSendMsgFM.btDelLClick(Sender: TObject);
begin
  inherited;
  qyDet.Delete;
end;

procedure TPreSendMsgFM.btEditClick(Sender: TObject);
begin
  inherited;
  qyHed.Edit;
  qyDet.Edit;
end;

procedure TPreSendMsgFM.btSaveClick(Sender: TObject);
begin
  try
    qyDet.UpdateBatch();
    qyHed.UpdateBatch();
    TextReadOnly(Self, True);
    inherited;
    ShowBox('保存成功!');
  except
  end;
end;

procedure TPreSendMsgFM.cxActionPropertiesChange(Sender: TObject);
begin
  inherited;
  sWhere := '';
  if cxUser.Text <> '' then
    sWhere := sWhere + ' and (UserName like ''%' + trim(cxUser.text) + '%'' or UserId like ''%' + trim(cxUser.text) + '%'')';
  if cxAction.Text <> '' then
    sWhere := sWhere + ' and AcitonKind  like ''%' + trim(cxAction.Text) + '%'' ';
  qyDet.Filter := '';
  qyDet.Filtered := False;
  with qyDet do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('select * from PreSendMsgEmpTB');
    sql.Add('where 1=1');
    SQL.Add(sWhere);
    Open;
  end;
end;

procedure TPreSendMsgFM.cxgrdtbv1CustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TPreSendMsgFM.cxgrdtbvUserIdPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i: Integer;
begin
  if btSave.Enabled = False then
    Exit;
  if qyHed.IsEmpty then
  begin
    ShowBox('未定义操作动作');
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

procedure TPreSendMsgFM.dbedtIdChange(Sender: TObject);
begin
  inherited;
  qyDet.Filter := ' SendId=' + QuotedStr(trim(dbedtId.Text));
  qyDet.Filtered := True;
end;

procedure TPreSendMsgFM.FormCreate(Sender: TObject);
begin
  sFMId := 'PreSendMsgFM';
  sFMName := Self.Caption;
  sTableId := 'PreSendMsgTB';
  inherited;
end;

procedure TPreSendMsgFM.FormDestroy(Sender: TObject);
begin
  inherited;
  PreSendMsgFM := nil;
end;

procedure TPreSendMsgFM.FormShow(Sender: TObject);
begin
  inherited;
  qyHed.Open;
  cxActionPropertiesChange(Sender);
end;

procedure TPreSendMsgFM.qyDetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if qyDet.State = dsBrowse then qyDet.Edit;
  if qyDet.State = dsBrowse then qyDet.Edit;
  qyDet.FieldByName('SendId').AsString := qyHed.FieldByName('SendId').AsString;
  qyDet.FieldByName('AcitonKind').AsString := qyHed.FieldByName('AcitonKind').AsString;
end;

end.
