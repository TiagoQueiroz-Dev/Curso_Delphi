object frmVendas: TfrmVendas
  Left = 0
  Top = 0
  Caption = 'Vendas'
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
  object btnNovaVenda: TButton
    Left = 360
    Top = 184
    Width = 155
    Height = 73
    Caption = 'Nova Venda'
    TabOrder = 0
    OnClick = btnNovaVendaClick
  end
  object btnTodasVendas: TButton
    Left = 96
    Top = 184
    Width = 155
    Height = 73
    Caption = 'Todas Vendas'
    TabOrder = 1
  end
end
