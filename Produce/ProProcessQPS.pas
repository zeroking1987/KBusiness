unit ProProcessQPS;

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
  dxSkinValentine, cxSpinEdit, cxCalc, cxDBEdit, dxBarBuiltInMenu, cxNavigator;

type
  TProProcessQFM = class(TQBaseFM)
    Label2: TLabel;
    cxEdtBillNo: TcxTextEdit;
    cxdtS: TcxDateEdit;
    cxdtE: TcxDateEdit;
    cxrdgrpAudit: TcxRadioGroup;
    btnItemName: TcxButtonEdit;
    btnEmpName: TcxButtonEdit;
    btnProType: TcxButtonEdit;
    cxrdgrpProductIn: TcxRadioGroup;
    btnItemKind: TcxButtonEdit;
    cxgrdtbvDispatchNo: TcxGridDBColumn;
    cxgrdtbvDispatchDate: TcxGridDBColumn;
    cxgrdtbvItemCode: TcxGridDBColumn;
    cxgrdtbvItemName: TcxGridDBColumn;
    cxgrdtbvItemSpc: TcxGridDBColumn;
    cxgrdtbvProType: TcxGridDBColumn;
    cxgrdtbvColor: TcxGridDBColumn;
    cxgrdtbvEmpCode: TcxGridDBColumn;
    cxgrdtbvEmpName: TcxGridDBColumn;
    cxgrdtbvTechName: TcxGridDBColumn;
    cxgrdtbvDispatchNum: TcxGridDBColumn;
    cxgrdtbvNoInNum: TcxGridDBColumn;
    cxgrdtbvProductIn: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    cxgrdtbvProOrderNo: TcxGridDBColumn;
    btnColor: TcxButtonEdit;
    cxrdgrpComplete: TcxRadioGroup;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxSaleOrderNo: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxCompactNo: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxgrdtbvMat: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxgrdtbvIn: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxgrdtbvTech: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    frxMat: TfrxDBDataset;
    qyMat: TADOQuery;
    dsMat: TDataSource;
    dsIn: TDataSource;
    qyIn: TADOQuery;
    frxIn: TfrxDBDataset;
    frxTech: TfrxDBDataset;
    qyTech: TADOQuery;
    dsTech: TDataSource;
    cxAutoNo: TcxDBTextEdit;
    cxgrdtbvMatBillNo: TcxGridDBColumn;
    cxgrdtbvMatBillDate: TcxGridDBColumn;
    cxgrdtbvMatItemCode: TcxGridDBColumn;
    cxgrdtbvMatItemName: TcxGridDBColumn;
    cxgrdtbvMatItemSpc: TcxGridDBColumn;
    cxgrdtbvMatMainNum: TcxGridDBColumn;
    cxgrdtbvInBillNo: TcxGridDBColumn;
    cxgrdtbvInBillDate: TcxGridDBColumn;
    cxgrdtbvInItemCode: TcxGridDBColumn;
    cxgrdtbvInItemName: TcxGridDBColumn;
    cxgrdtbvInItemSpc: TcxGridDBColumn;
    cxgrdtbvInMainNum: TcxGridDBColumn;
    cxgrdtbvTechMoveNo: TcxGridDBColumn;
    cxgrdtbvTechMoveDate: TcxGridDBColumn;
    cxgrdtbvTechItemCode: TcxGridDBColumn;
    cxgrdtbvTechItemName: TcxGridDBColumn;
    cxgrdtbvTechItemSpc: TcxGridDBColumn;
    cxgrdtbvTechTechName: TcxGridDBColumn;
    cxgrdtbvTechMoveNum: TcxGridDBColumn;
    cxgrdtbvTechSpoilNum: TcxGridDBColumn;
    cxgrdtbvTechWasteNum: TcxGridDBColumn;
    cxgrdtbvTechColumn1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btnItemNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure btnEmpNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btnItemKindPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxAutoNoPropertiesChange(Sender: TObject);
  private
    sWhere, sWhere1: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProProcessQFM: TProProcessQFM;

implementation

uses PublicPS, ControlPublicPS, SaleOrderPS;
{$R *.dfm}

procedure TProProcessQFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxrdgrpAudit.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(a.bMaxAudit,0)=0'
  else if cxrdgrpAudit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(a.bMaxAudit,0)=1';

  if cxrdgrpProductIn.ItemIndex = 0 then
    sWhere := sWhere + ' and ISNULL(b.DispatchNum,0)>ISNULL(m.InNum,0)'
  else if cxrdgrpProductIn.ItemIndex = 1 then
    sWhere := sWhere + ' and ISNULL(b.DispatchNum,0)<=ISNULL(m.InNum,0)';

  if cxrdgrpComplete.ItemIndex = 0 then
    sWhere := sWhere + ' and (IsNull(m.InNum,0)<IsNull(b.DispatchNum,0) and IsNull(b.bComplete,0)=0 and IsNull(b.bStop,0)=0) '
  else if cxrdgrpComplete.ItemIndex = 1 then
    sWhere := sWhere + ' and (IsNull(m.InNum,0)>=IsNull(b.DispatchNum,0) or IsNull(b.bComplete,0)=1 or IsNull(b.bStop,0)=1) ';


  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.DispatchDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.DispatchDate<=' + QuotedStr(trim(cxdtE.Text));

  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and a.DispatchNo like ''%' + trim(cxEdtBillNo.text) + '%''';
  if cxSaleOrderNo.Text <> '' then
    sWhere := sWhere + ' and b.SaleOrderNo like ''%' + trim(cxSaleOrderNo.text) + '%''';
  if cxCompactNo.Text <> '' then
    sWhere := sWhere + ' and b.CompactNo like ''%' + trim(cxCompactNo.text) + '%''';

  if btnProType.Text <> '' then
    sWhere := sWhere + ' and b.ProType like ''%' + trim(btnProType.text) + '%''';
  if btnColor.Text <> '' then
    sWhere := sWhere + ' and b.Color like ''%' + trim(btnColor.text) + '%''';


  if btnEmpName.Text <> '' then
    sWhere := sWhere + ' and b.EmpId=' + QuotedStr(trim(btnEmpName.Properties.LookupItems.Text));
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
    SQL.Add(' exec PrProProcessQ ' + Quotedstr(sWhere));
    Open;
  end;
  //SplitPage(SaleOrderQFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TProProcessQFM.btnEmpNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  SelectEmp2(btnEmpName);
end;

procedure TProProcessQFM.btnItemKindPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItemKind2(btnItemKind);
end;

procedure TProProcessQFM.btnItemNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(btnItemName);
end;

procedure TProProcessQFM.cxAutoNoPropertiesChange(Sender: TObject);
begin
  inherited;
  sWhere1 := '';
  if trim(cxAutoNo.Text) <> '' then
  begin
    with qyMat do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add(' exec PrProProcessMatQ ' + Quotedstr(' and m.DetAutoNo=' + Quotedstr(trim(cxAutoNo.Text))));
      Open;
    end;
    with qyIn do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add(' exec PrProProcessInQ ' + Quotedstr(' and b.DispatchId=' + Quotedstr(trim(cxAutoNo.Text))));
      Open;
    end;
    with qyTech do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add(' exec PrProProcessTechQ ' + Quotedstr(' and b.DispatchId=' + Quotedstr(trim(cxAutoNo.Text))));
      Open;
    end;
  end;
end;

procedure TProProcessQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  BillView('ProDispatchHDTB', 'select * from ProDispatchHDTB where DispatchNo=' + QuotedStr(qyHed.FieldByName('DispatchNo').AsString));
end;

procedure TProProcessQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'ProProcessQFM';
  sFMName := Self.Caption;
  sTableId := 'ProProcessQ';
  inherited;
end;

procedure TProProcessQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ProProcessQFM := nil;
end;

end.
