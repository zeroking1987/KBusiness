unit SafeStoreQPS;

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
  Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinDevExpressStyle, dxSkinSpringTime,
  dxSkinValentine, dxBarBuiltInMenu, cxNavigator;

type
  TSafeStoreQFM = class(TQBaseFM)
    qyHedItemKindId: TStringField;
    qyHedItemKindName: TStringField;
    qyHedItemId: TStringField;
    qyHedItemCode: TStringField;
    qyHedItemName: TStringField;
    qyHedItemSpc: TStringField;
    qyHedWareNum: TFMTBCDField;
    qyHedSafeStore: TBCDField;
    qyHedOverNum: TBCDField;
    qyHedItemPic: TStringField;
    qyHedItemUnit: TStringField;
    cxgrdtbvItemKindName: TcxGridDBColumn;
    cxgrdtbvItemCode: TcxGridDBColumn;
    cxgrdtbvItemName: TcxGridDBColumn;
    cxgrdtbvItemSpc: TcxGridDBColumn;
    cxgrdtbvWareNum: TcxGridDBColumn;
    cxgrdtbvSafeStore: TcxGridDBColumn;
    cxgrdtbvOverNum: TcxGridDBColumn;
    cxgrdtbvItemPic: TcxGridDBColumn;
    cxgrdtbvItemUnit: TcxGridDBColumn;
    btnItemKind: TcxButtonEdit;
    cxItem: TcxButtonEdit;
    cxlbl6: TcxLabel;
    cxlbl7: TcxLabel;
    cxLabel1: TcxLabel;
    cbbTJ: TcxComboBox;
    cbbValue: TcxComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnItemKindPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btInvoiceClick(Sender: TObject);
  private
    sWhere: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SafeStoreQFM: TSafeStoreQFM;

implementation

uses PublicPS, ControlPublicPS, DataPS;
{$R *.dfm}

procedure TSafeStoreQFM.btFindClick(Sender: TObject);
begin
  try
    inherited;
    sWhere := '';
    if cxItem.Text <> '' then
      sWhere := sWhere + ' and (a.ItemCode like ''%' + trim(cxItem.Text) + '%'' or a.ItemName like ''%' + trim(cxItem.Text) + '%'' or a.ItemSpc like ''%' + trim(cxItem.Text) + '%'' or a.ItemPYCode like ''%' + trim(cxItem.Text) + '%'' )';
    if (cxItem.Properties.LookupItems.Text <> '') and (cxItem.Text <> '') then
      sWhere := sWhere + ' and a.ItemId =' + QuotedStr(trim(cxItem.Properties.LookupItems.Text));

    if btnItemKind.Text <> '' then
      sWhere := sWhere + ' and a.ItemKindId like ''' + trim(btnItemKind.Properties.LookupItems.Text) + '%'' ';

    if cbbTJ.ItemIndex = 0 then
      sWhere := sWhere + ' and ISNULL(b.WareNum,0)<ISNULL(a.SafeStore,0)'
    else if cbbTJ.ItemIndex = 1 then
      sWhere := sWhere + ' and ISNULL(b.WareNum,0)>ISNULL(a.SafeStore,0)'
    else if cbbTJ.ItemIndex = 2 then
      sWhere := sWhere + ' and ISNULL(b.WareNum,0)=ISNULL(a.SafeStore,0)';

    with qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add(' exec PrSafeStoreQ ' + Quotedstr(sWhere));
      Open;
    end;
    //SplitPage(Self.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
  except
    on E: Exception do
      ShowWarn(E.Message);
  end;
end;

procedure TSafeStoreQFM.btInvoiceClick(Sender: TObject);
begin
  inherited;
  if cbbTJ.ItemIndex = 1 then
  begin
    if not ShowDlg('你选择的判断条件是大于安全库存,确定要生成请购单吗?') then
      exit;
  end;
  try
    with DataFM.qyTemp do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add('Exec prSafeStoreToReq ' + QuotedStr(LoginEmpId));
      Open;
      ShowBox(Fields[0].AsString);
    end;
  finally
    DataFM.qyTemp.close;
  end;
end;

procedure TSafeStoreQFM.btnItemKindPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItemKind2(btnItemKind);
end;

procedure TSafeStoreQFM.cxItemPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(cxItem);
end;

procedure TSafeStoreQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'SafeStoreQFM';
  sFMName := Self.Caption;
  sTableId := 'SafeStoreQ';
  inherited;
end;

procedure TSafeStoreQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  SafeStoreQFM := nil;
end;

end.
