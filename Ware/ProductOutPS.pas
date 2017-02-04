unit ProductOutPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WareInOutPS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxButtonEdit, cxDBLookupComboBox,
  cxTextEdit, dxSkinsdxBarPainter, frxClass, frxDBSet, cxGridCustomPopupMenu,
  cxGridPopupMenu, Menus, ADODB, dxBar, cxClasses, cxMemo, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxGroupBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxPC, StdCtrls,
  ExtCtrls, cxPCdxBarPopupMenu, cxRadioGroup, dxSkinOffice2010Blue,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox;

type
  TProductOutFM = class(TWareInOutFM)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btReferClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProductOutFM: TProductOutFM;

implementation
uses SaleOutSaleOrderRfPS;
{$R *.dfm}

procedure TProductOutFM.btReferClick(Sender: TObject);
var
  i: integer;
begin
  try
    try
      SaleOutSaleOrderRfFM := TSaleOutSaleOrderRfFM.Create(nil);
      SaleOutSaleOrderRfFM.btFindClick(self);
      SaleOutSaleOrderRfFM.ShowModal;
      if SaleOutSaleOrderRfFM.fFlag = 1 then
      begin
        SaleOutSaleOrderRfFM.qyFind.Filter := ' bSelect=1';
        SaleOutSaleOrderRfFM.qyFind.Filtered := true;
        SaleOutSaleOrderRfFM.qyFind.First;
        for i := 0 to SaleOutSaleOrderRfFM.qyFind.RecordCount - 1 do
        begin
          if qyHed.State = dsBrowse then qyHed.Edit;
          qyHed.FieldByName('ObjectId').AsString := SaleOutSaleOrderRfFM.qyFind.FieldByName('CustId').AsString;

          if i = 0 then
          begin
            qyDet.Edit;
            qyDetAfterInsert(qyDet);
          end
          else
            qyDet.Append;
          qyDet.FieldByName('ItemId').AsString := SaleOutSaleOrderRfFM.qyFind.FieldByName('ItemId').AsString;
          qyDet.FieldByName('ItemCode').AsString := SaleOutSaleOrderRfFM.qyFind.FieldByName('ItemCode').AsString;
          qyDet.FieldByName('ProType').AsString := SaleOutSaleOrderRfFM.qyFind.FieldByName('ProType').AsString;
          qyDet.FieldByName('MainNum').AsFloat := SaleOutSaleOrderRfFM.qyFind.FieldByName('NoOutNum').AsFloat;
          qyDet.FieldByName('SaleNo').AsString := SaleOutSaleOrderRfFM.qyFind.FieldByName('SaleOrderNo').AsString;
          qyDet.FieldByName('SaleId').AsInteger := SaleOutSaleOrderRfFM.qyFind.FieldByName('AutoId').AsInteger;
          qyDet.post;
          SaleOutSaleOrderRfFM.qyFind.Next;
        end;
      end;
    finally
      SaleOutSaleOrderRfFM.free;
      SaleOutSaleOrderRfFM := nil;
    end;
  except
  end;
end;

procedure TProductOutFM.FormCreate(Sender: TObject);
begin
  sFMId := 'ProductOutFM';
  sFMName := Self.Caption;
  sTableId := 'ProductOut';
  inherited;
end;

procedure TProductOutFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ProductOutFM := nil;
end;

end.
