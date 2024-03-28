unit VFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VBaseListas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Service.Cadastro, Provider.Procedures,
  Vcl.Mask, Vcl.DBCtrls;

type
  TViewFornecedores = class(TViewBaseListas)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    pnlTituloCadastro: TPanel;
    lblTituloCadastro: TLabel;
    edtPES_CODIGO: TDBEdit;
    edtPES_RAZAO: TDBEdit;
    edtPES_FANTASIA: TDBEdit;
    edtPES_TELEFONE: TDBEdit;
    edtPES_CPFCNPJ: TDBEdit;
    edtPES_IERG: TDBEdit;
    edtPES_OBSERVACAO: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewFornecedores: TViewFornecedores;

implementation

{$R *.dfm}

procedure TViewFornecedores.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if ServiceCadastro.QRY_Pessoas.State in dsEditModes then
    ServiceCadastro.QRY_Pessoas.Cancel;
  CardPanelLista.ActiveCard := CardPesquisa;
end;

procedure TViewFornecedores.btnEditarClick(Sender: TObject);
begin
  inherited;
  if ServiceCadastro.QRY_Pessoas.State = dsInsert then
    ShowMessage('Cadastro em modo novo registro, não é possível editar ainda.')
  else
  begin
    CardPanelLista.ActiveCard := CardCadastro;
    edtPES_CPFCNPJ.SetFocus;
    ServiceCadastro.QRY_Pessoas.Edit;
  end;
end;

procedure TViewFornecedores.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if ServiceCadastro.QRY_Pessoas.State in dsEditModes then
  begin
    ShowMessage('Não é possível excluir enquanto em modo edição ou inclusão.');
    Exit;
  end;

  if ServiceCadastro.QRY_Pessoas.RecordCount > 0 then
  begin
    ServiceCadastro.QRY_Pessoas.Delete;
    ShowMessage('Cliente deletado com sucesso!');
  end;
  CardPanelLista.ActiveCard := CardPesquisa;
end;

procedure TViewFornecedores.btnNovoClick(Sender: TObject);
begin
  inherited;
    if ServiceCadastro.QRY_Pessoas.State = dsInsert then
      ShowMessage('Cadastro já em modo novo registro.')
    else
    begin
      CardPanelLista.ActiveCard := CardCadastro;
      edtPES_CPFCNPJ.SetFocus;
      ServiceCadastro.QRY_Pessoas.Insert;
    end;
end;

procedure TViewFornecedores.btnSalvarClick(Sender: TObject);
begin
  inherited;
  inherited;
  if ServiceCadastro.QRY_Pessoas.State in dsEditModes then
  begin
    ServiceCadastro.QRY_PessoasPES_TIPO_PESSOA.AsInteger := 2;
    ServiceCadastro.QRY_Pessoas.Post;
    ShowMessage('Registro salvo com sucesso!');
  end
  else
    ShowMessage('Não há o que salvar.');

  CardPanelLista.ActiveCard := CardPesquisa;
end;

procedure TViewFornecedores.FormShow(Sender: TObject);
begin
  inherited;
  GET_Pessoas(2);
end;

end.
