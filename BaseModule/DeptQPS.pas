unit DeptQPS;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxCustomData, cxStyles, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, dxSkinsCore,
  dxSkinsDefaultPainters, Menus, DB, ADODB, StdCtrls, cxButtons,
  ExtCtrls, cxInplaceContainer, cxDBTL, cxTLData, cxCheckBox,
  dxSkinOffice2010Blue;

type
  TDeptQFM = class(TForm)
    lstTreeList: TcxDBTreeList;
    cxDBTreeList1DeptId: TcxDBTreeListColumn;
    cxDBTreeList1DeptCode: TcxDBTreeListColumn;
    cxDBTreeList1DeptName: TcxDBTreeListColumn;
    pnl1: TPanel;
    btnCancel: TcxButton;
    btnOK: TcxButton;
    dsFind: TDataSource;
    qyFind: TADOQuery;
    qyFindAutoId: TIntegerField;
    strngfldFindParentId: TStringField;
    strngfldFindRemark: TStringField;
    qyFindbSelect: TBooleanField;
    cxDBTreeList1bSelect: TcxDBTreeListColumn;
    btnClose: TcxButton;
    qyFindDeptId: TStringField;
    qyFindDeptCode: TStringField;
    qyFindDeptName: TStringField;
    qyFindPrincipal: TStringField;
    qyFindWareId: TStringField;
    qyFindWareName: TStringField;
    lstTreeListcxDBTreeListColumn1: TcxDBTreeListColumn;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure lstTreeListEditValueChanged(Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn);
    procedure cxDBTreeList1bSelectPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lstTreeListDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    sWareId, sId, sName, sAllWareId, sAllId, sAllName: string;
    iFlag, iSelectKind: Integer;
    { Public declarations }
  end;

var
  DeptQFM: TDeptQFM;

implementation

uses DataPS, PublicPS;
{$R *.dfm}

procedure TDeptQFM.btnCancelClick(Sender: TObject);
begin
  try
    sWareId := '';
    sId := '';
    sName := '';
    sAllWareId := '';
    sAllId := '';
    sAllName := '';
    iFlag := 2;
    Close;
  except
  end;
end;

procedure TDeptQFM.btnCloseClick(Sender: TObject);
begin
  iFlag := 3;
  Close;
end;

procedure TDeptQFM.btnOKClick(Sender: TObject);
var
  i: Integer;
begin
  try
    sWareId := '';
    sId := '';
    sName := '';
    sAllWareId := '';
    sAllId := '';
    sAllName := '';
    qyFind.First;
    for I := 0 to qyFind.RecordCount - 1 do
    begin
      if qyFind.FieldByName('bSelect').AsBoolean then
      begin
        sWareId := qyFind.FieldByName('WareId').AsString;
        sId := qyFind.FieldByName('DeptId').AsString; //单选取最后一个打勾的
        sName := qyFind.FieldByName('DeptName').AsString;
        sAllWareId := qyFind.FieldByName('WareId').AsString;
        sAllId := sAllId + qyFind.FieldByName('DeptId').AsString + ','; //多选取所以打勾的并+','
        sAllName := sAllName + qyFind.FieldByName('DeptName').AsString + ',';
      end;
      qyFind.Next;
    end;
    if sAllWareId <> '' then
      sAllWareId := LeftStr(sAllWareId, Length(sAllId) - 1);
    if sAllId <> '' then
      sAllId := LeftStr(sAllId, Length(sAllId) - 1); //去除最后一个','
    if sAllName <> '' then
      sAllName := LeftStr(sAllName, Length(sAllName) - 1);
    iFlag := 1;
    Close;
  except
  end;
end;

procedure TDeptQFM.cxDBTreeList1bSelectPropertiesChange(Sender: TObject);
var
  i: Integer;
  sId: string;
begin
  if iSelectKind = 2 then
  begin
    sId := '';
    sId := qyFind.FieldByName('DeptId').AsString;
    qyFind.First;
    for i := 0 to qyFind.RecordCount - 1 do
    begin
      if qyFind.FieldByName('DeptId').AsString <> sId then
      begin
        if qyFind.State = dsBrowse then qyFind.Edit;
        if qyFind.State = dsBrowse then qyFind.Edit;
        qyFind.FieldByName('bSelect').AsBoolean := False;
      end;
      qyFind.Next;
    end;
    qyFind.Locate('DeptId', sId, []);
  end;
end;

procedure TDeptQFM.FormCreate(Sender: TObject);
begin
  try
    sWareId := '';
    sId := '';
    sName := '';
    sAllWareId := '';
    sAllId := '';
    sAllName := '';
    iSelectKind := 1; //1表示多选，2表示单选
    qyFind.Open;
    lstTreeList.FullExpand;
  except
  end;
end;

procedure TDeptQFM.FormShow(Sender: TObject);
begin
  if iSelectKind = 1 then
    Self.Caption := Self.Caption + '(可多选)'
  else
    Self.Caption := Self.Caption + '(单选)';
end;

procedure TDeptQFM.lstTreeListDblClick(Sender: TObject);
begin
  if qyFind.State = dsBrowse then qyFind.Edit;
  qyFind.FieldByName('bSelect').AsBoolean := true;
  btnOKClick(Self);
end;

procedure TDeptQFM.lstTreeListEditValueChanged(Sender: TcxCustomTreeList;
  AColumn: TcxTreeListColumn);
var
  i: Integer;
  sSelectId: string;
  bSelect: Boolean;
begin
  if lstTreeList.FocusedNode.HasChildren then
  begin
    sSelectId := qyFind.FieldByName('DeptId').AsString;
    bSelect := not (lstTreeList.FocusedNode.Values[0]);
    qyFind.First;
    for I := 0 to qyFind.RecordCount - 1 do
    begin
      qyFind.Edit;
      if (LeftStr(qyFind.FieldByName('DeptId').AsString, Length(sSelectId)) = sSelectId) or (sSelectId = '00') then
        qyFind.FieldByName('bSelect').AsBoolean := bSelect;
      qyFind.Next;
    end;
    qyFind.Locate('DeptId', sSelectId, []);
  end;
end;

end.
