object ServiceCadastro: TServiceCadastro
  Height = 480
  Width = 640
  object QRY_Pessoas: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from pessoa'
      'where pes_codigo = :codigo')
    Left = 40
    Top = 16
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_PessoasPES_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PES_CODIGO'
      Origin = 'PES_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_PessoasPES_RAZAO: TStringField
      FieldName = 'PES_RAZAO'
      Origin = 'PES_RAZAO'
      Size = 100
    end
    object QRY_PessoasPES_FANTASIA: TStringField
      FieldName = 'PES_FANTASIA'
      Origin = 'PES_FANTASIA'
      Size = 100
    end
    object QRY_PessoasPES_TELEFONE: TStringField
      FieldName = 'PES_TELEFONE'
      Origin = 'PES_TELEFONE'
      Size = 16
    end
    object QRY_PessoasPES_CPFCNPJ: TStringField
      FieldName = 'PES_CPFCNPJ'
      Origin = 'PES_CPFCNPJ'
      Size = 16
    end
    object QRY_PessoasPES_IERG: TStringField
      FieldName = 'PES_IERG'
      Origin = 'PES_IERG'
      Size = 16
    end
    object QRY_PessoasPES_OBSERVACAO: TStringField
      FieldName = 'PES_OBSERVACAO'
      Origin = 'PES_OBSERVACAO'
      Size = 500
    end
    object QRY_PessoasPES_TIPO_PESSOA: TIntegerField
      FieldName = 'PES_TIPO_PESSOA'
      Origin = 'PES_TIPO_PESSOA'
    end
  end
  object QRY_Enderecos: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from endereco'
      'where end_pessoa = :codigo')
    Left = 40
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRY_EnderecosEND_CODIGO: TIntegerField
      FieldName = 'END_CODIGO'
      Origin = 'END_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_EnderecosEND_PESSOA: TIntegerField
      FieldName = 'END_PESSOA'
      Origin = 'END_PESSOA'
    end
    object QRY_EnderecosEND_CEP: TStringField
      FieldName = 'END_CEP'
      Origin = 'END_CEP'
      Size = 15
    end
    object QRY_EnderecosEND_CIDADE: TStringField
      FieldName = 'END_CIDADE'
      Origin = 'END_CIDADE'
      Size = 50
    end
    object QRY_EnderecosEND_BAIRRO: TStringField
      FieldName = 'END_BAIRRO'
      Origin = 'END_BAIRRO'
      Size = 150
    end
    object QRY_EnderecosEND_ENDERECO: TStringField
      FieldName = 'END_ENDERECO'
      Origin = 'END_ENDERECO'
      Size = 150
    end
    object QRY_EnderecosEND_NUMERO: TStringField
      FieldName = 'END_NUMERO'
      Origin = 'END_NUMERO'
      Size = 10
    end
    object QRY_EnderecosEND_OBSERVACAO: TStringField
      FieldName = 'END_OBSERVACAO'
      Origin = 'END_OBSERVACAO'
      Size = 500
    end
  end
  object QRY_Produto: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from produto'
      'where prd_codigo = :codigo')
    Left = 176
    Top = 16
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_ProdutoPRD_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_ProdutoPRD_NOME_COMPLETO: TStringField
      FieldName = 'PRD_NOME_COMPLETO'
      Origin = 'PRD_NOME_COMPLETO'
      Size = 100
    end
    object QRY_ProdutoPRD_NOME_POPULAR: TStringField
      FieldName = 'PRD_NOME_POPULAR'
      Origin = 'PRD_NOME_POPULAR'
      Size = 100
    end
    object QRY_ProdutoPRD_CODIGO_BARRA: TStringField
      FieldName = 'PRD_CODIGO_BARRA'
      Origin = 'PRD_CODIGO_BARRA'
      Size = 100
    end
    object QRY_ProdutoPRD_REFERENCIA: TStringField
      FieldName = 'PRD_REFERENCIA'
      Origin = 'PRD_REFERENCIA'
      Size = 100
    end
    object QRY_ProdutoPRF_NCM: TStringField
      FieldName = 'PRF_NCM'
      Origin = 'PRF_NCM'
      Size = 10
    end
    object QRY_ProdutoPRD_GRUPO: TIntegerField
      FieldName = 'PRD_GRUPO'
      Origin = 'PRD_GRUPO'
    end
    object QRY_ProdutoPRD_SUBGRUPO: TIntegerField
      FieldName = 'PRD_SUBGRUPO'
      Origin = 'PRD_SUBGRUPO'
    end
  end
  object QRY_Produto_Filial: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from produto_filial')
    Left = 176
    Top = 144
    object QRY_Produto_FilialPRF_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PRF_CODIGO'
      Origin = 'PRF_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_Produto_FilialPRF_CODIGO_PRD: TIntegerField
      FieldName = 'PRF_CODIGO_PRD'
      Origin = 'PRF_CODIGO_PRD'
    end
    object QRY_Produto_FilialPRF_FILIAL: TIntegerField
      FieldName = 'PRF_FILIAL'
      Origin = 'PRF_FILIAL'
    end
    object QRY_Produto_FilialPRF_CUSTOINI: TFMTBCDField
      FieldName = 'PRF_CUSTOINI'
      Origin = 'PRF_CUSTOINI'
      Precision = 18
      Size = 2
    end
    object QRY_Produto_FilialPRF_VENDAVUSTA: TFMTBCDField
      FieldName = 'PRF_VENDAVUSTA'
      Origin = 'PRF_VENDAVUSTA'
      Precision = 18
      Size = 2
    end
    object QRY_Produto_FilialPRF_VENDAPRAZAO: TFMTBCDField
      FieldName = 'PRF_VENDAPRAZAO'
      Origin = 'PRF_VENDAPRAZAO'
      Precision = 18
      Size = 2
    end
    object QRY_Produto_FilialPRF_SITUACAO_TRIBUTARIA: TIntegerField
      FieldName = 'PRF_SITUACAO_TRIBUTARIA'
      Origin = 'PRF_SITUACAO_TRIBUTARIA'
    end
  end
  object QRY_Situacao_Tributaria: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from situacao_tributaria')
    Left = 176
    Top = 80
    object QRY_Situacao_TributariaSIT_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'SIT_CODIGO'
      Origin = 'SIT_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_Situacao_TributariaSIT_DESCRICAO: TStringField
      FieldName = 'SIT_DESCRICAO'
      Origin = 'SIT_DESCRICAO'
      Size = 100
    end
    object QRY_Situacao_TributariaSIT_CST: TIntegerField
      FieldName = 'SIT_CST'
      Origin = 'SIT_CST'
    end
  end
end
