inherited ViewBaseListas: TViewBaseListas
  BorderStyle = bsNone
  Caption = 'ViewBaseListas'
  ClientHeight = 600
  ClientWidth = 1100
  Position = poMainFormCenter
  OnShow = FormShow
  ExplicitWidth = 1100
  ExplicitHeight = 600
  TextHeight = 15
  object pnlTopoPesquisa: TPanel
    Left = 0
    Top = 0
    Width = 1100
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = 4194368
    ParentBackground = False
    TabOrder = 0
    OnMouseDown = pnlTopoPesquisaMouseDown
    object lblTitulo: TLabel
      AlignWithMargins = True
      Left = 38
      Top = 3
      Width = 979
      Height = 29
      Cursor = crHandPoint
      Align = alClient
      Caption = 'lblTitulo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnMouseDown = pnlTopoPesquisaMouseDown
      ExplicitWidth = 70
      ExplicitHeight = 25
    end
    object pnlIcone: TPanel
      Left = 0
      Top = 0
      Width = 35
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object imgIcone: TImage
        Left = 0
        Top = 0
        Width = 35
        Height = 35
        Cursor = crHandPoint
        Align = alClient
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          0020080300000044A48AC60000000467414D410000B18F0BFC6105000000ED50
          4C5445000000FF9A00FF9B00FF98004CAF50FF9900FF9A00FF9A00FF9A00FF98
          00FF9800FF9800FF9800FF9800FF9800FF9800FF9800FF9800FF9800FF9700FF
          98004CAF5049AF5270AA40E49B0CE49B0C7CA93B2BB35FD39E1448AF524CAF50
          4CAF504CAF504DAF505CAD495DAD484DAF4F4BAF5055AE4C4CAF504CAF504CAF
          504CAF504CAF50FF920071AA40FF9800FF9800FF93004CAF504CAF50FF98004C
          AF504CAF5049AF51FF9800EA9B0962AC4661AC464CAF504BAF504BAF51EA9B0A
          4BAB50417B4F3C604F3C614F4CB050479850384C4F37454F4CB150479550384A
          4F37474F384B4F417A4F417A50FFFFFF8EC0FA270000003774524E5300000000
          0000020301067FAD820845A909C0C50C69041826C7CC291A7B181A93D9E2F8F8
          E2E0ED1B039719D80726C3C80B1EE1A8981C1851EAEAAF00000001624B47444E
          196171DF000000097048597300021BEF00021BEF0149171B830000000774494D
          4507E40B020D19382702887B000001564944415478DA8D936F4FC23010C6EF58
          37E618092464C485049321F1857EFF8FC10B7D6190454D0C86C508511863763B
          AF889BFC31DDBDB835EBAFED73D7A7089AC0E26B2249AA13E00605D217D03E60
          58C811371068E510479A1D004D1C3EE0A21D40386FD1E5983EF700D1E6E517CF
          9C7AF0C2CBFB4F6425735900C257FB77234E1D7863C09B71B243B903C460DDE3
          11122B640DF43384779AC81D30C4D689021734568029ED0097FE0960EA529808
          34510C22C7A7E30E4D636F2209CD9A7D559746AE8E2A2695BA5A2636F749CE3B
          5841E49C1308AE6137CF2548C0D7D80B53E2BF0D06BA6097F35B228119032BDA
          56718367E01E004B58D3EDB60AC3B26CC723178D522866B4C4284ED2346391D7
          42893C02944879975700744768456ACB2C1BD55C158D723FCA465568B5EEB274
          D7AD354C15CB81086AEB23D37670F46B5A657B3B3DB07DFFF18FEDF50FA7C2D3
          D33EDE7FE31B948C0D6EA61DC76B0000002574455874646174653A6372656174
          6500323032302D31312D30325431333A32353A35362B30303A30308C093CEC00
          00002574455874646174653A6D6F6469667900323032302D31312D3032543133
          3A32353A35362B30303A3030FD5484500000002074455874736F667477617265
          0068747470733A2F2F696D6167656D616769636B2E6F7267BCCF1D9D00000018
          744558745468756D623A3A446F63756D656E743A3A50616765730031A7FFBB2F
          00000018744558745468756D623A3A496D6167653A3A48656967687400353132
          8F8D538100000017744558745468756D623A3A496D6167653A3A576964746800
          3531321C7C03DC00000019744558745468756D623A3A4D696D65747970650069
          6D6167652F706E673FB2564E00000017744558745468756D623A3A4D54696D65
          00313630343332333535368A7E46CB00000012744558745468756D623A3A5369
          7A6500363136334242D66231C00000004C744558745468756D623A3A55524900
          66696C653A2F2F2E2F75706C6F6164732F35362F584E724946746D2F32363231
          2F746563685F656C656374726F6E6963735F69636F6E5F3135363935342E706E
          67BE0DA5540000000049454E44AE426082}
        OnMouseDown = pnlTopoPesquisaMouseDown
        ExplicitLeft = -32
        ExplicitTop = -32
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
    end
    object pnlFechar: TPanel
      Left = 1020
      Top = 0
      Width = 80
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object btnSair: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 74
        Height = 29
        Cursor = crHandPoint
        Align = alClient
        Caption = '[ SAIR ]'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnSairClick
        ExplicitTop = -9
        ExplicitWidth = 204
        ExplicitHeight = 50
      end
    end
  end
  object pnlRodapePesquisa: TPanel
    Left = 0
    Top = 560
    Width = 1100
    Height = 40
    Align = alBottom
    BevelOuter = bvNone
    Color = 3080239
    ParentBackground = False
    TabOrder = 1
    object btnNovo: TSpeedButton
      AlignWithMargins = True
      Left = 553
      Top = 3
      Width = 104
      Height = 34
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = '[ NOVO ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnNovoClick
      OnMouseEnter = btnNovoMouseEnter
      OnMouseLeave = btnNovoMouseLeave
      ExplicitLeft = 381
    end
    object btnEditar: TSpeedButton
      AlignWithMargins = True
      Left = 663
      Top = 3
      Width = 104
      Height = 34
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = '[ EDITAR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnEditarClick
      OnMouseEnter = btnNovoMouseEnter
      OnMouseLeave = btnNovoMouseLeave
      ExplicitLeft = 389
    end
    object btnCancelar: TSpeedButton
      AlignWithMargins = True
      Left = 993
      Top = 3
      Width = 104
      Height = 34
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = '[ CANCELAR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnCancelarClick
      OnMouseEnter = btnNovoMouseEnter
      OnMouseLeave = btnNovoMouseLeave
      ExplicitLeft = 544
    end
    object btnSalvar: TSpeedButton
      AlignWithMargins = True
      Left = 773
      Top = 3
      Width = 104
      Height = 34
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = '[ SALVAR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSalvarClick
      OnMouseEnter = btnNovoMouseEnter
      OnMouseLeave = btnNovoMouseLeave
      ExplicitLeft = 544
    end
    object btnExcluir: TSpeedButton
      AlignWithMargins = True
      Left = 883
      Top = 3
      Width = 104
      Height = 34
      Cursor = crHandPoint
      Align = alRight
      GroupIndex = 1
      Caption = '[ EXCLUIR ]'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnExcluirClick
      OnMouseEnter = btnNovoMouseEnter
      OnMouseLeave = btnNovoMouseLeave
      ExplicitLeft = 520
    end
  end
  object pnlBackgroundPesquisa: TPanel
    Left = 0
    Top = 35
    Width = 1100
    Height = 525
    Align = alClient
    BevelOuter = bvNone
    Color = 3080239
    ParentBackground = False
    TabOrder = 2
    object CardPanelLista: TCardPanel
      AlignWithMargins = True
      Left = 1
      Top = 0
      Width = 1098
      Height = 525
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alClient
      ActiveCard = CardPesquisa
      BevelOuter = bvNone
      Color = clWindow
      ParentBackground = False
      TabOrder = 0
      OnCardChange = CardPanelListaCardChange
      object CardPesquisa: TCard
        Left = 0
        Top = 0
        Width = 1098
        Height = 525
        Margins.Left = 1
        Margins.Top = 0
        Margins.Right = 1
        Margins.Bottom = 0
        Caption = 'CardPesquisa'
        CardIndex = 0
        TabOrder = 0
        object pnlTituloPesquisa: TPanel
          Left = 0
          Top = 0
          Width = 1098
          Height = 81
          Align = alTop
          BevelOuter = bvNone
          Color = 9502865
          ParentBackground = False
          TabOrder = 0
          object lblTituloPesquisa: TLabel
            Left = 13
            Top = 6
            Width = 80
            Height = 30
            Alignment = taCenter
            Caption = 'Pesquisa'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
          object edtPesquisa: TSearchBox
            Left = 2
            Top = 42
            Width = 971
            Height = 29
            BevelInner = bvNone
            BevelOuter = bvNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TextHint = 'Digite sua pesquisa!'
          end
        end
        object DBG_dados: TDBGrid
          AlignWithMargins = True
          Left = 5
          Top = 86
          Width = 1088
          Height = 434
          Cursor = crHandPoint
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsDados
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
      end
      object CardCadastro: TCard
        Left = 0
        Top = 0
        Width = 1098
        Height = 525
        Caption = 'CardCadastro'
        CardIndex = 1
        TabOrder = 1
      end
    end
  end
  object dsDados: TDataSource
    Left = 480
    Top = 304
  end
end
