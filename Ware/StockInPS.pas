unit StockInPS;

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
  ExtCtrls, cxPCdxBarPopupMenu, dxSkinOffice2010Blue, cxRadioGroup,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxCheckBox,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu,
  cxNavigator, cxLabel, cxMRUEdit, dxSkinOffice2013LightGray,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark;

type
  TStockInFM = class(TWareInOutFM)
    N1: TMenuItem;
    NStockOrder: TMenuItem;
    cxDBCheckBox1: TcxDBCheckBox;
    NStockInvoice: TMenuItem;
    cxDBButtonEdit1: TcxDBButtonEdit;
    Label11: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure strngfldDetItemIdChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StockInFM: TStockInFM;

implementation

{$R *.dfm}

uses StockInStockOrderRfPS, PrvQPS, SGeneralPS, PublicPS, ControlPublicPS, DataPS, RemarkGridPS;

procedure TStockInFM.FormCreate(Sender: TObject);
begin
  sFMId := 'StockInFM';
  sFMName := self.Caption;
  sTableId := 'StockIn';
  inherited;
end;

procedure TStockInFM.FormDestroy(Sender: TObject);
begin
  inherited;
  StockInFM := nil;
end;

procedure TStockInFM.strngfldDetItemIdChange(Sender: TField);
begin
  inherited;
  CalcField(qyDet, DataFM.qyItem, ['ItemID', 'MainPrice'],['ItemID', 'StockPrice']);
  UpdateData(cxgrdtbv, 'MainPrice');
end;

end.
