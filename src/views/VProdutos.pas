unit VProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VBaseListas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Service.Cadastro, Provider.Procedures,
  Vcl.Mask, Vcl.DBCtrls;

type
  TViewProdutos = class(TViewBaseListas)
    dsProdutoFilial: TDataSource;
    pnlDetalhes: TPanel;
    BDG_Detalhes: TDBGrid;
    pnlTituloCadastro: TPanel;
    lblTituloCadastro: TLabel;
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
    procedure FormShow(Sender: TObject);
    procedure dsDadosDataChange(Sender: TObject; Field: TField);
    procedure btnNovoClick(Sender: TObject);
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
end;

procedure TViewProdutos.dsDadosDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  GET_Produtos_Filial(ServiceCadastro.QRY_ProdutoPRD_CODIGO.AsInteger);
end;

procedure TViewProdutos.FormShow(Sender: TObject);
begin
  inherited;
  GET_Produtos();
end;

end.
