unit ItemTechQPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QBasePS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2010Blue,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxSkinsdxBarPainter, cxLabel, cxGridCustomPopupMenu, cxGridPopupMenu, Menus,
  frxClass, frxDBSet, ADODB, dxBar, cxBarEditItem, cxClasses, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, StdCtrls, ExtCtrls, ComCtrls, dxtree, dxdbtree,
  cxContainer, cxTextEdit, cxGroupBox, cxRadioGroup, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine, cxSplitter, dxBarBuiltInMenu, cxNavigator;

type
  TItemTechQFM = class(TQBaseFM)
    tv: TdxDBTreeView;
    qyKind: TADOQuery;
    dsKind: TDataSource;
    qyKindAutoId: TIntegerField;
    qyKindbSelect: TBooleanField;
    strngfldKindItemKindId: TStringField;
    strngfldKindItemKindCode: TStringField;
    strngfldKindItemKindName: TStringField;
    strngfldKindParentId: TStringField;
    strngfldKindParam: TStringField;
    strngfldKindKindWare: TStringField;
    strngfldKindRemark: TStringField;
    cxgrdtbvItemId: TcxGridDBColumn;
    cxgrdtbvItemCode: TcxGridDBColumn;
    cxgrdtbvItemSpc: TcxGridDBColumn;
    cxgrdtbvItemName: TcxGridDBColumn;
    cxgrdtbvItemUnit: TcxGridDBColumn;
    cxgrdtbvMakeManName: TcxGridDBColumn;
    cxgrdtbvBillNo: TcxGridDBColumn;
    cxgrdtbvbBom: TcxGridDBColumn;
    cxtxtdtEdtValue: TcxTextEdit;
    cxlbl1: TcxLabel;
    cxrdgrpBuild: TcxRadioGroup;
    N1: TMenuItem;
    BOM1: TMenuItem;
    BOM2: TMenuItem;
    cxgrdtbvColumn1: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    procedure FormCreate(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure tvClick(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure tvCustomDraw(Sender: TObject; TreeNode: TTreeNode; AFont: TFont;
      var AColor, ABkColor: TColor);
    procedure FormDestroy(Sender: TObject);
    procedure cxgrdtbvCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure BOM1Click(Sender: TObject);
    procedure BOM2Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    CopyFromItemId, CopyFromItemName: string;
  end;

var
  ItemTechQFM: TItemTechQFM;

implementation

uses PublicPS, ControlPublicPS, ItemBomPS, DataPS,ItemTechPS;
{$R *.dfm}

procedure TItemTechQFM.BOM1Click(Sender: TObject);
begin
  inherited;
  if qyHed.FieldByName('bTech').AsString = '' then
  begin
    ShowWarn('该产品还未建立产品工艺');
    Exit;
  end;
  CopyFromItemId := qyHed.FieldByName('ItemId').AsString;
  CopyFromItemName := qyHed.FieldByName('ItemName').AsString;
  ShowBox('复制成功!');
end;

procedure TItemTechQFM.BOM2Click(Sender: TObject);
begin
  inherited;
  if CopyFromItemId = '' then
  begin
    ShowBox('还未复制');
    Exit;
  end;

  if ShowDlg('确实要将<' + CopyFromItemName + '>的BOM结构复制给<' + qyHed.FieldByName('ItemName').AsString + '> 的吗.这会删除其原有BOM结构?') then
  begin
    try
      with DataFM.qyTemp do
      begin
        if Active then Close;
        SQL.Clear;
        SQL.Add('Exec prBomCopy ' + QuotedStr(CopyFromItemId) + ',' + QuotedStr(qyHed.FieldByName('ItemId').AsString));
        Open;
        ShowBox(Fields[0].AsString);
      end;
    finally
      DataFM.qyTemp.close;
    end;
    btFindClick(Sender);
  end;
end;

procedure TItemTechQFM.btFindClick(Sender: TObject);
var sWhere: string;
begin
  inherited;
  sWhere := '';
  if cxtxtdtEdtValue.Text <> '' then
    sWhere := sWhere + ' and (a.ItemCode like ''%' + trim(cxtxtdtEdtValue.Text) + '%'' or a.ItemName like ''%' + trim(cxtxtdtEdtValue.Text) + '%'' or  a.ItemPYCode like ''%' + trim(cxtxtdtEdtValue.Text) + '%'' )';
  if cxrdgrpBuild.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(b.TechNo,'''')<>'''' '
  else if cxrdgrpBuild.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(b.TechNo,'''')='''' ';

  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add(' exec PrItemTechFind ' + Quotedstr(sWhere));
    Open;
  end;
  //SplitPage(Self.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TItemTechQFM.cxgrdtbvCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  ARec: TRect;
begin
  inherited;
  if (AViewInfo.GridRecord.DisplayTexts[cxgrdtbvbBom.Index] <> '') then
  begin
    if AViewInfo.GridRecord.DisplayTexts[cxgrdtbvbBom.Index] = '是' then
    begin
      ARec := AViewInfo.Bounds;
      ACanvas.canvas.Font.color := clBlue;
      ACanvas.FillRect(ARec)
    end;
  end;
end;

procedure TItemTechQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  if qyHed.FieldByName('bTech').AsString = '是' then
    BillView('ItemTechHDTB', 'select * from ItemTechHDTB where TechNo=' + QuotedStr(qyHed.FieldByName('TechNo').AsString))
  else
  begin
    if not Assigned(ItemTechFM) then
    begin
      ItemTechFM := TItemTechFM.Create(Application);
      ItemTechFM.Show;
      if ItemTechFM.btSave.Enabled then
        ItemTechFM.btCancel.Click;
    end
    else
      ShowTabSt(ItemTechFM.sFMId);
    ItemTechFM.btAddClick(Sender);
    ItemTechFM.qyHed.FieldByName('ItemId').AsString := qyHed.FieldByName('ItemId').AsString;
    ItemTechFM.qyHed.FieldByName('ItemCode').AsString := qyHed.FieldByName('ItemCode').AsString;
  end;
end;

procedure TItemTechQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'ItemTechQ';
  sFMName := Self.Caption;
  sTableId := 'ItemTechQ';
  inherited;
  tvExpand(tv, dsKind, 'ItemKindId', 'ItemKindName', 'ParentId');
  btFindClick(Sender);
end;

procedure TItemTechQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ItemTechQFM := nil;
end;

procedure TItemTechQFM.tvClick(Sender: TObject);
begin
  inherited;
  try
    if tv.Selected.IsFirstNode then
    begin
      qyHed.Filter := '';
      qyHed.Filtered := false;
    end
    else
    begin
      qyHed.Filter := 'ItemKindId like ''' + qyKind.FieldByName('ItemKindId').AsString + '%''';
      qyHed.Filtered := true;
    end;
  except
  end;
end;

procedure TItemTechQFM.tvCustomDraw(Sender: TObject; TreeNode: TTreeNode;
  AFont: TFont; var AColor, ABkColor: TColor);
begin
  try
    if (TreeNode.Index mod 2 = 0) then
      AColor := $00F14552
    else
      AColor := $005158E6;
  except
  end;
end;

end.

