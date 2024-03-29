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
  inherited pnlRodapePesquisa: TPanel
    ExplicitLeft = 8
    ExplicitTop = 515
  end
  inherited pnlBackgroundPesquisa: TPanel
    inherited CardPanelLista: TCardPanel
      inherited CardPesquisa: TCard
        inherited DBGrid1: TDBGrid
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
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_Produto
    Left = 40
    Top = 472
  end
  object dsProdutoFilial: TDataSource
    Left = 120
    Top = 472
  end
end
