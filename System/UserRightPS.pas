unit UserRightPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, AdoInt, StrUtils,
  Dialogs, Base1PS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, cxGridCustomPopupMenu,
  cxGridPopupMenu, Menus, ADODB, dxBar, cxClasses, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, ExtCtrls, ComCtrls,
  dxtree, dxdbtree, cxSplitter, cxButtonEdit, cxTL, cxMaskEdit, cxCheckBox, cxTLdxBarBuiltInMenu,
  cxInplaceContainer, cxDBTL, cxTLData, cxContainer, cxTextEdit, cxDBEdit, cxCheckComboBox,
  dxSkinOffice2010Blue, cxPCdxBarPopupMenu, cxPC, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine, cxNavigator, dxBarBuiltInMenu, cxLabel;

type
  TUserRightFM = class(TBase1FM)
    dsUser: TDataSource;
    qyUser: TADOQuery;
    qyUserUserID: TStringField;
    qyUserUserName: TStringField;
    qyUserDeptId: TStringField;
    qyUserDeptName: TStringField;
    cxgrdtbvTableDesc: TcxGridDBColumn;
    cxgrdtbvbShow: TcxGridDBColumn;
    cxgrdtbvbAdd: TcxGridDBColumn;
    cxgrdtbvbEditPart: TcxGridDBColumn;
    cxgrdtbvbEditAll: TcxGridDBColumn;
    cxgrdtbvbDelPart: TcxGridDBColumn;
    cxgrdtbvbDelAll: TcxGridDBColumn;
    cxgrdtbvbFindPart: TcxGridDBColumn;
    cxgrdtbvbFindAll: TcxGridDBColumn;
    cxgrdtbvbShowPrice: TcxGridDBColumn;
    cxgrdtbvbEditPrice: TcxGridDBColumn;
    cxgrdtbvbPrint: TcxGridDBColumn;
    cxgrdtbvbExpand: TcxGridDBColumn;
    cxgrdtbvbInvoice: TcxGridDBColumn;
    cxgrdtbvbOther1: TcxGridDBColumn;
    cxgrdtbvbOther2: TcxGridDBColumn;
    cxgrdtbvbOther3: TcxGridDBColumn;
    cxgrdtbvpTag: TcxGridDBColumn;
    cxgrd1: TcxGrid;
    cxgrdtbv1: TcxGridDBTableView;
    cxgrdlev1: TcxGridLevel;
    cxgrdtbv1UserID: TcxGridDBColumn;
    cxgrdtbv1UserName: TcxGridDBColumn;
    cxgrdtbv1DeptName: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    qyHedAutoId: TAutoIncField;
    qyHedUserId: TStringField;
    qyHedTableId: TStringField;
    qyHedModuleId: TStringField;
    qyHedTag: TStringField;
    qyHedpTag: TStringField;
    qyHedbShow: TBooleanField;
    qyHedbAdd: TBooleanField;
    qyHedbEditPart: TBooleanField;
    qyHedbEditAll: TBooleanField;
    qyHedbDelPart: TBooleanField;
    qyHedbDelAll: TBooleanField;
    qyHedbFindPart: TBooleanField;
    qyHedbFindAll: TBooleanField;
    qyHedbShowPrice: TBooleanField;
    qyHedbEditPrice: TBooleanField;
    qyHedbPrint: TBooleanField;
    qyHedbExpand: TBooleanField;
    qyHedbInvoice: TBooleanField;
    qyHedbOther1: TBooleanField;
    qyHedbOther2: TBooleanField;
    qyHedbOther3: TBooleanField;
    qyHedTableDesc: TStringField;
    qyHedbRight: TBooleanField;
    cxgrdtbvbRight: TcxGridDBColumn;
    cxEdtUserId: TcxDBTextEdit;
    pmCopy: TPopupMenu;
    NCopy: TMenuItem;
    NAffix: TMenuItem;
    blnfldHedbCheck: TBooleanField;
    blnfldHedbUnCheck: TBooleanField;
    qyHedHasRightLevel: TStringField;
    qyHedSumRightLevel: TStringField;
    cxPgc: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxListRight: TcxDBTreeList;
    cxdbtrlstclmnDBTreeList1Tag: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1TableDesc: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1bShow: TcxDBTreeListColumn;
    cxdbtrlstclmnCheck: TcxDBTreeListColumn;
    cxdbtrlstclmnUnCheck: TcxDBTreeListColumn;
    cxdbtrlstclmnSumRightLevel: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1bRight: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1bAdd: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1bEditPart: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1bEditAll: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1bDelPart: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1bDelAll: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1bFindPart: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1bFindAll: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1bShowPrice: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1bEditPrice: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1bPrint: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1bExpand: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1bInvoice: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1bOther1: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1bOther2: TcxDBTreeListColumn;
    cxdbtrlstclmnDBTreeList1bOther3: TcxDBTreeListColumn;
    cxTabSheet2: TcxTabSheet;
    qyItemKindRight: TADOQuery;
    dsItemKindRight: TDataSource;
    cxtrbItemKind: TcxDBTreeList;
    cxDBTreeList1ItemKindName: TcxDBTreeListColumn;
    cxDBTreeList1bAdd: TcxDBTreeListColumn;
    cxDBTreeList1bEdit: TcxDBTreeListColumn;
    cxDBTreeList1bDel: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    qyItemKindRightItemKindName: TStringField;
    qyItemKindRightAutoId: TAutoIncField;
    qyItemKindRightParentId: TStringField;
    qyItemKindRightItemKindId: TStringField;
    qyItemKindRightUserId: TStringField;
    qyItemKindRightbAdd: TBooleanField;
    qyItemKindRightbEdit: TBooleanField;
    qyItemKindRightbDel: TBooleanField;
    qyItemKindRightRemark: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure qyHedCalcFields(DataSet: TDataSet);
    procedure btTempClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure cxEdtUserIdPropertiesChange(Sender: TObject);
    procedure btReferClick(Sender: TObject);
    procedure cxListRightEditValueChanged(Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn);
    procedure NCopyClick(Sender: TObject);
    procedure NAffixClick(Sender: TObject);
    procedure qyHedSumRightLevelChange(Sender: TField);
    procedure FormDestroy(Sender: TObject);
    procedure btAddLClick(Sender: TObject);
    procedure btDelLClick(Sender: TObject);
    procedure btInvoiceClick(Sender: TObject);
    procedure qyItemKindRightCalcFields(DataSet: TDataSet);
  private
    sSourceUserId, sSourceUserName: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UserRightFM: TUserRightFM;

implementation

uses PublicPS, DataPS;
{$R *.dfm}

procedure TUserRightFM.btAddLClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if cxPgc.ActivePageIndex = 0 then
  begin
    for i := 0 to qyHed.FieldCount - 1 do
    begin
      if qyHed.State = dsBrowse then qyHed.Edit;
      if (qyHed.Fields[i].FieldKind = fkData) and (qyHed.Fields[i].DataType = ftBoolean) then
        qyHed.Fields[i].AsBoolean := true;
    end;
  end
  else if cxPgc.ActivePageIndex = 1 then
  begin
    for i := 0 to qyItemKindRight.FieldCount - 1 do
    begin
      if qyItemKindRight.State = dsBrowse then qyItemKindRight.Edit;
      if (qyItemKindRight.Fields[i].FieldKind = fkData) and (qyItemKindRight.Fields[i].DataType = ftBoolean) then
        qyItemKindRight.Fields[i].AsBoolean := true;
    end;
  end;
end;

procedure TUserRightFM.btCancelClick(Sender: TObject);
begin
  try
    qyHed.CancelBatch;
    qyItemKindRight.CancelBatch;
    TextReadOnly(Self, true);
    inherited;
    btRefer.Enabled := true;
  except
  end;
end;

procedure TUserRightFM.btDelLClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if cxPgc.ActivePageIndex = 0 then
  begin
    for i := 0 to qyHed.FieldCount - 1 do
    begin
      if qyHed.State = dsBrowse then qyHed.Edit;
      if (qyHed.Fields[i].FieldKind = fkData) and (qyHed.Fields[i].DataType = ftBoolean) then
        qyHed.Fields[i].AsBoolean := False;
    end;
  end
  else if cxPgc.ActivePageIndex = 1 then
  begin
    for i := 0 to qyItemKindRight.FieldCount - 1 do
    begin
      if qyItemKindRight.State = dsBrowse then qyItemKindRight.Edit;
      if (qyItemKindRight.Fields[i].FieldKind = fkData) and (qyItemKindRight.Fields[i].DataType = ftBoolean) then
        qyItemKindRight.Fields[i].AsBoolean := False;
    end;
  end;
end;

procedure TUserRightFM.btEditClick(Sender: TObject);
begin
  inherited;
  qyHed.Edit;
  qyItemKindRight.Edit;
  TextReadOnly(Self, false);
  cxListRight.GetColumnByFieldName('Tag').Editing := false;
  cxListRight.GetColumnByFieldName('TableDesc').Editing := false;
  cxListRight.GetColumnByFieldName('bRight').Editing := false;
end;

procedure TUserRightFM.btInvoiceClick(Sender: TObject);
begin
  try
    inherited;
    if ShowDlg('确定为 <' + qyUser.FieldByName('UserName').AsString + '> 授权表单超级权限？') then
    begin
      with DataFM.qyTemp do
      begin
        if Active then Close;
        sql.Clear;
        sql.Add(' exec prGetAllright ' + QuotedStr(qyUser.FieldByName('UserId').AsString));
        ExecSQL;
      end;
      with qyHed do
      begin
        if Active then Close;
        sql.Clear;
        sql.Add(' Select * from UserRightTB order by Tag');
        Open;
      end;
      cxEdtUserIdPropertiesChange(Sender);
      ShowBox('授权成功！');
    end;
  except
    ShowError('授权失败！');
  end;
end;

procedure TUserRightFM.btReferClick(Sender: TObject);
begin
  try
    inherited;
    if ShowDlg('确定为 <' + qyUser.FieldByName('UserName').AsString + '> 更新系统信息？') then
    begin
      with DataFM.qyTemp do
      begin
        if Active then Close;
        SQL.Clear;
        SQL.Add('Exec prUserRightImport ' + QuotedStr(qyUser.FieldByName('UserId').AsString) + ',1');
        ExecSQL;
      end;
      ShowBox('导入成功！');
      with qyHed do
      begin
        if Active then Close;
        sql.Clear;
        sql.Add(' Select * from UserRightTB order by Tag');
        Open;
      end;
      with qyItemKindRight do
      begin
        if Active then Close;
        sql.Clear;
        sql.Add(' Select * from ItemKindRightTB order by ItemKindId');
        Open;
      end;
      cxEdtUserIdPropertiesChange(Sender);
    end;
  except
    ShowBox('导入失败！');
  end;
end;

procedure TUserRightFM.btSaveClick(Sender: TObject);
begin
  try
    qyHed.UpdateBatch();
    qyItemKindRight.UpdateBatch();
    ShowBox('保存成功！');
    TextReadOnly(Self, true);
    inherited;
    btRefer.Enabled := true;
  except
  end;
end;

procedure TUserRightFM.btTempClick(Sender: TObject);
begin
  inherited;
  if btTemp.Caption = '收 缩' then
  begin
    cxgrdtbv1.DataController.Groups.FullCollapse;
    cxListRight.FullCollapse;
    btTemp.Caption := '展 开';
  end
  else
  begin
    cxgrdtbv1.DataController.Groups.FullExpand;
    cxListRight.FullExpand;
    btTemp.Caption := '收 缩';
  end;
end;

procedure TUserRightFM.cxEdtUserIdPropertiesChange(Sender: TObject);
begin
  inherited;
  //自动获取表单
  with DataFM.qyTemp do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('Exec prUserRightImport ' + QuotedStr(trim(cxEdtUserId.text)) + ',0');
    ExecSQL;
  end;

  with qyHed do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from UserRightTB where UserId=' + QuotedStr(trim(cxEdtUserId.text)) + ' Order by Tag');
    Open;
  end;
  with qyItemKindRight do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select * from ItemKindRightTB where UserId=' + QuotedStr(trim(cxEdtUserId.text)) + ' Order by ItemKindId');
    Open;
  end;
  cxListRight.FullExpand;
  cxtrbItemKind.FullExpand;
end;

procedure TUserRightFM.cxListRightEditValueChanged(Sender: TcxCustomTreeList;
  AColumn: TcxTreeListColumn);
var
  i: Integer;
  sSelectId: string;
  bSelect: Boolean;
begin
  //太卡暂时不要
  { if (cxListRight.FocusedNode.HasChildren) and (AColumn.DataBinding.ValueType = 'Boolean') then
   begin
      sSelectId := qyHed.FieldByName('Tag').AsString;
      bSelect := not AColumn.EditValue;
      qyHed.First;
      for I := 0 to qyHed.RecordCount - 1 do
      begin
         if qyHed.State = dsBrowse then qyHed.Edit;
         if (LeftStr(qyHed.FieldByName('Tag').AsString, Length(sSelectId)) = sSelectId) or (sSelectId = '00') then
            qyHed.FieldByName(AColumn.StatusHint).AsBoolean := bSelect;
         qyHed.Next;
      end;
      qyHed.Locate('Tag', sSelectId, []);
   end; }
end;

procedure TUserRightFM.FormCreate(Sender: TObject);
begin
  sFMId := 'UserRightFM';
  sFMName := Self.Caption;
  inherited;
  sSourceUserId := '';
  btRefer.Enabled := true;
  qyUser.Open;
  qyHed.Open;
  qyItemKindRight.Open;
  cxgrdtbv1.ViewData.Expand(True);
  cxListRight.FullExpand;
  cxtrbItemKind.FullExpand;
end;

procedure TUserRightFM.FormDestroy(Sender: TObject);
begin
  inherited;
  UserRightFM := nil;
end;

procedure TUserRightFM.NAffixClick(Sender: TObject);
begin
  try
    inherited;
    if sSourceUserId = '' then
    begin
      ShowBox('请先复制权限？');
      Exit;
    end;
    if ShowDlg('确定将 <' + sSourceUserName + '> 的权限复制给 <' + qyUser.FieldByName('UserName').AsString + '> ,这将会清除其原有权限？') then
    begin
      ExeSql(' Delete UserRightTB where UserId=' + QuotedStr(qyUser.FieldByName('UserId').AsString));
      ExeSql(' InSert UserRightTB(UserId,TableId,ModuleId,Tag,pTag,bShow,bCheck,bUnCheck,HasRightLevel,bAdd,bEditPart,bEditAll,bDelPart,bDelAll,bFindPart,bFindAll, ' +
        ' bShowPrice,bEditPrice,bPrint,bExpand,bInvoice,bOther1,bOther2,bOther3) ' +
        ' select ' + QuotedStr(qyUser.FieldByName('UserId').AsString) + ',TableId,ModuleId,Tag,pTag,bShow,bCheck,bUnCheck,HasRightLevel,bAdd,bEditPart,bEditAll,bDelPart,bDelAll,bFindPart,bFindAll, ' +
        ' bShowPrice,bEditPrice,bPrint,bExpand,bInvoice,bOther1,bOther2,bOther3 from UserRightTB where UserId=' + QuotedStr(Trim(sSourceUserId)) + '');
      with qyHed do
      begin
        if Active then Close;
        sql.Clear;
        sql.Add('select * from UserRightTB where UserId=' + QuotedStr(trim(cxEdtUserId.text)) + ' Order by Tag');
        Open;
      end;
      ShowBox('粘贴成功！');
    end;
  except
    ShowBox('粘贴失败！');
  end;
end;

procedure TUserRightFM.NCopyClick(Sender: TObject);
begin
  inherited;
  sSourceUserId := qyUser.FieldByName('UserId').AsString;
  sSourceUserName := qyUser.FieldByName('UserName').AsString;
  ShowBox('复制成功！')
end;

procedure TUserRightFM.qyHedCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyHed, DataFM.qySysTable, ['TableId', 'TableDesc', 'bRight'], ['TableId', 'TableDesc', 'bRight']);
end;

procedure TUserRightFM.qyHedSumRightLevelChange(Sender: TField);
begin
  inherited;
  //根据选择的和来改变所拥有的权限级别
  if qyHed.State = dsBrowse then qyHed.Edit;
  if qyHed.FieldByName('SumRightLevel').AsString = '1' then
    qyHed.FieldByName('HasRightLevel').AsString := '1'
  else if qyHed.FieldByName('SumRightLevel').AsString = '2' then
    qyHed.FieldByName('HasRightLevel').AsString := '2'
  else if qyHed.FieldByName('SumRightLevel').AsString = '3' then
    qyHed.FieldByName('HasRightLevel').AsString := '1,2'
  else if qyHed.FieldByName('SumRightLevel').AsString = '4' then
    qyHed.FieldByName('HasRightLevel').AsString := '3'
  else if qyHed.FieldByName('SumRightLevel').AsString = '5' then
    qyHed.FieldByName('HasRightLevel').AsString := '1,3'
  else if qyHed.FieldByName('SumRightLevel').AsString = '6' then
    qyHed.FieldByName('HasRightLevel').AsString := '2,3'
  else if qyHed.FieldByName('SumRightLevel').AsString = '7' then
    qyHed.FieldByName('HasRightLevel').AsString := '1,2,3'
end;

procedure TUserRightFM.qyItemKindRightCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyItemKindRight, DataFM.qyItemKind, ['ItemKindId', 'ItemKindName'], ['ItemKindId', 'ItemKindName']);
end;

end.
