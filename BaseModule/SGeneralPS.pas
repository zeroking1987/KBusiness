unit SGeneralPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsdxBarPainter, dxSkinsDefaultPainters,
  dxBar, cxClasses,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxMaskEdit,
  cxDropDownEdit, cxTextEdit, StdCtrls, ExtCtrls, cxStyles, dxSkinscxPCPainter,
  cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, StrUtils,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, ComCtrls,
  dxtree, dxdbtree, ADODB,
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Menus,
  cxButtons,
  dxSkinOffice2010Blue, dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine;

type
  TSGeneralFM = class(TForm)
    PupBpm: TdxBarPopupMenu;
    dxbrmngrBarManage: TdxBarManager;
    dxbrBarMang: TdxBar;
    btAllSelect: TdxBarLargeButton;
    btUnSelect: TdxBarLargeButton;
    btExit: TdxBarLargeButton;
    btOk: TdxBarLargeButton;
    btLeft: TdxBarLargeButton;
    btRight: TdxBarLargeButton;
    btFirst: TdxBarLargeButton;
    btLast: TdxBarLargeButton;
    btFind: TdxBarLargeButton;
    pnlFind: TPanel;
    cxgrd: TcxGrid;
    cxgrdtbv: TcxGridDBTableView;
    cxgrdlev: TcxGridLevel;
    qyFind: TADOQuery;
    dsFind: TDataSource;
    dxBarButton1: TdxBarButton;
    btTemp: TdxBarLargeButton;
    procedure btExitClick(Sender: TObject);
    procedure btFirstClick(Sender: TObject);
    procedure btLeftClick(Sender: TObject);
    procedure btRightClick(Sender: TObject);
    procedure btLastClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure qyFindAfterOpen(DataSet: TDataSet);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure cxgrdtbvCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    sSqlStr, sWhere, sId, sName, sAllId, sAllName, sFieldName, sValue: string;
    iSelectKind: Integer;
    bHasSelect: Boolean;
    { Public declarations }
  end;

var
  SGeneralFM: TSGeneralFM;

implementation

uses PublicPS, DataPS;
{$R *.dfm}

procedure TSGeneralFM.btExitClick(Sender: TObject);
begin
  sId := '';
  sName := '';
  sAllId := '';
  sAllName := '';
  Close;
end;

procedure TSGeneralFM.btFindClick(Sender: TObject);
begin
  with qyFind do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('exec prGeneralQ ' + QuotedStr(SGeneralFM.Caption) + ',' + QuotedStr(sWhere));
    Open;
  end;
end;

procedure TSGeneralFM.btFirstClick(Sender: TObject);
begin
  if qyFind.Active then
  begin
    qyFind.First;
    btLeft.Enabled := false;
    btRight.Enabled := true;
    btLast.Enabled := true;
  end;
end;

procedure TSGeneralFM.btLastClick(Sender: TObject);
begin
  if qyFind.Active then
  begin
    qyFind.Last;
    btRight.Enabled := false;
    btLeft.Enabled := true;
    btFirst.Enabled := true;
  end;
end;

procedure TSGeneralFM.btLeftClick(Sender: TObject);
begin
  if qyFind.Active then
  begin
    qyFind.Prior;
    if qyFind.Bof then
    begin
      btLeft.Enabled := false;
      btRight.Enabled := true;
      btLast.Enabled := true;
    end
    else
    begin
      btRight.Enabled := true;
    end;
  end;
end;

procedure TSGeneralFM.btOkClick(Sender: TObject);
begin
  bHasSelect := true;
  Close;
end;

procedure TSGeneralFM.btRightClick(Sender: TObject);
begin
  if qyFind.Active then
  begin
    qyFind.Next;
    if qyFind.Eof then
    begin
      btRight.Enabled := false;
      btLeft.Enabled := true;
      btFirst.Enabled := true;
    end
    else
    begin
      btLeft.Enabled := true;
    end;
  end;
end;

procedure TSGeneralFM.cxgrdtbvCustomDrawIndicatorCell(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
  var ADone: Boolean);
begin
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TSGeneralFM.cxgrdtbvDblClick(Sender: TObject);
begin
  btOkClick(Sender);
end;

procedure TSGeneralFM.FormCreate(Sender: TObject);
begin
  sId := '';
  sName := '';
  sAllId := '';
  sAllName := '';
  iSelectKind := 1; // 1表示多选，2表示单选
  sWhere := '';
  bHasSelect := false;
end;

procedure TSGeneralFM.FormShow(Sender: TObject);
begin
  //网格空值显示水印
  cxgrdtbv.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
  btFindClick(Sender);
end;

procedure TSGeneralFM.qyFindAfterOpen(DataSet: TDataSet);
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
    if cxgrdtbv.Columns[i].DataBinding.ValueType = 'FMTBcd' then cxgrdtbv.Columns[i].Summary.FooterKind := skSum;
  end;
end;

end.
