inherited ViewFornecedores: TViewFornecedores
  Caption = 'ViewFornecedores'
  TextHeight = 15
  inherited pnlTopoPesquisa: TPanel
    ExplicitWidth = 1100
    inherited lblTitulo: TLabel
      Width = 979
      Height = 29
      Caption = 'Fornecedores'
      ExplicitWidth = 115
    end
    inherited pnlFechar: TPanel
      ExplicitLeft = 1020
    end
  end
  inherited pnlRodapePesquisa: TPanel
    ExplicitTop = 560
    ExplicitWidth = 1100
    inherited btnNovo: TSpeedButton
      OnClick = btnNovoClick
    end
    inherited btnEditar: TSpeedButton
      OnClick = btnEditarClick
    end
    inherited btnCancelar: TSpeedButton
      OnClick = btnCancelarClick
    end
    inherited btnSalvar: TSpeedButton
      OnClick = btnSalvarClick
    end
    inherited btnExcluir: TSpeedButton
      OnClick = btnExcluirClick
    end
  end
  inherited pnlBackgroundPesquisa: TPanel
    ExplicitWidth = 1100
    ExplicitHeight = 525
    inherited CardPanelLista: TCardPanel
      ActiveCard = CardCadastro
      ExplicitWidth = 1098
      ExplicitHeight = 525
      inherited CardPesquisa: TCard
        ExplicitWidth = 1098
        ExplicitHeight = 525
        inherited pnlTituloPesquisa: TPanel
          ExplicitWidth = 1098
        end
        inherited DBGrid1: TDBGrid
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
              Title.Caption = 'Nome do Fornecedor'
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
              Title.Caption = 'CNPJ'
              Width = 193
              Visible = True
            end>
        end
      end
      inherited CardCadastro: TCard
        ExplicitHeight = 525
        object Label1: TLabel
          Left = 24
          Top = 120
          Width = 38
          Height = 15
          Caption = 'C'#243'digo'
          FocusControl = edtPES_CODIGO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 286
          Top = 120
          Width = 123
          Height = 15
          Caption = 'Nome dor Fornecedor'
          FocusControl = edtPES_RAZAO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 742
          Top = 120
          Width = 81
          Height = 15
          Caption = 'Nome Fantasia'
          FocusControl = edtPES_FANTASIA
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
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
        object Label5: TLabel
          Left = 130
          Top = 120
          Width = 52
          Height = 15
          Caption = 'CPF/CNPJ'
          FocusControl = edtPES_CPFCNPJ
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
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
        object Label7: TLabel
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
        object pnlTituloCadastro: TPanel
          Left = 0
          Top = 0
          Width = 1098
          Height = 81
          Align = alTop
          BevelOuter = bvNone
          Color = 9502865
          ParentBackground = False
          TabOrder = 0
          ExplicitTop = 8
          object lblTituloCadastro: TLabel
            Left = 13
            Top = 6
            Width = 241
            Height = 30
            Alignment = taCenter
            Caption = 'Cadastro de Fornecedores'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
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
          TabOrder = 1
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
          TabOrder = 3
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
          TabOrder = 4
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
          TabOrder = 6
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
          TabOrder = 2
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
          TabOrder = 5
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
          TabOrder = 7
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
