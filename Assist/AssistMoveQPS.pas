unit AssistMoveQPS;

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
  dxSkinValentine, cxSpinEdit, cxCalc, cxTL, cxCheckBox, cxTLdxBarBuiltInMenu,
  cxInplaceContainer, cxDBTL, cxTLData, dxBarBuiltInMenu, cxNavigator;

type
  TAssistMoveQFM = class(TQBaseFM)
    Lablbl2: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    cxEdtBillNo: TcxTextEdit;
    cxdtS: TcxDateEdit;
    cxdtE: TcxDateEdit;
    cxrdgrpAudit: TcxRadioGroup;
    cxItem: TcxButtonEdit;
    Label4: TLabel;
    btnSendName: TcxButtonEdit;
    Label3: TLabel;
    btnProType: TcxButtonEdit;
    btnItemKind: TcxButtonEdit;
    cxlbl6: TcxLabel;
    Label6: TLabel;
    btnColor: TcxButtonEdit;
    lstInWare: TcxDBTreeList;
    cxdbtrlstclmnlst1bSelect: TcxDBTreeListColumn;
    cxdbtrlstclmnlst1WareId: TcxDBTreeListColumn;
    cxdbtrlstclmnlst1WareName: TcxDBTreeListColumn;
    lstOutWare: TcxDBTreeList;
    cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxDBTreeListColumn2: TcxDBTreeListColumn;
    cxDBTreeListColumn3: TcxDBTreeListColumn;
    Label7: TLabel;
    btnAcceptName: TcxButtonEdit;
    qyHedMoveNo: TStringField;
    qyHedMoveDate: TDateTimeField;
    qyHedSendName: TStringField;
    qyHedSendWare: TStringField;
    qyHedAcceptName: TStringField;
    qyHedAcceptWare: TStringField;
    qyHedItemId: TStringField;
    qyHedItemCode: TStringField;
    qyHedItemName: TStringField;
    qyHedItemSpc: TStringField;
    qyHedItemPic: TStringField;
    qyHedItemUnit: TStringField;
    qyHedProType: TStringField;
    qyHedColor: TStringField;
    qyHedTechName: TStringField;
    qyHedObjectId: TStringField;
    qyHedObjectName: TStringField;
    qyHedInObjectId: TStringField;
    qyHedInObjectName: TStringField;
    qyHedMoveNum: TFMTBCDField;
    qyHedAutoNO: TStringField;
    qyHedProOrderNo: TStringField;
    qyHedProOrderId: TStringField;
    qyHedDispatchNo: TStringField;
    qyHedDisPatchId: TStringField;
    qyHedRemark: TStringField;
    cxgrdtbvMoveNo: TcxGridDBColumn;
    cxgrdtbvMoveDate: TcxGridDBColumn;
    cxgrdtbvSendName: TcxGridDBColumn;
    cxgrdtbvSendWare: TcxGridDBColumn;
    cxgrdtbvAcceptName: TcxGridDBColumn;
    cxgrdtbvAcceptWare: TcxGridDBColumn;
    cxgrdtbvItemCode: TcxGridDBColumn;
    cxgrdtbvItemName: TcxGridDBColumn;
    cxgrdtbvItemSpc: TcxGridDBColumn;
    cxgrdtbvItemUnit: TcxGridDBColumn;
    cxgrdtbvProType: TcxGridDBColumn;
    cxgrdtbvColor: TcxGridDBColumn;
    cxgrdtbvTechName: TcxGridDBColumn;
    cxgrdtbvObjectName: TcxGridDBColumn;
    cxgrdtbvInObjectName: TcxGridDBColumn;
    cxgrdtbvMoveNum: TcxGridDBColumn;
    cxgrdtbvProOrderNo: TcxGridDBColumn;
    cxgrdtbvDispatchNo: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    qyOutWare: TADOQuery;
    qyOutWarebSelect: TBooleanField;
    strngfldWareWareId: TStringField;
    strngfldWareWareName: TStringField;
    strngfldWareParentId: TStringField;
    dsOutWare: TDataSource;
    qyInWare: TADOQuery;
    BooleanField1: TBooleanField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    dsInWare: TDataSource;
    cxLabel2: TcxLabel;
    cxTechName: TcxButtonEdit;
    procedure FormCreate(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btnItemNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure btnEmpNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btnItemKindPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnAcceptNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure cxTechNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    sWhere: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AssistMoveQFM: TAssistMoveQFM;

implementation

uses PublicPS, ControlPublicPS, SaleOrderPS,BaseTechQPS;
{$R *.dfm}

procedure TAssistMoveQFM.btFindClick(Sender: TObject);
begin
  sWhere := '';

  if GetMultiId(qyOutWare, 'WareId') <> '' then
    sWhere := sWhere + ' and a.OutWare in(' + GetMultiId(qyOutWare, 'WareId') + ')';
  if GetMultiId(qyInWare, 'WareId') <> '' then
    sWhere := sWhere + ' and a.InWare in(' + GetMultiId(qyInWare, 'WareId') + ')';
  if cxrdgrpAudit.ItemIndex = 0 then
    sWhere := sWhere + ' and IsNull(a.bMaxAudit,0)=0'
  else if cxrdgrpAudit.ItemIndex = 1 then
    sWhere := sWhere + ' and IsNull(a.bMaxAudit,0)=1';

  if cxdtS.Text <> '' then
    sWhere := sWhere + ' and a.MoveDate>=' + QuotedStr(trim(cxdtS.Text));
  if cxdtE.Text <> '' then
    sWhere := sWhere + ' and a.MoveDate<=' + QuotedStr(trim(cxdtE.Text));

  if cxEdtBillNo.Text <> '' then
    sWhere := sWhere + ' and a.MoveNo like ''%' + trim(cxEdtBillNo.text) + '%''';
  if cxTechName.Text <> '' then
    sWhere := sWhere + ' and b.TechName like ''%' + trim(cxTechName.text) + '%''';
  if btnProType.Text <> '' then
    sWhere := sWhere + ' and b.ProType like ''%' + trim(btnProType.text) + '%''';
  if btnColor.Text <> '' then
    sWhere := sWhere + ' and b.Color like ''%' + trim(btnColor.text) + '%''';

  if btnSendName.Text <> '' then
    sWhere := sWhere + ' and d.ObjectName like ''%' + trim(btnSendName.text) + '%''';
  if btnAcceptName.Text <> '' then
    sWhere := sWhere + ' and e.ObjectName like ''%' + trim(btnAcceptName.text) + '%''';

  if btnItemKind.Text <> '' then
    sWhere := sWhere + ' and c.ItemKindId like ''' + trim(btnItemKind.Properties.LookupItems.Text) + '%'' ';
  if cxItem.Text <> '' then
    sWhere := sWhere + ' and (c.ItemCode like ''%' + trim(cxItem.Text) + '%'' or c.ItemName like ''%' + trim(cxItem.Text) + '%'' or c.ItemSpc like ''%' + trim(cxItem.Text) + '%'' or c.ItemPYCode like ''%' + trim(cxItem.Text) + '%'' )';
  if (cxItem.Properties.LookupItems.Text <> '') and (cxItem.Text <> '') then
    sWhere := sWhere + ' and b.ItemId =' + QuotedStr(trim(cxItem.Properties.LookupItems.Text));


  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add(' exec PrItemMoveQ ' + Quotedstr(sWhere) + ',' + Quotedstr('''AssistMove'''));
    Open;
  end;
  //SplitPage(SaleOrderQFM.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
  lstOutWare.FullExpand;
  lstInWare.FullExpand;
end;

procedure TAssistMoveQFM.btnAcceptNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectPrv2(btnAcceptName);
end;

procedure TAssistMoveQFM.btnEmpNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  SelectDept2(btnSendName);
end;

procedure TAssistMoveQFM.btnItemKindPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItemKind2(btnItemKind);
end;

procedure TAssistMoveQFM.btnItemNamePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(cxItem);
end;

procedure TAssistMoveQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  BillView('AssistMove', 'select * from ItemMoveHDTB where MKindId=''AssistMove'' and  MoveNo=' + QuotedStr(qyHed.FieldByName('MoveNo').AsString));
end;

procedure TAssistMoveQFM.cxTechNamePropertiesButtonClick(Sender: TObject;
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

procedure TAssistMoveQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'AssistMoveQFM';
  sFMName := Self.Caption;
  sTableId := 'AssistMoveQ';
  inherited;
end;

procedure TAssistMoveQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  AssistMoveQFM := nil;
end;

procedure TAssistMoveQFM.FormShow(Sender: TObject);
begin
  inherited;
  with qyOutWare do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('select * from WareTB where 1=1');
    if WareRight <> '' then
      SQL.Add('and WareId in (SELECT StrValues FROM fnStrSplit(' + QuotedStr(WareRight) + ','',''))');
    Open;
  end;
  with qyInWare do
  begin
    if Active then Close;
    SQL.Clear;
    sql.Add('select * from WareTB where 1=1');
    if WareRight <> '' then
      SQL.Add('and WareId in (SELECT StrValues FROM fnStrSplit(' + QuotedStr(WareRight) + ','',''))');
    Open;
  end;
  lstOutWare.FullExpand;
  lstInWare.FullExpand;
end;

end.
