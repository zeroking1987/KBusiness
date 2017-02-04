unit RegPS;

interface

uses Windows, Messages, SysUtils, registry, IniFiles, Dialogs, nb30, Forms;

function GetPhysicalAddress: string;
function GetRecNo: string; // 获取序列号
function EncrypStr(Str: string): string;
function JudgeReg: Boolean;
function SoftReg(MachineNo, RegNo: string): Boolean;

const
  XorKey: array[0..7] of Byte = ($A3, $15, $BA, $55, $70, $6D, $44, $16);

var
  bReg: Boolean;
  SpareDays: Integer;
  Key: string;

implementation

uses PublicPS;

function GetPhysicalAddress: string;
// 0指定多个网卡适配器中的第一个,你可以改这个参数
var
  NCB: TNCB; // Netbios control block file://NetBios控制块
  adapter: TAdapterStatus; // Netbios adapter status//取网卡状态
  LANAENUM: TLANAENUM; // Netbios lana
  intIdx: Integer; // Temporary work value//临时变量
  cRC: AnsiChar; // Netbios return code//NetBios返回值
  strTemp: string; // Temporary string//临时变量
begin
  // Initialize
  Result := '';
  try
    // Zero control blocl
    ZeroMemory(@NCB, SizeOf(NCB));

    // Issue enum command
    NCB.ncb_command := chr(NCBENUM);
    cRC := NetBios(@NCB);

    // Reissue enum command
    NCB.ncb_buffer := @LANAENUM;
    NCB.ncb_length := SizeOf(LANAENUM);
    cRC := NetBios(@NCB);
    if Ord(cRC) <> 0 then
      exit;

    // Reset adapter
    ZeroMemory(@NCB, SizeOf(NCB));
    NCB.ncb_command := chr(NCBRESET);
    NCB.ncb_lana_num := LANAENUM.lana[0];
    cRC := NetBios(@NCB);
    if Ord(cRC) <> 0 then
      exit;

    // Get adapter address
    ZeroMemory(@NCB, SizeOf(NCB));
    NCB.ncb_command := chr(NCBASTAT);
    NCB.ncb_lana_num := LANAENUM.lana[0];
    StrPCopy(NCB.ncb_callname, '*');
    NCB.ncb_buffer := @adapter;
    NCB.ncb_length := SizeOf(adapter);
    cRC := NetBios(@NCB);

    // Convert it to string
    strTemp := '';
    for intIdx := 0 to 5 do
      strTemp := strTemp +
        IntToHex(Integer(adapter.adapter_address[intIdx]), 2);
    Result := strTemp;
  finally
  end;
end;

function GetRecNo: string; // 获取序列号
var
  i, j: Integer;
  Str: string;
begin
  Result := '';
  Str := '';
  Str := GetPhysicalAddress;
  j := 0;
  for i := 1 to Length(Str) do
  begin
    if i mod 2 = 0 then
    begin
      Result := Result + IntToHex(Byte(Str[i]) xor XorKey[j], 2);
      j := (j + 1) mod 8;
    end;
  end;
end;

function EncrypStr(Str: string): string;
var
  i, j: Integer;
begin
  Result := '';
  j := 0;
  for i := 1 to Length(Str) do
  begin
    Result := Result + IntToHex(Byte(Str[i]) xor XorKey[j], 2);
    j := (j + 1) mod 8;
  end;
end;

{function JudgeReg: Boolean;
var
  Reg: Tregistry;
  KeyName, sMachineNo, sRegNo, TempStr: string;
  Same: Integer;
  FirstDate, NowDate: Tdatetime;
  NumberOfDays: real;
begin
  Result := false;
  Key := 'HCSoftWare';
  bReg := false;
  NowDate := date; // 取得运行时系统日期
  try
    // 创建注册表，有该键则读取，无则创建
    Reg := Tregistry.Create;
    Reg.RootKey := hkey_local_machine;
    KeyName := 'SoftWare\King\RegNo';
    if Reg.OpenKey(KeyName, true) then
    begin
      sMachineNo := Reg.ReadString('MachineNo');
      sRegNo := Reg.ReadString('RegNo');
      // 读取用户名，注册号
      try
        FirstDate := Reg.ReadDate('Date');
        // 非第一次则读入第一次运行时间
      except
        Reg.WriteDate('Date', NowDate);
        // 若为第一次运行，则写入系统日期
        FirstDate := NowDate;
      end;
    end
    else
    begin
     if not Reg.KeyExists(KeyName)    then
        Reg.CreateKey(KeyName);
      FirstDate := NowDate;
    end;
    Reg.CloseKey;
  finally
    Reg.Free;
  end;
  TempStr := EncrypStr(sRegNo);
  // 通过自定义函数Encrypt()来获取序列号
  Same := CompareText(TempStr, sMachineNo);
  // 比较密码
  if sMachineNo <> '' then
    if Same = 0 then
    begin
      bReg := true;
      Result := true; // 验证通过
    end;

  if not bReg then
  begin // 若未注册...
    NumberOfDays := NowDate - FirstDate;
    SpareDays := round(31 - NumberOfDays);
    if ((NumberOfDays > 31) or (NumberOfDays < -1)) then
    begin
      Result := false;
    end;
  end;
end;  }

function JudgeReg: Boolean;
var
  ConIni: TIniFile;
  FirstDate, NowDate: Tdatetime;
  Same: Integer;
  NumberOfDays: real;
  ConFile, TempStr: string;
begin
  try
    Result := false;
    bReg := false;
    NowDate := date; // 取得运行时系统日期
  //判断有没有配置文件,如果第一次赋初始日期
    ConFile := ExtractFilePath(Application.ExeName) + 'Reg.ini';
    ConIni := TIniFile.Create(ConFile);
    if not fileexists(ConFile) then
    begin
      ConIni.WriteString('配置', 'MachineNo', '');
      ConIni.WriteString('配置', 'RegNo', '');
      ConIni.WriteString('配置', 'FTime', Encode(DateToStr(NowDate)));
    end;
    MachineNo := ConIni.ReadString('配置', 'MachineNo', '');
    RegNo := ConIni.ReadString('配置', 'RegNo', '');
    FTime := ConIni.ReadString('配置', 'FTime', '');
    if FTime <> '' then
      FirstDate := StrToDate(Decode(FTime));
    TempStr := EncrypStr(RegNo); // 通过自定义函数Encrypt()来获取序列号
    Same := CompareText(TempStr, MachineNo); // 比较密码
    if (MachineNo <> '') and (Same = 0) then
    begin
      if MachineNo <> GetRecNo then
      begin
        ShowWarn('注册信息错误!');
      end
      else
      begin
        bReg := true;
        Result := true; // 验证通过
      end;
    end;
    if not bReg then
    begin // 若未注册...
      NumberOfDays := NowDate - FirstDate;
      SpareDays := round(30 - NumberOfDays);
      if ((NumberOfDays > 30) or (NumberOfDays < -1)) then
      begin
        Result := false;
      end;
    end;
  except
    ShowWarn('注册信息错误');
    Result := false;
  end;
end;

function SoftReg(MachineNo, RegNo: string): Boolean;
var
  ConIni: TIniFile;
  ConFile, RealCode: string;
  Same: Integer;
begin
  if bReg then
  begin
    ShowBox('已经注册');
    exit;
  end;
  if RegNo <> '' then
  begin
    ConFile := ExtractFilePath(Application.ExeName) + 'Reg.ini';
    ConIni := TIniFile.Create(ConFile);
    RealCode := EncrypStr(RegNo);
    Same := CompareText(RealCode, MachineNo);
    if Same <> 0 then
    begin
      ShowError('注册码错误!');
      Result := false;
    end
    else // 注册成功
    begin
      ConIni.WriteString('配置', 'MachineNo', MachineNo);
      ConIni.WriteString('配置', 'RegNo', RegNo);
      bReg := true;
      Result := true;
    end
  end
  else
  begin
    ShowBox('请填写注册码');
    bReg := false;
    Result := false;
  end;
end;

{function SoftReg(MachineNo, RegNo: string): Boolean;
var
  RealCode: string;
  Same: Integer;
  Reg: Tregistry;
  KeyName: string;
begin
  if bReg then
  begin
    ShowBox('已经注册');
    exit;
  end;
  if RegNo <> '' then
  begin
    RealCode := EncrypStr(RegNo);
    Same := CompareText(RealCode, MachineNo);
    if Same <> 0 then
    begin
      ShowError('注册码错误,注册失败');
      Result := false;
    end
    else // 注册成功
    begin
      try
        Reg := Tregistry.Create;
        Reg.RootKey := hkey_local_machine;
        KeyName := 'SoftWare\King\RegNo';
        if Reg.OpenKey(KeyName, true) then
        begin
          Reg.WriteString('MachineNo', MachineNo);
          Reg.WriteString('RegNo', RegNo);
        end;
        Reg.CloseKey;
      finally
        Reg.Free;
      end;
      bReg := true;
      Result := true;
    end;
  end
  else
  begin
    ShowBox('请填写注册码');
    bReg := false;
    Result := false;
  end;
end; }

end.

