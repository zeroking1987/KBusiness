unit OrderMatQPS;

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
  dxSkinValentine, dxSkinOffice2007Silver, dxSkinSevenClassic, dxSkinSilver,
  dxSkinWhiteprint, dxBarBuiltInMenu, cxNavigator;

type
  TOrderMatQFM = class(TQBaseFM)
    frxDet: TfrxDBDataset;
    qyDet: TADOQuery;
    dsDet: TDataSource;
    cxgrdDBTableView1: TcxGridDBTableView;
    cxgrdDBTableView1SwitchKind: TcxGridDBColumn;
    cxgrdDBTableView1ItemCode: TcxGridDBColumn;
    cxgrdDBTableView1ItemName: TcxGridDBColumn;
    cxgrdDBTableView1ItemSpc: TcxGridDBColumn;
    cxgrdDBTableView1SwitchNum: TcxGridDBColumn;
    cxgrdLevel2: TcxGridLevel;
    cxgrdtbvItemID: TcxGridDBColumn;
    cxgrdtbvItemCode: TcxGridDBColumn;
    cxgrdtbvItemName: TcxGridDBColumn;
    cxgrdtbvItemSpc: TcxGridDBColumn;
    cxgrdtbvCompactNo: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    cxItemM: TcxButtonEdit;
    cxlbl7: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxItemD: TcxButtonEdit;
    cxLabel4: TcxLabel;
    cxLabel1: TcxLabel;
    cxEdtCompactNo: TcxTextEdit;
    cxgrdtbvColumn1: TcxGridDBColumn;
    cxgrdtbvColumn2: TcxGridDBColumn;
    cxgrdDBTableView1Column1: TcxGridDBColumn;
    cxgrdDBTableView1Column2: TcxGridDBColumn;
    网格显示: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1CustName: TcxGridDBColumn;
    cxGridDBTableView1CompactNo: TcxGridDBColumn;
    cxGridDBTableView1ChildCode: TcxGridDBColumn;
    cxGridDBTableView1ChildName: TcxGridDBColumn;
    cxGridDBTableView1ChildSpc: TcxGridDBColumn;
    cxGridDBTableView1FinalNum: TcxGridDBColumn;
    cxGridDBTableView1Dosage: TcxGridDBColumn;
    cxGridDBTableView1WasteRate: TcxGridDBColumn;
    cxGridDBTableView1UseNum: TcxGridDBColumn;
    cxGridDBTableView1ItemCode: TcxGridDBColumn;
    cxGridDBTableView1ItemName: TcxGridDBColumn;
    cxGridDBTableView1ItemSpc: TcxGridDBColumn;
    cxgrdtbvColumn3: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure cxgrdDBTableView1CustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure cxItemLPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxItemRPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdDBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btExportClick(Sender: TObject);
  private
    sWhere, sWhereM, sWhereD: string;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderMatQFM: TOrderMatQFM;

implementation

uses PublicPS, ControlPublicPS, SaleOrderPS, DataPS;
{$R *.dfm}

procedure TOrderMatQFM.btExportClick(Sender: TObject);
begin
 // inherited;
  if cxpgcntrl1.ActivePageIndex = 0 then
  begin
    if not cxgrdtbv.ViewData.IsEmpty then
      CxExport(cxgrd, cxlabTitle.Caption);
  end
  else if cxpgcntrl1.ActivePageIndex = 1 then
  begin
    if not cxGridDBTableView1.ViewData.IsEmpty then
      CxExport(cxGrid1, cxlabTitle.Caption);
  end
end;

procedure TOrderMatQFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  sWhereM := '';
  sWhereD := '';

  if cxItemM.Text <> '' then
  begin
    sWhereM := sWhereM + ' and (i.ItemCode like ''%' + trim(cxItemM.Text) + '%'' or i.ItemName like ''%' + trim(cxItemM.Text) + '%'' or i.ItemSpc like ''%' + trim(cxItemM.Text) + '%'' or i.ItemPYCode like ''%' + trim(cxItemM.Text) + '%'' )';
    sWhereD := sWhereD + ' and (j.ItemCode like ''%' + trim(cxItemM.Text) + '%'' or j.ItemName like ''%' + trim(cxItemM.Text) + '%'' or j.ItemSpc like ''%' + trim(cxItemM.Text) + '%'' or j.ItemPYCode like ''%' + trim(cxItemM.Text) + '%'' )';
  end;
  if (cxItemM.Properties.LookupItems.Text <> '') and (cxItemM.Text <> '') then
  begin
    sWhereM := sWhereM + ' and i.ItemId =' + QuotedStr(trim(cxItemM.Properties.LookupItems.Text));
    sWhereD := sWhereD + ' and j.ItemId =' + QuotedStr(trim(cxItemM.Properties.LookupItems.Text));
  end;
  if cxEdtCompactNo.Text <> '' then
  begin
    sWhereM := sWhereM + ' and z.CompactNo like ''%' + trim(cxEdtCompactNo.text) + '%''';
    sWhereD := sWhereD + ' and z.CompactNo like ''%' + trim(cxEdtCompactNo.text) + '%''';
  end;

  if cxItemD.Text <> '' then
  begin
    sWhereD := sWhereD + ' and (i.ItemCode like ''%' + trim(cxItemD.Text) + '%'' or i.ItemName like ''%' + trim(cxItemD.Text) + '%'' or i.ItemSpc like ''%' + trim(cxItemD.Text) + '%'' or i.ItemPYCode like ''%' + trim(cxItemD.Text) + '%'' )';
    sWhere := sWhere + ' and (n.ItemCode like ''%' + trim(cxItemD.Text) + '%'' or n.ItemName like ''%' + trim(cxItemD.Text) + '%'' or n.ItemSpc like ''%' + trim(cxItemD.Text) + '%'' or n.ItemPYCode like ''%' + trim(cxItemD.Text) + '%'' )';
  end;
  if (cxItemD.Properties.LookupItems.Text <> '') and (cxItemD.Text <> '') then
  begin
    sWhereD := sWhereD + ' and i.ItemId =' + QuotedStr(trim(cxItemD.Properties.LookupItems.Text));
    sWhere := sWhere + ' and n.ItemId =' + QuotedStr(trim(cxItemD.Properties.LookupItems.Text));
  end;

  if sWhere <> '' then
  begin
    sWhereM := sWhereM + ' and Exists (select m.ItemId from ItemBomDTTB m left join ItemTB n on m.ChildId=n.ItemId where i.ItemID=m.ItemID ' + sWhere + ' )';
  end;

  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add(' exec PrOrderBomItemQ ' + Quotedstr(sWhereM));
    Open;
  end;
  with qyDet do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add(' exec PrOrderBomChildQ ' + Quotedstr(sWhereD));
    Open;
  end;
end;

procedure TOrderMatQFM.cxgrdDBTableView1CustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TOrderMatQFM.cxgrdDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  BillView('ItemBomHDTB', 'select * from ItemBomHDTB where BillNo=' + QuotedStr(qyDet.FieldByName('BillNo').AsString));
end;

procedure TOrderMatQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  BillView('ItemBomHDTB', 'select * from ItemBomHDTB where BillNo=' + QuotedStr(qyHed.FieldByName('BillNo').AsString));
end;

procedure TOrderMatQFM.cxItemLPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(cxItemM);
end;

procedure TOrderMatQFM.cxItemRPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItem(cxItemD, '原材料', '', 2);
end;

procedure TOrderMatQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'OrderMatQFM';
  sFMName := Self.Caption;
  sTableId := 'OrderMatQ';
  inherited;
end;

procedure TOrderMatQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  OrderMatQFM := nil;
end;

procedure TOrderMatQFM.FormShow(Sender: TObject);
begin
  inherited;
  cxgrdDBTableView1.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
end;

end.
