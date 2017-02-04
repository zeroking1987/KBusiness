unit frxQRCodeRtti;

interface

implementation

uses
  DelphiZXingQRCode,
  Windows, Classes, SysUtils, Forms, fs_iinterpreter, frxQRCode, frxClassRTTI
{$IFDEF Delphi6}
, Variants
{$ENDIF};

{TQRCodeEncoding And Variant}
function TQRCodeEncodingToVariant(value:TQRCodeEncoding):OleVariant;
Begin
  Result := Ord(value);
End;
function VariantToTQRCodeEncoding(value:OleVariant):TQRCodeEncoding;
Begin
  Result := TQRCodeEncoding(Integer(value));
End;

type
  TFunctions = class(TfsRTTIModule)
  private
    function CallMethod(Instance: TObject; ClassType: TClass;const MethodName: String; Caller: TfsMethodHelper): Variant;
    function GetProp(Instance: TObject; ClassType: TClass; const PropName: String): Variant;
    procedure SetProp(Instance: TObject; ClassType: TClass;const PropName: String; Value: Variant);  
  public
    constructor Create(AScript: TfsScript); override;
  end;

{ TFunctions }
function TFunctions.CallMethod(Instance: TObject; ClassType: TClass;const MethodName: String; Caller: TfsMethodHelper): Variant;
Begin

End;
function TFunctions.GetProp(Instance: TObject; ClassType: TClass; const PropName: String): Variant;
Begin
  if ClassType = TfrxQRCode then
  Begin
    if PropName = Ansiuppercase('AutoSize') then
      Result :=TfrxQRCode(Instance).AutoSize
    Else if PropName = Ansiuppercase('Encoding') then
      Result :=TQRCodeEncodingToVariant(TfrxQRCode(Instance).Encoding)
    Else if PropName = Ansiuppercase('QuietZone') then
      Result :=TfrxQRCode(Instance).QuietZone
    Else if PropName = Ansiuppercase('BackColor') then
      Result :=TfrxQRCode(Instance).BackColor
  End;
End;
procedure TFunctions.SetProp(Instance: TObject; ClassType: TClass;const PropName: String; Value: Variant);  
Begin
  if ClassType = TfrxQRCode then
  Begin
    if PropName = Ansiuppercase('AutoSize') then
      TfrxQRCode(Instance).AutoSize:=Value
    Else if PropName = Ansiuppercase('Encoding') then
      TfrxQRCode(Instance).Encoding:=VariantToTQRCodeEncoding(Value)
    Else if PropName = Ansiuppercase('QuietZone') then
      TfrxQRCode(Instance).QuietZone:=Value
    Else if PropName = Ansiuppercase('BackColor') then
      TfrxQRCode(Instance).BackColor:=Value
  End;
End;

constructor TFunctions.Create(AScript: TfsScript);
begin
  inherited Create(AScript);
  with AScript do
  begin
    AddEnum('TQRCodeEncoding','qrAuto, qrNumeric, qrAlphanumeric, qrISO88591, qrUTF8NoBOM, qrUTF8BOM');
    With AddClass(TfrxQRCode,'TfrxMemoView') DO
    Begin
      AddProperty('AutoSize', 'Boolean', GetProp, SetProp);
      AddProperty('Encoding', 'TQRCodeEncoding', GetProp, SetProp);
      AddProperty('QuietZone', 'Integer', GetProp, SetProp);
      AddProperty('BackColor', 'TColor', GetProp, SetProp);
    End;
  end;
end;

initialization
  fsRTTIModules.Add(TFunctions);
  
finalization
  if fsRTTIModules <> nil then
    fsRTTIModules.Remove(TFunctions);

end.
