object FrmIncluirProduto: TFrmIncluirProduto
  Left = 0
  Top = 0
  Caption = 'Novo Produto'
  ClientHeight = 277
  ClientWidth = 299
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object lblNome: TLabel
    Left = 56
    Top = 99
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object lblPreco: TLabel
    Left = 56
    Top = 128
    Width = 30
    Height = 15
    Caption = 'Pre'#231'o'
  end
  object lblTitulo: TLabel
    Left = 83
    Top = 38
    Width = 120
    Height = 15
    Caption = 'INCLUA UM PRODUTO'
  end
  object btnCancelar: TBitBtn
    Left = 128
    Top = 245
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
  end
  object btnConfirmar: TBitBtn
    Left = 220
    Top = 245
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 2
    OnClick = btnConfirmarClick
  end
  object edtNome: TEdit
    Left = 96
    Top = 96
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object edtPreco: TEdit
    Left = 96
    Top = 125
    Width = 121
    Height = 23
    TabOrder = 1
  end
end
