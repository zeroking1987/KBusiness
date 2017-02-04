unit SalePayFindPS;

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
  dxSkinValentine, cxNavigator;

type
  TSalePayFindFM = class(TFBaseFM)
    Label4: TLabel;
    btnCust: TcxButtonEdit;
    cxgrdbclmnSelect: TcxGridDBColumn;
    cxgrdbclmnSaleOrderNo: TcxGridDBColumn;
    cxgrdbclmnOrderDate: TcxGridDBColumn;
    cxgrdbclmnPayMode: TcxGridDBColumn;
    cxgrdbclmnCustName: TcxGridDBColumn;
    cxgrdbclmnPayMoney: TcxGridDBColumn;
    cxgrdbclmnCompactNo: TcxGridDBColumn;
    Label3: TLabel;
    cxcbbBillKind: TcxComboBox;
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
  SalePayFindFM: TSalePayFindFM;

implementation

uses CustQPS, SalePayPS, PublicPS;
{$R *.dfm}

procedure TSalePayFindFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxrdgrpAudit.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=0'
  else if cxrdgrpAudit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=1';
  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and PayDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and PayDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and PayNo like ''%' + trim(cxEdtBillNo.text) + '%''';
  if cxcbbBillKind.Text <> '' then
    sWhere := sWhere + ' and BillKind =' + QuotedStr(trim(cxcbbBillKind.text));
  if btnCust.Text <> '' then
    sWhere := sWhere + ' and CustId=' + QuotedStr(trim(btnCust.Properties.LookupItems.Text));

  with SalePayFM.qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('select * from SalePayHDTB where 1=1');
    SQL.Add(sWhere);
  end;
  SplitPage(SalePayFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TSalePayFindFM.btnPrvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  try
    try
      CustQFM := TCustQFM.Create(nil);
      CustQFM.iSelectKind := 2; //ตฅัก
      CustQFM.ShowModal;
      btnCust.Properties.LookupItems.Text := CustQFM.sId;
      btnCust.Text := CustQFM.sName;
    finally
      CustQFM.Free;
      CustQFM := nil;
    end;
  except
  end;
end;

procedure TSalePayFindFM.btOkClick(Sender: TObject);
begin
  try
    Close;
  except
  end;
end;

procedure TSalePayFindFM.dxbrcmbPageIndexChange(Sender: TObject);
begin
  inherited;
  SplitPage(SalePayFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
end;

procedure TSalePayFindFM.FormDestroy(Sender: TObject);
begin
  SalePayFindFM := nil;
end;

end.
