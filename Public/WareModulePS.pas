unit WareModulePS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls,
  cxButtons, ExtCtrls, dxGDIPlusClasses, jpeg, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsDefaultPainters, cxLabel,
  dxCustomTileControl, cxClasses, dxTileControl, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine;

type
  TWareModuleFM = class(TForm)
    Panel1: TPanel;
    Image2: TImage;
    dxTileControl1: TdxTileControl;
    dxTileControl1dxTileControlGroup1: TdxTileControlGroup;
    dxTileControl1dxTileControlItem1: TdxTileControlItem;
    dxTileControl1dxTileControlItem3: TdxTileControlItem;
    dxTileControl1dxTileControlItem8: TdxTileControlItem;
    dxTileControl1dxTileControlItem17: TdxTileControlItem;
    dxTileControl1dxTileControlItem20: TdxTileControlItem;
    dxTileControl1dxTileControlItem21: TdxTileControlItem;
    dxTileControl1dxTileControlItem22: TdxTileControlItem;
    dxTileControl1dxTileControlItem23: TdxTileControlItem;
    dxTileControl1dxTileControlItem26: TdxTileControlItem;
    dxTileControl1dxTileControlGroup2: TdxTileControlGroup;
    dxTileControl1dxTileControlItem25: TdxTileControlItem;
    dxTileControl1dxTileControlItem27: TdxTileControlItem;
    dxtlcntrltmTileControl1dxTileControlItem2: TdxTileControlItem;
    dxTileControl1dxTileControlItem2: TdxTileControlItem;
    dxTileControl2: TdxTileControl;
    dxTileControlGroup1: TdxTileControlGroup;
    dxTileControlItem1: TdxTileControlItem;
    dxTileControlItem2: TdxTileControlItem;
    dxTileControlItem3: TdxTileControlItem;
    dxTileControlItem4: TdxTileControlItem;
    dxTileControlItem5: TdxTileControlItem;
    dxTileControl1dxTileControlGroup4: TdxTileControlGroup;
    dxTileControl2dxTileControlGroup1: TdxTileControlGroup;
    dxTileControl2dxTileControlGroup3: TdxTileControlGroup;
    dxTileControl2dxTileControlItem1: TdxTileControlItem;
    dxTileControl2dxTileControlItem2: TdxTileControlItem;
    procedure Image2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxTileControl1dxTileControlItem1Click(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WareModuleFM: TWareModuleFM;

implementation

uses PublicPS,ControlPublicPS, MainPS;
{$R *.dfm}

procedure TWareModuleFM.dxTileControl1dxTileControlItem1Click(
  Sender: TdxTileControlItem);
begin
  OpenMenu(Sender);
end;

procedure TWareModuleFM.FormDestroy(Sender: TObject);
begin
  WareModuleFM := nil;
end;

procedure TWareModuleFM.FormShow(Sender: TObject);
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
  for I := 0 to dxTileControl2.Items.Count - 1 do
  begin
    dxTileControl2.Items.Items[i].Visible := False;
    MainFM.qyMenu.Open;
    MainFM.qyMenu.First;
    while not MainFM.qyMenu.eof do
    begin
      if (IntToStr(dxTileControl2.Items.Items[i].Tag) = MainFM.qyMenu.FieldByName('Tag').AsString) or (IntToStr(dxTileControl2.Items.Items[i].Tag) = '99') then
      begin
        dxTileControl2.Items.Items[i].Visible := true;
        dxTileControl2.Items.Items[i].Text1.Value := MainFM.qyMenu.FieldByName('MetroInfo').AsString;
      end;
      MainFM.qyMenu.Next;
    end;
  end;
end;

procedure TWareModuleFM.Image2Click(Sender: TObject);
begin
  bCanClose := true;
  CloseFrom(Self, TWareModuleFM);
end;

end.
