unit ProDispatchFindPS;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FBasePS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, dxSkinsdxBarPainter, cxDropDownEdit,
  cxLabel, dxBar, cxBarEditItem, cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox, cxRadioGroup, cxMaskEdit, cxCalendar,
  cxTextEdit, StdCtrls, ExtCtrls, cxButtonEdit, dxSkinOffice2010Blue,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinDevExpressStyle, dxSkinSpringTime,
  dxSkinValentine;

type
  TProDispatchFindFM = class(TFBaseFM)
    cxgrdbclmnSelect: TcxGridDBColumn;
    cxgrdbclmnSaleOrderNo: TcxGridDBColumn;
    cxgrdbclmnOrderDate: TcxGridDBColumn;
    cxgrdbclmnCustName: TcxGridDBColumn;
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
  ProDispatchFindFM: TProDispatchFindFM;

implementation

uses ProDispatchPS, PublicPS;
{$R *.dfm}

procedure TProDispatchFindFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxrdgrpAudit.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=0'
  else if cxrdgrpAudit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=1';
  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and DispatchDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and DispatchDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and DispatchNo like ''%' + trim(cxEdtBillNo.text) + '%''';

  with ProDispatchFM.qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('select * from ProDispatchHDTB where 1=1');
    SQL.Add(sWhere);
    SQL.Add('Order by DispatchDate Desc')
  end;
  SplitPage(ProDispatchFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TProDispatchFindFM.btOkClick(Sender: TObject);
begin
  Close;
end;

procedure TProDispatchFindFM.dxbrcmbPageIndexChange(Sender: TObject);
begin
  inherited;
  SplitPage(ProDispatchFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
end;

procedure TProDispatchFindFM.FormDestroy(Sender: TObject);
begin
  ProDispatchFindFM := nil;
end;

end.
