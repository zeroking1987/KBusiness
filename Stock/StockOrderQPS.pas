unit StockOrderQPS;

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
  TStockOrderQFM = class(TQBaseFM)
    cxEdtBillNo: TcxTextEdit;
    cxdtS: TcxDateEdit;
    cxdtE: TcxDateEdit;
    cxrdgrpAudit: TcxRadioGroup;
    btnItemName: TcxButtonEdit;
    btnEmpName: TcxButtonEdit;
    btnPrvName: TcxButtonEdit;
    cxgrdbclmnOrderDate: TcxGridDBColumn;
    cxgrdbclmnStockOrderNo: TcxGridDBColumn;
    cxgrdbclmnPrvId: TcxGridDBColumn;
    cxgrdbclmnPrvName: TcxGridDBColumn;
    cxgrdbclmnEmpName: TcxGridDBColumn;
    cxgrdbclmnItemCode: TcxGridDBColumn;
    cxgrdbclmnItemName: TcxGridDBColumn;
    cxgrdbclmnItemSpc: TcxGridDBColumn;
    cxgrdbclmnOrderNum: TcxGridDBColumn;
    cxgrdbclmnOrderPrice: TcxGridDBColumn;
    cxgrdbclmnOrderMoney: TcxGridDBColumn;
    cxgrdbclmnAllMoney: TcxGridDBColumn;
    cxgrdbclmnRemark: TcxGridDBColumn;
    cxgrdbclmnColumn1: TcxGridDBColumn;
    cxgrdbclmnColumn2: TcxGridDBColumn;
    cxrdgrpIn: TcxRadioGroup;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxdtS2: TcxDateEdit;
    cxdtE2: TcxDateEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxgrdtbvColumn1: TcxGridDBColumn;
    cxlbl3: TcxLabel;
    cxColor: TcxButtonEdit;
    cxLabel9: TcxLabel;
    cxProType: TcxButtonEdit;
    cxgrdtbvColumn2: TcxGridDBColumn;
    cxgrdtbvColumn3: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btnItemNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure btnPrvNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btnEmpNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
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
  StockOrderQFM: TStockOrderQFM;

implementation

uses PublicPS, ControlPublicPS, StockOrderPS;
{$R *.dfm}

procedure TStockOrderQFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxrdgrpAudit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(a.bMaxAudit,0)=0'
  else if cxrdgrpAudit.ItemIndex = 2 then
    sWhere := sWhere + ' and IsNull(a.bMaxAudit,0)=1';

  if cxrdgrpIn.ItemIndex = 1 then
    sWhere := sWhere + ' and ISNULL(b.OrderNum,0)>ISNULL(m.InNum,0)'
  else if cxrdgrpIn.ItemIndex = 2 then
    sWhere := sWhere + ' and ISNULL(b.OrderNum,0)<=ISNULL(m.InNum,0)';

  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.OrderDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.OrderDate<=' + QuotedStr(trim(cxdtE.Text));

  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and a.StockOrderNo like ''%' + trim(cxEdtBillNo.text) + '%''';
  if btnPrvName.Text <> '' then
    sWhere := sWhere + ' and a.PrvId=' + QuotedStr(trim(btnPrvName.Properties.LookupItems.Text));
  if btnEmpName.Text <> '' then
    sWhere := sWhere + ' and a.EmpId=' + QuotedStr(trim(btnEmpName.Properties.LookupItems.Text));
  if btnItemName.Text <> '' then
    sWhere := sWhere + ' and c.ItemName like ''%' + trim(btnItemName.text) + '%''';

  if cxProType.Text <> '' then
    sWhere := sWhere + ' and b.ProType like ''%' + trim(cxProType.text) + '%''';
  if cxColor.Text <> '' then
    sWhere := sWhere + ' and b.sColor like ''%' + trim(cxColor.text) + '%''';

  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add(' exec PrStockOrderQ ' + Quotedstr(sWhere));
    Open;
  end;
  //SplitPage(StockOrderQFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TStockOrderQFM.btnEmpNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  SelectEmp2(btnEmpName);
end;

procedure TStockOrderQFM.btnItemNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(btnItemName);
end;

procedure TStockOrderQFM.btnPrvNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  SelectPrv2(btnPrvName);
end;

procedure TStockOrderQFM.cxColorPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectColorEdt(cxColor);
end;

procedure TStockOrderQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  BillView('StockOrderHDTB', 'select * from StockOrderHDTB where StockOrderNo=' + QuotedStr(qyHed.FieldByName('StockOrderNo').AsString));
end;

procedure TStockOrderQFM.cxProTypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectProTypeEdt(cxProType);
end;

procedure TStockOrderQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'StockOrderQFM';
  sFMName := Self.Caption;
  sTableId := 'StockOrderQFM';
  inherited;
end;

procedure TStockOrderQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  StockOrderQFM := nil;
end;

procedure TStockOrderQFM.FormShow(Sender: TObject);
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

