object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Vendas'
  ClientHeight = 437
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object btnProdutos: TButton
    Left = 360
    Top = 184
    Width = 155
    Height = 73
    Caption = 'Produtos'
    TabOrder = 0
    OnClick = btnProdutosClick
  end
  object btnVendas: TButton
    Left = 96
    Top = 184
    Width = 155
    Height = 73
    Caption = 'Vendas'
    TabOrder = 1
    OnClick = btnVendasClick
  end
end
