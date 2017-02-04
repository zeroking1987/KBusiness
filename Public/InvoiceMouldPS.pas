unit InvoiceMouldPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls,
  cxButtons, dxGDIPlusClasses, ExtCtrls, jpeg, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinOffice2010Blue, dxSkinsDefaultPainters, cxLabel,
  dxCustomTileControl, cxClasses, dxTileControl, dxSkinDevExpressStyle,
  dxSkinSpringTime, dxSkinValentine;

type
  TInvoiceMouldFM = class(TForm)
    Panel1: TPanel;
    Image2: TImage;
    dxtlcntrl1: TdxTileControl;
    dxtlcntrlgrpTileControl1dxTileControlGroup1: TdxTileControlGroup;
    dxtlcntrlgrpTileControl1dxTileControlGroup2: TdxTileControlGroup;
    dxTileControl1dxTileControlItem1: TdxTileControlItem;
    dxTileControl1dxTileControlItem3: TdxTileControlItem;
    dxTileControl1dxTileControlItem8: TdxTileControlItem;
    dxTileControl1dxTileControlItem2: TdxTileControlItem;
    dxTileControl1dxTileControlItem4: TdxTileControlItem;
    dxTileControl1dxTileControlItem5: TdxTileControlItem;
    dxTileControl1dxTileControlItem6: TdxTileControlItem;
    dxtlcntrl1dxTileControlItem1: TdxTileControlItem;
    dxtlcntrl1dxTileControlItem2: TdxTileControlItem;
    dxtlcntrl1dxTileControlItem3: TdxTileControlItem;
    dxtlcntrl1dxTileControlGroup1: TdxTileControlGroup;
    dxtlcntrl1dxTileControlItem4: TdxTileControlItem;
    dxtlcntrl1dxTileControlItem5: TdxTileControlItem;
    procedure FormDestroy(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure dxTileControl1dxTileControlItem1Click(Sender: TdxTileControlItem);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InvoiceMouldFM: TInvoiceMouldFM;

implementation

uses PublicPS,ControlPublicPS, MainPS;
{$R *.dfm}

procedure TInvoiceMouldFM.dxTileControl1dxTileControlItem1Click(
  Sender: TdxTileControlItem);
begin
  OpenMenu(Sender);
end;

procedure TInvoiceMouldFM.FormDestroy(Sender: TObject);
begin
  InvoiceMouldFM := nil;
end;

procedure TInvoiceMouldFM.FormShow(Sender: TObject);
var i: Integer;
begin
  //LoadImg(Self);
  //²Ëµ¥È¨ÏÞ
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

procedure TInvoiceMouldFM.Image2Click(Sender: TObject);
begin
  bCanClose := true;
  CloseFrom(Self, TInvoiceMouldFM);
end;

end.
