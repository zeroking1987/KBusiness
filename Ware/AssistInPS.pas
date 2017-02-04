unit AssistInPS;

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
  ExtCtrls, dxSkinOffice2010Blue, cxPCdxBarPopupMenu, cxRadioGroup,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu, cxNavigator, cxLabel;

type
  TAssistInFM = class(TWareInOutFM)
    cxgrdtbvColumn1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AssistInFM: TAssistInFM;

implementation

{$R *.dfm}

procedure TAssistInFM.FormCreate(Sender: TObject);
begin
  sFMId := 'AssistInFM';
  sFMName := Self.Caption;
  sTableId := 'AssistIn';
  inherited;
end;

procedure TAssistInFM.FormDestroy(Sender: TObject);
begin
  inherited;
  AssistInFM := nil;
end;

end.
