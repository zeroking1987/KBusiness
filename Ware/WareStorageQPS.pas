unit WareStorageQPS;

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
  cxSplitter, cxContainer, cxTL, cxCheckBox, cxMaskEdit, cxTextEdit,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData, cxDBEdit,
  cxButtonEdit, cxButtons,
  cxRadioGroup, cxPCdxBarPopupMenu, cxGridChartView, cxGridDBChartView,
  cxCurrencyEdit, dxSkinOffice2010Blue, cxGroupBox, cxCheckGroup, cxNavigator,
  cxSpinEdit, dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine,
  dxBarBuiltInMenu, dxSkinOffice2013LightGray, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark;

type
  TWareStorageQFM = class(TQBaseFM)
    qyWareNum: TADOQuery;
    dsWareNum: TDataSource;
    frxWare: TfrxDBDataset;
    qyWare: TADOQuery;
    qyWarebSelect: TBooleanField;
    qyWareWareId: TStringField;
    qyWareWareName: TStringField;
    qyWareParentId: TStringField;
    dsWare: TDataSource;
    cxdbEdtItemId: TcxDBTextEdit;
    lstWare: TcxDBTreeList;
    cxdbtrlstclmnlst1bSelect: TcxDBTreeListColumn;
    cxdbtrlstclmnlst1WareId: TcxDBTreeListColumn;
    cxdbtrlstclmnlst1WareName: TcxDBTreeListColumn;
    btnItemKind: TcxButtonEdit;
    qyWareNumItemId: TStringField;
    qyWareNumWareId: TStringField;
    qyWareNumWareName: TStringField;
    qyWareNumWareNum: TFMTBCDField;
    dsPlaceNum: TDataSource;
    qyPlaceNum: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    cxlbl1: TcxLabel;
    cxPlace: TcxTextEdit;
    cxlbl3: TcxLabel;
    qyPlaceNumItemId: TStringField;
    qyPlaceNumPlaceNo: TStringField;
    qyPlaceNumWareNum: TFMTBCDField;
    btnItem: TcxButtonEdit;
    cxlbl7: TcxLabel;
    btnObject: TcxButtonEdit;
    cxLabel1: TcxLabel;
    cxrdgrpZero: TcxRadioGroup;
    cxrdgrpUnit: TcxRadioGroup;
    cxchckgrpShowField: TcxCheckGroup;
    cxgrdbclmnItemKindId: TcxGridDBColumn;
    cxgrdbclmnItemKindName: TcxGridDBColumn;
    cxgrdbclmnItemId: TcxGridDBColumn;
    cxgrdbclmnItemCode: TcxGridDBColumn;
    cxgrdbclmnItemName: TcxGridDBColumn;
    cxgrdbclmnItemSpc: TcxGridDBColumn;
    cxgrdbclmnItemUnit: TcxGridDBColumn;
    cxgrdbclmnSubUnit: TcxGridDBColumn;
    cxgrdbclmnWareName: TcxGridDBColumn;
    cxgrdbclmnProType: TcxGridDBColumn;
    cxgrdbclmnPlaceNo: TcxGridDBColumn;
    cxgrdbclmnObjectName: TcxGridDBColumn;
    cxgrdbclmnWareNum: TcxGridDBColumn;
    cxgrdbclmnSubNum: TcxGridDBColumn;
    cxgrdtbvColumn1: TcxGridDBColumn;
    cxgrdtbvColumn2: TcxGridDBColumn;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxgrd1: TcxGrid;
    cxgrdbtblvwcxgrdtbv1: TcxGridDBTableView;
    cxgrdbclmncxgrdtbv1WareId: TcxGridDBColumn;
    cxgrdbclmncxgrdtbv1WareName: TcxGridDBColumn;
    cxgrdbclmncxgrdtbv1WareNum: TcxGridDBColumn;
    cxgrd1DBChartView1: TcxGridDBChartView;
    cxgrd1DBChartView1Series1: TcxGridDBChartSeries;
    cxgrdlev1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    cxgrdbclmnTechName: TcxGridDBColumn;
    cxLabel2: TcxLabel;
    cxTechName: TcxButtonEdit;
    cxLabel3: TcxLabel;
    cxColor: TcxButtonEdit;
    cxLabel4: TcxLabel;
    cxProType: TcxButtonEdit;
    cxgrdbclmnColor: TcxGridDBColumn;
    procedure btFindClick(Sender: TObject);
    procedure cxdbEdtItemIdPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnItemKindPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxItemKeyPress(Sender: TObject; var Key: Char);
    procedure btnItemPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnObjectPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxrdgrpUnitClick(Sender: TObject);
    procedure cxchckgrpShowFieldPropertiesChange(Sender: TObject);
    procedure cxTechNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxProTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxColorPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    sShowField, sWhere, sWhere2: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WareStorageQFM: TWareStorageQFM;

implementation

uses DataPS, PublicPS, BaseTechQPS;
{$R *.dfm}

procedure TWareStorageQFM.btFindClick(Sender: TObject);
var i: Integer;
begin
  try
    inherited;
    sShowField := '';
    sWhere := '';

    for i := 0 to cxchckgrpShowField.Properties.Items.Count - 1 do
    begin
      if cxchckgrpShowField.States[i] = (cbsChecked) then
        sShowField := sShowField + Trim(cxchckgrpShowField.Properties.Items.Items[i].Caption);
    end;
    if WareRight <> '' then
    begin
      sWhere := sWhere + 'and a.WareId in (SELECT StrValues FROM fnStrSplit(' + QuotedStr(WareRight) + ','',''))';
      sWhere2 := sWhere2 + 'and a.WareId in (SELECT StrValues FROM fnStrSplit(' + QuotedStr(WareRight) + ','',''))';
    end;

    if GetMultiId(qyWare, 'WareId') <> '' then
    begin
      sWhere := sWhere + ' and a.WareId in(' + GetMultiId(qyWare, 'WareId') + ')';
      sWhere2 := sWhere2 + ' and a.WareId in(' + GetMultiId(qyWare, 'WareId') + ')';
    end;
    if btnItem.Text <> '' then
      sWhere := sWhere + ' and (b.ItemCode like ''%' + trim(btnItem.Text) + '%'' or b.ItemName like ''%' + trim(btnItem.Text) + '%'' or b.ItemSpc like ''%' + trim(btnItem.Text) + '%'' or b.ItemPYCode like ''%' + trim(btnItem.Text) + '%'') ';
    if (btnItem.Properties.LookupItems.Text <> '') and (btnItem.Text <> '') then
      sWhere := sWhere + ' and b.ItemId =' + QuotedStr(trim(btnItem.Properties.LookupItems.Text));

    if btnObject.Text <> '' then
    begin
      sWhere := sWhere + ' and d.ObjectName like ''%' + trim(btnObject.Text) + '%'' ';
      if btnObject.Properties.LookupItems.Text <> '' then
        sWhere := sWhere + ' and a.ObjectId =' + QuotedStr(trim(btnObject.Properties.LookupItems.Text));
    end;

    if btnItemKind.Text <> '' then
      sWhere := sWhere + ' and b.ItemKindId like ''' + trim(btnItemKind.Properties.LookupItems.Text) + '%'' ';
    if cxProType.Text <> '' then
      sWhere := sWhere + ' and a.ProType like ''%' + trim(cxProType.Text) + '%'' ';
          if cxColor.Text <> '' then
      sWhere := sWhere + ' and a.Color like ''%' + trim(cxColor.Text) + '%'' ';
    if cxTechName.Text <> '' then
      sWhere := sWhere + ' and (a.TechName like ''%' + trim(cxTechName.text) + '%'' or dbo.fnGetPY(a.TechName) like ''%' + trim(cxTechName.text) + '%'' )';
    if cxPlace.Text <> '' then
      sWhere := sWhere + ' and a.PlaceNo like ''%' + trim(cxPlace.Text) + '%'' ';

    with qyHed do
    begin
      if Active then Close;
      SQL.Clear;
      sql.Add('Exec prWareStorageQ ' + QuotedStr(sShowField) + ',' + QuotedStr(sWhere) + ',' + InttoStr(cxrdgrpZero.ItemIndex));
      Open;
    end;
    lstWare.FullExpand;
    //SplitPage(Self.qyHed, iQPageSize, dxbrcmbPageIndex, cxbrdtmPage, true);
  except
    on E: Exception do
      ShowWarn(E.Message);
  end;
end;

procedure TWareStorageQFM.btnItemKindPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItemKind2(btnItemKind);
end;

procedure TWareStorageQFM.btnItemPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectItem2(btnItem);
end;

procedure TWareStorageQFM.btnObjectPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectPrv2(btnObject);
end;

procedure TWareStorageQFM.cxchckgrpShowFieldPropertiesChange(Sender: TObject);
begin
  inherited;
  if cxchckgrpShowField.States[0] = (cbsChecked) then
    cxgrdbclmnWareName.Visible := True
  else
    cxgrdbclmnWareName.Visible := False;
  if cxchckgrpShowField.States[1] = (cbsChecked) then
    cxgrdbclmnProType.Visible := True
  else
    cxgrdbclmnProType.Visible := False;
  if cxchckgrpShowField.States[2] = (cbsChecked) then
    cxgrdbclmnPlaceNo.Visible := True
  else
    cxgrdbclmnPlaceNo.Visible := False;
  if cxchckgrpShowField.States[3] = (cbsChecked) then
    cxgrdbclmnObjectName.Visible := True
  else
    cxgrdbclmnObjectName.Visible := False;
  if cxchckgrpShowField.States[4] = (cbsChecked) then
    cxgrdbclmnTechName.Visible := True
  else
    cxgrdbclmnTechName.Visible := False;
  if cxchckgrpShowField.States[5] = (cbsChecked) then
    cxgrdbclmnColor.Visible := True
  else
    cxgrdbclmnColor.Visible := False;

  btFindClick(Sender);
end;

procedure TWareStorageQFM.cxColorPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectColorEdt(cxColor);
end;

procedure TWareStorageQFM.cxdbEdtItemIdPropertiesChange(Sender: TObject);
begin
  inherited;
  with qyWareNum do
  begin
    if Active then Close;
    sql.Clear;
    sql.Add('select a.ItemId,a.WareId,b.WareName,WareNum=Sum(IsNull(a.WareNum,0))');
    sql.Add('from WareStorageTB a left join WareTB b on a.WareId=b.WareId');
    sql.Add('where 1=1 and a.ItemId=' + QuotedStr(trim(cxdbEdtItemId.text)));
    sql.Add(sWhere2);
    sql.Add('group by a.ItemId,a.WareId,b.WareName Having Sum(IsNull(a.WareNum,0))>0');
    Open;
  end;
end;

procedure TWareStorageQFM.cxItemKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    btFindClick(Sender);
end;

procedure TWareStorageQFM.cxProTypePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  SelectProTypeEdt(cxProType);
end;

procedure TWareStorageQFM.cxrdgrpUnitClick(Sender: TObject);
begin
  inherited;
  if cxrdgrpUnit.ItemIndex = 0 then
  begin
    cxgrdbclmnItemUnit.Visible := True;
    cxgrdbclmnWareNum.Visible := True;
    cxgrdbclmnSubUnit.Visible := False;
    cxgrdbclmnSubNum.Visible := False;
  end
  else if cxrdgrpUnit.ItemIndex = 1 then
  begin
    cxgrdbclmnItemUnit.Visible := False;
    cxgrdbclmnWareNum.Visible := False;
    cxgrdbclmnSubUnit.Visible := True;
    cxgrdbclmnSubNum.Visible := True;
  end
  else if cxrdgrpUnit.ItemIndex = 2 then
  begin
    cxgrdbclmnItemUnit.Visible := True;
    cxgrdbclmnWareNum.Visible := True;
    cxgrdbclmnSubUnit.Visible := True;
    cxgrdbclmnSubNum.Visible := True;
  end;
end;

procedure TWareStorageQFM.cxTechNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
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

procedure TWareStorageQFM.FormCreate(Sender: TObject);
begin
  sFMId := 'WareStorageQ';
  sFMName := Self.Caption;
  sTableId := 'WareStorageQ';
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

procedure TWareStorageQFM.FormDestroy(Sender: TObject);
begin
  inherited;
  WareStorageQFM := nil;
end;

procedure TWareStorageQFM.FormShow(Sender: TObject);
begin
  inherited;
  //cxSplitter1.CloseSplitter;
  lstWare.FullExpand;
  cxchckgrpShowField.States[1] := (cbsChecked);
  //显示要显示的字段
  cxrdgrpUnitClick(Sender);
  cxchckgrpShowFieldPropertiesChange(Sender);
end;

end.

