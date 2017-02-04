unit SalePricePS;

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
  TSalePriceFM = class(TBase1FM)
    pnl1: TPanel;
    qyCust: TADOQuery;
    dsCust: TDataSource;
    cxspltr2: TcxSplitter;
    qyHedAutoId: TAutoIncField;
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
    dbedtCustId: TDBEdit;
    cxgrdbclmnCustKindName: TcxGridDBColumn;
    cxgrdbclmnCustId: TcxGridDBColumn;
    cxgrdbclmnCustName: TcxGridDBColumn;
    qyCustCustKindName: TStringField;
    qyCustCustId: TStringField;
    qyCustCustName: TStringField;
    qyHedCustId: TStringField;
    cxgrdbndtblvwColumn1: TcxGridDBBandedColumn;
    cxgrdbndtblvwColumn2: TcxGridDBBandedColumn;
    strngfldHedCustName: TStringField;
    lbl1: TLabel;
    btnCustName: TcxButtonEdit;
    lbl2: TLabel;
    btnItemName: TcxButtonEdit;
    strngfldHedItemUnit: TStringField;
    cxgrdbndtblvwColumn3: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure btDelClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btAddLClick(Sender: TObject);
    procedure btDelLClick(Sender: TObject);
    procedure cxgrdbndclmnItemCodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure dbedtCustIdChange(Sender: TObject);
    procedure cxgrdbndclmnMainPricePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbndclmnTaxPricePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxgrdbndclmnTaxRatePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure btnCustNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnItemNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnCustNamePropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qyHedItemIdChange(Sender: TField);
    procedure qyHedCustIdChange(Sender: TField);
    procedure qyHedAfterInsert(DataSet: TDataSet);
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
  SalePriceFM: TSalePriceFM;

implementation

uses PublicPS, DataPS, ItemQPS;
{$R *.dfm}

procedure TSalePriceFM.btAddClick(Sender: TObject);
begin
  inherited;
  qyHed.Append;
end;

procedure TSalePriceFM.btAddLClick(Sender: TObject);
begin
  inherited;
  qyHed.Append;
end;

procedure TSalePriceFM.btCancelClick(Sender: TObject);
begin
  inherited;
  qyHed.CancelBatch();
end;

procedure TSalePriceFM.btDelClick(Sender: TObject);
begin
  try
    inherited;
    if ShowDlg('确定要删除整个价格吗？如果删除单条请单击删行') then
    begin
      ExeSql('Delete SalePriceTB ');
      qyHed.Requery();
      ShowBox('删除成功!');
    end;
  except
    ShowBox('删除失败!');
  end;
end;

procedure TSalePriceFM.btDelLClick(Sender: TObject);
begin
  inherited;
  qyHed.Delete;
end;

procedure TSalePriceFM.btEditClick(Sender: TObject);
begin
  inherited;
  qyHed.Edit;
end;

procedure TSalePriceFM.btnCustNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectCust2(btnCustName);
end;

procedure TSalePriceFM.btnCustNamePropertiesChange(Sender: TObject);
begin
  inherited;
  sWhere := '';
  if btnItemName.Text <> '' then
    sWhere := sWhere + ' and (ItemName like ''%' + trim(btnItemName.text) + '%'' or ItemSpc like ''%' + trim(btnItemName.text) + '%'')';
  if btnCustName.Text <> '' then
    sWhere := sWhere + ' and CustName  like ''%' + trim(btnCustName.Text) + '%'' ';
  qyHed.Filter := '';
  qyHed.Filtered := False;
  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('select * from SalePriceTB');
    sql.Add('where 1=1');
    SQL.Add(sWhere);
    Open;
  end;
end;

procedure TSalePriceFM.btnItemNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(btnItemName);
end;

procedure TSalePriceFM.btSaveClick(Sender: TObject);
begin
  try
    TextReadOnly(Self, True);
    qyHed.UpdateBatch();
    inherited;
    ShowBox('保存成功!');
  except
  end;
end;

procedure TSalePriceFM.cxgrdbndclmnItemCodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TSalePriceFM.cxgrdbndclmnMainPricePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := false;
  qyHed.FieldByName('MainPrice').AsFloat := DisplayValue;
  qyHed.FieldByName('TaxPrice').AsFloat := DisplayValue * (1 + qyHed.FieldByName('TaxRate').AsFloat / 100);
end;

procedure TSalePriceFM.cxgrdbndclmnTaxPricePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := false;
  qyHed.FieldByName('TaxPrice').AsFloat := DisplayValue;
  qyHed.FieldByName('MainPrice').AsFloat := DisplayValue / (1 + qyHed.FieldByName('TaxRate').AsFloat / 100);
end;

procedure TSalePriceFM.cxgrdbndclmnTaxRatePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Error := false;
  qyHed.FieldByName('TaxRate').AsFloat := DisplayValue;
  qyHed.FieldByName('TaxPrice').AsFloat := qyHed.FieldByName('MainPrice').AsFloat * (1 + DisplayValue / 100);
end;

procedure TSalePriceFM.cxgrdbndtblvwCustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TSalePriceFM.cxgrdtbv1CustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TSalePriceFM.dbedtCustIdChange(Sender: TObject);
begin
  inherited;
  qyHed.Filter := ' CustId=' + QuotedStr(trim(dbedtCustId.Text));
  qyHed.Filtered := True;
end;

procedure TSalePriceFM.FormCreate(Sender: TObject);
begin
  sFMId := 'SalePriceFM';
  sFMName := Self.Caption;
  sTableId := 'SalePriceTB';
  inherited;
end;

procedure TSalePriceFM.FormDestroy(Sender: TObject);
begin
  inherited;
  SalePriceFM := nil;
end;

procedure TSalePriceFM.FormShow(Sender: TObject);
begin
  inherited;
  GetBandGrd(Self, cxgrdbndtblvw);
  qyCust.Open;
  cxgrdtbv1.DataController.Groups.FullExpand;
  btnCustNamePropertiesChange(Sender);
end;

procedure TSalePriceFM.qyHedAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if qyHed.State = dsBrowse then qyHed.Edit;
  qyHed.FieldByName('CustId').AsString := qyCust.FieldByName('CustId').AsString;
end;

procedure TSalePriceFM.qyHedCustIdChange(Sender: TField);
begin
  inherited;
  CalcField(qyHed, DataFM.qyCust, ['CustId', 'CustName'], ['CustId', 'CustName']);
end;

procedure TSalePriceFM.qyHedItemIdChange(Sender: TField);
begin
  inherited;
  CalcField(qyHed, DataFM.qyItem, ['ItemId', 'ItemName', 'ItemSpc', 'ItemUnit'], ['ItemId', 'ItemName', 'ItemSpc', 'ItemUnit']);
end;

end.
