unit ProductInBomMatOutRfPS;

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
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, Vcl.Menus;

type
  TProductInBomMatOutRfFM = class(TRBaseFM)
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
    procedure btFindClick(Sender: TObject);
    procedure btAllSelectClick(Sender: TObject);
    procedure btUnSelectClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sObjectId: string;
  end;

var
  ProductInBomMatOutRfFM: TProductInBomMatOutRfFM;

implementation

uses DataPS, PublicPS;
{$R *.dfm}

procedure TProductInBomMatOutRfFM.btAllSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', True, 1);
end;

procedure TProductInBomMatOutRfFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.BillDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.BillDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and a.BillNo like ''%' + trim(cxEdtBillNo.Text) + '%''';

  with qyFind do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('exec PrProductInMatOutRf ' + QuotedStr(sWhere));
    Open;
  end;
end;

procedure TProductInBomMatOutRfFM.btUnSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', False, 1);
end;

procedure TProductInBomMatOutRfFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ProductInBomMatOutRfFM := nil;
end;

end.
