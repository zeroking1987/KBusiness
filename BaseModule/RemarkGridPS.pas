unit RemarkGridPS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2010Blue,
  dxSkinsDefaultPainters, cxControls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, ADODB;

type
  TRemarkGridFM = class(TForm)
    Panel1: TPanel;
    btnOK: TcxButton;
    btnClose: TcxButton;
    cxgrd: TcxGrid;
    cxgrdtbv: TcxGridDBTableView;
    cxgrdlev: TcxGridLevel;
    dsFind: TDataSource;
    qyFind: TADOQuery;
    procedure btnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qyFindAfterOpen(DataSet: TDataSet);
    procedure cxgrdtbvCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    sSqlStr, sWhere: string;
    { Public declarations }
  end;

var
  RemarkGridFM: TRemarkGridFM;

implementation

uses PublicPS;
{$R *.dfm}

procedure TRemarkGridFM.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TRemarkGridFM.cxgrdtbvCustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
begin
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TRemarkGridFM.FormDestroy(Sender: TObject);
begin
  RemarkGridFM := nil;
end;

procedure TRemarkGridFM.FormShow(Sender: TObject);
begin
  if sSqlStr <> '' then
  begin
    with qyFind do
    begin
      if Active then
        Close;
      sql.Clear;
      sql.Add(sSqlStr);
      Open;
    end;
  end;
  cxgrdtbv.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
end;

procedure TRemarkGridFM.qyFindAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  with cxgrdtbv do
  begin
    (DataController as IcxCustomGridDataController).DeleteAllItems;
    (DataController as IcxCustomGridDataController).CreateAllItems(false);
  end;
  for i := 0 to cxgrdtbv.ColumnCount - 1 do
  begin
    cxgrdtbv.Columns[i].ApplyBestFit();
  end;
end;

end.
