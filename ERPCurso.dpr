program ERPCurso;

uses
  Vcl.Forms,
  VPrincipal in 'src\views\VPrincipal.pas' {ViewPrincipal},
  Service.Conexao in 'src\services\Service.Conexao.pas' {ServiceConexao: TDataModule},
  Service.Cadastro in 'src\services\Service.Cadastro.pas' {ServiceCadastro: TDataModule},
  Provider.Constants in 'src\providers\Provider.Constants.pas',
  VBase in 'src\views\VBase.pas' {ViewBase},
  VBaseListas in 'src\views\VBaseListas.pas' {ViewBaseListas},
  VClientes in 'src\views\VClientes.pas' {ViewClientes},
  VFornecedores in 'src\views\VFornecedores.pas' {ViewFornecedores},
  Provider.Procedures in 'src\providers\Provider.Procedures.pas',
  Provider.Functions in 'src\providers\Provider.Functions.pas',
  VProdutos in 'src\views\VProdutos.pas' {ViewProdutos},
  VMensagens in 'src\views\VMensagens.pas' {ViewMensagens},
  VFundo in 'src\views\VFundo.pas' {ViewFundo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.CreateForm(TServiceCadastro, ServiceCadastro);
  Application.CreateForm(TViewBaseListas, ViewBaseListas);
  Application.CreateForm(TViewClientes, ViewClientes);
  Application.CreateForm(TViewFornecedores, ViewFornecedores);
  Application.CreateForm(TViewProdutos, ViewProdutos);
  Application.CreateForm(TViewMensagens, ViewMensagens);
  Application.CreateForm(TViewFundo, ViewFundo);
  Application.Run;
end.
