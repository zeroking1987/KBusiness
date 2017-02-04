unit MatProDispatchRfPS;

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
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, Vcl.Menus,
  dxSkinOffice2007Silver, dxSkinSevenClassic, dxSkinSilver, dxSkinWhiteprint,
  cxButtonEdit, cxNavigator;

type
  TMatProDispatchRfFM = class(TRBaseFM)
    cxgrdtbvbSelect: TcxGridDBColumn;
    cxgrdtbvReqNO: TcxGridDBColumn;
    cxgrdtbvItemCode: TcxGridDBColumn;
    cxgrdtbvItemName: TcxGridDBColumn;
    cxgrdtbvItemSpc: TcxGridDBColumn;
    cxgrdtbvProType: TcxGridDBColumn;
    cxgrdtbvReqNum: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    cxgrdtbvColumn1: TcxGridDBColumn;
    cxgrdtbvColumn2: TcxGridDBColumn;
    cxgrdtbvColumn3: TcxGridDBColumn;
    btnItem: TcxButtonEdit;
    cxlbl7: TcxLabel;
    cxgrdtbvColumn4: TcxGridDBColumn;
    cxgrdtbvColumn5: TcxGridDBColumn;
    procedure btFindClick(Sender: TObject);
    procedure btAllSelectClick(Sender: TObject);
    procedure btUnSelectClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxEdtBillNoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sObjectId,sWareId,sKind: string;
  end;

var
  MatProDispatchRfFM: TMatProDispatchRfFM;

implementation

uses DataPS, PublicPS;
{$R *.dfm}

procedure TMatProDispatchRfFM.btAllSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', True, 1);
end;

procedure TMatProDispatchRfFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.DispatchDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.DispatchDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and a.DispatchNo like ''%' +trim(cxEdtBillNo.Text) + '%''';
  if sObjectId <> '' then
    sWhere := sWhere + ' and b.TakeObjectId=' +QuotedStr(sObjectId);

  if btnItem.Text <> '' then
    sWhere := sWhere + ' and (c.ItemCode like ''%' + trim(btnItem.Text) + '%'' or c.ItemName like ''%' + trim(btnItem.Text) + '%'' or c.ItemSpc like ''%' + trim(btnItem.Text) + '%'' or c.ItemPYCode like ''%' + trim(btnItem.Text) + '%'' )';
  if (btnItem.Properties.LookupItems.Text <> '') and (btnItem.Text <> '') then
    sWhere := sWhere + ' and b.ItemId =' + QuotedStr(trim(btnItem.Properties.LookupItems.Text));

  //if LoginEmpName <> '管理员' then
  //  sWhere := sWhere + 'and b.ItemId in(select ItemId from ItemTB where TakeEmpId=' + QuotedStr(LoginEmpId) + ' or ISNULL(TakeEmpId,'''')='''')';

  with qyFind do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('exec PrMatProDispatchRf ' + QuotedStr(sWhere)+','+ QuotedStr(sKind));
    Open;
  end;
end;

procedure TMatProDispatchRfFM.btUnSelectClick(Sender: TObject);
begin
  inherited;
  FindSelect(qyFind, 'bSelect', False, 1);
end;

procedure TMatProDispatchRfFM.cxEdtBillNoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
    btFindClick(Self);
end;

procedure TMatProDispatchRfFM.FormDestroy(Sender: TObject);
begin
  inherited;
  MatProDispatchRfFM := nil;
end;

procedure TMatProDispatchRfFM.FormShow(Sender: TObject);
begin
  inherited;
  MatProDispatchRfFM.Caption:=sKind+'-生产派工单查询'
end;

end.
