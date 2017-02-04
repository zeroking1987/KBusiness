unit WareItemQPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SBasePS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, dxSkinsdxBarPainter, ADODB, dxBar,
  cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, dxtree, dxdbtree, cxTextEdit, StdCtrls, ExtCtrls, cxGroupBox,
  cxCheckGroup, cxMaskEdit, cxDropDownEdit, cxCheckComboBox, cxCheckBox,
  dxSkinOffice2010Blue, cxLabel, cxNavigator, cxSpinEdit, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine, Vcl.Menus, cxGridCustomPopupMenu,
  cxGridPopupMenu, dxSkinOffice2013LightGray, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark;

type
  TWareItemQFM = class(TSBaseFM)
    cxchg1: TcxCheckGroup;
    intgrfldHedAutoId: TIntegerField;
    blnfldHedbSelect: TBooleanField;
    qyHedItemKindId: TStringField;
    qyHedItemKindCode: TStringField;
    qyHedItemKindName: TStringField;
    qyHedParentId: TStringField;
    qyHedParam: TStringField;
    qyHedKindWare: TStringField;
    qyHedRemark: TStringField;
    cxgrdtbvbSelect: TcxGridDBColumn;
    cxgrdtbvItemId: TcxGridDBColumn;
    cxgrdtbvItemCode: TcxGridDBColumn;
    cxgrdtbvItemPYCode: TcxGridDBColumn;
    cxgrdtbvItemName: TcxGridDBColumn;
    cxgrdtbvItemSpc: TcxGridDBColumn;
    cxgrdtbvWareId: TcxGridDBColumn;
    cxgrdtbvWareName: TcxGridDBColumn;
    cxgrdtbvWareNum: TcxGridDBColumn;
    cxgrdtbvProType: TcxGridDBColumn;
    cxgrdtbvColor: TcxGridDBColumn;
    cxgrdtbvBatchNo: TcxGridDBColumn;
    cxgrdtbvPlaceNo: TcxGridDBColumn;
    cxgrdtbvCompactNo: TcxGridDBColumn;
    cxgrdtbvObjectId: TcxGridDBColumn;
    cxgrdtbvTechName: TcxGridDBColumn;
    cxgrdtbvInDate: TcxGridDBColumn;
    cxgrdtbvPState: TcxGridDBColumn;
    cxgrdtbvColumn1: TcxGridDBColumn;
    procedure btAllSelectClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btUnSelectClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tvClick(Sender: TObject);
    procedure cxEdtValueKeyPress(Sender: TObject; var Key: Char);
    procedure cxgrdbclmnSelectPropertiesChange(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    sItemId, sWareId: string;
    { Public declarations }
  end;

var
  WareItemQFM: TWareItemQFM;

implementation
uses PublicPS;
{$R *.dfm}

procedure TWareItemQFM.btAllSelectClick(Sender: TObject);
var
  i: Integer;
  sId: string;
begin
  if iSelectKind = 2 then
  begin
    ShowBox('请单选！');
    Exit;
  end;
  sId := qyFind.FieldByName('ItemId').AsString;
  qyFind.First;
  for I := 0 to qyFind.RecordCount - 1 do
  begin
    if qyFind.State = dsBrowse then qyFind.Edit;
    qyFind.FieldByName('bSelect').AsBoolean := true;
    qyFind.Next
  end;
  qyFind.Locate('ItemId', sId, []);
end;

procedure TWareItemQFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if sItemId <> '' then
    sWhere := sWhere + ' and a.ItemId=' + QuotedStr(sItemId);
  if sWareId <> '' then
    sWhere := sWhere + ' and a.WareId=' + QuotedStr(sWareId);
  if cxEdtValue.text <> '' then
    sWhere := sWhere + ' and (b.ItemCode like ''%' + trim(cxEdtValue.text) + '%'' or b.ItemPYCode like ''%' + trim(cxEdtValue.text) + '%'' or b.ItemName like ''%' + trim(cxEdtValue.text) + '%'' )';
  if cxchg1.States[0] = cbsUnchecked then
    sWhere := sWhere + ' and b.ItemParam<>''原材料''';
  if cxchg1.States[1] = cbsUnchecked then
    sWhere := sWhere + ' and b.ItemParam<>''辅料''';
  if cxchg1.States[2] = cbsUnchecked then
    sWhere := sWhere + ' and b.ItemParam<>''半成品''';
  if cxchg1.States[3] = cbsUnchecked then
    sWhere := sWhere + ' and b.ItemParam<>''成品''';

  with qyFind do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add(' exec PrWareItemQ ' + Quotedstr(sWhere));
    Open;
  end;
end;

procedure TWareItemQFM.btOkClick(Sender: TObject);
begin
  inherited;
  if iSelectKind = 2 then
  begin
    sId := qyFind.FieldByName('ItemId').AsString;
    sName := qyFind.FieldByName('ItemName').AsString;
  end;
  Close;
end;

procedure TWareItemQFM.btUnSelectClick(Sender: TObject);
var
  i: Integer;
  sId: string;
begin
  sId := qyFind.FieldByName('ItemId').AsString;
  qyFind.First;
  for I := 0 to qyFind.RecordCount - 1 do
  begin
    if qyFind.State = dsBrowse then qyFind.Edit;
    qyFind.FieldByName('bSelect').AsBoolean := False;
    qyFind.Next
  end;
  qyFind.Locate('ItemId', sId, []);
end;

procedure TWareItemQFM.cxEdtValueKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    btFindClick(Self);
end;

procedure TWareItemQFM.cxgrdbclmnSelectPropertiesChange(Sender: TObject);
var
  i: Integer;
  sId: string;
begin
  if iSelectKind = 2 then
  begin
    sId := '';
    sId := qyFind.FieldByName('ItemId').AsString;
    qyFind.First;
    for i := 0 to qyFind.RecordCount - 1 do
    begin
      if qyFind.FieldByName('ItemId').AsString <> sId then
      begin
        if qyFind.State = dsBrowse then
          qyFind.Edit;
        qyFind.FieldByName('bSelect').AsBoolean := false;
      end;
      qyFind.Next;
    end;
    qyFind.Locate('ItemId', sId, []);
  end;
end;

procedure TWareItemQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  if qyFind.State = dsBrowse then qyFind.Edit;
  qyFind.FieldByName('bSelect').AsBoolean := true;
  btOkClick(Self);
end;

procedure TWareItemQFM.FormCreate(Sender: TObject);
begin
  inherited;
  sItemId := '';
  tvExpand(tv, dsHed, 'ItemKindId', 'ItemKindName', 'ParentId');
  btFindClick(Sender);
end;

procedure TWareItemQFM.tvClick(Sender: TObject);
begin
  try
    if tv.Selected.IsFirstNode then
    begin
      qyFind.Filter := '';
      qyFind.Filtered := false;
    end
    else
    begin
      qyFind.Filter := 'ItemKindId like ''' + qyHed.FieldByName('ItemKindId').AsString + '%''';
      qyFind.Filtered := true;
    end;
  except
  end;
end;

end.
