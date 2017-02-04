unit OtherInPS;

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
  TOtherInFM = class(TWareInOutFM)
    cxDBButtonEdit1: TcxDBButtonEdit;
    lbl3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OtherInFM: TOtherInFM;

implementation
uses PublicPS;
{$R *.dfm}

procedure TOtherInFM.FormCreate(Sender: TObject);
begin
  sFMId := 'OtherInFM';
  sFMName := Self.Caption;
  sTableId := 'OtherIn';
  inherited;
end;

procedure TOtherInFM.FormDestroy(Sender: TObject);
begin
  inherited;
  OtherInFM := nil;
end;

end.
