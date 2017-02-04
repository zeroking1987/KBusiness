unit SaleOrderQPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QBasePS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, cxLabel, cxGridCustomPopupMenu,
  cxGridPopupMenu, Menus, frxClass, frxDBSet, ADODB, dxBar, cxBarEditItem, cxClasses, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  ExtCtrls, cxContainer, cxButtonEdit, cxGroupBox, cxRadioGroup, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxTextEdit, StdCtrls, dxSkinOffice2010Blue, cxPCdxBarPopupMenu,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinDevExpressStyle, dxSkinSpringTime,
  dxSkinValentine, dxBarBuiltInMenu, cxNavigator;

type
  TSaleOrderQFM = class(TQBaseFM)
    Lablbl2: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    cxEdtBillNo: TcxTextEdit;
    cxdtS: TcxDateEdit;
    cxdtE: TcxDateEdit;
    cxrdgrpAudit: TcxRadioGroup;
    btnItemName: TcxButtonEdit;
    Label4: TLabel;
    btnEmpName: TcxButtonEdit;
    Label3: TLabel;
    btnCustName: TcxButtonEdit;
    cxgrdbclmnOrderDate: TcxGridDBColumn;
    cxgrdbclmnSaleOrderNo: TcxGridDBColumn;
    cxgrdbclmnCustId: TcxGridDBColumn;
    cxgrdbclmnCustName: TcxGridDBColumn;
    cxgrdbclmnEmpName: TcxGridDBColumn;
    cxgrdbclmnItemCode: TcxGridDBColumn;
    cxgrdbclmnItemName: TcxGridDBColumn;
    cxgrdbclmnItemSpc: TcxGridDBColumn;
    cxgrdbclmnOrderNum: TcxGridDBColumn;
    cxgrdbclmnOrderPrice: TcxGridDBColumn;
    cxgrdbclmnOrderMoney: TcxGridDBColumn;
    cxgrdbclmnAllMoney: TcxGridDBColumn;
    cxgrdbclmnRemark: TcxGridDBColumn;
    Label6: TLabel;
    cxEdtCompactNo: TcxTextEdit;
    cxgrdbclmnCompactNo: TcxGridDBColumn;
    cxgrdbclmnOrderStyle: TcxGridDBColumn;
    cxgrdtbvColumn1: TcxGridDBColumn;
    cxgrdtbvColumn2: TcxGridDBColumn;
    cxgrdtbvColumn3: TcxGridDBColumn;
    cxgrdtbvColumn4: TcxGridDBColumn;
    cxrdgrpSender: TcxRadioGroup;
    cxrdgrpOut: TcxRadioGroup;
    cxgrdtbvColumn5: TcxGridDBColumn;
    cxrdgrpStop: TcxRadioGroup;
    btnItemKind: TcxButtonEdit;
    cxlbl6: TcxLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxdtJHS: TcxDateEdit;
    cxdtJHE: TcxDateEdit;
    cxrdgrpIn: TcxRadioGroup;
    cxgrdtbvColumn6: TcxGridDBColumn;
    cxgrdtbvColumn7: TcxGridDBColumn;
    cxrgpSubmit: TcxRadioGroup;
    cxlbl3: TcxLabel;
    cxColor: TcxButtonEdit;
    cxLabel4: TcxLabel;
    cxProType: TcxButtonEdit;
    cxgrdtbvColumn8: TcxGridDBColumn;
    cxgrdtbvColumn9: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btnItemNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure btnPrvNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btnEmpNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnItemKindPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxProTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxColorPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    sWhere: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SaleOrderQFM: TSaleOrderQFM;

implementation

uses PublicPS, ControlPublicPS, SaleOrderPS;
{$R *.dfm}

procedure TSaleOrderQFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxrdgrpStop.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(b.bStop,0)=0'
  else if cxrdgrpStop.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(b.bStop,0)=1';

  if cxrdgrpAudit.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(a.bMaxAudit,0)=0'
  else if cxrdgrpAudit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(a.bMaxAudit,0)=1';

  if cxrgpSubmit.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(a.bSubmit,0)=0'
  else if cxrgpSubmit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(a.bSubmit,0)=1';


  if cxrdgrpSender.ItemIndex = 0 then
    sWhere := sWhere + ' and ISNULL(b.OrderNum,0)>ISNULL(m.SenderNum,0)'
  else if cxrdgrpSender.ItemIndex = 1 then
    sWhere := sWhere + ' and ISNULL(b.OrderNum,0)<=ISNULL(m.SenderNum,0)';

  if cxrdgrpIn.ItemIndex = 0 then
    sWhere := sWhere + ' and ISNULL(b.OrderNum,0)>ISNULL(o.InNum,0)'
  else if cxrdgrpIn.ItemIndex = 1 then
    sWhere := sWhere + ' and ISNULL(b.OrderNum,0)<=ISNULL(o.InNum,0)';

  if cxrdgrpOut.ItemIndex = 0 then
    sWhere := sWhere + ' and ISNULL(b.OrderNum,0)>ISNULL(n.OutNum,0)'
  else if cxrdgrpOut.ItemIndex = 1 then
    sWhere := sWhere + ' and ISNULL(b.OrderNum,0)<=ISNULL(n.OutNum,0)';

  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.OrderDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.OrderDate<=' + QuotedStr(trim(cxdtE.Text));

  if cxdtJHS.Text <> '' then
    sWhere := sWhere + ' and b.DeliverDate>=' + QuotedStr(trim(cxdtJHS.Text));
  if cxdtJHE.Text <> '' then
    sWhere := sWhere + ' and b.DeliverDate<=' + QuotedStr(trim(cxdtJHE.Text));

  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and a.SaleOrderNo like ''%' + trim(cxEdtBillNo.text) + '%''';
  if cxEdtCompactNo.Text <> '' then
    sWhere := sWhere + ' and b.CompactNo like ''%' + trim(cxEdtCompactNo.text) + '%''';
  if cxProType.Text <> '' then
    sWhere := sWhere + ' and b.ProType like ''%' + trim(cxProType.text) + '%''';
  if cxColor.Text <> '' then
    sWhere := sWhere + ' and b.Color like ''%' + trim(cxColor.text) + '%''';
  if btnCustName.Text <> '' then
    sWhere := sWhere + ' and d.CustName=' + QuotedStr(trim(btnCustName.Text));
  if btnEmpName.Text <> '' then
    sWhere := sWhere + ' and a.EmpId=' + QuotedStr(trim(btnEmpName.Properties.LookupItems.Text));
  if btnItemKind.Text <> '' then
    sWhere := sWhere + ' and c.ItemKindId like ''' + trim(btnItemKind.Properties.LookupItems.Text) + '%'' ';
  if btnItemName.Text <> '' then
    sWhere := sWhere + ' and c.ItemName like ''%' + trim(btnItemName.text) + '%''';
  if (btnItemName.Properties.LookupItems.Text <> '') and (btnItemName.Text <> '') then
    sWhere := sWhere + ' and b.ItemId =' + QuotedStr(trim(btnItemName.Properties.LookupItems.Text));
  if not bFindAll then
    sWhere := sWhere + 'and ( a.MakeMan=' + QuotedStr(LoginEmpId) + ' or a.CustId in (select CustId from CustTB where EmpId=' + QuotedStr(LoginEmpId) + ')) ';

  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add(' exec PrSaleOrderQ ' + Quotedstr(sWhere));
    Open;
  end;
    //SplitPage(SaleOrderQFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TSaleOrderQFM.btnEmpNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  SelectEmp2(btnEmpName);
end;

procedure TSaleOrderQFM.btnItemKindPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItemKind2(btnItemKind);
end;

procedure TSaleOrderQFM.btnItemNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(btnItemName);
end;

procedure TSaleOrderQFM.btnPrvNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  SelectCust2(btnCustName);
end;

procedure TSaleOrderQFM.cxColorPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectColorEdt(cxColor);
end;

procedure TSaleOrderQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  BillView('SaleOrderHDTB', 'select * from SaleOrderHDTB where SaleOrderNo=' + QuotedStr(qyHed.FieldByName('SaleOrderNo').AsString));
end;

procedure TSaleOrderQFM.cxProTypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectProTypeEdt(cxProType);
end;

procedure TSaleOrderQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'SaleOrderQFM';
  sFMName := Self.Caption;
  sTableId := 'SaleOrderQ';
  inherited;
end;

procedure TSaleOrderQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  SaleOrderQFM := nil;
end;

procedure TSaleOrderQFM.FormShow(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if (bRight) then
  begin
    for i := 0 to cxgrdtbv.ColumnCount - 1 do
    begin
      if (cxgrdtbv.Columns[i].DataBinding.FieldName = 'OrderPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'TaxPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'TaxRate') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'OrderMoney') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubTaxPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubMoney') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'AllMoney') then
        cxgrdtbv.Columns[i].Visible := bShowPrice;
    end;
  end;
end;

end.

