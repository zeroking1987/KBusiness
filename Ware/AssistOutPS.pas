unit AssistOutPS;

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
  cxGrid, cxPC, StdCtrls, ExtCtrls, dxSkinOffice2010Blue, cxPCdxBarPopupMenu,
  cxRadioGroup, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu,
  cxNavigator, cxLabel;

type
  TAssistOutFM = class(TWareInOutFM)
    cxgrdtbvColumn1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AssistOutFM: TAssistOutFM;

implementation

{$R *.dfm}

procedure TAssistOutFM.FormCreate(Sender: TObject);
begin
  sFMId := 'AssistOutFM';
  sFMName := Self.Caption;
  sTableId := 'AssistOut';
  inherited;
end;

procedure TAssistOutFM.FormDestroy(Sender: TObject);
begin
  inherited;
  AssistOutFM := nil;
end;

end.
