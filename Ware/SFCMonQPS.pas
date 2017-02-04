unit SFCMonQPS;

interface

uses
  Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QBasePS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, dxSkinsdxBarPainter, cxLabel, cxGridCustomPopupMenu,
  cxGridPopupMenu, Menus, frxClass, frxDBSet, ADODB, dxBar, cxBarEditItem,
  cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, StdCtrls, ExtCtrls, cxTL,
  cxCheckBox, cxMaskEdit, cxTextEdit, cxTLdxBarBuiltInMenu, cxContainer,
  cxDropDownEdit, cxCalendar, cxInplaceContainer, cxDBTL, cxTLData, cxButtonEdit,
  cxPCdxBarPopupMenu, dxSkinOffice2010Blue, cxCurrencyEdit, cxSpinEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxGridBandedTableView, DateUtils,
  cxGridDBBandedTableView, cxButtons, dxSkinDevExpressStyle, dxSkinSpringTime,
  dxSkinValentine, dxBarBuiltInMenu, cxNavigator;

type
  TSFCMonQFM = class(TQBaseFM)
    cxgrdbclmnItemCode: TcxGridDBColumn;
    cxgrdbclmnItemName: TcxGridDBColumn;
    cxgrdbclmnItemSpc: TcxGridDBColumn;
    cxgrdbclmnWareName: TcxGridDBColumn;
    cxgrdbclmnProType: TcxGridDBColumn;
    cxgrdbclmnColor: TcxGridDBColumn;
    cxgrdbclmnFirstNum: TcxGridDBColumn;
    cxgrdbclmnFirstPrice: TcxGridDBColumn;
    cxgrdbclmnFirstMoney: TcxGridDBColumn;
    cxgrdbclmnInNum: TcxGridDBColumn;
    cxgrdbclmnInPrice: TcxGridDBColumn;
    cxgrdbclmnInMoney: TcxGridDBColumn;
    cxgrdbclmnOutNum: TcxGridDBColumn;
    cxgrdbclmnOutPrice: TcxGridDBColumn;
    cxgrdbclmnOutMoney: TcxGridDBColumn;
    cxgrdbclmnLastNum: TcxGridDBColumn;
    cxgrdbclmnLastPrice: TcxGridDBColumn;
    cxgrdbclmnLastMoney: TcxGridDBColumn;
    lstWare: TcxDBTreeList;
    cxdbtrlstclmnlst1bSelect: TcxDBTreeListColumn;
    cxdbtrlstclmnlst1WareId: TcxDBTreeListColumn;
    cxdbtrlstclmnlst1WareName: TcxDBTreeListColumn;
    cxdtS: TcxDateEdit;
    cxdtE: TcxDateEdit;
    btnItemKind: TcxButtonEdit;
    qyWare: TADOQuery;
    qyWarebSelect: TBooleanField;
    strngfldWareWareId: TStringField;
    strngfldWareWareName: TStringField;
    strngfldWareParentId: TStringField;
    dsWare: TDataSource;
    btnItem: TcxButtonEdit;
    cxlbl7: TcxLabel;
    cxLabel1: TcxLabel;
    cxgrdDBBandedTableView1: TcxGridDBBandedTableView;
    cxgrdDBBandedTableView1ItemCode: TcxGridDBBandedColumn;
    cxgrdDBBandedTableView1ItemName: TcxGridDBBandedColumn;
    cxgrdDBBandedTableView1ItemSpc: TcxGridDBBandedColumn;
    cxgrdDBBandedTableView1WareName: TcxGridDBBandedColumn;
    cxgrdDBBandedTableView1ProType: TcxGridDBBandedColumn;
    cxgrdDBBandedTableView1FirstNum: TcxGridDBBandedColumn;
    cxgrdDBBandedTableView1FirstPrice: TcxGridDBBandedColumn;
    cxgrdDBBandedTableView1FirstMoney: TcxGridDBBandedColumn;
    cxgrdDBBandedTableView1InNum: TcxGridDBBandedColumn;
    cxgrdDBBandedTableView1InPrice: TcxGridDBBandedColumn;
    cxgrdDBBandedTableView1InMoney: TcxGridDBBandedColumn;
    cxgrdDBBandedTableView1OutNum: TcxGridDBBandedColumn;
    cxgrdDBBandedTableView1OutPrice: TcxGridDBBandedColumn;
    cxgrdDBBandedTableView1OutMoney: TcxGridDBBandedColumn;
    cxgrdDBBandedTableView1LastNum: TcxGridDBBandedColumn;
    cxgrdDBBandedTableView1LastPrice: TcxGridDBBandedColumn;
    cxgrdDBBandedTableView1LastMoney: TcxGridDBBandedColumn;
    cxgrdDBBandedTableView1PlaceNo: TcxGridDBBandedColumn;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    btn1: TcxButton;
    btn2: TcxButton;
    procedure btFindClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnItemKindPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SFCMonQFM: TSFCMonQFM;

implementation

uses DataPS, PublicPS;
{$R *.dfm}

procedure TSFCMonQFM.btExportClick(Sender: TObject);
begin
  //inherited;
  if not cxgrdDBBandedTableView1.ViewData.IsEmpty then
    CxExport(cxgrd, cxlabTitle.Caption);
end;

procedure TSFCMonQFM.btFindClick(Sender: TObject);
begin
  try
    inherited;
    if (cxdtS.Text = '') or (cxdtE.Text = '') then
    begin
      ShowBox('请先选择日期');
      Exit;
    end;
    sWhere := '';
    if GetMultiId(qyWare, 'WareId') <> '' then
      sWhere := sWhere + ' and a.WareId in(' + GetMultiId(qyWare, 'WareId') + ')';
    if WareRight <> '' then
      sWhere := sWhere + 'and a.WareId in (SELECT StrValues FROM fnStrSplit(' + QuotedStr(WareRight) + ','',''))';

    if btnItem.Text <> '' then
      sWhere := sWhere + ' and (b.ItemCode like ''%' + trim(btnItem.Text) + '%'' or b.ItemName like ''%' + trim(btnItem.Text) + '%'' or b.ItemSpc like ''%' + trim(btnItem.Text) + '%'' or b.ItemPYCode like ''%' + trim(btnItem.Text) + '%'') ';
    if (btnItem.Properties.LookupItems.Text <> '') and (btnItem.Text <> '') then
      sWhere := sWhere + ' and b.ItemId =' + QuotedStr(trim(btnItem.Properties.LookupItems.Text));
    if btnItemKind.Text <> '' then
      sWhere := sWhere + ' and b.ItemKindId like ''' + trim(btnItemKind.Properties.LookupItems.Text) + '%'' ';

    with qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add(' exec prSFCMonQ ' + Quotedstr(trim(cxdtS.Text)) + ',' + Quotedstr(trim(cxdtE.Text)) + ',' + Quotedstr(sWhere));
      Open;
    end;

  except
    on E: Exception do
      ShowWarn(E.Message);
  end;
end;

procedure TSFCMonQFM.btn1Click(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(System.SysUtils.IncMonth(cxdtS.Date, -1)));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(System.SysUtils.IncMonth(cxdtE.Date, -1)));
  btFindClick(Sender);
end;

procedure TSFCMonQFM.btn2Click(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(System.SysUtils.IncMonth(cxdtS.Date, 1)));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(System.SysUtils.IncMonth(cxdtE.Date, 1)));
  btFindClick(Sender);
end;

procedure TSFCMonQFM.btnItemKindPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItemKind2(btnItemKind);
end;

procedure TSFCMonQFM.btnItemPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(btnItem);
end;

procedure TSFCMonQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'SFCMonQ';
  sFMName := Self.Caption;
  sTableId := 'SFCMonQ';
  inherited;
  with qyWare do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('select * from WareTB where 1=1');
    if WareRight <> '' then
      SQL.Add('and WareId in (SELECT StrValues FROM fnStrSplit(' + QuotedStr(WareRight) + ','',''))');
    Open;
  end;
end;

procedure TSFCMonQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  SFCMonQFM := nil;
end;

procedure TSFCMonQFM.FormShow(Sender: TObject);
begin
  inherited;
  cxdtS.Text := FormatDateTime('yyyy-mm-dd', StartOfTheMonth(Now));
  cxdtE.Text := FormatDateTime('yyyy-mm-dd', EndOfTheMonth(Now));
  lstWare.FullExpand;
  cxgrdDBBandedTableView1.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
end;

end.

