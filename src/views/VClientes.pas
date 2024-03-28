unit VClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VBaseListas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Service.Cadastro, Vcl.DBCtrls, Vcl.Mask;

type
  TViewClientes = class(TViewBaseListas)
    pnlTituloCadastro: TPanel;
    lblTituloCadastro: TLabel;
    Label1: TLabel;
    edtPES_CODIGO: TDBEdit;
    Label2: TLabel;
    edtPES_RAZAO: TDBEdit;
    Label3: TLabel;
    edtPES_FANTASIA: TDBEdit;
    Label4: TLabel;
    edtPES_TELEFONE: TDBEdit;
    Label5: TLabel;
    edtPES_CPFCNPJ: TDBEdit;
    Label6: TLabel;
    edtPES_IERG: TDBEdit;
    Label7: TLabel;
    edtPES_OBSERVACAO: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure GET_Pessoas(iTIPO: integer);
  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.dfm}

{ TViewBaseListas1 }

procedure TViewClientes.FormShow(Sender: TObject);
begin
  inherited;
  GET_Pessoas(1);
end;

procedure TViewClientes.GET_Pessoas(iTIPO: integer);
begin
  ServiceCadastro.QRY_Pessoas.Close;
  ServiceCadastro.QRY_Pessoas.SQL.Clear;
  ServiceCadastro.QRY_Pessoas.SQL.Add('select * from pessoa where pes_tipo_pessoa = :tipopessoa');
  ServiceCadastro.QRY_Pessoas.SQL.Add('order by 1 asc');
  ServiceCadastro.QRY_Pessoas.Params[0].AsInteger := iTIPO;
  ServiceCadastro.QRY_Pessoas.Open();
end;

procedure TViewClientes.btnNovoClick(Sender: TObject);
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

procedure TViewClientes.btnEditarClick(Sender: TObject);
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

procedure TViewClientes.btnSalvarClick(Sender: TObject);
begin
  inherited;
  if ServiceCadastro.QRY_Pessoas.State in dsEditModes then
  begin
    ServiceCadastro.QRY_PessoasPES_TIPO_PESSOA.AsInteger := 1;
    ServiceCadastro.QRY_Pessoas.Post;
    ShowMessage('Registro salvo com sucesso!');
  end
  else
    ShowMessage('Não há o que salvar.');

  CardPanelLista.ActiveCard := CardPesquisa;
end;

procedure TViewClientes.btnExcluirClick(Sender: TObject);
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

procedure TViewClientes.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if ServiceCadastro.QRY_Pessoas.State in dsEditModes then
    ServiceCadastro.QRY_Pessoas.Cancel;
  CardPanelLista.ActiveCard := CardPesquisa;
end;
end.
