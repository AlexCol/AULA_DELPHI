program ERPCurso;

uses
  Vcl.Forms,
  VPrincipal in 'src\views\VPrincipal.pas' {ViewPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.Run;
end.
