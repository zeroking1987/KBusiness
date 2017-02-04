unit ItemSwitchFindPS;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FBasePS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, dxSkinsdxBarPainter, cxDropDownEdit,
  cxLabel, dxBar, cxBarEditItem, cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox, cxRadioGroup, cxMaskEdit, cxCalendar,
  cxTextEdit, StdCtrls, ExtCtrls, cxButtonEdit, cxCheckBox, ADODB,
  dxSkinOffice2010Blue, Vcl.ComCtrls, dxCore, cxDateUtils, cxNavigator;

type
  TItemSwitchFindFM = class(TFBaseFM)
    cxgrdBillNO: TcxGridDBColumn;
    cxgrdSubJoinNO: TcxGridDBColumn;
    btnOutWare: TcxButtonEdit;
    dsFind: TDataSource;
    cxgrdBillDate: TcxGridDBColumn;
    cxgrdRemark: TcxGridDBColumn;
    cxgrdMakeManName: TcxGridDBColumn;
    cxgrdMakeDate: TcxGridDBColumn;
    cxgrdAuditFlag: TcxGridDBColumn;
    cxgrdAuditDate: TcxGridDBColumn;
    cxgrdbclmnSelect: TcxGridDBColumn;
    cxLabel2: TcxLabel;
    btnInWare: TcxButtonEdit;
    cxLabel3: TcxLabel;
    cxgrdbclmnColumn1: TcxGridDBColumn;
    procedure FormDestroy(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure dxbrcmbPageIndexChange(Sender: TObject);
    procedure btnOutWarePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnInWarePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    SqlStr: string;
  public
    { Public declarations }
    fBaseForm: TWinControl;
    BaseqyHed: TADOQuery;

  end;

var
  ItemSwitchFindFM: TItemSwitchFindFM;

implementation

uses CustQPS, PrvQPS, PublicPS, ItemSwitchPS, WareQPS, DeptQPS;
{$R *.dfm}

procedure TItemSwitchFindFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  SqlStr := '';
  if cxrdgrpAudit.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=0'
  else if cxrdgrpAudit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=1';

  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and SwitchDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and SwitchDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and SwitchNo like ''%' + trim(cxEdtBillNo.text) + '%''';

  if btnOutWare.Text <> '' then
    sWhere := sWhere + ' and OutWare=' + QuotedStr(trim(btnOutWare.Properties.LookupItems.Text));
  if btnInWare.Text <> '' then
    sWhere := sWhere + ' and InWare=' + QuotedStr(trim(btnInWare.Properties.LookupItems.Text));

  SqlStr := 'select * from ItemSwitchHDTB where 1=1 ' + sWhere;

  with ItemSwitchFM.qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add(SqlStr);
    Open;
  end;
  SplitPage(ItemSwitchFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);


end;

procedure TItemSwitchFindFM.btnInWarePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  try
    WareQFM := TWareQFM.Create(nil);
    WareQFM.iSelectKind := 1;
    WareQFM.ShowModal;
    if WareQFM.iFlag <> 3 then
      btnInWare.Properties.LookupItems.Text := WareQFM.sAllId;
    btnInWare.Text := WareQFM.sAllName;
  finally
    WareQFM.Free;
    WareQFM := nil;
  end;
end;

procedure TItemSwitchFindFM.btnOutWarePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  try
    WareQFM := TWareQFM.Create(nil);
    WareQFM.iSelectKind := 1;
    WareQFM.ShowModal;
    if WareQFM.iFlag <> 3 then
      btnOutWare.Properties.LookupItems.Text := WareQFM.sAllId;
    btnOutWare.Text := WareQFM.sAllName;
  finally
    WareQFM.Free;
    WareQFM := nil;
  end;
end;

procedure TItemSwitchFindFM.btOkClick(Sender: TObject);
begin
  Close;
end;

procedure TItemSwitchFindFM.dxbrcmbPageIndexChange(Sender: TObject);
begin
  inherited;
  SplitPage(ItemSwitchFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
end;

procedure TItemSwitchFindFM.FormDestroy(Sender: TObject);
begin
  ItemSwitchFindFM := nil;
end;

end.
