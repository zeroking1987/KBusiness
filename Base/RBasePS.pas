unit RBasePS;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls, Forms, ADODB,
  Dialogs, dxSkinsCore, dxSkinsdxBarPainter, dxSkinsDefaultPainters, cxDropDownEdit,
  dxBar, cxBarEditItem, cxClasses, cxLabel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, StdCtrls, ExtCtrls, dxdbtrel,
  cxButtonEdit, cxMaskEdit, cxCalendar, cxGroupBox, cxRadioGroup, Clipbrd,
  dxSkinOffice2010Blue, Vcl.ComCtrls, dxCore, cxDateUtils, cxNavigator,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, Vcl.Menus;

type
  TRBaseFM = class(TForm)
    dxbrpmnPupBpm: TdxBarPopupMenu;
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
    dxbrbtn1: TdxBarButton;
    btTemp: TdxBarLargeButton;
    cxbrdtmPageIndex: TcxBarEditItem;
    cxbrdtmPage: TcxBarEditItem;
    pnlFind: TPanel;
    Lablbl2: TLabel;
    cxEdtBillNo: TcxTextEdit;
    cxgrd: TcxGrid;
    cxgrdtbv: TcxGridDBTableView;
    cxgrdlev: TcxGridLevel;
    Label1: TLabel;
    cxdtS: TcxDateEdit;
    Label2: TLabel;
    cxdtE: TcxDateEdit;
    dxbrcmbPageIndex: TdxBarCombo;
    qyFind: TADOQuery;
    dsFind: TDataSource;
    pmLayout: TPopupMenu;
    mniNCopyD: TMenuItem;
    mniN1: TMenuItem;
    mniNCustomGrd: TMenuItem;
    mniNSaveGrd: TMenuItem;
    mniNDelGrd: TMenuItem;
    procedure btExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxgrdtbvCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
      var AHandled: Boolean);
    procedure btRightClick(Sender: TObject);
    procedure btLeftClick(Sender: TObject);
    procedure btFirstClick(Sender: TObject);
    procedure btLastClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxbrcmbPageIndexChange(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure cxgrdtbvCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure mniNCopyDClick(Sender: TObject);
    procedure mniNCustomGrdClick(Sender: TObject);
    procedure mniNSaveGrdClick(Sender: TObject);
    procedure mniNDelGrdClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    sWhere: string;
    bHasSelect: Boolean;
    fFlag: Integer;
    procedure SplitPage(var qyFind: TADOQuery; PageSize: Integer; PageObject: TdxBarCombo; PageContent: TcxBarEditItem; bClear: Boolean);
    { Public declarations }
  end;

var
  RBaseFM: TRBaseFM;

implementation

uses DataPS, PublicPS;
{$R *.dfm}

procedure TRBaseFM.SplitPage(var qyFind: TADOQuery; PageSize: Integer; PageObject: TdxBarCombo; PageContent: TcxBarEditItem; bClear: Boolean);
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
        Parameters[0].Value := qyFind.SQL.Text;
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
      qyFind.Recordset := DataFM.spTemp.NextRecordset(i);
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
      ShowBox(E.Message);
  end;
end;

procedure TRBaseFM.btExitClick(Sender: TObject);
begin
  fFlag := 0;
  Close;
end;

procedure TRBaseFM.btFirstClick(Sender: TObject);
begin
  dxbrcmbPageIndex.ItemIndex := 0;
end;

procedure TRBaseFM.btLastClick(Sender: TObject);
begin
  dxbrcmbPageIndex.ItemIndex := DataFM.qyPageContent.FieldByName('AllPageCount').AsInteger - 1;
end;

procedure TRBaseFM.btLeftClick(Sender: TObject);
begin
  if dxbrcmbPageIndex.ItemIndex > 0 then
    dxbrcmbPageIndex.ItemIndex := dxbrcmbPageIndex.ItemIndex - 1;
end;

procedure TRBaseFM.btOkClick(Sender: TObject);
begin
  fFlag := 1;
  Close;
end;

procedure TRBaseFM.btRightClick(Sender: TObject);
begin
  if dxbrcmbPageIndex.ItemIndex < DataFM.qyPageContent.FieldByName('AllPageCount').AsInteger - 1 then
    dxbrcmbPageIndex.ItemIndex := dxbrcmbPageIndex.ItemIndex + 1;
end;

procedure TRBaseFM.cxgrdtbvCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
begin
  Clipboard.SetTextBuf(PChar(ACellViewInfo.Text));
end;

procedure TRBaseFM.cxgrdtbvCustomDrawIndicatorCell(Sender: TcxGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
  var ADone: Boolean);
begin
  SetRowNumber(Sender, AviewInfo, ACanvas, ADone);
end;

procedure TRBaseFM.dxbrcmbPageIndexChange(Sender: TObject);
begin
  SplitPage(qyFind, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, false);
end;

procedure TRBaseFM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TRBaseFM.FormCreate(Sender: TObject);
begin
  GetGrd(Self, cxgrdtbv);
end;

procedure TRBaseFM.FormDestroy(Sender: TObject);
begin
  RBaseFM := nil;
end;

procedure TRBaseFM.FormShow(Sender: TObject);
begin
    //网格空值显示水印
  cxgrdtbv.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
end;

procedure TRBaseFM.mniNCopyDClick(Sender: TObject);
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

procedure TRBaseFM.mniNCustomGrdClick(Sender: TObject);
begin
 CustomGrd(cxgrd);
end;

procedure TRBaseFM.mniNDelGrdClick(Sender: TObject);
begin
 DelGrd(Self, cxgrdtbv);
end;

procedure TRBaseFM.mniNSaveGrdClick(Sender: TObject);
begin
 SaveGrd(Self, cxgrdtbv);
end;

end.
