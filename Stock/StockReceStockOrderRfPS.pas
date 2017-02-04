unit StockReceStockOrderRfPS;

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
  dxSkinOffice2010Blue, Vcl.ComCtrls, dxCore, cxDateUtils, cxButtonEdit,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine;

type
  TStockReceStockOrderRfFM = class(TRBaseFM)
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
    btnItem: TcxButtonEdit;
    cxlbl7: TcxLabel;
    cxgrdtbvColumn1: TcxGridDBColumn;
    procedure btFindClick(Sender: TObject);
    procedure btAllSelectClick(Sender: TObject);
    procedure btUnSelectClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    sObjectId: string;
  end;

var
  StockReceStockOrderRfFM: TStockReceStockOrderRfFM;

implementation

uses DataPS, PublicPS;
{$R *.dfm}

procedure TStockReceStockOrderRfFM.btAllSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', True, 1);
end;

procedure TStockReceStockOrderRfFM.btFindClick(Sender: TObject);
begin
  sWhere := '';

  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.OrderDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.OrderDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and a.StockOrderNo like ''%' +
      trim(cxEdtBillNo.Text) + '%''';
  if sObjectId <> '' then
    sWhere := sWhere + ' and a.PrvId=' + QuotedStr(sObjectId);
  if btnItem.Text <> '' then
    sWhere := sWhere + ' and (c.ItemCode like ''%' + trim(btnItem.Text) + '%'' or c.ItemName like ''%' + trim(btnItem.Text) + '%'' or c.ItemSpc like ''%' + trim(btnItem.Text) + '%'' or c.ItemPYCode like ''%' + trim(btnItem.Text) + '%'' )';
  if (btnItem.Properties.LookupItems.Text <> '') and (btnItem.Text <> '') then
    sWhere := sWhere + ' and b.ItemId =' + QuotedStr(trim(btnItem.Properties.LookupItems.Text));

  with qyFind do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('select b.bSelect,a.StockOrderNo,a.OrderDate,d.PrvName,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,b.DeliveDate,');
    sql.Add('b.ProType,NoReceNum=IsNull(b.OrderNum,0)-IsNull(m.ReceNum,0),b.OrderNum,b.OrderPrice,b.TaxPrice,b.TaxRate,a.Remark,b.AutoNO,a.PrvId');
    sql.Add('from StockOrderHDTB a left join StockOrderDTTB b on a.StockOrderNo=b.StockOrderNo');
    sql.Add('left join ItemTB c on b.ItemId=c.ItemId');
    sql.Add('left join ProviderTB d on a.PrvId=d.PrvId');
    sql.Add('left join (select ReceNum=SUM(ISNULL(b.ReceNum,0))+Sum(IsNull(b.NoPassNum,0)),b.StockOrderId from StockReceHDTB a left join StockReceDTTB b on a.StockReceNo=b.StockReceNo');
    sql.Add('where  b.StockOrderId is not null group by b.StockOrderId)m on b.AutoNO=m.StockOrderId');
    sql.Add('where IsNull(b.OrderNum,0)>IsNull(m.ReceNum,0)');
    SQL.Add(sWhere);
  end;
  SplitPage(qyFind, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, True);
end;

procedure TStockReceStockOrderRfFM.btnItemPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(btnItem);
end;

procedure TStockReceStockOrderRfFM.btUnSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', False, 1);
end;

procedure TStockReceStockOrderRfFM.FormDestroy(Sender: TObject);
begin
  inherited;
  StockReceStockOrderRfFM := nil;
end;

end.
