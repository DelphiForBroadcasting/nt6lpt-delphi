program _nt6lpt;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  inpout32 in '../../Include/inpout32.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Charcoal Dark Slate');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
