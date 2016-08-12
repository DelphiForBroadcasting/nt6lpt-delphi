(*
 *  InpOut32 1.5.0.1
 *
 *  Oleksandr Nazaruk <mail@freehand.com.ua>
 *
*)

unit inpout32;

interface

uses
  System.SysUtils,
  Winapi.Windows;

const
  {$IFDEF WIN32}
    LIB_INPOUT32 = 'inpout32.dll';
  {$ENDIF}
  {$IFDEF WIN64}
    LIB_INPOUT32 = 'inpoutx64.dll';
  {$ENDIF}


//Functions exported from DLL.
//For easy inclusion is user projects.
//Original InpOut32 function support
procedure Out32(PortAddress: SHORT; Data: SHORT);
	stdcall; external LIB_INPOUT32;
function Inp32(PortAddress: SHORT): SHORT;
	stdcall; external LIB_INPOUT32;


//My extra functions for making life easy
function IsInpOutDriverOpen(): BOOL;   //Returns TRUE if the InpOut driver was opened successfully
	stdcall; external LIB_INPOUT32;
function IsXP64Bit(): BOOL;			      //Returns TRUE if the OS is 64bit (x64) Windows.
	stdcall; external LIB_INPOUT32;

//DLLPortIO function support
function DlPortReadPortUchar(port: USHORT): UCHAR;
	stdcall; external LIB_INPOUT32;
procedure DlPortWritePortUchar(port: USHORT; Value: UCHAR);
	stdcall; external LIB_INPOUT32;

function DlPortReadPortUshort(port: USHORT): USHORT;
	stdcall; external LIB_INPOUT32;
procedure DlPortWritePortUshort(port: USHORT; Value: USHORT);
	stdcall; external LIB_INPOUT32;

function DlPortReadPortUlong(port: ULONG): ULONG;
	stdcall; external LIB_INPOUT32;
procedure DlPortWritePortUlong(port: ULONG; Value: ULONG);
	stdcall; external LIB_INPOUT32;

//WinIO function support (Untested and probably does NOT work - esp. on x64!)
function MapPhysToLin(pbPhysAddr: PBYTE; dwPhysSize: DWORD; pPhysicalMemoryHandle: PHANDLE): PBYTE;
	stdcall; external LIB_INPOUT32;
function UnmapPhysicalMemory(PhysicalMemoryHandle: THANDLE; pbLinAddr: PBYTE): BOOL;
	stdcall; external LIB_INPOUT32;
function GetPhysLong(pbPhysAddr: PBYTE; pdwPhysVal: PDWORD): BOOL;
	stdcall; external LIB_INPOUT32;
function SetPhysLong(pbPhysAddr: PBYTE; dwPhysVal: DWORD): BOOL;
	stdcall; external LIB_INPOUT32;


implementation

end.
