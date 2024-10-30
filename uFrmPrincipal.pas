unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uFrmProdutos, uFrmVendas;

type
  TfrmPrincipal = class(TForm)
    btnProdutos: TButton;
    btnVendas: TButton;
    procedure btnProdutosClick(Sender: TObject);
    procedure btnVendasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnProdutosClick(Sender: TObject);
begin
  // Conseguir chamar este metodo do form diretamente pois o metodo � uma class procedure ao inves de procedure
  TfrmProdutos.Abrir;
end;

procedure TfrmPrincipal.btnVendasClick(Sender: TObject);
begin
  TfrmVendas.Abrir;
end;

end.
