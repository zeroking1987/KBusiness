unit StockPayQPS;

interface

uses
  Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QBasePS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, cxLabel,
  cxGridCustomPopupMenu, cxGridPopupMenu, Menus, frxClass, frxDBSet, ADODB,
  dxBar, cxBarEditItem, cxClasses, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  StdCtrls, ExtCtrls, cxGridBandedTableView, cxGridDBBandedTableView,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxButtonEdit,
  cxProgressBar, dxSkinOffice2010Blue, Vcl.ComCtrls, dxCore, cxDateUtils, DateUtils,
  cxButtons, dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine,
  dxBarBuiltInMenu, cxNavigator;

type
  TStockPayQFM = class(TQBaseFM)
    cxTabSheet1: TcxTabSheet;
    frxDBDataset1: TfrxDBDataset;
    qyDet: TADOQuery;
    dsDet: TDataSource;
    cxgrdtbvCustId: TcxGridDBColumn;
    cxgrdtbvCustName: TcxGridDBColumn;
    cxgrdtbvBillDate: TcxGridDBColumn;
    cxgrdtbvBillKind: TcxGridDBColumn;
    cxgrdtbvItemId: TcxGridDBColumn;
    cxgrdtbvItemCode: TcxGridDBColumn;
    cxgrdtbvItemName: TcxGridDBColumn;
    cxgrdtbvProType: TcxGridDBColumn;
    cxgrdtbvColor: TcxGridDBColumn;
    cxgrdtbvSaleNum: TcxGridDBColumn;
    cxgrdtbvBackNum: TcxGridDBColumn;
    cxgrdtbvTaxPrice: TcxGridDBColumn;
    cxgrdtbvSaleM: TcxGridDBColumn;
    cxgrdtbvBackM: TcxGridDBColumn;
    cxgrdtbvDebitM: TcxGridDBColumn;
    cxgrdtbvCreditM: TcxGridDBColumn;
    cxgrdtbvLastM: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1CustId: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CustName: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FirstM: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1SaleM: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1BackM: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AllInvocieM: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DebitM: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CreditM: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AllPayM: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1LastM: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxdtS: TcxDateEdit;
    cxdtE: TcxDateEdit;
    btnObject: TcxButtonEdit;
    btn1: TcxButton;
    btn2: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn;
    cxgrdtbvColumn1: TcxGridDBColumn;
    procedure btnItemNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btFindClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxgrdtbvCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StockPayQFM: TStockPayQFM;

implementation

uses PublicPS, ControlPublicPS, DataPS;
{$R *.dfm}

procedure TStockPayQFM.btFindClick(Sender: TObject);
var
  i: Integer;
begin
  try
    inherited;
    if (cxdtS.Text = '') or (cxdtE.Text = '') then
    begin
      ShowBox('请先选择日期');
      Exit;
    end;
    sWhere := '';
    if btnObject.Text <> '' then
    begin
      sWhere := sWhere + ' and  Exists (select PrvId  from ProviderTB m where a.PrvId=m.PrvId and  (m.PrvCode like ''%' + trim(btnObject.Text) + '%''  or m.PrvPYCode like ''%' + trim(btnObject.Text) + '%'' or m.PrvName like ''%' + trim(btnObject.Text) + '%''))';
      if btnObject.Properties.LookupItems.Text <> '' then
        sWhere := sWhere + ' and a.PrvId =' + QuotedStr(trim(btnObject.Properties.LookupItems.Text));
    end;
    try
      with DataFM.spTemp do
      begin
        if active then close;
        Parameters.Clear;
        procedurename := 'prStockPayQ;1';
        Parameters.AddParameter.Name := '@dtS';
        Parameters[0].Direction := pdInput;
        Parameters[0].DataType := ftDateTime;
        Parameters[0].value := trim(cxdtS.Text);
        Parameters.AddParameter.Name := '@dtE';
        Parameters[1].Direction := pdInput;
        Parameters[1].DataType := ftDateTime;
        Parameters[1].value := trim(cxdtE.Text);
        Parameters.AddParameter.Name := '@sWhere';
        Parameters[2].Direction := pdInput;
        Parameters[2].DataType := ftstring;
        Parameters[2].Size := 2000;
        Parameters[2].value := sWhere;
        Parameters.AddParameter.Name := '@iFlag';
        Parameters[3].Direction := pdInput;
        Parameters[3].DataType := ftInteger;
        Parameters[3].value := 2;
        open;
      end;
      qyHed.Recordset := DataFM.spTemp.Recordset;
      qyDet.Recordset := DataFM.spTemp.NextRecordset(i);
    finally
      DataFM.spTemp.close;
    end;
    //SplitPage(Self.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
  except
    on E: Exception do
      ShowWarn(E.Message);
  end;
end;

procedure TStockPayQFM.btn1Click(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(System.SysUtils.IncMonth(cxdtS.Date, -1)));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(System.SysUtils.IncMonth(cxdtE.Date, -1)));
  btFindClick(Sender);
end;

procedure TStockPayQFM.btn2Click(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(System.SysUtils.IncMonth(cxdtS.Date, 1)));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(System.SysUtils.IncMonth(cxdtE.Date, 1)));
  btFindClick(Sender);
end;

procedure TStockPayQFM.btnItemNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectPrv2(btnObject);
end;

procedure TStockPayQFM.cxgrdtbvCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  inherited;
  if trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxgrdtbvBillKind.Index], varString)) = '期初' then
    ACanvas.canvas.Font.Color := clBlue;
  ACanvas.FillRect(AViewInfo.Bounds);
end;

procedure TStockPayQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  if (qyHed.FieldByName('BillKind').AsString = '应付发票(蓝字)') or (qyHed.FieldByName('BillKind').AsString = '应付发票(红字)') then
    BillView('StockInvoiceHDTB', 'select * from StockInvoiceHDTB where InvoiceNo=' + QuotedStr(qyHed.FieldByName('BillNo').AsString));
  if (qyHed.FieldByName('BillKind').AsString = '收货付款') or (qyHed.FieldByName('BillKind').AsString = '发货退款') then
    BillView('StockPayHDTB', 'select * from StockPayHDTB where PayNo=' + QuotedStr(qyHed.FieldByName('BillNo').AsString));
end;

procedure TStockPayQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'StockPayQ';
  sFMName := Self.Caption;
  sTableId := 'StockPayQ';
  inherited;
end;

procedure TStockPayQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  StockPayQFM := nil;
end;

procedure TStockPayQFM.FormShow(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(Now));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(Now));
  cxGrid1DBBandedTableView1.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
end;

end.
