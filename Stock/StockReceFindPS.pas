unit StockReceFindPS;

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
  TStockReceFindFM = class(TFBaseFM)
    Label4: TLabel;
    btnPrv: TcxButtonEdit;
    cxgrdbclmnSelect: TcxGridDBColumn;
    cxgrdbclmnStockOrderNO: TcxGridDBColumn;
    cxgrdbclmnOrderDate: TcxGridDBColumn;
    cxgrdbclmnPayMode: TcxGridDBColumn;
    cxgrdbclmnPrvName: TcxGridDBColumn;
    cxgrdbclmnPrvAddress: TcxGridDBColumn;
    procedure btnPrvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btOkClick(Sender: TObject);
    procedure dxbrcmbPageIndexChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StockReceFindFM: TStockReceFindFM;

implementation

uses PrvQPS, StockRecePS, PublicPS;
{$R *.dfm}

procedure TStockReceFindFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxrdgrpAudit.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=0'
  else if cxrdgrpAudit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=1';
  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and ReceDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and ReceDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and StockReceNo like ''%' + trim(cxEdtBillNo.text) + '%''';
  if btnPrv.Text <> '' then
    sWhere := sWhere + ' and PrvId=' + QuotedStr(trim(btnPrv.Properties.LookupItems.Text));
  with StockReceFM.qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('select * from StockReceHDTB where 1=1');
    SQL.Add(sWhere);
  end;
  SplitPage(StockReceFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TStockReceFindFM.btnPrvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TStockReceFindFM.btOkClick(Sender: TObject);
var
  i: Integer;
begin
  try
   { sBillNo := '';
    StockOrderFM.qyHed.First;
    for I := 0 to StockOrderFM.qyHed.RecordCount - 1 do
    begin
      if StockOrderFM.qyHed.FieldByName('bSelect').AsBoolean then
      begin
        sBillNo := sBillNo + '''' + StockOrderFM.qyHed.FieldByName('StockOrderNo').AsString + ''',';
      end;
      StockOrderFM.qyHed.Next;
    end;
    if sBillNo <> '' then
      sBillNo := LeftStr(sBillNo, Length(sBillNo) - 1); //去除最后一个','  }
    Close;
  except
  end;
end;

procedure TStockReceFindFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
 { if cxgrdtbv.DataController.DataSource.DataSet.State = dsBrowse then
    cxgrdtbv.DataController.DataSource.DataSet.Edit;
  cxgrdtbv.DataController.DataSource.DataSet.FieldByName('bSelect').AsBoolean := true;  }
  btOkClick(Sender);
end;

procedure TStockReceFindFM.dxbrcmbPageIndexChange(Sender: TObject);
begin
  inherited;
  SplitPage(StockReceFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
end;

procedure TStockReceFindFM.FormDestroy(Sender: TObject);
begin
  StockReceFindFM := nil;
end;

end.
