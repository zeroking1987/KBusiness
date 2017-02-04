unit WareInOutQPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QBasePS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, dxSkinsdxBarPainter, cxLabel, cxGridCustomPopupMenu,
  cxGridPopupMenu, Menus, frxClass, frxDBSet, ADODB, dxBar, cxBarEditItem,
  cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, StdCtrls, ExtCtrls,
  cxContainer, cxButtons, cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxTL, cxCheckBox, cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData,
  cxButtonEdit, cxGroupBox, cxRadioGroup, cxPCdxBarPopupMenu,
  dxSkinOffice2010Blue, cxCheckGroup, Vcl.ComCtrls, dxCore, cxDateUtils, cxMemo,
  cxCalc, cxSpinEdit, frxExportXLS, cxNavigator, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu;

type
  TWareInOutQFM = class(TQBaseFM)
    Label3: TLabel;
    cxdtS: TcxDateEdit;
    cxdtE: TcxDateEdit;
    btnItemKind: TcxButtonEdit;
    cxItem: TcxButtonEdit;
    lstWare: TcxDBTreeList;
    cxdbtrlstclmnlst1bSelect: TcxDBTreeListColumn;
    cxdbtrlstclmnlst1WareId: TcxDBTreeListColumn;
    cxdbtrlstclmnlst1WareName: TcxDBTreeListColumn;
    cxBillNo: TcxTextEdit;
    btnObject: TcxButtonEdit;
    cxRgpAudit: TcxRadioGroup;
    cxgrdbclmnWKindName: TcxGridDBColumn;
    cxgrdbclmnBillNO: TcxGridDBColumn;
    cxgrdbclmnBillDate: TcxGridDBColumn;
    cxgrdbclmnObjectName: TcxGridDBColumn;
    cxgrdbclmnItemCode: TcxGridDBColumn;
    cxgrdbclmnItemName: TcxGridDBColumn;
    cxgrdbclmnItemSpc: TcxGridDBColumn;
    cxgrdbclmnWareName: TcxGridDBColumn;
    cxgrdbclmnMainNum: TcxGridDBColumn;
    cxgrdbclmnMainPrice: TcxGridDBColumn;
    cxgrdbclmnMainMoney: TcxGridDBColumn;
    cxgrdbclmnRemark: TcxGridDBColumn;
    cxgrdbclmnItemKindName: TcxGridDBColumn;
    cxgrdbclmnProType: TcxGridDBColumn;
    pmObject: TPopupMenu;
    NPrv: TMenuItem;
    NCust: TMenuItem;
    qyWare: TADOQuery;
    qyWarebSelect: TBooleanField;
    strngfldWareWareId: TStringField;
    strngfldWareWareName: TStringField;
    strngfldWareParentId: TStringField;
    dsWare: TDataSource;
    cxgrdtbvColumn1: TcxGridDBColumn;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    cxlbl3: TcxLabel;
    cxlbl4: TcxLabel;
    cxlbl6: TcxLabel;
    cxlbl7: TcxLabel;
    cxgrdtbvColumn2: TcxGridDBColumn;
    cxgrdtbvColumn3: TcxGridDBColumn;
    cxRgpFuHe: TcxRadioGroup;
    cxRgpWKindFlag: TcxRadioGroup;
    N1: TMenuItem;
    N2: TMenuItem;
    cxButton1: TcxButton;
    cxMoWKind: TcxMemo;
    cxgrdbclmnColumn4: TcxGridDBColumn;
    btnEmpName: TcxButtonEdit;
    cxLabel1: TcxLabel;
    btnDrawEmp: TcxButtonEdit;
    cxLabel2: TcxLabel;
    cxgrdtbvColumn4: TcxGridDBColumn;
    cxRgpSignFlag: TcxRadioGroup;
    cxgrdtbvColumn5: TcxGridDBColumn;
    cxgrdtbvColumn6: TcxGridDBColumn;
    cxgrdtbvColumn7: TcxGridDBColumn;
    cxgrdtbvColumn8: TcxGridDBColumn;
    cxgrdtbvColumn9: TcxGridDBColumn;
    cxCompactNo: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxgrdtbvColumn10: TcxGridDBColumn;
    cxgrdtbvColumn11: TcxGridDBColumn;
    cxgrdtbvColumn12: TcxGridDBColumn;
    cxColor: TcxButtonEdit;
    cxLabel4: TcxLabel;
    cxProType: TcxButtonEdit;
    procedure btFindClick(Sender: TObject);
    procedure btnItemNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure NPrvClick(Sender: TObject);
    procedure NCustClick(Sender: TObject);
    procedure btnObjectPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnItemKindPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnEmpNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnDrawEmpPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxPorTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxColorPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WareInOutQFM: TWareInOutQFM;

implementation

uses PublicPS, ControlPublicPS, WKindQPS, DataPS;
{$R *.dfm}

procedure TWareInOutQFM.btFindClick(Sender: TObject);
begin
  try
    inherited;
    sWhere := '';

    if WareRight <> '' then
      sWhere := sWhere + 'and b.WareId in (SELECT StrValues FROM fnStrSplit(' + QuotedStr(WareRight) + ','',''))';
    if GetMultiId(qyWare, 'WareId') <> '' then
      sWhere := sWhere + ' and b.WareId in(' + GetMultiId(qyWare, 'WareId') + ')';
    if cxdtS.Text <> '' then
      sWhere := sWhere + ' and a.BillDate>=' + QuotedStr((trim(cxdtS.Text)));
    if cxdtE.Text <> '' then
      sWhere := sWhere + ' and a.BillDate<=' + QuotedStr((trim(cxdtE.Text)));
    if btnObject.Text <> '' then
      sWhere := sWhere + ' and (f.ObjectCode like ''%' + trim(btnObject.text) + '%'' or f.ObjectName like ''%' + trim(btnObject.text) + '%'' or dbo.fnGetPY(f.ObjectName) like ''%' + trim(btnObject.text) + '%'')';
    if (btnObject.Properties.LookupItems.Text <> '') and (btnObject.Text <> '') then
      sWhere := sWhere + ' and a.ObjectId=' + QuotedStr(trim(btnObject.Properties.LookupItems.Text));
    if cxBillno.Text <> '' then
      sWhere := sWhere + ' and a.Billno like ''%' + trim(cxBillno.Text) + '%'' ';
    if cxCompactNo.Text <> '' then
      sWhere := sWhere + ' and b.CompactNo like ''%' + trim(cxCompactNo.Text) + '%'' ';
    if cxItem.Text <> '' then
      sWhere := sWhere + ' and (c.ItemCode like ''%' + trim(cxItem.Text) + '%'' or c.ItemName like ''%' + trim(cxItem.Text) + '%'' or c.ItemSpc like ''%' + trim(cxItem.Text) + '%'' or c.ItemPYCode like ''%' + trim(cxItem.Text) + '%'' )';
    if (cxItem.Properties.LookupItems.Text <> '') and (cxItem.Text <> '') then
      sWhere := sWhere + ' and b.ItemId =' + QuotedStr(trim(cxItem.Properties.LookupItems.Text));

    if btnItemKind.Text <> '' then
      sWhere := sWhere + ' and c.ItemKindId like ''' + trim(btnItemKind.Properties.LookupItems.Text) + '%'' ';
    if cxProType.Text <> '' then
      sWhere := sWhere + ' and b.ProType like ''%' + trim(cxProType.Text) + '%'' ';
       if cxColor.Text <> '' then
      sWhere := sWhere + ' and b.Color like ''%' + trim(cxColor.Text) + '%'' ';
    if cxRgpWKindFlag.ItemIndex = 0 then
      sWhere := sWhere + ' and IsNull(a.WFlag,1)=1'
    else if cxRgpWKindFlag.ItemIndex = 1 then
      sWhere := sWhere + ' and IsNull(a.WFlag,1)=-1';

    if cxRgpAudit.ItemIndex = 0 then
      sWhere := sWhere + ' and IsNull(a.bMaxAudit,0)=0'
    else if cxRgpAudit.ItemIndex = 1 then
      sWhere := sWhere + ' and IsNull(a.bMaxAudit,0)=1';

    if cxRgpFuHe.ItemIndex = 0 then
      sWhere := sWhere + ' and IsNull(a.bFuHe,0)=0'
    else if cxRgpFuHe.ItemIndex = 1 then
      sWhere := sWhere + ' and IsNull(a.bFuHe,0)=1';

    if cxRgpSignFlag.ItemIndex = 0 then
      sWhere := sWhere + ' and IsNull(a.SignFlag,0)=1'
    else if cxRgpSignFlag.ItemIndex = 1 then
      sWhere := sWhere + ' and IsNull(a.SignFlag,0)=-1';

    if cxMoWKind.Lines.Text <> '' then
      sWhere := sWhere + ' and d.WKindName in (' + trim(cxMoWKind.Lines.Text) + ')';

    if btnEmpName.Text <> '' then
      sWhere := sWhere + ' and (h.EmpName like ''%' + trim(btnEmpName.text) + '%'' or h.PYCode like ''%' + trim(btnEmpName.text) + '%'')';
    if (btnEmpName.Properties.LookupItems.Text <> '') and (btnEmpName.Text <> '') then
      sWhere := sWhere + ' and a.WareMan =' + QuotedStr(trim(btnEmpName.Properties.LookupItems.Text));

    if btnDrawEmp.Text <> '' then
      sWhere := sWhere + ' and (i.EmpName like ''%' + trim(btnDrawEmp.text) + '%'' or i.PYCode like ''%' + trim(btnDrawEmp.text) + '%'')';
    if (btnDrawEmp.Properties.LookupItems.Text <> '') and (btnDrawEmp.Text <> '') then
      sWhere := sWhere + ' and b.EmpId =' + QuotedStr(trim(btnDrawEmp.Properties.LookupItems.Text));


    with qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add(' exec PrWareInOutQ ' + Quotedstr(sWhere));
      Open;
    end;
    //SplitPage(Self.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
    lstWare.FullExpand;
  except
    on E: Exception do
      ShowWarn(E.Message);
  end;
end;

procedure TWareInOutQFM.btnDrawEmpPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectEmp2(btnDrawEmp);
end;

procedure TWareInOutQFM.btnEmpNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectEmp2(btnEmpName);
end;

procedure TWareInOutQFM.btnItemKindPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItemKind2(btnItemKind);
end;

procedure TWareInOutQFM.btnItemNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(cxItem);
end;

procedure TWareInOutQFM.btnObjectPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  pmObject.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TWareInOutQFM.cxButton1Click(Sender: TObject);
begin
  inherited;
  try
    WKindQFM := TWKindQFM.Create(nil);
    WKindQFM.iSelectKind := 2;
    WKindQFM.ShowModal;
    cxMoWKind.Lines.Text := WKindQFM.sAllName;
    cxMoWKind.Hint := WKindQFM.sAllId
  finally
    WKindQFM.Free;
    WKindQFM := nil;
  end;
end;

procedure TWareInOutQFM.cxColorPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectColorEdt(cxColor);
end;

procedure TWareInOutQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  BillView(qyHed.FieldByName('WKindId').AsString, 'select * from WareInOutHDTB where BillNo=' + QuotedStr(qyHed.FieldByName('BillNo').AsString));
end;

procedure TWareInOutQFM.cxPorTypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectProTypeEdt(cxProType);
end;

procedure TWareInOutQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'WareInOutQ';
  sFMName := Self.Caption;
  sTableId := 'WareInOutQ';
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

procedure TWareInOutQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  WareInOutQFM := nil;
end;

procedure TWareInOutQFM.FormShow(Sender: TObject);
var i: integer;
begin
  inherited;
  lstWare.FullExpand;
  if (bRight) then
  begin
    for i := 0 to cxgrdtbv.ColumnCount - 1 do
    begin
      if (cxgrdtbv.Columns[i].DataBinding.FieldName = 'MainPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'TaxPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'TaxRate') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'MainMoney') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubTaxPrice') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'SubMoney') or
        (cxgrdtbv.Columns[i].DataBinding.FieldName = 'AllMoney') then
        cxgrdtbv.Columns[i].Visible := bShowPrice;
    end;
  end;
end;

procedure TWareInOutQFM.N2Click(Sender: TObject);
begin
  inherited;
  if qyHed.FieldByName('SubjoinTableId').AsString = 'WareCheckHDTB' then
    BillView('WareCheckHDTB', 'select * from WareCheckHDTB where  BillNo=' + QuotedStr(qyHed.FieldByName('SubJoinNo').AsString));
  if qyHed.FieldByName('SubjoinTableId').AsString = 'ShopMove' then
    BillView('ShopMove', 'select * from ItemMoveHDTB where  MoveNo=' + QuotedStr(qyHed.FieldByName('SubJoinNo').AsString));
  if qyHed.FieldByName('SubjoinTableId').AsString = 'ShopMoveIn' then
    BillView('ShopMoveIn', 'select * from ItemMoveHDTB where  MoveNo=' + QuotedStr(qyHed.FieldByName('SubJoinNo').AsString));
  if qyHed.FieldByName('SubjoinTableId').AsString = 'AssistMove' then
    BillView('AssistMove', 'select * from ItemMoveHDTB where  MoveNo=' + QuotedStr(qyHed.FieldByName('SubJoinNo').AsString));
  if qyHed.FieldByName('SubjoinTableId').AsString = 'AssistMoveIn' then
    BillView('AssistMoveIn', 'select * from ItemMoveHDTB where  MoveNo=' + QuotedStr(qyHed.FieldByName('SubJoinNo').AsString));
end;

procedure TWareInOutQFM.NCustClick(Sender: TObject);
begin
  inherited;
  SelectCust2(btnObject);
end;

procedure TWareInOutQFM.NPrvClick(Sender: TObject);
begin
  SelectPrv2(btnObject);
end;

end.
