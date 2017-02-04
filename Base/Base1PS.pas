unit Base1PS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BasePS, dxSkinsCore, dxSkinsdxBarPainter,
  dxSkinsDefaultPainters, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, ExtCtrls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridDBBandedTableView, cxGrid, ADODB, dxBar, Menus, Clipbrd,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxContainer, cxLabel, StdCtrls,
  dxSkinOffice2010Blue, dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine,
  cxNavigator;

type
  TBase1FM = class(TBaseFM)
    pnlTitle: TPanel;
    pnlcxGrd: TPanel;
    cxgrd: TcxGrid;
    cxgrdtbv: TcxGridDBTableView;
    cxgrdlev: TcxGridLevel;
    pmLayout: TPopupMenu;
    NCustomGrd: TMenuItem;
    NSaveGrd: TMenuItem;
    NDelGrd: TMenuItem;
    mniNCopyL: TMenuItem;
    cxgrdpmn1: TcxGridPopupMenu;
    mniN1: TMenuItem;
    mniNCopyD: TMenuItem;
    cxLabTitle: TcxLabel;
    procedure NCustomGrdClick(Sender: TObject);
    procedure NSaveGrdClick(Sender: TObject);
    procedure NDelGrdClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mniNCopyLClick(Sender: TObject);
    procedure cxgrdtbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure mniNCopyDClick(Sender: TObject);
    procedure btExportClick(Sender: TObject);
    procedure btExitClick(Sender: TObject);
    procedure cxgrdtbvCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cxgrdtbvFocusedItemChanged(Sender: TcxCustomGridTableView;
      APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
  private
      { Private declarations }
  public
    sFoucseFieldName: string;
      { Public declarations }
  end;

var
  Base1FM: TBase1FM;

implementation

uses DataPS, PublicPS, MainPS;
{$R *.dfm}

procedure TBase1FM.btExitClick(Sender: TObject);
begin
  inherited;
  if bCanClose then Self.Close;
end;

procedure TBase1FM.btExportClick(Sender: TObject);
begin
  inherited;
  CxExport(cxgrd, cxlabTitle.Caption);
end;

procedure TBase1FM.cxgrdtbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  Clipboard.SetTextBuf(PChar(ACellViewInfo.Text));
end;

procedure TBase1FM.cxgrdtbvCustomDrawIndicatorCell(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
  var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TBase1FM.cxgrdtbvFocusedItemChanged(Sender: TcxCustomGridTableView;
  APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
begin
  inherited;
  sFoucseFieldName := cxgrdtbv.Columns[(AFocusedItem as TcxGridDBColumn).Index].DataBinding.FieldName;
end;

procedure TBase1FM.FormCreate(Sender: TObject);
begin
  inherited;
  GetGrd(Self, cxgrdtbv);
end;

procedure TBase1FM.FormShow(Sender: TObject);
begin
  inherited;
  cxgrdtbv.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
end;

procedure TBase1FM.mniNCopyDClick(Sender: TObject);
var
  j, k: Integer;
begin
  try
    k := cxgrdtbv.Controller.FocusedItem.Index;
    j := cxgrdtbv.Controller.FocusedRow.Index;
    Clipboard.AsText := trim(cxgrdtbv.DataController.GetRowValue(cxgrdtbv.DataController.GetRowInfo(j), k));
  except
    on E: Exception do
    begin
      if pos('Null', E.Message) > 0 then
      begin
        ShowError('空值无需复制');
        Exit;
      end;
    end;
  end;
end;

procedure TBase1FM.mniNCopyLClick(Sender: TObject);
var
  i, iColumn: Integer;
  CopyValue: variant;
  sText, sFieldName: string;
  ErrorText: TCaption;
  Error: Boolean;
begin
  try
    if btSave.Enabled = False then exit;
    if cxgrdtbv.DataController.DataSet.RecordCount <= 0 then exit;
    Error := False;
    ErrorText := '';
    iColumn := cxgrdtbv.Controller.FocusedColumnIndex + 1;
    if qyHed.State <> dsBrowse then qyHed.Post;
   // CopyValue := qyHed.fieldByName(cxgrdtbv.Columns[iColumn].DataBinding.FieldName).Value;
    CopyValue := qyHed.fieldByName(sFoucseFieldName).Value;
      // sFieldName := qyHed.fieldValues[cxgrdtbv.Columns[iColumn].DataBinding.FieldName];

    for i := qyHed.RecNo to qyHed.RecordCount do
    begin
      if qyHed.State = dsBrowse then
        qyHed.Edit;
      qyHed.fieldByName(sFoucseFieldName).Value := CopyValue;
         // if Assigned(TcxGridDBColumn(cxgrdtbv.Columns[iColumn]).Properties.OnValidate) then
         //   cxgrdtbv.Columns[iColumn].Properties.OnValidate(Sender, CopyValue, ErrorText, Error);
      qyHed.Next;
    end;
  except
  end;
end;

procedure TBase1FM.NCustomGrdClick(Sender: TObject);
begin
  inherited;
  CustomGrd(cxgrd);
end;

procedure TBase1FM.NDelGrdClick(Sender: TObject);
begin
  inherited;
  DelGrd(Self, cxgrdtbv);
end;

procedure TBase1FM.NSaveGrdClick(Sender: TObject);
begin
  inherited;
  SaveGrd(Self, cxgrdtbv);
end;

end.
