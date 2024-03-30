unit VBaseListas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VBase, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.StdCtrls, Vcl.WinXPanels, Vcl.WinXCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Service.Cadastro, Provider.Procedures, Provider.Functions,
  VMensagens;

type
  TViewBaseListas = class(TViewBase)
    pnlTopoPesquisa: TPanel;
    pnlRodapePesquisa: TPanel;
    pnlIcone: TPanel;
    imgIcone: TImage;
    pnlFechar: TPanel;
    btnSair: TSpeedButton;
    lblTitulo: TLabel;
    btnNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnExcluir: TSpeedButton;
    CardPanelLista: TCardPanel;
    pnlBackgroundPesquisa: TPanel;
    CardPesquisa: TCard;
    CardCadastro: TCard;
    pnlTituloPesquisa: TPanel;
    lblTituloPesquisa: TLabel;
    edtPesquisa: TSearchBox;
    DBG_dados: TDBGrid;
    dsDados: TDataSource;
    procedure btnSairClick(Sender: TObject);
    procedure pnlTopoPesquisaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnNovoMouseEnter(Sender: TObject);
    procedure btnNovoMouseLeave(Sender: TObject);
    procedure CardPanelListaCardChange(Sender: TObject; PrevCard,
      NextCard: TCard);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    var
      sTELA: string;
  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

procedure TViewBaseListas.FormShow(Sender: TObject);
begin
  inherited;
  CardPanelLista.ActiveCard := CardPesquisa;
  GET_Pessoas(Self.Tag);
end;

procedure TViewBaseListas.CardPanelListaCardChange(Sender: TObject; PrevCard,
  NextCard: TCard);
begin
  inherited;
  if CardPanelLista.ActiveCard = CardCadastro then
    SelectFirst;

end;

procedure TViewBaseListas.pnlTopoPesquisaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $f012;
begin
  inherited;
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, sc_DragMove, 0);
end;


// clicks
procedure TViewBaseListas.btnSairClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewBaseListas.btnNovoClick(Sender: TObject);
begin
  inherited;
  if dsDados.DataSet.State = dsInsert then
    TViewMensagens.Mensagem('Cadastro já em modo novo registro.',
                        'Alerta',
                        'A',
                        [mbOk])
  else
  begin
    CardPanelLista.ActiveCard := CardCadastro;
    dsDados.DataSet.Insert;
  end;
end;

procedure TViewBaseListas.btnEditarClick(Sender: TObject);
begin
  inherited;
  if dsDados.DataSet.State = dsInsert then
    TViewMensagens.Mensagem('Cadastro em modo novo registro, não é possível editar ainda.',
                            'Alerta',
                            'A',
                            [mbOk])
  else
  begin
    CardPanelLista.ActiveCard := CardCadastro;
    dsDados.DataSet.Edit;
  end;
end;

procedure TViewBaseListas.btnSalvarClick(Sender: TObject);
begin
  inherited;
  if not (dsDados.DataSet.State in dsEditModes) then
    TViewMensagens.Mensagem('Não há o que salvar.', 'Alerta', 'A', [mbOk])
  else
  begin
    if Self.Tag > 0 then
    begin
      ServiceCadastro.QRY_PessoasPES_TIPO_PESSOA.AsInteger := Self.Tag;
      ServiceCadastro.QRY_Pessoas.Post;
      if Self.Tag > 0 then
        TViewMensagens.Mensagem(PessoaIntToStr(Self.Tag) + ' salvo com sucesso!', 'Salvar', 'I', [mbOk])
      else
        TViewMensagens.Mensagem('Registro salvo com sucesso!', 'Salvar', 'I', [mbOk]);
    end
    else
    begin
      dsDados.DataSet.Post;
      TViewMensagens.Mensagem(sTELA + ' salvo com sucesso!', 'Salvar', 'I', [mbOk]);
    end;
  end;

  CardPanelLista.ActiveCard := CardPesquisa;
end;

procedure TViewBaseListas.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if dsDados.DataSet.State in dsEditModes then
  begin
    TViewMensagens.Mensagem('Não é possível excluir enquanto em modo edição ou inclusão.', 'Alerta', 'A', [mbOk]);
    Exit;
  end;

  if not TViewMensagens.Mensagem('Deseja mesmo excluir?', 'Exclusão', 'A', [mbNao, mbSim]) then
    Exit;

  if dsDados.DataSet.RecordCount > 0 then
  begin
    dsDados.DataSet.Delete;
    if Self.Tag > 0 then
      TViewMensagens.Mensagem(PessoaIntToStr(Self.Tag) + ' excluido com sucesso!', 'Exclusão', 'I', [mbOk])
    else
      TViewMensagens.Mensagem(sTELA + ' excluido com sucesso!', 'Exclusão', 'I', [mbOk]);
  end;
  CardPanelLista.ActiveCard := CardPesquisa;
end;

procedure TViewBaseListas.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if dsDados.DataSet.State in dsEditModes then
    dsDados.DataSet.Cancel;
  CardPanelLista.ActiveCard := CardPesquisa;
end;


procedure TViewBaseListas.btnNovoMouseEnter(Sender: TObject);
begin
  inherited;
  TSpeedButton(Sender).Font.Color := clPurple;
end;

procedure TViewBaseListas.btnNovoMouseLeave(Sender: TObject);
begin
  inherited;
  TSpeedButton(Sender).Font.Color := clWhite;
end;


end.
