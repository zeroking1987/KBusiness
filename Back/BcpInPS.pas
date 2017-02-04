unit BcpInPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WareInOutPS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlue,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxButtonEdit, cxDBLookupComboBox,
  cxTextEdit, dxSkinsdxBarPainter, frxClass, frxDBSet, cxGridCustomPopupMenu,
  cxGridPopupMenu, Menus, ADODB, dxBar, cxClasses, cxMemo, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxGroupBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxPC, StdCtrls,
  ExtCtrls, dxSkinOffice2010Blue, cxPCdxBarPopupMenu, cxRadioGroup;

type
  TBcpInFM = class(TWareInOutFM)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BcpInFM: TBcpInFM;

implementation

{$R *.dfm}

procedure TBcpInFM.FormCreate(Sender: TObject);
begin
  sFMId := 'BcpInFM';
  sFMName := Self.Caption;
  sTableId := 'BcpIn';
  inherited;
end;

procedure TBcpInFM.FormDestroy(Sender: TObject);
begin
  inherited;
  BcpInFM := nil;
end;

end.
