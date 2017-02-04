unit BOMMatOutItemQPS;

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
  dxSkinValentine, cxGridCustomPopupMenu, cxGridPopupMenu, Vcl.Menus;

type
  TBOMMatOutItemQFM = class(TSBaseFM)
    cxgrdbclmnItemCode: TcxGridDBColumn;
    cxgrdbclmnItemPYCode: TcxGridDBColumn;
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
    cxgrdbclmnWareNum: TcxGridDBColumn;
    qyFindbSelect: TBooleanField;
    qyFindItemCode: TStringField;
    qyFindItemPYCode: TStringField;
    qyFindItemName: TStringField;
    qyFindItemSpc: TStringField;
    qyFindItemUnit: TStringField;
    qyFindItemParam: TStringField;
    qyFindItemKindId: TStringField;
    qyFindItemKindName: TStringField;
    qyFindWareNum: TFMTBCDField;
    qyFindItemId: TStringField;
    cxchgParam: TcxCheckGroup;
    qyFindTempNum: TFMTBCDField;
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
  private
    { Private declarations }
  public
    sParam: string;
    { Public declarations }
  end;

var
  BOMMatOutItemQFM: TBOMMatOutItemQFM;

implementation
uses PublicPS, DataPS;
{$R *.dfm}

procedure TBOMMatOutItemQFM.btAllSelectClick(Sender: TObject);
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

procedure TBOMMatOutItemQFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxEdtValue.text <> '' then
    sWhere := sWhere + ' and (a.ItemCode like ''%' + trim(cxEdtValue.text) + '%'' or a.ItemSpc like ''%' + trim(cxEdtValue.text) + '%'' or a.ItemPYCode like ''%' + trim(cxEdtValue.text) + '%'' or a.ItemName like ''%' + trim(cxEdtValue.text) + '%'' )';

  {if cxchgParam.States[0] = cbsUnchecked then
    sWhere := sWhere + ' and a.ItemParam<>''原材料''';
  if cxchgParam.States[1] = cbsUnchecked then
    sWhere := sWhere + ' and a.ItemParam<>''辅料''';
  if cxchgParam.States[2] = cbsUnchecked then
    sWhere := sWhere + ' and a.ItemParam<>''半成品''';
  if cxchgParam.States[3] = cbsUnchecked then
    sWhere := sWhere + ' and a.ItemParam<>''成品''';
  if cxchgParam.States[5] = cbsUnchecked then
    sWhere := sWhere + ' and a.ItemParam<>''工具''';  }
    //仓库权限
  if WareRight <> '' then
    sWhere := sWhere + 'and WareId in (SELECT StrValues FROM fnStrSplit(' + QuotedStr(WareRight) + ','',''))';
  with qyFind do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add(' exec PrBOMMatOutItemQ ' + Quotedstr(sWhere));
    Open;
  end;
end;

procedure TBOMMatOutItemQFM.btOkClick(Sender: TObject);
begin
  inherited;
  if iSelectKind = 2 then
  begin
    sId := qyFind.FieldByName('ItemId').AsString;
    sName := qyFind.FieldByName('ItemName').AsString;
  end;
  Close;
end;

procedure TBOMMatOutItemQFM.btUnSelectClick(Sender: TObject);
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

procedure TBOMMatOutItemQFM.cxEdtValueKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    btFindClick(Self);
end;

procedure TBOMMatOutItemQFM.cxEdtValuePropertiesChange(Sender: TObject);
begin
  inherited;
  try
    if trim(cxEdtValue.Text) = '' then
    begin
      qyFind.Filter := '';
      qyFind.Filtered := false;
    end

    else
    begin
      qyFind.Filter := ' ItemCode like ''%' + trim(cxEdtValue.Text) + '%'' or ItemName like ''%' + trim(cxEdtValue.Text) + '%''  or ItemSpc like ''%' + trim(cxEdtValue.Text) + '%''  or ItemPYCode like ''%' + trim(cxEdtValue.Text) + '%''';
      qyFind.Filtered := true;
    end;
  except
  end;
end;

procedure TBOMMatOutItemQFM.cxgrdbclmnSelectPropertiesChange(Sender: TObject);
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

procedure TBOMMatOutItemQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  if qyFind.State = dsBrowse then qyFind.Edit;
  qyFind.FieldByName('bSelect').AsBoolean := true;
  btOkClick(Self);
end;

procedure TBOMMatOutItemQFM.FormCreate(Sender: TObject);
begin
  inherited;
  sParam := '所有';
  tvExpand(tv, dsHed, 'ItemKindId', 'ItemKindName', 'ParentId');

end;

procedure TBOMMatOutItemQFM.FormShow(Sender: TObject);
begin
  if iSelectKind = 1 then
    Self.Caption := Self.Caption + '(可多选)'
  else
    Self.Caption := Self.Caption + '(单选 可不用打勾直接双击选取产品)';
  if Pos('原材料', sParam) > 0 then
    cxchgParam.States[0] := (cbsChecked);
  if Pos('辅料', sParam) > 0 then
    cxchgParam.States[1] := (cbsChecked);
  if Pos('半成品', sParam) > 0 then
    cxchgParam.States[2] := (cbsChecked);
  if Pos('成品', sParam) > 0 then
    cxchgParam.States[3] := (cbsChecked);
  if Pos('财务类', sParam) > 0 then
    cxchgParam.States[4] := (cbsChecked);
  if Pos('工具', sParam) > 0 then
    cxchgParam.States[5] := (cbsChecked);
  if Pos('所有', sParam) > 0 then
  begin
    cxchgParam.States[0] := (cbsChecked);
    cxchgParam.States[1] := (cbsChecked);
    cxchgParam.States[2] := (cbsChecked);
    cxchgParam.States[3] := (cbsChecked);
    cxchgParam.States[4] := (cbsChecked);
    cxchgParam.States[5] := (cbsChecked);
  end;
  btFindClick(Sender);
end;

procedure TBOMMatOutItemQFM.tvClick(Sender: TObject);
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
