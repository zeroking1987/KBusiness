unit ItemQPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SBasePS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, dxSkinsdxBarPainter, ADODB, dxBar,
  cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, dxtree, dxdbtree, cxTextEdit, StdCtrls, ExtCtrls, cxGroupBox,
  cxCheckGroup, cxMaskEdit, cxDropDownEdit, cxCheckComboBox, cxCheckBox,
  dxSkinOffice2010Blue, cxLabel, dxSkinDevExpressStyle, dxSkinSpringTime,
  dxSkinValentine, Vcl.Menus, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxNavigator, dxSkinOffice2013LightGray, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark;

type
  TItemQFM = class(TSBaseFM)
    cxgrdbclmnItemCode: TcxGridDBColumn;
    cxgrdbclmnItemName: TcxGridDBColumn;
    cxgrdbclmnItemSpc: TcxGridDBColumn;
    cxgrdbclmnItemUnit: TcxGridDBColumn;
    cxgrdbclmnItemParam: TcxGridDBColumn;
    cxgrdbclmnItemKindName: TcxGridDBColumn;
    cxgrdbclmnItemId: TcxGridDBColumn;
    intgrfldHedAutoId: TIntegerField;
    blnfldHedbSelect: TBooleanField;
    qyHedItemKindId: TStringField;
    qyHedItemKindCode: TStringField;
    qyHedItemKindName: TStringField;
    qyHedParentId: TStringField;
    qyHedParam: TStringField;
    qyHedKindWare: TStringField;
    qyHedRemark: TStringField;
    cxgrdbclmnSelect: TcxGridDBColumn;
    cxgrdbclmnSalePrice: TcxGridDBColumn;
    qyFindbSelect: TBooleanField;
    qyFindItemCode: TStringField;
    qyFindItemName: TStringField;
    qyFindItemSpc: TStringField;
    qyFindItemUnit: TStringField;
    qyFindItemId: TStringField;
    qyFindMaterial: TStringField;
    qyFindISBN: TStringField;
    qyFindStockPrice: TFMTBCDField;
    qyFindSalePrice: TFMTBCDField;
    qyFindItemKindName: TStringField;
    qyFindItemKindId: TStringField;
    qyFindRemark: TStringField;
    qyFindWareNum: TFMTBCDField;
    qyFindBillNum: TFMTBCDField;
    cxgrdtbvcmnWareNum: TcxGridDBColumn;
    cxgrdtbvColumn1: TcxGridDBColumn;
    procedure btAllSelectClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btUnSelectClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tvClick(Sender: TObject);
    procedure cxEdtValueKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure cxgrdbclmnSelectPropertiesChange(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure cxEdtValuePropertiesChange(Sender: TObject);
    procedure cxgrdtbvKeyPress(Sender: TObject; var Key: Char);
    procedure btFilterClick(Sender: TObject);
  private
    { Private declarations }
    sKindWhere: string;
  public
    sParam: string;
    { Public declarations }
  end;

var
  ItemQFM: TItemQFM;

implementation

uses PublicPS, DataPS;
{$R *.dfm}

procedure TItemQFM.btAllSelectClick(Sender: TObject);
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

procedure TItemQFM.btFilterClick(Sender: TObject);
begin
  if qyFind.Filtered then
  begin
    qyFind.Filter := '';
    qyFind.Filtered := false;
  end
  else
  begin
    qyFind.Filter := ' bSelect=1';
    qyFind.Filtered := true;
  end;
end;

procedure TItemQFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxEdtValue.text <> '' then
    sWhere := sWhere + ' and (a.ItemCode like ''%' + trim(cxEdtValue.text) + '%'' or a.ItemSpc like ''%' + trim(cxEdtValue.text) + '%'' or a.ItemPYCode like ''%' + trim(cxEdtValue.text) + '%'' or a.ItemName like ''%' + trim(cxEdtValue.text) + '%'' )';

  with qyFind do
  begin
    if Active then
      Close;
    sql.Clear;
    sql.Add('exec PrItemQ ' + QuotedStr(sWhere));
    Open;
  end;
end;

procedure TItemQFM.btOkClick(Sender: TObject);
begin
  inherited;
  if iSelectKind = 2 then
  begin
    sId := qyFind.FieldByName('ItemId').AsString;
    sName := qyFind.FieldByName('ItemName').AsString;
  end;
  Close;
end;

procedure TItemQFM.btUnSelectClick(Sender: TObject);
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

procedure TItemQFM.cxEdtValueKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    btFindClick(Self);
end;

procedure TItemQFM.cxEdtValuePropertiesChange(Sender: TObject);
begin
  inherited;
  if trim(cxEdtValue.text) <> '' then
  begin
    qyFind.Filter := 'ItemCode like ''%' + trim(cxEdtValue.text) + '%'' or ItemSpc like ''%' + trim(cxEdtValue.text) + '%'' or PYCode like ''%' + trim(cxEdtValue.text) + '%'' or ItemName like ''%' + trim(cxEdtValue.text) + '%'' ';
    qyFind.Filtered := true;
  end
  else
  begin
    qyFind.Filter := '';
    qyFind.Filtered := false;
  end;
end;

procedure TItemQFM.cxgrdbclmnSelectPropertiesChange(Sender: TObject);
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

procedure TItemQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  if qyFind.State = dsBrowse then qyFind.Edit;
  qyFind.FieldByName('bSelect').AsBoolean := true;
  btOkClick(Self);
end;

procedure TItemQFM.cxgrdtbvKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
  begin
    if qyFind.State = dsBrowse then qyFind.Edit;
    qyFind.FieldByName('bSelect').AsBoolean := not qyFind.FieldByName('bSelect').AsBoolean;
  end;
  if Key = #13 then
  begin
    btOkClick(Self);
  end;
end;

procedure TItemQFM.FormCreate(Sender: TObject);
begin
  inherited;
  sParam := '所有';
  tvExpand(tv, dsHed, 'ItemKindId', 'ItemKindName', 'ParentId');
end;

procedure TItemQFM.FormShow(Sender: TObject);
begin
  if iSelectKind = 1 then
  begin
    Self.Caption := Self.Caption + '(可多选)';
    cxgrdbclmnSelect.Visible := true;
  end
  else
  begin
    Self.Caption := Self.Caption + '(单选 可不用打勾直接双击选取产品)';
    cxgrdbclmnSelect.Visible := False;
  end;
  btFindClick(Sender);
end;

procedure TItemQFM.tvClick(Sender: TObject);
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
