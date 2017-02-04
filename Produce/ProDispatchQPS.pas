unit ProDispatchQPS;

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
  dxSkinValentine, cxSpinEdit, cxCalc, dxBarBuiltInMenu, cxNavigator;

type
  TProDispatchQFM = class(TQBaseFM)
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
    cxTextEdit1: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxTechName: TcxButtonEdit;
    cxgrdtbvColumn1: TcxGridDBColumn;
    cxgrdtbvColumn2: TcxGridDBColumn;
    cxgrdtbvColumn3: TcxGridDBColumn;
    cxgrdtbvColumn4: TcxGridDBColumn;
    cxgrdtbvColumn5: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btnItemNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure btnEmpNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btnItemKindPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxTechNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    sWhere: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProDispatchQFM: TProDispatchQFM;

implementation

uses PublicPS, ControlPublicPS, SaleOrderPS,BaseTechQPS;
{$R *.dfm}

procedure TProDispatchQFM.btFindClick(Sender: TObject);
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

  if btnProType.Text <> '' then
    sWhere := sWhere + ' and b.ProType like ''%' + trim(btnProType.text) + '%''';
  if btnColor.Text <> '' then
    sWhere := sWhere + ' and b.Color like ''%' + trim(btnColor.text) + '%''';
  if cxTechName.Text <> '' then
    sWhere := sWhere + ' and (b.TechName like ''%' + trim(cxTechName.text) + '%'' or dbo.fnGetPY(b.TechName) like ''%' + trim(cxTechName.text) + '%''  )';


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
    SQL.Add(' exec PrProDispatchQ ' + Quotedstr(sWhere));
    Open;
  end;
  //SplitPage(SaleOrderQFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
end;

procedure TProDispatchQFM.btnEmpNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  SelectEmp2(btnEmpName);
end;

procedure TProDispatchQFM.btnItemKindPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItemKind2(btnItemKind);
end;

procedure TProDispatchQFM.btnItemNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(btnItemName);
end;

procedure TProDispatchQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  BillView('ProDispatchHDTB', 'select * from ProDispatchHDTB where DispatchNo=' + QuotedStr(qyHed.FieldByName('DispatchNo').AsString));
end;

procedure TProDispatchQFM.cxTechNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  try
    BaseTechQFM := TBaseTechQFM.Create(nil);
    BaseTechQFM.iSelectKind := 2;
    BaseTechQFM.ShowModal;
    if BaseTechQFM.sName <> '' then
    begin
      cxTechName.Text := BaseTechQFM.sName;
    end;
  finally
    BaseTechQFM.Free;
    BaseTechQFM := nil;
  end;
end;

procedure TProDispatchQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'ProDispatchQFM';
  sFMName := Self.Caption;
  sTableId := 'ProDispatchQFM';
  inherited;
end;

procedure TProDispatchQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ProDispatchQFM := nil;
end;

end.
