unit ProTypePS;

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
  frxClass, frxDBSet, Menus, cxButtons, cxButtonEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxDBLookupComboBox,
  Mask, dxSkinOffice2010Blue;

type
  TProTypeFM = class(TBaseFM)
    pnlLeft: TPanel;
    pnlEdit: TPanel;
    pnlGest: TPanel;
    tv: TdxDBTreeView;
    lbl1: TLabel;
    cxdbEdtId: TcxDBTextEdit;
    lbl3: TLabel;
    cxdbEdtName: TcxDBTextEdit;
    lbl4: TLabel;
    cxdbEdtParentId: TcxDBTextEdit;
    lbl5: TLabel;
    cxdbMoRemark: TcxDBMemo;
    pnlTitle: TPanel;
    frxHed: TfrxDBDataset;
    lbl7: TLabel;
    labTitle: TLabel;
    qyHedAutoId: TAutoIncField;
    blnfldHedbSelect: TBooleanField;
    qyHedTypeId: TStringField;
    qyHedTypeName: TStringField;
    qyHedTypeKind: TStringField;
    qyHedParentId: TStringField;
    qyHedRemark: TStringField;
    qyHedParentName: TStringField;
    procedure btExitClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btAddLClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btDelClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);

    procedure btCancelClick(Sender: TObject);
    procedure tvCustomDraw(Sender: TObject; TreeNode: TTreeNode; AFont: TFont; var AColor, ABkColor: TColor);
    procedure qyHedCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
    procedure GetTypeId(InId: string; iFlag: Integer);
  public
    {Public declarations}
  end;

var
  ProTypeFM: TProTypeFM;

implementation

uses MainPS, PublicPS, DataPS;
{$R *.dfm}

procedure TProTypeFM.btAddClick(Sender: TObject);
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
    GetTypeId(sId, 2);
    cxdbEdtName.SetFocus;
  except
  end;
end;

procedure TProTypeFM.btAddLClick(Sender: TObject);
var
  sId: string;
begin
  try
    if tv.Selected.IsFirstNode then
    begin
      ShowWarn('根目录不能添加同级节点');
      exit;
    end;
    sId := '';
    TextReadOnly(Self, False);
    cxdbEdtId.Properties.ReadOnly := true;
    cxdbEdtParentId.Properties.ReadOnly := true;
    sId := tv.GetKeyField.Text;
    qyHed.Append;
    GetTypeId(sId, 1);
  except
    ShowError('添加失败');
  end;
end;

procedure TProTypeFM.btCancelClick(Sender: TObject);
begin
  qyHed.CancelBatch();
  TextReadOnly(Self, true);
  inherited;
end;

procedure TProTypeFM.btDelClick(Sender: TObject);
begin
  try
    inherited;
    if qyHed.FieldByName('TypeId').AsString = '00' then Exit;
    if (tv.Selected <> nil) then
    begin
      if tv.Selected.GetLastChild <> nil then
      begin
        ShowWarn('还有下级数据，不能删除？');
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

procedure TProTypeFM.btEditClick(Sender: TObject);
begin
  try
    inherited;
    cxdbEdtId.Properties.ReadOnly := true;
    cxdbEdtParentId.Properties.ReadOnly := true;
    qyHed.Edit;
    if (tv.Selected <> nil) then
      tv.Selected.EditText;
    cxdbEdtName.SetFocus;
  except
  end;
end;

procedure TProTypeFM.btExitClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TProTypeFM.btSaveClick(Sender: TObject);
begin

  try
    if varIsNull(qyHed.FieldByName('TypeId').AsString) then
    begin
      if varIsNull(tv.DBTreeNodes.MaxKeyFieldValue) then
        qyHed.FieldByName('TypeId').AsInteger := 0;
      qyHed.FieldByName('TypeId').AsInteger := tv.DBTreeNodes.MaxKeyFieldValue + 1;
    end;
    if cxdbEdtName.Text = '' then
    begin
      showbox('名称不能为空');
      exit;
    end;
    qyHed.UpdateBatch();
    showbox('保存成功！');
    TextReadOnly(Self, true);
    inherited;
  except
    on E: Exception do
    begin
      if pos('该列不允许空值', E.Message) > 0 then
        ShowError('请将必须的内容填写完整');
      if pos('插入重复键', E.Message) > 0 then
      begin
        ShowError('可能编号重复，这是不允许的！');
        exit;
      end;
    end;
  end;
end;

procedure TProTypeFM.GetTypeId(InId: string; iFlag: Integer);
begin
  try
    try
      with DataFM.spTemp do
      begin
        if Active then
          Close;
        Parameters.Clear;
        Procedurename := 'PrGetTypeId;1';
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
      qyHed.FieldByName('TypeId').AsString := DataFM.spTemp.Parameters[3].Value;

    finally
      DataFM.spTemp.Close;
    end;
  except
    on E: Exception do
      ShowError(E.Message);
  end;
end;

procedure TProTypeFM.qyHedCalcFields(DataSet: TDataSet);
begin
  CalcField(qyHed, DataFM.qyType, ['ParentId', 'ParentName'], ['TypeId', 'TypeName']);
end;

procedure TProTypeFM.tvCustomDraw(Sender: TObject; TreeNode: TTreeNode; AFont: TFont; var AColor, ABkColor: TColor);
begin
  if (TreeNode.Index mod 2 = 0) then
    AColor := $00F14552
  else
    AColor := $005158E6;
end;

procedure TProTypeFM.FormCreate(Sender: TObject);
begin
  sFMId := 'ProTypeFM';
  sFMName := Self.Caption;
  inherited;
  qyHed.Open;
  tv.DisplayField := 'TypeId;TypeName';
end;

procedure TProTypeFM.FormDestroy(Sender: TObject);
begin
  ProTypeFM := nil;
end;

procedure TProTypeFM.FormShow(Sender: TObject);
begin
  inherited;
  tv.FullExpand;
end;

end.
