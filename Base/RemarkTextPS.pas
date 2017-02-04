unit RemarkTextPS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2010Blue,
  dxSkinsDefaultPainters, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxRichEdit;

type
  TRemarkTextFM = class(TForm)
    Panel1: TPanel;
    btnClose: TcxButton;
    cxrchContent: TcxRichEdit;
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
  var sTitle, sContent: string;
    { Public declarations }
  end;

var
  RemarkTextFM: TRemarkTextFM;

implementation

{$R *.dfm}

procedure TRemarkTextFM.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TRemarkTextFM.FormDestroy(Sender: TObject);
begin
  RemarkTextFM := nil;
end;

procedure TRemarkTextFM.FormShow(Sender: TObject);
begin
  Self.Caption := sTitle;
  cxrchContent.Lines.Text := sContent;
end;

end.
