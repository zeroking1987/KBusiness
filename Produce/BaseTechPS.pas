unit BaseTechPS;

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
  Mask, dxSkinOffice2010Blue, cxLabel, dxSkinDevExpressStyle, dxSkinSpringTime,
  dxSkinValentine;

type
  TBaseTechFM = class(TBaseFM)
    pnlLeft: TPanel;
    pnlEdit: TPanel;
    pnlGest: TPanel;
    tv: TdxDBTreeView;
    cxdbEdtId: TcxDBTextEdit;
    cxdbEdtName: TcxDBTextEdit;
    cxdbEdtParentId: TcxDBTextEdit;
    cxdbMoRemark: TcxDBMemo;
    pnlTitle: TPanel;
    frxHed: TfrxDBDataset;
    labTitle: TLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    qyHedAutoID: TAutoIncField;
    qyHedTechId: TStringField;
    qyHedTechCode: TStringField;
    qyHedTechName: TStringField;
    qyHedOrdinal: TSmallintField;
    qyHedParentID: TStringField;
    qyHedTechParam: TStringField;
    qyHedDeptId: TStringField;
    qyHedDeptName: TStringField;
    qyHedRemark: TStringField;
    cxLabel7: TcxLabel;
    cxDBComboBox1: TcxDBComboBox;
    cxLabel8: TcxLabel;
    cxDept: TcxDBButtonEdit;
    qyHedParentTechName: TStringField;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    qyHedbSelect: TBooleanField;
    qyHedCurePrice: TFMTBCDField;
    qyHedSpoilPrice: TFMTBCDField;
    qyHedWastePrice: TFMTBCDField;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btDelClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);

    procedure btCancelClick(Sender: TObject);
    procedure tvCustomDraw(Sender: TObject; TreeNode: TTreeNode; AFont: TFont; var AColor, ABkColor: TColor);
    procedure qyHedCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cxDeptPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BaseTechFM: TBaseTechFM;

implementation

uses MainPS, PublicPS, DataPS, DeptQPS;
{$R *.dfm}

procedure TBaseTechFM.btAddClick(Sender: TObject);
var
  sId: string;
begin
  try
    sId := '';
    sId := tv.GetKeyField.Text;
    inherited;
    cxdbEdtId.Properties.ReadOnly := true;
    cxdbEdtParentId.Properties.ReadOnly := true;
    qyHed.Append;
    qyHed.Edit;
    qyHed.FieldByName('ParentId').AsString := sId;
    qyHed.FieldByName('TechId').AsString := GetTrvId(sTableId, sId, 2);
    qyHed.Edit;
    qyHed.FieldByName('TechCode').AsString := GetTrvId(sTableId, sId, 2);
    cxdbEdtName.SetFocus;
  except
  end;
end;

procedure TBaseTechFM.btCancelClick(Sender: TObject);
begin
  qyHed.CancelBatch();
  TextReadOnly(Self, true);
  inherited;
end;

procedure TBaseTechFM.btDelClick(Sender: TObject);
begin
  try
    inherited;
    if qyHed.FieldByName('TechId').AsString = '00' then Exit;
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

procedure TBaseTechFM.btEditClick(Sender: TObject);
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

procedure TBaseTechFM.btSaveClick(Sender: TObject);
begin
  try
    if varIsNull(qyHed.FieldByName('TechId').AsString) then
    begin
      if varIsNull(tv.DBTreeNodes.MaxKeyFieldValue) then
        qyHed.FieldByName('TechId').AsInteger := 0;
      qyHed.FieldByName('TechId').AsInteger := tv.DBTreeNodes.MaxKeyFieldValue + 1;
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



procedure TBaseTechFM.cxDeptPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  try
    if btSave.Enabled = False then Exit;
    try
      DeptQFM := TDeptQFM.Create(nil);
      DeptQFM.iSelectKind := 2;
      DeptQFM.ShowModal;
      if qyHed.State = dsBrowse then qyHed.Edit;
      qyHed.FieldByName('DeptId').AsString := DeptQFM.sId;
      qyHed.FieldByName('DeptName').AsString := DeptQFM.sName;
    finally
      DeptQFM.Free;
      DeptQFM := nil;
    end;
  except
  end;
end;

procedure TBaseTechFM.qyHedCalcFields(DataSet: TDataSet);
begin
  CalcField(qyHed, DataFM.qyBaseTech, ['ParentId', 'ParentTechName'], ['TechId', 'TechName']);
end;

procedure TBaseTechFM.tvCustomDraw(Sender: TObject; TreeNode: TTreeNode; AFont: TFont; var AColor, ABkColor: TColor);
begin
  if (TreeNode.Index mod 2 = 0) then
    AColor := $00F14552
  else
    AColor := $005158E6;
end;

procedure TBaseTechFM.FormCreate(Sender: TObject);
begin
  sFMId := 'BaseTechFM';
  sFMName := Self.Caption;
  sTableId := 'BaseTechTB';
  inherited;
  qyHed.Open;
  tv.DisplayField := 'TechCode;TechName';
end;

procedure TBaseTechFM.FormDestroy(Sender: TObject);
begin
  BaseTechFM := nil;
end;

procedure TBaseTechFM.FormShow(Sender: TObject);
begin
  inherited;
  tv.FullExpand;
end;

end.
