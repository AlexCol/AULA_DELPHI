unit Service.Cadastro;

interface

uses
  System.SysUtils, System.Classes, Service.Conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TServiceCadastro = class(TDataModule)
    QRY_Pessoas: TFDQuery;
    QRY_PessoasPES_CODIGO: TIntegerField;
    QRY_PessoasPES_RAZAO: TStringField;
    QRY_PessoasPES_FANTASIA: TStringField;
    QRY_PessoasPES_TELEFONE: TStringField;
    QRY_PessoasPES_CPFCNPJ: TStringField;
    QRY_PessoasPES_IERG: TStringField;
    QRY_PessoasPES_OBSERVACAO: TStringField;
    QRY_PessoasPES_TIPO_PESSOA: TIntegerField;
    QRY_Enderecos: TFDQuery;
    QRY_EnderecosEND_CODIGO: TIntegerField;
    QRY_EnderecosEND_PESSOA: TIntegerField;
    QRY_EnderecosEND_CEP: TStringField;
    QRY_EnderecosEND_CIDADE: TStringField;
    QRY_EnderecosEND_BAIRRO: TStringField;
    QRY_EnderecosEND_ENDERECO: TStringField;
    QRY_EnderecosEND_NUMERO: TStringField;
    QRY_EnderecosEND_OBSERVACAO: TStringField;
    QRY_Produto: TFDQuery;
    QRY_Produto_Filial: TFDQuery;
    QRY_Situacao_Tributaria: TFDQuery;
    QRY_Situacao_TributariaSIT_CODIGO: TIntegerField;
    QRY_Situacao_TributariaSIT_DESCRICAO: TStringField;
    QRY_Situacao_TributariaSIT_CST: TIntegerField;
    QRY_Produto_FilialPRF_CODIGO: TIntegerField;
    QRY_Produto_FilialPRF_CODIGO_PRD: TIntegerField;
    QRY_Produto_FilialPRF_FILIAL: TIntegerField;
    QRY_Produto_FilialPRF_CUSTOINI: TFMTBCDField;
    QRY_Produto_FilialPRF_VENDAVUSTA: TFMTBCDField;
    QRY_Produto_FilialPRF_VENDAPRAZAO: TFMTBCDField;
    QRY_Produto_FilialPRF_SITUACAO_TRIBUTARIA: TIntegerField;
    QRY_ProdutoPRD_CODIGO: TIntegerField;
    QRY_ProdutoPRD_NOME_COMPLETO: TStringField;
    QRY_ProdutoPRD_NOME_POPULAR: TStringField;
    QRY_ProdutoPRD_CODIGO_BARRA: TStringField;
    QRY_ProdutoPRD_REFERENCIA: TStringField;
    QRY_ProdutoPRF_NCM: TStringField;
    QRY_ProdutoPRD_GRUPO: TIntegerField;
    QRY_ProdutoPRD_SUBGRUPO: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceCadastro: TServiceCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
