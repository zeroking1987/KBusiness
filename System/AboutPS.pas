unit AboutPS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  dxGDIPlusClasses, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, dxSkinsCore, dxSkinOffice2010Blue, dxSkinsDefaultPainters,
  Vcl.StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxLabel, cxDBLabel,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine;

type
  TAboutFM = class(TForm)
    img1: TImage;
    lbVer: TcxLabel;
    lbCoName: TcxLabel;
    img2: TImage;
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure img1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutFM: TAboutFM;

implementation

{$R *.dfm}

uses PublicPS;

procedure TAboutFM.FormDestroy(Sender: TObject);
begin
  AboutFM := nil;
end;

procedure TAboutFM.FormShow(Sender: TObject);
begin
  if sVer <> '' then
  begin
    lbVer.Caption := '当前版本: ' + sVer;
    lbVer.Visible := true;
  end;
  if sCoName <> '' then
  begin
    lbCoName.Caption := '已授权给: ' + sCoName;
    lbCoName.Visible := true;
  end;
end;

procedure TAboutFM.img1Click(Sender: TObject);
begin
  Close;
end;

end.
