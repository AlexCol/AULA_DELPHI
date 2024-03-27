object ServiceConexao: TServiceConexao
  OnCreate = DataModuleCreate
  Height = 357
  Width = 631
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=D:\meusRepos\AULA_DELPHI\database\DADOS.FDB'
      'User_Name=SYSDBA'
      'Password=ale123'
      'Protocol=TCPIP'
      'Server=Localhost'
      'Port=3050'
      'CharacterSet=WIN1252'
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
end
