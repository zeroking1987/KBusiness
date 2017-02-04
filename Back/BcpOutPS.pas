unit BcpOutPS;

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
  TBcpOutFM = class(TWareInOutFM)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BcpOutFM: TBcpOutFM;

implementation

{$R *.dfm}

procedure TBcpOutFM.FormCreate(Sender: TObject);
begin
  sFMId := 'BcpOutFM';
  sFMName := Self.Caption;
  sTableId := 'BcpOut';
  inherited;
end;

procedure TBcpOutFM.FormDestroy(Sender: TObject);
begin
  inherited;
  BcpOutFM := nil;
end;

end.
