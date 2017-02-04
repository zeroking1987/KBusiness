unit ChangePassPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, Menus, cxButtons, cxTextEdit,
  dxGDIPlusClasses, dxSkinOffice2010Blue;

type
  TChangePassFM = class(TForm)
    pnlTitle: TPanel;
    labTitle: TLabel;
    lbl3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    cxEdtOldPass: TcxTextEdit;
    cxEdtNewPass: TcxTextEdit;
    cxEdtSurePass: TcxTextEdit;
    btn3: TButton;
    btn4: TButton;
    Label3: TLabel;
    LabUserName: TLabel;
    img1: TImage;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangePassFM: TChangePassFM;

implementation

uses PublicPS, DataPS;
{$R *.dfm}

procedure TChangePassFM.btn3Click(Sender: TObject);
begin
  try
    with DataFM.qyTemp do
    begin
      if Active = false then Close;
      sql.Clear;
      sql.Add(' select UserName from SysUserTB where UserId=' + QuotedStr(LoginId) + ' and UserPass=' + QuotedStr(trim(cxEdtOldPass.text)));
      Open;
      if eof then
      begin
        ShowBox('原密码错误，请重新输入！');
        Exit;
      end;
    end;
    if trim(cxEdtNewPass.text) <> trim(cxEdtSurePass.text) then
    begin
      ShowBox('两次密码不一致，无法修改！');
      Exit;
    end;
    ExeSql(' Update SysUserTB Set UserPass=' + QuotedStr(trim(cxEdtNewPass.text)) + ' where UserId=' + QuotedStr(LoginId));
    ShowBox('修改成功,请记住新密码！');
  except
    ShowBox('修改失败！');
  end;
end;

procedure TChangePassFM.btn4Click(Sender: TObject);
begin
  Close;
end;

procedure TChangePassFM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TChangePassFM.FormCreate(Sender: TObject);
begin
  LabUserName.Caption := LoginName;
end;

procedure TChangePassFM.FormDestroy(Sender: TObject);
begin
  ChangePassFM := nil;
end;

end.
