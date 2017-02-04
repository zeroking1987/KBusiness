unit SaleModulePS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls,
  cxButtons, ExtCtrls, dxGDIPlusClasses, jpeg, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsDefaultPainters, cxLabel,
  dxCustomTileControl, cxClasses, dxTileControl, Adoint, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine;

type
  TSaleModuleFM = class(TForm)
    Panel1: TPanel;
    Image2: TImage;
    dxTileControl1: TdxTileControl;
    dxTileControl1dxTileControlItem1: TdxTileControlItem;
    dxTileControl1dxTileControlGroup1: TdxTileControlGroup;
    dxTileControl1dxTileControlItem3: TdxTileControlItem;
    dxTileControl1dxTileControlItem8: TdxTileControlItem;
    dxTileControl1dxTileControlItem2: TdxTileControlItem;
    dxTileControl1dxTileControlItem4: TdxTileControlItem;
    dxTileControl1dxTileControlGroup2: TdxTileControlGroup;
    dxTileControl1dxTileControlItem5: TdxTileControlItem;
    dxTileControl1dxTileControlItem6: TdxTileControlItem;
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
  SaleModuleFM: TSaleModuleFM;

implementation

uses PublicPS,ControlPublicPS, MainPS;
{$R *.dfm}

procedure TSaleModuleFM.dxTileControl1dxTileControlItem1Click(
  Sender: TdxTileControlItem);
begin
  OpenMenu(Sender);
end;

procedure TSaleModuleFM.FormDestroy(Sender: TObject);
begin
  SaleModuleFM := nil;
end;

procedure TSaleModuleFM.FormShow(Sender: TObject);
var i: Integer;
begin
  //LoadImg(Self);
  //²Ëµ¥È¨ÏÞ
  MainFM.qyMenu.Requery();
  for I := 0 to dxTileControl1.Items.Count - 1 do
  begin
    dxTileControl1.Items.Items[i].Visible := False;
    MainFM.qyMenu.Open;
    MainFM.qyMenu.First;
    while not MainFM.qyMenu.eof do
    begin
      if (IntToStr(dxTileControl1.Items.Items[i].Tag) = MainFM.qyMenu.FieldByName('Tag').AsString) or (IntToStr(dxTileControl1.Items.Items[i].Tag) = '99') then
      begin
        dxTileControl1.Items.Items[i].Visible := true;
        dxTileControl1.Items.Items[i].Text1.Value := MainFM.qyMenu.FieldByName('MetroInfo').AsString;
      end;
      MainFM.qyMenu.Next;
    end;
  end;

end;

procedure TSaleModuleFM.Image2Click(Sender: TObject);
begin
  bCanClose := true;
  CloseFrom(Self, TSaleModuleFM);
end;

end.
