object FrmNovaVenda: TFrmNovaVenda
  Left = 0
  Top = 0
  Caption = 'Nova Venda'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object lblNumeroVenda: TLabel
    Left = 23
    Top = 8
    Width = 69
    Height = 21
    Caption = 'Venda N'#186':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblValorTotalProduto: TLabel
    Left = 119
    Top = 89
    Width = 65
    Height = 17
    Caption = 'Valor Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object imgPesquisar: TImage
    Left = 238
    Top = 40
    Width = 26
    Height = 27
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000160000
      00160806000000C4B46C3B00000006624B474400FF00FF00FFA0BDA793000002
      074944415478DAC5944F48545114C6BF3B4F8916B932A420A5442906C41802A1
      850CE4C2CC19DD0C69814C338DD02E12572E467463818222317F54D08D1B17F3
      DE28A4AB505C2844A8292E945681CB086988DEBD7EE330E04B79EF954A17CE79
      E7BD73EEEF9E7BEE7957E09286F8BFE0D1852BB8FABB0B423DE7945A8A04D416
      94C8C223A71009FEF87B702AEB23678EA137095B8252EB107930EAA0F0988443
      BE3F43A475D13D38395F0F8FB9CCA8353E2308B77FB52E9AA980F08CD16A8392
      2D78195C72062712A5D06E6CD23A4059AE09A1D0AF33E39412481BB324F961E6
      6AD01DFA6E0F4EE91DF4CEB0AE5ED670D7766709A31C9ADAE72A838806DFDA83
      D3FA346B57CDDA3D7473BE8C9FA5AE4034E07702AF30836D6610730736FA181F
      23B8D209FC91DE3D44022F5C8153993877D845F06D07702649FD8019DF77590A
      9DBA94E0667B70527F020F182C1A106D5DB387CE5701E62E3BE4355BEEBD3D38
      DF4613C62A43AEC3FCE92BB6D1A951F82B3F90740BDA352FC2FE9C3DB890F53B
      66DD436B1F124F110BAC5BFC09E32EDB6C929617526B44ACE573D16553636388
      69F7F2400698FD237E69A06C14E4F8AEB847DB47D981263B116EDB3C395D3840
      DFB08F878FBF4D64FC90A21DF93B42A084F205260C7CFBB480785CFE8910AEA0
      FF30ACE00B825AC169FD15F538A17142FBCF03B58227B3772065900D3E725EE8
      E9525CE0B834F011D2C1AF17F477DF9F0000000049454E44AE426082}
  end
  object lblValorToatalVenda: TLabel
    Left = 440
    Top = 319
    Width = 93
    Height = 25
    Caption = 'Valor Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object edtID: TEdit
    Left = 23
    Top = 40
    Width = 65
    Height = 23
    TabOrder = 0
    OnExit = edtIDExit
    OnKeyDown = edtIDKeyDown
  end
  object edtNome: TEdit
    Left = 103
    Top = 40
    Width = 121
    Height = 23
    TabOrder = 1
    OnExit = edtNomeExit
  end
  object edtQuantidade: TEdit
    Left = 23
    Top = 88
    Width = 65
    Height = 23
    TabOrder = 2
    Text = '1'
    OnExit = edtQuantidadeExit
  end
  object gridVendaProd: TDBGrid
    Left = 23
    Top = 128
    Width = 588
    Height = 161
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnIncluir: TButton
    Left = 287
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 3
    OnClick = btnIncluirClick
  end
  object btnCancelar: TButton
    Left = 440
    Top = 367
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
  end
  object btnConfirmar: TButton
    Left = 536
    Top = 367
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 4
  end
end
