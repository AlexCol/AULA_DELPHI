unit VBaseListas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VBase, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.StdCtrls, Vcl.WinXPanels, Vcl.WinXCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

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
    DBGrid1: TDBGrid;
    dsDados: TDataSource;
    procedure btnSairClick(Sender: TObject);
    procedure pnlTopoPesquisaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnNovoMouseEnter(Sender: TObject);
    procedure btnNovoMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

procedure TViewBaseListas.btnSairClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewBaseListas.FormShow(Sender: TObject);
begin
  inherited;
  CardPanelLista.ActiveCard := CardPesquisa;
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
