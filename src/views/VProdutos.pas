unit VProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VBaseListas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Service.Cadastro, Provider.Procedures,
  Vcl.Mask, Vcl.DBCtrls, Provider.Constants, VMensagens;

type
  TViewProdutos = class(TViewBaseListas)
    dsProdutoFilial: TDataSource;
    pnlDetalhes: TPanel;
    BDG_Detalhes: TDBGrid;
    Label1: TLabel;
    edtPRD_CODIGO: TDBEdit;
    Label2: TLabel;
    edtPRD_NOME_COMPLETO: TDBEdit;
    Label3: TLabel;
    edtPRD_NOME_POPULAR: TDBEdit;
    Label4: TLabel;
    edtPRD_CODIGO_BARRA: TDBEdit;
    Label5: TLabel;
    edtPRD_REFERENCIA: TDBEdit;
    Label6: TLabel;
    edtPRD_NCM: TDBEdit;
    Label7: TLabel;
    edtPRF_CUSTOINI: TDBEdit;
    Label8: TLabel;
    edtPRF_VENDAVISTA: TDBEdit;
    Label9: TLabel;
    edtPRF_VENDAPRAZAO: TDBEdit;
    Label10: TLabel;
    edtPRF_ESTOQUE: TDBEdit;
    Label11: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewProdutos: TViewProdutos;

implementation

{$R *.dfm}

procedure TViewProdutos.btnNovoClick(Sender: TObject);
begin
  inherited;
  ServiceCadastro.QRY_ProdutoPRD_GRUPO.AsInteger := 1;
  ServiceCadastro.QRY_ProdutoPRD_SUBGRUPO.AsInteger := 1;
  ServiceCadastro.QRY_Produto_Filial.Open();
  ServiceCadastro.QRY_Produto_Filial.Insert;
end;

procedure TViewProdutos.btnEditarClick(Sender: TObject);
begin
  inherited;
  dsProdutoFilial.DataSet.Edit;
end;

procedure TViewProdutos.btnSalvarClick(Sender: TObject);
begin
  inherited;

  dsDados.DataSet.Post;

  ServiceCadastro.QRY_Produto_Filial.Edit;
  ServiceCadastro.QRY_Produto_FilialPRF_CODIGO_PRD.AsInteger := ServiceCadastro.QRY_ProdutoPRD_CODIGO.AsInteger;
  ServiceCadastro.QRY_Produto_FilialPRF_FILIAL.AsInteger := iCOD_FILIAL;
  ServiceCadastro.QRY_Produto_FilialPRF_SITUACAO_TRIBUTARIA.AsInteger := 1;
  ServiceCadastro.QRY_Produto_Filial.Post;

  TViewMensagens.Mensagem('Produto salvo com sucesso!', 'Salvar', 'I', [mbOk]);
  //ServiceCadastro.QRY_Produto_Filial
end;

procedure TViewProdutos.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if dsDados.DataSet.State in dsEditModes then
    Exit;

  if dsDados.DataSet.RecordCount > 0 then
  begin
    if dsProdutoFilial.DataSet.RecordCount > 0 then
      dsProdutoFilial.DataSet.Delete;

    dsDados.DataSet.Delete;
    TViewMensagens.Mensagem(sTELA + ' excluido com sucesso!', 'Exclusão', 'I', [mbOk]);
  end;
end;

procedure TViewProdutos.FormShow(Sender: TObject);
begin
  inherited;
  GET_Produtos();
end;

end.
