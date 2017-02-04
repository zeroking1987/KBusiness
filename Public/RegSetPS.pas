unit RegSetPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters,
  cxGroupBox, ExtCtrls, Menus, StdCtrls, cxButtons, cxTextEdit,
  dxSkinOffice2010Blue, dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine;

type
  TRegSetFM = class(TForm)
    cxgrpbx1: TcxGroupBox;
    cxgrpbx2: TcxGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    cxRecNo: TcxTextEdit;
    cxRegNo: TcxTextEdit;
    btnYes: TcxButton;
    btnNo: TcxButton;
    procedure btnNoClick(Sender: TObject);
    procedure btnYesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegSetFM: TRegSetFM;

implementation

uses PublicPS, RegPS, DataPS, LoginPS, MainPS;
{$R *.dfm}

procedure TRegSetFM.btnNoClick(Sender: TObject);
begin
  close;
end;

procedure TRegSetFM.btnYesClick(Sender: TObject);
begin
  if SoftReg(Trim(cxRecNo.Text), Trim(cxRegNo.Text)) then
  begin
    ShowBox('注册成功！');
    MainFM.Caption := '恒创软件管理系统';
    close;
  end;
end;

procedure TRegSetFM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TRegSetFM.FormDestroy(Sender: TObject);
begin
  RegSetFM := nil;
end;

procedure TRegSetFM.FormShow(Sender: TObject);
begin
  cxRecNo.Text := GetRecNo;
  cxRegNo.SetFocus;
end;

end.
