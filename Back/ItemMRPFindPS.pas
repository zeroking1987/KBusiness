unit ItemMRPFindPS;

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
  TItemMRPFindFM = class(TFBaseFM)
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
  ItemMRPFindFM: TItemMRPFindFM;

implementation

uses ItemMRPPS, PublicPS;
{$R *.dfm}

procedure TItemMRPFindFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxrdgrpAudit.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=0'
  else if cxrdgrpAudit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=1';
  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and MrpDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and MrpDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and MrpNo like ''%' + trim(cxEdtBillNo.text) + '%''';

  with ItemMRPFM.qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('select * from ItemMrpHDTB where 1=1');
    SQL.Add(sWhere);
  end;
  SplitPage(ItemMRPFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TItemMRPFindFM.btOkClick(Sender: TObject);
begin
  Close;
end;

procedure TItemMRPFindFM.dxbrcmbPageIndexChange(Sender: TObject);
begin
  inherited;
  SplitPage(ItemMRPFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
end;

procedure TItemMRPFindFM.FormDestroy(Sender: TObject);
begin
  ItemMRPFindFM := nil;
end;

end.
