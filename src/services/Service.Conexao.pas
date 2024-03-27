unit Service.Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.UI,
  Data.DB, FireDAC.Comp.Client, System.IniFiles, Data.FMTBcd, Data.SqlExpr,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Provider.Constants
  ;

type
  TServiceConexao = class(TDataModule)
    FDConn: TFDConnection;
    WaitCursor: TFDGUIxWaitCursor;
    FBDriverLink: TFDPhysFBDriverLink;
    QRY_Filial: TFDQuery;
    QRY_FilialFIL_CODIGO: TIntegerField;
    QRY_FilialFIL_RAZAO: TStringField;
    QRY_FilialFIL_FANTASIA: TStringField;
    QRY_FilialFIL_CNPJ: TStringField;
    QRY_FilialFIL_TELEFONE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceConexao: TServiceConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TServiceConexao.DataModuleCreate(Sender: TObject);
var
  LIniFile: TIniFile;
  LDatabase: string;
  LUserName: string;
  LPassword: string;
  LServidor: string;
  LPorta: integer;
  LCaminho: string;

  teste: double;
begin
  try
    FDConn.Connected := false;

    LCaminho := ExtractFileDir(ParamStr((0)) ); // + '\Login.ini');
    LCaminho := LCaminho + '\Login.ini';

    LIniFile := TIniFile.Create(LCaminho);

    LDatabase := LIniFile.ReadString('Conexao', 'Database', LDatabase);
    LServidor := LIniFile.ReadString('Conexao', 'Servidor', LServidor);
    LPorta := LIniFile.ReadInteger('Conexao', 'Porta', LPorta);

    LUserName := 'SYSDBA';
    LPassword := 'ale123';

    FDConn.Params.Values['Database'] := LDatabase;
    FDConn.Params.Values['User_Name'] := LUserName;
    FDConn.Params.Values['Password'] := LPassword;
    FDConn.Params.Values['Server'] := LServidor;
    FDConn.Params.Values['Port'] := LPorta.ToString;

    FDConn.Connected := true;
  finally
    FreeAndNil(LIniFile);
  end;

  //carrega a filial
  QRY_Filial.Close;
  QRY_Filial.Params[0].AsInteger := 2;
  QRY_Filial.Open();

  iCOD_FILIAL := QRY_FilialFIL_CODIGO.AsInteger;
  sRAZAO_FILIAL := QRY_FilialFIL_RAZAO.AsString;
end;

end.
