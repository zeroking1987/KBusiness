unit StockPayInvoiceRfPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBasePS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, dxSkinsdxBarPainter, cxDropDownEdit,
  cxLabel, ADODB, dxBar, cxBarEditItem, cxClasses, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxMaskEdit, cxCalendar, cxTextEdit, StdCtrls, ExtCtrls, cxButtonEdit,
  cxProgressBar, dxSkinOffice2010Blue;

type
  TStockPayInvoiceRfFM = class(TRBaseFM)
    qyFindbSelect: TBooleanField;
    qyFindInvoiceNo: TStringField;
    qyFindInvoiceDate: TDateTimeField;
    qyFindNoPayMoney: TFMTBCDField;
    qyFindInvoiceMoney: TFMTBCDField;
    qyFindEmpName: TStringField;
    qyFindSourceDate: TDateTimeField;
    cxgrdtbvbSelect: TcxGridDBColumn;
    cxgrdtbvInvoiceNo: TcxGridDBColumn;
    cxgrdtbvInvoiceDate: TcxGridDBColumn;
    cxgrdtbvCustId: TcxGridDBColumn;
    cxgrdtbvCustName: TcxGridDBColumn;
    cxgrdtbvNoPayMoney: TcxGridDBColumn;
    cxgrdtbvInvoiceMoney: TcxGridDBColumn;
    cxgrdtbvSourceDate: TcxGridDBColumn;
    qyFindHasPayMoney: TFMTBCDField;
    cxgrdtbvColumn1: TcxGridDBColumn;
    qyFindPayPre: TFloatField;
    strngfldFindPrvId: TStringField;
    strngfldFindPrvName: TStringField;
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
  StockPayInvoiceRfFM: TStockPayInvoiceRfFM;

implementation

uses DataPS, PublicPS, StockPayPS;
{$R *.dfm}

procedure TStockPayInvoiceRfFM.btAllSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', True, 1);
end;

procedure TStockPayInvoiceRfFM.btFindClick(Sender: TObject);
begin
  sWhere := '';

  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.BillDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.BillDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and BillNo like ''%' + trim(cxEdtBillNo.text) + '%''';

  with qyFind do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('select a.bSelect,a.InvoiceNo,a.InvoiceDate,a.PrvId,c.PrvName,');
    sql.Add('NoPayMoney=Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0))-Sum(ISNULL(m.PayMoney,0)),');
    sql.Add('InvoiceMoney=Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0)),HasPayMoney=Sum(ISNULL(m.PayMoney,0)),');
    sql.Add('PayPre=Sum(ISNULL(m.PayMoney,0))/dbo.IsZero(Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0)),null)*100,');
    sql.Add('d.EmpName,a.SourceDate');
    sql.Add('from StockInvoiceHDTB a left join StockInvoiceDTTB b on a.InvoiceNo=b.InvoiceNO');
    sql.Add('left join ProviderTB c on a.PrvId=c.PrvId');
    sql.Add('left join EmployeeTB d on a.EmpId=d.EmpId');
    sql.Add('left join (select InvoiceNo,PayMoney=SUM(ISNULL(NowPayMoney,0)) from StockPayDTTB group by InvoiceNo)m on a.InvoiceNo=m.InvoiceNo');
    sql.Add('where ISNULL(a.bMaxAudit,0)=1');
    if StockPayFM.qyHed.FieldByName('PrvId').AsString <> '' then
      SQL.Add(' and a.PrvId=' + QuotedStr(StockPayFM.qyHed.FieldByName('PrvId').AsString));
    SQL.Add(sWhere);
    sql.Add('group by a.bSelect,a.InvoiceNo,a.InvoiceDate,a.PrvId,c.PrvName,d.EmpName,a.SourceDate');
    sql.Add('Having Sum(a.SignFlag*ISNULL(b.InvoiceMoney,0))>Sum(ISNULL(m.PayMoney,0))');
  end;
  SplitPage(qyFind, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TStockPayInvoiceRfFM.btUnSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', False, 1);
end;

procedure TStockPayInvoiceRfFM.FormDestroy(Sender: TObject);
begin
  inherited;
  StockPayInvoiceRfFM := nil;
end;

end.
