unit StockInStockOrderRfPS;

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
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, Vcl.Menus;

type
  TStockInStockOrderRfFM = class(TRBaseFM)
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
  StockInStockOrderRfFM: TStockInStockOrderRfFM;

implementation

uses DataPS, PublicPS;
{$R *.dfm}

procedure TStockInStockOrderRfFM.btAllSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', True, 1);
end;

procedure TStockInStockOrderRfFM.btFindClick(Sender: TObject);
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
    sql.Add('select b.bSelect,a.StockOrderNo,a.OrderDate,d.PrvName,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,');
    sql.Add('b.ProType,NoInNum=IsNull(b.OrderNum,0)-IsNull(m.InNum,0),b.OrderNum,b.OrderPrice,b.TaxPrice,b.TaxRate,a.Remark,b.AutoNO,a.PrvId');
    sql.Add('from StockOrderHDTB a left join StockOrderDTTB b on a.StockOrderNo=b.StockOrderNo');
    sql.Add('left join ItemTB c on b.ItemId=c.ItemId');
    sql.Add('left join ProviderTB d on a.PrvId=d.PrvId');
    sql.Add('left join (select InNum=SUM(ISNULL(b.MainNum,0)),b.StockId from WareInOutHDTB a left join WareInOutDTTB b on a.BillNO=b.BillNO');
    sql.Add('where a.WKindID=''StockIn'' and b.StockId is not null group by b.StockId)m on b.AutoNO=m.StockId');
    sql.Add('where 1=1');
    sql.Add('and IsNull(b.OrderNum,0)>IsNull(m.InNum,0)');
    SQL.Add(sWhere);
  end;
  SplitPage(qyFind, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, True);
end;

procedure TStockInStockOrderRfFM.btnItemPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(btnItem);
end;

procedure TStockInStockOrderRfFM.btUnSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', False, 1);
end;

procedure TStockInStockOrderRfFM.FormDestroy(Sender: TObject);
begin
  inherited;
  StockInStockOrderRfFM := nil;
end;

end.
