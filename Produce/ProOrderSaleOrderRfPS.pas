unit ProOrderSaleOrderRfPS;

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
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, cxGroupBox,
  cxRadioGroup, Vcl.Menus, cxButtonEdit;

type
  TProOrderSaleOrderRfFM = class(TRBaseFM)
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
    cxgrdtbvColumn1: TcxGridDBColumn;
    cxgrdtbvColumn2: TcxGridDBColumn;
    cxgrdtbvColumn3: TcxGridDBColumn;
    cxRgpBom: TcxRadioGroup;
    cxRgpMrp: TcxRadioGroup;
    cxRgpOrderStyle: TcxRadioGroup;
    cxItem: TcxButtonEdit;
    cxlbl7: TcxLabel;
    cxgrdtbvColumn4: TcxGridDBColumn;
    procedure btFindClick(Sender: TObject);
    procedure btAllSelectClick(Sender: TObject);
    procedure btUnSelectClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    sObjectId: string;
  end;

var
  ProOrderSaleOrderRfFM: TProOrderSaleOrderRfFM;

implementation

uses DataPS, PublicPS;
{$R *.dfm}

procedure TProOrderSaleOrderRfFM.btAllSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', True, 1);
end;

procedure TProOrderSaleOrderRfFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.OrderDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.OrderDate<=' + QuotedStr(trim(cxdtE.Text));

  if cxRgpOrderStyle.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(a.OrderStyle,'''')=''内销'' '
  else if cxRgpOrderStyle.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(a.OrderStyle,'''')=''外贸'' ';


  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and a.SaleOrderNo like ''%' + trim(cxEdtBillNo.Text) + '%''';
  if cxEdtCompactNo.Text <> '' then
    sWhere := sWhere + ' and b.CompactNo like ''%' + trim(cxEdtCompactNo.Text) + '%''';
  if cxRgpBom.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(n.BillNo,'''')='''' '
  else if cxRgpBom.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(n.BillNo,'''')<>'''' ';

  if cxRgpMrp.ItemIndex = 0 then
    sWhere := sWhere + ' and ISNULL(b.OrderNum,0)>ISNULL(m.FinalNum,0)'
  else if cxRgpMrp.ItemIndex = 1 then
    sWhere := sWhere + ' and ISNULL(b.OrderNum,0)<=ISNULL(m.FinalNum,0)';

  if sObjectId <> '' then
    sWhere := sWhere + ' and a.CustId=' + QuotedStr(sObjectId);

  with qyFind do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('exec PrProOrderSaleOrderRf ' + QuotedStr(sWhere));
    Open;
  end;
end;

procedure TProOrderSaleOrderRfFM.btUnSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', False, 1);
end;

procedure TProOrderSaleOrderRfFM.cxItemPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(cxItem);
end;

procedure TProOrderSaleOrderRfFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ProOrderSaleOrderRfFM := nil;
end;

end.
