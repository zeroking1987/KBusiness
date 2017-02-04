unit StockOrderReqRfPS;

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
  TStockOrderReqRfFM = class(TRBaseFM)
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
    procedure btFindClick(Sender: TObject);
    procedure btAllSelectClick(Sender: TObject);
    procedure btUnSelectClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StockOrderReqRfFM: TStockOrderReqRfFM;

implementation

uses DataPS, PublicPS;
{$R *.dfm}

procedure TStockOrderReqRfFM.btAllSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', True, 1);
end;

procedure TStockOrderReqRfFM.btFindClick(Sender: TObject);
begin
  sWhere := '';

  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and ReqDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.ReqDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and a.ReqNo like ''%' + trim(cxEdtBillNo.text) + '%''';

  with qyFind do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('select b.bSelect,a.ReqNO,a.ReqDate,d.DeptName,b.ItemId,c.ItemCode,c.ItemName,c.ItemSpc,');
    sql.Add('b.ProType,NoOrderNum=IsNull(b.ReqNum,0)-IsNull(m.OrderNum,0),b.ReqNum,a.Remark,b.AutoNo');
    sql.Add('from RequireHDTB a left join RequireDTTB b on a.ReqNO=b.ReqNo');
    sql.Add('left join ItemTB c on b.ItemId=c.ItemId');
    sql.Add('left join DeptTB d on a.DeptId=d.DeptId');
    sql.Add('left join (select OrderNum=SUM(ISNULL(b.OrderNum,0)),b.RfId from StockOrderHDTB a left join StockOrderDTTB b on a.StockOrderNO=b.StockOrderNO');
    sql.Add('where b.RfId is not null group by b.RfId)m on b.AutoNo=m.RfId');
    sql.Add('where 1=1 and IsNull(a.bMaxAudit,0)=1');
    sql.Add('and IsNull(b.ReqNum,0)>IsNull(m.OrderNum,0)');
    SQL.Add(sWhere);
  end;
  SplitPage(qyFind, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TStockOrderReqRfFM.btUnSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', False, 1);
end;

procedure TStockOrderReqRfFM.FormDestroy(Sender: TObject);
begin
  inherited;
  StockOrderReqRfFM := nil;
end;

end.
