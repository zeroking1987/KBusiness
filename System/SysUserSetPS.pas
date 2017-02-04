unit SysUserSetPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Base1PS, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxSkinsdxBarPainter, ADODB, dxBar,
  cxClasses, ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, cxDBEdit, StdCtrls, cxMemo, cxMaskEdit, cxButtonEdit,
  cxGridCustomPopupMenu, cxGridPopupMenu, Menus, dxSkinOffice2010Blue,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine, cxNavigator, cxLabel;

type
  TSysUserSetFM = class(TBase1FM)
    qyHedAutoId: TAutoIncField;
    strngfldHedUserID: TStringField;
    strngfldHedUserName: TStringField;
    strngfldHedUserPass: TStringField;
    strngfldHedEmpId: TStringField;
    qyHedMakeDate: TDateTimeField;
    qyHedLoginFlag: TBooleanField;
    strngfldHedRemark: TStringField;
    cxgrdtbvUserID: TcxGridDBColumn;
    cxgrdtbvUserName: TcxGridDBColumn;
    cxgrdtbvEmpId: TcxGridDBColumn;
    qyHedEmpCode: TStringField;
    pnl2: TPanel;
    pnl1: TPanel;
    Lablbl1: TLabel;
    Lablbl2: TLabel;
    Lablbl3: TLabel;
    Lablbl5: TLabel;
    cxdbEdt1: TcxDBTextEdit;
    cxdbEdtName: TcxDBTextEdit;
    cxdbEdt5: TcxDBTextEdit;
    btnEmpCode: TcxDBButtonEdit;
    procedure cxEmpCodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure qyHedCalcFields(DataSet: TDataSet);
    procedure btAddClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure btDelLClick(Sender: TObject);
    procedure btAddLClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btTempClick(Sender: TObject);
    procedure cxgrdtbvUserNamePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SysUserSetFM: TSysUserSetFM;

implementation

uses DataPS, PublicPS, MainPS, EmpQPS, IMCode;
{$R *.dfm}

procedure TSysUserSetFM.btAddClick(Sender: TObject);
begin
  inherited;
  TextReadOnly(Self, False);
  cxdbEdtName.Properties.ReadOnly := true;
  qyHed.Append;
  qyHed.Post;
end;

procedure TSysUserSetFM.btAddLClick(Sender: TObject);
begin
  try
    qyHed.Append;
    qyHed.Post;
  except
  end;
end;

procedure TSysUserSetFM.btCancelClick(Sender: TObject);
begin
  try
    qyHed.CancelBatch();
    inherited;
    TextReadOnly(Self, True);
  except
  end;
end;

procedure TSysUserSetFM.btDelLClick(Sender: TObject);
begin
  inherited;
  try
    if ShowDlg('删除该用户名将连带其权限一起删除,确定要删除该登录用户？') then
    begin
      ExeSql('Delete UserRightTB where UserId=' + QuotedStr(qyHed.FieldByName('UserId').AsString));
      qyHed.Delete;
      qyHed.UpdateBatch();
      ShowBox('删除成功！');
    end;
  except
    ShowBox('删除失败！');
  end;
end;

procedure TSysUserSetFM.btEditClick(Sender: TObject);
begin
  inherited;
  TextReadOnly(Self, False);
  cxdbEdtName.Properties.ReadOnly := true;
  qyHed.Edit;
end;

procedure TSysUserSetFM.btSaveClick(Sender: TObject);
begin
  try
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
        ShowBox('用户账号必须唯一,请重新填写！')
      else
        ShowBox('保存失败！');
    end
  end;
end;

procedure TSysUserSetFM.btTempClick(Sender: TObject);
begin
  inherited;
  try
    with DataFM.qyTemp do
    begin
      if Active then Close;
      SQL.Clear;
      SQL.Add('Exec prUpdateAMUser ');
      Open;
    end;
    ShowBox(DataFM.qyTemp.FieldByName('sResult').AsString);
  except
    ShowWarn('同步失败');
  end;
end;

procedure TSysUserSetFM.cxEmpCodePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  try
    if btSave.Enabled = False then Exit;
    try
      EmpQFM := TEmpQFM.Create(nil);
      EmpQFM.iSelectKind := 2; //单选
      EmpQFM.ShowModal;
      if EmpQFM.sId <> '' then
      begin
        if qyHed.State = dsBrowse then qyHed.Edit;
        qyHed.FieldByName('EmpId').AsString := EmpQFM.sId;
        qyHed.FieldByName('UserName').AsString := EmpQFM.sName;
        qyHed.FieldByName('UserId').AsString := MakeSpellCode(EmpQFM.sName, 4, 255);
      end;
    finally
      EmpQFM.Free;
      EmpQFM := nil;
    end;
  except
  end;
end;

procedure TSysUserSetFM.cxgrdtbvUserNamePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  inherited;
  if btSave.Enabled = False then Exit;
  if qyHed.State = dsBrowse then qyHed.Edit;
  qyHed.FieldByName('UserId').AsString := MakeSpellCode(trim(cxdbEdtName.text), 4, 255);
end;

procedure TSysUserSetFM.FormCreate(Sender: TObject);
begin
  sFMId := 'SysUserSetFM';
  sFMName := Self.Caption;
  inherited;
  qyHed.Open;
end;

procedure TSysUserSetFM.FormDestroy(Sender: TObject);
begin
  inherited;
  SysUserSetFM := nil;
end;

procedure TSysUserSetFM.qyHedCalcFields(DataSet: TDataSet);
begin
  inherited;
  CalcField(qyHed, DataFM.qyEmp, ['EmpId', 'EmpCode'], ['EmpId', 'EmpCode']);
end;

end.
