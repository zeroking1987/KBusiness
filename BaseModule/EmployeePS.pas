unit EmployeePS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Base1PS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, ADODB, dxBar,
  cxClasses, ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  cxPC, cxContainer, cxTextEdit, cxDBEdit, cxMemo, cxDropDownEdit, cxMaskEdit,
  cxButtonEdit, Menus, cxButtons, ComCtrls, dxtree, dxdbtree,
  cxGridCustomPopupMenu, cxGridPopupMenu, frxClass, frxDBSet, cxCalendar, cxLabel, cxGroupBox,
  cxRadioGroup, cxSplitter, cxPCdxBarPopupMenu, dxSkinOffice2010Blue,
  cxGridCardView, cxGridDBCardView, cxGridCustomLayoutView, cxImageComboBox,
  Vcl.ImgList, dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine,
  cxNavigator, dxBarBuiltInMenu;

type
  TEmployeeFM = class(TBase1FM)
    pnlEdit: TPanel;
    cxPgc1: TcxPageControl;
    cxtbsht1: TcxTabSheet;
    lbl1: TLabel;
    cxdbEmpId: TcxDBTextEdit;
    lbl2: TLabel;
    cxdbEdt1: TcxDBTextEdit;
    lbl3: TLabel;
    cxEdtEmpName: TcxDBTextEdit;
    lbl4: TLabel;
    cxdbEdt3: TcxDBTextEdit;
    lbl5: TLabel;
    cxdbEdt4: TcxDBTextEdit;
    lbl6: TLabel;
    cxdbEdt5: TcxDBTextEdit;
    lbl7: TLabel;
    cxDept: TcxDBButtonEdit;
    lbl9: TLabel;
    lbl10: TLabel;
    cxdbEdt6: TcxDBTextEdit;
    lbl11: TLabel;
    cxdbEdt7: TcxDBTextEdit;
    lbl12: TLabel;
    lbl13: TLabel;
    cbb2: TcxDBComboBox;
    lbl18: TLabel;
    cxdbMo1: TcxDBMemo;
    tv: TdxDBTreeView;
    pnl2: TPanel;
    dsDept: TDataSource;
    qyDept: TADOQuery;
    qyDeptAutoId: TAutoIncField;
    strngfldPrvKindParentId: TStringField;
    strngfldPrvKindRemark: TStringField;
    lbl19: TLabel;
    cxEmp: TcxTextEdit;
    frxdtHed: TfrxDBDataset;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    qyDeptDeptId: TStringField;
    qyDeptDeptCode: TStringField;
    qyDeptDeptName: TStringField;
    qyDeptPrincipal: TStringField;
    qyHedAutoID: TAutoIncField;
    qyHedEmpId: TStringField;
    qyHedEmpCode: TStringField;
    qyHedEmpName: TStringField;
    qyHedEmpSex: TStringField;
    qyHedBirthDay: TDateTimeField;
    qyHedNativePlace: TStringField;
    qyHedIdCard: TStringField;
    qyHedAddress: TStringField;
    qyHedMobile: TStringField;
    qyHedTel: TStringField;
    qyHedEducate: TStringField;
    qyHedNation: TStringField;
    qyHedPhotoPath: TStringField;
    qyHedPhotoName: TStringField;
    qyHedDeptID: TStringField;
    qyHedZtNo: TStringField;
    qyHedEmpDuty: TStringField;
    qyHedbMarry: TBooleanField;
    qyHedInDate: TDateTimeField;
    qyHedOutDate: TDateTimeField;
    qyHedMakeDate: TDateTimeField;
    qyHedMakeMan: TStringField;
    qyHedMakeManName: TStringField;
    qyHedRemark: TStringField;
    cxDBDateEdit1: TcxDBDateEdit;
    Label4: TLabel;
    Label6: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    qyHedDeptName: TStringField;
    cxgrdtbvEmpId: TcxGridDBColumn;
    cxgrdtbvEmpCode: TcxGridDBColumn;
    cxgrdtbvEmpName: TcxGridDBColumn;
    cxgrdtbvEmpSex: TcxGridDBColumn;
    cxgrdtbvNativePlace: TcxGridDBColumn;
    cxgrdtbvIdCard: TcxGridDBColumn;
    cxgrdtbvAddress: TcxGridDBColumn;
    cxgrdtbvMobile: TcxGridDBColumn;
    cxgrdtbvTel: TcxGridDBColumn;
    cxgrdtbvEducate: TcxGridDBColumn;
    cxgrdtbvRemark: TcxGridDBColumn;
    cxgrdtbvDeptName: TcxGridDBColumn;
    cxRgp1: TcxDBRadioGroup;
    qyHediState: TSmallintField;
    btn1: TcxButton;
    cxspltr1: TcxSplitter;
    Label5: TLabel;
    cxEdt1: TcxDBTextEdit;
    blnfldHedbSelect: TBooleanField;
    qyHedPYCode: TStringField;
    cxgrdtbvColumn1: TcxGridDBColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    cxgrdDBCardView1: TcxGridDBCardView;
    cxgrdDBCardView1EmpCode: TcxGridDBCardViewRow;
    cxgrdDBCardView1EmpName: TcxGridDBCardViewRow;
    cxgrdDBCardView1EmpSex: TcxGridDBCardViewRow;
    cxgrdDBCardView1Mobile: TcxGridDBCardViewRow;
    cxgrdDBCardView1DeptName: TcxGridDBCardViewRow;
    cxRgpShowStyle: TcxRadioGroup;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxImageList1: TcxImageList;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure tvCustomDraw(Sender: TObject; TreeNode: TTreeNode; AFont: TFont; var AColor, ABkColor: TColor);
    procedure btSaveClick(Sender: TObject);
    procedure qyHedCalcFields(DataSet: TDataSet);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btn1Click(Sender: TObject);
    procedure tvClick(Sender: TObject);
    procedure btAddLClick(Sender: TObject);
    procedure btDelLClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qyHedAfterInsert(DataSet: TDataSet);
    procedure qyHedEmpNameChange(Sender: TField);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure qyHedAfterScroll(DataSet: TDataSet);
    procedure cxEmpPropertiesChange(Sender: TObject);
    procedure cxRgpShowStylePropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmployeeFM: TEmployeeFM;

implementation

uses DataPS, PublicPS, DeptQPS, IMCode;
{$R *.dfm}

procedure TEmployeeFM.btAddClick(Sender: TObject);
begin
  try
    inherited;
    pnlEdit.Visible := true;
    TextReadOnly(Self, False);
    cxdbEmpId.Properties.ReadOnly := true;
    qyHed.Append;
    cxEdtEmpName.SetFocus;
    // 顺序换了会报错
    qyHed.FieldByName('EmpId').AsString := GetFiveNo('EmployeeTB', 'EmpId');
    qyHed.FieldByName('EmpCode').AsString := GetFiveNo('EmployeeTB', 'EmpId');
    if qyDept.FieldByName('DeptId').AsString <> '00' then
      qyHed.FieldByName('DeptId').AsString := qyDept.FieldByName('DeptId').AsString;
  except
  end;
end;

procedure TEmployeeFM.btAddLClick(Sender: TObject);
begin
  try
    qyHed.Append;
  except
  end;
end;

procedure TEmployeeFM.btCancelClick(Sender: TObject);
begin
  try
    qyHed.CancelBatch();
    inherited;
    pnlEdit.Visible := False;
    TextReadOnly(Self, true);
  except
  end;
end;

procedure TEmployeeFM.btDelLClick(Sender: TObject);
begin
  try
    qyHed.Delete;
  except
    ShowBox('删除失败！');
  end;
end;

procedure TEmployeeFM.btEditClick(Sender: TObject);
begin
  try
    inherited;
    pnlEdit.Visible := true;
    TextReadOnly(Self, False);
    cxdbEmpId.Properties.ReadOnly := true;
    qyHed.Edit;
  except
  end;
end;

procedure TEmployeeFM.btn1Click(Sender: TObject);
begin
  if btn1.Caption = '完 成' then
  begin
    if btSave.Enabled = true then
    begin
      ShowBox('还没有保存！');
      Exit;
    end;
    pnlEdit.Visible := False;
    TextReadOnly(Self, true);
    btn1.Caption := '浏 览';
  end
  else if btn1.Caption = '浏 览' then
  begin
    try
      pnlEdit.Visible := not (pnlEdit.Visible);
      TextReadOnly(Self, true);
      btn1.Caption := '完 成';
    except
    end;
  end;
end;

procedure TEmployeeFM.btSaveClick(Sender: TObject);
begin
  try
    if cxEdtEmpName.text = '' then
    begin
      ShowBox('请先填写姓名！');
      Exit;
    end;
    qyHed.Filter := '';
    qyHed.Filtered := False;
    qyHed.UpdateBatch();
    ShowBox('保存成功！');
    TextReadOnly(Self, true);
    inherited;
  except
    on E: Exception do
    begin
      if (pos('该列不允许空值', E.Message) > 0) or (pos('不能将值', E.Message) > 0) then
        ShowBox('有内容为必填项')
      else if pos('插入重复键', E.Message) > 0 then
        ShowBox('插入重复值，请重新填写！')
      else
        ShowBox('保存失败！');
    end
  end;
end;

procedure TEmployeeFM.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  try
    if btSave.Enabled = False then Exit;
    try
      DeptQFM := TDeptQFM.Create(nil);
      DeptQFM.iSelectKind := 2;
      DeptQFM.ShowModal;
      if qyHed.State = dsBrowse then qyHed.Edit;
      qyHed.FieldByName('DeptId').AsString := DeptQFM.sId;
    finally
      DeptQFM.Free;
      DeptQFM := nil;
    end;
  except
  end;
end;

procedure TEmployeeFM.cxEmpPropertiesChange(Sender: TObject);
begin
  inherited;
  with qyHed do
  begin
    if Active then close;
    SQL.Clear;
    SQL.Add('select * from EmployeeTB where PYCode like ''%' + trim(cxEmp.text) + '%'' or EmpCode like ''%' + trim(cxEmp.text) + '%'' or EmpName like ''%' + trim(cxEmp.text) + '%'' or PYCode like ''%' + trim(cxEmp.text) + '%''');
    Open;
  end;
end;

procedure TEmployeeFM.cxRgpShowStylePropertiesChange(Sender: TObject);
begin
  inherited;
  if cxRgpShowStyle.ItemIndex = 0 then
    cxgrdlev.GridView := cxgrdtbv
  else
    cxgrdlev.GridView := cxgrdDBCardView1;
end;

procedure TEmployeeFM.dxBarButton1Click(Sender: TObject);
begin
  inherited;
  CxExport(cxgrd, cxlabTitle.Caption);
end;

procedure TEmployeeFM.dxBarButton2Click(Sender: TObject);
begin
  inherited;
  ImportFromExcel('员工资料', DataFM.DlgOpen1);
  with qyHed do
  begin
    if Active then Close;
    SQL.Clear;
    SQL.Add('select * from EmployeeTB ');
    Open;
  end;
end;

procedure TEmployeeFM.FormCreate(Sender: TObject);
begin
  sFMId := 'EmployeeFM';
  sFMName := Self.Caption;
  inherited;
  tvExpand(tv, dsDept, 'DeptId', 'DeptName', 'ParentId');
  qyHed.Open;
end;

procedure TEmployeeFM.FormDestroy(Sender: TObject);
begin
  inherited;
  EmployeeFM := nil;
end;

procedure TEmployeeFM.FormShow(Sender: TObject);
begin
  inherited;
  tv.FullExpand;
end;

procedure TEmployeeFM.qyHedAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qyHed.FieldByName('iState').AsInteger := 0
end;

procedure TEmployeeFM.qyHedAfterScroll(DataSet: TDataSet);
begin
  inherited;
  ShowRecordCount(DataSet);
end;

procedure TEmployeeFM.qyHedCalcFields(DataSet: TDataSet);
begin
  try
    CalcField(qyHed, DataFM.qyDept, ['DeptId', 'DeptName'], ['DeptId', 'DeptName']);
  except
  end;
end;

procedure TEmployeeFM.qyHedEmpNameChange(Sender: TField);
begin
  inherited;
  if btSave.Enabled = False then
    Exit;
  if qyHed.State = dsBrowse then
    qyHed.Edit;
  qyHed.FieldByName('PYCode').AsString := MakeSpellCode(trim(cxEdtEmpName.text), 4, 255);
end;

procedure TEmployeeFM.tvClick(Sender: TObject);
begin
  try
    if tv.Selected.IsFirstNode then
      qyHed.Filter := ''
        // 如果选择的是根节点就不过滤
    else
    begin
      qyHed.Filter := 'DeptId like ''' + qyDept.FieldByName('DeptId').AsString + '%''';
      qyHed.Filtered := true;
    end;
  except
  end;
end;

procedure TEmployeeFM.tvCustomDraw(Sender: TObject; TreeNode: TTreeNode; AFont: TFont; var AColor, ABkColor: TColor);
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
