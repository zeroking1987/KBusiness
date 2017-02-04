unit ProOrderQPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QBasePS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, cxLabel, cxGridCustomPopupMenu,
  cxGridPopupMenu, Menus, frxClass, frxDBSet, ADODB, dxBar, cxBarEditItem, cxClasses, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  ExtCtrls, cxContainer, cxButtonEdit, cxGroupBox, cxRadioGroup, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxTextEdit, StdCtrls, dxSkinOffice2010Blue, cxPCdxBarPopupMenu,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinDevExpressStyle, dxSkinSpringTime,
  dxSkinValentine, cxSpinEdit, cxCalc, dxSkinOffice2007Silver,
  dxSkinSevenClassic, dxSkinSilver, dxSkinWhiteprint, dxBarBuiltInMenu,
  cxNavigator;

type
  TProOrderQFM = class(TQBaseFM)
    Label2: TLabel;
    cxEdtBillNo: TcxTextEdit;
    cxdtS: TcxDateEdit;
    cxdtE: TcxDateEdit;
    cxrdgrpAudit: TcxRadioGroup;
    btnItemName: TcxButtonEdit;
    btnProType: TcxButtonEdit;
    cxrdgrpProductIn: TcxRadioGroup;
    btnItemKind: TcxButtonEdit;
    cxgrdtbvProOrderNo: TcxGridDBColumn;
    cxgrdtbvMrpDate: TcxGridDBColumn;
    cxgrdtbvItemCode: TcxGridDBColumn;
    cxgrdtbvItemName: TcxGridDBColumn;
    cxgrdtbvItemSpc: TcxGridDBColumn;
    cxgrdtbvProType: TcxGridDBColumn;
    cxgrdtbvColor: TcxGridDBColumn;
    cxgrdtbvCompactNO: TcxGridDBColumn;
    cxgrdtbvSaleOrderNo: TcxGridDBColumn;
    cxgrdtbvTechName: TcxGridDBColumn;
    cxgrdtbvFinalNum: TcxGridDBColumn;
    cxgrdtbvNoInNum: TcxGridDBColumn;
    cxgrdtbvProductIn: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    btnColor: TcxButtonEdit;
    cxrdgrpComplete: TcxRadioGroup;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btnItemNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure btnItemKindPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    sWhere: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProOrderQFM: TProOrderQFM;

implementation

uses PublicPS, ControlPublicPS, SaleOrderPS;
{$R *.dfm}

procedure TProOrderQFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxrdgrpAudit.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(a.bMaxAudit,0)=0'
  else if cxrdgrpAudit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(a.bMaxAudit,0)=1';

  if cxrdgrpProductIn.ItemIndex = 0 then
    sWhere := sWhere + ' and ISNULL(b.FinalNum,0)>ISNULL(m.InNum,0)'
  else if cxrdgrpProductIn.ItemIndex = 1 then
    sWhere := sWhere + ' and ISNULL(b.FinalNum,0)<=ISNULL(m.InNum,0)';

  if cxrdgrpComplete.ItemIndex = 0 then
    sWhere := sWhere + ' and (IsNull(m.InNum,0)<IsNull(b.FinalNum,0)) '
  else if cxrdgrpComplete.ItemIndex = 1 then
    sWhere := sWhere + ' and (IsNull(m.InNum,0)>=IsNull(b.DispatchNum,0)) ';


  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.MrpDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.MrpDate<=' + QuotedStr(trim(cxdtE.Text));

  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and a.ProOrderNo like ''%' + trim(cxEdtBillNo.text) + '%''';

  if btnProType.Text <> '' then
    sWhere := sWhere + ' and b.ProType like ''%' + trim(btnProType.text) + '%''';
  if btnColor.Text <> '' then
    sWhere := sWhere + ' and b.Color like ''%' + trim(btnColor.text) + '%''';


  if btnItemKind.Text <> '' then
    sWhere := sWhere + ' and c.ItemKindId like ''' + trim(btnItemKind.Properties.LookupItems.Text) + '%'' ';
  if btnItemName.Text <> '' then
    sWhere := sWhere + ' and c.ItemName like ''%' + trim(btnItemName.text) + '%''';

  if (btnItemName.Properties.LookupItems.Text <> '') and (btnItemName.Text <> '') then
    sWhere := sWhere + ' and b.ItemId =' + QuotedStr(trim(btnItemName.Properties.LookupItems.Text));

  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add(' exec PrProOrderQ ' + Quotedstr(sWhere));
    Open;
  end;
  //SplitPage(SaleOrderQFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TProOrderQFM.btnItemKindPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItemKind2(btnItemKind);
end;

procedure TProOrderQFM.btnItemNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(btnItemName);
end;

procedure TProOrderQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  BillView('ProOrderHDTB', 'select * from ProOrderHDTB where ProOrderNo=' + QuotedStr(qyHed.FieldByName('ProOrderNo').AsString));
end;

procedure TProOrderQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'ProOrderQFM';
  sFMName := Self.Caption;
  sTableId := 'ProOrderQ';
  inherited;
end;

procedure TProOrderQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ProOrderQFM := nil;
end;

end.
