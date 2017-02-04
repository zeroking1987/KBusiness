unit ColorQPS;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxCustomData, cxStyles, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, dxSkinsCore,
  dxSkinsDefaultPainters, Menus, DB, ADODB, StdCtrls, cxButtons,
  ExtCtrls, cxInplaceContainer, cxDBTL, cxTLData, cxCheckBox,
  dxSkinOffice2010Blue, dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine,
  cxContainer, cxEdit, cxTextEdit, cxLabel;

type
  TColorQFM = class(TForm)
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
    qyFindAutoId: TAutoIncField;
    blnfldFindbSelect: TBooleanField;
    qyFindParentId: TStringField;
    qyFindRemark: TStringField;
    qyFindColorId: TStringField;
    qyFindColorName: TStringField;
    cxlbl2: TcxLabel;
    cxFilter: TcxTextEdit;
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
  ColorQFM: TColorQFM;

implementation

uses DataPS, PublicPS;
{$R *.dfm}

procedure TColorQFM.btnCancelClick(Sender: TObject);
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

procedure TColorQFM.btnCloseClick(Sender: TObject);
begin
  iFlag := 3;
  Close;
end;

procedure TColorQFM.btnOKClick(Sender: TObject);
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
        sId := qyFind.FieldByName('ColorId').AsString; //单选取最后一个打勾的
        sName := qyFind.FieldByName('ColorName').AsString;
        sAllId := sAllId + qyFind.FieldByName('ColorId').AsString + ','; //多选取所以打勾的并+','
        sAllName := sAllName + qyFind.FieldByName('ColorName').AsString + ',';
      end;
      qyFind.Next;
    end;
    qyFind.Filter := '';
    qyFind.Filtered := false;
    if sAllId <> '' then
      sAllId := LeftStr(sAllId, Length(sAllId) - 1); //去除最后一个','
    if sAllName <> '' then
      sAllName := LeftStr(sAllName, Length(sAllName) - 1);
    iFlag := 1;
    Close;
  except
  end;
end;

procedure TColorQFM.cxDBTreeList1bSelectPropertiesChange(Sender: TObject);
var
  i: Integer;
  sId: string;
begin
  if iSelectKind = 2 then
  begin
    sId := '';
    sId := qyFind.FieldByName('ColorId').AsString;
    qyFind.First;
    for i := 0 to qyFind.RecordCount - 1 do
    begin
      if qyFind.FieldByName('ColorId').AsString <> sId then
      begin
        if qyFind.State = dsBrowse then qyFind.Edit;
        if qyFind.State = dsBrowse then qyFind.Edit;
        qyFind.FieldByName('bSelect').AsBoolean := false;
      end;
      qyFind.Next;
    end;
    qyFind.Locate('ColorId', sId, []);
  end;
end;

procedure TColorQFM.cxFilterPropertiesChange(Sender: TObject);
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
      qyFind.Filter := 'ColorName like ''%' + cxFilter.Text + '%'' ';
      qyFind.Filtered := true;
    end;
  except
  end;
end;

procedure TColorQFM.FormCreate(Sender: TObject);
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

procedure TColorQFM.FormShow(Sender: TObject);
begin
  if iSelectKind = 1 then
    Self.Caption := Self.Caption + '(多选,)'
  else
    Self.Caption := Self.Caption + '(单选)';
end;

procedure TColorQFM.lstTreeListDblClick(Sender: TObject);
begin
  if qyFind.State = dsBrowse then qyFind.Edit;
  qyFind.FieldByName('bSelect').AsBoolean := true;
  btnOKClick(Self);
end;

procedure TColorQFM.lstTreeListEditValueChanged(Sender: TcxCustomTreeList;
  AColumn: TcxTreeListColumn);
var
  i: Integer;
  sSelectId: string;
  bSelect: Boolean;
begin
  if (lstTreeList.FocusedNode.HasChildren) and (iSelectKind = 1) then
  begin
    sSelectId := qyFind.FieldByName('ColorId').AsString;
    bSelect := not (lstTreeList.FocusedNode.Values[0]);
    qyFind.First;
    for I := 0 to qyFind.RecordCount - 1 do
    begin
      qyFind.Edit;
      if (LeftStr(qyFind.FieldByName('ColorId').AsString, Length(sSelectId)) = sSelectId) or (sSelectId = '00') then
        qyFind.FieldByName('bSelect').AsBoolean := bSelect;
      qyFind.Next;
    end;
    qyFind.Locate('ColorId', sSelectId, []);
  end;
end;

end.
