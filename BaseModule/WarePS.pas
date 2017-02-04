unit WarePS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BasePS, dxSkinsCore, dxSkinsdxBarPainter,
  dxSkinsDefaultPainters, DB, ADODB, dxBar, cxClasses, ComCtrls, dxtree,
  dxdbtree, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomData, cxStyles, cxTL, cxTLdxBarBuiltInMenu,
  cxInplaceContainer, cxTLData, cxDBTL, cxContainer, cxEdit, cxTextEdit,
  cxDBEdit, StdCtrls, cxMemo, cxCheckBox, dxSkinscxPCPainter, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  frxClass, frxDBSet, Menus, cxButtons, cxButtonEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxDBLookupComboBox,
  Mask, cxPC, cxPCdxBarPopupMenu, dxSkinOffice2010Blue, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine, dxBarBuiltInMenu, cxNavigator, cxLabel;

type
  TWareFM = class(TBaseFM)
    pnlLeft: TPanel;
    pnlEdit: TPanel;
    pnlGest: TPanel;
    tv: TdxDBTreeView;
    pnlTitle: TPanel;
    frxHed: TfrxDBDataset;
    qyHedAutoId: TAutoIncField;
    strngfldHedWareId: TStringField;
    strngfldHedWareCode: TStringField;
    strngfldHedWareName: TStringField;
    strngfldHedParentId: TStringField;
    strngfldHedPriceStyle: TStringField;
    qyHedIsCalcNum: TBooleanField;
    strngfldHedRemark: TStringField;
    strngfldHedParentName: TStringField;
    strngfldHedWareKind: TStringField;
    labTitle: TLabel;
    pnl1: TPanel;
    cxdbEdtId: TcxDBTextEdit;
    cxdbEdtCode: TcxDBTextEdit;
    cxdbEdtName: TcxDBTextEdit;
    cxdbEdtParentId: TcxDBTextEdit;
    cbbWareKind: TcxDBComboBox;
    cxpgcntrlWareEmp: TcxPageControl;
    cxtbsht1: TcxTabSheet;
    dsWareEmp: TDataSource;
    frxWareEmp: TfrxDBDataset;
    qyWareEmp: TADOQuery;
    cxgrd: TcxGrid;
    cxgrdtbv: TcxGridDBTableView;
    cxgrdlev: TcxGridLevel;
    qyWareEmpAutoId: TAutoIncField;
    qyWareEmpWareId: TStringField;
    qyWareEmpEmpId: TStringField;
    qyWareEmpEmpCode: TStringField;
    qyWareEmpRemark: TStringField;
    qyWareEmpEmpName: TStringField;
    cxgrdtbvEmpCode: TcxGridDBColumn;
    cxgrdtbvEmpName: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    lbl5: TLabel;
    lbl6: TLabel;
    cxlbl4: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btAddLClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btDelClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure GetWareId(InId: string; iFlag: Integer);
    procedure btCancelClick(Sender: TObject);
    procedure tvCustomDraw(Sender: TObject; TreeNode: TTreeNode; AFont: TFont; var AColor, ABkColor: TColor);
    procedure qyHedCalcFields(DataSet: TDataSet);
    procedure qyHedAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cxdbEdtIdPropertiesChange(Sender: TObject);
    procedure btDelLClick(Sender: TObject);
    procedure cxgrdtbvEmpCodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure qyWareEmpCalcFields(DataSet: TDataSet);
    procedure qyWareEmpNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WareFM: TWareFM;

implementation

uses MainPS, PublicPS, DataPS, EmpQPS;
{$R *.dfm}

procedure TWareFM.btAddClick(Sender: TObject);
var
  sId: string;
begin
  try
    inherited;
    sId := '';
    cxdbEdtId.Properties.ReadOnly := true;
    cxdbEdtParentId.Properties.ReadOnly := true;
    sId := tv.GetKeyField.Text;
    qyHed.Append;
    GetWareId(sId, 2);
    cxdbEdtName.SetFocus;
  except
  end;
end;

procedure TWareFM.btAddLClick(Sender: TObject);
begin
  qyWareEmp.Append;
end;

procedure TWareFM.btCancelClick(Sender: TObject);
begin
  qyHed.CancelBatch();
  qyWareEmp.CancelBatch();
  TextReadOnly(Self, true);
  inherited;
end;

procedure TWareFM.btDelClick(Sender: TObject);
begin
  try
    inherited;
    if qyHed.FieldByName('WareId').AsString = '00' then Exit;
    if (tv.Selected <> nil) then
    begin
      if tv.Selected.GetLastChild <> nil then
      begin
        showbox('还有下级数据，不能删除？');
        exit;
      end
      else
      begin
        if ShowDlg('确定要删除吗？') then
        begin
          qyHed.Delete;
          qyHed.UpdateBatch();
        end;
      end;
    end;
  finally
  end;
end;

procedure TWareFM.btDelLClick(Sender: TObject);
begin
  inherited;
  qyWareEmp.Delete;
end;

procedure TWareFM.btEditClick(Sender: TObject);
begin
  try
    inherited;
    cxdbEdtId.Properties.ReadOnly := true;
    cxdbEdtParentId.Properties.ReadOnly := true;
    qyHed.Edit;
    qyWareEmp.Edit;
    if (tv.Selected <> nil) then
      tv.Selected.EditText;
    cxdbEdtName.SetFocus;
  except
  end;
end;

procedure TWareFM.btSaveClick(Sender: TObject);
begin
  try
    if varIsNull(qyHed.FieldByName('WareId').AsString) then
    begin
      if varIsNull(tv.DBTreeNodes.MaxKeyFieldValue) then
        qyHed.FieldByName('WareId').AsInteger := 0;
      qyHed.FieldByName('WareId').AsInteger := tv.DBTreeNodes.MaxKeyFieldValue + 1;
    end;
    if cxdbEdtCode.Text = '' then
    begin
      showbox('代号不能为空');
      exit;
    end;
    qyHed.UpdateBatch();
    qyWareEmp.UpdateBatch();
    showbox('保存成功！');
    TextReadOnly(Self, true);
    inherited;
  except
    on E: Exception do
    begin
      if pos('该列不允许空值', E.Message) > 0 then
        showbox('请将必须的内容填写完整');
      if pos('插入重复键', E.Message) > 0 then
      begin
        ShowWarn('可能代号重复，这是不允许的！');
        exit;
      end;
    end;
  end;
end;

procedure TWareFM.cxdbEdtIdPropertiesChange(Sender: TObject);
begin
  inherited;
  with qyWareEmp do
  begin
    if Active then
      Close;
    sql.Clear;
    sql.Add('select * from WareEmpTB where WareId=' + QuotedStr(Trim(cxdbEdtId.Text)));
    Open;
  end;
end;

procedure TWareFM.cxgrdtbvEmpCodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  i: Integer;
begin
  if btSave.Enabled = False then
    exit;
  try
    EmpQFM := TEmpQFM.Create(nil);
    EmpQFM.iSelectKind := 1;
    EmpQFM.btFindClick(Sender);
    EmpQFM.ShowModal;
    if EmpQFM.bHasSelect then
    begin
      EmpQFM.qyFind.Filter := ' bSelect=1';
      EmpQFM.qyFind.Filtered := true;
      EmpQFM.qyFind.First;
      for i := 0 to EmpQFM.qyFind.RecordCount - 1 do
      begin
        if i = 0 then
          qyWareEmp.Edit
        else
          qyWareEmp.Append;
        qyWareEmp.FieldByName('EmpId').AsString := EmpQFM.qyFind.FieldByName('EmpId').AsString;
        qyWareEmp.FieldByName('EmpCode').AsString := EmpQFM.qyFind.FieldByName('EmpCode').AsString;
        qyWareEmp.post;
        EmpQFM.qyFind.Next;
      end;
    end;
  finally
    EmpQFM.Free;
    EmpQFM := nil;
  end;
end;

procedure TWareFM.GetWareId(InId: string; iFlag: Integer);
begin
  try
    try
      with DataFM.spTemp do
      begin
        if Active then
          Close;
        Parameters.Clear;
        Procedurename := 'PrGetWareId;1';
        Parameters.AddParameter.Name := '@InId';
        Parameters[0].Direction := pdInPut;
        Parameters[0].DataType := ftString;
        Parameters[0].Size := 50;
        Parameters[0].Value := InId;
        Parameters.AddParameter.Name := '@iFlag';
        Parameters[1].Direction := pdInPut;
        Parameters[1].DataType := ftString;
        Parameters[1].Size := 20;
        Parameters[1].Value := iFlag;
        Parameters.AddParameter.Name := '@ParentId';
        Parameters[2].Direction := pdOutPut;
        Parameters[2].DataType := ftString;
        Parameters[2].Size := 20;
        Parameters.AddParameter.Name := '@OutId';
        Parameters[3].Direction := pdOutPut;
        Parameters[3].DataType := ftString;
        Parameters[3].Size := 20;
        execproc;
      end;
      if qyHed.State = dsBrowse then
        qyHed.Edit;
      qyHed.FieldByName('ParentId').AsString := DataFM.spTemp.Parameters[2].Value;
      qyHed.FieldByName('WareCode').AsString := DataFM.spTemp.Parameters[3].Value;
      qyHed.FieldByName('WareId').AsString := DataFM.spTemp.Parameters[3].Value;

    finally
      DataFM.spTemp.Close;
    end;
  except
    on E: Exception do
      showMessage(E.Message);
  end;
end;

procedure TWareFM.qyHedAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cbbWareKind.ItemIndex := 1;
end;

procedure TWareFM.qyHedCalcFields(DataSet: TDataSet);
begin
  CalcField(qyHed, DataFM.qyWare, ['ParentId', 'ParentName'], ['WareId', 'WareName']);
end;

procedure TWareFM.qyWareEmpCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyWareEmp, DataFM.qyEmp, ['EmpId', 'EmpName'], ['EmpId', 'EmpName']);
end;

procedure TWareFM.qyWareEmpNewRecord(DataSet: TDataSet);
begin
  inherited;
  qyWareEmp.FieldByName('WareId').AsString := cxdbEdtId.Text;
end;

procedure TWareFM.tvCustomDraw(Sender: TObject; TreeNode: TTreeNode; AFont: TFont; var AColor, ABkColor: TColor);
begin
  if (TreeNode.Index mod 2 = 0) then
    AColor := $00F14552
  else
    AColor := $005158E6;
end;

procedure TWareFM.FormCreate(Sender: TObject);
begin
  sFMId := 'WareFM';
  sFMName := Self.Caption;
  inherited;
  qyHed.Open;
  qyWareEmp.Open;
  tv.DisplayField := 'WareId;WareName';
end;

procedure TWareFM.FormDestroy(Sender: TObject);
begin
  WareFM := nil;
end;

procedure TWareFM.FormShow(Sender: TObject);
begin
  inherited;
  tv.FullExpand;
  cxgrdtbv.OptionsView.NoDataToDisplayInfoText := sGridNoDataInfoText;
end;

end.
