unit EmpWorkRecordQPS;

interface

uses
  Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QBasePS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, cxLabel, cxGridCustomPopupMenu,
  cxGridPopupMenu, Menus, frxClass, frxDBSet, ADODB, dxBar, cxBarEditItem, cxClasses, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  ExtCtrls, cxContainer, cxButtonEdit, cxGroupBox, cxRadioGroup, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxTextEdit, StdCtrls, dxSkinOffice2010Blue, cxPCdxBarPopupMenu,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinDevExpressStyle, dxSkinSpringTime, DateUtils,
  dxSkinValentine, cxSpinEdit, cxCalc, dxSkinOffice2007Silver,
  dxSkinSevenClassic, dxSkinSilver, dxSkinWhiteprint, dxBarBuiltInMenu,
  cxNavigator, cxButtons, cxGridChartView, cxGridDBChartView, cxSplitter,
  cxCurrencyEdit;

type
  TEmpWorkRecordQFM = class(TQBaseFM)
    lbl1: TLabel;
    lbl4: TLabel;
    cxdtS: TcxDateEdit;
    cxdtE: TcxDateEdit;
    btnObject: TcxButtonEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    btnItem: TcxButtonEdit;
    cxlbl7: TcxLabel;
    cxgrdtbvDispatchNo: TcxGridDBColumn;
    cxgrdtbvObjectName: TcxGridDBColumn;
    cxgrdtbvMoveOutDate: TcxGridDBColumn;
    cxgrdtbvMoveInDate: TcxGridDBColumn;
    cxgrdtbvItemCode: TcxGridDBColumn;
    cxgrdtbvItemName: TcxGridDBColumn;
    cxgrdtbvTopOrdinal: TcxGridDBColumn;
    cxgrdtbvTopTech: TcxGridDBColumn;
    cxgrdtbvOrdinal: TcxGridDBColumn;
    cxgrdtbvTechName: TcxGridDBColumn;
    cxgrdtbvOutNum: TcxGridDBColumn;
    cxgrdtbvInNum: TcxGridDBColumn;
    cxgrdtbvSpoilNum: TcxGridDBColumn;
    cxgrdtbvWasteNum: TcxGridDBColumn;
    cxgrdtbvScrapNum: TcxGridDBColumn;
    cxgrdtbvAllInNum: TcxGridDBColumn;
    cxgrdtbvMovePrice: TcxGridDBColumn;
    cxgrdtbvMoveMoney: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    cxTabSheet1: TcxTabSheet;
    frxSum: TfrxDBDataset;
    qySum: TADOQuery;
    dsSum: TDataSource;
    cxgrdSum: TcxGrid;
    cxgrdtbvSum: TcxGridDBTableView;
    cxgrdlevSum: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    cxgrd1: TcxGrid;
    cxgrd1DBChartView1: TcxGridDBChartView;
    cxgrd1DBChartView1Series2: TcxGridDBChartSeries;
    cxgrd1DBChartView1Series1: TcxGridDBChartSeries;
    cxgrdlev1: TcxGridLevel;
    qySumObjectId: TStringField;
    qySumObjectName: TStringField;
    qySumOutNum: TFMTBCDField;
    qySumInNum: TFMTBCDField;
    qySumSpoilNum: TFMTBCDField;
    qySumWasteNum: TFMTBCDField;
    qySumScrapNum: TFMTBCDField;
    qySumAllInNum: TFMTBCDField;
    qySumNoInNum: TFMTBCDField;
    qySumMoveMoney: TFMTBCDField;
    qySumWeight: TFMTBCDField;
    cxgrdtbvSumObjectName: TcxGridDBColumn;
    cxgrdtbvSumOutNum: TcxGridDBColumn;
    cxgrdtbvSumInNum: TcxGridDBColumn;
    cxgrdtbvSumSpoilNum: TcxGridDBColumn;
    cxgrdtbvSumWasteNum: TcxGridDBColumn;
    cxgrdtbvSumScrapNum: TcxGridDBColumn;
    cxgrdtbvSumAllInNum: TcxGridDBColumn;
    cxgrdtbvSumNoInNum: TcxGridDBColumn;
    cxgrdtbvSumMoveMoney: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnObjectPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    sWhere: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmpWorkRecordQFM: TEmpWorkRecordQFM;

implementation

uses PublicPS, ControlPublicPS, SaleOrderPS, DeptQPS;
{$R *.dfm}

procedure TEmpWorkRecordQFM.btFindClick(Sender: TObject);
begin
  sWhere := '';

  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.MoveInDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.MoveInDate<=' + QuotedStr(trim(cxdtE.Text));
  if btnObject.Text <> '' then
  begin
    sWhere := sWhere + ' and (a.ObjectName like ''%' + trim(btnObject.Text) + '%''  or dbo.fnGetPY(a.ObjectName) like ''%' + trim(btnObject.Text) + '%'')';
    if btnObject.Properties.LookupItems.Text <> '' then
      sWhere := sWhere + ' and a.ObjectId =' + QuotedStr(trim(btnObject.Properties.LookupItems.Text));
  end;

  if btnItem.Text <> '' then
  begin
    sWhere := sWhere + ' and (c.ItemCode like ''%' + trim(btnItem.Text) + '%'' or c.ItemName like ''%' + trim(btnItem.Text) + '%'' or c.ItemSpc like ''%' + trim(btnItem.Text) + '%'' or dbo.fnGetPY(c.ItemName) like ''%' + trim(btnItem.Text) + '%'') ';
    if (btnItem.Properties.LookupItems.Text <> '') then
      sWhere := sWhere + ' and a.ItemId =' + QuotedStr(trim(btnItem.Properties.LookupItems.Text));
  end;

  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('Exec PrEmpWorkRecordQ ' + QuotedStr(sWhere) + ',''1''');
    Open;
  end;
  with qySum do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('Exec PrEmpWorkRecordQ ' + QuotedStr(sWhere) + ',''2''');
    Open;
  end;
end;

procedure TEmpWorkRecordQFM.btnItemPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(btnItem);
end;

procedure TEmpWorkRecordQFM.btnObjectPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectEmp2(btnObject);
end;

procedure TEmpWorkRecordQFM.cxButton1Click(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(System.SysUtils.IncMonth(cxdtS.Date, -1)));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(System.SysUtils.IncMonth(cxdtE.Date, -1)));
  btFindClick(Sender);
end;

procedure TEmpWorkRecordQFM.cxButton2Click(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(System.SysUtils.IncMonth(cxdtS.Date, 1)));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(System.SysUtils.IncMonth(cxdtE.Date, 1)));
  btFindClick(Sender);
end;

procedure TEmpWorkRecordQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'EmpWorkRecordQFM';
  sFMName := Self.Caption;
  sTableId := 'EmpWorkRecordQ';
  inherited;
end;

procedure TEmpWorkRecordQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  EmpWorkRecordQFM := nil;
end;

procedure TEmpWorkRecordQFM.FormShow(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(Now));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(Now));
end;

end.

