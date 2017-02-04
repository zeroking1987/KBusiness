unit WareCheckFindPS;

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
  TWareCheckFindFM = class(TFBaseFM)
    Label4: TLabel;
    btnWare: TcxButtonEdit;
    cxgrdbclmnSelect: TcxGridDBColumn;
    cxgrdbclmnSaleOrderNo: TcxGridDBColumn;
    cxgrdbclmnOrderDate: TcxGridDBColumn;
    cxgrdbclmnPayMode: TcxGridDBColumn;
    cxgrdbclmnCustName: TcxGridDBColumn;
    cxgrdbclmnSendAdd: TcxGridDBColumn;
    cxgrdbclmnCompactNo: TcxGridDBColumn;
    Label3: TLabel;
    btnItemKind: TcxButtonEdit;
    procedure btnPrvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btOkClick(Sender: TObject);
    procedure dxbrcmbPageIndexChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btnItemKindPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    bQFindAll: Boolean;
  end;

var
  WareCheckFindFM: TWareCheckFindFM;

implementation

uses WareQPS, ItemKindQPS, WareCheckPS, PublicPS;
{$R *.dfm}

procedure TWareCheckFindFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if not bQFindAll then
    sWhere := sWhere + ' and IsNull(MakeMan,'''')=' + QuotedStr(LoginEmpId);
  if cxrdgrpAudit.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=0'
  else if cxrdgrpAudit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=1';
  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and CheckDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and CheckDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and BillNo like ''%' + trim(cxEdtBillNo.text) + '%''';
  if btnWare.Text <> '' then
    sWhere := sWhere + ' and WareId in(' + trim(btnWare.Properties.LookupItems.Text) + ')';
  if btnItemKind.Text <> '' then
    sWhere := sWhere + ' and ItemKindId in(' + trim(btnItemKind.Properties.LookupItems.Text) + ')';
  with WareCheckFM.qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('select * from WareCheckHDTB where 1=1');
    SQL.Add(sWhere);
  end;
  SplitPage(WareCheckFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TWareCheckFindFM.btnItemKindPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  try
    ItemKindQFM := TItemKindQFM.Create(nil);
    ItemKindQFM.iSelectKind := 1;
    ItemKindQFM.ShowModal;
    if ItemKindQFM.iFlag <> 3 then
      btnItemKind.Properties.LookupItems.Text := ItemKindQFM.sAllId;
    btnItemKind.Text := ItemKindQFM.sAllName;
  finally
    ItemKindQFM.Free;
    ItemKindQFM := nil;
  end;
end;

procedure TWareCheckFindFM.btnPrvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  try
    WareQFM := TWareQFM.Create(nil);
    WareQFM.iSelectKind := 1;
    WareQFM.ShowModal;
    if WareQFM.iFlag <> 3 then
      btnWare.Properties.LookupItems.Text := WareQFM.sAllId;
    btnWare.Text := WareQFM.sAllName;
  finally
    WareQFM.Free;
    WareQFM := nil;
  end;
end;

procedure TWareCheckFindFM.btOkClick(Sender: TObject);
begin
  Close;
end;

procedure TWareCheckFindFM.dxbrcmbPageIndexChange(Sender: TObject);
begin
  inherited;
  SplitPage(WareCheckFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
end;

procedure TWareCheckFindFM.FormDestroy(Sender: TObject);
begin
  WareCheckFindFM := nil;
end;

end.
