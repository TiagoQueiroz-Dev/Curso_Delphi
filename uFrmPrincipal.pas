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
    procedure btnVendasClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
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
TfrmProdutos.Abrir;
end;

procedure TfrmPrincipal.btnVendasClick(Sender: TObject);
begin
  TfrmVendas.Abrir;
end;

end.
