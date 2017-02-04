unit ListSqlServers;
interface
uses
  Classes, Windows, Sysutils;

type
  TServersSearcher = class(TThread)
    FOnlyLocal: boolean;
    pEnv, pHdbc, pHenv: Pointer;
    StrBuffer: Pchar;
    cbStrOutCount: Integer;
    StrIn: string;
    Servers: TStrings;
  public
    property Terminated;
    constructor Create(InList: TStrings; const OnlyLocal: Boolean = true);
    destructor Destroy; override;
    procedure Execute; override;
    function GetServersFromString(Str: string): Boolean;
  end;
  SQLHANDLE = Pointer;
  SQLSMALLINT = SHORT;
  SQLINTEGER = LongInt;
  PSQLHANDLE = ^SQLHANDLE;
  SQLHENV = SQLHANDLE;
  SQLHDBC = SQLHANDLE;
  SQLRETURN = SQLSMALLINT;
  SQLCHAR = UCHAR;
  PSQLCHAR = ^SQLCHAR;
  SQLPOINTER = Pointer;
  PSQLSMALLINT = ^SQLSMALLINT;
const
  SQL_HANDLE_ENV = 1;
  SQL_HANDLE_DBC = 2;
  SQL_NULL_HANDLE = LongInt(0);
  SQL_SUCCESS = 0;
  SQL_ERROR = -1;
  SQL_ATTR_ODBC_VERSION = 200;
  SQL_OV_ODBC3 = ULONG(3);
  SQL_NTS = -3;

function SQLAllocHandle(HandleType: SmallInt; InHandle: Pointer; OutHandle: PPointer): SmallInt; stdcall; external 'odbc32.dll' name 'SQLAllocHandle';
function SQLSetEnvAttr(EnvHandle: Pointer; Attribute: LongInt; Value: Integer; StringLength: LongInt): SmallInt; stdcall; external 'odbc32.dll' name 'SQLSetEnvAttr';
function SQLBrowseConnect(HDBC: Pointer; szConnStrIn: Pchar; cbConnStrIn: SmallInt; szConnStrOut: PChar; cbConnStrOutMax: SmallInt; pcbConnStrOut: Pointer): SmallInt; stdcall; external 'odbc32.dll' name 'SQLBrowseConnect';
function SQLDisconnect(ConHandle: Pointer): SmallInt; stdcall; external 'odbc32.dll' name 'SQLDisconnect';
function SQLFreeHandle(HandleType: SmallInt; Handle: Pointer): SmallInt; stdcall; external 'odbc32.dll' name 'SQLFreeHandle';
implementation

constructor TServersSearcher.Create(InList: TStrings; const OnlyLocal: Boolean = true);
begin
  FOnlyLocal := OnlyLocal;
  if Assigned(InList) then
  begin
    Servers := InList;
    Self.FreeOnTerminate := True;
    inherited Create(True);
  end;
end;

procedure TServersSearcher.Execute;
const
  BufferCount = 5120;
begin
  inherited;
  ReturnValue := 0;
  try
    try
      // 分配ODBC环境句柄
      if SQLAllocHandle(SQL_HANDLE_ENV, nil, @pHenv) = SQL_ERROR then
        Exit;
      // 设置ODBC的版本
      if SQLSetEnvAttr(pHenv, SQL_ATTR_ODBC_VERSION, SQL_OV_ODBC3, 0) <> SQL_SUCCESS then
        Exit;
      //分配连接句柄
      if SQLAllocHandle(SQL_HANDLE_DBC, pHenv, @pHdbc) <> SQL_SUCCESS then
        Exit;
      GetMem(StrBuffer, BufferCount);
      if FOnlyLocal then
        StrIn := 'Driver={SQL Server};SERVER=(local)'
      else
        StrIn := 'Driver={SQL Server}';

      if SQLBrowseConnect(pHdbc, Pchar(StrIn), SQL_NTS, StrBuffer, BufferCount, @cbStrOutCount) <> SQL_ERROR then
        if GetServersFromString(StrBuffer) then
          Exit;
    except
      ReturnValue := -1;
    end;
  finally
    FreeMem(StrBuffer, BufferCount);
    if Assigned(pHdbc) then
    begin
      SQLDisconnect(pHdbc);
      SQLFreeHandle(SQL_HANDLE_DBC, pHdbc);
      pHdbc := nil;
    end;
    if Assigned(pHenv) then
    begin
      SQLFreeHandle(SQL_HANDLE_ENV, pHenv);
      pHenv := nil;
    end;
  end;
  ReturnValue := 1;
end;

destructor TServersSearcher.Destroy;
begin
  Servers := nil;
  inherited;
end;

function TServersSearcher.GetServersFromString(Str: string): Boolean;
var
  iStart: Integer;
begin
  Result := False;
  Servers.BeginUpdate;
  try
    Servers.Clear;
    Delete(Str, 1, Pos('={', Str) + 1);
    Delete(Str, Pos('};', Str), Length(Str));
    iStart := Pos(',', Str);
    while iStart > 0 do
    begin
      Servers.Add(Copy(Str, 1, iStart - 1));
      Delete(Str, 1, iStart);
      iStart := Pos(',', Str);
    end;
    if Str <> '' then Servers.Add(Str);
    Result := True;
  finally
    Servers.EndUpdate;
  end;
end;

end.
