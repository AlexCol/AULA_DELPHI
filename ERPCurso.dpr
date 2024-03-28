program ERPCurso;

uses
  Vcl.Forms,
  VPrincipal in 'src\views\VPrincipal.pas' {ViewPrincipal},
  Service.Conexao in 'src\services\Service.Conexao.pas' {ServiceConexao: TDataModule},
  Service.Cadastro in 'src\services\Service.Cadastro.pas' {ServiceCadastro: TDataModule},
  Provider.Constants in 'src\providers\Provider.Constants.pas',
  VBase in 'src\views\VBase.pas' {ViewBase},
  VBaseListas in 'src\views\VBaseListas.pas' {ViewBaseListas},
  VClientes in 'src\views\VClientes.pas' {ViewClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.CreateForm(TServiceCadastro, ServiceCadastro);
  Application.CreateForm(TViewBaseListas, ViewBaseListas);
  Application.CreateForm(TViewClientes, ViewClientes);
  Application.Run;
end.
