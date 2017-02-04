unit StockBackOutPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WareInOutPS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlue,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxButtonEdit, cxDBLookupComboBox,
  cxTextEdit, cxMemo, dxSkinsdxBarPainter, frxClass, frxDBSet,
  cxGridCustomPopupMenu, cxGridPopupMenu, Menus, ADODB, dxBar, cxClasses,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGroupBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxPC, StdCtrls, ExtCtrls, dxSkinOffice2010Blue, cxPCdxBarPopupMenu,
  cxRadioGroup;

type
  TStockBackOutFM = class(TWareInOutFM)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StockBackOutFM: TStockBackOutFM;

implementation

{$R *.dfm}

procedure TStockBackOutFM.FormCreate(Sender: TObject);
begin
  sFMId := 'StockBackOutFM';
  sFMName := Self.Caption;
  sTableId := 'StockBackOut';
  inherited;
end;

procedure TStockBackOutFM.FormDestroy(Sender: TObject);
begin
  inherited;
  StockBackOutFM := nil;
end;

end.
