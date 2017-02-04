unit StockPayFindPS;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FBasePS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, dxSkinsdxBarPainter, cxDropDownEdit,
  cxLabel, dxBar, cxBarEditItem, cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox, cxRadioGroup, cxMaskEdit, cxCalendar,
  cxTextEdit, StdCtrls, ExtCtrls, cxButtonEdit, dxSkinOffice2010Blue,
  Vcl.ComCtrls, dxCore, cxDateUtils;

type
  TStockPayFindFM = class(TFBaseFM)
    Label4: TLabel;
    btnPrv: TcxButtonEdit;
    cxgrdbclmnSelect: TcxGridDBColumn;
    cxgrdbclmnSaleOrderNo: TcxGridDBColumn;
    cxgrdbclmnOrderDate: TcxGridDBColumn;
    cxgrdbclmnPayMode: TcxGridDBColumn;
    cxgrdbclmnCustName: TcxGridDBColumn;
    cxgrdbclmnPayMoney: TcxGridDBColumn;
    cxgrdbclmnCompactNo: TcxGridDBColumn;
    Label3: TLabel;
    cxcbbBillKind: TcxComboBox;
    cxgrdbclmnFactMoney: TcxGridDBColumn;
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
  StockPayFindFM: TStockPayFindFM;

implementation

uses PrvQPS, StockPayPS, PublicPS;
{$R *.dfm}

procedure TStockPayFindFM.btFindClick(Sender: TObject);
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
  if btnPrv.Text <> '' then
    sWhere := sWhere + ' and PrvId=' + QuotedStr(trim(btnPrv.Properties.LookupItems.Text));

  with StockPayFM.qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('select * from StockPayHDTB where 1=1');
    SQL.Add(sWhere);
  end;
  SplitPage(StockPayFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TStockPayFindFM.btnPrvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  try
    try
      PrvQFM := TPrvQFM.Create(nil);
      PrvQFM.iSelectKind := 2; //单选
      PrvQFM.ShowModal;
      btnPrv.Properties.LookupItems.Text := PrvQFM.sId;
      btnPrv.Text := PrvQFM.sName;
    finally
      PrvQFM.Free;
      PrvQFM := nil;
    end;
  except
  end;
end;

procedure TStockPayFindFM.btOkClick(Sender: TObject);
var
  i: Integer;
begin
  try
    sBillNo := '';
    StockPayFM.qyHed.First;
    for I := 0 to StockPayFM.qyHed.RecordCount - 1 do
    begin
      if StockPayFM.qyHed.FieldByName('bSelect').AsBoolean then
      begin
        sBillNo := sBillNo + '''' + StockPayFM.qyHed.FieldByName('PayNo').AsString + ''',';
      end;
      StockPayFM.qyHed.Next;
    end;
    if sBillNo <> '' then
      sBillNo := LeftStr(sBillNo, Length(sBillNo) - 1); //去除最后一个','
    Close;
  except
  end;
end;

procedure TStockPayFindFM.dxbrcmbPageIndexChange(Sender: TObject);
begin
  inherited;
  SplitPage(StockPayFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
end;

procedure TStockPayFindFM.FormDestroy(Sender: TObject);
begin
  StockPayFindFM := nil;
end;

end.
