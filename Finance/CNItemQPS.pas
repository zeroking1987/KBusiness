unit CNItemQPS;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxCustomData, cxStyles, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, dxSkinsCore,
  dxSkinsDefaultPainters, Menus, DB, ADODB, StdCtrls, cxButtons,
  ExtCtrls, cxInplaceContainer, cxDBTL, cxTLData, cxCheckBox,
  dxSkinOffice2010Blue, dxSkinDevExpressStyle, dxSkinSpringTime,
  dxSkinValentine, cxContainer, cxEdit, cxTextEdit, cxLabel;

type
  TCNItemQFM = class(TForm)
    lstTreeList: TcxDBTreeList;
    cxDBTreeList1WareId: TcxDBTreeListColumn;
    cxDBTreeList1WareName: TcxDBTreeListColumn;
    pnl1: TPanel;
    btnCancel: TcxButton;
    btnOK: TcxButton;
    dsFind: TDataSource;
    qyFind: TADOQuery;
    cxDBTreeList1bSelect: TcxDBTreeListColumn;
    btnClose: TcxButton;
    cxlbl2: TcxLabel;
    cxFilter: TcxTextEdit;
    qyFindAutoID: TAutoIncField;
    qyFindID: TStringField;
    qyFindParentId: TStringField;
    qyFindbSelect: TBooleanField;
    qyFindCNItemName: TStringField;
    qyFindsFlag: TStringField;
    qyFindiFlag: TSmallintField;
    qyFindFZObject: TStringField;
    qyFindAccSubjectId: TStringField;
    qyFindRemark: TStringField;
    qyFindMakeDate: TDateTimeField;
    qyFindMakeMan: TStringField;
    qyFindMakeManName: TStringField;
    lstTreeListcxDBTreeListColumn1: TcxDBTreeListColumn;
    lstTreeListcxDBTreeListColumn2: TcxDBTreeListColumn;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure lstTreeListEditValueChanged(Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn);
    procedure cxDBTreeList1bSelectPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lstTreeListDblClick(Sender: TObject);
    procedure cxFilterPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    sId, sName, sAllId, sAllName, sPubWhere: string;
    iFlag, iSelectKind: Integer;
    { Public declarations }
  end;

var
  CNItemQFM: TCNItemQFM;

implementation

uses DataPS, PublicPS;
{$R *.dfm}

procedure TCNItemQFM.btnCancelClick(Sender: TObject);
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

procedure TCNItemQFM.btnCloseClick(Sender: TObject);
begin
  iFlag := 3;
  Close;
end;

procedure TCNItemQFM.btnOKClick(Sender: TObject);
var
  i: Integer;
begin
  try
    sId := '';
    sName := '';
    sAllId := '';
    sAllName := '';
    if lstTreeList.FocusedNode.HasChildren then
    begin
      ShowBox('还有下级项目,该级不能选择');
      Exit;
    end;
    qyFind.Filter := ' bSelect=1';
    qyFind.Filtered := true;
    qyFind.First;
    for I := 0 to qyFind.RecordCount - 1 do
    begin
      if qyFind.FieldByName('bSelect').AsBoolean then
      begin
        sId := qyFind.FieldByName('Id').AsString; //单选取最后一个打勾的
        sName := qyFind.FieldByName('CNItemName').AsString;
        sAllId := sAllId + qyFind.FieldByName('Id').AsString + ','; //多选取所以打勾的并+','
        sAllName := sAllName + qyFind.FieldByName('CNItemName').AsString + ',';
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

procedure TCNItemQFM.cxDBTreeList1bSelectPropertiesChange(Sender: TObject);
var
  i: Integer;
  sId: string;
begin
  if iSelectKind = 2 then
  begin
    sId := '';
    sId := qyFind.FieldByName('Id').AsString;
    qyFind.First;
    for i := 0 to qyFind.RecordCount - 1 do
    begin
      if qyFind.FieldByName('Id').AsString <> sId then
      begin
        if qyFind.State = dsBrowse then qyFind.Edit;
        if qyFind.State = dsBrowse then qyFind.Edit;
        qyFind.FieldByName('bSelect').AsBoolean := false;
      end;
      qyFind.Next;
    end;
    qyFind.Locate('Id', sId, []);
  end;
end;

procedure TCNItemQFM.cxFilterPropertiesChange(Sender: TObject);
begin
  with qyFind do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('select * from  CNItemTB  ');
    SQL.Add('where 1=1 ');
    if sPubWhere <> '' then
      SQL.Add(sPubWhere);
    if cxFilter.Text <> '' then
      SQL.Add('and CNItemName like ''%' + cxFilter.Text + '%'' or dbo.fnGetPY(CNItemName) like ''%' + cxFilter.Text + '%''');
    SQL.Add('order by Id');
    Open;
  end;
  lstTreeList.FullExpand;
end;

procedure TCNItemQFM.FormCreate(Sender: TObject);
begin
  try
    sId := '';
    sName := '';
    sAllId := '';
    sAllName := '';
    sPubWhere := '';
    qyFind.Open;
    lstTreeList.FullExpand;
  except
  end;
end;

procedure TCNItemQFM.FormShow(Sender: TObject);
begin
  if iSelectKind = 1 then
  begin
    Self.Caption := Self.Caption + '(多选,)';
    cxDBTreeList1bSelect.Visible := True;
  end
  else
  begin
    Self.Caption := Self.Caption + '(单选)';
    cxDBTreeList1bSelect.Visible := False;
  end;
  lstTreeList.FullExpand;
end;

procedure TCNItemQFM.lstTreeListDblClick(Sender: TObject);
begin
  if qyFind.State = dsBrowse then qyFind.Edit;
  qyFind.FieldByName('bSelect').AsBoolean := true;
  btnOKClick(Self);
end;

procedure TCNItemQFM.lstTreeListEditValueChanged(Sender: TcxCustomTreeList;
  AColumn: TcxTreeListColumn);
var
  i: Integer;
  sSelectId: string;
  bSelect: Boolean;
begin
  if (lstTreeList.FocusedNode.HasChildren) and (iSelectKind = 1) then
  begin
    sSelectId := qyFind.FieldByName('Id').AsString;
    bSelect := not (lstTreeList.FocusedNode.Values[0]);
    qyFind.First;
    for I := 0 to qyFind.RecordCount - 1 do
    begin
      qyFind.Edit;
      if (LeftStr(qyFind.FieldByName('Id').AsString, Length(sSelectId)) = sSelectId) or (sSelectId = '00') then
        qyFind.FieldByName('bSelect').AsBoolean := bSelect;
      qyFind.Next;
    end;
    qyFind.Locate('Id', sSelectId, []);
  end;
end;

end.

