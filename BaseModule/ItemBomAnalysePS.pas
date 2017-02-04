unit ItemBomAnalysePS;

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
  TItemBomAnalyseFM = class(TQBaseFM)
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
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1BillNo: TcxGridDBColumn;
    cxGridDBTableView1ChildId: TcxGridDBColumn;
    cxGridDBTableView1ChildCode: TcxGridDBColumn;
    cxGridDBTableView1ChildName: TcxGridDBColumn;
    cxGridDBTableView1ChildSpc: TcxGridDBColumn;
    cxGridDBTableView1Dosage: TcxGridDBColumn;
    cxGridDBTableView1ItemCode: TcxGridDBColumn;
    cxGridDBTableView1ItemName: TcxGridDBColumn;
    cxGridDBTableView1ItemSpc: TcxGridDBColumn;
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
  ItemBomAnalyseFM: TItemBomAnalyseFM;

implementation

uses PublicPS, ControlPublicPS, SaleOrderPS, DataPS;
{$R *.dfm}

procedure TItemBomAnalyseFM.btExportClick(Sender: TObject);
begin
  if cxpgcntrl1.ActivePageIndex = 0 then
  begin
    if not cxgrdDBTableView1.ViewData.IsEmpty then
      CxExport(cxgrd, cxlabTitle.Caption + '-树形显示');
  end;
  if cxpgcntrl1.ActivePageIndex = 1 then
  begin
    if not cxGridDBTableView1.ViewData.IsEmpty then
      CxExport(cxGrid1, cxlabTitle.Caption + '-网格显示');
  end;
end;

procedure TItemBomAnalyseFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  sWhereM := '';
  sWhereD := '';

  if cxItemM.Text <> '' then
    sWhereM := sWhereM + ' and (b.ItemCode like ''%' + trim(cxItemM.Text) + '%'' or b.ItemName like ''%' + trim(cxItemM.Text) + '%'' or b.ItemSpc like ''%' + trim(cxItemM.Text) + '%'' or b.ItemPYCode like ''%' + trim(cxItemM.Text) + '%'' )';
  if (cxItemM.Properties.LookupItems.Text <> '') and (cxItemM.Text <> '') then
    sWhereM := sWhereM + ' and b.ItemId =' + QuotedStr(trim(cxItemM.Properties.LookupItems.Text));


  if cxItemD.Text <> '' then
  begin
    sWhereD := sWhereD + ' and (c.ItemCode like ''%' + trim(cxItemD.Text) + '%'' or c.ItemName like ''%' + trim(cxItemD.Text) + '%'' or c.ItemSpc like ''%' + trim(cxItemD.Text) + '%'' or c.ItemPYCode like ''%' + trim(cxItemD.Text) + '%'' )';
    sWhere := sWhere + ' and (n.ItemCode like ''%' + trim(cxItemD.Text) + '%'' or n.ItemName like ''%' + trim(cxItemD.Text) + '%'' or n.ItemSpc like ''%' + trim(cxItemD.Text) + '%'' or n.ItemPYCode like ''%' + trim(cxItemD.Text) + '%'' )';
  end;
  if (cxItemD.Properties.LookupItems.Text <> '') and (cxItemD.Text <> '') then
  begin
    sWhereD := sWhereD + ' and c.ItemId =' + QuotedStr(trim(cxItemD.Properties.LookupItems.Text));
    sWhere := sWhere + ' and n.ItemId =' + QuotedStr(trim(cxItemD.Properties.LookupItems.Text));
  end;

  if sWhere <> '' then
  begin
    sWhereM := sWhereM + ' and Exists (select m.ItemId from ItemBomDTTB m left join ItemTB n on m.ChildId=n.ItemId where a.ItemID=m.ItemID ' + sWhere + ' )';
  end;

  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add(' exec PrBomItemQ ' + Quotedstr(sWhereM));
    Open;
  end;
  with qyDet do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add(' exec PrBomChildQ ' + Quotedstr(sWhereD));
    Open;
  end;
end;

procedure TItemBomAnalyseFM.cxgrdDBTableView1CustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TItemBomAnalyseFM.cxgrdDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  BillView('ItemBomHDTB', 'select * from ItemBomHDTB where BillNo=' + QuotedStr(qyDet.FieldByName('BillNo').AsString));
end;

procedure TItemBomAnalyseFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  BillView('ItemBomHDTB', 'select * from ItemBomHDTB where BillNo=' + QuotedStr(qyHed.FieldByName('BillNo').AsString));
end;

procedure TItemBomAnalyseFM.cxItemLPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(cxItemM);
end;

procedure TItemBomAnalyseFM.cxItemRPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItem(cxItemD, '', '', 2);
end;

procedure TItemBomAnalyseFM.FormCreate(Sender: TObject);
begin
  sFMId := 'ItemBomAnalyseFM';
  sFMName := Self.Caption;
  sTableId := 'ItemBomAnalyse';
  inherited;
end;

procedure TItemBomAnalyseFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ItemBomAnalyseFM := nil;
end;

procedure TItemBomAnalyseFM.FormShow(Sender: TObject);
begin
  inherited;
  cxgrdDBTableView1.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
end;

end.
