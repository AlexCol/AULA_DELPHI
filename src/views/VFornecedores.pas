unit VFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VBaseListas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls,
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewFornecedores: TViewFornecedores;

implementation

{$R *.dfm}

end.
