unit WKindQPS;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls,
  Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxCustomData, cxStyles, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, dxSkinsCore,
  dxSkinsDefaultPainters, Menus, DB, ADODB, StdCtrls, cxButtons,
  ExtCtrls, cxInplaceContainer, cxDBTL, cxTLData, cxCheckBox,
  dxSkinOffice2010Blue, dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine;

type
  TWKindQFM = class(TForm)
    lstTreeList: TcxDBTreeList;
    cxDBTreeList1ItemKindName: TcxDBTreeListColumn;
    pnl1: TPanel;
    btnCancel: TcxButton;
    btnOK: TcxButton;
    dsFind: TDataSource;
    qyFind: TADOQuery;
    cxDBTreeList1bSelect: TcxDBTreeListColumn;
    btnClose: TcxButton;
    qyFindAutoID: TAutoIncField;
    strngfldFindWKindId: TStringField;
    strngfldFindWKindName: TStringField;
    qyFindWFlag: TSmallintField;
    strngfldFindsDefWare: TStringField;
    qyFindbOther: TBooleanField;
    qyFindbInOther: TBooleanField;
    qyFindbOutOther: TBooleanField;
    qyFindbChangePrice: TBooleanField;
    qyFindbDefault: TBooleanField;
    qyFindbSelect: TBooleanField;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure lstTreeListEditValueChanged(Sender: TcxCustomTreeList;
      AColumn: TcxTreeListColumn);
    procedure lstTreeListDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    sId, sName, sParam, sAllId, sAllName: string;
    iFlag, iSelectKind: Integer;
    { Public declarations }
  end;

var
  WKindQFM: TWKindQFM;

implementation

uses DataPS, PublicPS;
{$R *.dfm}

procedure TWKindQFM.btnCancelClick(Sender: TObject);
begin
  try
    sId := '';
    sName := '';
    sParam := '';
    sAllId := '';
    sAllName := '';
    iFlag := 2;
    Close;
  except
  end;
end;

procedure TWKindQFM.btnCloseClick(Sender: TObject);
begin
  iFlag := 3;
  Close;
end;

procedure TWKindQFM.btnOKClick(Sender: TObject);
var
  i: Integer;
begin
  try
    sId := '';
    sName := '';
    sParam := '';
    sAllId := '';
    sAllName := '';
    qyFind.First;
    for i := 0 to qyFind.RecordCount - 1 do
    begin
      if qyFind.FieldByName('bSelect').AsBoolean then
      begin
        sId := qyFind.FieldByName('WKindId').AsString; // 单选取最后一个打勾的
        sName := qyFind.FieldByName('WKindName').AsString;
        sAllId := sAllId + '''' + qyFind.fieldByName('WKindId').AsString + ''',';
        // 多选取所以打勾的并+','
        sAllName := sAllName + '''' + qyFind.fieldByName('WKindName').AsString + ''',';
      end;
      qyFind.Next;
    end;
    if sAllId <> '' then
      sAllId := LeftStr(sAllId, Length(sAllId) - 1); // 去除最后一个','
    if sAllName <> '' then
      sAllName := LeftStr(sAllName, Length(sAllName) - 1);
    iFlag := 1;
    Close;
  except
  end;
end;

procedure TWKindQFM.FormCreate(Sender: TObject);
begin
  try
    sId := '';
    sName := '';
    sParam := '';
    sAllId := '';
    sAllName := '';
    iSelectKind := 1; // 1表示多选，2表示单选
    qyFind.Open;
    lstTreeList.FullExpand;
  except
  end;
end;

procedure TWKindQFM.lstTreeListDblClick(Sender: TObject);
begin
  if qyFind.State = dsBrowse then
    qyFind.Edit;
  qyFind.FieldByName('bSelect').AsBoolean := true;
  btnOKClick(Self);
end;

procedure TWKindQFM.lstTreeListEditValueChanged(Sender: TcxCustomTreeList;
  AColumn: TcxTreeListColumn);
var
  i: Integer;
  sSelectId: string;
  bSelect: Boolean;
begin
  if lstTreeList.FocusedNode.HasChildren then
  begin
    sSelectId := qyFind.FieldByName('WKindId').AsString;
    bSelect := not (lstTreeList.FocusedNode.Values[0]);
    qyFind.First;
    for i := 0 to qyFind.RecordCount - 1 do
    begin
      qyFind.Edit;
      if (LeftStr(qyFind.FieldByName('WKindId').AsString, Length(sSelectId)) = sSelectId) or (sSelectId = '00') then
        qyFind.FieldByName('bSelect').AsBoolean := bSelect;
      qyFind.Next;
    end;
  end;
end;

end.
