unit ProductInSaleOrderRfPS;

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
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, cxButtonEdit;

type
  TProductInSaleOrderRfFM = class(TRBaseFM)
    cxgrdtbvbSelect: TcxGridDBColumn;
    cxgrdtbvReqNO: TcxGridDBColumn;
    cxgrdtbvReqDate: TcxGridDBColumn;
    cxgrdtbvDeptName: TcxGridDBColumn;
    cxgrdtbvItemCode: TcxGridDBColumn;
    cxgrdtbvItemName: TcxGridDBColumn;
    cxgrdtbvItemSpc: TcxGridDBColumn;
    cxgrdtbvProType: TcxGridDBColumn;
    cxgrdtbvReqNum: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    cxgrdtbvNoOrderNum: TcxGridDBColumn;
    cxEdtCompactNo: TcxTextEdit;
    cxLabel1: TcxLabel;
    Label3: TLabel;
    btnCustName: TcxButtonEdit;
    cxgrdtbvColumn5: TcxGridDBColumn;
    cxgrdtbvColumn6: TcxGridDBColumn;
    procedure btFindClick(Sender: TObject);
    procedure btAllSelectClick(Sender: TObject);
    procedure btUnSelectClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnCustNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    sObjectId: string;
  end;

var
  ProductInSaleOrderRfFM: TProductInSaleOrderRfFM;

implementation

uses DataPS, PublicPS;
{$R *.dfm}

procedure TProductInSaleOrderRfFM.btAllSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', True, 1);
end;

procedure TProductInSaleOrderRfFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.OrderDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.OrderDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and a.SaleOrderNo like ''%' + trim(cxEdtBillNo.Text) + '%''';
  if cxEdtCompactNo.Text <> '' then
    sWhere := sWhere + ' and a.CompactNo like ''%' + trim(cxEdtCompactNo.Text) + '%''';
  if sObjectId <> '' then
    sWhere := sWhere + ' and a.CustId=' + QuotedStr(sObjectId);

  if btnCustName.Text <> '' then
    sWhere := sWhere + ' and d.CustName like ''%' + trim(btnCustName.text) + '%''';
  if (btnCustName.Properties.LookupItems.Text <> '') and (btnCustName.Text <> '') then
    sWhere := sWhere + ' and a.CustId =' + QuotedStr(trim(btnCustName.Properties.LookupItems.Text));

  with qyFind do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('exec PrProductInSaleOrderRf ' + QuotedStr(sWhere));
    Open;
  end;
end;

procedure TProductInSaleOrderRfFM.btnCustNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  SelectCust2(btnCustName);
end;

procedure TProductInSaleOrderRfFM.btUnSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', False, 1);
end;

procedure TProductInSaleOrderRfFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ProductInSaleOrderRfFM := nil;
end;

end.
