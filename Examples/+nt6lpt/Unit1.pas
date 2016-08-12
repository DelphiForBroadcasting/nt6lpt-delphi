{*------------------------------------------------------------------------
 *  Aleksandr Nazaruk <support@freehand.com.ua>
 *  http://freehand.com.ua
 *------------------------------------------------------------------------*}

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.UITypes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, IniFiles,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls,
  inpout32;

type
  Bit = 0..1;

type
  TBitSet = array[0..7] of Bit;


type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    GroupBox5: TGroupBox;
    StatusBar1: TStatusBar;
    Edit1: TEdit;
    Button9: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button11: TButton;
    t_LPTMon: TTimer;
    ComboBox1: TComboBox;
    Label5: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    N4: TMenuItem;
    Button10: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Label8: TLabel;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Label10: TLabel;
    GroupBox6: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Edit7: TEdit;
    Button16: TButton;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Button21: TButton;
    Edit11: TEdit;
    Label13: TLabel;
    procedure Button8Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure t_LPTMonTimer(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    Function IOINIPortToDec(port : string):word;
    procedure Button11Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit4Enter(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Edit11Change(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function GetNBit (X, N: byte): Bit;
begin
  Result := x shr N and 1;
end;

function GetBits (X: byte): TBitSet;
var
  N: integer;
begin
  for N := 0 to 7 do
    Result[N] := GetNBit(X, N);
end;

function MakeByte (BitSet: TBitSet): byte;
var
  i: integer;
begin
  Result := 0;
  for i := 7 downto 0 do
    Result := Result shl 1 + (BitSet[i] and 1);
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.t_LPTMonTimer(Sender: TObject);
var
  port : integer;
begin
    // Data
    port:=strtoint(edit6.Text);
    edit1.Text:=inttostr(Inp32(port));
    // Status
    inc(port,1);
    edit11.Text:=inttostr(Inp32(port));

    // Control
    inc(port,1);
    edit7.Text:=inttostr(Inp32(port));

end;

procedure TForm1.Button11Click(Sender: TObject);
begin
    try
      Out32(strtoint(edit6.Text), strtoint(edit4.Text));
    except
      on E : Exception do
      begin
        MessageDlg(Format('Internal error %s',[E.Message]),mtError, mbOKCancel, 0);
      end;
    end;
end;

procedure TForm1.Button16Click(Sender: TObject);
var
  port : integer;
begin
    try
      port:=strtoint(edit6.Text);
      inc(port, 2);
      Out32(port, strtoint(edit8.Text));
    except
      on E : Exception do
      begin
        MessageDlg(Format('Internal error %s',[E.Message]),mtError, mbOKCancel, 0);
      end;
    end;
end;

procedure TForm1.Button17Click(Sender: TObject);
var
  BitSet : TBitSet;
  b : Bit;
  b1: byte;
  port : integer;
begin
  try
    if (Sender as TButton).Caption='1' then b:=1 else b:=0;
    b1 := strtoint(edit7.Text)
  finally
    BitSet:=GetBits(b1);
    BitSet[(Sender as TButton).Tag]:=b;
      try
        port:=strtoint(edit6.Text);
        inc(port,2);

        Out32(port, Makebyte(BitSet));
      except
        on E : Exception do
        begin
          MessageDlg(Format('Internal error %s',[E.Message]),mtError, mbOKCancel, 0);
        end;
      end;
    end;
end;

procedure TForm1.Button19Click(Sender: TObject);
var
  BitSet : TBitSet;
  b : Bit;
  b1: byte;
  port : integer;
begin
  try
    if (Sender as TButton).Caption='1' then b:=0 else b:=1;
    b1 := strtoint(edit7.Text)
  finally
    BitSet:=GetBits(b1);
    BitSet[(Sender as TButton).Tag]:=b;
      try
        port:=strtoint(edit6.Text);
        inc(port,2);

        Out32(port, Makebyte(BitSet));
      except
        on E : Exception do
        begin
          MessageDlg(Format('Internal error %s',[E.Message]),mtError, mbOKCancel, 0);
        end;
      end;
    end;
end;

procedure TForm1.Button21Click(Sender: TObject);
var
  port : integer;
begin
    try
      port:=strtoint(edit6.Text);
      inc(port, 2);
      Out32(port, strtoint(edit10.Text));
    except
      on E : Exception do
      begin
        MessageDlg(Format('Internal error %s',[E.Message]),mtError, mbOKCancel, 0);
      end;
    end;
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  BitSet : TBitSet;
  b : Bit;
  b1: byte;
begin
  try
    if (Sender as TButton).Caption='1' then b:=0 else b:=1;
    b1 := strtoint(edit1.Text)
  finally
    BitSet:=GetBits(b1);
    BitSet[(Sender as TButton).Tag]:=b;
      try
        Out32(strtoint(edit6.Text), Makebyte(BitSet));
      except
        on E : Exception do
        begin
          MessageDlg(Format('Internal error %s',[E.Message]),mtError, mbOKCancel, 0);
        end;
      end;
    end;
end;



procedure TForm1.Button9Click(Sender: TObject);
begin
    try
      Out32(strtoint(edit6.Text), strtoint(edit2.Text));
    except
      on E : Exception do
      begin
        MessageDlg(Format('Internal error %s',[E.Message]),mtError, mbOKCancel, 0);
      end;
    end;
end;

Function TForm1.IOINIPortToDec(port : string):word;
const section = 'LPT';
var
IniFile : TIniFile;
fileConfig : string;
begin
  result:=0;
  try
    fillchar(result,sizeof(result),#0);
    fileConfig := ExtractFilePath(ParamStr(0))+'io.ini';
    IniFile := TIniFile.Create(fileconfig);
    try
      try
        result:=IniFile.ReadInteger(section,port,0);
      except
        result:=0;
      end;

    finally
      IniFile.Free;
    end;

  except
    ;
  end;
end;



procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  try
    edit6.Text:=inttostr(IOINIPortToDec(combobox1.Items.Strings[combobox1.ItemIndex]));
    edit5.Text:='$'+IntToHex(strtoint(edit6.Text),2);
  except
    edit6.Text:='0';
    edit5.Text:='$00';
  end;

end;

procedure TForm1.Edit10Change(Sender: TObject);
begin
 if edit8.Tag=1 then exit;
  try
    edit8.Text:='$'+IntToHex(strtoint(edit10.Text),2);
  except
   ;
  end;
end;

procedure TForm1.Edit11Change(Sender: TObject);
var
  b : byte;
  BitSet : TBitSet;
begin
  try
    b := strtoint(edit11.Text);
  finally
    BitSet:=GetBits(b);

    button10.Caption:=inttostr(abs(BitSet[3]));
    button12.Caption:=inttostr(abs(BitSet[4]));
    button13.Caption:=inttostr(BitSet[5]);
    button14.Caption:=inttostr(abs(BitSet[6]));
    button15.Caption:=inttostr(abs(BitSet[7]-1));
  end;
end;

procedure TForm1.Edit1Change(Sender: TObject);
var
  b : byte;
  BitSet : TBitSet;
begin
  try
    b := strtoint(edit1.Text);
  finally
    edit3.Text:='$'+IntToHex(b,2);
    BitSet:=GetBits(b);
    button8.Caption:=inttostr(BitSet[0]);
    button7.Caption:=inttostr(BitSet[1]);
    button6.Caption:=inttostr(BitSet[2]);
    button5.Caption:=inttostr(BitSet[3]);
    button4.Caption:=inttostr(BitSet[4]);
    button3.Caption:=inttostr(BitSet[5]);
    button2.Caption:=inttostr(BitSet[6]);
    button1.Caption:=inttostr(BitSet[7]);
  end;

end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  if edit4.Tag=1 then exit;
  try
    edit4.Text:=inttostr(strtoint(edit2.Text));
  except
    edit4.Text:='';
  end;
end;

procedure TForm1.Edit4Change(Sender: TObject);
begin
  if edit2.Tag=1 then exit;
  try
    edit2.Text:='$'+IntToHex(strtoint(edit4.Text),2);
  except
   ;
  end;
end;

procedure TForm1.Edit4Enter(Sender: TObject);
begin
  (Sender as TEdit).Tag:=1;
end;

procedure TForm1.Edit4Exit(Sender: TObject);
begin
  (Sender as TEdit).Tag:=0;
end;

procedure TForm1.Edit7Change(Sender: TObject);
var
  b : byte;
  BitSet : TBitSet;
begin
  try
    b := strtoint(edit7.Text);
  finally
    edit9.Text:='$'+IntToHex(b,2);
    BitSet:=GetBits(b);

    button17.Caption:=inttostr(abs(BitSet[0]-1));
    button18.Caption:=inttostr(abs(BitSet[1]-1));
    button19.Caption:=inttostr(BitSet[2]);
    button20.Caption:=inttostr(abs(BitSet[3]-1));

  end;
end;

procedure TForm1.Edit8Change(Sender: TObject);
begin
  if edit10.Tag=1 then exit;
  try
    edit10.Text:=inttostr(strtoint(edit8.Text));
  except
    edit10.Text:='';
  end;
end;

Procedure TForm1.FormCreate(Sender: TObject);
var
  i : integer;
  LPTHandl: THandle;
  b:byte;
  b1 : PByte;
begin
  button1.Tag:=7;
  button2.Tag:=6;
  button3.Tag:=5;
  button4.Tag:=4;
  button5.Tag:=3;
  button6.Tag:=2;
  button7.Tag:=1;
  button8.Tag:=0;
  button20.Tag:=3;
  button19.Tag:=2;
  button18.Tag:=1;
  button17.Tag:=0;
  t_LPTMon.Enabled:=false;
  button1.Enabled:=false;
  button2.Enabled:=false;
  button3.Enabled:=false;
  button4.Enabled:=false;
  button5.Enabled:=false;
  button6.Enabled:=false;
  button7.Enabled:=false;
  button8.Enabled:=false;
  button9.Enabled:=false;
  button11.Enabled:=false;
  button17.Enabled:=false;
  button18.Enabled:=false;
  button19.Enabled:=false;
  button20.Enabled:=false;
  button21.Enabled:=false;
  button16.Enabled:=false;
  edit2.Enabled:=false;
  edit4.Enabled:=false;
  edit8.Enabled:=false;
  edit10.Enabled:=false;
  combobox1.Enabled:=false;

  {$ifdef Win64}
    form1.Caption:='NT6.x LPT 64bit Demo Code FreeHand.com.ua 2013';
  {$Else}
    form1.Caption:='NT6.x LPT 32bit Demo Code FreeHand.com.ua 2013';
  {$EndIf}

  if not IsInpOutDriverOpen then
    MessageDlg('Error open InpOut32 Driver',mtError, mbOKCancel, 0);

  combobox1.Items.Clear;
  for i := 0 to 10 do
  begin
    LPTHandl := CreateFile(PChar(WideString('LPT' + inttostr(i + 1))),
      GENERIC_READ or GENERIC_WRITE, 0, nil, OPEN_EXISTING,
      FILE_FLAG_OVERLAPPED, 0);
    try
      if LPTHandl <> INVALID_HANDLE_VALUE then
      begin
        combobox1.Items.Add('LPT' + inttostr(i + 1));
        combobox1.ItemIndex:=0;
        button1.Enabled:=true;
        button2.Enabled:=true;
        button3.Enabled:=true;
        button4.Enabled:=true;
        button5.Enabled:=true;
        button6.Enabled:=true;
        button7.Enabled:=true;
        button8.Enabled:=true;
        button9.Enabled:=true;
        button11.Enabled:=true;
        button17.Enabled:=true;
        button18.Enabled:=true;
        button19.Enabled:=true;
        button20.Enabled:=true;
        button16.Enabled:=true;
        button21.Enabled:=true;
        combobox1.Enabled:=true;
        edit2.Enabled:=true;
        edit4.Enabled:=true;
        edit8.Enabled:=true;
        edit10.Enabled:=true;
        t_LPTMon.Enabled:=true;
      end;
    finally
      CloseHandle(LPTHandl);
    end;
  end;
  ComboBox1Change(self);
end;

end.

