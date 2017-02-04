unit ItemPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Base1PS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, AdoInt,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, ADODB, dxBar,
  cxClasses, ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  cxPC, cxContainer, cxTextEdit, cxDBEdit, cxMemo, cxDropDownEdit, cxMaskEdit,
  cxButtonEdit, Menus, cxButtons, ComCtrls, dxtree, dxdbtree,
  cxGridCustomPopupMenu, cxGridPopupMenu, frxClass, frxDBSet, cxCalendar,
  cxLabel, cxGroupBox,
  cxRadioGroup, cxSpinEdit, cxSplitter, cxPCdxBarPopupMenu,
  dxSkinOffice2010Blue, cxCheckBox, cxNavigator, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu;

type
  TItemFM = class(TBase1FM)
    pnlEdit: TPanel;
    cxPgc1: TcxPageControl;
    cxtbsht1: TcxTabSheet;
    lbl1: TLabel;
    cxEdtItemId: TcxDBTextEdit;
    lbl2: TLabel;
    cxEdtItemCode: TcxDBTextEdit;
    lbl3: TLabel;
    cxEdtItemName: TcxDBTextEdit;
    cxEdtItemSpc: TcxDBTextEdit;
    lbl7: TLabel;
    cxBtItemKind: TcxDBButtonEdit;
    cxdbEdt6: TcxDBTextEdit;
    lbl12: TLabel;
    pnl2: TPanel;
    dsItemKind: TDataSource;
    qyItemKind: TADOQuery;
    qyItemKindAutoId: TAutoIncField;
    strngfldPrvKindParentId: TStringField;
    strngfldPrvKindRemark: TStringField;
    lbl19: TLabel;
    cxEdtValue: TcxTextEdit;
    frxdtHed: TfrxDBDataset;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cbbItemUnit: TcxDBComboBox;
    Label8: TLabel;
    cbbSubUnit: TcxDBComboBox;
    Label9: TLabel;
    cxRgp2: TcxDBRadioGroup;
    cxgrdtbvItemCode: TcxGridDBColumn;
    cxgrdtbvItemName: TcxGridDBColumn;
    cxgrdtbvItemSpc: TcxGridDBColumn;
    cxgrdtbvSalePrice: TcxGridDBColumn;
    cxgrdtbvItemUnit: TcxGridDBColumn;
    cxgrdtbvExchRate: TcxGridDBColumn;
    cxgrdtbvSubUnit: TcxGridDBColumn;
    cxgrdtbvItemKindName: TcxGridDBColumn;
    cxgrdtbvStockPrice: TcxGridDBColumn;
    cxgrdtbvISBN: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    qyItemKindbSelect: TBooleanField;
    qyItemKindItemKindId: TStringField;
    qyItemKindItemKindCode: TStringField;
    qyItemKindItemKindName: TStringField;
    qyItemKindParam: TStringField;
    qyItemKindKindWare: TStringField;
    cxspltr1: TcxSplitter;
    lbl28: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    Label7: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    Label5: TLabel;
    qyHedAutoId: TAutoIncField;
    qyHedbSelect: TBooleanField;
    qyHedItemId: TStringField;
    qyHedItemCode: TStringField;
    qyHedItemName: TStringField;
    qyHedItemSpc: TStringField;
    qyHedItemKindName: TStringField;
    qyHedMaterial: TStringField;
    qyHedISBN: TStringField;
    qyHedStockPrice: TFMTBCDField;
    qyHedSalePrice: TFMTBCDField;
    qyHedPicPath: TStringField;
    qyHedPicName: TStringField;
    qyHedItemUnit: TStringField;
    qyHedExchRate: TFMTBCDField;
    qyHedSubUnit: TStringField;
    qyHediFlag: TSmallintField;
    qyHedMakeManName: TStringField;
    qyHedMakeDate: TDateTimeField;
    qyHedEditManName: TStringField;
    qyHedEditDate: TDateTimeField;
    qyHedRemark: TStringField;
    Label10: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    Panel1: TPanel;
    tv: TdxDBTreeView;
    cxButton1: TcxButton;
    qyHedItemKindId: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure tvCustomDraw(Sender: TObject; TreeNode: TTreeNode; AFont: TFont;
      var AColor, ABkColor: TColor);
    procedure btSaveClick(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btAddLClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure cxEdtValuePropertiesChange(Sender: TObject);
    procedure btDelClick(Sender: TObject);
    procedure qyHedAfterInsert(DataSet: TDataSet);
    procedure btRefClick(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ItemFM: TItemFM;

implementation

uses DataPS, PublicPS, DeptQPS, ItemKindQPS, IMCode, MainPS, EmpQPS, ItemKindPS;
{$R *.dfm}


procedure TItemFM.btAddClick(Sender: TObject);
begin
  try
    if (bRight) and (bAdd = false) then
    begin
      ShowWarn('你没有添加权限,不能操作');
      exit;
    end;
    inherited;
    pnlEdit.Visible := true;
    TextReadOnly(Self, False);
    cxgrd.Enabled := False;
    tv.Enabled := False;
    cxEdtItemId.Properties.ReadOnly := true;
    qyHed.Append;
    cxEdtItemName.SetFocus;
    qyHed.FieldByName('ItemKindId').AsString := qyItemKind.FieldByName('ItemKindId').AsString;
    qyHed.FieldByName('ItemKindName').AsString := qyItemKind.FieldByName('ItemKindName').AsString;
    qyHed.FieldByName('ItemId').AsString := GetFiveNo(sTableId, 'ItemId');
    qyHed.FieldByName('ItemCode').AsString := GetFiveNo(sTableId, 'ItemId');
  except
  end;
end;

procedure TItemFM.btAddLClick(Sender: TObject);
begin
  try
    qyHed.Append;
    cxEdtItemName.SetFocus;
    qyHed.FieldByName('ItemKindId').AsString := qyItemKind.FieldByName('ItemKindId').AsString;
    qyHed.FieldByName('ItemKindName').AsString := qyItemKind.FieldByName('ItemKindName').AsString;
    qyHed.FieldByName('ItemId').AsString := GetFiveNo(sTableId, 'ItemId');
    qyHed.FieldByName('ItemCode').AsString := GetFiveNo(sTableId, 'ItemId');
  except
  end;
end;

procedure TItemFM.btCancelClick(Sender: TObject);
begin
  try
    qyHed.CancelBatch();
    inherited;
    pnlEdit.Visible := False;
    TextReadOnly(Self, true);
    cxgrd.Enabled := true;
    tv.Enabled := true;
  except
  end;
end;

procedure TItemFM.btDelClick(Sender: TObject);
var sInfo: string;
begin
  inherited;
  if qyHed.IsEmpty then Exit;
  if (bRight) and (bDelAll = false) and (qyHed.FieldByName('MakeManName').AsString <> LoginName) then
  begin
    ShowWarn('你只能删除自己做的数据!');
    exit;
  end;
  if ShowDlg('确定要删除该条记录？') then
  begin
    qyHed.Delete;
    qyHed.UpdateBatch();
  end;
end;

procedure TItemFM.btEditClick(Sender: TObject);
begin
  try
    if (bRight) and (bEditAll = false) and (qyHed.FieldByName('MakeManName').AsString <> LoginName) then
    begin
      ShowWarn('你只能修改自己做的单据，不能修改别人的!');
      exit;
    end;
    inherited;
    pnlEdit.Visible := true;
    TextReadOnly(Self, False);
    tv.Enabled := False;
    cxEdtItemId.Properties.ReadOnly := true;
    qyHed.Edit;
    qyHed.FieldByName('EditManName').AsString := LoginName;
    qyHed.FieldByName('EditDate').AsDateTime := Now;
  except
  end;
end;

procedure TItemFM.btRefClick(Sender: TObject);
begin
  try
    inherited;
    if showDlg('确定要同步产品信息到各个单据?') then
    begin
      with DataFM.qyTemp do
      begin
        if Active then close;
        SQL.Clear;
        SQL.Add('exec PrUpdateItemInfo');
        ExecSQL;
      end;
      showBox(' 同步成功!');
    end;
  except
    on E: Exception do
      ShowError(E.Message);
  end;
end;

procedure TItemFM.btSaveClick(Sender: TObject);
begin
  try
    if cxEdtItemName.text = '' then
    begin
      ShowHintMsg(cxEdtItemName, '请填写产品名称！');
      Exit;
    end;


    with DataFM.qyTemp do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add('select ItemId,ItemCode from ItemTB where  IsNull(ItemName,'''')=' + QuotedStr(Trim(cxEdtItemName.Text)) + ' and IsNull(ItemSpc,'''')=' + QuotedStr(Trim(cxEdtItemSpc.Text)) + ' and ItemId<>' + QuotedStr(Trim(cxEdtItemId.Text)));
      Open;
      if not eof then
      begin
        ShowWarn('该产品已经存在,产品编号为：' + FieldByName('ItemId').AsString);
        Exit
      end;
    end;
    qyHed.Filter := '';
    qyHed.Filtered := False;
    qyHed.UpdateBatch();
    ShowBox('保存成功！');
    qyHed.UpdateCursorPos;
    qyHed.Recordset.Resync(AdAffectcurrent, AdResyncAllValues);
    qyHed.Resync([]);
    TextReadOnly(Self, true);
    cxgrd.Enabled := true;
    tv.Enabled := true;
    inherited;
  except
    on E: Exception do
      ShowError(E.Message);
  end;
end;

procedure TItemFM.cxButton1Click(Sender: TObject);
begin
  inherited;
  if not Assigned(ItemKindFM) then
    ItemKindFM := TItemKindFM.Create(Application);
  ItemKindFM.qyHed.Locate('ItemKindId', qyItemKind.FieldByName('ItemKindId').AsString, []);
  ItemKindFM.btAddClick(Sender);
  ItemKindFM.ShowModal;
  ItemKindFM.BringToFront;
  ItemKindFM.WindowState := wsNormal;
  qyItemKind.Requery();
  tvExpand(tv, dsItemKind, 'ItemKindId', 'ItemKindName', 'ParentId');
end;

procedure TItemFM.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  try
    if btSave.Enabled = False then
      Exit;
    try
      ItemKindQFM := TItemKindQFM.Create(nil);
      ItemKindQFM.iSelectKind := 2;
      ItemKindQFM.ShowModal;
      if qyHed.State = dsBrowse then qyHed.Edit;
      qyHed.FieldByName('ItemKindId').AsString := ItemKindQFM.sId;
      qyHed.FieldByName('ItemKindName').AsString := ItemKindQFM.sName;
    finally
      ItemKindQFM.Free;
      ItemKindQFM := nil;
    end;
  except
  end;
end;

procedure TItemFM.cxEdtValuePropertiesChange(Sender: TObject);
var sItemKind: string;
begin
  inherited;
  if tv.Selected.IsFirstNode then
    sItemKind := '' // 如果选择的是根节点就不过滤
  else
    sItemKind := qyItemKind.FieldByName('ItemKindId').AsString;
  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('select * from ItemTB where 1=1 ');
    SQL.Add('and (dbo.fnGetPY(ItemName) like ''%' + trim(cxEdtValue.text) + '%'' or ItemId like ''%' + trim(cxEdtValue.text)
      + '%'' or ItemCode like ''%' + trim(cxEdtValue.text) + '%'' or ItemSpc like ''%' + trim(cxEdtValue.text)
      + '%'' or ItemName like ''%' + trim(cxEdtValue.text) + '%'')');

    if sItemKind <> '' then
      SQL.Add('and ItemKindId like ''' + sItemKind + '%'' ');
    if not bFindAll then
      SQL.Add('and MakeManName=' + QuotedStr(LoginName));
    Open;
  end;
end;

procedure TItemFM.cxgrdtbvDblClick(Sender: TObject);
begin
  inherited;
  pnlEdit.Visible := not (pnlEdit.Visible);
end;

procedure TItemFM.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  CxExport(cxgrd, cxlabTitle.Caption);
end;

procedure TItemFM.dxBarButton2Click(Sender: TObject);
begin
  ImportFromExcel('产品资料', DataFM.DlgOpen1);
  cxEdtValuePropertiesChange(Sender);
end;

procedure TItemFM.FormCreate(Sender: TObject);
begin
  sFMId := 'ItemFM';
  sFMName := Self.Caption;
  sTableId := 'ItemTB';
  inherited;
  InitCbb('select UnitName from UnitSetTB', cbbItemUnit);
  InitCbb('select UnitName from UnitSetTB', cbbSubUnit);
  tvExpand(tv, dsItemKind, 'ItemKindId', 'ItemKindName', 'ParentId');
end;

procedure TItemFM.FormDestroy(Sender: TObject);
begin
  inherited;
  ItemFM := nil;
end;

procedure TItemFM.FormShow(Sender: TObject);
begin
  inherited;
  tv.FullExpand;
  cxEdtValuePropertiesChange(Sender);
end;

procedure TItemFM.qyHedAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyHed.FieldByName('iFlag').AsInteger := 0;
  qyHed.FieldByName('MakeManName').AsString := LoginName;
  qyHed.FieldByName('MakeDate').AsDateTime := Now;
  cbbItemUnit.ItemIndex := 1;
  cbbSubUnit.ItemIndex := 1;
  qyHed.FieldByName('ExchRate').AsFloat := 1;
end;

procedure TItemFM.tvCustomDraw(Sender: TObject; TreeNode: TTreeNode;
  AFont: TFont; var AColor, ABkColor: TColor);
begin
  try
    if (TreeNode.Index mod 2 = 0) then
      AColor := $00F14552
    else
      AColor := $005158E6;
  except
  end;
end;

end.

