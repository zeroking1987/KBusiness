unit StockInvoiceFindPS;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FBasePS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, dxSkinsdxBarPainter, cxDropDownEdit,
  cxLabel, dxBar, cxBarEditItem, cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox, cxRadioGroup, cxMaskEdit, cxCalendar,
  cxTextEdit, StdCtrls, ExtCtrls, cxButtonEdit, dxSkinOffice2010Blue,
  Vcl.ComCtrls, dxCore, cxDateUtils;

type
  TStockInvoicerFindFM = class(TFBaseFM)
    Label4: TLabel;
    btnPrv: TcxButtonEdit;
    cxgrdbclmnSelect: TcxGridDBColumn;
    cxgrdbclmnOrderDate: TcxGridDBColumn;
    cxgrdbclmnPayMode: TcxGridDBColumn;
    cxgrdbclmnCustName: TcxGridDBColumn;
    cxgrdbclmnSendAdd: TcxGridDBColumn;
    cxgrdbclmnCompactNo: TcxGridDBColumn;
    procedure btnPrvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btOkClick(Sender: TObject);
    procedure dxbrcmbPageIndexChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btFindClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StockInvoicerFindFM: TStockInvoicerFindFM;

implementation

uses PrvQPS, StockInvoicePS, PublicPS;
{$R *.dfm}

procedure TStockInvoicerFindFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxrdgrpAudit.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=0'
  else if cxrdgrpAudit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=1';
  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and InvoiceDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and InvoiceDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and InvoiceNo like ''%' + trim(cxEdtBillNo.text) + '%''';
  if btnPrv.Text <> '' then
    sWhere := sWhere + ' and PrvId=' + QuotedStr(trim(btnPrv.Properties.LookupItems.Text));
  with StockInvoiceFM.qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('select * from StockInvoiceHDTB where 1=1');
    SQL.Add(sWhere);
  end;
  SplitPage(StockInvoiceFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TStockInvoicerFindFM.btnPrvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  try
    try
      PrvQFM := TPrvQFM.Create(nil);
      PrvQFM.iSelectKind := 2; //单选
      PrvQFM.ShowModal;
      btnPrv.Properties.LookupItems.Text := PrvQFM.sId;
      btnPrv.Text := PrvQFM.sName;
    finally
      PrvQFM.Free;
      PrvQFM := nil;
    end;
  except
  end;
end;

procedure TStockInvoicerFindFM.btOkClick(Sender: TObject);
var
  i: Integer;
begin
  try
    sBillNo := '';
    StockInvoiceFM.qyHed.First;
    for I := 0 to StockInvoiceFM.qyHed.RecordCount - 1 do
    begin
      if StockInvoiceFM.qyHed.FieldByName('bSelect').AsBoolean then
      begin
        sBillNo := sBillNo + '''' + StockInvoiceFM.qyHed.FieldByName('InvoiceNo').AsString + ''',';
      end;
      StockInvoiceFM.qyHed.Next;
    end;
    if sBillNo <> '' then
      sBillNo := LeftStr(sBillNo, Length(sBillNo) - 1); //去除最后一个','
    Close;
  except
  end;
end;

procedure TStockInvoicerFindFM.dxbrcmbPageIndexChange(Sender: TObject);
begin
  inherited;
  SplitPage(StockInvoiceFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
end;

procedure TStockInvoicerFindFM.FormDestroy(Sender: TObject);
begin
  StockInvoicerFindFM := nil;
end;

end.
