object FrmAtualizarProduto: TFrmAtualizarProduto
  Left = 0
  Top = 0
  Caption = 'Atualizar Produto'
  ClientHeight = 276
  ClientWidth = 295
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
    Top = 109
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object lblPreco: TLabel
    Left = 56
    Top = 138
    Width = 30
    Height = 15
    Caption = 'Preco'
  end
  object lblTitulo: TLabel
    Left = 103
    Top = 40
    Width = 100
    Height = 15
    Caption = 'ALTERA OS DADOS'
  end
  object btnCancelar: TButton
    Left = 124
    Top = 244
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = btnCancelarClick
  end
  object btnConfirmar: TButton
    Left = 216
    Top = 244
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 2
    OnClick = btnConfirmarClick
  end
  object edtNome: TEdit
    Left = 104
    Top = 106
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object edtPreco: TEdit
    Left = 104
    Top = 135
    Width = 121
    Height = 23
    TabOrder = 1
  end
end
