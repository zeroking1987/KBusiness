unit SalePayQPS;

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
  dxSkinValentine, dxBarBuiltInMenu, cxNavigator, cxButtons, cxCheckGroup;

type
  TSalePayQFM = class(TQBaseFM)
    cxEdtBillNo: TcxTextEdit;
    cxdtS: TcxDateEdit;
    cxdtE: TcxDateEdit;
    btnObject: TcxButtonEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel6: TcxLabel;
    cxbtNextM: TcxButton;
    cxbtNowM: TcxButton;
    cxbtLastM: TcxButton;
    qyHedPayNo: TStringField;
    qyHedPayDate: TDateTimeField;
    qyHedBillKind: TStringField;
    qyHedSignFlag: TStringField;
    qyHedCustId: TStringField;
    qyHedCustName: TWideStringField;
    qyHedPayMode: TStringField;
    qyHedPayMoney: TFMTBCDField;
    qyHedNoPayM: TFMTBCDField;
    qyHedRemark: TStringField;
    cxgrdtbvPayNo: TcxGridDBColumn;
    cxgrdtbvPayDate: TcxGridDBColumn;
    cxgrdtbvBillKind: TcxGridDBColumn;
    cxgrdtbvSignFlag: TcxGridDBColumn;
    cxgrdtbvCustId: TcxGridDBColumn;
    cxgrdtbvCustName: TcxGridDBColumn;
    cxgrdtbvPayMode: TcxGridDBColumn;
    cxgrdtbvPayMoney: TcxGridDBColumn;
    cxgrdtbvNoPayM: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    cxchckgrpBillKind: TcxCheckGroup;
    procedure FormCreate(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  SalePayQFM: TSalePayQFM;

implementation

uses PublicPS, ControlPublicPS, StockOrderPS;
{$R *.dfm}

procedure TSalePayQFM.btFindClick(Sender: TObject);
begin
  sWhere := '';

  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.PayDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.PayDate<=' + QuotedStr(trim(cxdtE.Text));

  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and a.BillNo like ''%' + trim(cxEdtBillNo.text) + '%''';
  if btnObject.Text <> '' then
    sWhere := sWhere + ' and (a.ObjectCode like ''%' + trim(btnObject.text) + '%'' or a.ObjectName like ''%' + trim(btnObject.text) + '%'' or dbo.fnGetPY(a.ObjectName) like ''%' + trim(btnObject.text) + '%'')';
  //if (btnObject.Properties.LookupItems.Text <> '') and (btnObject.Text <> '') then
  //  sWhere := sWhere + ' and a.ObjectId=' + QuotedStr(trim(btnObject.Properties.LookupItems.Text));

  if cxchckgrpBillKind.States[0] = cbsUnchecked then
    sWhere := sWhere + ' and a.BillKind<>''发货收款''';
  if cxchckgrpBillKind.States[1] = cbsUnchecked then
    sWhere := sWhere + ' and a.BillKind<>''预收款''';
  if cxchckgrpBillKind.States[2] = cbsUnchecked then
    sWhere := sWhere + ' and a.BillKind<>''其他收款''';

  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add(' exec PrSalePayQ ' + Quotedstr(sWhere));
    Open;
  end;
end;

procedure TSalePayQFM.btnObjectPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectCust2(btnObject);
end;

procedure TSalePayQFM.cxbtLastMClick(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(System.SysUtils.IncMonth(cxdtS.Date, -1)));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(System.SysUtils.IncMonth(cxdtE.Date, -1)));
  btFindClick(Sender);
end;

procedure TSalePayQFM.cxbtNextMClick(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(System.SysUtils.IncMonth(cxdtS.Date, 1)));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(System.SysUtils.IncMonth(cxdtE.Date, 1)));
  btFindClick(Sender);
end;

procedure TSalePayQFM.cxbtNowMClick(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(Now));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(Now));
  btFindClick(Sender);
end;

procedure TSalePayQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  BillView('SalePayHDTB', 'select * from SalePayHDTB where PayNo=' + QuotedStr(qyHed.FieldByName('PayNo').AsString));
end;

procedure TSalePayQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'SalePayQFM';
  sFMName := Self.Caption;
  sTableId := 'SalePayQ';
  inherited;
end;

procedure TSalePayQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  SalePayQFM := nil;
end;

procedure TSalePayQFM.FormShow(Sender: TObject);
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

