unit VPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Provider.Constants, VClientes, VFornecedores,
  Provider.Functions, VProdutos;

type
  TViewPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlMenu: TPanel;
    pnlBackPrincipal: TPanel;
    pnlRodape: TPanel;
    pnlConteudo: TPanel;
    pnlLogo: TPanel;
    pnlConteudoLogo: TPanel;
    lblTituloEmpresa: TLabel;
    lblDescricaoEmpresa: TLabel;
    pnlVersao: TPanel;
    lblVersaoTitulo: TLabel;
    lblVersao: TLabel;
    pnlLineHeader: TPanel;
    pnlUsuario: TPanel;
    pnlLineUsuario: TPanel;
    pnlImgUsuario: TPanel;
    pnlDadosUsuario: TPanel;
    imgUserWhite: TImage;
    lblNomeUsuario: TLabel;
    lblPerfilUsuario: TLabel;
    pnlLicenciado: TPanel;
    pnlLineRodape: TPanel;
    pnlConteudoLicenca: TPanel;
    lblTitLicenciado: TLabel;
    lblLicenciado: TLabel;
    pnlShapeMenu: TPanel;
    pnlSair: TPanel;
    pnlDadosMenu: TPanel;
    shapeMenu: TShape;
    btnCaixa: TSpeedButton;
    btnClientes: TSpeedButton;
    btnFornecedores: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnConfig: TSpeedButton;
    btnSair: TSpeedButton;
    imgUserPurple: TImage;
    imgBackground: TImage;
    procedure FormShow(Sender: TObject);
    procedure speedButtonOnMouseEnter(Sender: TObject);
    procedure speedButtonOnMouseLeave(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure lblTituloEmpresaMouseEnter(Sender: TObject);
    procedure lblTituloEmpresaMouseLeave(Sender: TObject);
    procedure imgUserWhiteMouseEnter(Sender: TObject);
    procedure imgUserPurpleMouseLeave(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
  private
    procedure getMenuLine(Sender: TObject);

  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.btnClientesClick(Sender: TObject);
begin
  ViewClientes := TViewClientes.Create(Self);
  try
    ViewClientes.Tag := PessoasEnumToInt(tpCliente);
    ViewClientes.ShowModal;
  finally
    FreeAndNil(ViewClientes);
  end;
end;

procedure TViewPrincipal.btnFornecedoresClick(Sender: TObject);
begin
  ViewFornecedores := TViewFornecedores.Create(Self);
  try
    ViewFornecedores.Tag := PessoasEnumToInt(tpFornecedores);
    ViewFornecedores.ShowModal;
  finally
    FreeAndNil(ViewFornecedores);
  end;
end;

procedure TViewPrincipal.btnProdutosClick(Sender: TObject);
begin
  ViewProdutos := TViewProdutos.Create(Self);
  try
    ViewProdutos.Tag := PessoasEnumToInt(tpCliente);
    ViewProdutos.ShowModal;
  finally
    FreeAndNil(ViewProdutos);
  end;
end;

procedure TViewPrincipal.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;


//procedures para formatação
procedure TViewPrincipal.FormShow(Sender: TObject);
begin
  getMenuLine(btnClientes);
  lblLicenciado.Caption := sRAZAO_FILIAL;
end;

procedure TViewPrincipal.speedButtonOnMouseEnter(Sender: TObject);
begin
  getMenuLine(Sender);
  TSpeedButton(Sender).Font.Color := clPurple;
end;

procedure TViewPrincipal.speedButtonOnMouseLeave(Sender: TObject);
begin
  TSpeedButton(Sender).Font.Color := clWhite;
end;

procedure TViewPrincipal.getMenuLine(Sender: TObject);
begin
  shapeMenu.Left := 0;
  shapeMenu.Top := 0;
  shapeMenu.Height := TSpeedButton(Sender).Height;
  shapeMenu.Top := TSpeedButton(Sender).Top;
  pnlShapeMenu.Repaint;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseEnter(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := $000FBBD9;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseLeave(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := clWhite;
end;

procedure TViewPrincipal.imgUserWhiteMouseEnter(Sender: TObject);
begin
  imgUserWhite.Visible := false;
  imgUserPurple.Visible := true;
end;

procedure TViewPrincipal.imgUserPurpleMouseLeave(Sender: TObject);
begin
  imgUserWhite.Visible := true;
  imgUserPurple.Visible := false;
end;

end.
