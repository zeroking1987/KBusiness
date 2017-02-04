unit frxQRCode;

interface
uses
  DelphiZXingQRCode,WideStrings,
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Classes,
  Vcl.Graphics,
  frxClass, frxUnicodeUtils
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
$33,$00,$FF,$FF,$66,$00,$FF,$FF,$99,$00,$FF,$FF,$CC,$00,$FF,$FF,$FF,$00,$AC,$AC,
$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$00,$00,$00,$00,$00,
$00,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$00,$AC,$AC,$AC,$AC,$00,$AC,$AC,$AC,
$AC,$AC,$AC,$AC,$AC,$AC,$AC,$00,$AC,$00,$00,$AC,$00,$AC,$AC,$AC,$AC,$00,$00,$AC,
$AC,$AC,$AC,$00,$AC,$00,$00,$AC,$00,$AC,$AC,$AC,$AC,$00,$00,$AC,$AC,$AC,$AC,$00,
$AC,$AC,$AC,$AC,$00,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$00,$00,$00,$00,$00,
$00,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,
$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,
$AC,$AC,$AC,$00,$00,$00,$00,$00,$00,$AC,$AC,$00,$00,$00,$00,$00,$00,$AC,$AC,$00,
$AC,$AC,$AC,$AC,$00,$AC,$AC,$00,$AC,$AC,$AC,$AC,$00,$AC,$AC,$00,$AC,$00,$00,$AC,
$00,$AC,$AC,$00,$AC,$00,$00,$AC,$00,$AC,$AC,$00,$AC,$00,$00,$AC,$00,$AC,$AC,$00,
$AC,$00,$00,$AC,$00,$AC,$AC,$00,$AC,$AC,$AC,$AC,$00,$AC,$AC,$00,$AC,$AC,$AC,$AC,
$00,$AC,$AC,$00,$00,$00,$00,$00,$00,$AC,$AC,$00,$00,$00,$00,$00,$00,$AC,$AC,$AC,
$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC);

    
  BlankBmpByte: array [0 .. 145] of Byte = ($42, $4D, $92, $00, $00, $00, $00,
    $00, $00, $00, $3E, $00, $00, $00, $28, $00, $00, $00, $15, $00, $00, $00,
    $15, $00, $00, $00, $01, $00, $01, $00, $00, $00, $00, $00, $00, $00, $00,
    $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00,
    $00, $00, $00, $00, $00, $00, $FF, $FF, $FF, $00, $01, $2F, $9F, $FF, $7D,
    $D9, $47, $FF, $45, $9D, $C7, $FF, $45, $27, $1F, $FF, $45, $64, $97, $FF,
    $7D, $02, $3F, $FF, $01, $50, $6F, $FF, $FF, $06, $A7, $FF, $01, $DD, $9F,
    $FF, $7A, $0F, $8F, $FF, $DC, $39, $37, $FF, $67, $F5, $77, $FF, $60, $53,
    $47, $FF, $FF, $E7, $FF, $FF, $01, $54, $07, $FF, $7D, $85, $F7, $FF, $45,
    $35, $17, $FF, $45, $D5, $17, $FF, $45, $2D, $17, $FF, $7D, $5D, $F7, $FF,
    $01, $4C, $07, $FF);
type
  //TfrxBarcode2DObject = class(TComponent); // fake component 

  TfrxQRCode = class(TfrxMemoView)
  private 
    FAutoSize:Boolean;
    FEncoding:TQRCodeEncoding;
    FQuietZone:Integer;
    FBackColor:TColor;
  public
    class function GetDescription: String; override;
    procedure Draw(Canvas: TCanvas; ScaleX, ScaleY, OffsetX,
      OffsetY: Extended); override; 
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property AutoSize:Boolean read FAutoSize write FAutoSize default False;
    property Encoding:TQRCodeEncoding read FEncoding write FEncoding default qrAuto;
    property QuietZone:Integer Read FQuietZone write FQuietZone default 1;
    property BackColor:TColor Read FBackColor write FBackColor default clWhite;
  end;
Var
  RegisterBmp: TBitmap;
  BlankBmp: TBitmap;
  
implementation
uses
  frxDsgnIntf, frxRes, frxUtils, Forms,StrUtils;
  
class function TfrxQRCode.GetDescription:String; 
Begin
  Exit('二维条形码控件');
End;

procedure TfrxQRCode.Draw(Canvas: TCanvas; ScaleX, ScaleY, OffsetX,OffsetY: Extended); 
var
  iBmp:TBitmap;
  Procedure UpBmp(Const ACodeText:String;ABmp:TBitmap);
  Var
    iCode:TDelphiZXingQRCode;
    iRow,iColumn: Integer;
  Begin
    iCode := TDelphiZXingQRCode.Create;
    try
      iCode.Data := ACodeText;
      iCode.Encoding := FEncoding;
      iCode.QuietZone := QuietZone;
      ABmp.SetSize(iCode.Rows, iCode.Columns);
      for iRow := 0 to iCode.Rows - 1 do
        for iColumn := 0 to iCode.Columns - 1 do
          if (iCode.IsBlack[iRow, iColumn]) then
            ABmp.Canvas.Pixels[iColumn, iRow] := Color
          else
            ABmp.Canvas.Pixels[iColumn, iRow] := FBackColor;
    finally
      iCode.Free;
    end;
  End;
Begin
  BeginDraw(Canvas, ScaleX, ScaleY, OffsetX, OffsetY);
  Try
    //if Memo.Text <> '' then
    //Begin
      iBmp := TBitmap.Create;
      UpBmp(Memo.Text,iBmp);
    //End Else
      //iBmp:=BlankBmp;
    if FAutoSize then
    Begin
      Self.Width  :=Round(iBmp.Width);
      Self.Height :=Round(iBmp.Height);
    End;
    frxDrawGraphic(Canvas, Rect(FX, FY, FX1, FY1), iBmp, IsPrinting, False,False, clNone);
  Finally
    if Assigned(iBmp) And(iBmp<>BlankBmp) then
      FreeAndNil(iBmp);
  End;
End;

constructor TfrxQRCode.Create(AOwner: TComponent); 
Begin
  inherited Create(AOwner);
  //FAutoSize:=True;
  FEncoding:=qrAuto;
  FQuietZone:=1;
  
  FBackColor:= clWhite;
  Width := 1 * 32;
  Height := 1 * 32;
End;
destructor TfrxQRCode.Destroy;   
Begin
  inherited Destroy;
End;
//初始注册控件到FR
Procedure InitializeFastReport;
Var
  RegisterBmpStream: TStream;
  BlankBmpStream: TStream;
Begin
  RegisterBmp := TBitmap.Create;
  RegisterBmpStream := TMemoryStream.Create;
  BlankBmp := TBitmap.Create;
  BlankBmpStream := TMemoryStream.Create;
  Try
    RegisterBmpStream.Write(RegisterBmpByte, High(RegisterBmpByte));
    RegisterBmpStream.Position := 0;
    RegisterBmp.LoadFromStream(RegisterBmpStream);

    BlankBmpStream.Write(BlankBmpByte, High(BlankBmpByte));
    BlankBmpStream.Position := 0;
    BlankBmp.LoadFromStream(BlankBmpStream);

    frxObjects.RegisterObject(TfrxQRCode, RegisterBmp);
    frxObjects.RegisterObject1(TfrxQRCode, nil, '', '', 0, 23);
  Finally
    FreeAndNil(RegisterBmpStream);
    FreeAndNil(BlankBmpStream);
  End;
End;
//结束从FR中注销控件
Procedure FinalizeFastReport;
Begin
  frxObjects.UnRegister(TfrxQRCode);
  FreeAndNil(RegisterBmp);
  FreeAndNil(BlankBmp);
End;

initialization
  InitializeFastReport;
finalization
  FinalizeFastReport;
end.
