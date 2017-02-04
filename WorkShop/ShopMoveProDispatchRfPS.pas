unit ShopMoveProDispatchRfPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBasePS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, dxSkinsdxBarPainter, cxDropDownEdit,
  cxLabel, ADODB, dxBar, cxBarEditItem, cxClasses, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxMaskEdit, cxCalendar, cxTextEdit, StdCtrls, ExtCtrls,
  dxSkinOffice2010Blue, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, Vcl.Menus,
  dxSkinOffice2007Silver, dxSkinSevenClassic, dxSkinSilver, dxSkinWhiteprint;

type
  TShopMoveProDispatchRfFM = class(TRBaseFM)
    cxgrdtbvbSelect: TcxGridDBColumn;
    cxgrdtbvReqNO: TcxGridDBColumn;
    cxgrdtbvReqDate: TcxGridDBColumn;
    cxgrdtbvItemCode: TcxGridDBColumn;
    cxgrdtbvItemName: TcxGridDBColumn;
    cxgrdtbvItemSpc: TcxGridDBColumn;
    cxgrdtbvProType: TcxGridDBColumn;
    cxgrdtbvReqNum: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    cxgrdtbvNoOrderNum: TcxGridDBColumn;
    cxgrdtbvColumn1: TcxGridDBColumn;
    Label3: TLabel;
    cxCompactNo: TcxTextEdit;
    cxgrdtbvColumn2: TcxGridDBColumn;
    cxgrdtbvColumn3: TcxGridDBColumn;
    procedure btFindClick(Sender: TObject);
    procedure btAllSelectClick(Sender: TObject);
    procedure btUnSelectClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxEdtBillNoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    sObjectId,sWareId: string;
  end;

var
  ShopMoveProDispatchRfFM: TShopMoveProDispatchRfFM;

implementation

uses DataPS, PublicPS;
{$R *.dfm}

procedure TShopMoveProDispatchRfFM.btAllSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', True, 1);
end;

procedure TShopMoveProDispatchRfFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and d.DeliverDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and d.DeliverDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and a.DispatchNo like ''%' +trim(cxEdtBillNo.Text) + '%''';
   if cxCompactNo.Text <> '' then
    sWhere := sWhere + ' and b.CompactNo like ''%' +trim(cxCompactNo.Text) + '%''';
   if sWareId <> '' then
    sWhere := sWhere + ' and m.WareId=' + QuotedStr(sWareId);
   if sObjectId <> '' then
    sWhere := sWhere + ' and m.ObjectId=' + QuotedStr(sObjectId);

  //if LoginEmpName <> 'π‹¿Ì‘±' then
  //  sWhere := sWhere + 'and b.ItemId in(select ItemId from ItemTB where TakeEmpId=' + QuotedStr(LoginEmpId) + ' or ISNULL(TakeEmpId,'''')='''')';

  with qyFind do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('exec PrShopMoveProDispatchRf ' + QuotedStr(sWhere));
    Open;
  end;
end;

procedure TShopMoveProDispatchRfFM.btUnSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', False, 1);
end;

procedure TShopMoveProDispatchRfFM.cxEdtBillNoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
    btFindClick(Self);
end;

procedure TShopMoveProDispatchRfFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ShopMoveProDispatchRfFM := nil;
end;

end.
