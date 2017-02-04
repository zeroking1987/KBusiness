unit ShopModulePS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls, cxButtons,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsDefaultPainters, cxControls,
  dxCustomTileControl, cxClasses, dxTileControl, dxGDIPlusClasses, Vcl.ExtCtrls,
  dxSkinDevExpressStyle, dxSkinSpringTime, dxSkinValentine;

type
  TShopModuleFM = class(TForm)
    pnl1: TPanel;
    img1: TImage;
    dxtlcntrl1: TdxTileControl;
    dxtlcntrlgrpTileControl1dxTileControlGroup1: TdxTileControlGroup;
    dxtlcntrlgrpTileControl1dxTileControlGroup2: TdxTileControlGroup;
    dxTileControl1dxTileControlItem1: TdxTileControlItem;
    dxTileControl1dxTileControlItem3: TdxTileControlItem;
    dxTileControl1dxTileControlItem2: TdxTileControlItem;
    dxTileControl1dxTileControlItem4: TdxTileControlItem;
    dxtlcntrl1Item1: TdxTileControlItem;
    dxtlcntrl1Item2: TdxTileControlItem;
    procedure dxTileControl1dxTileControlItem1Click(Sender: TdxTileControlItem);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure img1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShopModuleFM: TShopModuleFM;

implementation

uses PublicPS,ControlPublicPS, MainPS;
{$R *.dfm}

procedure TShopModuleFM.dxTileControl1dxTileControlItem1Click(
  Sender: TdxTileControlItem);
begin
  OpenMenu(Sender);
end;

procedure TShopModuleFM.FormDestroy(Sender: TObject);
begin
  ShopModuleFM := nil;
end;

procedure TShopModuleFM.FormShow(Sender: TObject);
var i: Integer;
begin
  for I := 0 to dxtlcntrl1.Items.Count - 1 do
  begin
    dxtlcntrl1.Items.Items[i].Visible := False;
    MainFM.qyMenu.Open;
    MainFM.qyMenu.First;
    while not MainFM.qyMenu.eof do
    begin
      if (IntToStr(dxtlcntrl1.Items.Items[i].Tag) = MainFM.qyMenu.FieldByName('Tag').AsString) or (IntToStr(dxtlcntrl1.Items.Items[i].Tag) = '99') then
        dxtlcntrl1.Items.Items[i].Visible := true;
      MainFM.qyMenu.Next;
    end;
  end;
end;

procedure TShopModuleFM.img1Click(Sender: TObject);
begin
  bCanClose := true;
  CloseFrom(Self, TShopModuleFM);
end;

end.
