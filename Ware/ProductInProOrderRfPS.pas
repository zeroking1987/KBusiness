unit ProductInProOrderRfPS;

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
  dxSkinOffice2010Blue, Vcl.ComCtrls, dxCore, cxDateUtils;

type
  TProductInProOrderRfFM = class(TRBaseFM)
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
  ProductInProOrderRfFM: TProductInProOrderRfFM;

implementation

uses DataPS, PublicPS;
{$R *.dfm}

procedure TProductInProOrderRfFM.btAllSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', True, 1);
end;

procedure TProductInProOrderRfFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.MrpDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.MrpDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and a.ProOrderNo like ''%' +
      trim(cxEdtBillNo.Text) + '%''';

  with qyFind do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('exec PrProductInProOrderRf ' + QuotedStr(sWhere));
    Open;
  end;
end;

procedure TProductInProOrderRfFM.btUnSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', False, 1);
end;

procedure TProductInProOrderRfFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ProductInProOrderRfFM := nil;
end;

end.
