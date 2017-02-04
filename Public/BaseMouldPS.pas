unit BaseMouldPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls,
  dxBar, cxBarEditItem, dxGDIPlusClasses,
  ExtCtrls, jpeg, cxControls, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxLabel, cxGroupBox, cxButtons, dxSkinOffice2010Blue,
  dxCustomTileControl, cxClasses, dxTileControl, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine;

type
  TBaseMouldFM = class(TForm)
    img2: TImage;
    img3: TImage;
    img4: TImage;
    img5: TImage;
    Image11: TImage;
    Image14: TImage;
    cxLabel12: TcxLabel;
    dxTileControl1: TdxTileControl;
    dxTileControl1dxTileControlGroup1: TdxTileControlGroup;
    dxTileControl1dxTileControlItem1: TdxTileControlItem;
    dxTileControl1dxTileControlItem3: TdxTileControlItem;
    dxTileControl1dxTileControlItem8: TdxTileControlItem;
    dxTileControl1dxTileControlItem2: TdxTileControlItem;
    dxTileControl1dxTileControlItem4: TdxTileControlItem;
    dxTileControl1dxTileControlItem10: TdxTileControlItem;
    dxTileControl1dxTileControlItem11: TdxTileControlItem;
    dxTileControl1dxTileControlItem13: TdxTileControlItem;
    dxTileControl1dxTileControlItem5: TdxTileControlItem;
    dxTileControl1dxTileControlItem9: TdxTileControlItem;
    dxTileControl1dxTileControlItem12: TdxTileControlItem;
    dxTileControl1dxTileControlItem14: TdxTileControlItem;
    dxTileControl1dxTileControlItem15: TdxTileControlItem;
    dxTileControl1dxTileControlItem16: TdxTileControlItem;
    dxTileControl1dxTileControlGroup2: TdxTileControlGroup;
    dxTileControl1dxTileControlGroup3: TdxTileControlGroup;
    pnl1: TPanel;
    img1: TImage;
    dxTileControl1dxTileControlItem6: TdxTileControlItem;
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxTileControl1dxTileControlItem2Click(Sender: TdxTileControlItem);
    procedure img1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BaseMouldFM: TBaseMouldFM;

implementation

uses DataPS, ControlPublicPS,PublicPS, MainPS;
{$R *.dfm}

procedure TBaseMouldFM.dxTileControl1dxTileControlItem2Click(
  Sender: TdxTileControlItem);
begin
  OpenMenu(Sender);
end;

procedure TBaseMouldFM.FormDestroy(Sender: TObject);
begin
  BaseMouldFM := nil;
end;

procedure TBaseMouldFM.FormShow(Sender: TObject);
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

procedure TBaseMouldFM.img1Click(Sender: TObject);
begin
  inherited;
  bCanClose := true;
  CloseFrom(Self, TBaseMouldFM);
end;

end.
