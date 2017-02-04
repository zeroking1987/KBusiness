unit LoginPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, ComCtrls,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxDBEdit, Menus, StdCtrls, cxButtons,
  cxMaskEdit, cxDropDownEdit, DB, ADODB, IniFiles, ComObj, cxLookupEdit,
  cxDBLookupEdit, cxDBExtLookupComboBox, cxDBLookupComboBox, AdoConEd,
  dxGDIPlusClasses, dxSkinsForm, cxListBox, cxImage, cxGroupBox,
  dxSkinOffice2010Blue, cxLabel, cxCheckBox, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine, cxClasses,System.Math,
  dxSkinOffice2013LightGray, dxSkinOffice2016Colorful, dxSkinOffice2016Dark;

type
  TLoginFM = class(TForm)
    qyLogin: TADOQuery;
    dsDataSet: TADODataSet;
    dxSkinController1: TdxSkinController;
    pnl1: TPanel;
    img1: TImage;
    cbbUserId: TcxComboBox;
    cxEdtUserName: TcxTextEdit;
    cxEdtUserPass: TcxTextEdit;
    btnLogin: TcxButton;
    btnExit: TcxButton;
    qyZt: TADOQuery;
    dsZt: TDataSource;
    qyZtZTNo: TStringField;
    qyZtZTName: TStringField;
    qyZtDataBaseName: TStringField;
    btnTestLink: TcxButton;
    btnLinkMode: TcxButton;
    btn1: TcxButton;
    pnl2: TPanel;
    cxgrpbx1: TcxGroupBox;
    cbbServerName: TcxComboBox;
    cxEdtDataUserName: TcxTextEdit;
    cxEdtDataUserPass: TcxTextEdit;
    cbbZtName: TcxLookupComboBox;
    cxlbl1: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxchbRecordPwd: TcxCheckBox;
    cxchbAutoLogin: TcxCheckBox;
    tmr1: TTimer;
    cxImage1: TcxImage;
    cxImage2: TcxImage;
    cxImage3: TcxImage;
    cxButton1: TcxButton;
    btnGetServer: TcxButton;
    procedure FormCreate(Sender: TObject);
    // 尝试连接数据库
    function TestLink: Boolean;
    // 服务器初始化
    procedure InitServerName;
    // 帐套初始化
    function InitDataBase: Boolean;
    procedure btnLinkModeClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnTestLinkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGetServerClick(Sender: TObject);
    procedure cxEdtUserPassKeyPress(Sender: TObject; var Key: Char);
    procedure cbbUserIdPropertiesChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxchbAutoLogPropertiesChange(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    ConFile: TIniFile;
    FileName: string;
    Searcher: TThread;
    LoginNo: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginFM: TLoginFM;

implementation

uses DataPS, PublicPS, MainPS, ListSqlServers;
{$R *.dfm}

function TLoginFM.TestLink: Boolean;
begin
  try
    Result := False;
    ConStr := 'Provider=SQLOLEDB.1;Persist Security Info=true;' + 'User Id=' + DataUserName + ';' + 'Initial Catalog=' + DataBaseName +
      ';' + 'Data Source=' + ServerName + ';' + 'PassWord=' + DataUserPwd + ';';
    with DataFM.qyTemp do
    begin
      try
        if Active then Close;
        ConnectionString := ConStr;
        sql.Clear;
        sql.Add('select UserId from SysUserTB');
        Open;
        if not eof then
        begin
          DataFM.Con.ConnectionString := ConStr;
          TestLink := True;
        end;
      except
      end;
    end;
  except
  end;
end;

procedure TLoginFM.tmr1Timer(Sender: TObject);
begin
  if bAutoLogin then
    LoginFM.btnLoginClick(Sender);
end;

function TLoginFM.InitDataBase: Boolean; //刷新帐套
begin
  try
    ServerName := cbbServerName.Text;
    DataUserName := cxEdtDataUserName.Text;
    DataUserPwd := cxEdtDataUserPass.Text;

    ConStr := 'Provider=SQLOLEDB.1;Persist Security Info=true;' + 'User Id=' + DataUserName + ';' + 'Data Source=' + ServerName + ';' + 'PassWord=' + DataUserPwd + ';';
    with qyZt do
    begin
      try
        if Active then Close;
        ConnectionString := ConStr;
        sql.Clear;
        sql.Add('select ZTNo,ZTName,DataBaseName from master.dbo.HCZtTB order by ZTNo');
        Open;
        if not Eof then
        begin
          InitDataBase := true;
        end
        else
        begin
          ShowBox('未检测到帐套!');
          InitDataBase := False;
          Exit;
        end;
      except
        on E: Exception do
        begin
          if pos('无效', E.Message) > 0 then
          begin
            ShowBox('未检测到帐套!');
            InitDataBase := False;
            Exit;
          end;
        end;
      end;
    end;
  except
  end;
end;

procedure TLoginFM.InitServerName;
var
  SQLServer: Variant;
  ServerList: Variant;
  i: Integer;
begin
  try
    SQLServer := CreateOleObject('SQLDMO.Application');
    ServerList := SQLServer.ListAvailableSQLServers;
    if ServerList.count < 1 then
      ShowBox('未获取到服务器')
    else
    begin
      for i := 1 to ServerList.count do
        cbbServerName.Properties.Items.Add(ServerList.item(i));
      ShowBox(ServerList.item(1) + '服务器已经打开');
    end;
    SQLServer := NULL;
    ServerList := NULL;
  except
  end;
end;

procedure TLoginFM.cbbUserIdPropertiesChange(Sender: TObject);
begin
  begin
    with qyLogin do
    begin
      Close;
      sql.Clear;
      sql.Add('select a.*,b.EmpCode,b.EmpName,b.DeptID,c.DeptCode,c.DeptName from SysUserTB a left join EmployeeTB b on a.EmpId=b.EmpId');
      sql.Add('left join DeptTB c on b.DeptID=c.DeptId ');
      sql.Add(' where UserId=' + QuotedStr(cbbUserId.Text));
      Open;
      if not eof then
      begin
        cxEdtUserName.Text := qyLogin.FieldByName('UserName').AsString;
        cxEdtUserName.Properties.ReadOnly := True;
      end
      else
        cxEdtUserName.Text := '无效账号';
    end;
  end;
end;

procedure TLoginFM.cxButton1Click(Sender: TObject);
begin
  if (cbbServerName.Text = '') or (cxEdtDataUserName.Text = '') then
  begin
    ShowBox('请先正确填写服务器名称、登录名和登录密码');
    Exit;
  end;
  InitDataBase;
end;

procedure TLoginFM.cxchbAutoLogPropertiesChange(Sender: TObject);
begin
  if cxchbAutoLogin.Checked then cxchbRecordPwd.Checked := true;
end;

procedure TLoginFM.cxEdtUserPassKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnLoginClick(Sender);
end;

procedure TLoginFM.btnGetServerClick(Sender: TObject);
begin
  try
    Screen.Cursor := crHourGlass;
    cbbServerName.Properties.Items.Clear;
    //不带实例名
    //InitServerName;
    // 使用PublicPS单元中的方法 ,获取的字符中带有实例名
    GetServerName(cbbServerName.Properties.Items);
    Screen.Cursor := crDefault;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TLoginFM.btnLinkModeClick(Sender: TObject);
begin
  try
    FileName := ExtractFilePath(Application.ExeName) + 'Config.ini';
    if FileExists(FileName) then
      ConFile := TIniFile.Create(FileName);
    DataFM.con.Close;
    // 注意引用AdoConEd这个单元
    if EditConnectionString(DataFM.con) then
    begin
      ConFile.WriteString('con', 'ConnectionString', DataFM.con.ConnectionString); // 将连接信息存入到Ini文件当中
      ShowBox('连接成功！');
    end;
  except
  end;
end;

procedure TLoginFM.btnTestLinkClick(Sender: TObject);
var
  ConIni: TIniFile;
begin
  ServerName := cbbServerName.Text;
  DataUserName := cxEdtDataUserName.Text;
  DataUserPwd := cxEdtDataUserPass.Text;
  CWZtNo := cbbZtName.EditValue;
  CWZtName := cbbZtName.Text;
  DataBaseName := cbbZtName.EditValue;
  LoginId := cbbUserId.Text;
  ConStr := 'Provider=SQLOLEDB.1;Persist Security Info=true;' + 'User Id=' + DataUserName + ';' + 'Initial Catalog=' + DataBaseName +
    ';' + 'Data Source=' + ServerName + ';' + 'PassWord=' + DataUserPwd + ';';
  with DataFM.con do
  begin
    Connected := False;
    ConnectionString := ConStr;
    try
      Open;
      ConIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Config.ini');
      ConIni.WriteString('配置', 'Data Source', ServerName);
      ConIni.WriteString('配置', 'User Id', DataUserName);
      ConIni.WriteString('配置', 'PassWord', Encode(DataUserPwd));
      ConIni.WriteString('配置', 'Initial Catalog', DataBaseName);
      ConIni.WriteString('配置', 'CWZtNo', CWZtNo);
      ConIni.WriteString('配置', 'CWZtName', CWZtName);
      ConIni.WriteString('配置', 'LoginId', LoginId);
      if InitDataBase = False then Exit;

      //初始化用户名
      cbbUserId.Properties.Items.Clear;
      with DataFM.qyTemp do
      begin
        Connection := DataFM.Con;
        if Active then Close;
        SQL.Clear;
        SQL.Add('select UserId from SysUserTB');
        Open;
        First;
        cbbUserId.Properties.Items.Add('');
        while not eof do
        begin
          cbbUserId.Properties.Items.Add(Fields[0].AsString);
          Next;
        end;
      end;
      ShowBox('连接服务成功！');
    except
    on E: Exception do
      ShowWarn(E.Message);
    end;
  end;
end;

procedure TLoginFM.btnLoginClick(Sender: TObject);
var
  ConIni: TIniFile;
begin
  try
    ServerName := cbbServerName.Text;
    DataUserName := cxEdtDataUserName.Text;
    DataUserPwd := cxEdtDataUserPass.Text;
    DataBaseName := cbbZtName.EditValue;
    CWZtNo := cbbZtName.EditValue;
    CWZtName := cbbZtName.text;
    LoginId := cbbUserId.Text;
    ConStr := 'Provider=SQLOLEDB.1;Persist Security Info=true;' + 'User Id=' + DataUserName + ';' + 'Initial Catalog=' + DataBaseName + ';' + 'Data Source=' + ServerName + ';' + 'PassWord=' + DataUserPwd + ';';
    with DataFM.con do
    begin
      Connected := False;
      ConnectionString := ConStr;
      try
        Open;
      except
        ShowBox('连接服务器失败！');
        Exit;
      end;
    end;
    if not qyLogin.Active then
      qyLogin.Open;
    if qyLogin.Locate('UserId;UserPass', vararrayof([cbbUserId.Text, cxEdtUserPass.Text]), [locaseinsensitive]) then
    begin
      ConIni := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Config.ini');
      ConIni.WriteString('配置', 'Data Source', ServerName);
      ConIni.WriteString('配置', 'User Id', DataUserName);
      ConIni.WriteString('配置', 'PassWord', Encode(DataUserPwd));
      ConIni.WriteString('配置', 'Initial Catalog', DataBaseName);
      ConIni.WriteString('配置', 'CWZtNo', CWZtNo);
      ConIni.WriteString('配置', 'CWZtName', CWZtName);
      ConIni.WriteString('配置', 'LoginId', LoginId);
      ConIni.WriteBool('配置', 'bRecordPwd', cxchbRecordPwd.Checked);
      ConIni.WriteBool('配置', 'bAutoLogin', cxchbAutoLogin.Checked);
      ConIni.WriteString('配置', 'UserPassWord', Encode(trim(cxEdtUserPass.Text)));

      LoginId := qyLogin.FieldByName('UserId').AsString;
      LoginName := qyLogin.FieldByName('UserName').AsString;
      LoginPassWrod := qyLogin.FieldByName('UserPass').AsString;
      LoginEmpId := qyLogin.FieldByName('EmpId').AsString;
      LoginEmpCode := qyLogin.FieldByName('EmpCode').AsString;
      LoginEmpName := qyLogin.FieldByName('EmpName').AsString;
      LoginEmpDeptId := qyLogin.FieldByName('DeptId').AsString;
      LoginEmpDeptName := qyLogin.FieldByName('DeptName').AsString;
      if qyLogin.FieldByName('UserId').AsString = 'admin' then
      begin
        LoginEmpId := 'admin';
        LoginEmpCode := 'admin';
        LoginEmpName := '管理员';
      end;

      bLogin := True;
      Close;
    end
    else
    begin
      cbbUserId.SetFocus;
      LoginNo := LoginNo + 1;
      if LoginNo > 2 then
      begin
        ShowWarn(' 错误登录超过3次，退出系统 !');
        bLogin := False;
        Self.ModalResult := mrCancel;
        Exit;
      end;
      ShowWarn('用户名和密码不正确,你还有 ' + IntToStr(3 - LoginNo) + ' 次机会！');
      cxEdtUserPass.SetFocus;
      cxEdtUserPass.SelectAll;
    end;
  except
    on E: Exception do
      ShowWarn(E.Message);
  end;
end;

procedure TLoginFM.btn1Click(Sender: TObject);
begin
  Self.AutoSize := False;
  pnl2.Visible := not pnl2.Visible;
  if pnl2.Visible then
  begin
    LoginFM.Height :=Trunc(LoginFM.Height*1.45);
  end
  else
  begin
    LoginFM.Height := 300;
  end;
  Self.AutoSize := True;
end;

procedure TLoginFM.btnExitClick(Sender: TObject);
begin
  bLogin := False;
  Close;
end;

procedure TLoginFM.FormCreate(Sender: TObject);
begin
  try
    cbbServerName.Text := ServerName;
    cxEdtDataUserName.Text := DataUserName;
    cxEdtDataUserPass.Text := DataUserPwd;

    if TestLink then
    begin
      //帐套要重新取 ,否则显示不出来
      with qyZt do
      begin
        try
          if Active then Close;
          ConnectionString := ConStr;
          sql.Clear;
          sql.Add('select ZTNo,ZTName,DataBaseName from master.dbo.HCZtTB order by ZTNo');
          Open;
        except
        end;
        cbbZtName.Text := CWZTName;
        cbbZtName.EditValue := DataBaseName;
      end;
      InitCbb('select UserId from SysUserTB', cbbUserId);
    end
    else
      ShowBox('连接失败,请先配置数据库连接！');
    LoginNo := 0; // 记录登录次数
  except
    ShowBox('连接失败');
  end;
end;

procedure TLoginFM.FormDestroy(Sender: TObject);
begin
  LoginFM := nil;
end;

procedure TLoginFM.FormShow(Sender: TObject);
begin
  cbbUserId.Text := LoginId;
  cxchbRecordPwd.Checked := bRecordPwd;
  cxchbAutoLogin.Checked := bAutoLogin;
  pnl2.Visible :=False;
  Self.Height := 300;
  Self.AutoSize := True;
  cxEdtUserPass.SetFocus;
  if bRecordPwd then
    cxEdtUserPass.Text := sUserPassWord;
end;

end.
