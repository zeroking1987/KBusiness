unit SaleBackInPS;

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
  TSaleBackInFM = class(TWareInOutFM)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SaleBackInFM: TSaleBackInFM;

implementation

{$R *.dfm}

procedure TSaleBackInFM.FormCreate(Sender: TObject);
begin
  sFMId := 'SaleBackInFM';
  sFMName := Self.Caption;
  sTableId := 'SaleBackIn';
  inherited;
end;

procedure TSaleBackInFM.FormDestroy(Sender: TObject);
begin
  inherited;
  SaleBackInFM := nil;
end;

end.
