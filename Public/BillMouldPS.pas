unit BillMouldPS;

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
  TBillModuleFM = class(TForm)
    dxTileControl1: TdxTileControl;
    dxTileControl1dxTileControlGroup1: TdxTileControlGroup;
    dxTileControl1dxTileControlItem3: TdxTileControlItem;
    dxTileControl1dxTileControlItem8: TdxTileControlItem;
    dxTileControl1dxTileControlItem2: TdxTileControlItem;
    dxTileControl1dxTileControlItem4: TdxTileControlItem;
    dxTileControl1dxTileControlItem11: TdxTileControlItem;
    dxTileControl1dxTileControlItem5: TdxTileControlItem;
    dxTileControl1dxTileControlItem9: TdxTileControlItem;
    dxTileControl1dxTileControlItem14: TdxTileControlItem;
    dxTileControl1dxTileControlItem15: TdxTileControlItem;
    dxTileControl1dxTileControlGroup2: TdxTileControlGroup;
    pnl1: TPanel;
    img1: TImage;
    dxTileControl1Item1: TdxTileControlItem;
    dxTileControl1Group1: TdxTileControlGroup;
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
  BillModuleFM: TBillModuleFM;

implementation

uses DataPS, PublicPS, MainPS;
{$R *.dfm}

procedure TBillModuleFM.dxTileControl1dxTileControlItem2Click(
  Sender: TdxTileControlItem);
begin
  OpenMenu(Sender);
end;

procedure TBillModuleFM.FormDestroy(Sender: TObject);
begin
  BillMouldFM := nil;
end;

procedure TBillModuleFM.FormShow(Sender: TObject);
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

procedure TBillModuleFM.img1Click(Sender: TObject);
begin
  inherited;
  bCanClose := true;
  CloseFrom(Self, TBillMouldFM);
end;

end.
