unit Provider.Procedures;

interface
  uses Provider.Constants;


  procedure GET_Pessoas(iTIPO: integer);
  procedure GET_Produtos;
  procedure GET_Produtos_Filial(iCod_Produto: integer); overload;
  procedure GET_Produtos_Filial(iCod_Produto, iCod_Filial: integer); overload;
implementation
  uses Service.Cadastro;

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
  ServiceCadastro.QRY_Produto.Open();
end;

procedure GET_Produtos_Filial(iCod_Produto: integer);
begin
  ServiceCadastro.QRY_Produto_Filial.Close;
  ServiceCadastro.QRY_Produto_Filial.SQL.Clear;
  ServiceCadastro.QRY_Produto_Filial.SQL.Add('select * from produto_filial');
  ServiceCadastro.QRY_Produto_Filial.SQL.Add('where prf_codigo_prd = :cod_prod');
  ServiceCadastro.QRY_Produto_Filial.SQL.Add('order by 1 asc');
  ServiceCadastro.QRY_Produto_Filial.ParamByName('cod_prod').AsInteger := iCod_Produto;
  ServiceCadastro.QRY_Produto_Filial.Open();
end;

procedure GET_Produtos_Filial(iCod_Produto, iCod_Filial: integer);
begin
  ServiceCadastro.QRY_Produto_Filial.Close;
  ServiceCadastro.QRY_Produto_Filial.SQL.Clear;
  ServiceCadastro.QRY_Produto_Filial.SQL.Add('select * from produto_filial');
  ServiceCadastro.QRY_Produto_Filial.SQL.Add('where prf_codigo_prd = :cod_prod');
  ServiceCadastro.QRY_Produto_Filial.SQL.Add('and prf_filial = :filial');
  ServiceCadastro.QRY_Produto_Filial.SQL.Add('order by 1 asc');

  ServiceCadastro.QRY_Produto_Filial.ParamByName('cod_prod').AsInteger := iCod_Produto;
  ServiceCadastro.QRY_Produto_Filial.ParamByName('filial').AsInteger := iCod_Filial;

  ServiceCadastro.QRY_Produto_Filial.Open();
end;
end.
