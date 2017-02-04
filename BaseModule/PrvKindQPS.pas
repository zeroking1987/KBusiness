unit PrvKindQPS;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxCustomData, cxStyles, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, dxSkinsCore,
  dxSkinsDefaultPainters, Menus, DB, ADODB, StdCtrls, cxButtons,
  ExtCtrls, cxInplaceContainer, cxDBTL, cxTLData, cxCheckBox,
  dxSkinOffice2010Blue;

type
  TPrvKindQFM = class(TForm)
    lstTreeList: TcxDBTreeList;
    cxDBTreeList1PrvKindId: TcxDBTreeListColumn;
    cxDBTreeList1PrvKindCode: TcxDBTreeListColumn;
    cxDBTreeList1PrvKindName: TcxDBTreeListColumn;
    pnl1: TPanel;
    btnCancel: TcxButton;
    btnOK: TcxButton;
    dsFind: TDataSource;
    qyFind: TADOQuery;
    qyFindAutoId: TIntegerField;
    strngfldFindPrvKindId: TStringField;
    strngfldFindPrvKindCode: TStringField;
    strngfldFindPrvKindName: TStringField;
    strngfldFindParentId: TStringField;
    strngfldFindPrvParam: TStringField;
    strngfldFindRemark: TStringField;
    qyFindbSelect: TBooleanField;
    cxDBTreeList1bSelect: TcxDBTreeListColumn;
    btnClose: TcxButton;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure lstTreeListEditValueChanged(Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn);
    procedure cxDBTreeList1bSelectPropertiesChange(Sender: TObject);
    procedure lstTreeListDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    sId, sName, sAllId, sAllName: string;
    iFlag, iSelectKind: Integer;
    { Public declarations }
  end;

var
  PrvKindQFM: TPrvKindQFM;

implementation

uses DataPS, PublicPS;
{$R *.dfm}

procedure TPrvKindQFM.btnCancelClick(Sender: TObject);
begin
  try
    sId := '';
    sName := '';
    sAllId := '';
    sAllName := '';
    iFlag := 2;
    Close;
  except
  end;
end;

procedure TPrvKindQFM.btnCloseClick(Sender: TObject);
begin
  iFlag := 3;
  Close;
end;

procedure TPrvKindQFM.btnOKClick(Sender: TObject);
var
  i: Integer;
begin
  try
    sId := '';
    sName := '';
    sAllId := '';
    sAllName := '';
    qyFind.First;
    for I := 0 to qyFind.RecordCount - 1 do
    begin
      if qyFind.FieldByName('bSelect').AsBoolean then
      begin
        sId := qyFind.FieldByName('PrvKindId').AsString; //单选取最后一个打勾的
        sName := qyFind.FieldByName('PrvKindName').AsString;
        sAllId := sAllId + qyFind.FieldByName('PrvKindId').AsString + ','; //多选取所以打勾的并+','
        sAllName := sAllName + qyFind.FieldByName('PrvKindName').AsString + ',';
      end;
      qyFind.Next;
    end;
    if sAllId <> '' then
      sAllId := LeftStr(sAllId, Length(sAllId) - 1); //去除最后一个','
    if sAllName <> '' then
      sAllName := LeftStr(sAllName, Length(sAllName) - 1);
    iFlag := 1;
    Close;
  except
  end;
end;

procedure TPrvKindQFM.cxDBTreeList1bSelectPropertiesChange(Sender: TObject);
var
  i: Integer;
  sId: string;
begin
  if iSelectKind = 2 then
  begin
    sId := '';
    sId := qyFind.FieldByName('PrvKindId').AsString;
    qyFind.First;
    for i := 0 to qyFind.RecordCount - 1 do
    begin
      if qyFind.FieldByName('PrvKindId').AsString <> sId then
      begin
        if qyFind.State = dsBrowse then qyFind.Edit;
        if qyFind.State = dsBrowse then qyFind.Edit; //不放两遍要报错
        qyFind.FieldByName('bSelect').AsBoolean := False;
      end;
      qyFind.Next;
    end;
    qyFind.Locate('PrvKindId', sId, []);
  end;
end;

procedure TPrvKindQFM.FormCreate(Sender: TObject);
begin
  try
    sId := '';
    sName := '';
    sAllId := '';
    sAllName := '';
    iSelectKind := 1; //1表示多选，2表示单选
    qyFind.Open;
    lstTreeList.FullExpand;
  except
  end;
end;

procedure TPrvKindQFM.lstTreeListDblClick(Sender: TObject);
begin
  if qyFind.State = dsBrowse then qyFind.Edit;
  qyFind.FieldByName('bSelect').AsBoolean := true;
  btnOKClick(Self);
end;

procedure TPrvKindQFM.lstTreeListEditValueChanged(Sender: TcxCustomTreeList;
  AColumn: TcxTreeListColumn);
var
  i: Integer;
  sSelectId: string;
  bSelect: Boolean;
begin
  if lstTreeList.FocusedNode.HasChildren then
  begin
    sSelectId := qyFind.FieldByName('PrvKindId').AsString;
    bSelect := not (lstTreeList.FocusedNode.Values[0]);
    qyFind.First;
    for I := 0 to qyFind.RecordCount - 1 do
    begin
      qyFind.Edit;
      if (LeftStr(qyFind.FieldByName('PrvKindId').AsString, Length(sSelectId)) = sSelectId) or (sSelectId = '00') then
        qyFind.FieldByName('bSelect').AsBoolean := bSelect;
      qyFind.Next;
    end;
    qyFind.Locate('PrvKindId', sSelectId, []);
  end;
end;

end.
