object frmProdutos: TfrmProdutos
  Left = 0
  Top = 0
  Caption = 'Produtos'
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
  object btnAdicionar: TButton
    Left = 328
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 0
    OnClick = btnAdicionarClick
  end
  object btnAlterar: TButton
    Left = 424
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 1
    OnClick = btnAlterarClick
  end
  object btnDeletar: TButton
    Left = 520
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Deletar'
    TabOrder = 2
    OnClick = btnDeletarClick
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 8
    Width = 625
    Height = 297
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object btnVoltar: TButton
    Left = 232
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Voltar'
    TabOrder = 4
    OnClick = btnVoltarClick
  end
  object DataSource1: TDataSource
    DataSet = DMconexao.FDQuery1
    Left = 56
    Top = 368
  end
end
