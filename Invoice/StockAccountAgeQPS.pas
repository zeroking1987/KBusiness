unit StockAccountAgeQPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QBasePS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, cxLabel,
  cxGridCustomPopupMenu, cxGridPopupMenu, Menus, frxClass, frxDBSet, ADODB,
  dxBar, cxBarEditItem, cxClasses, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  StdCtrls, ExtCtrls, cxGridBandedTableView, cxGridDBBandedTableView,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxButtonEdit,
  cxProgressBar, dxSkinOffice2010Blue, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxGridChartView, cxGridDBChartView, cxSplitter, cxDBEdit,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu,
  cxNavigator;

type
  TStockAccountAgeQFM = class(TQBaseFM)
    cxTabSheet1: TcxTabSheet;
    frxDBDataset1: TfrxDBDataset;
    qySum: TADOQuery;
    dsSum: TDataSource;
    lbl4: TLabel;
    btnObject: TcxButtonEdit;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxGrid1DBChartView1: TcxGridDBChartView;
    cxGridDBTableView1CustId: TcxGridDBColumn;
    cxGridDBTableView1CustName: TcxGridDBColumn;
    cxGridDBTableView1AgeKind: TcxGridDBColumn;
    cxGridDBTableView1NoPayMoney: TcxGridDBColumn;
    cxGrid1DBChartView1Series2: TcxGridDBChartSeries;
    qyChart: TADOQuery;
    dsChart: TDataSource;
    cxgrd1: TcxGrid;
    cxgrdbtblvw1: TcxGridDBTableView;
    cxgrdlvl1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    cxgrdtbvPrvId: TcxGridDBColumn;
    cxgrdtbvPrvName: TcxGridDBColumn;
    cxgrdtbvInvoiceNo: TcxGridDBColumn;
    cxgrdtbvInvoiceDate: TcxGridDBColumn;
    cxgrdtbvInvoiceMoney: TcxGridDBColumn;
    cxgrdtbvPayMoney: TcxGridDBColumn;
    cxgrdtbvNoPayMoney: TcxGridDBColumn;
    cxgrdtbvDayNum: TcxGridDBColumn;
    cxgrdtbvAgeKind: TcxGridDBColumn;
    cxgrdbtblvw1CustId: TcxGridDBColumn;
    cxgrdbtblvw1CustName: TcxGridDBColumn;
    cxgrdbtblvw1NoPayMoney: TcxGridDBColumn;
    cxdbtxtdtPrvId: TcxDBTextEdit;
    procedure btnItemNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btFindClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxdbtxtdtCustIdPropertiesChange(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StockAccountAgeQFM: TStockAccountAgeQFM;

implementation

uses PublicPS, ControlPublicPS, DataPS;
{$R *.dfm}

procedure TStockAccountAgeQFM.btFindClick(Sender: TObject);
var
  i: Integer;
begin
  try
    inherited;

    sWhere := '';
    if btnObject.Text <> '' then
    begin
      sWhere := sWhere + ' and (c.PrvCode like ''%' + trim(btnObject.Text) + '%'' or c.PrvName like ''%' + trim(btnObject.Text) + '%'' or c.PrvPYCode like ''%' + trim(btnObject.Text) + '%'' )';
      if (btnObject.Properties.LookupItems.Text <> '') then
        sWhere := sWhere + ' and a.PrvId =' + QuotedStr(trim(btnObject.Properties.LookupItems.Text));
    end;
    with qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      sql.Add('Exec PrStockAccountAgeQ ' + QuotedStr(sWhere) + ',1');
      Open;
    end;
    with qyChart do
    begin
      if Active then Close;
      SQL.Clear;
      sql.Add('Exec PrStockAccountAgeQ ' + QuotedStr(sWhere) + ',2');
      Open;
    end;
    with qySum do
    begin
      if Active then Close;
      SQL.Clear;
      sql.Add('Exec PrStockAccountAgeQ ' + QuotedStr(sWhere) + ',3');
      Open;
    end;
    cxgrdtbv.DataController.Groups.FullExpand;
  except
    on E: Exception do
      ShowWarn(E.Message);
  end;
end;

procedure TStockAccountAgeQFM.btnItemNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectPrv2(btnObject);
end;

procedure TStockAccountAgeQFM.cxdbtxtdtCustIdPropertiesChange(Sender: TObject);
begin
  inherited;
  qyChart.Filter := 'PrvId=' + QuotedStr(Trim(cxdbtxtdtPrvId.Text));
  qyChart.Filtered := true;
end;

procedure TStockAccountAgeQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  BillView('StockInvoiceHDTB', 'select * from StockInvoiceHDTB where InvoiceNo=' + QuotedStr(qyHed.FieldByName('InvoiceNo').AsString));
end;

procedure TStockAccountAgeQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'StockAccountAgeQ';
  sFMName := Self.Caption;
  sTableId := 'StockAccountAgeQ';
  inherited;
end;

procedure TStockAccountAgeQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  StockAccountAgeQFM := nil;
end;

procedure TStockAccountAgeQFM.FormShow(Sender: TObject);
begin
  inherited;
  cxgrdbtblvw1.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
end;

end.
