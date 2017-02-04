unit ImageFullPS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,  ADODB,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinDevExpressStyle, dxSkinOffice2010Blue, dxSkinSpringTime,
  dxSkinsDefaultPainters, dxSkinValentine, Vcl.StdCtrls, cxButtons, Data.DB,
  cxControls, cxContainer, cxEdit, cxImage, cxDBEdit, dxSkinOffice2007Silver,
  dxSkinSevenClassic, dxSkinSilver, dxSkinWhiteprint, imageenview, ieview,
  dbimageen;

type
  TImageFullFM = class(TForm)
    dsImage: TDataSource;
    Panel1: TPanel;
    btnClose: TcxButton;
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ImageFiled:string;
  end;

var
  ImageFullFM: TImageFullFM;

implementation

{$R *.dfm}

procedure TImageFullFM.btnCloseClick(Sender: TObject);
begin
  self.Close;
end;

end.
