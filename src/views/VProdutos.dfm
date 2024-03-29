inherited ViewProdutos: TViewProdutos
  Caption = 'ViewProdutos'
  TextHeight = 15
  inherited pnlTopoPesquisa: TPanel
    inherited lblTitulo: TLabel
      Width = 979
      Height = 29
      Caption = 'Produtos'
      ExplicitWidth = 77
    end
  end
  inherited pnlBackgroundPesquisa: TPanel
    inherited CardPanelLista: TCardPanel
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
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_Produto
    OnDataChange = dsDadosDataChange
    Left = 72
    Top = 176
  end
  object dsProdutoFilial: TDataSource
    DataSet = ServiceCadastro.QRY_Produto_Filial
    Left = 72
    Top = 464
  end
end
