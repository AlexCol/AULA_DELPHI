unit Provider.Procedures;


interface
  uses Service.Cadastro;
  procedure GET_Pessoas(iTIPO: integer);
  procedure GET_Produtos;

implementation

procedure GET_Pessoas(iTIPO: integer);
begin
  ServiceCadastro.QRY_Pessoas.Close;
  ServiceCadastro.QRY_Pessoas.SQL.Clear;
  ServiceCadastro.QRY_Pessoas.SQL.Add('select * from pessoa where pes_tipo_pessoa = :tipopessoa');
  ServiceCadastro.QRY_Pessoas.SQL.Add('order by 1 asc');
  ServiceCadastro.QRY_Pessoas.Params[0].AsInteger := iTIPO;
  ServiceCadastro.QRY_Pessoas.Open();
end;

procedure GET_Produtos;
begin
  ServiceCadastro.QRY_Produto.Close;
  ServiceCadastro.QRY_Produto.SQL.Clear;
  ServiceCadastro.QRY_Produto.SQL.Add('select * from produto');
  ServiceCadastro.QRY_Produto.SQL.Add('order by 1 asc');
  //ServiceCadastro.QRY_Produto.Params[0].AsInteger := iTIPO;
  ServiceCadastro.QRY_Produto.Open();
end;
end.
