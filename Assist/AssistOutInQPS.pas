unit AssistOutInQPS;

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
  dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu, cxGroupBox, cxRadioGroup,
  cxCurrencyEdit;

type
  TAssistOutInQFM = class(TQBaseFM)
    lbl1: TLabel;
    cxdtS: TcxDateEdit;
    cxdtE: TcxDateEdit;
    lbl4: TLabel;
    btnObject: TcxButtonEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    btnItem: TcxButtonEdit;
    cxlbl7: TcxLabel;
    qyHedDispatchNo: TStringField;
    qyHedObjectId: TStringField;
    qyHedObjectName: TStringField;
    qyHedMoveOutNo: TStringField;
    qyHedMoveOutDate: TDateTimeField;
    qyHedMoveInNo: TStringField;
    qyHedMoveInDate: TDateTimeField;
    qyHedItemId: TStringField;
    qyHedItemCode: TStringField;
    qyHedItemName: TStringField;
    qyHedItemSpc: TStringField;
    qyHedTopOrdinal: TSmallintField;
    qyHedTopTech: TStringField;
    qyHedOrdinal: TSmallintField;
    qyHedTechName: TStringField;
    qyHedOutNum: TFMTBCDField;
    qyHedInNum: TFMTBCDField;
    qyHedSpoilNum: TFMTBCDField;
    qyHedWasteNum: TFMTBCDField;
    qyHedScrapNum: TFMTBCDField;
    qyHedMovePrice: TFMTBCDField;
    qyHedMoveMoney: TFMTBCDField;
    qyHedWeight: TFMTBCDField;
    qyHedRemark: TStringField;
    cxgrdtbvDispatchNo: TcxGridDBColumn;
    cxgrdtbvObjectName: TcxGridDBColumn;
    cxgrdtbvMoveOutNo: TcxGridDBColumn;
    cxgrdtbvMoveOutDate: TcxGridDBColumn;
    cxgrdtbvMoveInNo: TcxGridDBColumn;
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
    cxgrdtbvMovePrice: TcxGridDBColumn;
    cxgrdtbvMoveMoney: TcxGridDBColumn;
    cxgrdtbvWeight: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    cxgrdtbvColumn1: TcxGridDBColumn;
    qyHedAllInNum: TFMTBCDField;
    cxgrdtbvColumn2: TcxGridDBColumn;
    procedure btnItemNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure qyHedAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure btnItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    sWhere, sWhere1: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AssistOutInQFM: TAssistOutInQFM;

implementation

uses PublicPS, DataPS;
{$R *.dfm}

procedure TAssistOutInQFM.btFindClick(Sender: TObject);
begin
  inherited;
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
    if (btnItem.Properties.LookupItems.Text <> '')  then
      sWhere := sWhere + ' and a.ItemId =' + QuotedStr(trim(btnItem.Properties.LookupItems.Text));
  end;

  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('Exec prAssistOutInQ ' + QuotedStr(sWhere) + ',''1''');
    Open;
  end;
end;

procedure TAssistOutInQFM.btnItemNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectPrv2(btnObject);
end;

procedure TAssistOutInQFM.btnItemPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(btnItem);
end;

procedure TAssistOutInQFM.cxButton1Click(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(System.SysUtils.IncMonth(cxdtS.Date, -1)));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(System.SysUtils.IncMonth(cxdtE.Date, -1)));
  btFindClick(Sender);
end;

procedure TAssistOutInQFM.cxButton2Click(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(System.SysUtils.IncMonth(cxdtS.Date, 1)));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(System.SysUtils.IncMonth(cxdtE.Date, 1)));
  btFindClick(Sender);
end;

procedure TAssistOutInQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'AssistOutInQFM';
  sFMName := Self.Caption;
  sTableId := 'AssistOutInQ';
  inherited;
end;

procedure TAssistOutInQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  AssistOutInQFM := nil;
end;

procedure TAssistOutInQFM.FormShow(Sender: TObject);
var i:integer;
begin
  inherited;
  if (bRight) then
  begin
    for i := 0 to cxgrdtbv.ColumnCount - 1 do
    begin
      if (cxgrdtbv.Columns[i].DataBinding.FieldName = 'MovePrice') or
         (cxgrdtbv.Columns[i].DataBinding.FieldName = 'MoveMoney')
      then
        cxgrdtbv.Columns[i].Visible := bShowPrice;
    end;
  end;

  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(Now));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(Now));
end;

procedure TAssistOutInQFM.qyHedAfterScroll(DataSet: TDataSet);
begin
  //inherited;
end;

end.
