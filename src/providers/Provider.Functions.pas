unit Provider.Functions;

interface
uses SysUtils, StrUtils, Classes;

type
  TPCPessoas = (tpCliente, tpFornecedores, tpFuncionarios);


  function PessoaIntToStr(codigoTipoPessoa: integer): string;
  function PessoasEnumToInt(const t: TPCPessoas): integer;
implementation

  function PessoaIntToStr(codigoTipoPessoa: integer): string;
  begin
    case codigoTipoPessoa of
      1: result := 'Cliente';
      2: result := 'Fornecedor';
      3: result := 'Funcionário';
    else
      result := 'Nao informado';
    end;
  end;

  function PessoasEnumToInt(const t: TPCPessoas): integer;
  begin
    case t of
      tpCliente: result := 1;
      tpFornecedores: result := 2;
      tpFuncionarios: result := 3;
    else
      result := 0;
    end;
  end;
end.
