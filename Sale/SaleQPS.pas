unit SaleQPS;

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
  cxProgressBar, dxSkinOffice2010Blue, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxSplitter, cxGridChartView, cxGridDBChartView, Vcl.Mask, Vcl.DBCtrls, DateUtils,
  cxButtons, cxGridCardView, cxNavigator, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu;

type
  TSaleQFM = class(TQBaseFM)
    lbl1: TLabel;
    cxdtS: TcxDateEdit;
    cxdtE: TcxDateEdit;
    lbl4: TLabel;
    btnObject: TcxButtonEdit;
    cxgrd1: TcxGrid;
    cxgrd1DBChartView1: TcxGridDBChartView;
    cxgrd1DBChartView1Series1: TcxGridDBChartSeries;
    cxgrdlev1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    frxDBDataset1: TfrxDBDataset;
    qyDet: TADOQuery;
    dsDet: TDataSource;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxgrdbclmnCustName: TcxGridDBColumn;
    cxgrdbclmnOrderNum: TcxGridDBColumn;
    cxgrdbclmnOrderMoney: TcxGridDBColumn;
    strngfldHedCustId: TStringField;
    strngfldHedCustName: TStringField;
    qyHedOrderNum: TFMTBCDField;
    qyHedOrderMoney: TFMTBCDField;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    procedure btnItemNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure qyHedAfterScroll(DataSet: TDataSet);
    procedure qyDetAfterOpen(DataSet: TDataSet);
    procedure cxpgcntrl1PageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure btExportClick(Sender: TObject);
  private
    sWhere, sWhere1: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SaleQFM: TSaleQFM;

implementation

uses PublicPS, DataPS;
{$R *.dfm}

procedure TSaleQFM.btExportClick(Sender: TObject);
begin
  if cxpgcntrl1.ActivePageIndex = 0 then
  begin
    if not cxgrdtbv.ViewData.IsEmpty then
      CxExport(cxgrd, cxlabTitle.Caption + '-汇总');
  end;
  if cxpgcntrl1.ActivePageIndex = 1 then
  begin
    if not cxGridDBTableView1.ViewData.IsEmpty then
      CxExport(cxGrid1, cxlabTitle.Caption + '-明细');
  end;
end;

procedure TSaleQFM.btFindClick(Sender: TObject);
begin
  inherited;
  sWhere := '';

  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.SenderDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.SenderDate<=' + QuotedStr(trim(cxdtE.Text));
  if btnObject.Text <> '' then
  begin
    sWhere := sWhere + ' and (c.ObjectName like ''%' + trim(btnObject.Text) + '%''  or dbo.fnGetPY(c.ObjectName) like ''%' + trim(btnObject.Text) + '%'')';
    if btnObject.Properties.LookupItems.Text <> '' then
      sWhere := sWhere + ' and a.CustId =' + QuotedStr(trim(btnObject.Properties.LookupItems.Text));
  end;

  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('Exec prSaleSumQ ' + QuotedStr(sWhere));
    Open;
  end;
end;

procedure TSaleQFM.btnItemNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectCust2(btnObject);
end;

procedure TSaleQFM.cxButton1Click(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(System.SysUtils.IncMonth(cxdtS.Date, -1)));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(System.SysUtils.IncMonth(cxdtE.Date, -1)));
  btFindClick(Sender);
end;

procedure TSaleQFM.cxButton2Click(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(System.SysUtils.IncMonth(cxdtS.Date, 1)));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(System.SysUtils.IncMonth(cxdtE.Date, 1)));
  btFindClick(Sender);
end;

procedure TSaleQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  cxpgcntrl1.ActivePageIndex := 1;
end;

procedure TSaleQFM.cxpgcntrl1PageChanging(Sender: TObject; NewPage: TcxTabSheet;
  var AllowChange: Boolean);
begin
  inherited;
  if qyHed.IsEmpty then Exit;
  if NewPage.PageIndex = 1 then
  begin
    sWhere1 := sWhere + ' and a.CustId=' + QuotedStr(qyHed.FieldByName('客户编号').AsString);
    with qyDet do
    begin
      if Active then Close;
      SQL.Clear;
      sql.Add('Exec prSaleMXQ ' + QuotedStr(sWhere1));
      Open;
    end;
  end;

end;

procedure TSaleQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'SaleQ';
  sFMName := Self.Caption;
  sTableId := 'SaleQ';
  inherited;
end;

procedure TSaleQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  SaleQFM := nil;
end;

procedure TSaleQFM.FormShow(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(Now));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(Now));
end;

procedure TSaleQFM.qyDetAfterOpen(DataSet: TDataSet);
var i: Integer;
begin
  inherited;
  with cxGridDBTableView1 do
  begin
    (DataController as IcxCustomGridDataController).DeleteAllItems;
    (DataController as IcxCustomGridDataController).CreateAllItems(False);
  end;
  for i := 0 to cxGridDBTableView1.ColumnCount - 1 do
  begin
    cxGridDBTableView1.Columns[i].ApplyBestFit;
    if cxGridDBTableView1.Columns[i].DataBinding.ValueType = 'FMTBcd' then
      cxGridDBTableView1.Columns[i].Summary.FooterKind := skSum;
    if cxGridDBTableView1.Columns[i].DataBinding.FieldName = '产品代号' then
      cxGridDBTableView1.Columns[i].Summary.FooterKind := skCount;
    if cxGridDBTableView1.Columns[i].DataBinding.FieldName = '客户编号' then
      cxGridDBTableView1.Columns[i].Visible := False;
  end;
end;

procedure TSaleQFM.qyHedAfterScroll(DataSet: TDataSet);
begin
  //inherited;
end;

end.
