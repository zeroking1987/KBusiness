unit WareInOutFindPS;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FBasePS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, dxSkinsdxBarPainter, cxDropDownEdit,
  cxLabel, dxBar, cxBarEditItem, cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox, cxRadioGroup, cxMaskEdit, cxCalendar,
  cxTextEdit, StdCtrls, ExtCtrls, cxButtonEdit, cxCheckBox, ADODB,
  dxSkinOffice2010Blue, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, cxNavigator;

type
  TWareInOutFindFM = class(TFBaseFM)
    btnObject: TcxButtonEdit;
    cxgrdBillNO: TcxGridDBColumn;
    cxgrdSubJoinNO: TcxGridDBColumn;
    cxgrdObjectName: TcxGridDBColumn;
    cxgrdSellerManName: TcxGridDBColumn;
    cxMakeManName: TcxButtonEdit;
    dsFind: TDataSource;
    cxgrdBillDate: TcxGridDBColumn;
    cxgrdRemark: TcxGridDBColumn;
    cxgrdMakeManName: TcxGridDBColumn;
    cxgrdMakeDate: TcxGridDBColumn;
    cxgrdAuditFlag: TcxGridDBColumn;
    cxgrdAuditDate: TcxGridDBColumn;
    cxgrdbclmnSelect: TcxGridDBColumn;
    cxlbl1: TcxLabel;
    cxLabel2: TcxLabel;
    cxrdgrpFuHe: TcxRadioGroup;
    cxrdgrpInvoice: TcxRadioGroup;
    cxchbbCashDeal: TcxCheckBox;
    procedure btnPrvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure dxbrcmbPageIndexChange(Sender: TObject);
  private
    { Private declarations }
    SqlStr: string;
  public
    { Public declarations }
    fBaseForm: TWinControl;
    sWKindID: string;
    bRight, bFindAll: Boolean;
    BaseqyHed: TADOQuery;
  end;

var
  WareInOutFindFM: TWareInOutFindFM;

implementation

uses CustQPS, PrvQPS, PublicPS, WareInOutPS, StockInPS, ProductOutPS, DeptQPS,
  ProductInPS, OtherInPS, MatOutPS, OtherOutPS, SaleOutPS, AssistOutPS, AssistInPS;
{$R *.dfm}

procedure TWareInOutFindFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  SqlStr := '';
  if cxrdgrpAudit.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=0'
  else if cxrdgrpAudit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=1';
  if cxrdgrpFuHe.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(bFuHe,0)=0'
  else if cxrdgrpFuHe.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(bFuHe,0)=1';
  if cxrdgrpInvoice.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(bInvoice,0)=0'
  else if cxrdgrpInvoice.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(bInvoice,0)=1';
  if cxchbbCashDeal.Checked then
    sWhere := sWhere + ' and IsNull(bCashDeal,0)=1'
  else
    sWhere := sWhere + ' and IsNull(bCashDeal,0)=0';

  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and BillDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and BillDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and BillNO like ''%' + trim(cxEdtBillNo.text) + '%''';
  if btnObject.Text <> '' then
    sWhere := sWhere + ' and ObjectID=' + QuotedStr(trim(btnObject.Properties.LookupItems.Text));

  if (bRight) and (not bFindAll) then
    sWhere := sWhere + ' and MakeMan=' + Quotedstr(LoginEmpId);

  SqlStr := 'select * from WareInOutHDTB where WKindID=' + QuotedStr(sWKindID) + sWhere;

  if sWKindID = 'StockIn' then
  begin
    with StockInFM.qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add(SqlStr);
      Open;
    end;
    SplitPage(StockInFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
  end;

  if sWKindID = 'ProductIn' then
  begin
    with ProductInFM.qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add(SqlStr);
      Open;
    end;
    SplitPage(ProductInFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
  end;

  if sWKindID = 'AssistIn' then
  begin
    with AssistInFM.qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add(SqlStr);
      Open;
    end;
    SplitPage(AssistInFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
  end;

  if (sWKindID = 'OtherIn') then
  begin
    with OtherInFM.qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add(SqlStr);
      Open;
    end;
    SplitPage(OtherInFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
  end;

  if sWKindID = 'MatOut' then
  begin
    with MatOutFM.qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add(SqlStr);
      Open;
    end;
    SplitPage(MatOutFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
  end;
  if sWKindID = 'SaleOut' then
  begin
    with SaleOutFM.qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add(SqlStr);
      Open;
    end;
    SplitPage(SaleOutFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
  end;
  if sWKindID = 'AssistOut' then
  begin
    with AssistOutFM.qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add(SqlStr);
      Open;
    end;
    SplitPage(AssistOutFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
  end;
  if (sWKindID = 'OtherOut') then
  begin
    with OtherOutFM.qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add(SqlStr);
      Open;
    end;
    SplitPage(OtherOutFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
  end;

end;

procedure TWareInOutFindFM.btnPrvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  try
    if (sWKindID = 'StockIn') then
    begin
      try
        PrvQFM := TPrvQFM.Create(nil);
        PrvQFM.iSelectKind := 2; //单选
        PrvQFM.ShowModal;
        btnObject.Properties.LookupItems.Text := PrvQFM.sId;
        btnObject.Text := PrvQFM.sName;
      finally
        PrvQFM.Free;
        PrvQFM := nil;
      end;
    end
    else if (sWKindID = 'SaleOut') then
    begin
      try
        CustQFM := TCustQFM.Create(nil);
        CustQFM.iSelectKind := 2; //单选
        CustQFM.ShowModal;
        btnObject.Properties.LookupItems.Text := CustQFM.sId;
        btnObject.Text := CustQFM.sName;
      finally
        CustQFM.Free;
        CustQFM := nil;
      end;
    end
    else
    begin
      try
        DeptQFM := TDeptQFM.Create(nil);
        DeptQFM.iSelectKind := 2; //单选
        DeptQFM.ShowModal;
        btnObject.Properties.LookupItems.Text := DeptQFM.sId;
        btnObject.Text := DeptQFM.sName;
      finally
        DeptQFM.Free;
        DeptQFM := nil;
      end;
    end;
  except
  end;
end;

procedure TWareInOutFindFM.btOkClick(Sender: TObject);
begin
  Close;
end;

procedure TWareInOutFindFM.dxbrcmbPageIndexChange(Sender: TObject);
begin
  inherited;
  if sWKindID = 'StockIn' then
    SplitPage(StockInFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
  if sWKindID = 'ProductIn' then
    SplitPage(ProductInFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
  if (sWKindID = 'OtherIn') then
    SplitPage(OtherInFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);

  if sWKindID = 'MatOut' then
    SplitPage(MatOutFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
  if sWKindID = 'ProductOut' then
    SplitPage(ProductOutFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
  if (sWKindID = 'OtherOut') then
    SplitPage(OtherOutFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
end;

procedure TWareInOutFindFM.FormDestroy(Sender: TObject);
begin
  WareInOutFindFM := nil;
end;

end.
