unit SaleSenderQPS;

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
  TSaleSenderQFM = class(TQBaseFM)
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
    Label7: TLabel;
    cbbOrderStyle: TcxComboBox;
    cxgrdbclmnCompactNo: TcxGridDBColumn;
    cxgrdbclmnOrderStyle: TcxGridDBColumn;
    qyHedSenderDate: TDateTimeField;
    qyHedSenderNo: TStringField;
    qyHedCompactNo: TStringField;
    qyHedOrderStyle: TStringField;
    qyHedCustId: TStringField;
    qyHedCustName: TStringField;
    qyHedEmpName: TStringField;
    qyHedItemCode: TStringField;
    qyHedItemName: TStringField;
    qyHedItemSpc: TStringField;
    qyHedSenderNum: TFMTBCDField;
    qyHedSenderPrice: TFMTBCDField;
    qyHedSenderMoney: TFMTBCDField;
    qyHedAllMoney: TFMTBCDField;
    qyHedRemark: TStringField;
    cxrdgrpStop: TcxRadioGroup;
    cxrdgrpOut: TcxRadioGroup;
    cxgrdtbvColumn1: TcxGridDBColumn;
    qyHedItemUnit: TStringField;
    qyHedProType: TStringField;
    qyHedOutNum: TFMTBCDField;
    qyHedNoOutNum: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btnItemNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure btnPrvNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btnEmpNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
  private
    sWhere: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SaleSenderQFM: TSaleSenderQFM;

implementation

uses PublicPS, ControlPublicPS, SaleOrderPS;
{$R *.dfm}

procedure TSaleSenderQFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxrdgrpAudit.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(a.bMaxAudit,0)=0'
  else if cxrdgrpAudit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(a.bMaxAudit,0)=1';

  if cxrdgrpStop.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(b.bStop,0)=0'
  else if cxrdgrpStop.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(b.bStop,0)=1';

  if cxrdgrpOut.ItemIndex = 0 then
    sWhere := sWhere + ' and ISNULL(b.SenderNum,0)>ISNULL(m.OutNum,0)'
  else if cxrdgrpOut.ItemIndex = 1 then
    sWhere := sWhere + ' and ISNULL(b.SenderNum,0)<=ISNULL(m.OutNum,0)';

  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.SenderDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.SenderDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and a.SenderNo like ''%' + trim(cxEdtBillNo.text) + '%''';
  if cxEdtCompactNo.Text <> '' then
    sWhere := sWhere + ' and a.CompactNo like ''%' + trim(cxEdtCompactNo.text) + '%''';
  if cbbOrderStyle.Text <> '' then
    sWhere := sWhere + ' and a.OrderStyle=' + QuotedStr(trim(cbbOrderStyle.text));
  if btnCustName.Text <> '' then
    sWhere := sWhere + ' and d.CustName=' + QuotedStr(trim(btnCustName.Text));
  if btnEmpName.Text <> '' then
    sWhere := sWhere + ' and a.EmpId=' + QuotedStr(trim(btnEmpName.Properties.LookupItems.Text));
  if btnItemName.text <> '' then
    sWhere := sWhere + ' and (b.ItemCode like ''%' + trim(btnItemName.text) + '%'' or b.ItemSpc like ''%' + trim(btnItemName.text) + '%'' or dbo.fnGetPY(b.ItemName) like ''%' + trim(btnItemName.text) + '%'' or b.ItemName like ''%' + trim(btnItemName.text) + '%'' )';
  if not bFindAll then
    sWhere := sWhere + 'and ( a.MakeMan=' + QuotedStr(LoginEmpId) + ' or a.CustId in (select CustId from CustTB where EmpId=' + QuotedStr(LoginEmpId) + ')) ';

  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add(' exec PrSaleSenderQ ' + Quotedstr(sWhere));
    Open;
  end;
  //SplitPage(SaleSenderQFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TSaleSenderQFM.btnEmpNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  SelectEmp2(btnEmpName);
end;

procedure TSaleSenderQFM.btnItemNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(btnItemName);
end;

procedure TSaleSenderQFM.btnPrvNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  SelectCust2(btnCustName);
end;

procedure TSaleSenderQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  BillView('SaleSenderHDTB', 'select * from SaleSenderHDTB where SenderNo=' + QuotedStr(qyHed.FieldByName('SenderNo').AsString));
end;

procedure TSaleSenderQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'SaleSenderQFM';
  sFMName := Self.Caption;
  sTableId := 'SaleSenderQFM';
  inherited;
end;

procedure TSaleSenderQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  SaleSenderQFM := nil;
end;

procedure TSaleSenderQFM.FormShow(Sender: TObject);
var i: Integer;
begin
  inherited;
  if (bRight) then
  begin
    for i := 0 to cxgrdtbv.ColumnCount - 1 do
    begin
      if (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SenderPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'TaxPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'TaxRate') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SenderMoney') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubTaxPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubMoney') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'AllMoney') then
        cxgrdtbv.Columns[i].Visible := bShowPrice;
    end;
  end;
end;

end.
