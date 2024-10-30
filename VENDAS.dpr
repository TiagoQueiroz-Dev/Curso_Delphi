program VENDAS;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmPrincipal},
  uFrmProdutos in 'uFrmProdutos.pas' {frmProdutos},
  uProduto in 'uProduto.pas',
  uConexao in 'uConexao.pas' {DMconexao: TDataModule},
  uFrmIncluirProduto in 'uFrmIncluirProduto.pas' {FrmIncluirProduto},
  uFrmAtualizarProduto in 'uFrmAtualizarProduto.pas' {FrmAtualizarProduto},
  uFrmVendas in 'uFrmVendas.pas' {frmVendas},
  uFrmNovaVenda in 'uFrmNovaVenda.pas' {FrmNovaVenda};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := DebugHook <> 0;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmProdutos, frmProdutos);
  Application.CreateForm(TDMconexao, DMconexao);
  Application.CreateForm(TFrmIncluirProduto, FrmIncluirProduto);
  Application.CreateForm(TFrmAtualizarProduto, FrmAtualizarProduto);
  Application.CreateForm(TfrmVendas, frmVendas);
  Application.CreateForm(TFrmNovaVenda, FrmNovaVenda);
  Application.Run;

end.
