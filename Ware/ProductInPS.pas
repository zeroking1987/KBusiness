unit ProductInPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WareInOutPS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxButtonEdit, cxDBLookupComboBox,
  cxTextEdit, cxMemo, dxSkinsdxBarPainter, frxClass, frxDBSet,
  cxGridCustomPopupMenu, cxGridPopupMenu, Menus, ADODB, dxBar, cxClasses,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGroupBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxPC, StdCtrls, ExtCtrls, cxPCdxBarPopupMenu, dxSkinOffice2010Blue,
  cxRadioGroup, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu,
  cxNavigator, cxLabel;

type
  TProductInFM = class(TWareInOutFM)
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btReferClick(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProductInFM: TProductInFM;

implementation

uses ProductInProOrderRfPS, PublicPS, ProductInSaleOrderRfPS, ProductInProDispatchRfPS, ProductInBomMatOutRfPS;
{$R *.dfm}

procedure TProductInFM.btReferClick(Sender: TObject);
var
  i: integer;
begin
  if sProductInRfKind = '生产订单' then
  begin
    try
      ProductInProOrderRfFM := TProductInProOrderRfFM.Create(nil);
      ProductInProOrderRfFM.btFindClick(self);
      ProductInProOrderRfFM.ShowModal;
      if ProductInProOrderRfFM.fFlag = 1 then
      begin
        ProductInProOrderRfFM.qyFind.Filter := ' bSelect=1';
        ProductInProOrderRfFM.qyFind.Filtered := true;
        ProductInProOrderRfFM.qyFind.First;
        for i := 0 to ProductInProOrderRfFM.qyFind.RecordCount - 1 do
        begin
          if i = 0 then
            qyDet.Edit
          else
            qyDet.Append;
          qyDet.FieldByName('ItemId').AsString := ProductInProOrderRfFM.qyFind.FieldByName('ItemId').AsString;
          qyDet.FieldByName('ItemCode').AsString := ProductInProOrderRfFM.qyFind.FieldByName('ItemCode').AsString;
          qyDet.FieldByName('ProType').AsString := ProductInProOrderRfFM.qyFind.FieldByName('ProType').AsString;
          qyDet.FieldByName('MainNum').AsFloat := ProductInProOrderRfFM.qyFind.FieldByName('NoInNum').AsFloat;
          qyDet.FieldByName('ProOrderNo').AsString := ProductInProOrderRfFM.qyFind.FieldByName('ProOrderNo').AsString;
          qyDet.FieldByName('ProOrderId').AsString := ProductInProOrderRfFM.qyFind.FieldByName('AutoNO').AsString;
          UpdateData(cxgrdtbv, 'MainNum');
          qyDet.post;
          ProductInProOrderRfFM.qyFind.Next;
        end;
      end;
    finally
      ProductInProOrderRfFM.free;
      ProductInProOrderRfFM := nil;
    end;
  end
  else if sProductInRfKind = '生产派工单' then
  begin
    try
      ProductInProDispatchRfFM := TProductInProDispatchRfFM.Create(nil);
      ProductInProDispatchRfFM.btFindClick(self);
      ProductInProDispatchRfFM.ShowModal;
      if ProductInProDispatchRfFM.fFlag = 1 then
      begin
        ProductInProDispatchRfFM.qyFind.Filter := ' bSelect=1';
        ProductInProDispatchRfFM.qyFind.Filtered := true;
        ProductInProDispatchRfFM.qyFind.First;
        for i := 0 to ProductInProDispatchRfFM.qyFind.RecordCount - 1 do
        begin
          if i = 0 then
            qyDet.Edit
          else
            qyDet.Append;
          qyDet.FieldByName('ItemId').AsString := ProductInProDispatchRfFM.qyFind.FieldByName('ItemId').AsString;
          qyDet.FieldByName('ItemCode').AsString := ProductInProDispatchRfFM.qyFind.FieldByName('ItemCode').AsString;
          qyDet.FieldByName('ProType').AsString := ProductInProDispatchRfFM.qyFind.FieldByName('ProType').AsString;
          qyDet.FieldByName('Color').AsString := ProductInProDispatchRfFM.qyFind.FieldByName('Color').AsString;
          qyDet.FieldByName('MainNum').AsFloat := ProductInProDispatchRfFM.qyFind.FieldByName('NoInNum').AsFloat;
          qyDet.FieldByName('ProOrderNo').AsString := ProductInProDispatchRfFM.qyFind.FieldByName('ProOrderNo').AsString;
          qyDet.FieldByName('ProOrderId').AsString := ProductInProDispatchRfFM.qyFind.FieldByName('ProOrderId').AsString;
          qyDet.FieldByName('DispatchNo').AsString := ProductInProDispatchRfFM.qyFind.FieldByName('DispatchNo').AsString;
          qyDet.FieldByName('DispatchId').AsString := ProductInProDispatchRfFM.qyFind.FieldByName('AutoNO').AsString;
          UpdateData(cxgrdtbv, 'MainNum');
          qyDet.post;
          ProductInProDispatchRfFM.qyFind.Next;
        end;
      end;
    finally
      ProductInProDispatchRfFM.free;
      ProductInProDispatchRfFM := nil;
    end;
  end
  else if sProductInRfKind = 'BOM发料' then
  begin
    try
      ProductInBomMatOutRfFM := TProductInBomMatOutRfFM.Create(nil);
      ProductInBomMatOutRfFM.btFindClick(self);
      ProductInBomMatOutRfFM.ShowModal;
      if ProductInBomMatOutRfFM.fFlag = 1 then
      begin
        ProductInBomMatOutRfFM.qyFind.Filter := ' bSelect=1';
        ProductInBomMatOutRfFM.qyFind.Filtered := true;
        ProductInBomMatOutRfFM.qyFind.First;
        for i := 0 to ProductInBomMatOutRfFM.qyFind.RecordCount - 1 do
        begin
          if i = 0 then
            qyDet.Edit
          else
            qyDet.Append;
          qyDet.FieldByName('ItemId').AsString := ProductInBomMatOutRfFM.qyFind.FieldByName('ItemId').AsString;
          qyDet.FieldByName('ItemCode').AsString := ProductInBomMatOutRfFM.qyFind.FieldByName('ItemCode').AsString;
          qyDet.FieldByName('MainNum').AsFloat := ProductInBomMatOutRfFM.qyFind.FieldByName('NoInNum').AsFloat;
          qyDet.FieldByName('MatOutNo').AsString := ProductInBomMatOutRfFM.qyFind.FieldByName('BillNO').AsString;
          qyDet.FieldByName('MatOutId').AsString := ProductInBomMatOutRfFM.qyFind.FieldByName('AutoNo').AsString;
          UpdateData(cxgrdtbv, 'MainNum');
          qyDet.post;
          ProductInBomMatOutRfFM.qyFind.Next;
        end;
      end;
    finally
      ProductInBomMatOutRfFM.free;
      ProductInBomMatOutRfFM := nil;
    end;
  end
  else //销售订单
  begin
    try
      ProductInSaleOrderRfFM := TProductInSaleOrderRfFM.Create(nil);
      ProductInSaleOrderRfFM.btFindClick(self);
      ProductInSaleOrderRfFM.ShowModal;
      if ProductInSaleOrderRfFM.fFlag = 1 then
      begin
        ProductInSaleOrderRfFM.qyFind.Filter := ' bSelect=1';
        ProductInSaleOrderRfFM.qyFind.Filtered := true;
        ProductInSaleOrderRfFM.qyFind.First;
        for i := 0 to ProductInSaleOrderRfFM.qyFind.RecordCount - 1 do
        begin
          if i = 0 then
            qyDet.Edit
          else
            qyDet.Append;
          qyDet.FieldByName('ItemId').AsString := ProductInSaleOrderRfFM.qyFind.FieldByName('ItemId').AsString;
          qyDet.FieldByName('ItemCode').AsString := ProductInSaleOrderRfFM.qyFind.FieldByName('ItemCode').AsString;
          qyDet.FieldByName('ProType').AsString := ProductInSaleOrderRfFM.qyFind.FieldByName('ProType').AsString;
          qyDet.FieldByName('Color').AsString := ProductInSaleOrderRfFM.qyFind.FieldByName('Color').AsString;
          qyDet.FieldByName('MainNum').AsFloat := ProductInSaleOrderRfFM.qyFind.FieldByName('NoInNum').AsFloat;
          qyDet.FieldByName('SaleOrderNo').AsString := ProductInSaleOrderRfFM.qyFind.FieldByName('SaleOrderNo').AsString;
          qyDet.FieldByName('SaleOrderId').AsString := ProductInSaleOrderRfFM.qyFind.FieldByName('AutoNo').AsString;
          UpdateData(cxgrdtbv, 'MainNum');
          qyDet.post;
          ProductInSaleOrderRfFM.qyFind.Next;
        end;
      end;
    finally
      ProductInSaleOrderRfFM.free;
      ProductInSaleOrderRfFM := nil;
    end;
  end;

end;

procedure TProductInFM.dxBarButton3Click(Sender: TObject);
var
  i: integer;
begin
  inherited;
  try
    ProductInSaleOrderRfFM := TProductInSaleOrderRfFM.Create(nil);
      //ProductInSaleOrderRfFM.sObjectId := qyHed.FieldByName('ObjectId').asString;
    ProductInSaleOrderRfFM.btFindClick(self);
    ProductInSaleOrderRfFM.ShowModal;
    if ProductInSaleOrderRfFM.fFlag = 1 then
    begin
      ProductInSaleOrderRfFM.qyFind.Filter := ' bSelect=1';
      ProductInSaleOrderRfFM.qyFind.Filtered := true;
      ProductInSaleOrderRfFM.qyFind.First;
      for i := 0 to ProductInSaleOrderRfFM.qyFind.RecordCount - 1 do
      begin

          //if qyHed.State = dsBrowse then qyHed.Edit;
          //qyHed.FieldByName('ObjectId').AsString := ProductInSaleOrderRfFM.qyFind.FieldByName('CustId').AsString;
        if i = 0 then
          qyDet.Edit
        else
          qyDet.Append;
        qyDet.FieldByName('ItemId').AsString := ProductInSaleOrderRfFM.qyFind.FieldByName('ItemId').AsString;
        qyDet.FieldByName('ItemCode').AsString := ProductInSaleOrderRfFM.qyFind.FieldByName('ItemCode').AsString;
        qyDet.FieldByName('ProType').AsString := ProductInSaleOrderRfFM.qyFind.FieldByName('ProType').AsString;
        qyDet.FieldByName('Color').AsString := ProductInSaleOrderRfFM.qyFind.FieldByName('sColor').AsString;
        qyDet.FieldByName('PackRequire').AsString := ProductInSaleOrderRfFM.qyFind.FieldByName('PackRequire').AsString;
        qyDet.FieldByName('LabRequire').AsString := ProductInSaleOrderRfFM.qyFind.FieldByName('LabRequire').AsString;
        qyDet.FieldByName('OutSize').AsString := ProductInSaleOrderRfFM.qyFind.FieldByName('OutSize').AsString;
        qyDet.FieldByName('CustRequire').AsString := ProductInSaleOrderRfFM.qyFind.FieldByName('CustRequire').AsString;
        qyDet.FieldByName('MainNum').AsFloat := ProductInSaleOrderRfFM.qyFind.FieldByName('NoInNum').AsFloat;
        qyDet.FieldByName('SaleOrderNo').AsString := ProductInSaleOrderRfFM.qyFind.FieldByName('SaleOrderNo').AsString;
        qyDet.FieldByName('SaleOrderId').AsString := ProductInSaleOrderRfFM.qyFind.FieldByName('AutoNo').AsString;
        UpdateData(cxgrdtbv, 'MainNum');
        qyDet.post;
        ProductInSaleOrderRfFM.qyFind.Next;
      end;
    end;
  finally
    ProductInSaleOrderRfFM.free;
    ProductInSaleOrderRfFM := nil;
  end;
end;

procedure TProductInFM.FormCreate(Sender: TObject);
begin
  sFMId := 'ProductInFM';
  sFMName := Self.Caption;
  sTableId := 'ProductIn';
  inherited;
end;

procedure TProductInFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ProductInFM := nil;
end;

end.
