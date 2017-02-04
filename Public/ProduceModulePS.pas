unit ProduceModulePS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2010Blue,
  dxSkinsDefaultPainters, cxLabel, dxGDIPlusClasses, Vcl.ExtCtrls,
  dxCustomTileControl, cxClasses, dxTileControl, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine;

type
  TProduceModuleFM = class(TForm)
    pnl1: TPanel;
    img1: TImage;
    dxTileControl1: TdxTileControl;
    dxTileControl1dxTileControlGroup1: TdxTileControlGroup;
    dxTileControl1dxTileControlItem1: TdxTileControlItem;
    dxTileControl1dxTileControlItem6: TdxTileControlItem;
    dxTileControl1dxTileControlItem7: TdxTileControlItem;
    dxTileControl1dxTileControlItem2: TdxTileControlItem;
    dxTileControl1dxTileControlItem4: TdxTileControlItem;
    dxTileControl1dxTileControlItem3: TdxTileControlItem;
    dxTileControl1dxTileControlGroup2: TdxTileControlGroup;
    dxTileControl1dxTileControlItem5: TdxTileControlItem;
    dxTileControl1dxTileControlItem8: TdxTileControlItem;
    dxTileControl2: TdxTileControl;
    dxTileControlGroup1: TdxTileControlGroup;
    dxTileControlItem1: TdxTileControlItem;
    dxTileControlItem3: TdxTileControlItem;
    dxTileControlItem4: TdxTileControlItem;
    dxTileControlItem5: TdxTileControlItem;
    dxTileControl1dxTileControlItem9: TdxTileControlItem;
    dxTileControl2dxTileControlItem1: TdxTileControlItem;
    dxTileControl2dxTileControlItem2: TdxTileControlItem;
    dxTileControl2dxTileControlItem3: TdxTileControlItem;
    dxTileControl2dxTileControlItem4: TdxTileControlItem;
    procedure img1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure img1001Click(Sender: TObject);
    procedure dxTileControl1dxTileControlItem1Click(Sender: TdxTileControlItem);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProduceModuleFM: TProduceModuleFM;

implementation

{$R *.dfm}
uses DataPS, PublicPS,ControlPublicPS, MainPS;

procedure TProduceModuleFM.dxTileControl1dxTileControlItem1Click(
  Sender: TdxTileControlItem);
begin
  OpenMenu(Sender);
end;

procedure TProduceModuleFM.FormDestroy(Sender: TObject);
begin
  ProduceModuleFM := nil;
end;

procedure TProduceModuleFM.FormShow(Sender: TObject);
var i: Integer;
begin
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

procedure TProduceModuleFM.img1001Click(Sender: TObject);
begin
  OpenMenu(Sender);
end;

procedure TProduceModuleFM.img1Click(Sender: TObject);
begin
  inherited;
  bCanClose := true;
  CloseFrom(Self, TProduceModuleFM);
end;

end.
