unit ItemSwitchQPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QBasePS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, cxLabel, cxGridCustomPopupMenu,
  cxGridPopupMenu, Menus, frxClass, frxDBSet, ADODB, dxBar, cxBarEditItem, cxClasses, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  ExtCtrls, cxContainer, cxButtonEdit, cxGroupBox, cxRadioGroup, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxTextEdit, StdCtrls, dxSkinOffice2010Blue, cxPCdxBarPopupMenu,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxTL, cxCheckBox, cxTLdxBarBuiltInMenu,
  cxInplaceContainer, cxDBTL, cxTLData, dxSkinDevExpressStyle, dxSkinSpringTime,
  dxSkinValentine, dxBarBuiltInMenu, cxNavigator;

type
  TItemSwitchQFM = class(TQBaseFM)
    cxEdtBillNo: TcxTextEdit;
    cxdtS: TcxDateEdit;
    cxdtE: TcxDateEdit;
    cxrdgrpAudit: TcxRadioGroup;
    frxDet: TfrxDBDataset;
    qyDet: TADOQuery;
    dsDet: TDataSource;
    cxgrdDBTableView1: TcxGridDBTableView;
    qyHedSwitchDate: TDateTimeField;
    qyHedSwitchNo: TStringField;
    qyHedSwitchKind: TStringField;
    qyHedItemCode: TStringField;
    qyHedItemName: TStringField;
    qyHedItemSpc: TStringField;
    qyHedSwitchNum: TFMTBCDField;
    cxgrdtbvSwitchDate: TcxGridDBColumn;
    cxgrdtbvSwitchNo: TcxGridDBColumn;
    cxgrdtbvSwitchKind: TcxGridDBColumn;
    cxgrdtbvItemCode: TcxGridDBColumn;
    cxgrdtbvItemName: TcxGridDBColumn;
    cxgrdtbvItemSpc: TcxGridDBColumn;
    cxgrdtbvSwitchNum: TcxGridDBColumn;
    qyDetDetAutoNo: TStringField;
    qyDetSwitchDate: TDateTimeField;
    qyDetSwitchNo: TStringField;
    qyDetSwitchKind: TStringField;
    qyDetItemCode: TStringField;
    qyDetItemName: TStringField;
    qyDetItemSpc: TStringField;
    qyDetSwitchNum: TFMTBCDField;
    cxgrdDBTableView1SwitchKind: TcxGridDBColumn;
    cxgrdDBTableView1ItemCode: TcxGridDBColumn;
    cxgrdDBTableView1ItemName: TcxGridDBColumn;
    cxgrdDBTableView1ItemSpc: TcxGridDBColumn;
    cxgrdDBTableView1SwitchNum: TcxGridDBColumn;
    qyHedAutoNo: TStringField;
    cxgrdLevel2: TcxGridLevel;
    qyDetAutoNo: TStringField;
    cxItemL: TcxButtonEdit;
    cxlbl7: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxItemR: TcxButtonEdit;
    cxLabel4: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure cxgrdDBTableView1CustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure cxgrdtbvCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxItemLPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxItemRPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdDBTableView1DblClick(Sender: TObject);
  private
    sWhere, sWhereL, sWhereR: string;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  ItemSwitchQFM: TItemSwitchQFM;

implementation

uses PublicPS, ControlPublicPS, SaleOrderPS, DataPS;
{$R *.dfm}

procedure TItemSwitchQFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxrdgrpAudit.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(a.bMaxAudit,0)=0'
  else if cxrdgrpAudit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(a.bMaxAudit,0)=1';
  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.SwitchDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.SwitchDate<=' + QuotedStr(trim(cxdtE.Text));
  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and a.SwitchNo like ''%' + trim(cxEdtBillNo.text) + '%''';

  sWhereL := sWhere;
  sWhereR := sWhere;
  if cxItemL.Text <> '' then
    sWhereL := sWhereL + ' and (c.ItemCode like ''%' + trim(cxItemL.Text) + '%'' or c.ItemName like ''%' + trim(cxItemL.Text) + '%'' or c.ItemSpc like ''%' + trim(cxItemL.Text) + '%'' or c.ItemPYCode like ''%' + trim(cxItemL.Text) + '%'' )';
  if (cxItemL.Properties.LookupItems.Text <> '') and (cxItemL.Text <> '') then
    sWhereL := sWhereL + ' and b.ItemId =' + QuotedStr(trim(cxItemL.Properties.LookupItems.Text));

  if cxItemR.Text <> '' then
    sWhereR := sWhereL + ' and (c.ItemCode like ''%' + trim(cxItemR.Text) + '%'' or c.ItemName like ''%' + trim(cxItemR.Text) + '%'' or c.ItemSpc like ''%' + trim(cxItemR.Text) + '%'' or c.ItemPYCode like ''%' + trim(cxItemR.Text) + '%'' )';
  if (cxItemR.Properties.LookupItems.Text <> '') and (cxItemL.Text <> '') then
    sWhereR := sWhereR + ' and b.ItemId =' + QuotedStr(trim(cxItemR.Properties.LookupItems.Text));

  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add(' exec PrItemSwitchLQ ' + Quotedstr(sWhereL));
    Open;
  end;
  with qyDet do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add(' exec PrItemSwitchRQ ' + Quotedstr(sWhereR));
    Open;
  end;
end;

procedure TItemSwitchQFM.cxgrdDBTableView1CustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TItemSwitchQFM.cxgrdDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  BillView('ItemSwitch', 'select * from ItemSwitchHDTB where SwitchNo=' + QuotedStr(qyDet.FieldByName('SwitchNo').AsString));
end;

procedure TItemSwitchQFM.cxgrdtbvCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  ARec: TRect;
begin
  inherited;
  ARec := AViewInfo.Bounds;
  ACanvas.canvas.Font.color := clBlue;
  ACanvas.FillRect(ARec)
end;

procedure TItemSwitchQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  BillView('ItemSwitch', 'select * from ItemSwitchHDTB where SwitchNo=' + QuotedStr(qyHed.FieldByName('SwitchNo').AsString));
end;

procedure TItemSwitchQFM.cxItemLPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(cxItemL);
end;

procedure TItemSwitchQFM.cxItemRPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(cxItemR);
end;

procedure TItemSwitchQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'ItemSwitchQFM';
  sFMName := Self.Caption;
  sTableId := 'ItemSwitchQ';
  inherited;
end;

procedure TItemSwitchQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ItemSwitchQFM := nil;
end;

end.
