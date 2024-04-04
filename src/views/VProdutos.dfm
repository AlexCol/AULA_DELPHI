inherited ViewProdutos: TViewProdutos
  Caption = 'ViewProdutos'
  TextHeight = 15
  inherited pnlTopoPesquisa: TPanel
    inherited lblTitulo: TLabel
      Width = 979
      Height = 29
      Caption = 'Produtos'
      ExplicitWidth = 979
    end
  end
  inherited pnlBackgroundPesquisa: TPanel
    inherited CardPanelLista: TCardPanel
      ActiveCard = CardCadastro
      inherited CardPesquisa: TCard
        inherited DBG_dados: TDBGrid
          Height = 284
          Columns = <
            item
              Expanded = False
              FieldName = 'PRD_CODIGO'
              Title.Caption = 'C'#243'digo'
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_NOME_COMPLETO'
              Title.Caption = 'Nome Completo'
              Width = 350
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_NOME_POPULAR'
              Title.Caption = 'Nome Popular'
              Width = 350
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_CODIGO_BARRA'
              Title.Caption = 'C'#243'digo de Barra'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRD_REFERENCIA'
              Title.Caption = 'Referencia'
              Width = 216
              Visible = True
            end>
        end
        object pnlDetalhes: TPanel
          Left = 0
          Top = 375
          Width = 1098
          Height = 150
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object BDG_Detalhes: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 1088
            Height = 140
            Cursor = crHandPoint
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alClient
            BorderStyle = bsNone
            DataSource = dsProdutoFilial
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'PRF_FILIAL'
                Title.Caption = 'Filial'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRF_CUSTOINI'
                Title.Caption = 'Custo Inicial'
                Width = 156
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRF_VENDAVISTA'
                Title.Caption = 'Venda Vista'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRF_VENDAPRAZAO'
                Title.Caption = 'Venda Prazo'
                Width = 160
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRF_ESTOQUE'
                Title.Caption = 'Estoque'
                Visible = True
              end>
          end
        end
      end
      inherited CardCadastro: TCard
        object Label1: TLabel
          Left = 13
          Top = 112
          Width = 38
          Height = 15
          Caption = 'C'#243'digo'
          FocusControl = edtPRD_CODIGO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 173
          Top = 112
          Width = 91
          Height = 15
          Caption = 'Nome Completo'
          FocusControl = edtPRD_NOME_COMPLETO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 579
          Top = 112
          Width = 79
          Height = 15
          Caption = 'Nome Popular'
          FocusControl = edtPRD_NOME_POPULAR
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 13
          Top = 168
          Width = 93
          Height = 15
          Caption = 'C'#243'digo de Barras'
          FocusControl = edtPRD_CODIGO_BARRA
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 219
          Top = 168
          Width = 61
          Height = 15
          Caption = 'Refer'#234'ncia'
          FocusControl = edtPRD_REFERENCIA
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 625
          Top = 173
          Width = 27
          Height = 15
          Caption = 'NCM'
          FocusControl = edtPRD_NCM
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 37
          Top = 373
          Width = 66
          Height = 15
          Caption = 'Custo Inicial'
          FocusControl = edtPRF_CUSTOINI
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 192
          Top = 373
          Width = 64
          Height = 15
          Caption = 'Venda Vista'
          FocusControl = edtPRF_VENDAVISTA
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 344
          Top = 373
          Width = 68
          Height = 15
          Caption = 'Venda Prazo'
          FocusControl = edtPRF_VENDAPRAZAO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 499
          Top = 373
          Width = 44
          Height = 15
          Caption = 'Estoque'
          FocusControl = edtPRF_ESTOQUE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 37
          Top = 336
          Width = 157
          Height = 21
          Caption = 'Detalhes do Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
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
          object lblTituloCadastro: TLabel
            Left = 13
            Top = 6
            Width = 200
            Height = 30
            Alignment = taCenter
            Caption = 'Cadastro de Produtos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
        end
        object edtPRD_CODIGO: TDBEdit
          Left = 13
          Top = 128
          Width = 154
          Height = 23
          DataField = 'PRD_CODIGO'
          DataSource = dsDados
          ReadOnly = True
          TabOrder = 1
        end
        object edtPRD_NOME_COMPLETO: TDBEdit
          Left = 173
          Top = 128
          Width = 400
          Height = 23
          DataField = 'PRD_NOME_COMPLETO'
          DataSource = dsDados
          TabOrder = 2
        end
        object edtPRD_NOME_POPULAR: TDBEdit
          Left = 579
          Top = 128
          Width = 400
          Height = 23
          DataField = 'PRD_NOME_POPULAR'
          DataSource = dsDados
          TabOrder = 3
        end
        object edtPRD_CODIGO_BARRA: TDBEdit
          Left = 13
          Top = 189
          Width = 200
          Height = 23
          DataField = 'PRD_CODIGO_BARRA'
          DataSource = dsDados
          TabOrder = 4
        end
        object edtPRD_REFERENCIA: TDBEdit
          Left = 219
          Top = 189
          Width = 400
          Height = 23
          DataField = 'PRD_REFERENCIA'
          DataSource = dsDados
          TabOrder = 5
        end
        object edtPRD_NCM: TDBEdit
          Left = 625
          Top = 189
          Width = 354
          Height = 23
          DataField = 'PRF_NCM'
          DataSource = dsDados
          TabOrder = 6
        end
        object edtPRF_CUSTOINI: TDBEdit
          Left = 37
          Top = 389
          Width = 130
          Height = 23
          DataField = 'PRF_CUSTOINI'
          DataSource = dsProdutoFilial
          TabOrder = 7
        end
        object edtPRF_VENDAVISTA: TDBEdit
          Left = 192
          Top = 389
          Width = 130
          Height = 23
          DataField = 'PRF_VENDAVISTA'
          DataSource = dsProdutoFilial
          TabOrder = 8
        end
        object edtPRF_VENDAPRAZAO: TDBEdit
          Left = 344
          Top = 389
          Width = 130
          Height = 23
          DataField = 'PRF_VENDAPRAZAO'
          DataSource = dsProdutoFilial
          TabOrder = 9
        end
        object edtPRF_ESTOQUE: TDBEdit
          Left = 499
          Top = 389
          Width = 130
          Height = 23
          DataField = 'PRF_ESTOQUE'
          DataSource = dsProdutoFilial
          TabOrder = 10
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_Produto
    OnDataChange = dsDadosDataChange
    Left = 120
    Top = 552
  end
  object dsProdutoFilial: TDataSource
    DataSet = ServiceCadastro.QRY_Produto_Filial
    Left = 48
    Top = 552
  end
end
