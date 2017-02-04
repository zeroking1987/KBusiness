unit WareItemPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SBasePS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, dxSkinsdxBarPainter, ADODB, dxBar,
  cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ComCtrls, dxtree, dxdbtree,
  cxTextEdit, StdCtrls, ExtCtrls, dxSkinOffice2010Blue, cxLabel;

type
  TWareItemFM = class(TSBaseFM)
    qyFindWareId: TStringField;
    qyFindWareName: TStringField;
    qyFindItemId: TStringField;
    qyFindItemCode: TStringField;
    qyFindItemName: TStringField;
    qyFindItemSpc: TStringField;
    qyFindItemUnit: TStringField;
    qyFindProType: TStringField;
    qyFindColor: TStringField;
    qyFindBatchNo: TStringField;
    qyFindPlaceNo: TStringField;
    qyFindCompactNo: TStringField;
    qyFindTechName: TStringField;
    qyFindWareNum: TFMTBCDField;
    cxgrdtbvWareName: TcxGridDBColumn;
    cxgrdtbvItemCode: TcxGridDBColumn;
    cxgrdtbvItemName: TcxGridDBColumn;
    cxgrdtbvItemSpc: TcxGridDBColumn;
    cxgrdtbvItemUnit: TcxGridDBColumn;
    cxgrdtbvProType: TcxGridDBColumn;
    cxgrdtbvWareNum: TcxGridDBColumn;
    cxgrdtbvColumn1: TcxGridDBColumn;
    qyHedAutoId: TIntegerField;
    qyHedbSelect: TBooleanField;
    qyHedItemKindId: TStringField;
    qyHedItemKindCode: TStringField;
    qyHedItemKindName: TStringField;
    qyHedParentId: TStringField;
    qyHedParam: TStringField;
    qyHedKindWare: TStringField;
    qyHedRemark: TStringField;
    qyFindObjectId: TStringField;
    qyFindItemKindId: TStringField;
    procedure btFindClick(Sender: TObject);
    procedure cxEdtValueKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure tvClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    sWhere: string;
    sProType, sColor, sBatchNo, sPlaceNo, sCompactNo, sTechName, sObjectId: string;
    { Public declarations }
  end;

var
  WareItemFM: TWareItemFM;

implementation
uses PublicPS;
{$R *.dfm}

procedure TWareItemFM.btFindClick(Sender: TObject);
begin

  with qyFind do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select a.WareId,c.WareName,b.ItemKindId,a.ItemId,b.ItemCode,b.ItemName,b.ItemSpc,b.ItemUnit,a.ProType,a.Color,a.BatchNo,a.PlaceNo,a.CompactNo,a.TechName,a.ObjectId,a.WareNum');
    sql.Add('from WareStorageTB a left join ItemTB b on a.ItemId=b.ItemId');
    sql.Add('left join WareTB c on a.WareId=c.WareId');
    sql.Add('where ISNULL(a.WareNum,0)>0');
    sql.Add(sWhere);
    if cxEdtValue.text <> '' then
      sql.Add(' and (a.ItemCode like ''%' + trim(cxEdtValue.text) + '%'' or a.ItemPYCode like ''%' + trim(cxEdtValue.text) + '%'' or a.ItemName like ''%' + trim(cxEdtValue.text) + '%'' )');
    Open;
  end;
end;

procedure TWareItemFM.btOkClick(Sender: TObject);
begin
  sProType := qyFind.FieldByName('ProType').AsString;
  sColor := qyFind.FieldByName('Color').AsString;
  sBatchNo := qyFind.FieldByName('BatchNo').AsString;
  sPlaceNo := qyFind.FieldByName('PlaceNo').AsString;
  sCompactNo := qyFind.FieldByName('CompactNo').AsString;
  sTechName := qyFind.FieldByName('TechName').AsString;
  sObjectId := qyFind.FieldByName('ObjectId').AsString;
  inherited;
  Close;
end;

procedure TWareItemFM.cxEdtValueKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    btFindClick(Self);
end;

procedure TWareItemFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  btOkClick(Sender)
end;

procedure TWareItemFM.FormCreate(Sender: TObject);
begin
  inherited;
  sProType := '';
  sColor := '';
  sBatchNo := '';
  sPlaceNo := '';
  sCompactNo := '';
  sTechName := '';
  sObjectId := '';
  tvExpand(tv, dsHed, 'ItemKindId', 'ItemKindName', 'ParentId');
  btFindClick(Sender);
end;

procedure TWareItemFM.tvClick(Sender: TObject);
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
