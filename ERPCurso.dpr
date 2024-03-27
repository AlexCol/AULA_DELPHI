program ERPCurso;

uses
  Vcl.Forms,
  VPrincipal in 'src\views\VPrincipal.pas' {ViewPrincipal},
  Service.Conexao in 'src\services\Service.Conexao.pas' {ServiceConexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.Run;
end.
