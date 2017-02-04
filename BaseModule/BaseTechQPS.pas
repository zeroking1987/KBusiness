unit BaseTechQPS;

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
  TBaseTechQFM = class(TForm)
    lstTreeList: TcxDBTreeList;
    cxDBTreeList1WareId: TcxDBTreeListColumn;
    cxDBTreeList1WareName: TcxDBTreeListColumn;
    pnl1: TPanel;
    btnCancel: TcxButton;
    btnOK: TcxButton;
    dsFind: TDataSource;
    qyFind: TADOQuery;
    cxtreelistbSelect: TcxDBTreeListColumn;
    btnClose: TcxButton;
    lstTreeListcxDBTreeListColumn1: TcxDBTreeListColumn;
    lstTreeListcxDBTreeListColumn2: TcxDBTreeListColumn;
    cxlbl2: TcxLabel;
    cxFilter: TcxTextEdit;
    lstTreeListcxDBTreeListColumn3: TcxDBTreeListColumn;
    lstTreeListcxDBTreeListColumn4: TcxDBTreeListColumn;
    lstTreeListcxDBTreeListColumn5: TcxDBTreeListColumn;
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
    sId, sName, sAllId, sAllName: string;
    iFlag, iSelectKind: Integer;
    { Public declarations }
  end;

var
  BaseTechQFM: TBaseTechQFM;

implementation

uses DataPS, PublicPS;
{$R *.dfm}

procedure TBaseTechQFM.btnCancelClick(Sender: TObject);
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

procedure TBaseTechQFM.btnCloseClick(Sender: TObject);
begin
  iFlag := 3;
  Close;
end;

procedure TBaseTechQFM.btnOKClick(Sender: TObject);
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
        sId := qyFind.FieldByName('TechId').AsString; //单选取最后一个打勾的
        sName := qyFind.FieldByName('TechName').AsString;
        sAllId := sAllId + qyFind.FieldByName('TechId').AsString + ','; //多选取所以打勾的并+','
        sAllName := sAllName + qyFind.FieldByName('TechName').AsString + ',';
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

procedure TBaseTechQFM.cxDBTreeList1bSelectPropertiesChange(Sender: TObject);
var
  i: Integer;
  sId: string;
begin
  if iSelectKind = 2 then
  begin
    sId := '';
    sId := qyFind.FieldByName('TechId').AsString;
    qyFind.First;
    for i := 0 to qyFind.RecordCount - 1 do
    begin
      if qyFind.FieldByName('TechId').AsString <> sId then
      begin
        if qyFind.State = dsBrowse then qyFind.Edit;
        if qyFind.State = dsBrowse then qyFind.Edit;
        qyFind.FieldByName('bSelect').AsBoolean := false;
      end;
      qyFind.Next;
    end;
    qyFind.Locate('TechId', sId, []);
  end;
end;

procedure TBaseTechQFM.cxFilterPropertiesChange(Sender: TObject);
begin
  try
    if cxFilter.Text = '' then
    begin
      qyFind.Filter := '';
      qyFind.Filtered := false;
      lstTreeList.FullExpand;
    end
    else
    begin
      qyFind.Filter := 'TechName like ''%' + cxFilter.Text + '%'' or TechNamePY like ''%' + cxFilter.Text + '%''';
      qyFind.Filtered := true;
    end;
  except
  end;
end;

procedure TBaseTechQFM.FormCreate(Sender: TObject);
begin
  try
    sId := '';
    sName := '';
    sAllId := '';
    sAllName := '';
    qyFind.Open;
    lstTreeList.FullExpand;
  except
  end;
end;

procedure TBaseTechQFM.FormShow(Sender: TObject);
begin
  if iSelectKind = 1 then
  begin
    Self.Caption := Self.Caption + '(多选)';
    cxtreelistbSelect.Visible:=True;
  end
  else
  begin
    Self.Caption := Self.Caption + '(单选)';
    cxtreelistbSelect.Visible:=False;
  end;
end;

procedure TBaseTechQFM.lstTreeListDblClick(Sender: TObject);
begin
  if qyFind.State = dsBrowse then qyFind.Edit;
  qyFind.FieldByName('bSelect').AsBoolean := true;
  btnOKClick(Self);
end;

procedure TBaseTechQFM.lstTreeListEditValueChanged(Sender: TcxCustomTreeList;
  AColumn: TcxTreeListColumn);
var
  i: Integer;
  sSelectId: string;
  bSelect: Boolean;
begin
  if (lstTreeList.FocusedNode.HasChildren) and (iSelectKind = 1) then
  begin
    sSelectId := qyFind.FieldByName('TechId').AsString;
    bSelect := not (lstTreeList.FocusedNode.Values[0]);
    qyFind.First;
    for I := 0 to qyFind.RecordCount - 1 do
    begin
      qyFind.Edit;
      if (LeftStr(qyFind.FieldByName('TechId').AsString, Length(sSelectId)) = sSelectId) or (sSelectId = '00') then
        qyFind.FieldByName('bSelect').AsBoolean := bSelect;
      qyFind.Next;
    end;
    qyFind.Locate('TechId', sSelectId, []);
  end;
end;

end.
