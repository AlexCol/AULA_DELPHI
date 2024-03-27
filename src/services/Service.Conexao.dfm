object ServiceConexao: TServiceConexao
  OnCreate = DataModuleCreate
  Height = 357
  Width = 631
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=D:\meusRepos\AULA_DELPHI\database\DADOS.FDB'
      'User_Name=SYSDBA'
      'Protocol=TCPIP'
      'Server=Localhost'
      'Port=3050'
      'CharacterSet=WIN1252'
      'Password=ale123'
      'DriverID=FB')
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 32
    Top = 80
  end
  object FBDriverLink: TFDPhysFBDriverLink
    Left = 32
    Top = 136
  end
  object QRY_Filial: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from filial'
      'where fil_codigo = :codigo ')
    Left = 168
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRY_FilialFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
      Origin = 'FIL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_FilialFIL_RAZAO: TStringField
      FieldName = 'FIL_RAZAO'
      Origin = 'FIL_RAZAO'
      Size = 100
    end
    object QRY_FilialFIL_FANTASIA: TStringField
      FieldName = 'FIL_FANTASIA'
      Origin = 'FIL_FANTASIA'
      Size = 100
    end
    object QRY_FilialFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Origin = 'FIL_CNPJ'
      Size = 18
    end
    object QRY_FilialFIL_TELEFONE: TStringField
      FieldName = 'FIL_TELEFONE'
      Origin = 'FIL_TELEFONE'
      Size = 16
    end
  end
end
