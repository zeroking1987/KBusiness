unit StockOrderFindPS;

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
  TStockOrderFindFM = class(TFBaseFM)
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
  StockOrderFindFM: TStockOrderFindFM;

implementation

uses PrvQPS, StockOrderPS, PublicPS;
{$R *.dfm}

procedure TStockOrderFindFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxrdgrpAudit.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=0'
  else if cxrdgrpAudit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(bMaxAudit,0)=1';
  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and OrderDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and OrderDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and StockOrderNo like ''%' + trim(cxEdtBillNo.text) + '%''';
  if btnPrv.Text <> '' then
    sWhere := sWhere + ' and PrvId=' + QuotedStr(trim(btnPrv.Properties.LookupItems.Text));
  with StockOrderFM.qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('select * from StockOrderHDTB where 1=1');
    SQL.Add(sWhere);
  end;
  SplitPage(StockOrderFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TStockOrderFindFM.btnPrvPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TStockOrderFindFM.btOkClick(Sender: TObject);
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

procedure TStockOrderFindFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
 { if cxgrdtbv.DataController.DataSource.DataSet.State = dsBrowse then
    cxgrdtbv.DataController.DataSource.DataSet.Edit;
  cxgrdtbv.DataController.DataSource.DataSet.FieldByName('bSelect').AsBoolean := true;  }
  btOkClick(Sender);
end;

procedure TStockOrderFindFM.dxbrcmbPageIndexChange(Sender: TObject);
begin
  inherited;
  SplitPage(StockOrderFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
end;

procedure TStockOrderFindFM.FormDestroy(Sender: TObject);
begin
  StockOrderFindFM := nil;
end;

end.
