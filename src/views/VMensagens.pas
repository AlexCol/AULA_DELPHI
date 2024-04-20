unit VMensagens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VBase, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.pngimage, VFundo;

type
  TMyButtons = (mbSim, mbNao, mbOk);

type
  TViewMensagens = class(TViewBase)
    pnlImagens: TPanel;
    pnlConteudo: TPanel;
    pnlTitulo: TPanel;
    pnlBotoes: TPanel;
    mmoTexto: TMemo;
    lblTitulo: TLabel;
    btnOk: TSpeedButton;
    btnSim: TSpeedButton;
    btnNao: TSpeedButton;
    imgAlert: TImage;
    imgInformation: TImage;
    imgErro: TImage;
    procedure btnSimClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnNaoClick(Sender: TObject);
    procedure MouseDownToMove(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    class function Mensagem(Texto: string; Titulo: string; Tipo: Char; Botoes: array of TMyButtons): boolean;
  end;

var
  ViewMensagens: TViewMensagens;

implementation

{$R *.dfm}

{ TViewMensagens }

procedure TViewMensagens.btnSimClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrYes;
end;


procedure TViewMensagens.btnNaoClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrNo;
end;

procedure TViewMensagens.btnOkClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrOk;
end;

class function TViewMensagens.Mensagem(Texto, Titulo: string; Tipo: Char; Botoes: array of TMyButtons) : boolean;
var
  indiceLacoFor: integer;
  view: TViewMensagens;
begin
  view := TViewMensagens.Create(nil);
  try
    view.lblTitulo.Caption := Titulo;
    view.mmoTexto.Text := Texto;

    for indiceLacoFor := 0 to Length(Botoes)-1 do
    begin
      case Botoes[indiceLacoFor] of
        mbOk:
          begin
            view.btnOk.Visible := true;
            view.btnOk.Align := alRight;          
          end;
        mbSim:
          begin
            view.btnSim.Visible := true;
            view.btnSim.Align := alRight;
          end;
        mbNao:
          begin
            view.btnNao.Visible := true;
            view.btnNao.Align := alRight;          
          end;
        else
          begin
            view.btnOk.Visible := true;
            view.btnOk.Align := alRight;          
          end;        
      end;    
    end;

    case Tipo of
      'I': view.imgInformation.Visible := true;
      'A': view.imgAlert.Visible := true;
      'E': view.imgErro.Visible := true;        
      else view.imgInformation.Visible := true;
    end;

    ViewFundo.Show;
    view.ShowModal;

    case view.ModalResult of
      mrOk, mrYes: result := true;
      else result := false;
    end;

  finally
    if view <> nil then
      ViewFundo.Hide;
      FreeAndNil(view);
  end;
end;

procedure TViewMensagens.MouseDownToMove(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $f012;
begin
  inherited;
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, sc_DragMove, 0);
end;
end.
