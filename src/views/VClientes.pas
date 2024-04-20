unit VClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VBaseListas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TViewClientes = class(TViewBaseListas)
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
  private
    { Private declarations }
  public

  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.dfm}

{ TViewBaseListas1 }

end.
