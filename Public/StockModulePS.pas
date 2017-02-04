unit StockModulePS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls,
  cxButtons, ExtCtrls, dxGDIPlusClasses, jpeg, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsDefaultPainters, cxLabel,
  dxCustomTileControl, cxClasses, dxTileControl, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine;

type
  TStockModuleFM = class(TForm)
    Panel1: TPanel;
    Image2: TImage;
    dxTileControl1: TdxTileControl;
    dxTileControl1dxTileControlGroup1: TdxTileControlGroup;
    dxTileControl1dxTileControlGroup2: TdxTileControlGroup;
    dxTileControl1dxTileControlItem1: TdxTileControlItem;
    dxTileControl1dxTileControlItem3: TdxTileControlItem;
    dxTileControl1dxTileControlItem8: TdxTileControlItem;
    dxTileControl1dxTileControlItem2: TdxTileControlItem;
    dxTileControl1dxTileControlItem4: TdxTileControlItem;
    dxTileControl1dxTileControlItem5: TdxTileControlItem;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure dxTileControl1dxTileControlItem1Click(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StockModuleFM: TStockModuleFM;

implementation

uses PublicPS, ControlPublicPS,MainPS;

{$R *.dfm}

procedure TStockModuleFM.dxTileControl1dxTileControlItem1Click(
  Sender: TdxTileControlItem);
begin
  OpenMenu(Sender);
end;

procedure TStockModuleFM.FormDestroy(Sender: TObject);
begin
  StockModuleFM := nil;
end;

procedure TStockModuleFM.FormShow(Sender: TObject);
var i: Integer;
begin
  //LoadImg(Self);
  //²Ëµ¥È¨ÏÞ
  for I := 0 to dxTileControl1.Items.Count - 1 do
  begin
    dxTileControl1.Items.Items[i].Visible := False;
    MainFM.qyMenu.Open;
    MainFM.qyMenu.First;
    while not MainFM.qyMenu.eof do
    begin
      if (IntToStr(dxTileControl1.Items.Items[i].Tag) = MainFM.qyMenu.FieldByName('Tag').AsString) or (IntToStr(dxTileControl1.Items.Items[i].Tag) = '99') then
        dxTileControl1.Items.Items[i].Visible := true;

      MainFM.qyMenu.Next;
    end;
  end;
end;

procedure TStockModuleFM.Image2Click(Sender: TObject);
begin
  bCanClose := true;
  CloseFrom(Self, TStockModuleFM);
end;

end.
