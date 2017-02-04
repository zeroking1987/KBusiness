unit frxExMemoView;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, frxClass, frxUnicodeUtils
{$IFDEF Delphi6}
  , Variants
{$ENDIF};
Const
  RegisterBmpByte: array [0 .. 1173] of Byte = (
$42,$4D,$96,$04,$00,$00,$00,$00,$00,$00,$96,$03,$00,$00,$28,$00,$00,$00,$10,$00,
$00,$00,$10,$00,$00,$00,$01,$00,$08,$00,$00,$00,$00,$00,$00,$01,$00,$00,$12,$0B,
$00,$00,$12,$0B,$00,$00,$D8,$00,$00,$00,$D8,$00,$00,$00,$00,$00,$00,$00,$00,$00,
$33,$00,$00,$00,$66,$00,$00,$00,$99,$00,$00,$00,$CC,$00,$00,$00,$FF,$00,$00,$33,
$00,$00,$00,$33,$33,$00,$00,$33,$66,$00,$00,$33,$99,$00,$00,$33,$CC,$00,$00,$33,
$FF,$00,$00,$66,$00,$00,$00,$66,$33,$00,$00,$66,$66,$00,$00,$66,$99,$00,$00,$66,
$CC,$00,$00,$66,$FF,$00,$00,$99,$00,$00,$00,$99,$33,$00,$00,$99,$66,$00,$00,$99,
$99,$00,$00,$99,$CC,$00,$00,$99,$FF,$00,$00,$CC,$00,$00,$00,$CC,$33,$00,$00,$CC,
$66,$00,$00,$CC,$99,$00,$00,$CC,$CC,$00,$00,$CC,$FF,$00,$00,$FF,$00,$00,$00,$FF,
$33,$00,$00,$FF,$66,$00,$00,$FF,$99,$00,$00,$FF,$CC,$00,$00,$FF,$FF,$00,$33,$00,
$00,$00,$33,$00,$33,$00,$33,$00,$66,$00,$33,$00,$99,$00,$33,$00,$CC,$00,$33,$00,
$FF,$00,$33,$33,$00,$00,$33,$33,$33,$00,$33,$33,$66,$00,$33,$33,$99,$00,$33,$33,
$CC,$00,$33,$33,$FF,$00,$33,$66,$00,$00,$33,$66,$33,$00,$33,$66,$66,$00,$33,$66,
$99,$00,$33,$66,$CC,$00,$33,$66,$FF,$00,$33,$99,$00,$00,$33,$99,$33,$00,$33,$99,
$66,$00,$33,$99,$99,$00,$33,$99,$CC,$00,$33,$99,$FF,$00,$33,$CC,$00,$00,$33,$CC,
$33,$00,$33,$CC,$66,$00,$33,$CC,$99,$00,$33,$CC,$CC,$00,$33,$CC,$FF,$00,$33,$FF,
$00,$00,$33,$FF,$33,$00,$33,$FF,$66,$00,$33,$FF,$99,$00,$33,$FF,$CC,$00,$33,$FF,
$FF,$00,$66,$00,$00,$00,$66,$00,$33,$00,$66,$00,$66,$00,$66,$00,$99,$00,$66,$00,
$CC,$00,$66,$00,$FF,$00,$66,$33,$00,$00,$66,$33,$33,$00,$66,$33,$66,$00,$66,$33,
$99,$00,$66,$33,$CC,$00,$66,$33,$FF,$00,$66,$66,$00,$00,$66,$66,$33,$00,$66,$66,
$66,$00,$66,$66,$99,$00,$66,$66,$CC,$00,$66,$66,$FF,$00,$66,$99,$00,$00,$66,$99,
$33,$00,$66,$99,$66,$00,$66,$99,$99,$00,$66,$99,$CC,$00,$66,$99,$FF,$00,$66,$CC,
$00,$00,$66,$CC,$33,$00,$66,$CC,$66,$00,$66,$CC,$99,$00,$66,$CC,$CC,$00,$66,$CC,
$FF,$00,$66,$FF,$00,$00,$66,$FF,$33,$00,$66,$FF,$66,$00,$66,$FF,$99,$00,$66,$FF,
$CC,$00,$66,$FF,$FF,$00,$99,$00,$00,$00,$99,$00,$33,$00,$99,$00,$66,$00,$99,$00,
$99,$00,$99,$00,$CC,$00,$99,$00,$FF,$00,$99,$33,$00,$00,$99,$33,$33,$00,$99,$33,
$66,$00,$99,$33,$99,$00,$99,$33,$CC,$00,$99,$33,$FF,$00,$99,$66,$00,$00,$99,$66,
$33,$00,$99,$66,$66,$00,$99,$66,$99,$00,$99,$66,$CC,$00,$99,$66,$FF,$00,$99,$99,
$00,$00,$99,$99,$33,$00,$99,$99,$66,$00,$99,$99,$99,$00,$99,$99,$CC,$00,$99,$99,
$FF,$00,$99,$CC,$00,$00,$99,$CC,$33,$00,$99,$CC,$66,$00,$99,$CC,$99,$00,$99,$CC,
$CC,$00,$99,$CC,$FF,$00,$99,$FF,$00,$00,$99,$FF,$33,$00,$99,$FF,$66,$00,$99,$FF,
$99,$00,$99,$FF,$CC,$00,$99,$FF,$FF,$00,$CC,$00,$00,$00,$CC,$00,$33,$00,$CC,$00,
$66,$00,$CC,$00,$99,$00,$CC,$00,$CC,$00,$CC,$00,$FF,$00,$CC,$33,$00,$00,$CC,$33,
$33,$00,$CC,$33,$66,$00,$CC,$33,$99,$00,$CC,$33,$CC,$00,$CC,$33,$FF,$00,$CC,$66,
$00,$00,$CC,$66,$33,$00,$CC,$66,$66,$00,$CC,$66,$99,$00,$CC,$66,$CC,$00,$CC,$66,
$FF,$00,$CC,$99,$00,$00,$CC,$99,$33,$00,$CC,$99,$66,$00,$CC,$99,$99,$00,$CC,$99,
$CC,$00,$CC,$99,$FF,$00,$CC,$CC,$00,$00,$CC,$CC,$33,$00,$CC,$CC,$66,$00,$CC,$CC,
$99,$00,$CC,$CC,$CC,$00,$CC,$CC,$FF,$00,$CC,$FF,$00,$00,$CC,$FF,$33,$00,$CC,$FF,
$66,$00,$CC,$FF,$99,$00,$CC,$FF,$CC,$00,$CC,$FF,$FF,$00,$FF,$00,$00,$00,$FF,$00,
$33,$00,$FF,$00,$66,$00,$FF,$00,$99,$00,$FF,$00,$CC,$00,$FF,$00,$FF,$00,$FF,$33,
$00,$00,$FF,$33,$33,$00,$FF,$33,$66,$00,$FF,$33,$99,$00,$FF,$33,$CC,$00,$FF,$33,
$FF,$00,$FF,$66,$00,$00,$FF,$66,$33,$00,$FF,$66,$66,$00,$FF,$66,$99,$00,$FF,$66,
$CC,$00,$FF,$66,$FF,$00,$FF,$99,$00,$00,$FF,$99,$33,$00,$FF,$99,$66,$00,$FF,$99,
$99,$00,$FF,$99,$CC,$00,$FF,$99,$FF,$00,$FF,$CC,$00,$00,$FF,$CC,$33,$00,$FF,$CC,
$66,$00,$FF,$CC,$99,$00,$FF,$CC,$CC,$00,$FF,$CC,$FF,$00,$FF,$FF,$00,$00,$FF,$FF,
$33,$00,$FF,$FF,$66,$00,$FF,$FF,$99,$00,$FF,$FF,$CC,$00,$FF,$FF,$FF,$00,$AC,$78,
$78,$78,$78,$78,$78,$78,$78,$78,$78,$78,$78,$78,$78,$AC,$78,$AC,$AC,$AC,$AC,$AC,
$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$78,$78,$AC,$00,$AC,$AC,$AC,$AC,$AC,$AC,$AC,
$AC,$AC,$AC,$00,$AC,$78,$78,$AC,$00,$00,$AC,$00,$00,$00,$00,$00,$00,$AC,$00,$00,
$AC,$78,$78,$AC,$00,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$00,$AC,$78,$78,$AC,
$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$78,$78,$AC,$AC,$AC,$00,$00,
$AC,$AC,$AC,$AC,$00,$00,$AC,$AC,$AC,$78,$78,$AC,$AC,$AC,$00,$00,$AC,$AC,$AC,$AC,
$00,$00,$AC,$AC,$AC,$78,$78,$AC,$AC,$AC,$00,$00,$00,$00,$00,$00,$00,$00,$AC,$AC,
$AC,$78,$78,$AC,$AC,$AC,$00,$00,$00,$00,$00,$00,$00,$00,$AC,$AC,$AC,$78,$78,$AC,
$AC,$AC,$00,$00,$AC,$AC,$AC,$AC,$00,$00,$AC,$AC,$AC,$78,$78,$AC,$AC,$AC,$00,$00,
$AC,$AC,$AC,$AC,$00,$00,$AC,$AC,$AC,$78,$78,$AC,$AC,$AC,$00,$00,$00,$00,$00,$00,
$00,$00,$AC,$AC,$AC,$78,$78,$AC,$AC,$AC,$AC,$00,$00,$00,$00,$00,$00,$AC,$AC,$AC,
$AC,$78,$78,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$78,$AC,$78,
$78,$78,$78,$78,$78,$78,$78,$78,$78,$78,$78,$78,$78,$AC);


Type
  TfrxExMemoView = class(TfrxMemoView)
  private 
    FAutoTextSize:Boolean;
    Procedure SetAutoTextSize(Const Value:Boolean);
    Function  GetAutoWidth:Boolean;
    Procedure SetAutoWidth(Const Value:Boolean);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Draw(Canvas: TCanvas; ScaleX, ScaleY, OffsetX,OffsetY: Extended); override;
    class function GetDescription: String; override;
  published
    property AutoTextSize :Boolean read FAutoTextSize write SetAutoTextSize default False;
    property AutoWidth read GetAutoWidth write SetAutoWidth default False; 
  end;

Var
  RegisterBmp: TBitmap;
  
implementation
uses 
  frxDsgnIntf, frxRes, frxUtils, Forms,StrUtils;

Procedure TfrxExMemoView.SetAutoTextSize(Const Value:Boolean);
Begin
  if Value then
    TfrxMemoView(Self).AutoWidth:=False;
  FAutoTextSize:=Value;
End;

Function  TfrxExMemoView.GetAutoWidth:Boolean;
Begin
  Exit(TfrxMemoView(Self).AutoWidth);
End;

Procedure TfrxExMemoView.SetAutoWidth(Const Value:Boolean);
Begin
  if Value then
    FAutoTextSize:=False;
  TfrxMemoView(Self).AutoWidth:=Value;
End;

constructor TfrxExMemoView.Create(AOwner: TComponent);
Begin
  inherited Create(AOwner);
  FAutoTextSize:=False;
End;
destructor TfrxExMemoView.Destroy; 
Begin
  inherited  Destroy; 
End;
procedure TfrxExMemoView.Draw(Canvas: TCanvas; ScaleX, ScaleY, OffsetX,OffsetY: Extended); 
Var
  iStr:String;
  LABEL SetWidth;
  Function GetMaxLineStr(ALine:String):String;
  Var
    iLine:TStringList;
  Begin
    iLine:=TStringList.Create;
    Try
      iLine.Text:=ALine;
      while iLine.Count>0 do
      Begin
        if Length(AnsiString(Result))<Length(AnsiString(iLine.Strings[0])) then
          Result:=iLine.Strings[0];
        iLine.Delete(0);
      End;
    Finally
      FreeAndNil(iLine);
    End;
  End;
Begin
  BeginDraw(Canvas, ScaleX, ScaleY, OffsetX, OffsetY);
  if (Not Assigned(Self.Report))And(Not AutoWidth)And(FAutoTextSize) then
  Begin
    iStr:=GetMaxLineStr(Memo.Text);
    SetWidth:
    Canvas.Font.Size:=Self.Font.Size;
    Canvas.Font.Name:=Self.Font.Name;
    if (Canvas.TextWidth(iStr)>Self.Width-5)and(Self.Font.Size>=2) then
    Begin
      Self.Font.Size:=Self.Font.Size-1;
      GoTo SetWidth;
    End;
  End;
  inherited;
End;
class function TfrxExMemoView.GetDescription: String; 
Begin
  Exit('自动缩进文本框');
End;

//初始注册控件到FR
Procedure InitializeFastReport;
Var
  RegisterBmpStream: TStream;
Begin
  RegisterBmp := TBitmap.Create;
  RegisterBmpStream := TMemoryStream.Create;
  Try
    RegisterBmpStream.Write(RegisterBmpByte, High(RegisterBmpByte));
    RegisterBmpStream.Position := 0;
    RegisterBmp.LoadFromStream(RegisterBmpStream);

    frxObjects.RegisterObject(TfrxExMemoView, RegisterBmp);
    frxObjects.RegisterObject1(TfrxExMemoView, nil, '', '', 0, 23);
  Finally
    FreeAndNil(RegisterBmpStream);
  End;
End;
//结束从FR中注销控件
Procedure FinalizeFastReport;
Begin
  frxObjects.UnRegister(TfrxExMemoView);
  FreeAndNil(RegisterBmp);
End;

initialization
InitializeFastReport;
finalization
FinalizeFastReport;
end.
