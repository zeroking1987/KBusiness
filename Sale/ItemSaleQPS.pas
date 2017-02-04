unit ItemSaleQPS;

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
  cxButtons, cxGridCardView, cxCheckBox, cxNavigator, cxSpinEdit,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu;

type
  TItemSaleQFM = class(TQBaseFM)
    lbl1: TLabel;
    cxdtS: TcxDateEdit;
    cxdtE: TcxDateEdit;
    lbl4: TLabel;
    btnItem: TcxButtonEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxtbsht2: TcxTabSheet;
    frxDBDataset1: TfrxDBDataset;
    qyDet: TADOQuery;
    dsDet: TDataSource;
    cxgrdbclmnDBColumn1: TcxGridDBColumn;
    cxgrdbclmnDBColumn2: TcxGridDBColumn;
    cxgrdbclmnDBColumn3: TcxGridDBColumn;
    cxgrdbclmnDBColumn4: TcxGridDBColumn;
    cxgrdbclmnDBColumn5: TcxGridDBColumn;
    cxgrdbclmnDBColumn6: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBChartView1: TcxGridDBChartView;
    cxGridDBChartSeries1: TcxGridDBChartSeries;
    cxGridLevel1: TcxGridLevel;
    cxspltr2: TcxSplitter;
    frxDBDataset2: TfrxDBDataset;
    qyDet2: TADOQuery;
    dsDet2: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGrid3: TcxGrid;
    cxGridDBChartView2: TcxGridDBChartView;
    cxGridDBChartSeries2: TcxGridDBChartSeries;
    cxGridLevel2: TcxGridLevel;
    cxGridDBChartView2Series1: TcxGridDBChartSeries;
    cxtbsht3: TcxTabSheet;
    cxgrd1: TcxGrid;
    cxgrdbtblvw1: TcxGridDBTableView;
    cxgrdlvl1: TcxGridLevel;
    cxgrdbclmnColumn1: TcxGridDBColumn;
    cxgrdbclmnColumn2: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    procedure btnItemNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure cxpgcntrl1PageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure qyDetAfterOpen(DataSet: TDataSet);
    procedure btExportClick(Sender: TObject);
  private
    sWhere, sWhere1: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ItemSaleQFM: TItemSaleQFM;

implementation

uses PublicPS, DataPS;
{$R *.dfm}

procedure TItemSaleQFM.btExportClick(Sender: TObject);
begin
  //inherited;
  if cxpgcntrl1.ActivePageIndex = 0 then
  begin
    if not cxgrdtbv.ViewData.IsEmpty then
      CxExport(cxgrd, cxlabTitle.Caption + '-汇总');
  end;
  if cxpgcntrl1.ActivePageIndex = 1 then
  begin
    if not cxgrdbtblvw1.ViewData.IsEmpty then
      CxExport(cxgrd1, cxlabTitle.Caption + '-明细');
  end;
end;

procedure TItemSaleQFM.btFindClick(Sender: TObject);
begin
  inherited;
  sWhere := '';

  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.BillDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.BillDate<=' + QuotedStr(trim(cxdtE.Text));
  if btnItem.Text <> '' then
  begin
    sWhere := sWhere + ' and (c.ItemCode like ''%' + trim(btnItem.Text) + '%''  or c.ItemName like ''%' + trim(btnItem.Text) + '%''  or c.ItemPYCode like ''%' + trim(btnItem.Text) + '%'')';
    if btnItem.Properties.LookupItems.Text <> '' then
      sWhere := sWhere + ' and b.ItemId =' + QuotedStr(trim(btnItem.Properties.LookupItems.Text));
  end;

  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('Exec prItemSaleSumQ ' + QuotedStr(sWhere));
    Open;
  end;
end;

procedure TItemSaleQFM.btnItemNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(btnItem);
end;

procedure TItemSaleQFM.cxButton1Click(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(System.SysUtils.IncMonth(cxdtS.Date, -1)));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(System.SysUtils.IncMonth(cxdtE.Date, -1)));
  btFindClick(Sender);
end;

procedure TItemSaleQFM.cxButton2Click(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(System.SysUtils.IncMonth(cxdtS.Date, 1)));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(System.SysUtils.IncMonth(cxdtE.Date, 1)));
  btFindClick(Sender);
end;

procedure TItemSaleQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  cxpgcntrl1.ActivePageIndex := 1;
end;

procedure TItemSaleQFM.cxpgcntrl1PageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if qyHed.IsEmpty then Exit;
  sWhere1 := sWhere + ' and b.ItemId=' + QuotedStr(qyHed.FieldByName('产品编号').AsString);
  if (NewPage.PageIndex = 1) then
  begin
    with qyDet do
    begin
      if Active then Close;
      SQL.Clear;
      sql.Add('Exec prItemSaleMXQ ' + QuotedStr(sWhere1));
      Open;
    end;
  end;
  if (NewPage.PageIndex = 2) then
  begin
    with qyDet2 do
    begin
      if Active then Close;
      SQL.Clear;
      sql.Add('Exec prItemSalePriceQ ' + QuotedStr(sWhere1));
      Open;
    end;
  end;
end;

procedure TItemSaleQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'ItemSaleQ';
  sFMName := Self.Caption;
  sTableId := 'ItemSaleQ';
  inherited;
end;

procedure TItemSaleQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ItemSaleQFM := nil;
end;

procedure TItemSaleQFM.FormShow(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(Now));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(Now));
end;

procedure TItemSaleQFM.qyDetAfterOpen(DataSet: TDataSet);
var i: Integer;
begin
  inherited;
  with cxgrdbtblvw1 do
  begin
    (DataController as IcxCustomGridDataController).DeleteAllItems;
    (DataController as IcxCustomGridDataController).CreateAllItems(False);
  end;
  for i := 0 to cxgrdbtblvw1.ColumnCount - 1 do
  begin
    cxgrdbtblvw1.Columns[i].ApplyBestFit;
    if cxgrdbtblvw1.Columns[i].DataBinding.ValueType = 'FMTBcd' then
      cxgrdbtblvw1.Columns[i].Summary.FooterKind := skSum;
    if cxgrdbtblvw1.Columns[i].DataBinding.FieldName = '产品代号' then
      cxgrdbtblvw1.Columns[i].Summary.FooterKind := skCount;
  end;
end;

end.
