unit SaleOutQPS;

interface

uses
  Windows, Messages, System.SysUtils,DateUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QBasePS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, cxLabel, cxGridCustomPopupMenu,
  cxGridPopupMenu, Menus, frxClass, frxDBSet, ADODB, dxBar, cxBarEditItem, cxClasses, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  ExtCtrls, cxContainer, cxButtonEdit, cxGroupBox, cxRadioGroup, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxTextEdit, StdCtrls, dxSkinOffice2010Blue, cxPCdxBarPopupMenu,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinDevExpressStyle, dxSkinSpringTime,
  dxSkinValentine, dxBarBuiltInMenu, cxNavigator, cxButtons,
  dxSkinOffice2013LightGray, dxSkinOffice2016Colorful, dxSkinOffice2016Dark;

type
  TSaleOutQFM = class(TQBaseFM)
    cxEdtBillNo: TcxTextEdit;
    cxdtS: TcxDateEdit;
    cxdtE: TcxDateEdit;
    btnObject: TcxButtonEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel6: TcxLabel;
    cxgrdtbvBillNo: TcxGridDBColumn;
    cxgrdtbvBillDate: TcxGridDBColumn;
    cxgrdtbvSingFlag: TcxGridDBColumn;
    cxgrdtbvObjectId: TcxGridDBColumn;
    cxgrdtbvObjectName: TcxGridDBColumn;
    cxgrdtbvItemCode: TcxGridDBColumn;
    cxgrdtbvItemName: TcxGridDBColumn;
    cxgrdtbvItemSpc: TcxGridDBColumn;
    cxgrdtbvItemUnit: TcxGridDBColumn;
    cxgrdtbvMainNum: TcxGridDBColumn;
    cxgrdtbvMainPrice: TcxGridDBColumn;
    cxgrdtbvMainMoney: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    cxItem: TcxButtonEdit;
    cxlbl7: TcxLabel;
    cxbtNextM: TcxButton;
    cxbtNowM: TcxButton;
    cxbtLastM: TcxButton;
    cxgrdtbvColumn1: TcxGridDBColumn;
    cxgrdtbvColumn2: TcxGridDBColumn;
    cxgrdtbvColumn3: TcxGridDBColumn;
    cxgrdtbvColumn4: TcxGridDBColumn;
    cxgrdtbvColumn5: TcxGridDBColumn;
    cxgrdtbvColumn6: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnObjectPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtLastMClick(Sender: TObject);
    procedure cxbtNowMClick(Sender: TObject);
    procedure cxbtNextMClick(Sender: TObject);
  private
    sWhere: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SaleOutQFM: TSaleOutQFM;

implementation

uses PublicPS, ControlPublicPS, StockOrderPS;
{$R *.dfm}

procedure TSaleOutQFM.btFindClick(Sender: TObject);
begin
  sWhere := '';

  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.BillDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.BillDate<=' + QuotedStr(trim(cxdtE.Text));

  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and a.BillNo like ''%' + trim(cxEdtBillNo.text) + '%''';
  if cxItem.Text <> '' then
    sWhere := sWhere + ' and (b.ItemCode like ''%' + trim(cxItem.Text) + '%'' or b.ItemName like ''%' + trim(cxItem.Text) + '%'' or b.ItemSpc like ''%' + trim(cxItem.Text) + '%'' or dbo.fnGetPY(b.ItemName) like ''%' + trim(cxItem.Text) + '%'' )';
  if (cxItem.Properties.LookupItems.Text <> '') and (cxItem.Text <> '') then
    sWhere := sWhere + ' and b.ItemId =' + QuotedStr(trim(cxItem.Properties.LookupItems.Text));
  if btnObject.Text <> '' then
    sWhere := sWhere + ' and (a.ObjectCode like ''%' + trim(btnObject.text) + '%'' or a.ObjectName like ''%' + trim(btnObject.text) + '%'' or dbo.fnGetPY(a.ObjectName) like ''%' + trim(btnObject.text) + '%'')';
  //if (btnObject.Properties.LookupItems.Text <> '') and (btnObject.Text <> '') then
  //  sWhere := sWhere + ' and a.ObjectId=' + QuotedStr(trim(btnObject.Properties.LookupItems.Text));

  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add(' exec PrSaleOutQ ' + Quotedstr(sWhere));
    Open;
  end;
end;

procedure TSaleOutQFM.btnObjectPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectCust2(btnObject);
end;

procedure TSaleOutQFM.cxbtLastMClick(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(System.SysUtils.IncMonth(cxdtS.Date, -1)));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(System.SysUtils.IncMonth(cxdtE.Date, -1)));
  btFindClick(Sender);
end;

procedure TSaleOutQFM.cxbtNextMClick(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(System.SysUtils.IncMonth(cxdtS.Date, 1)));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(System.SysUtils.IncMonth(cxdtE.Date, 1)));
  btFindClick(Sender);
end;

procedure TSaleOutQFM.cxbtNowMClick(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(Now));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(Now));
  btFindClick(Sender);
end;

procedure TSaleOutQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  BillView('SaleOut', 'select * from WareInOutHDTB where BillNo=' + QuotedStr(qyHed.FieldByName('BillNo').AsString));
end;

procedure TSaleOutQFM.cxItemPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(cxItem);
end;

procedure TSaleOutQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'SaleOutQFM';
  sFMName := Self.Caption;
  sTableId := 'SaleOutQ';
  inherited;
end;

procedure TSaleOutQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  SaleOutQFM := nil;
end;

procedure TSaleOutQFM.FormShow(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if (bRight) then
  begin
    for i := 0 to cxgrdtbv.ColumnCount - 1 do
    begin
      if (cxgrdtbv.Columns[i].DataBinding.FieldName = 'MainPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'MainMoney') then
        cxgrdtbv.Columns[i].Visible := bShowPrice;
    end;
  end;
end;
end.

