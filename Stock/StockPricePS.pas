unit StockPricePS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Base1PS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter,
  cxGridCustomPopupMenu, cxGridPopupMenu, Menus, ADODB, dxBar, cxClasses,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, ExtCtrls, cxSplitter, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxTLData, cxDBTL, cxMaskEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, cxContainer, cxTextEdit,
  cxDBEdit, cxButtonEdit, Mask, DBCtrls, dxSkinOffice2010Blue,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, cxNavigator, cxLabel;

type
  TStockPriceFM = class(TBase1FM)
    pnl1: TPanel;
    qyPrv: TADOQuery;
    dsPrv: TDataSource;
    cxspltr2: TcxSplitter;
    qyHedAutoId: TAutoIncField;
    qyHedPrvId: TStringField;
    qyHedItemId: TStringField;
    qyHedItemCode: TStringField;
    fmtbcdfldHedMainPrice: TFMTBCDField;
    fmtbcdfldHedTaxPrice: TFMTBCDField;
    fmtbcdfldHedSubPrice: TFMTBCDField;
    fmtbcdfldHedSubTaxPrice: TFMTBCDField;
    fmtbcdfldHedTaxRate: TFMTBCDField;
    qyHedPriceKind: TIntegerField;
    qyHedbKey: TBooleanField;
    qyHedRemark: TStringField;
    qyHedItemName: TStringField;
    qyHedItemSpc: TStringField;
    cxgrdbclmnItemCode: TcxGridDBColumn;
    cxgrdbclmnItemName: TcxGridDBColumn;
    cxgrdbclmnItemSpc: TcxGridDBColumn;
    cxgrdbclmnMainPrice: TcxGridDBColumn;
    cxgrdbclmnTaxPrice: TcxGridDBColumn;
    cxgrdbclmnTaxRate: TcxGridDBColumn;
    cxgrdbclmnPriceKind: TcxGridDBColumn;
    cxgrdbclmnRemark: TcxGridDBColumn;
    cxgrdbndtblvw: TcxGridDBBandedTableView;
    cxgrdbndclmnItemCode: TcxGridDBBandedColumn;
    cxgrdbndclmnItemName: TcxGridDBBandedColumn;
    cxgrdbndclmnItemSpc: TcxGridDBBandedColumn;
    cxgrdbndclmnMainPrice: TcxGridDBBandedColumn;
    cxgrdbndclmnTaxPrice: TcxGridDBBandedColumn;
    cxgrdbndclmnTaxRate: TcxGridDBBandedColumn;
    cxgrdbndclmnRemark: TcxGridDBBandedColumn;
    cxgrd1: TcxGrid;
    cxgrdtbv1: TcxGridDBTableView;
    cxgrdlev1: TcxGridLevel;
    dbedtPrvId: TDBEdit;
    qyPrvPrvKindName: TStringField;
    qyPrvPrvId: TStringField;
    qyPrvPrvName: TStringField;
    cxgrdbclmncxgrdtbv1PrvKindName: TcxGridDBColumn;
    cxgrdbclmncxgrdtbv1PrvId: TcxGridDBColumn;
    cxgrdbclmncxgrdtbv1PrvName: TcxGridDBColumn;
    qyHedItemUnit: TStringField;
    cxgrdbndtblvwColumn1: TcxGridDBBandedColumn;
    qyHedPrvName: TStringField;
    cxgrdbndtblvwColumn2: TcxGridDBBandedColumn;
    lbl1: TLabel;
    lbl2: TLabel;
    btnPrvName: TcxButtonEdit;
    btnItemName: TcxButtonEdit;
    qyHedWeight: TFMTBCDField;
    cxgrdbndtblvwColumn3: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure btDelClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btAddLClick(Sender: TObject);
    procedure btDelLClick(Sender: TObject);
    procedure qyHedAfterInsert(DataSet: TDataSet);
    procedure cxgrdbndclmnItemCodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure dbedtPrvIdChange(Sender: TObject);
    procedure cxgrdbndclmnMainPricePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbndclmnTaxPricePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbndclmnTaxRatePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure qyHedItemIdChange(Sender: TField);
    procedure qyHedPrvIdChange(Sender: TField);
    procedure btnPrvNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnItemNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnPrvNamePropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxgrdtbv1CustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure cxgrdbndtblvwCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
  private
    sWhere: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StockPriceFM: TStockPriceFM;

implementation

uses PublicPS, DataPS, ItemQPS;
{$R *.dfm}

procedure TStockPriceFM.btAddClick(Sender: TObject);
begin
  inherited;
  qyHed.Append;
end;

procedure TStockPriceFM.btAddLClick(Sender: TObject);
begin
  inherited;
  qyHed.Append;
end;

procedure TStockPriceFM.btCancelClick(Sender: TObject);
begin
  inherited;
  qyHed.CancelBatch();
end;

procedure TStockPriceFM.btDelClick(Sender: TObject);
begin
  try
    inherited;
    if ShowDlg('确定要删除整个价格吗？如果删除单条请单击删行') then
    begin
      ExeSql('Delete StockPrictTB ');
      qyHed.Requery();
      ShowBox('删除成功!');
    end;
  except
    ShowBox('删除失败!');
  end;
end;

procedure TStockPriceFM.btDelLClick(Sender: TObject);
begin
  inherited;
  qyHed.Delete;
end;

procedure TStockPriceFM.btEditClick(Sender: TObject);
begin
  inherited;
  qyHed.Edit;
end;

procedure TStockPriceFM.btnItemNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(btnItemName);
end;

procedure TStockPriceFM.btnPrvNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectPrv2(btnPrvName);
end;

procedure TStockPriceFM.btnPrvNamePropertiesChange(Sender: TObject);
begin
  inherited;
  sWhere := '';
  if btnItemName.Text <> '' then
    sWhere := sWhere + ' and (ItemName like ''%' + trim(btnItemName.text) + '%'' or ItemSpc like ''%' + trim(btnItemName.text) + '%'')';
  if btnPrvName.Text <> '' then
    sWhere := sWhere + ' and PrvName  like ''%' + trim(btnPrvName.Text) + '%'' ';
  qyHed.Filter := '';
  qyHed.Filtered := False;
  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('select * from StockPriceTB');
    sql.Add('where 1=1');
    SQL.Add(sWhere);
    Open;
  end;
end;

procedure TStockPriceFM.btSaveClick(Sender: TObject);
begin
  try
    TextReadOnly(Self, True);
    qyHed.UpdateBatch();
    inherited;
    ShowBox('保存成功!');
  except
  end;
end;

procedure TStockPriceFM.cxgrdbndclmnItemCodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  i: Integer;
begin
  if btSave.Enabled = False then
    Exit;
  try
    ItemQFM := TItemQFM.Create(nil);
    ItemQFM.iSelectKind := 1;
    ItemQFM.btFindClick(Sender);
    ItemQFM.ShowModal;
    if ItemQFM.bHasSelect then
    begin
      ItemQFM.qyFind.Filter := ' bSelect=1';
      ItemQFM.qyFind.Filtered := True;
      ItemQFM.qyFind.First;
      for i := 0 to ItemQFM.qyFind.RecordCount - 1 do
      begin
        if i = 0 then
          qyHed.Edit
        else
          qyHed.Append;
        qyHed.FieldByName('ItemId').AsString := ItemQFM.qyFind.FieldByName('ItemId').AsString;
        qyHed.FieldByName('ItemCode').AsString := ItemQFM.qyFind.FieldByName('ItemCode').AsString;
        qyHed.post;
        ItemQFM.qyFind.Next;
      end;
    end;
  finally
    ItemQFM.Free;
    ItemQFM := nil;
  end;
end;

procedure TStockPriceFM.cxgrdbndclmnMainPricePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := false;
  qyHed.FieldByName('MainPrice').AsFloat := DisplayValue;
  qyHed.FieldByName('TaxPrice').AsFloat := DisplayValue * (1 + qyHed.FieldByName('TaxRate').AsFloat / 100);
end;

procedure TStockPriceFM.cxgrdbndclmnTaxPricePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := false;
  qyHed.FieldByName('TaxPrice').AsFloat := DisplayValue;
  qyHed.FieldByName('MainPrice').AsFloat := DisplayValue / (1 + qyHed.FieldByName('TaxRate').AsFloat / 100);
end;

procedure TStockPriceFM.cxgrdbndclmnTaxRatePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := false;
  qyHed.FieldByName('TaxRate').AsFloat := DisplayValue;
  qyHed.FieldByName('TaxPrice').AsFloat := qyHed.FieldByName('MainPrice').AsFloat * (1 + DisplayValue / 100);
end;

procedure TStockPriceFM.cxgrdbndtblvwCustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TStockPriceFM.cxgrdtbv1CustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TStockPriceFM.dbedtPrvIdChange(Sender: TObject);
begin
  inherited;
  qyHed.Filter := ' PrvId=' + QuotedStr(trim(dbedtPrvId.Text));
  qyHed.Filtered := True;
end;

procedure TStockPriceFM.FormCreate(Sender: TObject);
begin
  sFMId := 'StockPriceFM';
  sFMName := Self.Caption;
  sTableId := 'StockPriceTB';
  inherited;
end;

procedure TStockPriceFM.FormDestroy(Sender: TObject);
begin
  inherited;
  StockPriceFM := nil;
end;

procedure TStockPriceFM.FormShow(Sender: TObject);
begin
  inherited;
  GetBandGrd(Self, cxgrdbndtblvw);
  qyPrv.Open;
  cxgrdtbv1.DataController.Groups.FullExpand;
  btnPrvNamePropertiesChange(Sender);
end;

procedure TStockPriceFM.qyHedAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if qyHed.State = dsBrowse then qyHed.Edit;
  qyHed.FieldByName('PrvId').AsString := qyPrv.FieldByName('PrvId').AsString;
end;

procedure TStockPriceFM.qyHedItemIdChange(Sender: TField);
begin
  inherited;
  CalcField(qyHed, DataFM.qyItem, ['ItemId', 'ItemName', 'ItemSpc', 'ItemUnit'], ['ItemId', 'ItemName', 'ItemSpc', 'ItemUnit']);
end;

procedure TStockPriceFM.qyHedPrvIdChange(Sender: TField);
begin
  inherited;
  CalcField(qyHed, DataFM.qyPrv, ['PrvId', 'PrvName'], ['PrvId', 'PrvName']);
end;

end.
