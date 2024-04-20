inherited ViewClientes: TViewClientes
  Caption = 'ViewClientes'
  TextHeight = 15
  inherited pnlTopoPesquisa: TPanel
    inherited lblTitulo: TLabel
      Caption = 'Clientes'
      ExplicitWidth = 68
    end
  end
  inherited pnlBackgroundPesquisa: TPanel
    inherited CardPanelLista: TCardPanel
      inherited CardPesquisa: TCard
        inherited DBG_dados: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'PES_CODIGO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_RAZAO'
              Title.Caption = 'Nome do Cliente'
              Width = 647
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_TELEFONE'
              Title.Caption = 'Telefone'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_CPFCNPJ'
              Title.Caption = 'CNPJ/CPF'
              Width = 193
              Visible = True
            end>
        end
      end
      inherited CardCadastro: TCard
        Font.Charset = ANSI_CHARSET
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitTop = 0
        object Label1: TLabel [0]
          Left = 24
          Top = 120
          Width = 38
          Height = 15
          Caption = 'C'#243'digo'
          FocusControl = edtPES_CODIGO
        end
        object Label2: TLabel [1]
          Left = 286
          Top = 120
          Width = 93
          Height = 15
          Caption = 'Nome do Cliente'
          FocusControl = edtPES_RAZAO
        end
        object Label3: TLabel [2]
          Left = 742
          Top = 120
          Width = 81
          Height = 15
          Caption = 'Nome Fantasia'
          FocusControl = edtPES_FANTASIA
        end
        object Label4: TLabel [3]
          Left = 274
          Top = 176
          Width = 49
          Height = 15
          Caption = 'Telefone'
          FocusControl = edtPES_TELEFONE
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel [4]
          Left = 130
          Top = 120
          Width = 52
          Height = 15
          Caption = 'CPF/CNPJ'
          FocusControl = edtPES_CPFCNPJ
        end
        object Label6: TLabel [5]
          Left = 24
          Top = 176
          Width = 125
          Height = 15
          Caption = 'Inscri'#231#227'o Estadual / RG'
          FocusControl = edtPES_IERG
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel [6]
          Left = 25
          Top = 232
          Width = 65
          Height = 15
          Caption = 'Observa'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        inherited pnlTituloCadastro: TPanel
          TabOrder = 7
          ExplicitTop = 0
          inherited lblTituloCadastro: TLabel
            Width = 312
            Caption = '[ CADASTRO DE CLIENTES ]'
            ExplicitWidth = 312
          end
        end
        object edtPES_CODIGO: TDBEdit
          Left = 24
          Top = 136
          Width = 100
          Height = 23
          DataField = 'PES_CODIGO'
          DataSource = dsDados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtPES_RAZAO: TDBEdit
          Left = 286
          Top = 136
          Width = 450
          Height = 23
          DataField = 'PES_RAZAO'
          DataSource = dsDados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object edtPES_FANTASIA: TDBEdit
          Left = 742
          Top = 136
          Width = 300
          Height = 23
          DataField = 'PES_FANTASIA'
          DataSource = dsDados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ImeName = 'edtPES_FANTASIA'
          ParentFont = False
          TabOrder = 3
        end
        object edtPES_TELEFONE: TDBEdit
          Left = 274
          Top = 192
          Width = 244
          Height = 23
          DataField = 'PES_TELEFONE'
          DataSource = dsDados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object edtPES_CPFCNPJ: TDBEdit
          Left = 130
          Top = 136
          Width = 150
          Height = 23
          DataField = 'PES_CPFCNPJ'
          DataSource = dsDados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edtPES_IERG: TDBEdit
          Left = 24
          Top = 192
          Width = 244
          Height = 23
          DataField = 'PES_IERG'
          DataSource = dsDados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object edtPES_OBSERVACAO: TDBEdit
          Left = 24
          Top = 253
          Width = 1018
          Height = 23
          DataField = 'PES_OBSERVACAO'
          DataSource = dsDados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_Pessoas
    Left = 56
    Top = 488
  end
end
