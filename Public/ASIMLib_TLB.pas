unit ASIMLib_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 45604 $
// File generated on 2013-01-19 23:10:37 from Type Library described below.

// ************************************************************************  //
// Type Lib: d:\ActiveSoft\AmServer\ASIM2.dll (1)
// LIBID: {04C7B48C-9A9D-43C9-8258-AB414B9784DC}
// LCID: 0
// Helpfile:
// HelpString: ASIM 1.0 Type Library
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  ASIMLibMajorVersion = 1;
  ASIMLibMinorVersion = 0;

  LIBID_ASIMLib: TGUID = '{04C7B48C-9A9D-43C9-8258-AB414B9784DC}';

  IID_IIM: TGUID = '{DF6AB720-05EB-48F1-8DBC-8DED4C2D8DF0}';
  CLASS_IM: TGUID = '{30B01BB1-D2C6-435F-82D2-C9967E9E4832}';
  IID_IMsg: TGUID = '{8E7945FC-DF61-48D4-9B56-B2B46537FC70}';
  CLASS_Msg: TGUID = '{4A6A7D7D-F7A0-4626-A2BE-6E8657ABF7A8}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  IIM = interface;
  IIMDisp = dispinterface;
  IMsg = interface;
  IMsgDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  IM = IIM;
  Msg = IMsg;


// *********************************************************************//
// Interface: IIM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DF6AB720-05EB-48F1-8DBC-8DED4C2D8DF0}
// *********************************************************************//
  IIM = interface(IDispatch)
    ['{DF6AB720-05EB-48F1-8DBC-8DED4C2D8DF0}']
    procedure Init(const bszServer: WideString; const bszUserID: WideString;
      const bszPassword: WideString); safecall;
    function SendMsg(const bszSubject: WideString; const bszBody: WideString;
      const bszReceiverID: WideString; nStyle: Integer): Integer; safecall;
    procedure InitForWeb(const bszUserID: WideString; const bszPassword: WideString); safecall;
    function Get_IMServer: WideString; safecall;
    procedure Set_IMServer(const pVal: WideString); safecall;
    function SendMsgEx(const pMsg: IMsg; const bszReceiverID: WideString): Integer; safecall;
    function Get_ContentType: WideString; safecall;
    procedure Set_ContentType(const pVal: WideString); safecall;
    function Get_Port: Integer; safecall;
    procedure Set_Port(pVal: Integer); safecall;
    function GetLastErr: Integer; safecall;
    function GetErrInfo(nErrCode: Integer; const bszLanguage: WideString): WideString; safecall;
    property IMServer: WideString read Get_IMServer write Set_IMServer;
    property ContentType: WideString read Get_ContentType write Set_ContentType;
    property Port: Integer read Get_Port write Set_Port;
  end;

// *********************************************************************//
// DispIntf:  IIMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DF6AB720-05EB-48F1-8DBC-8DED4C2D8DF0}
// *********************************************************************//
  IIMDisp = dispinterface
    ['{DF6AB720-05EB-48F1-8DBC-8DED4C2D8DF0}']
    procedure Init(const bszServer: WideString; const bszUserID: WideString;
      const bszPassword: WideString); dispid 1;
    function SendMsg(const bszSubject: WideString; const bszBody: WideString;
      const bszReceiverID: WideString; nStyle: Integer): Integer; dispid 2;
    procedure InitForWeb(const bszUserID: WideString; const bszPassword: WideString); dispid 3;
    property IMServer: WideString dispid 4;
    function SendMsgEx(const pMsg: IMsg; const bszReceiverID: WideString): Integer; dispid 5;
    property ContentType: WideString dispid 6;
    property Port: Integer dispid 7;
    function GetLastErr: Integer; dispid 8;
    function GetErrInfo(nErrCode: Integer; const bszLanguage: WideString): WideString; dispid 9;
  end;

// *********************************************************************//
// Interface: IMsg
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8E7945FC-DF61-48D4-9B56-B2B46537FC70}
// *********************************************************************//
  IMsg = interface(IDispatch)
    ['{8E7945FC-DF61-48D4-9B56-B2B46537FC70}']
    procedure AddAttachment(const bszFileName: WideString); safecall;
    function Get_Subject: WideString; safecall;
    procedure Set_Subject(const pVal: WideString); safecall;
    function Get_Body: WideString; safecall;
    procedure Set_Body(const pVal: WideString); safecall;
    function Get_ContentType: WideString; safecall;
    procedure Set_ContentType(const pVal: WideString); safecall;
    function Get_MsgExtType: WideString; safecall;
    procedure Set_MsgExtType(const pVal: WideString); safecall;
    function Get_MsgFlag: Integer; safecall;
    procedure Set_MsgFlag(pVal: Integer); safecall;
    function Get_MsgType: Integer; safecall;
    procedure Set_MsgType(pVal: Integer); safecall;
    function Get_AppType: WideString; safecall;
    procedure Set_AppType(const pVal: WideString); safecall;
    function Get_FolderName: WideString; safecall;
    procedure Set_FolderName(const pVal: WideString); safecall;
    function Get_NeedConfirm: Integer; safecall;
    procedure Set_NeedConfirm(pVal: Integer); safecall;
    procedure SetAttrib(const bszName: WideString; const bszData: WideString); safecall;
    property Subject: WideString read Get_Subject write Set_Subject;
    property Body: WideString read Get_Body write Set_Body;
    property ContentType: WideString read Get_ContentType write Set_ContentType;
    property MsgExtType: WideString read Get_MsgExtType write Set_MsgExtType;
    property MsgFlag: Integer read Get_MsgFlag write Set_MsgFlag;
    property MsgType: Integer read Get_MsgType write Set_MsgType;
    property AppType: WideString read Get_AppType write Set_AppType;
    property FolderName: WideString read Get_FolderName write Set_FolderName;
    property NeedConfirm: Integer read Get_NeedConfirm write Set_NeedConfirm;
  end;

// *********************************************************************//
// DispIntf:  IMsgDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8E7945FC-DF61-48D4-9B56-B2B46537FC70}
// *********************************************************************//
  IMsgDisp = dispinterface
    ['{8E7945FC-DF61-48D4-9B56-B2B46537FC70}']
    procedure AddAttachment(const bszFileName: WideString); dispid 1;
    property Subject: WideString dispid 2;
    property Body: WideString dispid 3;
    property ContentType: WideString dispid 4;
    property MsgExtType: WideString dispid 5;
    property MsgFlag: Integer dispid 6;
    property MsgType: Integer dispid 7;
    property AppType: WideString dispid 8;
    property FolderName: WideString dispid 9;
    property NeedConfirm: Integer dispid 10;
    procedure SetAttrib(const bszName: WideString; const bszData: WideString); dispid 11;
  end;

// *********************************************************************//
// The Class CoIM provides a Create and CreateRemote method to
// create instances of the default interface IIM exposed by
// the CoClass IM. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoIM = class
    class function Create: IIM;
    class function CreateRemote(const MachineName: string): IIM;
  end;

// *********************************************************************//
// The Class CoMsg provides a Create and CreateRemote method to
// create instances of the default interface IMsg exposed by
// the CoClass Msg. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoMsg = class
    class function Create: IMsg;
    class function CreateRemote(const MachineName: string): IMsg;
  end;

implementation

uses System.Win.ComObj;

class function CoIM.Create: IIM;
begin
  Result := CreateComObject(CLASS_IM) as IIM;
end;

class function CoIM.CreateRemote(const MachineName: string): IIM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_IM) as IIM;
end;

class function CoMsg.Create: IMsg;
begin
  Result := CreateComObject(CLASS_Msg) as IMsg;
end;

class function CoMsg.CreateRemote(const MachineName: string): IMsg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Msg) as IMsg;
end;

end.
