unit SalePayInvoiceRfPS;

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
  cxProgressBar, dxSkinOffice2010Blue, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, Vcl.Menus,
  cxNavigator;

type
  TSalePayInvoiceRfFM = class(TRBaseFM)
    qyFindbSelect: TBooleanField;
    qyFindNoPayMoney: TFMTBCDField;
    qyFindInvoiceMoney: TFMTBCDField;
    cxgrdtbvbSelect: TcxGridDBColumn;
    cxgrdtbvInvoiceNo: TcxGridDBColumn;
    cxgrdtbvInvoiceDate: TcxGridDBColumn;
    cxgrdtbvCustName: TcxGridDBColumn;
    cxgrdtbvNoPayMoney: TcxGridDBColumn;
    cxgrdtbvInvoiceMoney: TcxGridDBColumn;
    qyFindHasPayMoney: TFMTBCDField;
    cxgrdtbvColumn1: TcxGridDBColumn;
    qyFindPayPre: TFloatField;
    qyFindBillNo: TStringField;
    qyFindBillDate: TDateTimeField;
    qyFindObjectId: TStringField;
    qyFindObjectName: TStringField;
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
  SalePayInvoiceRfFM: TSalePayInvoiceRfFM;

implementation

uses DataPS, PublicPS, SalePayPS;
{$R *.dfm}

procedure TSalePayInvoiceRfFM.btAllSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', True, 1);
end;

procedure TSalePayInvoiceRfFM.btFindClick(Sender: TObject);
begin
  try
    sWhere := '';

    if cxdtS.Text <> '' then
      sWhere := sWhere + ' and a.BillDate>=' + QuotedStr(trim(cxdtS.Text));
    if cxdtE.Text <> '' then
      sWhere := sWhere + ' and a.BillDate<=' + QuotedStr(trim(cxdtE.Text));
    if cxEdtBillNo.Text <> '' then
      sWhere := sWhere + ' and BillNo like ''%' + trim(cxEdtBillNo.text) + '%''';
    if sObjectId <> '' then
      sWhere := sWhere + ' and a.ObjectId=' + QuotedStr(sObjectId);

    with qyFind do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add('exec PrSalePaySaleInvoiceRf ' + QuotedStr(sWhere));
      Open;
    end;
  except
    on E: Exception do
      ShowWarn(e.Message);
  end;
end;

procedure TSalePayInvoiceRfFM.btUnSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', False, 1);
end;

procedure TSalePayInvoiceRfFM.FormDestroy(Sender: TObject);
begin
  inherited;
  SalePayInvoiceRfFM := nil;
end;

end.
