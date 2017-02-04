unit SaleSenderFindPS;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FBasePS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, dxSkinsdxBarPainter, cxDropDownEdit,
  cxLabel, dxBar, cxBarEditItem, cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox, cxRadioGroup, cxMaskEdit, cxCalendar,
  cxTextEdit, StdCtrls, ExtCtrls, cxButtonEdit, dxSkinOffice2010Blue,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, Vcl.ComCtrls,
  dxCore, cxDateUtils;

type
  TSaleSenderFindFM = class(TFBaseFM)
    Label4: TLabel;
    btnCust: TcxButtonEdit;
    cxgrdbclmnSelect: TcxGridDBColumn;
    cxgrdbclmnSaleOrderNo: TcxGridDBColumn;
    cxgrdbclmnOrderDate: TcxGridDBColumn;
    cxgrdbclmnPayMode: TcxGridDBColumn;
    cxgrdbclmnCustName: TcxGridDBColumn;
    cxgrdbclmnSendAdd: TcxGridDBColumn;
    Label3: TLabel;
    cxEdtCompactNo: TcxTextEdit;
    cxgrdbclmnCompactNo: TcxGridDBColumn;
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
  SaleSenderFindFM: TSaleSenderFindFM;

implementation

uses CustQPS, SaleSenderPS, PublicPS;
{$R *.dfm}

procedure TSaleSenderFindFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxrdgrpAudit.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=0'
  else if cxrdgrpAudit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=1';
  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and SenderDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and SenderDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and SenderNo like ''%' + trim(cxEdtBillNo.text) + '%''';
  if btnCust.Text <> '' then
    sWhere := sWhere + ' and CustId=' + QuotedStr(trim(btnCust.Properties.LookupItems.Text));
  with SaleSenderFM.qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('select * from SaleSenderHDTB where 1=1');
    if not SaleSenderFM.bFindAll then
      SQL.Add('and ( MakeMan=' + QuotedStr(LoginEmpId) + ' or CustId in (select CustId from CustTB where EmpId=' + QuotedStr(LoginEmpId) + ')) ');
    SQL.Add(sWhere);
  end;
  SplitPage(SaleSenderFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TSaleSenderFindFM.btnPrvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TSaleSenderFindFM.btOkClick(Sender: TObject);
begin
  Close;
end;

procedure TSaleSenderFindFM.dxbrcmbPageIndexChange(Sender: TObject);
begin
  inherited;
  SplitPage(SaleSenderFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
end;

procedure TSaleSenderFindFM.FormDestroy(Sender: TObject);
begin
  SaleSenderFindFM := nil;
end;

end.
