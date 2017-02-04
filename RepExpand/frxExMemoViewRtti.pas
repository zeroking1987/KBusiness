unit frxExMemoViewRtti;

interface

implementation
uses
  Windows, Classes, SysUtils, Forms, fs_iinterpreter, frxExMemoView, frxClassRTTI
{$IFDEF Delphi6}
, Variants
{$ENDIF};
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
  if ClassType = TfrxExMemoView then
  Begin
    if PropName = Ansiuppercase('AutoTextSize') then
      Result :=TfrxExMemoView(Instance).AutoTextSize
  End;
End;
procedure TFunctions.SetProp(Instance: TObject; ClassType: TClass;const PropName: String; Value: Variant);  
Begin
  if ClassType = TfrxExMemoView then
  Begin
    if PropName = Ansiuppercase('AutoTextSize') then
      TfrxExMemoView(Instance).AutoTextSize:=Value
  End;
End;

constructor TFunctions.Create(AScript: TfsScript);
begin
  inherited Create(AScript);
  with AScript do
  begin
    With AddClass(TfrxExMemoView,'TfrxMemoView') DO
    Begin
      AddProperty('AutoTextSize', 'Boolean', GetProp, SetProp);
    End;
  end;
end;

initialization
  fsRTTIModules.Add(TFunctions);
  
finalization
  if fsRTTIModules <> nil then
    fsRTTIModules.Remove(TFunctions);
end.
