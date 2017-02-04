unit EmpQPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsdxBarPainter, dxSkinsDefaultPainters, dxBar, cxClasses,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxMaskEdit,
  cxDropDownEdit, cxTextEdit, StdCtrls, ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomTableView, StrUtils,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, ComCtrls, dxtree, dxdbtree, ADODB,
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Menus, cxButtons,
  dxSkinOffice2010Blue, dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine;

type
  TEmpQFM = class(TForm)
    PupBpm: TdxBarPopupMenu;
    dxbrmngrBarManage: TdxBarManager;
    dxbrBarMang: TdxBar;
    btAllSelect: TdxBarLargeButton;
    btUnSelect: TdxBarLargeButton;
    btExit: TdxBarLargeButton;
    btOk: TdxBarLargeButton;
    btLeft: TdxBarLargeButton;
    btRight: TdxBarLargeButton;
    btFirst: TdxBarLargeButton;
    btLast: TdxBarLargeButton;
    btFind: TdxBarLargeButton;
    pnlFind: TPanel;
    lbl2: TLabel;
    cxEdtValue: TcxTextEdit;
    tv: TdxDBTreeView;
    cxgrd: TcxGrid;
    cxgrdtbv: TcxGridDBTableView;
    cxgrdlev: TcxGridLevel;
    qyHed: TADOQuery;
    dsHed: TDataSource;
    qyFind: TADOQuery;
    dsFind: TDataSource;
    qyFindEmpId: TStringField;
    qyFindEmpCode: TStringField;
    qyFindEmpName: TStringField;
    qyFindDeptID: TStringField;
    qyFindDeptName: TStringField;
    qyFindEmpSex: TStringField;
    qyFindEmpDuty: TStringField;
    cxgrdbclmnSelect: TcxGridDBColumn;
    cxgrdtbvEmpId: TcxGridDBColumn;
    cxgrdtbvEmpCode: TcxGridDBColumn;
    cxgrdtbvEmpName: TcxGridDBColumn;
    cxgrdtbvDeptID: TcxGridDBColumn;
    cxgrdtbvDeptName: TcxGridDBColumn;
    cxgrdtbvEmpSex: TcxGridDBColumn;
    cxgrdtbvEmpDuty: TcxGridDBColumn;
    intgrfldHedAutoId: TIntegerField;
    blnfldHedbSelect: TBooleanField;
    qyHedDeptId: TStringField;
    qyHedDeptCode: TStringField;
    qyHedDeptName: TStringField;
    qyHedParentId: TStringField;
    qyHedPrincipal: TStringField;
    qyHedRemark: TStringField;
    blnfldFindbSelect: TBooleanField;
    procedure btExitClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btFirstClick(Sender: TObject);
    procedure btLeftClick(Sender: TObject);
    procedure btRightClick(Sender: TObject);
    procedure btLastClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tvClick(Sender: TObject);
    procedure tvCustomDraw(Sender: TObject; TreeNode: TTreeNode; AFont: TFont; var AColor, ABkColor: TColor);
    procedure btAllSelectClick(Sender: TObject);
    procedure btUnSelectClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure cxgrdtbvbSelectPropertiesChange(Sender: TObject);
    procedure cxEdtValueKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure cxgrdtbvDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    sWhere, sId, sName, sAllId, sAllName, sDeptId, sAllDeptId, sFieldName, sValue: string;
    iSelectKind: Integer;
    bHasSelect: Boolean;
    { Public declarations }
  end;

var
  EmpQFM: TEmpQFM;

implementation

uses PublicPS, DataPS;
{$R *.dfm}

procedure TEmpQFM.btAllSelectClick(Sender: TObject);
var
  i: Integer;
begin
  if iSelectKind = 2 then
  begin
    ShowBox('请单选！');
    Exit;
  end;
  qyFind.First;
  for i := 0 to qyFind.FieldCount - 1 do
  begin
    if qyFind.State = dsBrowse then
      qyFind.Edit;
    qyFind.FieldByName('bSelect').AsBoolean := true;
    qyFind.Next
  end;
end;

procedure TEmpQFM.btExitClick(Sender: TObject);
begin
  sId := '';
  sName := '';
  sAllId := '';
  sAllName := '';
  Close;
end;

procedure TEmpQFM.btFindClick(Sender: TObject);
begin
  sWhere := '';
  if cxEdtValue.text <> '' then
    sWhere := sWhere + ' and (a.EmpCode like ''%' + trim(cxEdtValue.text) + '%'' or a.EmpName like ''%' + trim(cxEdtValue.text)
      + '%'' )';
  with qyFind do
  begin
    if Active then
      Close;
    sql.Clear;
    sql.Add('select a.bSelect,a.EmpId,a.EmpCode,a.EmpName,a.DeptID,b.DeptName,a.EmpSex,a.EmpDuty ');
    sql.Add(' from EmployeeTB a left join DeptTB b on a.DeptID=b.DeptId');
    sql.Add(' where IsNull(a.iState,0)=0');
    sql.Add(sWhere);
    Open;
  end;
end;

procedure TEmpQFM.btFirstClick(Sender: TObject);
begin
  if qyFind.Active then
  begin
    qyFind.First;
    btLeft.Enabled := false;
    btRight.Enabled := true;
    btLast.Enabled := true;
  end;
end;

procedure TEmpQFM.btLastClick(Sender: TObject);
begin
  if qyFind.Active then
  begin
    qyFind.Last;
    btRight.Enabled := false;
    btLeft.Enabled := true;
    btFirst.Enabled := true;
  end;
end;

procedure TEmpQFM.btLeftClick(Sender: TObject);
begin
  if qyFind.Active then
  begin
    qyFind.Prior;
    if qyFind.Bof then
    begin
      btLeft.Enabled := false;
      btRight.Enabled := true;
      btLast.Enabled := true;
    end
    else
    begin
      btRight.Enabled := true;
    end;
  end;
end;

procedure TEmpQFM.btOkClick(Sender: TObject);
var
  i: Integer;
begin
  try
    bHasSelect := true;
    sId := '';
    sName := '';
    sAllId := '';
    sAllName := '';
    sDeptId := '';
    sAllDeptId := '';
    if iSelectKind = 2 then //单选
    begin
      sId := qyFind.FieldByName('EmpId').AsString; //单选取最后一个打勾的
      sName := qyFind.FieldByName('EmpName').AsString;
    end
    else
    begin
      qyFind.First;
      for i := 0 to qyFind.RecordCount - 1 do
      begin
        if qyFind.FieldByName('bSelect').AsBoolean then
        begin
          sId := qyFind.FieldByName('EmpId').AsString; // 单选取最后一个打勾的
          sDeptId := qyFind.FieldByName('DeptId').AsString;
          sName := qyFind.FieldByName('EmpName').AsString;
          sAllId := sAllId + qyFind.FieldByName('EmpId').AsString + ','; // 多选取所以打勾的并+','
          sAllDeptId := sAllDeptId + qyFind.FieldByName('DeptId').AsString + ',';
          sAllName := sAllName + qyFind.FieldByName('EmpName').AsString + ',';
        end;
        qyFind.Next;
      end;
      if sAllId <> '' then
        sAllId := LeftStr(sAllId, Length(sAllId) - 1); // 去除最后一个','
      if sAllName <> '' then
        sAllName := LeftStr(sAllName, Length(sAllName) - 1);
    end;
    Close;
  except
  end;
end;

procedure TEmpQFM.btRightClick(Sender: TObject);
begin
  if qyFind.Active then
  begin
    qyFind.Next;
    if qyFind.Eof then
    begin
      btRight.Enabled := false;
      btLeft.Enabled := true;
      btFirst.Enabled := true;
    end
    else
    begin
      btLeft.Enabled := true;
    end;
  end;
end;

procedure TEmpQFM.btUnSelectClick(Sender: TObject);
var
  i: Integer;
begin
  qyFind.First;
  for i := 0 to qyFind.FieldCount - 1 do
  begin
    if qyFind.State = dsBrowse then
      qyFind.Edit;
    qyFind.FieldByName('bSelect').AsBoolean := false;
    qyFind.Next
  end;
end;

procedure TEmpQFM.cxEdtValueKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btFindClick(Self);
end;

procedure TEmpQFM.cxgrdtbvbSelectPropertiesChange(Sender: TObject);
var
  i: Integer;
  sId: string;
begin
  if iSelectKind = 2 then
  begin
    sId := '';
    sId := qyFind.FieldByName('EmpId').AsString;
    qyFind.First;
    for i := 0 to qyFind.RecordCount - 1 do
    begin
      if qyFind.FieldByName('EmpId').AsString <> sId then
      begin
        if qyFind.State = dsBrowse then
          qyFind.Edit;
        qyFind.FieldByName('bSelect').AsBoolean := false;
      end;
      qyFind.Next;
    end;
    qyFind.Locate('EmpId', sId, []);
  end;
end;

procedure TEmpQFM.cxgrdtbvDblClick(Sender: TObject);
begin
  if iSelectKind = 2 then
  begin
    if qyFind.State = dsBrowse then qyFind.Edit;
    qyFind.FieldByName('bSelect').AsBoolean := true;
    btOkClick(Self);
  end;
end;

procedure TEmpQFM.FormCreate(Sender: TObject);
begin
  sId := '';
  sName := '';
  sAllId := '';
  sAllName := '';
  iSelectKind := 1; // 1表示多选，2表示单选
  tvExpand(tv, dsHed, 'DeptId', 'DeptName', 'ParentId');
  bHasSelect := false;
end;

procedure TEmpQFM.FormShow(Sender: TObject);
begin
  if iSelectKind = 2 then
  begin
    Self.Caption := Self.Caption + '(单选)';
    cxgrdbclmnSelect.Visible := true;
  end
  else
  begin
    Self.Caption := Self.Caption + '(可多选)';
    cxgrdbclmnSelect.Visible :=False;
  end;
  btFindClick(Sender);
end;

procedure TEmpQFM.tvClick(Sender: TObject);
begin
  try
    if tv.Selected.IsFirstNode then
      qyFind.Filter := ''
    else
    begin
      qyFind.Filter := 'DeptId like ''' + qyHed.FieldByName('DeptId').AsString + '%''';
      qyFind.Filtered := true;
    end;
  except
  end;
end;

procedure TEmpQFM.tvCustomDraw(Sender: TObject; TreeNode: TTreeNode; AFont: TFont; var AColor, ABkColor: TColor);
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
