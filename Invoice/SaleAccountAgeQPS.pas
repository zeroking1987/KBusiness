unit SaleAccountAgeQPS;

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
  TSaleAccountAgeQFM = class(TQBaseFM)
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
    qyHedCustId: TStringField;
    qyHedCustName: TStringField;
    qyHedInvoiceNo: TStringField;
    qyHedInvoiceDate: TDateTimeField;
    qyHedInvoiceMoney: TFMTBCDField;
    qyHedPayMoney: TFMTBCDField;
    qyHedNoPayMoney: TFMTBCDField;
    qyHedDayNum: TIntegerField;
    qyHedAgeKind: TStringField;
    cxgrdtbvCustId: TcxGridDBColumn;
    cxgrdtbvCustName: TcxGridDBColumn;
    cxgrdtbvInvoiceNo: TcxGridDBColumn;
    cxgrdtbvInvoiceDate: TcxGridDBColumn;
    cxgrdtbvInvoiceMoney: TcxGridDBColumn;
    cxgrdtbvPayMoney: TcxGridDBColumn;
    cxgrdtbvNoPayMoney: TcxGridDBColumn;
    cxgrdtbvDayNum: TcxGridDBColumn;
    cxgrdtbvAgeKind: TcxGridDBColumn;
    qySumCustId: TStringField;
    qySumCustName: TStringField;
    qySumNoPayMoney: TFMTBCDField;
    cxgrdbtblvw1CustId: TcxGridDBColumn;
    cxgrdbtblvw1CustName: TcxGridDBColumn;
    cxgrdbtblvw1NoPayMoney: TcxGridDBColumn;
    cxdbtxtdtCustId: TcxDBTextEdit;
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
  SaleAccountAgeQFM: TSaleAccountAgeQFM;

implementation

uses PublicPS, ControlPublicPS, DataPS;
{$R *.dfm}

procedure TSaleAccountAgeQFM.btFindClick(Sender: TObject);
var
  i: Integer;
begin
  try
    inherited;

    sWhere := '';
    if btnObject.Text <> '' then
    begin
      sWhere := sWhere + ' and (c.CustCode like ''%' + trim(btnObject.Text) + '%'' or c.CustName like ''%' + trim(btnObject.Text) + '%'' or c.CustPYCode like ''%' + trim(btnObject.Text) + '%'' )';
      if (btnObject.Properties.LookupItems.Text <> '') then
        sWhere := sWhere + ' and a.CustId =' + QuotedStr(trim(btnObject.Properties.LookupItems.Text));
    end;
    with qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      sql.Add('Exec PrSaleAccountAgeQ ' + QuotedStr(sWhere) + ',1');
      Open;
    end;
    with qyChart do
    begin
      if Active then Close;
      SQL.Clear;
      sql.Add('Exec PrSaleAccountAgeQ ' + QuotedStr(sWhere) + ',2');
      Open;
    end;
    with qySum do
    begin
      if Active then Close;
      SQL.Clear;
      sql.Add('Exec PrSaleAccountAgeQ ' + QuotedStr(sWhere) + ',3');
      Open;
    end;
    cxgrdtbv.DataController.Groups.FullExpand;
  except
    on E: Exception do
      ShowWarn(E.Message);
  end;
end;

procedure TSaleAccountAgeQFM.btnItemNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectCust2(btnObject);
end;

procedure TSaleAccountAgeQFM.cxdbtxtdtCustIdPropertiesChange(Sender: TObject);
begin
  inherited;
  qyChart.Filter := 'CustId=' + QuotedStr(Trim(cxdbtxtdtCustId.Text));
  qyChart.Filtered := true;
end;

procedure TSaleAccountAgeQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  BillView('SaleInvoiceHDTB', 'select * from SaleInvoiceHDTB where InvoiceNo=' + QuotedStr(qyHed.FieldByName('InvoiceNo').AsString));
end;

procedure TSaleAccountAgeQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'SaleAccountAgeQ';
  sFMName := Self.Caption;
  sTableId := 'SaleAccountAgeQ';
  inherited;
end;

procedure TSaleAccountAgeQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  SaleAccountAgeQFM := nil;
end;

procedure TSaleAccountAgeQFM.FormShow(Sender: TObject);
begin
  inherited;
  cxgrdbtblvw1.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
end;

end.
