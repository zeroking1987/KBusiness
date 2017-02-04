unit SaleOutPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WareInOutPS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxButtonEdit, cxDBLookupComboBox,
  cxTextEdit, dxSkinsdxBarPainter, frxClass, frxDBSet, cxGridCustomPopupMenu,
  cxGridPopupMenu, Menus, ADODB, dxBar, cxClasses, cxMemo, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxGroupBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxPC, StdCtrls,
  ExtCtrls, cxPCdxBarPopupMenu, cxRadioGroup, dxSkinOffice2010Blue,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxCheckBox,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu,
  cxNavigator, cxLabel, cxButtons, cxCurrencyEdit, cxMRUEdit,
  dxSkinOffice2013LightGray, dxSkinOffice2016Colorful, dxSkinOffice2016Dark;

type
  TSaleOutFM = class(TWareInOutFM)
    dxbrbtn1: TdxBarButton;
    dxbrbtn2: TdxBarButton;
    lbl3: TLabel;
    cxdbtxtdtEdt2: TcxDBTextEdit;
    qyPlaceNo: TADOQuery;
    lbl5: TLabel;
    cxdbtxtdt2: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    cbbPayMode: TcxDBComboBox;
    cxbtNowPay: TcxButton;
    cxDBTextEdit5: TcxDBTextEdit;
    Label17: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxFactMoney: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxEdtMoney: TcxTextEdit;
    qyHedNoPayM: TFMTBCDField;
    cxNoPayM: TcxDBCurrencyEdit;
    Label11: TLabel;
    Label12: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure strngfldHedObjectIDChange(Sender: TField);
    procedure cxgrdtbvTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxbtNowPayClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxFactMoneyPropertiesChange(Sender: TObject);
    procedure qyHedCalcFields(DataSet: TDataSet);
    procedure strngfldDetItemIdChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SaleOutFM: TSaleOutFM;

implementation
uses PublicPS, ControlPublicPS, CustQPS, SGeneralPS, WareItemQPS, DataPS;
{$R *.dfm}

procedure TSaleOutFM.cxbtNowPayClick(Sender: TObject);
begin
  inherited;
  if btSave.Enabled = false then exit;
  if qyHed.State = dsBrowse then qyHed.Edit;
  qyHed.FieldByName('PayMoney').AsFloat := qyHed.FieldByName('FactMoney').AsFloat;
end;

procedure TSaleOutFM.cxFactMoneyPropertiesChange(Sender: TObject);
begin
  inherited;
  if btSave.Enabled = false then exit;
  if StrToFloat(trim(cxEdtMoney.Text)) > 0 then
  begin
    if qyHed.State = dsBrowse then qyHed.Edit;
    qyHed.FieldByName('DisCount').AsFloat := trunc(StrToFloat(trim(cxFactMoney.Text)) / StrToFloat(trim(cxEdtMoney.Text)) * 100);
    cxbtNowPayClick(Sender);
  end;
end;

procedure TSaleOutFM.cxgrdtbvTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  inherited;
  if not AText.IsEmpty then
  begin
    cxEdtMoney.Text := (cxgrdtbv.DataController.Summary.FooterSummaryValues[2]);
    if btSave.Enabled then
    begin
      if qyHed.State = dsBrowse then qyHed.Edit;
      qyHed.FieldByName('FactMoney').AsFloat := StrToFloat(cxEdtMoney.Text);
      cxbtNowPayClick(Sender);
    end;
  end;
end;

procedure TSaleOutFM.FormCreate(Sender: TObject);
begin
  sFMId := 'SaleOutFM';
  sFMName := Self.Caption;
  sTableId := 'SaleOut';
  inherited;
end;

procedure TSaleOutFM.FormDestroy(Sender: TObject);
begin
  inherited;
  SaleOutFM := nil;
end;

procedure TSaleOutFM.FormShow(Sender: TObject);
begin
  inherited;
  InitCbb('select PayModeName from PayModeTB where PayModeKind like ''%ÊÕ¿î%''', cbbPayMode);
end;

procedure TSaleOutFM.qyHedCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyHed, DataFM.qyCust, ['ObjectId', 'NoPayM'], ['CustId', 'NoPayM']);
end;

procedure TSaleOutFM.strngfldDetItemIdChange(Sender: TField);
begin
  inherited;
  CalcField(qyDet, DataFM.qyItem, ['ItemID', 'MainPrice'],['ItemID', 'SalePrice']);
  UpdateData(cxgrdtbv, 'MainPrice');
end;

procedure TSaleOutFM.strngfldHedObjectIDChange(Sender: TField);
begin
  inherited;
  CalcField(qyHed, DataFM.qyCust, ['ObjectId', 'Address'], ['CustId', 'CustAddress']);
end;

end.

