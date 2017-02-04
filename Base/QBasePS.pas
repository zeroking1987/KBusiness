unit QBasePS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BasePS, dxSkinsCore, dxSkinsdxBarPainter, dxSkinsDefaultPainters, DB, ADODB,
  dxBar, cxClasses, ExtCtrls, cxLabel, cxBarEditItem, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, frxClass, frxDBSet, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Clipbrd, cxPC,
  cxGridCustomPopupMenu, cxGridPopupMenu, Menus, StdCtrls, cxPCdxBarPopupMenu,
  dxSkinOffice2010Blue, cxNavigator, dxSkinDevExpressStyle, dxSkinSpringTime,
  dxSkinValentine, dxBarBuiltInMenu, cxContainer;

type
  TQBaseFM = class(TBaseFM)
    dxbrcmbPageIndex: TdxBarCombo;
    cxbrdtmPage: TcxBarEditItem;
    pnl1: TPanel;
    pnlFind: TPanel;
    cxpgcntrl1: TcxPageControl;
    cxtbsht1: TcxTabSheet;
    cxgrd: TcxGrid;
    cxgrdtbv: TcxGridDBTableView;
    cxgrdlev: TcxGridLevel;
    frxHed: TfrxDBDataset;
    pmLayout: TPopupMenu;
    mniNCustomGrd: TMenuItem;
    mniNSaveGrd: TMenuItem;
    mniNDelGrd: TMenuItem;
    cxgrdpmn1: TcxGridPopupMenu;
    mniNCopyD: TMenuItem;
    mniN1: TMenuItem;
    cxLabTitle: TcxLabel;
    procedure btFirstClick(Sender: TObject);
    procedure btLastClick(Sender: TObject);
    procedure btLeftClick(Sender: TObject);
    procedure btRightClick(Sender: TObject);
    procedure cxgrdtbvCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
      var AHandled: Boolean);
    procedure dxbrcmbPageIndexChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure mniNCustomGrdClick(Sender: TObject);
    procedure mniNDelGrdClick(Sender: TObject);
    procedure mniNSaveGrdClick(Sender: TObject);
    procedure btTempClick(Sender: TObject);
    procedure mniNCopyDClick(Sender: TObject);
    procedure btExportClick(Sender: TObject);
    procedure btExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qyHedAfterScroll(DataSet: TDataSet);
    procedure cxgrdtbvCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    sWhere: string;
    procedure SplitPage(var qyFind: TADOQuery; PageSize: Integer; PageObject: TdxBarCombo; PageContent: TcxBarEditItem; bClear: Boolean);
    { Public declarations }
  end;

var
  QBaseFM: TQBaseFM;

implementation

uses PublicPS, DataPS;
{$R *.dfm}

procedure TQBaseFM.btExitClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TQBaseFM.btExportClick(Sender: TObject);
begin
  inherited;
  if not cxgrdtbv.ViewData.IsEmpty then
    CxExport(cxgrd, cxlabTitle.Caption);
end;

procedure TQBaseFM.btFirstClick(Sender: TObject);
begin
  dxbrcmbPageIndex.ItemIndex := 0;
end;

procedure TQBaseFM.btLastClick(Sender: TObject);
begin
  dxbrcmbPageIndex.ItemIndex := DataFM.qyPageContent.FieldByName('AllPageCount').AsInteger - 1;
end;

procedure TQBaseFM.btLeftClick(Sender: TObject);
begin
  if dxbrcmbPageIndex.ItemIndex > 0 then
    dxbrcmbPageIndex.ItemIndex := dxbrcmbPageIndex.ItemIndex - 1;
end;

procedure TQBaseFM.btRightClick(Sender: TObject);
begin
  if dxbrcmbPageIndex.ItemIndex < DataFM.qyPageContent.FieldByName('AllPageCount').AsInteger - 1 then
    dxbrcmbPageIndex.ItemIndex := dxbrcmbPageIndex.ItemIndex + 1;
end;

procedure TQBaseFM.btTempClick(Sender: TObject);
begin
  if btTemp.Caption = '展 开' then
  begin
    cxgrdtbv.DataController.Groups.FullExpand;
    cxgrdtbv.ViewData.Expand(True);
    btTemp.Caption := '收 缩'
  end
  else if btTemp.Caption = '收 缩' then
  begin
    try
      cxgrdtbv.DataController.Groups.FullCollapse;
      cxgrdtbv.ViewData.Collapse(True);
      btTemp.Caption := '展 开'
    except
    end;
  end;
end;

procedure TQBaseFM.cxgrdtbvCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
begin
  inherited;
  Clipboard.SetTextBuf(PChar(ACellViewInfo.Text));
end;

procedure TQBaseFM.cxgrdtbvCustomDrawIndicatorCell(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
  var ADone: Boolean);
begin
  inherited;
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TQBaseFM.dxbrcmbPageIndexChange(Sender: TObject);
begin
  SplitPage(QBaseFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
end;

procedure TQBaseFM.FormCreate(Sender: TObject);
begin
  GetGrd(Self, cxgrdtbv);
  inherited;
end;

procedure TQBaseFM.FormDestroy(Sender: TObject);
begin
  inherited;
  QBaseFM := nil;
end;

procedure TQBaseFM.FormShow(Sender: TObject);
begin
  inherited;
  PanelReadOnly(pnlFind, false);
  //网格空值显示水印
  cxgrdtbv.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
end;

procedure TQBaseFM.mniNCopyDClick(Sender: TObject);
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

procedure TQBaseFM.mniNCustomGrdClick(Sender: TObject);
begin
  inherited;
  CustomGrd(cxgrd);
end;

procedure TQBaseFM.mniNDelGrdClick(Sender: TObject);
begin
  inherited;
  DelGrd(Self, cxgrdtbv);
end;

procedure TQBaseFM.mniNSaveGrdClick(Sender: TObject);
begin
  inherited;
  SaveGrd(Self, cxgrdtbv);
end;

procedure TQBaseFM.qyHedAfterScroll(DataSet: TDataSet);
begin
  inherited;
  ShowRecordCount(DataSet);
end;

procedure TQBaseFM.SplitPage(var qyFind: TADOQuery; PageSize: Integer; PageObject: TdxBarCombo; PageContent: TcxBarEditItem; bClear: Boolean);
var
  i, j: integer;
begin
  try
    try
      with DataFM.spTemp do
      begin
        if Active then Close;
        Parameters.Clear;
        Procedurename := 'prSplitPage;1';
        Parameters.AddParameter.Name := '@StrSql';
        Parameters[0].Direction := pdInPut;
        Parameters[0].DataType := ftString;
        Parameters[0].Size := 8000;
        Parameters[0].Value := qyHed.SQL.Text;
        Parameters.AddParameter.Name := '@PageIndex';
        Parameters[1].Direction := pdInPut;
        Parameters[1].DataType := ftInteger;
        if PageObject.Text <> '' then
          Parameters[1].Value := StrToInt(PageObject.Text)
        else
          Parameters[1].Value := 1;
        Parameters.AddParameter.Name := '@PageSize';
        Parameters[2].Direction := pdInPut;
        Parameters[2].DataType := ftInteger;
        Parameters[2].Value := PageSize;
        open;
      end;
      DataFM.qyNullPage.Recordset := DataFM.spTemp.RecordSet;
      DataFM.qyPageContent.Recordset := DataFM.spTemp.NextRecordset(i);
      qyHed.Recordset := DataFM.spTemp.NextRecordset(i);
    finally
      DataFM.spTemp.Close;
    end;
    PageContent.Caption := DataFM.qyPageContent.FieldByName('PageContent').AsString;
    if bClear then
    begin
      PageObject.Items.Clear;
      for j := 1 to DataFM.qyPageContent.FieldByName('AllPageCount').AsInteger do
      begin
        PageObject.Items.Add(IntToStr(j));
      end;
    end;
  except
    on E: Exception do
      ShowError(E.Message);
  end;
end;
end.
