unit SaleOutSaleSenderRfPS;

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
  dxSkinOffice2010Blue, cxButtonEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxNavigator, dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine,
  Vcl.Menus;

type
  TSaleOutSaleSenderRfFM = class(TRBaseFM)
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
    cxgrdtbvColumn1: TcxGridDBColumn;
    cxlbl1: TcxLabel;
    cxCompactNo: TcxTextEdit;
    btnCustName: TcxButtonEdit;
    cxlbl2: TcxLabel;
    cxgrdtbvColumn2: TcxGridDBColumn;
    cxgrdtbvColumn3: TcxGridDBColumn;
    btnItem: TcxButtonEdit;
    cxlbl7: TcxLabel;
    procedure btFindClick(Sender: TObject);
    procedure btAllSelectClick(Sender: TObject);
    procedure btUnSelectClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnCustNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    sObjectId: string;
  end;

var
  SaleOutSaleSenderRfFM: TSaleOutSaleSenderRfFM;

implementation

uses DataPS, PublicPS;
{$R *.dfm}

procedure TSaleOutSaleSenderRfFM.btAllSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', True, 1);
end;

procedure TSaleOutSaleSenderRfFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.SenderDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.SenderDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and SenderNo like ''%' + trim(cxEdtBillNo.Text) + '%''';
  if cxCompactNo.Text <> '' then
    sWhere := sWhere + ' and b.ComPactNo like ''%' + trim(cxCompactNo.text) + '%''';
  if sObjectId <> '' then
    sWhere := sWhere + ' and a.CustId=' + QuotedStr(sObjectId);
  if btnCustName.Text <> '' then
    sWhere := sWhere + ' and d.CustName=' + QuotedStr(trim(btnCustName.Text));
  if btnItem.Text <> '' then
    sWhere := sWhere + ' and (c.ItemCode like ''%' + trim(btnItem.Text) + '%'' or c.ItemName like ''%' + trim(btnItem.Text) + '%'' or c.ItemSpc like ''%' + trim(btnItem.Text) + '%'' or c.ItemPYCode like ''%' + trim(btnItem.Text) + '%'' )';
  if (btnItem.Properties.LookupItems.Text <> '') and (btnItem.Text <> '') then
    sWhere := sWhere + ' and b.ItemId =' + QuotedStr(trim(btnItem.Properties.LookupItems.Text));

  with qyFind do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('exec PrSaleOutSaleSenderRf ' + QuotedStr(sWhere));
    Open;
  end;
end;

procedure TSaleOutSaleSenderRfFM.btnCustNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  SelectCust2(btnCustName);
end;

procedure TSaleOutSaleSenderRfFM.btnItemPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(btnItem);
end;

procedure TSaleOutSaleSenderRfFM.btUnSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', False, 1);
end;

procedure TSaleOutSaleSenderRfFM.FormDestroy(Sender: TObject);
begin
  inherited;
  SaleOutSaleSenderRfFM := nil;
end;

end.
