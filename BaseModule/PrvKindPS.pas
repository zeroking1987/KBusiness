unit PrvKindPS;

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
  frxClass, frxDBSet, Menus, cxButtons, cxButtonEdit, Mask, cxMaskEdit,
  cxDropDownEdit, dxSkinOffice2010Blue, dxSkinDevExpressStyle, dxSkinSpringTime,
  dxSkinValentine, cxLabel;

type
  TPrvKindFM = class(TBaseFM)
    pnlLeft: TPanel;
    pnlEdit: TPanel;
    pnlGest: TPanel;
    tv: TdxDBTreeView;
    cxdbEdtId: TcxDBTextEdit;
    cxdbEdtCode: TcxDBTextEdit;
    cxdbEdtName: TcxDBTextEdit;
    cxdbEdtParentId: TcxDBTextEdit;
    cxdbMoRemark: TcxDBMemo;
    lbl6: TLabel;
    pnlTitle: TPanel;
    frxHed: TfrxDBDataset;
    lbl7: TLabel;
    cbbPrvParam: TcxDBComboBox;
    qyHedAutoId: TAutoIncField;
    strngfldHedPrvKindId: TStringField;
    strngfldHedPrvKindCode: TStringField;
    strngfldHedPrvKindName: TStringField;
    strngfldHedParentId: TStringField;
    strngfldHedPrvParam: TStringField;
    strngfldHedRemark: TStringField;
    strngfldHedParentName: TStringField;
    labTitle: TLabel;
    cxlbl1: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btAddLClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btDelClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure GetPrvKindId(InId: string; iFlag: Integer);
    procedure btCancelClick(Sender: TObject);
    procedure tvCustomDraw(Sender: TObject; TreeNode: TTreeNode; AFont: TFont; var AColor, ABkColor: TColor);
    procedure qyHedCalcFields(DataSet: TDataSet);
    procedure qyHedAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PrvKindFM: TPrvKindFM;

implementation

uses MainPS, PublicPS, DataPS;
{$R *.dfm}

procedure TPrvKindFM.btAddClick(Sender: TObject);
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
    GetPrvKindId(sId, 2);
    cxdbEdtName.SetFocus;
  except
  end;
end;

procedure TPrvKindFM.btAddLClick(Sender: TObject);
var
  sId: string;
begin
  try
    if tv.Selected.IsFirstNode then
    begin
      showbox('根目录不能添加同级节点');
      exit;
    end;
    sId := '';
    TextReadOnly(Self, False);
    cxdbEdtId.Properties.ReadOnly := true;
    cxdbEdtParentId.Properties.ReadOnly := true;
    sId := tv.GetKeyField.Text;
    qyHed.Append;
    GetPrvKindId(sId, 1);
  except
    showbox('添加失败');
  end;
end;

procedure TPrvKindFM.btCancelClick(Sender: TObject);
begin
  qyHed.CancelBatch();
  TextReadOnly(Self, true);
  inherited;
end;

procedure TPrvKindFM.btDelClick(Sender: TObject);
begin
  try
    inherited;
    if qyHed.FieldByName('PrvKindId').AsString = '00' then Exit;
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

procedure TPrvKindFM.btEditClick(Sender: TObject);
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

procedure TPrvKindFM.btSaveClick(Sender: TObject);
begin
  try
    if varIsNull(qyHed.FieldByName('PrvKindId').AsString) then
    begin
      if varIsNull(tv.DBTreeNodes.MaxKeyFieldValue) then
        qyHed.FieldByName('PrvKindId').AsInteger := 0;
      qyHed.FieldByName('PrvKindId').AsInteger := tv.DBTreeNodes.MaxKeyFieldValue + 1;
    end;
    if cxdbEdtCode.Text = '' then
    begin
      showbox('代号不能为空');
      exit;
    end;
    qyHed.UpdateBatch();
    showbox('保存成功！');
    TextReadOnly(Self, true);
    inherited;
  except
    on E: Exception do
    begin
      if (pos('该列不允许空值', E.Message) > 0) or (pos('不能将值NULL插入列', E.Message) > 0) then
        showbox('有内容为必填项')
      else if pos('插入重复键', E.Message) > 0 then
      begin
        ShowWarn('可能代号重复，这是不允许的！');
        exit;
      end;
    end;
  end;
end;

procedure TPrvKindFM.GetPrvKindId(InId: string; iFlag: Integer);
begin
  try
    try
      with DataFM.spTemp do
      begin
        if Active then
          Close;
        Parameters.Clear;
        Procedurename := 'PrGetPrvId;1';
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
      qyHed.FieldByName('PrvKindCode').AsString := DataFM.spTemp.Parameters[3].Value;
      qyHed.FieldByName('PrvKindId').AsString := DataFM.spTemp.Parameters[3].Value;
    finally
      DataFM.spTemp.Close;
    end;
  except
    on E: Exception do
      showMessage(E.Message);
  end;
end;

procedure TPrvKindFM.qyHedAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyHed.FieldByName('PrvParam').AsString := '供应商';
end;

procedure TPrvKindFM.qyHedCalcFields(DataSet: TDataSet);
begin
  CalcField(qyHed, DataFM.qyPrvKind, ['ParentId', 'ParentName'], ['PrvKindId', 'PrvKindName']);
end;

procedure TPrvKindFM.tvCustomDraw(Sender: TObject; TreeNode: TTreeNode; AFont: TFont; var AColor, ABkColor: TColor);
begin
  if (TreeNode.Index mod 2 = 0) then
    AColor := $00F14552
  else
    AColor := $005158E6;
end;

procedure TPrvKindFM.FormCreate(Sender: TObject);
begin
  sFMId := 'PrvKindFM';
  sFMName := Self.Caption;
  inherited;
  qyHed.Open;
  tv.DisplayField := 'PrvKindId;PrvKindName';
end;

procedure TPrvKindFM.FormDestroy(Sender: TObject);
begin
  PrvKindFM := nil;
end;

procedure TPrvKindFM.FormShow(Sender: TObject);
begin
  inherited;
  tv.FullExpand;
end;

end.
