unit SysParamPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BasePS, dxSkinsCore, dxSkinsdxBarPainter, dxSkinsDefaultPainters, DB, ADODB,
  dxBar, cxClasses, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsdxNavBarPainter, dxSkinscxPCPainter, dxNavBarBase, dxNavBarCollns,
  cxPC, dxNavBar, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxMaskEdit, cxSpinEdit, cxDropDownEdit,
  cxCalendar, DateUtils, cxGroupBox, cxPCdxBarPopupMenu, cxStyles, cxVGrid,
  cxDBVGrid, cxInplaceContainer, dxSkinOffice2010Blue, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxRadioGroup, Vcl.Menus, cxButtons, cxImageComboBox, cxCheckBox,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu;

type
  TSysParamFM = class(TBaseFM)
    pnl2: TPanel;
    pnl1: TPanel;
    dxnvbrParam: TdxNavBar;
    dxnvbrgrpParamGroup1: TdxNavBarGroup;
    dxnvbrtmParamItem1: TdxNavBarItem;
    dxnvbrtmParamItem2: TdxNavBarItem;
    cxPgcParam: TcxPageControl;
    cxtbsht1: TcxTabSheet;
    pnl3: TPanel;
    cxgrpbx1: TcxGroupBox;
    Label10: TLabel;
    cxEdtWareStartMon: TcxDBTextEdit;
    cxdtWareStartMon: TcxDateEdit;
    Label11: TLabel;
    cxEdtStockStartMon: TcxDBTextEdit;
    cxdtStockStartMon: TcxDateEdit;
    Label12: TLabel;
    cxEdtSaleStartMon: TcxDBTextEdit;
    cxdtSaleStartMon: TcxDateEdit;
    Label14: TLabel;
    cxEdtCWStartMon: TcxDBTextEdit;
    cxdtCWStartMon: TcxDateEdit;
    Panel1: TPanel;
    cxDBVerticalGrid3: TcxDBVerticalGrid;
    cxDBEditorRow5: TcxDBEditorRow;
    cxDBEditorRow6: TcxDBEditorRow;
    cxDBEditorRow7: TcxDBEditorRow;
    cxDBEditorRow8: TcxDBEditorRow;
    cxDBEditorRow9: TcxDBEditorRow;
    cxTabSheet1: TcxTabSheet;
    cxDBVerticalGrid3CategoryRow2: TcxCategoryRow;
    cxDBVerticalGrid3DBEditorRow2: TcxDBEditorRow;
    cxDBVerticalGrid3CategoryRow1: TcxCategoryRow;
    cxDBVerticalGrid3DBEditorRow1: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow3: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow4: TcxDBEditorRow;
    btn1: TButton;
    btn2: TButton;
    btnApp: TButton;
    cxDBVerticalGrid3DBEditorRow5: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow6: TcxDBEditorRow;
    cxDBVerticalGrid3CategoryRow3: TcxCategoryRow;
    cxDBVerticalGrid3DBEditorRow7: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow8: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow9: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow10: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow11: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow12: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow13: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow14: TcxDBEditorRow;
    cxDBVerticalGrid1: TcxDBVerticalGrid;
    cxCategoryRow1: TcxCategoryRow;
    cxCategoryRow2: TcxCategoryRow;
    cxCategoryRow3: TcxCategoryRow;
    cxDBEditorRow16: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow15: TcxDBEditorRow;
    cxDBEditorRowDBVerticalGrid1DBEditorRow1: TcxDBEditorRow;
    cxDBEditorRowDBVerticalGrid1DBEditorRow2: TcxDBEditorRow;
    cxDBVerticalGrid1CategoryRow1: TcxCategoryRow;
    cxDBVerticalGrid1DBEditorRow1: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow2: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow3: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow4: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow5: TcxDBEditorRow;
    Label1: TLabel;
    cxEdtCNStartMon: TcxDBTextEdit;
    cxdtCNStartMon: TcxDateEdit;
    cxDBVerticalGrid1CategoryRow2: TcxCategoryRow;
    cxDBVerticalGrid1DBEditorRow6: TcxDBEditorRow;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxnvbrParamLinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
    procedure FormShow(Sender: TObject);
    procedure dsHedDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxdtStockStartMonPropertiesChange(Sender: TObject);
    procedure cxdtSaleStartMonPropertiesChange(Sender: TObject);
    procedure cxdtCWSatartMonPropertiesChange(Sender: TObject);
    procedure cxdtWareStartMonPropertiesChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btnAppClick(Sender: TObject);
    procedure cxDateEdit1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sFMId: string; //窗体编号
    sFMName: string; //窗体名称
  end;

var
  SysParamFM: TSysParamFM;

implementation

uses DataPS, PublicPS, MainPS;
{$R *.dfm}

procedure TSysParamFM.btn1Click(Sender: TObject);
begin
  inherited;
  qyHed.UpdateBatch();
  GetSysParam();
  bCanClose := true;
  Self.Close;
end;

procedure TSysParamFM.btn2Click(Sender: TObject);
begin
  inherited;
  bCanClose := true;
  Self.Close;
end;

procedure TSysParamFM.btnAppClick(Sender: TObject);
begin
  inherited;
  qyHed.UpdateBatch();
  btnApp.Enabled := False;
  if cxEdtWareStartMon.Text <> '' then
  begin
    cxEdtWareStartMon.Properties.ReadOnly := True;
    cxdtWareStartMon.Properties.ReadOnly := True;
  end
  else
  begin
    cxEdtWareStartMon.Properties.ReadOnly := false;
    cxdtWareStartMon.Properties.ReadOnly := false;
  end;

  if cxEdtStockStartMon.Text <> '' then
  begin
    cxEdtStockStartMon.Properties.ReadOnly := True;
    cxdtStockStartMon.Properties.ReadOnly := True;
  end
  else
  begin
    cxEdtStockStartMon.Properties.ReadOnly := false;
    cxdtStockStartMon.Properties.ReadOnly := false;
  end;

  if cxEdtSaleStartMon.Text <> '' then
  begin
    cxEdtSaleStartMon.Properties.ReadOnly := True;
    cxdtSaleStartMon.Properties.ReadOnly := True;
  end
  else
  begin
    cxEdtSaleStartMon.Properties.ReadOnly := false;
    cxdtSaleStartMon.Properties.ReadOnly := false;
  end;

  if cxEdtCWStartMon.Text <> '' then
  begin
    cxEdtCWStartMon.Properties.ReadOnly := True;
    cxdtCWStartMon.Properties.ReadOnly := True;
  end
  else
  begin
    cxEdtCWStartMon.Properties.ReadOnly := false;
    cxdtCWStartMon.Properties.ReadOnly := false;
  end;
  if cxEdtCNStartMon.Text <> '' then
  begin
    cxEdtCNStartMon.Properties.ReadOnly := True;
    cxdtCNStartMon.Properties.ReadOnly := True;
  end
  else
  begin
    cxEdtCNStartMon.Properties.ReadOnly := false;
    cxEdtCNStartMon.Properties.ReadOnly := false;
  end;
  GetSysParam();
end;

procedure TSysParamFM.cxDateEdit1PropertiesChange(Sender: TObject);
begin
  inherited;
  if qyHed.State = dsBrowse then qyHed.Edit;
  qyHed.FieldByName('CNStartMon').AsString := GetYearMon(cxdtCNStartMon.Date);
end;

procedure TSysParamFM.cxdtCWSatartMonPropertiesChange(Sender: TObject);
begin
  inherited;
  if qyHed.State = dsBrowse then qyHed.Edit;
  qyHed.FieldByName('CWStartMon').AsString := GetYearMon(cxdtCWStartMon.Date);
end;

procedure TSysParamFM.cxdtSaleStartMonPropertiesChange(Sender: TObject);
begin
  inherited;
  if qyHed.State = dsBrowse then qyHed.Edit;
  qyHed.FieldByName('SaleStartMon').AsString := GetYearMon(cxdtSaleStartMon.Date);
end;

procedure TSysParamFM.cxdtStockStartMonPropertiesChange(Sender: TObject);
begin
  inherited;
  if qyHed.State = dsBrowse then qyHed.Edit;
  qyHed.FieldByName('StockStartMon').AsString := GetYearMon(cxdtStockStartMon.Date);
end;

procedure TSysParamFM.cxdtWareStartMonPropertiesChange(Sender: TObject);
begin
  inherited;
  if qyHed.State = dsBrowse then qyHed.Edit;
  qyHed.FieldByName('WareStartMon').AsString := GetYearMon(cxdtWareStartMon.Date);
end;

procedure TSysParamFM.dsHedDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  btnApp.Enabled := true;
end;

procedure TSysParamFM.dxnvbrParamLinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
var
  i, j: integer;
begin
  try
    for i := 0 to cxPgcParam.PageCount - 1 do
    begin
      cxPgcParam.Pages[i].TabVisible := False;
    end;
    j := ALink.Index;
    cxPgcParam.Pages[j].TabVisible := true;
    cxPgcParam.ActivePage := cxPgcParam.Pages[j];
  except
  end;
end;

procedure TSysParamFM.FormClose(Sender: TObject; var Action: TCloseAction);
var
  iPNo: Integer;
begin
  if not bCanClose then Exit;
  for iPNo := MainFM.cxPgcMain.PageCount - 1 downto 0 do
  begin
    if MainFM.cxPgcMain.Pages[iPNo].Hint = sFMId then
    begin
      MainFM.cxPgcMain.Pages[iPNo].Free;
      break;
    end;
  end;
end;

procedure TSysParamFM.FormCreate(Sender: TObject);
var
  iPNo, iPCount, i: Integer;
  FormExist: Boolean;
  TabSt: TcxTabSheet;
begin
  sFMId := 'SysParamFM';
  sFMName := Self.Caption;
  // 创建主窗体多页标签
  for iPNo := MainFM.cxPgcMain.PageCount - 1 downto 0 do
  begin
    if MainFM.cxPgcMain.Pages[iPNo].Hint = sFMId then
    begin
      MainFM.cxPgcMain.Pages[iPNo].Show;
      FormExist := true;
      break;
    end
    else
      FormExist := false;
  end;
  if not FormExist then
  begin
    TabSt := TcxTabSheet.Create(Application);
    iPCount := MainFM.cxPgcMain.PageCount;
    TabSt.PageControl := MainFM.cxPgcMain;
    TabSt.Caption := sFMName;
    TabSt.Hint := sFMId;
    MainFM.cxPgcMain.Pages[iPCount].Show;
    Self.Parent := MainFM.cxPgcMain.Pages[iPCount];
  end;
  try
    qyHed.Open;
    for i := 0 to cxPgcParam.PageCount - 1 do
    begin
      cxPgcParam.Pages[i].TabVisible := False;
    end;
    cxPgcParam.Pages[0].TabVisible := true;
    cxPgcParam.ActivePage := cxPgcParam.Pages[0];
  except
  end;
end;

procedure TSysParamFM.FormDestroy(Sender: TObject);
begin
  inherited;
  SysParamFM := nil;
end;

procedure TSysParamFM.FormShow(Sender: TObject);
begin
  //inherited;
  bCanClose := true;
  btnApp.Enabled := False;
  if cxEdtWareStartMon.Text <> '' then
  begin
    cxEdtWareStartMon.Properties.ReadOnly := True;
    cxdtWareStartMon.Properties.ReadOnly := True;
  end;

  if cxEdtStockStartMon.Text <> '' then
  begin
    cxEdtStockStartMon.Properties.ReadOnly := True;
    cxdtStockStartMon.Properties.ReadOnly := True;
  end;
  if cxEdtSaleStartMon.Text <> '' then
  begin
    cxEdtSaleStartMon.Properties.ReadOnly := True;
    cxdtSaleStartMon.Properties.ReadOnly := True;
  end;
  if cxEdtCWStartMon.Text <> '' then
  begin
    cxEdtCWStartMon.Properties.ReadOnly := True;
    cxdtCWStartMon.Properties.ReadOnly := True;
  end;
  if cxEdtCNStartMon.Text <> '' then
  begin
    cxEdtCNStartMon.Properties.ReadOnly := True;
    cxdtCNStartMon.Properties.ReadOnly := True;
  end;
end;

end.
