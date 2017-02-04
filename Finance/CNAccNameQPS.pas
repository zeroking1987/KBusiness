unit CNAccNameQPS;

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
  TCNAccNameQFM = class(TForm)
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
    qyFindbSelect: TBooleanField;
    qyFindAccName: TStringField;
    qyFindAccKind: TStringField;
    qyFindBankName: TStringField;
    qyFindBankId: TStringField;
    qyFindCurName: TStringField;
    qyFindAccSubjectId: TStringField;
    qyFindRemark: TStringField;
    qyFindMakeDate: TDateTimeField;
    qyFindMakeMan: TStringField;
    qyFindMakeManName: TStringField;
    lstTreeListcxDBTreeListColumn1: TcxDBTreeListColumn;
    lstTreeListcxDBTreeListColumn2: TcxDBTreeListColumn;
    procedure btnOKClick(Sender: TObject);
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
  CNAccNameQFM: TCNAccNameQFM;

implementation

uses DataPS, PublicPS;
{$R *.dfm}

procedure TCNAccNameQFM.btnCancelClick(Sender: TObject);
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

procedure TCNAccNameQFM.btnCloseClick(Sender: TObject);
begin
  iFlag := 3;
  Close;
end;

procedure TCNAccNameQFM.btnOKClick(Sender: TObject);
var
  i: Integer;
begin
  try
    sId := '';
    sName := '';
    sAllId := '';
    sAllName := '';
    qyFind.Filter := ' bSelect=1';
    qyFind.Filtered := true;
    qyFind.First;
    for I := 0 to qyFind.RecordCount - 1 do
    begin
      if qyFind.FieldByName('bSelect').AsBoolean then
      begin
        sId := qyFind.FieldByName('AccName').AsString; //单选取最后一个打勾的
        sName := qyFind.FieldByName('AccName').AsString;
        sAllId := sAllId + qyFind.FieldByName('AccName').AsString + ','; //多选取所以打勾的并+','
        sAllName := sAllName + qyFind.FieldByName('AccName').AsString + ',';
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

procedure TCNAccNameQFM.cxDBTreeList1bSelectPropertiesChange(Sender: TObject);
var
  i: Integer;
  sId: string;
begin
  if iSelectKind = 2 then
  begin
    sId := '';
    sId := qyFind.FieldByName('AccName').AsString;
    qyFind.First;
    for i := 0 to qyFind.RecordCount - 1 do
    begin
      if qyFind.FieldByName('AccName').AsString <> sId then
      begin
        if qyFind.State = dsBrowse then qyFind.Edit;
        if qyFind.State = dsBrowse then qyFind.Edit;
        qyFind.FieldByName('bSelect').AsBoolean := false;
      end;
      qyFind.Next;
    end;
    qyFind.Locate('AccName', sId, []);
  end;
end;

procedure TCNAccNameQFM.cxFilterPropertiesChange(Sender: TObject);
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
      qyFind.Filter := 'AccName like ''%' + cxFilter.Text + '%''';
      qyFind.Filtered := true;
    end;
  except
  end;
end;

procedure TCNAccNameQFM.FormShow(Sender: TObject);
begin
  try
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

    sId := '';
    sName := '';
    sAllId := '';
    sAllName := '';
    with qyFind do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add(' select * from CNAccNameTB where 1=1 ');
      if sPubWhere <> '' then
        SQL.Add(sPubWhere);
      Sql.Add('Order by AccKind,AccName');
      Open;
    end;
    lstTreeList.FullExpand;
  except
  end;
end;

procedure TCNAccNameQFM.lstTreeListDblClick(Sender: TObject);
begin
  if qyFind.State = dsBrowse then qyFind.Edit;
  qyFind.FieldByName('bSelect').AsBoolean := true;
  btnOKClick(Self);
end;

procedure TCNAccNameQFM.lstTreeListEditValueChanged(Sender: TcxCustomTreeList;
  AColumn: TcxTreeListColumn);
var
  i: Integer;
  sSelectId: string;
  bSelect: Boolean;
begin
  if (lstTreeList.FocusedNode.HasChildren) and (iSelectKind = 1) then
  begin
    sSelectId := qyFind.FieldByName('AccName').AsString;
    bSelect := not (lstTreeList.FocusedNode.Values[0]);
    qyFind.First;
    for I := 0 to qyFind.RecordCount - 1 do
    begin
      qyFind.Edit;
      if (LeftStr(qyFind.FieldByName('AccName').AsString, Length(sSelectId)) = sSelectId) or (sSelectId = '00') then
        qyFind.FieldByName('bSelect').AsBoolean := bSelect;
      qyFind.Next;
    end;
    qyFind.Locate('AccName', sSelectId, []);
  end;
end;

end.

